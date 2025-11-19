@interface AVCTestMonitor
- (AVCTestMonitor)initWithDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)forceNetworkCellular:(BOOL)a3;
- (void)registerBlocksForNotifications;
- (void)requestSessionMediaDaemonStatsReport;
- (void)setEmulatedNetworkConfigurationPath:(id)a3;
- (void)setEmulatedRxPLR:(double)a3;
- (void)setEnableAudioPowerSpectrumReport:(BOOL)a3;
- (void)setEnableLoopbackInterface:(BOOL)a3;
- (void)setForcedCapBitrate:(int)a3;
- (void)setForcedTargetBitrate:(int)a3;
- (void)setupNotificationQueue:(id)a3;
- (void)updateAudioInjectConfig:(id)a3;
@end

@implementation AVCTestMonitor

- (AVCTestMonitor)initWithDelegate:(id)a3 queue:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v13 = v7;
      v14 = 2080;
      v15 = "[AVCTestMonitor initWithDelegate:queue:]";
      v16 = 1024;
      v17 = 47;
      v18 = 2112;
      v19 = a3;
      v20 = 2112;
      v21 = a4;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d inDelegate=%@, queue=%@", buf, 0x30u);
    }
  }

  v11.receiver = self;
  v11.super_class = AVCTestMonitor;
  v9 = [(AVCTestMonitor *)&v11 init];
  if (v9)
  {
    v9->_connection = objc_alloc_init(AVConferenceXPCClient);
    objc_storeWeak(&v9->_delegate, a3);
    v9->_reportToken = VCUniqueIDGenerator_GenerateID();
    [(AVCTestMonitor *)v9 setupNotificationQueue:a4];
    [(AVCTestMonitor *)v9 registerBlocksForNotifications];
  }

  return v9;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVCTestMonitor dealloc]";
      v11 = 1024;
      v12 = 63;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  [(AVCTestMonitor *)self deregisterBlocksForNotifications];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  if (delegateNotificationQueue)
  {
    dispatch_release(delegateNotificationQueue);
  }

  objc_storeWeak(&self->_delegate, 0);
  v6.receiver = self;
  v6.super_class = AVCTestMonitor;
  [(AVCTestMonitor *)&v6 dealloc];
}

- (void)registerBlocksForNotifications
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AVCTestMonitor_registerBlocksForNotifications__block_invoke;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcTestMonitorDidReportSessionStats" block:v4 queue:self->_delegateNotificationQueue eventLogLevel:7];
}

void __48__AVCTestMonitor_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if ([objc_msgSend(a2 objectForKeyedSubscript:{@"SessionStatsReportToken", "unsignedIntValue"}] == v4[8])
    {
      if (objc_opt_class() == v4)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_14;
        }

        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136315650;
        v20 = v6;
        v21 = 2080;
        v22 = "[AVCTestMonitor registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 90;
        v8 = " [%s] %s:%d received callback for stats report";
        v9 = v7;
        v10 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [v4 performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_14;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136316162;
        v20 = v11;
        v21 = 2080;
        v22 = "[AVCTestMonitor registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 90;
        v25 = 2112;
        v26 = v5;
        v27 = 2048;
        v28 = v4;
        v8 = " [%s] %s:%d %@(%p) received callback for stats report";
        v9 = v12;
        v10 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_14:
      [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        v13 = objc_alloc_init(AVCTestMonitorReport);
        v14 = [a2 objectForKeyedSubscript:@"InitialMemoryUsageInfo"];
        v15 = [a2 objectForKeyedSubscript:@"MemoryUsageInfo"];
        v16 = [a2 objectForKeyedSubscript:@"NetworkAgentRefCount"];
        -[AVCTestMonitorReport setMemoryUsageMB:](v13, "setMemoryUsageMB:", [v15 integerValue]);
        -[AVCTestMonitorReport setInitialMemoryUsageMB:](v13, "setInitialMemoryUsageMB:", [v14 integerValue]);
        -[AVCTestMonitorReport setNetworkAgentRefCount:](v13, "setNetworkAgentRefCount:", [v16 integerValue]);
        v17 = [v4 delegateNotificationQueue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __48__AVCTestMonitor_registerBlocksForNotifications__block_invoke_80;
        v18[3] = &unk_1E85F37F0;
        v18[4] = v4;
        v18[5] = v13;
        dispatch_async(v17, v18);
      }
    }
  }
}

