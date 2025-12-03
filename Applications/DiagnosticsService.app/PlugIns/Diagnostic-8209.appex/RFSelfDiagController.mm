@interface RFSelfDiagController
- (void)abortTesting:(int64_t)testing;
- (void)handleAWDMetricEvent:(id)event;
- (void)handleChamberOpenEvent:(int)event;
- (void)runRFSelfDiag;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)startAlertsTestComplete:(BOOL)complete;
- (void)stopAlertsTestComplete;
- (void)teardown;
@end

@implementation RFSelfDiagController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(RFSelfDiagController *)self setInputs:inputs, responder];
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    inputs = [(RFSelfDiagController *)self inputs];
    command = [inputs command];
    inputs2 = [(RFSelfDiagController *)self inputs];
    measureType = [inputs2 measureType];
    inputs3 = [(RFSelfDiagController *)self inputs];
    detectChamberReadyWaitTime = [inputs3 detectChamberReadyWaitTime];
    inputs4 = [(RFSelfDiagController *)self inputs];
    v13[0] = 67109888;
    v13[1] = command;
    v14 = 1024;
    v15 = measureType;
    v16 = 1024;
    v17 = detectChamberReadyWaitTime;
    v18 = 1024;
    detectChamberSensor = [inputs4 detectChamberSensor];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setup parameters: command(%d), measureType(%d), detectChamberReadyWaitTime(%dsec), detectChamberSensor(%x)", v13, 0x1Au);
  }

  [(RFSelfDiagController *)self setFinished:0];
}

