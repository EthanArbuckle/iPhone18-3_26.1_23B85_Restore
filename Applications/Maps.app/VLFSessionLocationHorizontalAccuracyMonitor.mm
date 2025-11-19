@interface VLFSessionLocationHorizontalAccuracyMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSString)debugDescription;
- (VLFSessionLocationHorizontalAccuracyMonitor)initWithObserver:(id)a3 locationManager:(id)a4;
- (void)_updateStateWithLocation:(id)a3;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
@end

@implementation VLFSessionLocationHorizontalAccuracyMonitor

- (void)locationManagerUpdatedLocation:(id)a3
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
        v13 = "[VLFSessionLocationHorizontalAccuracyMonitor locationManagerUpdatedLocation:]";
        v14 = 2080;
        v15 = "VLFSessionLocationHorizontalAccuracyMonitor.m";
        v16 = 1024;
        v17 = 116;
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

  v8 = [v4 lastLocation];
  [(VLFSessionLocationHorizontalAccuracyMonitor *)self _updateStateWithLocation:v8];
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([objc_opt_class() isEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  v11 = [(VLFSessionMonitor *)self state];
  v12 = @"Hide";
  if (v11 == 1)
  {
    v12 = @"EnablePuck";
  }

  if (v11 == 2)
  {
    v13 = @"EnablePuckAndBanner";
  }

  else
  {
    v13 = v12;
  }

  v14 = [(VLFSessionLocationHorizontalAccuracyMonitor *)self locationManager];
  v15 = [v14 lastLocation];
  [v15 horizontalAccuracy];
  v17 = v16;
  +[VLLocalizer maximumHorizontalAccuracyThreshold];
  v19 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@, currentHorizontalAccuracy: %f, threshold: %f>", v4, v6, v8, v10, v13, v17, v18];

  return v19;
}

- (void)_updateStateWithLocation:(id)a3
{
  v4 = a3;
  v5 = sub_1000717E0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      [v4 horizontalAccuracy];
      v23 = 134283521;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Got location with horizontal accuracy: %{private}f", &v23, 0xCu);
    }

    [v4 horizontalAccuracy];
    v9 = v8;
    +[VLLocalizer maximumHorizontalAccuracyThreshold];
    v11 = v10;
    v12 = [(VLFSessionMonitor *)self state];
    if (v9 <= v11)
    {
      if (v12 != 2)
      {
        v19 = sub_1000717E0();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          [v4 horizontalAccuracy];
          v21 = v20;
          +[VLLocalizer maximumHorizontalAccuracyThreshold];
          v23 = 134283777;
          v24 = v21;
          v25 = 2049;
          v26 = v22;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Horizontal accuracy (%{private}f) is lower than the maximum threshold (%{private}f); updating state", &v23, 0x16u);
        }
      }

      v17 = self;
      v18 = 2;
    }

    else
    {
      if (v12)
      {
        v13 = sub_1000717E0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          [v4 horizontalAccuracy];
          v15 = v14;
          +[VLLocalizer maximumHorizontalAccuracyThreshold];
          v23 = 134283777;
          v24 = v15;
          v25 = 2049;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Horizontal accuracy (%{private}f) is higher than the maximum threshold (%{private}f); updating state", &v23, 0x16u);
        }
      }

      v17 = self;
      v18 = 0;
    }

    [(VLFSessionMonitor *)v17 setState:v18];
  }

  else
  {
    if (v6)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Got nil location; ignoring", &v23, 2u);
    }
  }
}

- (void)dealloc
{
  [(MKLocationManager *)self->_locationManager stopListeningForLocationUpdates:self];
  v3.receiver = self;
  v3.super_class = VLFSessionLocationHorizontalAccuracyMonitor;
  [(VLFSessionLocationHorizontalAccuracyMonitor *)&v3 dealloc];
}

- (VLFSessionLocationHorizontalAccuracyMonitor)initWithObserver:(id)a3 locationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[VLFSessionLocationHorizontalAccuracyMonitor initWithObserver:locationManager:]";
      v21 = 2080;
      v22 = "VLFSessionLocationHorizontalAccuracyMonitor.m";
      v23 = 1024;
      v24 = 35;
      v25 = 2080;
      v26 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v7)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[VLFSessionLocationHorizontalAccuracyMonitor initWithObserver:locationManager:]";
      v21 = 2080;
      v22 = "VLFSessionLocationHorizontalAccuracyMonitor.m";
      v23 = 1024;
      v24 = 36;
      v25 = 2080;
      v26 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v18.receiver = self;
  v18.super_class = VLFSessionLocationHorizontalAccuracyMonitor;
  v8 = [(VLFSessionMonitor *)&v18 initWithObserver:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, a4);
    [(MKLocationManager *)v9->_locationManager listenForLocationUpdates:v9];
    v10 = [(MKLocationManager *)v9->_locationManager lastLocation];
    [(VLFSessionLocationHorizontalAccuracyMonitor *)v9 _updateStateWithLocation:v10];
  }

  return v9;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionLocationHorizontalAccuracyMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionLocationHorizontalAccuracyMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end