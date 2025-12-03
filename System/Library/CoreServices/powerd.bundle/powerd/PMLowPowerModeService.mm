@interface PMLowPowerModeService
+ (id)sharedInstance;
- (BOOL)autoDisableCheck;
- (BOOL)autoDisableLowPowerMode;
- (BOOL)getDippedBelow;
- (BOOL)isInternalBuild;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)readStateFromDefaults;
- (PMLowPowerModeService)init;
- (double)getBatteryChargeWhenEnabled;
- (id)readDateFromDefaults;
- (id)readParamsFromDefaults;
- (void)autoEnableCheck;
- (void)batteryPercentageNotificationHandler:(int)handler;
- (void)initAnalyticsTimers;
- (void)lostModeCheck;
- (void)pluggedInNotificationHandler:(int)handler;
- (void)readPreferences;
- (void)reportStateToBiome:(BOOL)biome fromSource:(id)source;
- (void)setPowerMode:(int64_t)mode fromSource:(id)source withParams:(id)params withCompletion:(id)completion;
@end

@implementation PMLowPowerModeService

+ (id)sharedInstance
{
  if (qword_1000ACA38 != -1)
  {
    sub_1000631E8();
  }

  v3 = qword_1000ACA30;

  return v3;
}

- (PMLowPowerModeService)init
{
  v24.receiver = self;
  v24.super_class = PMLowPowerModeService;
  v2 = [(PMLowPowerModeService *)&v24 initWithMachServiceName:@"com.apple.powerd.lowpowermode"];
  if (v2 && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.powerd.LowPowerMode.mainQueue", v3), mainQueue = v2->_mainQueue, v2->_mainQueue = v4, mainQueue, v3, v2->_mainQueue))
  {
    [(PMLowPowerModeService *)v2 setDelegate:v2];
    v6 = os_log_create("com.apple.powerd", "lowPowerMode");
    v7 = qword_1000ACA28;
    qword_1000ACA28 = v6;

    v8 = objc_alloc_init(NSDate);
    stateChangeDate = v2->_stateChangeDate;
    v2->_stateChangeDate = v8;

    v10 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.powerd.lowpowermode.state"];
    defaults = v2->_defaults;
    v2->_defaults = v10;

    mainQueue = [(PMLowPowerModeService *)v2 mainQueue];
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, mainQueue);

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100026278;
    handler[3] = &unk_1000992A0;
    v14 = v2;
    v22 = v14;
    v15 = v13;
    v23 = v15;
    dispatch_source_set_event_handler(v15, handler);
    v16 = dispatch_walltime(0, 2000000000);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v15);
    v17 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "LPM: Initialized PMLowPowerModeService\n", v20, 2u);
    }

    v18 = v14;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)initAnalyticsTimers
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_mainQueue);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000269BC;
  handler[3] = &unk_1000992A0;
  handler[4] = self;
  v8 = v3;
  v4 = v3;
  dispatch_source_set_event_handler(v4, handler);
  v6.tv_sec = 0;
  v6.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v6);
  v6.tv_sec = v6.tv_sec + 86399 - 3600 * ((v6.tv_sec + 86399) % 24);
  v5 = dispatch_walltime(&v6, 0);
  dispatch_source_set_timer(v4, v5, 0x4E94914F0000uLL, 0xD18C2E2800uLL);
  dispatch_resume(v4);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____PMLowPowerModeProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = [connectionCopy valueForEntitlement:@"com.apple.powerd.lowpowermode.allow"];
  v8 = v7;
  if (v7 && [v7 BOOLValue])
  {
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    v9 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v14[0] = 67109120;
      v14[1] = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LPM: listener: accepted new connection from PID %d\n", v14, 8u);
    }

    v11 = 1;
  }

  else
  {
    v12 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
    {
      sub_1000635E4(v12, connectionCopy);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)readStateFromDefaults
{
  [(NSUserDefaults *)self->_defaults synchronize];
  if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEBUG))
  {
    sub_10006367C();
  }

  v3 = [(NSUserDefaults *)self->_defaults valueForKey:@"state"];
  v4 = qword_1000ACA28;
  v5 = os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = v4;
      v9[0] = 67109120;
      v9[1] = [v3 BOOLValue];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LPM: Read defaults state=%d\n", v9, 8u);
    }

    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    if (v5)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LPM: No previous defaults state found\n", v9, 2u);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)readDateFromDefaults
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"stateChangeDate"];
  if (v2)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    [v3 setDateFormat:@"yyyy-LLL-dd HH:mm:ss ZZZZ"];
    v4 = [v3 stringFromDate:v2];
    v5 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LPM: Read defaults date=%{public}@\n", &v9, 0xCu);
    }

    v6 = v2;
  }

  else
  {
    v7 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LPM: No previous state for start date found\n", &v9, 2u);
    }
  }

  return v2;
}

