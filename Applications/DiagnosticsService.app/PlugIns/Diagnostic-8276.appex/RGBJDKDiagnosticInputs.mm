@interface RGBJDKDiagnosticInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation RGBJDKDiagnosticInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  NSLog(@"validateAndInitializeParameters: key=%@", parametersCopy);
  v5 = [parametersCopy objectForKey:@"sessionTimeOut"];
  v6 = v5;
  if (v5)
  {
    intValue = [v5 intValue];
    self->_sessionTimeOut = intValue;
    NSLog(@"validateAndInitializeParameters: sessionTimeOut=%d", intValue);
  }

  else
  {
    self->_sessionTimeOut = 0;
    NSLog(@"validateAndInitializeParameters: _sessionTimeOut is missing");
  }

  v8 = [parametersCopy objectForKey:@"sceneErrorTimeOut"];

  if (v8)
  {
    intValue2 = [v8 intValue];
    self->_sceneErrorTimeOut = intValue2;
    NSLog(@"validateAndInitializeParameters: _sceneErrorTimeOut=%d", intValue2);
  }

  else
  {
    self->_sceneErrorTimeOut = 0;
    NSLog(@"validateAndInitializeParameters: _sceneErrorTimeOut is missing");
  }

  v10 = [parametersCopy objectForKey:@"userNotMovingTimeout"];

  if (v10)
  {
    intValue3 = [v10 intValue];
    self->_userNotMovingTimeout = intValue3;
    NSLog(@"validateAndInitializeParameters: _userNotMovingTimeout=%d", intValue3);
  }

  else
  {
    self->_userNotMovingTimeout = 0;
    NSLog(@"validateAndInitializeParameters: _userNotMovingTimeout is missing");
  }

  v12 = [parametersCopy objectForKey:@"noMovementAttitudeChangeMinThreshold"];

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

  v14 = [parametersCopy objectForKey:@"skipSummaryScreen"];

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