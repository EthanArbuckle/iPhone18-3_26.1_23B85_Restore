@interface VIOSessionDailyUsageMonitor
- (BOOL)shouldDisableVIOSession;
- (NSString)description;
- (VIOSessionDailyUsageMonitor)initWithStateManager:(id)manager platformController:(id)controller;
- (void)calendarDayChangedNotification:(id)notification;
- (void)dealloc;
- (void)session:(id)session didChangeState:(unint64_t)state;
- (void)startUsageLimitTimer;
- (void)stopUsageLimitTimer;
@end

@implementation VIOSessionDailyUsageMonitor

- (void)session:(id)session didChangeState:(unint64_t)state
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF8778;
  block[3] = &unk_10165FBC0;
  v6[1] = state;
  objc_copyWeak(v6, &location);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (void)calendarDayChangedNotification:(id)notification
{
  notificationCopy = notification;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label == v6 || (label ? (v7 = v6 == 0) : (v7 = 1), !v7 && !strcmp(label, v6)))
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 136316162;
      *&location[4] = "[VIOSessionDailyUsageMonitor calendarDayChangedNotification:]";
      v14 = 2080;
      v15 = "VIOSessionDailyUsageMonitor.m";
      v16 = 1024;
      v17 = 141;
      v18 = 2080;
      v19 = "dispatch_get_main_queue()";
      v20 = 2080;
      v21 = dispatch_queue_get_label(&_dispatch_main_q);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion not on queue failed: %s/%s", location, 0x30u);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  objc_initWeak(location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF8A18;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v12, location);
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

- (void)stopUsageLimitTimer
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v30 = sub_10006D178();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v33 = 136316418;
        v34 = "[VIOSessionDailyUsageMonitor stopUsageLimitTimer]";
        v35 = 2080;
        v36 = "VIOSessionDailyUsageMonitor.m";
        v37 = 1024;
        v38 = 125;
        v39 = 2080;
        v40 = "dispatch_get_main_queue()";
        v41 = 2080;
        v42 = dispatch_queue_get_label(&_dispatch_main_q);
        v43 = 2080;
        v44 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v33, 0x3Au);
      }

      if (sub_100E03634())
      {
        v31 = sub_10006D178();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = +[NSThread callStackSymbols];
          v33 = 138412290;
          v34 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", &v33, 0xCu);
        }
      }
    }
  }

  [(VIOSessionDailyUsageMonitor *)self setUsageLimitTimer:0];
  currentEntry = [(VIOSessionDailyUsageMonitor *)self currentEntry];
  lastStartDate = [currentEntry lastStartDate];

  if (lastStartDate)
  {
    currentEntry2 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    v9 = +[NSDate date];
    currentEntry3 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    lastStartDate2 = [currentEntry3 lastStartDate];
    [v9 timeIntervalSinceDate:lastStartDate2];
    v13 = v12;
    currentEntry4 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    [currentEntry4 timeMultiplier];
    v16 = v15;
    [currentEntry2 currentUsage];
    [currentEntry2 setCurrentUsage:v17 + v16 * v13];

    currentEntry5 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    [currentEntry5 currentUsage];
    v19 = 0.0;
    if (v20 > 0.0)
    {
      currentEntry6 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
      [currentEntry6 currentUsage];
      v19 = v22;
    }

    currentEntry7 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    [currentEntry7 dailyUsageLimit];
    if (v19 >= v24)
    {
      currentEntry8 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
      [currentEntry8 dailyUsageLimit];
      v19 = v26;
    }

    currentEntry9 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    [currentEntry9 setCurrentUsage:v19];

    currentEntry10 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    [currentEntry10 setLastStartDate:0];

    currentEntry11 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    [currentEntry11 save];
  }
}

