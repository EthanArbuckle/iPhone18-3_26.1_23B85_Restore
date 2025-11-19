@interface BatteryDrainController
+ (BOOL)setCode:(int64_t)a3 forError:(id *)a4;
- (BOOL)isDeviceConnectedToRequiredAccessory;
- (BOOL)isDeviceConnectedToUnexpectedAccessory;
- (void)cancel;
- (void)checkStartingBatteryPercentage:(id)a3;
- (void)endBatteryDrainWithStatusCode:(id)a3;
- (void)ensureAnalyticsFreeEnvironment;
- (void)failedToExecuteWithError:(id)a3;
- (void)initOperations;
- (void)receivedInterruptNotification:(id)a3;
- (void)recievedBatteryPercentageChangedNotification:(id)a3;
- (void)recievedConnectedToChargerNotification:(id)a3;
- (void)recievedShutdownNotification;
- (void)recievedThermalStateChangedNotification;
- (void)setupNotifications;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
- (void)waitForSafeThermalState;
@end

@implementation BatteryDrainController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BatteryDrainController *)self setInputs:v6];
  [(BatteryDrainController *)self setResponder:v7];
  [(BatteryDrainController *)self setIsThermalBlocked:0];
  [(BatteryDrainController *)self setOriginalPowerModeSet:0];
  v8 = [NSNumber numberWithInt:1];
  [(BatteryDrainController *)self setRunNumber:v8];

  v9 = [(BatteryDrainController *)self inputs];
  if (![v9 isAccessoryDetectorActive])
  {

LABEL_5:
    v12 = [(BatteryDrainController *)self inputs];
    if ([v12 disableUSBCharging])
    {
      v13 = [(BatteryDrainController *)self isDeviceConnectedToUnexpectedAccessory];

      if (v13)
      {
        v43 = 0;
        [BatteryDrainController setCode:-3 forError:&v43];
        v11 = v43;
        [(BatteryDrainController *)self failedToExecuteWithError:v11];
        [(BatteryDrainController *)self endBatteryDrainWithStatusCode:&off_100018EC0];
        goto LABEL_26;
      }
    }

    else
    {
    }

    v14 = [(BatteryDrainController *)self inputs];
    if ([v14 drainAudio])
    {
      v15 = [(BatteryDrainController *)self inputs];
      v16 = [v15 audioFilename];

      if (v16)
      {
        v17 = dispatch_semaphore_create(0);
        v18 = NSTemporaryDirectory();
        v19 = [NSURL fileURLWithPath:v18 isDirectory:1];

        v20 = +[NSUUID UUID];
        v21 = [v20 UUIDString];
        v22 = [v19 URLByAppendingPathComponent:v21];

        v37 = 0;
        v38 = &v37;
        v39 = 0x3032000000;
        v40 = sub_100003F34;
        v41 = sub_100003F44;
        v42 = 0;
        v23 = [(BatteryDrainController *)self inputs];
        v24 = [v23 audioFilename];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100003F4C;
        v34[3] = &unk_100018508;
        v36 = &v37;
        v25 = v17;
        v35 = v25;
        [v7 getAsset:v24 completion:v34];

        dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
        if (v38[5])
        {
          v26 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v22;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Saving asset data to [%@]", buf, 0xCu);
          }

          v27 = v38[5];
          v33 = 0;
          v28 = [v27 writeToURL:v22 options:268435457 error:&v33];
          v11 = v33;
          if (v28)
          {
            [(BatteryDrainController *)self setAudioFileURL:v22];
LABEL_24:

            _Block_object_dispose(&v37, 8);
            goto LABEL_25;
          }

          v29 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10000B454(v22, v11, v29);
          }
        }

        else
        {
          v29 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = [(BatteryDrainController *)self inputs];
            v31 = [v30 audioFilename];
            sub_10000B4DC(v31, buf, v29, v30);
          }

          v11 = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    v11 = 0;
LABEL_25:
    v32 = +[NSUserDefaults standardUserDefaults];
    [(BatteryDrainController *)self setDefaults:v32];

    goto LABEL_26;
  }

  v10 = [(BatteryDrainController *)self isDeviceConnectedToRequiredAccessory];

  if (v10)
  {
    goto LABEL_5;
  }

  v44 = 0;
  [BatteryDrainController setCode:-52 forError:&v44];
  v11 = v44;
  [(BatteryDrainController *)self failedToExecuteWithError:v11];
  [(BatteryDrainController *)self endBatteryDrainWithStatusCode:&off_100018EA8];
