@interface WRMClient
- (BOOL)setupServiceConnection;
- (WRMClient)init;
- (WRMClient)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)dumpReport:(id)a3;
- (void)processNotificationList:(id)a3;
- (void)processWRMCoexMetrics:(id)a3 isAlertedMode:(BOOL)a4;
- (void)releaseServiceConnection;
- (void)reportImmediateMetric:(int)a3 value:(unint64_t)a4;
- (void)reportMetricsFaceTimeCalling:(id *)a3;
- (void)reportMetricsWifiCalling:(id *)a3;
- (void)requestNotificationFaceTimeCalling;
- (void)sendProcessInfoWithProcessID:(unint64_t)a3;
- (void)sendReport:(id)a3;
- (void)sendStatusUpdateFaceTimeCalling:(id *)a3;
- (void)sendStatusUpdateInfoFaceTimeCalling:(id)a3;
- (void)sendSubscriptionInfoFaceTimeCalling;
- (void)sendUnsubscriptionInfoFaceTimeCalling;
- (void)setConfiguration:(id *)a3;
- (void)setPreWarmState:(BOOL)a3;
- (void)setRSSIThresholdEnabled:(BOOL)a3;
- (void)startWRMClientWithMode:(int)a3 metricsConfig:(id)a4;
- (void)stopWRMClient;
@end

@implementation WRMClient

- (WRMClient)init
{
  v16 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = WRMClient;
  v2 = [(WRMClient *)&v7 init];
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v9 = v3;
        v10 = 2080;
        v11 = "[WRMClient init]";
        v12 = 1024;
        v13 = 110;
        v14 = 2048;
        v15 = v2;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient[%p] init", buf, 0x26u);
      }
    }

    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_connectionQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.WRMClient.clientQueue", 0, CustomRootQueue);
    v2->_rssiThreshold = -80;
  }

  return v2;
}

- (WRMClient)initWithDelegate:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = WRMClient;
  v4 = [(WRMClient *)&v9 init];
  if (v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v11 = v5;
        v12 = 2080;
        v13 = "[WRMClient initWithDelegate:]";
        v14 = 1024;
        v15 = 121;
        v16 = 2048;
        v17 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient[%p] init", buf, 0x26u);
      }
    }

    objc_storeWeak(&v4->_wrmClientDelegate, a3);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4->_connectionQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.WRMClient.clientQueue", 0, CustomRootQueue);
  }

  return v4;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[WRMClient dealloc]";
      v10 = 1024;
      v11 = 128;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient[%p] dealloc", buf, 0x26u);
    }
  }

  [(WRMClient *)self releaseServiceConnection];
  dispatch_release(self->_connectionQueue);
  objc_storeWeak(&self->_wrmClientDelegate, 0);
  v5.receiver = self;
  v5.super_class = WRMClient;
  [(WRMClient *)&v5 dealloc];
}

- (BOOL)setupServiceConnection
{
  v8[5] = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (!connection)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    self->_connection = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", global_queue, 0);
    v5 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v6 = self->_connection;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__WRMClient_setupServiceConnection__block_invoke;
    v8[3] = &unk_1E85F77C8;
    v8[4] = v5;
    xpc_connection_set_event_handler(v6, v8);
    xpc_connection_resume(self->_connection);
  }

  return connection == 0;
}

void __35__WRMClient_setupServiceConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) strong];

  HandleWRMEvent(a2, v3);
}

- (void)releaseServiceConnection
{
  v14 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection)
  {
    xpc_release(connection);
    self->_connection = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[WRMClient releaseServiceConnection]";
      v10 = 1024;
      v11 = 167;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient(%p): stopped.", &v6, 0x26u);
    }
  }
}

- (void)startWRMClientWithMode:(int)a3 metricsConfig:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WRMClient_startWRMClientWithMode_metricsConfig___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(connectionQueue, block);
}

void __50__WRMClient_startWRMClientWithMode_metricsConfig___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) setupServiceConnection])
  {
    *(*(a1 + 32) + 40) = *(a1 + 44);
    v2 = *(a1 + 40);
    if (v2 == 1)
    {
      [*(a1 + 32) sendProcessInfoWithProcessID:14];
      [*(a1 + 32) sendSubscriptionInfoFaceTimeCalling];
    }

    else if (!v2)
    {
      [*(a1 + 32) sendProcessInfoWithProcessID:9];
    }

    *(*(a1 + 32) + 36) = *(a1 + 40);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[WRMClient startWRMClientWithMode:metricsConfig:]_block_invoke";
      v10 = 1024;
      v11 = 188;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient(%p): started.", &v6, 0x26u);
    }
  }
}

- (void)stopWRMClient
{
  v3[5] = *MEMORY[0x1E69E9840];
  connectionQueue = self->_connectionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__WRMClient_stopWRMClient__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(connectionQueue, v3);
}

