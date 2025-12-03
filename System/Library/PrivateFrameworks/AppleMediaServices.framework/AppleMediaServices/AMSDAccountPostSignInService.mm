@interface AMSDAccountPostSignInService
+ (BOOL)isConnectionEntitled:(id)entitled;
- (void)performAccountPostSignInTasksForAccountWithID:(id)d credentialSource:(unint64_t)source;
@end

@implementation AMSDAccountPostSignInService

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)performAccountPostSignInTasksForAccountWithID:(id)d credentialSource:(unint64_t)source
{
  dCopy = d;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = [NSNumber numberWithUnsignedInteger:source];
    *buf = 138544130;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2114;
    v32 = dCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing post sign-in type %{public}@ tasks in amsaccountsd for: %{public}@", buf, 0x2Au);
  }

  if (source == 2)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSHashIfNeeded();
      *buf = 138543874;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loud auth completed, run sign-in tasks for accountID = %{public}@", buf, 0x20u);
    }

    initWithoutBag = [[AMSEngagement alloc] initWithoutBag];
    fetchMetricsIdentifiers = [initWithoutBag fetchMetricsIdentifiers];
  }

  v19 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004038C;
  v23[3] = &unk_1002AFF50;
  v23[4] = self;
  v24 = dCopy;
  v20 = dCopy;
  [v19 accountAuthSyncFor:v20 isLoudAuth:source == 2 completionHandler:v23];

  v21 = +[_TtC12amsaccountsd17TSDataSyncService sharedService];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000404B8;
  v22[3] = &unk_1002AFDD8;
  v22[4] = self;
  [v21 handleAccountSignInAmsAccountID:v20 completionHandler:v22];
}

@end