- (id)readParamsFromDefaults
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"params"];
  if (v2)
  {
    v3 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LPM: Read defaults params=%{public}@", &v5, 0xCu);
    }
  }

  return v2;
}

- (double)getBatteryChargeWhenEnabled
{
  result = self->_batteryChargeWhenEnabled;
  v3 = -1.0;
  if (result == -1.0)
  {
    v4 = [(NSUserDefaults *)self->_defaults valueForKey:@"stateBatteryCharge"];
    v5 = v4;
    if (v4)
    {
      [v4 doubleValue];
      v3 = v6;
    }

    return v3;
  }

  return result;
}

- (BOOL)getDippedBelow
{
  if (self->_dippedBelow)
  {
    return 1;
  }

  v3 = [(NSUserDefaults *)self->_defaults valueForKey:@"dippedBelow"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)reportStateToBiome:(BOOL)biome fromSource:(id)source
{
  biomeCopy = biome;
  sourceCopy = source;
  if ([sourceCopy isEqualToString:kPMLPMSourceSpringBoardAlert])
  {
    v5 = 3;
  }

  else if ([sourceCopy isEqualToString:kPMLPMSourceReenableBulletin])
  {
    v5 = 4;
  }

  else if ([sourceCopy isEqualToString:kPMLPMSourceControlCenter])
  {
    v5 = 5;
  }

  else if ([sourceCopy isEqualToString:kPMLPMSourceSettings])
  {
    v5 = 1;
  }

  else if ([sourceCopy isEqualToString:kPMLPMSourceSiri])
  {
    v5 = 2;
  }

  else if ([sourceCopy isEqualToString:kPMLPMSourceLostMode])
  {
    v5 = 6;
  }

  else if ([sourceCopy isEqualToString:kPMLPMSourceSystemDisable])
  {
    v5 = 7;
  }

  else if ([sourceCopy isEqualToString:kPMLPMSourceWorkouts])
  {
    v5 = 8;
  }

  else if ([sourceCopy isEqualToString:kPMLPMSourceStandbyMode])
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  if (biomeCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [[BMEnergyMode alloc] initWithMode:v6 reason:v5];
  v8 = BiomeLibrary();
  device = [v8 Device];
  power = [device Power];
  energyMode = [power EnergyMode];

  source = [energyMode source];
  [source sendEvent:v7];
}

- (void)autoEnableCheck
{
  if ([(PMLowPowerModeService *)self readStateFromDefaults])
  {
    readSourceFromDefaults = [(PMLowPowerModeService *)self readSourceFromDefaults];
    source = self->_source;
    self->_source = readSourceFromDefaults;

    readDateFromDefaults = [(PMLowPowerModeService *)self readDateFromDefaults];
    v6 = [readDateFromDefaults copy];
    stateChangeDate = self->_stateChangeDate;
    self->_stateChangeDate = v6;

    self->_batteryChargeWhenEnabled = -1.0;
    [(PMLowPowerModeService *)self getBatteryChargeWhenEnabled];
    self->_batteryChargeWhenEnabled = v8;
    self->_dippedBelow = [(PMLowPowerModeService *)self getDippedBelow];
    readParamsFromDefaults = [(PMLowPowerModeService *)self readParamsFromDefaults];
    params = self->_params;
    self->_params = readParamsFromDefaults;

    if (self->_enabled)
    {
      v11 = qword_1000ACA28;
      if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v12 = "LPM: Already enabled, not auto-enabling\n";
        v13 = &v16;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      }
    }

    else if ([(PMLowPowerModeService *)self autoDisableCheck])
    {
      v11 = qword_1000ACA28;
      if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v12 = "LPM: Auto-disabled, not auto-enabling\n";
        v13 = &v15;
        goto LABEL_11;
      }
    }

    else if ([(PMLowPowerModeService *)self toggleState:1 withDate:readDateFromDefaults withBatteryLevel:self->_source fromSource:self->_params withParams:self->_batteryChargeWhenEnabled]&& os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
    {
      sub_1000638B8();
    }
  }

  else
  {
    v14 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LPM: No saved state found, not auto-enabling\n", buf, 2u);
    }

    readDateFromDefaults = 0;
  }
}

