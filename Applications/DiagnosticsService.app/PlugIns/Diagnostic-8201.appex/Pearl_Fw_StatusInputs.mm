@interface Pearl_Fw_StatusInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation Pearl_Fw_StatusInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"configurationTimeForStreamInSec"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    v7 = -1;
  }

  self->_configurationTimeForStreamInSec = v7;
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  v9 = [v8 lastPathComponent];
  v10 = [NSString stringWithFormat:@"%@ = %d", @"configurationTimeForStreamInSec", self->_configurationTimeForStreamInSec];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 37, v10);

  v11 = [v4 objectForKeyedSubscript:@"diagnosticCasesMask"];

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
  v14 = [v13 lastPathComponent];
  v15 = [NSString stringWithFormat:@"%@ = %d", @"diagnosticCasesMask", self->_diagnosticCasesMask];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v14, 61, v15);

  v16 = [v4 objectForKeyedSubscript:@"preemtingWaitInMicroSec"];

  if (v16)
  {
    v17 = [v16 intValue];
  }

  else
  {
    v17 = 2000000;
  }

  self->_preemtingWaitInMicroSec = v17;
  v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  v19 = [v18 lastPathComponent];
  v20 = [NSString stringWithFormat:@"%@ = %d", @"diagnosticCasesMask", self->_preemtingWaitInMicroSec];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v19, 72, v20);

  v21 = [v4 objectForKeyedSubscript:@"useADControl"];

  if (v21)
  {
    v22 = [v21 intValue];
  }

  else
  {
    v22 = 1;
  }

  self->_useADControl = v22;
  v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  v24 = [v23 lastPathComponent];
  v25 = [NSString stringWithFormat:@"%@ = %d", @"useADControl", self->_useADControl];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v24, 83, v25);

  v26 = [v4 objectForKeyedSubscript:@"useHighPriority"];

  if (v26)
  {
    v27 = [v26 intValue];
  }

  else
  {
    v27 = 0;
  }

  self->_useHighPriority = v27;
  v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_Fw_StatusInputs.mm"];
  v29 = [v28 lastPathComponent];
  v30 = [NSString stringWithFormat:@"%@ = %d", @"useHighPriority", self->_useHighPriority];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v29, 94, v30);

  return 1;
}

@end