uint64_t __48__AVCTestMonitor_registerBlocksForNotifications__block_invoke_80(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 didReceiveReport:v3];
}

- (void)setupNotificationQueue:(id)a3
{
  if (a3)
  {
    self->_delegateNotificationQueue = a3;

    dispatch_retain(a3);
  }

  else
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    self->_delegateNotificationQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCTestMonitor.notificationQueue", 0, CustomRootQueue);
  }
}

- (void)requestSessionMediaDaemonStatsReport
{
  v4[1] = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  v3 = @"SessionStatsReportToken";
  v4[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_reportToken];
  -[AVConferenceXPCClient sendMessageSync:arguments:](connection, "sendMessageSync:arguments:", "vcTestMonitorRequestSessionStatsReport", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1]);
}

- (void)updateAudioInjectConfig:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[AVCTestMonitor updateAudioInjectConfig:]";
      v12 = 1024;
      v13 = 127;
      v14 = 2112;
      v15 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d injectAudioConfig=%@", &v8, 0x26u);
    }
  }

  v7 = objc_opt_new();
  [v7 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", objc_msgSend(a3, "injectAudioConfigType") == 1), @"vcTestMonitorInjectAudioToneSwitch"}];
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcTestMonitorInjectAudio" arguments:v7];
}

- (void)forceNetworkCellular:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVCTestMonitor forceNetworkCellular:]";
      v13 = 1024;
      v14 = 136;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d forceCellular=%d", buf, 0x22u);
    }
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{v3, @"vcTestMonitorForceNetworkCellSwitch"}];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcTestMonitorForceNetworkCell", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1]);
}

- (void)setEnableLoopbackInterface:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVCTestMonitor setEnableLoopbackInterface:]";
      v13 = 1024;
      v14 = 142;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d enableLoopbackInterface=%d", buf, 0x22u);
    }
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{v3, @"vcTestMonitorSetEnableLoopbackValue"}];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcTestMonitorSetEnableLoopback", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1]);
}

- (void)setEmulatedRxPLR:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVCTestMonitor setEmulatedRxPLR:]";
      v13 = 1024;
      v14 = 148;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d emulatedRxPLR=%f", buf, 0x26u);
    }
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:{a3, @"vcTestMonitorSetEmulatedRxPLR"}];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcTestMonitorSetEmulatedRxPLR", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1]);
}

- (void)setForcedTargetBitrate:(int)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"vcTestMonitorSetForcedTargetBitrate";
  v5[0] = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcTestMonitorSetForcedTargetBitrate", [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
}

- (void)setForcedCapBitrate:(int)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"vcTestMonitorSetForcedCapBitrate";
  v5[0] = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcTestMonitorSetForcedCapBitrate", [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
}

- (void)setEmulatedNetworkConfigurationPath:(id)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"vcTestMonitorEmulatedNetworkConfigPath";
  v4[0] = a3;
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcTestMonitorEmulatedNetworkConfigPath", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1]);
}

- (void)setEnableAudioPowerSpectrumReport:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVCTestMonitor setEnableAudioPowerSpectrumReport:]";
      v13 = 1024;
      v14 = 169;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d enableAudioPowerSpectrumReport=%d", buf, 0x22u);
    }
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{v3, @"vcTestMonitorSetEnableAudioPowerSpectrumReport"}];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcTestMonitorSetEnableAudioPowerSpectrumReport", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1]);
}

@end