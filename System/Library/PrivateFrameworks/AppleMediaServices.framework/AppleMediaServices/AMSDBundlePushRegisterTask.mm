@interface AMSDBundlePushRegisterTask
+ (BOOL)_shouldThrottleForAccount:(id)a3 environment:(id)a4;
+ (BOOL)_shouldThrottleForAccount:(id)a3 environment:(id)a4 currentTimestamp:(double)a5;
+ (BOOL)shouldPerformForAccount:(id)a3 environment:(id)a4 token:(id)a5;
+ (id)_createCriteriaWithToken:(id)a3;
+ (id)_sharedTokenLock;
+ (void)_updateThrottleForAccount:(id)a3 environment:(id)a4;
+ (void)_updateThrottleForAccount:(id)a3 environment:(id)a4 throttleTime:(id)a5;
- (AMSDBundlePushRegisterTask)initWithAccount:(id)a3 token:(id)a4 environment:(id)a5 bag:(id)a6;
- (id)perform;
- (void)_updateCachedCriteriaWithToken:(id)a3;
@end

@implementation AMSDBundlePushRegisterTask

- (AMSDBundlePushRegisterTask)initWithAccount:(id)a3 token:(id)a4 environment:(id)a5 bag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AMSDBundlePushRegisterTask;
  v15 = [(AMSDBundlePushRegisterTask *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a3);
    objc_storeStrong(&v16->_bag, a6);
    objc_storeStrong(&v16->_environment, a5);
    objc_storeStrong(&v16->_token, a4);
  }

  return v16;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100045638;
  v4[3] = &unk_1002AFFB8;
  v4[4] = self;
  v2 = [(AMSDBundlePushRegisterTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

+ (BOOL)shouldPerformForAccount:(id)a3 environment:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8 || !v9 || !v10)
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v19 = objc_opt_class();
    v15 = AMSLogKey();
    v16 = [v8 username];
    v17 = AMSHashIfNeeded();
    *buf = 138544130;
    v33 = v19;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = v9;
    v38 = 2112;
    v39 = v17;
    v18 = "%{public}@: [%{public}@] No account, environment or token to perform registration. (env: %{public}@, dsid: %@)";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v18, buf, 0x2Au);

LABEL_19:
LABEL_20:
    v22 = 0;
    goto LABEL_21;
  }

  if (([v8 ams_isLocalAccount] & 1) == 0)
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v20 = objc_opt_class();
    v15 = AMSLogKey();
    v21 = [v8 ams_DSID];
    *buf = 138544130;
    v33 = v20;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = v9;
    v38 = 2112;
    v39 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Account is not a local account. (env: %{public}@, dsid: %@)", buf, 0x2Au);

    goto LABEL_19;
  }

  if ([a1 _shouldThrottleForAccount:v8 environment:v9])
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v16 = [v8 username];
    v17 = AMSHashIfNeeded();
    *buf = 138544130;
    v33 = v14;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = v17;
    v38 = 2114;
    v39 = v9;
    v18 = "%{public}@: [%{public}@] Throttling registration for account: %{public}@ environment: %{public}@";
    goto LABEL_14;
  }

  v12 = [a1 _createCriteriaWithToken:v11];
  v24 = [v8 ams_registerSuccessCriteria];
  v13 = [v24 objectForKeyedSubscript:v9];

  v25 = [v13 isEqualToString:v12];
  if (v25)
  {
    v26 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v28 = AMSLogKey();
      v31 = [v8 username];
      v29 = AMSHashIfNeeded();
      *buf = 138543874;
      v33 = v30;
      v34 = 2114;
      v35 = v28;
      v36 = 2114;
      v37 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Already posted registration for %{public}@", buf, 0x20u);
    }
  }

  v22 = v25 ^ 1;
LABEL_21:

  return v22;
}

+ (id)_createCriteriaWithToken:(id)a3
{
  v3 = a3;
  v4 = +[AMSDevice deviceName];
  v5 = +[AMSDevice buildVersion];
  v6 = [v3 base64EncodedStringWithOptions:0];

  v7 = [NSString stringWithFormat:@"<bundle %@; %@; %@>", v4, v5, v6];;

  return v7;
}

+ (id)_sharedTokenLock
{
  if (qword_1002E31B8 != -1)
  {
    sub_10021B160();
  }

  v3 = qword_1002E31C0;

  return v3;
}

+ (BOOL)_shouldThrottleForAccount:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  +[NSDate timeIntervalSinceReferenceDate];
  LOBYTE(a1) = [a1 _shouldThrottleForAccount:v7 environment:v6 currentTimestamp:?];

  return a1;
}

+ (BOOL)_shouldThrottleForAccount:(id)a3 environment:(id)a4 currentTimestamp:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 ams_pushRegistrationThrottleMap];
  v10 = [v8 ams_DSID];

  v11 = [NSString stringWithFormat:@"bundle-%@-%@", v10, v7];

  v12 = [v9 objectForKeyedSubscript:v11];
  [v12 doubleValue];
  v14 = a5 - v13 < 3600.0;

  return v14;
}

- (void)_updateCachedCriteriaWithToken:(id)a3
{
  v4 = a3;
  v5 = [(AMSDBundlePushRegisterTask *)self account];
  v6 = [v5 ams_registerSuccessCriteria];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(NSMutableDictionary);
  }

  v16 = v9;

  v10 = [objc_opt_class() _createCriteriaWithToken:v4];

  v11 = [(AMSDBundlePushRegisterTask *)self environment];
  [v16 setObject:v10 forKeyedSubscript:v11];

  v12 = [(AMSDBundlePushRegisterTask *)self account];
  [v12 ams_setRegisterSuccessCriteria:v16];

  v13 = +[ACAccountStore ams_sharedAccountStore];
  v14 = [(AMSDBundlePushRegisterTask *)self account];
  v15 = [v13 ams_saveAccount:v14];
}

+ (void)_updateThrottleForAccount:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  +[NSDate timeIntervalSinceReferenceDate];
  v8 = [NSNumber numberWithDouble:?];
  [a1 _updateThrottleForAccount:v7 environment:v6 throttleTime:v8];
}

+ (void)_updateThrottleForAccount:(id)a3 environment:(id)a4 throttleTime:(id)a5
{
  v19 = a3;
  v7 = a5;
  v8 = a4;
  v9 = [v19 ams_pushRegistrationThrottleMap];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(NSMutableDictionary);
  }

  v13 = v12;

  v14 = [v19 ams_DSID];
  v15 = [NSString stringWithFormat:@"bundle-%@-%@", v14, v8];

  [v13 setObject:v7 forKeyedSubscript:v15];
  v16 = [v13 copy];
  [v19 ams_setPushRegistrationThrottleMap:v16];

  v17 = +[ACAccountStore ams_sharedAccountStore];
  v18 = [v17 ams_saveAccount:v19];

  [AMSStorage amsd_setPushRegistrationThrottleMap:0];
}

@end