@interface RGBJDKDiagnosticInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation RGBJDKDiagnosticInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  NSLog(@"validateAndInitializeParameters: key=%@", v4);
  v5 = [v4 objectForKey:@"sessionTimeOut"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
    self->_sessionTimeOut = v7;
    NSLog(@"validateAndInitializeParameters: sessionTimeOut=%d", v7);
  }

  else
  {
    self->_sessionTimeOut = 0;
    NSLog(@"validateAndInitializeParameters: _sessionTimeOut is missing");
  }

  v8 = [v4 objectForKey:@"sceneErrorTimeOut"];

  if (v8)
  {
    v9 = [v8 intValue];
    self->_sceneErrorTimeOut = v9;
    NSLog(@"validateAndInitializeParameters: _sceneErrorTimeOut=%d", v9);
  }

  else
  {
    self->_sceneErrorTimeOut = 0;
    NSLog(@"validateAndInitializeParameters: _sceneErrorTimeOut is missing");
  }

  v10 = [v4 objectForKey:@"userNotMovingTimeout"];

  if (v10)
  {
    v11 = [v10 intValue];
    self->_userNotMovingTimeout = v11;
    NSLog(@"validateAndInitializeParameters: _userNotMovingTimeout=%d", v11);
  }

  else
  {
    self->_userNotMovingTimeout = 0;
    NSLog(@"validateAndInitializeParameters: _userNotMovingTimeout is missing");
  }

  v12 = [v4 objectForKey:@"noMovementAttitudeChangeMinThreshold"];

  if (v12)
  {
    [v12 floatValue];
    self->_noMovementAttitudeChangeMinThreshold = v13;
    NSLog(@"validateAndInitializeParameters: _sceneErrorTimeOut=%f", v13);
  }

  else
  {
    self->_noMovementAttitudeChangeMinThreshold = 0.0;
    NSLog(@"validateAndInitializeParameters: _sceneErrorTimeOut is missing");
  }

  v14 = [v4 objectForKey:@"skipSummaryScreen"];

  if (v14)
  {
    self->_skipSummaryScreen = [v14 BOOLValue];
    NSLog(@"validateAndInitializeParameters: received skipSummaryScreen parameter, skipSummaryScreen=%d", [v14 BOOLValue]);
  }

  else
  {
    self->_skipSummaryScreen = 1;
    NSLog(@"validateAndInitializeParameters: skipSummaryScreen is missing, setting to true");
  }

  return 1;
}

@end