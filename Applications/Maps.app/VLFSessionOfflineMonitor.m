@interface VLFSessionOfflineMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (VLFSessionOfflineMonitor)initWithObserver:(id)a3;
- (id)debugDescription;
- (void)updateState;
@end

@implementation VLFSessionOfflineMonitor

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
  v10 = +[MapsOfflineUIHelper sharedHelper];
  v11 = [v10 isUsingOfflineMaps];
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

  v14 = @"not offline";
  if (v11)
  {
    v14 = @"offline";
  }

  v15 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentValue: %@, currentState: %@>", v3, v5, v7, v9, v14, v13];

  return v15;
}

- (void)updateState
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v4 = [v3 isUsingOfflineMaps];

  if (qword_10195E0F8 != -1)
  {
    dispatch_once(&qword_10195E0F8, &stru_101631948);
  }

  v5 = qword_10195E0F0;
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Using offline mode; updating state", buf, 2u);
    }

    v7 = 0;
  }

  else if (v6)
  {
    *v8 = 0;
    v7 = 2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Not using offline mode; updating state", v8, 2u);
  }

  else
  {
    v7 = 2;
  }

  [(VLFSessionMonitor *)self setState:v7];
}

- (VLFSessionOfflineMonitor)initWithObserver:(id)a3
{
  v6.receiver = self;
  v6.super_class = VLFSessionOfflineMonitor;
  v3 = [(VLFSessionMonitor *)&v6 initWithObserver:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_usingOfflineDidChange:" name:@"UsingOfflineMapsStateChangedNotification" object:0];

    [(VLFSessionOfflineMonitor *)v3 updateState];
  }

  return v3;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionOfflineMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionOfflineMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end