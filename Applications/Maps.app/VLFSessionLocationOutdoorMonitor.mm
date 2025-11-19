@interface VLFSessionLocationOutdoorMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (BOOL)_satisfiesConsecutiveProbabilitiesForOutdoor:(BOOL)a3;
- (NSString)debugDescription;
- (VLFSessionLocationOutdoorMonitor)initWithObserver:(id)a3 locationManager:(id)a4;
- (void)_flipState;
- (void)_updateStateWithLocation:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didUpdateLocation:(id)a4;
@end

@implementation VLFSessionLocationOutdoorMonitor

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
        v15 = "[VLFSessionLocationOutdoorMonitor locationManager:didUpdateLocation:]";
        v16 = 2080;
        v17 = "VLFSessionLocationOutdoorMonitor.m";
        v18 = 1024;
        v19 = 187;
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

  [(VLFSessionLocationOutdoorMonitor *)self _updateStateWithLocation:v7];
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v23 = NSStringFromClass(v3);
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
  v10 = [(VLFSessionMonitor *)self state];
  v11 = @"Hide";
  if (v10 == 1)
  {
    v11 = @"EnablePuck";
  }

  if (v10 == 2)
  {
    v12 = @"EnablePuckAndBanner";
  }

  else
  {
    v12 = v11;
  }

  [(VLFSessionLocationOutdoorMonitor *)self confidenceThreshold];
  v14 = v13;
  v15 = [(VLFSessionLocationOutdoorMonitor *)self consecutiveOutdoorCount];
  v16 = [(VLFSessionLocationOutdoorMonitor *)self consecutiveIndoorCount];
  v17 = [(VLFSessionLocationOutdoorMonitor *)self historicalLocations];
  v18 = sub_100021DB0(v17, &stru_10164CA98);
  v19 = [v18 reverseObjectEnumerator];
  v20 = [v19 allObjects];
  v21 = [NSString stringWithFormat:@"<%@\nisEnabled: %@, \naffectsPuckVisibility: %@, \naffectsBannerVisibility: %@, \ncurrentState: %@, \nthreshold: %f, \noutdoor consecutive: %lu, \nindoor consecutive: %lu, \nlocations: %@>", v23, v5, v7, v9, v12, v14, v15, v16, v20];

  return v21;
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
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = 136316418;
        v25 = "[VLFSessionLocationOutdoorMonitor _updateStateWithLocation:]";
        v26 = 2080;
        v27 = "VLFSessionLocationOutdoorMonitor.m";
        v28 = 1024;
        v29 = 131;
        v30 = 2080;
        v31 = "dispatch_get_main_queue()";
        v32 = 2080;
        v33 = dispatch_queue_get_label(&_dispatch_main_q);
        v34 = 2080;
        v35 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v24, 0x3Au);
      }

      if (sub_100E03634())
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[NSThread callStackSymbols];
          v24 = 138412290;
          v25 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
        }
      }
    }
  }

  if (!v4)
  {
    v13 = sub_100BC3A6C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      v14 = "Got nil location; ignoring";
      v15 = v13;
      v16 = 2;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, v14, &v24, v16);
    }

LABEL_17:

    goto LABEL_18;
  }

  v8 = [(VLFSessionLocationOutdoorMonitor *)self historicalLocations];
  [v8 push:v4];

  v9 = [(VLFSessionLocationOutdoorMonitor *)self historicalLocations];
  v10 = [v9 count];

  v11 = [(VLFSessionLocationOutdoorMonitor *)self consecutiveOutdoorCount];
  if (v11 >= [(VLFSessionLocationOutdoorMonitor *)self consecutiveIndoorCount])
  {
    v12 = [(VLFSessionLocationOutdoorMonitor *)self consecutiveIndoorCount];
  }

  else
  {
    v12 = [(VLFSessionLocationOutdoorMonitor *)self consecutiveOutdoorCount];
  }

  v17 = v12;
  if (v10 < v12)
  {
    v13 = sub_100BC3A6C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v24 = 134218240;
      v25 = v10;
      v26 = 2048;
      v27 = v17;
      v14 = "Still waiting for more location updates; got %lu/%lu";
      v15 = v13;
      v16 = 22;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v18 = [(VLFSessionMonitor *)self state];
  if ([(VLFSessionLocationOutdoorMonitor *)self _satisfiesConsecutiveProbabilitiesForOutdoor:v18 == 0])
  {
    v19 = sub_100BC3A6C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"indoor";
      if (!v18)
      {
        v20 = @"outdoor";
      }

      v24 = 138412290;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Current location history satisfies requirements for %@; flipping state", &v24, 0xCu);
    }

    [(VLFSessionLocationOutdoorMonitor *)self _flipState];
  }

