@interface VCRedundancyControllerVideo
- (VCRedundancyControllerVideo)initWithDelegate:(id)a3 mode:(int)a4 parameters:(VCRedundancyControllerVideoParameters_t)a5;
- (void)dealloc;
- (void)loadDefaultSettings;
- (void)reportRedundancyPercentage:(unsigned int)a3 redundancyInterval:(double)a4;
- (void)resetRedundancyStrategy:(id *)a3;
- (void)setBtNotificationMonitor;
- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)a3;
@end

@implementation VCRedundancyControllerVideo

- (VCRedundancyControllerVideo)initWithDelegate:(id)a3 mode:(int)a4 parameters:(VCRedundancyControllerVideoParameters_t)a5
{
  v5 = *&a5.var1;
  var0 = a5.var0;
  v7 = *&a4;
  v36 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = VCRedundancyControllerVideo;
  v9 = [(VCRedundancyControllerVideo *)&v29 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_31;
  }

  objc_storeWeak(&v9->_redundancyControllerDelegate, a3);
  if ((v5 & 0x100000000) == 0)
  {
    statisticsCollector = var0;
    v10->_statisticsCollector = statisticsCollector;
    goto LABEL_6;
  }

  v12 = [[AVCStatisticsCollector alloc] initForSimulation:0 useExternalThread:1];
  v10->_statisticsCollector = v12;
  if (!v12)
  {
    [VCRedundancyControllerVideo initWithDelegate:mode:parameters:];
LABEL_31:

    return 0;
  }

  [(AVCStatisticsCollector *)v12 setMediaControlInfoFECFeedbackVersion:BYTE5(v5)];
  v10->_isUsingInternalStatisticsCollector = 1;
  [(AVCStatisticsCollector *)v10->_statisticsCollector start];
  statisticsCollector = v10->_statisticsCollector;
LABEL_6:
  v10->_mode = v7;
  v10->_type = 0;
  v10->_btNotificationMonitorToken = 0;
  v10->_mediaControlInfoFECFeedbackVersion = [(AVCStatisticsCollector *)statisticsCollector mediaControlInfoFECFeedbackVersion];
  RSUtil_SetOptimizationMode([+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-fec-vectorization-enabled" userDefaultKey:@"isRSUOptimizationEnabled" defaultValue:&unk_1F57985E0 isDoubleType:{0), "integerValue"}]);
  v10->_isNWConnectionEnabled = _os_feature_enabled_impl();
  mode = v10->_mode;
  if (mode <= 6)
  {
    if ((mode - 5) < 2)
    {
      v10->_algorithm = [[VCRedundancyControlAlgorithmVideo alloc] initWithRedundancyControllerMode:v7 maxAllowedRedundancyPercentage:v5 mediaControlInfoFECFeedbackVersion:v10->_mediaControlInfoFECFeedbackVersion isFrameBasedFECEnabled:HIWORD(v5) & 1];
      v10->_type = 3;
      v15 = 1;
      goto LABEL_25;
    }

    if (!mode)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v31 = v18;
          v32 = 2080;
          v33 = "[VCRedundancyControllerVideo initWithDelegate:mode:parameters:]";
          v34 = 1024;
          v35 = 85;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Video redundancy is disabled.", buf, 0x1Cu);
        }
      }

      goto LABEL_21;
    }

LABEL_18:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCRedundancyControllerVideo initWithDelegate:v20 mode:&v10->_mode parameters:v21];
      }
    }

LABEL_21:
    v15 = 0;
    goto LABEL_25;
  }

  if ((mode - 9) >= 2)
  {
    if (mode == 7)
    {
      v14 = VCRedundancyControlAlgorithmVideoMultiway;
      goto LABEL_23;
    }

    if (mode == 8)
    {
      v14 = VCRedundancyControlAlgorithmVideoIpadCompanion;
LABEL_23:
      v15 = 0;
      v10->_algorithm = objc_alloc_init(v14);
      v17 = 3;
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v16 = [[VCRedundancyControlAlgorithmVideo alloc] initWithRedundancyControllerMode:v7 maxAllowedRedundancyPercentage:v5 mediaControlInfoFECFeedbackVersion:v10->_mediaControlInfoFECFeedbackVersion isFrameBasedFECEnabled:HIWORD(v5) & 1];
  v15 = 0;
  v10->_algorithm = v16;
  v17 = 13;
LABEL_24:
  v10->_type = v17;
LABEL_25:
  v22 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v10];
  v23 = v10->_statisticsCollector;
  type = v10->_type;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64__VCRedundancyControllerVideo_initWithDelegate_mode_parameters___block_invoke;
  v28[3] = &unk_1E85F3998;
  v28[4] = v22;
  [(AVCStatisticsCollector *)v23 registerStatisticsChangeHandlerWithType:type handler:v28];
  if (v15 && v10->_isNWConnectionEnabled)
  {
    v25 = v10->_statisticsCollector;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64__VCRedundancyControllerVideo_initWithDelegate_mode_parameters___block_invoke_2;
    v27[3] = &unk_1E85F3998;
    v27[4] = v22;
    [(AVCStatisticsCollector *)v25 registerStatisticsChangeHandlerWithType:11 handler:v27];
  }

  if (_os_feature_enabled_impl())
  {
    [(VCRedundancyControllerVideo *)v10 setBtNotificationMonitor];
  }

  return v10;
}

