@interface BatteryDrainController
+ (BOOL)setCode:(int64_t)code forError:(id *)error;
- (BOOL)isDeviceConnectedToRequiredAccessory;
- (BOOL)isDeviceConnectedToUnexpectedAccessory;
- (void)cancel;
- (void)checkStartingBatteryPercentage:(id)percentage;
- (void)endBatteryDrainWithStatusCode:(id)code;
- (void)ensureAnalyticsFreeEnvironment;
- (void)failedToExecuteWithError:(id)error;
- (void)initOperations;
- (void)receivedInterruptNotification:(id)notification;
- (void)recievedBatteryPercentageChangedNotification:(id)notification;
- (void)recievedConnectedToChargerNotification:(id)notification;
- (void)recievedShutdownNotification;
- (void)recievedThermalStateChangedNotification;
- (void)setupNotifications;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
- (void)waitForSafeThermalState;
@end

@implementation BatteryDrainController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  [(BatteryDrainController *)self setInputs:inputsCopy];
  [(BatteryDrainController *)self setResponder:responderCopy];
  [(BatteryDrainController *)self setIsThermalBlocked:0];
  [(BatteryDrainController *)self setOriginalPowerModeSet:0];
  v8 = [NSNumber numberWithInt:1];
  [(BatteryDrainController *)self setRunNumber:v8];

  inputs = [(BatteryDrainController *)self inputs];
  if (![inputs isAccessoryDetectorActive])
  {

LABEL_5:
    inputs2 = [(BatteryDrainController *)self inputs];
    if ([inputs2 disableUSBCharging])
    {
      isDeviceConnectedToUnexpectedAccessory = [(BatteryDrainController *)self isDeviceConnectedToUnexpectedAccessory];

      if (isDeviceConnectedToUnexpectedAccessory)
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

    inputs3 = [(BatteryDrainController *)self inputs];
    if ([inputs3 drainAudio])
    {
      inputs4 = [(BatteryDrainController *)self inputs];
      audioFilename = [inputs4 audioFilename];

      if (audioFilename)
      {
        v17 = dispatch_semaphore_create(0);
        v18 = NSTemporaryDirectory();
        v19 = [NSURL fileURLWithPath:v18 isDirectory:1];

        v20 = +[NSUUID UUID];
        uUIDString = [v20 UUIDString];
        v22 = [v19 URLByAppendingPathComponent:uUIDString];

        v37 = 0;
        v38 = &v37;
        v39 = 0x3032000000;
        v40 = sub_100003F34;
        v41 = sub_100003F44;
        v42 = 0;
        inputs5 = [(BatteryDrainController *)self inputs];
        audioFilename2 = [inputs5 audioFilename];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100003F4C;
        v34[3] = &unk_100018508;
        v36 = &v37;
        v25 = v17;
        v35 = v25;
        [responderCopy getAsset:audioFilename2 completion:v34];

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
            inputs6 = [(BatteryDrainController *)self inputs];
            audioFilename3 = [inputs6 audioFilename];
            sub_10000B4DC(audioFilename3, buf, v29, inputs6);
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

  isDeviceConnectedToRequiredAccessory = [(BatteryDrainController *)self isDeviceConnectedToRequiredAccessory];

  if (isDeviceConnectedToRequiredAccessory)
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

  startingBatteryPercentage = [(BatteryDrainController *)self startingBatteryPercentage];
  [(BatteryDrainController *)self checkStartingBatteryPercentage:startingBatteryPercentage];

  [(BatteryDrainController *)self waitForSafeThermalState];
  [(BatteryDrainController *)self setupNotifications];
  LOBYTE(startingBatteryPercentage) = MGGetBoolAnswer();
  v8 = MGGetBoolAnswer();
  if ((startingBatteryPercentage & 1) != 0 || v8)
  {
    [(BatteryDrainController *)self recievedConnectedToChargerNotification:0];
  }

  startingBatteryPercentage2 = [(BatteryDrainController *)self startingBatteryPercentage];
  [startingBatteryPercentage2 floatValue];
  v11 = v10;
  inputs = [(BatteryDrainController *)self inputs];
  targetBatteryPercentage = [inputs targetBatteryPercentage];
  [targetBatteryPercentage floatValue];
  v15 = llroundf((v11 - v14) * 100.0);
  progress = [(BatteryDrainController *)self progress];
  [progress setTotalUnitCount:v15];

  [(BatteryDrainController *)self initOperations];
  inputs2 = [(BatteryDrainController *)self inputs];
  LODWORD(inputs) = [inputs2 autoBrightnessOff];

  if (inputs)
  {
    v18 = objc_alloc_init(BrightnessSystemClient);
    [(BatteryDrainController *)self setBrightnessSystemClient:v18];

    brightnessSystemClient = [(BatteryDrainController *)self brightnessSystemClient];
    v20 = [brightnessSystemClient copyPropertyForKey:@"DisplayAutoBrightnessActive"];
    -[BatteryDrainController setWasAutoBrightnessEnabled:](self, "setWasAutoBrightnessEnabled:", [v20 BOOLValue]);

    brightnessSystemClient2 = [(BatteryDrainController *)self brightnessSystemClient];
    [brightnessSystemClient2 setProperty:&__kCFBooleanFalse forKey:@"DisplayAutoBrightnessActive"];

    brightnessSystemClient3 = [(BatteryDrainController *)self brightnessSystemClient];
    [brightnessSystemClient3 setProperty:&__kCFBooleanFalse forKey:@"DisplayBrightnessAuto"];

    brightnessSystemClient4 = [(BatteryDrainController *)self brightnessSystemClient];
    [brightnessSystemClient4 setProperty:&__kCFBooleanFalse forKey:@"ALSTurnOn"];
  }

  inputs3 = [(BatteryDrainController *)self inputs];
  lowPowerModeOff = [inputs3 lowPowerModeOff];

  if (lowPowerModeOff)
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

  drainQueue = [(BatteryDrainController *)self drainQueue];
  [drainQueue setQualityOfService:25];

  drainQueue2 = [(BatteryDrainController *)self drainQueue];
  [drainQueue2 setMaxConcurrentOperationCount:10];

  inputs = [(BatteryDrainController *)self inputs];
  drainAudio = [inputs drainAudio];

  if (drainAudio)
  {
    v8 = [AudioDrainOperation alloc];
    audioFileURL = [(BatteryDrainController *)self audioFileURL];
    inputs2 = [(BatteryDrainController *)self inputs];
    audioVolume = [inputs2 audioVolume];
    [audioVolume floatValue];
    v13 = v12;
    responder = [(BatteryDrainController *)self responder];
    LODWORD(v15) = v13;
    v16 = [(AudioDrainOperation *)v8 initWithAudioFileURL:audioFileURL volume:responder responder:v15];

    drainQueue3 = [(BatteryDrainController *)self drainQueue];
    [drainQueue3 addOperation:v16];
  }

  inputs3 = [(BatteryDrainController *)self inputs];
  drainDisplay = [inputs3 drainDisplay];

  if (drainDisplay)
  {
    v20 = [DisplayDrainOperation alloc];
    inputs4 = [(BatteryDrainController *)self inputs];
    displayBrightness = [inputs4 displayBrightness];
    [displayBrightness floatValue];
    v24 = v23;
    responder2 = [(BatteryDrainController *)self responder];
    LODWORD(v26) = v24;
    v27 = [(DisplayDrainOperation *)v20 initWithBrightness:responder2 responder:v26];

    drainQueue4 = [(BatteryDrainController *)self drainQueue];
    [drainQueue4 addOperation:v27];
  }

  inputs5 = [(BatteryDrainController *)self inputs];
  drainCPU = [inputs5 drainCPU];

  if (drainCPU)
  {
    v31 = [CPUDrainOperation alloc];
    inputs6 = [(BatteryDrainController *)self inputs];
    cpuDrainMatrixLength = [inputs6 cpuDrainMatrixLength];
    inputs7 = [(BatteryDrainController *)self inputs];
    cpuDrainIterationDelay = [inputs7 cpuDrainIterationDelay];
    v36 = [(CPUDrainOperation *)v31 initWithMatrixLength:cpuDrainMatrixLength iterationDelay:cpuDrainIterationDelay];

    drainQueue5 = [(BatteryDrainController *)self drainQueue];
    [drainQueue5 addOperation:v36];
  }

  inputs8 = [(BatteryDrainController *)self inputs];
  drainGPU = [inputs8 drainGPU];

  if (drainGPU)
  {
    v40 = [GPUDrainOperation alloc];
    inputs9 = [(BatteryDrainController *)self inputs];
    gpuDrainIterationDelay = [inputs9 gpuDrainIterationDelay];
    v44 = [(GPUDrainOperation *)v40 initWithIterationDelay:gpuDrainIterationDelay];

    drainQueue6 = [(BatteryDrainController *)self drainQueue];
    [drainQueue6 addOperation:v44];
  }
}

- (BOOL)isDeviceConnectedToRequiredAccessory
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  connectedAccessories = [v3 connectedAccessories];

  v5 = [connectedAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(connectedAccessories);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        inputs = [(BatteryDrainController *)self inputs];
        accessoryDetectorModelNumbers = [inputs accessoryDetectorModelNumbers];
        modelNumber = [v9 modelNumber];
        v13 = [accessoryDetectorModelNumbers containsObject:modelNumber];

        if (v13)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v6 = [connectedAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  connectedAccessories = [v3 connectedAccessories];

  v5 = [connectedAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(connectedAccessories);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        inputs = [(BatteryDrainController *)self inputs];
        accessoryDetectorModelNumbers = [inputs accessoryDetectorModelNumbers];
        modelNumber = [v9 modelNumber];
        v13 = [accessoryDetectorModelNumbers containsObject:modelNumber];

        if (!v13)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v6 = [connectedAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)failedToExecuteWithError:(id)error
{
  errorCopy = error;
  result = [(BatteryDrainController *)self result];
  [result setData:&__NSDictionary0__struct];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
  result2 = [(BatteryDrainController *)self result];
  [result2 setStatusCode:v6];

  [(BatteryDrainController *)self setFinished:1];
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    code = [errorCopy code];
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

- (void)endBatteryDrainWithStatusCode:(id)code
{
  codeCopy = code;
  result = [(BatteryDrainController *)self result];
  [result setStatusCode:codeCopy];
}

- (void)setupNotifications
{
  +[BatteryStateNotifier registerForBatteryEvents];
  inputs = [(BatteryDrainController *)self inputs];
  targetBatteryPercentage = [inputs targetBatteryPercentage];
  [targetBatteryPercentage floatValue];
  v6 = v5;

  if (v6 > 0.0)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"recievedBatteryPercentageChangedNotification:" name:@"com.apple.Diagnostics.BatteryLevelChangedNotification" object:0];
  }

  inputs2 = [(BatteryDrainController *)self inputs];
  isAccessoryDetectorActive = [inputs2 isAccessoryDetectorActive];

  if (isAccessoryDetectorActive)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"receivedInterruptNotification:" name:@"AccessoryDisconnectedNotification" object:0];

    v11 = [DAAccessoryDisconnectDetector alloc];
    inputs3 = [(BatteryDrainController *)self inputs];
    accessoryDetectorModelNumbers = [inputs3 accessoryDetectorModelNumbers];
    v14 = [(DAAccessoryDisconnectDetector *)v11 initWithModelNumbers:accessoryDetectorModelNumbers];
    [(BatteryDrainController *)self setAccessoryDisconnectDetector:v14];

    accessoryDisconnectDetector = [(BatteryDrainController *)self accessoryDisconnectDetector];
    [accessoryDisconnectDetector start];
  }

  inputs4 = [(BatteryDrainController *)self inputs];
  disableUSBCharging = [inputs4 disableUSBCharging];

  if (disableUSBCharging)
  {
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:self selector:"receivedInterruptNotification:" name:@"AccessoryConnectedNotification" object:0];

    v19 = [DAAccessoryConnectDetector alloc];
    inputs5 = [(BatteryDrainController *)self inputs];
    accessoryDetectorModelNumbers2 = [inputs5 accessoryDetectorModelNumbers];
    v22 = [(DAAccessoryConnectDetector *)v19 initWithModelNumbers:accessoryDetectorModelNumbers2];
    [(BatteryDrainController *)self setAccessoryConnectDetector:v22];

    accessoryConnectDetector = [(BatteryDrainController *)self accessoryConnectDetector];
    [accessoryConnectDetector start];
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
  defaults = [(BatteryDrainController *)self defaults];
  v6 = [defaults objectForKey:@"SkipAnalyticsCheck"];

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

- (void)checkStartingBatteryPercentage:(id)percentage
{
  percentageCopy = percentage;
  [percentageCopy floatValue];
  v6 = v5;
  inputs = [(BatteryDrainController *)self inputs];
  targetBatteryPercentage = [inputs targetBatteryPercentage];
  [targetBatteryPercentage floatValue];
  v10 = v9;

  if (v6 <= v10)
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      inputs2 = [(BatteryDrainController *)self inputs];
      targetBatteryPercentage2 = [inputs2 targetBatteryPercentage];
      v15 = 138412546;
      v16 = percentageCopy;
      v17 = 2112;
      v18 = targetBatteryPercentage2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting battery level (%@) is already at or below target battery level (%@)", &v15, 0x16u);
    }

    result = [(BatteryDrainController *)self result];
    [result setStatusCode:&off_100018ED8];

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

- (void)receivedInterruptNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:@"AccessoryDisconnectedNotification"];

  if (!v6)
  {
    name2 = [notificationCopy name];
    if ([name2 isEqualToString:@"AccessoryConnectedNotification"])
    {
      userInfo = [notificationCopy userInfo];
      v11 = [userInfo valueForKey:@"accessoryModelNumberInList"];
      bOOLValue = [v11 BOOLValue];

      if ((bOOLValue & 1) == 0)
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

- (void)recievedBatteryPercentageChangedNotification:(id)notification
{
  object = [notification object];
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Battery level change notification recieved: %@", &v22, 0xCu);
  }

  [object floatValue];
  v7 = v6;
  inputs = [(BatteryDrainController *)self inputs];
  targetBatteryPercentage = [inputs targetBatteryPercentage];
  [targetBatteryPercentage floatValue];
  v11 = v10;

  if (v7 <= v11)
  {
    v18 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      inputs2 = [(BatteryDrainController *)self inputs];
      targetBatteryPercentage2 = [inputs2 targetBatteryPercentage];
      v22 = 138412546;
      v23 = object;
      v24 = 2112;
      v25 = targetBatteryPercentage2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "The current battery level (%@) is at or below target battery level (%@). Ending test", &v22, 0x16u);
    }

    result = [(BatteryDrainController *)self result];
    [result setStatusCode:&off_100018ED8];

    [(BatteryDrainController *)self setFinished:1];
  }

  else
  {
    startingBatteryPercentage = [(BatteryDrainController *)self startingBatteryPercentage];
    [startingBatteryPercentage floatValue];
    v14 = v13;
    [object floatValue];
    v16 = llroundf((v14 - v15) * 100.0);
    progress = [(BatteryDrainController *)self progress];
    [progress setCompletedUnitCount:v16];
  }
}

- (void)recievedConnectedToChargerNotification:(id)notification
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
    inputs = [(BatteryDrainController *)self inputs];
    disableUSBCharging = [inputs disableUSBCharging];

    if (!disableUSBCharging || !+[BatteryStateNotifier disableUSBCharging])
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
    result = [(BatteryDrainController *)self result];
    [result setStatusCode:&off_100018ED8];

    [(BatteryDrainController *)self setFinished:1];
  }
}

