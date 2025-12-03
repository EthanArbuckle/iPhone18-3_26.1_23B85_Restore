@interface AMSDXPCActivityScheduler
- (void)removeActivity:(id)activity;
- (void)scheduleIfNeededActivity:(id)activity;
@end

@implementation AMSDXPCActivityScheduler

- (void)scheduleIfNeededActivity:(id)activity
{
  activityCopy = activity;
  activityIdentifier = [activityCopy activityIdentifier];
  uTF8String = [activityIdentifier UTF8String];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100093E78;
  v8[3] = &unk_1002B2880;
  v9 = activityCopy;
  selfCopy = self;
  v7 = activityCopy;
  xpc_activity_register(uTF8String, XPC_ACTIVITY_CHECK_IN, v8);
}

- (void)removeActivity:(id)activity
{
  activityCopy = activity;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = activityCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unregistering activity %{public}@", &v8, 0x20u);
  }

  xpc_activity_unregister([activityCopy UTF8String]);
}

@end