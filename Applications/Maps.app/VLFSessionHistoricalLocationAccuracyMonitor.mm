@interface VLFSessionHistoricalLocationAccuracyMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSString)debugDescription;
- (VLFSessionHistoricalLocationAccuracyMonitor)initWithObserver:(id)observer locationManager:(id)manager;
- (void)_updateStateWithLocation:(id)location;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)location;
@end

@implementation VLFSessionHistoricalLocationAccuracyMonitor

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  v4 = sub_100071310();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "App backgrounded; clearing historical locations", v6, 2u);
  }

  historicalLocationAccuracies = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
  [historicalLocationAccuracies removeAllObjects];

  [(VLFSessionMonitor *)self setState:0];
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
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VLFSessionHistoricalLocationAccuracyMonitor locationManagerUpdatedLocation:]";
        v14 = 2080;
        v15 = "VLFSessionHistoricalLocationAccuracyMonitor.m";
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

  lastLocation = [locationCopy lastLocation];
  [(VLFSessionHistoricalLocationAccuracyMonitor *)self _updateStateWithLocation:lastLocation];
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v21 = NSStringFromClass(v3);
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
  state = [(VLFSessionMonitor *)self state];
  v11 = @"Hide";
  if (state == 1)
  {
    v11 = @"EnablePuck";
  }

  if (state == 2)
  {
    v12 = @"EnablePuckAndBanner";
  }

  else
  {
    v12 = v11;
  }

  historicalLocationAccuracies = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
  v14 = [historicalLocationAccuracies count];
  historicalLocationAccuracies2 = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
  v16 = [historicalLocationAccuracies2 length];
  historicalLocationAccuracies3 = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
  v18 = [historicalLocationAccuracies3 debugDescription];
  v19 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@, historicalLocationAccuraciesCount: %lu, historicalLocationAccuraciesRequired: %lu, historicalLocationAccuracies: %@>", v21, v5, v7, v9, v12, v14, v16, v18];

  return v19;
}

- (void)_updateStateWithLocation:(id)location
{
  locationCopy = location;
  historicalLocationAccuracies6 = sub_100071310();
  v6 = os_log_type_enabled(historicalLocationAccuracies6, OS_LOG_TYPE_DEBUG);
  if (!locationCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, historicalLocationAccuracies6, OS_LOG_TYPE_DEBUG, "Got nil location; ignoring", buf, 2u);
    }

    goto LABEL_23;
  }

  if (v6)
  {
    [locationCopy horizontalAccuracy];
    *buf = 134283521;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, historicalLocationAccuracies6, OS_LOG_TYPE_DEBUG, "Got location with horizontal accuracy: %{private}f", buf, 0xCu);
  }

  historicalLocationAccuracies = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
  [locationCopy horizontalAccuracy];
  v9 = [NSNumber numberWithDouble:?];
  [historicalLocationAccuracies push:v9];

  historicalLocationAccuracies2 = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
  v11 = [historicalLocationAccuracies2 count];
  historicalLocationAccuracies3 = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
  v13 = [historicalLocationAccuracies3 length];

  if (v11 < v13)
  {
    historicalLocationAccuracies6 = sub_100071310();
    if (os_log_type_enabled(historicalLocationAccuracies6, OS_LOG_TYPE_DEBUG))
    {
      historicalLocationAccuracies4 = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
      v15 = COERCE_DOUBLE([historicalLocationAccuracies4 count]);
      historicalLocationAccuracies5 = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
      v17 = COERCE_DOUBLE([historicalLocationAccuracies5 length]);
      *buf = 134218240;
      v35 = v15;
      v36 = 2048;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, historicalLocationAccuracies6, OS_LOG_TYPE_DEBUG, "Still waiting for more location updates; got %lu/%lu", buf, 0x16u);
    }

LABEL_23:

    goto LABEL_24;
  }

  GEOConfigGetDouble();
  v19 = v18;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  historicalLocationAccuracies6 = [(VLFSessionHistoricalLocationAccuracyMonitor *)self historicalLocationAccuracies];
  v20 = [historicalLocationAccuracies6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    while (2)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(historicalLocationAccuracies6);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        [v24 doubleValue];
        if (v25 < v19)
        {
          v27 = sub_100071310();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [v24 doubleValue];
            *buf = 134283777;
            v35 = v28;
            v36 = 2049;
            v37 = v19;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Found a historical location with less than the minimum required horizontal accuracy (%{private}f)|(%{private}f)", buf, 0x16u);
          }

          [(VLFSessionMonitor *)self setState:0];
          goto LABEL_23;
        }
      }

      v21 = [historicalLocationAccuracies6 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v26 = sub_100071310();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134283521;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "All historical locations satisfy the minimum required horizontal accuracy (%{private}f)", buf, 0xCu);
  }

  [(VLFSessionMonitor *)self setState:2];
LABEL_24:
}

- (void)dealloc
{
  [(MKLocationManager *)self->_locationManager stopListeningForLocationUpdates:self];
  v3.receiver = self;
  v3.super_class = VLFSessionHistoricalLocationAccuracyMonitor;
  [(VLFSessionHistoricalLocationAccuracyMonitor *)&v3 dealloc];
}

- (VLFSessionHistoricalLocationAccuracyMonitor)initWithObserver:(id)observer locationManager:(id)manager
{
  observerCopy = observer;
  managerCopy = manager;
  if (!observerCopy)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "[VLFSessionHistoricalLocationAccuracyMonitor initWithObserver:locationManager:]";
      v22 = 2080;
      v23 = "VLFSessionHistoricalLocationAccuracyMonitor.m";
      v24 = 1024;
      v25 = 37;
      v26 = 2080;
      v27 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!managerCopy)
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "[VLFSessionHistoricalLocationAccuracyMonitor initWithObserver:locationManager:]";
      v22 = 2080;
      v23 = "VLFSessionHistoricalLocationAccuracyMonitor.m";
      v24 = 1024;
      v25 = 38;
      v26 = 2080;
      v27 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v19.receiver = self;
  v19.super_class = VLFSessionHistoricalLocationAccuracyMonitor;
  v8 = [(VLFSessionMonitor *)&v19 initWithObserver:observerCopy];
  if (v8)
  {
    v9 = [[MapsRingBuffer alloc] initWithLength:GEOConfigGetUInteger()];
    historicalLocationAccuracies = v8->_historicalLocationAccuracies;
    v8->_historicalLocationAccuracies = v9;

    objc_storeStrong(&v8->_locationManager, manager);
    [(MKLocationManager *)v8->_locationManager listenForLocationUpdates:v8];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v8 selector:"applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
  }

  return v8;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionHistoricalLocationAccuracyMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionHistoricalLocationAccuracyMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end