- (void)readPreferences
{
  CFPreferencesAppSynchronize(@"com.apple.powerd.lowpowermode");
  v3 = CFPreferencesCopyAppValue(@"autoDisableThreshold", @"com.apple.powerd.lowpowermode");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberDoubleType, &self->_autoDisableThreshold);
    }

    CFRelease(v4);
  }

  else
  {
    self->_autoDisableThreshold = 80.0;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"autoDisableWhenPluggedIn", @"com.apple.powerd.lowpowermode", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    self->_autoDisableWhenPluggedIn = AppBooleanValue != 0;
  }

  else
  {
    self->_autoDisableWhenPluggedIn = 0;
  }

  v7 = qword_1000ACA28;
  if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
  {
    autoDisableThreshold = self->_autoDisableThreshold;
    autoDisableWhenPluggedIn = self->_autoDisableWhenPluggedIn;
    *buf = 67109376;
    v12 = autoDisableThreshold;
    v13 = 1024;
    v14 = autoDisableWhenPluggedIn;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LPM: readPreferences: autoDisableThreshold=%d%%, autoDisableWhenPluggedIn=%d\n", buf, 0xEu);
  }
}

- (void)lostModeCheck
{
  if (objc_opt_class())
  {
    v3 = +[FMDFMIPManager sharedInstance];
    isLostModeActive = [v3 isLostModeActive];

    if (isLostModeActive)
    {
      v5 = qword_1000ACA28;
      if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LPM: checkLostMode: FMiP entered lost mode\n", v22, 2u);
      }

      [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"inLostMode"];
      enabled = self->_enabled;
      v7 = qword_1000ACA28;
      v8 = os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT);
      if (enabled)
      {
        if (v8)
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LPM: checkLostMode: Low Power Mode is already enabled\n", v22, 2u);
        }

        v9 = [(NSUserDefaults *)self->_defaults valueForKey:@"preLostModeState"];

        if (!v9)
        {
          v10 = qword_1000ACA28;
          if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LPM: checkLostMode: saving pre-lost Low Power Mode state (1)\n", v22, 2u);
          }

          [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"preLostModeState"];
          [(NSUserDefaults *)self->_defaults synchronize];
          if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEBUG))
          {
            sub_1000638F4();
          }
        }

        return;
      }

      if (v8)
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LPM: checkLostMode: enabling Low Power Mode mode\n", v22, 2u);
      }

      v18 = [(NSUserDefaults *)self->_defaults valueForKey:@"preLostModeState"];

      if (!v18)
      {
        v19 = qword_1000ACA28;
        if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "LPM: checkLostMode: saving pre-lost Low Power Mode state (0)\n", v22, 2u);
        }

        [(NSUserDefaults *)self->_defaults setBool:0 forKey:@"preLostModeState"];
        [(NSUserDefaults *)self->_defaults synchronize];
      }

      v13 = +[NSDate date];
      [(PMLowPowerModeService *)self toggleState:1 withDate:v13 withBatteryLevel:kPMLPMSourceLostMode fromSource:0 withParams:self->_batteryPercentage];
    }

    else
    {
      v12 = [(NSUserDefaults *)self->_defaults valueForKey:@"inLostMode"];
      v13 = v12;
      if (v12 && [v12 BOOLValue])
      {
        [(NSUserDefaults *)self->_defaults removeObjectForKey:@"inLostMode"];
        v14 = qword_1000ACA28;
        if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LPM: checkLostMode: FMiP exited lost mode\n", v22, 2u);
        }

        v15 = [(NSUserDefaults *)self->_defaults valueForKey:@"preLostModeState"];
        bOOLValue = [v15 BOOLValue];

        [(NSUserDefaults *)self->_defaults removeObjectForKey:@"preLostModeState"];
        [(NSUserDefaults *)self->_defaults synchronize];
        if (bOOLValue)
        {
          v17 = qword_1000ACA28;
          if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "LPM: checkLostMode: not disabling Low Power Mode (was enabled before)\n", v22, 2u);
          }
        }

        else
        {
          v20 = +[NSDate date];
          v21 = qword_1000ACA28;
          if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "LPM: checkLostMode: disabling Low Power Mode (was disabled before)\n", v22, 2u);
          }

          [(PMLowPowerModeService *)self toggleState:0 withDate:v20 withBatteryLevel:kPMLPMSourceLostMode fromSource:0 withParams:self->_batteryPercentage];
        }
      }
    }

    return;
  }

  v11 = qword_1000ACA28;
  if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "LPM: FMD is not available. Skipping lostModeCheck\n", v22, 2u);
  }
}

