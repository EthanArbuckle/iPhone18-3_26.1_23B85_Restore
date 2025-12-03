@interface AMSDPushRegisterTask
+ (BOOL)_shouldThrottleForAccount:(id)account environment:(id)environment;
+ (BOOL)_shouldThrottleForAccount:(id)account environment:(id)environment currentTimestamp:(double)timestamp;
+ (id)_createCriteriaWithToken:(id)token;
+ (id)shouldPerformForAccount:(id)account environment:(id)environment token:(id)token;
+ (void)_updateThrottleForAccount:(id)account environment:(id)environment;
+ (void)_updateThrottleForAccount:(id)account environment:(id)environment throttleTime:(id)time;
- (AMSDPushRegisterTask)initWithAccount:(id)account token:(id)token environment:(id)environment bag:(id)bag;
- (id)perform;
- (void)_updateCachedCriteriaWithToken:(id)token;
@end

@implementation AMSDPushRegisterTask

- (AMSDPushRegisterTask)initWithAccount:(id)account token:(id)token environment:(id)environment bag:(id)bag
{
  accountCopy = account;
  tokenCopy = token;
  environmentCopy = environment;
  bagCopy = bag;
  v22.receiver = self;
  v22.super_class = AMSDPushRegisterTask;
  v15 = [(AMSDPushRegisterTask *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    v17 = [tokenCopy copy];
    token = v16->_token;
    v16->_token = v17;

    v19 = [environmentCopy copy];
    environment = v16->_environment;
    v16->_environment = v19;

    objc_storeStrong(&v16->_bag, bag);
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
  binaryPromiseAdapter = [v2 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

+ (id)shouldPerformForAccount:(id)account environment:(id)environment token:(id)token
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@No account, environment or token to perform registration. Skipping registration. environment: %{public}@ | account: %{public}@ | token: %{public}@)", buf, 0x2Au);
    if (v18)
    {

      v21 = v28;
    }

    goto LABEL_24;
  }

  if (![accountCopy ams_isLocalAccount])
  {
    v22 = [AMSPushHandler accountIsEligibleForPushNotifications:accountCopy accountStore:0];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000815EC;
    v29[3] = &unk_1002B1ED0;
    selfCopy = self;
    v30 = accountCopy;
    v31 = environmentCopy;
    v32 = v11;
    v23 = [v22 thenWithBlock:v29];

    goto LABEL_26;
  }

  v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = AMSLogKey();
    v15 = objc_opt_class();
    v16 = v15;
    if (v14)
    {
      self = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v16, self];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v15];
    }
    selfCopy2 = ;
    v24 = AMSHashIfNeeded();
    *buf = 138543618;
    v35 = selfCopy2;
    v36 = 2114;
    v37 = v24;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Not posting token for the local account. (env: %{public}@)", buf, 0x16u);
    if (v14)
    {

      selfCopy2 = self;
    }

LABEL_24:
  }

LABEL_25:

  v23 = [AMSPromise promiseWithResult:&__kCFBooleanFalse];
LABEL_26:

  return v23;
}

+ (id)_createCriteriaWithToken:(id)token
{
  tokenCopy = token;
  v4 = +[AMSDevice deviceName];
  v5 = +[AMSDevice buildVersion];
  v6 = [tokenCopy base64EncodedStringWithOptions:0];

  v7 = [NSString stringWithFormat:@"<%@ %@; %@>", v4, v5, v6];;

  return v7;
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

  environmentCopy = [NSString stringWithFormat:@"%@-%@", ams_DSID, environmentCopy];

  v12 = [ams_pushRegistrationThrottleMap objectForKeyedSubscript:environmentCopy];
  [v12 doubleValue];
  v14 = timestamp - v13 < 3600.0;

  return v14;
}

- (void)_updateCachedCriteriaWithToken:(id)token
{
  tokenCopy = token;
  account = [(AMSDPushRegisterTask *)self account];
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

  environment = [(AMSDPushRegisterTask *)self environment];
  [v16 setObject:v10 forKeyedSubscript:environment];

  account2 = [(AMSDPushRegisterTask *)self account];
  [account2 ams_setRegisterSuccessCriteria:v16];

  v13 = +[ACAccountStore ams_sharedAccountStore];
  account3 = [(AMSDPushRegisterTask *)self account];
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
  environmentCopy = [NSString stringWithFormat:@"%@-%@", ams_DSID, environmentCopy];

  [v13 setObject:timeCopy forKeyedSubscript:environmentCopy];
  v16 = [v13 copy];
  [accountCopy ams_setPushRegistrationThrottleMap:v16];

  v17 = +[ACAccountStore ams_sharedAccountStore];
  v18 = [v17 ams_saveAccount:accountCopy];

  [AMSStorage amsd_setPushRegistrationThrottleMap:0];
}

@end