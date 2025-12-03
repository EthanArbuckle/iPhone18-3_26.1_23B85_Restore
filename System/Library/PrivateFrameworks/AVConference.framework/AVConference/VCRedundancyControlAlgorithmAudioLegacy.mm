@interface VCRedundancyControlAlgorithmAudioLegacy
- (void)computeRedundancyInfo;
- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics;
@end

@implementation VCRedundancyControlAlgorithmAudioLegacy

- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics
{
  if (statistics->type == 3)
  {
    self->_packetLossPercentage = statistics->var0.network.packetLossPercentage;
    self->_isUplinkRecentlyCongested = statistics->var0.feedback.videoReceivedPackets != 0;

    [(VCRedundancyControlAlgorithmAudioLegacy *)self computeRedundancyInfo];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCRedundancyControlAlgorithmAudioLegacy *)v4 updateRedundancyStrategyWithNetworkStatistics:v5];
    }
  }
}

- (void)computeRedundancyInfo
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  selfCopy = self;
  v6 = 2080;
  v7 = "[VCRedundancyControlAlgorithmAudioLegacy computeRedundancyInfo]";
  v8 = 1024;
  v9 = 61;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Redundancy percentage: %d is out of bound in legacy duplication", &v4, 0x22u);
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCRedundancyControlAlgorithmAudioLegacy updateRedundancyStrategyWithNetworkStatistics:]";
  v6 = 1024;
  v7 = 24;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl", &v2, 0x1Cu);
}

@end