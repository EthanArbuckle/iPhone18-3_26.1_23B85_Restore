@interface VLFSessionLocationTypeMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSString)debugDescription;
- (VLFSessionLocationTypeMonitor)initWithObserver:(id)a3 locationManager:(id)a4;
- (void)_buildAllowedLocationTypes;
- (void)_updateStateWithLocation:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didUpdateLocation:(id)a4;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation VLFSessionLocationTypeMonitor

- (void)valueChangedForGEOConfigKey:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label != v7)
  {
    v8 = !label || v7 == 0;
    if (v8 || strcmp(label, v7))
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 136316418;
        v18 = "[VLFSessionLocationTypeMonitor valueChangedForGEOConfigKey:]";
        v19 = 2080;
        v20 = "VLFSessionLocationTypeMonitor.m";
        v21 = 1024;
        v22 = 190;
        v23 = 2080;
        v24 = "dispatch_get_main_queue()";
        v25 = 2080;
        v26 = dispatch_queue_get_label(&_dispatch_main_q);
        v27 = 2080;
        v28 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v17, 0x3Au);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v17 = 138412290;
          v18 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }
  }

  if (var0 == 300 && var1 == &unk_10163F938 || var0 == 301 && var1 == &unk_10163F970 || var0 == 302 && var1 == &unk_10163F9A8 || var0 == 303 && var1 == &unk_10163F9E0)
  {
    v9 = sub_10006D28C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Allowed location type geo defaults changed; updating allowed set and current state", &v17, 2u);
    }

    [(VLFSessionLocationTypeMonitor *)self _buildAllowedLocationTypes];
    v10 = [(VLFSessionLocationTypeMonitor *)self locationManager];
    v11 = [v10 lastLocation];
    [(VLFSessionLocationTypeMonitor *)self _updateStateWithLocation:v11];

LABEL_18:
    return;
  }

  v12 = sub_10006D178();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315650;
    v18 = "[VLFSessionLocationTypeMonitor valueChangedForGEOConfigKey:]";
    v19 = 2080;
    v20 = "VLFSessionLocationTypeMonitor.m";
    v21 = 1024;
    v22 = 201;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v17, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = +[NSThread callStackSymbols];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
    }

    goto LABEL_18;
  }
}

- (void)locationManager:(id)a3 didUpdateLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316418;
        v15 = "[VLFSessionLocationTypeMonitor locationManager:didUpdateLocation:]";
        v16 = 2080;
        v17 = "VLFSessionLocationTypeMonitor.m";
        v18 = 1024;
        v19 = 181;
        v20 = 2080;
        v21 = "dispatch_get_main_queue()";
        v22 = 2080;
        v23 = dispatch_queue_get_label(&_dispatch_main_q);
        v24 = 2080;
        v25 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v14, 0x3Au);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }
    }
  }

  [(VLFSessionLocationTypeMonitor *)self _updateStateWithLocation:v7];
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v26 = NSStringFromClass(v3);
  if ([objc_opt_class() isEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v25 = v4;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v24 = v5;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  v8 = [(VLFSessionMonitor *)self state];
  v9 = @"Hide";
  if (v8 == 1)
  {
    v9 = @"EnablePuck";
  }

  if (v8 == 2)
  {
    v10 = @"EnablePuckAndBanner";
  }

  else
  {
    v10 = v9;
  }

  v23 = [(VLFSessionLocationTypeMonitor *)self locationManager];
  v11 = [v23 lastLocation];
  v12 = [v11 type];
  if (v12 < 0xF && ((0x5FFFu >> v12) & 1) != 0)
  {
    v13 = *(&off_1016323C8 + v12);
  }

  else
  {
    v13 = [NSString stringWithFormat:@"%d", v12];
  }

  if (GEOConfigGetBOOL())
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = v14;
  if (GEOConfigGetBOOL())
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = v16;
  if (GEOConfigGetBOOL())
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = v18;
  if (GEOConfigGetBOOL())
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@, currentLocationType: %@, allowed: GPS: %@, WiFi: %@, WiFi2: %@, Pipeline: %@>", v26, v25, v24, v7, v10, v13, v15, v17, v19, v20];

  return v21;
}

- (void)_buildAllowedLocationTypes
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 136316418;
        v18 = "[VLFSessionLocationTypeMonitor _buildAllowedLocationTypes]";
        v19 = 2080;
        v20 = "VLFSessionLocationTypeMonitor.m";
        v21 = 1024;
        v22 = 119;
        v23 = 2080;
        v24 = "dispatch_get_main_queue()";
        v25 = 2080;
        v26 = dispatch_queue_get_label(&_dispatch_main_q);
        v27 = 2080;
        v28 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v17, 0x3Au);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v17 = 138412290;
          v18 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }
  }

  v6 = sub_10006D28C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Generating allowed location types", &v17, 2u);
  }

  v7 = +[NSMutableSet set];
  if (GEOConfigGetBOOL())
  {
    v8 = sub_10006D28C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "GPS is allowed", &v17, 2u);
    }

    [v7 addObject:&off_1016E8060];
  }

  if (GEOConfigGetBOOL())
  {
    v9 = sub_10006D28C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "WiFi is allowed", &v17, 2u);
    }

    [v7 addObject:&off_1016E8078];
  }

  if (GEOConfigGetBOOL())
  {
    v10 = sub_10006D28C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "WiFi2 is allowed", &v17, 2u);
    }

    [v7 addObject:&off_1016E8090];
  }

  if (GEOConfigGetBOOL())
  {
    v11 = sub_10006D28C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Pipeline is allowed", &v17, 2u);
    }

    [v7 addObject:&off_1016E80A8];
  }

  v12 = sub_10006D28C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Generated allowed location types: %@", &v17, 0xCu);
  }

  v13 = [v7 copy];
  [(VLFSessionLocationTypeMonitor *)self setAllowedLocationTypes:v13];
}

