@interface APSNetworkMonitor
+ (unint64_t)powerCostForPushOnRAT:(int)a3 withLinkQuality:(int)a4;
- (APSNetworkMonitor)init;
- (BOOL)_checkPiggybackBudget;
- (BOOL)_wifiIsHistoricallyCheap;
- (double)_accumulatedAwakePercentage;
- (void)__toggleWiFiAutoAssociateIfNecessary;
- (void)_clearConnectionThrottleTimer;
- (void)_clearPiggybackConnectionTimer;
- (void)_connectionThrottleTimerFired;
- (void)_deregisterFromWoWNotifications;
- (void)_flushStaleElementsFrom:(id *)a3 withThreshold:(double)a4;
- (void)_handleSignificantTimeChange;
- (void)_piggybackConnectionTimerFired;
- (void)_processSSIDChangeWithSSID:(id)a3 querySSID:(BOOL)a4;
- (void)_registerForWoWNotifications;
- (void)_reloadDualMode;
- (void)_toggleWiFiAutoAssociateIfNecessary;
- (void)closedSecondChannel:(int64_t)a3;
- (void)cutWiFiManager:(id)a3 generatedPowerReading:(id)a4;
- (void)cutWiFiManagerLinkDidChange:(id)a3 context:(id)a4;
- (void)dealloc;
- (void)decayTimerFired:(id)a3;
- (void)interfaceConstraintChanged:(id)a3;
- (void)notePushWithCost:(unint64_t)a3;
- (void)openedSecondChannel;
- (void)setCostDrivenDualChannelAttempts:(id)a3;
- (void)setCriticalReliability:(BOOL)a3;
- (void)setCurrentWiFiKeepAliveInterval:(double)a3 growAttempts:(unint64_t)a4;
- (void)setDelegate:(id)a3;
- (void)setDisableCostDrivenDualChannelAttempts:(id)a3;
- (void)setDisableDualModePiggybackTimer:(id)a3;
- (void)setPiggybackDualChannelAttempts:(id)a3;
- (void)setServerSupportsDualMode:(BOOL)a3;
- (void)systemDidLock;
- (void)systemDidUnlock;
@end

@implementation APSNetworkMonitor

- (void)_toggleWiFiAutoAssociateIfNecessary
{
  if (self->_dualMode == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "[APSNetworkMonitor _toggleWiFiAutoAssociateIfNecessary]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "skip %s, dual mode is forced to off", &v3, 0xCu);
    }
  }

  else
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__toggleWiFiAutoAssociateIfNecessary" object:0];

    [(APSNetworkMonitor *)self performSelector:"__toggleWiFiAutoAssociateIfNecessary" withObject:0 afterDelay:5.0];
  }
}

- (void)systemDidUnlock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ systemDidUnlock, refreshing state", &v3, 0xCu);
  }

  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)__toggleWiFiAutoAssociateIfNecessary
{
  [(APSDecayTimer *)self->_decayTimer performDecay];
  v3 = [(APSDecayTimer *)self->_decayTimer currentCost];
  v4 = [(APSNetworkMonitor *)self _wifiIsHistoricallyCheap];
  v5 = v4;
  shouldThrottleConnection = self->_shouldThrottleConnection;
  dualMode = self->_dualMode;
  if (dualMode == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 138412290;
      *&v37[4] = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ forcing dual mode OFF", v37, 0xCu);
    }

    serverSupportsDualMode = 0;
    LOBYTE(v8) = 0;
    goto LABEL_9;
  }

  if (dualMode != 1)
  {
    if (v3 >= 0x3E9 && ((v4 ^ 1) & 1) == 0 && !shouldThrottleConnection && !self->_disableCostDrivenDualMode || self->_criticalReliability || self->_isWoWEnabled)
    {
      v8 = 1;
LABEL_17:
      serverSupportsDualMode = self->_serverSupportsDualMode;
      goto LABEL_18;
    }

    if ([(APSNetworkMonitor *)self _checkPiggybackBudget])
    {
      v35 = [(APSNetworkMonitor *)self wifiManager];
      v36 = [v35 isWiFiAssociated];

      if (v36)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 138412290;
          *&v37[4] = self;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ we're allowed to piggyback - we will not associate to wifi ourselves.", v37, 0xCu);
        }

        v8 = 0;
        self->_isPiggybacking = 1;
        goto LABEL_17;
      }
    }

    serverSupportsDualMode = 0;
    LOBYTE(v8) = 0;
    self->_isPiggybacking = 0;
