@interface VCEffectsManager
+ (id)sharedManager;
- (BOOL)createAllocators;
- (BOOL)initializeReceiveQueue:(id)queue error:(id *)error;
- (BOOL)isFaceMeshTrackingEnabled;
- (VCEffectsManager)init;
- (void)dealloc;
- (void)effectsRegistered:(BOOL)registered;
- (void)encodeProcessedPixelBuffer:(__CVBuffer *)buffer time:(id *)time imageData:(id)data processTime:(id)processTime;
- (void)flushRemoteQueue;
- (void)registerBlocksForService;
- (void)releaseAllocators;
- (void)remoteQueueOperationHandlerWithError:(int)error operation:(FigRemoteOperation *)operation;
- (void)resetEffectsLogging;
- (void)setLastEffectsType:(int)type shouldReport:(BOOL)report;
- (void)tearDownRemoteQueues;
- (void)updateThermalLevel:(int)level;
@end

@implementation VCEffectsManager

- (VCEffectsManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCEffectsManager;
  v2 = [(VCEffectsManager *)&v5 init];
  if (v2)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v2->_xpcCommandQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCEffectsManager.xpc.commands", 0, CustomRootQueue);
    v2->_effectsArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_lastEffectsType = 0;
    pthread_mutex_init(&v2->_loggingLock, 0);
    [(VCEffectsManager *)v2 resetEffectsLogging];
    [(VCEffectsManager *)v2 createAllocators];
    v2->_consecutiveDroppedFrameCount = 0;
    v2->_forceDisableEffectsHealthCheck = [+[VCDefaults sharedInstance](VCDefaults forceDisableEffectsHealthCheck];
    v2->_lastReceivedPixelBuffer = 0;
    v2->_thermalPressureLevel = 0;
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  VCRemoteImageQueue_Destroy(&self->_senderQueue);
  VCRemoteImageQueue_Destroy(&self->_receiverQueue);
  lastReceivedPixelBuffer = self->_lastReceivedPixelBuffer;
  if (lastReceivedPixelBuffer)
  {
    CVPixelBufferRelease(lastReceivedPixelBuffer);
  }

  [(VCEffectsManager *)self releaseAllocators];

  [(VCEffectsManager *)self setReportingAgent:0];
  pthread_mutex_destroy(&self->_loggingLock);
  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = VCEffectsManager;
  [(VCEffectsManager *)&v4 dealloc];
}

- (BOOL)initializeReceiveQueue:(id)queue error:(id *)error
{
  v11[5] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__VCEffectsManager_initializeReceiveQueue_error___block_invoke;
  v11[3] = &unk_1E85F5340;
  v11[4] = v7;
  ReceiverQueue = VCRemoteImageQueue_CreateReceiverQueue(queue, v11, self->_xpcCommandQueue, &self->_receiverQueue);
  v9 = ReceiverQueue;
  if (error && !ReceiverQueue)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCEffectsManager" code:-2143682558 userInfo:0];
  }

  return v9;
}

void *__49__VCEffectsManager_initializeReceiveQueue_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) strong];
  if (result)
  {

    return [result remoteQueueOperationHandlerWithError:a2 operation:a3];
  }

  return result;
}

- (BOOL)createAllocators
{
  v13 = *MEMORY[0x1E69E9840];
  v12[0] = xmmword_1DBD478E0;
  v12[1] = xmmword_1DBD494E0;
  v2 = VCAllocatorMultiQueue_Create(*MEMORY[0x1E695E480], "EffectsManagerBufferAllocator", 4u, v12, &self->_bufferAllocator);
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v3;
        v8 = 2080;
        v9 = "[VCEffectsManager createAllocators]";
        v10 = 1024;
        v11 = 128;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to create stream input allocator", &v6, 0x1Cu);
      }
    }
  }

  return v2 == 0;
}

- (void)releaseAllocators
{
  bufferAllocator = self->_bufferAllocator;
  if (bufferAllocator)
  {
    CFRelease(bufferAllocator);
  }
}

- (void)setLastEffectsType:(int)type shouldReport:(BOOL)report
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_lastEffectsType != type)
  {
    self->_lastEffectsType = type;
    goto LABEL_5;
  }

  if (report)
  {
LABEL_5:
    v5 = @"VCEMEffectsType";
    v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [(VCEffectsManager *)self reportingAgent];
    reportingGenericEvent();
  }
}