LABEL_26:
}

- (void)start
{
  [(BatteryDrainController *)self ensureAnalyticsFreeEnvironment];
  v3 = MGCopyAnswer();
  [v3 floatValue];
  *&v5 = v4 / 100.0;
  v6 = [NSNumber numberWithFloat:v5];
  [(BatteryDrainController *)self setStartingBatteryPercentage:v6];

  v7 = [(BatteryDrainController *)self startingBatteryPercentage];
  [(BatteryDrainController *)self checkStartingBatteryPercentage:v7];

  [(BatteryDrainController *)self waitForSafeThermalState];
  [(BatteryDrainController *)self setupNotifications];
  LOBYTE(v7) = MGGetBoolAnswer();
  v8 = MGGetBoolAnswer();
  if ((v7 & 1) != 0 || v8)
  {
    [(BatteryDrainController *)self recievedConnectedToChargerNotification:0];
  }

  v9 = [(BatteryDrainController *)self startingBatteryPercentage];
  [v9 floatValue];
  v11 = v10;
  v12 = [(BatteryDrainController *)self inputs];
  v13 = [v12 targetBatteryPercentage];
  [v13 floatValue];
  v15 = llroundf((v11 - v14) * 100.0);
  v16 = [(BatteryDrainController *)self progress];
  [v16 setTotalUnitCount:v15];

  [(BatteryDrainController *)self initOperations];
  v17 = [(BatteryDrainController *)self inputs];
  LODWORD(v12) = [v17 autoBrightnessOff];

  if (v12)
  {
    v18 = objc_alloc_init(BrightnessSystemClient);
    [(BatteryDrainController *)self setBrightnessSystemClient:v18];

    v19 = [(BatteryDrainController *)self brightnessSystemClient];
    v20 = [v19 copyPropertyForKey:@"DisplayAutoBrightnessActive"];
    -[BatteryDrainController setWasAutoBrightnessEnabled:](self, "setWasAutoBrightnessEnabled:", [v20 BOOLValue]);

    v21 = [(BatteryDrainController *)self brightnessSystemClient];
    [v21 setProperty:&__kCFBooleanFalse forKey:@"DisplayAutoBrightnessActive"];

    v22 = [(BatteryDrainController *)self brightnessSystemClient];
    [v22 setProperty:&__kCFBooleanFalse forKey:@"DisplayBrightnessAuto"];

    v23 = [(BatteryDrainController *)self brightnessSystemClient];
    [v23 setProperty:&__kCFBooleanFalse forKey:@"ALSTurnOn"];
  }

  v24 = [(BatteryDrainController *)self inputs];
  v25 = [v24 lowPowerModeOff];

  if (v25)
  {
    v26 = objc_alloc_init(_PMLowPowerMode);
    -[BatteryDrainController setOriginalPowerMode:](self, "setOriginalPowerMode:", [v26 getPowerMode]);
    [(BatteryDrainController *)self setOriginalPowerModeSet:1];
    if (([v26 setPowerMode:0 fromSource:@"Diagnostics"] & 1) == 0)
    {
      v27 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed to turn off the Low Power Mode", v28, 2u);
      }
    }
  }
}

