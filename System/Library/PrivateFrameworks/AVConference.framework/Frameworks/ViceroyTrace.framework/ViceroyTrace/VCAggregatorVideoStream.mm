@interface VCAggregatorVideoStream
- (VCAggregatorVideoStream)initWithDelegate:(id)delegate;
- (id)aggregatedCallReports;
- (id)aggregatedSegmentReport:(int)report;
- (id)aggregatedSessionReport;
- (id)dispatchedAggregatedSessionReport;
- (void)dealloc;
- (void)flushCurrentSegment;
- (void)processBitratesWithPayload:(id)payload;
- (void)processPoorConnection:(id)connection;
- (void)processRTEvent:(id)event;
- (void)processVideoDegraded:(id)degraded time:(double)time;
- (void)processVideoFrameRate:(id)rate;
- (void)processVideoStallTime:(id)time;
- (void)reset;
- (void)updateTotalConnectionTime:(id)time;
@end

@implementation VCAggregatorVideoStream

- (VCAggregatorVideoStream)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = VCAggregatorVideoStream;
  v3 = [(VCAggregator *)&v6 initWithDelegate:delegate];
  if (!v3)
  {
    [VCAggregatorVideoStream initWithDelegate:];
LABEL_6:

    return 0;
  }

  v4 = [[VCReportingHistogram alloc] initWithType:18 bucketValues:0];
  v3->_poorConnection = v4;
  if (!v4)
  {
    [VCAggregatorVideoStream initWithDelegate:];
    goto LABEL_6;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorVideoStream;
  [(VCAggregator *)&v3 dealloc];
}

- (void)flushCurrentSegment
{
  v4.receiver = self;
  v4.super_class = VCAggregatorVideoStream;
  [(VCAggregator *)&v4 flushCurrentSegment];
  segmentRealtimeEventCount = self->super._segmentRealtimeEventCount;
  if ([(VCAggregator *)self RTPeriod]* segmentRealtimeEventCount <= 1)
  {
    self->super._segmentRealtimeEventCount = 0;
  }
}

uint64_t __75__VCAggregatorVideoStream_dispatchedProcessEventWithCategory_type_payload___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(a1 + 32) + 1456) = result;
  return result;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = VCAggregatorVideoStream;
  [(VCAggregator *)&v3 reset];
  self->_rtcpTimeoutCount = 0;
}

- (id)aggregatedSegmentReport:(int)report
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__10;
  stateQueue = self->super._stateQueue;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__VCAggregatorVideoStream_aggregatedSegmentReport___block_invoke;
  block[3] = &unk_278BD4890;
  block[4] = self;
  block[5] = &v8;
  reportCopy = report;
  dispatch_sync(stateQueue, block);
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9[5]];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __51__VCAggregatorVideoStream_aggregatedSegmentReport___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedAggregatedSegmentReport:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)aggregatedCallReports
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  stateQueue = self->super._stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__VCAggregatorVideoStream_aggregatedCallReports__block_invoke;
  v6[3] = &unk_278BD4C10;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  if (v8[5])
  {
    v13[0] = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __48__VCAggregatorVideoStream_aggregatedCallReports__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedAggregatedCallReport];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)aggregatedSessionReport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__VCAggregatorVideoStream_aggregatedSessionReport__block_invoke;
  v5[3] = &unk_278BD4C10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7[5]];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__VCAggregatorVideoStream_aggregatedSessionReport__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedAggregatedSessionReport];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)processBitratesWithPayload:(id)payload
{
  v4 = [payload objectForKeyedSubscript:@"VCVSRxAvgBitrate"];
  if (v4)
  {
    v5 = v4;
    self->_rxVideoBitrateSum += [v4 intValue];
    self->super._rxTotalBitrateSum += [v5 intValue];
    ++self->_rxVideoBitrateCount;
  }
}

- (void)processVideoStallTime:(id)time
{
  v4 = [time objectForKeyedSubscript:@"VCVSRxVideoStallDuration"];
  if (v4)
  {
    [v4 doubleValue];
    maxVideoStallTime = v5 * 1000.0;
    self->_totalVideoStallTime = maxVideoStallTime + self->_totalVideoStallTime;
    if (maxVideoStallTime > 500.0)
    {
      ++self->_significantVideoStallCount;
    }

    if (maxVideoStallTime < self->_maxVideoStallTime)
    {
      maxVideoStallTime = self->_maxVideoStallTime;
    }

    self->_maxVideoStallTime = maxVideoStallTime;
  }
}

