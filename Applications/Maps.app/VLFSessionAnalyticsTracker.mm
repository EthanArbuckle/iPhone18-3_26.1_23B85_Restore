@interface VLFSessionAnalyticsTracker
- (VLFSessionAnalyticsTracker)init;
- (void)VLFSessionDidStopNotification:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation VLFSessionAnalyticsTracker

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[VLFSessionUsageTracker sharedInstance];

  if (v13 == v11)
  {
    if ([v10 isEqualToString:@"numberOfCalloutDismissals"])
    {
      v14 = [v12 objectForKey:NSKeyValueChangeOldKey];
      v15 = [v14 unsignedIntegerValue];

      v16 = [v12 objectForKey:NSKeyValueChangeNewKey];
      v17 = [v16 unsignedIntegerValue];

      if (v17 >= v15)
      {
        [GEOAPPortal captureUserAction:2158 target:669 value:0];
      }
    }

    else
    {
      [(VLFSessionAnalyticsTracker *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6, v18.receiver, v18.super_class, self, VLFSessionAnalyticsTracker];
    }
  }

  else
  {
    [(VLFSessionAnalyticsTracker *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6, self, VLFSessionAnalyticsTracker, v19.receiver, v19.super_class];
  }
}

- (void)VLFSessionDidStopNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([v7 wasLastLocalizationSuccessful])
    {
      [GEOAPPortal captureUserAction:2161 target:669 value:0];
      [(VLFSessionAnalyticsTracker *)self setHasVLFLocalizedRecently:1];
      GEOConfigGetDouble();
      v9 = v8;
      v10 = sub_100CFBB1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v21 = *&v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "VLF localization succeeded; starting freshness timeout timer with duration: %f", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v11 = &_dispatch_main_q;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100CFBB70;
      v18[3] = &unk_1016616E8;
      objc_copyWeak(&v19, buf);
      v12 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v18 block:v9];
      [(VLFSessionAnalyticsTracker *)self setVlfLocalizationFreshnessTimer:v12];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v21 = "[VLFSessionAnalyticsTracker VLFSessionDidStopNotification:]";
      v22 = 2080;
      v23 = "VLFSessionAnalyticsTracker.m";
      v24 = 1024;
      v25 = 77;
      v26 = 2080;
      v27 = "session != nil";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
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

    v16 = sub_100CFBB1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v4 object];
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "VLFSessionDidStopNotification object was not a VLFSession: %@", buf, 0xCu);
    }
  }
}

- (void)dealloc
{
  v3 = +[VLFSessionUsageTracker sharedInstance];
  [v3 removeObserver:self forKeyPath:@"numberOfCalloutDismissals"];

  v4.receiver = self;
  v4.super_class = VLFSessionAnalyticsTracker;
  [(VLFSessionAnalyticsTracker *)&v4 dealloc];
}

- (VLFSessionAnalyticsTracker)init
{
  v7.receiver = self;
  v7.super_class = VLFSessionAnalyticsTracker;
  v2 = [(VLFSessionAnalyticsTracker *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"VLFSessionDidStartNotification:" name:@"VLFSessionDidStartNotification" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"VLFSessionDidStopNotification:" name:@"VLFSessionDidStopNotification" object:0];

    v5 = +[VLFSessionUsageTracker sharedInstance];
    [v5 addObserver:v2 forKeyPath:@"numberOfCalloutDismissals" options:3 context:0];
  }

  return v2;
}

@end