- (void)initOperations
{
  v3 = objc_opt_new();
  [(BatteryDrainController *)self setDrainQueue:v3];

  v4 = [(BatteryDrainController *)self drainQueue];
  [v4 setQualityOfService:25];

  v5 = [(BatteryDrainController *)self drainQueue];
  [v5 setMaxConcurrentOperationCount:10];

  v6 = [(BatteryDrainController *)self inputs];
  v7 = [v6 drainAudio];

  if (v7)
  {
    v8 = [AudioDrainOperation alloc];
    v9 = [(BatteryDrainController *)self audioFileURL];
    v10 = [(BatteryDrainController *)self inputs];
    v11 = [v10 audioVolume];
    [v11 floatValue];
    v13 = v12;
    v14 = [(BatteryDrainController *)self responder];
    LODWORD(v15) = v13;
    v16 = [(AudioDrainOperation *)v8 initWithAudioFileURL:v9 volume:v14 responder:v15];

    v17 = [(BatteryDrainController *)self drainQueue];
    [v17 addOperation:v16];
  }

  v18 = [(BatteryDrainController *)self inputs];
  v19 = [v18 drainDisplay];

  if (v19)
  {
    v20 = [DisplayDrainOperation alloc];
    v21 = [(BatteryDrainController *)self inputs];
    v22 = [v21 displayBrightness];
    [v22 floatValue];
    v24 = v23;
    v25 = [(BatteryDrainController *)self responder];
    LODWORD(v26) = v24;
    v27 = [(DisplayDrainOperation *)v20 initWithBrightness:v25 responder:v26];

    v28 = [(BatteryDrainController *)self drainQueue];
    [v28 addOperation:v27];
  }

  v29 = [(BatteryDrainController *)self inputs];
  v30 = [v29 drainCPU];

  if (v30)
  {
    v31 = [CPUDrainOperation alloc];
    v32 = [(BatteryDrainController *)self inputs];
    v33 = [v32 cpuDrainMatrixLength];
    v34 = [(BatteryDrainController *)self inputs];
    v35 = [v34 cpuDrainIterationDelay];
    v36 = [(CPUDrainOperation *)v31 initWithMatrixLength:v33 iterationDelay:v35];

    v37 = [(BatteryDrainController *)self drainQueue];
    [v37 addOperation:v36];
  }

  v38 = [(BatteryDrainController *)self inputs];
  v39 = [v38 drainGPU];

  if (v39)
  {
    v40 = [GPUDrainOperation alloc];
    v41 = [(BatteryDrainController *)self inputs];
    v42 = [v41 gpuDrainIterationDelay];
    v44 = [(GPUDrainOperation *)v40 initWithIterationDelay:v42];

    v43 = [(BatteryDrainController *)self drainQueue];
    [v43 addOperation:v44];
  }
}

- (BOOL)isDeviceConnectedToRequiredAccessory
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  v4 = [v3 connectedAccessories];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(BatteryDrainController *)self inputs];
        v11 = [v10 accessoryDetectorModelNumbers];
        v12 = [v9 modelNumber];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)isDeviceConnectedToUnexpectedAccessory
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  v4 = [v3 connectedAccessories];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(BatteryDrainController *)self inputs];
        v11 = [v10 accessoryDetectorModelNumbers];
        v12 = [v9 modelNumber];
        v13 = [v11 containsObject:v12];

        if (!v13)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)failedToExecuteWithError:(id)a3
{
  v4 = a3;
  v5 = [(BatteryDrainController *)self result];
  [v5 setData:&__NSDictionary0__struct];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
  v7 = [(BatteryDrainController *)self result];
  [v7 setStatusCode:v6];

  [(BatteryDrainController *)self setFinished:1];
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [v4 code];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to execute with error code: %ld", &v9, 0xCu);
  }
}

- (void)cancel
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User canceled battery drain tool", v4, 2u);
  }

  [(BatteryDrainController *)self setFinished:1];
}

- (void)endBatteryDrainWithStatusCode:(id)a3
{
  v4 = a3;
  v5 = [(BatteryDrainController *)self result];
  [v5 setStatusCode:v4];
}