LABEL_9:
    v10 = 1;
    goto LABEL_21;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 138412290;
    *&v37[4] = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ forcing dual mode ON", v37, 0xCu);
  }

  v8 = 1;
  serverSupportsDualMode = 1;
LABEL_18:
  v10 = !serverSupportsDualMode;
  if (v8 && serverSupportsDualMode)
  {
    v11 = 1;
    serverSupportsDualMode = 1;
    LOBYTE(v8) = 1;
    goto LABEL_22;
  }

LABEL_21:
  v11 = 0;
LABEL_22:
  v12 = +[PCPersistentInterfaceManager sharedInstance];
  [v12 enableWiFiAutoAssociation:v11 forDelegate:self];

  v13 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  v14 = [v13 interfaceConstraint];

  v15 = serverSupportsDualMode & (v10 | _os_feature_enabled_impl() ^ 1 | (v14 != 1));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    criticalReliability = self->_criticalReliability;
    v17 = @"disabling";
    v18 = self->_serverSupportsDualMode;
    v19 = @"NO";
    v20 = self->_dualMode;
    disableCostDrivenDualMode = self->_disableCostDrivenDualMode;
    if (v15)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    isPiggybacking = self->_isPiggybacking;
    if ((v15 & 1 & v8) != 0)
    {
      v17 = @"enabling";
    }

    isWoWEnabled = self->_isWoWEnabled;
    if (v3 >= 0x3E9)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    *v37 = 138415362;
    if (v5)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    *&v37[4] = self;
    if (shouldThrottleConnection)
    {
      v27 = @"NO";
    }

    else
    {
      v27 = @"YES";
    }

    *&v37[12] = 2112;
    *&v37[14] = v17;
    if (criticalReliability)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    *&v37[22] = 2112;
    if (v18)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v38 = v25;
    if (disableCostDrivenDualMode)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    *v39 = 2112;
    if (isPiggybacking)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    *&v39[2] = v26;
    if (isWoWEnabled)
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    *&v39[10] = 2112;
    if (v14 == 1)
    {
      v19 = @"YES";
    }

    *&v39[12] = v27;
    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = v29;
    v44 = 2048;
    v45 = v20;
    v46 = 2112;
    v47 = v22;
    v48 = 2112;
    v49 = v30;
    v50 = 2112;
    v51 = v31;
    v52 = 2112;
    v53 = v32;
    v54 = 2112;
    v55 = v19;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ _toggleWiFiAutoAssociateIfNecessary %@ wifi auto association highEnoughPushCost %@  wifiHistoricallyOK %@  serverLoadIsOK %@ criticalReliability %@  serverSupportsDualMode %@  _dualMode %ld enableDualMode %@ disableCostDrivenDualMode %@ isPiggybacking %@ isWoWEnabled %@ isUltraConstrained %@", v37, 0x84u);
  }

  if (self->_shouldUseDualMode == (v15 & 1))
  {
    if (self->_disableDualModePiggybackTimer)
    {
      return;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v33 = @"NO";
      if (v15)
      {
        v33 = @"YES";
      }

      *v37 = 138412546;
      *&v37[4] = self;
      *&v37[12] = 2112;
      *&v37[14] = v33;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ should use dual mode changed to %@!", v37, 0x16u);
    }

    self->_shouldUseDualMode = v15 & 1;
  }

  v34 = [(APSNetworkMonitor *)self delegate:*v37];
  if (objc_opt_respondsToSelector())
  {
    [v34 networkMonitor:self evaluateDualModeState:self->_shouldUseDualMode];
  }
}

- (BOOL)_wifiIsHistoricallyCheap
{
  [(APSNetworkMonitor *)self _accumulatedAwakePercentage];
  v4 = v3;
  v5 = self->_wifiGrowAttempts - self->_wifiGrowAttemptsBeforeSSID < 0xC || self->_wifiKeepAliveInterval >= 1080.0;
  v6 = v3 < 0.05 && v5;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    wifiKeepAliveInterval = self->_wifiKeepAliveInterval;
    v9 = self->_wifiGrowAttempts - self->_wifiGrowAttemptsBeforeSSID;
    v11 = 138413314;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = wifiKeepAliveInterval;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ wifi is historically cheap? %@  awakePercentage = %f,  wifiGrowAttemptDelta %lu  wifiKeepAliveInterval %f", &v11, 0x34u);
  }

  return v6;
}

