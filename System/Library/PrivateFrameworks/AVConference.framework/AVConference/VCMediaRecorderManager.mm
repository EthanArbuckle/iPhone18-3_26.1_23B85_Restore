@interface VCMediaRecorderManager
+ (id)prepareURL:(id)l forXPCWithSandboxing:(BOOL)sandboxing;
+ (id)sharedInstance;
- (BOOL)dispatchedRegisterMediaRecorder:(id)recorder withStreamToken:(int64_t)token andError:(id *)error;
- (VCMediaRecorderManager)init;
- (id)mediaRecorderFromClientContext:(id)context;
- (id)newClientContextWithStreamToken:(int64_t)token error:(id *)error;
- (id)newRequestWithArguments:(id)arguments state:(unsigned __int8)state;
- (void)dealloc;
- (void)deregisterBlocksFromService;
- (void)notifyClientsWithStreamToken:(int64_t)token service:(char *)service arguments:(id)arguments;
- (void)registerBlocksForService;
- (void)registerMediaRecorder:(id)recorder withStreamToken:(int64_t)token;
- (void)saveImage:(id)image movie:(id)movie;
- (void)streamToken:(int64_t)token didEndProcessingRequest:(id)request urlContext:(const tagVCMediaRecorderDelegateURLContext *)context error:(id)error;
- (void)streamToken:(int64_t)token didFinishRequest:(id)request didSucceed:(BOOL)succeed;
- (void)streamToken:(int64_t)token didStartProcessingRequest:(id)request error:(id)error;
- (void)streamToken:(int64_t)token didUpdateCapabilities:(unsigned int)capabilities;
- (void)streamTokenDidCleanupAllRequests:(int64_t)requests;
@end

@implementation VCMediaRecorderManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[VCMediaRecorderManager sharedInstance];
  }

  return sharedInstance__sharedManager;
}

VCMediaRecorderManager *__40__VCMediaRecorderManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCMediaRecorderManager);
  sharedInstance__sharedManager = result;
  return result;
}

- (VCMediaRecorderManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCMediaRecorderManager;
  v2 = [(VCMediaRecorderManager *)&v5 init];
  if (v2)
  {
    v2->_streamTokenList = objc_alloc_init(MEMORY[0x1E695DF90]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_xpcCommandQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaRecorderManager.xpcCommandQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaRecorderManager *)self deregisterBlocksFromService];
  dispatch_release(self->_xpcCommandQueue);

  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = VCMediaRecorderManager;
  [(VCMediaRecorderManager *)&v3 dealloc];
}

- (void)registerMediaRecorder:(id)recorder withStreamToken:(int64_t)token
{
  v5[7] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__VCMediaRecorderManager_registerMediaRecorder_withStreamToken___block_invoke;
  v5[3] = &unk_1E85F50D8;
  v5[4] = self;
  v5[5] = recorder;
  v5[6] = token;
  dispatch_async(xpcCommandQueue, v5);
}

- (BOOL)dispatchedRegisterMediaRecorder:(id)recorder withStreamToken:(int64_t)token andError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:token];
  if ([(NSMutableDictionary *)self->_streamTokenList objectForKeyedSubscript:v9])
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderManager" code:-9 userInfo:0];
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        goto LABEL_11;
      }

      v18 = 136315906;
      v19 = v11;
      v20 = 2080;
      v21 = "[VCMediaRecorderManager dispatchedRegisterMediaRecorder:withStreamToken:andError:]";
      v22 = 1024;
      v23 = 170;
      v24 = 1024;
      tokenCopy = token;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Context already exists for stream token=%u", &v18, 0x22u);
    }
  }

  else
  {
    v14 = [[VCMediaRecorderManagerStreamTokenClientList alloc] initWithStreamToken:token mediaRecorder:recorder];
    if (v14)
    {
      v15 = v14;
      [(NSMutableDictionary *)self->_streamTokenList setObject:v14 forKeyedSubscript:v9];
      [recorder setMediaRecorderDelegate:self];

      v10 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_11;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderManager" code:-10 userInfo:0];
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v13)
      {
        goto LABEL_11;
      }

      [VCMediaRecorderManager dispatchedRegisterMediaRecorder:v16 withStreamToken:? andError:?];
    }
  }

  LOBYTE(v13) = 0;
