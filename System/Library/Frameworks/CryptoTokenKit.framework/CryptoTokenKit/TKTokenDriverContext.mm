@interface TKTokenDriverContext
- (BOOL)_setupWithDriver:(id)driver error:(id *)error;
- (BOOL)startRequestWithError:(id *)error;
- (TKTokenConfigurationConnection)configurationConnection;
- (double)idleTimeout;
- (id)configurationForTokenID:(id)d;
- (void)_setupDriver;
- (void)acquireTokenWithInstanceID:(id)d reply:(id)reply;
- (void)configureWithReply:(id)reply;
- (void)idleTimeout;
- (void)releaseTokenWithInstanceID:(id)d reply:(id)reply;
- (void)setConfigurationEndpoint:(id)endpoint reply:(id)reply;
- (void)setup;
@end

@implementation TKTokenDriverContext

- (TKTokenConfigurationConnection)configurationConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configurationConnection = selfCopy->_configurationConnection;
  if (!configurationConnection)
  {
    configurationEndpoint = [(TKTokenDriverContext *)selfCopy configurationEndpoint];

    if (!configurationEndpoint)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"TKToken.m" lineNumber:321 description:@"ctkd did not set configurationEndpoint"];
    }

    v6 = [TKTokenConfigurationConnection alloc];
    configurationEndpoint2 = [(TKTokenDriverContext *)selfCopy configurationEndpoint];
    v8 = [(TKTokenConfigurationConnection *)v6 initWithEndpoint:configurationEndpoint2];
    v9 = selfCopy->_configurationConnection;
    selfCopy->_configurationConnection = v8;

    configurationConnection = selfCopy->_configurationConnection;
  }

  v10 = configurationConnection;
  objc_sync_exit(selfCopy);

  return v10;
}

- (id)configurationForTokenID:(id)d
{
  dCopy = d;
  v5 = [TKTokenConfiguration alloc];
  configurationConnection = [(TKTokenDriverContext *)self configurationConnection];
  v7 = [(TKTokenConfiguration *)v5 initWithTokenID:dCopy configurationConnection:configurationConnection];

  return v7;
}

void __62__TKTokenDriverContext_auditAuthOperation_auditToken_success___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TK_LOG_token();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__TKTokenDriverContext_auditAuthOperation_auditToken_success___block_invoke_cold_1();
  }
}

- (double)idleTimeout
{
  inputItems = [(TKTokenDriverContext *)self inputItems];
  firstObject = [inputItems firstObject];

  if (firstObject)
  {
    userInfo = [firstObject userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"idleTimeout"];

    objc_opt_class();
    v6 = 5.0;
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      v6 = v7;
      v8 = TK_LOG_token();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenDriverContext idleTimeout];
      }
    }
  }

  else
  {
    v6 = 5.0;
  }

  return v6;
}

- (void)setup
{
  v3 = +[TKTokenDriver createDriver];
  driver = self->_driver;
  self->_driver = v3;

  [(TKTokenDriverContext *)self _setupDriver];
}

- (void)_setupDriver
{
  [(TKTokenDriver *)self->_driver setContext:self];
  v3 = [TKSharedResourceSlot alloc];
  driver = [(TKTokenDriverContext *)self driver];
  classID = [driver classID];
  v6 = [(TKSharedResourceSlot *)v3 initWithName:classID];
  [(TKTokenDriver *)self->_driver setKeepAliveResourceSlot:v6];

  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __36__TKTokenDriverContext__setupDriver__block_invoke;
  v23[3] = &unk_1E86B6E98;
  objc_copyWeak(&v24, &location);
  v7 = [(TKTokenDriver *)self->_driver keepAliveResourceSlot:v23[0]];
  [v7 setObjectDestroyedBlock:v23];

  [(TKTokenDriverContext *)self idleTimeout];
  v9 = v8;
  keepAliveResourceSlot = [(TKTokenDriver *)self->_driver keepAliveResourceSlot];
  [keepAliveResourceSlot setIdleTimeout:v9];

  _auxiliaryConnection = [(TKTokenDriverContext *)self _auxiliaryConnection];
  _queue = [_auxiliaryConnection _queue];
  keepAliveResourceSlot2 = [(TKTokenDriver *)self->_driver keepAliveResourceSlot];
  [keepAliveResourceSlot2 setIdleQueue:_queue];

  keepAliveResourceSlot3 = [(TKTokenDriver *)self->_driver keepAliveResourceSlot];
  v15 = [keepAliveResourceSlot3 resourceWithError:0];
  initialKeepAlive = self->_initialKeepAlive;
  self->_initialKeepAlive = v15;

  inputItems = [(TKTokenDriverContext *)self inputItems];
  firstObject = [inputItems firstObject];
  userInfo = [firstObject userInfo];
  v20 = [userInfo objectForKey:@"avoidInitialKeepAlive"];
  bOOLValue = [v20 BOOLValue];

  if (bOOLValue)
  {
    v22 = self->_initialKeepAlive;
    self->_initialKeepAlive = 0;
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __36__TKTokenDriverContext__setupDriver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = TK_LOG_token();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __36__TKTokenDriverContext__setupDriver__block_invoke_cold_1(WeakRetained);
    }

    v3 = [WeakRetained driver];
    [v3 terminate];

    v4 = TK_LOG_token();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __36__TKTokenDriverContext__setupDriver__block_invoke_cold_2();
    }

    v5 = WeakRetained[5];
    WeakRetained[5] = 0;

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
    [WeakRetained cancelRequestWithError:v6];

    v7 = TK_LOG_token();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __36__TKTokenDriverContext__setupDriver__block_invoke_cold_3();
    }
  }
}

