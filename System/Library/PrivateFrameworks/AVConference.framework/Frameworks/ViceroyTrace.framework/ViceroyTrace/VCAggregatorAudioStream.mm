@interface VCAggregatorAudioStream
- (VCAggregatorAudioStream)initWithDelegate:(id)delegate withMode:(int)mode;
- (id)aggregatedCallReport;
- (id)aggregatedCallReports;
- (id)aggregatedSessionReport;
- (id)composeSegmentReport:(int)report;
- (id)dispatchedAggregatedSessionReport;
- (int)reportingClientType;
- (void)aggregateAudioPlaybackRealtimeStats:(id)stats;
- (void)aggregateChannelSequenceReport:(id)report;
- (void)aggregateJitterBufferMetricsToReportDictionary:(id)dictionary;
- (void)aggregateMediCaptureRealtimeStats:(id)stats;
- (void)aggregateRealtimeStats:(id)stats;
- (void)aggregateSystemInfoReport:(id)report;
- (void)aggregatedCallReport;
- (void)dealloc;
- (void)processAudioPlaybackRealtimeStats:(id)stats;
- (void)processAudioStreamStart:(id)start;
- (void)processChannelSequenceStats:(id)stats;
- (void)processEndpointChanged:(unsigned __int16)changed;
- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)processMediaCaptureRealtimeStats:(id)stats;
- (void)processMediaStreamEndState:(id)state;
- (void)processRealtimeStats:(id)stats;
- (void)processSenderOnlyStats:(id)stats;
- (void)processTransportInfo:(id)info;
- (void)reportSegment;
- (void)reset;
- (void)startNewSegment;
- (void)telephonyCallingProcessAWDMetrics:(id)metrics;
- (void)telephonyCallingProcessRealtimeStatsTelephonyCalling:(id)calling;
- (void)updateAudioStreamHostTimeJumpSizeStats:(id)stats;
@end

@implementation VCAggregatorAudioStream

