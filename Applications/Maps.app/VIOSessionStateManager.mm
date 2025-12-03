@interface VIOSessionStateManager
- (ARSession)session;
- (BOOL)isDisabled;
- (BOOL)isThrottling;
- (BOOL)isThrottlingOrDisabled;
- (NSSet)disableEventReasons;
- (VIOSessionStateManager)initWithSession:(id)session configuration:(id)configuration;
- (double)remainingThrottleTime;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)disableSession;
- (void)recordSessionDisableEvent:(int64_t)event;
- (void)recordStateEnteredThrottleEvent:(int64_t)event;
- (void)removeObserver:(id)observer;
- (void)resetSessionDisableEvent:(int64_t)event;
- (void)resetStateEnteredThrottleEvent:(int64_t)event;
- (void)resumeSession;
- (void)throttleSessionWithEventReason:(int64_t)reason;
@end

@implementation VIOSessionStateManager

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)resumeSession
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316418;
        selfCopy = "[VIOSessionStateManager resumeSession]";
        v16 = 2080;
        v17 = "VIOSessionStateManager.m";
        v18 = 1024;
        v19 = 248;
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
          selfCopy = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }
    }
  }

  v6 = sub_100C75F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Resuming VIO session", &v14, 0xCu);
  }

  [(VIOSessionStateManager *)self setSessionRestartTimer:0];
  session = [(VIOSessionStateManager *)self session];
  configuration = [(VIOSessionStateManager *)self configuration];
  [session runWithConfiguration:configuration];

  session2 = [(VIOSessionStateManager *)self session];
  technique = [session2 technique];
  [technique setVioThrottled:0];
}

- (void)disableSession
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
        selfCopy = "[VIOSessionStateManager disableSession]";
        v15 = 2080;
        v16 = "VIOSessionStateManager.m";
        v17 = 1024;
        v18 = 236;
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
          selfCopy = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
        }
      }
    }
  }

  v6 = sub_100C75F08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    disableEventReasons = [(VIOSessionStateManager *)self disableEventReasons];
    v13 = 134349314;
    selfCopy = self;
    v15 = 2112;
    v16 = disableEventReasons;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Disabling VIO session with event reasons: %@", &v13, 0x16u);
  }

  stateEnteredThrottleEventTimers = [(VIOSessionStateManager *)self stateEnteredThrottleEventTimers];
  [stateEnteredThrottleEventTimers removeAllObjects];

  [(VIOSessionStateManager *)self setSessionRestartTimer:0];
  session = [(VIOSessionStateManager *)self session];
  [session pause];
}

- (void)throttleSessionWithEventReason:(int64_t)reason
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        selfCopy2 = "[VIOSessionStateManager throttleSessionWithEventReason:]";
        v26 = 2080;
        v27 = "VIOSessionStateManager.m";
        v28 = 1024;
        v29 = 210;
        v30 = 2080;
        v31 = "dispatch_get_main_queue()";
        v32 = 2080;
        v33 = dispatch_queue_get_label(&_dispatch_main_q);
        v34 = 2080;
        v35 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v20 = sub_10006D178();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = +[NSThread callStackSymbols];
          *buf = 138412290;
          selfCopy2 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v8 = sub_100C75F08();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"VIOSessionThrottleEventDeviceMotion";
    if (!reason)
    {
      v9 = @"VIOSessionThrottleEventARTrackingState";
    }

    *buf = 134349314;
    selfCopy2 = self;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Pausing VIO session with event reason: %@", buf, 0x16u);
  }

  [(VIOSessionStateManager *)self setThrottleEventReason:reason];
  stateEnteredThrottleEventTimers = [(VIOSessionStateManager *)self stateEnteredThrottleEventTimers];
  [stateEnteredThrottleEventTimers removeAllObjects];

  session = [(VIOSessionStateManager *)self session];
  technique = [session technique];
  [technique setVioThrottled:1];

  session2 = [(VIOSessionStateManager *)self session];
  [session2 pause];

  GEOConfigGetDouble();
  v15 = v14;
  v16 = sub_100C75F08();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy2 = self;
    v26 = 2048;
    v27 = *&v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Starting retry timer with interval: %f", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C76630;
  v22[3] = &unk_1016616E8;
  objc_copyWeak(&v23, buf);
  v17 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v22 block:v15];
  [(VIOSessionStateManager *)self setSessionRestartTimer:v17];

  observers = [(VIOSessionStateManager *)self observers];
  [observers throttleDidBeginWithEvent:reason];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (BOOL)isThrottlingOrDisabled
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 136316418;
        v11 = "[VIOSessionStateManager isThrottlingOrDisabled]";
        v12 = 2080;
        v13 = "VIOSessionStateManager.m";
        v14 = 1024;
        v15 = 203;
        v16 = 2080;
        v17 = "dispatch_get_main_queue()";
        v18 = 2080;
        v19 = dispatch_queue_get_label(&_dispatch_main_q);
        v20 = 2080;
        v21 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v10, 0x3Au);
      }

      if (sub_100E03634())
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = +[NSThread callStackSymbols];
          v10 = 138412290;
          v11 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
        }
      }
    }
  }

  if ([(VIOSessionStateManager *)self isThrottling])
  {
    return 1;
  }

  else
  {
    return [(VIOSessionStateManager *)self isDisabled];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VIOSessionStateManager removeObserver:]";
        v14 = 2080;
        v15 = "VIOSessionStateManager.m";
        v16 = 1024;
        v17 = 194;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  observers = [(VIOSessionStateManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VIOSessionStateManager addObserver:]";
        v14 = 2080;
        v15 = "VIOSessionStateManager.m";
        v16 = 1024;
        v17 = 187;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  observers = [(VIOSessionStateManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (NSSet)disableEventReasons
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VIOSessionStateManager disableEventReasons]";
        v14 = 2080;
        v15 = "VIOSessionStateManager.m";
        v16 = 1024;
        v17 = 180;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  activeDisableEvents = [(VIOSessionStateManager *)self activeDisableEvents];
  v7 = [activeDisableEvents copy];

  return v7;
}

- (BOOL)isDisabled
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VIOSessionStateManager isDisabled]";
        v14 = 2080;
        v15 = "VIOSessionStateManager.m";
        v16 = 1024;
        v17 = 173;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  activeDisableEvents = [(VIOSessionStateManager *)self activeDisableEvents];
  v7 = [activeDisableEvents count] != 0;

  return v7;
}