- (double)_accumulatedAwakePercentage
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = self->_wifiMeasurements;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v17 = *v19;
    v7 = CUTWiFiManagerPMDurationKey;
    v8 = CUTWiFiManagerTotalDurationKey;
    obj = v2;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) value];
        v11 = [v10 objectForKey:v7];
        v12 = [v11 unsignedIntegerValue];

        v13 = [v10 objectForKey:v8];
        v14 = [v13 unsignedIntegerValue];

        v6 += v12;
        v5 += v14;
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);

    if (v5)
    {
      return 1.0 - v6 / v5;
    }
  }

  else
  {
  }

  return 0.0;
}

- (void)_registerForWoWNotifications
{
  if (qword_1001BF970 != -1)
  {
    sub_10010D608();
  }

  v3 = off_1001BF968(0, 0);
  self->_wifiManager = v3;
  if (!v3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = "[APSNetworkMonitor _registerForWoWNotifications]";
    v7 = "%p %s failed to create wifi manager";
    goto LABEL_12;
  }

  if (qword_1001BF980 != -1)
  {
    sub_10010D61C();
  }

  off_1001BF978(self->_wifiManager, sub_1000B86B4, self);
  if (qword_1001BF990 != -1)
  {
    sub_10010D630();
  }

  v4 = off_1001BF988;
  wifiManager = self->_wifiManager;
  Main = CFRunLoopGetMain();
  v4(wifiManager, Main, kCFRunLoopDefaultMode);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = "[APSNetworkMonitor _registerForWoWNotifications]";
    v7 = "%p %s registered for WoW notifications";
LABEL_12:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v8, 0x16u);
  }
}

- (void)_deregisterFromWoWNotifications
{
  if (self->_wifiManager)
  {
    if (qword_1001BF9A0 != -1)
    {
      sub_10010D66C();
    }

    off_1001BF998(self->_wifiManager, 0, 0);
    if (qword_1001BF9B0 != -1)
    {
      sub_10010D680();
    }

    v3 = off_1001BF9A8;
    wifiManager = self->_wifiManager;
    Main = CFRunLoopGetMain();
    v3(wifiManager, Main, kCFRunLoopDefaultMode);
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218242;
      v7 = self;
      v8 = 2080;
      v9 = "[APSNetworkMonitor _deregisterFromWoWNotifications]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%p %s completed deregistration from WoW notifications", &v6, 0x16u);
    }
  }
}

- (APSNetworkMonitor)init
{
  v14.receiver = self;
  v14.super_class = APSNetworkMonitor;
  v2 = [(APSNetworkMonitor *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2[136] = 0;
    *(v2 + 120) = xmmword_10015CEA0;
    v2[140] = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_1000B8DB8, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v3, sub_1000B8E68, @"com.apple.aps.internalsettings.changenotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    v6 = [(APSNetworkMonitor *)v3 systemMonitor];
    [v6 setActive:1];

    v7 = [(APSNetworkMonitor *)v3 systemMonitor];
    [v7 setWatchesSystemLockState:1];

    v8 = [(APSNetworkMonitor *)v3 systemMonitor];
    [v8 addListener:v3];

    if (_os_feature_enabled_impl())
    {
      v9 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
      [v9 addDelegate:v3 queue:&_dispatch_main_q];
    }

    [(APSNetworkMonitor *)v3 _reloadDualMode];
    v10 = [[APSDecayTimer alloc] initWithHourlyCostThreshold:1000 costMaximum:1500 identifier:@"APSNetworkMonitor"];
    decayTimer = v3->_decayTimer;
    v3->_decayTimer = v10;

    [(APSDecayTimer *)v3->_decayTimer setDelegate:v3];
    v12 = [(APSNetworkMonitor *)v3 wifiManager];
    [v12 addDelegate:v3];

    [(APSNetworkMonitor *)v3 _processSSIDChangeWithSSID:0 querySSID:1];
    [(APSNetworkMonitor *)v3 _registerForWoWNotifications];
  }

  return v3;
}

- (void)dealloc
{
  [(APSNetworkMonitor *)self _deregisterFromWoWNotifications];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.aps.internalsettings.changenotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"SignificantTimeChangeNotification", 0);
  v5 = [(APSNetworkMonitor *)self wifiManager];
  [v5 removeDelegate:self];

  v6 = +[PCPersistentInterfaceManager sharedInstance];
  [v6 enableWiFiAutoAssociation:0 forDelegate:self];

  if (_os_feature_enabled_impl())
  {
    v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    [v7 removeDelegate:self];
  }

  [(APSNetworkMonitor *)self _clearConnectionThrottleTimer];
  [(APSNetworkMonitor *)self _clearPiggybackConnectionTimer];
  [(APSDecayTimer *)self->_decayTimer setDelegate:0];
  v8.receiver = self;
  v8.super_class = APSNetworkMonitor;
  [(APSNetworkMonitor *)&v8 dealloc];
}