- (VCAggregatorAudioStream)initWithDelegate:(id)delegate withMode:(int)mode
{
  v8.receiver = self;
  v8.super_class = VCAggregatorAudioStream;
  v5 = [(VCAggregator *)&v8 initWithDelegate:delegate nwParentActivity:0];
  v6 = v5;
  if (v5)
  {
    v5->_mode = mode;
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

- (void)telephonyCallingProcessRealtimeStatsTelephonyCalling:(id)calling
{
  [(VCCaptionsDataCollector *)[(VCAggregator *)self captionsDataCollector] processCaptionsMetrics:calling];
  mediaAnalyzerDataCollector = [(VCAggregator *)self mediaAnalyzerDataCollector];

  [(VCMediaAnalyzerDataCollector *)mediaAnalyzerDataCollector processMediaAnalyzerMetrics:calling];
}

- (void)reportSegment
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  selfCopy = self;
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

- (id)composeSegmentReport:(int)report
{
  v27[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._stateQueue);
  if (self->_sessionTotalDuration == 0.0)
  {
    dispatchedAggregatedReportCommon = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = VCAggregatorAudioStream;
    dispatchedAggregatedReportCommon = [(VCReportingCommon *)&v15 dispatchedAggregatedReportCommon];
    v26[0] = @"DRCT";
    v27[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._direction];
    v26[1] = @"DRTN";
    v27[1] = [MEMORY[0x277CCABA8] numberWithDouble:{self->_sessionTotalDuration * -[VCAggregator RTPeriod](self, "RTPeriod")}];
    v26[2] = @"TT";
    v27[2] = [MEMORY[0x277CCABA8] numberWithInt:self->super._transportType];
    v26[3] = @"RTCPTOCNT";
    v27[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_rtcpTimeoutCount];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v27, v26, 4)}];
    countHostTimeJumped = self->_countHostTimeJumped;
    if (countHostTimeJumped)
    {
      v6 = (self->_totalHostTimeJumpSize / countHostTimeJumped);
    }

    else
    {
      v6 = 0;
    }

    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v6), @"AHTJS"}];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxHostTimeJumpSize), @"MHTJS"}];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_countHostTimeJumped), @"HTJC"}];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._mediaStreamEndReason == 0), @"MSSuccess"}];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->super._mediaStreamEndReason), @"MSEndReason"}];
    [(VCAggregatorAudioStream *)self aggregateSystemInfoReport:dispatchedAggregatedReportCommon];
    [(VCAggregatorAudioStream *)self aggregateRealtimeStats:dispatchedAggregatedReportCommon];
    [(VCAggregator *)self addLowLatencyInterfaceStatisticsToPayload:dispatchedAggregatedReportCommon];
    [(VCAggregatorAudioStream *)self aggregateChannelSequenceReport:dispatchedAggregatedReportCommon];
    [(VCAggregatorAudioStream *)self aggregateJitterBufferMetricsToReportDictionary:dispatchedAggregatedReportCommon];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    __str = 0;
    v7 = dispatchedAggregatedReportCommon ? [objc_msgSend(dispatchedAggregatedReportCommon "description")] : "<nil>";
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
  return dispatchedAggregatedReportCommon;
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
  dispatchedAggregatedSessionReport = [(VCAggregator *)&v8 dispatchedAggregatedSessionReport];
  v9[0] = @"DRCT";
  v10[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._direction];
  v9[1] = @"DRTN";
  v10[1] = [MEMORY[0x277CCABA8] numberWithDouble:{self->_sessionTotalDuration * -[VCAggregator RTPeriod](self, "RTPeriod")}];
  v9[2] = @"TT";
  v10[2] = [MEMORY[0x277CCABA8] numberWithInt:self->super._transportType];
  v9[3] = @"RTCPTOCNT";
  v10[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_rtcpTimeoutCount];
  [dispatchedAggregatedSessionReport addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, v9, 4)}];
  countHostTimeJumped = self->_countHostTimeJumped;
  if (countHostTimeJumped)
  {
    v5 = (self->_totalHostTimeJumpSize / countHostTimeJumped);
  }

  else
  {
    v5 = 0;
  }

  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v5), @"AHTJS"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxHostTimeJumpSize), @"MHTJS"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_countHostTimeJumped), @"HTJC"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._mediaStreamEndReason == 0), @"MSSuccess"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->super._mediaStreamEndReason), @"MSEndReason"}];
  if (self->_maxNumberEndpoints)
  {
    [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"ENDPTC"}];
  }

  [(VCAggregatorAudioStream *)self aggregateSystemInfoReport:dispatchedAggregatedSessionReport];
  [(VCAggregatorAudioStream *)self aggregateRealtimeStats:dispatchedAggregatedSessionReport];
  [(VCAggregator *)self addLowLatencyInterfaceStatisticsToPayload:dispatchedAggregatedSessionReport];
  [(VCAggregatorAudioStream *)self aggregateChannelSequenceReport:dispatchedAggregatedSessionReport];
  if (self->_mode == 1)
  {
    [(VCAggregator *)self addThermalMetricsToReportDictionary:dispatchedAggregatedSessionReport];
    [(VCAggregatorAudioStream *)self aggregateJitterBufferMetricsToReportDictionary:dispatchedAggregatedSessionReport];
  }

  v6 = *MEMORY[0x277D85DE8];
  return dispatchedAggregatedSessionReport;
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

- (void)updateAudioStreamHostTimeJumpSizeStats:(id)stats
{
  if ([stats objectForKeyedSubscript:@"VCASHostTimeJumpSize"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VCASHostTimeJumpSize", "doubleValue"}];
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

- (void)aggregateChannelSequenceReport:(id)report
{
  if ([(VCAggregatorAudioStream *)self previousChannelSequence])
  {
    previousChannelSequence = [(VCAggregatorAudioStream *)self previousChannelSequence];
    v6 = &OBJC_IVAR___VCAggregatorAudioStream__previousChannelSequenceStats;
    if (!previousChannelSequence)
    {
      return;
    }
  }

  else
  {
    previousChannelSequence = [(VCAggregatorAudioStream *)self channelSequence];
    v6 = &OBJC_IVAR___VCAggregatorAudioStream__channelSequenceStats;
    if (!previousChannelSequence)
    {
      return;
    }
  }

  v7 = (self + *v6);
  [report setObject:previousChannelSequence forKeyedSubscript:@"CHSEQ"];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v7[1]), @"5GCHCNT"}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *v7), @"24GCHCNT"}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v7[2]), @"DFSCHCNT"}];
  v8 = [MEMORY[0x277CCABA8] numberWithInt:v7[3]];

  [report setObject:v8 forKeyedSubscript:@"INSLCNT"];
}