+ (id)sharedManager
{
  if (VCEffectsManager_SharedManager_onceToken != -1)
  {
    +[VCEffectsManager sharedManager];
  }

  return VCEffectsManager_SharedManager__vcEffectsManager;
}

void __VCEffectsManager_SharedManager_block_invoke()
{
  if (!VCEffectsManager_SharedManager__vcEffectsManager)
  {
    VCEffectsManager_SharedManager__vcEffectsManager = objc_alloc_init(VCEffectsManager);
  }
}

- (void)registerBlocksForService
{
  v8[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__VCEffectsManager_registerBlocksForService__block_invoke;
  v8[3] = &unk_1E85F5CE8;
  v8[4] = v3;
  v8[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__VCEffectsManager_registerBlocksForService__block_invoke_33;
  v7[3] = &unk_1E85F5100;
  v7[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__VCEffectsManager_registerBlocksForService__block_invoke_35;
  v6[3] = &unk_1E85F5CE8;
  v6[4] = v3;
  v6[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__VCEffectsManager_registerBlocksForService__block_invoke_38;
  v5[3] = &unk_1E85F5CE8;
  v5[4] = v3;
  v5[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

uint64_t __44__VCEffectsManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [a2 objectForKeyedSubscript:@"CONTEXT"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        v6 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v20 = v4;
            v21 = 2080;
            v22 = "[VCEffectsManager registerBlocksForService]_block_invoke";
            v23 = 1024;
            v24 = 199;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Client has died. Cleaning up VCEffectsMananger by removing associated objects", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __44__VCEffectsManager_registerBlocksForService__block_invoke_cold_1();
        }
      }

      v13 = [a2 objectForKeyedSubscript:@"CONTEXT"];
      v14 = [*(a1 + 32) strong];
      if ([objc_msgSend(v14 "effectsArray")])
      {
        [objc_msgSend(v14 "effectsArray")];
      }

      if ([objc_msgSend(v14 "effectsArray")])
      {
        v15 = [objc_msgSend(v14 "effectsArray")];
        v16 = *(a1 + 40);
        v17 = [v15 effectsType];
        v18 = v16;
      }

      else
      {
        [objc_msgSend(v14 "delegate")];
        [objc_msgSend(v14 "delegate")];
        [v14 tearDownRemoteQueues];
        v18 = *(a1 + 40);
        v17 = 0;
      }

      [v18 setLastEffectsType:v17];
    }
  }

  else
  {
    v7 = objc_alloc_init(VCEffects);
    [(VCEffects *)v7 setEffectsMode:0];
    [*(a1 + 40) setLastEffectsType:0 shouldReport:1];
    v8 = [a2 objectForKeyedSubscript:@"CLIENTPID"];
    if (v8)
    {
      VCRemoteImageQueue_CreateSenderQueue([v8 intValue], (*(a1 + 40) + 208));
      v9 = *(*(a1 + 40) + 208);
      if (v9)
      {
        QueueXPCObject = VCRemoteImageQueue_CreateQueueXPCObject(v9);
        v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"CONTEXT", QueueXPCObject, @"USERXPCARGUMENTS", 0}];
        xpc_release(QueueXPCObject);

        return v11;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __44__VCEffectsManager_registerBlocksForService__block_invoke_cold_2();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __44__VCEffectsManager_registerBlocksForService__block_invoke_cold_3();
      }
    }
  }

  return 0;
}

uint64_t __44__VCEffectsManager_registerBlocksForService__block_invoke_33(uint64_t a1, void *a2, uint64_t a3)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [a2 objectForKeyedSubscript:@"USERXPCARGUMENTS"];
    if (v6)
    {
      [objc_msgSend(*(a1 + 32) "strong")];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __44__VCEffectsManager_registerBlocksForService__block_invoke_33_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __44__VCEffectsManager_registerBlocksForService__block_invoke_35(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v4 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
    v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v7 = [*(a1 + 32) strong];
    if ([objc_msgSend(v7 "effectsArray")])
    {
      [objc_msgSend(v7 "effectsArray")];
    }

    if ([objc_msgSend(v7 "effectsArray")])
    {
      v8 = [objc_msgSend(v7 "effectsArray")];
      v9 = *(a1 + 40);
      v10 = [v8 effectsType];
      v11 = v9;
    }

    else
    {
      [objc_msgSend(v7 "delegate")];
      [objc_msgSend(v7 "delegate")];
      [v7 tearDownRemoteQueues];
      v11 = *(a1 + 40);
      v10 = 0;
    }

    [v11 setLastEffectsType:v10];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCEffectsManager registerBlocksForService]_block_invoke";
        v19 = 1024;
        v20 = 273;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d context is not a class of VCEffects", buf, 0x1Cu);
      }
    }

    return 0;
  }

  return v5;
}

