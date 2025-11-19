@interface VLFSessionNetworkReachabilityMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (VLFSessionNetworkReachabilityMonitor)initWithObserver:(id)a3;
- (id)debugDescription;
- (void)dealloc;
- (void)updateState;
@end

@implementation VLFSessionNetworkReachabilityMonitor

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
  v10 = [(VLFSessionNetworkReachabilityMonitor *)self networkObserver];
  v11 = [v10 isNetworkReachable];
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

  v14 = @"No network";
  if (v11)
  {
    v14 = @"Has network";
  }

  v15 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentValue: %@, currentState: %@>", v3, v5, v7, v9, v14, v13];

  return v15;
}

- (void)updateState
{
  v3 = [(VLFSessionNetworkReachabilityMonitor *)self networkObserver];
  v4 = [v3 isNetworkReachable];

  if (qword_10195E0E8 != -1)
  {
    dispatch_once(&qword_10195E0E8, &stru_101631880);
  }

  v5 = qword_10195E0E0;
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      v7 = 2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Detected that network is reachable; updating state", buf, 2u);
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Detected that network is not reachable; updating state", v8, 2u);
    }

    v7 = 0;
  }

  [(VLFSessionMonitor *)self setState:v7];
}

- (void)dealloc
{
  [(GEONetworkObserver *)self->_networkObserver removeNetworkReachableObserver:self];
  v3.receiver = self;
  v3.super_class = VLFSessionNetworkReachabilityMonitor;
  [(VLFSessionNetworkReachabilityMonitor *)&v3 dealloc];
}

- (VLFSessionNetworkReachabilityMonitor)initWithObserver:(id)a3
{
  v7.receiver = self;
  v7.super_class = VLFSessionNetworkReachabilityMonitor;
  v3 = [(VLFSessionMonitor *)&v7 initWithObserver:a3];
  if (v3)
  {
    v4 = +[GEONetworkObserver sharedNetworkObserver];
    networkObserver = v3->_networkObserver;
    v3->_networkObserver = v4;

    [(GEONetworkObserver *)v3->_networkObserver addNetworkReachableObserver:v3 selector:"networkReachabilityChangedNotification:"];
    [(VLFSessionNetworkReachabilityMonitor *)v3 updateState];
  }

  return v3;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionNetworkReachabilityMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionNetworkReachabilityMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end