LABEL_11:
  if (error)
  {
    *error = v10;
  }

  return v13;
}

- (id)mediaRecorderFromClientContext:(id)context
{
  if (![VCMediaRecorderManagerStreamTokenClientList isValidContext:?])
  {
    return 0;
  }

  v5 = [VCMediaRecorderManagerStreamTokenClientList streamTokenFromClientContext:context];
  v6 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenList, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:v5]);

  return [v6 mediaRecorder];
}

- (id)newClientContextWithStreamToken:(int64_t)token error:(id *)error
{
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenList, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:token]);
  if (!v7)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = -2;
LABEL_8:
      v10 = 0;
      *error = [v11 errorWithDomain:@"VCMediaRecorderManager" code:v12 userInfo:0];
      return v10;
    }

    return 0;
  }

  v8 = v7;
  newContext = [v7 newContext];
  if (!newContext)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = -3;
      goto LABEL_8;
    }

    return 0;
  }

  v10 = newContext;
  [objc_msgSend(v8 "mediaRecorder")];
  return v10;
}

- (void)registerBlocksForService
{
  v8[5] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__VCMediaRecorderManager_registerBlocksForService__block_invoke;
  v8[3] = &unk_1E85F5100;
  v8[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_62;
  v7[3] = &unk_1E85F5100;
  v7[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_2;
  v6[3] = &unk_1E85F5100;
  v6[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_74;
  v5[3] = &unk_1E85F5100;
  v5[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_77;
  v4[3] = &unk_1E85F5100;
  v4[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_79;
  v3[3] = &unk_1E85F5100;
  v3[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

uint64_t __50__VCMediaRecorderManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v8 = [a2 objectForKeyedSubscript:@"vcMomentsStreamToken"];
  if (!v8)
  {
    if (a3)
    {
      v6 = 0;
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderManager" code:-1 userInfo:0];
      return v6;
    }

    return 0;
  }

  v9 = [v8 unsignedIntegerValue];
  v10 = [*(a1 + 32) newClientContextWithStreamToken:v9 error:a3];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v9)}];
  v13 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [v13 initWithObjectsAndKeys:{v11, @"CONTEXT", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v12, "mediaRecorder"), "capabilities")), @"vcMomentsCapabilities", 0}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v14;
      v18 = 2080;
      v19 = "[VCMediaRecorderManager registerBlocksForService]_block_invoke";
      v20 = 1024;
      v21 = 248;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New moments client. Context=%p", buf, 0x26u);
    }
  }

  return v6;
}

uint64_t __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [a2 objectForKeyedSubscript:@"vcMomentsConfiguration"];
  if (!v7)
  {
    if (!a3)
    {
      return 0;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = -6;
LABEL_20:
    v6 = 0;
    *a3 = [v19 errorWithDomain:@"VCMediaRecorderManager" code:v20 userInfo:0];
    return v6;
  }

  v8 = v7;
  v9 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
  if (!v9)
  {
    if (!a3)
    {
      return 0;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = -8;
    goto LABEL_20;
  }

  v10 = +[AVCMediaRecorderConfiguration newClientDictionary:clientPid:](AVCMediaRecorderConfiguration, "newClientDictionary:clientPid:", v8, [v9 intValue]);
  if (!v10)
  {
    if (!a3)
    {
      return 0;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = -7;
    goto LABEL_20;
  }

  v11 = v10;
  ID = VCUniqueIDGenerator_GenerateID();
  v13 = [[VCMediaRecorderLocal alloc] initWithStreamToken:ID configuration:v11 reportingAgent:0];

  if (!v13)
  {
    if (a3)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = -5;
      goto LABEL_20;
    }

    return 0;
  }

  if (![*(a1 + 32) dispatchedRegisterMediaRecorder:v13 withStreamToken:ID andError:a3] || (v14 = objc_msgSend(*(a1 + 32), "newClientContextWithStreamToken:error:", ID, a3)) == 0 || (v15 = v14, v16 = objc_msgSend(*(*(a1 + 32) + 8), "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", ID)), v17 = objc_alloc(MEMORY[0x1E695DF20]), v18 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v16, "mediaRecorder"), "capabilities")), v6 = objc_msgSend(v17, "initWithObjectsAndKeys:", v15, @"CONTEXT", v18, @"vcMomentsCapabilities", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", ID), @"vcMomentsStreamToken", 0), v15, !v6))
  {
    [(VCMediaRecorderLocal *)v13 invalidate];
    v6 = 0;
  }

  return v6;
}

