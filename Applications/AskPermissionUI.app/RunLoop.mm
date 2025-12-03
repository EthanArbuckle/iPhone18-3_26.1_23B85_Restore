@interface RunLoop
- (BOOL)performStartupWithError:(id *)error;
- (void)_run;
- (void)runUntilIdleExit;
@end

@implementation RunLoop

- (BOOL)performStartupWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)runUntilIdleExit
{
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v3, &stru_100018740);
  dispatch_resume(v3);
  v11 = 0;
  v4 = [(RunLoop *)self performStartupWithError:&v11];
  v5 = v11;
  v6 = v5;
  if (!v4 || v5)
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to startup daemon. Error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [(RunLoop *)self _run];
  }
}

- (void)_run
{
  v2 = objc_autoreleasePoolPush();
  if ((CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 0) - 1) >= 2)
  {
    do
    {
      objc_autoreleasePoolPop(v2);
      v2 = objc_autoreleasePoolPush();
    }

    while ((CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 0) - 1) > 1);
  }

  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping for idle-exit", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

@end