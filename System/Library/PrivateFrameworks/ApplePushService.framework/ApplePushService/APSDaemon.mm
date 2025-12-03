@interface APSDaemon
- (APSDaemon)init;
- (BOOL)_systemIsReady;
- (double)keepAliveIntervalForEnvironment:(id)environment;
- (id)JSONDebugString:(BOOL)string;
- (id)_connectionsDebuggingState;
- (id)courierForEnvironmentName:(id)name;
- (id)createCourierForEnvironment:(id)environment;
- (id)environmentForConnectionPortName:(id)name connection:(id)connection;
- (id)getConnectionServerForEnvironment:(id)environment connectionPortName:(id)name processName:(id)processName enableDarkWake:(BOOL)wake peerConnection:(id)connection isNewConnection:(BOOL *)newConnection;
- (id)prettyStatus;
- (void)_clearCourierConnectTimerAndPowerAssertion;
- (void)_clearInactivityTerminationTimer;
- (void)_connectCouriersTimerFired;
- (void)_enableAllCouriers;
- (void)_inactivityTerminationTimerFired:(id)fired;
- (void)_performPeriodicSignal;
- (void)_receivedShutdownNotification;
- (void)_schedulePeriodicSignal;
- (void)_setupNotifyToken;
- (void)_startInactivityTerminationTimerIfNecessary;
- (void)_updateCourierConnectTimerAndPowerAssertion;
- (void)_updateNetworkGuidance;
- (void)appendPrettyStatusToStatusPrinter:(id)printer;
- (void)courierConnectionStatusDidChange:(id)change;
- (void)courierHasNoConnections:(id)connections;
- (void)courierIsIdle:(id)idle;
- (void)dealloc;
- (void)finalizeProcessedUsers;
- (void)finishLoggingInUserID:(id)d;
- (void)flushUser:(id)user;
- (void)invalidateDeviceIdentity;
- (void)loginForUser:(id)user;
- (void)loginInUserID:(id)d;
- (void)logoutUser:(id)user;
- (void)proxyManager:(id)manager canUseProxyChanged:(BOOL)changed;
- (void)proxyManager:(id)manager incomingPresenceWithGuid:(id)guid token:(id)token hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build certificates:(id)certificates nonce:(id)self0 signature:(id)self1 additionalFlags:(int)self2 environmentName:(id)self3;
- (void)receivedClientConnection;
- (void)requestCourierConnections;
- (void)rollTokensForAllBAAEnvironments:(id)environments;
- (void)setupUser:(id)user;
- (void)shouldUseInternetDidChange:(id)change;
- (void)updateSafeToSendFilterForce:(BOOL)force;
@end

@implementation APSDaemon

- (void)_clearInactivityTerminationTimer
{
  if (self->_inactivityTerminationTimer)
  {
    v3 = +[APSLog daemon];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing inactivity termination timer", v5, 2u);
    }

    [(NSTimer *)self->_inactivityTerminationTimer invalidate];
    inactivityTerminationTimer = self->_inactivityTerminationTimer;
    self->_inactivityTerminationTimer = 0;
  }
}

- (APSDaemon)init
{
  v30.receiver = self;
  v30.super_class = APSDaemon;
  v2 = [(APSDaemon *)&v30 init];
  if (v2)
  {
    v3 = +[APSLog daemon];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "APS daemon launched %@", buf, 0xCu);
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(v2 + 8);
    *(v2 + 8) = v4;

    v6 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    dispatch_source_set_event_handler(*(v2 + 5), &stru_100187630);
    dispatch_resume(*(v2 + 5));
    signal(15, 1);
    v8 = [CUTWeakReference weakRefWithObject:v2];
    v9 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
    v10 = *(v2 + 6);
    *(v2 + 6) = v9;

    v11 = *(v2 + 6);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005A0C8;
    handler[3] = &unk_100186D90;
    v12 = v8;
    v29 = v12;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(*(v2 + 6));
    signal(30, 1);
    [v2 _schedulePeriodicSignal];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10005A1A0, @"com.apple.springboard.deviceWillShutDown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [v2 _setupNotifyToken];
    notify_register_check("PCPushIsConnectedToken", v2 + 4);
    notify_set_state(*(v2 + 4), 0);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100187670);

    v14 = objc_alloc_init(APSIDSProxyManager);
    v15 = *(v2 + 7);
    *(v2 + 7) = v14;

    [*(v2 + 7) setDelegate:v2];
    if (!*(v2 + 4))
    {
      v16 = &stru_1001876B0;
      if (_os_feature_enabled_impl())
      {
        v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v18 = dispatch_queue_create("com.apple.apsd.connection_queue", v17);

        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1000020E8;
        v26[3] = &unk_100187700;
        v27 = &stru_1001876B0;
        v16 = objc_retainBlock(v26);
      }

      else
      {
        v18 = &_dispatch_main_q;
      }

      v19 = APSXPCCreateServerConnection();
      v20 = *(v2 + 4);
      *(v2 + 4) = v19;

      v21 = *(v2 + 4);
      APSSetXPCConnectionContext();
      xpc_connection_resume(*(v2 + 4));
    }

    v22 = sub_100051FF8();
    v23 = *(v2 + 3);
    *(v2 + 3) = v22;

    [*(v2 + 3) setResponder:v2];
    [*(v2 + 3) startup];
    +[NSDate timeIntervalSinceReferenceDate];
    *(v2 + 14) = v24;
  }

  return v2;
}

