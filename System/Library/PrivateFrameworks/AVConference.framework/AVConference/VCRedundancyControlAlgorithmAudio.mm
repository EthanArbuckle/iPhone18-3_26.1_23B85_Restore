@interface VCRedundancyControlAlgorithmAudio
- (VCRedundancyControlAlgorithmAudio)initWithMode:(int)mode experimentManager:(id)manager;
- (double)decayFactorBasedOnABTestingGroupNumber:(id)number;
- (double)plrDecayFactor;
- (unsigned)updateRedundancyPercentageWithPLRThresholds:(double *)thresholds;
- (void)computeRedundancyInfo;
- (void)dealloc;
- (void)plrDecayFactor;
- (void)processNWConnectionStatistics:(tagVCStatisticsMessage *)statistics;
- (void)processRCNetworkStatistics:(tagVCStatisticsMessage *)statistics;
- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics;
@end

@implementation VCRedundancyControlAlgorithmAudio

- (VCRedundancyControlAlgorithmAudio)initWithMode:(int)mode experimentManager:(id)manager
{
  v42 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VCRedundancyControlAlgorithmAudio;
  v6 = [(VCRedundancyControlAlgorithmAudio *)&v23 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_plrDecayFactor = 0.0015;
  v6->_experimentManager = manager;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v25 = v8;
      v26 = 2080;
      v27 = "[VCRedundancyControlAlgorithmAudio initWithMode:experimentManager:]";
      v28 = 1024;
      v29 = 64;
      v30 = 1024;
      LODWORD(v31) = mode;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Initialize VCRedundancyControlAlgorithmAudio with mode=%d", buf, 0x22u);
    }
  }

  if (mode == 3)
  {
    v10 = 16.0;
    v11 = 4.0;
    v12 = 18.0;
    v13 = 6.0;
    goto LABEL_9;
  }

  if (mode == 2)
  {
    v10 = 6.0;
    v11 = 3.0;
    v12 = 8.0;
    v13 = 4.0;
LABEL_9:
    v7->_packetLossPercentageIncreaseThresholds[0] = VCDefaults_GetDoubleValueForKey(@"redundancyControllerIncreaseToLevel1PLR", 2.0);
    v7->_packetLossPercentageIncreaseThresholds[1] = VCDefaults_GetDoubleValueForKey(@"redundancyControllerIncreaseToLevel2PLR", v13);
    v7->_packetLossPercentageIncreaseThresholds[2] = VCDefaults_GetDoubleValueForKey(@"redundancyControllerIncreaseToLevel3PLR", v12);
    v7->_packetLossPercentageDecreaseThresholds[0] = VCDefaults_GetDoubleValueForKey(@"redundancyControllerDecreaseToLevel0PLR", 1.0);
    v7->_packetLossPercentageDecreaseThresholds[1] = VCDefaults_GetDoubleValueForKey(@"redundancyControllerDecreaseToLevel1PLR", v11);
    v7->_packetLossPercentageDecreaseThresholds[2] = VCDefaults_GetDoubleValueForKey(@"redundancyControllerDecreaseToLevel2PLR", v10);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v7->_packetLossPercentageIncreaseThresholds[0];
        v17 = v7->_packetLossPercentageIncreaseThresholds[1];
        v18 = v7->_packetLossPercentageIncreaseThresholds[2];
        v19 = v7->_packetLossPercentageDecreaseThresholds[0];
        v20 = v7->_packetLossPercentageDecreaseThresholds[1];
        v21 = v7->_packetLossPercentageDecreaseThresholds[2];
        *buf = 136317186;
        v25 = v14;
        v26 = 2080;
        v27 = "[VCRedundancyControlAlgorithmAudio initWithMode:experimentManager:]";
        v28 = 1024;
        v29 = 92;
        v30 = 2048;
        v31 = v16;
        v32 = 2048;
        v33 = v17;
        v34 = 2048;
        v35 = v18;
        v36 = 2048;
        v37 = v19;
        v38 = 2048;
        v39 = v20;
        v40 = 2048;
        v41 = v21;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Using Audio RED cutover points RED0to1=%0.2f RED1to2=%0.2f RED2to3=%0.2f RED1to0=%0.2f RED2to1=%0.2f RED3to2=%0.2f", buf, 0x58u);
      }
    }

    return v7;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCRedundancyControlAlgorithmAudio initWithMode:experimentManager:];
    }
  }

  return 0;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCRedundancyControlAlgorithmAudio;
  [(VCRedundancyControlAlgorithmAudio *)&v3 dealloc];
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics
{
  v28 = *MEMORY[0x1E69E9840];
  if (statistics->type == 11)
  {
    v9 = *(&statistics->var0.addRemoveEndPoint + 19);
    v25 = *(&statistics->var0.addRemoveEndPoint + 17);
    v26 = v9;
    v27 = *(&statistics->var0.addRemoveEndPoint + 21);
    v10 = *(&statistics->var0.addRemoveEndPoint + 11);
    v21 = *(&statistics->var0.addRemoveEndPoint + 9);
    v22 = v10;
    v11 = *(&statistics->var0.addRemoveEndPoint + 15);
    v23 = *(&statistics->var0.addRemoveEndPoint + 13);
    v24 = v11;
    v12 = *(&statistics->var0.addRemoveEndPoint + 3);
    v17 = *&statistics->var0.rtcpRR.lastSequenceNumber;
    v18 = v12;
    v13 = *(&statistics->var0.addRemoveEndPoint + 7);
    v19 = *(&statistics->var0.addRemoveEndPoint + 5);
    v20 = v13;
    v14 = *&statistics->isVCRCInternal;
    v15 = *&statistics->type;
    v16 = v14;
    [(VCRedundancyControlAlgorithmAudio *)self processNWConnectionStatistics:&v15];
  }

  else if (statistics->type == 3)
  {
    v3 = *(&statistics->var0.addRemoveEndPoint + 19);
    v25 = *(&statistics->var0.addRemoveEndPoint + 17);
    v26 = v3;
    v27 = *(&statistics->var0.addRemoveEndPoint + 21);
    v4 = *(&statistics->var0.addRemoveEndPoint + 11);
    v21 = *(&statistics->var0.addRemoveEndPoint + 9);
    v22 = v4;
    v5 = *(&statistics->var0.addRemoveEndPoint + 15);
    v23 = *(&statistics->var0.addRemoveEndPoint + 13);
    v24 = v5;
    v6 = *(&statistics->var0.addRemoveEndPoint + 3);
    v17 = *&statistics->var0.rtcpRR.lastSequenceNumber;
    v18 = v6;
    v7 = *(&statistics->var0.addRemoveEndPoint + 7);
    v19 = *(&statistics->var0.addRemoveEndPoint + 5);
    v20 = v7;
    v8 = *&statistics->isVCRCInternal;
    v15 = *&statistics->type;
    v16 = v8;
    [(VCRedundancyControlAlgorithmAudio *)self processRCNetworkStatistics:&v15];
  }
}