- (void)sendProcessInfoWithProcessID:(unint64_t)a3
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = "kWCMRegisterProcess_ProcessId";
  v4 = xpc_uint64_create(a3);
  values = v4;
  v5 = xpc_dictionary_create(keys, &values, 1uLL);
  v9[0] = "kMessageId";
  v9[1] = "kMessageArgs";
  v6 = xpc_uint64_create(1uLL);
  v8[0] = v6;
  v8[1] = v5;
  v7 = xpc_dictionary_create(v9, v8, 2uLL);
  xpc_connection_send_message(self->_connection, v7);
  xpc_release(v4);
  xpc_release(v6);
  xpc_release(v5);
  xpc_release(v7);
}

- (void)sendSubscriptionInfoFaceTimeCalling
{
  keys[6] = *MEMORY[0x1E69E9840];
  v12 = xpc_uint64_create([(WRMClient *)self getWRMSubscribeVersion]);
  v11 = xpc_int64_create(self->_rssiThreshold);
  object = xpc_BOOL_create(self->_metricsConfig.disableFastLQMReporting);
  v16 = xpc_uint64_create(1uLL);
  v13 = xpc_uint64_create(2uLL);
  v3 = xpc_uint64_create(0);
  v17 = xpc_uint64_create(0x32uLL);
  v15 = xpc_uint64_create(0x1F4uLL);
  keys[0] = "kWRMApplicationType";
  keys[1] = "kWRMDesiredLinkQoS";
  keys[2] = "kWRMDesiredBandwidth";
  keys[3] = "kWRMSubscribeVersion";
  keys[4] = "kWRMRSSITh";
  keys[5] = "kWRMDis1SecLQM";
  values[0] = v16;
  values[1] = v3;
  values[2] = v17;
  values[3] = v12;
  values[4] = v11;
  values[5] = object;
  v4 = xpc_dictionary_create(keys, values, 6uLL);
  v25[0] = "kWRMApplicationType";
  v25[1] = "kWRMDesiredLinkQoS";
  v25[2] = "kWRMDesiredBandwidth";
  v25[3] = "kWRMSubscribeVersion";
  v25[4] = "kWRMRSSITh";
  v24[0] = v13;
  v24[1] = v3;
  v24[2] = v15;
  v24[3] = v12;
  v24[4] = v11;
  v5 = xpc_dictionary_create(v25, v24, 5uLL);
  objects[0] = v4;
  objects[1] = v5;
  v6 = xpc_array_create(objects, 2uLL);
  v21 = v6;
  v22 = "kWRMApplicationTypeList";
  v7 = xpc_dictionary_create(&v22, &v21, 1uLL);
  v20[0] = "kMessageId";
  v20[1] = "kMessageArgs";
  v8 = xpc_uint64_create(0x196uLL);
  v19[0] = v8;
  v19[1] = v7;
  v9 = xpc_dictionary_create(v20, v19, 2uLL);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WRMClient_sendSubscriptionInfoFaceTimeCalling__block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = v9;
  dispatch_async(connectionQueue, block);
  xpc_release(v11);
  xpc_release(object);
  xpc_release(v12);
  xpc_release(v16);
  xpc_release(v13);
  xpc_release(v3);
  xpc_release(v17);
  xpc_release(v15);
  xpc_release(v4);
  xpc_release(v5);
  xpc_release(v6);
  xpc_release(v7);
  xpc_release(v8);
  xpc_release(v9);
}

void __48__WRMClient_sendSubscriptionInfoFaceTimeCalling__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    xpc_connection_send_message(v2, *(a1 + 40));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "[WRMClient sendSubscriptionInfoFaceTimeCalling]_block_invoke";
        v10 = 1024;
        v11 = 280;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient(%p): Subscribed to WRM iRAT notification", &v6, 0x26u);
      }
    }
  }
}

- (void)sendUnsubscriptionInfoFaceTimeCalling
{
  keys[2] = *MEMORY[0x1E69E9840];
  keys[0] = "kMessageId";
  keys[1] = "kMessageArgs";
  v3 = xpc_uint64_create(0x196uLL);
  values[0] = v3;
  values[1] = 0;
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WRMClient_sendUnsubscriptionInfoFaceTimeCalling__block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = v4;
  dispatch_async(connectionQueue, block);
  xpc_release(v3);
  xpc_release(v4);
}

void __50__WRMClient_sendUnsubscriptionInfoFaceTimeCalling__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    xpc_connection_send_message(v2, *(a1 + 40));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "[WRMClient sendUnsubscriptionInfoFaceTimeCalling]_block_invoke";
        v10 = 1024;
        v11 = 310;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient(%p): Unsubscribed to WRM iRAT notification", &v6, 0x26u);
      }
    }
  }
}

- (void)requestNotificationFaceTimeCalling
{
  [(WRMClient *)self sendUnsubscriptionInfoFaceTimeCalling];

  [(WRMClient *)self sendSubscriptionInfoFaceTimeCalling];
}

