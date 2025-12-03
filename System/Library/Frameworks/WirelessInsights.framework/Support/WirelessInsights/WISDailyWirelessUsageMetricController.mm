@interface WISDailyWirelessUsageMetricController
- (WISDailyWirelessUsageMetricController)init;
- (int)registerForNotification:(const char *)notification withBlock:(id)block;
- (void)activeCallServicesChangedTo:(id)to;
- (void)cellularTransmitStateChangedTo:(id)to;
- (void)dataStatusChangedFor:(id)for to:(id)to;
- (void)dealloc;
- (void)handleABMServerStateChangedWithState:(id)state;
- (void)handleBasebandBootStateChangeWithState:(id)state;
- (void)handleChargingStateUpdate;
- (void)handleDataIconChangedTo:(id)to;
- (void)handleDisplayBlankedStateUpdate;
- (void)handleLowPowerModeStateUpdate;
- (void)handleSignalStrengthChangedFor:(id)for to:(id)to;
- (void)handleStewieStateChangedTo:(id)to;
- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state;
- (void)radioStateChangedTo:(int)to;
- (void)registrationStatusChangedFor:(id)for to:(id)to;
- (void)submitEventAndReset;
- (void)triggerMetric;
- (void)updateCurrentDataContext;
- (void)updateDurationFieldFor:(id)for isNowActive:(BOOL)active;
@end

@implementation WISDailyWirelessUsageMetricController

