@interface VLFSessionCoarseLocationMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (VLFSessionCoarseLocationMonitor)initWithObserver:(id)observer locationManager:(id)manager;
- (id)debugDescription;
- (void)_startAuthorizationDelayTimer;
- (void)applicationDidBecomeActiveNotification:(id)notification;
- (void)applicationWillResignActiveNotification:(id)notification;
- (void)locationManagerApprovalDidChange:(id)change;
- (void)updateStateForCurrentPreciseLocationAuthorizationStatus;
@end

@implementation VLFSessionCoarseLocationMonitor

- (void)locationManagerApprovalDidChange:(id)change
{
  [(VLFSessionCoarseLocationMonitor *)self setAuthorizedDelayTimer:0];
  [(VLFSessionCoarseLocationMonitor *)self setIsDelayingStateChange:0];
  if (-[VLFSessionMonitor state](self, "state") || (-[VLFSessionCoarseLocationMonitor locationManager](self, "locationManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isAuthorizedForPreciseLocation], v4, !v5))
  {
    v9 = sub_10006ABB4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Authorization changed; updating state", v10, 2u);
    }

    [(VLFSessionCoarseLocationMonitor *)self updateStateForCurrentPreciseLocationAuthorizationStatus];
  }

  else
  {
    isInBackground = [(VLFSessionCoarseLocationMonitor *)self isInBackground];
    v7 = sub_10006ABB4();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (isInBackground)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Detected change from not authorized to authorized but we're in the background, waiting to re-foreground", buf, 2u);
      }

      [(VLFSessionCoarseLocationMonitor *)self setIsDelayingStateChange:1];
    }

    else
    {
      if (v8)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Detected change from not authorized to authorized while foregrounded", v12, 2u);
      }

      [(VLFSessionCoarseLocationMonitor *)self _startAuthorizationDelayTimer];
    }
  }
}

- (void)applicationDidBecomeActiveNotification:(id)notification
{
  v4 = sub_10006ABB4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Detected app foreground", v5, 2u);
  }

  [(VLFSessionCoarseLocationMonitor *)self setIsInBackground:0];
  if ([(VLFSessionCoarseLocationMonitor *)self isDelayingStateChange])
  {
    [(VLFSessionCoarseLocationMonitor *)self setIsDelayingStateChange:0];
    [(VLFSessionCoarseLocationMonitor *)self _startAuthorizationDelayTimer];
  }
}

- (void)applicationWillResignActiveNotification:(id)notification
{
  v4 = sub_10006ABB4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Detected app background", v5, 2u);
  }

  [(VLFSessionCoarseLocationMonitor *)self setIsInBackground:1];
}

- (void)_startAuthorizationDelayTimer
{
  GEOConfigGetDouble();
  v4 = v3;
  v5 = sub_10006ABB4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting authorization delay timer for %f seconds before changing state", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D271C8;
  v8[3] = &unk_1016616E8;
  objc_copyWeak(&v9, buf);
  v7 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v8 block:v4];
  [(VLFSessionCoarseLocationMonitor *)self setAuthorizedDelayTimer:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
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
  if ([(MKLocationManager *)self->_locationManager isAuthorizedForPreciseLocation])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  state = [(VLFSessionMonitor *)self state];
  v13 = @"Hide";
  if (state == 1)
  {
    v13 = @"EnablePuck";
  }

  if (state == 2)
  {
    v13 = @"EnablePuckAndBanner";
  }

  v14 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentValue: %@, currentState: %@>", v3, v5, v7, v9, v11, v13];

  return v14;
}

- (void)updateStateForCurrentPreciseLocationAuthorizationStatus
{
  locationManager = [(VLFSessionCoarseLocationMonitor *)self locationManager];
  isAuthorizedForPreciseLocation = [locationManager isAuthorizedForPreciseLocation];

  v5 = sub_10006ABB4();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (isAuthorizedForPreciseLocation)
  {
    if (v6)
    {
      *buf = 0;
      v7 = 2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Precise location authorization has been allowed; changing state", buf, 2u);
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
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Precise location authorization has been denied; changing state", v8, 2u);
    }

    v7 = 0;
  }

  [(VLFSessionMonitor *)self setState:v7];
}

- (VLFSessionCoarseLocationMonitor)initWithObserver:(id)observer locationManager:(id)manager
{
  observerCopy = observer;
  managerCopy = manager;
  if (!managerCopy)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[VLFSessionCoarseLocationMonitor initWithObserver:locationManager:]";
      v20 = 2080;
      v21 = "VLFSessionCoarseLocationMonitor.m";
      v22 = 1024;
      v23 = 37;
      v24 = 2080;
      v25 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = VLFSessionCoarseLocationMonitor;
  v8 = [(VLFSessionMonitor *)&v17 initWithObserver:observerCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, manager);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v9 selector:"applicationWillResignActiveNotification:" name:UIApplicationWillResignActiveNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v9 selector:"applicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];

    [(VLFSessionCoarseLocationMonitor *)v9 updateStateForCurrentPreciseLocationAuthorizationStatus];
  }

  return v9;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionCoarseLocationMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionCoarseLocationMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end