- (void)sendStatusUpdateInfoFaceTimeCalling:(id)a3
{
  objects[1] = *MEMORY[0x1E69E9840];
  objects[0] = a3;
  v4 = xpc_array_create(objects, 1uLL);
  keys = "kWRMApplicationTypeList";
  values = v4;
  v5 = xpc_dictionary_create(&keys, &values, 1uLL);
  v11[0] = "kMessageId";
  v11[1] = "kMessageArgs";
  v6 = xpc_uint64_create(0x197uLL);
  v10[0] = v6;
  v10[1] = v5;
  v7 = xpc_dictionary_create(v11, v10, 2uLL);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__WRMClient_sendStatusUpdateInfoFaceTimeCalling___block_invoke;
  v9[3] = &unk_1E85F37F0;
  v9[4] = self;
  v9[5] = v7;
  dispatch_async(connectionQueue, v9);
  xpc_release(v4);
  xpc_release(v5);
  xpc_release(v6);
  xpc_release(v7);
}

void __49__WRMClient_sendStatusUpdateInfoFaceTimeCalling___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    xpc_connection_send_message(*(*(a1 + 32) + 8), *(a1 + 40));
  }
}

- (void)sendStatusUpdateFaceTimeCalling:(id *)a3
{
  if (self->_connection)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kWRMApplicationType", a3->var0);
    xpc_dictionary_set_uint64(v5, "kWRMLinkType", a3->var1);
    xpc_dictionary_set_uint64(v5, "kWRMFaceTimeReactionType", a3->var2);
    xpc_dictionary_set_uint64(v5, "kWRMFaceTimeTimeDuration", a3->var3);
    [(WRMClient *)self sendStatusUpdateInfoFaceTimeCalling:v5];

    xpc_release(v5);
  }
}