- (WISDailyWirelessUsageMetricController)init
{
  v8.receiver = self;
  v8.super_class = WISDailyWirelessUsageMetricController;
  v2 = [(WISDailyWirelessUsageMetricController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_queue = dispatch_queue_create("com.apple.wirelessinsightsd.DailyWirelessUsageMetric", v3);
    [(WISDailyWirelessUsageMetricController *)v2 setIsFirstMetricAfterBootup:1];
    [(WISDailyWirelessUsageMetricController *)v2 setIsFR2Active:0];
    [(WISDailyWirelessUsageMetricController *)v2 setChargingStateNotificationToken:[(WISDailyWirelessUsageMetricController *)v2 registerForNotification:"com.apple.system.powersources.source" withBlock:&stru_1002AE898]];
    [(WISDailyWirelessUsageMetricController *)v2 setLowPowerModeNotificationToken:[(WISDailyWirelessUsageMetricController *)v2 registerForNotification:"com.apple.system.lowpowermode" withBlock:&stru_1002AE8B8]];
    [(WISDailyWirelessUsageMetricController *)v2 setDisplayBlankedNotificationToken:[(WISDailyWirelessUsageMetricController *)v2 registerForNotification:"com.apple.springboard.hasBlankedScreen" withBlock:&stru_1002AE8D8]];
    objc_initWeak(&location, v2);
    pthread_mutex_lock(&stru_1002D4C10);
    v4 = xmmword_1002D4C50;
    if (!xmmword_1002D4C50)
    {
      sub_10012BF18();
    }

    if (*(&xmmword_1002D4C50 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002D4C50 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002D4C10);
    objc_copyWeak(&to, &location);
    v11 = 0;
    v9 = off_1002AE958;
    objc_moveWeak(&v10, &to);
    v11 = &v9;
    objc_destroyWeak(&to);
    sub_10012D000(v4, &v9);
  }

  return 0;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100203864();
  }

  if ([(WISDailyWirelessUsageMetricController *)self queue])
  {
    dispatch_release([(WISDailyWirelessUsageMetricController *)self queue]);
  }

  if ([(WISDailyWirelessUsageMetricController *)self chargingStateNotificationToken]!= -1)
  {
    notify_cancel([(WISDailyWirelessUsageMetricController *)self chargingStateNotificationToken]);
  }

  if ([(WISDailyWirelessUsageMetricController *)self lowPowerModeNotificationToken]!= -1)
  {
    notify_cancel([(WISDailyWirelessUsageMetricController *)self lowPowerModeNotificationToken]);
  }

  if ([(WISDailyWirelessUsageMetricController *)self displayBlankedNotificationToken]!= -1)
  {
    notify_cancel([(WISDailyWirelessUsageMetricController *)self displayBlankedNotificationToken]);
  }

  v3.receiver = self;
  v3.super_class = WISDailyWirelessUsageMetricController;
  [(WISDailyWirelessUsageMetricController *)&v3 dealloc];
}

- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state
{
  updateCopy = update;
  stateCopy = state;
  v9 = stateCopy;
  if (key > 7)
  {
    if (key <= 13)
    {
      if (key == 8)
      {
        if (stateCopy)
        {
          [(WISDailyWirelessUsageMetricController *)self registrationStatusChangedFor:updateCopy to:stateCopy];
        }
      }

      else if (key == 12)
      {
        [(WISDailyWirelessUsageMetricController *)self handleStewieStateChangedTo:stateCopy];
      }
    }

    else if (key == 14)
    {
      -[WISDailyWirelessUsageMetricController radioStateChangedTo:](self, "radioStateChangedTo:", [stateCopy intValue]);
    }

    else if (key == 16)
    {
      if (stateCopy)
      {
        [(WISDailyWirelessUsageMetricController *)self cellularTransmitStateChangedTo:stateCopy];
      }
    }

    else if (key == 17 && stateCopy)
    {
      [(WISDailyWirelessUsageMetricController *)self activeCallServicesChangedTo:stateCopy];
    }
  }

  else if (key <= 3)
  {
    if (key != 1)
    {
      if (key != 3)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (updateCopy)
    {
      [(WISDailyWirelessUsageMetricController *)self handleSignalStrengthChangedFor:updateCopy to:stateCopy];
    }
  }

  else
  {
    if (key != 4)
    {
      if (key != 6)
      {
        if (key == 7)
        {
          -[WISDailyWirelessUsageMetricController handleAirplaneModeStatusChangedTo:](self, "handleAirplaneModeStatusChangedTo:", [stateCopy BOOLValue]);
        }

        goto LABEL_28;
      }

LABEL_15:
      [(WISDailyWirelessUsageMetricController *)self updateCurrentDataContext];
      goto LABEL_28;
    }

    if (stateCopy)
    {
      [(WISDailyWirelessUsageMetricController *)self dataStatusChangedFor:updateCopy to:stateCopy];
    }
  }

LABEL_28:
}

- (void)radioStateChangedTo:(int)to
{
  [(WISDailyWirelessUsageMetricController *)self updateDurationFieldFor:@"basebandOnline" isNowActive:to == 0];

  [(WISDailyWirelessUsageMetricController *)self updateDurationFieldFor:@"basebandBooted" isNowActive:to < 2];
}

- (void)cellularTransmitStateChangedTo:(id)to
{
  toCopy = to;
  -[WISDailyWirelessUsageMetricController updateDurationFieldFor:isNowActive:](self, "updateDurationFieldFor:isNowActive:", @"basebandConnectedMode", [toCopy isEqualToString:kCTCellularTransmitStateConnected]);
}

- (void)registrationStatusChangedFor:(id)for to:(id)to
{
  forCopy = for;
  toCopy = to;
  currentDataContextUUID = [(WISDailyWirelessUsageMetricController *)self currentDataContextUUID];
  if (!currentDataContextUUID)
  {
    goto LABEL_14;
  }

  uuid = [forCopy uuid];
  currentDataContextUUID2 = [(WISDailyWirelessUsageMetricController *)self currentDataContextUUID];
  v11 = [uuid isEqual:currentDataContextUUID2];

  if (v11)
  {
    v12 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      uuid2 = [forCopy uuid];
      sub_100203950(uuid2, toCopy, v14, v12);
    }

    [(WISDailyWirelessUsageMetricController *)self setCurrentRegistrationState:toCopy];
    [(WISDailyWirelessUsageMetricController *)self updateDurationFieldFor:@"limitedService" isNowActive:[WISTelephonyUtils isRegistrationDisplayStatusLimitedService:toCopy]];
    if ([(WISDailyWirelessUsageMetricController *)self isAirplaneModeActive])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [forCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1002039AC();
      }
    }

    else
    {
      [(WISDailyWirelessUsageMetricController *)self updateDurationFieldFor:@"outOfService" isNowActive:[WISTelephonyUtils isRegistrationDisplayStatusOutOfService:toCopy]];
    }
  }

  else
  {
LABEL_14:
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [forCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_1002039F0();
    }
  }
}