uint64_t __44__VCEffectsManager_registerBlocksForService__block_invoke_38(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v5 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v6 = [*(a1 + 32) strong];
    [v5 setEffectsMode:{objc_msgSend(objc_msgSend(a2, "objectForKey:", @"vcEffectsSetEffectsMode", "intValue")}];
    if (![v5 effectsMode])
    {
      [*(a1 + 40) setLastEffectsType:0];
      v7 = *(a1 + 40);
      v8 = MEMORY[0x1E6960C70];
      *(v7 + 136) = *MEMORY[0x1E6960C70];
      *(v7 + 152) = *(v8 + 16);
      [objc_msgSend(v6 "effectsArray")];
      if (![objc_msgSend(v6 "effectsArray")])
      {
        [objc_msgSend(v6 "delegate")];
        [objc_msgSend(v6 "delegate")];
        [*(a1 + 40) resetEffectsLogging];
        VCRemoteImageQueue_ReleaseIOSurfaces([v6 senderQueue]);
      }
    }

    if ([v5 effectsMode] && (objc_msgSend(objc_msgSend(v6, "effectsArray"), "containsObject:", v5) & 1) == 0)
    {
      [objc_msgSend(v6 "effectsArray")];
      [v5 setEffectsType:{objc_msgSend(objc_msgSend(a2, "objectForKey:", @"vcEffectsEffectsType", "intValue")}];
      [*(a1 + 40) setLastEffectsType:{objc_msgSend(v5, "effectsType")}];
      [objc_msgSend(v6 "delegate")];
      [objc_msgSend(v6 "delegate")];
    }
  }

  return 0;
}

uint64_t __44__VCEffectsManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v5 = [*(a1 + 32) strong];
    if ([v4 effectsMode])
    {
      [v4 setEffectsType:{objc_msgSend(objc_msgSend(a2, "objectForKey:", @"vcEffectsEffectsType", "intValue")}];
      [*(a1 + 40) setLastEffectsType:{objc_msgSend(v4, "effectsType")}];
      [objc_msgSend(v5 "delegate")];
      [objc_msgSend(v5 "delegate")];
    }
  }

  return 0;
}

uint64_t __44__VCEffectsManager_registerBlocksForService__block_invoke_3(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "releaseFrameWithTime:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"vcEffectsFrameTime", "unsignedIntegerValue")}];
  }

  return 0;
}

CFIndex __VCEffectsManager_IsEffectsOn_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  result = CFArrayGetCount(v2);
  if (result >= 1)
  {
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v4);
      result = VCEffects_EffectsMode(ValueAtIndex);
      if (result)
      {
        break;
      }

      ++v4;
      result = CFArrayGetCount(v2);
      if (v4 >= result)
      {
        return result;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isFaceMeshTrackingEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCEffectsManager_isFaceMeshTrackingEnabled__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(xpcCommandQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__VCEffectsManager_isFaceMeshTrackingEnabled__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) effectsArray];
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        result = [*(*(&v8 + 1) + 8 * v6) faceMeshTrackingEnabled];
        if (result)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          return result;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)updateThermalLevel:(int)level
{
  v6 = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCEffectsManager_updateThermalLevel___block_invoke;
  block[3] = &unk_1E85F38B8;
  levelCopy = level;
  block[4] = self;
  dispatch_async(xpcCommandQueue, block);
}

void __39__VCEffectsManager_updateThermalLevel___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v3[62];
  if (v2 > 0x1D)
  {
    if (v4 <= 0x1D)
    {
      [v3 setLastEffectsType:0];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = *(*(a1 + 32) + 32);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v7)
      {
        v9 = v7;
        v10 = *v27;
        *&v8 = 136315906;
        v15 = v8;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v15;
                v18 = v13;
                v19 = 2080;
                v20 = "[VCEffectsManager updateThermalLevel:]_block_invoke";
                v21 = 1024;
                v22 = 410;
                v23 = 2112;
                v24 = v12;
                _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Turning off effect: %@", buf, 0x26u);
              }
            }

            [v12 setEffectsMode:{0, v15}];
            [objc_msgSend(*(a1 + 32) "delegate")];
            [*(*(a1 + 32) + 32) removeObjectIdenticalTo:v12];
            [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
          }

          v9 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
        }

        while (v9);
      }
    }
  }

  else if (v4 >= 0x1E && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = v5;
      v19 = 2080;
      v20 = "[VCEffectsManager updateThermalLevel:]_block_invoke";
      v21 = 1024;
      v22 = 405;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Turning effects back on is not supported", buf, 0x1Cu);
    }
  }

  *(*(a1 + 32) + 248) = *(a1 + 40);
}

