@interface VCAggregatorAudioStream
- (VCAggregatorAudioStream)initWithDelegate:(id)a3 withMode:(int)a4;
- (id)aggregatedCallReport;
- (id)aggregatedCallReports;
- (id)aggregatedSessionReport;
- (id)composeSegmentReport:(int)a3;
- (id)dispatchedAggregatedSessionReport;
- (int)reportingClientType;
- (void)aggregateAudioPlaybackRealtimeStats:(id)a3;
- (void)aggregateChannelSequenceReport:(id)a3;
- (void)aggregateJitterBufferMetricsToReportDictionary:(id)a3;
- (void)aggregateMediCaptureRealtimeStats:(id)a3;
- (void)aggregateRealtimeStats:(id)a3;
- (void)aggregateSystemInfoReport:(id)a3;
- (void)aggregatedCallReport;
- (void)dealloc;
- (void)processAudioPlaybackRealtimeStats:(id)a3;
- (void)processAudioStreamStart:(id)a3;
- (void)processChannelSequenceStats:(id)a3;
- (void)processEndpointChanged:(unsigned __int16)a3;
- (void)processEventWithCategory:(unsigned __int16)a3 type:(unsigned __int16)a4 payload:(id)a5;
- (void)processMediaCaptureRealtimeStats:(id)a3;
- (void)processMediaStreamEndState:(id)a3;
- (void)processRealtimeStats:(id)a3;
- (void)processSenderOnlyStats:(id)a3;
- (void)processTransportInfo:(id)a3;
- (void)reportSegment;
- (void)reset;
- (void)startNewSegment;
- (void)telephonyCallingProcessAWDMetrics:(id)a3;
- (void)telephonyCallingProcessRealtimeStatsTelephonyCalling:(id)a3;
- (void)updateAudioStreamHostTimeJumpSizeStats:(id)a3;
@end

@implementation VCAggregatorAudioStream