- (void)dealloc
{
  [(APSDaemon *)self _clearCourierConnectTimerAndPowerAssertion];
  notify_cancel(self->_systemReadyToken);
  notify_cancel(self->_isConnectedToken);
  dispatch_source_cancel(self->_sigTERMSource);
  sigTERMSource = self->_sigTERMSource;
  self->_sigTERMSource = 0;

  dispatch_source_cancel(self->_sigUSR1Source);
  sigUSR1Source = self->_sigUSR1Source;
  self->_sigUSR1Source = 0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.springboard.deviceWillShutDown", 0);
  [(APSIDSProxyManager *)self->_proxyManager setDelegate:0];
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v7 = self->_connection;
    self->_connection = 0;
  }

  v8.receiver = self;
  v8.super_class = APSDaemon;
  [(APSDaemon *)&v8 dealloc];
}

- (id)prettyStatus
{
  v3 = +[APSStatusPrinter statusPrinter];
  [(APSDaemon *)self appendPrettyStatusToStatusPrinter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)appendPrettyStatusToStatusPrinter:(id)printer
{
  printerCopy = printer;
  if ([(NSMutableDictionary *)self->_environmentsToCouriers count])
  {
    v5 = @"Running";
  }

  else
  {
    v5 = @"Down";
  }

  [printerCopy appendDescription:@"daemon status" stringValue:v5];
  [printerCopy appendDescription:@"startup time" timeIntervalValue:self->_startupTime];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_environmentsToCouriers;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(APSDaemon *)self courierForEnvironment:v11, v14];
        name = [v11 name];
        [printerCopy appendDescription:@"connection environment" stringValue:name];

        [printerCopy pushIndent];
        [v12 appendPrettyStatusToStatusPrinter:printerCopy];
        [printerCopy popIndent];
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)JSONDebugString:(BOOL)string
{
  stringCopy = string;
  v28 = @"startupTime";
  v5 = [NSNumber numberWithDouble:self->_startupTime];
  v29 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v7 = [v6 mutableCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_environmentsToCouriers;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [(APSDaemon *)self courierForEnvironment:v13];
        jSONDebugState = [v14 JSONDebugState];
        name = [v13 name];
        [v7 setObject:jSONDebugState forKeyedSubscript:name];
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v22 = 0;
  v17 = [NSJSONSerialization dataWithJSONObject:v7 options:!stringCopy error:&v22];
  v18 = v22;
  if (v18)
  {
    v19 = +[APSLog daemon];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100109CC4(v18, v19);
    }

    v20 = &stru_10018F6A0;
  }

  else
  {
    v20 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v17 bytes]);
  }

  return v20;
}

- (void)_setupNotifyToken
{
  if (!self->_systemReady)
  {
    [CUTWeakReference weakRefWithObject:self];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005A8F0;
    v3 = handler[3] = &unk_100187728;
    v12 = v3;
    v4 = notify_register_dispatch("APSSafeToSendFilterNotification", &self->_systemReadyToken, &_dispatch_main_q, handler);
    if (v4)
    {
      v5 = v4;
      v6 = +[APSLog daemon];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_100109D3C(v5, v6);
      }
    }

    v7 = dispatch_time(0, 120000000000);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005A938;
    v10[3] = &unk_100186D90;
    v10[4] = self;
    dispatch_after(v7, &_dispatch_main_q, v10);

    v8 = +[NSDate date];
    lastClientConnection = self->_lastClientConnection;
    self->_lastClientConnection = v8;

    [(APSDaemon *)self updateSafeToSendFilterForce:0];
  }
}

- (void)updateSafeToSendFilterForce:(BOOL)force
{
  forceCopy = force;
  v5 = +[APSLog daemon];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (forceCopy)
    {
      v6 = @"YES";
    }

    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: updateSafeToSendFilter force: %@", &v11, 0x16u);
  }

  if (!self->_hasEnabledCouriers)
  {
    v7 = +[NSDate date];
    [v7 timeIntervalSinceDate:self->_lastClientConnection];
    v9 = v8;

    v10 = +[APSLog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      selfCopy = *&v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "timeSinceLastConnection: %f", &v11, 0xCu);
    }

    if (forceCopy || v9 < 10.0)
    {
      if (!forceCopy)
      {
LABEL_14:
        [(APSDaemon *)self _updateCourierConnectTimerAndPowerAssertion];
        return;
      }
    }

    else if (![(APSDaemon *)self _systemIsReady])
    {
      goto LABEL_14;
    }

    [(APSDaemon *)self _enableAllCouriers];
    goto LABEL_14;
  }
}

