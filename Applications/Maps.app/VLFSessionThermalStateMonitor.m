@interface VLFSessionThermalStateMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (VLFSessionThermalStateMonitor)initWithObserver:(id)a3;
- (id)debugDescription;
- (void)processInfoThermalStateDidChangeNotification:(id)a3;
- (void)updateState;
@end

@implementation VLFSessionThermalStateMonitor

- (void)processInfoThermalStateDidChangeNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AC53BC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
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
  v10 = +[NSProcessInfo processInfo];
  v11 = [v10 thermalState];
  v12 = [(VLFSessionMonitor *)self state];
  v13 = @"Hide";
  if (v12 == 1)
  {
    v13 = @"EnablePuck";
  }

  if (v12 == 2)
  {
    v13 = @"EnablePuckAndBanner";
  }

  v14 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentValue: %ld, currentState: %@>", v3, v5, v7, v9, v11, v13];

  return v14;
}

- (void)updateState
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 thermalState];

  if (v4 >= 3)
  {
    if (v4 != 3)
    {
      return;
    }

    v5 = sub_100AC56DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = +[NSProcessInfo processInfo];
      v10 = [v9 thermalState];
      if ((v10 - 1) > 2)
      {
        v11 = @"Nominal";
      }

      else
      {
        v11 = *(&off_101651C90 + (v10 - 1));
      }

      v14 = v11;
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Detected thermal state is too high (%@); updating state", &v15, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v5 = sub_100AC56DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[NSProcessInfo processInfo];
      v7 = [v6 thermalState];
      if ((v7 - 1) > 2)
      {
        v8 = @"Nominal";
      }

      else
      {
        v8 = *(&off_101651C90 + (v7 - 1));
      }

      v12 = v8;
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Detected thermal state is sufficiently low (%@); updating state", &v15, 0xCu);
    }

    v13 = 2;
  }

  [(VLFSessionMonitor *)self setState:v13];
}

- (VLFSessionThermalStateMonitor)initWithObserver:(id)a3
{
  v6.receiver = self;
  v6.super_class = VLFSessionThermalStateMonitor;
  v3 = [(VLFSessionMonitor *)&v6 initWithObserver:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"processInfoThermalStateDidChangeNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

    [(VLFSessionThermalStateMonitor *)v3 updateState];
  }

  return v3;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionThermalStateMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionThermalStateMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end