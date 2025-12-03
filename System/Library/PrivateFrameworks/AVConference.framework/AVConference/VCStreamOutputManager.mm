@interface VCStreamOutputManager
+ (id)sharedInstance;
- (BOOL)sourceExistsForStreamToken:(int64_t)token;
- (VCStreamOutputManager)init;
- (id)allocDispatchedStreamOutputWithStreamToken:(int64_t)token clientPid:(int)pid options:(id)options errorCode:(int *)code;
- (id)allocStreamOutputWithStreamToken:(int64_t)token clientPid:(int)pid options:(id)options errorCode:(int *)code;
- (id)serviceHandlerStreamOutputInitializeWithArguments:(id)arguments error:(id *)error;
- (id)serviceHandlerStreamOutputNotifyCacheWithArguments:(id)arguments error:(id *)error;
- (id)serviceHandlerStreamOutputTerminateWithArguments:(id)arguments error:(id *)error;
- (void)cleanupStreamOutput:(id)output;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)deregisterStreamOutputSourceForStreamToken:(int64_t)token;
- (void)dispatchedCleanupStreamOutput:(id)output;
- (void)dispatchedDeregisterStreamOutputSourceForStreamToken:(int64_t)token;
- (void)dispatchedRegisterStreamOutputSource:(id)source forStreamToken:(int64_t)token;
- (void)dispatchedRemoteMediaDidStall:(BOOL)stall streamToken:(int64_t)token;
- (void)dispatchedRemoteVideoDidDegrade:(BOOL)degrade streamToken:(int64_t)token;
- (void)dispatchedRemoteVideoDidPause:(BOOL)pause streamToken:(int64_t)token;
- (void)dispatchedRemoteVideoDidSuspend:(BOOL)suspend streamToken:(int64_t)token;
- (void)init;
- (void)registerBlocksForService;
- (void)registerStreamOutputSource:(id)source forStreamToken:(int64_t)token;
- (void)remoteMediaDidStall:(BOOL)stall streamToken:(int64_t)token;
- (void)remoteVideoDidDegrade:(BOOL)degrade streamToken:(int64_t)token;
- (void)remoteVideoDidPause:(BOOL)pause streamToken:(int64_t)token;
- (void)remoteVideoDidSuspend:(BOOL)suspend streamToken:(int64_t)token;
@end

@implementation VCStreamOutputManager

- (VCStreamOutputManager)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCStreamOutputManager;
  v2 = [(VCStreamOutputManager *)&v9 init];
  if (v2)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCStreamOutputManager.xpcCommandQueue", 0, CustomRootQueue);
    v2->_stateQueue = v4;
    if (v4)
    {
      v5 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCStreamOutputManager.xpcCallbackQueue", 0, CustomRootQueue);
      v2->_xpcCallbackQueue = v5;
      if (v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v2->_streamOutputSourceForStreamToken = v6;
        if (v6)
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v2->_streamOutputs = v7;
          if (v7)
          {
            v2->_useFigRemoteQueue = 1;
            return v2;
          }

          [VCStreamOutputManager init];
        }

        else
        {
          [VCStreamOutputManager init];
        }
      }

      else
      {
        [VCStreamOutputManager init];
      }
    }

    else
    {
      [VCStreamOutputManager init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  xpcCallbackQueue = self->_xpcCallbackQueue;
  if (xpcCallbackQueue)
  {
    dispatch_release(xpcCallbackQueue);
  }

  v5.receiver = self;
  v5.super_class = VCStreamOutputManager;
  [(VCStreamOutputManager *)&v5 dealloc];
}

- (void)cleanupStreamOutput:(id)output
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCStreamOutputManager_cleanupStreamOutput___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = output;
  dispatch_async(stateQueue, block);
}

- (void)dispatchedCleanupStreamOutput:(id)output
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (output)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(output, "streamToken")}];
    [(NSMutableDictionary *)self->_streamOutputs setObject:0 forKeyedSubscript:v5];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12 != -1)
  {
    +[VCStreamOutputManager sharedInstance];
  }

  return _vcStreamOutputManager;
}

VCStreamOutputManager *__39__VCStreamOutputManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCStreamOutputManager);
  _vcStreamOutputManager = result;
  return result;
}

