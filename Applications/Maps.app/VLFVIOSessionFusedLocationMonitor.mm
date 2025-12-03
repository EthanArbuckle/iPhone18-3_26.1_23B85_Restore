@interface VLFVIOSessionFusedLocationMonitor
- (BOOL)shouldDisableVIOSession;
- (NSString)description;
- (VLFVIOSessionFusedLocationMonitor)initWithStateManager:(id)manager platformController:(id)controller;
- (void)dealloc;
- (void)locationManager:(id)manager didUpdateLocation:(id)location;
- (void)session:(id)session didChangeState:(unint64_t)state;
@end

@implementation VLFVIOSessionFusedLocationMonitor

- (void)locationManager:(id)manager didUpdateLocation:(id)location
{
  managerCopy = manager;
  locationCopy = location;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 136316418;
        selfCopy2 = "[VLFVIOSessionFusedLocationMonitor locationManager:didUpdateLocation:]";
        v21 = 2080;
        v22 = "VLFVIOSessionFusedLocationMonitor.m";
        v23 = 1024;
        v24 = 108;
        v25 = 2080;
        v26 = "dispatch_get_main_queue()";
        v27 = 2080;
        v28 = dispatch_queue_get_label(&_dispatch_main_q);
        v29 = 2080;
        v30 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v19, 0x3Au);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          v19 = 138412290;
          selfCopy2 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
        }
      }
    }
  }

  v11 = sub_100EAEF14();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134349315;
    selfCopy2 = self;
    v21 = 2113;
    v22 = locationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Got location update: %{private}@", &v19, 0x16u);
  }

  if (([locationCopy isCoordinateFused] & 1) == 0)
  {
    v12 = sub_100EAEF14();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Location update is no longer fused; disabling VIO session", &v19, 0xCu);
    }

    stateManager = [(VIOSessionMonitor *)self stateManager];
    [stateManager recordSessionDisableEvent:7];

    session = [(VIOSessionMonitor *)self session];
    [session _removeObserver:self];

    v15 = +[VLFLocationManager sharedLocationManager];
    [v15 removeObserver:self];
  }
}

- (void)session:(id)session didChangeState:(unint64_t)state
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100EAF054;
  block[3] = &unk_10165FBC0;
  objc_copyWeak(v6, &location);
  v6[1] = state;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (BOOL)shouldDisableVIOSession
{
  v2 = +[VLFLocationManager sharedLocationManager];
  lastLocation = [v2 lastLocation];

  if (lastLocation)
  {
    v4 = [lastLocation isCoordinateFused] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[VLFLocationManager sharedLocationManager];
  lastLocation = [v5 lastLocation];
  isCoordinateFused = [lastLocation isCoordinateFused];
  v8 = @"NO";
  if (isCoordinateFused)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"<%@ %p isCoordinateFused: %@>", v4, self, v8];

  return v9;
}

- (void)dealloc
{
  v3 = sub_100EAEF14();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 134349314;
    selfCopy = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling %@", buf, 0x16u);
  }

  session = [(VIOSessionMonitor *)self session];
  [session _removeObserver:self];

  v7 = +[VLFLocationManager sharedLocationManager];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = VLFVIOSessionFusedLocationMonitor;
  [(VLFVIOSessionFusedLocationMonitor *)&v8 dealloc];
}

- (VLFVIOSessionFusedLocationMonitor)initWithStateManager:(id)manager platformController:(id)controller
{
  v23.receiver = self;
  v23.super_class = VLFVIOSessionFusedLocationMonitor;
  v4 = [(VIOSessionMonitor *)&v23 initWithStateManager:manager platformController:controller];
  if (v4)
  {
    v5 = sub_100EAEF14();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 134349314;
      v25 = v4;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    configuration = [(VIOSessionMonitor *)v4 configuration];
    isVLF = [configuration isVLF];

    if (!isVLF)
    {
      [(VIOSessionMonitor *)v4 setEnabled:0];
      v14 = sub_100EAEF14();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v16 = NSStringFromClass(v18);
        *buf = 134349314;
        v25 = v4;
        v26 = 2112;
        v27 = v16;
        v17 = "[%{public}p] %@ will not run because the session is not configured for VLF";
        goto LABEL_11;
      }

LABEL_15:

      return v4;
    }

    session = [(VIOSessionMonitor *)v4 session];
    configuration2 = [session configuration];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [v12 BOOLForKey:@"VLFSessionIgnoreFusedLocationForReplayKey"];

      if (v13)
      {
        [(VIOSessionMonitor *)v4 setEnabled:0];
        v14 = sub_100EAEF14();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          *buf = 134349314;
          v25 = v4;
          v26 = 2112;
          v27 = v16;
          v17 = "[%{public}p] %@ will not run because VLF was run from an ARKit recording, so the fused flag will not be set";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v17, buf, 0x16u);

          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    session2 = [(VIOSessionMonitor *)v4 session];
    [session2 _addObserver:v4];

    session3 = [(VIOSessionMonitor *)v4 session];
    state = [session3 state];

    if (state == 1)
    {
      v14 = +[VLFLocationManager sharedLocationManager];
      [v14 addObserver:v4];
      goto LABEL_15;
    }
  }

  return v4;
}

@end