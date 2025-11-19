@interface NavigationThermalWarningController
- (NavigationThermalWarningController)init;
- (id)_localizedMessage;
- (id)_localizedTitle;
- (void)_checkIfLockScreenMitigationShouldActivate;
- (void)_clearIdleTimerIfNeeded;
- (void)_lockAndStartIdleTimer;
- (void)_sendNotification;
- (void)_sendNotificationIfNeccessary;
- (void)_tearDownNotificationIfNeeded;
- (void)dealloc;
- (void)didUpdateMitigationNamed:(id)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation NavigationThermalWarningController

- (void)_checkIfLockScreenMitigationShouldActivate
{
  v3 = sub_1005A8514();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349314;
    v6 = self;
    v7 = 2080;
    v8 = "[NavigationThermalWarningController _checkIfLockScreenMitigationShouldActivate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v5, 0x16u);
  }

  v4 = +[MapsThermalPressureController sharedController];
  -[NavigationThermalWarningController setActive:](self, "setActive:", [v4 shouldActivateMitigationNamed:@"NavigationDisableLockScreen"]);
}

- (void)didUpdateMitigationNamed:(id)a3
{
  if ([a3 isEqualToString:@"NavigationDisableLockScreen"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005A8644;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_sendNotificationIfNeccessary
{
  v3 = +[MapsScreenLayoutMonitor sharedMonitor];
  v4 = [v3 isLocked];

  if (v4)
  {
    if (![(NavigationThermalWarningController *)self isActive]|| self->_notification)
    {
      v5 = sub_1005A8514();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
LABEL_7:

        return;
      }

      v11 = 134349056;
      v12 = self;
      v6 = "[%{public}p] Screen is locked";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, &v11, 0xCu);
      goto LABEL_7;
    }

    v8 = +[CarDisplayController sharedInstance];
    v9 = [v8 isCurrentlyConnectedToAnyCarScene];

    v5 = sub_1005A8514();
    v10 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = 134349056;
      v12 = self;
      v6 = "[%{public}p] Screen is locked and the phone is still hot but CarPlay is connected; not showing notification";
      goto LABEL_6;
    }

    if (v10)
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Screen is locked and the phone is still hot; showing notification", &v11, 0xCu);
    }

    [(NavigationThermalWarningController *)self _sendNotification];
  }

  else
  {
    v7 = sub_1005A8514();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 134349056;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Device is unlocked; tearing down notification", &v11, 0xCu);
    }

    [(NavigationThermalWarningController *)self _tearDownNotificationIfNeeded];
  }
}

- (id)_localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"temperature_title" value:@"localized string not found" table:0];

  return v3;
}

- (id)_localizedMessage
{
  v2 = MGGetSInt32Answer();
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if ((v2 - 1) > 2)
  {
    v5 = @"[Thermal Warning] Alert Body Unknown Device";
  }

  else
  {
    v5 = off_101622978[v2 - 1];
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

- (void)_tearDownNotificationIfNeeded
{
  if (self->_notification)
  {
    v3 = sub_1005A8514();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      notification = self->_notification;
      v9 = 134349314;
      v10 = self;
      v11 = 2112;
      v12 = notification;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Cancelling notification: %@", &v9, 0x16u);
    }

    v5 = CFUserNotificationCancel(self->_notification);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1005A8514();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = self->_notification;
        v9 = 134349570;
        v10 = self;
        v11 = 2112;
        v12 = v8;
        v13 = 1024;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "[%{public}p] Unable to cancel notification: %@ statusCode: %d", &v9, 0x1Cu);
      }
    }

    CFRelease(self->_notification);
    self->_notification = 0;
  }
}

- (void)_clearIdleTimerIfNeeded
{
  if (self->_idleTimerAssertion)
  {
    v3 = sub_1005A8514();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      idleTimerAssertion = self->_idleTimerAssertion;
      v6 = 134349314;
      v7 = self;
      v8 = 2112;
      v9 = idleTimerAssertion;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Clearing previous idle timer assertion: %@", &v6, 0x16u);
    }

    [(BSInvalidatable *)self->_idleTimerAssertion invalidate];
    v5 = self->_idleTimerAssertion;
    self->_idleTimerAssertion = 0;
  }
}

