@interface VCQoSMonitorManager
+ (id)sharedInstance;
- (VCQoSMonitorManager)init;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)registerQoSReportingSourceForToken:(int64_t)a3;
- (void)unregisterQoSReportingSourceForToken:(int64_t)a3;
- (void)updateEventDrivenQoSReport:(id)a3 toClientsWithToken:(int64_t)a4;
- (void)updateQoSReport:(id)a3 toClientsWithToken:(int64_t)a4;
@end

@implementation VCQoSMonitorManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[VCQoSMonitorManager sharedInstance];
  }

  return sharedInstance__vcQosMonitorManager;
}

void __37__VCQoSMonitorManager_sharedInstance__block_invoke()
{
  if (!sharedInstance__vcQosMonitorManager)
  {
    sharedInstance__vcQosMonitorManager = objc_alloc_init(VCQoSMonitorManager);
  }
}

- (VCQoSMonitorManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCQoSMonitorManager;
  v2 = [(VCObject *)&v5 init];
  if (v2)
  {
    v2->_sources = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_reportingInterval = reportingDefaultRealtimePeriod();
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_xpcCommandQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCQoSMonitorManager.xpcCommandQueue", 0, CustomRootQueue);
    [(VCQoSMonitorManager *)v2 registerBlocksForService];
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  dispatch_release(self->_xpcCommandQueue);
  [(VCQoSMonitorManager *)self deregisterBlocksForService];

  v3.receiver = self;
  v3.super_class = VCQoSMonitorManager;
  [(VCObject *)&v3 dealloc];
}

- (void)registerQoSReportingSourceForToken:(int64_t)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCQoSMonitorManager_registerQoSReportingSourceForToken___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(xpcCommandQueue, block);
}

void __58__VCQoSMonitorManager_registerQoSReportingSourceForToken___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCQoSMonitorManager registerQoSReportingSourceForToken:]_block_invoke";
      v10 = 1024;
      v11 = 79;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d registered source[streamToken=%ld]", &v6, 0x26u);
    }
  }

  if ([*(*(a1 + 32) + 168) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __58__VCQoSMonitorManager_registerQoSReportingSourceForToken___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setSourceToken:*(a1 + 40)];
    [*(*(a1 + 32) + 168) setObject:v5 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}];
  }
}

- (void)unregisterQoSReportingSourceForToken:(int64_t)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCQoSMonitorManager_unregisterQoSReportingSourceForToken___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(xpcCommandQueue, block);
}

void __60__VCQoSMonitorManager_unregisterQoSReportingSourceForToken___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCQoSMonitorManager unregisterQoSReportingSourceForToken:]_block_invoke";
      v9 = 1024;
      v10 = 92;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d unregistered source[streamToken=%ld]", &v5, 0x26u);
    }
  }

  if ([*(*(a1 + 32) + 168) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}])
  {
    [*(*(a1 + 32) + 168) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __60__VCQoSMonitorManager_unregisterQoSReportingSourceForToken___block_invoke_cold_1();
    }
  }
}

- (void)updateQoSReport:(id)a3 toClientsWithToken:(int64_t)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v10[0] = @"vcQoSReportDictionary";
  v10[1] = @"vcQoSReportToken";
  v11[1] = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (VRTraceIsInternalOSInstalled())
  {
    xpcCommandQueue = self->_xpcCommandQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__VCQoSMonitorManager_updateQoSReport_toClientsWithToken___block_invoke;
    block[3] = &unk_1E85F4AB8;
    block[4] = a3;
    block[5] = self;
    block[6] = v7;
    block[7] = a4;
    dispatch_async(xpcCommandQueue, block);
  }
}

void __58__VCQoSMonitorManager_updateQoSReport_toClientsWithToken___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[4];
        v7 = 136315906;
        v8 = v2;
        v9 = 2080;
        v10 = "[VCQoSMonitorManager updateQoSReport:toClientsWithToken:]_block_invoke";
        v11 = 1024;
        v12 = 106;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d updateQoSReport qosReport=%@", &v7, 0x26u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __58__VCQoSMonitorManager_updateQoSReport_toClientsWithToken___block_invoke_cold_1();
    }
  }

  if ([*(a1[5] + 168) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[7])}])
  {
    v6 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
    [v6 sendMessageAsync:"vcQoSMonitorCallbackDidReceiveReport" arguments:a1[6] toAllClientsWithContext:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[7])}];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __58__VCQoSMonitorManager_updateQoSReport_toClientsWithToken___block_invoke_cold_2();
    }
  }
}