- (void)registerStreamOutputSource:(id)source forStreamToken:(int64_t)token
{
  v5[7] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__VCStreamOutputManager_registerStreamOutputSource_forStreamToken___block_invoke;
  v5[3] = &unk_1E85F50D8;
  v5[4] = self;
  v5[5] = source;
  v5[6] = token;
  dispatch_async(stateQueue, v5);
}

- (void)dispatchedRegisterStreamOutputSource:(id)source forStreamToken:(int64_t)token
{
  tokenCopy = token;
  v41 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  streamOutputSourceForStreamToken = self->_streamOutputSourceForStreamToken;
  v9 = [(NSMutableDictionary *)streamOutputSourceForStreamToken countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(streamOutputSourceForStreamToken);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        if ([(NSMutableDictionary *)self->_streamOutputSourceForStreamToken objectForKeyedSubscript:v7]== v13)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCStreamOutputManager dispatchedRegisterStreamOutputSource:forStreamToken:];
            }
          }

          goto LABEL_23;
        }
      }

      v10 = [(NSMutableDictionary *)streamOutputSourceForStreamToken countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableDictionary *)self->_streamOutputSourceForStreamToken setObject:source forKeyedSubscript:v7];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136316162;
        v23 = v15;
        v24 = 2080;
        v25 = "[VCStreamOutputManager dispatchedRegisterStreamOutputSource:forStreamToken:]";
        v26 = 1024;
        v27 = 135;
        v28 = 2048;
        sourceCopy = source;
        v30 = 1024;
        LODWORD(selfCopy) = tokenCopy;
        v17 = " [%s] %s:%d Source=%p registered for streamToken=%u";
        v18 = v16;
        v19 = 44;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCStreamOutputManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136316674;
        v23 = v20;
        v24 = 2080;
        v25 = "[VCStreamOutputManager dispatchedRegisterStreamOutputSource:forStreamToken:]";
        v26 = 1024;
        v27 = 135;
        v28 = 2112;
        sourceCopy = v14;
        v30 = 2048;
        selfCopy = self;
        v32 = 2048;
        sourceCopy2 = source;
        v34 = 1024;
        v35 = tokenCopy;
        v17 = " [%s] %s:%d %@(%p) Source=%p registered for streamToken=%u";
        v18 = v21;
        v19 = 64;
        goto LABEL_22;
      }
    }
  }

LABEL_23:
}

- (void)deregisterStreamOutputSourceForStreamToken:(int64_t)token
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCStreamOutputManager_deregisterStreamOutputSourceForStreamToken___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = token;
  dispatch_async(stateQueue, block);
}

- (void)dispatchedDeregisterStreamOutputSourceForStreamToken:(int64_t)token
{
  tokenCopy = token;
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  if ([(NSMutableDictionary *)self->_streamOutputSourceForStreamToken objectForKeyedSubscript:v5])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v7 = VRTraceErrorLogLevelToCSTR(), v8 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_16:
        [(NSMutableDictionary *)self->_streamOutputSourceForStreamToken setObject:0 forKeyedSubscript:v5];
        v16 = [(NSMutableDictionary *)self->_streamOutputs objectForKeyedSubscript:v5];
        if (v16)
        {
          v17 = v16;
          if ([v16 isClientInProcess])
          {
            [v17 didInvalidate];
          }

          else
          {
            xpcCallbackQueue = self->_xpcCallbackQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __78__VCStreamOutputManager_dispatchedDeregisterStreamOutputSourceForStreamToken___block_invoke;
            block[3] = &unk_1E85F3778;
            block[4] = v17;
            dispatch_async(xpcCallbackQueue, block);
          }
        }

        goto LABEL_20;
      }

      v9 = [(NSMutableDictionary *)self->_streamOutputSourceForStreamToken objectForKeyedSubscript:v5];
      *buf = 136316162;
      v21 = v7;
      v22 = 2080;
      v23 = "[VCStreamOutputManager dispatchedDeregisterStreamOutputSourceForStreamToken:]";
      v24 = 1024;
      v25 = 152;
      v26 = 2048;
      v27 = v9;
      v28 = 1024;
      LODWORD(selfCopy) = tokenCopy;
      v10 = " [%s] %s:%d Source=%p unregistered for streamToken=%u";
      v11 = v8;
      v12 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCStreamOutputManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v15 = [(NSMutableDictionary *)self->_streamOutputSourceForStreamToken objectForKeyedSubscript:v5];
      *buf = 136316674;
      v21 = v13;
      v22 = 2080;
      v23 = "[VCStreamOutputManager dispatchedDeregisterStreamOutputSourceForStreamToken:]";
      v24 = 1024;
      v25 = 152;
      v26 = 2112;
      v27 = v6;
      v28 = 2048;
      selfCopy = self;
      v30 = 2048;
      v31 = v15;
      v32 = 1024;
      v33 = tokenCopy;
      v10 = " [%s] %s:%d %@(%p) Source=%p unregistered for streamToken=%u";
      v11 = v14;
      v12 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamOutputManager dispatchedDeregisterStreamOutputSourceForStreamToken:];
    }
  }