- (void)abortTesting:(int64_t)testing
{
  if (testing <= 6)
  {
    if (testing > 2)
    {
      switch(testing)
      {
        case 3:
          v4 = @"Failed to add AWD configuration";
          v5 = &off_100010B00;
          goto LABEL_25;
        case 4:
          v4 = @"Failed to register RF Self Test data event";
          v5 = &off_100010B00;
          goto LABEL_25;
        case 5:
          v4 = @"Failed to set FactoryTest mode";
          v5 = &off_100010B00;
          goto LABEL_25;
      }
    }

    else
    {
      if (testing < 2)
      {
        v4 = @"Failed to Start";
        v5 = &off_100010AD0;
        goto LABEL_25;
      }

      if (testing == 2)
      {
        v4 = @"Chamber is opened";
        v5 = &off_100010AE8;
        goto LABEL_25;
      }
    }

LABEL_24:
    v4 = @"Other failiure";
    v5 = &off_100010B60;
    goto LABEL_25;
  }

  if (testing > 8)
  {
    switch(testing)
    {
      case 9:
        v4 = @"Failed to get test result from Baseband in time";
        v5 = &off_100010B18;
        goto LABEL_25;
      case 10:
        v4 = @"Failed to recover baseband after test result received";
        v5 = &off_100010B30;
        goto LABEL_25;
      case 12:
        v4 = @"Test not supported";
        v5 = &off_100010B48;
        goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (testing != 7)
  {
    result = [(RFSelfDiagController *)self result];
    [result setStatusCode:&off_100010AB8];

    v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    result2 = [(RFSelfDiagController *)self result];
    statusCode = [result2 statusCode];
    v15 = 67109120;
    LODWORD(v16) = [statusCode intValue];
    v10 = "[RFSelfTest] Received RF Self test result from baseband, statusCode=%d";
    v11 = v7;
    v12 = 8;
    goto LABEL_27;
  }

  v4 = @"Failed to start Baseband RF self test";
  v5 = &off_100010B00;
LABEL_25:
  result3 = [(RFSelfDiagController *)self result];
  [result3 setStatusCode:v5];

  v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  result2 = [(RFSelfDiagController *)self result];
  statusCode = [result2 statusCode];
  v15 = 138412546;
  v16 = v4;
  v17 = 1024;
  intValue = [statusCode intValue];
  v10 = "[RFSelfTest] Abort test with error: %@, statusCode=%d";
  v11 = v14;
  v12 = 18;
LABEL_27:
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
}

- (void)runRFSelfDiag
{
  if ([(RFSelfDiagExtensionHelper *)self->fDiagHelper loadTestConfigFromUserDefaults])
  {
    fDiagHelper = self->fDiagHelper;
    if (fDiagHelper)
    {
      [(RFSelfDiagExtensionHelper *)fDiagHelper testConfiguration];
      v4 = DWORD1(v75);
    }

    else
    {
      v4 = 0;
      v75 = 0u;
      v76 = 0u;
    }

    inputs = [(RFSelfDiagController *)self inputs];
    [inputs setDetectChamberSensor:v4];

    v6 = self->fDiagHelper;
    if (v6)
    {
      [(RFSelfDiagExtensionHelper *)v6 testConfiguration];
      v7 = DWORD2(v73);
    }

    else
    {
      v7 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    inputs2 = [(RFSelfDiagController *)self inputs];
    [inputs2 setDetectChamberReadyWaitTime:v7];

    v9 = self->fDiagHelper;
    if (v9)
    {
      [(RFSelfDiagExtensionHelper *)v9 testConfiguration];
      v10 = HIDWORD(v71);
    }

    else
    {
      v10 = 0;
      v71 = 0u;
      v72 = 0u;
    }

    inputs3 = [(RFSelfDiagController *)self inputs];
    [inputs3 setDetectChamberReadyALSThreshold:v10];

    v12 = self->fDiagHelper;
    if (v12)
    {
      [(RFSelfDiagExtensionHelper *)v12 testConfiguration];
      v13 = v70;
    }

    else
    {
      v13 = 0;
      v69 = 0u;
      v70 = 0u;
    }

    inputs4 = [(RFSelfDiagController *)self inputs];
    [inputs4 setTestCompleteAlertTime:v13];

    v15 = self->fDiagHelper;
    if (v15)
    {
      [(RFSelfDiagExtensionHelper *)v15 testConfiguration];
      v16 = BYTE4(v68);
    }

    else
    {
      v16 = 0;
      v67 = 0u;
      v68 = 0u;
    }

    inputs5 = [(RFSelfDiagController *)self inputs];
    [inputs5 setTestCompleteVibrationAlertEnabled:v16 & 1];

    v18 = self->fDiagHelper;
    if (v18)
    {
      [(RFSelfDiagExtensionHelper *)v18 testConfiguration];
      v19 = BYTE5(v66);
    }

    else
    {
      v19 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    v20 = [(RFSelfDiagController *)self inputs:v65];
    [v20 setTestCompleteChimeAlertEnabled:v19 & 1];

    v21 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Test parameters overrided", buf, 2u);
    }
  }

  inputs6 = [(RFSelfDiagController *)self inputs];
  -[RFSelfDiagController setTestCompleteAlertTime:](self, "setTestCompleteAlertTime:", [inputs6 testCompleteAlertTime]);

  v23 = self->fDiagHelper;
  inputs7 = [(RFSelfDiagController *)self inputs];
  LOBYTE(v23) = -[RFSelfDiagExtensionHelper isTestSupported:](v23, "isTestSupported:", [inputs7 command]);

  selfCopy3 = self;
  if ((v23 & 1) == 0)
  {
    v27 = 12;
LABEL_39:
    [(RFSelfDiagController *)selfCopy3 abortTesting:v27];
    v37 = 0;
    goto LABEL_40;
  }

  inputs8 = [(RFSelfDiagController *)self inputs];
  if ([inputs8 command] == 1)
  {
  }

  else
  {
    inputs9 = [(RFSelfDiagController *)self inputs];
    command = [inputs9 command];

    if (command != 3)
    {
      goto LABEL_28;
    }
  }

  [(RFSelfDiagExtensionHelper *)self->fDiagHelper setFactoryTest];
LABEL_28:
  inputs10 = [(RFSelfDiagController *)self inputs];
  if (![inputs10 detectChamberSensor])
  {

    if ([(RFSelfDiagExtensionHelper *)self->fDiagHelper prepareSetupForTest])
    {
      goto LABEL_31;
    }

LABEL_38:
    selfCopy3 = self;
    v27 = 1;
    goto LABEL_39;
  }

  v31 = self->fDiagHelper;
  inputs11 = [(RFSelfDiagController *)self inputs];
  detectChamberSensor = [inputs11 detectChamberSensor];
  inputs12 = [(RFSelfDiagController *)self inputs];
  LOBYTE(v31) = -[RFSelfDiagExtensionHelper initMonitorChamber:ALSThreshold:](v31, "initMonitorChamber:ALSThreshold:", detectChamberSensor, [inputs12 detectChamberReadyALSThreshold]);

  if ((v31 & 1) == 0 || ![(RFSelfDiagExtensionHelper *)self->fDiagHelper prepareSetupForTest])
  {
    goto LABEL_38;
  }

LABEL_31:
  inputs13 = [(RFSelfDiagController *)self inputs];
  detectChamberSensor2 = [inputs13 detectChamberSensor];
  v37 = detectChamberSensor2 != 0;

  v38 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (!detectChamberSensor2)
  {
    if (!v39)
    {
      goto LABEL_53;
    }

    *buf = 0;
    v46 = "[RFSelfTest] Skip to detect Chamber";
    goto LABEL_52;
  }

  if (v39)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Wait and confirm if Chamber is closed", buf, 2u);
  }

  inputs14 = [(RFSelfDiagController *)self inputs];
  if ([inputs14 detectChamberSensor])
  {
    v41 = self->fDiagHelper;
    inputs15 = [(RFSelfDiagController *)self inputs];
    LOBYTE(v41) = -[RFSelfDiagExtensionHelper waitForChamberClosed:](v41, "waitForChamberClosed:", [inputs15 detectChamberReadyWaitTime]);

    if ((v41 & 1) == 0)
    {
      selfCopy3 = self;
      v27 = 2;
      goto LABEL_39;
    }
  }

  else
  {
  }

  v38 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v46 = "[RFSelfTest] Chamber is ready";
LABEL_52:
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v46, buf, 2u);
  }

LABEL_53:
  v47 = self->fDiagHelper;
  inputs16 = [(RFSelfDiagController *)self inputs];
  LOBYTE(v47) = -[RFSelfDiagExtensionHelper addAWDConfiguration:](v47, "addAWDConfiguration:", [inputs16 command]);

  if (v47)
  {
    v49 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Add AWD configuration", buf, 2u);
    }

    v50 = self->fDiagHelper;
    inputs17 = [(RFSelfDiagController *)self inputs];
    measureType = [inputs17 measureType];
    inputs18 = [(RFSelfDiagController *)self inputs];
    LOBYTE(v50) = -[RFSelfDiagExtensionHelper startBasebandRFSelfTest:TestCommand:](v50, "startBasebandRFSelfTest:TestCommand:", measureType, [inputs18 command]);

    if (v50)
    {
      getBasebandResultWaitTime = [(RFSelfDiagExtensionHelper *)self->fDiagHelper getBasebandResultWaitTime];
      v55 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v78) = getBasebandResultWaitTime;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Baseband starts RF Self test. Waiting (%dsec) for the result..", buf, 8u);
      }

      self->diagState = 6;
      inputs19 = [(RFSelfDiagController *)self inputs];
      detectChamberSensor3 = [inputs19 detectChamberSensor];

      if (detectChamberSensor3)
      {
        [(RFSelfDiagExtensionHelper *)self->fDiagHelper startMonitorChamberOpen];
      }

      v58 = dispatch_semaphore_create(0);
      self->fWaitForEvent = v58;
      v59 = dispatch_time(0, 1000000000 * getBasebandResultWaitTime);
      if (dispatch_semaphore_wait(v58, v59))
      {
        diagState = 9;
      }

      else
      {
        diagState = self->diagState;
      }

      [(RFSelfDiagController *)self abortTesting:diagState];
      [(RFSelfDiagExtensionHelper *)self->fDiagHelper stopMonitorChamber];
    }

    else
    {
      [(RFSelfDiagController *)self abortTesting:7];
    }

    v61 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      if ([(RFSelfDiagExtensionHelper *)self->fDiagHelper removeAWDConfiguration])
      {
        v62 = "Success";
      }

      else
      {
        v62 = "Failed";
      }

      *buf = 136315138;
      v78 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Remove AWD configuration: %s", buf, 0xCu);
    }

    v63 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      if ([(RFSelfDiagExtensionHelper *)self->fDiagHelper recoverBasebandState:self->diagState != 8])
      {
        v64 = "Success";
      }

      else
      {
        v64 = "Failed";
      }

      *buf = 136315138;
      v78 = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Recover Baseband: %s", buf, 0xCu);
    }
  }

  else
  {
    [(RFSelfDiagController *)self abortTesting:3];
  }

