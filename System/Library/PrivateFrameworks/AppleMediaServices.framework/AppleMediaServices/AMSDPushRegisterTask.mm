@interface AMSDPushRegisterTask
+ (BOOL)_shouldThrottleForAccount:(id)a3 environment:(id)a4;
+ (BOOL)_shouldThrottleForAccount:(id)a3 environment:(id)a4 currentTimestamp:(double)a5;
+ (id)_createCriteriaWithToken:(id)a3;
+ (id)shouldPerformForAccount:(id)a3 environment:(id)a4 token:(id)a5;
+ (void)_updateThrottleForAccount:(id)a3 environment:(id)a4;
+ (void)_updateThrottleForAccount:(id)a3 environment:(id)a4 throttleTime:(id)a5;
- (AMSDPushRegisterTask)initWithAccount:(id)a3 token:(id)a4 environment:(id)a5 bag:(id)a6;
- (id)perform;
- (void)_updateCachedCriteriaWithToken:(id)a3;
@end

@implementation AMSDPushRegisterTask

- (AMSDPushRegisterTask)initWithAccount:(id)a3 token:(id)a4 environment:(id)a5 bag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = AMSDPushRegisterTask;
  v15 = [(AMSDPushRegisterTask *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a3);
    v17 = [v12 copy];
    token = v16->_token;
    v16->_token = v17;

    v19 = [v13 copy];
    environment = v16->_environment;
    v16->_environment = v19;

    objc_storeStrong(&v16->_bag, a6);
  }

  return v16;
}

- (id)perform
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100080850;
  v5[3] = &unk_1002AFDB0;
  v5[4] = self;
  v2 = [(AMSDPushRegisterTask *)self performTaskWithPromiseBlock:v5];
  v3 = [v2 binaryPromiseAdapter];

  return v3;
}

+ (id)shouldPerformForAccount:(id)a3 environment:(id)a4 token:(id)a5
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
      goto LABEL_25;
    }

    v18 = AMSLogKey();
    v19 = objc_opt_class();
    v20 = v19;
    if (v18)
    {
      v28 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v20, v28];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v19];
    }
    v21 = ;
    v24 = AMSHashIfNeeded();
    v25 = AMSHashIfNeeded();
    v26 = AMSHashIfNeeded();
    *buf = 138544130;
    v35 = v21;
    v36 = 2114;
    v37 = v24;
    v38 = 2114;
    v39 = v25;
    v40 = 2114;
    v41 = v26;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@No account, environment or token to perform registration. Skipping registration. environment: %{public}@ | account: %{public}@ | token: %{public}@)", buf, 0x2Au);
    if (v18)
    {

      v21 = v28;
    }

    goto LABEL_24;
  }

  if (![v8 ams_isLocalAccount])
  {
    v22 = [AMSPushHandler accountIsEligibleForPushNotifications:v8 accountStore:0];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000815EC;
    v29[3] = &unk_1002B1ED0;
    v33 = a1;
    v30 = v8;
    v31 = v9;
    v32 = v11;
    v23 = [v22 thenWithBlock:v29];

    goto LABEL_26;
  }

  v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = AMSLogKey();
    v15 = objc_opt_class();
    v16 = v15;
    if (v14)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v16, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v15];
    }
    v17 = ;
    v24 = AMSHashIfNeeded();
    *buf = 138543618;
    v35 = v17;
    v36 = 2114;
    v37 = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Not posting token for the local account. (env: %{public}@)", buf, 0x16u);
    if (v14)
    {

      v17 = a1;
    }

LABEL_24:
  }

LABEL_25:

  v23 = [AMSPromise promiseWithResult:&__kCFBooleanFalse];
LABEL_26:

  return v23;
}

+ (id)_createCriteriaWithToken:(id)a3
{
  v3 = a3;
  v4 = +[AMSDevice deviceName];
  v5 = +[AMSDevice buildVersion];
  v6 = [v3 base64EncodedStringWithOptions:0];

  v7 = [NSString stringWithFormat:@"<%@ %@; %@>", v4, v5, v6];;

  return v7;
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

  v11 = [NSString stringWithFormat:@"%@-%@", v10, v7];

  v12 = [v9 objectForKeyedSubscript:v11];
  [v12 doubleValue];
  v14 = a5 - v13 < 3600.0;

  return v14;
}

- (void)_updateCachedCriteriaWithToken:(id)a3
{
  v4 = a3;
  v5 = [(AMSDPushRegisterTask *)self account];
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

  v11 = [(AMSDPushRegisterTask *)self environment];
  [v16 setObject:v10 forKeyedSubscript:v11];

  v12 = [(AMSDPushRegisterTask *)self account];
  [v12 ams_setRegisterSuccessCriteria:v16];

  v13 = +[ACAccountStore ams_sharedAccountStore];
  v14 = [(AMSDPushRegisterTask *)self account];
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
  v15 = [NSString stringWithFormat:@"%@-%@", v14, v8];

  [v13 setObject:v7 forKeyedSubscript:v15];
  v16 = [v13 copy];
  [v19 ams_setPushRegistrationThrottleMap:v16];

  v17 = +[ACAccountStore ams_sharedAccountStore];
  v18 = [v17 ams_saveAccount:v19];

  [AMSStorage amsd_setPushRegistrationThrottleMap:0];
}

@end