- (void)_updateCourierConnectTimerAndPowerAssertion
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:self->_lastClientConnection];
  v5 = v4;

  v6 = 10.0 - v5;
  v7 = +[APSLog daemon];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _systemIsReady = [(APSDaemon *)self _systemIsReady];
    v9 = @"NO";
    hasEnabledCouriers = self->_hasEnabledCouriers;
    if (_systemIsReady)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138412802;
    v24 = *&v11;
    if (hasEnabledCouriers)
    {
      v9 = @"YES";
    }

    v25 = 2112;
    v26 = v9;
    v27 = 2048;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "UpdateCourierConnectTimerAndPowerAssertion: systemIsReady %@  hasEnabledCouriers %@  delay %f", buf, 0x20u);
  }

  if ([(APSDaemon *)self _systemIsReady])
  {
    v12 = self->_hasEnabledCouriers;
    [(APSDaemon *)self _clearCourierConnectTimerAndPowerAssertion];
    if (!v12 && v6 > 2.22044605e-16)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v6 + 1.0;
      v15 = +[APSLog daemon];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Delaying connect for %g secs", buf, 0xCu);
      }

      v16 = +[APSLog daemon];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Delaying courier connection for %g seconds", buf, 0xCu);
      }

      aPSBundleIdentifier = [NSString stringWithFormat:@"%@-connectcouriers", APSBundleIdentifier];
      v18 = [[APSPowerAssertion alloc] initWithName:aPSBundleIdentifier category:210 holdDuration:30.0];
      [(APSDaemon *)self setCourierConnectTimerPowerAssertion:v18];

      v19 = [[PCSimpleTimer alloc] initWithTimeInterval:@"APSDaemon-courierconnecttimer" serviceIdentifier:self target:"_connectCouriersTimerFired" selector:0 userInfo:v14];
      courierConnectTimer = self->_courierConnectTimer;
      self->_courierConnectTimer = v19;

      v21 = self->_courierConnectTimer;
      v22 = +[NSRunLoop mainRunLoop];
      [(PCSimpleTimer *)v21 scheduleInRunLoop:v22];

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    [(APSDaemon *)self _clearCourierConnectTimerAndPowerAssertion];
  }
}

- (BOOL)_systemIsReady
{
  if (self->_systemReady)
  {
    return 1;
  }

  else
  {
    state64[3] = v2;
    state64[4] = v3;
    state64[0] = 0;
    notify_get_state(self->_systemReadyToken, state64);
    self->_systemReady = state64[0] != 0;
    if (sub_100088290())
    {
      v4 = 1;
      self->_systemReady = 1;
    }

    else
    {
      return self->_systemReady;
    }
  }

  return v4;
}

- (void)_receivedShutdownNotification
{
  v3 = +[APSLog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: System is shutting down! Disabling all couriers cleanly.", buf, 0xCu);
  }

  self->_systemIsShuttingDown = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_environmentsToCouriers;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(APSDaemon *)self courierForEnvironment:*(*(&v10 + 1) + 8 * v8), v10];
        [v9 setEnabled:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_updateNetworkGuidance
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = self->_environmentsToCouriers;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    v7 = 1;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(APSDaemon *)self courierForEnvironment:*(*(&v32 + 1) + 8 * i)];
        if ([v9 shouldUseInternet])
        {
          if ([v9 isConnectedToService])
          {

            goto LABEL_13;
          }

          v7 = 0;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    v7 = 1;
  }

  v10 = +[APSLog daemon];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v7)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    selfCopy3 = self;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ updating network guidance isConnected? %@", buf, 0x16u);
  }

  notify_set_state(self->_isConnectedToken, v7 & 1);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_environmentsToCouriers;
  v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v29;
    while (2)
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [(APSDaemon *)self courierForEnvironment:*(*(&v28 + 1) + 8 * j)];
        if ([v18 shouldUseInternet])
        {
          ifname = [v18 ifname];
          v20 = [ifname cStringUsingEncoding:4];

          if (v20)
          {

            goto LABEL_35;
          }

          v15 = 1;
        }
      }

      v14 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    if (v15)
    {
      v20 = 0;
      goto LABEL_35;
    }
  }

  else
  {
  }

  v21 = +[APSLog daemon];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ no courier should be enabled - providing no guidance", buf, 0xCu);
  }

  v20 = kNetworkConfigPersistentInterfaceNoGuidance;
LABEL_35:
  if (v20 == kNetworkConfigPersistentInterfaceNoGuidance)
  {
    v22 = "no guidance";
  }

  else
  {
    v22 = v20;
  }

  v23 = [NSString stringWithFormat:@"%s", v22];
  if (![(NSString *)self->_networkGuidanceString isEqualToString:v23])
  {
    [(APSDaemon *)self setNetworkGuidanceString:v23];
    networkGuidanceString = self->_networkGuidanceString;
    v36 = @"Guidance";
    v37 = networkGuidanceString;
    v25 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    APSPowerLog();
    v26 = +[APSLog daemon];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_networkGuidanceString;
      *buf = 138412546;
      selfCopy3 = self;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ providing network guidance %@", buf, 0x16u);
    }

    network_config_set_persistent_interface();
  }
}