- (void)tearDownRemoteQueues
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCEffectsManager tearDownRemoteQueues]";
      v9 = 1024;
      v10 = 426;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Tearing down queues", &v5, 0x1Cu);
    }
  }

  VCRemoteImageQueue_Destroy(&self->_senderQueue);
  VCRemoteImageQueue_Destroy(&self->_receiverQueue);
}

- (void)flushRemoteQueue
{
  v3[5] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__VCEffectsManager_flushRemoteQueue__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(xpcCommandQueue, v3);
}

uint64_t __36__VCEffectsManager_flushRemoteQueue__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  VCRemoteImageQueue_ReleaseIOSurfaces(*(*(a1 + 32) + 208));
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(*(a1 + 32) + 32);
  result = [v2 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v23;
    *&v4 = 136315906;
    v12 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          v11 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v12;
              v14 = v9;
              v15 = 2080;
              v16 = "[VCEffectsManager flushRemoteQueue]_block_invoke";
              v17 = 1024;
              v18 = 439;
              v19 = 2112;
              v20 = v8;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Notifying effects[%@] client to flush remote queue", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = v12;
            v14 = v9;
            v15 = 2080;
            v16 = "[VCEffectsManager flushRemoteQueue]_block_invoke";
            v17 = 1024;
            v18 = 439;
            v19 = 2112;
            v20 = v8;
            _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Notifying effects[%@] client to flush remote queue", buf, 0x26u);
          }
        }

        [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
        ++v7;
      }

      while (v5 != v7);
      result = [v2 countByEnumeratingWithState:&v22 objects:v21 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

CFIndex __VCEffectsManager_CapturedPixelBuffer_block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  result = CFArrayGetCount(v2);
  if (result >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    *(*(a1[5] + 8) + 40) = ValueAtIndex;
    result = VCEffects_EffectsMode(*(*(a1[5] + 8) + 40));
    *(*(a1[6] + 8) + 24) = result;
  }

  return result;
}

- (void)resetEffectsLogging
{
  pthread_mutex_lock(&self->_loggingLock);
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *&self->_lastPrintTimestamp.value = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  self->_lastPrintTimestamp.epoch = v5;
  *&self->_lastReceivedTimestamp.value = v4;
  self->_lastReceivedTimestamp.epoch = v5;
  *&self->_lastSentTimestamp.value = v4;
  self->_lastSentTimestamp.epoch = v5;
  *&self->_droppedFrameCount = 0;
  *&self->_sentFrameCount = 0;

  pthread_mutex_unlock(&self->_loggingLock);
}

- (void)encodeProcessedPixelBuffer:(__CVBuffer *)buffer time:(id *)time imageData:(id)data processTime:(id)processTime
{
  v14 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  pthread_mutex_lock(&self->_loggingLock);
  ++self->_receivedFrameCount;
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v13, HostTimeClock);
  self->_lastReceivedTimestamp = v13;
  pthread_mutex_unlock(&self->_loggingLock);
  delegate = [(VCEffectsManager *)self delegate];
  v13 = *time;
  [(VCEffectsManagerDelegate *)delegate encodeProcessedPixelBuffer:buffer time:&v13 imageData:data processTime:processTime];
}