LABEL_20:
}

uint64_t __78__VCStreamOutputManager_dispatchedDeregisterStreamOutputSourceForStreamToken___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"streamOutputDidReleaseRemoteVideoQueue" arguments:0 context:v3];
}

- (id)allocStreamOutputWithStreamToken:(int64_t)token clientPid:(int)pid options:(id)options errorCode:(int *)code
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__27;
  v15 = __Block_byref_object_dispose__27;
  v16 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__VCStreamOutputManager_allocStreamOutputWithStreamToken_clientPid_options_errorCode___block_invoke;
  block[3] = &unk_1E85F85B0;
  block[6] = &v11;
  block[7] = token;
  pidCopy = pid;
  block[4] = self;
  block[5] = options;
  block[8] = code;
  dispatch_sync(stateQueue, block);
  v7 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __86__VCStreamOutputManager_allocStreamOutputWithStreamToken_clientPid_options_errorCode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allocDispatchedStreamOutputWithStreamToken:*(a1 + 56) clientPid:*(a1 + 72) options:*(a1 + 40) errorCode:*(a1 + 64)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (id)allocDispatchedStreamOutputWithStreamToken:(int64_t)token clientPid:(int)pid options:(id)options errorCode:(int *)code
{
  v8 = *&pid;
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  if ([(NSMutableDictionary *)self->_streamOutputs objectForKeyedSubscript:v11])
  {
    [VCStreamOutputManager allocDispatchedStreamOutputWithStreamToken:v19 clientPid:? options:? errorCode:?];
    goto LABEL_10;
  }

  v12 = [(NSMutableDictionary *)self->_streamOutputSourceForStreamToken objectForKeyedSubscript:v11];
  if (!v12)
  {
    [VCStreamOutputManager allocDispatchedStreamOutputWithStreamToken:clientPid:options:errorCode:];
    goto LABEL_10;
  }

  v13 = v12;
  v14 = -[VCStreamOutput initWithStreamToken:clientProcessID:delegate:delegateQueue:]([VCStreamOutput alloc], "initWithStreamToken:clientProcessID:delegate:delegateQueue:", token, v8, [options objectForKeyedSubscript:@"vcStreamOutputInProcessDelegate"], objc_msgSend(options, "objectForKeyedSubscript:", @"vcStreamOutputInProcessDelegateQueue"));
  if (!v14)
  {
    [VCStreamOutputManager allocDispatchedStreamOutputWithStreamToken:clientPid:options:errorCode:];
LABEL_10:
    v16 = v18;
    v15 = v19[0];
    if (!code)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = v14;
  [v13 setStreamOutput:v14];
  [(NSMutableDictionary *)self->_streamOutputs setObject:v15 forKeyedSubscript:v11];
  v16 = 0;
  if (code)
  {
LABEL_5:
    *code = v16;
  }

LABEL_6:

  return v15;
}

- (BOOL)sourceExistsForStreamToken:(int64_t)token
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__VCStreamOutputManager_sourceExistsForStreamToken___block_invoke;
  v6[3] = &unk_1E85F6D88;
  v6[5] = &v7;
  v6[6] = token;
  v6[4] = self;
  dispatch_sync(stateQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __52__VCStreamOutputManager_sourceExistsForStreamToken___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[6])}];
  *(*(a1[5] + 8) + 24) = result != 0;
  return result;
}

