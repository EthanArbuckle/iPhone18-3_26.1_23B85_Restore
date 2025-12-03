@interface VCRedundancyControlAlgorithmVideoMultiway
- (VCRedundancyControlAlgorithmVideoMultiway)init;
- (void)updateRedundancyPercentage;
- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics;
@end

@implementation VCRedundancyControlAlgorithmVideoMultiway

- (VCRedundancyControlAlgorithmVideoMultiway)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCRedundancyControlAlgorithmVideoMultiway;
  result = [(VCRedundancyControlAlgorithmVideoMultiway *)&v3 init];
  if (result)
  {
    result->_redundancyPercentage = 0;
    result->_lastPercentageChange = NAN;
  }

  return result;
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics
{
  if (statistics->type == 3)
  {
    if (statistics->var0.network.statisticsID)
    {
      self->_currentTime = statistics->arrivalTime;
      self->_packetLossPercentage = statistics->var0.network.packetLossPercentage;

      [(VCRedundancyControlAlgorithmVideoMultiway *)self updateRedundancyPercentage];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCRedundancyControlAlgorithmVideoMultiway *)v3 updateRedundancyStrategyWithNetworkStatistics:v4];
    }
  }
}

- (void)updateRedundancyPercentage
{
  v28 = *MEMORY[0x1E69E9840];
  packetLossPercentage = self->_packetLossPercentage;
  plrEnvelope = self->_plrEnvelope;
  v5 = dbl_1DBD49B40[plrEnvelope < packetLossPercentage];
  self->_plrEnvelope = plrEnvelope * (1.0 - v5) + packetLossPercentage * v5;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_packetLossPercentage;
      v9 = self->_plrEnvelope;
      v17 = 136316162;
      v18 = v6;
      v19 = 2080;
      v20 = "[VCRedundancyControlAlgorithmVideoMultiway updateRedundancyPercentage]";
      v21 = 1024;
      v22 = 84;
      v23 = 2048;
      *v24 = v8;
      *&v24[8] = 2048;
      *v25 = v9;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Redundancy level _packetLossPercentage=%2.2f _plrEnvelope=%2.2f ", &v17, 0x30u);
    }
  }

  if (self->_plrEnvelope >= 0.5)
  {
    v10 = 50;
  }

  else
  {
    v10 = 0;
  }

  redundancyPercentage = self->_redundancyPercentage;
  if (redundancyPercentage != v10 && (v10 >= redundancyPercentage || self->_currentTime - self->_lastPercentageChange >= 5.0))
  {
    self->_redundancyPercentage = v10;
    self->_lastPercentageChange = self->_currentTime;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_redundancyPercentage;
        v15 = self->_packetLossPercentage;
        v16 = self->_plrEnvelope;
        v17 = 136316674;
        v18 = v12;
        v19 = 2080;
        v20 = "[VCRedundancyControlAlgorithmVideoMultiway updateRedundancyPercentage]";
        v21 = 1024;
        v22 = 94;
        v23 = 1024;
        *v24 = v14;
        *&v24[4] = 1024;
        *&v24[6] = v10;
        *v25 = 2048;
        *&v25[2] = v15;
        v26 = 2048;
        v27 = v16;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Redundancy level changed from _redundancyPercentage=%d to newRedundancyPercentage=%d _packetLossPercentage=%3.3f _plrEnvelope=%3.3f", &v17, 0x3Cu);
      }
    }
  }
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCRedundancyControlAlgorithmVideoMultiway updateRedundancyStrategyWithNetworkStatistics:]";
  v6 = 1024;
  v7 = 67;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl", &v2, 0x1Cu);
}

@end