LABEL_40:
  v43 = self->diagState != 2 && v37;
  [(RFSelfDiagController *)self startAlertsTestComplete:v43];
  if ([(RFSelfDiagController *)self fAlertTestComplete])
  {
    v44 = dispatch_semaphore_create(0);
    self->fWaitForEvent = v44;
    v45 = dispatch_time(0, 1000000000 * [(RFSelfDiagController *)self testCompleteAlertTime]);
    if (dispatch_semaphore_wait(v44, v45))
    {
      [(RFSelfDiagController *)self stopAlertsTestComplete];
    }
  }

  [(RFSelfDiagExtensionHelper *)self->fDiagHelper restoreSetup];
}

- (void)start
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    inputs = [(RFSelfDiagController *)self inputs];
    commandDescription = [inputs commandDescription];
    v12 = 138412290;
    v13 = commandDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "== RF Self Test [Diag] started : %@ ==", &v12, 0xCu);
  }

  [(RFSelfDiagController *)self setFinished:0];
  inputs2 = [(RFSelfDiagController *)self inputs];
  command = [inputs2 command];

  if (command > 3)
  {
    result = [(RFSelfDiagController *)self result];
    [result setStatusCode:&off_100010B48];
  }

  else
  {
    self->diagState = 0;
    if (!self->fDiagHelper)
    {
      v8 = [[RFSelfDiagExtensionHelper alloc] initWithDelegate:self];
      fDiagHelper = self->fDiagHelper;
      self->fDiagHelper = v8;
    }

    [(RFSelfDiagController *)self runRFSelfDiag];
  }

  [(RFSelfDiagController *)self setFinished:1];
  v11 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "== RF Self Test [Diag] finished ==", &v12, 2u);
  }

  [(RFSelfDiagExtensionHelper *)self->fDiagHelper resetAll];
}