- (void)_clearCourierConnectTimerAndPowerAssertion
{
  [(PCSimpleTimer *)self->_courierConnectTimer invalidate];
  courierConnectTimer = self->_courierConnectTimer;
  self->_courierConnectTimer = 0;

  courierConnectTimerPowerAssertion = self->_courierConnectTimerPowerAssertion;
  if (courierConnectTimerPowerAssertion)
  {
    self->_courierConnectTimerPowerAssertion = 0;
  }
}

- (void)_connectCouriersTimerFired
{
  v3 = +[APSLog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Courier connections delay finished", buf, 2u);
  }

  v4 = +[APSLog daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Courier connection timer fired. Connecting couriers.", v5, 2u);
  }

  [(APSDaemon *)self _clearCourierConnectTimerAndPowerAssertion];
  [(APSDaemon *)self _enableAllCouriers];
}

- (void)_enableAllCouriers
{
  systemIsShuttingDown = self->_systemIsShuttingDown;
  v4 = +[APSLog daemon];
  v5 = os_log_type_enabled(&v4->super.super, OS_LOG_TYPE_DEFAULT);
  if (systemIsShuttingDown)
  {
    if (v5)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &v4->super.super, OS_LOG_TYPE_DEFAULT, "%@: Ignoring call to _enableAllCouriers - system is shutting down", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v4->super.super, OS_LOG_TYPE_DEFAULT, "Enabling all couriers", buf, 2u);
    }

    v6 = +[APSLog daemon];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Enabling all couriers", buf, 0xCu);
    }

    self->_hasEnabledCouriers = 1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_environmentsToCouriers;
    v7 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [(APSDaemon *)self courierForEnvironment:*(*(&v12 + 1) + 8 * v10), v12];
          [v11 setEnabled:1];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)receivedClientConnection
{
  v3 = +[NSDate date];
  lastClientConnection = self->_lastClientConnection;
  self->_lastClientConnection = v3;

  if (!self->_hasEnabledCouriers)
  {
    v5 = +[APSLog daemon];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client connected, bump filter time", buf, 2u);
    }

    v6 = +[APSLog daemon];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received client connection and we have not yet enabled couriers", v7, 2u);
    }

    [(APSDaemon *)self updateSafeToSendFilterForce:0];
  }
}

