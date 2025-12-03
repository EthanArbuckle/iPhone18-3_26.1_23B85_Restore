@interface DAChamberInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation DAChamberInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v11 = 0;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Validating parameters: %@", buf, 0xCu);
  }

  v6 = [parametersCopy dk_numberFromKey:@"detectChamberReady" lowerBound:&off_10001D8F0 upperBound:&off_10001D908 defaultValue:&off_10001D908 failed:&v11];
  -[DAChamberInputs setDetectChamberSensor:](self, "setDetectChamberSensor:", [v6 intValue]);

  v7 = [parametersCopy dk_numberFromKey:@"ALSThreshold" lowerBound:&off_10001D8F0 upperBound:&off_10001D920 defaultValue:&off_10001D938 failed:&v11];
  -[DAChamberInputs setDetectChamberReadyALSThreshold:](self, "setDetectChamberReadyALSThreshold:", [v7 intValue]);

  v8 = [parametersCopy dk_numberFromKey:@"closeChamberCountdown" lowerBound:&off_10001D950 upperBound:&off_10001D968 defaultValue:&off_10001D980 failed:&v11];
  -[DAChamberInputs setDetectChamberReadyWaitTime:](self, "setDetectChamberReadyWaitTime:", [v8 intValue]);

  v9 = [parametersCopy dk_numberFromKey:@"testCompleteAlertTime" lowerBound:&off_10001D950 upperBound:&off_10001D968 defaultValue:&off_10001D998 failed:&v11];
  -[DAChamberInputs setTestCompleteAlertTime:](self, "setTestCompleteAlertTime:", [v9 intValue]);

  -[DAChamberInputs setTestCompleteVibrationAlertEnabled:](self, "setTestCompleteVibrationAlertEnabled:", [parametersCopy dk_BOOLFromKey:@"vibrationAlert" defaultValue:1 failed:&v11]);
  -[DAChamberInputs setTestCompleteChimeAlertEnabled:](self, "setTestCompleteChimeAlertEnabled:", [parametersCopy dk_BOOLFromKey:@"chimeAlert" defaultValue:1 failed:&v11]);

  return 1;
}

@end