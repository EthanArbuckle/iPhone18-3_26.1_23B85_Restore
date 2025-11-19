@interface VIOSessionPowerStateMonitor
- (BOOL)isLowPowerModeEnabled;
- (VIOSessionPowerStateMonitor)initWithStateManager:(id)a3 platformController:(id)a4;
- (void)dealloc;
- (void)reportStateToStateManager;
@end

@implementation VIOSessionPowerStateMonitor

- (void)reportStateToStateManager
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100A1FFEC;
  v2[3] = &unk_101661B98;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (BOOL)isLowPowerModeEnabled
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3;
}

- (void)dealloc
{
  v3 = sub_100A20194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = VIOSessionPowerStateMonitor;
  [(VIOSessionPowerStateMonitor *)&v6 dealloc];
}

- (VIOSessionPowerStateMonitor)initWithStateManager:(id)a3 platformController:(id)a4
{
  v10.receiver = self;
  v10.super_class = VIOSessionPowerStateMonitor;
  v4 = [(VIOSessionMonitor *)&v10 initWithStateManager:a3 platformController:a4];
  if (v4)
  {
    v5 = sub_100A20194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 134349314;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v4 selector:"powerStateDidChangeNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    [(VIOSessionPowerStateMonitor *)v4 reportStateToStateManager];
  }

  return v4;
}

@end