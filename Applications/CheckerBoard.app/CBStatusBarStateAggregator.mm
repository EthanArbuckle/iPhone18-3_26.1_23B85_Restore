@interface CBStatusBarStateAggregator
+ (id)sharedInstance;
- (BOOL)_isLowPowerModeActive;
- (BOOL)_setItem:(int)item enabled:(BOOL)enabled;
- (CBStatusBarStateAggregator)init;
- (id)_batteryItemPercentFormatter;
- (id)_timeItemDateFormatter;
- (id)_timeItemShortDateFormatter;
- (void)_initialStatusBarSetup;
- (void)_postStatusBarUpdates;
- (void)_registerForNotifications;
- (void)_restartTimeItemTimer;
- (void)_setupBattery;
- (void)_setupLock;
- (void)_setupTime;
- (void)_setupVisibility;
- (void)_setupWiFi;
- (void)_stopTimeItemTimer;
- (void)_updateBatteryItems;
- (void)_updateDataNetworkItem;
- (void)_updateLockItem;
- (void)_updateSensorActivityItem;
- (void)_updateStatusBarVisibility:(id)visibility;
- (void)_updateTimeItems;
- (void)connectedDevicesDidChange:(id)change;
- (void)dealloc;
- (void)forceUpdateStatusBarData;
- (void)updateStatusBarItem:(int)item;
@end

@implementation CBStatusBarStateAggregator

+ (id)sharedInstance
{
  if (qword_1000922F8 != -1)
  {
    sub_100046B30();
  }

  v3 = qword_1000922F0;

  return v3;
}

- (CBStatusBarStateAggregator)init
{
  v8.receiver = self;
  v8.super_class = CBStatusBarStateAggregator;
  v2 = [(CBStatusBarStateAggregator *)&v8 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up status bar aggregator…", v7, 2u);
    }

    v4 = +[CBWiFiManager sharedInstance];
    wifiManager = v2->_wifiManager;
    v2->_wifiManager = v4;

    v2->_lastLockStateSet = 0;
    *&v2->_isHidden = 0;
    [(CBStatusBarStateAggregator *)v2 _initialStatusBarSetup];
    [(CBStatusBarStateAggregator *)v2 _registerForNotifications];
  }

  return v2;
}

- (void)_initialStatusBarSetup
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing status bar data…", v4, 2u);
  }

  bzero(&self->_data, 0xF28uLL);
  *(&self->_data + 2536) = *(&self->_data + 2536) & 0xFD | (2 * ([UIApp userInterfaceLayoutDirection] == 1));
}

- (void)dealloc
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc was called", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  [(CBStatusBarStateAggregator *)self _stopTimeItemTimer];
  device = [(CBStatusBarStateAggregator *)self device];
  [device setBatteryMonitoringEnabled:0];

  batteryDeviceController = [(CBStatusBarStateAggregator *)self batteryDeviceController];
  [batteryDeviceController removeBatteryDeviceObserver:self];

  v8.receiver = self;
  v8.super_class = CBStatusBarStateAggregator;
  [(CBStatusBarStateAggregator *)&v8 dealloc];
}

- (void)_registerForNotifications
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering for notifications…", v4, 2u);
  }

  [(CBStatusBarStateAggregator *)self _setupLock];
  [(CBStatusBarStateAggregator *)self _setupTime];
  [(CBStatusBarStateAggregator *)self _setupBattery];
  [(CBStatusBarStateAggregator *)self _setupWiFi];
  [(CBStatusBarStateAggregator *)self _setupVisibility];
}

- (void)updateStatusBarItem:(int)item
{
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    itemCopy2 = item;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating status bar item (%d)…", &v7, 8u);
  }

  if (item <= 11)
  {
    if (!item)
    {
      [(CBStatusBarStateAggregator *)self _updateTimeItems];
      return;
    }

    if (item == 9)
    {
      [(CBStatusBarStateAggregator *)self _updateDataNetworkItem];
      return;
    }
  }

  else
  {
    if ((item - 12) < 3)
    {
      [(CBStatusBarStateAggregator *)self _updateBatteryItems];
      return;
    }

    if (item == 28)
    {
      [(CBStatusBarStateAggregator *)self _updateSensorActivityItem];
      return;
    }

    if (item == 39)
    {
      [(CBStatusBarStateAggregator *)self _updateLockItem];
      return;
    }
  }

  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    itemCopy2 = item;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CBStatusBarStateAggregator] cannot update unknown status bar item (%i)", &v7, 8u);
  }
}