- (VCAggregatorAudioStream)initWithDelegate:(id)a3 withMode:(int)a4
{
  v8.receiver = self;
  v8.super_class = VCAggregatorAudioStream;
  v5 = [(VCAggregator *)&v8 initWithDelegate:a3 nwParentActivity:0];
  v6 = v5;
  if (v5)
  {
    v5->_mode = a4;
    v5->_countHostTimeJumped = 0;
    v5->_maxHostTimeJumpSize = 0.0;
    v5->_totalHostTimeJumpSize = 0.0;
    v5->_currentNumberEndpoints = 0;
    v5->_maxNumberEndpoints = 0;
    v5->super._shouldReportLowLatencyInterfaceStatistics = 1;
    v5->_jbUnclippedTarget = [[VCReportingHistogram alloc] initWithType:13 bucketValues:0];
    v6->_jbSpikeSizeDelta = [[VCReportingHistogram alloc] initWithType:11 bucketValues:0];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorAudioStream;
  [(VCAggregator *)&v3 dealloc];
}

- (int)reportingClientType
{
  v2 = self->_mode - 1;
  if (v2 > 8)
  {
    return 1;
  }

  else
  {
    return dword_23D59AC38[v2];
  }
}

- (id)aggregatedCallReport
{
  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x3052000000;
  v8[2] = __Block_byref_object_copy__6;
  v8[3] = __Block_byref_object_dispose__6;
  v8[4] = 0;
  if (self->_mode == 2)
  {
    stateQueue = self->super._stateQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__VCAggregatorAudioStream_aggregatedCallReport__block_invoke;
    v6[3] = &unk_278BD4C10;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(stateQueue, v6);
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR(7u);
      [(VCAggregatorAudioStream *)v5 aggregatedCallReport];
    }
  }

  v3 = *(v8[0] + 40);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __47__VCAggregatorAudioStream_aggregatedCallReport__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = VCAggregatorAudioStream;
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSendSuper2(&v3, sel_dispatchedAggregatedCallReport);
  [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", *(*(a1 + 32) + 1328) * objc_msgSend(*(a1 + 32), "RTPeriod")), @"DRTN"}];
  [*(*(*(a1 + 40) + 8) + 40) setObject:&unk_284FA57B0 forKeyedSubscript:@"RVER"];
  [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", *(*(a1 + 32) + 1580)), @"RATT"}];
  [objc_msgSend(*(a1 + 32) "captionsDataCollector")];
  [objc_msgSend(*(a1 + 32) "mediaAnalyzerDataCollector")];
  return [objc_msgSend(*(a1 + 32) "mediaRecorderDataCollector")];
}

- (void)telephonyCallingProcessRealtimeStatsTelephonyCalling:(id)a3
{
  [(VCCaptionsDataCollector *)[(VCAggregator *)self captionsDataCollector] processCaptionsMetrics:a3];
  v5 = [(VCAggregator *)self mediaAnalyzerDataCollector];

  [(VCMediaAnalyzerDataCollector *)v5 processMediaAnalyzerMetrics:a3];
}

- (void)reportSegment
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCAggregatorAudioStream reportSegment]";
  v7 = 1024;
  v8 = 274;
  _os_log_error_impl(&dword_23D4DF000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to report audio stream segment: Invalid stream direction", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  dispatch_assert_queue_V2(self->super._stateQueue);
  [(VCAggregatorAudioStream *)self reportSegment];
  v3.receiver = self;
  v3.super_class = VCAggregatorAudioStream;
  [(VCAggregator *)&v3 reset];
  self->_inactiveSlotCount = 0;
  self->_dfsChannelCount = 0;
  self->_fiveGhzChannelCount = 0;
  self->_twoPtFourGhzChannelCount = 0;
  self->_countHostTimeJumped = 0;
  self->_avgJBTargetSizeChanges = 0.0;
  self->_maxJBTargetSizeChanges = 0.0;
  self->_averageJitterBufferDelay = 0.0;
  self->_totalAudioErasureTime = 0.0;
  self->_totalHostTimeJumpSize = 0.0;
  self->_maxHostTimeJumpSize = 0.0;
  self->_sessionTotalDuration = 0.0;
  self->_remoteMicPacketLossRateAccumulator = 0;
  self->_jbSlopeSpikeCount = 0;
  self->_jbJumpSpikeCount = 0;
  self->_averageTargetBitrateCount = 0;
  self->_averageTargetBitrate = 0;
  self->_averageAudioMediaBitrateCount = 0;
  self->_averageAudioBitrateCount = 0;
  self->_averageAudioMediaBitrate = 0;
  self->_averageAudioBitrate = 0;
  self->_rtcpTimeoutCount = 0;
  self->_avgJBTargetSizeChangesCount = 0;
  self->_averageJitterBufferDelayCount = 0;
  self->_maxAudioErasureCount = 0;
  self->_audioErasureCount = 0;
  self->_mediaCaptureBufferRateTotal = 0;
  self->_mediaCaptureJitterTotal = 0;
  self->_currentNumberEndpoints = 0;
  self->_maxNumberEndpoints = 0;
  [(VCAggregator *)self setLowLatencyInterfaceStatistics:0];
  *&self->_channelSequenceStats.twoPtFourGhzChannelCount = 0;
  *&self->_channelSequenceStats.dfsChannelCount = 0;
  *&self->_previousChannelSequenceStats.twoPtFourGhzChannelCount = 0;
  *&self->_previousChannelSequenceStats.dfsChannelCount = 0;
}

- (void)startNewSegment
{
  dispatch_assert_queue_V2(self->super._stateQueue);
  [(VCAggregator *)self flushCurrentSegment];

  [(VCAggregatorAudioStream *)self reset];
}

- (id)composeSegmentReport:(int)a3
{
  v27[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._stateQueue);
  if (self->_sessionTotalDuration == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = VCAggregatorAudioStream;
    v4 = [(VCReportingCommon *)&v15 dispatchedAggregatedReportCommon];
    v26[0] = @"DRCT";
    v27[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._direction];
    v26[1] = @"DRTN";
    v27[1] = [MEMORY[0x277CCABA8] numberWithDouble:{self->_sessionTotalDuration * -[VCAggregator RTPeriod](self, "RTPeriod")}];
    v26[2] = @"TT";
    v27[2] = [MEMORY[0x277CCABA8] numberWithInt:self->super._transportType];
    v26[3] = @"RTCPTOCNT";
    v27[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_rtcpTimeoutCount];
    [v4 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v27, v26, 4)}];
    countHostTimeJumped = self->_countHostTimeJumped;
    if (countHostTimeJumped)
    {
      v6 = (self->_totalHostTimeJumpSize / countHostTimeJumped);
    }

    else
    {
      v6 = 0;
    }

    [v4 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v6), @"AHTJS"}];
    [v4 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxHostTimeJumpSize), @"MHTJS"}];
    [v4 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_countHostTimeJumped), @"HTJC"}];
    [v4 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._mediaStreamEndReason == 0), @"MSSuccess"}];
    [v4 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->super._mediaStreamEndReason), @"MSEndReason"}];
    [(VCAggregatorAudioStream *)self aggregateSystemInfoReport:v4];
    [(VCAggregatorAudioStream *)self aggregateRealtimeStats:v4];
    [(VCAggregator *)self addLowLatencyInterfaceStatisticsToPayload:v4];
    [(VCAggregatorAudioStream *)self aggregateChannelSequenceReport:v4];
    [(VCAggregatorAudioStream *)self aggregateJitterBufferMetricsToReportDictionary:v4];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    __str = 0;
    v7 = v4 ? [objc_msgSend(v4 "description")] : "<nil>";
    asprintf(&__str, "%s", v7);
    if (__str)
    {
      __lasts = 0;
      v8 = strtok_r(__str, "\n", &__lasts);
      do
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR(7u);
          v10 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v17 = v9;
            v18 = 2080;
            v19 = "[VCAggregatorAudioStream composeSegmentReport:]";
            v20 = 1024;
            v21 = 344;
            v22 = 2080;
            v23 = "AudioStream: segmentReport";
            v24 = 2080;
            v25 = v8;
            _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v8 = strtok_r(0, "\n", &__lasts);
      }

      while (v8);
      free(__str);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __51__VCAggregatorAudioStream_aggregatedSegmentReport___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) composeSegmentReport:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)dispatchedAggregatedSessionReport
{
  v10[4] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = VCAggregatorAudioStream;
  v3 = [(VCAggregator *)&v8 dispatchedAggregatedSessionReport];
  v9[0] = @"DRCT";
  v10[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._direction];
  v9[1] = @"DRTN";
  v10[1] = [MEMORY[0x277CCABA8] numberWithDouble:{self->_sessionTotalDuration * -[VCAggregator RTPeriod](self, "RTPeriod")}];
  v9[2] = @"TT";
  v10[2] = [MEMORY[0x277CCABA8] numberWithInt:self->super._transportType];
  v9[3] = @"RTCPTOCNT";
  v10[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_rtcpTimeoutCount];
  [v3 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, v9, 4)}];
  countHostTimeJumped = self->_countHostTimeJumped;
  if (countHostTimeJumped)
  {
    v5 = (self->_totalHostTimeJumpSize / countHostTimeJumped);
  }

  else
  {
    v5 = 0;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v5), @"AHTJS"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxHostTimeJumpSize), @"MHTJS"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_countHostTimeJumped), @"HTJC"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._mediaStreamEndReason == 0), @"MSSuccess"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->super._mediaStreamEndReason), @"MSEndReason"}];
  if (self->_maxNumberEndpoints)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"ENDPTC"}];
  }

  [(VCAggregatorAudioStream *)self aggregateSystemInfoReport:v3];
  [(VCAggregatorAudioStream *)self aggregateRealtimeStats:v3];
  [(VCAggregator *)self addLowLatencyInterfaceStatisticsToPayload:v3];
  [(VCAggregatorAudioStream *)self aggregateChannelSequenceReport:v3];
  if (self->_mode == 1)
  {
    [(VCAggregator *)self addThermalMetricsToReportDictionary:v3];
    [(VCAggregatorAudioStream *)self aggregateJitterBufferMetricsToReportDictionary:v3];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)aggregatedSessionReport
{
  v31 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  if ([(VCAggregatorAudioStream *)self supportsSessionReporting])
  {
    stateQueue = self->super._stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__VCAggregatorAudioStream_aggregatedSessionReport__block_invoke;
    block[3] = &unk_278BD4C10;
    block[4] = self;
    block[5] = &v15;
    dispatch_sync(stateQueue, block);
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      __str = 0;
      v4 = v16[5];
      v5 = v4 ? [objc_msgSend(v4 "description")] : "<nil>";
      asprintf(&__str, "%s", v5);
      if (__str)
      {
        __lasts = 0;
        v6 = strtok_r(__str, "\n", &__lasts);
        do
        {
          if (VRTraceGetErrorLogLevelForModule("") >= 7)
          {
            v7 = VRTraceErrorLogLevelToCSTR(7u);
            v8 = gVRTraceOSLog;
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v22 = v7;
              v23 = 2080;
              v24 = "[VCAggregatorAudioStream aggregatedSessionReport]";
              v25 = 1024;
              v26 = 404;
              v27 = 2080;
              v28 = "AudioStream: sessionReport";
              v29 = 2080;
              v30 = v6;
              _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v6 = strtok_r(0, "\n", &__lasts);
        }

        while (v6);
        free(__str);
      }
    }
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __50__VCAggregatorAudioStream_aggregatedSessionReport__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedAggregatedSessionReport];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)updateAudioStreamHostTimeJumpSizeStats:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"VCASHostTimeJumpSize"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"VCASHostTimeJumpSize", "doubleValue"}];
    ++self->_countHostTimeJumped;
    maxHostTimeJumpSize = self->_maxHostTimeJumpSize;
    if (v5 >= maxHostTimeJumpSize)
    {
      maxHostTimeJumpSize = v5;
    }

    self->_maxHostTimeJumpSize = maxHostTimeJumpSize;
    self->_totalHostTimeJumpSize = v5 + self->_totalHostTimeJumpSize;
  }
}

