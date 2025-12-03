@interface VCNetworkFeedbackController
- (VCNetworkFeedbackController)initWithDelegate:(id)delegate connectionManager:(id)manager experimentManager:(id)experimentManager;
- (unsigned)recommendedTargetBitrateCap;
- (void)cleanupWCMClient;
- (void)cleanupWRMClient;
- (void)cleanupWRMData;
- (void)configureFeatures;
- (void)dealloc;
- (void)initializeWRMInfo;
- (void)reportImmediateWRMMetric:(int)metric value:(unint64_t)value;
- (void)reportWRMMetrics:(id *)metrics;
- (void)requestWRMNotification;
- (void)sendFeedbackControllerReport:(id *)report;
- (void)sendStatusUpdate:(id *)update;
- (void)setDownlinkTargetCellBitrateCap:(unsigned int)cap;
- (void)setIsLocalCellular:(BOOL)cellular;
- (void)setIsVideoPaused:(BOOL)paused;
- (void)setPreWarmState:(BOOL)state;
- (void)setRSSIThresholdEnabled:(BOOL)enabled;
- (void)setWRMCoexMetrics:(id)metrics;
- (void)setWRMMetricConfig:(id *)config;
- (void)setWRMNotification:(id *)notification;
- (void)setupWCMClient;
- (void)setupWRMClientWithMetricsConfig:(id)config;
- (void)startWithMetricsConfig:(id)config;
- (void)stop;
- (void)updateMetricsConfig:(id)config;
- (void)wcmGetCallConfig:(unsigned int *)config targetBitrate:(unsigned int *)bitrate;
- (void)wcmSetCallConfig:(unsigned int)config interferenceLevel:(unsigned int)level;
@end

@implementation VCNetworkFeedbackController

- (VCNetworkFeedbackController)initWithDelegate:(id)delegate connectionManager:(id)manager experimentManager:(id)experimentManager
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCNetworkFeedbackController;
  v8 = [(VCNetworkFeedbackController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_weakDelegate, delegate);
    v9->_connectionManager = manager;
    v9->_experimentManager = experimentManager;
    [(VCNetworkFeedbackController *)v9 configureFeatures];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v9->_wrmClientQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.vcNetworkFeedbackController.serialQueue", 0, CustomRootQueue);
    [(VCNetworkFeedbackController *)v9 initializeWRMInfo];
  }

  return v9;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCNetworkFeedbackController *)self stop];
  [(VCNetworkFeedbackController *)self cleanupWRMData];

  objc_storeWeak(&self->_weakDelegate, 0);
  wrmClientQueue = self->_wrmClientQueue;
  if (wrmClientQueue)
  {
    dispatch_release(wrmClientQueue);
    self->_wrmClientQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = VCNetworkFeedbackController;
  [(VCNetworkFeedbackController *)&v4 dealloc];
}

- (void)initializeWRMInfo
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for WRM info", v2, v3, v4, v5, v6);
}

- (void)startWithMetricsConfig:(id)config
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_isStarted)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v11 = v3;
        v12 = 2080;
        v13 = "[VCNetworkFeedbackController startWithMetricsConfig:]";
        v14 = 1024;
        v15 = 119;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNetworkFeedbackController already started", buf, 0x1Cu);
      }
    }
  }

  else
  {
    self->_isStarted = 1;
    [(VCNetworkFeedbackController *)self setupWCMClient];
    wrmClientQueue = self->_wrmClientQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__VCNetworkFeedbackController_startWithMetricsConfig___block_invoke;
    v8[3] = &unk_1E85F38B8;
    v8[4] = self;
    configCopy = config;
    dispatch_async(wrmClientQueue, v8);
  }
}

- (void)stop
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_isStarted)
  {
    self->_isStarted = 0;
    if (self->_WRMClient)
    {
      [(VCNetworkFeedbackController *)self cleanupWRMClient];
    }

    if (self->_WCMClient)
    {

      [(VCNetworkFeedbackController *)self cleanupWCMClient];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCNetworkFeedbackController stop]";
      v9 = 1024;
      v10 = 131;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCNetworkFeedbackController already stopped", &v5, 0x1Cu);
    }
  }
}

- (unsigned)recommendedTargetBitrateCap
{
  objc_sync_enter(self);
  targetBitrateCap = [(VCRecommendedNetworkSettings *)self->_recommendedSettings targetBitrateCap];
  objc_sync_exit(self);
  return targetBitrateCap;
}