- (void)dumpReport:(id)a3
{
  v150 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x1E6986640];
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    v9 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v142 = 136315650;
        v143 = v7;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 374;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient: New report:", &v142, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v6;
    v12 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uint64 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_CallID");
        v142 = 136315906;
        v143 = v10;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 375;
        v148 = 2048;
        v149 = uint64;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_CallID: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v6;
    v16 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_Timestamp");
        v142 = 136315906;
        v143 = v14;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 376;
        v148 = 2048;
        v149 = v17;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_Timestamp: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *v6;
    v20 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_TotalPlaybacks");
        v142 = 136315906;
        v143 = v18;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 377;
        v148 = 2048;
        v149 = v21;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalPlaybacks: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *v6;
    v24 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_PlaybacksInSpeech");
        v142 = 136315906;
        v143 = v22;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 378;
        v148 = 2048;
        v149 = v25;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_PlaybacksInSpeech: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *v6;
    v28 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_TotalErasures");
        v142 = 136315906;
        v143 = v26;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 379;
        v148 = 2048;
        v149 = v29;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalErasures: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *v6;
    v32 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_ErasuresInSpeech");
        v142 = 136315906;
        v143 = v30;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 380;
        v148 = 2048;
        v149 = v33;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_ErasuresInSpeech: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *v6;
    v36 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_ErasuresInSilence");
        v142 = 136315906;
        v143 = v34;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 381;
        v148 = 2048;
        v149 = v37;
        _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_ErasuresInSilence: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *v6;
    v40 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = xpc_dictionary_get_uint64(a3, "VidErasure");
        v142 = 136315906;
        v143 = v38;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 382;
        v148 = 2048;
        v149 = v41;
        _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_ErasuresInVideo: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *v6;
    v44 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_TotalPacketsReceived");
        v142 = 136315906;
        v143 = v42;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 383;
        v148 = 2048;
        v149 = v45;
        _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalPacketsReceived: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v46 = VRTraceErrorLogLevelToCSTR();
    v47 = *v6;
    v48 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = xpc_dictionary_get_uint64(a3, "PriVidRxCnt");
        v142 = 136315906;
        v143 = v46;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 384;
        v148 = 2048;
        v149 = v49;
        _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_PrimaryVideoPacketReceivedCount: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v50 = VRTraceErrorLogLevelToCSTR();
    v51 = *v6;
    v52 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = xpc_dictionary_get_uint64(a3, "PriAudRxCnt");
        v142 = 136315906;
        v143 = v50;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 385;
        v148 = 2048;
        v149 = v53;
        _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_PrimaryAudioPacketReceivedCount: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v54 = VRTraceErrorLogLevelToCSTR();
    v55 = *v6;
    v56 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = xpc_dictionary_get_uint64(a3, "TotVidRxCnt");
        v142 = 136315906;
        v143 = v54;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 386;
        v148 = 2048;
        v149 = v57;
        _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tWRMAVConferencePeriodicReport_TotalVideoPacketReceivedCount: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v58 = VRTraceErrorLogLevelToCSTR();
    v59 = *v6;
    v60 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = xpc_dictionary_get_uint64(a3, "TotAudRxCnt");
        v142 = 136315906;
        v143 = v58;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 387;
        v148 = 2048;
        v149 = v61;
        _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalAudioPacketReceivedCount: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v62 = VRTraceErrorLogLevelToCSTR();
    v63 = *v6;
    v64 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = xpc_dictionary_get_uint64(a3, "TotVidRxExpCnt");
        v142 = 136315906;
        v143 = v62;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 388;
        v148 = 2048;
        v149 = v65;
        _os_log_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalVideoPacketExpectedReceivedCount: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v66 = VRTraceErrorLogLevelToCSTR();
    v67 = *v6;
    v68 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = xpc_dictionary_get_uint64(a3, "TotAudRxExpCnt");
        v142 = 136315906;
        v143 = v66;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 389;
        v148 = 2048;
        v149 = v69;
        _os_log_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalAudioPacketExpectedReceivedCount: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v70 = VRTraceErrorLogLevelToCSTR();
    v71 = *v6;
    v72 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_SpeechPacketsReceived");
        v142 = 136315906;
        v143 = v70;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 390;
        v148 = 2048;
        v149 = v73;
        _os_log_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_SpeechPacketsReceived: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v74 = VRTraceErrorLogLevelToCSTR();
    v75 = *v6;
    v76 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = xpc_dictionary_get_uint64(a3, "kWRMMAVConferencePeriodicReport_SIDPacketsReceived");
        v142 = 136315906;
        v143 = v74;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 391;
        v148 = 2048;
        v149 = v77;
        _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMMAVConferencePeriodicReport_SIDPacketsReceived: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v78 = VRTraceErrorLogLevelToCSTR();
    v79 = *v6;
    v80 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = xpc_dictionary_get_uint64(a3, "kWRMMAVConferencPeriodicReport_RTT");
        v142 = 136315906;
        v143 = v78;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 392;
        v148 = 2048;
        v149 = v81;
        _os_log_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMMAVConferencPeriodicReport_RTT: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v82 = VRTraceErrorLogLevelToCSTR();
    v83 = *v6;
    v84 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = xpc_dictionary_get_uint64(a3, "kWRMMAVConferencePeriodicReport_CountSinceRTTupdated");
        v142 = 136315906;
        v143 = v82;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 393;
        v148 = 2048;
        v149 = v85;
        _os_log_impl(&dword_1DB56E000, v83, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMMAVConferencePeriodicReport_CountSinceRTTupdated: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v86 = VRTraceErrorLogLevelToCSTR();
    v87 = *v6;
    v88 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v89 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_TxPacketsCount");
        v142 = 136315906;
        v143 = v86;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 394;
        v148 = 2048;
        v149 = v89;
        _os_log_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TxPacketsCount: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v90 = VRTraceErrorLogLevelToCSTR();
    v91 = *v6;
    v92 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_TxPacketLoss");
        v142 = 136315906;
        v143 = v90;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 395;
        v148 = 2048;
        v149 = v93;
        _os_log_impl(&dword_1DB56E000, v91, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TxPacketLoss: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v94 = VRTraceErrorLogLevelToCSTR();
    v95 = *v6;
    v96 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_CountSinceTxPacketLossReported");
        v142 = 136315906;
        v143 = v94;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 396;
        v148 = 2048;
        v149 = v97;
        _os_log_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_CountSinceTxPacketLossReported: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v98 = VRTraceErrorLogLevelToCSTR();
    v99 = *v6;
    v100 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_RxJitter");
        v142 = 136315906;
        v143 = v98;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 397;
        v148 = 2048;
        v149 = v101;
        _os_log_impl(&dword_1DB56E000, v99, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_RxJitter: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v102 = VRTraceErrorLogLevelToCSTR();
    v103 = *v6;
    v104 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_TxJitter");
        v142 = 136315906;
        v143 = v102;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 398;
        v148 = 2048;
        v149 = v105;
        _os_log_impl(&dword_1DB56E000, v103, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TxJitter: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v106 = VRTraceErrorLogLevelToCSTR();
    v107 = *v6;
    v108 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_CountSinceTxJitterUpdated");
        v142 = 136315906;
        v143 = v106;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 399;
        v148 = 2048;
        v149 = v109;
        _os_log_impl(&dword_1DB56E000, v107, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_CountSinceTxJitterUpdated: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v110 = VRTraceErrorLogLevelToCSTR();
    v111 = *v6;
    v112 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        v113 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_NominalJitterBufferQueueSize");
        v142 = 136315906;
        v143 = v110;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 400;
        v148 = 2048;
        v149 = v113;
        _os_log_impl(&dword_1DB56E000, v111, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_NominalJitterBufferQueueSize: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v114 = VRTraceErrorLogLevelToCSTR();
    v115 = *v6;
    v116 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v117 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_TargetJitterQueueSize");
        v142 = 136315906;
        v143 = v114;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 401;
        v148 = 2048;
        v149 = v117;
        _os_log_impl(&dword_1DB56E000, v115, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TargetJitterQueueSize: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v118 = VRTraceErrorLogLevelToCSTR();
    v119 = *v6;
    v120 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        v121 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_CallType");
        v142 = 136315906;
        v143 = v118;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 402;
        v148 = 2048;
        v149 = v121;
        _os_log_impl(&dword_1DB56E000, v119, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_CallType: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v122 = VRTraceErrorLogLevelToCSTR();
    v123 = *v6;
    v124 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_BWEstimation");
        v142 = 136315906;
        v143 = v122;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 403;
        v148 = 2048;
        v149 = v125;
        _os_log_impl(&dword_1DB56E000, v123, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_BWEstimation: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v126 = VRTraceErrorLogLevelToCSTR();
    v127 = *v6;
    v128 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        v129 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_TargetBitRate");
        v142 = 136315906;
        v143 = v126;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 404;
        v148 = 2048;
        v149 = v129;
        _os_log_impl(&dword_1DB56E000, v127, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TargetBitRate: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v130 = VRTraceErrorLogLevelToCSTR();
    v131 = *v6;
    v132 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        v133 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_AdaptationPacketLoss");
        v142 = 136315906;
        v143 = v130;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 405;
        v148 = 2048;
        v149 = v133;
        _os_log_impl(&dword_1DB56E000, v131, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_AdaptationPacketLoss: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v134 = VRTraceErrorLogLevelToCSTR();
    v135 = *v6;
    v136 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        v137 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_OneWayRelativeDelay");
        v142 = 136315906;
        v143 = v134;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 406;
        v148 = 2048;
        v149 = v137;
        _os_log_impl(&dword_1DB56E000, v135, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_OneWayRelativeDelay: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v138 = VRTraceErrorLogLevelToCSTR();
    v139 = *v6;
    v140 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        v141 = xpc_dictionary_get_uint64(a3, "kWRMAVConferencePeriodicReport_LinkType");
        v142 = 136315906;
        v143 = v138;
        v144 = 2080;
        v145 = "[WRMClient dumpReport:]";
        v146 = 1024;
        v147 = 407;
        v148 = 2048;
        v149 = v141;
        _os_log_impl(&dword_1DB56E000, v139, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_LinkType: %llu", &v142, 0x26u);
      }
    }

    else if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient dumpReport:];
    }
  }
}

- (void)sendReport:(id)a3
{
  keys[2] = *MEMORY[0x1E69E9840];
  keys[0] = "kMessageId";
  keys[1] = "kMessageArgs";
  v5 = xpc_uint64_create(0xCAuLL);
  values[0] = v5;
  values[1] = a3;
  v6 = xpc_dictionary_create(keys, values, 2uLL);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __24__WRMClient_sendReport___block_invoke;
  v8[3] = &unk_1E85F3E30;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = v6;
  dispatch_async(connectionQueue, v8);
  xpc_release(v5);
  xpc_release(v6);
}

void __24__WRMClient_sendReport___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[1])
  {
    [v2 dumpReport:a1[5]];
    v3 = *(a1[4] + 8);
    v4 = a1[6];

    xpc_connection_send_message(v3, v4);
  }
}

- (void)reportMetricsWifiCalling:(id *)a3
{
  if (self->_connection)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_CallID", a3->var21);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_Timestamp", a3->var0);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TotalPlaybacks", a3->var1);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_PlaybacksInSpeech", a3->var2);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TotalErasures", a3->var6);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_ErasuresInSpeech", a3->var8);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_ErasuresInSilence", a3->var7);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TotalPacketsReceived", a3->var3);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_SpeechPacketsReceived", a3->var5);
    xpc_dictionary_set_uint64(v5, "kWRMMAVConferencePeriodicReport_SIDPacketsReceived", a3->var4);
    xpc_dictionary_set_uint64(v5, "kWRMMAVConferencPeriodicReport_RTT", a3->var17);
    xpc_dictionary_set_uint64(v5, "kWRMMAVConferencePeriodicReport_CountSinceRTTupdated", a3->var18);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TxPacketsCount", a3->var14);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TxPacketLoss", a3->var12);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_CountSinceTxPacketLossReported", a3->var13);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_RxJitter", a3->var15);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TxJitter", a3->var10);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_CountSinceTxJitterUpdated", a3->var16);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_NominalJitterBufferQueueSize", a3->var19);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TargetJitterQueueSize", a3->var20);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_LinkType", a3->var27);
    [(WRMClient *)self sendReport:v5];

    xpc_release(v5);
  }
}

