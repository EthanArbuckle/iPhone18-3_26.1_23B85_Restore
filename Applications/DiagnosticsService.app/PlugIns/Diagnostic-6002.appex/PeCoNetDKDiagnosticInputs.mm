@interface PeCoNetDKDiagnosticInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation PeCoNetDKDiagnosticInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
  lastPathComponent = [v5 lastPathComponent];
  parametersCopy = [NSString stringWithFormat:@"validateAndInitializeParameters: key=%@", parametersCopy];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 37, parametersCopy);

  v8 = [parametersCopy objectForKey:@"sessionTimeOut"];
  v9 = v8;
  if (v8)
  {
    self->_sessionTimeOut = [v8 intValue];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent2 = [v10 lastPathComponent];
    v12 = [NSString stringWithFormat:@"validateAndInitializeParameters: sessionTimeOut=%d", self->_sessionTimeOut];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 42, v12);
  }

  else
  {
    self->_sessionTimeOut = 0;
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent2 = [v10 lastPathComponent];
    v12 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sessionTimeOut is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 45, v12);
  }

  v13 = [parametersCopy objectForKey:@"sceneErrorTimeOut"];

  if (v13)
  {
    self->_sceneErrorTimeOut = [v13 intValue];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent3 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sceneErrorTimeOut=%d", self->_sceneErrorTimeOut];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent3, 50, v16);
  }

  else
  {
    self->_sceneErrorTimeOut = 0;
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent3 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sceneErrorTimeOut is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent3, 53, v16);
  }

  v17 = [parametersCopy objectForKey:@"sceneErrorWarningThreshold"];

  if (v17)
  {
    self->_sceneErrorWarningThreshold = [v17 intValue];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent4 = [v18 lastPathComponent];
    v20 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sceneErrorWarningThreshold=%d", self->_sceneErrorWarningThreshold];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent4, 58, v20);
  }

  else
  {
    self->_sceneErrorWarningThreshold = 0;
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent4 = [v18 lastPathComponent];
    v20 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sceneErrorWarningThreshold is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent4, 61, v20);
  }

  v21 = [parametersCopy objectForKey:@"userNotMovingTimeout"];

  if (v21)
  {
    self->_userNotMovingTimeout = [v21 intValue];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent5 = [v22 lastPathComponent];
    v24 = [NSString stringWithFormat:@"validateAndInitializeParameters: _userNotMovingTimeout=%d", self->_userNotMovingTimeout];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent5, 66, v24);
  }

  else
  {
    self->_userNotMovingTimeout = 0;
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent5 = [v22 lastPathComponent];
    v24 = [NSString stringWithFormat:@"validateAndInitializeParameters: _userNotMovingTimeout is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent5, 69, v24);
  }

  v25 = [parametersCopy objectForKey:@"noMovementAttitudeChangeMinThreshold"];

  if (v25)
  {
    [v25 floatValue];
    self->_noMovementAttitudeChangeMinThreshold = v26;
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent6 = [v27 lastPathComponent];
    v29 = [NSString stringWithFormat:@"validateAndInitializeParameters: _noMovementAttitudeChangeMinThreshold=%f", self->_noMovementAttitudeChangeMinThreshold];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent6, 74, v29);
  }

  else
  {
    self->_noMovementAttitudeChangeMinThreshold = 0.0;
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent6 = [v27 lastPathComponent];
    v29 = [NSString stringWithFormat:@"validateAndInitializeParameters: _noMovementAttitudeChangeMinThreshold is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent6, 77, v29);
  }

  v30 = [parametersCopy objectForKey:@"skipSummaryScreen"];

  if (v30)
  {
    self->_skipSummaryScreen = [v30 BOOLValue];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent7 = [v31 lastPathComponent];
    v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"validateAndInitializeParameters: received skipSummaryScreen parameter, skipSummaryScreen=%d", [v30 BOOLValue]);
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent7, 82, v33);
  }

  else
  {
    self->_skipSummaryScreen = 1;
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    lastPathComponent7 = [v31 lastPathComponent];
    v33 = [NSString stringWithFormat:@"validateAndInitializeParameters: skipSummaryScreen is missing, setting to true"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent7, 85, v33);
  }

  return 1;
}

@end