- (void)remoteQueueOperationHandlerWithError:(int)error operation:(FigRemoteOperation *)operation
{
  v25 = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCEffectsManager remoteQueueOperationHandlerWithError:operation:];
      }
    }
  }

  else if (operation->var0 == 1)
  {
    memset(v20, 170, sizeof(v20));
    var0 = operation->var4.var0.var0;
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    Value = CFDictionaryGetValue(var0, @"vcEffectsImageData");
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          lastReceivedPixelBuffer = self->_lastReceivedPixelBuffer;
          *buf = 136315906;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = "[VCEffectsManager remoteQueueOperationHandlerWithError:operation:]";
          *&buf[22] = 1024;
          v22 = 631;
          v23 = 2048;
          v24 = lastReceivedPixelBuffer;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _lastReceivedPixelBuffer=%p", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [VCEffectsManager remoteQueueOperationHandlerWithError:operation:];
      }
    }

    v16 = self->_lastReceivedPixelBuffer;
    if (v16)
    {
      LODWORD(v11) = -1;
      v17 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
      *buf = *v20;
      *&buf[16] = *&v20[16];
      [(VCEffectsManager *)self encodeProcessedPixelBuffer:v16 time:buf imageData:Value processTime:v17];
      CVPixelBufferRelease(self->_lastReceivedPixelBuffer);
      self->_lastReceivedPixelBuffer = 0;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = "[VCEffectsManager remoteQueueOperationHandlerWithError:operation:]";
        *&buf[22] = 1024;
        v22 = 637;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Expected sample buffer, received dictionary payload", buf, 0x1Cu);
      }
    }
  }

  else if (operation->var0 == 3)
  {
    if (self->_lastReceivedPixelBuffer)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v6;
          *&buf[12] = 2080;
          *&buf[14] = "[VCEffectsManager remoteQueueOperationHandlerWithError:operation:]";
          *&buf[22] = 1024;
          v22 = 617;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Expected dictionary payload, received sample buffer", buf, 0x1Cu);
        }
      }

      CVPixelBufferRelease(self->_lastReceivedPixelBuffer);
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(operation->var4.var0.var0);
    self->_lastReceivedPixelBuffer = ImageBuffer;
    CVPixelBufferRetain(ImageBuffer);
  }
}

- (void)effectsRegistered:(BOOL)registered
{
  if (registered)
  {
    self->_effectsRegistered = 1;
    delegate = [(VCEffectsManager *)self delegate];

    [(VCEffectsManagerDelegate *)delegate setFaceMeshTrackingEnabled:1];
  }
}

void ___VCEffectsManager_PixelBufferToClient_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 208))
  {
    goto LABEL_13;
  }

  v3 = *(a1 + 56);
  v4 = *(v2 + 224);
  time = *(a1 + 72);
  SampleBufferWithPixelBuffer = VideoUtil_CreateSampleBufferWithPixelBuffer(v3, &time, v4, v4);
  if (SampleBufferWithPixelBuffer)
  {
    v6 = SampleBufferWithPixelBuffer;
    VCRemoteImageQueue_EnqueueFrame(*(*(a1 + 32) + 208), SampleBufferWithPixelBuffer);
    CFRelease(v6);
    v7 = *(a1 + 64);
    if (!v7)
    {
LABEL_6:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      time = *(a1 + 72);
      FigCFDictionarySetCMTime();
      v12 = *(a1 + 40);
      if (v12)
      {
        v13 = CFDataCreate(0, [v12 bytes], objc_msgSend(*(a1 + 40), "length"));
        FigCFDictionarySetValue();
        VCRemoteImageQueue_EnqueueAttributes(*(*(a1 + 32) + 208), Mutable);
        CFRelease(v13);
      }

      else
      {
        VCRemoteImageQueue_EnqueueAttributes(*(*(a1 + 32) + 208), Mutable);
      }

      CFRelease(Mutable);
      v2 = *(a1 + 32);
LABEL_13:
      pthread_mutex_lock((v2 + 48));
      if ((*(v2 + 124) & 1) == 0)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time, HostTimeClock);
        *(v2 + 112) = time;
      }

      memset(&v30, 170, sizeof(v30));
      v15 = CMClockGetHostTimeClock();
      CMClockGetTime(&v30, v15);
      lhs = v30;
      v28 = *(v2 + 112);
      CMTimeSubtract(&time, &lhs, &v28);
      Seconds = CMTimeGetSeconds(&time);
      if (Seconds > 5.0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(v2 + 188);
            v20 = *(v2 + 192);
            LODWORD(time.value) = 136317186;
            v21 = *(v2 + 196);
            v22 = *(v2 + 200);
            *(&time.value + 4) = v17;
            LOWORD(time.flags) = 2080;
            *(&time.flags + 2) = "_VCEffectsManager_CheckEffectsHealth";
            HIWORD(time.epoch) = 1024;
            v32 = 573;
            v33 = 1024;
            v34 = v19;
            v35 = 2048;
            v36 = v19 / Seconds;
            v37 = 1024;
            v38 = v20;
            v39 = 2048;
            v40 = v20 / Seconds;
            v41 = 1024;
            v42 = v21;
            v43 = 1024;
            v44 = v22;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCEffectsManager Frames Sent: %d (%f FPS) Frames Received: %d (%f FPS) Frames Dropped: %d Frames Failed: %d", &time, 0x48u);
          }
        }

        *(v2 + 112) = v30;
        if (*(v2 + 184) >= 31)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              ___VCEffectsManager_PixelBufferToClient_block_invoke_cold_3();
            }
          }

