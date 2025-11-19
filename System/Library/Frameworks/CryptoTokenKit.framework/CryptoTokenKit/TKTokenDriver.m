@interface TKTokenDriver
+ (id)createDriver;
+ (void)createDriver;
- (NSArray)tokenSessions;
- (NSString)classID;
- (TKTokenDriver)init;
- (TKTokenDriverContext)context;
- (id)createTokenWithSlot:(id)a3 AID:(id)a4 proprietaryCardUsage:(BOOL)a5 error:(id *)a6;
- (id)delegate;
- (id)endpointForToken:(id)a3;
- (id)keepAlive;
- (void)acquireTokenWithInstanceID:(id)a3 reply:(id)a4;
- (void)configureWithReply:(id)a3;
- (void)dealloc;
- (void)getTokenWithAttributes:(id)a3 reply:(id)a4;
- (void)releaseTokenWithInstanceID:(id)a3;
- (void)terminate;
@end

@implementation TKTokenDriver

+ (id)createDriver
{
  v27 = *MEMORY[0x1E69E9840];
  gotLoadHelper_x19__OBJC_CLASS___PKService(v3);
  v6 = *(v2 + 2728);
  if (!objc_opt_class())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Token plugins are not supported without PlugInKit"];
  }

  v7 = [*(v2 + 2728) defaultService];
  v8 = [v7 solePersonality];

  v9 = [v8 plugInDictionary];
  v10 = [v9 objectForKey:@"NSExtensionAttributes"];

  v11 = [v10 objectForKeyedSubscript:@"com.apple.ctk.driver-class"];
  v12 = TK_LOG_token();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[(TKTokenDriver *)v8];
  }

  v13 = -[objc_class init](-[objc_class alloc](objc_getClass([v11 UTF8String]), "alloc"), "init");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = TK_LOG_token();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v18 = [v8 identifier];
      *buf = 138543874;
      v22 = v18;
      v23 = 2114;
      v24 = v11;
      v25 = 2048;
      v26 = v13;
      _os_log_fault_impl(&dword_1DF413000, v14, OS_LOG_TYPE_FAULT, "extension %{public}@: cannot instantiate TKTokenDriver-based class '%{public}@' (%p)", buf, 0x20u);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [v8 identifier];
    [v19 handleFailureInMethod:a2 object:a1 file:@"TKToken.m" lineNumber:112 description:{@"extension %@: cannot instantiate TKTokenDriver-based class '%@' (%p)", v20, v11, v13}];
  }

  [(objc_class *)v13 setExtensionAttributes:v10];
  v15 = TK_LOG_token();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[TKTokenDriver createDriver];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (TKTokenDriver)init
{
  v7.receiver = self;
  v7.super_class = TKTokenDriver;
  v2 = [(TKTokenDriver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if ([(TKTokenDriver *)v2 conformsToProtocol:&unk_1F5A8FF90])
    {
      objc_storeWeak(&v3->_delegate, v3);
    }

    v4 = [MEMORY[0x1E695DF90] dictionary];
    tokenConnections = v3->_tokenConnections;
    v3->_tokenConnections = v4;
  }

  return v3;
}

- (NSString)classID
{
  v2 = [(TKTokenDriver *)self extensionAttributes];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.ctk.class-id"];

  return v3;
}

- (id)keepAlive
{
  keepAlive = self->_keepAlive;
  if (keepAlive)
  {
    v3 = keepAlive;
  }

  else
  {
    v3 = [(TKSharedResourceSlot *)self->_keepAliveResourceSlot resourceWithError:0];
  }

  return v3;
}

- (id)endpointForToken:(id)a3
{
  v4 = a3;
  v5 = [v4 tokenID];
  v6 = [v5 instanceID];

  v7 = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(v7);
  v8 = [(TKTokenDriver *)self tokenConnections];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = TK_LOG_token();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenDriver endpointForToken:];
    }

    [v9 invalidate];
  }

  v11 = [[TKTokenConnection alloc] initWithToken:v4];

  v12 = [(TKTokenDriver *)self tokenConnections];
  [v12 setObject:v11 forKeyedSubscript:v6];

  v13 = [(TKTokenConnection *)v11 listener];
  v14 = [v13 endpoint];

  objc_sync_exit(v7);

  return v14;
}

