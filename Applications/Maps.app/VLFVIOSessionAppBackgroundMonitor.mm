@interface VLFVIOSessionAppBackgroundMonitor
- (NSString)description;
- (VLFVIOSessionAppBackgroundMonitor)initWithStateManager:(id)manager platformController:(id)controller;
- (void)applicationWillResignActiveNotification:(id)notification;
- (void)dealloc;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
@end

@implementation VLFVIOSessionAppBackgroundMonitor

- (void)applicationWillResignActiveNotification:(id)notification
{
  v4 = sub_100732E58();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] App backgrounded; disabling VIO", &v7, 0xCu);
  }

  stateManager = [(VIOSessionMonitor *)self stateManager];
  [stateManager recordSessionDisableEvent:10];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = sub_100732E58();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Navigation started; stop monitoring app background notification", &v11, 0xCu);
    }

    platformController = [(VIOSessionMonitor *)self platformController];
    [platformController unregisterObserver:self];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];

    [(VIOSessionMonitor *)self setEnabled:0];
  }
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
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling %@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = VLFVIOSessionAppBackgroundMonitor;
  [(VLFVIOSessionAppBackgroundMonitor *)&v6 dealloc];
}

- (VLFVIOSessionAppBackgroundMonitor)initWithStateManager:(id)manager platformController:(id)controller
{
  v20.receiver = self;
  v20.super_class = VLFVIOSessionAppBackgroundMonitor;
  v4 = [(VIOSessionMonitor *)&v20 initWithStateManager:manager platformController:controller];
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