- (void)updateEventDrivenQoSReport:(id)a3 toClientsWithToken:(int64_t)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v10[0] = @"vcQoSReportDictionary";
  v10[1] = @"vcQoSReportToken";
  v11[1] = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (VRTraceIsInternalOSInstalled())
  {
    xpcCommandQueue = self->_xpcCommandQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__VCQoSMonitorManager_updateEventDrivenQoSReport_toClientsWithToken___block_invoke;
    block[3] = &unk_1E85F4AB8;
    block[4] = a3;
    block[5] = self;
    block[6] = v7;
    block[7] = a4;
    dispatch_async(xpcCommandQueue, block);
  }
}

void __69__VCQoSMonitorManager_updateEventDrivenQoSReport_toClientsWithToken___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[4];
        v7 = 136315906;
        v8 = v2;
        v9 = 2080;
        v10 = "[VCQoSMonitorManager updateEventDrivenQoSReport:toClientsWithToken:]_block_invoke";
        v11 = 1024;
        v12 = 121;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d updateQoSReport with non real-time keys qosReport=%@", &v7, 0x26u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __69__VCQoSMonitorManager_updateEventDrivenQoSReport_toClientsWithToken___block_invoke_cold_1();
    }
  }

  if ([*(a1[5] + 168) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[7])}])
  {
    v6 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
    [v6 sendMessageAsync:"vcQoSMonitorCallbackDidReceiveReportEventDrivenKey" arguments:a1[6] toAllClientsWithContext:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[7])}];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __69__VCQoSMonitorManager_updateEventDrivenQoSReport_toClientsWithToken___block_invoke_cold_2();
    }
  }
}

uint64_t __47__VCQoSMonitorManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v6 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  if (![*(a1 + 32) doesQoSSourceExistForStreamToken:v6])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __47__VCQoSMonitorManager_registerBlocksForService__block_invoke_cold_1(v10, v6, v11);
      }
    }

    return 0;
  }

  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [v7 initWithObjectsAndKeys:{v6, @"CONTEXT", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(*(a1 + 32) + 184)), @"vcQoSReportingInterval", 0}];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCQoSMonitorManager registerBlocksForService]_block_invoke";
      v16 = 1024;
      v17 = 146;
      v18 = 1024;
      v19 = [v6 unsignedIntValue];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCRemoteVideoManager: new client initialized for streamToken=%u", buf, 0x22u);
    }
  }

  return v4;
}

uint64_t __47__VCQoSMonitorManager_registerBlocksForService__block_invoke_37(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v3 = [v4 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v5 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCQoSMonitorManager registerBlocksForService]_block_invoke";
      v13 = 1024;
      v14 = 169;
      v15 = 1024;
      v16 = [v5 unsignedIntValue];
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCQoSMonitorManager: Terminate remoteVideo connection for streamToken=%u", buf, 0x22u);
    }
  }

  return v3;
}

- (void)deregisterBlocksForService
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"vcQosMonitorTerminate"];
}

void __58__VCQoSMonitorManager_registerQoSReportingSourceForToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d source[streamToken=%ld] already registered", v2, v3, v4, v5);
}

void __60__VCQoSMonitorManager_unregisterQoSReportingSourceForToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d source[streamToken=%ld] already unregistered", v2, v3, v4, v5);
}

void __58__VCQoSMonitorManager_updateQoSReport_toClientsWithToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d updateQoSReport qosReport=%@");
}

void __58__VCQoSMonitorManager_updateQoSReport_toClientsWithToken___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d source for streamToken=%ld not registered", v2, v3, v4, v5);
}

void __69__VCQoSMonitorManager_updateEventDrivenQoSReport_toClientsWithToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d updateQoSReport with non real-time keys qosReport=%@");
}

void __69__VCQoSMonitorManager_updateEventDrivenQoSReport_toClientsWithToken___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d source for streamToken=%ld not registered", v2, v3, v4, v5);
}

void __47__VCQoSMonitorManager_registerBlocksForService__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCQoSMonitorManager registerBlocksForService]_block_invoke";
  v8 = 1024;
  v9 = 148;
  v10 = 1024;
  v11 = [a2 unsignedIntValue];
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCQoSMonitorManager: ERROR QoS source does not exist for streamToken=%u", &v4, 0x22u);
}

@end