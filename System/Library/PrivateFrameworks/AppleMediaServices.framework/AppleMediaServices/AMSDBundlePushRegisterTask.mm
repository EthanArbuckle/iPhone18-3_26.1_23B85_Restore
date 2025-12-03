@interface AMSDBundlePushRegisterTask
+ (BOOL)_shouldThrottleForAccount:(id)account environment:(id)environment;
+ (BOOL)_shouldThrottleForAccount:(id)account environment:(id)environment currentTimestamp:(double)timestamp;
+ (BOOL)shouldPerformForAccount:(id)account environment:(id)environment token:(id)token;
+ (id)_createCriteriaWithToken:(id)token;
+ (id)_sharedTokenLock;
+ (void)_updateThrottleForAccount:(id)account environment:(id)environment;
+ (void)_updateThrottleForAccount:(id)account environment:(id)environment throttleTime:(id)time;
- (AMSDBundlePushRegisterTask)initWithAccount:(id)account token:(id)token environment:(id)environment bag:(id)bag;
- (id)perform;
- (void)_updateCachedCriteriaWithToken:(id)token;
@end

@implementation AMSDBundlePushRegisterTask

- (AMSDBundlePushRegisterTask)initWithAccount:(id)account token:(id)token environment:(id)environment bag:(id)bag
{
  accountCopy = account;
  tokenCopy = token;
  environmentCopy = environment;
  bagCopy = bag;
  v18.receiver = self;
  v18.super_class = AMSDBundlePushRegisterTask;
  v15 = [(AMSDBundlePushRegisterTask *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v16->_bag, bag);
    objc_storeStrong(&v16->_environment, environment);
    objc_storeStrong(&v16->_token, token);
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

+ (BOOL)shouldPerformForAccount:(id)account environment:(id)environment token:(id)token
{
  accountCopy = account;
  environmentCopy = environment;
  tokenCopy = token;
  v11 = tokenCopy;
  if (!accountCopy || !environmentCopy || !tokenCopy)
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v19 = objc_opt_class();
    v15 = AMSLogKey();
    username = [accountCopy username];
    v17 = AMSHashIfNeeded();
    *buf = 138544130;
    v33 = v19;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = environmentCopy;
    v38 = 2112;
    v39 = v17;
    v18 = "%{public}@: [%{public}@] No account, environment or token to perform registration. (env: %{public}@, dsid: %@)";
LABEL_14:
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, v18, buf, 0x2Au);

LABEL_19:
LABEL_20:
    v22 = 0;
    goto LABEL_21;
  }

  if (([accountCopy ams_isLocalAccount] & 1) == 0)
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v20 = objc_opt_class();
    v15 = AMSLogKey();
    ams_DSID = [accountCopy ams_DSID];
    *buf = 138544130;
    v33 = v20;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = environmentCopy;
    v38 = 2112;
    v39 = ams_DSID;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Account is not a local account. (env: %{public}@, dsid: %@)", buf, 0x2Au);

    goto LABEL_19;
  }

  if ([self _shouldThrottleForAccount:accountCopy environment:environmentCopy])
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v14 = objc_opt_class();
    v15 = AMSLogKey();
    username = [accountCopy username];
    v17 = AMSHashIfNeeded();
    *buf = 138544130;
    v33 = v14;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = v17;
    v38 = 2114;
    v39 = environmentCopy;
    v18 = "%{public}@: [%{public}@] Throttling registration for account: %{public}@ environment: %{public}@";
    goto LABEL_14;
  }

  v12 = [self _createCriteriaWithToken:v11];
  ams_registerSuccessCriteria = [accountCopy ams_registerSuccessCriteria];
  oSLogObject = [ams_registerSuccessCriteria objectForKeyedSubscript:environmentCopy];

  v25 = [oSLogObject isEqualToString:v12];
  if (v25)
  {
    v26 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v28 = AMSLogKey();
      username2 = [accountCopy username];
      v29 = AMSHashIfNeeded();
      *buf = 138543874;
      v33 = v30;
      v34 = 2114;
      v35 = v28;
      v36 = 2114;
      v37 = v29;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Already posted registration for %{public}@", buf, 0x20u);
    }
  }

  v22 = v25 ^ 1;
LABEL_21:

  return v22;
}

+ (id)_createCriteriaWithToken:(id)token
{
  tokenCopy = token;
  v4 = +[AMSDevice deviceName];
  v5 = +[AMSDevice buildVersion];
  v6 = [tokenCopy base64EncodedStringWithOptions:0];

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

+ (BOOL)_shouldThrottleForAccount:(id)account environment:(id)environment
{
  environmentCopy = environment;
  accountCopy = account;
  +[NSDate timeIntervalSinceReferenceDate];
  LOBYTE(self) = [self _shouldThrottleForAccount:accountCopy environment:environmentCopy currentTimestamp:?];

  return self;
}

+ (BOOL)_shouldThrottleForAccount:(id)account environment:(id)environment currentTimestamp:(double)timestamp
{
  environmentCopy = environment;
  accountCopy = account;
  ams_pushRegistrationThrottleMap = [accountCopy ams_pushRegistrationThrottleMap];
  ams_DSID = [accountCopy ams_DSID];

  environmentCopy = [NSString stringWithFormat:@"bundle-%@-%@", ams_DSID, environmentCopy];

  v12 = [ams_pushRegistrationThrottleMap objectForKeyedSubscript:environmentCopy];
  [v12 doubleValue];
  v14 = timestamp - v13 < 3600.0;

  return v14;
}

- (void)_updateCachedCriteriaWithToken:(id)token
{
  tokenCopy = token;
  account = [(AMSDBundlePushRegisterTask *)self account];
  ams_registerSuccessCriteria = [account ams_registerSuccessCriteria];
  v7 = [ams_registerSuccessCriteria mutableCopy];
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

  v10 = [objc_opt_class() _createCriteriaWithToken:tokenCopy];

  environment = [(AMSDBundlePushRegisterTask *)self environment];
  [v16 setObject:v10 forKeyedSubscript:environment];

  account2 = [(AMSDBundlePushRegisterTask *)self account];
  [account2 ams_setRegisterSuccessCriteria:v16];

  v13 = +[ACAccountStore ams_sharedAccountStore];
  account3 = [(AMSDBundlePushRegisterTask *)self account];
  v15 = [v13 ams_saveAccount:account3];
}

+ (void)_updateThrottleForAccount:(id)account environment:(id)environment
{
  environmentCopy = environment;
  accountCopy = account;
  +[NSDate timeIntervalSinceReferenceDate];
  v8 = [NSNumber numberWithDouble:?];
  [self _updateThrottleForAccount:accountCopy environment:environmentCopy throttleTime:v8];
}

+ (void)_updateThrottleForAccount:(id)account environment:(id)environment throttleTime:(id)time
{
  accountCopy = account;
  timeCopy = time;
  environmentCopy = environment;
  ams_pushRegistrationThrottleMap = [accountCopy ams_pushRegistrationThrottleMap];
  v10 = [ams_pushRegistrationThrottleMap mutableCopy];
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

  ams_DSID = [accountCopy ams_DSID];
  environmentCopy = [NSString stringWithFormat:@"bundle-%@-%@", ams_DSID, environmentCopy];

  [v13 setObject:timeCopy forKeyedSubscript:environmentCopy];
  v16 = [v13 copy];
  [accountCopy ams_setPushRegistrationThrottleMap:v16];

  v17 = +[ACAccountStore ams_sharedAccountStore];
  v18 = [v17 ams_saveAccount:accountCopy];

  [AMSStorage amsd_setPushRegistrationThrottleMap:0];
}

@end