uint64_t __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v5 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  if ([VCMediaRecorderManagerStreamTokenClientList isValidContext:v6])
  {
    v7 = [VCMediaRecorderManagerStreamTokenClientList streamTokenFromClientContext:v6];
    v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v7)}];
    v9 = [v8 mediaRecorder];
    if (([v9 usesClientToken] & 1) == 0 && objc_msgSend(objc_msgSend(v8, "clientContextList"), "count") == 1)
    {
      [v9 invalidate];
    }

    [v8 removeContext:v6];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCMediaRecorderManager registerBlocksForService]_block_invoke_2";
        v17 = 1024;
        v18 = 336;
        v19 = 2048;
        v20 = v6;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unregister moments client. Context=%p", buf, 0x26u);
      }
    }
  }

  return v4;
}

uint64_t __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [*(a1 + 32) mediaRecorderFromClientContext:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}];
    if (v6)
    {
      v7 = v6;
      v8 = [*(a1 + 32) newRequestWithArguments:a2 state:1];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (v8)
          {
            v11 = [objc_msgSend(v8 "description")];
          }

          else
          {
            v11 = "<nil>";
          }

          v13 = 136315906;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCMediaRecorderManager registerBlocksForService]_block_invoke";
          v17 = 1024;
          v18 = 353;
          v19 = 2080;
          v20 = v11;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clientStartRequest %s", &v13, 0x26u);
        }
      }

      [v7 processClientRequest:v8 error:a3];
    }

    else if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderManager" code:-4 userInfo:0];
    }
  }

  return 0;
}

uint64_t __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [*(a1 + 32) mediaRecorderFromClientContext:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}];
    if (v6)
    {
      v7 = v6;
      v8 = [*(a1 + 32) newRequestWithArguments:a2 state:2];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (v8)
          {
            v11 = [objc_msgSend(v8 "description")];
          }

          else
          {
            v11 = "<nil>";
          }

          v13 = 136315906;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCMediaRecorderManager registerBlocksForService]_block_invoke";
          v17 = 1024;
          v18 = 372;
          v19 = 2080;
          v20 = v11;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clientEndRequest %s", &v13, 0x26u);
        }
      }

      [v7 processClientRequest:v8 error:a3];
    }

    else if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderManager" code:-4 userInfo:0];
    }
  }

  return 0;
}

uint64_t __50__VCMediaRecorderManager_registerBlocksForService__block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [*(a1 + 32) mediaRecorderFromClientContext:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}];
    if (v6)
    {
      v7 = v6;
      v8 = [*(a1 + 32) newRequestWithArguments:a2 state:3];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (v8)
          {
            v11 = [objc_msgSend(v8 "description")];
          }

          else
          {
            v11 = "<nil>";
          }

          v13 = 136315906;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCMediaRecorderManager registerBlocksForService]_block_invoke";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = v11;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clientRejctRequest %s", &v13, 0x26u);
        }
      }

      [v7 processClientRequest:v8 error:a3];
    }

    else if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaRecorderManager" code:-4 userInfo:0];
    }
  }

  return 0;
}