- (void)teardown
{
  drainQueue = [(BatteryDrainController *)self drainQueue];
  [drainQueue cancelAllOperations];

  inputs = [(BatteryDrainController *)self inputs];
  autoBrightnessOff = [inputs autoBrightnessOff];

  if (autoBrightnessOff && [(BatteryDrainController *)self wasAutoBrightnessEnabled])
  {
    brightnessSystemClient = [(BatteryDrainController *)self brightnessSystemClient];
    [brightnessSystemClient setProperty:&__kCFBooleanTrue forKey:@"DisplayAutoBrightnessActive"];

    brightnessSystemClient2 = [(BatteryDrainController *)self brightnessSystemClient];
    [brightnessSystemClient2 setProperty:&__kCFBooleanTrue forKey:@"DisplayBrightnessAuto"];

    brightnessSystemClient3 = [(BatteryDrainController *)self brightnessSystemClient];
    [brightnessSystemClient3 setProperty:&__kCFBooleanTrue forKey:@"ALSTurnOn"];
  }

  inputs2 = [(BatteryDrainController *)self inputs];
  if ([inputs2 lowPowerModeOff])
  {
    originalPowerModeSet = [(BatteryDrainController *)self originalPowerModeSet];

    if (!originalPowerModeSet)
    {
      goto LABEL_11;
    }

    inputs2 = objc_alloc_init(_PMLowPowerMode);
    if (([inputs2 setPowerMode:-[BatteryDrainController originalPowerMode](self fromSource:{"originalPowerMode"), @"Diagnostics"}] & 1) == 0)
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
  inputs3 = [(BatteryDrainController *)self inputs];
  isAccessoryDetectorActive = [inputs3 isAccessoryDetectorActive];

  if (isAccessoryDetectorActive)
  {
    accessoryDisconnectDetector = [(BatteryDrainController *)self accessoryDisconnectDetector];
    [accessoryDisconnectDetector stop];
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

+ (BOOL)setCode:(int64_t)code forError:(id *)error
{
  if (error)
  {
    *error = [NSError errorWithDomain:@"DABatteryDrainTestErrorDomain" code:code userInfo:0];
  }

  return error != 0;
}

@end