- (void)aggregateSystemInfoReport:(id)report
{
  remoteOSBuildVersion = self->_remoteOSBuildVersion;
  if (remoteOSBuildVersion)
  {
    [report setObject:remoteOSBuildVersion forKeyedSubscript:@"REMOSVER"];
  }

  remoteDeviceModel = self->_remoteDeviceModel;
  if (remoteDeviceModel)
  {
    [report setObject:remoteDeviceModel forKeyedSubscript:@"REMMDL"];
  }

  if (self->super._sessionID)
  {

    [report setObject:? forKeyedSubscript:?];
  }
}

- (void)aggregateRealtimeStats:(id)stats
{
  [(VCAggregatorAudioStream *)self aggregateMediCaptureRealtimeStats:?];

  [(VCAggregatorAudioStream *)self aggregateAudioPlaybackRealtimeStats:stats];
}

- (void)aggregateMediCaptureRealtimeStats:(id)stats
{
  sessionTotalDuration = self->_sessionTotalDuration;
  LODWORD(v3) = self->_mediaCaptureBufferRateTotal;
  v7 = v3;
  if (sessionTotalDuration == 0.0)
  {
    sessionTotalDuration = 1.0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (v7 / sessionTotalDuration)), @"AMCBR"}];
  v8 = self->_sessionTotalDuration;
  LODWORD(v9) = self->_mediaCaptureJitterTotal;
  v10 = v9;
  if (v8 == 0.0)
  {
    v8 = 1.0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (v10 / v8)), @"AMCJ"}];
  averageAudioBitrateCount = self->_averageAudioBitrateCount;
  if (averageAudioBitrateCount)
  {
    v12 = 1000 * (self->_averageAudioBitrate / averageAudioBitrateCount);
  }

  else
  {
    v12 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v12), @"AANTBR"}];
  averageAudioMediaBitrateCount = self->_averageAudioMediaBitrateCount;
  if (averageAudioMediaBitrateCount)
  {
    v14 = 1000 * (self->_averageAudioMediaBitrate / averageAudioMediaBitrateCount);
  }

  else
  {
    v14 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v14), @"AAMTBR"}];
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

  [stats setObject:v17 forKeyedSubscript:@"ATXBR"];
}

- (void)aggregateAudioPlaybackRealtimeStats:(id)stats
{
  if ((self->super._direction & 0xFFFFFFFE) == 2)
  {
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_audioErasureCount), @"AERCNT"}];
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (self->_totalAudioErasureTime * 1000.0)), @"TAERT"}];
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxAudioErasureCount), @"MAECT"}];
    averageJitterBufferDelayCount = self->_averageJitterBufferDelayCount;
    if (averageJitterBufferDelayCount)
    {
      v7 = (self->_averageJitterBufferDelay / averageJitterBufferDelayCount * 1000.0);
    }

    else
    {
      v7 = 0;
    }

    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v7), @"AAJBD"}];
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxJBTargetSizeChanges), @"MAJBSC"}];
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_channelCountRx), @"ARCC"}];
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_channelCountTx), @"ATCC"}];
    avgJBTargetSizeChangesCount = self->_avgJBTargetSizeChangesCount;
    if (avgJBTargetSizeChangesCount)
    {
      v9 = (self->_avgJBTargetSizeChanges / avgJBTargetSizeChangesCount * 1000.0);
    }

    else
    {
      v9 = 0;
    }

    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v9), @"AAJBSC"}];
    averageAudioBitrateCount = self->_averageAudioBitrateCount;
    if (averageAudioBitrateCount)
    {
      v11 = 1000 * (self->_averageAudioBitrate / averageAudioBitrateCount);
    }

    else
    {
      v11 = 0;
    }

    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v11), @"AANRBR"}];
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

    [stats setObject:v14 forKeyedSubscript:@"AAMRBR"];
  }
}

