@interface Pearl_Fw_StatusInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation Pearl_Fw_StatusInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKeyedSubscript:@"configurationTimeForStreamInSec"];
  v6 = v5;
  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = -1;
  }

  self->_configurationTimeForStreamInSec = intValue;
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  lastPathComponent = [v8 lastPathComponent];
  v10 = [NSString stringWithFormat:@"%@ = %d", @"configurationTimeForStreamInSec", self->_configurationTimeForStreamInSec];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 37, v10);

  v11 = [parametersCopy objectForKeyedSubscript:@"diagnosticCasesMask"];

  if (v11 && ![v11 compare:@"0x" options:1 range:{0, 2}])
  {
    v12 = [NSScanner scannerWithString:v11];
    v32 = 0;
    [v12 scanHexInt:&v32];
    self->_diagnosticCasesMask = v32;
  }

  else
  {
    self->_diagnosticCasesMask = -1;
  }

  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  lastPathComponent2 = [v13 lastPathComponent];
  v15 = [NSString stringWithFormat:@"%@ = %d", @"diagnosticCasesMask", self->_diagnosticCasesMask];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 61, v15);

  v16 = [parametersCopy objectForKeyedSubscript:@"preemtingWaitInMicroSec"];

  if (v16)
  {
    intValue2 = [v16 intValue];
  }

  else
  {
    intValue2 = 2000000;
  }

  self->_preemtingWaitInMicroSec = intValue2;
  v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  lastPathComponent3 = [v18 lastPathComponent];
  v20 = [NSString stringWithFormat:@"%@ = %d", @"diagnosticCasesMask", self->_preemtingWaitInMicroSec];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent3, 72, v20);

  v21 = [parametersCopy objectForKeyedSubscript:@"useADControl"];

  if (v21)
  {
    intValue3 = [v21 intValue];
  }

  else
  {
    intValue3 = 1;
  }

  self->_useADControl = intValue3;
  v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  lastPathComponent4 = [v23 lastPathComponent];
  v25 = [NSString stringWithFormat:@"%@ = %d", @"useADControl", self->_useADControl];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent4, 83, v25);

  v26 = [parametersCopy objectForKeyedSubscript:@"useHighPriority"];

  if (v26)
  {
    intValue4 = [v26 intValue];
  }

  else
  {
    intValue4 = 0;
  }

  self->_useHighPriority = intValue4;
  v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  lastPathComponent5 = [v28 lastPathComponent];
  v30 = [NSString stringWithFormat:@"%@ = %d", @"useHighPriority", self->_useHighPriority];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent5, 94, v30);

  return 1;
}

@end