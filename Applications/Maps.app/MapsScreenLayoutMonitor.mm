@interface MapsScreenLayoutMonitor
+ (MapsScreenLayoutMonitor)sharedMonitor;
- (BOOL)_isMapsActiveInLayout:(id)layout;
- (FBSDisplayLayoutMonitor)layoutMonitor;
- (FBSDisplayLayoutMonitorConfiguration)configuration;
- (MapsScreenLayoutMonitor)init;
- (unint64_t)_changeReasonWithNewLayout:(id)layout context:(id)context;
- (void)_layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)_notifyObserversWithReason:(unint64_t)reason;
- (void)dealloc;
- (void)setChangeReason:(unint64_t)reason;
- (void)setIsOurAppActive:(BOOL)active;
- (void)setIsScreenFullyOn:(BOOL)on;
- (void)setIsScreenOn:(BOOL)on;
- (void)setLayoutMonitor:(id)monitor;
- (void)setLocked:(BOOL)locked;
- (void)startMonitoringWithObserver:(id)observer;
- (void)stopMonitoringWithObserver:(id)observer;
@end

@implementation MapsScreenLayoutMonitor

- (void)_layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  monitorCopy = monitor;
  layoutCopy = layout;
  contextCopy = context;
  if (layoutCopy)
  {
    v11 = sub_1009C2434();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = monitorCopy;
      v18 = 2112;
      v19 = layoutCopy;
      v20 = 2112;
      v21 = contextCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "monitor: %@ layout: %@ context: %@", buf, 0x20u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009C2488;
    block[3] = &unk_101661A40;
    v13 = layoutCopy;
    selfCopy = self;
    v15 = contextCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (unint64_t)_changeReasonWithNewLayout:(id)layout context:(id)context
{
  layoutCopy = layout;
  contextCopy = context;
  transitionReasons = [contextCopy transitionReasons];
  v9 = [transitionReasons containsObject:SBDisplayLayoutBacklightTransitionReasonLockButton];

  if ((v9 & 1) == 0)
  {
    if (!self->_hasFirstUpdate)
    {
      v10 = 1;
      goto LABEL_13;
    }

    if (self->_lastKnownLayout)
    {
      v11 = [(MapsScreenLayoutMonitor *)self _isMapsActiveInLayout:?];
      if (v11 != [(MapsScreenLayoutMonitor *)self _isMapsActiveInLayout:layoutCopy])
      {
        v10 = 2;
        goto LABEL_13;
      }
    }

    transitionReasons2 = [contextCopy transitionReasons];
    if (([transitionReasons2 containsObject:SBDisplayLayoutBacklightTransitionReasonLiftToWake] & 1) == 0)
    {
      transitionReasons3 = [contextCopy transitionReasons];
      if (![transitionReasons3 containsObject:SBDisplayLayoutBacklightTransitionReasonTouch])
      {
        transitionReasons4 = [contextCopy transitionReasons];
        if ([transitionReasons4 containsObject:SBDisplayLayoutBacklightTransitionReasonIdleTimer])
        {
          isScreenFullyOn = [(MapsScreenLayoutMonitor *)self isScreenFullyOn];

          if (isScreenFullyOn)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }

        v10 = 0;
        goto LABEL_13;
      }
    }

LABEL_12:
    v10 = 4;
    goto LABEL_13;
  }

  v10 = 3;
LABEL_13:

  return v10;
}

- (BOOL)_isMapsActiveInLayout:(id)layout
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  elements = [layout elements];
  v4 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = MapsAppBundleId;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(elements);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_notifyObserversWithReason:(unint64_t)reason
{
  if (self->_needsUpdate || !self->_hasFirstUpdate)
  {
    *&self->_hasFirstUpdate = 1;
    v5 = sub_1009C2434();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      reasonCopy = reason;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying observers didChange: %lu", &v6, 0xCu);
    }

    [(GEOObserverHashTable *)self->_observers screenLayoutDidChangeWithReason:reason];
  }
}

