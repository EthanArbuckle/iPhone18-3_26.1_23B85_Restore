@interface VIOSessionSunsetSunriseMonitor
- (BOOL)isCurrentlyNightTime;
- (VIOSessionSunsetSunriseMonitor)initWithStateManager:(id)manager platformController:(id)controller;
- (void)dealloc;
- (void)reportStateToStateManager;
@end

@implementation VIOSessionSunsetSunriseMonitor

- (void)reportStateToStateManager
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VIOSessionSunsetSunriseMonitor reportStateToStateManager]";
        v14 = 2080;
        v15 = "VIOSessionSunsetSunriseMonitor.m";
        v16 = 1024;
        v17 = 106;
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

  shouldDisableVIOSession = [(VIOSessionSunsetSunriseMonitor *)self shouldDisableVIOSession];
  stateManager = [(VIOSessionMonitor *)self stateManager];
  v8 = stateManager;
  if (shouldDisableVIOSession)
  {
    [stateManager recordSessionDisableEvent:3];
  }

  else
  {
    [stateManager resetSessionDisableEvent:3];
  }
}

- (BOOL)isCurrentlyNightTime
{
  v3 = +[MKLocationManager sharedLocationManager];
  if (![v3 hasLocation])
  {
    v12 = sub_100A42C08();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_14:
      LOBYTE(v9) = 0;
      goto LABEL_15;
    }

    v21 = 134349056;
    selfCopy7 = self;
    v14 = "[%{public}p] LocationManager doesn't have a last location; not disabling VIO session.";
    goto LABEL_12;
  }

  GEOConfigGetDouble();
  v5 = v4;
  v6 = sub_100A42C08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    lastLocation = [v3 lastLocation];
    v8 = +[NSDate date];
    v21 = 134349827;
    selfCopy7 = self;
    v23 = 2113;
    v24 = lastLocation;
    v25 = 2112;
    v26 = v8;
    v27 = 2048;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] LocationManager has a last location: %{private}@; calculating sunset/sunrise times with current date: %@, and offset threshold: %f", &v21, 0x2Au);
  }

  v9 = +[SunsetSunriseCalculator sharedCalculator];
  lastLocation2 = [v3 lastLocation];
  v11 = [v9 currentStateForLocation:lastLocation2 offsetThreshold:v5];

  if (v11 <= 1)
  {
    if (!v11)
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315650;
        selfCopy7 = "[VIOSessionSunsetSunriseMonitor isCurrentlyNightTime]";
        v23 = 2080;
        v24 = "VIOSessionSunsetSunriseMonitor.m";
        v25 = 1024;
        LODWORD(v26) = 93;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v21, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v19 = sub_10006D178();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = +[NSThread callStackSymbols];
          v21 = 138412290;
          selfCopy7 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
        }
      }

      v12 = sub_100A42C08();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v21 = 134349056;
      selfCopy7 = self;
      v14 = "[%{public}p] Unknown sunset/sunrise state; not disabling VIO session";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    if (v11 != 1)
    {
      goto LABEL_16;
    }

    v12 = sub_100A42C08();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v21 = 134349056;
    selfCopy7 = self;
    v14 = "[%{public}p] Not disabling VIO session because it's currently day time";
LABEL_12:
    v15 = v12;
    v16 = OS_LOG_TYPE_INFO;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v15, v16, v14, &v21, 0xCu);
    goto LABEL_14;
  }

  switch(v11)
  {
    case 2:
      v12 = sub_100A42C08();
      LOBYTE(v9) = 1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v21 = 134349056;
        selfCopy7 = self;
        v13 = "[%{public}p] Disabling VIO session because we're shortly before sunset";
        goto LABEL_25;
      }

LABEL_15:

      break;
    case 3:
      v12 = sub_100A42C08();
      LOBYTE(v9) = 1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v21 = 134349056;
        selfCopy7 = self;
        v13 = "[%{public}p] Disabling VIO session because we're between sunset and sunrise";
        goto LABEL_25;
      }

      goto LABEL_15;
    case 4:
      v12 = sub_100A42C08();
      LOBYTE(v9) = 1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v21 = 134349056;
        selfCopy7 = self;
        v13 = "[%{public}p] Disabling VIO session because we're shortly after sunrise";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, &v21, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
  }

LABEL_16:

  return v9 & 1;
}

- (void)dealloc
{
  v3 = sub_100A42C08();
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
  v6.super_class = VIOSessionSunsetSunriseMonitor;
  [(VIOSessionSunsetSunriseMonitor *)&v6 dealloc];
}

- (VIOSessionSunsetSunriseMonitor)initWithStateManager:(id)manager platformController:(id)controller
{
  v9.receiver = self;
  v9.super_class = VIOSessionSunsetSunriseMonitor;
  v4 = [(VIOSessionMonitor *)&v9 initWithStateManager:manager platformController:controller];
  if (v4)
  {
    v5 = sub_100A42C08();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 134349314;
      v11 = v4;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    v4->_wasNightTimeAtStartOfSession = [(VIOSessionSunsetSunriseMonitor *)v4 isCurrentlyNightTime];
    [(VIOSessionSunsetSunriseMonitor *)v4 reportStateToStateManager];
  }

  return v4;
}

@end