- (void)dataStatusChangedFor:(id)for to:(id)to
{
  forCopy = for;
  toCopy = to;
  currentDataContextUUID = [(WISDailyWirelessUsageMetricController *)self currentDataContextUUID];
  if (!currentDataContextUUID)
  {
    goto LABEL_13;
  }

  uuid = [forCopy uuid];
  currentDataContextUUID2 = [(WISDailyWirelessUsageMetricController *)self currentDataContextUUID];
  v11 = [uuid isEqual:currentDataContextUUID2];

  if (v11)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_100203A34();
    }

    [(WISDailyWirelessUsageMetricController *)self setCurrentDataStatus:toCopy];
    v12 = [WISSystemStatusSimulacrum deriveConnectionTypeForDataStatus:toCopy];
    getStewieState = [(TelephonyStateRelay *)self->_ctRelay getStewieState];
    v14 = [TelephonyStateRelay deriveDataIcon:v12 stewieState:getStewieState];

    [(WISDailyWirelessUsageMetricController *)self handleDataIconChangedTo:v14];
    dataBearerSoMask = [toCopy dataBearerSoMask];
    if ((dataBearerSoMask & 8) != 0)
    {
      [(WISDailyWirelessUsageMetricController *)self setDidSeeFR2:1];
    }

    [(WISDailyWirelessUsageMetricController *)self setIsFR2Active:(dataBearerSoMask >> 3) & 1];
  }

  else
  {
LABEL_13:
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [forCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_100203AB8();
    }
  }
}

- (void)activeCallServicesChangedTo:(id)to
{
  toCopy = to;
  v5 = [toCopy mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  activeCallServices = [(WISDailyWirelessUsageMetricController *)self activeCallServices];
  v7 = [activeCallServices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(activeCallServices);
        }

        [v5 removeObject:*(*(&v13 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [activeCallServices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    [(WISDailyWirelessUsageMetricController *)self setNumConnectedCalls:[(WISDailyWirelessUsageMetricController *)self numConnectedCalls]+ 1];
  }

  -[WISDailyWirelessUsageMetricController updateDurationFieldFor:isNowActive:](self, "updateDurationFieldFor:isNowActive:", @"activeCalls", [toCopy count] != 0);
  v10 = [NSNumber numberWithInt:1];
  v11 = [v5 containsObject:v10];

  if (v11)
  {
    [(WISDailyWirelessUsageMetricController *)self setNumConnectedTelephonyCalls:[(WISDailyWirelessUsageMetricController *)self numConnectedTelephonyCalls]+ 1];
  }

  v12 = [NSNumber numberWithInt:1];
  -[WISDailyWirelessUsageMetricController updateDurationFieldFor:isNowActive:](self, "updateDurationFieldFor:isNowActive:", @"activeTelephonyCalls", [toCopy containsObject:v12]);

  [(WISDailyWirelessUsageMetricController *)self setActiveCallServices:toCopy];
}

- (void)handleSignalStrengthChangedFor:(id)for to:(id)to
{
  forCopy = for;
  toCopy = to;
  v8 = toCopy;
  if (toCopy)
  {
    displayBars = [toCopy displayBars];
    if (displayBars)
    {
      currentCellularSignalBars = [(WISDailyWirelessUsageMetricController *)self currentCellularSignalBars];
      if (!currentCellularSignalBars || (-[WISDailyWirelessUsageMetricController currentCellularSignalBars](self, "currentCellularSignalBars"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToNumber:displayBars], v11, currentCellularSignalBars, (v12 & 1) == 0))
      {
        [(WISDailyWirelessUsageMetricController *)self setNumCellularSignalBarChanges:[(WISDailyWirelessUsageMetricController *)self numCellularSignalBarChanges]+ 1];
        [(WISDailyWirelessUsageMetricController *)self setCurrentCellularSignalBars:displayBars];
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [(WISDailyWirelessUsageMetricController *)self numCellularSignalBarChanges];
          [(WISDailyWirelessUsageMetricController *)self currentCellularSignalBars];
          objc_claimAutoreleasedReturnValue();
          sub_100203AFC();
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [forCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_100203B44();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    [forCopy uuid];
    objc_claimAutoreleasedReturnValue();
    sub_100203B88();
  }
}

- (void)handleStewieStateChangedTo:(id)to
{
  toCopy = to;
  currentDataStatus = [(WISDailyWirelessUsageMetricController *)self currentDataStatus];
  if (currentDataStatus)
  {
    v6 = [TelephonyStateRelay deriveDataIcon:[WISSystemStatusSimulacrum deriveConnectionTypeForDataStatus:currentDataStatus] stewieState:toCopy];
    [(WISDailyWirelessUsageMetricController *)self handleDataIconChangedTo:v6];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100203BCC();
  }
}

- (void)handleChargingStateUpdate
{
  v3 = IOPSGetTimeRemainingEstimate();

  [(WISDailyWirelessUsageMetricController *)self updateDurationFieldFor:@"charging" isNowActive:v3 == -2.0];
}

- (void)handleLowPowerModeStateUpdate
{
  state64 = 0;
  if (notify_get_state([(WISDailyWirelessUsageMetricController *)self lowPowerModeNotificationToken], &state64))
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_100203C08();
    }
  }

  else
  {
    [(WISDailyWirelessUsageMetricController *)self updateDurationFieldFor:@"lowPowerMode" isNowActive:state64 != 0];
  }
}

- (void)handleDisplayBlankedStateUpdate
{
  state64 = 0;
  if (notify_get_state([(WISDailyWirelessUsageMetricController *)self displayBlankedNotificationToken], &state64))
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_100203C44();
    }
  }

  else
  {
    [(WISDailyWirelessUsageMetricController *)self updateDurationFieldFor:@"screenOn" isNowActive:state64 == 0];
  }
}

- (void)handleBasebandBootStateChangeWithState:(id)state
{
  stateCopy = state;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100203C80();
  }

  v5 = [NSString stringWithUTF8String:abm::kKeyBasebandBootState];
  v14 = 0;
  v6 = [WISXPCUtils extractValueFromDict:stateCopy atKey:v5 ofExpectedClass:objc_opt_class() error:&v14];
  v7 = v14;

  if (v7 || !v6)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_100203CF0();
    }
  }

  else
  {
    v8 = [NSString stringWithUTF8String:abm::kBasebandBootStateWillReset];
    v9 = [v6 isEqualToString:v8];

    if (v9)
    {
      [(WISDailyWirelessUsageMetricController *)self setNumBasebandCrashes:[(WISDailyWirelessUsageMetricController *)self numBasebandCrashes]+ 1];
      v10 = [NSString stringWithUTF8String:abm::kKeyBasebandResetIsMTBF];
      v13 = 0;
      v11 = [WISXPCUtils extractValueFromDict:stateCopy atKey:v10 ofExpectedClass:objc_opt_class() error:&v13];
      v7 = v13;

      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        sub_100203D60(v11, v16, [(WISDailyWirelessUsageMetricController *)self numBasebandCrashes]);
      }

      if (v7 || !v11)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          sub_100203D9C();
        }
      }

      else
      {
        if ([v11 BOOLValue])
        {
          [(WISDailyWirelessUsageMetricController *)self setNumBasebandMTBFCrashes:[(WISDailyWirelessUsageMetricController *)self numBasebandMTBFCrashes]+ 1];
        }

        v12 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_100203E0C(v15, [(WISDailyWirelessUsageMetricController *)self numBasebandCrashes], [(WISDailyWirelessUsageMetricController *)self numBasebandMTBFCrashes], v12);
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }
}