- (void)deregisterBlocksFromService
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"vcMediaRecorderRejectRequest"];
}

- (void)notifyClientsWithStreamToken:(int64_t)token service:(char *)service arguments:(id)arguments
{
  block[8] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__VCMediaRecorderManager_notifyClientsWithStreamToken_service_arguments___block_invoke;
  block[3] = &unk_1E85F5128;
  block[6] = token;
  block[7] = service;
  block[4] = self;
  block[5] = arguments;
  dispatch_async(xpcCommandQueue, block);
}

void __73__VCMediaRecorderManager_notifyClientsWithStreamToken_service_arguments___block_invoke(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[6])}];
  if (v2)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [v2 clientContextList];
    v3 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v36;
      v6 = MEMORY[0x1E6986650];
      p_cache = (VCAudioStreamSendGroup + 16);
      v19 = *v36;
      do
      {
        v8 = 0;
        v20 = v4;
        do
        {
          if (*v36 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v35 + 1) + 8 * v8);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            __str = 0;
            v10 = *(a1 + 12);
            v11 = a1[7];
            v12 = a1[5];
            if (v12)
            {
              v13 = [objc_msgSend(v12 "description")];
            }

            else
            {
              v13 = "<nil>";
            }

            asprintf(&__str, "streamToken=%u, service=%s, arguments=%s", v10, v11, v13);
            if (__str)
            {
              __lasts = 0;
              v14 = strtok_r(__str, "\n", &__lasts);
              do
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v15 = VRTraceErrorLogLevelToCSTR();
                  v16 = *v6;
                  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136316162;
                    v25 = v15;
                    v26 = 2080;
                    v27 = "[VCMediaRecorderManager notifyClientsWithStreamToken:service:arguments:]_block_invoke";
                    v28 = 1024;
                    v29 = 418;
                    v30 = 2080;
                    v31 = "";
                    v32 = 2080;
                    v33 = v14;
                    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
                  }
                }

                v14 = strtok_r(0, "\n", &__lasts);
              }

              while (v14);
              free(__str);
              v5 = v19;
            }

            v4 = v20;
            p_cache = VCAudioStreamSendGroup.cache;
          }

          [objc_msgSend(p_cache + 218 "AVConferenceXPCServerSingleton")];
          ++v8;
        }

        while (v8 != v4);
        v4 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
      }

      while (v4);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __73__VCMediaRecorderManager_notifyClientsWithStreamToken_service_arguments___block_invoke_cold_1(v17, v18);
    }
  }
}

- (void)streamToken:(int64_t)token didStartProcessingRequest:(id)request error:(id)error
{
  v8 = [request mutableCopy];
  if (error)
  {
    [v8 setObject:objc_msgSend(MEMORY[0x1E696ACC8] forKeyedSubscript:{"archivedDataWithRootObject:requiringSecureCoding:error:", error, 1, 0), @"vcMomentsError"}];
  }

  [(VCMediaRecorderManager *)self notifyClientsWithStreamToken:token service:"vcMediaRecorderDidStartProcessingRequest" arguments:v8];
}

+ (id)prepareURL:(id)l forXPCWithSandboxing:(BOOL)sandboxing
{
  lCopy = l;
  v8[1] = *MEMORY[0x1E69E9840];
  if (sandboxing)
  {
    v5 = [[VCSandboxedURL alloc] initWithURL:l accessType:2];
    v6 = v5;
    if (v5)
    {
      lCopy = [(VCSandboxedURL *)v5 serialize];
      if (lCopy)
      {
LABEL_4:

        return lCopy;
      }

      [VCMediaRecorderManager prepareURL:v6 forXPCWithSandboxing:v8];
    }

    else
    {
      [VCMediaRecorderManager prepareURL:lCopy forXPCWithSandboxing:v8];
    }

    lCopy = v8[0];
    goto LABEL_4;
  }

  return lCopy;
}

