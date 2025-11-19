@interface VLFSessionUsageMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (VLFSessionUsageMonitor)initWithObserver:(id)a3;
- (id)debugDescription;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateState;
- (void)updateTimer;
@end

@implementation VLFSessionUsageMonitor

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[VLFSessionUsageTracker sharedInstance];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_3:
    v20.receiver = self;
    v20.super_class = VLFSessionUsageMonitor;
    [(VLFSessionUsageMonitor *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_11;
  }

  v15 = NSStringFromSelector("hasVLFEverLocalized");
  if ([v10 isEqualToString:v15])
  {
    goto LABEL_7;
  }

  v16 = NSStringFromSelector("numberOfCalloutInteractions");
  if ([v10 isEqualToString:v16])
  {

LABEL_7:
    goto LABEL_8;
  }

  v18 = NSStringFromSelector("hasUserEnteredVLF");
  v19 = [v10 isEqualToString:v18];

  if ((v19 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_8:
  v17 = sub_10068B408();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Detected keypath changed (%@); updating state", buf, 0xCu);
  }

  [(VLFSessionUsageMonitor *)self updateState];
  [(VLFSessionUsageMonitor *)self updateTimer];
LABEL_11:
}

- (id)debugDescription
{
  v28 = objc_opt_class();
  if ([objc_opt_class() isEnabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v27 = v3;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v26 = v4;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v25 = v5;
  v6 = [(VLFSessionMonitor *)self state];
  v7 = @"Hide";
  if (v6 == 1)
  {
    v7 = @"EnablePuck";
  }

  if (v6 == 2)
  {
    v7 = @"EnablePuckAndBanner";
  }

  v24 = v7;
  v8 = +[VLFSessionUsageTracker sharedInstance];
  if ([v8 hasVLFEverLocalized])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  UInteger = GEOConfigGetUInteger();
  v12 = +[VLFSessionUsageTracker sharedInstance];
  v13 = [v12 numberOfCalloutDismissals];
  v14 = +[VLFSessionUsageTracker sharedInstance];
  v15 = [v14 numberOfCalloutTaps];
  v16 = +[VLFSessionUsageTracker sharedInstance];
  [v16 timeSinceLastVLFInteraction];
  v18 = v17;
  v19 = +[VLFSessionUsageTracker sharedInstance];
  v20 = [v19 hasUserSeenVLFCallout];
  v21 = @"NO";
  if (v20)
  {
    v21 = @"YES";
  }

  v22 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@, hasVLFEverLocalized: %@, maxCalloutDismissals: %lu, numberOfCalloutDismissals: %lu, numberOfCalloutTaps: %lu, timeSinceLastVLFInteraction: %f, hasUserSeenVLFCallout: %@>", v28, v27, v26, v25, v24, v10, UInteger, v13, v15, v18, v21];

  return v22;
}

- (void)updateTimer
{
  v3 = +[VLFSessionUsageTracker sharedInstance];
  v4 = [v3 numberOfCalloutInteractions];

  if (v4 == 1)
  {
    GEOConfigGetDouble();
    v6 = v5;
    v7 = +[VLFSessionUsageTracker sharedInstance];
    [v7 timeSinceLastVLFInteraction];
    v9 = v6 - v8;

    if (v9 > 0.0)
    {
      objc_initWeak(&location, self);
      v10 = &_dispatch_main_q;
      v11 = v23;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10068B958;
      v23[3] = &unk_1016616E8;
      objc_copyWeak(&v24, &location);
      v12 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v23 block:v9];
      [(VLFSessionUsageMonitor *)self setInteractionThresholdTimeoutTimer:v12];
LABEL_7:

      objc_destroyWeak(v11 + 4);
      objc_destroyWeak(&location);
      return;
    }
  }

  else
  {
    v13 = +[VLFSessionUsageTracker sharedInstance];
    v14 = [v13 numberOfCalloutInteractions];

    if (v14 >= 2)
    {
      GEOConfigGetDouble();
      v16 = v15;
      v17 = +[VLFSessionUsageTracker sharedInstance];
      [v17 timeSinceLastVLFInteraction];
      v19 = v16 - v18;

      if (v19 > 0.0)
      {
        objc_initWeak(&location, self);
        v20 = &_dispatch_main_q;
        v11 = v21;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10068B998;
        v21[3] = &unk_1016616E8;
        objc_copyWeak(&v22, &location);
        v12 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v21 block:v19];
        [(VLFSessionUsageMonitor *)self setInteractionThresholdTimeoutTimer:v12];
        goto LABEL_7;
      }
    }
  }

  [(VLFSessionUsageMonitor *)self setInteractionThresholdTimeoutTimer:0];
}

- (void)updateState
{
  v3 = +[VLFSessionUsageTracker sharedInstance];
  v4 = [v3 hasVLFEverLocalized];

  if (v4)
  {
    v5 = sub_10068B408();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      v6 = "Detected that VLF has localized before; updating state";
      v7 = v5;
      v8 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v26, v8);
    }

LABEL_13:

    [(VLFSessionMonitor *)self setState:0];
    return;
  }

  v9 = +[VLFSessionUsageTracker sharedInstance];
  v10 = [v9 numberOfCalloutDismissals];
  UInteger = GEOConfigGetUInteger();

  if (v10 >= UInteger)
  {
    v5 = sub_10068B408();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v26 = 134217984;
    v27 = GEOConfigGetUInteger();
    v6 = "Detected that user dismissed VLF callout more than %lu times; updating state";
    goto LABEL_11;
  }

  v12 = +[VLFSessionUsageTracker sharedInstance];
  if ([v12 numberOfCalloutInteractions] == 1)
  {
    v13 = +[VLFSessionUsageTracker sharedInstance];
    [v13 timeSinceLastVLFInteraction];
    v15 = v14;
    GEOConfigGetDouble();
    v17 = v16;

    if (v15 < v17)
    {
      v5 = sub_10068B408();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      GEOConfigGetDouble();
      v26 = 134217984;
      v27 = v18;
      v6 = "Detected that user interacted with VLF once less than %f seconds ago; updating state";
LABEL_11:
      v7 = v5;
      v8 = 12;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = +[VLFSessionUsageTracker sharedInstance];
  if ([v19 numberOfCalloutInteractions] <= 1)
  {
  }

  else
  {
    v20 = +[VLFSessionUsageTracker sharedInstance];
    [v20 timeSinceLastVLFInteraction];
    v22 = v21;
    GEOConfigGetDouble();
    v24 = v23;

    if (v22 < v24)
    {
      v5 = sub_10068B408();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      GEOConfigGetDouble();
      v26 = 134217984;
      v27 = v25;
      v6 = "Detected that user interacted with VLF after the first time time less than %f seconds ago; updating state";
      goto LABEL_11;
    }
  }

  [(VLFSessionMonitor *)self setState:2];
}

- (void)dealloc
{
  v3 = +[VLFSessionUsageTracker sharedInstance];
  v4 = NSStringFromSelector("hasUserEnteredVLF");
  [v3 removeObserver:self forKeyPath:v4];

  v5 = +[VLFSessionUsageTracker sharedInstance];
  v6 = NSStringFromSelector("hasVLFEverLocalized");
  [v5 removeObserver:self forKeyPath:v6];

  v7 = +[VLFSessionUsageTracker sharedInstance];
  v8 = NSStringFromSelector("numberOfCalloutInteractions");
  [v7 removeObserver:self forKeyPath:v8];

  v9.receiver = self;
  v9.super_class = VLFSessionUsageMonitor;
  [(VLFSessionUsageMonitor *)&v9 dealloc];
}

- (VLFSessionUsageMonitor)initWithObserver:(id)a3
{
  v11.receiver = self;
  v11.super_class = VLFSessionUsageMonitor;
  v3 = [(VLFSessionMonitor *)&v11 initWithObserver:a3];
  if (v3)
  {
    v4 = +[VLFSessionUsageTracker sharedInstance];
    v5 = NSStringFromSelector("hasUserEnteredVLF");
    [v4 addObserver:v3 forKeyPath:v5 options:1 context:0];

    v6 = +[VLFSessionUsageTracker sharedInstance];
    v7 = NSStringFromSelector("hasVLFEverLocalized");
    [v6 addObserver:v3 forKeyPath:v7 options:1 context:0];

    v8 = +[VLFSessionUsageTracker sharedInstance];
    v9 = NSStringFromSelector("numberOfCalloutInteractions");
    [v8 addObserver:v3 forKeyPath:v9 options:1 context:0];

    [(VLFSessionUsageMonitor *)v3 updateState];
    [(VLFSessionUsageMonitor *)v3 updateTimer];
  }

  return v3;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionUsageMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionUsageMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end