- (void)updateMetricsConfig:(id)config
{
  v6 = *MEMORY[0x1E69E9840];
  wrmClientQueue = self->_wrmClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCNetworkFeedbackController_updateMetricsConfig___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  configCopy = config;
  dispatch_async(wrmClientQueue, block);
}

- (void)setRSSIThresholdEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  wrmClientQueue = self->_wrmClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCNetworkFeedbackController_setRSSIThresholdEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(wrmClientQueue, block);
}

- (void)cleanupWRMData
{
  wrmInfo = self->_wrmInfo;
  if (wrmInfo)
  {
    free(wrmInfo);
    self->_wrmInfo = 0;
  }

  wrmContext = self->_wrmContext;
  if (wrmContext)
  {
    free(wrmContext);
    self->_wrmContext = 0;
  }
}

- (void)sendFeedbackControllerReport:(id *)report
{
  v37 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  var6 = report->var6;
  v4 = report->var5 / 0x3E8uLL;
  var8 = report->var8;
  v6 = report->var7 / 0x3E8uLL;
  var0 = report->var0;
  v8 = report->var1 / 0x3E8uLL;
  var2 = report->var2;
  v10 = report->var3 / 0x3E8uLL;
  wrmClientQueue = self->_wrmClientQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__VCNetworkFeedbackController_sendFeedbackControllerReport___block_invoke;
  v12[3] = &unk_1E85F6D10;
  v12[4] = self;
  v24 = 2;
  v25 = v6;
  v26 = v4;
  v27 = 0;
  v28 = var6;
  v29 = var0;
  v30 = var8;
  v34 = v8;
  v35 = var2;
  v36 = v10;
  dispatch_async(wrmClientQueue, v12);
}

- (void)sendStatusUpdate:(id *)update
{
  v6 = *MEMORY[0x1E69E9840];
  if (update)
  {
    wrmClientQueue = self->_wrmClientQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48__VCNetworkFeedbackController_sendStatusUpdate___block_invoke;
    v4[3] = &unk_1E85F4090;
    v4[4] = self;
    v5 = *update;
    dispatch_async(wrmClientQueue, v4);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCNetworkFeedbackController sendStatusUpdate:];
    }
  }
}

- (void)requestWRMNotification
{
  v3[5] = *MEMORY[0x1E69E9840];
  wrmClientQueue = self->_wrmClientQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__VCNetworkFeedbackController_requestWRMNotification__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(wrmClientQueue, v3);
}

uint64_t __53__VCNetworkFeedbackController_requestWRMNotification__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCNetworkFeedbackController requestWRMNotification]_block_invoke";
      v9 = 1024;
      v10 = 218;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Request for the latest iRAT notification by resubscribing again", &v5, 0x1Cu);
    }
  }

  return [*(*(a1 + 32) + 24) requestNotificationFaceTimeCalling];
}

- (void)reportImmediateWRMMetric:(int)metric value:(unint64_t)value
{
  v7 = *MEMORY[0x1E69E9840];
  wrmClientQueue = self->_wrmClientQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__VCNetworkFeedbackController_reportImmediateWRMMetric_value___block_invoke;
  v5[3] = &unk_1E85F3908;
  metricCopy = metric;
  v5[4] = self;
  v5[5] = value;
  dispatch_async(wrmClientQueue, v5);
}

uint64_t __62__VCNetworkFeedbackController_reportImmediateWRMMetric_value___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 270) == 1)
  {
    result = [*(v2 + 24) reportImmediateMetric:*(result + 48) value:*(result + 40)];
  }

  if (!*(v1 + 48))
  {
    v3 = *(v1 + 40) != 0;
    v4 = *(*(v1 + 32) + 32);

    return [v4 setIsVideoDegraded:v3];
  }

  return result;
}

- (void)reportWRMMetrics:(id *)metrics
{
  v7 = *MEMORY[0x1E69E9840];
  if (metrics)
  {
    memcpy(v6, metrics, sizeof(v6));
    wrmClientQueue = self->_wrmClientQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__VCNetworkFeedbackController_reportWRMMetrics___block_invoke;
    v5[3] = &unk_1E85F6D10;
    v5[4] = self;
    dispatch_async(wrmClientQueue, v5);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCNetworkFeedbackController reportWRMMetrics:];
    }
  }
}