- (void)aggregateChannelSequenceReport:(id)a3
{
  if ([(VCAggregatorAudioStream *)self previousChannelSequence])
  {
    v5 = [(VCAggregatorAudioStream *)self previousChannelSequence];
    v6 = &OBJC_IVAR___VCAggregatorAudioStream__previousChannelSequenceStats;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = [(VCAggregatorAudioStream *)self channelSequence];
    v6 = &OBJC_IVAR___VCAggregatorAudioStream__channelSequenceStats;
    if (!v5)
    {
      return;
    }
  }

  v7 = (self + *v6);
  [a3 setObject:v5 forKeyedSubscript:@"CHSEQ"];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v7[1]), @"5GCHCNT"}];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *v7), @"24GCHCNT"}];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v7[2]), @"DFSCHCNT"}];
  v8 = [MEMORY[0x277CCABA8] numberWithInt:v7[3]];

  [a3 setObject:v8 forKeyedSubscript:@"INSLCNT"];
}

- (void)aggregateSystemInfoReport:(id)a3
{
  remoteOSBuildVersion = self->_remoteOSBuildVersion;
  if (remoteOSBuildVersion)
  {
    [a3 setObject:remoteOSBuildVersion forKeyedSubscript:@"REMOSVER"];
  }

  remoteDeviceModel = self->_remoteDeviceModel;
  if (remoteDeviceModel)
  {
    [a3 setObject:remoteDeviceModel forKeyedSubscript:@"REMMDL"];
  }

  if (self->super._sessionID)
  {

    [a3 setObject:? forKeyedSubscript:?];
  }
}