- (void)streamToken:(int64_t)token didEndProcessingRequest:(id)request urlContext:(const tagVCMediaRecorderDelegateURLContext *)context error:(id)error
{
  v13 = [request mutableCopy];
  var0 = context->var0;
  var1 = context->var1;
  var2 = context->var2;
  [(VCMediaRecorderManager *)self saveImage:var0 movie:var1];
  if (var0)
  {
    [v13 setObject:+[VCMediaRecorderManager prepareURL:forXPCWithSandboxing:](VCMediaRecorderManager forKeyedSubscript:{"prepareURL:forXPCWithSandboxing:", var0, var2), @"vcMomentsStillImageURL"}];
  }

  if (var1)
  {
    [v13 setObject:+[VCMediaRecorderManager prepareURL:forXPCWithSandboxing:](VCMediaRecorderManager forKeyedSubscript:{"prepareURL:forXPCWithSandboxing:", var1, var2), @"vcMomentsMovieURL"}];
  }

  if (error)
  {
    [v13 setObject:objc_msgSend(MEMORY[0x1E696ACC8] forKeyedSubscript:{"archivedDataWithRootObject:requiringSecureCoding:error:", error, 1, 0), @"vcMomentsError"}];
  }

  [(VCMediaRecorderManager *)self notifyClientsWithStreamToken:token service:"vcMediaRecorderDidEndProcessingRequest" arguments:v13];
}

- (void)saveImage:(id)image movie:(id)movie
{
  v20 = *MEMORY[0x1E69E9840];
  if (VCDefaults_GetBoolValueForKey(@"FaceTimePhotosSaveImagesForDebug", 0))
  {
    if (image)
    {
      v6 = [objc_msgSend(image URLByAppendingPathExtension:{@"debug", "URLByAppendingPathExtension:", objc_msgSend(image, "pathExtension")}];
      [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v7;
          v14 = 2080;
          v15 = "[VCMediaRecorderManager saveImage:movie:]";
          v16 = 1024;
          v17 = 481;
          v18 = 2112;
          v19 = v6;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created for debugging: %@", &v12, 0x26u);
        }
      }
    }

    if (movie)
    {
      v9 = [objc_msgSend(movie URLByAppendingPathExtension:{@"debug", "URLByAppendingPathExtension:", objc_msgSend(movie, "pathExtension")}];
      [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v10;
          v14 = 2080;
          v15 = "[VCMediaRecorderManager saveImage:movie:]";
          v16 = 1024;
          v17 = 488;
          v18 = 2112;
          v19 = v9;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created for debugging: %@", &v12, 0x26u);
        }
      }
    }
  }
}

- (void)streamToken:(int64_t)token didFinishRequest:(id)request didSucceed:(BOOL)succeed
{
  succeedCopy = succeed;
  v8 = [request mutableCopy];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", succeedCopy), @"vcMomentsRequestDidSucceed"}];
  [(VCMediaRecorderManager *)self notifyClientsWithStreamToken:token service:"vcMediaRecorderDidFinishRequest" arguments:v8];
}

- (void)streamToken:(int64_t)token didUpdateCapabilities:(unsigned int)capabilities
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"vcMomentsCapabilities";
  v7[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&capabilities];
  -[VCMediaRecorderManager notifyClientsWithStreamToken:service:arguments:](self, "notifyClientsWithStreamToken:service:arguments:", token, "vcMediaRecorderCapabilitiesDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
}

- (void)streamTokenDidCleanupAllRequests:(int64_t)requests
{
  block[6] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VCMediaRecorderManager_streamTokenDidCleanupAllRequests___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = requests;
  dispatch_async(xpcCommandQueue, block);
}

