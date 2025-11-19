@interface VLFSessionSunsetSunriseMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSString)debugDescription;
- (VLFSessionSunsetSunriseMonitor)initWithObserver:(id)a3 locationManager:(id)a4 sunsetSunriseCalculator:(id)a5 platformController:(id)a6 transportTypeSupportProvider:(Class)a7;
- (void)calculateState;
- (void)dealloc;
- (void)sunsetSunriseObserver:(id)a3 didUpdateState:(int64_t)a4;
@end

@implementation VLFSessionSunsetSunriseMonitor

- (void)sunsetSunriseObserver:(id)a3 didUpdateState:(int64_t)a4
{
  v6 = sub_100E20CCC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 1) > 3)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = *(&off_101655B88 + a4 - 1);
    }

    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got a new state from the sunset/sunrise observer: %@", &v8, 0x16u);
  }

  [(VLFSessionSunsetSunriseMonitor *)self calculateState];
}

- (NSString)debugDescription
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
  [objc_opt_class() offsetThreshold];
  v11 = v10;
  v12 = [(VLFSessionSunsetSunriseMonitor *)self sunsetSunriseObserver];
  v13 = [v12 currentState] - 1;
  if (v13 > 3)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = *(&off_101655B88 + v13);
  }

  v15 = [(VLFSessionMonitor *)self state];
  v16 = @"Hide";
  if (v15 == 1)
  {
    v16 = @"EnablePuck";
  }

  if (v15 == 2)
  {
    v16 = @"EnablePuckAndBanner";
  }

  v17 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, threshold: %f, currentValue: %@, currentState: %@>", v3, v5, v7, v9, v11, v14, v16];

  return v17;
}

- (void)calculateState
{
  v3 = [(VLFSessionSunsetSunriseMonitor *)self sunsetSunriseObserver];
  v4 = [v3 currentState];

  v5 = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_22;
      }

      v6 = sub_100E20CCC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 134349056;
        *&v11[4] = self;
        v8 = "[%{public}p] Detected state is during the day";
        v9 = v6;
        v10 = OS_LOG_TYPE_INFO;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v9, v10, v8, v11, 0xCu);
      }
    }

    else
    {
      v6 = sub_100E20CCC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v11 = 134349056;
        *&v11[4] = self;
        v8 = "[%{public}p] Could not determine sunset/sunrise state; ignoring";
        v9 = v6;
        v10 = OS_LOG_TYPE_ERROR;
        goto LABEL_19;
      }
    }

    v5 = 2;
    goto LABEL_21;
  }

  switch(v4)
  {
    case 2:
      v6 = sub_100E20CCC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 134349056;
        *&v11[4] = self;
        v7 = "[%{public}p] Detected state is shortly before sunset";
        goto LABEL_15;
      }

LABEL_16:
      v5 = 0;
LABEL_21:

      break;
    case 3:
      v6 = sub_100E20CCC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 134349056;
        *&v11[4] = self;
        v7 = "[%{public}p] Detected state is between sunset and sunrise";
        goto LABEL_15;
      }

      goto LABEL_16;
    case 4:
      v6 = sub_100E20CCC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 134349056;
        *&v11[4] = self;
        v7 = "[%{public}p] Detected state is shortly after sunrise";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, v11, 0xCu);
        goto LABEL_16;
      }

      goto LABEL_16;
  }

LABEL_22:
  [(VLFSessionMonitor *)self setState:v5, *v11];
}

- (void)dealloc
{
  v3 = sub_100E20CCC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(MapsSunsetSunriseObserver *)self->_sunsetSunriseObserver unregisterObserver:self];
  v4.receiver = self;
  v4.super_class = VLFSessionSunsetSunriseMonitor;
  [(VLFSessionSunsetSunriseMonitor *)&v4 dealloc];
}

- (VLFSessionSunsetSunriseMonitor)initWithObserver:(id)a3 locationManager:(id)a4 sunsetSunriseCalculator:(id)a5 platformController:(id)a6 transportTypeSupportProvider:(Class)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v13)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "[VLFSessionSunsetSunriseMonitor initWithObserver:locationManager:sunsetSunriseCalculator:platformController:transportTypeSupportProvider:]";
      v36 = 2080;
      v37 = "VLFSessionSunsetSunriseMonitor.m";
      v38 = 1024;
      v39 = 40;
      v40 = 2080;
      v41 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v14)
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "[VLFSessionSunsetSunriseMonitor initWithObserver:locationManager:sunsetSunriseCalculator:platformController:transportTypeSupportProvider:]";
      v36 = 2080;
      v37 = "VLFSessionSunsetSunriseMonitor.m";
      v38 = 1024;
      v39 = 41;
      v40 = 2080;
      v41 = "sunsetSunriseCalculator != nil";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v15)
  {
    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "[VLFSessionSunsetSunriseMonitor initWithObserver:locationManager:sunsetSunriseCalculator:platformController:transportTypeSupportProvider:]";
      v36 = 2080;
      v37 = "VLFSessionSunsetSunriseMonitor.m";
      v38 = 1024;
      v39 = 42;
      v40 = 2080;
      v41 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!a7)
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v35 = "[VLFSessionSunsetSunriseMonitor initWithObserver:locationManager:sunsetSunriseCalculator:platformController:transportTypeSupportProvider:]";
      v36 = 2080;
      v37 = "VLFSessionSunsetSunriseMonitor.m";
      v38 = 1024;
      v39 = 43;
      v40 = 2080;
      v41 = "transportTypeSupportProvider != nil";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v31 = sub_10006D178();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v35 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v33.receiver = self;
  v33.super_class = VLFSessionSunsetSunriseMonitor;
  v16 = [(VLFSessionMonitor *)&v33 initWithObserver:v12];
  if (v16)
  {
    v17 = sub_100E20CCC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v18 = [[MapsSunsetSunriseObserver alloc] initWithLocationManager:v13 sunsetSunriseCalculator:v14 platformController:v15 transportTypeSupportProvider:a7];
    sunsetSunriseObserver = v16->_sunsetSunriseObserver;
    v16->_sunsetSunriseObserver = v18;

    [objc_opt_class() offsetThreshold];
    [(MapsSunsetSunriseObserver *)v16->_sunsetSunriseObserver setOffsetThreshold:?];
    [objc_opt_class() minimumTimeThreshold];
    [(MapsSunsetSunriseObserver *)v16->_sunsetSunriseObserver setMinimumTimeThreshold:?];
    [objc_opt_class() minimumDistanceThreshold];
    [(MapsSunsetSunriseObserver *)v16->_sunsetSunriseObserver setMinimumDistanceThreshold:?];
    [(MapsSunsetSunriseObserver *)v16->_sunsetSunriseObserver registerObserver:v16];
    [(VLFSessionSunsetSunriseMonitor *)v16 calculateState];
  }

  return v16;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionSunsetSunriseMonitorAffectsPuckVisibilityKey"];

  return v3;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionSunsetSunriseMonitorAffectsBannerVisibilityKey"];

  return v3;
}

@end