- (void)aggregateRealtimeStats:(id)a3
{
  [(VCAggregatorAudioStream *)self aggregateMediCaptureRealtimeStats:?];

  [(VCAggregatorAudioStream *)self aggregateAudioPlaybackRealtimeStats:a3];
}

- (void)aggregateMediCaptureRealtimeStats:(id)a3
{
  sessionTotalDuration = self->_sessionTotalDuration;
  LODWORD(v3) = self->_mediaCaptureBufferRateTotal;
  v7 = v3;
  if (sessionTotalDuration == 0.0)
  {
    sessionTotalDuration = 1.0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (v7 / sessionTotalDuration)), @"AMCBR"}];
  v8 = self->_sessionTotalDuration;
  LODWORD(v9) = self->_mediaCaptureJitterTotal;
  v10 = v9;
  if (v8 == 0.0)
  {
    v8 = 1.0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (v10 / v8)), @"AMCJ"}];
  averageAudioBitrateCount = self->_averageAudioBitrateCount;
  if (averageAudioBitrateCount)
  {
    v12 = 1000 * (self->_averageAudioBitrate / averageAudioBitrateCount);
  }

  else
  {
    v12 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v12), @"AANTBR"}];
  averageAudioMediaBitrateCount = self->_averageAudioMediaBitrateCount;
  if (averageAudioMediaBitrateCount)
  {
    v14 = 1000 * (self->_averageAudioMediaBitrate / averageAudioMediaBitrateCount);
  }

  else
  {
    v14 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v14), @"AAMTBR"}];
  averageTargetBitrateCount = self->_averageTargetBitrateCount;
  if (averageTargetBitrateCount)
  {
    v16 = 1000 * (self->_averageTargetBitrate / averageTargetBitrateCount);
  }

  else
  {
    v16 = 0;
  }

  v17 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v16];

  [a3 setObject:v17 forKeyedSubscript:@"ATXBR"];
}

