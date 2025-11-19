@interface AMSDAccountPostSignInService
+ (BOOL)isConnectionEntitled:(id)a3;
- (void)performAccountPostSignInTasksForAccountWithID:(id)a3 credentialSource:(unint64_t)a4;
@end

@implementation AMSDAccountPostSignInService

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (void)performAccountPostSignInTasksForAccountWithID:(id)a3 credentialSource:(unint64_t)a4
{
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v11 = [NSNumber numberWithUnsignedInteger:a4];
    *buf = 138544130;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing post sign-in type %{public}@ tasks in amsaccountsd for: %{public}@", buf, 0x2Au);
  }

  if (a4 == 2)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Loud auth completed, run sign-in tasks for accountID = %{public}@", buf, 0x20u);
    }

    v17 = [[AMSEngagement alloc] initWithoutBag];
    v18 = [v17 fetchMetricsIdentifiers];
  }

  v19 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004038C;
  v23[3] = &unk_1002AFF50;
  v23[4] = self;
  v24 = v6;
  v20 = v6;
  [v19 accountAuthSyncFor:v20 isLoudAuth:a4 == 2 completionHandler:v23];

  v21 = +[_TtC12amsaccountsd17TSDataSyncService sharedService];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000404B8;
  v22[3] = &unk_1002AFDD8;
  v22[4] = self;
  [v21 handleAccountSignInAmsAccountID:v20 completionHandler:v22];
}

@end