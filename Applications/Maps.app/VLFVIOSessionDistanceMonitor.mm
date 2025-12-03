@interface VLFVIOSessionDistanceMonitor
- (BOOL)shouldDisableVIOSession;
- (NSString)description;
- (VLFVIOSessionDistanceMonitor)initWithStateManager:(id)manager platformController:(id)controller;
- (double)_distanceFromOrigin;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)session:(id)session didChangeState:(unint64_t)state;
@end

@implementation VLFVIOSessionDistanceMonitor

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = sub_1007D36F4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Navigation started; stop monitoring location updates", &v12, 0xCu);
    }

    platformController = [(VIOSessionMonitor *)self platformController];
    [platformController unregisterObserver:self];

    session = [(VIOSessionMonitor *)self session];
    [session _removeObserver:self];

    v11 = +[MKLocationManager sharedLocationManager];
    [v11 stopLocationUpdateWithObserver:self];

    [(VIOSessionMonitor *)self setEnabled:0];
  }
}

- (void)session:(id)session didChangeState:(unint64_t)state
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007D3834;
  block[3] = &unk_10165FBC0;
  objc_copyWeak(v6, &location);
  v6[1] = state;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = 136316418;
        selfCopy2 = "[VLFVIOSessionDistanceMonitor locationManagerUpdatedLocation:]";
        v24 = 2080;
        v25 = "VLFVIOSessionDistanceMonitor.m";
        v26 = 1024;
        *v27 = 123;
        *&v27[4] = 2080;
        *&v27[6] = "dispatch_get_main_queue()";
        v28 = 2080;
        v29 = dispatch_queue_get_label(&_dispatch_main_q);
        v30 = 2080;
        v31 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v22, 0x3Au);
      }

      if (sub_100E03634())
      {
        v20 = sub_10006D178();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = +[NSThread callStackSymbols];
          v22 = 138412290;
          selfCopy2 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", &v22, 0xCu);
        }
      }
    }
  }

  lastLocation = [locationCopy lastLocation];
  v9 = lastLocation;
  if (!lastLocation || ([lastLocation coordinate], !CLLocationCoordinate2DIsValid(v32)))
  {
    v18 = sub_1007D36F4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v22 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Location was nil or invalid; ignoring update", &v22, 0xCu);
    }

    goto LABEL_15;
  }

  GEOConfigGetDouble();
  v11 = v10;
  [(VLFVIOSessionDistanceMonitor *)self _distanceFromOrigin];
  if (v12 >= v11)
  {
    v13 = v12;
    v14 = sub_1007D36F4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v22 = 134349569;
      selfCopy2 = self;
      v24 = 2049;
      v25 = *&v13;
      v26 = 2049;
      *v27 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Distance traveled from origin (%{private}f) is larger than the threshold (%{private}f); disabling VIO session", &v22, 0x20u);
    }

    stateManager = [(VIOSessionMonitor *)self stateManager];
    [stateManager recordSessionDisableEvent:9];

    platformController = [(VIOSessionMonitor *)self platformController];
    [platformController unregisterObserver:self];

    session = [(VIOSessionMonitor *)self session];
    [session _removeObserver:self];

    v18 = +[MKLocationManager sharedLocationManager];
    [v18 stopLocationUpdateWithObserver:self];
LABEL_15:
  }
}

- (double)_distanceFromOrigin
{
  v3 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v3 lastLocation];

  vlfLocation = [(VLFVIOSessionDistanceMonitor *)self vlfLocation];
  [lastLocation coordinate];
  v7 = v6;
  v9 = v8;
  [vlfLocation coordinate];
  v25 = v10;
  v26 = v11;
  if (!lastLocation)
  {
    v20 = sub_1007D36F4();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 134349056;
    selfCopy5 = self;
    v21 = "[%{public}p] Current location is nil; ignoring";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);
    goto LABEL_16;
  }

  if (!vlfLocation)
  {
    v20 = sub_1007D36F4();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 134349056;
    selfCopy5 = self;
    v21 = "[%{public}p] Origin location is nil; ignoring";
    goto LABEL_15;
  }

  v12 = v10;
  v13 = v11;
  v33.latitude = v7;
  v33.longitude = v9;
  if (!CLLocationCoordinate2DIsValid(v33))
  {
    v20 = sub_1007D36F4();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 134349056;
    selfCopy5 = self;
    v21 = "[%{public}p] Current coordinate is invalid; ignoring";
    goto LABEL_15;
  }

  v34.latitude = v12;
  v34.longitude = v13;
  if (!CLLocationCoordinate2DIsValid(v34))
  {
    v20 = sub_1007D36F4();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      selfCopy5 = self;
      v21 = "[%{public}p] Origin coordinate is invalid; ignoring";
      goto LABEL_15;
    }