- (void)forceUpdateStatusBarData
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forcing status bar data update", v4, 2u);
  }

  [(CBStatusBarStateAggregator *)self _postStatusBarUpdates];
}

- (BOOL)_setItem:(int)item enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    LODWORD(v14) = item;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting status bar item (%d)…", &v13, 8u);
  }

  if (item > 0x2D)
  {
    return 0;
  }

  v8 = self + item;
  v9 = v8[8];
  v8[8] = enabledCopy;
  [(CBStatusBarStateAggregator *)self _postStatusBarUpdates];
  if (v9 == enabledCopy)
  {
    return 0;
  }

  v11 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"dis";
    if (enabledCopy)
    {
      v12 = @"en";
    }

    v13 = 138412546;
    v14 = v12;
    v15 = 1024;
    itemCopy = item;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@abling %d", &v13, 0x12u);
  }

  return 1;
}

- (void)_postStatusBarUpdates
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posting status bar updates…", v4, 2u);
  }

  [UIStatusBarServer postStatusBarData:&self->_data withActions:0];
}

- (void)_setupLock
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up lock notifications…", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100008AF4, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
  [(CBStatusBarStateAggregator *)self updateStatusBarItem:39];
}

- (void)_updateLockItem
{
  v3 = MKBGetDeviceLockState() - 1;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3 < 2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating lock item state %d", v6, 8u);
  }

  [(CBStatusBarStateAggregator *)self _setItem:39 enabled:v3 < 2];
  if ([(CBStatusBarStateAggregator *)self lastLockStateSet])
  {
    if (v3 < 2 != [(CBStatusBarStateAggregator *)self lastLockState])
    {
      v5 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "But I keep checking…", v6, 2u);
      }

      [CBSystem checkoutAndReboot:1 userInitiated:0];
    }
  }

  else
  {
    [(CBStatusBarStateAggregator *)self setLastLockState:v3 < 2];
    [(CBStatusBarStateAggregator *)self setLastLockStateSet:1];
  }
}

- (id)_timeItemDateFormatter
{
  if (qword_100092308 != -1)
  {
    sub_100046B44();
  }

  v3 = qword_100092300;

  return v3;
}

- (id)_timeItemShortDateFormatter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008DD8;
  block[3] = &unk_10007D540;
  block[4] = self;
  if (qword_100092318 != -1)
  {
    dispatch_once(&qword_100092318, block);
  }

  return qword_100092310;
}

- (void)_setupTime
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up time notifications…", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_restartTimeItemTimer" name:@"CBDidWakeFromSleepNotification" object:0];

  [(CBStatusBarStateAggregator *)self _restartTimeItemTimer];
}

- (void)_stopTimeItemTimer
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating time item timer…", v5, 2u);
  }

  timeItemTimer = [(CBStatusBarStateAggregator *)self timeItemTimer];
  [timeItemTimer invalidate];

  [(CBStatusBarStateAggregator *)self setTimeItemTimer:0];
}

- (void)_restartTimeItemTimer
{
  [(CBStatusBarStateAggregator *)self _updateTimeItems];
  [(CBStatusBarStateAggregator *)self _stopTimeItemTimer];
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Restarting time item timer…", v8, 2u);
  }

  BSTimeUntilNextClockMinute();
  v5 = [NSTimer timerWithTimeInterval:self target:a2 selector:0 userInfo:0 repeats:?];
  [(CBStatusBarStateAggregator *)self setTimeItemTimer:v5];

  v6 = +[NSRunLoop currentRunLoop];
  timeItemTimer = [(CBStatusBarStateAggregator *)self timeItemTimer];
  [v6 addTimer:timeItemTimer forMode:NSRunLoopCommonModes];
}