- (void)_updateStateWithLocation:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *v32 = "[VLFSessionLocationTypeMonitor _updateStateWithLocation:]";
        *&v32[8] = 2080;
        *&v32[10] = "VLFSessionLocationTypeMonitor.m";
        *&v32[18] = 1024;
        *&v32[20] = 93;
        v33 = 2080;
        v34 = "dispatch_get_main_queue()";
        v35 = 2080;
        v36 = dispatch_queue_get_label(&_dispatch_main_q);
        v37 = 2080;
        v38 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v29 = sub_10006D178();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = +[NSThread callStackSymbols];
          *buf = 138412290;
          *v32 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v8 = sub_10006D28C();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v9)
    {
      v10 = [v4 type];
      if (v10 < 0xF && ((0x5FFFu >> v10) & 1) != 0)
      {
        v11 = *(&off_1016323C8 + v10);
      }

      else
      {
        v11 = [NSString stringWithFormat:@"%d", v10];
      }

      *buf = 138412290;
      *v32 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Got location with type: %@", buf, 0xCu);
    }

    v12 = [(VLFSessionLocationTypeMonitor *)self allowedLocationTypes];
    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 type]);
    v14 = [v12 containsObject:v13];

    v15 = [(VLFSessionMonitor *)self state];
    if (v14)
    {
      if (v15 != 2)
      {
        v16 = sub_10006D28C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v4 type];
          v18 = [v4 type];
          if (v18 < 0xF && ((0x5FFFu >> v18) & 1) != 0)
          {
            v19 = *(&off_1016323C8 + v18);
          }

          else
          {
            v19 = [NSString stringWithFormat:@"%d", v18];
          }

          v27 = [(VLFSessionLocationTypeMonitor *)self allowedLocationTypes];
          *buf = 67109634;
          *v32 = v17;
          *&v32[4] = 2112;
          *&v32[6] = v19;
          *&v32[14] = 2112;
          *&v32[16] = v27;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Location type (%d:%@) is in the allowed set (%@); updating state", buf, 0x1Cu);
        }
      }

      v25 = self;
      v26 = 2;
    }

    else
    {
      if (v15)
      {
        v20 = sub_10006D28C();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v4 type];
          v22 = [v4 type];
          if (v22 < 0xF && ((0x5FFFu >> v22) & 1) != 0)
          {
            v23 = *(&off_1016323C8 + v22);
          }

          else
          {
            v23 = [NSString stringWithFormat:@"%d", v22];
          }

          v24 = [(VLFSessionLocationTypeMonitor *)self allowedLocationTypes];
          *buf = 67109634;
          *v32 = v21;
          *&v32[4] = 2112;
          *&v32[6] = v23;
          *&v32[14] = 2112;
          *&v32[16] = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Location type (%d:%@) is NOT in the allowed set (%@); updating state", buf, 0x1Cu);
        }
      }

      v25 = self;
      v26 = 0;
    }

    [(VLFSessionMonitor *)v25 setState:v26];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Got nil location; ignoring", buf, 2u);
    }
  }
}

- (void)dealloc
{
  [(VLFLocationManager *)self->_locationManager removeObserver:self];
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = VLFSessionLocationTypeMonitor;
  [(VLFSessionLocationTypeMonitor *)&v3 dealloc];
}

- (VLFSessionLocationTypeMonitor)initWithObserver:(id)a3 locationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[VLFSessionLocationTypeMonitor initWithObserver:locationManager:]";
      v21 = 2080;
      v22 = "VLFSessionLocationTypeMonitor.m";
      v23 = 1024;
      v24 = 55;
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
      v20 = "[VLFSessionLocationTypeMonitor initWithObserver:locationManager:]";
      v21 = 2080;
      v22 = "VLFSessionLocationTypeMonitor.m";
      v23 = 1024;
      v24 = 56;
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
  v18.super_class = VLFSessionLocationTypeMonitor;
  v8 = [(VLFSessionMonitor *)&v18 initWithObserver:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, a4);
    [(VLFLocationManager *)v9->_locationManager addObserver:v9];
    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    _GEOConfigAddDelegateListenerForKey();
    _GEOConfigAddDelegateListenerForKey();

    [(VLFSessionLocationTypeMonitor *)v9 _buildAllowedLocationTypes];
    v10 = [(VLFLocationManager *)v9->_locationManager lastLocation];
    [(VLFSessionLocationTypeMonitor *)v9 _updateStateWithLocation:v10];
  }

  return v9;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionLocationTypeMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionLocationTypeMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end