- (void)stopMonitoringWithObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GEOObserverHashTable *)selfCopy->_observers unregisterObserver:observerCopy];
  v6 = sub_1009C2434();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removed observer %@", &v7, 0xCu);
  }

  if (([(GEOObserverHashTable *)selfCopy->_observers hasObservers]& 1) == 0)
  {
    [(MapsScreenLayoutMonitor *)selfCopy setLayoutMonitor:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)startMonitoringWithObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(GEOObserverHashTable *)selfCopy->_observers registerObserver:observerCopy];
  v6 = sub_1009C2434();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Added observer %@", &v7, 0xCu);
  }

  if (selfCopy->_hasFirstUpdate && ((objc_opt_respondsToSelector() & 1) == 0 || [observerCopy notifyCurrentStateWhenStartMonitoring]))
  {
    [observerCopy screenLayoutDidChangeWithReason:{-[MapsScreenLayoutMonitor changeReason](selfCopy, "changeReason")}];
  }

  [(MapsScreenLayoutMonitor *)selfCopy _prepareLayoutMonitor];
  objc_sync_exit(selfCopy);
}

- (FBSDisplayLayoutMonitorConfiguration)configuration
{
  configuration = self->_configuration;
  if (!configuration)
  {
    v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1009C2D44;
    v9[3] = &unk_101631048;
    v9[4] = self;
    selfCopy = self;
    [v4 setTransitionHandler:v9];
    v6 = self->_configuration;
    self->_configuration = v4;
    v7 = v4;

    configuration = self->_configuration;
  }

  return configuration;
}

- (FBSDisplayLayoutMonitor)layoutMonitor
{
  layoutMonitor = self->_layoutMonitor;
  if (!layoutMonitor)
  {
    configuration = [(MapsScreenLayoutMonitor *)self configuration];
    v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:configuration];
    v6 = self->_layoutMonitor;
    self->_layoutMonitor = v5;

    self->_hasFirstUpdate = 0;
    layoutMonitor = self->_layoutMonitor;
  }

  return layoutMonitor;
}

- (void)setLayoutMonitor:(id)monitor
{
  monitorCopy = monitor;
  layoutMonitor = self->_layoutMonitor;
  p_layoutMonitor = &self->_layoutMonitor;
  v6 = layoutMonitor;
  if (layoutMonitor != monitorCopy)
  {
    v9 = monitorCopy;
    [(FBSDisplayLayoutMonitor *)v6 invalidate];
    objc_storeStrong(p_layoutMonitor, monitor);
    monitorCopy = v9;
  }
}

- (void)setChangeReason:(unint64_t)reason
{
  if (self->_changeReason != reason)
  {
    v5 = sub_1009C2434();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      reasonCopy = reason;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting changeReason to %lu", &v6, 0xCu);
    }

    self->_changeReason = reason;
  }
}

- (void)setIsOurAppActive:(BOOL)active
{
  if (self->_isOurAppActive != active)
  {
    self->_isOurAppActive = active;
    self->_needsUpdate = 1;
  }
}

- (void)setIsScreenOn:(BOOL)on
{
  if (self->_isScreenOn != on)
  {
    self->_isScreenOn = on;
    self->_needsUpdate = 1;
  }
}

- (void)setIsScreenFullyOn:(BOOL)on
{
  if (self->_isScreenFullyOn != on)
  {
    self->_isScreenFullyOn = on;
    self->_needsUpdate = 1;
  }
}

- (void)setLocked:(BOOL)locked
{
  if (self->_locked != locked)
  {
    self->_locked = locked;
    self->_needsUpdate = 1;
  }
}

- (void)dealloc
{
  [(MapsScreenLayoutMonitor *)self setLayoutMonitor:0];
  v3.receiver = self;
  v3.super_class = MapsScreenLayoutMonitor;
  [(MapsScreenLayoutMonitor *)&v3 dealloc];
}

- (MapsScreenLayoutMonitor)init
{
  v6.receiver = self;
  v6.super_class = MapsScreenLayoutMonitor;
  v2 = [(MapsScreenLayoutMonitor *)&v6 init];
  if (v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MapsScreenLayoutObserver queue:&_dispatch_main_q];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

+ (MapsScreenLayoutMonitor)sharedMonitor
{
  if (qword_10195E048 != -1)
  {
    dispatch_once(&qword_10195E048, &stru_101631020);
  }

  v3 = qword_10195E040;

  return v3;
}

@end