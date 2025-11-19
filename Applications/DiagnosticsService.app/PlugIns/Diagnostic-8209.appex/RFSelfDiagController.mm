@interface RFSelfDiagController
- (void)abortTesting:(int64_t)a3;
- (void)handleAWDMetricEvent:(id)a3;
- (void)handleChamberOpenEvent:(int)a3;
- (void)runRFSelfDiag;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)startAlertsTestComplete:(BOOL)a3;
- (void)stopAlertsTestComplete;
- (void)teardown;
@end

@implementation RFSelfDiagController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(RFSelfDiagController *)self setInputs:a3, a4];
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(RFSelfDiagController *)self inputs];
    v7 = [v6 command];
    v8 = [(RFSelfDiagController *)self inputs];
    v9 = [v8 measureType];
    v10 = [(RFSelfDiagController *)self inputs];
    v11 = [v10 detectChamberReadyWaitTime];
    v12 = [(RFSelfDiagController *)self inputs];
    v13[0] = 67109888;
    v13[1] = v7;
    v14 = 1024;
    v15 = v9;
    v16 = 1024;
    v17 = v11;
    v18 = 1024;
    v19 = [v12 detectChamberSensor];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setup parameters: command(%d), measureType(%d), detectChamberReadyWaitTime(%dsec), detectChamberSensor(%x)", v13, 0x1Au);
  }

  [(RFSelfDiagController *)self setFinished:0];
}

- (void)abortTesting:(int64_t)a3
{
  if (a3 <= 6)
  {
    if (a3 > 2)
    {
      switch(a3)
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
      if (a3 < 2)
      {
        v4 = @"Failed to Start";
        v5 = &off_100010AD0;
        goto LABEL_25;
      }

      if (a3 == 2)
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

  if (a3 > 8)
  {
    switch(a3)
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

  if (a3 != 7)
  {
    v6 = [(RFSelfDiagController *)self result];
    [v6 setStatusCode:&off_100010AB8];

    v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = [(RFSelfDiagController *)self result];
    v9 = [v8 statusCode];
    v15 = 67109120;
    LODWORD(v16) = [v9 intValue];
    v10 = "[RFSelfTest] Received RF Self test result from baseband, statusCode=%d";
    v11 = v7;
    v12 = 8;
    goto LABEL_27;
  }

  v4 = @"Failed to start Baseband RF self test";
  v5 = &off_100010B00;
LABEL_25:
  v13 = [(RFSelfDiagController *)self result];
  [v13 setStatusCode:v5];

  v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  v8 = [(RFSelfDiagController *)self result];
  v9 = [v8 statusCode];
  v15 = 138412546;
  v16 = v4;
  v17 = 1024;
  v18 = [v9 intValue];
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

    v5 = [(RFSelfDiagController *)self inputs];
    [v5 setDetectChamberSensor:v4];

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

    v8 = [(RFSelfDiagController *)self inputs];
    [v8 setDetectChamberReadyWaitTime:v7];

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

    v11 = [(RFSelfDiagController *)self inputs];
    [v11 setDetectChamberReadyALSThreshold:v10];

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

    v14 = [(RFSelfDiagController *)self inputs];
    [v14 setTestCompleteAlertTime:v13];

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

    v17 = [(RFSelfDiagController *)self inputs];
    [v17 setTestCompleteVibrationAlertEnabled:v16 & 1];

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

  v22 = [(RFSelfDiagController *)self inputs];
  -[RFSelfDiagController setTestCompleteAlertTime:](self, "setTestCompleteAlertTime:", [v22 testCompleteAlertTime]);

  v23 = self->fDiagHelper;
  v24 = [(RFSelfDiagController *)self inputs];
  LOBYTE(v23) = -[RFSelfDiagExtensionHelper isTestSupported:](v23, "isTestSupported:", [v24 command]);

  v25 = self;
  if ((v23 & 1) == 0)
  {
    v27 = 12;
LABEL_39:
    [(RFSelfDiagController *)v25 abortTesting:v27];
    v37 = 0;
    goto LABEL_40;
  }

  v26 = [(RFSelfDiagController *)self inputs];
  if ([v26 command] == 1)
  {
  }

  else
  {
    v28 = [(RFSelfDiagController *)self inputs];
    v29 = [v28 command];

    if (v29 != 3)
    {
      goto LABEL_28;
    }
  }

  [(RFSelfDiagExtensionHelper *)self->fDiagHelper setFactoryTest];
LABEL_28:
  v30 = [(RFSelfDiagController *)self inputs];
  if (![v30 detectChamberSensor])
  {

    if ([(RFSelfDiagExtensionHelper *)self->fDiagHelper prepareSetupForTest])
    {
      goto LABEL_31;
    }

LABEL_38:
    v25 = self;
    v27 = 1;
    goto LABEL_39;
  }

  v31 = self->fDiagHelper;
  v32 = [(RFSelfDiagController *)self inputs];
  v33 = [v32 detectChamberSensor];
  v34 = [(RFSelfDiagController *)self inputs];
  LOBYTE(v31) = -[RFSelfDiagExtensionHelper initMonitorChamber:ALSThreshold:](v31, "initMonitorChamber:ALSThreshold:", v33, [v34 detectChamberReadyALSThreshold]);

  if ((v31 & 1) == 0 || ![(RFSelfDiagExtensionHelper *)self->fDiagHelper prepareSetupForTest])
  {
    goto LABEL_38;
  }

LABEL_31:
  v35 = [(RFSelfDiagController *)self inputs];
  v36 = [v35 detectChamberSensor];
  v37 = v36 != 0;

  v38 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (!v36)
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

  v40 = [(RFSelfDiagController *)self inputs];
  if ([v40 detectChamberSensor])
  {
    v41 = self->fDiagHelper;
    v42 = [(RFSelfDiagController *)self inputs];
    LOBYTE(v41) = -[RFSelfDiagExtensionHelper waitForChamberClosed:](v41, "waitForChamberClosed:", [v42 detectChamberReadyWaitTime]);

    if ((v41 & 1) == 0)
    {
      v25 = self;
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
  v48 = [(RFSelfDiagController *)self inputs];
  LOBYTE(v47) = -[RFSelfDiagExtensionHelper addAWDConfiguration:](v47, "addAWDConfiguration:", [v48 command]);

  if (v47)
  {
    v49 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Add AWD configuration", buf, 2u);
    }

    v50 = self->fDiagHelper;
    v51 = [(RFSelfDiagController *)self inputs];
    v52 = [v51 measureType];
    v53 = [(RFSelfDiagController *)self inputs];
    LOBYTE(v50) = -[RFSelfDiagExtensionHelper startBasebandRFSelfTest:TestCommand:](v50, "startBasebandRFSelfTest:TestCommand:", v52, [v53 command]);

    if (v50)
    {
      v54 = [(RFSelfDiagExtensionHelper *)self->fDiagHelper getBasebandResultWaitTime];
      v55 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v78) = v54;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] Baseband starts RF Self test. Waiting (%dsec) for the result..", buf, 8u);
      }

      self->diagState = 6;
      v56 = [(RFSelfDiagController *)self inputs];
      v57 = [v56 detectChamberSensor];

      if (v57)
      {
        [(RFSelfDiagExtensionHelper *)self->fDiagHelper startMonitorChamberOpen];
      }

      v58 = dispatch_semaphore_create(0);
      self->fWaitForEvent = v58;
      v59 = dispatch_time(0, 1000000000 * v54);
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
    v4 = [(RFSelfDiagController *)self inputs];
    v5 = [v4 commandDescription];
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "== RF Self Test [Diag] started : %@ ==", &v12, 0xCu);
  }

  [(RFSelfDiagController *)self setFinished:0];
  v6 = [(RFSelfDiagController *)self inputs];
  v7 = [v6 command];

  if (v7 > 3)
  {
    v10 = [(RFSelfDiagController *)self result];
    [v10 setStatusCode:&off_100010B48];
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

- (void)handleChamberOpenEvent:(int)a3
{
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
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

- (void)handleAWDMetricEvent:(id)a3
{
  v4 = a3;
  if (self->fWaitForEvent)
  {
    v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = [v4 length];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RFSelfTest] AWD Metric received! size=%lu ", buf, 0xCu);
    }

    v6 = [v4 base64EncodedStringWithOptions:0];
    v12 = @"RFSelfDiagBasebandTestData";
    v13 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [(RFSelfDiagController *)self result];
    [v8 setData:v7];

    self->diagState = 8;
    dispatch_semaphore_signal(self->fWaitForEvent);
    v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(RFSelfDiagController *)self result];
      v11 = [v10 data];
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ ", buf, 0xCu);
    }
  }
}

