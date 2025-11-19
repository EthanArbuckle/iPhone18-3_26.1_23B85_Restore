@interface VLFSessionLocationSignalEnvironmentMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSString)debugDescription;
- (VLFSessionLocationSignalEnvironmentMonitor)initWithObserver:(id)a3 locationManager:(id)a4;
- (void)_buildAllowedLocationSignalEnvironments;
- (void)_updateStateWithLocation:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didUpdateLocation:(id)a4;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation VLFSessionLocationSignalEnvironmentMonitor

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
        v18 = "[VLFSessionLocationSignalEnvironmentMonitor valueChangedForGEOConfigKey:]";
        v19 = 2080;
        v20 = "VLFSessionLocationSignalEnvironmentMonitor.m";
        v21 = 1024;
        v22 = 188;
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

  if (var0 == 361 && var1 == &unk_101640218 || var0 == 362 && var1 == &unk_101640250 || var0 == 363 && var1 == &unk_101640288 || var0 == 364 && var1 == &unk_1016402C0 || var0 == 365 && var1 == &unk_1016402F8)
  {
    v9 = sub_10006D228();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Allowed location signal environments geo defaults changed; updating allowed set and current state", &v17, 2u);
    }

    [(VLFSessionLocationSignalEnvironmentMonitor *)self _buildAllowedLocationSignalEnvironments];
    v10 = [(VLFSessionLocationSignalEnvironmentMonitor *)self locationManager];
    v11 = [v10 lastLocation];
    [(VLFSessionLocationSignalEnvironmentMonitor *)self _updateStateWithLocation:v11];

LABEL_20:
    return;
  }

  v12 = sub_10006D178();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315650;
    v18 = "[VLFSessionLocationSignalEnvironmentMonitor valueChangedForGEOConfigKey:]";
    v19 = 2080;
    v20 = "VLFSessionLocationSignalEnvironmentMonitor.m";
    v21 = 1024;
    v22 = 200;
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

    goto LABEL_20;
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
        v15 = "[VLFSessionLocationSignalEnvironmentMonitor locationManager:didUpdateLocation:]";
        v16 = 2080;
        v17 = "VLFSessionLocationSignalEnvironmentMonitor.m";
        v18 = 1024;
        v19 = 179;
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

  [(VLFSessionLocationSignalEnvironmentMonitor *)self _updateStateWithLocation:v7];
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v28 = NSStringFromClass(v3);
  if ([objc_opt_class() isEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v27 = v4;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v26 = v5;
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
    v9 = @"EnablePuckAndBanner";
  }

  v24 = v9;
  v25 = [(VLFSessionLocationSignalEnvironmentMonitor *)self locationManager];
  v10 = [v25 lastLocation];
  v11 = [v10 signalEnvironmentType] - 1;
  if (v11 > 5)
  {
    v12 = @"Unavailable";
  }

  else
  {
    v12 = *(&off_101623FB0 + v11);
  }

  if (GEOConfigGetBOOL())
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = v13;
  if (GEOConfigGetBOOL())
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = v15;
  if (GEOConfigGetBOOL())
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = v17;
  if (GEOConfigGetBOOL())
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = v19;
  if (GEOConfigGetBOOL())
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = [NSString stringWithFormat:@"<%@\nisEnabled: %@, \naffectsPuckVisibility: %@, \naffectsBannerVisibility: %@, \ncurrentState: %@, \ncurrentEnvironmentSignal: %@, \nRural: %@, \nUrban: %@, \nDenseUrban: %@, \nDenseUrbanCanyon: %@, \nFoliage: %@>", v28, v27, v26, v7, v24, v12, v14, v16, v18, v20, v21];

  return v22;
}