- (void)setDelegate:(id)a3
{
  v8 = a3;
  v4 = [(CUTWeakReference *)self->_delegate object];

  v5 = v8;
  if (v4 != v8)
  {
    v6 = [CUTWeakReference weakRefWithObject:v8];
    delegate = self->_delegate;
    self->_delegate = v6;

    v5 = v8;
  }
}

- (void)setServerSupportsDualMode:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if (self->_serverSupportsDualMode)
    {
      v5 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Server supports dual mode %@  old value %@", &v7, 0x16u);
  }

  if (self->_serverSupportsDualMode != v3)
  {
    self->_serverSupportsDualMode = v3;
    [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
  }
}

- (void)_reloadDualMode
{
  CFPreferencesAppSynchronize(@"com.apple.aps.internalsettings");
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"DualChannelSupportOverride", @"com.apple.aps.internalsettings", &keyExistsAndHasValidFormat);
  if (self->_dualMode != AppIntegerValue)
  {
    self->_dualMode = AppIntegerValue;
    [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
  }
}

- (void)decayTimerFired:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ decay timer fired", &v4, 0xCu);
  }

  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)systemDidLock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ systemDidLock, refreshing state", &v4, 0xCu);
  }

  lastPiggybackConnection = self->_lastPiggybackConnection;
  self->_lastPiggybackConnection = 0;

  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)cutWiFiManagerLinkDidChange:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  shouldUseDualMode = self->_shouldUseDualMode;
  v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (shouldUseDualMode)
  {
    if (v9)
    {
      v10 = [v6 isWiFiAssociated];
      v11 = @"NO";
      *v16 = 138412802;
      *&v16[4] = self;
      *&v16[12] = 2112;
      if (v10)
      {
        v11 = @"YES";
      }

      *&v16[14] = v11;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received cutWiFiManagerLinkDidChange - alerting the delegate. isWiFiAssociated? %@ context %@", v16, 0x20u);
    }

    v12 = [(APSNetworkMonitor *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 networkMonitorWiFiBecameAssociated:self];
    }
  }

  else if (v9)
  {
    v13 = [v6 isWiFiAssociated];
    v14 = @"NO";
    *v16 = 138412802;
    *&v16[4] = self;
    *&v16[12] = 2112;
    if (v13)
    {
      v14 = @"YES";
    }

    *&v16[14] = v14;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ received cutWiFiManagerLinkDidChange - ignoring since _shouldUseDualMode = NO. isWiFiAssociated? %@ context %@", v16, 0x20u);
  }

  v15 = [v7 objectForKey:{CUTWiFiManagerSSIDKey, *v16, *&v16[8]}];
  [(APSNetworkMonitor *)self _processSSIDChangeWithSSID:v15 querySSID:0];
  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)cutWiFiManager:(id)a3 generatedPowerReading:(id)a4
{
  v6 = a3;
  v7 = COERCE_DOUBLE(a4);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 138412802;
    *&v28[4] = self;
    *&v28[12] = 2112;
    *&v28[14] = v6;
    *&v28[22] = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ wifi manager %@ generated power reading %@", v28, 0x20u);
  }

  v8 = [*&v7 objectForKey:CUTWiFiManagerSSIDKey];
  [(APSNetworkMonitor *)self _processSSIDChangeWithSSID:v8 querySSID:0];
  v9 = CUTWiFiManagerPMDurationKey;
  v10 = [*&v7 objectForKey:CUTWiFiManagerPMDurationKey];
  v11 = [v10 unsignedIntegerValue];

  v12 = [*&v7 objectForKey:CUTWiFiManagerTotalDurationKey];
  v13 = COERCE_DOUBLE([v12 unsignedIntegerValue]);

  v14 = [*&v7 objectForKey:CUTWiFiManagerMaxMeasurementErrorKey];
  [v14 doubleValue];
  v16 = v15;

  if (v11 <= *&v13)
  {
    v19 = 1.0 - v11 / *&v13;
    if (v19 >= 0.05 && v16 >= 0.15)
    {
      v20 = v19 * (1.0 - v16);
      if (v20 >= 0.05)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *v28 = 138413058;
        *&v28[4] = self;
        *&v28[12] = 2048;
        *&v28[14] = v13;
        *&v28[22] = 2048;
        v29 = 1.0 - v11 / *&v13;
        LOWORD(v30) = 2048;
        *(&v30 + 2) = v16;
        v17 = "%@ ignoring measurement with duration %lu, awakePercentage %f, maxError %f";
        v18 = 42;
        goto LABEL_6;
      }

      v21 = ((1.0 - v20) * *&v13);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 138412546;
        *&v28[4] = self;
        *&v28[12] = 2048;
        *&v28[14] = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ adjusting short measurement to remove error - new valuePmDur = %lu", v28, 0x16u);
      }

      v22 = [*&v7 mutableCopy];
      v23 = [NSNumber numberWithUnsignedInteger:v21];
      [v22 setValue:v23 forKey:v9];

      v7 = *&v22;
    }

    v24 = [[APSTimestamp alloc] initWithValue:*&v7];
    wifiMeasurements = self->_wifiMeasurements;
    if (!wifiMeasurements)
    {
      v26 = objc_alloc_init(NSMutableArray);
      v27 = self->_wifiMeasurements;
      self->_wifiMeasurements = v26;

      wifiMeasurements = self->_wifiMeasurements;
    }

    [(NSMutableArray *)wifiMeasurements addObject:v24];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 138412802;
    *&v28[4] = self;
    *&v28[12] = 2048;
    *&v28[14] = v11;
    *&v28[22] = 2048;
    v29 = v13;
    v17 = "%@ ignoring seemingly invalid WiFi measurement pmDur %lu, totalDur %lu";
    v18 = 32;