- (void)reportImmediateMetric:(int)a3 value:(unint64_t)a4
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (self->_metricsConfig.reportImmediateMetricsEnabled)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v25 = v21;
            v26 = 2080;
            v27 = "[WRMClient reportImmediateMetric:value:]";
            v28 = 1024;
            v29 = 481;
            v30 = 1024;
            *v31 = a3;
            *&v31[4] = 2048;
            *&v31[6] = a4;
            _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d WRMClient: Immediate reporting not supported for metric type: %d: %llu", buf, 0x2Cu);
          }
        }

        return;
      }

      v7 = "IsMedStall";
    }

    else
    {
      v7 = "AnyPoorCon";
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, v7, a4);
    keys[0] = "kMessageId";
    keys[1] = "kMessageArgs";
    v15 = xpc_uint64_create(0xC9uLL);
    values[0] = v15;
    values[1] = v14;
    v16 = xpc_dictionary_create(keys, values, 2uLL);
    connectionQueue = self->_connectionQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __41__WRMClient_reportImmediateMetric_value___block_invoke;
    v23[3] = &unk_1E85F37F0;
    v23[4] = self;
    v23[5] = v16;
    dispatch_async(connectionQueue, v23);
    xpc_release(v15);
    xpc_release(v16);
    xpc_release(v14);
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    v20 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136316162;
      v25 = v18;
      v26 = 2080;
      v27 = "[WRMClient reportImmediateMetric:value:]";
      v28 = 1024;
      v29 = 503;
      v30 = 2080;
      *v31 = v7;
      *&v31[8] = 2048;
      *&v31[10] = a4;
      v11 = " [%s] %s:%d WRMClient: Immediate metric reported:%s: %llu";
      v12 = v19;
      v13 = 48;
      goto LABEL_14;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v25 = v18;
      v26 = 2080;
      v27 = "[WRMClient reportImmediateMetric:value:]";
      v28 = 1024;
      v29 = 503;
      v30 = 2080;
      *v31 = v7;
      *&v31[8] = 2048;
      *&v31[10] = a4;
      _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d WRMClient: Immediate metric reported:%s: %llu", buf, 0x30u);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315650;
      v25 = v8;
      v26 = 2080;
      v27 = "[WRMClient reportImmediateMetric:value:]";
      v28 = 1024;
      v29 = 469;
      v11 = " [%s] %s:%d Not reporting WRM metrics as directed by the storebag settings";
      v12 = v9;
      v13 = 28;
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      return;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [WRMClient reportImmediateMetric:value:];
    }
  }
}

