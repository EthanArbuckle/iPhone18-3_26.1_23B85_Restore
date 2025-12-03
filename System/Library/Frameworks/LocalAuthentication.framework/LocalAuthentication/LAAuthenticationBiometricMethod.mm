@interface LAAuthenticationBiometricMethod
- (BOOL)start;
- (LAAuthenticationBiometricMethod)initWithConfiguration:(id)configuration;
- (unint64_t)lockoutStateFromError:(id)error;
- (void)distributeBiometricFeedback:(int64_t)feedback;
- (void)distributeStateChange;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)runBiometricOperation;
- (void)terminate;
@end

@implementation LAAuthenticationBiometricMethod

- (unint64_t)lockoutStateFromError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:@"com.apple.LocalAuthentication"])
  {

    goto LABEL_6;
  }

  code = [errorCopy code];

  if (code != -8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  userInfo = [errorCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"Subcode"];
  integerValue = [v7 integerValue];

  if ((integerValue - 1) >= 5)
  {
    v9 = 4;
  }

  else
  {
    v9 = qword_1A7888DB8[integerValue - 1];
  }

LABEL_7:

  return v9;
}

- (LAAuthenticationBiometricMethod)initWithConfiguration:(id)configuration
{
  v37[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v33.receiver = self;
  v33.super_class = LAAuthenticationBiometricMethod;
  v5 = [(LAAuthenticationMethod *)&v33 initWithConfiguration:configurationCopy];
  if (v5)
  {
    authenticationContext = [configurationCopy authenticationContext];
    v7 = authenticationContext;
    if (!authenticationContext)
    {
      v7 = objc_alloc_init(LAContext);
    }

    objc_storeStrong(&v5->_context, v7);
    if (!authenticationContext)
    {
    }

    v8 = [(LAAuthenticationMethodState *)[LAAuthenticationBiometricMethodState alloc] initWithAvailableUsers:0];
    [(LAAuthenticationBiometricMethod *)v5 setCurrentState:v8];

    v5->_isDevicePresent = 1;
    context = [(LAAuthenticationBiometricMethod *)v5 context];
    v36 = &unk_1F1A6FC50;
    v37[0] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v32 = 0;
    v11 = [context evaluatePolicy:1 options:v10 error:&v32];
    v12 = v32;
    v13 = v12;
    if (v11)
    {

LABEL_8:
      v14 = LA_LOG_laabio();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [LAAuthenticationBiometricMethod initWithConfiguration:];
      }

      v5->_isEnrolled = 1;
      goto LABEL_11;
    }

    domain = [v12 domain];
    if ([domain isEqualToString:@"com.apple.LocalAuthentication"])
    {
      code = [v13 code];

      if (code == -1004)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v25 = LA_LOG_laabio();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [LAAuthenticationBiometricMethod initWithConfiguration:];
    }

    domain2 = [v13 domain];
    v27 = [domain2 isEqualToString:@"com.apple.LocalAuthentication"];

    if (!v27)
    {
      goto LABEL_11;
    }

    code2 = [v13 code];
    if (code2 > -7)
    {
      if (code2 != -5)
      {
        if (code2 == -6)
        {
LABEL_29:
          v5->_isDevicePresent = 0;
          goto LABEL_11;
        }

LABEL_26:
        v29 = LA_LOG_laabio();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v13;
          _os_log_impl(&dword_1A784E000, v29, OS_LOG_TYPE_DEFAULT, "unhandled error for canEvaluate: %@", buf, 0xCu);
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (code2 == -8)
      {
        v5->_isEnrolled = 1;
        v30 = [(LAAuthenticationBiometricMethod *)v5 lockoutStateFromError:v13];
        currentState = [(LAAuthenticationBiometricMethod *)v5 currentState];
        [currentState setLockoutState:v30];

        goto LABEL_11;
      }

      if (code2 != -7)
      {
        goto LABEL_26;
      }
    }

LABEL_11:
    context2 = [(LAAuthenticationBiometricMethod *)v5 context];
    v16 = [context2 biometryType] == 1;
    currentState2 = [(LAAuthenticationBiometricMethod *)v5 currentState];
    [currentState2 setIsTouchID:v16];

    context3 = [(LAAuthenticationBiometricMethod *)v5 context];
    v19 = [context3 biometryType] == 2;
    currentState3 = [(LAAuthenticationBiometricMethod *)v5 currentState];
    [currentState3 setIsFaceID:v19];

    v5->_isAllowed = v5->_isEnrolled;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)start
{
  isDevicePresent = [(LAAuthenticationBiometricMethod *)self isDevicePresent];
  if (isDevicePresent)
  {
    isDevicePresent = [(LAAuthenticationBiometricMethod *)self isEnrolled];
    if (isDevicePresent)
    {
      isDevicePresent = [(LAAuthenticationBiometricMethod *)self isAllowed];
      if (isDevicePresent)
      {
        v7.receiver = self;
        v7.super_class = LAAuthenticationBiometricMethod;
        isDevicePresent = [(LAAuthenticationMethod *)&v7 start];
        if (isDevicePresent)
        {
          v6[0] = MEMORY[0x1E69E9820];
          v6[1] = 3221225472;
          v6[2] = __40__LAAuthenticationBiometricMethod_start__block_invoke;
          v6[3] = &unk_1E77CC060;
          v6[4] = self;
          [(LAAuthenticationMethod *)self forEachObserverWithProtocol:&unk_1F1A74C48 selector:sel_authenticationMethod_didStartWithState_ invoke:v6];
          context = [(LAAuthenticationBiometricMethod *)self context];
          [context setUiDelegate:self];

          [(LAAuthenticationBiometricMethod *)self runBiometricOperation];
          LOBYTE(isDevicePresent) = 1;
        }
      }
    }
  }

  return isDevicePresent;
}

void __40__LAAuthenticationBiometricMethod_start__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 currentState];
  [v3 authenticationMethod:v2 didStartWithState:v4];
}