uint64_t __48__VCNetworkFeedbackController_reportWRMMetrics___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 270) == 1)
  {
    return [*(v1 + 24) reportMetricsFaceTimeCalling:result + 40];
  }

  return result;
}

- (void)configureFeatures
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315650;
    v11 = v3;
    OUTLINED_FUNCTION_0();
    v12 = 252;
    v5 = " [%s] %s:%d experiment manager must not be nil";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v10, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [self performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      v12 = 252;
      v13 = 2112;
      v14 = v2;
      v15 = 2048;
      selfCopy = self;
      v5 = " [%s] %s:%d %@(%p) experiment manager must not be nil";
      v6 = v9;
      v7 = 48;
      goto LABEL_12;
    }
  }
}

- (void)setWRMMetricConfig:(id *)config
{
  self->_wrmReportingInterval = config->var0 / 50.0;
  v4 = MEMORY[0x1E1289F20](&self->_weakDelegate, a2);
  [v4 reportingIntervalChanged:self->_wrmReportingInterval];
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)setWRMNotification:(id *)notification
{
  v30 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      var0 = notification->var0;
      var1 = notification->var1;
      var2 = notification->var2;
      var4 = notification->var4;
      var5 = notification->var5;
      v12 = 136317186;
      v13 = v5;
      v14 = 2080;
      v15 = "[VCNetworkFeedbackController setWRMNotification:]";
      v16 = 1024;
      v17 = 278;
      v18 = 1024;
      v19 = var0;
      v20 = 1024;
      v21 = var1;
      v22 = 2048;
      v23 = var2;
      v24 = 2080;
      var3 = notification->var3;
      v26 = 2048;
      v27 = var5;
      v28 = 2048;
      v29 = var4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Get iRAT notification for %u, %u, 0x%llx, %s, (%llu, %llu)", &v12, 0x50u);
    }
  }

  VCConnectionManager_SetWRMNotification(self->_connectionManager, &notification->var0);
}

- (void)setWRMCoexMetrics:(id)metrics
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCNetworkFeedbackController setWRMCoexMetrics:]";
      v11 = 1024;
      v12 = 283;
      v13 = 2080;
      v14 = [objc_msgSend(metrics "description")];
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRM: Get iRAT Coex Metrics %s", &v7, 0x26u);
    }
  }

  [(VCConnectionManager *)self->_connectionManager processWRMCoexMetrics:metrics];
}

- (void)setPreWarmState:(BOOL)state
{
  stateCopy = state;
  v4 = MEMORY[0x1E1289F20](&self->_weakDelegate, a2);
  [v4 preWarmStateChanged:stateCopy];
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)wcmSetCallConfig:(unsigned int)config interferenceLevel:(unsigned int)level
{
  v4 = *&config;
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCNetworkFeedbackController wcmSetCallConfig:interferenceLevel:]";
      v13 = 1024;
      v14 = 297;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d wcmSetCallConfig callback.", &v9, 0x1Cu);
    }
  }

  objc_sync_enter(self);

  self->_recommendedSettings = [[VCRecommendedNetworkSettings alloc] initWithTargetBitrateCap:v4];
  v8 = MEMORY[0x1E1289F20](&self->_weakDelegate);
  [v8 recommendedSettingsChanged:self->_recommendedSettings];
  if (v8)
  {
    CFRelease(v8);
  }

  objc_sync_exit(self);
}

- (void)wcmGetCallConfig:(unsigned int *)config targetBitrate:(unsigned int *)bitrate
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCNetworkFeedbackController wcmGetCallConfig:targetBitrate:]";
      v13 = 1024;
      v14 = 309;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d wcmGetCallConfig callback.", &v9, 0x1Cu);
    }
  }

  objc_sync_enter(self);
  *config = [(VCNetworkFeedbackController *)self clientTargetBitrateCap];
  *bitrate = [(VCNetworkFeedbackController *)self clientTargetBitrate];
  objc_sync_exit(self);
}