- (void)setupNotifications
{
  +[BatteryStateNotifier registerForBatteryEvents];
  v3 = [(BatteryDrainController *)self inputs];
  v4 = [v3 targetBatteryPercentage];
  [v4 floatValue];
  v6 = v5;

  if (v6 > 0.0)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"recievedBatteryPercentageChangedNotification:" name:@"com.apple.Diagnostics.BatteryLevelChangedNotification" object:0];
  }

  v8 = [(BatteryDrainController *)self inputs];
  v9 = [v8 isAccessoryDetectorActive];

  if (v9)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"receivedInterruptNotification:" name:@"AccessoryDisconnectedNotification" object:0];

    v11 = [DAAccessoryDisconnectDetector alloc];
    v12 = [(BatteryDrainController *)self inputs];
    v13 = [v12 accessoryDetectorModelNumbers];
    v14 = [(DAAccessoryDisconnectDetector *)v11 initWithModelNumbers:v13];
    [(BatteryDrainController *)self setAccessoryDisconnectDetector:v14];

    v15 = [(BatteryDrainController *)self accessoryDisconnectDetector];
    [v15 start];
  }

  v16 = [(BatteryDrainController *)self inputs];
  v17 = [v16 disableUSBCharging];

  if (v17)
  {
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:self selector:"receivedInterruptNotification:" name:@"AccessoryConnectedNotification" object:0];

    v19 = [DAAccessoryConnectDetector alloc];
    v20 = [(BatteryDrainController *)self inputs];
    v21 = [v20 accessoryDetectorModelNumbers];
    v22 = [(DAAccessoryConnectDetector *)v19 initWithModelNumbers:v21];
    [(BatteryDrainController *)self setAccessoryConnectDetector:v22];

    v23 = [(BatteryDrainController *)self accessoryConnectDetector];
    [v23 start];
  }

  v24 = +[NSNotificationCenter defaultCenter];
  [v24 addObserver:self selector:"recievedConnectedToChargerNotification:" name:@"com.apple.Diagnostics.BatteryConnectedToChargingNotification" object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v26 = [NSString stringWithCString:kOSThermalNotificationName encoding:4];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100004DF4, v26, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100004E6C, @"com.apple.springboard.deviceWillShutDown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)recievedThermalStateChangedNotification
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004F74;
  block[3] = &unk_100018530;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)ensureAnalyticsFreeEnvironment
{
  v3 = MGGetBoolAnswer();
  v4 = DiagnosticLogSubmissionEnabled();
  v5 = [(BatteryDrainController *)self defaults];
  v6 = [v5 objectForKey:@"SkipAnalyticsCheck"];

  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NOT in";
    if (v3)
    {
      v8 = @"in";
    }

    v9 = @"enabled";
    if (!v4)
    {
      v9 = @"disabled";
    }

    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is %@ Diagnostics Mode. Analytics are %@", buf, 0x16u);
  }

  if (!(v3 & 1 | ((v4 & 1) == 0)) && ([v6 BOOLValue] & 1) == 0)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device configuration will affect analytics. Ending test.", buf, 2u);
    }

    v12 = 0;
    [BatteryDrainController setCode:-4 forError:&v12];
    v11 = v12;
    [(BatteryDrainController *)self failedToExecuteWithError:v11];
  }
}

- (void)checkStartingBatteryPercentage:(id)a3
{
  v4 = a3;
  [v4 floatValue];
  v6 = v5;
  v7 = [(BatteryDrainController *)self inputs];
  v8 = [v7 targetBatteryPercentage];
  [v8 floatValue];
  v10 = v9;

  if (v6 <= v10)
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BatteryDrainController *)self inputs];
      v13 = [v12 targetBatteryPercentage];
      v15 = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting battery level (%@) is already at or below target battery level (%@)", &v15, 0x16u);
    }

    v14 = [(BatteryDrainController *)self result];
    [v14 setStatusCode:&off_100018ED8];

    [(BatteryDrainController *)self setFinished:1];
  }
}

- (void)waitForSafeThermalState
{
  if (OSThermalNotificationCurrentLevel() >= 11)
  {
    do
    {
      sleep(5u);
    }

    while (OSThermalNotificationCurrentLevel() > 10);
  }
}

- (void)receivedInterruptNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"AccessoryDisconnectedNotification"];

  if (!v6)
  {
    v9 = [v4 name];
    if ([v9 isEqualToString:@"AccessoryConnectedNotification"])
    {
      v10 = [v4 userInfo];
      v11 = [v10 valueForKey:@"accessoryModelNumberInList"];
      v12 = [v11 BOOLValue];

      if ((v12 & 1) == 0)
      {
        v13 = 0;
        [BatteryDrainController setCode:-3 forError:&v13];
        v7 = v13;
        goto LABEL_3;
      }
    }

    else
    {
    }

    v8 = 0;
    goto LABEL_9;
  }

  v14 = 0;
  [BatteryDrainController setCode:-52 forError:&v14];
  v7 = v14;
LABEL_3:
  v8 = v7;
LABEL_9:
  [(BatteryDrainController *)self failedToExecuteWithError:v8];
}

- (void)recievedBatteryPercentageChangedNotification:(id)a3
{
  v4 = [a3 object];
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Battery level change notification recieved: %@", &v22, 0xCu);
  }

  [v4 floatValue];
  v7 = v6;
  v8 = [(BatteryDrainController *)self inputs];
  v9 = [v8 targetBatteryPercentage];
  [v9 floatValue];
  v11 = v10;

  if (v7 <= v11)
  {
    v18 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(BatteryDrainController *)self inputs];
      v20 = [v19 targetBatteryPercentage];
      v22 = 138412546;
      v23 = v4;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "The current battery level (%@) is at or below target battery level (%@). Ending test", &v22, 0x16u);
    }

    v21 = [(BatteryDrainController *)self result];
    [v21 setStatusCode:&off_100018ED8];

    [(BatteryDrainController *)self setFinished:1];
  }

  else
  {
    v12 = [(BatteryDrainController *)self startingBatteryPercentage];
    [v12 floatValue];
    v14 = v13;
    [v4 floatValue];
    v16 = llroundf((v14 - v15) * 100.0);
    v17 = [(BatteryDrainController *)self progress];
    [v17 setCompletedUnitCount:v16];
  }
}