- (void)teardown
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] teardown called", v7, 2u);
  }

  diagState = self->diagState;
  if (diagState == 6 || diagState == 0)
  {
    self->diagState = 11;
  }

  if (self->fWaitForEvent)
  {
    if ([(RFSelfDiagController *)self fAlertTestComplete])
    {
      [(RFSelfDiagController *)self stopAlertsTestComplete];
    }

    dispatch_semaphore_signal(self->fWaitForEvent);
  }

  fDiagHelper = self->fDiagHelper;
  if (fDiagHelper)
  {
    [(RFSelfDiagExtensionHelper *)fDiagHelper stopMonitorChamber];
    [(RFSelfDiagExtensionHelper *)self->fDiagHelper restoreSetup];
    [(RFSelfDiagExtensionHelper *)self->fDiagHelper resetAll];
  }
}

- (void)handleChamberOpenEvent:(int)event
{
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = event;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Chamber open detected with sensor(%d)", v7, 8u);
  }

  if (self->fWaitForEvent)
  {
    if ([(RFSelfDiagController *)self fAlertTestComplete])
    {
      [(RFSelfDiagController *)self stopAlertsTestComplete];
      fWaitForEvent = self->fWaitForEvent;
    }

    else
    {
      fWaitForEvent = self->fWaitForEvent;
      if (!fWaitForEvent)
      {
        return;
      }

      self->diagState = 2;
    }

    dispatch_semaphore_signal(fWaitForEvent);
  }
}

