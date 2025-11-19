@interface VLFSessionTileAvailabilityMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSString)debugDescription;
- (VLFSessionTileAvailabilityMonitor)initWithObserver:(id)a3 tileObserver:(id)a4;
- (void)dealloc;
- (void)updateState;
@end

@implementation VLFSessionTileAvailabilityMonitor

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

  v13 = [(VLFSessionTileAvailabilityMonitor *)self tileObserver];
  [v13 distanceThreshold];
  v15 = v14;
  v16 = [(VLFSessionTileAvailabilityMonitor *)self tileObserver];
  [v16 errorTimeoutThreshold];
  v18 = v17;
  v19 = [(VLFSessionTileAvailabilityMonitor *)self tileObserver];
  if ([v19 isNavigatingInUnsupportedTransportType])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@, distanceThreshold: %.2f, errorTimeoutThreshold: %.2f, isNavigatingInUnsupportedTransportType: %@>", v3, v5, v7, v9, v12, v15, v18, v20];

  return v21;
}

- (void)updateState
{
  v3 = [(VLFSessionTileAvailabilityMonitor *)self tileObserver];
  v4 = [v3 areTilesAvailable];

  v5 = sub_100C573F8();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Tiles are available", &v8, 0xCu);
    }

    v7 = 2;
  }

  else
  {
    if (v6)
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Tiles are not available", &v8, 0xCu);
    }

    v7 = 0;
  }

  [(VLFSessionMonitor *)self setState:v7];
}

- (void)dealloc
{
  v3 = sub_100C573F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocing", buf, 0xCu);
  }

  [(VLFTileObserver *)self->_tileObserver removeAvailabilityObserver:self];
  v4.receiver = self;
  v4.super_class = VLFSessionTileAvailabilityMonitor;
  [(VLFSessionTileAvailabilityMonitor *)&v4 dealloc];
}

- (VLFSessionTileAvailabilityMonitor)initWithObserver:(id)a3 tileObserver:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[VLFSessionTileAvailabilityMonitor initWithObserver:tileObserver:]";
      v17 = 2080;
      v18 = "VLFSessionTileAvailabilityMonitor.m";
      v19 = 1024;
      v20 = 32;
      v21 = 2080;
      v22 = "tileObserver != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v14.receiver = self;
  v14.super_class = VLFSessionTileAvailabilityMonitor;
  v8 = [(VLFSessionMonitor *)&v14 initWithObserver:v6];
  if (v8)
  {
    v9 = sub_100C573F8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v8->_tileObserver, a4);
    [(VLFTileObserver *)v8->_tileObserver addAvailabilityObserver:v8];
    [(VLFSessionTileAvailabilityMonitor *)v8 updateState];
  }

  return v8;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionTileAvailabilityMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionTileAvailabilityMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end