- (void)setPowerMode:(int64_t)mode fromSource:(id)source withParams:(id)params withCompletion:(id)completion
{
  sourceCopy = source;
  paramsCopy = params;
  completionCopy = completion;
  if (mode >= 2)
  {
    v33 = NSLocalizedDescriptionKey;
    v34 = @"Invalid Power Mode";
    v16 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v17 = [NSError errorWithDomain:@"Low Power Mode" code:1 userInfo:v16];
    completionCopy[2](completionCopy, 0, v17);
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    mainQueue = self->_mainQueue;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000285A8;
    v21 = &unk_100099590;
    modeCopy = mode;
    selfCopy = self;
    v23 = sourceCopy;
    v24 = paramsCopy;
    v25 = &v27;
    dispatch_sync(mainQueue, &v18);
    v14 = *(v28 + 24);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"Failed to update power mode";
      mode = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1, v18, v19, v20, v21, selfCopy, v23];
      v15 = [NSError errorWithDomain:@"Low Power Mode" code:1 userInfo:mode];
    }

    completionCopy[2](completionCopy, v14, v15);
    if ((v14 & 1) == 0)
    {
    }

    _Block_object_dispose(&v27, 8);
  }
}

- (BOOL)autoDisableLowPowerMode
{
  v3 = [(NSUserDefaults *)self->_defaults valueForKey:@"inLostMode"];
  v4 = v3;
  if (v3 && [v3 BOOLValue])
  {
    v5 = qword_1000ACA28;
    v6 = 0;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LPM: Not auto-disabled due to Lost Mode\n", v14, 2u);
      v6 = 0;
    }
  }

  else
  {
    v7 = +[NSDate date];
    v8 = [(PMLowPowerModeService *)self toggleState:0 withDate:v7 withBatteryLevel:kPMLPMSourceSystemDisable fromSource:0 withParams:self->_batteryPercentage];
    v6 = v8 == 0;
    if (v8)
    {
      if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
      {
        sub_100063964();
      }
    }

    else
    {
      if (notify_set_state(dword_1000ACA44, 0) && os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
      {
        sub_1000639A0();
      }

      notify_post([@"com.apple.system.lowpowermode.auto_disabled" UTF8String]);
      v9 = qword_1000ACA28;
      if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
      {
        batteryPercentage = self->_batteryPercentage;
        batteryChargeWhenEnabled = self->_batteryChargeWhenEnabled;
        pluggedIn = self->_pluggedIn;
        v14[0] = 67109632;
        v14[1] = batteryPercentage;
        v15 = 1024;
        v16 = batteryChargeWhenEnabled;
        v17 = 1024;
        v18 = pluggedIn;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LPM: auto-disabled (now:%d%%, whenEnabled:%d%%, plugged:%d)\n", v14, 0x14u);
      }
    }
  }

  return v6;
}