- (void)aggregateAudioPlaybackRealtimeStats:(id)a3
{
  if ((self->super._direction & 0xFFFFFFFE) == 2)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_audioErasureCount), @"AERCNT"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (self->_totalAudioErasureTime * 1000.0)), @"TAERT"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxAudioErasureCount), @"MAECT"}];
    averageJitterBufferDelayCount = self->_averageJitterBufferDelayCount;
    if (averageJitterBufferDelayCount)
    {
      v7 = (self->_averageJitterBufferDelay / averageJitterBufferDelayCount * 1000.0);
    }

    else
    {
      v7 = 0;
    }

    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v7), @"AAJBD"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxJBTargetSizeChanges), @"MAJBSC"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_channelCountRx), @"ARCC"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_channelCountTx), @"ATCC"}];
    avgJBTargetSizeChangesCount = self->_avgJBTargetSizeChangesCount;
    if (avgJBTargetSizeChangesCount)
    {
      v9 = (self->_avgJBTargetSizeChanges / avgJBTargetSizeChangesCount * 1000.0);
    }

    else
    {
      v9 = 0;
    }

    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v9), @"AAJBSC"}];
    averageAudioBitrateCount = self->_averageAudioBitrateCount;
    if (averageAudioBitrateCount)
    {
      v11 = 1000 * (self->_averageAudioBitrate / averageAudioBitrateCount);
    }

    else
    {
      v11 = 0;
    }

    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v11), @"AANRBR"}];
    averageAudioMediaBitrateCount = self->_averageAudioMediaBitrateCount;
    if (averageAudioMediaBitrateCount)
    {
      v13 = 1000 * (self->_averageAudioMediaBitrate / averageAudioMediaBitrateCount);
    }

    else
    {
      v13 = 0;
    }

    v14 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v13];

    [a3 setObject:v14 forKeyedSubscript:@"AAMRBR"];
  }
}