LABEL_6:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v17, v28, v18);
  }

LABEL_16:
  [(APSNetworkMonitor *)self _flushStaleWiFiMeasurements:*v28];
  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)_processSSIDChangeWithSSID:(id)a3 querySSID:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v7 = 0;
    if (v4)
    {
      v8 = [(APSNetworkMonitor *)self wifiManager];
      v7 = [v8 currentSSID];
    }
  }

  if (v7 && ![(NSString *)self->_lastSSID isEqualToString:v7])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      lastSSID = self->_lastSSID;
      v14 = 138412802;
      v15 = self;
      v16 = 2112;
      v17 = lastSSID;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: ssid changed from %@ to %@, flushing wifi measurements", &v14, 0x20u);
    }

    v10 = [v7 copy];
    v11 = self->_lastSSID;
    self->_lastSSID = v10;

    wifiGrowAttempts = self->_wifiGrowAttempts;
    wifiMeasurements = self->_wifiMeasurements;
    self->_wifiMeasurements = 0;
    self->_wifiGrowAttemptsBeforeSSID = wifiGrowAttempts;
  }
}

- (void)setCurrentWiFiKeepAliveInterval:(double)a3 growAttempts:(unint64_t)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    v8 = self;
    v9 = 2048;
    v10 = a3;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ updating wifi keepAliveInterval %f  growAttempts %lu", &v7, 0x20u);
  }

  self->_wifiGrowAttempts = a4;
  self->_wifiKeepAliveInterval = a3;
  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)_flushStaleElementsFrom:(id *)a3 withThreshold:(double)a4
{
  v6 = objc_alloc_init(NSMutableArray);
  v7 = +[NSDate date];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = *a3;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v18 + 1) + 8 * v12);
      v14 = [v13 date];
      if ([v14 compare:v7] != 1)
      {
        [v14 timeIntervalSinceNow];
        if (v15 < 0.0)
        {
          v15 = -v15;
        }

        if (v15 <= a4)
        {
          [v6 addObject:v13];
        }
      }

      v16 = [v6 count];

      if (v16 > 0x31)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *a3;
  *a3 = 0;

  if ([v6 count])
  {
    objc_storeStrong(a3, v6);
  }
}

