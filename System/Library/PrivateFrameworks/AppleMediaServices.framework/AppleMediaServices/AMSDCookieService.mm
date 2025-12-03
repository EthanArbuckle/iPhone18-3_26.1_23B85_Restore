@interface AMSDCookieService
+ (AMSDCookieService)sharedService;
+ (BOOL)isConnectionEntitled:(id)entitled;
- (AMSDCookieService)init;
- (id)_alliTunesAccountIdentifiers;
- (id)_cachedCookieDatabaseForPath:(id)path;
- (id)_cachedCookiePropertiesForIdentifier:(id)identifier;
- (id)_cookieDatabaseForAccount:(id)account error:(id *)error;
- (id)_uniqueIdentifiersForAccount:(id)account error:(id *)error;
- (id)clearDanglingCookieDatabases;
- (id)getCookiePropertiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only error:(id *)error;
- (void)_cacheCookieDatabase:(id)database withPath:(id)path;
- (void)_cacheCookieProperties:(id)properties forIdentifier:(id)identifier;
- (void)_clearAllCachedCookieProperties;
- (void)clearAllCachedCookieProperties;
- (void)clearDanglingCookieDatabasesWithCompletion:(id)completion;
- (void)getCookieDatabasePathForAccount:(id)account withCompletion:(id)completion;
- (void)getCookiePropertiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only withCompletion:(id)completion;
- (void)updateCookiesWithCookiePropertiesToAdd:(id)add cookiePropertiesToRemove:(id)remove forAccount:(id)account withCompletion:(id)completion;
@end

@implementation AMSDCookieService

+ (AMSDCookieService)sharedService
{
  if (qword_1002E31C8 != -1)
  {
    sub_100002600();
  }

  v3 = qword_1002E31D0;

  return v3;
}

