@interface RFSelfDiagInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (id)commandDescription;
@end

@implementation RFSelfDiagInputs

- (id)commandDescription
{
  v2 = [(RFSelfDiagInputs *)self command];
  if (v2 > 3)
  {
    return @"Unkown command";
  }

  else
  {
    return *(&off_100010408 + v2);
  }
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Validating parmaeters: %@", buf, 0xCu);
  }

  v6 = [v4 ds_numberFromKey:@"command" defaultValue:&off_1000109E0 failed:&v13];
  -[RFSelfDiagInputs setCommand:](self, "setCommand:", [v6 intValue]);

  v7 = [v4 ds_numberFromKey:@"measureType" defaultValue:&off_1000109F8 failed:&v13];
  -[RFSelfDiagInputs setMeasureType:](self, "setMeasureType:", [v7 intValue]);

  v8 = [v4 ds_numberFromKey:@"detectChamberReady" lowerBound:&off_1000109E0 upperBound:&off_100010A10 defaultValue:&off_100010A10 failed:&v13];
  -[RFSelfDiagInputs setDetectChamberSensor:](self, "setDetectChamberSensor:", [v8 intValue]);

  v9 = [v4 ds_numberFromKey:@"ALSThreshold" lowerBound:&off_1000109E0 upperBound:&off_100010A28 defaultValue:&off_100010A40 failed:&v13];
  -[RFSelfDiagInputs setDetectChamberReadyALSThreshold:](self, "setDetectChamberReadyALSThreshold:", [v9 intValue]);

  v10 = [v4 ds_numberFromKey:@"closeChamberCountdown" lowerBound:&off_100010A58 upperBound:&off_100010A70 defaultValue:&off_100010A88 failed:&v13];
  -[RFSelfDiagInputs setDetectChamberReadyWaitTime:](self, "setDetectChamberReadyWaitTime:", [v10 intValue]);

  v11 = [v4 ds_numberFromKey:@"testCompleteAlertTime" defaultValue:&off_100010AA0 failed:&v13];
  -[RFSelfDiagInputs setTestCompleteAlertTime:](self, "setTestCompleteAlertTime:", [v11 intValue]);

  -[RFSelfDiagInputs setTestCompleteVibrationAlertEnabled:](self, "setTestCompleteVibrationAlertEnabled:", [v4 ds_BOOLFromKey:@"vibrationAlert" defaultValue:1 failed:&v13]);
  -[RFSelfDiagInputs setTestCompleteChimeAlertEnabled:](self, "setTestCompleteChimeAlertEnabled:", [v4 ds_BOOLFromKey:@"chimeAlert" defaultValue:1 failed:&v13]);

  return 1;
}

@end