void __41__WRMClient_reportImmediateMetric_value___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    xpc_connection_send_message(*(*(a1 + 32) + 8), *(a1 + 40));
  }
}

- (void)reportMetricsFaceTimeCalling:(id *)a3
{
  v61 = *MEMORY[0x1E69E9840];
  if (self->_connection)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_CallID", a3->var21);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_Timestamp", a3->var0);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TotalPlaybacks", a3->var1);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_PlaybacksInSpeech", a3->var2);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TotalErasures", a3->var6);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_ErasuresInSpeech", a3->var8);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_ErasuresInSilence", a3->var7);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TotalPacketsReceived", a3->var3);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_SpeechPacketsReceived", a3->var5);
    xpc_dictionary_set_uint64(v5, "kWRMMAVConferencePeriodicReport_SIDPacketsReceived", a3->var4);
    xpc_dictionary_set_uint64(v5, "kWRMMAVConferencPeriodicReport_RTT", a3->var17);
    xpc_dictionary_set_uint64(v5, "kWRMMAVConferencePeriodicReport_CountSinceRTTupdated", a3->var18);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TxPacketsCount", a3->var14);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TxPacketLoss", a3->var12);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_CountSinceTxPacketLossReported", a3->var13);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_RxJitter", a3->var15);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TxJitter", a3->var10);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_CountSinceTxJitterUpdated", a3->var16);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_NominalJitterBufferQueueSize", a3->var19);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TargetJitterQueueSize", a3->var20);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_CallType", a3->var22);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_BWEstimation", a3->var23);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_TargetBitRate", a3->var24);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_AdaptationPacketLoss", a3->var26);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_OneWayRelativeDelay", a3->var25);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_LinkType", a3->var27);
    xpc_dictionary_set_uint64(v5, "kWRMAVConferencePeriodicReport_VideoPause", a3->var28);
    if (self->_metricsConfig.reportRtpErasureMetricsEnabled)
    {
      var29 = a3->var29;
      var30 = a3->var30;
      var31 = a3->var31;
      var32 = a3->var32;
      var33 = a3->var33;
      var34 = a3->var34;
    }

    else
    {
      var33 = 10;
      var31 = 10;
      var29 = 10;
      var30 = 10;
      var32 = 10;
      var34 = 10;
    }

    v24 = var29;
    xpc_dictionary_set_uint64(v5, "PriVidRxCnt", var29);
    xpc_dictionary_set_uint64(v5, "PriAudRxCnt", var30);
    xpc_dictionary_set_uint64(v5, "TotVidRxCnt", var31);
    xpc_dictionary_set_uint64(v5, "TotAudRxCnt", var32);
    xpc_dictionary_set_uint64(v5, "TotVidRxExpCnt", var33);
    xpc_dictionary_set_uint64(v5, "TotAudRxExpCnt", var34);
    if (self->_mediaControlInfoVersion == 2)
    {
      if (self->_metricsConfig.reportRtpErasureMetricsEnabled)
      {
        var9 = a3->var9;
      }

      else
      {
        var9 = 0;
      }

      xpc_dictionary_set_uint64(v5, "VidErasure", var9);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        var21 = a3->var21;
        var22 = a3->var22;
        var27 = a3->var27;
        var28 = a3->var28;
        var1 = a3->var1;
        var6 = a3->var6;
        var8 = a3->var8;
        var4 = a3->var4;
        var19 = a3->var19;
        *buf = 136319490;
        v26 = v13;
        v27 = 2080;
        v28 = "[WRMClient reportMetricsFaceTimeCalling:]";
        v29 = 1024;
        v30 = 562;
        v31 = 2048;
        v32 = var21;
        v33 = 2048;
        v34 = var22;
        v35 = 2048;
        v36 = var27;
        v37 = 2048;
        v38 = var28;
        v39 = 2048;
        v40 = var1;
        v41 = 2048;
        v42 = var6;
        v43 = 2048;
        v44 = var8;
        v45 = 2048;
        v46 = var4;
        v47 = 2048;
        v48 = var19;
        v49 = 2048;
        v50 = v24;
        v51 = 2048;
        v52 = var30;
        v53 = 2048;
        v54 = var31;
        v55 = 2048;
        v56 = var32;
        v57 = 2048;
        v58 = var33;
        v59 = 2048;
        v60 = var34;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRM reporting metrics callID=%llu callType=%llu linkType=%llu videoPause=%llu playBackCount=%llu erasureCount=%llu erasureCountSpeech=%llu packetsReceivedSilence=%llu nominalJitterBufferDelay=%llu primaryVideoPacketsReceived=%llu primaryAudioPacketsReceived=%llu totalVideoPacketsReceived=%llu totalAudioPacketsReceived=%llu totalVideoPacketsExpected=%llu totalAudioPacketsExpected=%llu", buf, 0xB2u);
      }
    }

    [(WRMClient *)self sendReport:v5];
    xpc_release(v5);
  }
}