- (double)decayFactorBasedOnABTestingGroupNumber:(id)number
{
  v3 = [number intValue] - 1;
  if (v3 > 3)
  {
    return 0.0015;
  }

  else
  {
    return dbl_1DBD50D40[v3];
  }
}

- (void)processNWConnectionStatistics:(tagVCStatisticsMessage *)statistics
{
  if (statistics->type == 11)
  {
    offChannelTimeRatio = statistics->var0.nwConnection.var0.wifi.offChannelTimeRatio;
    self->_offChannelTimeRatio = offChannelTimeRatio;
    if (self->_isOffChannelActivityHigh)
    {
      v4 = offChannelTimeRatio >= 0.25;
    }

    else
    {
      v4 = offChannelTimeRatio > 0.4;
    }

    self->_isOffChannelActivityHigh = v4;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCRedundancyControlAlgorithmAudio processNWConnectionStatistics:];
    }
  }
}

- (double)plrDecayFactor
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = 0.0015;
  if (self->_experimentManager && VCFeatureFlagManager_AudioREDDecayFactorABTesting())
  {
    v10 = 0;
    if ([(VCExperimentManager *)self->_experimentManager experimentGroup:&v10 forExperiment:@"qrse_aud_red_decay_factor"]< 0)
    {
      [(VCRedundancyControlAlgorithmAudio *)@"qrse_aud_red_decay_factor" plrDecayFactor];
      v2 = *buf;
    }

    else
    {
      -[VCRedundancyControlAlgorithmAudio decayFactorBasedOnABTestingGroupNumber:](self, "decayFactorBasedOnABTestingGroupNumber:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10]);
      v2 = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v5;
          v12 = 2080;
          v13 = "[VCRedundancyControlAlgorithmAudio plrDecayFactor]";
          v14 = 1024;
          v15 = 158;
          v16 = 1024;
          LODWORD(v17) = v10;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: Found experiment group. decayFactorExperimentGroup=%d", buf, 0x22u);
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v7;
      v12 = 2080;
      v13 = "[VCRedundancyControlAlgorithmAudio plrDecayFactor]";
      v14 = 1024;
      v15 = 161;
      v16 = 2048;
      v17 = v2;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: Using plrDecayFactor=%f", buf, 0x26u);
    }
  }

  return v2;
}