- (id)_alliTunesAccountIdentifiers
{
  v3 = +[ACAccountStore ams_sharedAccountStore];
  ams_fetchiTunesAccounts = [v3 ams_fetchiTunesAccounts];
  ams_fetchiTunesSandboxAccounts = [v3 ams_fetchiTunesSandboxAccounts];
  v11[0] = ams_fetchiTunesAccounts;
  v11[1] = ams_fetchiTunesSandboxAccounts;
  v6 = [NSArray arrayWithObjects:v11 count:2];
  v7 = [AMSPromise promiseWithAll:v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004CAEC;
  v10[3] = &unk_1002B0310;
  v10[4] = self;
  v8 = [v7 thenWithBlock:v10];

  return v8;
}

- (void)_cacheCookieProperties:(id)properties forIdentifier:(id)identifier
{
  propertiesCopy = properties;
  identifierCopy = identifier;
  queue = [(AMSDCookieService *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v12 = AMSLogKey();
    v13 = objc_opt_class();
    v14 = v13;
    if (v12)
    {
      v4 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v14, v4];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    v16 = AMSHashIfNeeded();
    v17 = AMSHashIfNeeded();
    *buf = 138543874;
    v20 = v15;
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Caching cookies. cookies = %{public}@ | accountIdentifier = %{public}@", buf, 0x20u);
    if (v12)
    {

      v15 = v4;
    }
  }

  cookiePropertyCache = [(AMSDCookieService *)self cookiePropertyCache];
  [cookiePropertyCache setObject:propertiesCopy forKey:identifierCopy];
}

- (id)_cachedCookiePropertiesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(AMSDCookieService *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = AMSHashIfNeeded();
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Retrieving cached cookies. accountIdentifier = %{public}@", &v14, 0x20u);
  }

  cookiePropertyCache = [(AMSDCookieService *)self cookiePropertyCache];
  v12 = [cookiePropertyCache objectForKey:identifierCopy];

  return v12;
}

- (void)_clearAllCachedCookieProperties
{
  queue = [(AMSDCookieService *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Clearing all cached cookies.", &v9, 0x16u);
  }

  cookiePropertyCache = [(AMSDCookieService *)self cookiePropertyCache];
  [cookiePropertyCache removeAllObjects];
}

- (void)_cacheCookieDatabase:(id)database withPath:(id)path
{
  databaseCopy = database;
  pathCopy = path;
  queue = [(AMSDCookieService *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v13 = AMSHashIfNeeded();
    v14 = AMSHashIfNeeded();
    v16 = 138544130;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Caching cookie database. database = %{public}@ | dbPath = %{public}@", &v16, 0x2Au);
  }

  cookieDatabaseCache = [(AMSDCookieService *)self cookieDatabaseCache];
  [cookieDatabaseCache setObject:databaseCopy forKey:pathCopy];
}

- (id)_cachedCookieDatabaseForPath:(id)path
{
  pathCopy = path;
  queue = [(AMSDCookieService *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = AMSHashIfNeeded();
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Retrieving cached cookie database. dbPath = %{public}@", &v14, 0x20u);
  }

  cookieDatabaseCache = [(AMSDCookieService *)self cookieDatabaseCache];
  v12 = [cookieDatabaseCache objectForKey:pathCopy];

  return v12;
}

- (id)_cookieDatabaseForAccount:(id)account error:(id *)error
{
  selfCopy = self;
  v6 = [(AMSDCookieService *)self _uniqueIdentifiersForAccount:account error:?];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [AMSCookieDatabase databasePathForIdentifiers:v7 error:error];
    if (v8)
    {
      v9 = [selfCopy _cachedCookieDatabaseForPath:v8];
      if (v9)
      {
        v10 = v9;
        v11 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v11)
        {
          v11 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v11 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v13 = AMSLogKey();
          v14 = objc_opt_class();
          v15 = v14;
          if (v13)
          {
            selfCopy = AMSLogKey();
            [NSString stringWithFormat:@"%@: [%@] ", v15, selfCopy];
          }

          else
          {
            [NSString stringWithFormat:@"%@: ", v14];
          }
          v16 = ;
          v17 = AMSHashIfNeeded();
          *buf = 138543618;
          v20 = v16;
          v21 = 2114;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@Found cached cookie database. %{public}@", buf, 0x16u);
          if (v13)
          {

            v16 = selfCopy;
          }
        }
      }

      else
      {
        v10 = [AMSCookieDatabase cookieDatabaseForIdentifiers:v7 error:error];
        if (v10)
        {
          [selfCopy _cacheCookieDatabase:v10 withPath:v8];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_uniqueIdentifiersForAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  v9 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v11 = AMSLogKey();
    v12 = objc_opt_class();
    if (v11)
    {
      v13 = AMSLogKey();
      v4 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v12, v13, v4];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v14 = ;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v147 = v14;
    v148 = 2114;
    v149 = v15;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Determining identifier(s) for account: %{public}@", buf, 0x16u);
    if (v11)
    {

      v14 = v4;
    }

    v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  }

  errorCopy = error;

  v16 = [NSMutableArray arrayWithCapacity:3];
  v17 = [NSMutableArray arrayWithCapacity:3];
  ams_DSID = [accountCopy ams_DSID];
  v19 = ams_DSID;
  v140 = ams_DSID;
  v141 = v17;
  selfCopy = self;
  v142 = accountCopy;
  if (ams_DSID)
  {
    stringValue = [ams_DSID stringValue];
    if ([accountCopy ams_isSandboxAccount])
    {
      v21 = [stringValue stringByAppendingString:@".sandbox"];

      stringValue = v21;
    }

    dsidHashCache = [(AMSDCookieService *)self dsidHashCache];
    v23 = [dsidHashCache objectForKey:stringValue];

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v145 = 0;
      v23 = [stringValue ams_sha512HashStringUsingEncoding:4 error:&v145];
      v32 = v145;
      dsidHashCache2 = [(AMSDCookieService *)self dsidHashCache];
      [dsidHashCache2 setObject:v23 forKey:v19];

      if (!v23)
      {
        if (!v32)
        {
          goto LABEL_33;
        }

        v24 = v32;
        v41 = +[AMSLogConfig sharedAccountsCookiesConfig];
        if (!v41)
        {
          v41 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v41 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v131 = v24;
          v43 = AMSLogKey();
          v44 = objc_opt_class();
          if (v43)
          {
            v45 = AMSLogKey();
            v127 = NSStringFromSelector(a2);
            v128 = v45;
            [NSString stringWithFormat:@"%@: [%@] %@ ", v44, v45, v127];
          }

          else
          {
            v128 = NSStringFromSelector(a2);
            [NSString stringWithFormat:@"%@: %@ ", v44, v128];
          }
          v46 = ;
          v123 = AMSHashIfNeeded();
          v24 = v131;
          v124 = AMSLogableError();
          *buf = 138543874;
          v147 = v46;
          v148 = 2114;
          v149 = v123;
          v150 = 2114;
          v151 = v124;
          _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Could not hash DSID: %{public}@ | error: %{public}@", buf, 0x20u);
          if (v43)
          {

            v46 = v127;
          }

          v19 = v140;
          v17 = v141;
          v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
        }

        [v17 addObject:v24];
LABEL_32:

LABEL_33:
        accountCopy = v142;
        goto LABEL_45;
      }

      v24 = v32;
    }

    v34 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v34)
    {
      v34 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v34 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v130 = v24;
      v36 = v16;
      v37 = AMSLogKey();
      v38 = objc_opt_class();
      if (v37)
      {
        v39 = AMSLogKey();
        v16 = NSStringFromSelector(a2);
        [NSString stringWithFormat:@"%@: [%@] %@ ", v38, v39, v16];
      }

      else
      {
        v39 = NSStringFromSelector(a2);
        [NSString stringWithFormat:@"%@: %@ ", v38, v39];
      }
      v40 = ;
      *buf = 138543618;
      v147 = v40;
      v148 = 2114;
      v149 = v23;
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@Adding identifier for DSID: %{public}@", buf, 0x16u);
      v24 = v130;
      if (v37)
      {

        v40 = v16;
      }

      v16 = v36;
      v19 = v140;
      v17 = v141;
      v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      self = selfCopy;
    }

    [v16 addObject:v23];
    goto LABEL_32;
  }

  v25 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject4 = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
  {
    v27 = v16;
    v28 = AMSLogKey();
    v29 = objc_opt_class();
    if (v28)
    {
      v30 = AMSLogKey();
      v17 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v29, v30, v17];
    }

    else
    {
      v30 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v29, v30];
    }
    v31 = ;
    *buf = 138543362;
    v147 = v31;
    _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEBUG, "%{public}@Skipping DSID as the account doesn’t have one.", buf, 0xCu);
    if (v28)
    {

      v31 = v17;
    }

    v16 = v27;
    v19 = 0;
    v17 = v141;
    v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  }

  stringValue = AMSError();
  [v17 addObject:stringValue];
LABEL_45:

  ams_altDSID = [accountCopy ams_altDSID];
  if ([accountCopy ams_isSandboxAccount])
  {
    v48 = [ams_altDSID stringByAppendingString:@".sandbox"];

    ams_altDSID = v48;
  }

  if (!ams_altDSID)
  {
    sharedAccountsCookiesConfig = [v8[95] sharedAccountsCookiesConfig];
    if (!sharedAccountsCookiesConfig)
    {
      sharedAccountsCookiesConfig = [v8[95] sharedConfig];
    }

    oSLogObject5 = [sharedAccountsCookiesConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEBUG))
    {
      v54 = v16;
      v55 = AMSLogKey();
      v56 = objc_opt_class();
      if (v55)
      {
        v57 = AMSLogKey();
        v17 = NSStringFromSelector(a2);
        [NSString stringWithFormat:@"%@: [%@] %@ ", v56, v57, v17];
      }

      else
      {
        v57 = NSStringFromSelector(a2);
        [NSString stringWithFormat:@"%@: %@ ", v56, v57];
      }
      v58 = ;
      *buf = 138543362;
      v147 = v58;
      _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_DEBUG, "%{public}@Skipping AltDSID as the account doesn’t have one.", buf, 0xCu);
      if (v55)
      {

        v58 = v17;
      }

      v16 = v54;
      v19 = v140;
      v17 = v141;
      v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      ams_altDSID = 0;
    }

    v51 = AMSError();
    [v17 addObject:v51];
    goto LABEL_78;
  }

  altDSIDHashCache = [(AMSDCookieService *)self altDSIDHashCache];
  v50 = [altDSIDHashCache objectForKey:ams_altDSID];

  if (v50)
  {
    v51 = 0;
  }

  else
  {
    selfCopy2 = self;
    v144 = 0;
    v50 = [ams_altDSID ams_sha512HashStringUsingEncoding:4 error:&v144];
    v51 = v144;
    altDSIDHashCache2 = [(AMSDCookieService *)selfCopy2 altDSIDHashCache];
    [altDSIDHashCache2 setObject:v50 forKey:ams_altDSID];

    if (!v50)
    {
      accountCopy = v142;
      if (!v51)
      {
        goto LABEL_79;
      }

      sharedAccountsCookiesConfig2 = [v8[95] sharedAccountsCookiesConfig];
      if (!sharedAccountsCookiesConfig2)
      {
        sharedAccountsCookiesConfig2 = [v8[95] sharedConfig];
      }

      oSLogObject6 = [sharedAccountsCookiesConfig2 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        v70 = AMSLogKey();
        v71 = objc_opt_class();
        if (v70)
        {
          v72 = AMSLogKey();
          v128 = NSStringFromSelector(a2);
          v133 = v72;
          [NSString stringWithFormat:@"%@: [%@] %@ ", v71, v72, v128];
        }

        else
        {
          v133 = NSStringFromSelector(a2);
          [NSString stringWithFormat:@"%@: %@ ", v71, v133];
        }
        v73 = ;
        v125 = AMSHashIfNeeded();
        v126 = AMSLogableError();
        *buf = 138543874;
        v147 = v73;
        v148 = 2114;
        v149 = v125;
        v150 = 2114;
        v151 = v126;
        _os_log_impl(&_mh_execute_header, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@Could not hash AltDSID: %{public}@ | error: %{public}@", buf, 0x20u);
        if (v70)
        {

          v73 = v128;
        }

        v19 = v140;
        v17 = v141;
        v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      }

      [v17 addObject:v51];
      goto LABEL_66;
    }
  }

  sharedAccountsCookiesConfig3 = [v8[95] sharedAccountsCookiesConfig];
  if (!sharedAccountsCookiesConfig3)
  {
    sharedAccountsCookiesConfig3 = [v8[95] sharedConfig];
  }

  oSLogObject7 = [sharedAccountsCookiesConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEBUG))
  {
    v132 = ams_altDSID;
    v63 = v16;
    v64 = AMSLogKey();
    v65 = objc_opt_class();
    if (v64)
    {
      v66 = AMSLogKey();
      v17 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v65, v66, v17];
    }

    else
    {
      v66 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v65, v66];
    }
    v67 = ;
    *buf = 138543618;
    v147 = v67;
    v148 = 2114;
    v149 = v50;
    _os_log_impl(&_mh_execute_header, oSLogObject7, OS_LOG_TYPE_DEBUG, "%{public}@Adding identifier for AltDSID: %{public}@", buf, 0x16u);
    if (v64)
    {

      v67 = v17;
    }

    v16 = v63;
    v19 = v140;
    v17 = v141;
    v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    ams_altDSID = v132;
  }

  [v16 addObject:v50];
