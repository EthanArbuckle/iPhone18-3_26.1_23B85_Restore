@interface VCEmulatedNetworkAlgorithmQueueBandwidth
- (BOOL)shouldDropPacketWithCurrentAQMBudget:(id)budget;
- (VCEmulatedNetworkAlgorithmQueueBandwidth)init;
- (double)computeNetworkServiceRate;
- (int)getRemainingAQMBudgetWithPacket:(id)packet;
- (void)addPacketToBudgetBuffer:(id)buffer;
- (void)process:(id)process;
- (void)updateSettingsAtTime:(double)time impairments:(id)impairments;
@end

@implementation VCEmulatedNetworkAlgorithmQueueBandwidth

- (VCEmulatedNetworkAlgorithmQueueBandwidth)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCEmulatedNetworkAlgorithmQueueBandwidth;
  result = [(VCEmulatedNetworkAlgorithmQueueBandwidth *)&v3 init];
  if (result)
  {
    result->_networkQueueServiceRate = 50000000;
  }

  return result;
}

- (void)updateSettingsAtTime:(double)time impairments:(id)impairments
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(impairments objectForKeyedSubscript:{@"FixedBandwidth", "objectForKeyedSubscript:", @"time"}];
  v8 = [objc_msgSend(impairments objectForKeyedSubscript:{@"FixedBandwidth", "objectForKeyedSubscript:", @"value"}];
  v9 = [v8 count];
  if (v9 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v7, &self->_currentIndexForServiceRate, &self->_lastNetworkQueueServiceRateLoadTime, v9, time);
    self->_networkQueueServiceRate = [objc_msgSend(v8 objectAtIndexedSubscript:{self->_currentIndexForServiceRate), "intValue"}];
  }

  v10 = [objc_msgSend(impairments objectForKeyedSubscript:{@"GaussianBandwidth", "objectForKeyedSubscript:", @"time"}];
  v11 = [objc_msgSend(impairments objectForKeyedSubscript:{@"GaussianBandwidth", "objectForKeyedSubscript:", @"mean"}];
  v12 = [objc_msgSend(impairments objectForKeyedSubscript:{@"GaussianBandwidth", "objectForKeyedSubscript:", @"stdDev"}];
  v13 = [v11 count];
  if (v13 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v10, &self->_currentIndexForServiceRateDistribution, &self->_lastNetworkQueueServiceRateDistributionLoadTime, v13, time);
    self->_networkQueueServiceRateMean = [objc_msgSend(v11 objectAtIndexedSubscript:{self->_currentIndexForServiceRateDistribution), "intValue"}];
    self->_networkQueueServiceRateStdDev = [objc_msgSend(v12 objectAtIndexedSubscript:{self->_currentIndexForServiceRateDistribution), "intValue"}];
  }

  v14 = [objc_msgSend(impairments objectForKeyedSubscript:{@"AQMBandwidth", "objectForKeyedSubscript:", @"time"}];
  v15 = [objc_msgSend(impairments objectForKeyedSubscript:{@"AQMBandwidth", "objectForKeyedSubscript:", @"value"}];
  v16 = [v15 count];
  if (v16 >= 1)
  {
    VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(v14, &self->_currentIndexForAQMRate, &self->_lastNetworkQueueAQMRateLoadTime, v16, time);
    self->_networkQueueAQMRate = [objc_msgSend(v15 objectAtIndexedSubscript:{self->_currentIndexForAQMRate), "intValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      networkQueueServiceRate = self->_networkQueueServiceRate;
      networkQueueServiceRateMean = self->_networkQueueServiceRateMean;
      networkQueueServiceRateStdDev = self->_networkQueueServiceRateStdDev;
      networkQueueAQMRate = self->_networkQueueAQMRate;
      v23 = 136316674;
      v24 = v17;
      v25 = 2080;
      v26 = "[VCEmulatedNetworkAlgorithmQueueBandwidth updateSettingsAtTime:impairments:]";
      v27 = 1024;
      v28 = 62;
      v29 = 1024;
      v30 = networkQueueServiceRate;
      v31 = 1024;
      v32 = networkQueueServiceRateMean;
      v33 = 1024;
      v34 = networkQueueServiceRateStdDev;
      v35 = 1024;
      v36 = networkQueueAQMRate;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Current emulated network serviceRate=%d, serviceRateMean=%d, serviceRateStdDev=%d, AQMRate=%d", &v23, 0x34u);
    }
  }
}

- (double)computeNetworkServiceRate
{
  networkQueueServiceRateMean = self->_networkQueueServiceRateMean;
  if (self->_networkQueueServiceRateStdDev)
  {
    v4 = networkQueueServiceRateMean;
    v5 = (arc4random_uniform(0xFFFFFFFF) + 1.0) * 2.32830644e-10;
    v6 = (arc4random_uniform(0xFFFFFFFF) + 1.0) * 2.32830644e-10;
    v7 = sqrt(log(v5) * -2.0);
    v8 = sin(v6 * 6.28318531);
    LODWORD(v9) = self->_networkQueueServiceRateStdDev;
    return v4 + v7 * v8 * v9;
  }

  else
  {
    if (!networkQueueServiceRateMean)
    {
      return self->_networkQueueServiceRate;
    }

    return networkQueueServiceRateMean;
  }
}

- (void)process:(id)process
{
  v48 = *MEMORY[0x1E69E9840];
  [(VCEmulatedNetworkAlgorithmQueueBandwidth *)self computeNetworkServiceRate];
  self->_networkQueueServiceRate = v5;
  v6 = 0.0;
  if (([process isLost] & 1) == 0)
  {
    v7 = [process size];
    v8 = 8.0;
    LODWORD(v8) = self->_networkQueueServiceRate;
    v6 = v7 * 8.0 / v8;
  }

  [process networkServiceTime];
  self->_expectedProcessEndTime = v6 + v9;
  [process setDepartureTime:?];
  if (self->_networkQueueAQMRate)
  {
    [process setIsDroppedByAQM:{-[VCEmulatedNetworkAlgorithmQueueBandwidth shouldDropPacketWithCurrentAQMBudget:](self, "shouldDropPacketWithCurrentAQMBudget:", process)}];
    if ([process isLost])
    {
      isDroppedByAQM = 1;
    }

    else
    {
      isDroppedByAQM = [process isDroppedByAQM];
    }

    [process setIsLost:isDroppedByAQM];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        packetID = [process packetID];
        isLost = [process isLost];
        v16 = [process size];
        networkQueueServiceRate = self->_networkQueueServiceRate;
        [process arrivalTime];
        v19 = v18;
        [process departureTime];
        v28 = 136317442;
        v29 = v11;
        v30 = 2080;
        v31 = "[VCEmulatedNetworkAlgorithmQueueBandwidth process:]";
        v32 = 1024;
        v33 = 84;
        v34 = 1024;
        v35 = packetID;
        v36 = 1024;
        v37 = isLost;
        v38 = 1024;
        v39 = v16;
        v40 = 1024;
        v41 = networkQueueServiceRate;
        v42 = 2048;
        v43 = v6;
        v44 = 2048;
        v45 = v19;
        v46 = 2048;
        v47 = v20;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d packetID=%d, isLost=%d, packet size=%d, serviceRate=%d, serviceTime=%f, arrivalTime=%f, departureTime=%f", &v28, 0x52u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      packetID2 = [process packetID];
      isLost2 = [process isLost];
      v23 = [process size];
      v24 = self->_networkQueueServiceRate;
      [process arrivalTime];
      v26 = v25;
      [process departureTime];
      v28 = 136317442;
      v29 = v11;
      v30 = 2080;
      v31 = "[VCEmulatedNetworkAlgorithmQueueBandwidth process:]";
      v32 = 1024;
      v33 = 84;
      v34 = 1024;
      v35 = packetID2;
      v36 = 1024;
      v37 = isLost2;
      v38 = 1024;
      v39 = v23;
      v40 = 1024;
      v41 = v24;
      v42 = 2048;
      v43 = v6;
      v44 = 2048;
      v45 = v26;
      v46 = 2048;
      v47 = v27;
      _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d packetID=%d, isLost=%d, packet size=%d, serviceRate=%d, serviceTime=%f, arrivalTime=%f, departureTime=%f", &v28, 0x52u);
    }
  }
}

- (BOOL)shouldDropPacketWithCurrentAQMBudget:(id)budget
{
  if (([budget isLost] & 1) == 0)
  {
    v5 = [budget size];
    if (v5 > [(VCEmulatedNetworkAlgorithmQueueBandwidth *)self getRemainingAQMBudgetWithPacket:budget])
    {
      return 1;
    }

    [(VCEmulatedNetworkAlgorithmQueueBandwidth *)self addPacketToBudgetBuffer:budget];
  }

  return 0;
}

- (void)addPacketToBudgetBuffer:(id)buffer
{
  v5 = &self->_budgetBufferPktSize[4085];
  budgetBufferSize = self->_budgetBufferSize;
  if (budgetBufferSize < 1)
  {
    goto LABEL_5;
  }

  v7 = self->_budgentBufferIndex + 1;
  v8 = -v7 < 0;
  v9 = -v7 & 0xFFF;
  v10 = v7 & 0xFFF;
  if (!v8)
  {
    v10 = -v9;
  }

  self->_budgentBufferIndex = v10;
  if (budgetBufferSize <= 0xFFF)
  {
LABEL_5:
    self->_budgetBufferSize = budgetBufferSize + 1;
  }

  [buffer arrivalTime];
  self->_budgetBufferPktTime[*(v5 + 22)] = v11;
  self->_budgetBufferPktSize[*(v5 + 22)] = [buffer size];
}

- (int)getRemainingAQMBudgetWithPacket:(id)packet
{
  v4 = &self->_budgetBufferPktSize[4085];
  v5 = vcvtd_n_f64_u32(self->_networkQueueAQMRate, 1uLL) * 0.125;
  [packet arrivalTime];
  v7 = *(v4 + 23);
  result = v5;
  if (v7 >= 1)
  {
    v9 = v6 + -0.5;
    v10 = *(v4 + 22);
    do
    {
      if (v10 <= 0)
      {
        v11 = -(-v10 & 0xFFF);
      }

      else
      {
        v11 = v10 & 0xFFF;
      }

      if (self->_budgetBufferPktTime[v11] <= v9)
      {
        break;
      }

      result = (result - self->_budgetBufferPktSize[v11]);
      --v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

@end