- (id)serviceHandlerStreamOutputInitializeWithArguments:(id)arguments error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v7 = [arguments objectForKeyedSubscript:@"conferenceCallID"];
  if (v7)
  {
    v8 = v7;
    v9 = [arguments objectForKeyedSubscript:@"CLIENTPID"];
    if (v9)
    {
      v10 = -[VCStreamOutputManager allocDispatchedStreamOutputWithStreamToken:clientPid:options:errorCode:](self, "allocDispatchedStreamOutputWithStreamToken:clientPid:options:errorCode:", [v8 unsignedIntValue], objc_msgSend(v9, "intValue"), 0, &v19);
      if (v10)
      {
        v11 = v10;
        v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v10, @"CONTEXT", 0}];
        if (v12)
        {
          v13 = v12;
          if (self->_useFigRemoteQueue)
          {
            copyXpcSenderQueue = [v11 copyXpcSenderQueue];
            if (copyXpcSenderQueue)
            {
              v15 = copyXpcSenderQueue;
              [v13 setValue:copyXpcSenderQueue forKey:@"USERXPCARGUMENTS"];
              goto LABEL_28;
            }

            v19 = -2;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCStreamOutputManager serviceHandlerStreamOutputInitializeWithArguments:error:];
              }
            }
          }

          v15 = 0;
LABEL_28:
          if (!v19)
          {
            goto LABEL_31;
          }

          goto LABEL_29;
        }

        v19 = -4;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCStreamOutputManager serviceHandlerStreamOutputInitializeWithArguments:error:];
          }
        }

        v15 = 0;
LABEL_23:
        v13 = 0;
        goto LABEL_28;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCStreamOutputManager serviceHandlerStreamOutputInitializeWithArguments:error:];
        }
      }

LABEL_18:
      v15 = 0;
      v11 = 0;
      goto LABEL_23;
    }

    v19 = -3;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCStreamOutputManager serviceHandlerStreamOutputInitializeWithArguments:v17 error:?];
      }

      goto LABEL_18;
    }
  }

  else
  {
    v19 = -3;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCStreamOutputManager serviceHandlerStreamOutputInitializeWithArguments:v16 error:?];
      }

      goto LABEL_18;
    }
  }

  v13 = 0;
  v11 = 0;
  v15 = 0;
LABEL_29:
  [(VCStreamOutputManager *)self dispatchedCleanupStreamOutput:v11];
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCStreamOutputManager" code:v19 userInfo:0];
  }

LABEL_31:

  if (v15)
  {
    xpc_release(v15);
  }

  return v13;
}

- (id)serviceHandlerStreamOutputNotifyCacheWithArguments:(id)arguments error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = [arguments objectForKeyedSubscript:@"CONTEXT"];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v5, "streamToken")}];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [VCRemoteVideoManager_DefaultManager() notifyCachedStateForStreamToken:v6];
      goto LABEL_4;
    }

    [VCStreamOutputManager serviceHandlerStreamOutputNotifyCacheWithArguments:v8 error:?];
  }

  else
  {
    [VCStreamOutputManager serviceHandlerStreamOutputNotifyCacheWithArguments:v8 error:?];
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCStreamOutputManager" code:v8[0] userInfo:0];
  }

LABEL_4:

  return 0;
}

- (void)registerBlocksForService
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__VCStreamOutputManager_registerBlocksForService__block_invoke;
  v6[3] = &unk_1E85F5100;
  v6[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__VCStreamOutputManager_registerBlocksForService__block_invoke_2;
  v5[3] = &unk_1E85F5100;
  v5[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
}

id __49__VCStreamOutputManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_msgSend(*(a1 + 32) "strong")];
  }

  return v6;
}

id __49__VCStreamOutputManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [objc_msgSend(*(a1 + 32) "strong")];

  return v7;
}

uint64_t __49__VCStreamOutputManager_registerBlocksForService__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [*(a1 + 32) strong];

  return [v7 serviceHandlerStreamOutputNotifyCacheWithArguments:a2 error:a3];
}