- (void)_buildAllowedLocationSignalEnvironments
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136316418;
        v19 = "[VLFSessionLocationSignalEnvironmentMonitor _buildAllowedLocationSignalEnvironments]";
        v20 = 2080;
        v21 = "VLFSessionLocationSignalEnvironmentMonitor.m";
        v22 = 1024;
        v23 = 111;
        v24 = 2080;
        v25 = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v18, 0x3Au);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          v18 = 138412290;
          v19 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }
  }

  v6 = sub_10006D228();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Generating allowed location signal environments", &v18, 2u);
  }

  v7 = +[NSMutableSet set];
  if (GEOConfigGetBOOL())
  {
    v8 = sub_10006D228();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Rural is allowed", &v18, 2u);
    }

    [v7 addObject:&off_1016E6458];
  }

  if (GEOConfigGetBOOL())
  {
    v9 = sub_10006D228();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Urban is allowed", &v18, 2u);
    }

    [v7 addObject:&off_1016E6470];
  }

  if (GEOConfigGetBOOL())
  {
    v10 = sub_10006D228();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Dense Urban is allowed", &v18, 2u);
    }

    [v7 addObject:&off_1016E6488];
  }

  if (GEOConfigGetBOOL())
  {
    v11 = sub_10006D228();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Dense Urban Canyon is allowed", &v18, 2u);
    }

    [v7 addObject:&off_1016E64A0];
  }

  if (GEOConfigGetBOOL())
  {
    v12 = sub_10006D228();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Foliage is allowed", &v18, 2u);
    }

    [v7 addObject:&off_1016E64B8];
  }

  v13 = sub_10006D228();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Generated allowed location signal environments: %@", &v18, 0xCu);
  }

  v14 = [v7 copy];
  [(VLFSessionLocationSignalEnvironmentMonitor *)self setAllowedLocationSignalEnvironments:v14];
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
        v31 = 136316418;
        *v32 = "[VLFSessionLocationSignalEnvironmentMonitor _updateStateWithLocation:]";
        *&v32[8] = 2080;
        *&v32[10] = "VLFSessionLocationSignalEnvironmentMonitor.m";
        *&v32[18] = 1024;
        *&v32[20] = 85;
        v33 = 2080;
        v34 = "dispatch_get_main_queue()";
        v35 = 2080;
        v36 = dispatch_queue_get_label(&_dispatch_main_q);
        v37 = 2080;
        v38 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v31, 0x3Au);
      }

      if (sub_100E03634())
      {
        v29 = sub_10006D178();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = +[NSThread callStackSymbols];
          v31 = 138412290;
          *v32 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", &v31, 0xCu);
        }
      }
    }
  }

  v8 = sub_10006D228();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v9)
    {
      v10 = [v4 signalEnvironmentType] - 1;
      if (v10 > 5)
      {
        v11 = @"Unavailable";
      }

      else
      {
        v11 = *(&off_101623FB0 + v10);
      }

      v31 = 138412290;
      *v32 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Got location with signal environment: %@", &v31, 0xCu);
    }

    v12 = [(VLFSessionLocationSignalEnvironmentMonitor *)self allowedLocationSignalEnvironments];
    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 signalEnvironmentType]);
    v14 = [v12 containsObject:v13];

    v15 = [(VLFSessionMonitor *)self state];
    if (v14)
    {
      if (v15 != 2)
      {
        v16 = sub_10006D228();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v4 signalEnvironmentType];
          v18 = [v4 signalEnvironmentType] - 1;
          if (v18 > 5)
          {
            v19 = @"Unavailable";
          }

          else
          {
            v19 = *(&off_101623FB0 + v18);
          }

          v27 = [(VLFSessionLocationSignalEnvironmentMonitor *)self allowedLocationSignalEnvironments];
          v31 = 67109634;
          *v32 = v17;
          *&v32[4] = 2112;
          *&v32[6] = v19;
          *&v32[14] = 2112;
          *&v32[16] = v27;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Location signal environment (%d:%@) is in the allowed set (%@); updating state", &v31, 0x1Cu);
        }
      }

      v25 = self;
      v26 = 2;
    }

    else
    {
      if (v15)
      {
        v20 = sub_10006D228();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v4 signalEnvironmentType];
          v22 = [v4 signalEnvironmentType] - 1;
          if (v22 > 5)
          {
            v23 = @"Unavailable";
          }

          else
          {
            v23 = *(&off_101623FB0 + v22);
          }

          v24 = [(VLFSessionLocationSignalEnvironmentMonitor *)self allowedLocationSignalEnvironments];
          v31 = 67109634;
          *v32 = v21;
          *&v32[4] = 2112;
          *&v32[6] = v23;
          *&v32[14] = 2112;
          *&v32[16] = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Location signal environment (%d:%@) is NOT in the allowed set (%@); updating state", &v31, 0x1Cu);
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
      LOWORD(v31) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Got nil location; ignoring", &v31, 2u);
    }
  }
}

- (void)dealloc
{
  [(VLFLocationManager *)self->_locationManager removeObserver:self];
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = VLFSessionLocationSignalEnvironmentMonitor;
  [(VLFSessionLocationSignalEnvironmentMonitor *)&v3 dealloc];
}

- (VLFSessionLocationSignalEnvironmentMonitor)initWithObserver:(id)a3 locationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[VLFSessionLocationSignalEnvironmentMonitor initWithObserver:locationManager:]";
      v21 = 2080;
      v22 = "VLFSessionLocationSignalEnvironmentMonitor.m";
      v23 = 1024;
      v24 = 46;
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
      v20 = "[VLFSessionLocationSignalEnvironmentMonitor initWithObserver:locationManager:]";
      v21 = 2080;
      v22 = "VLFSessionLocationSignalEnvironmentMonitor.m";
      v23 = 1024;
      v24 = 47;
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
  v18.super_class = VLFSessionLocationSignalEnvironmentMonitor;
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

    _GEOConfigAddDelegateListenerForKey();
    [(VLFSessionLocationSignalEnvironmentMonitor *)v9 _buildAllowedLocationSignalEnvironments];
    v10 = [(VLFLocationManager *)v9->_locationManager lastLocation];
    [(VLFSessionLocationSignalEnvironmentMonitor *)v9 _updateStateWithLocation:v10];
  }

  return v9;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionLocationSignalEnvironmentMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionLocationSignalEnvironmentMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end