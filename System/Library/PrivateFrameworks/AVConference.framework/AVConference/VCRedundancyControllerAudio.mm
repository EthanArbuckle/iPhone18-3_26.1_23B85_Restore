@interface VCRedundancyControllerAudio
- (VCRedundancyControllerAudio)initWithDelegate:(id)delegate statisticsCollector:(id)collector mode:(int)mode experimentManager:(id)manager;
- (void)dealloc;
- (void)registerStatistics:(id)statistics redundancyControllerMode:(int)mode;
- (void)reportRedundancyPercentage:(unsigned int)percentage redundancyInterval:(double)interval;
- (void)unregisterStatistics;
- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics;
@end

@implementation VCRedundancyControllerAudio

- (VCRedundancyControllerAudio)initWithDelegate:(id)delegate statisticsCollector:(id)collector mode:(int)mode experimentManager:(id)manager
{
  v7 = *&mode;
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VCRedundancyControllerAudio;
  v10 = [(VCRedundancyControllerAudio *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_redundancyControllerDelegate, delegate);
    collectorCopy = collector;
    v11->_mode = v7;
    v11->_statisticsCollector = collectorCopy;
    v11->_networkStatisticsType = 0;
    v11->_experimentManager = manager;
    mode = v11->_mode;
    if (mode <= 1)
    {
      if (!mode)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v23 = v17;
            v24 = 2080;
            v25 = "[VCRedundancyControllerAudio initWithDelegate:statisticsCollector:mode:experimentManager:]";
            v26 = 1024;
            v27 = 57;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio redundancy is disabled.", buf, 0x1Cu);
          }
        }

        goto LABEL_12;
      }

      if (mode == 1)
      {
        v15 = VCRedundancyControlAlgorithmAudioLegacy;
LABEL_10:
        v14 = objc_alloc_init(v15);
        goto LABEL_11;
      }
    }

    else
    {
      if ((mode - 2) < 2)
      {
        v14 = [[VCRedundancyControlAlgorithmAudio alloc] initWithMode:v11->_mode experimentManager:manager];
LABEL_11:
        v11->_algorithm = v14;
        v11->_networkStatisticsType = 3;
LABEL_12:
        [(VCRedundancyControllerAudio *)v11 registerStatistics:collector redundancyControllerMode:v7];
        return v11;
      }

      if (mode == 4)
      {
        v15 = VCRedundancyControlAlgorithmAudioMultiWay;
        goto LABEL_10;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCRedundancyControllerAudio initWithDelegate:v19 statisticsCollector:&v11->_mode mode:v20 experimentManager:?];
      }
    }

    goto LABEL_12;
  }

  return v11;
}

- (void)registerStatistics:(id)statistics redundancyControllerMode:(int)mode
{
  v4 = *&mode;
  v10[5] = *MEMORY[0x1E69E9840];
  statisticsCollector = self->_statisticsCollector;
  networkStatisticsType = self->_networkStatisticsType;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__VCRedundancyControllerAudio_registerStatistics_redundancyControllerMode___block_invoke;
  v10[3] = &unk_1E85F3998;
  v10[4] = self;
  self->_statisticRegistrationIndexNetwork = [(AVCStatisticsCollector *)statisticsCollector registerStatisticsChangeHandlerWithType:networkStatisticsType handler:v10];
  self->_isNWConnectionEnabled = _os_feature_enabled_impl();
  self->_statisticRegistrationIndexNWConnection = -1;
  if ([(VCRedundancyControllerAudio *)self isNWConnectionMonitorSupportedForMode:v4])
  {
    if (self->_isNWConnectionEnabled)
    {
      v8 = self->_statisticsCollector;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __75__VCRedundancyControllerAudio_registerStatistics_redundancyControllerMode___block_invoke_2;
      v9[3] = &unk_1E85F3998;
      v9[4] = self;
      self->_statisticRegistrationIndexNWConnection = [(AVCStatisticsCollector *)v8 registerStatisticsChangeHandlerWithType:11 handler:v9];
    }
  }
}

uint64_t __75__VCRedundancyControllerAudio_registerStatistics_redundancyControllerMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v3;
  v11 = *(a2 + 192);
  v4 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v4;
  v5 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return [v2 updateRedundancyStrategyWithNetworkStatistics:v10];
}

uint64_t __75__VCRedundancyControllerAudio_registerStatistics_redundancyControllerMode___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v3;
  v11 = *(a2 + 192);
  v4 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v4;
  v5 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  return [v2 updateRedundancyStrategyWithNetworkStatistics:v10];
}

