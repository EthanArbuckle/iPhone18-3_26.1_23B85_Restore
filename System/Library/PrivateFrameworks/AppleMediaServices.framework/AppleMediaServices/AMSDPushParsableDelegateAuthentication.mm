@interface AMSDPushParsableDelegateAuthentication
+ (id)_getSessionForKey:(id)a3;
+ (id)_sessionMap;
+ (void)_cancelDelegateAuthenticateWithCacheKey:(id)a3;
+ (void)_removeSessionForKey:(id)a3;
+ (void)_saveSession:(id)a3 forKey:(id)a4;
+ (void)_startDelegateAuthenticateWithAccount:(id)a3 bag:(id)a4 cacheKey:(id)a5 challenge:(id)a6 deviceName:(id)a7;
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
@end

@implementation AMSDPushParsableDelegateAuthentication

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    v5 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    v13 = a1;
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v15, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    *buf = 138543362;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Received a push notification for delegate auth", buf, 0xCu);
    if (v12)
    {

      v16 = a1;
    }

    a1 = v13;
  }

  v17 = [v8 objectForKeyedSubscript:@"cacheKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    v21 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    v23 = AMSLogKey();
    v24 = objc_opt_class();
    v25 = v24;
    if (v23)
    {
      v5 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v25, v5];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v24];
    }
    v35 = ;
    *buf = 138543362;
    v51 = v35;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Dropping due to invalid payload missing cache key", buf, 0xCu);
    if (v23)
    {

      v35 = v5;
    }

    goto LABEL_59;
  }

  v19 = [v8 objectForKeyedSubscript:@"cancel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v26 = [v20 BOOLValue];
  if (!v26)
  {
    v21 = [v8 account];
    if (!v21)
    {
      v28 = a1;
      v22 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v29 = v9;
        v30 = AMSLogKey();
        v31 = objc_opt_class();
        v32 = v31;
        if (v30)
        {
          v28 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v32, v28];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v31];
        }
        v33 = ;
        *buf = 138543362;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Dropping due to invalid payload missing account DSID", buf, 0xCu);
        if (v30)
        {

          v33 = v28;
        }

        v9 = v29;
      }

      goto LABEL_66;
    }

    v49 = a1;
    v27 = [v8 objectForKeyedSubscript:@"challenge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v27;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v34 = [v8 objectForKeyedSubscript:@"device"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v34;
      }

      else
      {
        v23 = 0;
      }

      if (!v23)
      {
        v48 = v9;
        v41 = +[AMSLogConfig sharedPushNotificationConfig];
        if (!v41)
        {
          v41 = +[AMSLogConfig sharedConfig];
        }

        v42 = [v41 OSLogObject];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = AMSLogKey();
          v44 = NSString;
          v45 = objc_opt_class();
          v46 = v45;
          if (v43)
          {
            v44 = AMSLogKey();
            [NSString stringWithFormat:@"%@: [%@] ", v46, v44];
          }

          else
          {
            [NSString stringWithFormat:@"%@: ", v45];
          }
          v47 = ;
          *buf = 138543362;
          v51 = v47;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@No device name included in the payload. Will proceed anyway.", buf, 0xCu);
          if (v43)
          {

            v47 = v44;
          }
        }

        v9 = v48;
      }

      [v49 _startDelegateAuthenticateWithAccount:v21 bag:v9 cacheKey:v18 challenge:v22 deviceName:v23];
      goto LABEL_66;
    }

    v23 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    v35 = [v23 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v9;
      v37 = AMSLogKey();
      v38 = objc_opt_class();
      v39 = v38;
      if (v37)
      {
        v49 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v39, v49];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v38];
      }
      v40 = ;
      *buf = 138543362;
      v51 = v40;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@Dropping due to invalid payload missing challenge", buf, 0xCu);
      if (v37)
      {

        v40 = v49;
      }

      v9 = v36;
    }

LABEL_59:

LABEL_66:
LABEL_67:

    goto LABEL_68;
  }

  [a1 _cancelDelegateAuthenticateWithCacheKey:v18];
LABEL_68:
}

+ (void)_startDelegateAuthenticateWithAccount:(id)a3 bag:(id)a4 cacheKey:(id)a5 challenge:(id)a6 deviceName:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  v17 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = AMSLogKey();
    v20 = a1;
    v21 = v19;
    v32 = v20;
    v22 = objc_opt_class();
    v23 = v22;
    if (v21)
    {
      v31 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v23, v31];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v22];
    }
    v24 = ;
    *buf = 138543618;
    v40 = v24;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Starting a new delegate auth session with identifier: %@", buf, 0x16u);
    if (v21)
    {

      v24 = v31;
    }

    a1 = v32;
  }

  v25 = [v16 integerForKey:@"delegateAuthTimeout"];

  v26 = [v25 valuePromise];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10007E298;
  v33[3] = &unk_1002B1DD8;
  v37 = v12;
  v38 = a1;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v27 = v12;
  v28 = v15;
  v29 = v14;
  v30 = v13;
  [v26 resultWithCompletion:v33];
}

+ (void)_cancelDelegateAuthenticateWithCacheKey:(id)a3
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = objc_opt_class();
    v10 = v9;
    if (v8)
    {
      v3 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v10, v3];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    *buf = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling a delegate auth session with identifier: %@", buf, 0x16u);
    if (v8)
    {

      v11 = v3;
    }
  }

  v12 = [a1 _getSessionForKey:v5];
  v13 = v12;
  if (v12)
  {
    [v12 cancel];
  }

  else
  {
    v14 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = AMSLogKey();
      v17 = objc_opt_class();
      v18 = v17;
      if (v16)
      {
        a1 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v18, a1];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      *buf = 138543362;
      v21 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Recieved a notification to cancel a delegate auth, but no session could be found", buf, 0xCu);
      if (v16)
      {

        v19 = a1;
      }
    }
  }
}

+ (void)_saveSession:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _sessionMap];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = objc_opt_class();
      v14 = v13;
      if (v12)
      {
        a1 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v14, a1];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      *buf = 138543362;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Tried to save session under an already existing key.", buf, 0xCu);
      if (v12)
      {

        v15 = a1;
      }
    }
  }

  else
  {
    v10 = [a1 _sessionMap];
    [v10 setObject:v6 forKey:v7];
  }
}

+ (id)_getSessionForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 _sessionMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (void)_removeSessionForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 _sessionMap];
  [v5 removeObjectForKey:v4];
}

+ (id)_sessionMap
{
  v2 = qword_1002E3408;
  if (!qword_1002E3408)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = qword_1002E3408;
    qword_1002E3408 = v3;

    v2 = qword_1002E3408;
  }

  return v2;
}

@end