- (BOOL)autoDisableCheck
{
  v3 = qword_1000ACA28;
  if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
  {
    pluggedIn = self->_pluggedIn;
    autoDisableWhenPluggedIn = self->_autoDisableWhenPluggedIn;
    batteryChargeWhenEnabled = self->_batteryChargeWhenEnabled;
    autoDisableThreshold = self->_autoDisableThreshold;
    batteryPercentage = self->_batteryPercentage;
    dippedBelow = self->_dippedBelow;
    v21 = 67110656;
    *v22 = pluggedIn;
    *&v22[4] = 1024;
    *&v22[6] = autoDisableWhenPluggedIn;
    v23 = 1024;
    v24 = batteryChargeWhenEnabled;
    v25 = 1024;
    v26 = autoDisableThreshold;
    v27 = 1024;
    v28 = batteryPercentage;
    v29 = 1024;
    v30 = autoDisableThreshold;
    v31 = 1024;
    v32 = dippedBelow;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LPM: autoDisableCheck: pluggedIn %d, autoDisableWhenPluggedIn %d, batteryChargeWhenEnabled %d%%, autoDisableThreshold %d%%, batteryPercentage %d%%, autoDisableThreshold %d%%, dippedBelow %d", &v21, 0x2Cu);
  }

  if (self->_params)
  {
    v10 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      params = self->_params;
      v21 = 138543362;
      *v22 = params;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LPM: autoDisableCheck: params %{public}@", &v21, 0xCu);
    }
  }

  if ([(PMLowPowerModeService *)self perpetualMeadowEnabled])
  {
    v12 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LPM: will not exit - perpetual meadow mode is enabled", &v21, 2u);
    }

    return 0;
  }

  if (!self->_params || !self->_stateChangeDate)
  {
LABEL_17:
    if (self->_pluggedIn && self->_autoDisableWhenPluggedIn)
    {
      return [(PMLowPowerModeService *)self autoDisableLowPowerMode];
    }

    v18 = self->_autoDisableThreshold;
    if (self->_batteryPercentage >= v18 && (self->_batteryChargeWhenEnabled < v18 || self->_dippedBelow))
    {
      return [(PMLowPowerModeService *)self autoDisableLowPowerMode];
    }

    return 0;
  }

  v13 = +[NSDate date];
  v14 = [(NSDictionary *)self->_params objectForKey:@"MinimumOnDays"];
  intValue = [v14 intValue];

  if (intValue - 1 >= 3)
  {
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_ERROR))
    {
      sub_100063A34(self);
    }

    goto LABEL_17;
  }

  v16 = [(NSDate *)self->_stateChangeDate dateByAddingTimeInterval:(86400 * intValue)];
  if ([v13 compare:v16] == -1)
  {
    v19 = qword_1000ACA28;
    autoDisableLowPowerMode = 0;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      *v22 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "LPM: won't auto exit until at least %{public}@", &v21, 0xCu);
      autoDisableLowPowerMode = 0;
    }
  }

  else
  {
    autoDisableLowPowerMode = [(PMLowPowerModeService *)self autoDisableLowPowerMode];
  }

  return autoDisableLowPowerMode;
}

- (void)batteryPercentageNotificationHandler:(int)handler
{
  state64 = 0;
  notify_get_state(handler, &state64);
  v4 = state64;
  v5 = state64;
  if (self->_batteryPercentage != v5)
  {
    v6 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LPM: monitor: batteryPercentage=%d%%\n", buf, 8u);
    }

    self->_batteryPercentage = v5;
    if (self->_enabled)
    {
      if (self->_autoDisableThreshold > v5 && !self->_dippedBelow)
      {
        self->_dippedBelow = 1;
        [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"dippedBelow"];
        [(NSUserDefaults *)self->_defaults synchronize];
        if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEBUG))
        {
          sub_100063AC0();
        }

        v7 = qword_1000ACA28;
        if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LPM: monitor: recording dippedBelow event\n", buf, 2u);
        }
      }

      [(PMLowPowerModeService *)self autoDisableCheck];
    }
  }
}

- (void)pluggedInNotificationHandler:(int)handler
{
  v4 = IOPSDrawingUnlimitedPower();
  if (self->_pluggedIn != v4)
  {
    v5 = v4;
    v6 = qword_1000ACA28;
    if (os_log_type_enabled(qword_1000ACA28, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LPM: monitor: pluggedIn=%d\n", v7, 8u);
    }

    self->_pluggedIn = v5;
    if (self->_enabled)
    {
      [(PMLowPowerModeService *)self autoDisableCheck];
    }
  }
}

- (BOOL)isInternalBuild
{
  if (qword_1000ACA60 != -1)
  {
    sub_100063AF4();
  }

  return byte_1000ACA58;
}

@end