- (void)unregisterStatistics
{
  [(AVCStatisticsCollector *)self->_statisticsCollector unregisterStatisticsChangeHandlerWithType:self->_networkStatisticsType handlerIndex:self->_statisticRegistrationIndexNetwork];
  if ((self->_statisticRegistrationIndexNWConnection & 0x80000000) == 0)
  {
    statisticsCollector = self->_statisticsCollector;

    [(AVCStatisticsCollector *)statisticsCollector unregisterStatisticsChangeHandlerWithType:11 handlerIndex:?];
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_redundancyControllerDelegate, 0);

  v3.receiver = self;
  v3.super_class = VCRedundancyControllerAudio;
  [(VCRedundancyControllerAudio *)&v3 dealloc];
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics
{
  v14 = *MEMORY[0x1E69E9840];
  algorithm = self->_algorithm;
  v5 = *(&statistics->var0.addRemoveEndPoint + 19);
  v12[10] = *(&statistics->var0.addRemoveEndPoint + 17);
  v12[11] = v5;
  v13 = *(&statistics->var0.addRemoveEndPoint + 21);
  v6 = *(&statistics->var0.addRemoveEndPoint + 11);
  v12[6] = *(&statistics->var0.addRemoveEndPoint + 9);
  v12[7] = v6;
  v7 = *(&statistics->var0.addRemoveEndPoint + 15);
  v12[8] = *(&statistics->var0.addRemoveEndPoint + 13);
  v12[9] = v7;
  v8 = *(&statistics->var0.addRemoveEndPoint + 3);
  v12[2] = *&statistics->var0.rtcpRR.lastSequenceNumber;
  v12[3] = v8;
  v9 = *(&statistics->var0.addRemoveEndPoint + 7);
  v12[4] = *(&statistics->var0.addRemoveEndPoint + 5);
  v12[5] = v9;
  v10 = *&statistics->isVCRCInternal;
  v12[0] = *&statistics->type;
  v12[1] = v10;
  [(VCRedundancyControlAlgorithm *)algorithm updateRedundancyStrategyWithNetworkStatistics:v12];
  redundancyPercentage = [(VCRedundancyControlAlgorithm *)self->_algorithm redundancyPercentage];
  [(VCRedundancyControlAlgorithm *)self->_algorithm redundancyInterval];
  [(VCRedundancyControllerAudio *)self reportRedundancyPercentage:redundancyPercentage redundancyInterval:?];
}

- (void)reportRedundancyPercentage:(unsigned int)percentage redundancyInterval:(double)interval
{
  v29 = *MEMORY[0x1E69E9840];
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceAudioRedundancyPercentage", *&percentage);
  v7 = VCDefaults_GetIntValueForKey(@"forceAudioRedundancyInterval", interval);
  if (self->_currentRedundancyPercentage != IntValueForKey)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        currentRedundancyPercentage = self->_currentRedundancyPercentage;
        mode = self->_mode;
        v18 = 136316674;
        v19 = v8;
        v20 = 2080;
        v21 = "[VCRedundancyControllerAudio reportRedundancyPercentage:redundancyInterval:]";
        v22 = 1024;
        v23 = 109;
        v24 = 1024;
        *v25 = currentRedundancyPercentage;
        *&v25[4] = 1024;
        *&v25[6] = IntValueForKey;
        LOWORD(v26) = 1024;
        *(&v26 + 2) = mode;
        HIWORD(v26) = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio redundancy percentage changed from %d to %d with mode %d, %p", &v18, 0x38u);
      }
    }

    self->_currentRedundancyPercentage = IntValueForKey;
    v12 = MEMORY[0x1E1289F20](&self->_redundancyControllerDelegate);
    [v12 redundancyController:self redundancyPercentageDidChange:IntValueForKey];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  if (self->_currentRedundancyInterval != v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        currentRedundancyInterval = self->_currentRedundancyInterval;
        v16 = self->_mode;
        v18 = 136316674;
        v19 = v13;
        v20 = 2080;
        v21 = "[VCRedundancyControllerAudio reportRedundancyPercentage:redundancyInterval:]";
        v22 = 1024;
        v23 = 117;
        v24 = 2048;
        *v25 = currentRedundancyInterval;
        *&v25[8] = 2048;
        v26 = v7;
        LOWORD(selfCopy) = 1024;
        *(&selfCopy + 2) = v16;
        HIWORD(selfCopy) = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio redundancy interval changed from %f to %f with mode %d, %p", &v18, 0x40u);
      }
    }

    self->_currentRedundancyInterval = v7;
    v17 = MEMORY[0x1E1289F20](&self->_redundancyControllerDelegate);
    [v17 redundancyController:self redundancyIntervalDidChange:v7];
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

- (void)initWithDelegate:(os_log_t)log statisticsCollector:mode:experimentManager:.cold.1(uint64_t a1, int *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCRedundancyControllerAudio initWithDelegate:statisticsCollector:mode:experimentManager:]";
  v8 = 1024;
  v9 = 60;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d In-appropriate mode %d for VCRedundancyController", &v4, 0x22u);
}

@end