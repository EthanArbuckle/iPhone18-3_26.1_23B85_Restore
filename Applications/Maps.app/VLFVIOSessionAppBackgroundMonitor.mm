@interface VLFVIOSessionAppBackgroundMonitor
- (NSString)description;
- (VLFVIOSessionAppBackgroundMonitor)initWithStateManager:(id)a3 platformController:(id)a4;
- (void)applicationWillResignActiveNotification:(id)a3;
- (void)dealloc;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
@end

@implementation VLFVIOSessionAppBackgroundMonitor

- (void)applicationWillResignActiveNotification:(id)a3
{
  v4 = sub_100732E58();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] App backgrounded; disabling VIO", &v7, 0xCu);
  }

  v5 = [(VIOSessionMonitor *)self stateManager];
  [v5 recordSessionDisableEvent:10];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = sub_100732E58();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Navigation started; stop monitoring app background notification", &v11, 0xCu);
    }

    v9 = [(VIOSessionMonitor *)self platformController];
    [v9 unregisterObserver:self];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];

    [(VIOSessionMonitor *)self setEnabled:0];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(VIOSessionMonitor *)self isEnabled];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [NSString stringWithFormat:@"<%@ %p enabled: %@>", v4, self, v6];

  return v7;
}

- (void)dealloc
{
  v3 = sub_100732E58();
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
  v6.super_class = VLFVIOSessionAppBackgroundMonitor;
  [(VLFVIOSessionAppBackgroundMonitor *)&v6 dealloc];
}

- (VLFVIOSessionAppBackgroundMonitor)initWithStateManager:(id)a3 platformController:(id)a4
{
  v20.receiver = self;
  v20.super_class = VLFVIOSessionAppBackgroundMonitor;
  v4 = [(VIOSessionMonitor *)&v20 initWithStateManager:a3 platformController:a4];
  if (v4)
  {
    v5 = sub_100732E58();
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

    v8 = [(VIOSessionMonitor *)v4 configuration];
    v9 = [v8 isVLF];

    if (v9)
    {
      v10 = [(VIOSessionMonitor *)v4 platformController];
      v11 = [v10 currentSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v18 = [(VIOSessionMonitor *)v4 platformController];
        [v18 registerObserver:v4];

        v13 = +[NSNotificationCenter defaultCenter];
        [v13 addObserver:v4 selector:"applicationWillResignActiveNotification:" name:UIApplicationWillResignActiveNotification object:0];
        goto LABEL_12;
      }

      [(VIOSessionMonitor *)v4 setEnabled:0];
      v13 = sub_100732E58();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 134349314;
        v22 = v4;
        v23 = 2112;
        v24 = v15;
        v16 = "[%{public}p] %@ will not run because we are currently navigating";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v16, buf, 0x16u);
      }
    }

    else
    {
      [(VIOSessionMonitor *)v4 setEnabled:0];
      v13 = sub_100732E58();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v15 = NSStringFromClass(v17);
        *buf = 134349314;
        v22 = v4;
        v23 = 2112;
        v24 = v15;
        v16 = "[%{public}p] %@ will not run because the session is not configured for VLF";
        goto LABEL_10;
      }
    }

LABEL_12:
  }

  return v4;
}

@end