- (void)handleABMServerStateChangedWithState:(id)state
{
  stateCopy = state;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100203E58();
  }

  v5 = [NSString stringWithUTF8String:abm::kKeyServerState];
  v11 = 0;
  v6 = [WISXPCUtils extractValueFromDict:stateCopy atKey:v5 ofExpectedClass:objc_opt_class() error:&v11];
  v7 = v11;

  if (v7 || !v6)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_100203EC8();
    }
  }

  else
  {
    v8 = [NSString stringWithUTF8String:abm::kServerStateError];
    v9 = [v6 isEqualToString:v8];

    if (v9)
    {
      [(WISDailyWirelessUsageMetricController *)self setNumCommCenterCrashes:[(WISDailyWirelessUsageMetricController *)self numCommCenterCrashes]+ 1];
      v10 = *(qword_1002DBE98 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100203F38(v12, [(WISDailyWirelessUsageMetricController *)self numCommCenterCrashes], v10);
      }
    }
  }
}

- (void)handleDataIconChangedTo:(id)to
{
  toCopy = to;
  currentDataIcon = [(WISDailyWirelessUsageMetricController *)self currentDataIcon];
  if (!currentDataIcon || (-[WISDailyWirelessUsageMetricController currentDataIcon](self, "currentDataIcon"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:toCopy], v6, currentDataIcon, (v7 & 1) == 0))
  {
    [(WISDailyWirelessUsageMetricController *)self setNumCellularRATIconChanges:[(WISDailyWirelessUsageMetricController *)self numCellularRATIconChanges]+ 1];
    [(WISDailyWirelessUsageMetricController *)self setCurrentDataIcon:toCopy];
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [(WISDailyWirelessUsageMetricController *)self numCellularRATIconChanges];
      [(WISDailyWirelessUsageMetricController *)self currentDataIcon];
      objc_claimAutoreleasedReturnValue();
      sub_100203F74();
    }
  }
}