- (void)distributeBiometricFeedback:(int64_t)feedback
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__LAAuthenticationBiometricMethod_distributeBiometricFeedback___block_invoke;
  v3[3] = &unk_1E77CC088;
  v3[4] = self;
  v3[5] = feedback;
  [(LAAuthenticationMethod *)self forEachObserverWithProtocol:&unk_1F1A74D28 selector:sel_authenticationBiometricsMethod_didReceiveFeedback_ invoke:v3];
}

- (void)distributeStateChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__LAAuthenticationBiometricMethod_distributeStateChange__block_invoke;
  v2[3] = &unk_1E77CC060;
  v2[4] = self;
  [(LAAuthenticationMethod *)self forEachObserverWithProtocol:&unk_1F1A74D28 selector:sel_authenticationMethod_didChangeState_ invoke:v2];
}

void __56__LAAuthenticationBiometricMethod_distributeStateChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 currentState];
  [v3 authenticationMethod:v2 didChangeState:v4];
}

- (void)runBiometricOperation
{
  currentState = [(LAAuthenticationBiometricMethod *)self currentState];
  lockoutState = [currentState lockoutState];

  if (!lockoutState)
  {
    context = [(LAAuthenticationBiometricMethod *)self context];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__LAAuthenticationBiometricMethod_runBiometricOperation__block_invoke;
    v6[3] = &unk_1E77CC0D8;
    v6[4] = self;
    [context evaluatePolicy:1 options:MEMORY[0x1E695E0F8] reply:v6];
  }
}