LABEL_66:
  accountCopy = v142;
LABEL_78:

LABEL_79:
  identifier = [accountCopy identifier];
  v75 = identifier;
  if (!identifier)
  {
    if (os_variant_has_internal_content())
    {
      v85 = +[AMSUnitTests isRunningUnitTests];
      sharedAccountsCookiesConfig4 = [v8[95] sharedAccountsCookiesConfig];
      sharedConfig = sharedAccountsCookiesConfig4;
      if (v85)
      {
        if (!sharedAccountsCookiesConfig4)
        {
          sharedConfig = [v8[95] sharedConfig];
        }

        oSLogObject8 = [sharedConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
        {
          v135 = ams_altDSID;
          v89 = AMSLogKey();
          v90 = objc_opt_class();
          v91 = v90;
          v92 = v16;
          if (v89)
          {
            v17 = AMSLogKey();
            [NSString stringWithFormat:@"%@: [%@] ", v91, v17];
          }

          else
          {
            [NSString stringWithFormat:@"%@: ", v90];
          }
          v93 = ;
          v115 = AMSHashIfNeeded();
          *buf = 138543618;
          v147 = v93;
          v148 = 2114;
          v149 = v115;
          _os_log_impl(&_mh_execute_header, oSLogObject8, OS_LOG_TYPE_ERROR, "%{public}@Empty identifier for account: %{public}@", buf, 0x16u);
          if (v89)
          {

            v93 = v17;
          }

          v16 = v92;
          v19 = v140;
          v17 = v141;
          v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
          ams_altDSID = v135;
        }

        sharedConfig = +[NSNotificationCenter defaultCenter];
        sharedAccountsCookiesConfig5 = [v8[95] sharedAccountsCookiesConfig];
        [sharedConfig postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:sharedAccountsCookiesConfig5 userInfo:0];
      }

      else
      {
        if (!sharedAccountsCookiesConfig4)
        {
          sharedConfig = [v8[95] sharedConfig];
        }

        sharedAccountsCookiesConfig5 = [sharedConfig OSLogObject];
        if (os_log_type_enabled(sharedAccountsCookiesConfig5, OS_LOG_TYPE_FAULT))
        {
          v137 = ams_altDSID;
          v101 = AMSLogKey();
          v102 = objc_opt_class();
          v103 = v102;
          v104 = v16;
          if (v101)
          {
            v17 = AMSLogKey();
            [NSString stringWithFormat:@"%@: [%@] ", v103, v17];
          }

          else
          {
            [NSString stringWithFormat:@"%@: ", v102];
          }
          v105 = ;
          v116 = AMSHashIfNeeded();
          *buf = 138543618;
          v147 = v105;
          v148 = 2114;
          v149 = v116;
          _os_log_impl(&_mh_execute_header, sharedAccountsCookiesConfig5, OS_LOG_TYPE_FAULT, "%{public}@Empty identifier for account: %{public}@", buf, 0x16u);
          if (v101)
          {

            v105 = v17;
          }

          v16 = v104;
          v19 = v140;
          v17 = v141;
          ams_altDSID = v137;
        }
      }
    }

    goto LABEL_133;
  }

  if (([identifier containsString:@"/"] & 1) != 0 || (objc_msgSend(v75, "containsString:", @".") & 1) != 0 || objc_msgSend(v75, "containsString:", @"~"))
  {
    if (os_variant_has_internal_content())
    {
      v76 = +[AMSUnitTests isRunningUnitTests];
      sharedAccountsCookiesConfig6 = [v8[95] sharedAccountsCookiesConfig];
      sharedConfig2 = sharedAccountsCookiesConfig6;
      if (v76)
      {
        if (!sharedAccountsCookiesConfig6)
        {
          sharedConfig2 = [v8[95] sharedConfig];
        }

        oSLogObject9 = [sharedConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
        {
          v134 = ams_altDSID;
          v80 = AMSLogKey();
          v81 = objc_opt_class();
          v82 = v81;
          v83 = v16;
          if (v80)
          {
            v17 = AMSLogKey();
            [NSString stringWithFormat:@"%@: [%@] ", v82, v17];
          }

          else
          {
            [NSString stringWithFormat:@"%@: ", v81];
          }
          v84 = ;
          v113 = AMSHashIfNeeded();
          *buf = 138543618;
          v147 = v84;
          v148 = 2114;
          v149 = v113;
          _os_log_impl(&_mh_execute_header, oSLogObject9, OS_LOG_TYPE_ERROR, "%{public}@Invalid identifier for account: %{public}@", buf, 0x16u);
          if (v80)
          {

            v84 = v17;
          }

          v16 = v83;
          v19 = v140;
          v17 = v141;
          v8 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
          ams_altDSID = v134;
        }

        sharedConfig2 = +[NSNotificationCenter defaultCenter];
        sharedAccountsCookiesConfig7 = [v8[95] sharedAccountsCookiesConfig];
        [sharedConfig2 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:sharedAccountsCookiesConfig7 userInfo:0];
      }

      else
      {
        if (!sharedAccountsCookiesConfig6)
        {
          sharedConfig2 = [v8[95] sharedConfig];
        }

        sharedAccountsCookiesConfig7 = [sharedConfig2 OSLogObject];
        if (os_log_type_enabled(sharedAccountsCookiesConfig7, OS_LOG_TYPE_FAULT))
        {
          v136 = ams_altDSID;
          v95 = AMSLogKey();
          v96 = objc_opt_class();
          v97 = v96;
          v98 = v16;
          if (v95)
          {
            v17 = AMSLogKey();
            [NSString stringWithFormat:@"%@: [%@] ", v97, v17];
          }

          else
          {
            [NSString stringWithFormat:@"%@: ", v96];
          }
          v99 = ;
          v114 = AMSHashIfNeeded();
          *buf = 138543618;
          v147 = v99;
          v148 = 2114;
          v149 = v114;
          _os_log_impl(&_mh_execute_header, sharedAccountsCookiesConfig7, OS_LOG_TYPE_FAULT, "%{public}@Invalid identifier for account: %{public}@", buf, 0x16u);
          if (v95)
          {

            v99 = v17;
          }

          v16 = v98;
          v19 = v140;
          v17 = v141;
          ams_altDSID = v136;
        }
      }
    }

LABEL_133:
    identifier2 = AMSError();
    v118 = v17;
    goto LABEL_134;
  }

  sharedAccountsCookiesConfig8 = [v8[95] sharedAccountsCookiesConfig];
  if (!sharedAccountsCookiesConfig8)
  {
    sharedAccountsCookiesConfig8 = [v8[95] sharedConfig];
  }

  oSLogObject10 = [sharedAccountsCookiesConfig8 OSLogObject];
  if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEBUG))
  {
    v138 = ams_altDSID;
    v108 = v16;
    v109 = AMSLogKey();
    v110 = objc_opt_class();
    if (v109)
    {
      v111 = AMSLogKey();
      v17 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v110, v111, v17];
    }

    else
    {
      v111 = NSStringFromSelector(a2);
      [NSString stringWithFormat:@"%@: %@ ", v110, v111];
    }
    v112 = ;
    *buf = 138543618;
    v147 = v112;
    v148 = 2114;
    v149 = v75;
    _os_log_impl(&_mh_execute_header, oSLogObject10, OS_LOG_TYPE_DEBUG, "%{public}@Adding account identifier: %{public}@", buf, 0x16u);
    if (v109)
    {

      v112 = v17;
    }

    v16 = v108;
    v19 = v140;
    v17 = v141;
    ams_altDSID = v138;
  }

  identifier2 = [accountCopy identifier];
  v118 = v16;