- (double)remainingThrottleTime
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316418;
        v15 = "[VIOSessionStateManager remainingThrottleTime]";
        v16 = 2080;
        v17 = "VIOSessionStateManager.m";
        v18 = 1024;
        v19 = 166;
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

  sessionRestartTimer = [(VIOSessionStateManager *)self sessionRestartTimer];
  fireDate = [sessionRestartTimer fireDate];
  [fireDate timeIntervalSinceNow];
  v9 = v8;

  return v9;
}

- (BOOL)isThrottling
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = "[VIOSessionStateManager isThrottling]";
        v14 = 2080;
        v15 = "VIOSessionStateManager.m";
        v16 = 1024;
        v17 = 159;
        v18 = 2080;
        v19 = "dispatch_get_main_queue()";
        v20 = 2080;
        v21 = dispatch_queue_get_label(&_dispatch_main_q);
        v22 = 2080;
        v23 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v12, 0x3Au);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }
  }

  sessionRestartTimer = [(VIOSessionStateManager *)self sessionRestartTimer];
  v7 = sessionRestartTimer != 0;

  return v7;
}

- (void)resetSessionDisableEvent:(int64_t)event
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = 136316418;
        selfCopy2 = "[VIOSessionStateManager resetSessionDisableEvent:]";
        v27 = 2080;
        v28 = "VIOSessionStateManager.m";
        v29 = 1024;
        v30 = 137;
        v31 = 2080;
        v32 = "dispatch_get_main_queue()";
        v33 = 2080;
        v34 = dispatch_queue_get_label(&_dispatch_main_q);
        v35 = 2080;
        v36 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v25, 0x3Au);
      }

      if (sub_100E03634())
      {
        v23 = sub_10006D178();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = +[NSThread callStackSymbols];
          v25 = 138412290;
          selfCopy2 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
        }
      }
    }
  }

  activeDisableEvents = [(VIOSessionStateManager *)self activeDisableEvents];
  v9 = [NSNumber numberWithInteger:event];
  v10 = [activeDisableEvents containsObject:v9];

  if (v10)
  {
    activeDisableEvents2 = [(VIOSessionStateManager *)self activeDisableEvents];
    v12 = [activeDisableEvents2 count];

    activeDisableEvents3 = [(VIOSessionStateManager *)self activeDisableEvents];
    v14 = [NSNumber numberWithInteger:event];
    [activeDisableEvents3 removeObject:v14];

    activeDisableEvents4 = [(VIOSessionStateManager *)self activeDisableEvents];
    v16 = [activeDisableEvents4 count];

    v17 = sub_100C75F08();
    v18 = v17;
    if (v16 || !v12)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        if ((event - 1) > 9)
        {
          v20 = @"VIOSessionDisableEventLowPowerMode";
        }

        else
        {
          v20 = off_10164F638[event - 1];
        }

        v25 = 134349314;
        selfCopy2 = self;
        v27 = 2112;
        v28 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] Resetting disable event of type %@", &v25, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        if ((event - 1) > 9)
        {
          v19 = @"VIOSessionDisableEventLowPowerMode";
        }

        else
        {
          v19 = off_10164F638[event - 1];
        }

        v25 = 134349314;
        selfCopy2 = self;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Resetting the last disable event after type %@", &v25, 0x16u);
      }

      [(VIOSessionStateManager *)self resumeSession];
    }

    observers = [(VIOSessionStateManager *)self observers];
    [observers disableEventReset:event];
  }
}