- (void)_handleSignificantTimeChange
{
  [(APSNetworkMonitor *)self _flushStaleWiFiMeasurements];

  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)notePushWithCost:(unint64_t)a3
{
  [(APSDecayTimer *)self->_decayTimer addCost:a3];

  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (BOOL)_checkPiggybackBudget
{
  v3 = [(APSNetworkMonitor *)self systemMonitor];
  v4 = [v3 isSystemLocked];

  lastPiggybackConnection = self->_lastPiggybackConnection;
  if (lastPiggybackConnection)
  {
    [(NSDate *)lastPiggybackConnection timeIntervalSinceNow];
    v7 = fabs(v6) < [(APSNetworkMonitor *)self secondsBetweenPiggybacks];
  }

  else
  {
    v7 = 0;
  }

  if ((v4 | v7))
  {
    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = @"NO";
      if (v4)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v20 = 138412802;
      v21 = self;
      v22 = 2112;
      v23 = v10;
      if (v7)
      {
        v9 = @"YES";
      }

      v24 = 2112;
      v25 = v9;
      v11 = "%@ system is locked %@ or too soon since last piggyback %@ - not allowing piggybacking";
      v12 = 32;
      goto LABEL_22;
    }
  }

  else
  {
    lastPiggybackReset = self->_lastPiggybackReset;
    if (lastPiggybackReset && ([(NSDate *)lastPiggybackReset timeIntervalSinceNow], fabs(v14) <= 86400.0))
    {
      piggybackCount = self->_piggybackCount;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_lastPiggybackReset;
        v20 = 138412546;
        v21 = self;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ last piggyback budget reset was %@, resetting now.", &v20, 0x16u);
      }

      v16 = objc_alloc_init(NSDate);
      v17 = self->_lastPiggybackReset;
      self->_lastPiggybackReset = v16;

      piggybackCount = 0;
      self->_piggybackCount = 0;
    }

    if (piggybackCount >= self->_maxPiggybackConnectionsPerDay)
    {
      v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v20 = 138412290;
        v21 = self;
        v11 = "%@ We have exceeded our piggybacking limit.  Do not piggyback.";
        v12 = 12;
LABEL_22:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, &v20, v12);
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (void)_clearConnectionThrottleTimer
{
  [(PCSimpleTimer *)self->_connectionThrottleTimer invalidate];
  connectionThrottleTimer = self->_connectionThrottleTimer;
  self->_connectionThrottleTimer = 0;
}

- (void)_connectionThrottleTimerFired
{
  [(APSNetworkMonitor *)self _clearConnectionThrottleTimer];
  self->_shouldThrottleConnection = 0;

  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)_clearPiggybackConnectionTimer
{
  [(PCSimpleTimer *)self->_piggybackConnectionTimer invalidate];
  piggybackConnectionTimer = self->_piggybackConnectionTimer;
  self->_piggybackConnectionTimer = 0;
}

- (void)_piggybackConnectionTimerFired
{
  [(APSNetworkMonitor *)self _clearPiggybackConnectionTimer];

  [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
}

- (void)openedSecondChannel
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: informed that second channel opened", buf, 0xCu);
  }

  v3 = [(APSNetworkMonitor *)self isPiggybacking];
  if (v3)
  {
    ++self->_piggybackCount;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      piggybackCount = self->_piggybackCount;
      *buf = 138412546;
      v27 = self;
      v28 = 2048;
      v29 = piggybackCount;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ this is a piggybacked connection. PiggybackCount %lu, starting piggyback connection timer", buf, 0x16u);
    }

    [(APSNetworkMonitor *)self _clearPiggybackConnectionTimer];
    if (!self->_disableDualModePiggybackTimer)
    {
      v5 = [PCSimpleTimer alloc];
      v6 = (0x15180 / self->_maxPiggybackConnectionsPerDay);
      v7 = [NSString stringWithFormat:@"APSNetworkMonitor-piggybackConnectionTimer-%@", self];
      v8 = [v5 initWithTimeInterval:v7 serviceIdentifier:self target:"_piggybackConnectionTimerFired" selector:0 userInfo:v6];
      piggybackConnectionTimer = self->_piggybackConnectionTimer;
      self->_piggybackConnectionTimer = v8;

      [(PCSimpleTimer *)self->_piggybackConnectionTimer setDisableSystemWaking:1];
      v10 = self->_piggybackConnectionTimer;
      v11 = +[NSRunLoop mainRunLoop];
      [(PCSimpleTimer *)v10 scheduleInRunLoop:v11];
    }

    v12 = [(APSNetworkMonitor *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 networkMonitor:self enableWiFiAssertionForPiggybackConnection:0];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ rescheduling our connection throttle timer", buf, 0xCu);
    }

    [(APSNetworkMonitor *)self _clearConnectionThrottleTimer];
    v13 = [PCSimpleTimer alloc];
    v14 = (0x15180 / self->_maxCostDrivenConnectionsPerDay);
    v15 = [NSString stringWithFormat:@"APSNetworkMonitor-connectionThrottle-%@", self];
    v16 = [v13 initWithTimeInterval:v15 serviceIdentifier:self target:"_connectionThrottleTimerFired" selector:0 userInfo:v14];
    connectionThrottleTimer = self->_connectionThrottleTimer;
    self->_connectionThrottleTimer = v16;

    [(PCSimpleTimer *)self->_connectionThrottleTimer setDisableSystemWaking:1];
    v18 = self->_connectionThrottleTimer;
    v12 = +[NSRunLoop mainRunLoop];
    [(PCSimpleTimer *)v18 scheduleInRunLoop:v12];
  }

  v24[0] = @"Piggybacked";
  v19 = [NSNumber numberWithBool:v3];
  v25[0] = v19;
  v24[1] = @"Piggyback Count";
  v20 = [NSNumber numberWithUnsignedInteger:self->_piggybackCount];
  v25[1] = v20;
  v24[2] = @"Accumulated push cost";
  v21 = [NSNumber numberWithUnsignedInteger:[(APSDecayTimer *)self->_decayTimer currentCost]];
  v25[2] = v21;
  v24[3] = @"WiFi awake percentage";
  [(APSNetworkMonitor *)self _accumulatedAwakePercentage];
  v22 = [NSNumber numberWithDouble:?];
  v25[3] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];

  APSPowerLog();
}