- (void)processMediaCaptureRealtimeStats:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"MediaCaptureJitter"])
  {
    self->_mediaCaptureJitterTotal += [objc_msgSend(a3 objectForKeyedSubscript:{@"MediaCaptureJitter", "unsignedIntValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"MediaCaptureBufferRate"])
  {
    self->_mediaCaptureBufferRateTotal += [objc_msgSend(a3 objectForKeyedSubscript:{@"MediaCaptureBufferRate", "unsignedIntValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"ATxR"])
  {
    self->_averageAudioBitrate += [objc_msgSend(a3 objectForKeyedSubscript:{@"ATxR", "unsignedIntValue"}];
    ++self->_averageAudioBitrateCount;
  }

  if ([a3 objectForKeyedSubscript:@"ATxRPrimary"])
  {
    self->_averageAudioMediaBitrate += [objc_msgSend(a3 objectForKeyedSubscript:{@"ATxRPrimary", "unsignedIntValue"}];
    ++self->_averageAudioMediaBitrateCount;
  }

  if ([a3 objectForKeyedSubscript:@"TTxR"])
  {
    self->_averageTargetBitrate += [objc_msgSend(a3 objectForKeyedSubscript:{@"TTxR", "integerValue"}];
    ++self->_averageTargetBitrateCount;
  }
}

- (void)processAudioPlaybackRealtimeStats:(id)a3
{
  if ((self->super._direction & 0xFFFFFFFE) == 2)
  {
    v5 = [a3 objectForKeyedSubscript:@"FrameErasureRate"];
    if (v5)
    {
      [v5 doubleValue];
      v7 = v6 * [(VCAggregator *)self RTPeriod];
      if (v7 != 0.0)
      {
        self->_totalAudioErasureTime = v7 + self->_totalAudioErasureTime;
      }
    }

    v8 = [a3 objectForKeyedSubscript:@"FrameErasureCount"];
    if (v8)
    {
      v10 = v8;
      LODWORD(v9) = self->_maxAudioErasureCount;
      self->_maxAudioErasureCount = fmax(v9, [v8 unsignedIntValue]);
      self->_audioErasureCount += [v10 unsignedIntValue];
    }

    v11 = [a3 objectForKeyedSubscript:@"ARCC"];
    if ([v11 unsignedIntValue])
    {
      self->_channelCountRx = [v11 unsignedIntValue];
    }

    v12 = [a3 objectForKeyedSubscript:@"NJB"];
    [v12 doubleValue];
    if (v13 != 0.0)
    {
      [v12 doubleValue];
      self->_averageJitterBufferDelay = v14 + self->_averageJitterBufferDelay;
      ++self->_averageJitterBufferDelayCount;
    }

    v15 = [a3 objectForKeyedSubscript:@"JitterBufferTargetChanges"];
    if (v15)
    {
      v16 = v15;
      maxJBTargetSizeChanges = self->_maxJBTargetSizeChanges;
      [v15 doubleValue];
      self->_maxJBTargetSizeChanges = fmax(maxJBTargetSizeChanges, v18);
      [v16 doubleValue];
      self->_avgJBTargetSizeChanges = v19 + self->_avgJBTargetSizeChanges;
      ++self->_avgJBTargetSizeChangesCount;
    }

    if ([a3 objectForKeyedSubscript:@"ARxR"])
    {
      self->_averageAudioBitrate += [objc_msgSend(a3 objectForKeyedSubscript:{@"ARxR", "unsignedIntValue"}];
      ++self->_averageAudioBitrateCount;
    }

    if ([a3 objectForKeyedSubscript:@"AMRR"])
    {
      self->_averageAudioMediaBitrate += [objc_msgSend(a3 objectForKeyedSubscript:{@"ATxRPrimary", "unsignedIntValue"}];
      ++self->_averageAudioMediaBitrateCount;
    }
  }
}

- (void)processSenderOnlyStats:(id)a3
{
  if ((self->super._direction | 2) == 3)
  {
    v4 = [a3 objectForKeyedSubscript:@"ATCC"];
    if ([v4 unsignedIntValue])
    {
      self->_channelCountTx = [v4 unsignedIntValue];
    }
  }
}

- (void)processChannelSequenceStats:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"ChannelSequence"])
  {
    [(VCAggregatorAudioStream *)self setPreviousChannelSequence:[(VCAggregatorAudioStream *)self channelSequence]];
    self->_previousChannelSequenceStats = self->_channelSequenceStats;
    -[VCAggregatorAudioStream setChannelSequence:](self, "setChannelSequence:", [a3 objectForKeyedSubscript:@"ChannelSequence"]);
    self->_channelSequenceStats.fiveGhzChannelCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"Unique5GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.twoPtFourGhzChannelCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"Unique2pt4GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.dfsChannelCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"UniqueDFSChannelCount", "intValue"}];
    self->_channelSequenceStats.inactiveSlotCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"InactiveSlotCount", "intValue"}];
  }
}

- (void)processRealtimeStats:(id)a3
{
  [(VCAggregatorAudioStream *)self processMediaCaptureRealtimeStats:?];
  [(VCAggregatorAudioStream *)self processAudioPlaybackRealtimeStats:a3];
  [(VCAggregatorAudioStream *)self processSenderOnlyStats:a3];

  [(VCAggregatorAudioStream *)self processChannelSequenceStats:a3];
}

- (void)processAudioStreamStart:(id)a3
{
  if ([(VCAggregatorAudioStream *)self supportsSegmentReporting])
  {
    [(VCAggregatorAudioStream *)self startNewSegment];
  }

  if ([a3 objectForKeyedSubscript:@"RemoteEndpoints"])
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"RemoteEndpoints", "unsignedIntValue"}];
    self->_currentNumberEndpoints = v5;
    self->_maxNumberEndpoints = v5;
  }

  -[VCAggregatorAudioStream setRemoteOSBuildVersion:](self, "setRemoteOSBuildVersion:", [a3 objectForKeyedSubscript:@"VCVSRemoteOSBuildVersion"]);
  v6 = [a3 objectForKeyedSubscript:@"VCVSRemoteDeviceModel"];

  [(VCAggregatorAudioStream *)self setRemoteDeviceModel:v6];
}

- (void)processTransportInfo:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"TransportType"])
  {
    self->super._transportType = [objc_msgSend(a3 objectForKeyedSubscript:{@"TransportType", "intValue"}];

    [(VCAggregator *)self initializeLowLatencyInterfaceStatistics];
  }
}

