@interface VLFVIOSessionTimeoutMonitor
- (NSString)description;
- (VLFVIOSessionTimeoutMonitor)initWithStateManager:(id)manager platformController:(id)controller;
- (void)_startTimeoutTimer;
- (void)dealloc;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
@end

@implementation VLFVIOSessionTimeoutMonitor

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = sub_100F3403C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Navigation started; stopping timeout timer", &v10, 0xCu);
    }

    platformController = [(VIOSessionMonitor *)self platformController];
    [platformController unregisterObserver:self];

    [(VLFVIOSessionTimeoutMonitor *)self setTimeoutTimer:0];
    [(VIOSessionMonitor *)self setEnabled:0];
  }
}

- (void)_startTimeoutTimer
{
  GEOConfigGetDouble();
  v4 = v3;
  objc_initWeak(&location, self);
  v5 = sub_100F3403C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy = self;
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Starting timeout timer with time interval: %f", buf, 0x16u);
  }

  v6 = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100F34288;
  v11 = &unk_1016616E8;
  objc_copyWeak(&v12, &location);
  v7 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v8 block:v4];
  [(VLFVIOSessionTimeoutMonitor *)self setTimeoutTimer:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  isEnabled = [(VIOSessionMonitor *)self isEnabled];
  v6 = @"NO";
  if (isEnabled)
  {
    v6 = @"YES";
  }

  v7 = v6;
  GEOConfigGetDouble();
  v9 = [NSString stringWithFormat:@"<%@ %p enabled: %@, timeout: %f>", v4, self, v7, v8];

  return v9;
}

- (void)dealloc
{
  v3 = sub_100F3403C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 134349314;
    selfCopy = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling %@", buf, 0x16u);
  }

  platformController = [(VIOSessionMonitor *)self platformController];
  [platformController unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = VLFVIOSessionTimeoutMonitor;
  [(VLFVIOSessionTimeoutMonitor *)&v7 dealloc];
}

- (VLFVIOSessionTimeoutMonitor)initWithStateManager:(id)manager platformController:(id)controller
{
  v20.receiver = self;
  v20.super_class = VLFVIOSessionTimeoutMonitor;
  v4 = [(VIOSessionMonitor *)&v20 initWithStateManager:manager platformController:controller];
  if (v4)
  {
    v5 = sub_100F3403C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 134349314;
      v22 = v4;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    configuration = [(VIOSessionMonitor *)v4 configuration];
    isVLF = [configuration isVLF];

    if (isVLF)
    {
      platformController = [(VIOSessionMonitor *)v4 platformController];
      currentSession = [platformController currentSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        platformController2 = [(VIOSessionMonitor *)v4 platformController];
        [platformController2 registerObserver:v4];

        [(VLFVIOSessionTimeoutMonitor *)v4 _startTimeoutTimer];
        return v4;
      }

      [(VIOSessionMonitor *)v4 setEnabled:0];
      v13 = sub_100F3403C();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 134349314;
      v22 = v4;
      v23 = 2112;
      v24 = v15;
      v16 = "[%{public}p] %@ will not run because we are currently navigating";
    }

    else
    {
      [(VIOSessionMonitor *)v4 setEnabled:0];
      v13 = sub_100F3403C();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
LABEL_11:

        return v4;
      }

      v17 = objc_opt_class();
      v15 = NSStringFromClass(v17);
      *buf = 134349314;
      v22 = v4;
      v23 = 2112;
      v24 = v15;
      v16 = "[%{public}p] %@ will not run because the session is not configured for VLF";
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v16, buf, 0x16u);

    goto LABEL_11;
  }

  return v4;
}

@end