- (void)processRCNetworkStatistics:(tagVCStatisticsMessage *)statistics
{
  v25 = *MEMORY[0x1E69E9840];
  if (statistics->type == 3)
  {
    p_statisticsID = &statistics->var0.network.statisticsID;
    if (statistics->var0.network.statisticsID)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        v7 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *p_statisticsID;
            v17 = 136315906;
            v18 = v5;
            v19 = 2080;
            v20 = "[VCRedundancyControlAlgorithmAudio processRCNetworkStatistics:]";
            v21 = 1024;
            v22 = 171;
            v23 = 2048;
            v24 = *&v8;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Filter out statistics not belong to this redundancyController with statisticsID:%llu", &v17, 0x26u);
          }
        }

        else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [VCRedundancyControlAlgorithmAudio processRCNetworkStatistics:];
        }
      }
    }

    else
    {
      if (!self->_plrDecayFactorSet)
      {
        [(VCRedundancyControlAlgorithmAudio *)self plrDecayFactor];
        self->_plrDecayFactor = v10;
        self->_plrDecayFactorSet = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            plrDecayFactor = self->_plrDecayFactor;
            v17 = 136315906;
            v18 = v11;
            v19 = 2080;
            v20 = "[VCRedundancyControlAlgorithmAudio processRCNetworkStatistics:]";
            v21 = 1024;
            v22 = 179;
            v23 = 2048;
            v24 = plrDecayFactor;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Selected plrDecayFactor=%0.4f for audio redundancy algorithm", &v17, 0x26u);
          }
        }
      }

      packetLossPercentageAudio = statistics->var0.network.packetLossPercentageAudio;
      packetLossPercentage = self->_packetLossPercentage;
      if (packetLossPercentageAudio <= packetLossPercentage)
      {
        v16 = packetLossPercentage * (1.0 - self->_plrDecayFactor) + self->_plrDecayFactor * packetLossPercentageAudio;
      }

      else
      {
        v16 = packetLossPercentage * 0.1 + packetLossPercentageAudio * 0.9;
      }

      self->_isPacketLossIncreasing = v16 >= self->_packetLossPercentageThreshold;
      self->_packetLossPercentage = v16;
      self->_burstLossPacketCount = statistics->var0.baseband.transmittedBytes;
      self->_isUplinkRecentlyCongested = statistics->var0.feedback.videoReceivedPackets != 0;
      [(VCRedundancyControlAlgorithmAudio *)self computeRedundancyInfo];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCRedundancyControlAlgorithmAudio processRCNetworkStatistics:];
    }
  }
}

