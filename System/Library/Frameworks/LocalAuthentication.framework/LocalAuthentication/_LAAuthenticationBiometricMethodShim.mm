@interface _LAAuthenticationBiometricMethodShim
+ (_LAAuthenticationBiometricMethodShim)sharedInstance;
- (_LAAuthenticationBiometricMethodShim)init;
- (void)authenticationMethod:(id)method didAuthenticateWithResult:(id)result;
- (void)authenticationMethod:(id)method didChangeState:(id)state;
- (void)authenticationMethod:(id)method didStartWithState:(id)state;
- (void)init;
@end

@implementation _LAAuthenticationBiometricMethodShim

+ (_LAAuthenticationBiometricMethodShim)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_LAAuthenticationBiometricMethodShim sharedInstance];
  }

  v3 = sharedInstance_shim;

  return v3;
}

- (_LAAuthenticationBiometricMethodShim)init
{
  v12.receiver = self;
  v12.super_class = _LAAuthenticationBiometricMethodShim;
  v2 = [(_LAAuthenticationBiometricMethodShim *)&v12 init];
  if (v2)
  {
    v3 = [[LAAuthenticationBiometricMethodConfiguration alloc] initWithAutoRetry:1 avoidUsingFaceIDCamera:0 allowedUsers:0 authenticationContext:0];
    v4 = [[LAAuthenticationBiometricMethod alloc] initWithConfiguration:v3];
    biometricMethod = v2->_biometricMethod;
    v2->_biometricMethod = v4;

    biometricMethod = [(_LAAuthenticationBiometricMethodShim *)v2 biometricMethod];
    [biometricMethod addObserver:v2];

    biometricMethod2 = [(_LAAuthenticationBiometricMethodShim *)v2 biometricMethod];
    start = [biometricMethod2 start];

    if ((start & 1) == 0)
    {
      v9 = v2->_biometricMethod;
      v2->_biometricMethod = 0;
    }

    v10 = +[_LABKLog log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(_LAAuthenticationBiometricMethodShim *)v2 init];
    }
  }

  return v2;
}

- (void)authenticationMethod:(id)method didStartWithState:(id)state
{
  methodCopy = method;
  stateCopy = state;
  v8 = +[_LABKLog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_LAAuthenticationBiometricMethodShim authenticationMethod:didStartWithState:];
  }

  biometricMethodState = self->_biometricMethodState;
  self->_biometricMethodState = stateCopy;
}

- (void)authenticationMethod:(id)method didChangeState:(id)state
{
  methodCopy = method;
  stateCopy = state;
  v8 = +[_LABKLog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_LAAuthenticationBiometricMethodShim authenticationMethod:didChangeState:];
  }

  v9 = NSStringFromSelector(sel_biometricMethodState);
  [(_LAAuthenticationBiometricMethodShim *)self willChangeValueForKey:v9];

  biometricMethodState = self->_biometricMethodState;
  self->_biometricMethodState = stateCopy;
  v11 = stateCopy;

  v12 = NSStringFromSelector(sel_biometricMethodState);

  [(_LAAuthenticationBiometricMethodShim *)self didChangeValueForKey:v12];
}

- (void)authenticationMethod:(id)method didAuthenticateWithResult:(id)result
{
  methodCopy = method;
  resultCopy = result;
  v8 = +[_LABKLog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_LAAuthenticationBiometricMethodShim authenticationMethod:didAuthenticateWithResult:];
  }

  v9 = NSStringFromSelector(sel_biometricMethodResult);
  [(_LAAuthenticationBiometricMethodShim *)self willChangeValueForKey:v9];

  biometricMethodResult = self->_biometricMethodResult;
  self->_biometricMethodResult = resultCopy;
  v11 = resultCopy;

  v12 = NSStringFromSelector(sel_biometricMethodResult);

  [(_LAAuthenticationBiometricMethodShim *)self didChangeValueForKey:v12];
}

- (void)init
{
  v10 = *MEMORY[0x1E69E9840];
  biometricMethod = [self biometricMethod];
  v6 = 138412546;
  selfCopy = self;
  v8 = 2112;
  v9 = biometricMethod;
  _os_log_debug_impl(&dword_1A784E000, a2, OS_LOG_TYPE_DEBUG, "%@ init, method=%@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)authenticationMethod:didStartWithState:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1A784E000, v0, v1, "%@ didStartWithState:%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)authenticationMethod:didChangeState:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1A784E000, v0, v1, "%@ didChangeState:%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)authenticationMethod:didAuthenticateWithResult:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1A784E000, v0, v1, "%@ didAuthenticateWithResult:%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end