- (void)recievedConnectedToChargerNotification:(id)a3
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "The device is connected to charging.", buf, 2u);
  }

  if (([(BatteryDrainController *)self isCancelled]& 1) != 0 || [(BatteryDrainController *)self isFinished])
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      v6 = "Diagnostic is finished. Ignoring charge notification";
      v7 = v12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else
  {
    v8 = [(BatteryDrainController *)self inputs];
    v9 = [v8 disableUSBCharging];

    if (!v9 || !+[BatteryStateNotifier disableUSBCharging])
    {
      v10 = 0;
      [BatteryDrainController setCode:-2 forError:&v10];
      v5 = v10;
      [(BatteryDrainController *)self failedToExecuteWithError:v5];
      goto LABEL_13;
    }

    [(BatteryDrainController *)self setWasChargingDisabledDuringTest:1];
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = "USB Charging was successfully disabled.";
      v7 = &v11;
      goto LABEL_7;
    }
  }

LABEL_13:
}

- (void)recievedShutdownNotification
{
  if (OSThermalNotificationCurrentLevel() > 10)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Shutdown may have been initiated by high thermals. Not sending success status.", v5, 2u);
    }
  }

  else
  {
    v3 = [(BatteryDrainController *)self result];
    [v3 setStatusCode:&off_100018ED8];

    [(BatteryDrainController *)self setFinished:1];
  }
}

- (void)teardown
{
  v3 = [(BatteryDrainController *)self drainQueue];
  [v3 cancelAllOperations];

  v4 = [(BatteryDrainController *)self inputs];
  v5 = [v4 autoBrightnessOff];

  if (v5 && [(BatteryDrainController *)self wasAutoBrightnessEnabled])
  {
    v6 = [(BatteryDrainController *)self brightnessSystemClient];
    [v6 setProperty:&__kCFBooleanTrue forKey:@"DisplayAutoBrightnessActive"];

    v7 = [(BatteryDrainController *)self brightnessSystemClient];
    [v7 setProperty:&__kCFBooleanTrue forKey:@"DisplayBrightnessAuto"];

    v8 = [(BatteryDrainController *)self brightnessSystemClient];
    [v8 setProperty:&__kCFBooleanTrue forKey:@"ALSTurnOn"];
  }

  v9 = [(BatteryDrainController *)self inputs];
  if ([v9 lowPowerModeOff])
  {
    v10 = [(BatteryDrainController *)self originalPowerModeSet];

    if (!v10)
    {
      goto LABEL_11;
    }

    v9 = objc_alloc_init(_PMLowPowerMode);
    if (([v9 setPowerMode:-[BatteryDrainController originalPowerMode](self fromSource:{"originalPowerMode"), @"Diagnostics"}] & 1) == 0)
    {
      v11 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [NSNumber numberWithInteger:[(BatteryDrainController *)self originalPowerMode]];
        v21 = 138412290;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to restore original power mode %@", &v21, 0xCu);
      }
    }
  }

LABEL_11:
  v13 = [(BatteryDrainController *)self inputs];
  v14 = [v13 isAccessoryDetectorActive];

  if (v14)
  {
    v15 = [(BatteryDrainController *)self accessoryDisconnectDetector];
    [v15 stop];
  }

  +[BatteryStateNotifier unregisterForBatteryEvents];
  v16 = +[NSNotificationCenter defaultCenter];
  [v16 removeObserver:self];

  if ([(BatteryDrainController *)self wasChargingDisabledDuringTest])
  {
    v17 = +[BatteryStateNotifier enableUSBCharging];
    v18 = DiagnosticLogHandleForCategory();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "USB Charging was successfully restored.", &v21, 2u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000B53C(v19);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

+ (BOOL)setCode:(int64_t)a3 forError:(id *)a4
{
  if (a4)
  {
    *a4 = [NSError errorWithDomain:@"DABatteryDrainTestErrorDomain" code:a3 userInfo:0];
  }

  return a4 != 0;
}

@end