- (void)computeRedundancyInfo
{
  if (!self->_isPacketLossIncreasing)
  {
    v3 = 48;
    goto LABEL_6;
  }

  if (!self->_isUplinkRecentlyCongested && !self->_isOffChannelActivityHigh)
  {
    v3 = 24;
LABEL_6:
    self->_redundancyPercentage = [(VCRedundancyControlAlgorithmAudio *)self updateRedundancyPercentageWithPLRThresholds:self + v3];
  }

  v4 = 20 * self->_burstLossPacketCount;
  v5 = v4;
  if (v4 < 41)
  {
    v5 = 40.0;
  }

  if (v4 >= 180)
  {
    v5 = 180.0;
  }

  self->_redundancyInterval = v5;
}

- (unsigned)updateRedundancyPercentageWithPLRThresholds:(double *)thresholds
{
  v4 = 0;
  v27 = *MEMORY[0x1E69E9840];
  do
  {
    if (self->_packetLossPercentage < thresholds[v4])
    {
      break;
    }

    ++v4;
  }

  while (v4 != 3);
  v5 = 100 * v4;
  if (100 * v4 != self->_redundancyPercentage)
  {
    v6 = (v4 - self->_isPacketLossIncreasing) & ~((v4 - self->_isPacketLossIncreasing) >> 31);
    if (v6 >= 2)
    {
      v6 = 2;
    }

    self->_packetLossPercentageThreshold = thresholds[v6];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        packetLossPercentage = self->_packetLossPercentage;
        packetLossPercentageThreshold = self->_packetLossPercentageThreshold;
        redundancyPercentage = self->_redundancyPercentage;
        v13 = 136316674;
        v14 = v7;
        v15 = 2080;
        v16 = "[VCRedundancyControlAlgorithmAudio updateRedundancyPercentageWithPLRThresholds:]";
        v17 = 1024;
        v18 = 225;
        v19 = 2048;
        v20 = packetLossPercentage;
        v21 = 2048;
        v22 = packetLossPercentageThreshold;
        v23 = 1024;
        v24 = redundancyPercentage;
        v25 = 1024;
        v26 = v5;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio redundancy percentage change due to packet loss: %lf, new threshold: %lf [%d to %d]", &v13, 0x3Cu);
      }
    }
  }

  return v5;
}

- (void)initWithMode:experimentManager:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  *&v3[4] = 2080;
  *&v3[6] = "[VCRedundancyControlAlgorithmAudio initWithMode:experimentManager:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid redundancy controller mode=%u", v2, *v3, "[VCRedundancyControlAlgorithmAudio initWithMode:experimentManager:]" >> 16, 85);
}

- (void)processNWConnectionStatistics:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  *&v3[4] = 2080;
  *&v3[6] = "[VCRedundancyControlAlgorithmAudio processNWConnectionStatistics:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl type=%d", v2, *v3, "[VCRedundancyControlAlgorithmAudio processNWConnectionStatistics:]" >> 16, 140);
}

- (void)plrDecayFactor
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCRedundancyControlAlgorithmAudio plrDecayFactor]";
      v10 = 1024;
      v11 = 156;
      v12 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: Experiment value not found for %@", &v6, 0x26u);
    }
  }

  *a2 = 0x3F589374BC6A7EFALL;
}

- (void)processRCNetworkStatistics:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  v2 = 2080;
  v3 = "[VCRedundancyControlAlgorithmAudio processRCNetworkStatistics:]";
  v4 = 1024;
  v5 = 167;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl", v1, 0x1Cu);
}

- (void)processRCNetworkStatistics:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  v3 = 2080;
  v4 = "[VCRedundancyControlAlgorithmAudio processRCNetworkStatistics:]";
  v5 = 1024;
  v6 = 171;
  v7 = 2048;
  v8 = v0;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Filter out statistics not belong to this redundancyController with statisticsID:%llu", v2, 0x26u);
}

@end