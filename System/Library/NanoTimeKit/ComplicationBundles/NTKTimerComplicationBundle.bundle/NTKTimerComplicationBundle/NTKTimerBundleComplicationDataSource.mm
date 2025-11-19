@interface NTKTimerBundleComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (double)_fallbackDurationWithComplicationDuration:(double)result;
+ (id)_unknownEntryForDevice:(id)a3 complicationDuration:(double)a4;
- (Class)richComplicationDisplayViewClassForDevice:(id)a3;
- (NTKTimerBundleComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)_handleLocaleChange;
- (void)_handleTimeFormatChange;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_timerDidChange:(id)a3;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation NTKTimerBundleComplicationDataSource

- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = +[NTKBundleLoader rootDirectory];
  v9 = [v8 stringByAppendingString:@"/System/Library/PrivateFrameworks/TimeAppServices.framework"];
  v10 = [NSURL fileURLWithPath:v9];

  v11 = [NSBundle bundleWithURL:v10];
  if (v11)
  {
    v12 = [INSchema _defaultSchemaForBundle:v11];
    v13 = [v12 intentWithName:@"ConfigurationIntent"];
    if (v13)
    {
      if (v6)
      {
        v14 = [v6 userInfo];

        if (v14)
        {
          v15 = [v6 userInfo];
          v14 = [v15 objectForKey:@"Duration"];
        }
      }

      else
      {
        v14 = 0;
      }

      [v13 setValue:v14 forKey:@"duration"];
      v18 = INIntentWithTypedIntent();
      v19 = [CLKWidgetComplicationDescriptor alloc];
      v20 = [v19 initWithExtensionBundleIdentifier:@"com.apple.private.NanoTimer.NanoTimerWidgetExtension" containerBundleIdentifier:@"com.apple.private.NanoTimer" kind:MTWatchTimerWidgetKind intent:v18];
      v7[2](v7, v20);
    }

    else
    {
      v17 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_6A60(v17);
      }

      v7[2](v7, 0);
    }
  }

  else
  {
    v16 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_6AA4(v10, v16);
    }

    v7[2](v7, 0);
  }
}

- (NTKTimerBundleComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v16.receiver = self;
  v16.super_class = NTKTimerBundleComplicationDataSource;
  v5 = [(NTKTimerBundleComplicationDataSource *)&v16 initWithComplication:a3 family:a4 forDevice:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(NTKTimerBundleComplicationDataSource *)v5 complicationDescriptor];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 userInfo];

      if (v9)
      {
        v10 = [v8 userInfo];
        v11 = [v10 objectForKey:@"Duration"];

        if (v11)
        {
          [v11 doubleValue];
        }

        else
        {
          v12 = 0.0;
        }

        v6->_complicationDuration = v12;
      }
    }

    v13 = objc_alloc_init(MTTimerManager);
    timerManager = v6->_timerManager;
    v6->_timerManager = v13;

    [(NTKTimerBundleComplicationDataSource *)v6 _startObserving];
  }

  return v6;
}