- (void)_updateTimeItems
{
  v3 = +[NSDate date];
  _timeItemDateFormatter = [(CBStatusBarStateAggregator *)self _timeItemDateFormatter];
  v5 = [_timeItemDateFormatter stringFromDate:v3];

  _timeItemShortDateFormatter = [(CBStatusBarStateAggregator *)self _timeItemShortDateFormatter];
  v7 = [_timeItemShortDateFormatter stringFromDate:v3];

  timeItemTimeString = [(CBStatusBarStateAggregator *)self timeItemTimeString];
  v9 = [v5 isEqualToString:timeItemTimeString];

  if ((v9 & 1) == 0)
  {
    v10 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      timeItemTimeString2 = [(CBStatusBarStateAggregator *)self timeItemTimeString];
      v19 = 138412546;
      v20 = timeItemTimeString2;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating the standard time string from %@ to %@", &v19, 0x16u);
    }

    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      timeItemShortTimeString = [(CBStatusBarStateAggregator *)self timeItemShortTimeString];
      v19 = 138412546;
      v20 = timeItemShortTimeString;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating the short time string from %@ to %@", &v19, 0x16u);
    }

    [(CBStatusBarStateAggregator *)self setTimeItemTimeString:v5];
    [(CBStatusBarStateAggregator *)self setTimeItemShortTimeString:v7];
    timeItemTimeString3 = [(CBStatusBarStateAggregator *)self timeItemTimeString];
    v15 = [timeItemTimeString3 getCString:self->_data.timeString maxLength:64 encoding:4];

    timeItemShortTimeString2 = [(CBStatusBarStateAggregator *)self timeItemShortTimeString];
    v17 = [timeItemShortTimeString2 getCString:self->_data.shortTimeString maxLength:64 encoding:4];

    if ((v15 & 1) != 0 || v17)
    {
      v18 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating the time…", &v19, 2u);
      }

      [(CBStatusBarStateAggregator *)self _setItem:0 enabled:1];
    }

    else
    {
      *&self->_data.timeString[48] = 0u;
      *&self->_data.timeString[32] = 0u;
      *&self->_data.timeString[16] = 0u;
      *self->_data.timeString = 0u;
    }
  }
}

- (id)_batteryItemPercentFormatter
{
  if (qword_100092328 != -1)
  {
    sub_100046B58();
  }

  v3 = qword_100092320;

  return v3;
}

- (void)_setupBattery
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up battery notifications…", v9, 2u);
  }

  v4 = +[UIDevice currentDevice];
  [(CBStatusBarStateAggregator *)self setDevice:v4];

  device = [(CBStatusBarStateAggregator *)self device];
  [device setBatteryMonitoringEnabled:1];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_updateBatteryItems" name:UIDeviceBatteryLevelDidChangeNotification object:0];

  v7 = objc_alloc_init(BCBatteryDeviceController);
  [(CBStatusBarStateAggregator *)self setBatteryDeviceController:v7];

  batteryDeviceController = [(CBStatusBarStateAggregator *)self batteryDeviceController];
  [batteryDeviceController addBatteryDeviceObserver:self queue:&_dispatch_main_q];

  [(CBStatusBarStateAggregator *)self updateStatusBarItem:12];
}

- (BOOL)_isLowPowerModeActive
{
  out_token = -1;
  v2 = notify_register_dispatch("com.apple.system.lowpowermode", &out_token, &_dispatch_main_q, &stru_10007D820);
  v8 = 0;
  v3 = out_token;
  if (out_token != -1 && v2 == 0)
  {
    if (notify_get_state(out_token, &v8))
    {
      v6 = 1;
    }

    else
    {
      v6 = v8 == 0;
    }

    v5 = !v6;
    v3 = out_token;
  }

  else
  {
    v5 = 0;
  }

  notify_cancel(v3);
  return v5;
}