- (double)keepAliveIntervalForEnvironment:(id)environment
{
  v4 = [APSEnvironment environmentForName:environment];
  if (v4)
  {
    v5 = [(APSDaemon *)self courierForEnvironment:v4];
    v6 = v5;
    if (v5)
    {
      [v5 currentKeepAliveInterval];
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)getConnectionServerForEnvironment:(id)environment connectionPortName:(id)name processName:(id)processName enableDarkWake:(BOOL)wake peerConnection:(id)connection isNewConnection:(BOOL *)newConnection
{
  environmentCopy = environment;
  nameCopy = name;
  processNameCopy = processName;
  connectionCopy = connection;
  v17 = connectionCopy;
  if (self->_systemIsShuttingDown)
  {
    v18 = +[APSLog daemon];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v19 = "%@: Ignoring call to getConnectionServerForEnvironment - system is shutting down";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (!connectionCopy)
  {
    v18 = +[APSLog daemon];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v19 = "%@: Ignoring call to getConnectionServerForEnvironment - missing peer";
      goto LABEL_33;
    }

LABEL_34:
    v40 = 0;
    goto LABEL_57;
  }

  v18 = [APSEnvironment environmentForName:environmentCopy];
  if (v18)
  {
    newConnectionCopy = newConnection;
    v64 = processNameCopy;
    environmentCopy = [NSString stringWithFormat:@"%@-getconnectionserver-%@", APSBundleIdentifier, environmentCopy];
    v61 = [(_APSPowerAssertion_MacOnly *)[APSNoOpPowerAssertion alloc] initWithName:environmentCopy category:211];
    [(APSNoOpPowerAssertion *)v61 hold];
    userTracker = [(APSDaemon *)self userTracker];
    v63 = v17;
    v21 = [userTracker userForConnection:v17];

    if (nameCopy)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v22 = [(NSMutableDictionary *)self->_environmentsToCouriers copy];
      v23 = [v22 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v72;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v72 != v25)
            {
              objc_enumerationMutation(v22);
            }

            if (*(*(&v71 + 1) + 8 * i) != v18)
            {
              v27 = [(APSDaemon *)self courierForEnvironment:?];
              [v27 removeConnectionForConnectionPortName:nameCopy user:v21];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v71 objects:v80 count:16];
        }

        while (v24);
      }
    }

    v65 = v21;
    v28 = [(APSDaemon *)self courierForEnvironment:v18];
    selfCopy3 = self;
    if (!v28)
    {
      v58 = nameCopy;
      v59 = environmentCopy;
      v28 = [(APSDaemon *)self createCourierForEnvironment:v18];
      userTracker2 = [(APSDaemon *)self userTracker];
      sortedLoggedInUsers = [userTracker2 sortedLoggedInUsers];

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v31 = sortedLoggedInUsers;
      v32 = [v31 countByEnumeratingWithState:&v67 objects:v79 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v68;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v68 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v67 + 1) + 8 * j);
            userTracker3 = [(APSDaemon *)self userTracker];
            clientIdentityProvider = [(APSDaemon *)v28 clientIdentityProvider];
            v39 = [userTracker3 dependenciesForUser:v36 environment:v18 mainIdentityProvider:clientIdentityProvider];

            self = selfCopy3;
            [(APSDaemon *)v28 setupForUser:v36 dependencies:v39];
          }

          v33 = [v31 countByEnumeratingWithState:&v67 objects:v79 count:16];
        }

        while (v33);
      }

      nameCopy = v58;
      environmentCopy = v59;
    }

    if (!nameCopy)
    {
      goto LABEL_35;
    }

    v40 = [(APSDaemon *)v28 connectionForConnectionPortName:nameCopy user:v65];
    v41 = +[APSLog daemon];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = v40;
      v77 = 2112;
      v78 = nameCopy;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found existing connection %@ for port name: %@", buf, 0x16u);
    }

    if (v40)
    {
      v17 = v63;
      sub_10005BFF4(v42, v40, v63);
      v43 = v65;
      [(APSDaemon *)v40 setUser:v65];
      [(APSDaemon *)v40 setConnection:v63];
      v44 = [(APSDaemon *)v28 publicTokenForUser:v65];
      [(APSDaemon *)v40 setPublicToken:v44 needsAck:0];
    }

    else
    {
LABEL_35:
      if (newConnectionCopy)
      {
        *newConnectionCopy = 1;
      }

      userTracker4 = [(APSDaemon *)self userTracker];
      clientIdentityProvider2 = [(APSDaemon *)v28 clientIdentityProvider];
      v44 = [userTracker4 dependenciesForUser:v65 environment:v18 mainIdentityProvider:clientIdentityProvider2];

      v47 = [APSConnectionServer alloc];
      v48 = [(APSDaemon *)v28 connectionServerDelegateForUser:v65 dependencies:v44];
      userPreferences = [v44 userPreferences];
      v40 = [(APSConnectionServer *)v47 initWithDelegate:v48 user:v65 userPreferences:userPreferences enableDarkWake:0 environmentName:environmentCopy connectionPortName:nameCopy processName:v64 connection:v63];

      [(APSDaemon *)v28 addConnection:v40 forUser:v65 dependencies:v44];
      v50 = [(APSDaemon *)v28 publicTokenForUser:v65];

      v51 = +[APSLog daemon];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = @"NO";
        if (v50)
        {
          v53 = @"YES";
        }

        else
        {
          v53 = @"NO";
        }

        if (selfCopy3->_hasEnabledCouriers)
        {
          v52 = @"YES";
        }

        *buf = 138412546;
        selfCopy2 = v53;
        v77 = 2112;
        v78 = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Do we need to enable the courier? needToken %@  _hasEnabledCouriers %@", buf, 0x16u);
      }

      if (selfCopy3->_hasEnabledCouriers || v50)
      {
        if (v50)
        {
          v55 = +[APSLog daemon];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy2 = v28;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Connecting courier %@ immediately to get public token", buf, 0xCu);
          }
        }

        v54 = [(APSDaemon *)v28 setEnabled:1];
      }

      v17 = v63;
      sub_10005BFF4(v54, v40, v63);
      v43 = v65;
    }

    [(APSDaemon *)selfCopy3 _clearInactivityTerminationTimer];
    [(APSNoOpPowerAssertion *)v61 clear];

    processNameCopy = v64;
    v56 = environmentCopy;
  }

  else
  {
    v56 = +[APSLog daemon];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = environmentCopy;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Unknown environment '%@'", buf, 0xCu);
    }

    v40 = 0;
  }

LABEL_57:

  return v40;
}

- (id)environmentForConnectionPortName:(id)name connection:(id)connection
{
  connectionCopy = connection;
  nameCopy = name;
  userTracker = [(APSDaemon *)self userTracker];
  v9 = [userTracker userForConnection:connectionCopy];

  userTracker2 = [(APSDaemon *)self userTracker];
  v11 = [userTracker2 dependenciesWithNoIdentityForUser:v9];

  userPreferences = [v11 userPreferences];
  v13 = [APSConnectionServer environmentForNamedPort:nameCopy userPreferences:userPreferences];

  return v13;
}