- (void)startUsageLimitTimer
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *location = 136316418;
        *&location[4] = "[VIOSessionDailyUsageMonitor startUsageLimitTimer]";
        v28 = 2080;
        v29 = "VIOSessionDailyUsageMonitor.m";
        v30 = 1024;
        v31 = 97;
        v32 = 2080;
        v33 = "dispatch_get_main_queue()";
        v34 = 2080;
        v35 = dispatch_queue_get_label(&_dispatch_main_q);
        v36 = 2080;
        v37 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", location, 0x3Au);
      }

      if (sub_100E03634())
      {
        v23 = sub_10006D178();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = +[NSThread callStackSymbols];
          *location = 138412290;
          *&location[4] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
        }
      }
    }
  }

  session = [(VIOSessionMonitor *)self session];
  isVIORunning = [session isVIORunning];
  currentEntry = [(VIOSessionDailyUsageMonitor *)self currentEntry];
  [currentEntry setIsRunningVIO:isVIORunning];

  currentEntry2 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
  [currentEntry2 timeRemaining];
  v11 = v10;
  currentEntry3 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
  [currentEntry3 timeMultiplier];
  v14 = v13;

  v15 = v11 / v14;
  if (v15 <= 0.0)
  {
    v20 = sub_100BF8B74();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *location = 134349056;
      *&location[4] = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] Daily usage limit reached; disabling VIO session for the rest of the day", location, 0xCu);
    }

    stateManager = [(VIOSessionMonitor *)self stateManager];
    [stateManager recordSessionDisableEvent:2];
  }

  else
  {
    v16 = +[NSDate date];
    currentEntry4 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    [currentEntry4 setLastStartDate:v16];

    currentEntry5 = [(VIOSessionDailyUsageMonitor *)self currentEntry];
    [currentEntry5 save];

    objc_initWeak(location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100BF9350;
    v25[3] = &unk_1016616E8;
    objc_copyWeak(&v26, location);
    v19 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v25 block:v15];
    [(VIOSessionDailyUsageMonitor *)self setUsageLimitTimer:v19];

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }
}

- (BOOL)shouldDisableVIOSession
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136316418;
        v14 = "[VIOSessionDailyUsageMonitor shouldDisableVIOSession]";
        v15 = 2080;
        v16 = "VIOSessionDailyUsageMonitor.m";
        v17 = 1024;
        v18 = 88;
        v19 = 2080;
        v20 = "dispatch_get_main_queue()";
        v21 = 2080;
        v22 = dispatch_queue_get_label(&_dispatch_main_q);
        v23 = 2080;
        v24 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v13, 0x3Au);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
        }
      }
    }
  }

  currentEntry = [(VIOSessionDailyUsageMonitor *)self currentEntry];
  [currentEntry timeRemaining];
  v8 = v7 == 0.0;

  return v8;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  currentEntry = [(VIOSessionDailyUsageMonitor *)self currentEntry];
  v6 = [NSString stringWithFormat:@"<%@ %p currentEntry: %@>", v4, self, currentEntry];

  return v6;
}

- (void)dealloc
{
  v3 = sub_100BF8B74();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 134349314;
    selfCopy = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling %@", buf, 0x16u);
  }

  session = [(VIOSessionMonitor *)self session];
  [session _removeObserver:self];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  [(VIOSessionDailyUsageMonitor *)self stopUsageLimitTimer];
  v8.receiver = self;
  v8.super_class = VIOSessionDailyUsageMonitor;
  [(VIOSessionDailyUsageMonitor *)&v8 dealloc];
}

- (VIOSessionDailyUsageMonitor)initWithStateManager:(id)manager platformController:(id)controller
{
  v21.receiver = self;
  v21.super_class = VIOSessionDailyUsageMonitor;
  v4 = [(VIOSessionMonitor *)&v21 initWithStateManager:manager platformController:controller];
  if (v4)
  {
    v5 = sub_100BF8B74();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 134349314;
      v23 = v4;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    v8 = +[VIOSessionDailyUsageEntry loadOrCreateEntry];
    currentEntry = v4->_currentEntry;
    v4->_currentEntry = v8;

    v10 = sub_100BF8B74();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v4->_currentEntry;
      *buf = 134349314;
      v23 = v4;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Loaded current entry: %@", buf, 0x16u);
    }

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v4 selector:"calendarDayChangedNotification:" name:NSCalendarDayChangedNotification object:0];

    session = [(VIOSessionMonitor *)v4 session];
    [session _addObserver:v4];

    session2 = [(VIOSessionMonitor *)v4 session];
    state = [session2 state];

    if (state == 1)
    {
      [(VIOSessionDailyUsageMonitor *)v4 startUsageLimitTimer];
    }

    else
    {
      currentEntry = [(VIOSessionDailyUsageMonitor *)v4 currentEntry];
      [currentEntry timeRemaining];
      v18 = v17;

      if (v18 == 0.0)
      {
        stateManager = [(VIOSessionMonitor *)v4 stateManager];
        [stateManager recordSessionDisableEvent:2];
      }
    }
  }

  return v4;
}

@end