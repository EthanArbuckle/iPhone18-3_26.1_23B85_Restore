@interface MetricsCoordinator
- (MetricsCoordinator)init;
- (void)_handleAppleIDDidChangeNotification:(id)notification;
@end

@implementation MetricsCoordinator

- (MetricsCoordinator)init
{
  v31.receiver = self;
  v31.super_class = MetricsCoordinator;
  v2 = [(MetricsCoordinator *)&v31 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9appstored6LogKey);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.appstored.MetricsCoordinator.dispatch", v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v7 ams_activeiTunesAccount];

    if (ams_activeiTunesAccount)
    {
      v9 = +[ACAccountStore ams_sharedAccountStore];
      ams_activeiTunesAccount2 = [v9 ams_activeiTunesAccount];
      ams_DSID = [ams_activeiTunesAccount2 ams_DSID];
      activeAccountID = v2->_activeAccountID;
      v2->_activeAccountID = ams_DSID;
    }

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_handleAppleIDDidChangeNotification:" name:@"com.apple.appstored.ASDItunesAccountDidChangeNotification" object:0];

    v14 = [NSDate alloc];
    v15 = +[NSProcessInfo processInfo];
    [v15 systemUptime];
    v17 = [v14 initWithTimeIntervalSinceNow:-v16];
    systemUpDate = v2->_systemUpDate;
    v2->_systemUpDate = v17;

    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = v2->_systemUpDate;
      v22 = v20;
      if (v21)
      {
        [(NSDate *)v21 timeIntervalSince1970];
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      *buf = 138543874;
      v33 = v20;
      v34 = 2112;
      v35 = v3;
      v36 = 2048;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Metrics coordinator started with system up date %{time_t}ld", buf, 0x20u);
    }

    v25 = v2->_dispatchQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1002B51F0;
    v28[3] = &unk_10051B570;
    v29 = v2;
    v30 = v3;
    v26 = v3;
    dispatch_async(v25, v28);
  }

  return v2;
}

- (void)_handleAppleIDDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002B9914;
  v7[3] = &unk_10051B570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

@end