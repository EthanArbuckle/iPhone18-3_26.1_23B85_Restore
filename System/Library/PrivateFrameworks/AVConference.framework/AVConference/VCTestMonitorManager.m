@interface VCTestMonitorManager
+ (id)sharedManager;
- (VCTestMonitorManager)init;
- (void)dealloc;
- (void)registerBlocksForService;
- (void)reportSessionMediaDaemonStats:(id)a3;
@end

@implementation VCTestMonitorManager

- (VCTestMonitorManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCTestMonitorManager;
  v2 = [(VCTestMonitorManager *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v2->_xpcCommandQueue = dispatch_queue_create("com.apple.AVConference.VCTestMonitorManager.xpcCommandQueue", v3);
    v2->_xpcCallbackQueue = dispatch_queue_create("com.apple.AVConference.VCTestMonitorManager.xpcNotificationQueue", v3);
    *&v2->_forcedTargetBitrate = -1;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  dispatch_release(self->_xpcCommandQueue);
  dispatch_release(self->_xpcCallbackQueue);

  v3.receiver = self;
  v3.super_class = VCTestMonitorManager;
  [(VCTestMonitorManager *)&v3 dealloc];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[VCTestMonitorManager sharedManager];
  }

  return sharedManager__vcTestMonitorManager;
}

void __37__VCTestMonitorManager_sharedManager__block_invoke()
{
  if (!sharedManager__vcTestMonitorManager)
  {
    sharedManager__vcTestMonitorManager = objc_alloc_init(VCTestMonitorManager);
  }
}

- (void)reportSessionMediaDaemonStats:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v5;
  v45 = v5;
  v42 = v5;
  v43 = v5;
  v40 = v5;
  v41 = v5;
  v38 = v5;
  v39 = v5;
  v36 = v5;
  v37 = v5;
  v34 = v5;
  v35 = v5;
  v32 = v5;
  v33 = v5;
  v30 = v5;
  v31 = v5;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  *&buffer[32] = v5;
  *buffer = v5;
  *&buffer[16] = v5;
  v6 = getpid();
  if (proc_pid_rusage(v6, 6, buffer))
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(&v21 + 1) >> 20);
  }

  if (self->_initialMemoryUsage)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 136315906;
        *&buffer[4] = v8;
        *&buffer[12] = 2080;
        *&buffer[14] = "[VCTestMonitorManager reportSessionMediaDaemonStats:]";
        *&buffer[22] = 1024;
        *&buffer[24] = 94;
        *&buffer[28] = 1024;
        *&buffer[30] = v7;
        v10 = " [%s] %s:%d Report memory usage %d";
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v10, buffer, 0x22u);
      }
    }
  }

  else
  {
    self->_initialMemoryUsage = [MEMORY[0x1E696AD98] numberWithInt:v7];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 136315906;
        *&buffer[4] = v11;
        *&buffer[12] = 2080;
        *&buffer[14] = "[VCTestMonitorManager reportSessionMediaDaemonStats:]";
        *&buffer[22] = 1024;
        *&buffer[24] = 92;
        *&buffer[28] = 1024;
        *&buffer[30] = v7;
        v10 = " [%s] %s:%d Report initial memory usage %d";
        goto LABEL_11;
      }
    }
  }

  v12 = [+[VCNetworkAgent sharedInstance](VCNetworkAgent getNetworkAgentRefCount];
  v17[0] = @"SessionStatsReportToken";
  v17[1] = @"InitialMemoryUsageInfo";
  initialMemoryUsage = self->_initialMemoryUsage;
  v18[0] = a3;
  v18[1] = initialMemoryUsage;
  v17[2] = @"MemoryUsageInfo";
  v18[2] = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v17[3] = @"NetworkAgentRefCount";
  v18[3] = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  xpcCallbackQueue = self->_xpcCallbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCTestMonitorManager_reportSessionMediaDaemonStats___block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = v14;
  dispatch_async(xpcCallbackQueue, block);
}

uint64_t __54__VCTestMonitorManager_reportSessionMediaDaemonStats___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"vcTestMonitorDidReportSessionStats" arguments:v3];
}