- (void)setupWCMClient
{
  v15 = *MEMORY[0x1E69E9840];
  if (!MEMORY[0x1EEE98308] || !WCMEnabled())
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136315650;
    v10 = v5;
    v11 = 2080;
    v12 = "[VCNetworkFeedbackController setupWCMClient]";
    v13 = 1024;
    v14 = 333;
    v7 = " [%s] %s:%d not supported on this device.";
LABEL_11:
    _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 0x1Cu);
    return;
  }

  if ((NetworkUtils_IsLTEOrNewer([(VCConnectionManager *)self->_connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1]) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 136315650;
    v10 = v8;
    v11 = 2080;
    v12 = "[VCNetworkFeedbackController setupWCMClient]";
    v13 = 1024;
    v14 = 323;
    v7 = " [%s] %s:%d non-LTE RAT not supported.";
    goto LABEL_11;
  }

  if (!self->_WCMClient)
  {
    v3 = objc_alloc_init(VCWCMClient);
    self->_WCMClient = v3;
    [(VCWCMClient *)v3 setWcmClientDelegate:self];
    WCMClient = self->_WCMClient;

    [(VCWCMClient *)WCMClient startWCMClient];
  }
}

- (void)cleanupWCMClient
{
  v11 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1EEE98308] && WCMEnabled())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "[VCNetworkFeedbackController cleanupWCMClient]";
        v9 = 1024;
        v10 = 342;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cleanup start.", &v5, 0x1Cu);
      }
    }

    [(VCWCMClient *)self->_WCMClient stopWCMClient];
    [(VCWCMClient *)self->_WCMClient setWcmClientDelegate:0];

    self->_WCMClient = 0;
  }
}

- (void)setupWRMClientWithMetricsConfig:(id)config
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_WRMClient)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v5;
        v10 = 2080;
        v11 = "[VCNetworkFeedbackController setupWRMClientWithMetricsConfig:]";
        v12 = 1024;
        v13 = 354;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient setup start.", &v8, 0x1Cu);
      }
    }

    [(VCConnectionManager *)self->_connectionManager setWRMUpdateCallback:VCCMWRMStatusUpdateCallback requestNotificationCallback:VCCMWRMRequestNotificationCallback withContext:self completionHandler:0];
    v7 = [[WRMClient alloc] initWithDelegate:self];
    self->_WRMClient = v7;
    [(WRMClient *)v7 startWRMClientWithMode:1 metricsConfig:*&config.var0 & 0xFFFFFFLL | (!self->_isFastLQMReportingEnabled << 24)];
  }
}

- (void)cleanupWRMClient
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v3;
      v11 = 2080;
      v12 = "[VCNetworkFeedbackController cleanupWRMClient]";
      v13 = 1024;
      v14 = 365;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRMClient cleanup start.", buf, 0x1Cu);
    }
  }

  wrmClientQueue = self->_wrmClientQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__VCNetworkFeedbackController_cleanupWRMClient__block_invoke;
  v7[3] = &unk_1E85F37F0;
  v6 = *&self->_WRMClient;
  self->_WRMClient = 0;
  v8 = vextq_s8(v6, v6, 8uLL);
  dispatch_async(wrmClientQueue, v7);
}

uint64_t __47__VCNetworkFeedbackController_cleanupWRMClient__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VCNetworkFeedbackController_cleanupWRMClient__block_invoke_2;
  v3[3] = &unk_1E85F3778;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 setWRMUpdateCallback:0 requestNotificationCallback:0 withContext:0 completionHandler:v3];
}

void __47__VCNetworkFeedbackController_cleanupWRMClient__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) stopWRMClient];
  v2 = *(a1 + 32);
}

- (void)setDownlinkTargetCellBitrateCap:(unsigned int)cap
{
  v14 = *MEMORY[0x1E69E9840];
  self->_downlinkTargetCellBitrateCap = cap;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCNetworkFeedbackController setDownlinkTargetCellBitrateCap:]";
      v10 = 1024;
      v11 = 386;
      v12 = 1024;
      capCopy = cap;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Update cellBitrateCap for pending iRAT notification purpose: %d", &v6, 0x22u);
    }
  }
}

- (void)setIsLocalCellular:(BOOL)cellular
{
  self->_isLocalCellular = cellular;
  wrmInfo = self->_wrmInfo;
  if (wrmInfo)
  {
    wrmInfo->isLocalCellular = cellular;
  }
}

- (void)setIsVideoPaused:(BOOL)paused
{
  self->_isVideoPaused = paused;
  wrmInfo = self->_wrmInfo;
  if (wrmInfo)
  {
    wrmInfo->isVideoPaused = paused;
  }
}

- (void)sendStatusUpdate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d WRM status update cannot be null", v2, v3, v4, v5, v6);
}

- (void)reportWRMMetrics:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d WRM metric report cannot be null", v2, v3, v4, v5, v6);
}

@end