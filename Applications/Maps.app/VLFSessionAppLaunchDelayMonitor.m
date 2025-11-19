@interface VLFSessionAppLaunchDelayMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (VLFSessionAppLaunchDelayMonitor)initWithObserver:(id)a3;
- (id)debugDescription;
- (void)_startTimer;
- (void)applicationDidBecomeActiveNotification:(id)a3;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
@end

@implementation VLFSessionAppLaunchDelayMonitor

- (void)applicationDidBecomeActiveNotification:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VLFSessionAppLaunchDelayMonitor applicationDidBecomeActiveNotification:]";
        v14 = 2080;
        v15 = "VLFSessionAppLaunchDelayMonitor.m";
        v16 = 1024;
        v17 = 126;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  v8 = sub_10007645C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "App foregrounded; starting timer", &v12, 2u);
  }

  [(VLFSessionAppLaunchDelayMonitor *)self setIsInBackground:0];
  [(VLFSessionAppLaunchDelayMonitor *)self _startTimer];
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VLFSessionAppLaunchDelayMonitor applicationDidEnterBackgroundNotification:]";
        v14 = 2080;
        v15 = "VLFSessionAppLaunchDelayMonitor.m";
        v16 = 1024;
        v17 = 115;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  v8 = sub_10007645C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "App backgrounded; updating state", &v12, 2u);
  }

  [(VLFSessionAppLaunchDelayMonitor *)self setIsInBackground:1];
  [(VLFSessionAppLaunchDelayMonitor *)self setTimeoutTimer:0];
  [(VLFSessionMonitor *)self setState:0];
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  if ([objc_opt_class() isEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  v10 = [(VLFSessionMonitor *)self state];
  v11 = @"Hide";
  if (v10 == 1)
  {
    v11 = @"EnablePuck";
  }

  if (v10 == 2)
  {
    v12 = @"EnablePuckAndBanner";
  }

  else
  {
    v12 = v11;
  }

  GEOConfigGetDouble();
  v14 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@, timeout: %f>", v3, v5, v7, v9, v12, v13];

  return v14;
}

- (void)_startTimer
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v19 = "[VLFSessionAppLaunchDelayMonitor _startTimer]";
        v20 = 2080;
        v21 = "VLFSessionAppLaunchDelayMonitor.m";
        v22 = 1024;
        v23 = 56;
        v24 = 2080;
        v25 = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v6 = [(VLFSessionAppLaunchDelayMonitor *)self timeoutTimer];
  v7 = v6 == 0;

  if (v7)
  {
    GEOConfigGetDouble();
    v10 = v9;
    v11 = sub_10007645C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = *&v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Delaying VLF with timeout: %f", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100978E20;
    v16[3] = &unk_1016616E8;
    objc_copyWeak(&v17, buf);
    v12 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v16 block:v10];
    [(VLFSessionAppLaunchDelayMonitor *)self setTimeoutTimer:v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = sub_10007645C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Already delaying VLF; ignoring", buf, 2u);
    }
  }
}

- (VLFSessionAppLaunchDelayMonitor)initWithObserver:(id)a3
{
  v8.receiver = self;
  v8.super_class = VLFSessionAppLaunchDelayMonitor;
  v3 = [(VLFSessionMonitor *)&v8 initWithObserver:a3];
  v4 = v3;
  if (v3)
  {
    [(VLFSessionAppLaunchDelayMonitor *)v3 _startTimer];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"applicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  return v4;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionAppLaunchDelayMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionAppLaunchDelayMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end