void __64__VCRedundancyControllerVideo_initWithDelegate_mode_parameters___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
  v4 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v4;
  v11 = *(a2 + 192);
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v6 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v6;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v8 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v8;
  v9 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v9;
  [v3 updateRedundancyStrategyWithNetworkStatistics:v10];
  if (v3)
  {
    CFRelease(v3);
  }
}

void __64__VCRedundancyControllerVideo_initWithDelegate_mode_parameters___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
  v4 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v4;
  v11 = *(a2 + 192);
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v6 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v6;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v8 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v8;
  v9 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v9;
  [v3 updateRedundancyStrategyWithNetworkStatistics:v10];
  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_isUsingInternalStatisticsCollector)
  {
    [(AVCStatisticsCollector *)self->_statisticsCollector stop];
  }

  [+[VCBTNotificationMonitor sharedInstance](VCBTNotificationMonitor unregisterBTNotificationHandler:"unregisterBTNotificationHandler:", &self->_btNotificationMonitorToken];
  objc_storeWeak(&self->_redundancyControllerDelegate, 0);

  v3.receiver = self;
  v3.super_class = VCRedundancyControllerVideo;
  [(VCRedundancyControllerVideo *)&v3 dealloc];
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_type == 3 && (v5 = a3->var0.network.statisticsID) != 0 && v5 != self->_statisticsID)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v17 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          statisticsID = self->_statisticsID;
          v19 = a3->var0.network.statisticsID;
          *v22 = 136316162;
          *&v22[4] = v15;
          *&v22[12] = 2080;
          *&v22[14] = "[VCRedundancyControllerVideo updateRedundancyStrategyWithNetworkStatistics:]";
          *&v22[22] = 1024;
          *&v22[24] = 137;
          *&v22[28] = 2048;
          *&v22[30] = statisticsID;
          *&v22[38] = 2048;
          *&v22[40] = v19;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Filter out statistics not belong to this redundancyController with id:%llu, statisticsID:%llu", v22, 0x30u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v20 = self->_statisticsID;
        v21 = a3->var0.network.statisticsID;
        *v22 = 136316162;
        *&v22[4] = v15;
        *&v22[12] = 2080;
        *&v22[14] = "[VCRedundancyControllerVideo updateRedundancyStrategyWithNetworkStatistics:]";
        *&v22[22] = 1024;
        *&v22[24] = 137;
        *&v22[28] = 2048;
        *&v22[30] = v20;
        *&v22[38] = 2048;
        *&v22[40] = v21;
        _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Filter out statistics not belong to this redundancyController with id:%llu, statisticsID:%llu", v22, 0x30u);
      }
    }
  }

  else
  {
    algorithm = self->_algorithm;
    v7 = *(&a3->var0.addRemoveEndPoint + 19);
    v30 = *(&a3->var0.addRemoveEndPoint + 17);
    v31 = v7;
    v32 = *(&a3->var0.addRemoveEndPoint + 21);
    v8 = *(&a3->var0.addRemoveEndPoint + 11);
    v26 = *(&a3->var0.addRemoveEndPoint + 9);
    v27 = v8;
    v9 = *(&a3->var0.addRemoveEndPoint + 15);
    v28 = *(&a3->var0.addRemoveEndPoint + 13);
    v29 = v9;
    v10 = *(&a3->var0.addRemoveEndPoint + 3);
    *&v22[32] = *&a3->var0.rtcpRR.lastSequenceNumber;
    v23 = v10;
    v11 = *(&a3->var0.addRemoveEndPoint + 7);
    v24 = *(&a3->var0.addRemoveEndPoint + 5);
    v25 = v11;
    v12 = *&a3->isVCRCInternal;
    *v22 = *&a3->type;
    *&v22[16] = v12;
    [(VCRedundancyControlAlgorithm *)algorithm updateRedundancyStrategyWithNetworkStatistics:v22];
    type = self->_type;
    if (type == 13 || type == 3)
    {
      v14 = [(VCRedundancyControlAlgorithm *)self->_algorithm redundancyPercentage];
      [(VCRedundancyControlAlgorithm *)self->_algorithm redundancyInterval];
      [(VCRedundancyControllerVideo *)self reportRedundancyPercentage:v14 redundancyInterval:?];
    }
  }
}