- (void)recordSessionDisableEvent:(int64_t)event
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v26 = 136316418;
        *&v26[4] = "[VIOSessionStateManager recordSessionDisableEvent:]";
        *&v26[12] = 2080;
        *&v26[14] = "VIOSessionStateManager.m";
        *&v26[22] = 1024;
        v27 = 117;
        v28 = 2080;
        v29 = "dispatch_get_main_queue()";
        v30 = 2080;
        v31 = dispatch_queue_get_label(&_dispatch_main_q);
        v32 = 2080;
        v33 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", v26, 0x3Au);
      }

      if (sub_100E03634())
      {
        v24 = sub_10006D178();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = +[NSThread callStackSymbols];
          *v26 = 138412290;
          *&v26[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", v26, 0xCu);
        }
      }
    }
  }

  activeDisableEvents = [(VIOSessionStateManager *)self activeDisableEvents];
  v9 = [NSNumber numberWithInteger:event];
  v10 = [activeDisableEvents containsObject:v9];

  v11 = sub_100C75F08();
  v12 = v11;
  if (v10)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    if ((event - 1) > 9)
    {
      v13 = @"VIOSessionDisableEventLowPowerMode";
    }

    else
    {
      v13 = off_10164F638[event - 1];
    }

    *v26 = 134349314;
    *&v26[4] = self;
    *&v26[12] = 2112;
    *&v26[14] = v13;
    v15 = "[%{public}p] Recording another disable event of type %@";
    v16 = v12;
    v17 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    if ((event - 1) > 9)
    {
      v14 = @"VIOSessionDisableEventLowPowerMode";
    }

    else
    {
      v14 = off_10164F638[event - 1];
    }

    *v26 = 134349314;
    *&v26[4] = self;
    *&v26[12] = 2112;
    *&v26[14] = v14;
    v15 = "[%{public}p] Recording the first disable event of type %@";
    v16 = v12;
    v17 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&_mh_execute_header, v16, v17, v15, v26, 0x16u);
LABEL_19:

  activeDisableEvents2 = [(VIOSessionStateManager *)self activeDisableEvents];
  v19 = [activeDisableEvents2 count];

  activeDisableEvents3 = [(VIOSessionStateManager *)self activeDisableEvents];
  v21 = [NSNumber numberWithInteger:event];
  [activeDisableEvents3 addObject:v21];

  if (!v19)
  {
    [(VIOSessionStateManager *)self disableSession];
  }

  v22 = [(VIOSessionStateManager *)self observers:*v26];
  [v22 disableEventReceived:event];
}

- (void)resetStateEnteredThrottleEvent:(int64_t)event
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136316418;
        selfCopy = "[VIOSessionStateManager resetStateEnteredThrottleEvent:]";
        v20 = 2080;
        v21 = "VIOSessionStateManager.m";
        v22 = 1024;
        v23 = 102;
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
          selfCopy = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }
  }

  if (![(VIOSessionStateManager *)self isThrottlingOrDisabled])
  {
    stateEnteredThrottleEventTimers = [(VIOSessionStateManager *)self stateEnteredThrottleEventTimers];
    v9 = [NSNumber numberWithInteger:event];
    v10 = [stateEnteredThrottleEventTimers objectForKey:v9];

    if (v10)
    {
      v11 = sub_100C75F08();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"VIOSessionThrottleEventDeviceMotion";
        if (!event)
        {
          v12 = @"VIOSessionThrottleEventARTrackingState";
        }

        v18 = 134349314;
        selfCopy = self;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Resetting consecutive throttle event timeout timer for event of type %@", &v18, 0x16u);
      }

      stateEnteredThrottleEventTimers2 = [(VIOSessionStateManager *)self stateEnteredThrottleEventTimers];
      v14 = [NSNumber numberWithInteger:event];
      [stateEnteredThrottleEventTimers2 removeObjectForKey:v14];
    }
  }
}