- (void)handleAWDMetricEvent:(id)event
{
  eventCopy = event;
  if (self->fWaitForEvent)
  {
    v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = [eventCopy length];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] AWD Metric received! size=%lu ", buf, 0xCu);
    }

    v6 = [eventCopy base64EncodedStringWithOptions:0];
    v12 = @"RFSelfDiagBasebandTestData";
    v13 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    result = [(RFSelfDiagController *)self result];
    [result setData:v7];

    self->diagState = 8;
    dispatch_semaphore_signal(self->fWaitForEvent);
    v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      result2 = [(RFSelfDiagController *)self result];
      data = [result2 data];
      *buf = 138412290;
      v15 = data;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ ", buf, 0xCu);
    }
  }
}

- (void)startAlertsTestComplete:(BOOL)complete
{
  completeCopy = complete;
  inputs = [(RFSelfDiagController *)self inputs];
  if ([inputs testCompleteVibrationAlertEnabled])
  {

LABEL_4:
    [(RFSelfDiagExtensionHelper *)self->fDiagHelper stopMonitorChamber];
    if (!completeCopy || ![(RFSelfDiagExtensionHelper *)self->fDiagHelper startMonitorChamberOpen])
    {
      [(RFSelfDiagController *)self setTestCompleteAlertTime:5];
      v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v21[0] = 67109120;
        v21[1] = [(RFSelfDiagController *)self testCompleteAlertTime];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Failed to start monitoring chamber. Keep alert for %dsec", v21, 8u);
      }
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"RFSelfTestCompleteAlertsNotification" object:0];

    inputs2 = [(RFSelfDiagController *)self inputs];
    testCompleteVibrationAlertEnabled = [inputs2 testCompleteVibrationAlertEnabled];

    if (testCompleteVibrationAlertEnabled)
    {
      v12 = [NSNumber numberWithBool:1];
      v13 = [NSDictionary dictionaryWithObject:v12 forKey:kAudioServicesPlaySystemSoundOptionLoopKey];

      AudioServicesPlaySystemSoundWithOptions();
      [(RFSelfDiagController *)self setFAlertTestComplete:1];
      v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Start Vibration alert started", v21, 2u);
      }
    }

    inputs3 = [(RFSelfDiagController *)self inputs];
    testCompleteChimeAlertEnabled = [inputs3 testCompleteChimeAlertEnabled];

    if (testCompleteChimeAlertEnabled)
    {
      v17 = [NSNumber numberWithBool:1];
      v18 = [NSDictionary dictionaryWithObject:v17 forKey:kAudioServicesPlaySystemSoundOptionLoopKey];

      AudioServicesPlaySystemSoundWithOptions();
      [(RFSelfDiagController *)self setFAlertTestComplete:1];
      v19 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Start Sound alert started", v21, 2u);
      }
    }

    return;
  }

  inputs4 = [(RFSelfDiagController *)self inputs];
  testCompleteChimeAlertEnabled2 = [inputs4 testCompleteChimeAlertEnabled];

  if (testCompleteChimeAlertEnabled2)
  {
    goto LABEL_4;
  }

  v20 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Alert not enabled", v21, 2u);
  }
}

- (void)stopAlertsTestComplete
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Stop alert", v8, 2u);
  }

  inputs = [(RFSelfDiagController *)self inputs];
  testCompleteVibrationAlertEnabled = [inputs testCompleteVibrationAlertEnabled];

  if (testCompleteVibrationAlertEnabled)
  {
    AudioServicesStopSystemSound();
  }

  inputs2 = [(RFSelfDiagController *)self inputs];
  testCompleteChimeAlertEnabled = [inputs2 testCompleteChimeAlertEnabled];

  if (testCompleteChimeAlertEnabled)
  {
    AudioServicesStopSystemSound();
  }

  [(RFSelfDiagController *)self setFAlertTestComplete:0];
  [(RFSelfDiagExtensionHelper *)self->fDiagHelper stopMonitorChamber];
}

@end