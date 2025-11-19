@interface AMSDXPCActivityScheduler
- (void)removeActivity:(id)a3;
- (void)scheduleIfNeededActivity:(id)a3;
@end

@implementation AMSDXPCActivityScheduler

- (void)scheduleIfNeededActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityIdentifier];
  v6 = [v5 UTF8String];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100093E78;
  v8[3] = &unk_1002B2880;
  v9 = v4;
  v10 = self;
  v7 = v4;
  xpc_activity_register(v6, XPC_ACTIVITY_CHECK_IN, v8);
}

- (void)removeActivity:(id)a3
{
  v3 = a3;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unregistering activity %{public}@", &v8, 0x20u);
  }

  xpc_activity_unregister([v3 UTF8String]);
}

@end