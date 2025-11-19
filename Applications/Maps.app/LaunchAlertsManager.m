@interface LaunchAlertsManager
- (LaunchAlertsManager)init;
- (LaunchAlertsManagerDelegate)delegate;
- (id)_getAlertObjectOfType:(int64_t)a3;
- (void)_currentAlertDidFinish;
- (void)_executeNextAlert;
- (void)_markLocIntWarmingSheetAlertFinishedIfNeeded;
- (void)cancelVisibleAlertIfNecessary;
- (void)enqueueAlert:(int64_t)a3;
- (void)executeAlertsIfNecessary;
- (void)resetState;
@end

@implementation LaunchAlertsManager

- (LaunchAlertsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_getAlertObjectOfType:(int64_t)a3
{
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v3 = AppLaunchContactsAlert;
      }

      else
      {
        v3 = AppLaunchNotificationPrewarmAlert;
      }

      goto LABEL_19;
    }

    if (a3 == 6)
    {
      v3 = AppLaunchHikingAlert;
      goto LABEL_19;
    }

    if (a3 == 7)
    {
      v4 = [(LaunchAlertsManager *)self delegate];
      if ([v4 hasMapsActivityAction])
      {
        v5 = 0;
      }

      else
      {
        v5 = objc_alloc_init(_TtC4Maps27MapsWarmingSheetLaunchAlert);
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = AppLaunchAddressCorrectionAlert;
      }

      else
      {
        v3 = AppLaunchNavTraceAlert;
      }

      goto LABEL_19;
    }

    if (!a3)
    {
      v3 = AppLaunchLocationAlert;
      goto LABEL_19;
    }

    if (a3 == 1)
    {
      v3 = AppLaunchPreciseLocationDisabledAlert;
LABEL_19:
      v5 = objc_alloc_init(v3);
      goto LABEL_20;
    }
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Unknown Launch Alert Type passed!", v8, 2u);
  }

  v5 = 0;
LABEL_20:

  return v5;
}

- (void)_currentAlertDidFinish
{
  currentAlert = self->_currentAlert;
  self->_currentAlert = 0;

  [(LaunchAlertsManager *)self _executeNextAlert];
}

- (void)_markLocIntWarmingSheetAlertFinishedIfNeeded
{
  v3 = [(LaunchAlertsManager *)self delegate];
  v4 = [v3 hasMapsActivityAction];

  if (v4)
  {
    v5 = sub_100005610();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Direction plan is in queue, removing the loc auth alerts from queue. ", v6, 2u);
    }

    [(LaunchAlertsManager *)self _currentAlertDidFinish];
  }
}

- (void)_executeNextAlert
{
  if ([(NSMutableOrderedSet *)self->_alerts count])
  {
    v3 = [(NSMutableOrderedSet *)self->_alerts firstObject];
    v4 = [v3 integerValue];

    [(NSMutableOrderedSet *)self->_alerts removeObjectAtIndex:0];
    v5 = [(LaunchAlertsManager *)self _getAlertObjectOfType:v4];
    currentAlert = self->_currentAlert;
    self->_currentAlert = v5;

    if (v4 == 7 && !self->_currentAlert)
    {

      [(LaunchAlertsManager *)self _markLocIntWarmingSheetAlertFinishedIfNeeded];
    }

    else if (+[UIApplication _maps_isAnySceneForegroundForRole:](UIApplication, "_maps_isAnySceneForegroundForRole:", UIWindowSceneSessionRoleApplication) || [(DisplayAlert *)self->_currentAlert supportsCarPlayApplicationDisplay]&& +[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground])
    {
      v7 = sub_100005610();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = +[UIApplication _maps_applicationScenes];
        v11 = +[UIApplication _maps_carPlayScenes];
        *buf = 138412802;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "LaunchAlertsManager: handling %@, application scenes: %@, CarPlay scenes: %@", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v12 = self->_currentAlert;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100FC92FC;
      v20[3] = &unk_101661B98;
      objc_copyWeak(&v21, buf);
      [(DisplayAlert *)v12 displayAlertIfNecessaryWithCompletionHandler:v20];
      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    else
    {
      v15 = sub_100005610();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = +[UIApplication _maps_applicationScenes];
        v19 = +[UIApplication _maps_carPlayScenes];
        *buf = 138412802;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "LaunchAlertsManager: skipping display of %@, application scenes: %@, CarPlay scenes: %@", buf, 0x20u);
      }

      [(LaunchAlertsManager *)self _currentAlertDidFinish];
    }
  }

  else
  {
    v13 = sub_100005610();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "LaunchAlertsManager: alerts processed", buf, 2u);
    }

    *&self->_alertsProcessed = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained launchAlertsManagerDidFinishProcessingAlert:self];
  }
}

- (void)cancelVisibleAlertIfNecessary
{
  if (objc_opt_respondsToSelector())
  {
    v3 = sub_100005610();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "LaunchAlertsManager: cancel visible alert if necessary", v4, 2u);
    }

    [(DisplayAlert *)self->_currentAlert cancelAlertIfNecessary];
  }
}

- (void)resetState
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "LaunchAlertsManager: reset state", v5, 2u);
  }

  [(LaunchAlertsManager *)self cancelVisibleAlertIfNecessary];
  [(NSMutableOrderedSet *)self->_alerts removeAllObjects];
  currentAlert = self->_currentAlert;
  self->_currentAlert = 0;

  *&self->_alertsProcessed = 1;
}

- (void)executeAlertsIfNecessary
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "LaunchAlertsManager: executeAlertsIfNecessary", buf, 2u);
  }

  if (!self->_processingAlert)
  {
    self->_processingAlert = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FC9538;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)enqueueAlert:(int64_t)a3
{
  if (([UIApp launchedToTest] & 1) == 0 && (GEOConfigGetBOOL() & 1) == 0)
  {
    alerts = self->_alerts;
    v6 = [NSNumber numberWithInteger:a3];
    LOBYTE(alerts) = [(NSMutableOrderedSet *)alerts containsObject:v6];

    if ((alerts & 1) == 0)
    {
      v7 = self->_alerts;
      v8 = [NSNumber numberWithInteger:a3];
      [(NSMutableOrderedSet *)v7 addObject:v8];

      v9 = sub_100005610();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [NSNumber numberWithInteger:a3];
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "LaunchAlertsManager: enqueueAlert %@", &v11, 0xCu);
      }
    }

    [(LaunchAlertsManager *)self executeAlertsIfNecessary];
  }
}

- (LaunchAlertsManager)init
{
  v6.receiver = self;
  v6.super_class = LaunchAlertsManager;
  v2 = [(LaunchAlertsManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableOrderedSet orderedSet];
    alerts = v2->_alerts;
    v2->_alerts = v3;
  }

  return v2;
}

@end