- (void)setConfiguration:(id *)a3
{
  v4 = MEMORY[0x1E1289F20](&self->_wrmClientDelegate, a2);
  [v4 setWRMMetricConfig:a3];
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)processWRMCoexMetrics:(id)a3 isAlertedMode:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v4), @"WRMAlertedMode"}];
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_rssiThreshold), @"WRMwRSSIThreshold"}];
    if (xpc_dictionary_get_value(a3, "kwRSSI"))
    {
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", xpc_dictionary_get_int64(a3, "kwRSSI")), @"WRMwRSSI"}];
    }

    if (xpc_dictionary_get_value(a3, "kwSNR"))
    {
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", xpc_dictionary_get_int64(a3, "kwSNR")), @"WRMwSNR"}];
    }

    if (xpc_dictionary_get_value(a3, "kwCCA"))
    {
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", xpc_dictionary_get_int64(a3, "kwCCA")), @"WRMwCCA"}];
    }

    if (xpc_dictionary_get_value(a3, "kwPER"))
    {
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", xpc_dictionary_get_int64(a3, "kwPER")), @"WRMwPacketLoss"}];
    }

    if (xpc_dictionary_get_value(a3, "kcSigStrength"))
    {
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", xpc_dictionary_get_int64(a3, "kcSigStrength")), @"WRMcSigStrength"}];
    }

    if (xpc_dictionary_get_value(a3, "kcSignalBar"))
    {
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", xpc_dictionary_get_int64(a3, "kcSignalBar")), @"WRMcSignalBar"}];
    }

    if (xpc_dictionary_get_value(a3, "kcServingCellType"))
    {
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", xpc_dictionary_get_int64(a3, "kcServingCellType")), @"WRMcServingCellType"}];
    }

    if ([v7 count])
    {
      v8 = MEMORY[0x1E1289F20](&self->_wrmClientDelegate);
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WRMCoexIsLocal"];
      [v8 setWRMCoexMetrics:v7];
      if (v8)
      {

        CFRelease(v8);
      }
    }
  }
}

- (void)processNotificationList:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  count = xpc_array_get_count(a3);
  if (count >= 1)
  {
    v6 = 0;
    v7 = count & 0x7FFFFFFF;
    do
    {
      value = xpc_array_get_value(a3, v6);
      LODWORD(v11) = xpc_dictionary_get_uint64(value, "kWRMApplicationType");
      DWORD1(v11) = xpc_dictionary_get_uint64(value, "kWRMLinkType");
      *(&v11 + 1) = xpc_dictionary_get_uint64(value, "kWRMLinkTypeChangeReasonCode");
      string = xpc_dictionary_get_string(value, "kWRMLinkTypeChangeReasonString");
      strncpy(v12, string, 0x80uLL);
      HIBYTE(v13) = 0;
      *(&v14 + 1) = xpc_dictionary_get_uint64(value, "kWRMCurrentLinkMovBandwidthEstimateMax");
      *&v14 = xpc_dictionary_get_uint64(value, "kWRMCurrentLinkMovBandwidthEstimateMin");
      v10 = MEMORY[0x1E1289F20](&self->_wrmClientDelegate);
      [v10 setWRMNotification:&v11];
      if (v10)
      {
        CFRelease(v10);
      }

      ++v6;
    }

    while (v7 != v6);
  }
}