- (void)deregisterBlocksForService
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"streamOutputCachedNotifications"];
}

- (void)dispatchedRemoteMediaDidStall:(BOOL)stall streamToken:(int64_t)token
{
  stallCopy = stall;
  block[6] = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  v7 = [(NSMutableDictionary *)self->_streamOutputs objectForKeyedSubscript:v6];
  if ([v7 isClientInProcess])
  {
    [v7 didStall:stallCopy];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:stallCopy];
    v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"conferenceIsRemoteMediaStalled", 0}];
    xpcCallbackQueue = self->_xpcCallbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__VCStreamOutputManager_dispatchedRemoteMediaDidStall_streamToken___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = v7;
    block[5] = v9;
    dispatch_async(xpcCallbackQueue, block);
  }
}

uint64_t __67__VCStreamOutputManager_dispatchedRemoteMediaDidStall_streamToken___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
    v4 = *(v1 + 32);
    v3 = *(v1 + 40);

    return [v2 sendMessageAsync:"streamOutputDidRemoteMediaStall" arguments:v3 context:v4];
  }

  return result;
}

- (void)dispatchedRemoteVideoDidDegrade:(BOOL)degrade streamToken:(int64_t)token
{
  degradeCopy = degrade;
  block[6] = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  v7 = [(NSMutableDictionary *)self->_streamOutputs objectForKeyedSubscript:v6];
  if ([v7 isClientInProcess])
  {
    [v7 didDegrade:degradeCopy];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:degradeCopy];
    v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"conferenceIsVideoDegraded", 0}];
    xpcCallbackQueue = self->_xpcCallbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__VCStreamOutputManager_dispatchedRemoteVideoDidDegrade_streamToken___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = v7;
    block[5] = v9;
    dispatch_async(xpcCallbackQueue, block);
  }
}

uint64_t __69__VCStreamOutputManager_dispatchedRemoteVideoDidDegrade_streamToken___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
    v4 = *(v1 + 32);
    v3 = *(v1 + 40);

    return [v2 sendMessageAsync:"streamOutputDidVideoDegrade" arguments:v3 context:v4];
  }

  return result;
}

- (void)dispatchedRemoteVideoDidPause:(BOOL)pause streamToken:(int64_t)token
{
  pauseCopy = pause;
  block[6] = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  v7 = [(NSMutableDictionary *)self->_streamOutputs objectForKeyedSubscript:v6];
  if ([v7 isClientInProcess])
  {
    [v7 didPause:pauseCopy];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:pauseCopy];
    v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"conferenceVideoPause", 0}];
    xpcCallbackQueue = self->_xpcCallbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__VCStreamOutputManager_dispatchedRemoteVideoDidPause_streamToken___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = v7;
    block[5] = v9;
    dispatch_async(xpcCallbackQueue, block);
  }
}

uint64_t __67__VCStreamOutputManager_dispatchedRemoteVideoDidPause_streamToken___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
    v4 = *(v1 + 32);
    v3 = *(v1 + 40);

    return [v2 sendMessageAsync:"streamOutputDidRemoteVideoPause" arguments:v3 context:v4];
  }

  return result;
}

- (void)dispatchedRemoteVideoDidSuspend:(BOOL)suspend streamToken:(int64_t)token
{
  suspendCopy = suspend;
  block[6] = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:token];
  v7 = [(NSMutableDictionary *)self->_streamOutputs objectForKeyedSubscript:v6];
  if ([v7 isClientInProcess])
  {
    [v7 didSuspend:suspendCopy];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:suspendCopy];
    v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"conferenceIsVideoSuspended", 0}];
    xpcCallbackQueue = self->_xpcCallbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__VCStreamOutputManager_dispatchedRemoteVideoDidSuspend_streamToken___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = v7;
    block[5] = v9;
    dispatch_async(xpcCallbackQueue, block);
  }
}

uint64_t __69__VCStreamOutputManager_dispatchedRemoteVideoDidSuspend_streamToken___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
    v4 = *(v1 + 32);
    v3 = *(v1 + 40);

    return [v2 sendMessageAsync:"streamOutputDidVideoSuspend" arguments:v3 context:v4];
  }

  return result;
}

