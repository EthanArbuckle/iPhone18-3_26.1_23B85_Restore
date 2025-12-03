@interface UserProvider
+ (NSString)previousLocalApprovalUsername;
+ (id)_authenticateWithUsername:(id)username authenticationType:(int64_t)type;
+ (id)localApprovalUser;
+ (id)primaryiCloudUserWithAction:(int64_t)action keychainError:(id *)error;
+ (void)setPreviousLocalApprovalUsername:(id)username;
@end

@implementation UserProvider

+ (NSString)previousLocalApprovalUsername
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"previousLocalApprovalUsername"];

  return v3;
}

+ (void)setPreviousLocalApprovalUsername:(id)username
{
  usernameCopy = username;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:usernameCopy forKey:@"previousLocalApprovalUsername"];
}

+ (id)localApprovalUser
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v5 = v12;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting local approval user", buf, 0xCu);
  }

  previousLocalApprovalUsername = [self previousLocalApprovalUsername];
  v7 = [self _authenticateWithUsername:previousLocalApprovalUsername authenticationType:0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000293FC;
  v10[3] = &unk_1000557C0;
  v10[4] = self;
  v8 = [v7 thenWithBlock:v10];

  return v8;
}

+ (id)primaryiCloudUserWithAction:(int64_t)action keychainError:(id *)error
{
  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v41 = objc_opt_class();
    v42 = 2050;
    actionCopy = action;
    v9 = v41;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting primary iCloud user. Action: %{public}ld", buf, 0x16u);
  }

  v10 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiCloudAccount = [v10 ams_activeiCloudAccount];
  v12 = ams_activeiCloudAccount;
  if (ams_activeiCloudAccount)
  {
    errorCopy = error;
    selfCopy = self;
    ams_DSID = [ams_activeiCloudAccount ams_DSID];
    stringValue = [ams_DSID stringValue];

    username = [v12 username];
    v15 = [BiometricsHandler retreiveTokenWithAction:action];
    v39 = 0;
    v16 = [v15 resultWithError:&v39];
    v17 = v39;
    v18 = +[APLogConfig sharedDaemonConfig];
    v19 = v18;
    if (v16)
    {
      if (!v18)
      {
        v19 = +[APLogConfig sharedConfig];
      }

      oSLogObject2 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138543362;
        v41 = v21;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved active iCloud user with biometrics token.", buf, 0xCu);
      }

      v23 = username;
      v24 = [[User alloc] initWithDSID:stringValue username:username password:0 biometricsToken:v16];
      v25 = [AMSPromise promiseWithResult:v24];
    }

    else
    {
      if (!v18)
      {
        v19 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        *buf = 138543618;
        v41 = v31;
        v42 = 2114;
        actionCopy = v17;
        v32 = v31;
        _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive biometrics token. Error: %{public}@", buf, 0x16u);
      }

      if (errorCopy)
      {
        v33 = v17;
        *errorCopy = v17;
      }

      if (action)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      v23 = username;
      v25 = [selfCopy _authenticateWithUsername:username authenticationType:v34];
    }
  }

  else
  {
    v26 = +[APLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[APLogConfig sharedConfig];
    }

    oSLogObject4 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      *buf = 138543362;
      v41 = v28;
      v29 = v28;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: No active iCloud account", buf, 0xCu);
    }

    stringValue = APError();
    v25 = [AMSPromise promiseWithError:stringValue];
  }

  return v25;
}

+ (id)_authenticateWithUsername:(id)username authenticationType:(int64_t)type
{
  usernameCopy = username;
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = usernameCopy;
    v16 = 2050;
    typeCopy = type;
    v8 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Authenticating user. Username: %@, authentication type: %{public}ld", &v12, 0x20u);
  }

  v9 = objc_alloc_init(AMSMutablePromise);
  completionHandlerAdapter = [v9 completionHandlerAdapter];
  [UserAuthenticator authenticateWithUsername:usernameCopy authenticationType:type completion:completionHandlerAdapter];

  return v9;
}

@end