LABEL_134:
  [v118 addObject:identifier2];

  if ([v16 count])
  {
    v119 = v16;
    goto LABEL_146;
  }

  if ([v17 count] < 2)
  {
    v120 = errorCopy;
    if ([v17 count] == 1)
    {
      if (errorCopy)
      {
        v121 = [v17 objectAtIndexedSubscript:0];
        goto LABEL_144;
      }
    }

    else if (errorCopy)
    {
      v121 = AMSError();
      goto LABEL_144;
    }
  }

  else
  {
    v120 = errorCopy;
    if (errorCopy)
    {
      v121 = AMSErrorWithMultipleUnderlyingErrors();
LABEL_144:
      v119 = 0;
      *v120 = v121;
      goto LABEL_146;
    }
  }

  v119 = 0;
LABEL_146:

  return v119;
}

- (AMSDCookieService)init
{
  v15.receiver = self;
  v15.super_class = AMSDCookieService;
  v2 = [(AMSDCookieService *)&v15 init];
  if (v2)
  {
    v3 = [[AMSLRUCache alloc] initWithMaxSize:10];
    altDSIDHashCache = v2->_altDSIDHashCache;
    v2->_altDSIDHashCache = v3;

    v5 = [[AMSLRUCache alloc] initWithMaxSize:10];
    dsidHashCache = v2->_dsidHashCache;
    v2->_dsidHashCache = v5;

    v7 = objc_alloc_init(AMSLRUCache);
    cookiePropertyCache = v2->_cookiePropertyCache;
    v2->_cookiePropertyCache = v7;

    v9 = [[AMSLRUCache alloc] initWithMaxSize:10];
    cookieDatabaseCache = v2->_cookieDatabaseCache;
    v2->_cookieDatabaseCache = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.AppleMediaServices.CookieStorage", v11);
    queue = v2->_queue;
    v2->_queue = v12;
  }

  return v2;
}

