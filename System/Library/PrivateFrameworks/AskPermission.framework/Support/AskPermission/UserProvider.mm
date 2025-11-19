@interface UserProvider
+ (NSString)previousLocalApprovalUsername;
+ (id)_authenticateWithUsername:(id)a3 authenticationType:(int64_t)a4;
+ (id)localApprovalUser;
+ (id)primaryiCloudUserWithAction:(int64_t)a3 keychainError:(id *)a4;
+ (void)setPreviousLocalApprovalUsername:(id)a3;
@end

@implementation UserProvider

+ (NSString)previousLocalApprovalUsername
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"previousLocalApprovalUsername"];

  return v3;
}

+ (void)setPreviousLocalApprovalUsername:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:v3 forKey:@"previousLocalApprovalUsername"];
}

+ (id)localApprovalUser
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting local approval user", buf, 0xCu);
  }

  v6 = [a1 previousLocalApprovalUsername];
  v7 = [a1 _authenticateWithUsername:v6 authenticationType:0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000293FC;
  v10[3] = &unk_1000557C0;
  v10[4] = a1;
  v8 = [v7 thenWithBlock:v10];

  return v8;
}

+ (id)primaryiCloudUserWithAction:(int64_t)a3 keychainError:(id *)a4
{
  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v41 = objc_opt_class();
    v42 = 2050;
    v43 = a3;
    v9 = v41;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting primary iCloud user. Action: %{public}ld", buf, 0x16u);
  }

  v10 = +[ACAccountStore ams_sharedAccountStore];
  v11 = [v10 ams_activeiCloudAccount];
  v12 = v11;
  if (v11)
  {
    v36 = a4;
    v37 = a1;
    v13 = [v11 ams_DSID];
    v14 = [v13 stringValue];

    v38 = [v12 username];
    v15 = [BiometricsHandler retreiveTokenWithAction:a3];
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

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138543362;
        v41 = v21;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved active iCloud user with biometrics token.", buf, 0xCu);
      }

      v23 = v38;
      v24 = [[User alloc] initWithDSID:v14 username:v38 password:0 biometricsToken:v16];
      v25 = [AMSPromise promiseWithResult:v24];
    }

    else
    {
      if (!v18)
      {
        v19 = +[APLogConfig sharedConfig];
      }

      v30 = [v19 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        *buf = 138543618;
        v41 = v31;
        v42 = 2114;
        v43 = v17;
        v32 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retreive biometrics token. Error: %{public}@", buf, 0x16u);
      }

      if (v36)
      {
        v33 = v17;
        *v36 = v17;
      }

      if (a3)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      v23 = v38;
      v25 = [v37 _authenticateWithUsername:v38 authenticationType:v34];
    }
  }

  else
  {
    v26 = +[APLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[APLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      *buf = 138543362;
      v41 = v28;
      v29 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@: No active iCloud account", buf, 0xCu);
    }

    v14 = APError();
    v25 = [AMSPromise promiseWithError:v14];
  }

  return v25;
}

+ (id)_authenticateWithUsername:(id)a3 authenticationType:(int64_t)a4
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = v5;
    v16 = 2050;
    v17 = a4;
    v8 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Authenticating user. Username: %@, authentication type: %{public}ld", &v12, 0x20u);
  }

  v9 = objc_alloc_init(AMSMutablePromise);
  v10 = [v9 completionHandlerAdapter];
  [UserAuthenticator authenticateWithUsername:v5 authenticationType:a4 completion:v10];

  return v9;
}

@end