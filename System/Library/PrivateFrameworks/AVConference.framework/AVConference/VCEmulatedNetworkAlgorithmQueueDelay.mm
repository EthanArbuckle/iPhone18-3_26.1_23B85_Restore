@interface VCEmulatedNetworkAlgorithmQueueDelay
- (VCEmulatedNetworkAlgorithmQueueDelay)init;
- (double)computeNetworkDelay;
- (void)process:(id)process;
- (void)updateSettingsAtTime:(double)time impairments:(id)impairments;
@end

@implementation VCEmulatedNetworkAlgorithmQueueDelay

- (VCEmulatedNetworkAlgorithmQueueDelay)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCEmulatedNetworkAlgorithmQueueDelay;
  result = [(VCEmulatedNetworkAlgorithmQueueDelay *)&v3 init];
  if (result)
  {
    result->_networkQueueDelay = 0;
  }

  return result;
}

- (void)updateSettingsAtTime:(double)time impairments:(id)impairments
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(impairments objectForKeyedSubscript:{@"FixedDelay", "objectForKeyedSubscript:", @"time"}];
  v8 = [objc_msgSend(impairments objectForKeyedSubscript:{@"FixedDelay", "objectForKeyedSubscript:", @"value"}];
  v9 = [v8 count];
  if (v9 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v7, &self->_currentIndexForDelay, &self->_lastNetworkQueueDelayLoadTime, v9, time);
    self->_networkQueueDelay = [objc_msgSend(v8 objectAtIndexedSubscript:{self->_currentIndexForDelay), "intValue"}];
  }

  v10 = [objc_msgSend(impairments objectForKeyedSubscript:{@"GaussianDelay", "objectForKeyedSubscript:", @"time"}];
  v11 = [objc_msgSend(impairments objectForKeyedSubscript:{@"GaussianDelay", "objectForKeyedSubscript:", @"mean"}];
  v12 = [objc_msgSend(impairments objectForKeyedSubscript:{@"GaussianDelay", "objectForKeyedSubscript:", @"stdDev"}];
  v13 = [v11 count];
  if (v13 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v10, &self->_currentIndexForDelayDistribution, &self->_lastNetworkQueueDelayDistributionLoadTime, v13, time);
    self->_networkQueueDelayMean = [objc_msgSend(v11 objectAtIndexedSubscript:{self->_currentIndexForDelayDistribution), "intValue"}];
    self->_networkQueueDelayStdDev = [objc_msgSend(v12 objectAtIndexedSubscript:{self->_currentIndexForDelayDistribution), "intValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      networkQueueDelay = self->_networkQueueDelay;
      networkQueueDelayMean = self->_networkQueueDelayMean;
      networkQueueDelayStdDev = self->_networkQueueDelayStdDev;
      v19 = 136316418;
      v20 = v14;
      v21 = 2080;
      v22 = "[VCEmulatedNetworkAlgorithmQueueDelay updateSettingsAtTime:impairments:]";
      v23 = 1024;
      v24 = 49;
      v25 = 1024;
      v26 = networkQueueDelay;
      v27 = 1024;
      v28 = networkQueueDelayMean;
      v29 = 1024;
      v30 = networkQueueDelayStdDev;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Current emulated network delay: [%d, %d, %d]", &v19, 0x2Eu);
    }
  }
}

- (double)computeNetworkDelay
{
  networkQueueDelayMean = self->_networkQueueDelayMean;
  if (self->_networkQueueDelayStdDev)
  {
    v4 = networkQueueDelayMean;
    v5 = (arc4random_uniform(0xFFFFFFFF) + 1.0) * 2.32830644e-10;
    v6 = (arc4random_uniform(0xFFFFFFFF) + 1.0) * 2.32830644e-10;
    v7 = sqrt(log(v5) * -2.0);
    v8 = sin(v6 * 6.28318531);
    LODWORD(v9) = self->_networkQueueDelayStdDev;
    networkQueueDelayMean = (v4 + v7 * v8 * v9);
  }

  else if (!networkQueueDelayMean)
  {
    networkQueueDelayMean = self->_networkQueueDelay;
  }

  return networkQueueDelayMean / 1000.0;
}

- (void)process:(id)process
{
  [(VCEmulatedNetworkAlgorithmQueueDelay *)self computeNetworkDelay];
  v6 = v5;
  [process departureTime];
  v8 = v7;
  [process arrivalTime];
  v10 = v9;
  [process departureTime];
  if (v11 == 0.0 || ([process arrivalTime], v13 == 0.0) || v8 - v10 > v6)
  {
    [process departureTime];
    self->_expectedProcessEndTime = v12;
  }

  else
  {
    [process arrivalTime];
    self->_expectedProcessEndTime = v6 + v14;

    [process setDepartureTime:?];
  }
}

@end