- (void)_sendNotification
{
  [(NavigationThermalWarningController *)self _tearDownNotificationIfNeeded];
  v22[0] = kCFUserNotificationAlertHeaderKey;
  v3 = [(NavigationThermalWarningController *)self _localizedTitle];
  v23[0] = v3;
  v22[1] = kCFUserNotificationAlertMessageKey;
  v4 = [(NavigationThermalWarningController *)self _localizedMessage];
  v23[1] = v4;
  v23[2] = &__kCFBooleanTrue;
  v22[2] = kCFUserNotificationAlertTopMostKey;
  v22[3] = SBUserNotificationLockScreenAlertHeaderKey;
  v5 = [(NavigationThermalWarningController *)self _localizedTitle];
  v23[3] = v5;
  v22[4] = SBUserNotificationLockScreenAlertMessageKey;
  v6 = [(NavigationThermalWarningController *)self _localizedMessage];
  v23[4] = v6;
  v23[5] = &__kCFBooleanTrue;
  v22[5] = SBUserNotificationAllowInSetupKey;
  v22[6] = SBUserNotificationAllowInLoginWindow;
  v23[6] = &__kCFBooleanTrue;
  v23[7] = &__kCFBooleanFalse;
  v22[7] = SBUserNotificationDismissOnLock;
  v22[8] = SBUserNotificationDontDismissOnUnlock;
  v23[8] = &__kCFBooleanFalse;
  v23[9] = &__kCFBooleanFalse;
  v22[9] = SBUserNotificationForcesModalAlertAppearance;
  v22[10] = SBUserNotificationIgnoresQuietMode;
  v22[11] = SBUserNotificationWakeDisplay;
  v23[10] = &__kCFBooleanTrue;
  v23[11] = &__kCFBooleanFalse;
  v7 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:12];

  error = 0;
  self->_notification = CFUserNotificationCreate(0, 0.0, 0x20uLL, &error, v7);
  LODWORD(v4) = error;
  v8 = sub_1005A8514();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349570;
      v17 = self;
      v18 = 2112;
      v19 = v7;
      v20 = 1024;
      v21 = error;
      v10 = "[%{public}p] Unable to create notification: %@ error: %d";
      v11 = v9;
      v12 = OS_LOG_TYPE_FAULT;
      v13 = 28;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    notification = self->_notification;
    *buf = 134349314;
    v17 = self;
    v18 = 2112;
    v19 = notification;
    v10 = "[%{public}p] Successfully created notification: %@";
    v11 = v9;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }
}

- (void)_lockAndStartIdleTimer
{
  v3 = sub_1005A8514();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Force lock the screen", buf, 0xCu);
  }

  SBSLockDevice();
  if (!self->_idleTimerAssertion)
  {
    v4 = sub_1005A8514();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Taking timer assertion", buf, 0xCu);
    }

    v5 = [SBIdleTimerRequestConfiguration configurationWithMinimumExpirationTimeout:5.0 maximumExpirationTimeout:60.0];
    v6 = +[ITIdleTimerState sharedInstance];
    v17 = 0;
    v7 = [v6 newIdleTimerAssertionWithConfiguration:v5 forReason:@"high thermal level during navigation" error:&v17];
    v8 = v17;
    idleTimerAssertion = self->_idleTimerAssertion;
    self->_idleTimerAssertion = v7;

    v10 = self->_idleTimerAssertion;
    v11 = sub_1005A8514();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = self->_idleTimerAssertion;
        *buf = 134349314;
        v19 = self;
        v20 = 2112;
        v21 = v13;
        v14 = "[%{public}p] Successfully acquired idle time assertion: %@";
        v15 = v12;
        v16 = OS_LOG_TYPE_INFO;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v15, v16, v14, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v19 = self;
      v20 = 2112;
      v21 = v8;
      v14 = "[%{public}p] Error acquiring idle timer assertion: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    v5 = sub_1005A8514();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      active = self->_active;
      v11 = 134349568;
      v12 = self;
      v13 = 1024;
      v14 = active;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Active state changed: %d => %d", &v11, 0x18u);
    }

    self->_active = v3;
    v7 = [(NavigationThermalWarningController *)self changeHandler];

    if (v7)
    {
      v8 = [(NavigationThermalWarningController *)self changeHandler];
      v8[2](v8, v3);
    }

    v9 = sub_1005A8514();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v10)
      {
        v11 = 134349056;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Thermal level is dangerous", &v11, 0xCu);
      }

      [(NavigationThermalWarningController *)self _lockAndStartIdleTimer];
      [(NavigationThermalWarningController *)self _sendNotificationIfNeccessary];
    }

    else
    {
      if (v10)
      {
        v11 = 134349056;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Thermal level is normal", &v11, 0xCu);
      }

      [(NavigationThermalWarningController *)self _clearIdleTimerIfNeeded];
      [(NavigationThermalWarningController *)self _tearDownNotificationIfNeeded];
    }
  }
}

- (void)dealloc
{
  v3 = sub_1005A8514();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Disabling thermal level monitoring", buf, 0xCu);
  }

  v4 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v4 stopMonitoringWithObserver:self];

  [(NavigationThermalWarningController *)self _tearDownNotificationIfNeeded];
  [(NavigationThermalWarningController *)self _clearIdleTimerIfNeeded];
  v5.receiver = self;
  v5.super_class = NavigationThermalWarningController;
  [(NavigationThermalWarningController *)&v5 dealloc];
}

- (NavigationThermalWarningController)init
{
  v7.receiver = self;
  v7.super_class = NavigationThermalWarningController;
  v2 = [(NavigationThermalWarningController *)&v7 init];
  if (v2)
  {
    v3 = sub_1005A8514();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Enabling thermal level monitoring", buf, 0xCu);
    }

    v4 = +[MapsThermalPressureController sharedController];
    [v4 addObserver:v2 forMitigationNamed:@"NavigationDisableLockScreen"];

    v5 = +[MapsScreenLayoutMonitor sharedMonitor];
    [v5 startMonitoringWithObserver:v2];

    [(NavigationThermalWarningController *)v2 _checkIfLockScreenMitigationShouldActivate];
  }

  return v2;
}

@end