@interface PedestrianARSessionCoarseLocationMonitor
+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey;
- (PedestrianARSessionCoarseLocationMonitor)initWithObserver:(id)a3 locationManager:(id)a4;
- (id)debugDescription;
- (void)_startAuthorizationDelayTimer;
- (void)applicationDidBecomeActiveNotification:(id)a3;
- (void)applicationWillResignActiveNotification:(id)a3;
- (void)dealloc;
- (void)locationManagerApprovalDidChange:(id)a3;
- (void)updateState;
@end

@implementation PedestrianARSessionCoarseLocationMonitor

- (void)locationManagerApprovalDidChange:(id)a3
{
  [(PedestrianARSessionCoarseLocationMonitor *)self setAuthorizedDelayTimer:0];
  [(PedestrianARSessionCoarseLocationMonitor *)self setIsDelayingStateChange:0];
  if (-[PedestrianARSessionMonitor shouldShowPedestrianAR](self, "shouldShowPedestrianAR") || (-[PedestrianARSessionCoarseLocationMonitor locationManager](self, "locationManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isAuthorizedForPreciseLocation], v4, !v5))
  {
    v9 = sub_100076400();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 134349056;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Authorization changed; updating state", &v10, 0xCu);
    }

    [(PedestrianARSessionCoarseLocationMonitor *)self updateState];
  }

  else
  {
    v6 = [(PedestrianARSessionCoarseLocationMonitor *)self isInBackground];
    v7 = sub_100076400();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        v10 = 134349056;
        v11 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Detected change from not authorized to authorized but we're in the background, waiting to re-foreground", &v10, 0xCu);
      }

      [(PedestrianARSessionCoarseLocationMonitor *)self setIsDelayingStateChange:1];
    }

    else
    {
      if (v8)
      {
        v10 = 134349056;
        v11 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Detected change from not authorized to authorized while foregrounded", &v10, 0xCu);
      }

      [(PedestrianARSessionCoarseLocationMonitor *)self _startAuthorizationDelayTimer];
    }
  }
}

- (void)applicationDidBecomeActiveNotification:(id)a3
{
  v4 = sub_100076400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Detected app foreground", &v5, 0xCu);
  }

  [(PedestrianARSessionCoarseLocationMonitor *)self setIsInBackground:0];
  if ([(PedestrianARSessionCoarseLocationMonitor *)self isDelayingStateChange])
  {
    [(PedestrianARSessionCoarseLocationMonitor *)self setIsDelayingStateChange:0];
    [(PedestrianARSessionCoarseLocationMonitor *)self _startAuthorizationDelayTimer];
  }
}

- (void)applicationWillResignActiveNotification:(id)a3
{
  v4 = sub_100076400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Detected app background", &v5, 0xCu);
  }

  [(PedestrianARSessionCoarseLocationMonitor *)self setIsInBackground:1];
}

- (id)debugDescription
{
  v3 = [objc_opt_class() friendlyName];
  v4 = [(PedestrianARSessionCoarseLocationMonitor *)self locationManager];
  v5 = [v4 isAuthorizedForPreciseLocation];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [NSString stringWithFormat:@"%@\nauthorized for precise location: %@\n", v3, v6];

  return v7;
}

- (void)_startAuthorizationDelayTimer
{
  GEOConfigGetDouble();
  v4 = v3;
  v5 = sub_100076400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v11 = self;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Starting authorization delay timer for %f seconds before changing state", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10097C328;
  v8[3] = &unk_1016616E8;
  objc_copyWeak(&v9, buf);
  v7 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v8 block:v4];
  [(PedestrianARSessionCoarseLocationMonitor *)self setAuthorizedDelayTimer:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)updateState
{
  v3 = [(PedestrianARSessionCoarseLocationMonitor *)self locationManager];
  v4 = [v3 isAuthorizedForPreciseLocation];

  v5 = sub_100076400();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v8 = 134349056;
      v9 = self;
      v7 = "[%{public}p] Precise location authorization has been allowed; changing state";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v8, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = 134349056;
    v9 = self;
    v7 = "[%{public}p] Precise location authorization has been denied; changing state";
    goto LABEL_6;
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:v4];
}

- (void)dealloc
{
  v3 = sub_100076400();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocing", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARSessionCoarseLocationMonitor;
  [(PedestrianARSessionMonitor *)&v4 dealloc];
}

- (PedestrianARSessionCoarseLocationMonitor)initWithObserver:(id)a3 locationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = "[PedestrianARSessionCoarseLocationMonitor initWithObserver:locationManager:]";
      v20 = 2080;
      v21 = "PedestrianARSessionCoarseLocationMonitor.m";
      v22 = 1024;
      v23 = 36;
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
  v17.super_class = PedestrianARSessionCoarseLocationMonitor;
  v8 = [(PedestrianARSessionMonitor *)&v17 initWithObserver:v6];
  if (v8)
  {
    v9 = sub_100076400();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v8->_locationManager, a4);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v8 selector:"locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v8 selector:"applicationWillResignActiveNotification:" name:UIApplicationWillResignActiveNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v8 selector:"applicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];

    [(PedestrianARSessionCoarseLocationMonitor *)v8 updateState];
  }

  return v8;
}

+ ($6E15C01CA1BE37A4936191A84F7075E2)enablementGEOConfigKey
{
  v2 = &unk_101640410;
  v3 = 370;
  result.var0.var1 = v2;
  *&result.var0.var0 = v3;
  return result;
}

@end