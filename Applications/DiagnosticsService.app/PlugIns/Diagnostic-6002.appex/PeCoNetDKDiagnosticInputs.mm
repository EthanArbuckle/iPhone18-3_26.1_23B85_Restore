@interface PeCoNetDKDiagnosticInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation PeCoNetDKDiagnosticInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
  v6 = [v5 lastPathComponent];
  v7 = [NSString stringWithFormat:@"validateAndInitializeParameters: key=%@", v4];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 37, v7);

  v8 = [v4 objectForKey:@"sessionTimeOut"];
  v9 = v8;
  if (v8)
  {
    self->_sessionTimeOut = [v8 intValue];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v11 = [v10 lastPathComponent];
    v12 = [NSString stringWithFormat:@"validateAndInitializeParameters: sessionTimeOut=%d", self->_sessionTimeOut];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v11, 42, v12);
  }

  else
  {
    self->_sessionTimeOut = 0;
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v11 = [v10 lastPathComponent];
    v12 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sessionTimeOut is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v11, 45, v12);
  }

  v13 = [v4 objectForKey:@"sceneErrorTimeOut"];

  if (v13)
  {
    self->_sceneErrorTimeOut = [v13 intValue];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v15 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sceneErrorTimeOut=%d", self->_sceneErrorTimeOut];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v15, 50, v16);
  }

  else
  {
    self->_sceneErrorTimeOut = 0;
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v15 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sceneErrorTimeOut is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v15, 53, v16);
  }

  v17 = [v4 objectForKey:@"sceneErrorWarningThreshold"];

  if (v17)
  {
    self->_sceneErrorWarningThreshold = [v17 intValue];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v19 = [v18 lastPathComponent];
    v20 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sceneErrorWarningThreshold=%d", self->_sceneErrorWarningThreshold];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v19, 58, v20);
  }

  else
  {
    self->_sceneErrorWarningThreshold = 0;
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v19 = [v18 lastPathComponent];
    v20 = [NSString stringWithFormat:@"validateAndInitializeParameters: _sceneErrorWarningThreshold is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v19, 61, v20);
  }

  v21 = [v4 objectForKey:@"userNotMovingTimeout"];

  if (v21)
  {
    self->_userNotMovingTimeout = [v21 intValue];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v23 = [v22 lastPathComponent];
    v24 = [NSString stringWithFormat:@"validateAndInitializeParameters: _userNotMovingTimeout=%d", self->_userNotMovingTimeout];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v23, 66, v24);
  }

  else
  {
    self->_userNotMovingTimeout = 0;
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v23 = [v22 lastPathComponent];
    v24 = [NSString stringWithFormat:@"validateAndInitializeParameters: _userNotMovingTimeout is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v23, 69, v24);
  }

  v25 = [v4 objectForKey:@"noMovementAttitudeChangeMinThreshold"];

  if (v25)
  {
    [v25 floatValue];
    self->_noMovementAttitudeChangeMinThreshold = v26;
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v28 = [v27 lastPathComponent];
    v29 = [NSString stringWithFormat:@"validateAndInitializeParameters: _noMovementAttitudeChangeMinThreshold=%f", self->_noMovementAttitudeChangeMinThreshold];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v28, 74, v29);
  }

  else
  {
    self->_noMovementAttitudeChangeMinThreshold = 0.0;
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v28 = [v27 lastPathComponent];
    v29 = [NSString stringWithFormat:@"validateAndInitializeParameters: _noMovementAttitudeChangeMinThreshold is missing"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v28, 77, v29);
  }

  v30 = [v4 objectForKey:@"skipSummaryScreen"];

  if (v30)
  {
    self->_skipSummaryScreen = [v30 BOOLValue];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v32 = [v31 lastPathComponent];
    v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"validateAndInitializeParameters: received skipSummaryScreen parameter, skipSummaryScreen=%d", [v30 BOOLValue]);
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v32, 82, v33);
  }

  else
  {
    self->_skipSummaryScreen = 1;
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-6002/PeCoNetViewController.mm"];
    v32 = [v31 lastPathComponent];
    v33 = [NSString stringWithFormat:@"validateAndInitializeParameters: skipSummaryScreen is missing, setting to true"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v32, 85, v33);
  }

  return 1;
}

@end