- (void)remoteMediaDidStall:(BOOL)stall streamToken:(int64_t)token
{
  v7 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__VCStreamOutputManager_remoteMediaDidStall_streamToken___block_invoke;
  v5[3] = &unk_1E85F4180;
  stallCopy = stall;
  v5[4] = self;
  v5[5] = token;
  dispatch_async(stateQueue, v5);
}

- (void)remoteVideoDidPause:(BOOL)pause streamToken:(int64_t)token
{
  v7 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__VCStreamOutputManager_remoteVideoDidPause_streamToken___block_invoke;
  v5[3] = &unk_1E85F4180;
  pauseCopy = pause;
  v5[4] = self;
  v5[5] = token;
  dispatch_async(stateQueue, v5);
}

- (void)remoteVideoDidSuspend:(BOOL)suspend streamToken:(int64_t)token
{
  v7 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__VCStreamOutputManager_remoteVideoDidSuspend_streamToken___block_invoke;
  v5[3] = &unk_1E85F4180;
  suspendCopy = suspend;
  v5[4] = self;
  v5[5] = token;
  dispatch_async(stateQueue, v5);
}

- (void)remoteVideoDidDegrade:(BOOL)degrade streamToken:(int64_t)token
{
  v7 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__VCStreamOutputManager_remoteVideoDidDegrade_streamToken___block_invoke;
  v5[3] = &unk_1E85F4180;
  degradeCopy = degrade;
  v5[4] = self;
  v5[5] = token;
  dispatch_async(stateQueue, v5);
}

- (id)serviceHandlerStreamOutputTerminateWithArguments:(id)arguments error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [arguments objectForKeyedSubscript:@"CONTEXT"];
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3 && (v11 = VRTraceErrorLogLevelToCSTR(), v12 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      v15 = 136315650;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCStreamOutputManager serviceHandlerStreamOutputTerminateWithArguments:error:]";
      v19 = 1024;
      v20 = 277;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v12, v13, " [%s] %s:%d Failed to get context", &v15);
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
      goto LABEL_10;
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCStreamOutputManager" code:-6 userInfo:0];
    v9 = 0;
    *error = v14;
    return v9;
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    v9 = 0;
    return v9;
  }

  [(VCStreamOutputManager *)self dispatchedCleanupStreamOutput:v7];
  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = [v8 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  return v9;
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate _dispatchQueue", v2, v3, v4, v5, v6);
    }
  }
}

- (void)dispatchedRegisterStreamOutputSource:forStreamToken:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)dispatchedDeregisterStreamOutputSourceForStreamToken:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)allocDispatchedStreamOutputWithStreamToken:(_DWORD *)a1 clientPid:(void *)a2 options:errorCode:.cold.1(_DWORD *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 182;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d Stream output already registered", &v7);
    }
  }

  *a2 = 0;
  *a1 = -6;
}

- (void)allocDispatchedStreamOutputWithStreamToken:clientPid:options:errorCode:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_11_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create stream output for streamToken=%u", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_8_31();
}

- (void)allocDispatchedStreamOutputWithStreamToken:clientPid:options:errorCode:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_11_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d No streamOutputSource registered for streamToken=%u", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_8_31();
}

- (void)serviceHandlerStreamOutputInitializeWithArguments:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)serviceHandlerStreamOutputInitializeWithArguments:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)serviceHandlerStreamOutputInitializeWithArguments:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)serviceHandlerStreamOutputInitializeWithArguments:(uint64_t)a1 error:.cold.4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 227;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Client process ID argument is missing", &v3);
}

- (void)serviceHandlerStreamOutputInitializeWithArguments:(uint64_t)a1 error:.cold.5(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 224;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v1, v2, " [%s] %s:%d Call ID argument is missing", &v3);
}

- (void)serviceHandlerStreamOutputNotifyCacheWithArguments:(void *)a1 error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 261;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d Invalid context", &v5);
    }
  }

  *a1 = -7;
}

- (void)serviceHandlerStreamOutputNotifyCacheWithArguments:(void *)a1 error:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 260;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failed to get context", &v5);
    }
  }

  *a1 = -6;
}

@end