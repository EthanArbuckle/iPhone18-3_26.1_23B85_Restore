@interface VCRedundancyControlAlgorithmVideoIpadCompanion
- (unsigned)computeRedundancyWithBurstyLoss;
- (unsigned)computeRedundancyWithLossPercentage;
- (void)updateBurstyLoss:(unsigned int)loss;
- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics;
@end

@implementation VCRedundancyControlAlgorithmVideoIpadCompanion

- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics
{
  if (statistics->type == 3)
  {
    self->_packetLossPercentage = statistics->var0.network.packetLossPercentage;
    [(VCRedundancyControlAlgorithmVideoIpadCompanion *)self updateBurstyLoss:statistics->var0.baseband.transmittedBytes];
    computeRedundancyWithLossPercentage = [(VCRedundancyControlAlgorithmVideoIpadCompanion *)self computeRedundancyWithLossPercentage];
    computeRedundancyWithBurstyLoss = [(VCRedundancyControlAlgorithmVideoIpadCompanion *)self computeRedundancyWithBurstyLoss];
    if (computeRedundancyWithLossPercentage <= computeRedundancyWithBurstyLoss)
    {
      v6 = computeRedundancyWithBurstyLoss;
    }

    else
    {
      v6 = computeRedundancyWithLossPercentage;
    }

    self->_redundancyPercentage = v6;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCRedundancyControlAlgorithmVideoIpadCompanion *)v7 updateRedundancyStrategyWithNetworkStatistics:v8];
    }
  }
}

- (void)updateBurstyLoss:(unsigned int)loss
{
  self->_burstyLoss[self->_burstyLossArrayIndex] = loss;
  self->_burstyLossArrayIndex = (self->_burstyLossArrayIndex + 1) % 0x1F4;
  burstyLossArraySize = self->_burstyLossArraySize;
  if (burstyLossArraySize <= 0x1F3)
  {
    self->_burstyLossArraySize = burstyLossArraySize + 1;
  }
}

- (unsigned)computeRedundancyWithLossPercentage
{
  packetLossPercentage = self->_packetLossPercentage;
  if (packetLossPercentage >= 0xB)
  {
    v3 = 100;
  }

  else
  {
    v3 = 50;
  }

  if (packetLossPercentage >= 6)
  {
    v4 = v3;
  }

  else
  {
    v4 = 25;
  }

  if (packetLossPercentage >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (unsigned)computeRedundancyWithBurstyLoss
{
  burstyLossArraySize = self->_burstyLossArraySize;
  if (!burstyLossArraySize)
  {
    return 0;
  }

  v3 = 0;
  burstyLoss = self->_burstyLoss;
  do
  {
    v6 = *burstyLoss++;
    v5 = v6;
    if (v3 <= v6)
    {
      v3 = v5;
    }

    --burstyLossArraySize;
  }

  while (burstyLossArraySize);
  if (!v3)
  {
    return 0;
  }

  if (v3 < 3)
  {
    return 25;
  }

  if (v3 >= 5)
  {
    return 100;
  }

  return 50;
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCRedundancyControlAlgorithmVideoIpadCompanion updateRedundancyStrategyWithNetworkStatistics:]";
  v6 = 1024;
  v7 = 28;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl", &v2, 0x1Cu);
}

@end