LABEL_16:

    v19 = 0.0;
    goto LABEL_17;
  }

  timestamp = [lastLocation timestamp];
  timestamp2 = [vlfLocation timestamp];
  [timestamp timeIntervalSinceDate:timestamp2];
  v17 = v16;

  if (v17 <= 0.0)
  {
    v20 = sub_1007D36F4();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      timestamp3 = [lastLocation timestamp];
      timestamp4 = [vlfLocation timestamp];
      *buf = 134349570;
      selfCopy5 = self;
      v29 = 2112;
      v30 = timestamp3;
      v31 = 2112;
      v32 = timestamp4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[%{public}p] Current location estimate (%@) was obtained before VLF fix occurred (%@); waiting for a location update before calculating true distance", buf, 0x20u);
    }

    goto LABEL_16;
  }

  CLLocationCoordinate2DGetDistanceFrom();
  v19 = v18;
LABEL_17:

  return v19;
}

- (BOOL)shouldDisableVIOSession
{
  [(VLFVIOSessionDistanceMonitor *)self _distanceFromOrigin];
  v3 = v2;
  GEOConfigGetDouble();
  return v3 >= v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  GEOConfigGetDouble();
  v6 = v5;
  [(VLFVIOSessionDistanceMonitor *)self _distanceFromOrigin];
  v8 = [NSString stringWithFormat:@"<%@ %p distanceThreshold: %f distanceFromOrigin: %f>", v4, self, v6, v7];

  return v8;
}

- (void)dealloc
{
  v3 = sub_1007D36F4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 134349314;
    selfCopy = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling %@", buf, 0x16u);
  }

  platformController = [(VIOSessionMonitor *)self platformController];
  [platformController unregisterObserver:self];

  session = [(VIOSessionMonitor *)self session];
  [session _removeObserver:self];

  v8 = +[MKLocationManager sharedLocationManager];
  [v8 stopLocationUpdateWithObserver:self];

  v9.receiver = self;
  v9.super_class = VLFVIOSessionDistanceMonitor;
  [(VLFVIOSessionDistanceMonitor *)&v9 dealloc];
}

- (VLFVIOSessionDistanceMonitor)initWithStateManager:(id)manager platformController:(id)controller
{
  v27.receiver = self;
  v27.super_class = VLFVIOSessionDistanceMonitor;
  v4 = [(VIOSessionMonitor *)&v27 initWithStateManager:manager platformController:controller];
  if (v4)
  {
    v5 = sub_1007D36F4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 134349314;
      v29 = v4;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    configuration = [(VIOSessionMonitor *)v4 configuration];
    isVLF = [configuration isVLF];

    if (!isVLF)
    {
      [(VIOSessionMonitor *)v4 setEnabled:0];
      v13 = sub_1007D36F4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v15 = NSStringFromClass(v17);
        *buf = 134349314;
        v29 = v4;
        v30 = 2112;
        v31 = v15;
        v16 = "[%{public}p] %@ will not run because the session is not configured for VLF";
        goto LABEL_10;
      }

LABEL_13:

      return v4;
    }

    platformController = [(VIOSessionMonitor *)v4 platformController];
    currentSession = [platformController currentSession];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(VIOSessionMonitor *)v4 setEnabled:0];
      v13 = sub_1007D36F4();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 134349314;
        v29 = v4;
        v30 = 2112;
        v31 = v15;
        v16 = "[%{public}p] %@ will not run because we are currently navigating";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v16, buf, 0x16u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    platformController2 = [(VIOSessionMonitor *)v4 platformController];
    [platformController2 registerObserver:v4];

    session = [(VIOSessionMonitor *)v4 session];
    [session _addObserver:v4];

    session2 = [(VIOSessionMonitor *)v4 session];
    technique = [session2 technique];
    vlfLocation = [technique vlfLocation];
    vlfLocation = v4->_vlfLocation;
    v4->_vlfLocation = vlfLocation;

    session3 = [(VIOSessionMonitor *)v4 session];
    state = [session3 state];

    if (state == 1)
    {
      v13 = +[MKLocationManager sharedLocationManager];
      [v13 startLocationUpdateWithObserver:v4];
      goto LABEL_13;
    }
  }

  return v4;
}

@end