LABEL_23:
          v23 = *(v2 + 204);
          *(v2 + 196) = 0;
          *(v2 + 188) = 0;
          pthread_mutex_unlock((v2 + 48));
          if ((v23 & 1) == 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                ___VCEffectsManager_PixelBufferToClient_block_invoke_cold_4();
              }
            }

            [*(a1 + 48) setEffectsMode:0];
            [*(*(a1 + 32) + 32) removeObjectIdenticalTo:*(a1 + 48)];
            [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
          }

          goto LABEL_32;
        }

        if (*(v2 + 188) >= 11 && !*(v2 + 192))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v24 = VRTraceErrorLogLevelToCSTR();
            v25 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v26 = *(v2 + 188);
              v27 = *(v2 + 192);
              LODWORD(time.value) = 136316162;
              *(&time.value + 4) = v24;
              LOWORD(time.flags) = 2080;
              *(&time.flags + 2) = "_VCEffectsManager_CheckEffectsHealth";
              HIWORD(time.epoch) = 1024;
              v32 = 582;
              v33 = 1024;
              v34 = v26;
              v35 = 1024;
              LODWORD(v36) = v27;
              _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d Have not received frames from AVCEffects. Sent Frames: %d Received Frames: %d", &time, 0x28u);
            }
          }

          goto LABEL_23;
        }

        *(v2 + 188) = 0;
        *(v2 + 196) = 0;
      }

      pthread_mutex_unlock((v2 + 48));
LABEL_32:
      CVPixelBufferRelease(*(a1 + 56));
      CVPixelBufferRelease(*(a1 + 64));
      return;
    }

    v8 = *(*(a1 + 32) + 224);
    time = *(a1 + 72);
    v9 = VideoUtil_CreateSampleBufferWithPixelBuffer(v7, &time, v8, v8);
    if (v9)
    {
      v10 = v9;
      VCRemoteImageQueue_EnqueueFrame(*(*(a1 + 32) + 208), v9);
      CFRelease(v10);
      goto LABEL_6;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ___VCEffectsManager_PixelBufferToClient_block_invoke_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      ___VCEffectsManager_PixelBufferToClient_block_invoke_cold_2();
    }
  }
}

void __44__VCEffectsManager_registerBlocksForService__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, " [%s] %s:%d Client has died. Cleaning up VCEffectsMananger by removing associated objects", v2, v3, v4, v5, v6);
}

void __44__VCEffectsManager_registerBlocksForService__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d RemoteImageQueue could not be made", v2, v3, v4, v5, v6);
}

void __44__VCEffectsManager_registerBlocksForService__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Error getting the client pid", v2, v3, v4, v5, v6);
}

void __44__VCEffectsManager_registerBlocksForService__block_invoke_33_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d xpcClientQueue was null, cannot make the remote queue", v2, v3, v4, v5, v6);
}

- (void)remoteQueueOperationHandlerWithError:operation:.cold.1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[VCEffectsManager remoteQueueOperationHandlerWithError:operation:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Error received from the remote Queue. error=%d", v3, *v4, "[VCEffectsManager remoteQueueOperationHandlerWithError:operation:]" >> 16, 611);
}

- (void)remoteQueueOperationHandlerWithError:operation:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  v3 = "[VCEffectsManager remoteQueueOperationHandlerWithError:operation:]";
  v4 = 1024;
  v5 = 631;
  v6 = 2048;
  v7 = v0;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d _lastReceivedPixelBuffer=%p", v2, 0x26u);
}

void ___VCEffectsManager_PixelBufferToClient_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create sample buffer", v2, v3, v4, v5, v6);
}

void ___VCEffectsManager_PixelBufferToClient_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create sample buffer", v2, v3, v4, v5, v6);
}

void ___VCEffectsManager_PixelBufferToClient_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "_VCEffectsManager_CheckEffectsHealth";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Cannot send frames to AVCEffects. Consecutive Dropped frames: %d", v2, *v3, "_VCEffectsManager_CheckEffectsHealth" >> 16, 579);
}

void ___VCEffectsManager_PixelBufferToClient_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Disabling effects mode", v2, v3, v4, v5, v6);
}

@end