- (void)recordStateEnteredThrottleEvent:(int64_t)event
{
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
        *buf = 136316418;
        selfCopy2 = "[VIOSessionStateManager recordStateEnteredThrottleEvent:]";
        v28 = 2080;
        v29 = "VIOSessionStateManager.m";
        v30 = 1024;
        v31 = 78;
        v32 = 2080;
        v33 = "dispatch_get_main_queue()";
        v34 = 2080;
        v35 = dispatch_queue_get_label(&_dispatch_main_q);
        v36 = 2080;
        v37 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[NSThread callStackSymbols];
          *buf = 138412290;
          selfCopy2 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  if (![(VIOSessionStateManager *)self isThrottlingOrDisabled])
  {
    stateEnteredThrottleEventTimers = [(VIOSessionStateManager *)self stateEnteredThrottleEventTimers];
    v9 = [NSNumber numberWithInteger:event];
    v10 = [stateEnteredThrottleEventTimers objectForKey:v9];
    v11 = v10 == 0;

    v12 = sub_100C75F08();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = @"VIOSessionThrottleEventDeviceMotion";
        if (!event)
        {
          v15 = @"VIOSessionThrottleEventARTrackingState";
        }

        *buf = 134349314;
        selfCopy2 = self;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Recording a new consecutive throttle event of type %@", buf, 0x16u);
      }

      GEOConfigGetDouble();
      v17 = v16;
      objc_initWeak(buf, self);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100C78308;
      v24[3] = &unk_10164F5F8;
      objc_copyWeak(v25, buf);
      v25[1] = event;
      v25[2] = v17;
      v18 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v24 block:*&v17];

      stateEnteredThrottleEventTimers2 = [(VIOSessionStateManager *)self stateEnteredThrottleEventTimers];
      v20 = [NSNumber numberWithInteger:event];
      [stateEnteredThrottleEventTimers2 setObject:v18 forKey:v20];

      objc_destroyWeak(v25);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = @"VIOSessionThrottleEventDeviceMotion";
        if (!event)
        {
          v14 = @"VIOSessionThrottleEventARTrackingState";
        }

        *buf = 134349314;
        selfCopy2 = self;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%{public}p] Recording another consecutive throttle event of type %@", buf, 0x16u);
      }
    }
  }
}

- (void)dealloc
{
  v3 = sub_100C75F08();
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

  WeakRetained = objc_loadWeakRetained(&self->_session);
  technique = [WeakRetained technique];
  [technique setVioThrottled:0];

  v8.receiver = self;
  v8.super_class = VIOSessionStateManager;
  [(VIOSessionStateManager *)&v8 dealloc];
}

- (VIOSessionStateManager)initWithSession:(id)session configuration:(id)configuration
{
  sessionCopy = session;
  configurationCopy = configuration;
  if (!sessionCopy)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "[VIOSessionStateManager initWithSession:configuration:]";
      v28 = 2080;
      v29 = "VIOSessionStateManager.m";
      v30 = 1024;
      v31 = 48;
      v32 = 2080;
      v33 = "session != nil";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!configurationCopy)
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "[VIOSessionStateManager initWithSession:configuration:]";
      v28 = 2080;
      v29 = "VIOSessionStateManager.m";
      v30 = 1024;
      v31 = 49;
      v32 = 2080;
      v33 = "configuration != nil";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v27 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v25.receiver = self;
  v25.super_class = VIOSessionStateManager;
  v8 = [(VIOSessionStateManager *)&v25 init];
  if (v8)
  {
    v9 = sub_100C75F08();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 134349314;
      v27 = v8;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Enabling %@", buf, 0x16u);
    }

    objc_storeWeak(&v8->_session, sessionCopy);
    objc_storeStrong(&v8->_configuration, configuration);
    v12 = +[NSMutableDictionary dictionary];
    stateEnteredThrottleEventTimers = v8->_stateEnteredThrottleEventTimers;
    v8->_stateEnteredThrottleEventTimers = v12;

    v14 = +[NSMutableSet set];
    activeDisableEvents = v8->_activeDisableEvents;
    v8->_activeDisableEvents = v14;

    v16 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___VIOSessionStateManagerObserver queue:0];
    observers = v8->_observers;
    v8->_observers = v16;
  }

  return v8;
}

@end