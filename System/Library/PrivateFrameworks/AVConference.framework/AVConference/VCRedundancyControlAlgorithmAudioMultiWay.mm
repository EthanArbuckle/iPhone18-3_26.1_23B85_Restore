@interface VCRedundancyControlAlgorithmAudioMultiWay
- (VCRedundancyControlAlgorithmAudioMultiWay)init;
- (unsigned)updateRedundancyPercentageWithPLRThresholds:(unsigned int *)a3;
- (void)computeRedundancyInfo;
- (void)processNWConnectionStatistics:(tagVCStatisticsMessage *)a3;
- (void)processRCNetworkStatistics:(tagVCStatisticsMessage *)a3;
- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)a3;
@end

@implementation VCRedundancyControlAlgorithmAudioMultiWay

- (VCRedundancyControlAlgorithmAudioMultiWay)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCRedundancyControlAlgorithmAudioMultiWay;
  result = [(VCRedundancyControlAlgorithmAudioMultiWay *)&v3 init];
  if (result)
  {
    *result->_packetLossPercentageIncreaseThresholds = xmmword_1DBD49E00;
    *&result->_packetLossPercentageDecreaseThresholds[1] = 0x600000003;
  }

  return result;
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3->type == 11)
  {
    v9 = *(&a3->var0.addRemoveEndPoint + 19);
    v25 = *(&a3->var0.addRemoveEndPoint + 17);
    v26 = v9;
    v27 = *(&a3->var0.addRemoveEndPoint + 21);
    v10 = *(&a3->var0.addRemoveEndPoint + 11);
    v21 = *(&a3->var0.addRemoveEndPoint + 9);
    v22 = v10;
    v11 = *(&a3->var0.addRemoveEndPoint + 15);
    v23 = *(&a3->var0.addRemoveEndPoint + 13);
    v24 = v11;
    v12 = *(&a3->var0.addRemoveEndPoint + 3);
    v17 = *&a3->var0.rtcpRR.lastSequenceNumber;
    v18 = v12;
    v13 = *(&a3->var0.addRemoveEndPoint + 7);
    v19 = *(&a3->var0.addRemoveEndPoint + 5);
    v20 = v13;
    v14 = *&a3->isVCRCInternal;
    v15 = *&a3->type;
    v16 = v14;
    [(VCRedundancyControlAlgorithmAudioMultiWay *)self processNWConnectionStatistics:&v15];
  }

  else if (a3->type == 3)
  {
    v3 = *(&a3->var0.addRemoveEndPoint + 19);
    v25 = *(&a3->var0.addRemoveEndPoint + 17);
    v26 = v3;
    v27 = *(&a3->var0.addRemoveEndPoint + 21);
    v4 = *(&a3->var0.addRemoveEndPoint + 11);
    v21 = *(&a3->var0.addRemoveEndPoint + 9);
    v22 = v4;
    v5 = *(&a3->var0.addRemoveEndPoint + 15);
    v23 = *(&a3->var0.addRemoveEndPoint + 13);
    v24 = v5;
    v6 = *(&a3->var0.addRemoveEndPoint + 3);
    v17 = *&a3->var0.rtcpRR.lastSequenceNumber;
    v18 = v6;
    v7 = *(&a3->var0.addRemoveEndPoint + 7);
    v19 = *(&a3->var0.addRemoveEndPoint + 5);
    v20 = v7;
    v8 = *&a3->isVCRCInternal;
    v15 = *&a3->type;
    v16 = v8;
    [(VCRedundancyControlAlgorithmAudioMultiWay *)self processRCNetworkStatistics:&v15];
  }
}

- (void)processNWConnectionStatistics:(tagVCStatisticsMessage *)a3
{
  if (a3->type == 11)
  {
    offChannelTimeRatio = a3->var0.nwConnection.var0.wifi.offChannelTimeRatio;
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
      [VCRedundancyControlAlgorithmAudioMultiWay processNWConnectionStatistics:];
    }
  }
}

