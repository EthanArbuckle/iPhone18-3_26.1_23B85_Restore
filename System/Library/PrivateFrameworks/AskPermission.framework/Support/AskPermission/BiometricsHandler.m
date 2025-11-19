@interface BiometricsHandler
+ (BOOL)isSupported;
+ (OS_dispatch_queue)storeQueue;
+ (id)retreiveTokenWithAction:(int64_t)a3;
+ (int64_t)_biometryType;
+ (int64_t)state;
+ (void)_presentBiometricsDialogWithCompletion:(id)a3;
+ (void)_removeToken;
+ (void)_retreiveTokenWithAction:(int64_t)a3 completion:(id)a4;
+ (void)_storeToken:(id)a3;
+ (void)reset;
+ (void)setState:(int64_t)a3;
+ (void)storeToken:(id)a3;
@end

@implementation BiometricsHandler

+ (int64_t)state
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"biometricsState"];

  return v3;
}

+ (OS_dispatch_queue)storeQueue
{
  if (qword_100063CB0 != -1)
  {
    sub_10000B83C();
  }

  v3 = qword_100063CB8;

  return v3;
}

+ (BOOL)isSupported
{
  v2 = objc_alloc_init(LAContext);
  v10 = 0;
  v3 = [v2 canEvaluatePolicy:1 error:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = +[APLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v4;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Biometrics context error. Error: %{public}@", buf, 0x16u);
    }
  }

  return v3;
}

+ (void)setState:(int64_t)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setInteger:a3 forKey:@"biometricsState"];
}

+ (void)reset
{
  [a1 setState:0];

  [a1 removeToken];
}

+ (id)retreiveTokenWithAction:(int64_t)a3
{
  v5 = objc_alloc_init(AMSMutablePromise);
  if ([a1 isSupported])
  {
    if ([a1 state] == 2)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000AA64;
      v12[3] = &unk_100054E40;
      v13 = v5;
      [a1 _retreiveTokenWithAction:a3 completion:v12];
      v6 = v13;
      goto LABEL_14;
    }

    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v10 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve token as biometrics are not enabled", buf, 0xCu);
    }
  }

  else
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v9 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve token as biometrics are not supported", buf, 0xCu);
    }
  }

  v6 = APError();
  [v5 finishWithError:v6];
LABEL_14:

  return v5;
}

+ (void)storeToken:(id)a3
{
  v4 = a3;
  if (([a1 isSupported] & 1) == 0)
  {
    v5 = +[APLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    v8 = "%{public}@: Failed to store token as biometrics are not supported";
    goto LABEL_14;
  }

  if (![a1 state])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000AC88;
    v9[3] = &unk_100054E68;
    v11 = a1;
    v10 = v4;
    [a1 _presentBiometricsDialogWithCompletion:v9];

    goto LABEL_16;
  }

  if ([a1 state] != 2)
  {
    v5 = +[APLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    v8 = "%{public}@: Failed to store token as biometrics are not enabled";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);

LABEL_15:
    goto LABEL_16;
  }

  [a1 _storeToken:v4];
LABEL_16:
}

+ (void)_presentBiometricsDialogWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = objc_opt_class();
    v7 = v26;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Presenting biometrics dialog", buf, 0xCu);
  }

  v8 = [a1 _biometryType];
  if (v8 == 4)
  {
    v10 = @"AUTHENTICATION_OPTIN_DIALOG_BODY_OPTICID";
    v11 = @"AUTHENTICATION_OPTIN_DIALOG_TITLE_OPTICID";
  }

  else
  {
    v9 = v8;
    if (v8 == 2)
    {
      v10 = @"AUTHENTICATION_OPTIN_DIALOG_BODY_FACEID";
      v11 = @"AUTHENTICATION_OPTIN_DIALOG_TITLE_FACEID";
    }

    else
    {
      if (v8 != 1)
      {
        v17 = +[APLogConfig sharedDaemonConfig];
        if (!v17)
        {
          v17 = +[APLogConfig sharedConfig];
        }

        v18 = [v17 OSLogObject];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          *buf = 138543618;
          v26 = v19;
          v27 = 2048;
          v28 = v9;
          v20 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: Could not present biometrics dialog, unsupported biometry type. Biometry type: %ld", buf, 0x16u);
        }

        v13 = 0;
        v12 = 0;
        goto LABEL_19;
      }

      v10 = @"AUTHENTICATION_OPTIN_DIALOG_BODY_TOUCHID";
      v11 = @"AUTHENTICATION_OPTIN_DIALOG_TITLE_TOUCHID";
    }
  }

  v12 = [Localizations stringWithKey:v11];
  v13 = [Localizations stringWithKey:v10];
  if (!v13 || !v12)
  {
LABEL_19:
    v4[2](v4, 0);
    goto LABEL_20;
  }

  v14 = [Localizations stringWithKey:@"AUTHENTICATION_OPTIN_DIALOG_BUTTON_APPROVE"];
  v15 = [Localizations stringWithKey:@"AUTHENTICATION_OPTIN_DIALOG_BUTTON_DECLINE"];
  v24[0] = v15;
  v24[1] = v14;
  v16 = [NSArray arrayWithObjects:v24 count:2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000B010;
  v21[3] = &unk_100054E90;
  v23 = a1;
  v22 = v4;
  [DialogPresenter presentDialogWithTitle:v12 body:v13 buttons:v16 completion:v21];

LABEL_20:
}

+ (int64_t)_biometryType
{
  v2 = objc_alloc_init(LAContext);
  v11 = 0;
  v3 = [v2 canEvaluatePolicy:1 error:&v11];
  v4 = v11;
  v5 = 0;
  if (v3)
  {
    v5 = [v2 biometryType];
  }

  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    *buf = 138543618;
    v13 = v8;
    v14 = 2048;
    v15 = v5;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometry type: %ld", buf, 0x16u);
  }

  return v5;
}

+ (void)_removeToken
{
  v3 = +[APLogConfig sharedUIServiceConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing biometrics token", &v7, 0xCu);
  }

  v6 = [a1 storeQueue];
  dispatch_async(v6, &stru_100054EB0);
}

+ (void)_retreiveTokenWithAction:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[APLogConfig sharedUIServiceConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = objc_opt_class();
    v17 = 2050;
    v18 = a3;
    v9 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Retreiving biometrics token. Action: %{public}ld", buf, 0x16u);
  }

  v10 = [a1 storeQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B624;
  v12[3] = &unk_100054ED8;
  v13 = v6;
  v14 = a3;
  v11 = v6;
  dispatch_async(v10, v12);
}

+ (void)_storeToken:(id)a3
{
  v4 = a3;
  v5 = +[APLogConfig sharedUIServiceConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = v4;
    v7 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Storing biometrics token. Token: %@", buf, 0x16u);
  }

  v8 = [a1 storeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B828;
  block[3] = &unk_100054C30;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, block);
}

@end