- (void)requestCourierConnections
{
  v3 = +[APSLog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Explicit courier connect request!", buf, 2u);
  }

  if (self->_hasEnabledCouriers)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_environmentsToCouriers;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v15;
      *&v6 = 138412546;
      v13 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(APSDaemon *)self courierForEnvironment:v10, v13, v14];
          v12 = +[APSLog daemon];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = v11;
            v20 = 2112;
            v21 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting courier connection %@ %@", buf, 0x16u);
          }

          [v11 requestConnectionIfNeeded];
        }

        v7 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = +[APSLog daemon];
    if (os_log_type_enabled(&v4->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v4->super.super, OS_LOG_TYPE_DEFAULT, "Couriers have not yet been enabled", buf, 2u);
    }
  }
}

- (void)invalidateDeviceIdentity
{
  v3 = +[APSLog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "We've been told that the device identity is invalid!", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_environmentsToCouriers;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 138412546;
    v13 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(APSDaemon *)self courierForEnvironment:v10, v13, v14];
        v12 = +[APSLog daemon];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v19 = v11;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Telling courier %@ %@ to invalidate device identity.", buf, 0x16u);
        }

        [v11 invalidateDeviceIdentity];
      }

      v7 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)courierIsIdle:(id)idle
{
  idleCopy = idle;
  v5 = +[APSLog daemon];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = idleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Courier %@ is idle", &v6, 0x16u);
  }

  [(APSDaemon *)self _startInactivityTerminationTimerIfNecessary];
  [(APSDaemon *)self _setActivePushConnectionState];
}

- (void)courierConnectionStatusDidChange:(id)change
{
  changeCopy = change;
  v5 = +[APSLog daemon];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ received courierConnectionStatusDidChange from %@.", &v6, 0x16u);
  }

  [(APSDaemon *)self _updateNetworkGuidance];
}

- (void)shouldUseInternetDidChange:(id)change
{
  changeCopy = change;
  v5 = +[APSLog daemon];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ received shouldUseInternetDidChange from %@.", &v6, 0x16u);
  }

  [(APSDaemon *)self _updateNetworkGuidance];
}

- (void)courierHasNoConnections:(id)connections
{
  connectionsCopy = connections;
  environment = [connectionsCopy environment];
  v6 = [(APSDaemon *)self courierForEnvironment:environment];

  if (v6 == connectionsCopy)
  {
    v7 = +[APSLog daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = connectionsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing courier %@", &v8, 0xCu);
    }

    [connectionsCopy setEnabled:0];
    [(APSDaemon *)self _removeCourierForEnvironment:environment];
    [(APSDaemon *)self _startInactivityTerminationTimerIfNecessary];
  }
}

- (void)rollTokensForAllBAAEnvironments:(id)environments
{
  environmentsCopy = environments;
  v5 = &fputc_ptr;
  v6 = +[APSLog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = environmentsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ was notified of a BAA identity change, rolling push tokens for all BAA environments", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_environmentsToCouriers;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v27;
    *&v9 = 138412546;
    v24 = v9;
    do
    {
      v12 = 0;
      v25 = v10;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [(APSDaemon *)self courierForEnvironment:*(*(&v26 + 1) + 8 * v12), v24];
        clientIdentityProvider = [environmentsCopy clientIdentityProvider];
        identityStatus = [clientIdentityProvider identityStatus];

        if (!identityStatus)
        {
          daemon = [v5[414] daemon];
          if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
          {
            environment = [v13 environment];
            [environment name];
            v18 = v11;
            v19 = environmentsCopy;
            selfCopy = self;
            v21 = v7;
            v23 = v22 = v5;
            *buf = v24;
            v31 = v13;
            v32 = 2112;
            v33 = v23;
            _os_log_impl(&_mh_execute_header, daemon, OS_LOG_TYPE_DEFAULT, "%@ is currently using a BAA identity provider, rolling token for environment %@", buf, 0x16u);

            v5 = v22;
            v7 = v21;
            self = selfCopy;
            environmentsCopy = v19;
            v11 = v18;
            v10 = v25;
          }

          [v13 rollTokenAndReconnect];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }
}

- (void)proxyManager:(id)manager canUseProxyChanged:(BOOL)changed
{
  changedCopy = changed;
  v6 = +[APSLog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (changedCopy)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ canUseProxyChanged %@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_environmentsToCouriers;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(APSDaemon *)self courierForEnvironment:*(*(&v14 + 1) + 8 * v12), v14];
        [v13 canUseProxyChanged];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)proxyManager:(id)manager incomingPresenceWithGuid:(id)guid token:(id)token hwVersion:(id)version swVersion:(id)swVersion swBuild:(id)build certificates:(id)certificates nonce:(id)self0 signature:(id)self1 additionalFlags:(int)self2 environmentName:(id)self3
{
  guidCopy = guid;
  tokenCopy = token;
  versionCopy = version;
  swVersionCopy = swVersion;
  buildCopy = build;
  certificatesCopy = certificates;
  nonceCopy = nonce;
  signatureCopy = signature;
  nameCopy = name;
  v43 = nameCopy;
  if (self->_systemIsShuttingDown)
  {
    v26 = signatureCopy;
    v27 = nonceCopy;
    v28 = buildCopy;
    v29 = +[APSLog daemon];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@ is shutting down, ignoring incomingPresence from proxy client", buf, 0xCu);
    }

    v30 = guidCopy;
  }

  else
  {
    v39 = buildCopy;
    v40 = swVersionCopy;
    v29 = [APSEnvironment environmentForName:nameCopy];
    selfCopy2 = self;
    v31 = [(APSDaemon *)self courierForEnvironment:v29];
    v32 = v31;
    if (v29 && !v31)
    {
      v33 = +[APSLog daemon];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = selfCopy2;
        v46 = 2112;
        v47 = v29;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ creating courier for environment %@ for incoming presence", buf, 0x16u);
      }

      v34 = [(APSDaemon *)selfCopy2 createCourierForEnvironment:v29];
      v32 = v34;
      if (selfCopy2->_hasEnabledCouriers)
      {
        [v34 setEnabled:1];
      }
    }

    v35 = +[APSLog daemon];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = selfCopy2;
      v46 = 2112;
      v47 = v32;
      v48 = 2112;
      v49 = v43;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@ incomingPresence we have courier %@ for environment %@", buf, 0x20u);
    }

    LODWORD(v38) = flags;
    v36 = nonceCopy;
    v37 = signatureCopy;
    v26 = signatureCopy;
    v27 = nonceCopy;
    v30 = guidCopy;
    v28 = v39;
    swVersionCopy = v40;
    [v32 incomingPresenceWithGuid:guidCopy token:tokenCopy hwVersion:versionCopy swVersion:v40 swBuild:v39 certificates:certificatesCopy nonce:v36 signature:v37 additionalFlags:v38];
    [(APSDaemon *)selfCopy2 _clearInactivityTerminationTimer];
  }
}