- (void)closedSecondChannel:(int64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1000067F8(a3);
    *buf = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: informed that second channel closed - %@", buf, 0x16u);
  }

  v6 = [(APSNetworkMonitor *)self isPiggybacking];
  if (a3 == 1 && v6)
  {
    v7 = [(APSNetworkMonitor *)self systemMonitor];
    v8 = [v7 isSystemLocked];

    if ((v8 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = self;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: This connection was piggybacked and we are unlocked - disabling piggybacking for some time (or until next lock)", buf, 0xCu);
      }

      v9 = objc_alloc_init(NSDate);
      lastPiggybackConnection = self->_lastPiggybackConnection;
      self->_lastPiggybackConnection = v9;
LABEL_14:
    }
  }

  else
  {
    v11 = v6 ^ 1;
    if (a3)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      lastPiggybackConnection = [(APSNetworkMonitor *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [lastPiggybackConnection networkMonitor:self enableWiFiAssertionForPiggybackConnection:1];
      }

      goto LABEL_14;
    }
  }

  if (!self->_shouldThrottleConnection && self->_connectionThrottleTimer)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Throttling second connection since we're still within the time period required between second channel attempts.", buf, 0xCu);
    }

    self->_shouldThrottleConnection = 1;
    goto LABEL_21;
  }

  if (!self->_piggybackConnectionTimer)
  {
LABEL_21:
    [(APSNetworkMonitor *)self _toggleWiFiAutoAssociateIfNecessary];
  }

  v12 = [NSNumber numberWithUnsignedInteger:self->_piggybackCount, @"Piggyback Count"];
  v17[0] = v12;
  v16[1] = @"Accumulated push cost";
  v13 = [NSNumber numberWithUnsignedInteger:[(APSDecayTimer *)self->_decayTimer currentCost]];
  v17[1] = v13;
  v16[2] = @"WiFi awake percentage";
  [(APSNetworkMonitor *)self _accumulatedAwakePercentage];
  v14 = [NSNumber numberWithDouble:?];
  v17[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  APSPowerLog();
}

