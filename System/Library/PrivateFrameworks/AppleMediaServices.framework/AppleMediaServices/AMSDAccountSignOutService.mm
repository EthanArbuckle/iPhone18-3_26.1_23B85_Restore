@interface AMSDAccountSignOutService
+ (BOOL)isConnectionEntitled:(id)entitled;
- (void)performAccountSignOutTasksForAccountWithID:(id)d;
@end

@implementation AMSDAccountSignOutService

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

- (void)performAccountSignOutTasksForAccountWithID:(id)d
{
  dCopy = d;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543874;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = dCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing sign-out tasks in amsaccountsd for: %{public}@", buf, 0x20u);
  }

  v9 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100040880;
  v15[3] = &unk_1002AFF50;
  v15[4] = self;
  v10 = dCopy;
  v16 = v10;
  [v9 removeDataFor:v10 completionHandler:v15];

  v11 = +[_TtC12amsaccountsd17TSDataSyncService sharedService];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000409B0;
  v13[3] = &unk_1002AFF50;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 removeDataFor:v12 completionHandler:v13];
}

@end