- (void)updateDurationFieldFor:(id)for isNowActive:(BOOL)active
{
  activeCopy = active;
  forCopy = for;
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100203FBC();
  }

  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  durationTrackingDict = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
  v9 = [durationTrackingDict valueForKey:forCopy];

  if (v9)
  {
    if (activeCopy)
    {
      [v9 hasBecomeActiveAtTimestamp:v7];
    }

    else
    {
      [v9 hasBecomeInactiveAtTimestamp:v7];
    }

    v10 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412802;
      v12 = forCopy;
      v13 = 2112;
      v14 = v9;
      v15 = 1024;
      v16 = activeCopy;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "DailyWirelessUsageMetric:#D Updated duration tracker for field %@: %@ (switched to %{BOOL}d)", &v11, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_100204044();
  }
}

- (int)registerForNotification:(const char *)notification withBlock:(id)block
{
  blockCopy = block;
  out_token = -1;
  selfCopy = self;
  queue = [(WISDailyWirelessUsageMetricController *)selfCopy queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10009C8E4;
  handler[3] = &unk_1002AE900;
  notificationCopy = notification;
  handler[4] = selfCopy;
  v9 = blockCopy;
  v16 = v9;
  if (notify_register_dispatch(notification, &out_token, queue, handler))
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1002040B4();
    }

    v10 = -1;
  }

  else
  {
    queue2 = [(WISDailyWirelessUsageMetricController *)selfCopy queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009C96C;
    v13[3] = &unk_1002AE928;
    v13[4] = selfCopy;
    v14 = v9;
    dispatch_async(queue2, v13);
    v10 = out_token;
  }

  return v10;
}

- (void)updateCurrentDataContext
{
  [(WISDailyWirelessUsageMetricController *)self setCurrentDataContextUUID:0];
  [(WISDailyWirelessUsageMetricController *)self setCurrentRegistrationState:0];
  ctRelay = [(WISDailyWirelessUsageMetricController *)self ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];
  v12 = 0;
  v5 = [coreTelephonyClient getCurrentDataSubscriptionContextSync:&v12];
  v6 = v12;

  v7 = *(qword_1002DBE98 + 48);
  if (v6 || !v5)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_10020419C();
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_10020420C();
    }

    uuid = [v5 uuid];
    [(WISDailyWirelessUsageMetricController *)self setCurrentDataContextUUID:uuid];

    ctRelay2 = [(WISDailyWirelessUsageMetricController *)self ctRelay];
    v11 = 0;
    v10 = [ctRelay2 copyCTRegistrationStatus:v5 error:&v11];
    v6 = v11;

    if (v6 || !v10)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_10020427C();
      }
    }

    else
    {
      [(WISDailyWirelessUsageMetricController *)self setCurrentRegistrationState:v10];
    }
  }
}

