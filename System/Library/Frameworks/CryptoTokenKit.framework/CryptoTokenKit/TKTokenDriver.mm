@interface TKTokenDriver
+ (id)createDriver;
+ (void)createDriver;
- (NSArray)tokenSessions;
- (NSString)classID;
- (TKTokenDriver)init;
- (TKTokenDriverContext)context;
- (id)createTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage error:(id *)error;
- (id)delegate;
- (id)endpointForToken:(id)token;
- (id)keepAlive;
- (void)acquireTokenWithInstanceID:(id)d reply:(id)reply;
- (void)configureWithReply:(id)reply;
- (void)dealloc;
- (void)getTokenWithAttributes:(id)attributes reply:(id)reply;
- (void)releaseTokenWithInstanceID:(id)d;
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

  defaultService = [*(v2 + 2728) defaultService];
  solePersonality = [defaultService solePersonality];

  plugInDictionary = [solePersonality plugInDictionary];
  v10 = [plugInDictionary objectForKey:@"NSExtensionAttributes"];

  v11 = [v10 objectForKeyedSubscript:@"com.apple.ctk.driver-class"];
  v12 = TK_LOG_token();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[(TKTokenDriver *)solePersonality];
  }

  v13 = -[objc_class init](-[objc_class alloc](objc_getClass([v11 UTF8String]), "alloc"), "init");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = TK_LOG_token();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      identifier = [solePersonality identifier];
      *buf = 138543874;
      v22 = identifier;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    identifier2 = [solePersonality identifier];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TKToken.m" lineNumber:112 description:{@"extension %@: cannot instantiate TKTokenDriver-based class '%@' (%p)", identifier2, v11, v13}];
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    tokenConnections = v3->_tokenConnections;
    v3->_tokenConnections = dictionary;
  }

  return v3;
}

- (NSString)classID
{
  extensionAttributes = [(TKTokenDriver *)self extensionAttributes];
  v3 = [extensionAttributes objectForKeyedSubscript:@"com.apple.ctk.class-id"];

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

- (id)endpointForToken:(id)token
{
  tokenCopy = token;
  tokenID = [tokenCopy tokenID];
  instanceID = [tokenID instanceID];

  tokenConnections = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(tokenConnections);
  tokenConnections2 = [(TKTokenDriver *)self tokenConnections];
  v9 = [tokenConnections2 objectForKeyedSubscript:instanceID];

  if (v9)
  {
    v10 = TK_LOG_token();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenDriver endpointForToken:];
    }

    [v9 invalidate];
  }

  v11 = [[TKTokenConnection alloc] initWithToken:tokenCopy];

  tokenConnections3 = [(TKTokenDriver *)self tokenConnections];
  [tokenConnections3 setObject:v11 forKeyedSubscript:instanceID];

  listener = [(TKTokenConnection *)v11 listener];
  endpoint = [listener endpoint];

  objc_sync_exit(tokenConnections);

  return endpoint;
}

- (void)acquireTokenWithInstanceID:(id)d reply:(id)reply
{
  v30[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v8 = [TKTokenID alloc];
  classID = [(TKTokenDriver *)self classID];
  v10 = [(TKTokenID *)v8 initWithClassID:classID instanceID:dCopy];

  delegate = [(TKTokenDriver *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [TKTokenConfiguration alloc];
    context = [(TKTokenDriver *)self context];
    configurationConnection = [context configurationConnection];
    v16 = [(TKTokenConfiguration *)v13 initWithTokenID:v10 configurationConnection:configurationConnection];

    beginTransaction = [(TKTokenConfiguration *)v16 beginTransaction];
    delegate2 = [(TKTokenDriver *)self delegate];
    v28 = 0;
    v19 = [delegate2 tokenDriver:self tokenForConfiguration:v16 error:&v28];
    v20 = v28;

    if (v19)
    {
      [beginTransaction commit];
      v21 = [(TKTokenDriver *)self endpointForToken:v19];
      replyCopy[2](replyCopy, v21, 0);
    }

    else
    {
      v24 = TK_LOG_token();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenDriver acquireTokenWithInstanceID:reply:];
      }

      [beginTransaction commit];
      (replyCopy)[2](replyCopy, 0, v20);
    }
  }

  else
  {
    v29 = *MEMORY[0x1E697AEC8];
    stringRepresentation = [(TKTokenID *)v10 stringRepresentation];
    v30[0] = stringRepresentation;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __50__TKTokenDriver_acquireTokenWithInstanceID_reply___block_invoke;
    v26[3] = &unk_1E86B6E30;
    v26[4] = self;
    v27 = replyCopy;
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

- (void)releaseTokenWithInstanceID:(id)d
{
  dCopy = d;
  tokenConnections = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(tokenConnections);
  tokenConnections2 = [(TKTokenDriver *)self tokenConnections];
  v7 = [tokenConnections2 objectForKeyedSubscript:dCopy];

  if (v7)
  {
    tokenConnections3 = [(TKTokenDriver *)self tokenConnections];
    v9 = [tokenConnections3 objectForKeyedSubscript:dCopy];
    [v9 invalidate];

    tokenConnections4 = [(TKTokenDriver *)self tokenConnections];
    [tokenConnections4 removeObjectForKey:dCopy];
  }

  else
  {
    tokenConnections4 = TK_LOG_token();
    if (os_log_type_enabled(tokenConnections4, OS_LOG_TYPE_ERROR))
    {
      [TKTokenDriver releaseTokenWithInstanceID:];
    }
  }

  objc_sync_exit(tokenConnections);
}

- (void)configureWithReply:(id)reply
{
  replyCopy = reply;
  delegate = [(TKTokenDriver *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [TKTokenDriverConfiguration alloc];
    classID = [(TKTokenDriver *)self classID];
    context = [(TKTokenDriver *)self context];
    configurationConnection = [context configurationConnection];
    v10 = [(TKTokenDriverConfiguration *)v6 initWithClassID:classID configurationConnection:configurationConnection];

    delegate2 = [(TKTokenDriver *)self delegate];
    [delegate2 tokenDriver:self configure:v10];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (id)createTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"token driver does not implement any way to create new slot-based token instances";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v7 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)getTokenWithAttributes:(id)attributes reply:(id)reply
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"token driver does not implement any way to create new token instances";
  v6 = MEMORY[0x1E695DF20];
  replyCopy = reply;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v8];
  (*(reply + 2))(replyCopy, 0, v9);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)terminate
{
  v16 = *MEMORY[0x1E69E9840];
  tokenConnections = [(TKTokenDriver *)self tokenConnections];
  objc_sync_enter(tokenConnections);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tokenConnections2 = [(TKTokenDriver *)self tokenConnections];
  allValues = [tokenConnections2 allValues];

  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  tokenConnections3 = [(TKTokenDriver *)self tokenConnections];
  [tokenConnections3 removeAllObjects];

  objc_sync_exit(tokenConnections);
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
  tokenConnections = [(TKTokenDriver *)self tokenConnections];
  allValues = [tokenConnections allValues];

  v6 = [allValues countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v20 = allValues;
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
        sessions = [v8 sessions];
        v10 = [sessions countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = *v23;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(sessions);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              sessions2 = [v8 sessions];
              v15 = [sessions2 objectForKey:v13];
              [v3 addObject:v15];
            }

            v10 = [sessions countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v10);
        }
      }

      allValues = v20;
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