- (void)_updateBatteryItems
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating battery items…", v33, 2u);
  }

  batteryState = self->_data.batteryState;
  device = [(CBStatusBarStateAggregator *)self device];
  [device batteryLevel];
  v7 = v6;

  _isLowPowerModeActive = [(CBStatusBarStateAggregator *)self _isLowPowerModeActive];
  currentBatteryDevice = [(CBStatusBarStateAggregator *)self currentBatteryDevice];

  if (currentBatteryDevice)
  {
    currentBatteryDevice2 = [(CBStatusBarStateAggregator *)self currentBatteryDevice];
    percentCharge = [currentBatteryDevice2 percentCharge];

    currentBatteryDevice3 = [(CBStatusBarStateAggregator *)self currentBatteryDevice];
    if ([currentBatteryDevice3 powerSourceState] == 2)
    {
      currentBatteryDevice4 = [(CBStatusBarStateAggregator *)self currentBatteryDevice];
      percentCharge2 = [currentBatteryDevice4 percentCharge];

      if (percentCharge2 == 100)
      {
        v15 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          v16 = "Device is plugged into power and the battery is fully charged";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, v33, 2u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    currentBatteryDevice5 = [(CBStatusBarStateAggregator *)self currentBatteryDevice];
    isCharging = [currentBatteryDevice5 isCharging];

    v15 = CheckerBoardLogHandleForCategory();
    v22 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (isCharging)
    {
      if (v22)
      {
        *v33 = 0;
        v16 = "Device is plugged into power and the battery is charging";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (!v22)
    {
      goto LABEL_26;
    }

    *v33 = 0;
    goto LABEL_25;
  }

  percentCharge = (v7 * 100.0);
  device2 = [(CBStatusBarStateAggregator *)self device];
  batteryState = [device2 batteryState];

  v15 = CheckerBoardLogHandleForCategory();
  v19 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (batteryState == 1)
  {
    if (!v19)
    {
LABEL_26:
      batteryState = 0;
      goto LABEL_27;
    }

    *v33 = 0;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device is not plugged into power; the battery is discharging", v33, 2u);
    goto LABEL_26;
  }

  if (batteryState == 2)
  {
    if (v19)
    {
      *v33 = 0;
      v16 = "Device is plugged into power and the battery is charging";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (batteryState == 3)
  {
    if (v19)
    {
      *v33 = 0;
      v16 = "Device is plugged into power and the battery is fully charged";
      goto LABEL_21;
    }

LABEL_22:
    batteryState = 1;
    goto LABEL_27;
  }

  if (v19)
  {
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device is not connected to power", v33, 2u);
  }

LABEL_27:

  if (percentCharge <= 0)
  {
    v23 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Battery percentage is less than 0", v33, 2u);
    }

    percentCharge = 1;
  }

  _batteryItemPercentFormatter = [(CBStatusBarStateAggregator *)self _batteryItemPercentFormatter];
  v25 = percentCharge / 100.0;
  *&v25 = v25;
  v26 = [NSNumber numberWithFloat:v25];
  v27 = [_batteryItemPercentFormatter stringFromNumber:v26];

  batteryDetailString = [(CBStatusBarStateAggregator *)self batteryDetailString];
  v29 = [v27 isEqualToString:batteryDetailString];

  if ((v29 & 1) == 0)
  {
    v30 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Updating battery detail string…", v33, 2u);
    }

    [(CBStatusBarStateAggregator *)self setBatteryDetailString:v27];
    batteryDetailString2 = [(CBStatusBarStateAggregator *)self batteryDetailString];
    [batteryDetailString2 getCString:self->_data.batteryDetailString maxLength:150 encoding:4];
  }

  if (percentCharge == self->_data.batteryCapacity && batteryState == self->_data.batteryState && _isLowPowerModeActive == (*(&self->_data + 2536) & 1))
  {
    if (v29)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v32 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Updating battery info…", v33, 2u);
    }

    self->_data.batteryCapacity = percentCharge;
    self->_data.batteryState = batteryState;
    *(&self->_data + 2536) = *(&self->_data + 2536) & 0xFE | _isLowPowerModeActive;
  }

  [(CBStatusBarStateAggregator *)self _setItem:12 enabled:1];
  [(CBStatusBarStateAggregator *)self _setItem:13 enabled:1];
LABEL_42:
}

- (void)_setupWiFi
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up Wi-Fi notifications…", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_updateDataNetworkItem" name:@"CBWiFiSignalStrengthChangedNotification" object:0];

  [(CBStatusBarStateAggregator *)self updateStatusBarItem:9];
}