- (BOOL)_setupWithDriver:(id)driver error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  driverCopy = driver;
  if (_setupWithDriver_error__onceToken != -1)
  {
    [TKTokenDriverContext _setupWithDriver:error:];
  }

  v14 = 0;
  v8 = SecTaskCopyValueForEntitlement(_setupWithDriver_error__selfTask, @"com.apple.private.ctk.virtual-token", &v14);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 BOOLValue])
  {
    if (error)
    {
      if (v14)
      {
        v9 = 0;
        *error = v14;
        goto LABEL_11;
      }

      v10 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"missing virtual token entitlement";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v10 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v11];
    }

    v9 = 0;
    goto LABEL_11;
  }

  objc_storeStrong(&self->_driver, driver);
  [(TKTokenDriverContext *)self _setupDriver];
  v9 = 1;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

SecTaskRef __47__TKTokenDriverContext__setupWithDriver_error___block_invoke()
{
  result = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  _setupWithDriver_error__selfTask = result;
  return result;
}

- (void)setConfigurationEndpoint:(id)endpoint reply:(id)reply
{
  objc_storeStrong(&self->_configurationEndpoint, endpoint);
  replyCopy = reply;
  replyCopy[2]();
}

- (BOOL)startRequestWithError:(id *)error
{
  driver = [(TKTokenDriverContext *)self driver];

  if (driver)
  {
    initialKeepAlive = self->_initialKeepAlive;
    v8 = initialKeepAlive;
    if (!initialKeepAlive)
    {
      error = [(TKTokenDriverContext *)self driver];
      keepAliveResourceSlot = [error keepAliveResourceSlot];
      v8 = [keepAliveResourceSlot resourceWithError:0];
    }

    driver2 = [(TKTokenDriverContext *)self driver];
    [driver2 setKeepAlive:v8];

    if (!initialKeepAlive)
    {
    }

    v10 = self->_initialKeepAlive;
    self->_initialKeepAlive = 0;
  }

  else
  {
    v11 = TK_LOG_token();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenDriverContext startRequestWithError:];
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    }
  }

  return driver != 0;
}

- (void)acquireTokenWithInstanceID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v17 = 0;
  v8 = [(TKTokenDriverContext *)self startRequestWithError:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = _os_activity_create(&dword_1DF413000, "acquire token by instanceID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    driver = [(TKTokenDriverContext *)self driver];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__TKTokenDriverContext_acquireTokenWithInstanceID_reply___block_invoke;
    v12[3] = &unk_1E86B6EC0;
    v13 = dCopy;
    selfCopy = self;
    v15 = replyCopy;
    [driver acquireTokenWithInstanceID:v13 reply:v12];

    os_activity_scope_leave(&state);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v9);
  }
}

void __57__TKTokenDriverContext_acquireTokenWithInstanceID_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = TK_LOG_token();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __57__TKTokenDriverContext_acquireTokenWithInstanceID_reply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
  v8 = [*(a1 + 40) driver];
  [v8 setKeepAlive:0];
}

void __76__TKTokenDriverContext_acquireTokenWithSlot_AID_proprietaryCardUsage_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = TK_LOG_token();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __76__TKTokenDriverContext_acquireTokenWithSlot_AID_proprietaryCardUsage_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  v11 = [*(a1 + 32) driver];
  [v11 setKeepAlive:0];
}

- (void)configureWithReply:(id)reply
{
  replyCopy = reply;
  v12 = 0;
  v5 = [(TKTokenDriverContext *)self startRequestWithError:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = _os_activity_create(&dword_1DF413000, "configure token class", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    driver = [(TKTokenDriverContext *)self driver];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__TKTokenDriverContext_configureWithReply___block_invoke;
    v9[3] = &unk_1E86B6F10;
    v9[4] = self;
    v10 = replyCopy;
    [driver configureWithReply:v9];

    os_activity_scope_leave(&state);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v6);
  }
}

void __43__TKTokenDriverContext_configureWithReply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = TK_LOG_token();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __43__TKTokenDriverContext_configureWithReply___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v6 = [*(a1 + 32) driver];
  [v6 setKeepAlive:0];
}

- (void)releaseTokenWithInstanceID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v14 = 0;
  v8 = [(TKTokenDriverContext *)self startRequestWithError:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = _os_activity_create(&dword_1DF413000, "release token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    driver = [(TKTokenDriverContext *)self driver];
    [driver releaseTokenWithInstanceID:dCopy];

    replyCopy[2](replyCopy);
    driver2 = [(TKTokenDriverContext *)self driver];
    [driver2 setKeepAlive:0];

    os_activity_scope_leave(&state);
  }

  else
  {
    replyCopy[2](replyCopy);
  }
}

void __62__TKTokenDriverContext_auditAuthOperation_auditToken_success___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1DF413000, v0, OS_LOG_TYPE_ERROR, "Failed to get host proxy: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)idleTimeout
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __36__TKTokenDriverContext__setupDriver__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 driver];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __36__TKTokenDriverContext__setupDriver__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __36__TKTokenDriverContext__setupDriver__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startRequestWithError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__TKTokenDriverContext_acquireTokenWithInstanceID_reply___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__TKTokenDriverContext_acquireTokenWithSlot_AID_proprietaryCardUsage_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __43__TKTokenDriverContext_configureWithReply___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) driver];
  v2 = [v1 classID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end