- (void)setPreWarmState:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_metricsConfig.allowPreWarmCellEnabled)
  {
    v4 = a3;
    v5 = MEMORY[0x1E1289F20](&self->_wrmClientDelegate, a2);
    [v5 setPreWarmState:v4];
    if (v5)
    {
      CFRelease(v5);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316162;
        v14 = v6;
        v15 = 2080;
        v16 = "[WRMClient setPreWarmState:]";
        v17 = 1024;
        v18 = 655;
        v19 = 2048;
        v20 = self;
        v21 = 1024;
        v22 = v4;
        v8 = " [%s] %s:%d WRMClient(%p): Get PreWarmState %d from iRAT";
        v9 = v7;
        v10 = 44;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = v11;
      v15 = 2080;
      v16 = "[WRMClient setPreWarmState:]";
      v17 = 1024;
      v18 = 648;
      v19 = 2048;
      v20 = self;
      v8 = " [%s] %s:%d WRMClient(%p): Ignoring prewarm signal from iRAT as directed by storebagsettings";
      v9 = v12;
      v10 = 38;
      goto LABEL_10;
    }
  }
}

- (void)setRSSIThresholdEnabled:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [GKSConnectivitySettings getWRMRSSIThresholdValue:4294967216];
  }

  else
  {
    v4 = -80;
  }

  self->_rssiThreshold = [VCDefaults integerValueForKey:@"wrmRSSIThreshold" defaultValue:v4];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      rssiThreshold = self->_rssiThreshold;
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "[WRMClient setRSSIThresholdEnabled:]";
      v12 = 1024;
      v13 = 668;
      v14 = 2048;
      v15 = self;
      v16 = 1024;
      v17 = rssiThreshold;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient(%p): Picked WRM RSSI Threshold value %d", &v8, 0x2Cu);
    }
  }
}

- (void)dumpReport:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 374;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d WRMClient: New report:", v1, 0x1Cu);
}

- (void)dumpReport:.cold.2()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_CallID");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_CallID: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.3()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_Timestamp");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_Timestamp: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.4()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_TotalPlaybacks");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalPlaybacks: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.5()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_PlaybacksInSpeech");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_PlaybacksInSpeech: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.6()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_TotalErasures");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalErasures: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.7()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_ErasuresInSpeech");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_ErasuresInSpeech: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.8()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_ErasuresInSilence");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_ErasuresInSilence: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.9()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "VidErasure");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_ErasuresInVideo: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.10()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_TotalPacketsReceived");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalPacketsReceived: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.11()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "PriVidRxCnt");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_PrimaryVideoPacketReceivedCount: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.12()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "PriAudRxCnt");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_PrimaryAudioPacketReceivedCount: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.13()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "TotVidRxCnt");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tWRMAVConferencePeriodicReport_TotalVideoPacketReceivedCount: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.14()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "TotAudRxCnt");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalAudioPacketReceivedCount: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.15()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "TotVidRxExpCnt");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalVideoPacketExpectedReceivedCount: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.16()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "TotAudRxExpCnt");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TotalAudioPacketExpectedReceivedCount: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.17()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_SpeechPacketsReceived");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_SpeechPacketsReceived: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.18()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMMAVConferencePeriodicReport_SIDPacketsReceived");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMMAVConferencePeriodicReport_SIDPacketsReceived: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.19()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMMAVConferencPeriodicReport_RTT");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMMAVConferencPeriodicReport_RTT: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.20()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMMAVConferencePeriodicReport_CountSinceRTTupdated");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMMAVConferencePeriodicReport_CountSinceRTTupdated: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.21()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_TxPacketsCount");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TxPacketsCount: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.22()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_TxPacketLoss");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TxPacketLoss: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.23()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_CountSinceTxPacketLossReported");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_CountSinceTxPacketLossReported: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.24()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_RxJitter");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_RxJitter: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.25()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_TxJitter");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TxJitter: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.26()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_CountSinceTxJitterUpdated");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_CountSinceTxJitterUpdated: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.27()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_NominalJitterBufferQueueSize");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_NominalJitterBufferQueueSize: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.28()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_TargetJitterQueueSize");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TargetJitterQueueSize: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.29()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_CallType");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_CallType: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.30()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_BWEstimation");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_BWEstimation: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.31()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_TargetBitRate");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_TargetBitRate: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.32()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_AdaptationPacketLoss");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_AdaptationPacketLoss: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.33()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_OneWayRelativeDelay");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_OneWayRelativeDelay: %llu", v3, v4, v5, v6, v7);
}

- (void)dumpReport:.cold.34()
{
  OUTLINED_FUNCTION_3_32();
  xpc_dictionary_get_uint64(v0, "kWRMAVConferencePeriodicReport_LinkType");
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d WRMClient:\tkWRMAVConferencePeriodicReport_LinkType: %llu", v3, v4, v5, v6, v7);
}

- (void)reportImmediateMetric:value:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 469;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Not reporting WRM metrics as directed by the storebag settings", v1, 0x1Cu);
}

@end