LABEL_18:
}

- (void)_flipState
{
  v3 = sub_100BC3A6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(VLFSessionMonitor *)self state];
    v5 = @"Hide";
    if (v4 == 1)
    {
      v5 = @"EnablePuck";
    }

    if (v4 == 2)
    {
      v5 = @"EnablePuckAndBanner";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Flipping current state: %@", &v6, 0xCu);
  }

  [(VLFSessionMonitor *)self setState:2 * ([(VLFSessionMonitor *)self state]== 0)];
}

- (BOOL)_satisfiesConsecutiveProbabilitiesForOutdoor:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(VLFSessionLocationOutdoorMonitor *)self consecutiveOutdoorCount];
  }

  else
  {
    v5 = [(VLFSessionLocationOutdoorMonitor *)self consecutiveIndoorCount];
  }

  v6 = v5;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(VLFSessionLocationOutdoorMonitor *)self historicalLocations];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (v3)
        {
          [v13 probabilityPositionContextStateOutdoor];
          v15 = v14;
        }

        else
        {
          [v13 probabilityPositionContextStateIndoor];
          v15 = v16;
          if (fabs(v16 + 1.0) <= 2.22044605e-16)
          {
            v17 = sub_100BC3A6C();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v21[0] = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Got a -1 probability while checking indoor; counting it as 1.0", v21, 2u);
            }

            v15 = 1.0;
          }
        }

        [(VLFSessionLocationOutdoorMonitor *)self confidenceThreshold];
        if (v15 >= v18)
        {
          ++v10;
        }

        else
        {
          v10 = 0;
        }

        if (v10 >= v6)
        {
          v19 = 1;
          goto LABEL_23;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_23:

  return v19;
}

- (void)dealloc
{
  [(VLFLocationManager *)self->_locationManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = VLFSessionLocationOutdoorMonitor;
  [(VLFSessionLocationOutdoorMonitor *)&v3 dealloc];
}

- (VLFSessionLocationOutdoorMonitor)initWithObserver:(id)a3 locationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v25 = "[VLFSessionLocationOutdoorMonitor initWithObserver:locationManager:]";
      v26 = 2080;
      v27 = "VLFSessionLocationOutdoorMonitor.m";
      v28 = 1024;
      v29 = 49;
      v30 = 2080;
      v31 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v25 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v7)
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v25 = "[VLFSessionLocationOutdoorMonitor initWithObserver:locationManager:]";
      v26 = 2080;
      v27 = "VLFSessionLocationOutdoorMonitor.m";
      v28 = 1024;
      v29 = 50;
      v30 = 2080;
      v31 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v25 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v23.receiver = self;
  v23.super_class = VLFSessionLocationOutdoorMonitor;
  v8 = [(VLFSessionMonitor *)&v23 initWithObserver:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, a4);
    [(VLFLocationManager *)v9->_locationManager addObserver:v9];
    v10 = [MapsRingBuffer alloc];
    v11 = [(VLFSessionLocationOutdoorMonitor *)v9 consecutiveOutdoorCount];
    if (v11 <= [(VLFSessionLocationOutdoorMonitor *)v9 consecutiveIndoorCount])
    {
      v12 = [(VLFSessionLocationOutdoorMonitor *)v9 consecutiveIndoorCount];
    }

    else
    {
      v12 = [(VLFSessionLocationOutdoorMonitor *)v9 consecutiveOutdoorCount];
    }

    v13 = [(MapsRingBuffer *)v10 initWithLength:v12];
    historicalLocations = v9->_historicalLocations;
    v9->_historicalLocations = v13;

    v15 = [(VLFLocationManager *)v9->_locationManager lastLocation];
    [(VLFSessionLocationOutdoorMonitor *)v9 _updateStateWithLocation:v15];
  }

  return v9;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionLocationOutdoorMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionLocationOutdoorMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end