void __56__LAAuthenticationBiometricMethod_runBiometricOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = LA_LOG_laabio();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __56__LAAuthenticationBiometricMethod_runBiometricOperation__block_invoke_cold_1();
    }

    v9 = [[LAAuthenticationMethodResult alloc] initWithAuthenticatedUser:&stru_1F1A66748 authenticationMethod:*(a1 + 32)];
    v10 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__LAAuthenticationBiometricMethod_runBiometricOperation__block_invoke_112;
    v18[3] = &unk_1E77CC0B0;
    v18[4] = v10;
    v19 = v9;
    v11 = v9;
    [v10 forEachObserverWithProtocol:&unk_1F1A74C48 selector:sel_authenticationMethod_didAuthenticateWithResult_ invoke:v18];
  }

  else
  {
    if (v8)
    {
      __56__LAAuthenticationBiometricMethod_runBiometricOperation__block_invoke_cold_2();
    }

    v12 = [v6 domain];
    v13 = [v12 isEqualToString:@"com.apple.LocalAuthentication"];

    if (v13)
    {
      v14 = [v6 code];
      if (v14 == -8)
      {
        v16 = [*(a1 + 32) lockoutStateFromError:v6];
        v17 = [*(a1 + 32) currentState];
        [v17 setLockoutState:v16];

        [*(a1 + 32) distributeStateChange];
      }

      else if (v14 == -1)
      {
        v15 = [*(a1 + 32) configuration];
        if ([v15 autoRetry])
        {
          [*(a1 + 32) runBiometricOperation];
        }
      }
    }
  }
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  paramsCopy = params;
  v8 = LA_LOG_laabio();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LAAuthenticationBiometricMethod event:params:reply:];
  }

  currentState = [(LAAuthenticationBiometricMethod *)self currentState];
  isUserPresent = [currentState isUserPresent];

  if (event > 6)
  {
    if (event == 7)
    {
      v17 = [paramsCopy objectForKeyedSubscript:&unk_1F1A6FC80];
      v12 = v17;
      if (!v17)
      {
        goto LABEL_46;
      }

      integerValue = [v17 integerValue];
      if (integerValue <= 0xD)
      {
        if (((1 << integerValue) & 0x3EFC) != 0)
        {
          goto LABEL_46;
        }

        if (integerValue == 1)
        {
          goto LABEL_29;
        }

        if (integerValue == 8)
        {
          selfCopy13 = self;
          v16 = 13;
LABEL_45:
          [(LAAuthenticationBiometricMethod *)selfCopy13 distributeBiometricFeedback:v16];
          goto LABEL_46;
        }
      }

      if (integerValue)
      {
        v19 = LA_LOG_laabio();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [LAAuthenticationBiometricMethod event:params:reply:];
        }

        goto LABEL_52;
      }

LABEL_31:
      isUserPresent = 1;
      goto LABEL_46;
    }

    if (event == 12)
    {
      v14 = [paramsCopy objectForKeyedSubscript:&unk_1F1A6FC98];
      v12 = v14;
      if (v14)
      {
        switch([v14 integerValue])
        {
          case 1:
            selfCopy13 = self;
            v16 = 12;
            goto LABEL_45;
          case 2:
            selfCopy13 = self;
            v16 = 0;
            goto LABEL_45;
          case 3:
            selfCopy13 = self;
            v16 = 1;
            goto LABEL_45;
          case 4:
            selfCopy13 = self;
            v16 = 2;
            goto LABEL_45;
          case 5:
            selfCopy13 = self;
            v16 = 3;
            goto LABEL_45;
          case 6:
            selfCopy13 = self;
            v16 = 4;
            goto LABEL_45;
          case 7:
          case 11:
            selfCopy13 = self;
            v16 = 5;
            goto LABEL_45;
          case 8:
            selfCopy13 = self;
            v16 = 6;
            goto LABEL_45;
          case 9:
            selfCopy13 = self;
            v16 = 7;
            goto LABEL_45;
          case 10:
            selfCopy13 = self;
            v16 = 8;
            goto LABEL_45;
          case 12:
            selfCopy13 = self;
            v16 = 10;
            goto LABEL_45;
          case 13:
            selfCopy13 = self;
            v16 = 11;
            goto LABEL_45;
          default:
            v19 = LA_LOG_laabio();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              [LAAuthenticationBiometricMethod event:params:reply:];
            }

            goto LABEL_52;
        }
      }

      goto LABEL_46;
    }

LABEL_16:
    v12 = LA_LOG_laabio();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [LAAuthenticationBiometricMethod event:params:reply:];
    }

    goto LABEL_46;
  }

  if (!event)
  {
    goto LABEL_47;
  }

  if (event != 1)
  {
    goto LABEL_16;
  }

  v11 = [paramsCopy objectForKeyedSubscript:&unk_1F1A6FC68];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_46;
  }

  integerValue2 = [v11 integerValue];
  if (integerValue2 <= 2)
  {
    if (integerValue2)
    {
      if (integerValue2 != 1)
      {
        if (integerValue2 == 2)
        {
          goto LABEL_46;
        }

LABEL_27:
        v19 = LA_LOG_laabio();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [LAAuthenticationBiometricMethod event:params:reply:];
        }

LABEL_52:

        goto LABEL_46;
      }

LABEL_29:
      isUserPresent = 0;
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if ((integerValue2 - 4) >= 9)
  {
    if (integerValue2 == 3)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __54__LAAuthenticationBiometricMethod_event_params_reply___block_invoke;
      v23[3] = &unk_1E77CC060;
      v23[4] = self;
      [(LAAuthenticationMethod *)self forEachObserverWithProtocol:&unk_1F1A74D28 selector:sel_authenticationBiometricsMethodDidReceiveNoMatch_ invoke:v23];
      goto LABEL_46;
    }

    goto LABEL_27;
  }

LABEL_46:

LABEL_47:
  currentState2 = [(LAAuthenticationBiometricMethod *)self currentState];
  isUserPresent2 = [currentState2 isUserPresent];

  if (isUserPresent != isUserPresent2)
  {
    currentState3 = [(LAAuthenticationBiometricMethod *)self currentState];
    [currentState3 setIsUserPresent:isUserPresent];

    [(LAAuthenticationBiometricMethod *)self distributeStateChange];
  }
}

- (void)terminate
{
  context = [(LAAuthenticationBiometricMethod *)self context];
  [context invalidate];

  v4.receiver = self;
  v4.super_class = LAAuthenticationBiometricMethod;
  [(LAAuthenticationMethod *)&v4 terminate];
}

- (void)initWithConfiguration:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__LAAuthenticationBiometricMethod_runBiometricOperation__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__LAAuthenticationBiometricMethod_runBiometricOperation__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)event:params:reply:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1A784E000, v1, OS_LOG_TYPE_DEBUG, "got bio event: %d (%@)", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)event:params:reply:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)event:params:reply:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)event:params:reply:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)event:params:reply:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end