- (void)_updateDataNetworkItem
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating data network item…", buf, 2u);
  }

  dataNetworkType = self->_data.dataNetworkType;
  wifiManager = [(CBStatusBarStateAggregator *)self wifiManager];
  isAssociatedToNetwork = [wifiManager isAssociatedToNetwork];

  if (isAssociatedToNetwork)
  {
    wifiManager2 = [(CBStatusBarStateAggregator *)self wifiManager];
    signalStrengthBars = [wifiManager2 signalStrengthBars];

    wifiManager3 = [(CBStatusBarStateAggregator *)self wifiManager];
    signalStrengthRSSI = [wifiManager3 signalStrengthRSSI];

    dataNetworkType = 5;
  }

  else
  {
    signalStrengthBars = 0;
    signalStrengthRSSI = 0;
  }

  v11 = self->_data.dataNetworkType;
  if (dataNetworkType != v11)
  {
    self->_data.dataNetworkType = dataNetworkType;
  }

  if (signalStrengthBars == self->_data.wifiSignalStrengthBars)
  {
    if (signalStrengthRSSI == self->_data.wifiSignalStrengthRaw)
    {
      if (dataNetworkType == v11)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  self->_data.wifiSignalStrengthBars = signalStrengthBars;
  if (signalStrengthRSSI != self->_data.wifiSignalStrengthRaw)
  {
LABEL_13:
    self->_data.wifiSignalStrengthRaw = signalStrengthRSSI;
  }

LABEL_14:
  v12 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating data network info…", v13, 2u);
  }

  [(CBStatusBarStateAggregator *)self _setItem:9 enabled:isAssociatedToNetwork];
}

- (void)_updateSensorActivityItem
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating status bar sensor activity item", buf, 2u);
  }

  v3 = +[CBSceneManager sharedInstance];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  windowDict = [v3 windowDict];
  allValues = [windowDict allValues];

  v6 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Status bar is checking recording indicator for window %@", buf, 0xCu);
        }

        recordingIndicatorManager = [v11 recordingIndicatorManager];
        v14 = recordingIndicatorManager;
        if (recordingIndicatorManager)
        {
          [recordingIndicatorManager updateRecordingIndicatorForStatusBarChanges];
          v8 |= [v14 isIndicatorVisibleAtStatusBarLocation];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v15 = +[CBWindowManager sharedInstance];
  rootWindowRecordingIndicatorManager = [v15 rootWindowRecordingIndicatorManager];
  v17 = rootWindowRecordingIndicatorManager;
  if (rootWindowRecordingIndicatorManager)
  {
    [rootWindowRecordingIndicatorManager updateRecordingIndicatorForStatusBarChanges];
    LOBYTE(v8) = v8 | [v17 isIndicatorVisibleAtStatusBarLocation];
  }

  v18 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v25) = v8 & 1;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating status bar sensor activity item to enabled: %d", buf, 8u);
  }

  [(CBStatusBarStateAggregator *)self _setItem:28 enabled:v8 & 1];
}

- (void)connectedDevicesDidChange:(id)change
{
  changeCopy = change;
  [(CBStatusBarStateAggregator *)self setCurrentBatteryDevice:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = changeCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isInternal])
        {
          [(CBStatusBarStateAggregator *)self setCurrentBatteryDevice:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  currentBatteryDevice = [(CBStatusBarStateAggregator *)self currentBatteryDevice];

  if (!currentBatteryDevice)
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100046B6C(v12);
    }
  }

  [(CBStatusBarStateAggregator *)self _updateBatteryItems];
}

- (void)_setupVisibility
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up status bar visibility state notification…", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_updateStatusBarVisibility:" name:@"CBStatusBarVisibilityChangedNotification" object:0];
}

- (void)_updateStatusBarVisibility:(id)visibility
{
  visibilityCopy = visibility;
  userInfo = [visibilityCopy userInfo];

  if (userInfo)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting privacy indicator location update for status bar visibility", v12, 2u);
    }

    userInfo2 = [visibilityCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"isHidden"];
    -[CBStatusBarStateAggregator setIsHidden:](self, "setIsHidden:", [v8 BOOLValue]);

    v9 = +[CBWindowManager sharedInstance];
    rootWindowRecordingIndicatorManager = [v9 rootWindowRecordingIndicatorManager];
    v11 = rootWindowRecordingIndicatorManager;
    if (rootWindowRecordingIndicatorManager)
    {
      [rootWindowRecordingIndicatorManager updateRecordingIndicatorForStatusBarChanges];
    }
  }
}

@end