- (void)clearAllCachedCookieProperties
{
  v5 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = AMSLogKey();
    v8 = objc_opt_class();
    v9 = v8;
    if (v7)
    {
      v2 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = NSStringFromSelector(a2);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@ - taking keepalive transaction", buf, 0x16u);
    if (v7)
    {

      v10 = v2;
    }
  }

  queue = [(AMSDCookieService *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004EF78;
  v13[3] = &unk_1002B0358;
  v13[4] = self;
  v13[5] = a2;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDCookieService.clearAllCachedCookies" withQueue:queue whilePerformingBlock:v13];
}

- (id)clearDanglingCookieDatabases
{
  v3 = AMSLogKey();
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDCookieService.clearDanglingCookieDatabases"];
  v4 = objc_alloc_init(AMSMutableBinaryPromise);
  _alliTunesAccountIdentifiers = [(AMSDCookieService *)self _alliTunesAccountIdentifiers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004F358;
  v10[3] = &unk_1002B03A8;
  v10[4] = self;
  v11 = v3;
  v12 = @"com.apple.amsaccountsd.AMSDCookieService.clearDanglingCookieDatabases";
  v6 = v3;
  v7 = [_alliTunesAccountIdentifiers thenWithBlock:v10];
  binaryPromiseAdapter = [v7 binaryPromiseAdapter];
  [v4 finishWithPromise:binaryPromiseAdapter];

  return v4;
}

- (void)clearDanglingCookieDatabasesWithCompletion:(id)completion
{
  completionCopy = completion;
  clearDanglingCookieDatabases = [(AMSDCookieService *)self clearDanglingCookieDatabases];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004F698;
  v7[3] = &unk_1002B03D0;
  v8 = completionCopy;
  v6 = completionCopy;
  [clearDanglingCookieDatabases addFinishBlock:v7];
}

- (void)getCookieDatabasePathForAccount:(id)account withCompletion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  queue = [(AMSDCookieService *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004F7F4;
  v11[3] = &unk_1002B03F8;
  v11[4] = self;
  v12 = accountCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = accountCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDCookieService.getCookieDatabasePath" withQueue:queue whilePerformingSyncBlock:v11];
}

- (void)getCookiePropertiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only withCompletion:(id)completion
{
  onlyCopy = only;
  accountCopy = account;
  completionCopy = completion;
  v11 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    v15 = AMSHashIfNeeded();
    v16 = v15;
    v17 = @"false";
    *buf = 138544130;
    v27 = v13;
    v28 = 2114;
    if (onlyCopy)
    {
      v17 = @"true";
    }

    v29 = v14;
    v30 = 2114;
    v31 = v15;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Getting cookies. account = %{public}@ | cookieDatabaseOnly = %{public}@", buf, 0x2Au);
  }

  queue = [(AMSDCookieService *)self queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004FACC;
  v21[3] = &unk_1002B0420;
  v21[4] = self;
  v22 = accountCopy;
  v25 = onlyCopy;
  v23 = completionCopy;
  v24 = a2;
  v19 = completionCopy;
  v20 = accountCopy;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDCookieService.getCookies" withQueue:queue whilePerformingSyncBlock:v21];
}

- (id)getCookiePropertiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only error:(id *)error
{
  accountCopy = account;
  v9 = accountCopy;
  if (only)
  {
    goto LABEL_9;
  }

  identifier = [accountCopy identifier];

  if (!identifier || ([v9 identifier], v11 = objc_claimAutoreleasedReturnValue(), -[AMSDCookieService _cachedCookiePropertiesForIdentifier:](self, "_cachedCookiePropertiesForIdentifier:", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
LABEL_9:
    v19 = [(AMSDCookieService *)self _cookieDatabaseForAccount:v9 error:error];
    v13 = v19;
    if (v19)
    {
      v20 = [v19 cookiePropertiesWithError:error];
      if (v20)
      {
        v21 = v20;
        if (only)
        {
          oSLogObject4 = 0;
          goto LABEL_37;
        }

        v30 = [v9 accountPropertyForKey:@"cookies"];
        if (v30)
        {
          v31 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!v31)
          {
            v31 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v31 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
          {
            v33 = objc_opt_class();
            v34 = AMSLogKey();
            *buf = 138543618;
            v57 = v33;
            v58 = 2114;
            v59 = v34;
            _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Account has unexpected cookies in Accounts database. Cookies should be in coookie database instead. These cookies will migrated on next account save.", buf, 0x16u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            oSLogObject4 = v30;
LABEL_36:

LABEL_37:
            if ([oSLogObject4 count])
            {
              v39 = [NSHTTPCookie ams_cookiesByMergingProperties:oSLogObject4 intoProperties:v21];
              v40 = [NSHTTPCookie ams_propertiesForCookies:v39];

              v41 = +[AMSLogConfig sharedAccountsCookiesConfig];
              if (!v41)
              {
                v41 = +[AMSLogConfig sharedConfig];
              }

              oSLogObject2 = [v41 OSLogObject];
              if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
              {
                v53 = objc_opt_class();
                AMSLogKey();
                v43 = v55 = self;
                v52 = [v40 count];
                v44 = [oSLogObject4 count];
                v45 = [v39 count];
                *buf = 138544386;
                v57 = v53;
                v58 = 2114;
                v59 = v43;
                v60 = 2048;
                v61 = v52;
                v62 = 2048;
                v63 = v44;
                v64 = 2048;
                v65 = v45;
                _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loaded %lu cookie property dictionaries from database, %lu from Accounts. Parsed and merged into %lu total cookies.", buf, 0x34u);

                self = v55;
              }

              if (only)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v40 = v21;
              if (only)
              {
LABEL_47:
                oSLogObject5 = v40;
                v12 = oSLogObject5;
                goto LABEL_48;
              }
            }

            identifier2 = [v9 identifier];

            if (identifier2)
            {
              identifier3 = [v9 identifier];
              [(AMSDCookieService *)self _cacheCookieProperties:v40 forIdentifier:identifier3];
            }

            goto LABEL_47;
          }

          v35 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!v35)
          {
            v35 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject3 = [v35 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
          {
            v54 = objc_opt_class();
            v37 = AMSLogKey();
            v38 = AMSHashIfNeeded();
            *buf = 138543874;
            v57 = v54;
            v58 = 2114;
            v59 = v37;
            v60 = 2114;
            v61 = v38;
            _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unexpected value in Accounts database for cookies: %{public}@", buf, 0x20u);
          }
        }

        oSLogObject4 = 0;
        goto LABEL_36;
      }

      oSLogObject5 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!oSLogObject5)
      {
        oSLogObject5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [oSLogObject5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
LABEL_22:
        v12 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v28 = objc_opt_class();
      v24 = AMSLogKey();
      v29 = *error;
      v26 = AMSLogableError();
      *buf = 138543874;
      v57 = v28;
      v58 = 2114;
      v59 = v24;
      v60 = 2114;
      v61 = v26;
      v27 = "%{public}@: [%{public}@] Error getting cookie properties: %{public}@";
    }

    else
    {
      oSLogObject5 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!oSLogObject5)
      {
        oSLogObject5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [oSLogObject5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v23 = objc_opt_class();
      v24 = AMSLogKey();
      v25 = *error;
      v26 = AMSLogableError();
      *buf = 138543874;
      v57 = v23;
      v58 = 2114;
      v59 = v24;
      v60 = 2114;
      v61 = v26;
      v27 = "%{public}@: [%{public}@] Error getting cookie database: %{public}@";
    }

    _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_ERROR, v27, buf, 0x20u);

    goto LABEL_22;
  }

  v13 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject5 = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEBUG))
  {
    v15 = AMSLogKey();
    v16 = objc_opt_class();
    v17 = v16;
    if (v15)
    {
      self = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v17, self];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v16];
    }
    selfCopy = ;
    v49 = AMSHashIfNeeded();
    identifier4 = [v9 identifier];
    v51 = AMSHashIfNeeded();
    *buf = 138543874;
    v57 = selfCopy;
    v58 = 2114;
    v59 = v49;
    v60 = 2114;
    v61 = v51;
    _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_DEBUG, "%{public}@Found cached cookie properties. cookieProperties = %{public}@ | identifier = %{public}@", buf, 0x20u);

    if (v15)
    {

      selfCopy = self;
    }
  }

LABEL_49:

  return v12;
}

- (void)updateCookiesWithCookiePropertiesToAdd:(id)add cookiePropertiesToRemove:(id)remove forAccount:(id)account withCompletion:(id)completion
{
  addCopy = add;
  removeCopy = remove;
  accountCopy = account;
  completionCopy = completion;
  v12 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v16 = [addCopy count];
    v17 = [removeCopy count];
    v18 = AMSHashIfNeeded();
    *buf = 138544386;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    v42 = v16;
    *v43 = 2048;
    *&v43[2] = v17;
    *&v43[10] = 2114;
    *&v43[12] = v18;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Updating cookies with %lu to add and %lu to remove. account = %{public}@", buf, 0x34u);
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = sub_1000509A8;
  *v43 = sub_1000509B8;
  *&v43[8] = 0;
  queue = [(AMSDCookieService *)self queue];
  v20 = dispatch_get_global_queue(21, 0);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000509C0;
  v32[3] = &unk_1002B0448;
  v32[4] = self;
  v38 = a2;
  v21 = accountCopy;
  v33 = v21;
  v22 = addCopy;
  v34 = v22;
  v23 = removeCopy;
  v35 = v23;
  v36 = v39;
  v37 = buf;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100050E50;
  v28[3] = &unk_1002B0470;
  v24 = completionCopy;
  v29 = v24;
  v30 = v39;
  v31 = buf;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.AMSDCookieService.updateCookies" withQueue:queue postActionQueue:v20 whilePerformingBlockOnQueue:v32 postAction:v28];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v39, 8);
}

+ (BOOL)isConnectionEntitled:(id)entitled
{
  entitledCopy = entitled;
  v4 = [entitledCopy valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v7 = [entitledCopy valueForEntitlement:@"com.apple.itunesstored.private"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    bOOLValue = [v8 BOOLValue];
  }

  return bOOLValue;
}

@end