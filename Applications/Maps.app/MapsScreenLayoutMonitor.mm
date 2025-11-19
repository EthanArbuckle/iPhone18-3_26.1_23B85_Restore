@interface MapsScreenLayoutMonitor
+ (MapsScreenLayoutMonitor)sharedMonitor;
- (BOOL)_isMapsActiveInLayout:(id)a3;
- (FBSDisplayLayoutMonitor)layoutMonitor;
- (FBSDisplayLayoutMonitorConfiguration)configuration;
- (MapsScreenLayoutMonitor)init;
- (unint64_t)_changeReasonWithNewLayout:(id)a3 context:(id)a4;
- (void)_layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5;
- (void)_notifyObserversWithReason:(unint64_t)a3;
- (void)dealloc;
- (void)setChangeReason:(unint64_t)a3;
- (void)setIsOurAppActive:(BOOL)a3;
- (void)setIsScreenFullyOn:(BOOL)a3;
- (void)setIsScreenOn:(BOOL)a3;
- (void)setLayoutMonitor:(id)a3;
- (void)setLocked:(BOOL)a3;
- (void)startMonitoringWithObserver:(id)a3;
- (void)stopMonitoringWithObserver:(id)a3;
@end

@implementation MapsScreenLayoutMonitor

- (void)_layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = sub_1009C2434();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "monitor: %@ layout: %@ context: %@", buf, 0x20u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1009C2488;
    block[3] = &unk_101661A40;
    v13 = v9;
    v14 = self;
    v15 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (unint64_t)_changeReasonWithNewLayout:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 transitionReasons];
  v9 = [v8 containsObject:SBDisplayLayoutBacklightTransitionReasonLockButton];

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
      if (v11 != [(MapsScreenLayoutMonitor *)self _isMapsActiveInLayout:v6])
      {
        v10 = 2;
        goto LABEL_13;
      }
    }

    v12 = [v7 transitionReasons];
    if (([v12 containsObject:SBDisplayLayoutBacklightTransitionReasonLiftToWake] & 1) == 0)
    {
      v13 = [v7 transitionReasons];
      if (![v13 containsObject:SBDisplayLayoutBacklightTransitionReasonTouch])
      {
        v15 = [v7 transitionReasons];
        if ([v15 containsObject:SBDisplayLayoutBacklightTransitionReasonIdleTimer])
        {
          v16 = [(MapsScreenLayoutMonitor *)self isScreenFullyOn];

          if (v16)
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

- (BOOL)_isMapsActiveInLayout:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a3 elements];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v10 = [v9 isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_notifyObserversWithReason:(unint64_t)a3
{
  if (self->_needsUpdate || !self->_hasFirstUpdate)
  {
    *&self->_hasFirstUpdate = 1;
    v5 = sub_1009C2434();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying observers didChange: %lu", &v6, 0xCu);
    }

    [(GEOObserverHashTable *)self->_observers screenLayoutDidChangeWithReason:a3];
  }
}

- (void)stopMonitoringWithObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(GEOObserverHashTable *)v5->_observers unregisterObserver:v4];
  v6 = sub_1009C2434();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removed observer %@", &v7, 0xCu);
  }

  if (([(GEOObserverHashTable *)v5->_observers hasObservers]& 1) == 0)
  {
    [(MapsScreenLayoutMonitor *)v5 setLayoutMonitor:0];
  }

  objc_sync_exit(v5);
}

- (void)startMonitoringWithObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(GEOObserverHashTable *)v5->_observers registerObserver:v4];
  v6 = sub_1009C2434();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Added observer %@", &v7, 0xCu);
  }

  if (v5->_hasFirstUpdate && ((objc_opt_respondsToSelector() & 1) == 0 || [v4 notifyCurrentStateWhenStartMonitoring]))
  {
    [v4 screenLayoutDidChangeWithReason:{-[MapsScreenLayoutMonitor changeReason](v5, "changeReason")}];
  }

  [(MapsScreenLayoutMonitor *)v5 _prepareLayoutMonitor];
  objc_sync_exit(v5);
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
    v5 = self;
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
    v4 = [(MapsScreenLayoutMonitor *)self configuration];
    v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4];
    v6 = self->_layoutMonitor;
    self->_layoutMonitor = v5;

    self->_hasFirstUpdate = 0;
    layoutMonitor = self->_layoutMonitor;
  }

  return layoutMonitor;
}

- (void)setLayoutMonitor:(id)a3
{
  v5 = a3;
  layoutMonitor = self->_layoutMonitor;
  p_layoutMonitor = &self->_layoutMonitor;
  v6 = layoutMonitor;
  if (layoutMonitor != v5)
  {
    v9 = v5;
    [(FBSDisplayLayoutMonitor *)v6 invalidate];
    objc_storeStrong(p_layoutMonitor, a3);
    v5 = v9;
  }
}

- (void)setChangeReason:(unint64_t)a3
{
  if (self->_changeReason != a3)
  {
    v5 = sub_1009C2434();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting changeReason to %lu", &v6, 0xCu);
    }

    self->_changeReason = a3;
  }
}

- (void)setIsOurAppActive:(BOOL)a3
{
  if (self->_isOurAppActive != a3)
  {
    self->_isOurAppActive = a3;
    self->_needsUpdate = 1;
  }
}

- (void)setIsScreenOn:(BOOL)a3
{
  if (self->_isScreenOn != a3)
  {
    self->_isScreenOn = a3;
    self->_needsUpdate = 1;
  }
}

- (void)setIsScreenFullyOn:(BOOL)a3
{
  if (self->_isScreenFullyOn != a3)
  {
    self->_isScreenFullyOn = a3;
    self->_needsUpdate = 1;
  }
}

- (void)setLocked:(BOOL)a3
{
  if (self->_locked != a3)
  {
    self->_locked = a3;
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