- (void)processMediaCaptureRealtimeStats:(id)stats
{
  if ([stats objectForKeyedSubscript:@"MediaCaptureJitter"])
  {
    self->_mediaCaptureJitterTotal += [objc_msgSend(stats objectForKeyedSubscript:{@"MediaCaptureJitter", "unsignedIntValue"}];
  }

  if ([stats objectForKeyedSubscript:@"MediaCaptureBufferRate"])
  {
    self->_mediaCaptureBufferRateTotal += [objc_msgSend(stats objectForKeyedSubscript:{@"MediaCaptureBufferRate", "unsignedIntValue"}];
  }

  if ([stats objectForKeyedSubscript:@"ATxR"])
  {
    self->_averageAudioBitrate += [objc_msgSend(stats objectForKeyedSubscript:{@"ATxR", "unsignedIntValue"}];
    ++self->_averageAudioBitrateCount;
  }

  if ([stats objectForKeyedSubscript:@"ATxRPrimary"])
  {
    self->_averageAudioMediaBitrate += [objc_msgSend(stats objectForKeyedSubscript:{@"ATxRPrimary", "unsignedIntValue"}];
    ++self->_averageAudioMediaBitrateCount;
  }

  if ([stats objectForKeyedSubscript:@"TTxR"])
  {
    self->_averageTargetBitrate += [objc_msgSend(stats objectForKeyedSubscript:{@"TTxR", "integerValue"}];
    ++self->_averageTargetBitrateCount;
  }
}

- (void)processAudioPlaybackRealtimeStats:(id)stats
{
  if ((self->super._direction & 0xFFFFFFFE) == 2)
  {
    v5 = [stats objectForKeyedSubscript:@"FrameErasureRate"];
    if (v5)
    {
      [v5 doubleValue];
      v7 = v6 * [(VCAggregator *)self RTPeriod];
      if (v7 != 0.0)
      {
        self->_totalAudioErasureTime = v7 + self->_totalAudioErasureTime;
      }
    }

    v8 = [stats objectForKeyedSubscript:@"FrameErasureCount"];
    if (v8)
    {
      v10 = v8;
      LODWORD(v9) = self->_maxAudioErasureCount;
      self->_maxAudioErasureCount = fmax(v9, [v8 unsignedIntValue]);
      self->_audioErasureCount += [v10 unsignedIntValue];
    }

    v11 = [stats objectForKeyedSubscript:@"ARCC"];
    if ([v11 unsignedIntValue])
    {
      self->_channelCountRx = [v11 unsignedIntValue];
    }

    v12 = [stats objectForKeyedSubscript:@"NJB"];
    [v12 doubleValue];
    if (v13 != 0.0)
    {
      [v12 doubleValue];
      self->_averageJitterBufferDelay = v14 + self->_averageJitterBufferDelay;
      ++self->_averageJitterBufferDelayCount;
    }

    v15 = [stats objectForKeyedSubscript:@"JitterBufferTargetChanges"];
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

    if ([stats objectForKeyedSubscript:@"ARxR"])
    {
      self->_averageAudioBitrate += [objc_msgSend(stats objectForKeyedSubscript:{@"ARxR", "unsignedIntValue"}];
      ++self->_averageAudioBitrateCount;
    }

    if ([stats objectForKeyedSubscript:@"AMRR"])
    {
      self->_averageAudioMediaBitrate += [objc_msgSend(stats objectForKeyedSubscript:{@"ATxRPrimary", "unsignedIntValue"}];
      ++self->_averageAudioMediaBitrateCount;
    }
  }
}

- (void)processSenderOnlyStats:(id)stats
{
  if ((self->super._direction | 2) == 3)
  {
    v4 = [stats objectForKeyedSubscript:@"ATCC"];
    if ([v4 unsignedIntValue])
    {
      self->_channelCountTx = [v4 unsignedIntValue];
    }
  }
}

- (void)processChannelSequenceStats:(id)stats
{
  if ([stats objectForKeyedSubscript:@"ChannelSequence"])
  {
    [(VCAggregatorAudioStream *)self setPreviousChannelSequence:[(VCAggregatorAudioStream *)self channelSequence]];
    self->_previousChannelSequenceStats = self->_channelSequenceStats;
    -[VCAggregatorAudioStream setChannelSequence:](self, "setChannelSequence:", [stats objectForKeyedSubscript:@"ChannelSequence"]);
    self->_channelSequenceStats.fiveGhzChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"Unique5GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.twoPtFourGhzChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"Unique2pt4GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.dfsChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"UniqueDFSChannelCount", "intValue"}];
    self->_channelSequenceStats.inactiveSlotCount = [objc_msgSend(stats objectForKeyedSubscript:{@"InactiveSlotCount", "intValue"}];
  }
}

- (void)processRealtimeStats:(id)stats
{
  [(VCAggregatorAudioStream *)self processMediaCaptureRealtimeStats:?];
  [(VCAggregatorAudioStream *)self processAudioPlaybackRealtimeStats:stats];
  [(VCAggregatorAudioStream *)self processSenderOnlyStats:stats];

  [(VCAggregatorAudioStream *)self processChannelSequenceStats:stats];
}

- (void)processAudioStreamStart:(id)start
{
  if ([(VCAggregatorAudioStream *)self supportsSegmentReporting])
  {
    [(VCAggregatorAudioStream *)self startNewSegment];
  }

  if ([start objectForKeyedSubscript:@"RemoteEndpoints"])
  {
    v5 = [objc_msgSend(start objectForKeyedSubscript:{@"RemoteEndpoints", "unsignedIntValue"}];
    self->_currentNumberEndpoints = v5;
    self->_maxNumberEndpoints = v5;
  }

  -[VCAggregatorAudioStream setRemoteOSBuildVersion:](self, "setRemoteOSBuildVersion:", [start objectForKeyedSubscript:@"VCVSRemoteOSBuildVersion"]);
  v6 = [start objectForKeyedSubscript:@"VCVSRemoteDeviceModel"];

  [(VCAggregatorAudioStream *)self setRemoteDeviceModel:v6];
}

- (void)processTransportInfo:(id)info
{
  if ([info objectForKeyedSubscript:@"TransportType"])
  {
    self->super._transportType = [objc_msgSend(info objectForKeyedSubscript:{@"TransportType", "intValue"}];

    [(VCAggregator *)self initializeLowLatencyInterfaceStatistics];
  }
}

- (void)processMediaStreamEndState:(id)state
{
  if ([state objectForKeyedSubscript:@"VCMSEndReason"])
  {
    self->super._mediaStreamEndReason = [objc_msgSend(state objectForKeyedSubscript:{@"VCMSEndReason", "unsignedIntValue"}];
  }
}

- (void)processEndpointChanged:(unsigned __int16)changed
{
  currentNumberEndpoints = self->_currentNumberEndpoints;
  if (changed != 1)
  {
    if (changed != 2)
    {
      goto LABEL_5;
    }

    *&changed = -1;
  }

  currentNumberEndpoints += changed;
  self->_currentNumberEndpoints = currentNumberEndpoints;
LABEL_5:
  if (currentNumberEndpoints > self->_maxNumberEndpoints)
  {
    self->_maxNumberEndpoints = currentNumberEndpoints;
  }
}

- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__VCAggregatorAudioStream_processEventWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  categoryCopy = category;
  typeCopy = type;
  block[4] = self;
  block[5] = payload;
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

- (void)telephonyCallingProcessAWDMetrics:(id)metrics
{
  v4 = [metrics objectForKeyedSubscript:@"RATType"];
  if (v4)
  {
    v5 = v4;
    if ([v4 intValue] <= 3)
    {
      self->_ratType = [v5 intValue];
    }
  }
}

- (void)aggregateJitterBufferMetricsToReportDictionary:(id)dictionary
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

    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:"), @"RMUSE"}];
    [dictionary setObject:-[VCHistogram description](self->_jbUnclippedTarget forKeyedSubscript:{"description"), @"AUJBL"}];
    [dictionary setObject:-[VCHistogram description](self->_jbSpikeSizeDelta forKeyedSubscript:{"description"), @"JBSS"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v10), @"JBJSR"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v11), @"JBSSR"}];
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

    [dictionary setObject:v19 forKeyedSubscript:@"SAAUDPLR"];
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
    selfCopy = self;
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