void __59__VCMediaRecorderManager_streamTokenDidCleanupAllRequests___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v3];
  if (v4)
  {
    [objc_msgSend(v4 "mediaRecorder")];
    [*(*(a1 + 32) + 8) removeObjectForKey:v3];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *v2;
          v18 = 136315906;
          v19 = v8;
          v20 = 2080;
          v21 = "[VCMediaRecorderManager streamTokenDidCleanupAllRequests:]_block_invoke";
          v22 = 1024;
          v23 = 515;
          v24 = 2048;
          v25 = v10;
          v11 = " [%s] %s:%d Cleaned up streamToken=%ld";
          v12 = v9;
          v13 = 38;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          v17 = *(a1 + 40);
          v18 = 136316418;
          v19 = v14;
          v20 = 2080;
          v21 = "[VCMediaRecorderManager streamTokenDidCleanupAllRequests:]_block_invoke";
          v22 = 1024;
          v23 = 515;
          v24 = 2112;
          v25 = v5;
          v26 = 2048;
          v27 = v16;
          v28 = 2048;
          v29 = v17;
          v11 = " [%s] %s:%d %@(%p) Cleaned up streamToken=%ld";
          v12 = v15;
          v13 = 58;
          goto LABEL_15;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __59__VCMediaRecorderManager_streamTokenDidCleanupAllRequests___block_invoke_cold_1(v6, v2, v7);
    }
  }
}

- (id)newRequestWithArguments:(id)arguments state:(unsigned __int8)state
{
  stateCopy = state;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:objc_msgSend(arguments forKeyedSubscript:{"objectForKeyedSubscript:", @"vcMomentsMediaType", @"vcMomentsMediaType"}];
  [v6 setObject:objc_msgSend(arguments forKeyedSubscript:{"objectForKeyedSubscript:", @"vcMomentsRequesterID", @"vcMomentsRequesterID"}];
  [v6 setObject:objc_msgSend(arguments forKeyedSubscript:{"objectForKeyedSubscript:", @"vcMomentsRequesteeID", @"vcMomentsRequesteeID"}];
  [v6 setObject:objc_msgSend(arguments forKeyedSubscript:{"objectForKeyedSubscript:", @"vcMomentsTransactionID", @"vcMomentsTransactionID"}];
  [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", stateCopy), @"vcMomentsRequestState"}];
  [v6 setObject:objc_msgSend(arguments forKeyedSubscript:{"objectForKeyedSubscript:", @"vcMomentsRequestMode", @"vcMomentsRequestMode"}];
  [v6 setObject:objc_msgSend(arguments forKeyedSubscript:{"objectForKeyedSubscript:", @"vcMediaRecorderDirectoryURL", @"vcMediaRecorderDirectoryURL"}];
  [v6 setObject:objc_msgSend(arguments forKeyedSubscript:{"objectForKeyedSubscript:", @"vcMediaRecorderMovieFragmentInterval", @"vcMediaRecorderMovieFragmentInterval"}];
  return v6;
}

- (void)dispatchedRegisterMediaRecorder:(uint64_t)a1 withStreamToken:andError:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2080;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to allocate stream token entry for stream token=%u", v3, *(&v3 + 1), v4, 176);
}

void __73__VCMediaRecorderManager_notifyClientsWithStreamToken_service_arguments___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCMediaRecorderManager notifyClientsWithStreamToken:service:arguments:]_block_invoke";
  v6 = 1024;
  v7 = 414;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d notifyClientsWithStreamToken streamClientList is nil", &v2, 0x1Cu);
}

+ (void)prepareURL:(uint64_t)a1 forXPCWithSandboxing:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failed to serialize sandboxedURL=%@", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

+ (void)prepareURL:(uint64_t)a1 forXPCWithSandboxing:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failed to issue read write sandboxedURL for url=%@", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

void __59__VCMediaRecorderManager_streamTokenDidCleanupAllRequests___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "[VCMediaRecorderManager streamTokenDidCleanupAllRequests:]_block_invoke";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d Context doesn't exists for stream token: %u", *v3, *&v3[8], "[VCMediaRecorderManager streamTokenDidCleanupAllRequests:]_block_invoke" >> 16, 510);
}

@end