- (void)startAlertsTestComplete:(BOOL)a3
{
  v3 = a3;
  v5 = [(RFSelfDiagController *)self inputs];
  if ([v5 testCompleteVibrationAlertEnabled])
  {

LABEL_4:
    [(RFSelfDiagExtensionHelper *)self->fDiagHelper stopMonitorChamber];
    if (!v3 || ![(RFSelfDiagExtensionHelper *)self->fDiagHelper startMonitorChamberOpen])
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

    v10 = [(RFSelfDiagController *)self inputs];
    v11 = [v10 testCompleteVibrationAlertEnabled];

    if (v11)
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

    v15 = [(RFSelfDiagController *)self inputs];
    v16 = [v15 testCompleteChimeAlertEnabled];

    if (v16)
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

  v6 = [(RFSelfDiagController *)self inputs];
  v7 = [v6 testCompleteChimeAlertEnabled];

  if (v7)
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

  v4 = [(RFSelfDiagController *)self inputs];
  v5 = [v4 testCompleteVibrationAlertEnabled];

  if (v5)
  {
    AudioServicesStopSystemSound();
  }

  v6 = [(RFSelfDiagController *)self inputs];
  v7 = [v6 testCompleteChimeAlertEnabled];

  if (v7)
  {
    AudioServicesStopSystemSound();
  }

  [(RFSelfDiagController *)self setFAlertTestComplete:0];
  [(RFSelfDiagExtensionHelper *)self->fDiagHelper stopMonitorChamber];
}

@end