- (void)_schedulePeriodicSignal
{
  v2 = [CUTWeakReference weakRefWithObject:self];
  v3 = dispatch_time(0, 86400000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D114;
  block[3] = &unk_100186D90;
  v6 = v2;
  v4 = v2;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)_performPeriodicSignal
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:self->_lastClientConnection];
  v5 = v4;

  v6 = 10.0 - v5;
  v7 = +[APSLog daemon];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = *&v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_performPeriodicSignal - timeSinceLastConnection %f", buf, 0xCu);
  }

  if (v6 <= 2.22044605e-16)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = self->_environmentsToCouriers;
    v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(APSDaemon *)self courierForEnvironment:*(*(&v16 + 1) + 8 * i), v16];
          [v15 periodicSignalFired];
        }

        v12 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }

    [(APSDaemon *)self _schedulePeriodicSignal];
  }

  else
  {
    v8 = +[APSLog daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = (v6 + 1.0);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delaying periodic signal by %lld", buf, 0xCu);
    }

    v9 = dispatch_time(0, 1000000000 * (v6 + 1.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005D3DC;
    block[3] = &unk_100186D90;
    block[4] = self;
    dispatch_after(v9, &_dispatch_main_q, block);
  }
}

- (void)_startInactivityTerminationTimerIfNecessary
{
  [(APSDaemon *)self _clearInactivityTerminationTimer];
  if (![(NSMutableDictionary *)self->_environmentsToCouriers count])
  {
    v3 = +[APSLog daemon];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = 0x402E000000000000;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting inactivity termination timer for %g seconds", &v6, 0xCu);
    }

    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"_inactivityTerminationTimerFired:" selector:0 userInfo:0 repeats:15.0];
    inactivityTerminationTimer = self->_inactivityTerminationTimer;
    self->_inactivityTerminationTimer = v4;
  }
}

- (void)_inactivityTerminationTimerFired:(id)fired
{
  [(NSTimer *)self->_inactivityTerminationTimer invalidate];
  inactivityTerminationTimer = self->_inactivityTerminationTimer;
  self->_inactivityTerminationTimer = 0;
}

- (id)createCourierForEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = +[APSLog daemon];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = environmentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "createCourierForEnvironment '%@'", &v12, 0xCu);
  }

  userTracker = [(APSDaemon *)self userTracker];
  defaultUser = [userTracker defaultUser];

  userTracker2 = [(APSDaemon *)self userTracker];
  v9 = [userTracker2 dependenciesForUser:defaultUser environment:environmentCopy mainIdentityProvider:0];

  v10 = [[APSCourier alloc] initWithEnvironment:environmentCopy defaultUser:defaultUser userDependencies:v9 delegate:self];
  [(NSMutableDictionary *)self->_environmentsToCouriers setObject:v10 forKey:environmentCopy];

  return v10;
}