- (void)processMediaStreamEndState:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"VCMSEndReason"])
  {
    self->super._mediaStreamEndReason = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMSEndReason", "unsignedIntValue"}];
  }
}

- (void)processEndpointChanged:(unsigned __int16)a3
{
  currentNumberEndpoints = self->_currentNumberEndpoints;
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_5;
    }

    *&a3 = -1;
  }

  currentNumberEndpoints += a3;
  self->_currentNumberEndpoints = currentNumberEndpoints;
LABEL_5:
  if (currentNumberEndpoints > self->_maxNumberEndpoints)
  {
    self->_maxNumberEndpoints = currentNumberEndpoints;
  }
}

- (void)processEventWithCategory:(unsigned __int16)a3 type:(unsigned __int16)a4 payload:(id)a5
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__VCAggregatorAudioStream_processEventWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  v7 = a3;
  v8 = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_sync(stateQueue, block);
}

- (id)aggregatedCallReports
{
  v4[1] = *MEMORY[0x277D85DE8];
  result = [(VCAggregatorAudioStream *)self aggregatedCallReport];
  if (result)
  {
    v4[0] = result;
    result = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)telephonyCallingProcessAWDMetrics:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"RATType"];
  if (v4)
  {
    v5 = v4;
    if ([v4 intValue] <= 3)
    {
      self->_ratType = [v5 intValue];
    }
  }
}

- (void)aggregateJitterBufferMetricsToReportDictionary:(id)a3
{
  if (self->_mode == 1)
  {
    sessionTotalDuration = self->_sessionTotalDuration;
    v7 = sessionTotalDuration * [(VCAggregator *)self RTPeriod];
    v8 = v7;
    if (v7)
    {
      LODWORD(v7) = self->_jbJumpSpikeCount;
      *&v9 = *&v7 * 1000.0;
      v10 = *&v9 / v8;
      LODWORD(v9) = self->_jbSlopeSpikeCount;
      v11 = v9 * 1000.0 / v8;
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
    }

    v12 = &OBJC_IVAR___VCAggregatorAudioStream__channelCountRx;
    if (self->super._direction == 1)
    {
      v12 = &OBJC_IVAR___VCAggregatorAudioStream__channelCountTx;
    }

    if (!self->_remoteMicUseCase)
    {
      pTime = self->_pTime;
      if (pTime)
      {
        v14 = *(&self->super.super.super.isa + *v12);
        if (v14)
        {
          if (pTime == 5)
          {
            v15 = 3;
          }

          else
          {
            v15 = 1;
          }

          if (v14 == 4)
          {
            v16 = 2;
          }

          else
          {
            v16 = v15;
          }

          self->_remoteMicUseCase = v16;
        }
      }
    }

    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:"), @"RMUSE"}];
    [a3 setObject:-[VCHistogram description](self->_jbUnclippedTarget forKeyedSubscript:{"description"), @"AUJBL"}];
    [a3 setObject:-[VCHistogram description](self->_jbSpikeSizeDelta forKeyedSubscript:{"description"), @"JBSS"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v10), @"JBJSR"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v11), @"JBSSR"}];
    if (v8)
    {
      LODWORD(v17) = self->_remoteMicPacketLossRateAccumulator;
      v18 = (v17 / v8);
    }

    else
    {
      v18 = 0;
    }

    v19 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v18];

    [a3 setObject:v19 forKeyedSubscript:@"SAAUDPLR"];
  }
}

- (void)aggregatedCallReport
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = gVRTraceOSLog;
  if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*a2 + 40);
    v7 = 136315906;
    v8 = a1;
    v9 = 2080;
    v10 = "[VCAggregatorAudioStream aggregatedCallReport]";
    v11 = 1024;
    v12 = 206;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AudioStream: aggregatedCallReport=%@", &v7, 0x26u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dispatchedProcessEventWithCategory:(uint64_t)a1 type:(unsigned __int16)a2 payload:(os_log_t)log .cold.1(uint64_t a1, unsigned __int16 a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCAggregatorAudioStream dispatchedProcessEventWithCategory:type:payload:]";
  v8 = 1024;
  v9 = 751;
  v10 = 1024;
  v11 = a2;
  _os_log_debug_impl(&dword_23D4DF000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AudioStream: received method=%d", &v4, 0x22u);
  v3 = *MEMORY[0x277D85DE8];
}

@end