- (void)reportRedundancyPercentage:(unsigned int)a3 redundancyInterval:(double)a4
{
  LODWORD(v5) = a3;
  v19 = *MEMORY[0x1E69E9840];
  [(VCRedundancyControllerVideo *)self loadDefaultSettings];
  forceRedundancyPercentage = self->_forceRedundancyPercentage;
  if (forceRedundancyPercentage >= 0)
  {
    v5 = forceRedundancyPercentage;
  }

  else
  {
    v5 = v5;
  }

  if (self->_currentRedundancyPercentage != v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        currentRedundancyPercentage = self->_currentRedundancyPercentage;
        mode = self->_mode;
        *buf = 136316418;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = "[VCRedundancyControllerVideo reportRedundancyPercentage:redundancyInterval:]";
        *&buf[22] = 1024;
        *&buf[24] = 167;
        *&buf[28] = 1024;
        *&buf[30] = currentRedundancyPercentage;
        *&buf[34] = 1024;
        *&buf[36] = v5;
        *&buf[40] = 1024;
        *&buf[42] = mode;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Video redundancy percentage changed from %d to %d with mode %d", buf, 0x2Eu);
      }
    }

    self->_currentRedundancyPercentage = v5;
    v12 = MEMORY[0x1E1289F20](&self->_redundancyControllerDelegate);
    [v12 redundancyController:self redundancyPercentageDidChange:v5];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (a4 != 0.0 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = "[VCRedundancyControllerVideo reportRedundancyPercentage:redundancyInterval:]";
      *&buf[22] = 1024;
      *&buf[24] = 175;
      *&buf[28] = 2048;
      *&buf[30] = a4;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Video redundancy interval %f, which should be 0 since we don't support cross-frame FEC yet", buf, 0x26u);
    }
  }

  if (VCMediaControlInfo_IsLossStatsEnabled(self->_mediaControlInfoFECFeedbackVersion))
  {
    memset(buf, 170, 0x202uLL);
    algorithm = self->_algorithm;
    if (algorithm)
    {
      [(VCRedundancyControlAlgorithm *)algorithm getFecLevelPerFrameSizeVector];
      if (*buf)
      {
        v16 = MEMORY[0x1E1289F20](&self->_redundancyControllerDelegate);
        if (objc_opt_respondsToSelector())
        {
          memcpy(__dst, buf, sizeof(__dst));
          [v16 redundancyController:self redundancyVectorDidChange:__dst];
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }
    }
  }
}

- (void)loadDefaultSettings
{
  v3 = micro();
  if (v3 - self->_lastDefaultSettingLoadingTime > 3.0)
  {
    self->_forceRedundancyPercentage = [+[VCDefaults sharedInstance](VCDefaults redundancyControlForceVideoRedundancyPercentage];
    self->_lastDefaultSettingLoadingTime = v3;
  }
}

- (void)setBtNotificationMonitor
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v12 = 205;
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
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
      OUTLINED_FUNCTION_0_0();
      v2 = &dword_1DB56E000;
      v5 = " [%s] %s:%d %@(%p) Failed to register for BT notifications";
      v6 = &v10;
      v3 = v9;
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_11;
    }
  }
}

uint64_t __55__VCRedundancyControllerVideo_setBtNotificationMonitor__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 resetRedundancyStrategy:a2];
}

- (void)resetRedundancyStrategy:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      var0 = a3->var0;
      var1 = a3->var1;
      *v17 = 136316162;
      *&v17[4] = v6;
      *&v17[12] = 2080;
      *&v17[14] = "[VCRedundancyControllerVideo resetRedundancyStrategy:]";
      *&v17[22] = 1024;
      LODWORD(v18) = 213;
      WORD2(v18) = 2080;
      *(&v18 + 6) = var0;
      HIWORD(v18) = 1024;
      LODWORD(v19) = var1;
      v10 = " [%s] %s:%d Reset redundancy strategy, BT device %s state=%d while WLAN's on 2.4GHz";
      v11 = v7;
      v12 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCRedundancyControllerVideo *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v15 = a3->var0;
      v16 = a3->var1;
      *v17 = 136316674;
      *&v17[4] = v13;
      *&v17[12] = 2080;
      *&v17[14] = "[VCRedundancyControllerVideo resetRedundancyStrategy:]";
      *&v17[22] = 1024;
      LODWORD(v18) = 213;
      WORD2(v18) = 2112;
      *(&v18 + 6) = v5;
      HIWORD(v18) = 2048;
      v19 = self;
      LOWORD(v20) = 2080;
      *(&v20 + 2) = v15;
      WORD5(v20) = 1024;
      HIDWORD(v20) = v16;
      v10 = " [%s] %s:%d %@(%p) Reset redundancy strategy, BT device %s state=%d while WLAN's on 2.4GHz";
      v11 = v14;
      v12 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v17, v12);
LABEL_13:
    [(VCRedundancyControlAlgorithm *)self->_algorithm setIsRedundancyStrategyResetPending:1, *v17, *&v17[16], v18, v19, v20];
  }
}

- (void)initWithDelegate:mode:parameters:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithDelegate:(uint64_t)a1 mode:(int *)a2 parameters:(os_log_t)log .cold.2(uint64_t a1, int *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCRedundancyControllerVideo initWithDelegate:mode:parameters:]";
  v8 = 1024;
  v9 = 88;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d In-appropriate mode %d for VCRedundancyControllerVideo", &v4, 0x22u);
}

@end