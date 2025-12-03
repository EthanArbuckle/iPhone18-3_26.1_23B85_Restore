@interface DaemonRunLoop
- (BOOL)performStartupWithError:(id *)error;
- (void)_handleDeviceLanguageChangeNotification;
- (void)_setupLanguageChangeObserver;
@end

@implementation DaemonRunLoop

- (BOOL)performStartupWithError:(id *)error
{
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v16 = objc_opt_class();
    v17 = 2080;
    v18 = "Oct 11 2025";
    v19 = 2080;
    v20 = "02:11:40";
    v7 = v16;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting askpermissiond (%s - %s)", buf, 0x20u);
  }

  [(DaemonRunLoop *)self _setupLanguageChangeObserver];
  v8 = objc_alloc_init(DaemonStartupTask);
  perform = [(DaemonStartupTask *)v8 perform];
  v14 = 0;
  v10 = [perform resultWithError:&v14];
  v11 = v14;

  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  return v10;
}

- (void)_setupLanguageChangeObserver
{
  v3 = dispatch_get_global_queue(17, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100012148;
  handler[3] = &unk_100055230;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v3, handler);
}

- (void)_handleDeviceLanguageChangeNotification
{
  v2 = +[APLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v13 = 138543618;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] <<< Language preferences changed - Clearing request cache >>>", &v13, 0x16u);
  }

  v6 = +[ApproverStore sharedStore];
  [v6 clearRequests];

  v7 = +[RequesterStore sharedStore];
  [v7 clearRequests];

  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] <<< Language preferences changed - Exiting Daemon >>>", &v13, 0x16u);
  }

  Main = CFRunLoopGetMain();
  CFRunLoopStop(Main);
}

@end