- (void)acquireTokenWithInstanceID:(id)a3 reply:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [TKTokenID alloc];
  v9 = [(TKTokenDriver *)self classID];
  v10 = [(TKTokenID *)v8 initWithClassID:v9 instanceID:v6];

  v11 = [(TKTokenDriver *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [TKTokenConfiguration alloc];
    v14 = [(TKTokenDriver *)self context];
    v15 = [v14 configurationConnection];
    v16 = [(TKTokenConfiguration *)v13 initWithTokenID:v10 configurationConnection:v15];

    v17 = [(TKTokenConfiguration *)v16 beginTransaction];
    v18 = [(TKTokenDriver *)self delegate];
    v28 = 0;
    v19 = [v18 tokenDriver:self tokenForConfiguration:v16 error:&v28];
    v20 = v28;

    if (v19)
    {
      [v17 commit];
      v21 = [(TKTokenDriver *)self endpointForToken:v19];
      v7[2](v7, v21, 0);
    }

    else
    {
      v24 = TK_LOG_token();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenDriver acquireTokenWithInstanceID:reply:];
      }

      [v17 commit];
      (v7)[2](v7, 0, v20);
    }
  }

  else
  {
    v29 = *MEMORY[0x1E697AEC8];
    v22 = [(TKTokenID *)v10 stringRepresentation];
    v30[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50__TKTokenDriver_acquireTokenWithInstanceID_reply___block_invoke;
    v26[3] = &unk_1E86B6E30;
    v26[4] = self;
    v27 = v7;
    [(TKTokenDriver *)self getTokenWithAttributes:v23 reply:v26];

    v20 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __50__TKTokenDriver_acquireTokenWithInstanceID_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) endpointForToken:a2];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }
}

- (void)releaseTokenWithInstanceID:(id)a3
{
  v4 = a3;
  v5 = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(v5);
  v6 = [(TKTokenDriver *)self tokenConnections];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [(TKTokenDriver *)self tokenConnections];
    v9 = [v8 objectForKeyedSubscript:v4];
    [v9 invalidate];

    v10 = [(TKTokenDriver *)self tokenConnections];
    [v10 removeObjectForKey:v4];
  }

  else
  {
    v10 = TK_LOG_token();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TKTokenDriver releaseTokenWithInstanceID:];
    }
  }

  objc_sync_exit(v5);
}

- (void)configureWithReply:(id)a3
{
  v12 = a3;
  v4 = [(TKTokenDriver *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [TKTokenDriverConfiguration alloc];
    v7 = [(TKTokenDriver *)self classID];
    v8 = [(TKTokenDriver *)self context];
    v9 = [v8 configurationConnection];
    v10 = [(TKTokenDriverConfiguration *)v6 initWithClassID:v7 configurationConnection:v9];

    v11 = [(TKTokenDriver *)self delegate];
    [v11 tokenDriver:self configure:v10];
  }

  v12[2](v12, 1, 0);
}

- (id)createTokenWithSlot:(id)a3 AID:(id)a4 proprietaryCardUsage:(BOOL)a5 error:(id *)a6
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"token driver does not implement any way to create new slot-based token instances";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a6 = [v7 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)getTokenWithAttributes:(id)a3 reply:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"token driver does not implement any way to create new token instances";
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v8];
  (*(a4 + 2))(v7, 0, v9);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)terminate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(v3);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TKTokenDriver *)self tokenConnections];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(TKTokenDriver *)self tokenConnections];
  [v9 removeAllObjects];

  objc_sync_exit(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (NSArray)tokenSessions
{
  v32 = *MEMORY[0x1E69E9840];
  obj = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(obj);
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [(TKTokenDriver *)self tokenConnections];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v20 = v5;
    v21 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v20);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [v8 sessions];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = *v23;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              v14 = [v8 sessions];
              v15 = [v14 objectForKey:v13];
              [v3 addObject:v15];
            }

            v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v10);
        }
      }

      v5 = v20;
      v6 = [v20 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];
  objc_sync_exit(obj);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TKTokenDriverContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

+ (void)createDriver
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)endpointForToken:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)acquireTokenWithInstanceID:reply:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1DF413000, v1, OS_LOG_TYPE_DEBUG, "failed to instantiate token with instanceID %@, error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)acquireTokenWithSlot:AID:proprietaryCardUsage:reply:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)releaseTokenWithInstanceID:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1DF413000, v0, OS_LOG_TYPE_ERROR, "An attempt to release nonexistent token with instanceID=%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end