- (void)dealloc
{
  [(NTKTimerBundleComplicationDataSource *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = NTKTimerBundleComplicationDataSource;
  [(NTKTimerBundleComplicationDataSource *)&v3 dealloc];
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  if (a3 <= 4 && ((1 << a3) & 0x13) != 0)
  {
    return 1;
  }

  result = 1;
  if (a3 != 12 && (a3 & 0xFFFFFFFFFFFFFFFCLL) != 8 && (a3 & 0xFFFFFFFFFFFFFFFALL) != 2 && CLKComplicationFamilyCircularMedium != a3)
  {
    return CLKComplicationFamilySimpleText == a3;
  }

  return result;
}

- (id)currentSwitcherTemplate
{
  if (self->_complicationDuration == 0.0)
  {
    v3 = [NTKTimerBundleTimelineEntry alloc];
    v4 = [(NTKTimerBundleComplicationDataSource *)self device];
    v5 = [(NTKTimerBundleTimelineEntry *)v3 initWithDevice:v4];

    v6 = +[NTKDate unmodifiedDate];
    [(NTKTimerBundleTimelineEntry *)v5 setEntryDate:v6];

    [(NTKTimerBundleTimelineEntry *)v5 setNumRunningTimers:0];
    [(NTKTimerBundleTimelineEntry *)v5 setNumPausedTimers:0];
    [(NTKTimerBundleTimelineEntry *)v5 setIsDefaultComplication:1];
    [(NTKTimerBundleTimelineEntry *)v5 setCountdownDuration:900.0];
    [(NTKTimerBundleTimelineEntry *)v5 countdownDuration];
    [(NTKTimerBundleTimelineEntry *)v5 setRemainingTime:?];
    [(NTKTimerBundleTimelineEntry *)v5 setTitle:0];
    [(NTKTimerBundleTimelineEntry *)v5 setState:1];
    v7 = [(NTKTimerBundleTimelineEntry *)v5 entryForComplicationFamily:[(NTKTimerBundleComplicationDataSource *)self family]];
    v8 = [v7 complicationTemplate];
  }

  else
  {
    v5 = [(NTKTimerBundleComplicationDataSource *)self _currentTimelineEntry];
    v8 = [(NTKTimerBundleTimelineEntry *)v5 complicationTemplate];
  }

  return v8;
}

- (id)_currentTimelineEntry
{
  v3 = self->_currentTimerEntry;
  if (!v3)
  {
    v4 = objc_opt_class();
    v5 = [(NTKTimerBundleComplicationDataSource *)self device];
    v3 = [v4 _unknownEntryForDevice:v5 complicationDuration:self->_complicationDuration];
  }

  v6 = [(NTKTimerBundleTimelineEntry *)v3 entryForComplicationFamily:[(NTKTimerBundleComplicationDataSource *)self family]];

  return v6;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(NTKTimerBundleComplicationDataSource *)self device];
  v6 = [(NTKTimerBundleComplicationDataSource *)self family];
  complicationDuration = self->_complicationDuration;
  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_3230;
  v16 = &unk_C538;
  objc_copyWeak(v19, &location);
  v8 = v5;
  v17 = v8;
  v19[1] = *&complicationDuration;
  v9 = v4;
  v18 = v9;
  v19[2] = v6;
  v10 = objc_retainBlock(&v13);
  v11 = [(MTTimerManager *)self->_timerManager timers:v13];
  v12 = [v11 addCompletionBlock:v10];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (Class)richComplicationDisplayViewClassForDevice:(id)a3
{
  v3 = [(NTKTimerBundleComplicationDataSource *)self family];
  if ((v3 - 9) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_C558[(v3 - 9)];
    v5 = objc_opt_class();
  }

  return v5;
}

+ (double)_fallbackDurationWithComplicationDuration:(double)result
{
  if (result == 0.0)
  {
    return 900.0;
  }

  return result;
}

+ (id)_unknownEntryForDevice:(id)a3 complicationDuration:(double)a4
{
  v5 = a3;
  v6 = [[NTKTimerBundleTimelineEntry alloc] initWithDevice:v5];

  v7 = +[NTKDate unmodifiedDate];
  [(NTKTimerBundleTimelineEntry *)v6 setEntryDate:v7];

  [(NTKTimerBundleTimelineEntry *)v6 setNumRunningTimers:0];
  [(NTKTimerBundleTimelineEntry *)v6 setNumPausedTimers:0];
  [(NTKTimerBundleTimelineEntry *)v6 setIsDefaultComplication:a4 == 0.0];
  [NTKTimerBundleComplicationDataSource _fallbackDurationWithComplicationDuration:a4];
  [(NTKTimerBundleTimelineEntry *)v6 setCountdownDuration:?];
  [(NTKTimerBundleTimelineEntry *)v6 countdownDuration];
  [(NTKTimerBundleTimelineEntry *)v6 setRemainingTime:?];
  [(NTKTimerBundleTimelineEntry *)v6 setTitle:0];
  [(NTKTimerBundleTimelineEntry *)v6 setState:1];

  return v6;
}

- (void)_startObserving
{
  if (!self->_listeningForNotifications)
  {
    self->_listeningForNotifications = 1;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_timerDidChange:" name:MTTimerManagerNextTimerChanged object:self->_timerManager];
    [v5 addObserver:self selector:"_timerDidChange:" name:MTTimerManagerTimersChanged object:self->_timerManager];
    [v5 addObserver:self selector:"_timerDidChange:" name:MTTimerManagerStateReset object:self->_timerManager];
    [v5 addObserver:self selector:"_handleLocaleChange" name:NSCurrentLocaleDidChangeNotification object:0];
    [v5 addObserver:self selector:"_handleTimeFormatChange" name:CLKFormatTimeIntervalCacheInvalidateNotification object:0];
    v4 = [(NTKTimerBundleComplicationDataSource *)self delegate];
    [v4 invalidateEntries];
  }
}

- (void)_stopObserving
{
  self->_listeningForNotifications = 0;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_timerDidChange:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 name];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ Received %@ notification", &v10, 0x16u);
  }

  v9 = [(NTKTimerBundleComplicationDataSource *)self delegate];
  [v9 invalidateEntries];
}

- (void)_handleLocaleChange
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%@ Received NSCurrentLocaleDidChangeNotification notification", &v7, 0xCu);
  }

  v6 = [(NTKTimerBundleComplicationDataSource *)self delegate];
  [v6 invalidateEntries];
}

- (void)_handleTimeFormatChange
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%@ Received CLKFormatTimeIntervalCacheInvalidateNotification notification", &v7, 0xCu);
  }

  v6 = [(NTKTimerBundleComplicationDataSource *)self delegate];
  [v6 invalidateEntries];
}

@end