@interface NTKTimerBundleComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (double)_fallbackDurationWithComplicationDuration:(double)result;
+ (id)_unknownEntryForDevice:(id)device complicationDuration:(double)duration;
- (Class)richComplicationDisplayViewClassForDevice:(id)device;
- (NTKTimerBundleComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_currentTimelineEntry;
- (id)currentSwitcherTemplate;
- (void)_handleLocaleChange;
- (void)_handleTimeFormatChange;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_timerDidChange:(id)change;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKTimerBundleComplicationDataSource

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor family:(int64_t)family completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
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
      if (descriptorCopy)
      {
        userInfo = [descriptorCopy userInfo];

        if (userInfo)
        {
          userInfo2 = [descriptorCopy userInfo];
          userInfo = [userInfo2 objectForKey:@"Duration"];
        }
      }

      else
      {
        userInfo = 0;
      }

      [v13 setValue:userInfo forKey:@"duration"];
      v18 = INIntentWithTypedIntent();
      v19 = [CLKWidgetComplicationDescriptor alloc];
      v20 = [v19 initWithExtensionBundleIdentifier:@"com.apple.private.NanoTimer.NanoTimerWidgetExtension" containerBundleIdentifier:@"com.apple.private.NanoTimer" kind:MTWatchTimerWidgetKind intent:v18];
      completionCopy[2](completionCopy, v20);
    }

    else
    {
      v17 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_6A60(v17);
      }

      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v16 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_6AA4(v10, v16);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (NTKTimerBundleComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v16.receiver = self;
  v16.super_class = NTKTimerBundleComplicationDataSource;
  v5 = [(NTKTimerBundleComplicationDataSource *)&v16 initWithComplication:complication family:family forDevice:device];
  v6 = v5;
  if (v5)
  {
    complicationDescriptor = [(NTKTimerBundleComplicationDataSource *)v5 complicationDescriptor];
    v8 = complicationDescriptor;
    if (complicationDescriptor)
    {
      userInfo = [complicationDescriptor userInfo];

      if (userInfo)
      {
        userInfo2 = [v8 userInfo];
        v11 = [userInfo2 objectForKey:@"Duration"];

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

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  if (family <= 4 && ((1 << family) & 0x13) != 0)
  {
    return 1;
  }

  result = 1;
  if (family != 12 && (family & 0xFFFFFFFFFFFFFFFCLL) != 8 && (family & 0xFFFFFFFFFFFFFFFALL) != 2 && CLKComplicationFamilyCircularMedium != family)
  {
    return CLKComplicationFamilySimpleText == family;
  }

  return result;
}

- (id)currentSwitcherTemplate
{
  if (self->_complicationDuration == 0.0)
  {
    v3 = [NTKTimerBundleTimelineEntry alloc];
    device = [(NTKTimerBundleComplicationDataSource *)self device];
    _currentTimelineEntry = [(NTKTimerBundleTimelineEntry *)v3 initWithDevice:device];

    v6 = +[NTKDate unmodifiedDate];
    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry setEntryDate:v6];

    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry setNumRunningTimers:0];
    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry setNumPausedTimers:0];
    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry setIsDefaultComplication:1];
    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry setCountdownDuration:900.0];
    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry countdownDuration];
    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry setRemainingTime:?];
    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry setTitle:0];
    [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry setState:1];
    v7 = [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry entryForComplicationFamily:[(NTKTimerBundleComplicationDataSource *)self family]];
    complicationTemplate = [v7 complicationTemplate];
  }

  else
  {
    _currentTimelineEntry = [(NTKTimerBundleComplicationDataSource *)self _currentTimelineEntry];
    complicationTemplate = [(NTKTimerBundleTimelineEntry *)_currentTimelineEntry complicationTemplate];
  }

  return complicationTemplate;
}

- (id)_currentTimelineEntry
{
  v3 = self->_currentTimerEntry;
  if (!v3)
  {
    v4 = objc_opt_class();
    device = [(NTKTimerBundleComplicationDataSource *)self device];
    v3 = [v4 _unknownEntryForDevice:device complicationDuration:self->_complicationDuration];
  }

  v6 = [(NTKTimerBundleTimelineEntry *)v3 entryForComplicationFamily:[(NTKTimerBundleComplicationDataSource *)self family]];

  return v6;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  device = [(NTKTimerBundleComplicationDataSource *)self device];
  family = [(NTKTimerBundleComplicationDataSource *)self family];
  complicationDuration = self->_complicationDuration;
  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_3230;
  v16 = &unk_C538;
  objc_copyWeak(v19, &location);
  v8 = device;
  v17 = v8;
  v19[1] = *&complicationDuration;
  v9 = handlerCopy;
  v18 = v9;
  v19[2] = family;
  v10 = objc_retainBlock(&v13);
  v11 = [(MTTimerManager *)self->_timerManager timers:v13];
  v12 = [v11 addCompletionBlock:v10];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (Class)richComplicationDisplayViewClassForDevice:(id)device
{
  family = [(NTKTimerBundleComplicationDataSource *)self family];
  if ((family - 9) > 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_C558[(family - 9)];
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

+ (id)_unknownEntryForDevice:(id)device complicationDuration:(double)duration
{
  deviceCopy = device;
  v6 = [[NTKTimerBundleTimelineEntry alloc] initWithDevice:deviceCopy];

  v7 = +[NTKDate unmodifiedDate];
  [(NTKTimerBundleTimelineEntry *)v6 setEntryDate:v7];

  [(NTKTimerBundleTimelineEntry *)v6 setNumRunningTimers:0];
  [(NTKTimerBundleTimelineEntry *)v6 setNumPausedTimers:0];
  [(NTKTimerBundleTimelineEntry *)v6 setIsDefaultComplication:duration == 0.0];
  [NTKTimerBundleComplicationDataSource _fallbackDurationWithComplicationDuration:duration];
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
    delegate = [(NTKTimerBundleComplicationDataSource *)self delegate];
    [delegate invalidateEntries];
  }
}

- (void)_stopObserving
{
  self->_listeningForNotifications = 0;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_timerDidChange:(id)change
{
  changeCopy = change;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    name = [changeCopy name];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ Received %@ notification", &v10, 0x16u);
  }

  delegate = [(NTKTimerBundleComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
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

  delegate = [(NTKTimerBundleComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
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

  delegate = [(NTKTimerBundleComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
}

@end