- (void)processVideoDegraded:(id)degraded time:(double)time
{
  v6 = [objc_msgSend(degraded objectForKeyedSubscript:{@"VCSPVideoDegraded", "intValue"}];
  if (v6)
  {
    if (!self->_isVideoDegraded)
    {
      self->_videoDegradedStartTime = time;
    }
  }

  else if (self->_isVideoDegraded)
  {
    videoDegradedStartTime = self->_videoDegradedStartTime;
    if (videoDegradedStartTime != 0.0)
    {
      ++self->_videoDegradedTotalCounter;
      v8 = time - videoDegradedStartTime;
      self->_videoDegradedTotalTime = v8 + self->_videoDegradedTotalTime;
      videoDegradedMaxLength = self->_videoDegradedMaxLength;
      if (videoDegradedMaxLength < v8)
      {
        videoDegradedMaxLength = v8;
      }

      self->_videoDegradedMaxLength = videoDegradedMaxLength;
      self->_videoDegradedStartTime = 0.0;
      if (v8 > 5.0)
      {
        ++self->_poorConnectionCount;
        self->_poorConnectionDuration = v8 + self->_poorConnectionDuration;
      }
    }
  }

  self->_isVideoDegraded = v6 != 0;
}

- (void)processPoorConnection:(id)connection
{
  if (self->_videoDegradedStartTime == 0.0)
  {
    if ([(VCAggregator *)self RTPeriod])
    {
      lastVideoDegradedTime = self->_lastVideoDegradedTime;
      v6 = (lastVideoDegradedTime / [(VCAggregator *)self RTPeriod]);
    }

    else
    {
      v6 = 0;
    }

    [(VCHistogram *)self->_poorConnection addValue:v6];
    self->_lastVideoDegradedTime = 0.0;
  }

  else
  {
    poorConnection = self->_poorConnection;

    [(VCHistogram *)poorConnection addValue:0];
  }
}

- (void)processVideoFrameRate:(id)rate
{
  v5 = [rate objectForKeyedSubscript:@"VCVSRxMinFramerate"];
  if (v5)
  {
    v6 = v5;
    intValue = [v5 intValue];
    minRxFrameRate = self->_minRxFrameRate;
    if (intValue)
    {
      minRxFrameRate = fmin(minRxFrameRate, [v6 intValue]);
    }

    self->_minRxFrameRate = minRxFrameRate;
  }

  v9 = [rate objectForKeyedSubscript:@"VCVSRxAvgFramerate"];
  if (v9)
  {
    [v9 doubleValue];
    self->_averageRxFrameRateSum = v10 + self->_averageRxFrameRateSum;
  }
}

- (void)processRTEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = VCAggregatorVideoStream;
  [(VCAggregator *)&v5 processRTEvent:?];
  [(VCAggregatorVideoStream *)self processBitratesWithPayload:event];
  [(VCAggregatorVideoStream *)self processVideoStallTime:event];
  [(VCAggregatorVideoStream *)self processPoorConnection:event];
  [(VCAggregatorVideoStream *)self processVideoFrameRate:event];
}

- (id)dispatchedAggregatedSessionReport
{
  v16.receiver = self;
  v16.super_class = VCAggregatorVideoStream;
  dispatchedAggregatedSessionReport = [(VCAggregator *)&v16 dispatchedAggregatedSessionReport];
  sessionRealtimeEventCount = self->super._sessionRealtimeEventCount;
  v5 = [(VCAggregator *)self RTPeriod]* sessionRealtimeEventCount;
  v6 = v5;
  if (v5)
  {
    v7 = self->_poorConnectionDuration / v6 * 10000.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = self->super._sessionRealtimeEventCount;
  if (v8)
  {
    v9 = self->_rxVideoBitrateSum * 1000.0;
    v10 = (v9 / ([(VCAggregator *)self RTPeriod]* v8));
  }

  else
  {
    v10 = 0;
  }

  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v10), @"AVTRBR"}];
  if (v5)
  {
    v11 = self->_totalVideoStallTime / 1000.0;
    if (v11 >= v6)
    {
      v11 = v5;
    }

    v12 = v11 * 10000.0 / v6;
  }

  else
  {
    v12 = 0.0;
  }

  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v12), @"VSP"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_significantVideoStallCount), @"NSVST"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_totalVideoStallTime), @"TVST"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_videoDegradedTotalCounter), @"PCSWCNT"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_videoDegradedMaxLength * 1000.0), @"SPCONMAXLEN"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_videoDegradedTotalTime * 1000.0), @"TPCT"}];
  [dispatchedAggregatedSessionReport setObject:-[VCHistogram description](self->_poorConnection forKeyedSubscript:{"description"), @"PCON"}];
  v13 = self->super._sessionRealtimeEventCount;
  if (v13)
  {
    v14 = (self->_averageRxFrameRateSum * 1000.0 / v13);
  }

  else
  {
    v14 = 0;
  }

  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v14), @"ARFR"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_mediaStreamEndReason == 0), @"MSSuccess"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_mediaStreamEndReason), @"MSEndReason"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_totalConnectionTime), @"CTCT"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_poorConnectionCount), @"PCONFQ"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v7), @"PCONP"}];
  return dispatchedAggregatedSessionReport;
}

- (void)updateTotalConnectionTime:(id)time
{
  v20 = *MEMORY[0x277D85DE8];
  if ([time objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAE5)}])
  {
    self->_totalConnectionTime = [objc_msgSend(time objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAE5)), "unsignedIntValue"}];
    if (VRTraceGetErrorLogLevelForModule("") >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR(6u);
      v6 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [time objectForKeyedSubscript:@"VCMSStreamToken"];
        totalConnectionTime = self->_totalConnectionTime;
        v10 = 136316162;
        v11 = v5;
        v12 = 2080;
        v13 = "[VCAggregatorVideoStream updateTotalConnectionTime:]";
        v14 = 1024;
        v15 = 263;
        v16 = 2112;
        v17 = v7;
        v18 = 1024;
        v19 = totalConnectionTime;
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing for streamToken=%@, TotalConnectionTime=%d", &v10, 0x2Cu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Failed to create poor connection histogram", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d failed to super initialize", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end