+ (unint64_t)powerCostForPushOnRAT:(int)a3 withLinkQuality:(int)a4
{
  v5 = 1;
  if (a3 <= 2)
  {
    if (a3 < 0xFFFFFFFE)
    {
      if (a3 && a3 != 2)
      {
        return 0x3E8 / v5;
      }

      goto LABEL_10;
    }

    v8 = a4 <= 50;
    v5 = 6;
    v9 = 18;
    goto LABEL_29;
  }

  if (a3 <= 6)
  {
    if (a4 <= 50)
    {
      v7 = 1;
    }

    else
    {
      v7 = 18;
    }

    if ((a3 - 3) >= 3)
    {
      v5 = 1;
    }

    else
    {
      v5 = v7;
    }

    return 0x3E8 / v5;
  }

  if ((a3 - 7) >= 2)
  {
    if (a3 != 10)
    {
      if (a3 != 9)
      {
        return 0x3E8 / v5;
      }

LABEL_10:
      v6 = a4 <= 50;
      v5 = 8;
      goto LABEL_11;
    }

    v10 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
      v13 = [v12 interface5GMode];

      if (v13 == 3)
      {
        v8 = a4 <= 50;
        v5 = 3;
        v9 = 20;
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        v6 = a4 <= 50;
        v5 = 5;
LABEL_11:
        if (v6)
        {
          v5 = 1;
        }

        return 0x3E8 / v5;
      }
    }
  }

  v14 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  v15 = objc_opt_respondsToSelector();

  if ((v15 & 1) != 0 && (+[PCInterfaceMonitor sharedInstanceForIdentifier:](PCInterfaceMonitor, "sharedInstanceForIdentifier:", 1), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isLTEWithCDRX], v16, v17))
  {
    v8 = a4 <= 50;
    v5 = 6;
    v9 = 40;
  }

  else
  {
    v8 = a4 <= 50;
    v5 = 6;
    v9 = 10;
  }

LABEL_29:
  if (!v8)
  {
    v5 = v9;
  }

  return 0x3E8 / v5;
}

- (void)setCriticalReliability:(BOOL)a3
{
  if (self->_criticalReliability != a3)
  {
    v3 = a3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"disabled";
      if (v3)
      {
        v5 = @"enabled";
      }

      v6 = 138412546;
      v7 = self;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ critical reliability is now %@", &v6, 0x16u);
    }

    self->_criticalReliability = v3;
    if (v3)
    {
      [(APSDecayTimer *)self->_decayTimer forceTimerFire];
    }
  }
}

- (void)setDisableCostDrivenDualChannelAttempts:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    disableCostDrivenDualMode = self->_disableCostDrivenDualMode;
    v10 = 138413058;
    if (disableCostDrivenDualMode)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v11 = self;
    if (v6)
    {
      v7 = @"YES";
    }

    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setDisableCostDrivenDualChannelAttempts: changing from %@ to %@ (got number %@)", &v10, 0x2Au);
  }

  self->_disableCostDrivenDualMode = v6;
}

- (void)setCostDrivenDualChannelAttempts:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
    if (v6 <= 0x32)
    {
      v7 = 50;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 100;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    maxCostDrivenConnectionsPerDay = self->_maxCostDrivenConnectionsPerDay;
    v9 = 138413058;
    v10 = self;
    v11 = 2048;
    v12 = maxCostDrivenConnectionsPerDay;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setCostDrivenDualChannelAttempts: changing from %lu to %lu (got number %@)", &v9, 0x2Au);
  }

  self->_maxCostDrivenConnectionsPerDay = v7;
}

- (void)setPiggybackDualChannelAttempts:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
    if (v6 <= 0x32)
    {
      v7 = 50;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 50;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    maxPiggybackConnectionsPerDay = self->_maxPiggybackConnectionsPerDay;
    v9 = 138413058;
    v10 = self;
    v11 = 2048;
    v12 = maxPiggybackConnectionsPerDay;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setPiggybackDualChannelAttempts: changing from %lu to %lu (got number %@)", &v9, 0x2Au);
  }

  self->_maxPiggybackConnectionsPerDay = v7;
}

- (void)setDisableDualModePiggybackTimer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    disableDualModePiggybackTimer = self->_disableDualModePiggybackTimer;
    v10 = 138413058;
    if (disableDualModePiggybackTimer)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v11 = self;
    if (v6)
    {
      v7 = @"YES";
    }

    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ setDisableDualModePiggybackTimer: changing from %@ to %@ (got number %@)", &v10, 0x2Au);
  }

  self->_disableDualModePiggybackTimer = v6;
}

- (void)interfaceConstraintChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 interfaceConstraint] == 1 && self->_shouldUseDualMode;
  v6 = [v4 interfaceConstraint] != 1 && !self->_shouldUseDualMode;
  if (v5 || v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 interfaceConstraint];
      shouldUseDualMode = self->_shouldUseDualMode;
      *v10 = 138412802;
      *&v10[4] = self;
      if (shouldUseDualMode)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *&v10[12] = 2048;
      *&v10[14] = v7;
      v11 = 2112;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ interfaceConstraintChanged: %ld changing current dual mode %@)", v10, 0x20u);
    }

    [(APSDecayTimer *)self->_decayTimer forceTimerFire];
  }
}

@end