- (id)courierForEnvironmentName:(id)name
{
  nameCopy = name;
  v5 = [APSEnvironment environmentForName:nameCopy];
  if (v5)
  {
    v6 = [(APSDaemon *)self courierForEnvironment:v5];
  }

  else
  {
    v7 = +[APSLog daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "courierForEnvironmentName Unknown environment '%@'", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)_connectionsDebuggingState
{
  allValues = [(NSMutableDictionary *)self->_environmentsToCouriers allValues];
  v3 = APSPrettyPrintCollection();

  return v3;
}

- (void)loginInUserID:(id)d
{
  dCopy = d;
  userTracker = [(APSDaemon *)self userTracker];
  [userTracker manuallySetupAndLoginUser:dCopy];
}

- (void)finishLoggingInUserID:(id)d
{
  dCopy = d;
  userTracker = [(APSDaemon *)self userTracker];
  [userTracker manuallyLoginUser:dCopy];
}

- (void)setupUser:(id)user
{
  userCopy = user;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_environmentsToCouriers;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(APSDaemon *)self courierForEnvironment:v10, v15];
        userTracker = [(APSDaemon *)self userTracker];
        clientIdentityProvider = [v11 clientIdentityProvider];
        v14 = [userTracker dependenciesForUser:userCopy environment:v10 mainIdentityProvider:clientIdentityProvider];
        [v11 setupForUser:userCopy dependencies:v14];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)loginForUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  userTracker = [(APSDaemon *)self userTracker];
  v6 = [userTracker dependenciesWithNoIdentityForUser:userCopy];

  userPreferences = [v6 userPreferences];
  v8 = [APSConnectionServer serverEnvironmentNamesForUserPreferences:userPreferences];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = v8;
  v39 = [v9 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v39)
  {
    v38 = *v53;
    v36 = v9;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v12 = [APSEnvironment environmentForName:v11];
        if (v12)
        {
          v40 = i;
          v43 = v12;
          v13 = [(APSDaemon *)selfCopy courierForEnvironment:?];
          if (!v13)
          {
            v37 = v11;
            v13 = [(APSDaemon *)selfCopy createCourierForEnvironment:v43];
            userTracker2 = [(APSDaemon *)selfCopy userTracker];
            sortedLoggedInUsers = [userTracker2 sortedLoggedInUsers];

            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            obj = sortedLoggedInUsers;
            v16 = [obj countByEnumeratingWithState:&v48 objects:v63 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v49;
              do
              {
                for (j = 0; j != v17; j = j + 1)
                {
                  if (*v49 != v18)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v20 = *(*(&v48 + 1) + 8 * j);
                  userTracker3 = [(APSDaemon *)selfCopy userTracker];
                  clientIdentityProvider = [v13 clientIdentityProvider];
                  v23 = [userTracker3 dependenciesForUser:v20 environment:v43 mainIdentityProvider:clientIdentityProvider];

                  [v13 setupForUser:v20 dependencies:v23];
                }

                v17 = [obj countByEnumeratingWithState:&v48 objects:v63 count:16];
              }

              while (v17);
            }

            v9 = v36;
            v11 = v37;
          }

          userPreferences2 = [v6 userPreferences];
          v25 = [v13 connectionServersForUser:userCopy];
          v26 = [v13 connectionServerDelegateForUser:userCopy dependencies:v6];
          [APSConnectionServer serversWithEnvironmentName:v11 user:userCopy userPreferences:userPreferences2 excludeServers:v25 delegate:v26];
          v28 = v27 = v11;

          v29 = +[APSLog daemon];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v28 count];
            *buf = 134218498;
            v58 = v30;
            v59 = 2112;
            v60 = userCopy;
            v61 = 2112;
            v62 = v27;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Loaded %ld connection servers for user %@ environment %@", buf, 0x20u);
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v31 = v28;
          v32 = [v31 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v45;
            do
            {
              for (k = 0; k != v33; k = k + 1)
              {
                if (*v45 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                [v13 addConnection:*(*(&v44 + 1) + 8 * k) forUser:userCopy dependencies:v6];
              }

              v33 = [v31 countByEnumeratingWithState:&v44 objects:v56 count:16];
            }

            while (v33);
          }

          [v13 setEnabled:1];
          i = v40;
          v12 = v43;
        }
      }

      v39 = [v9 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v39);
  }

  [(APSDaemon *)selfCopy _setActivePushConnectionState];
  [(APSDaemon *)selfCopy _startInactivityTerminationTimerIfNecessary];
}

- (void)flushUser:(id)user
{
  userCopy = user;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_environmentsToCouriers;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(APSDaemon *)self courierForEnvironment:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 flushUser:userCopy];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)logoutUser:(id)user
{
  userCopy = user;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_environmentsToCouriers;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(APSDaemon *)self courierForEnvironment:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 logoutUser:userCopy];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(APSDaemon *)self _startInactivityTerminationTimerIfNecessary];
  [(APSDaemon *)self _setActivePushConnectionState];
}

- (void)finalizeProcessedUsers
{
  [(APSDaemon *)self _startInactivityTerminationTimerIfNecessary];

  [(APSDaemon *)self _setActivePushConnectionState];
}

@end