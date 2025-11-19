@interface UpdatesTask
- (void)main;
@end

@implementation UpdatesTask

- (void)main
{
  v2 = self;
  if (!self)
  {
    goto LABEL_41;
  }

  v66 = objc_opt_new();
  v67 = v2;
  v3 = v2->_apps;
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
        v11 = [v10 storeItemID];
        if (v11 && (v12 = v11, [v10 storeExternalVersionID], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
        {
          v77[0] = @"adam-id";
          v14 = [v10 storeItemID];
          v77[1] = @"installed-version-identifier";
          v78[0] = v14;
          v15 = [v10 storeExternalVersionID];
          v78[1] = v15;
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
    v22 = [v21 lastBag];
    v23 = [v22 BOOLForKey:@"updates-use-optimized-requests" defaultValue:0];

    v18 = v66;
    if (v23)
    {
      v24 = 0;
      v2 = v67;
      goto LABEL_30;
    }

    v20 = &__NSArray0__struct;
    v19 = v66;
  }

  [v19 setObject:v20 forKeyedSubscript:@"local-software"];
  v2 = v67;
  v25 = [NSNumber numberWithBool:sub_1003D5FC8()];
  [v18 setObject:v25 forKeyedSubscript:@"autoUpdatesEnabled"];

  v26 = +[AMSDevice deviceGUID];
  [v18 setObject:v26 forKeyedSubscript:@"guid"];

  v27 = [(ACAccount *)v67->_account ams_DSID];

  if (v27)
  {
    v28 = +[AMSKeybag sharedInstance];
    v29 = [(ACAccount *)v67->_account ams_DSID];
    v68 = 0;
    v30 = [v28 keybagSyncDataWithAccountID:v29 transactionType:11 error:&v68];
    v31 = v68;

    if (v31)
    {
      v32 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        logKey = v67->_logKey;
        v62 = [(ACAccount *)v67->_account ams_DSID];
        *buf = 138412546;
        v74 = logKey;
        v75 = 2114;
        v76 = v62;
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
    [(Task *)v2 completeWithError:v50];

    v24 = 0;
    goto LABEL_53;
  }

  isUserInitiated = v2->_isUserInitiated;
  v35 = +[BagService appstoredService];
  v36 = [v35 lastBag];
  v37 = v36;
  v38 = off_100524260;
  if (!isUserInitiated)
  {
    v38 = off_100524248;
  }

  v39 = [v36 URLForKey:*v38];

  if (v39)
  {
    v40 = sub_100259260(v39, &off_1005497C8);

    v41 = [AMSURLRequestEncoder alloc];
    v42 = +[BagService appstoredService];
    v43 = [v42 amsBag];
    v44 = [v41 initWithBag:v43];

    [v44 setCompressRequestBody:1];
    account = v2->_account;
    if (account)
    {
      v46 = [(ACAccount *)account ams_DSID];

      if (v46)
      {
        [v44 setAccount:v2->_account];
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
        v63 = v2->_logKey;
        *buf = 138412546;
        v74 = v63;
        v75 = 2114;
        v76 = v69;
        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "[%@] Error encoding request: %{public}@", buf, 0x16u);
      }

      [(Task *)v2 completeWithError:v69];
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
          v65 = v2->_logKey;
          *buf = 138412546;
          v74 = v65;
          v75 = 2114;
          v76 = v69;
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%@] Error fetching updates: %{public}@", buf, 0x16u);
        }

        [(Task *)v2 completeWithError:v69];
      }

      else
      {
        v57 = [UpdatesResponse alloc];
        v58 = [v55 object];
        v59 = sub_1003B48EC(v57, v58);
        response = v2->_response;
        v2->_response = v59;

        [(Task *)v2 completeWithSuccess];
      }
    }
  }

  else
  {
    v51 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v64 = v2->_logKey;
      *buf = 138412290;
      v74 = v64;
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "[%@] Error generating updates URL.", buf, 0xCu);
    }

    v52 = [NSError alloc];
    v40 = [v52 initWithDomain:AMSErrorDomain code:203 userInfo:0];
    [(Task *)v2 completeWithError:v40];
  }

LABEL_53:
}

@end