- (void)processRCNetworkStatistics:(tagVCStatisticsMessage *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3->type == 3)
  {
    p_statisticsID = &a3->var0.network.statisticsID;
    if (a3->var0.network.statisticsID)
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
            v7 = *p_statisticsID;
            v15 = 136315906;
            v16 = v4;
            v17 = 2080;
            v18 = "[VCRedundancyControlAlgorithmAudioMultiWay processRCNetworkStatistics:]";
            v19 = 1024;
            v20 = 95;
            v21 = 2048;
            v22 = v7;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Filter out statistics not belong to this redundancyController with statisticsID:%llu", &v15, 0x26u);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [VCRedundancyControlAlgorithmAudioMultiWay processRCNetworkStatistics:];
        }
      }
    }

    else
    {
      packetLossPercentage = a3->var0.network.packetLossPercentage;
      packetLossPercentageThreshold = self->_packetLossPercentageThreshold;
      plrEnvelope = self->_plrEnvelope;
      v13 = dbl_1DBD49B40[plrEnvelope < packetLossPercentage];
      v14 = plrEnvelope * (1.0 - v13) + packetLossPercentage * v13;
      self->_plrEnvelope = v14;
      self->_isPacketLossIncreasing = v14 >= packetLossPercentageThreshold;
      self->_packetLossPercentage = packetLossPercentage;
      self->_burstLossPacketCount = a3->var0.baseband.transmittedBytes;
      self->_isUplinkRecentlyCongested = a3->var0.feedback.videoReceivedPackets != 0;

      [(VCRedundancyControlAlgorithmAudioMultiWay *)self computeRedundancyInfo];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCRedundancyControlAlgorithmAudioMultiWay *)v8 processRCNetworkStatistics:v9];
    }
  }
}

- (void)computeRedundancyInfo
{
  if (!self->_isPacketLossIncreasing)
  {
    v3 = 36;
    goto LABEL_6;
  }

  if (!self->_isUplinkRecentlyCongested && !self->_isOffChannelActivityHigh)
  {
    v3 = 24;
LABEL_6:
    self->_redundancyPercentage = [(VCRedundancyControlAlgorithmAudioMultiWay *)self updateRedundancyPercentageWithPLRThresholds:self + v3];
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

- (unsigned)updateRedundancyPercentageWithPLRThresholds:(unsigned int *)a3
{
  v5 = 0;
  v32 = *MEMORY[0x1E69E9840];
  plrEnvelope = self->_plrEnvelope;
  do
  {
    LODWORD(v3) = a3[v5];
    v3 = *&v3;
    if (plrEnvelope < v3)
    {
      break;
    }

    ++v5;
  }

  while (v5 != 3);
  v7 = 100 * v5;
  if (100 * v5 != self->_redundancyPercentage)
  {
    v8 = (v5 - self->_isPacketLossIncreasing) & ~((v5 - self->_isPacketLossIncreasing) >> 31);
    if (v8 >= 2)
    {
      v8 = 2;
    }

    LODWORD(plrEnvelope) = a3[v8];
    self->_packetLossPercentageThreshold = *&plrEnvelope;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        packetLossPercentage = self->_packetLossPercentage;
        packetLossPercentageThreshold = self->_packetLossPercentageThreshold;
        redundancyPercentage = self->_redundancyPercentage;
        v14 = self->_plrEnvelope;
        v16 = 136316930;
        v17 = v9;
        v18 = 2080;
        v19 = "[VCRedundancyControlAlgorithmAudioMultiWay updateRedundancyPercentageWithPLRThresholds:]";
        v20 = 1024;
        v21 = 136;
        v22 = 2048;
        v23 = packetLossPercentage;
        v24 = 2048;
        v25 = packetLossPercentageThreshold;
        v26 = 1024;
        v27 = redundancyPercentage;
        v28 = 1024;
        v29 = v7;
        v30 = 2048;
        v31 = v14;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio redundancy percentage change due to packet loss: %2.3f, new threshold: %2.3f [%d to %d] plrEnvelope=%2.3f", &v16, 0x46u);
      }
    }
  }

  return v7;
}

- (void)processNWConnectionStatistics:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  v3 = "[VCRedundancyControlAlgorithmAudioMultiWay processNWConnectionStatistics:]";
  v4 = 1024;
  v5 = 78;
  v6 = 1024;
  v7 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl type=%d", v2, 0x22u);
}

- (void)processRCNetworkStatistics:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCRedundancyControlAlgorithmAudioMultiWay processRCNetworkStatistics:]";
  v6 = 1024;
  v7 = 91;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl", &v2, 0x1Cu);
}

- (void)processRCNetworkStatistics:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  v3 = "[VCRedundancyControlAlgorithmAudioMultiWay processRCNetworkStatistics:]";
  v4 = 1024;
  v5 = 95;
  v6 = 2048;
  v7 = v0;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Filter out statistics not belong to this redundancyController with statisticsID:%llu", v2, 0x26u);
}

@end