- (void)registerBlocksForService
{
  v12[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__VCTestMonitorManager_registerBlocksForService__block_invoke;
  v12[3] = &unk_1E85F5100;
  v12[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__VCTestMonitorManager_registerBlocksForService__block_invoke_2;
  v11[3] = &unk_1E85F5100;
  v11[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__VCTestMonitorManager_registerBlocksForService__block_invoke_37;
  v10[3] = &unk_1E85F5100;
  v10[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__VCTestMonitorManager_registerBlocksForService__block_invoke_42;
  v9[3] = &unk_1E85F5100;
  v9[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__VCTestMonitorManager_registerBlocksForService__block_invoke_47;
  v8[3] = &unk_1E85F5100;
  v8[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__VCTestMonitorManager_registerBlocksForService__block_invoke_52;
  v7[3] = &unk_1E85F5100;
  v7[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VCTestMonitorManager_registerBlocksForService__block_invoke_57;
  v6[3] = &unk_1E85F5100;
  v6[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__VCTestMonitorManager_registerBlocksForService__block_invoke_62;
  v5[3] = &unk_1E85F5100;
  v5[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(*(a1 + 32) "strong")];
  }

  return 0;
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [*(a1 + 32) strong];
  [v5 setToneInjectionEnabled:{objc_msgSend(objc_msgSend(a2, "objectForKey:", @"vcTestMonitorInjectAudioToneSwitch", "BOOLValue")}];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return 0;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v14 = 136315906;
    v15 = v7;
    v16 = 2080;
    v17 = "[VCTestMonitorManager registerBlocksForService]_block_invoke_2";
    v18 = 1024;
    v19 = 131;
    v20 = 1024;
    LODWORD(v21) = [v5 toneInjectionEnabled];
    v9 = " [%s] %s:%d toneInjectionEnabled = %d";
    v10 = v8;
    v11 = 34;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136316418;
      v15 = v12;
      v16 = 2080;
      v17 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
      v18 = 1024;
      v19 = 131;
      v20 = 2112;
      v21 = v6;
      v22 = 2048;
      v23 = v5;
      v24 = 1024;
      v25 = [v5 toneInjectionEnabled];
      v9 = " [%s] %s:%d %@(%p) toneInjectionEnabled = %d";
      v10 = v13;
      v11 = 54;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke_37(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [*(a1 + 32) strong];
  [v5 setForceNetworkCellular:{objc_msgSend(objc_msgSend(a2, "objectForKey:", @"vcTestMonitorForceNetworkCellSwitch", "BOOLValue")}];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v14 = 136315906;
    v15 = v7;
    v16 = 2080;
    v17 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
    v18 = 1024;
    v19 = 141;
    v20 = 1024;
    LODWORD(v21) = [v5 forceNetworkCellular];
    v9 = " [%s] %s:%d forceNetworkCellular = %d";
    v10 = v8;
    v11 = 34;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136316418;
      v15 = v12;
      v16 = 2080;
      v17 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
      v18 = 1024;
      v19 = 141;
      v20 = 2112;
      v21 = v6;
      v22 = 2048;
      v23 = v5;
      v24 = 1024;
      v25 = [v5 forceNetworkCellular];
      v9 = " [%s] %s:%d %@(%p) forceNetworkCellular = %d";
      v10 = v13;
      v11 = 54;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke_42(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [*(a1 + 32) strong];
  v6 = [objc_msgSend(a2 objectForKey:{@"vcTestMonitorSetEnableLoopbackValue", "BOOLValue"}];
  [v5 setEnableLoopbackInterface:v6];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v15 = 136315906;
    v16 = v8;
    v17 = 2080;
    v18 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
    v19 = 1024;
    v20 = 152;
    v21 = 1024;
    LODWORD(v22) = v6;
    v10 = " [%s] %s:%d setEnableLoopbackInterfaceBlock=%d";
    v11 = v9;
    v12 = 34;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316418;
      v16 = v13;
      v17 = 2080;
      v18 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
      v19 = 1024;
      v20 = 152;
      v21 = 2112;
      v22 = v7;
      v23 = 2048;
      v24 = v5;
      v25 = 1024;
      v26 = v6;
      v10 = " [%s] %s:%d %@(%p) setEnableLoopbackInterfaceBlock=%d";
      v11 = v14;
      v12 = 54;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke_47(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [*(a1 + 32) strong];
  [objc_msgSend(a2 objectForKeyedSubscript:{@"vcTestMonitorSetEmulatedRxPLR", "doubleValue"}];
  v7 = v6;
  [v5 setEmulatedRxPLR:?];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v11 = v7;
    v18 = 136315906;
    v19 = v9;
    v20 = 2080;
    v21 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
    v22 = 1024;
    v23 = 163;
    v24 = 2048;
    v25 = v11;
    v12 = " [%s] %s:%d setEmulatedRxPLRBlock=%2.3f";
    v13 = v10;
    v14 = 38;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    *&v8 = COERCE_DOUBLE([v5 performSelector:sel_logPrefix]);
  }

  else
  {
    *&v8 = COERCE_DOUBLE(&stru_1F570E008);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v7;
      v18 = 136316418;
      v19 = v15;
      v20 = 2080;
      v21 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
      v22 = 1024;
      v23 = 163;
      v24 = 2112;
      v25 = *&v8;
      v26 = 2048;
      v27 = v5;
      v28 = 2048;
      v29 = v17;
      v12 = " [%s] %s:%d %@(%p) setEmulatedRxPLRBlock=%2.3f";
      v13 = v16;
      v14 = 58;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke_52(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [*(a1 + 32) strong];
  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcTestMonitorSetForcedTargetBitrate", "intValue"}];
  [v5 setForcedTargetBitrate:v6];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v15 = 136315906;
    v16 = v8;
    v17 = 2080;
    v18 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
    v19 = 1024;
    v20 = 174;
    v21 = 1024;
    LODWORD(v22) = v6;
    v10 = " [%s] %s:%d forcedTargetBitrate=%d";
    v11 = v9;
    v12 = 34;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316418;
      v16 = v13;
      v17 = 2080;
      v18 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
      v19 = 1024;
      v20 = 174;
      v21 = 2112;
      v22 = v7;
      v23 = 2048;
      v24 = v5;
      v25 = 1024;
      v26 = v6;
      v10 = " [%s] %s:%d %@(%p) forcedTargetBitrate=%d";
      v11 = v14;
      v12 = 54;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke_57(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [*(a1 + 32) strong];
  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcTestMonitorSetForcedCapBitrate", "intValue"}];
  [v5 setForcedCapBitrate:v6];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v15 = 136315906;
    v16 = v8;
    v17 = 2080;
    v18 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
    v19 = 1024;
    v20 = 185;
    v21 = 1024;
    LODWORD(v22) = v6;
    v10 = " [%s] %s:%d forcedCapBitrate=%d";
    v11 = v9;
    v12 = 34;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316418;
      v16 = v13;
      v17 = 2080;
      v18 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
      v19 = 1024;
      v20 = 185;
      v21 = 2112;
      v22 = v7;
      v23 = 2048;
      v24 = v5;
      v25 = 1024;
      v26 = v6;
      v10 = " [%s] %s:%d %@(%p) forcedCapBitrate=%d";
      v11 = v14;
      v12 = 54;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke_62(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [*(a1 + 32) strong];
  [v5 setEmulatedNetworkConfigPath:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcTestMonitorEmulatedNetworkConfigPath"}];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v14 = 136315906;
    v15 = v7;
    v16 = 2080;
    v17 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
    v18 = 1024;
    v19 = 195;
    v20 = 2080;
    v21 = [objc_msgSend(v5 "emulatedNetworkConfigPath")];
    v9 = " [%s] %s:%d emulatedNetworkConfigPath=%s";
    v10 = v8;
    v11 = 38;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136316418;
      v15 = v12;
      v16 = 2080;
      v17 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
      v18 = 1024;
      v19 = 195;
      v20 = 2112;
      v21 = v6;
      v22 = 2048;
      v23 = v5;
      v24 = 2080;
      v25 = [objc_msgSend(v5 "emulatedNetworkConfigPath")];
      v9 = " [%s] %s:%d %@(%p) emulatedNetworkConfigPath=%s";
      v10 = v13;
      v11 = 58;
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t __48__VCTestMonitorManager_registerBlocksForService__block_invoke_67(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [*(a1 + 32) strong];
  v6 = [objc_msgSend(a2 objectForKey:{@"vcTestMonitorSetEnableAudioPowerSpectrumReport", "BOOLValue"}];
  [v5 setEnableAudioPowerSpectrumReport:v6];
  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v15 = 136315906;
    v16 = v8;
    v17 = 2080;
    v18 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
    v19 = 1024;
    v20 = 206;
    v21 = 1024;
    LODWORD(v22) = v6;
    v10 = " [%s] %s:%d setEnableAudioPowerSpectrumReport=%d";
    v11 = v9;
    v12 = 34;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316418;
      v16 = v13;
      v17 = 2080;
      v18 = "[VCTestMonitorManager registerBlocksForService]_block_invoke";
      v19 = 1024;
      v20 = 206;
      v21 = 2112;
      v22 = v7;
      v23 = 2048;
      v24 = v5;
      v25 = 1024;
      v26 = v6;
      v10 = " [%s] %s:%d %@(%p) setEnableAudioPowerSpectrumReport=%d";
      v11 = v14;
      v12 = 54;
      goto LABEL_13;
    }
  }

  return 0;
}

@end