- (void)submitEventAndReset
{
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  startTimestamp = [(WISDailyWirelessUsageMetricController *)self startTimestamp];
  v5 = v3 - startTimestamp;
  if (v3 >= startTimestamp)
  {
    v52[0] = @"baseband_num_mtbf_crashes";
    v48 = [NSNumber numberWithUnsignedInteger:[(WISDailyWirelessUsageMetricController *)self numBasebandMTBFCrashes]];
    v53 = v48;
    v52[1] = @"baseband_num_resets";
    v54 = [NSNumber numberWithUnsignedInteger:[(WISDailyWirelessUsageMetricController *)self numBasebandCrashes]];
    v52[2] = @"baseband_duration_online";
    durationTrackingDict = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v46 = [durationTrackingDict objectForKey:@"basebandOnline"];
    v41 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v55 = v41;
    v52[3] = @"baseband_duration_booted";
    durationTrackingDict2 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v44 = [durationTrackingDict2 objectForKey:@"basebandBooted"];
    v39 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v44 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v56 = v39;
    v52[4] = @"baseband_duration_connected_mode";
    durationTrackingDict3 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v42 = [durationTrackingDict3 objectForKey:@"basebandConnectedMode"];
    v38 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v42 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v57 = v38;
    v52[5] = @"num_commcenter_resets";
    v34 = [NSNumber numberWithUnsignedInteger:[(WISDailyWirelessUsageMetricController *)self numCommCenterCrashes]];
    v58 = v34;
    v52[6] = @"duration_oos";
    durationTrackingDict4 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v37 = [durationTrackingDict4 objectForKey:@"outOfService"];
    v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v37 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v59 = v32;
    v52[7] = @"duration_limited_service";
    durationTrackingDict5 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v35 = [durationTrackingDict5 objectForKey:@"limitedService"];
    v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v35 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v60 = v31;
    v52[8] = @"num_airplane_mode_toggles";
    v28 = [NSNumber numberWithUnsignedInteger:[(WISDailyWirelessUsageMetricController *)self numAirplaneModeToggles]];
    v61 = v28;
    v52[9] = @"duration_screen_on";
    durationTrackingDict6 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v30 = [durationTrackingDict6 objectForKey:@"screenOn"];
    v24 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v30 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v62 = v24;
    v52[10] = @"duration_low_power_mode";
    durationTrackingDict7 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v27 = [durationTrackingDict7 objectForKey:@"lowPowerMode"];
    v63 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v27 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v52[11] = @"duration_charging";
    durationTrackingDict8 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v26 = [durationTrackingDict8 objectForKey:@"charging"];
    v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v26 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v64 = v22;
    v52[12] = @"num_connected_calls";
    v21 = [NSNumber numberWithUnsignedInteger:[(WISDailyWirelessUsageMetricController *)self numConnectedCalls]];
    v65 = v21;
    v52[13] = @"num_connected_telephony_calls";
    v17 = [NSNumber numberWithUnsignedInteger:[(WISDailyWirelessUsageMetricController *)self numConnectedTelephonyCalls]];
    v66 = v17;
    v52[14] = @"duration_calls";
    durationTrackingDict9 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v20 = [durationTrackingDict9 objectForKey:@"activeCalls"];
    v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v20 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v67 = v15;
    v52[15] = @"duration_telephony_calls";
    durationTrackingDict10 = [(WISDailyWirelessUsageMetricController *)self durationTrackingDict];
    v19 = [durationTrackingDict10 objectForKey:@"activeTelephonyCalls"];
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 getTotalDurationAndResetAtTimestamp:v3] / 0x3B9ACA00);
    v68 = v6;
    v52[16] = @"was_fr2_seen";
    v7 = [NSNumber numberWithBool:[(WISDailyWirelessUsageMetricController *)self didSeeFR2]];
    v69 = v7;
    v52[17] = @"is_after_bootup";
    v8 = [NSNumber numberWithBool:[(WISDailyWirelessUsageMetricController *)self isFirstMetricAfterBootup]];
    v9 = v5;
    v70 = v8;
    v52[18] = @"num_cell_rat_icon_changes";
    v10 = [NSNumber numberWithUnsignedInteger:[(WISDailyWirelessUsageMetricController *)self numCellularRATIconChanges]];
    v71 = v10;
    v52[19] = @"num_cell_signal_bar_changes";
    v11 = [NSNumber numberWithUnsignedInteger:[(WISDailyWirelessUsageMetricController *)self numCellularSignalBarChanges]];
    v72 = v11;
    v52[20] = @"duration";
    0x3B9ACA00 = [NSNumber numberWithUnsignedLongLong:v9 / 0x3B9ACA00];
    v73 = 0x3B9ACA00;
    v14 = v63;
    v13 = v54;
    v47 = [NSDictionary dictionaryWithObjects:&v53 forKeys:v52 count:21];

    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      sub_100204300();
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10009D6C0;
    v50[3] = &unk_1002AB460;
    v49 = v47;
    v51 = v49;
    sub_1000158DC(@"com.apple.Telephony.dailyWirelessUsage", v50);
    [(WISDailyWirelessUsageMetricController *)self resetAtTimestamp:v3 isBootup:0];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_100204388();
    }

    [(WISDailyWirelessUsageMetricController *)self resetAtTimestamp:v3 isBootup:0];
  }
}

- (void)triggerMetric
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D7F8;
  block[3] = &unk_1002AB4D0;
  block[4] = self;
  dispatch_async([(WISDailyWirelessUsageMetricController *)self queue], block);
}

@end