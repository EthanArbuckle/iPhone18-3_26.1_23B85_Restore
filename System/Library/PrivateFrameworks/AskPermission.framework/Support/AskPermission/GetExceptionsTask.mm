@interface GetExceptionsTask
- (GetExceptionsTask)initWithBundleIdentifier:(id)a3;
- (GetExceptionsTask)initWithDistributorID:(id)a3;
- (id)perform;
@end

@implementation GetExceptionsTask

- (GetExceptionsTask)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GetExceptionsTask;
  v6 = [(GetExceptionsTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v7;
}

- (GetExceptionsTask)initWithDistributorID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GetExceptionsTask;
  v6 = [(GetExceptionsTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distributorID, a3);
  }

  return v7;
}

- (id)perform
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching active iCloud account, so we can check existing ST Exceptions", buf, 0xCu);
  }

  v7 = +[ACAccountStore ams_sharedAccountStore];
  v8 = [v7 ams_fetchActiveiCloudAccount];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100026A54;
  v13[3] = &unk_100054D20;
  v13[4] = self;
  v9 = v3;
  v14 = v9;
  [v8 addFinishBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

@end