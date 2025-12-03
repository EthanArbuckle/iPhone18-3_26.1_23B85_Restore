@interface UpdatesTask
- (void)main;
@end

@implementation UpdatesTask

- (void)main
{
  selfCopy = self;
  if (!self)
  {
    goto LABEL_41;
  }

  v66 = objc_opt_new();
  v67 = selfCopy;
  v3 = selfCopy->_apps;
  v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v3, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v5 = v3;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v69 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v70;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v70 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v69 + 1) + 8 * i);
        storeItemID = [v10 storeItemID];
        if (storeItemID && (v12 = storeItemID, [v10 storeExternalVersionID], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
        {
          v77[0] = @"adam-id";
          storeItemID2 = [v10 storeItemID];
          v77[1] = @"installed-version-identifier";
          v78[0] = storeItemID2;
          storeExternalVersionID = [v10 storeExternalVersionID];
          v78[1] = storeExternalVersionID;
          v16 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];

          if (v16)
          {
            [v4 addObject:v16];
          }
        }

        else
        {

          v16 = 0;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v69 objects:buf count:16];
    }

    while (v7);
  }

  v17 = [v4 copy];
  if ([v17 count])
  {
    v18 = v66;
    v19 = v66;
    v20 = v17;
  }

  else
  {
    v21 = +[BagService appstoredService];
    lastBag = [v21 lastBag];
    v23 = [lastBag BOOLForKey:@"updates-use-optimized-requests" defaultValue:0];

    v18 = v66;
    if (v23)
    {
      v24 = 0;
      selfCopy = v67;
      goto LABEL_30;
    }

    v20 = &__NSArray0__struct;
    v19 = v66;
  }

  [v19 setObject:v20 forKeyedSubscript:@"local-software"];
  selfCopy = v67;
  v25 = [NSNumber numberWithBool:sub_1003D5FC8()];
  [v18 setObject:v25 forKeyedSubscript:@"autoUpdatesEnabled"];

  v26 = +[AMSDevice deviceGUID];
  [v18 setObject:v26 forKeyedSubscript:@"guid"];

  ams_DSID = [(ACAccount *)v67->_account ams_DSID];

  if (ams_DSID)
  {
    v28 = +[AMSKeybag sharedInstance];
    ams_DSID2 = [(ACAccount *)v67->_account ams_DSID];
    v68 = 0;
    v30 = [v28 keybagSyncDataWithAccountID:ams_DSID2 transactionType:11 error:&v68];
    v31 = v68;

    if (v31)
    {
      v32 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        logKey = v67->_logKey;
        ams_DSID3 = [(ACAccount *)v67->_account ams_DSID];
        *buf = 138412546;
        v74 = logKey;
        v75 = 2114;
        v76 = ams_DSID3;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[%@] Error generating keybag for account: %{public}@", buf, 0x16u);
      }
    }

    if ([v30 length])
    {
      v33 = [v30 base64EncodedStringWithOptions:0];
      if (v33)
      {
        [v18 setObject:v33 forKeyedSubscript:@"kbsync"];
      }
    }
  }

  v24 = v18;
LABEL_30:

  if (!v24)
  {
LABEL_41:
    v50 = [NSError errorWithDomain:ASDErrorDomain code:901 userInfo:0];
    [(Task *)selfCopy completeWithError:v50];

    v24 = 0;
    goto LABEL_53;
  }

  isUserInitiated = selfCopy->_isUserInitiated;
  v35 = +[BagService appstoredService];
  lastBag2 = [v35 lastBag];
  v37 = lastBag2;
  v38 = off_100524260;
  if (!isUserInitiated)
  {
    v38 = off_100524248;
  }

  v39 = [lastBag2 URLForKey:*v38];

  if (v39)
  {
    v40 = sub_100259260(v39, &off_1005497C8);

    v41 = [AMSURLRequestEncoder alloc];
    v42 = +[BagService appstoredService];
    amsBag = [v42 amsBag];
    v44 = [v41 initWithBag:amsBag];

    [v44 setCompressRequestBody:1];
    account = selfCopy->_account;
    if (account)
    {
      ams_DSID4 = [(ACAccount *)account ams_DSID];

      if (ams_DSID4)
      {
        [v44 setAccount:selfCopy->_account];
      }
    }

    *&v69 = 0;
    v47 = [v44 requestWithMethod:4 URL:v40 parameters:v24];
    v48 = [v47 resultWithError:&v69];

    if (v69)
    {
      v49 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v63 = selfCopy->_logKey;
        *buf = 138412546;
        v74 = v63;
        v75 = 2114;
        v76 = v69;
        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "[%@] Error encoding request: %{public}@", buf, 0x16u);
      }

      [(Task *)selfCopy completeWithError:v69];
    }

    else
    {
      v53 = +[AMSURLSession defaultSession];
      v54 = [v53 dataTaskPromiseWithRequest:v48];

      v55 = [v54 resultWithError:&v69];
      if (v69)
      {
        v56 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v65 = selfCopy->_logKey;
          *buf = 138412546;
          v74 = v65;
          v75 = 2114;
          v76 = v69;
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%@] Error fetching updates: %{public}@", buf, 0x16u);
        }

        [(Task *)selfCopy completeWithError:v69];
      }

      else
      {
        v57 = [UpdatesResponse alloc];
        object = [v55 object];
        v59 = sub_1003B48EC(v57, object);
        response = selfCopy->_response;
        selfCopy->_response = v59;

        [(Task *)selfCopy completeWithSuccess];
      }
    }
  }

  else
  {
    v51 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v64 = selfCopy->_logKey;
      *buf = 138412290;
      v74 = v64;
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "[%@] Error generating updates URL.", buf, 0xCu);
    }

    v52 = [NSError alloc];
    v40 = [v52 initWithDomain:AMSErrorDomain code:203 userInfo:0];
    [(Task *)selfCopy completeWithError:v40];
  }

LABEL_53:
}

@end