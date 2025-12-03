@interface VCAggregatorAirPlay
- (VCAggregatorAirPlay)initWithDelegate:(id)delegate options:(id)options;
- (id)aggregatedSegmentReport:(int)report;
- (void)addVideoFeatureStatus:(id)status;
- (void)composeChannelSequenceReport:(id)report;
- (void)composeReceiverReport:(id)report;
- (void)composeSenderReport:(id)report;
- (void)composeSystemInfoReport:(id)report;
- (void)dealloc;
- (void)flushCurrentSegment;
- (void)processBackgroundReplacementFeatureStatus:(id)status;
- (void)processEndpointChanged:(unsigned __int16)changed;
- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)processMediaCaptureRealtimeStats:(id)stats;
- (void)processMediaStreamEndState:(id)state;
- (void)processRealtimeStats:(id)stats;
- (void)processRealtimeStatsPart1:(id)part1;
- (void)processRealtimeStatsPart2:(id)part2;
- (void)processRealtimeStatsPart4:(id)part4;
- (void)processRealtimeStatsPart5:(id)part5;
- (void)processRealtimeStatsPart6:(id)part6;
- (void)reset;
- (void)startNewSegment;
- (void)updateReceiverVideoStreamConfiguration:(id)configuration;
- (void)updateSenderVideoStreamConfiguration:(id)configuration;
- (void)updateVideoFECStats:(id)stats;
- (void)updateVideoStreamInfo:(id)info;
@end

@implementation VCAggregatorAirPlay

- (VCAggregatorAirPlay)initWithDelegate:(id)delegate options:(id)options
{
  v31 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = VCAggregatorAirPlay;
  v5 = [(VCAggregator *)&v18 initWithDelegate:delegate nwParentActivity:0];
  if (v5)
  {
    v5->_RBR = [[VCReportingHistogram alloc] initWithType:7 bucketValues:0];
    v5->_TBR = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
    v5->_SBR = [[VCReportingHistogram alloc] initWithType:8 bucketValues:0];
    v5->_VST = [[VCReportingHistogram alloc] initWithType:30 bucketValues:0];
    v5->_PLR = [[VCReportingHistogram alloc] initWithType:2 bucketValues:0];
    v5->_BPL = [[VCReportingHistogram alloc] initWithType:37 bucketValues:0];
    v5->_EXT = [[VCReportingHistogram alloc] initWithType:38 bucketValues:0];
    v5->_BWE = [[VCReportingHistogram alloc] initWithType:36 bucketValues:0];
    v5->_VJS = [[VCReportingHistogram alloc] initWithType:40 bucketValues:0];
    v5->_RTT = [[VCReportingHistogram alloc] initWithType:0 bucketValues:0];
    v5->_HEL = [[VCReportingHistogram alloc] initWithType:39 bucketValues:0];
    v5->_minHIDEventLatency = -1;
    v5->super.super._backgroundReplacementDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    if (options)
    {
      v5->super.super._shouldReportLowLatencyInterfaceStatistics = [objc_msgSend(options objectForKeyedSubscript:{@"ReportLowLatencyInterfaceStatistics", "BOOLValue"}];
      if (objc_opt_class() == v5)
      {
        if (VRTraceGetErrorLogLevelForModule("") < 7)
        {
          goto LABEL_14;
        }

        v7 = VRTraceErrorLogLevelToCSTR(7u);
        v8 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        shouldReportLowLatencyInterfaceStatistics = v5->super.super._shouldReportLowLatencyInterfaceStatistics;
        *buf = 136315906;
        v20 = v7;
        v21 = 2080;
        v22 = "[VCAggregatorAirPlay initWithDelegate:options:]";
        v23 = 1024;
        v24 = 193;
        v25 = 1024;
        LODWORD(v26) = shouldReportLowLatencyInterfaceStatistics;
        v10 = " [%s] %s:%d _shouldReportLowLatencyInterfaceStatistics=%d";
        v11 = v8;
        v12 = 34;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [(VCAggregatorAirPlay *)v5 performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") < 7)
        {
          goto LABEL_14;
        }

        v13 = VRTraceErrorLogLevelToCSTR(7u);
        v14 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v15 = v5->super.super._shouldReportLowLatencyInterfaceStatistics;
        *buf = 136316418;
        v20 = v13;
        v21 = 2080;
        v22 = "[VCAggregatorAirPlay initWithDelegate:options:]";
        v23 = 1024;
        v24 = 193;
        v25 = 2112;
        v26 = v6;
        v27 = 2048;
        v28 = v5;
        v29 = 1024;
        v30 = v15;
        v10 = " [%s] %s:%d %@(%p) _shouldReportLowLatencyInterfaceStatistics=%d";
        v11 = v14;
        v12 = 54;
      }

      _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

LABEL_14:
    [(VCAggregatorAirPlay *)v5 startNewSegment];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorAirPlay;
  [(VCAggregatorVideoStream *)&v3 dealloc];
}

- (void)flushCurrentSegment
{
  v29 = *MEMORY[0x277D85DE8];
  sessionTotalDuration = self->_sessionTotalDuration;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
  if (sessionTotalDuration > 1.0)
  {
    if (ErrorLogLevelForModule < 8)
    {
      goto LABEL_14;
    }

    v5 = VRTraceErrorLogLevelToCSTR(8u);
    v6 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        segmentName = self->_segmentName;
        v8 = self->_sessionTotalDuration;
        v19 = 136316162;
        v20 = v5;
        v21 = 2080;
        v22 = "[VCAggregatorAirPlay flushCurrentSegment]";
        v23 = 1024;
        v24 = 235;
        v25 = 2112;
        v26 = segmentName;
        v27 = 2048;
        v28 = v8;
        v9 = " [%s] %s:%d VCAggregatorAirPlay: Segment '%@' with duration '%.3f' flushed";
LABEL_10:
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, v9, &v19, 0x30u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v13 = self->_segmentName;
    v14 = self->_sessionTotalDuration;
    v19 = 136316162;
    v20 = v5;
    v21 = 2080;
    v22 = "[VCAggregatorAirPlay flushCurrentSegment]";
    v23 = 1024;
    v24 = 235;
    v25 = 2112;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    v15 = " [%s] %s:%d VCAggregatorAirPlay: Segment '%@' with duration '%.3f' flushed";
LABEL_16:
    _os_log_debug_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEBUG, v15, &v19, 0x30u);
    goto LABEL_14;
  }

  if (ErrorLogLevelForModule < 8)
  {
    goto LABEL_14;
  }

  v10 = VRTraceErrorLogLevelToCSTR(8u);
  v6 = gVRTraceOSLog;
  if (gVRTraceLogDebugAsInfo != 1)
  {
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v17 = self->_segmentName;
    v18 = self->_sessionTotalDuration;
    v19 = 136316162;
    v20 = v10;
    v21 = 2080;
    v22 = "[VCAggregatorAirPlay flushCurrentSegment]";
    v23 = 1024;
    v24 = 232;
    v25 = 2112;
    v26 = v17;
    v27 = 2048;
    v28 = v18;
    v15 = " [%s] %s:%d VCAggregatorAirPlay: Segment '%@' has too few events '%.3f'. Ignoring its stats";
    goto LABEL_16;
  }

  if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_segmentName;
    v12 = self->_sessionTotalDuration;
    v19 = 136316162;
    v20 = v10;
    v21 = 2080;
    v22 = "[VCAggregatorAirPlay flushCurrentSegment]";
    v23 = 1024;
    v24 = 232;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = v12;
    v9 = " [%s] %s:%d VCAggregatorAirPlay: Segment '%@' has too few events '%.3f'. Ignoring its stats";
    goto LABEL_10;
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
}

- (id)aggregatedSegmentReport:(int)report
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  direction = self->super.super._direction;
  if (direction == [VCAggregator mediaStreamDirectionForSegmentReportDirection:?])
  {
    stateQueue = self->super.super._stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__VCAggregatorAirPlay_aggregatedSegmentReport___block_invoke;
    block[3] = &unk_278BD4890;
    block[4] = self;
    block[5] = &v11;
    reportCopy = report;
    dispatch_sync(stateQueue, block);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __47__VCAggregatorAirPlay_aggregatedSegmentReport___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) composeSegmentReport:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)composeChannelSequenceReport:(id)report
{
  if ([(VCAggregatorAirPlay *)self previousChannelSequence])
  {
    previousChannelSequence = [(VCAggregatorAirPlay *)self previousChannelSequence];
    v6 = &OBJC_IVAR___VCAggregatorAirPlay__previousChannelSequenceStats;
    if (!previousChannelSequence)
    {
      return;
    }
  }

  else
  {
    previousChannelSequence = [(VCAggregatorAirPlay *)self channelSequence];
    v6 = &OBJC_IVAR___VCAggregatorAirPlay__channelSequenceStats;
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

- (void)composeSystemInfoReport:(id)report
{
  remoteFrameworkVersion = self->_remoteFrameworkVersion;
  if (remoteFrameworkVersion)
  {
    [report setObject:remoteFrameworkVersion forKeyedSubscript:@"REMFWVER"];
  }

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

  if (self->super.super._sessionID)
  {

    [report setObject:? forKeyedSubscript:?];
  }
}

- (void)composeReceiverReport:(id)report
{
  v64[5] = *MEMORY[0x277D85DE8];
  sessionTotalDuration = self->_sessionTotalDuration;
  v6 = (sessionTotalDuration * [(VCAggregator *)self RTPeriod]);
  if (v6)
  {
    v7 = (self->_totalVideoStallTime / v6 * 10000.0);
  }

  else
  {
    v7 = 0;
  }

  v8 = self->_sessionTotalDuration;
  if (v8 == 0.0)
  {
    v10 = 0;
    v9 = 0;
    v11 = 0;
  }

  else
  {
    v9 = (self->_avgFramerate / v8);
    v10 = (self->_averageReceiveBitrate / v8);
    v11 = (self->_averageVideoRxMetadataOverheadBitrate / v8);
  }

  v63[0] = @"VSP";
  v64[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v7];
  v63[1] = @"ARFR";
  v64[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v9];
  v63[2] = @"ARBR";
  v64[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v10];
  v63[3] = @"RBR";
  v64[3] = [(VCHistogram *)self->_RBR description];
  v63[4] = @"VRAMDO";
  v64[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v11];
  [report addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v64, v63, 5)}];
  [(VCAggregator *)self addFECStatsHolderKPIs:report usingFECStatsHolder:self->super.super._fecStatsHolder];
  videoStallCount = self->_videoStallCount;
  if (videoStallCount)
  {
    HIDWORD(v12) = 1083129856;
    v14 = (self->_totalVideoStallTime / videoStallCount * 1000.0);
    if (v6)
    {
LABEL_9:
      v12 = v6;
      v44 = (self->_totalFIRCounter * 1000.0 / v6);
      v15 = (self->_videoFrameDisplayedCounter / v6);
      v16 = (self->_decodedVideoFrameEnqueueCounter / v6);
      v17 = (self->_videoFrameReceivedCounter / v6);
      v18 = (self->_videoFrameExpectedCounter / v6);
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  v44 = 0;
  v17 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v18 = 0.0;
LABEL_12:
  evictedFramesAnalysisValidIntervals = self->_evictedFramesAnalysisValidIntervals;
  if (evictedFramesAnalysisValidIntervals)
  {
    v12 = evictedFramesAnalysisValidIntervals;
    v20 = (self->_evictedFramesAverageLatePacketDelay * 1000.0 / evictedFramesAnalysisValidIntervals);
  }

  else
  {
    v20 = 0;
  }

  v21 = self->_sessionTotalDuration;
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  else
  {
    LODWORD(v12) = self->_accumVideoFrameErasureCount;
    v21 = *&v12 * 1000.0 / v21;
    v22 = v21;
  }

  evictedFramesTrackedCount = self->_evictedFramesTrackedCount;
  if (evictedFramesTrackedCount)
  {
    LODWORD(v21) = self->_evictedFramesRecoveredCount;
    v24 = (*&v21 * 10000.0 / evictedFramesTrackedCount);
  }

  else
  {
    v24 = 0;
  }

  v61[0] = @"AVSI";
  v62[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v14];
  v61[1] = @"VS";
  v62[1] = [(VCHistogram *)self->_VST description];
  v61[2] = @"VSTCNT";
  v62[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_videoStallCount];
  v61[3] = @"MVSI";
  v62[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxVideoStallInterval * 1000.0)];
  v61[4] = @"VRFR";
  v62[4] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v15];
  v61[5] = @"VREFR";
  v62[5] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v16];
  v61[6] = @"VRRFR";
  v62[6] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v17];
  v61[7] = @"VRExFR";
  v62[7] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v18];
  v61[8] = @"AFIRFR";
  v62[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v44];
  v61[9] = @"VPBEVALPD";
  v62[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v20];
  v61[10] = @"PEVFR";
  v62[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v24];
  v61[11] = @"VMFRERC";
  v62[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxVideoFrameErasureCount];
  v61[12] = @"VAFRERC";
  v62[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v22];
  v61[13] = @"MVSTCT";
  v62[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxVideoStallCount];
  v61[14] = @"MNVFR";
  v62[14] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_minVideoFrameRate];
  reportCopy2 = report;
  [report addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v62, v61, 15)}];
  averageHIDEventLatencySampleCount = self->_averageHIDEventLatencySampleCount;
  if (averageHIDEventLatencySampleCount)
  {
    v28 = self->_averageHIDEventLatency / averageHIDEventLatencySampleCount;
  }

  else
  {
    v28 = 0;
  }

  minHIDEventLatency = self->_minHIDEventLatency;
  if (minHIDEventLatency == -1)
  {
    v30 = 0;
  }

  else
  {
    v30 = minHIDEventLatency;
  }

  v31 = self->_sessionTotalDuration;
  v32 = 0.0;
  v33 = 0.0;
  if (v31 != 0.0)
  {
    LODWORD(v26) = self->_averageJitterQueueSizeChanges;
    v26 = *&v26;
    v33 = v26 / v31;
  }

  if (v6)
  {
    v26 = self->_timeSpentWithNonZeroJitterQueueSize * 10000.0;
    v32 = v26 / v6;
  }

  if (v31 == 0.0)
  {
    v34 = 0;
    v35 = 0.0;
    v36 = 0.0;
    if (v6)
    {
      goto LABEL_33;
    }
  }

  else
  {
    LODWORD(v26) = self->_averageJitterQueueSize;
    v34 = (*&v26 / v31);
    v35 = self->_averagePlaybackOffset / v31;
    v36 = self->_timeWeightedJitterQueueSize / v31;
    if (v6)
    {
LABEL_33:
      v37 = self->_decodedVideoFrameCount / v6;
      goto LABEL_36;
    }
  }

  v37 = 0;
LABEL_36:
  v59[0] = @"MINHEL";
  v60[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v30];
  v59[1] = @"MAXHEL";
  v60[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxHIDEventLatency];
  v59[2] = @"AHEL";
  v60[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v28];
  v59[3] = @"HEL";
  v60[3] = [(VCHistogram *)self->_HEL description];
  v59[4] = @"HELSCNT";
  v60[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_averageHIDEventLatencySampleCount];
  v59[5] = @"AJBSCH";
  v60[5] = [MEMORY[0x277CCABA8] numberWithDouble:v33];
  v59[6] = @"PJBQZ";
  v60[6] = [MEMORY[0x277CCABA8] numberWithDouble:v32];
  v59[7] = @"MJBL";
  v60[7] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxJitterQueueSize];
  v59[8] = @"JBQS";
  v60[8] = [(VCHistogram *)self->_VJS description];
  v59[9] = @"AJBL";
  v60[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v34];
  v59[10] = @"AVPO";
  v60[10] = [MEMORY[0x277CCABA8] numberWithDouble:v35];
  v59[11] = @"MVPO";
  v60[11] = [MEMORY[0x277CCABA8] numberWithDouble:self->_maxPlaybackOffset];
  v59[12] = @"TWJBL";
  v60[12] = [MEMORY[0x277CCABA8] numberWithDouble:v36];
  v59[13] = @"VRDFR";
  v60[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v37];
  [report addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v60, v59, 14)}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super.super._mediaStreamEndReason == 0), @"MSSuccess"}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->super.super._mediaStreamEndReason), @"MSEndReason"}];
  v57 = @"CDC";
  v58 = [MEMORY[0x277CCABA8] numberWithInt:self->_codec];
  [report addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v58, &v57, 1)}];
  if (self->_maxNumberEndpoints)
  {
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"ENDPTC"}];
  }

  if (self->_codecLayers)
  {
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:"), @"CDCL"}];
  }

  [(VCAggregator *)self addThermalMetricsToReportDictionary:report];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    __str = 0;
    v38 = report ? [objc_msgSend(report "description")] : "<nil>";
    asprintf(&__str, "%s", v38);
    if (__str)
    {
      __lasts = 0;
      v39 = strtok_r(__str, "\n", &__lasts);
      do
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v40 = VRTraceErrorLogLevelToCSTR(7u);
          v41 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v48 = v40;
            v49 = 2080;
            v50 = "[VCAggregatorAirPlay composeReceiverReport:]";
            v51 = 1024;
            v52 = 426;
            v53 = 2080;
            v54 = "VideoStream: sessionReport";
            v55 = 2080;
            v56 = v39;
            _os_log_impl(&dword_23D4DF000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v39 = strtok_r(0, "\n", &__lasts);
      }

      while (v39);
      free(__str);
      reportCopy2 = report;
    }
  }

  dispatchedAggregatedSessionReport = [(VCAggregatorVideoStream *)self dispatchedAggregatedSessionReport];
  [reportCopy2 setObject:objc_msgSend(dispatchedAggregatedSessionReport forKeyedSubscript:{"objectForKeyedSubscript:", @"THERMDUR", @"THERMDUR"}];
  [reportCopy2 setObject:objc_msgSend(dispatchedAggregatedSessionReport forKeyedSubscript:{"objectForKeyedSubscript:", @"PCONFQ", @"PCONFQ"}];
  [reportCopy2 setObject:objc_msgSend(dispatchedAggregatedSessionReport forKeyedSubscript:{"objectForKeyedSubscript:", @"PCONP", @"PCONP"}];
  v43 = *MEMORY[0x277D85DE8];
}

- (void)composeSenderReport:(id)report
{
  v37[28] = *MEMORY[0x277D85DE8];
  sessionTotalDuration = self->_sessionTotalDuration;
  v6 = (sessionTotalDuration * [(VCAggregator *)self RTPeriod]);
  v8 = self->_sessionTotalDuration;
  if (v8 == 0.0)
  {
    v9 = 0;
    v10 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = (self->_averageTargetBitrate / v8);
    v7 = self->_averageSendBitrate / v8;
    v10 = v7;
    if (v6)
    {
LABEL_3:
      LODWORD(v7) = self->_totalNACKCounter;
      v11 = (*&v7 * 1000.0 / v6);
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  if (v8 == 0.0)
  {
    v23 = 0;
    v19 = 0;
    v15 = 0;
    v31 = 0;
    v32 = 0;
    v13 = 0;
    v17 = 0;
    mediaCaptureBufferRateTotal = self->_mediaCaptureBufferRateTotal;
    v29 = 0;
    mediaCaptureJitterTotal = self->_mediaCaptureJitterTotal;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v31 = (self->_averageExpirationTime / v8);
    *&v12 = self->_averageWiFiPacketDelay / v8;
    v13 = *&v12;
    LODWORD(v12) = self->_averageWiFiThroughput;
    *&v14 = v12 / v8;
    v15 = *&v14;
    LODWORD(v14) = self->_averagePacketLossRate;
    *&v16 = v14 / v8;
    v17 = *&v16;
    LODWORD(v16) = self->_averageBurstyPacketLossCount;
    *&v18 = v16 / v8;
    v19 = *&v18;
    LODWORD(v18) = self->_averageBandwidthEstimation;
    *&v20 = v18 / v8;
    v21 = *&v20;
    LODWORD(v20) = self->_averageRoundTripTime;
    *&v22 = v20 / v8;
    v23 = *&v22;
    LODWORD(v22) = self->_mediaCaptureBufferRateTotal;
    *&v24 = v22 / v8;
    v25 = *&v24;
    LODWORD(v24) = self->_mediaCaptureJitterTotal;
    v29 = v21;
    mediaCaptureJitterTotal = (v24 / v8);
    v32 = (self->_averageVideoTxMetadataOverheadBitrate / v8);
    mediaCaptureBufferRateTotal = v25;
    if (v6)
    {
LABEL_8:
      v28 = self->_encodedVideoFrameCount / v6;
      goto LABEL_11;
    }
  }

  v28 = 0;
LABEL_11:
  v36[0] = @"ATXBR";
  v37[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v9];
  v36[1] = @"ASBR";
  v37[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v10];
  v36[2] = @"TBR";
  v37[2] = [(VCHistogram *)self->_TBR description];
  v36[3] = @"SBR";
  v37[3] = [(VCHistogram *)self->_SBR description];
  v36[4] = @"MTBR";
  v37[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxTargetBitrate];
  v36[5] = @"MSBR";
  v37[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxSendBitrate];
  v36[6] = @"MPLR";
  v37[6] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxPLR];
  v36[7] = @"PLR";
  v37[7] = [(VCHistogram *)self->_PLR description];
  v36[8] = @"APLR";
  v37[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v17];
  v36[9] = @"AWFPD";
  v37[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v13];
  v36[10] = @"AWFT";
  v37[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v15];
  v36[11] = @"ANAKR";
  v37[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v11];
  v36[12] = @"ABL";
  v37[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v19];
  v36[13] = @"MBL";
  v37[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxBurstyPacketLossCount];
  v36[14] = @"BL";
  v37[14] = [(VCHistogram *)self->_BPL description];
  v36[15] = @"ARTT";
  v37[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v23];
  v36[16] = @"MRTT";
  v37[16] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxRoundTripTime];
  v36[17] = @"RTT";
  v37[17] = [(VCHistogram *)self->_RTT description];
  v36[18] = @"AEXT";
  v37[18] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v31];
  v36[19] = @"MEXT";
  v37[19] = [MEMORY[0x277CCABA8] numberWithDouble:self->_maxExpirationTime];
  v36[20] = @"EXT";
  v37[20] = [(VCHistogram *)self->_EXT description];
  v36[21] = @"ABWE";
  v37[21] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v29];
  v36[22] = @"MBWE";
  v37[22] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxBandwidthEstimation];
  v36[23] = @"BWE";
  v37[23] = [(VCHistogram *)self->_BWE description];
  v36[24] = @"AMCJ";
  v37[24] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:mediaCaptureJitterTotal];
  v36[25] = @"AMCBR";
  v37[25] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:mediaCaptureBufferRateTotal];
  v36[26] = @"VTAMDO";
  v37[26] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v32];
  v36[27] = @"VTEFR";
  v37[27] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v28];
  [report addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v37, v36, 28)}];
  dispatchedAggregatedSessionReport = [(VCAggregatorVideoStream *)self dispatchedAggregatedSessionReport];
  [report setObject:objc_msgSend(dispatchedAggregatedSessionReport forKeyedSubscript:{"objectForKeyedSubscript:", @"THERMDUR", @"THERMDUR"}];
  [report setObject:objc_msgSend(dispatchedAggregatedSessionReport forKeyedSubscript:{"objectForKeyedSubscript:", @"PCONFQ", @"PCONFQ"}];
  [report setObject:objc_msgSend(dispatchedAggregatedSessionReport forKeyedSubscript:{"objectForKeyedSubscript:", @"PCONP", @"PCONP"}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super.super._mediaStreamEndReason == 0), @"MSSuccess"}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->super.super._mediaStreamEndReason), @"MSEndReason"}];
  [(VCAggregator *)self addThermalMetricsToReportDictionary:report];
  v34 = @"CDC";
  v35 = [MEMORY[0x277CCABA8] numberWithInt:self->_codec];
  [report addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v35, &v34, 1)}];
  if (self->_maxNumberEndpoints)
  {
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"ENDPTC"}];
  }

  if (self->_codecLayers)
  {
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:"), @"CDCL"}];
  }

  [(VCAggregatorAirPlay *)self addVideoFeatureStatus:report];
  v27 = *MEMORY[0x277D85DE8];
}

- (void)addVideoFeatureStatus:(id)status
{
  v5.receiver = self;
  v5.super_class = VCAggregatorAirPlay;
  [(VCAggregator *)&v5 addVideoFeatureStatus:?];
  [VCAggregator addVideoFeatureStatus:self->super.super._backgroundReplacementStatus histogramKey:@"BGRDUR" histogram:self->super.super._backgroundReplacementDuration statusKey:@"BGRFENB" report:status];
}

- (void)updateVideoFECStats:(id)stats
{
  v4 = [stats objectForKeyedSubscript:@"VFecStats"];
  fecStatsHolder = self->super.super._fecStatsHolder;

  [(VCAggregator *)self updateFECStats:fecStatsHolder usingUpdateValuesIn:v4];
}

- (void)processRealtimeStatsPart1:(id)part1
{
  if ([part1 objectForKeyedSubscript:@"VST"])
  {
    [objc_msgSend(part1 objectForKeyedSubscript:{@"VST", "doubleValue"}];
    v6 = v5;
    v7 = v5 - self->_lastReportedVideoStallTime;
    [(VCHistogram *)self->_VST addValue:v7];
    maxVideoStallInterval = self->_maxVideoStallInterval;
    if (v7 > maxVideoStallInterval)
    {
      maxVideoStallInterval = v7;
    }

    self->_maxVideoStallInterval = maxVideoStallInterval;
    self->_lastReportedVideoStallTime = v6;
    self->_totalVideoStallTime = v7 + self->_totalVideoStallTime;
  }

  if ([part1 objectForKeyedSubscript:@"VSTCNT"])
  {
    v9 = [objc_msgSend(part1 objectForKeyedSubscript:{@"VSTCNT", "integerValue"}];
    self->_videoStallCount += v9;
    LODWORD(v10) = self->_maxVideoStallCount;
    self->_maxVideoStallCount = fmax(v10, v9);
  }

  if ([part1 objectForKeyedSubscript:@"VRxR"])
  {
    v11 = [objc_msgSend(part1 objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    [(VCHistogram *)self->_RBR addValue:v11];
    self->_averageReceiveBitrate += v11;
  }

  if ([part1 objectForKeyedSubscript:@"VTxR"])
  {
    v12 = [objc_msgSend(part1 objectForKeyedSubscript:{@"VTxR", "integerValue"}];
    [(VCHistogram *)self->_SBR addValue:v12];
    maxSendBitrate = self->_maxSendBitrate;
    if (maxSendBitrate <= v12)
    {
      maxSendBitrate = v12;
    }

    self->_maxSendBitrate = maxSendBitrate;
    self->_averageSendBitrate += v12;
  }

  if ([part1 objectForKeyedSubscript:@"VTxMetadataOverhead"])
  {
    self->_averageVideoTxMetadataOverheadBitrate += [objc_msgSend(part1 objectForKeyedSubscript:{@"VTxMetadataOverhead", "integerValue"}];
  }

  if ([part1 objectForKeyedSubscript:@"VRxMetadataOverhead"])
  {
    self->_averageVideoRxMetadataOverheadBitrate += [objc_msgSend(part1 objectForKeyedSubscript:{@"VRxMetadataOverhead", "integerValue"}];
  }

  if ([part1 objectForKeyedSubscript:@"ULTBR"])
  {
    v14 = [objc_msgSend(part1 objectForKeyedSubscript:{@"ULTBR", "integerValue"}];
    [(VCHistogram *)self->_TBR addValue:v14];
    maxTargetBitrate = self->_maxTargetBitrate;
    if (maxTargetBitrate <= v14)
    {
      maxTargetBitrate = v14;
    }

    self->_maxTargetBitrate = maxTargetBitrate;
    self->_averageTargetBitrate += v14;
  }

  if ([part1 objectForKeyedSubscript:@"VIQDCnt"])
  {
    self->_videoFrameDisplayedCounter += [objc_msgSend(part1 objectForKeyedSubscript:{@"VIQDCnt", "integerValue"}];
  }

  if ([part1 objectForKeyedSubscript:@"CodecLayers"])
  {
    self->_codecLayers = [objc_msgSend(part1 objectForKeyedSubscript:{@"CodecLayers", "integerValue"}];
  }
}

- (void)processRealtimeStatsPart2:(id)part2
{
  if ([part2 objectForKeyedSubscript:@"DVFECnt"])
  {
    self->_decodedVideoFrameEnqueueCounter += [objc_msgSend(part2 objectForKeyedSubscript:{@"DVFECnt", "integerValue"}];
  }

  if ([part2 objectForKeyedSubscript:@"VFRxCnt"])
  {
    self->_videoFrameReceivedCounter += [objc_msgSend(part2 objectForKeyedSubscript:{@"VFRxCnt", "integerValue"}];
  }

  if ([part2 objectForKeyedSubscript:@"VFExCnt"])
  {
    self->_videoFrameExpectedCounter += [objc_msgSend(part2 objectForKeyedSubscript:{@"VFExCnt", "integerValue"}];
  }

  if ([part2 objectForKeyedSubscript:@"ULPLR"])
  {
    v5 = [objc_msgSend(part2 objectForKeyedSubscript:{@"ULPLR", "integerValue"}];
    v6 = v5;
    maxPLR = self->_maxPLR;
    if (maxPLR <= v5)
    {
      maxPLR = v5;
    }

    self->_maxPLR = maxPLR;
    [(VCHistogram *)self->_PLR addValue:v5];
    self->_averagePacketLossRate += v6;
  }

  if ([part2 objectForKeyedSubscript:@"VFIRCnt"])
  {
    self->_totalFIRCounter += [objc_msgSend(part2 objectForKeyedSubscript:{@"VFIRCnt", "intValue"}];
  }
}

- (void)processRealtimeStatsPart4:(id)part4
{
  if ([part4 objectForKeyedSubscript:@"NWAPD"])
  {
    [objc_msgSend(part4 objectForKeyedSubscript:{@"NWAPD", "doubleValue"}];
    self->_averageWiFiPacketDelay = v5 + self->_averageWiFiPacketDelay;
  }

  if ([part4 objectForKeyedSubscript:@"MAWFPD"])
  {
    [objc_msgSend(part4 objectForKeyedSubscript:{@"MAWFPD", "doubleValue"}];
    self->_averageMaxAverageWiFiPacketDelay = v6 + self->_averageMaxAverageWiFiPacketDelay;
  }

  if ([part4 objectForKeyedSubscript:@"NWATH"])
  {
    self->_averageWiFiThroughput += [objc_msgSend(part4 objectForKeyedSubscript:{@"NWATH", "intValue"}];
  }

  if ([part4 objectForKeyedSubscript:@"NWNaC"])
  {
    self->_totalNACKCounter = [objc_msgSend(part4 objectForKeyedSubscript:{@"NWNaC", "intValue"}];
  }

  if ([part4 objectForKeyedSubscript:@"ULBPL"])
  {
    v7 = [objc_msgSend(part4 objectForKeyedSubscript:{@"ULBPL", "intValue"}];
    self->_averageBurstyPacketLossCount += v7;
    maxBurstyPacketLossCount = self->_maxBurstyPacketLossCount;
    if (v7 > maxBurstyPacketLossCount)
    {
      maxBurstyPacketLossCount = v7;
    }

    self->_maxBurstyPacketLossCount = maxBurstyPacketLossCount;
    [(VCHistogram *)self->_BPL addValue:v7];
  }

  if ([part4 objectForKeyedSubscript:@"ULBWE"])
  {
    v9 = [objc_msgSend(part4 objectForKeyedSubscript:{@"ULBWE", "intValue"}];
    v10 = v9;
    self->_averageBandwidthEstimation += v9;
    maxBandwidthEstimation = self->_maxBandwidthEstimation;
    if (v9 > maxBandwidthEstimation)
    {
      maxBandwidthEstimation = v9;
    }

    self->_maxBandwidthEstimation = maxBandwidthEstimation;
    BWE = self->_BWE;

    [(VCHistogram *)BWE addValue:v10];
  }
}

- (void)processRealtimeStatsPart5:(id)part5
{
  if ([part5 objectForKeyedSubscript:@"VIQAHEL"])
  {
    v5 = [objc_msgSend(part5 objectForKeyedSubscript:{@"VIQAHEL", "intValue"}];
    v6 = [objc_msgSend(part5 objectForKeyedSubscript:{@"VIQHELSCNT", "intValue"}];
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    self->_averageHIDEventLatency += v7 * v5;
    self->_averageHIDEventLatencySampleCount += v7;
    [(VCHistogram *)self->_HEL addValue:v5 withIncrement:?];
  }

  if ([part5 objectForKeyedSubscript:@"VIQMaxHEL"])
  {
    v8 = [objc_msgSend(part5 objectForKeyedSubscript:{@"VIQMaxHEL", "intValue"}];
    maxHIDEventLatency = self->_maxHIDEventLatency;
    if (v8 > maxHIDEventLatency)
    {
      maxHIDEventLatency = v8;
    }

    self->_maxHIDEventLatency = maxHIDEventLatency;
  }

  if ([part5 objectForKeyedSubscript:@"VIQMinHEL"])
  {
    v10 = [objc_msgSend(part5 objectForKeyedSubscript:{@"VIQMinHEL", "intValue"}];
    minHIDEventLatency = self->_minHIDEventLatency;
    if (v10 < minHIDEventLatency)
    {
      minHIDEventLatency = v10;
    }

    self->_minHIDEventLatency = minHIDEventLatency;
  }
}

- (void)processRealtimeStatsPart6:(id)part6
{
  if ([part6 objectForKeyedSubscript:@"RTT"])
  {
    v5 = [objc_msgSend(part6 objectForKeyedSubscript:{@"RTT", "intValue"}];
    self->_averageRoundTripTime += v5;
    maxRoundTripTime = self->_maxRoundTripTime;
    if (v5 > maxRoundTripTime)
    {
      maxRoundTripTime = v5;
    }

    self->_maxRoundTripTime = maxRoundTripTime;
    [(VCHistogram *)self->_RTT addValue:v5];
  }

  if ([part6 objectForKeyedSubscript:@"VJ"])
  {
    [objc_msgSend(part6 objectForKeyedSubscript:{@"VJ", "doubleValue"}];
    v8 = (v7 * 1000.0);
    self->_averageJitterQueueSize += v8;
    maxJitterQueueSize = self->_maxJitterQueueSize;
    if (maxJitterQueueSize <= v8)
    {
      maxJitterQueueSize = (v7 * 1000.0);
    }

    self->_maxJitterQueueSize = maxJitterQueueSize;
    [(VCHistogram *)self->_VJS addValue:?];
  }

  if ([part6 objectForKeyedSubscript:@"VJBTC"])
  {
    self->_averageJitterQueueSizeChanges += [objc_msgSend(part6 objectForKeyedSubscript:{@"VJBTC", "intValue"}];
  }

  if ([part6 objectForKeyedSubscript:@"VPO"])
  {
    [objc_msgSend(part6 objectForKeyedSubscript:{@"VPO", "doubleValue"}];
    maxPlaybackOffset = v10 * 1000.0;
    self->_averagePlaybackOffset = maxPlaybackOffset + self->_averagePlaybackOffset;
    if (maxPlaybackOffset <= self->_maxPlaybackOffset)
    {
      maxPlaybackOffset = self->_maxPlaybackOffset;
    }

    self->_maxPlaybackOffset = maxPlaybackOffset;
  }

  if ([part6 objectForKeyedSubscript:@"VJBTNZT"])
  {
    [objc_msgSend(part6 objectForKeyedSubscript:{@"VJBTNZT", "doubleValue"}];
    self->_timeSpentWithNonZeroJitterQueueSize = v12 + self->_timeSpentWithNonZeroJitterQueueSize;
  }

  if ([part6 objectForKeyedSubscript:@"VJBTWA"])
  {
    [objc_msgSend(part6 objectForKeyedSubscript:{@"VJBTWA", "doubleValue"}];
    self->_timeWeightedJitterQueueSize = v13 * 1000.0 + self->_timeWeightedJitterQueueSize;
  }

  if ([part6 objectForKeyedSubscript:@"ChannelSequence"])
  {
    [(VCAggregatorAirPlay *)self setPreviousChannelSequence:[(VCAggregatorAirPlay *)self channelSequence]];
    self->_previousChannelSequenceStats = self->_channelSequenceStats;
    -[VCAggregatorAirPlay setChannelSequence:](self, "setChannelSequence:", [part6 objectForKeyedSubscript:@"ChannelSequence"]);
    self->_channelSequenceStats.fiveGhzChannelCount = [objc_msgSend(part6 objectForKeyedSubscript:{@"Unique5GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.twoPtFourGhzChannelCount = [objc_msgSend(part6 objectForKeyedSubscript:{@"Unique2pt4GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.dfsChannelCount = [objc_msgSend(part6 objectForKeyedSubscript:{@"UniqueDFSChannelCount", "intValue"}];
    self->_channelSequenceStats.inactiveSlotCount = [objc_msgSend(part6 objectForKeyedSubscript:{@"InactiveSlotCount", "intValue"}];
  }

  if ([part6 objectForKeyedSubscript:@"VFEVTrCnt"])
  {
    self->_evictedFramesTrackedCount += [objc_msgSend(part6 objectForKeyedSubscript:{@"VFEVTrCnt", "intValue"}];
  }

  if ([part6 objectForKeyedSubscript:@"VFEVLtPktDelay"])
  {
    [objc_msgSend(part6 objectForKeyedSubscript:{@"VFEVLtPktDelay", "doubleValue"}];
    self->_evictedFramesAverageLatePacketDelay = v14 + self->_evictedFramesAverageLatePacketDelay;
    if (v14 != 0.0)
    {
      ++self->_evictedFramesAnalysisValidIntervals;
    }
  }

  if ([part6 objectForKeyedSubscript:@"VFrErCnt"])
  {
    v15 = [objc_msgSend(part6 objectForKeyedSubscript:{@"VFrErCnt", "intValue"}];
    self->_accumVideoFrameErasureCount += v15;
    LODWORD(v16) = self->_maxVideoFrameErasureCount;
    self->_maxVideoFrameErasureCount = fmax(v16, v15);
  }

  if ([part6 objectForKeyedSubscript:@"NRFr"])
  {
    v17 = [objc_msgSend(part6 objectForKeyedSubscript:{@"NRFr", "intValue"}];
    LODWORD(v18) = self->_minVideoFrameRate;
    self->_minVideoFrameRate = fmin(v18, v17);
  }

  if ([part6 objectForKeyedSubscript:@"VFEVRecoveredCnt"])
  {
    self->_evictedFramesRecoveredCount += [objc_msgSend(part6 objectForKeyedSubscript:{@"VFEVRecoveredCnt", "intValue"}];
  }
}

- (void)processBackgroundReplacementFeatureStatus:(id)status
{
  self->super.super._backgroundReplacementStatus = [(VCAggregator *)self processVideoFeatureStatus:@"BGRFENB" currentFeatureStatus:self->super.super._backgroundReplacementStatus payload:status];
  backgroundReplacementDuration = self->super.super._backgroundReplacementDuration;

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMBGRA" durationHistogram:backgroundReplacementDuration payload:status];
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

  if ([stats objectForKeyedSubscript:@"EncOutFrameCnt"])
  {
    self->_encodedVideoFrameCount += [objc_msgSend(stats objectForKeyedSubscript:{@"EncOutFrameCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"DecOutFrameCnt"])
  {
    self->_decodedVideoFrameCount += [objc_msgSend(stats objectForKeyedSubscript:{@"DecOutFrameCnt", "integerValue"}];
  }
}

- (void)processRealtimeStats:(id)stats
{
  self->_sessionTotalDuration = self->_sessionTotalDuration + 1.0;
  [(VCAggregatorAirPlay *)self processRealtimeStatsPart1:?];
  [(VCAggregatorAirPlay *)self processRealtimeStatsPart2:stats];
  [(VCAggregatorAirPlay *)self processRealtimeStatsPart3:stats];
  [(VCAggregatorAirPlay *)self processRealtimeStatsPart4:stats];
  [(VCAggregatorAirPlay *)self processRealtimeStatsPart5:stats];
  [(VCAggregatorAirPlay *)self processRealtimeStatsPart6:stats];
  [(VCAggregatorAirPlay *)self processMediaCaptureRealtimeStats:stats];

  [(VCAggregator *)self updateVideoFeatureStatus:stats];
}

- (void)updateVideoStreamInfo:(id)info
{
  if (!self->super.super._streamToken && [info objectForKeyedSubscript:@"VCVSStreamToken"])
  {
    if ([info objectForKeyedSubscript:@"VCMSDirection"])
    {
      self->super.super._streamToken = [objc_msgSend(info objectForKeyedSubscript:{@"VCVSStreamToken", "copy"}];
      self->super.super._sessionID = [objc_msgSend(info objectForKeyedSubscript:{@"CallID", "copy"}];
      self->super.super._direction = [objc_msgSend(info objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
    }
  }
}

- (void)updateSenderVideoStreamConfiguration:(id)configuration
{
  self->_videoWidth = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigWidth", "intValue"}];
  self->_videoHeight = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigHeight", "intValue"}];
  if (self->super.super._direction == 2)
  {
    v5 = @"VCVSConfigRxCodecType";
  }

  else
  {
    v5 = @"VCVSConfigTxCodecType";
  }

  self->_codec = [objc_msgSend(configuration objectForKeyedSubscript:{v5), "intValue"}];
  v6 = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigHDRMode", "intValue"}];

  self->_segmentName = 0;
  if (v6)
  {
    v7 = @"HDR";
  }

  else
  {
    v7 = @"NHDR";
  }

  self->_segmentName = [(__CFString *)v7 copy];
  self->_remoteFrameworkVersion = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteFrameworkVersion", "copy"}];
  self->_remoteOSBuildVersion = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteOSBuildVersion", "copy"}];
  self->_remoteDeviceModel = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteDeviceModel", "copy"}];
  if ([configuration objectForKeyedSubscript:@"RemoteEndpoints"])
  {
    v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"RemoteEndpoints", "unsignedIntValue"}];
    self->_currentNumberEndpoints = v8;
    self->_maxNumberEndpoints = v8;
  }
}

- (void)updateReceiverVideoStreamConfiguration:(id)configuration
{
  self->_avgFramerate += [objc_msgSend(configuration objectForKeyedSubscript:{@"Framerate", "intValue"}];
  self->_videoWidth = [objc_msgSend(configuration objectForKeyedSubscript:{@"Width", "intValue"}];
  self->_videoHeight = [objc_msgSend(configuration objectForKeyedSubscript:{@"Height", "intValue"}];
}

- (void)reset
{
  [(VCAggregatorDelegate *)self->super.super._delegate reportSegment:[(VCAggregatorAirPlay *)self composeSegmentReport:self->super.super._direction == 2] withMessageType:[(VCAggregatorAirPlay *)self messageTypeForSegmentReportWithDirection:self->super.super._direction == 2] clientType:9];

  self->super.super._localInterfaceType = 0;
  self->super.super._connectionType = 0;

  self->super.super._streamToken = 0;
  self->super.super._sessionID = 0;
  self->super.super._switchIntoDupCount = 0;
  self->_inactiveSlotCount = 0;
  self->_dfsChannelCount = 0;
  self->_fiveGhzChannelCount = 0;
  self->_twoPtFourGhzChannelCount = 0;
  self->super.super._transportType = 0;
  self->_codec = 0;
  self->_videoHeight = 0;
  self->_videoWidth = 0;
  self->_totalFIRCounter = 0;
  self->_maxPLR = 0;
  self->_maxTargetBitrate = 0;
  self->_averageTargetBitrate = 0;
  self->_maxSendBitrate = 0;
  self->_averageSendBitrate = 0;
  self->_averageReceiveBitrate = 0;
  self->_avgFramerate = 0;
  self->_videoStallCount = 0;
  self->_maxPlaybackOffset = 0.0;
  self->_averagePlaybackOffset = 0.0;
  self->_timeSpentWithNonZeroJitterQueueSize = 0.0;
  self->_averageMaxAverageWiFiPacketDelay = 0.0;
  self->_averageWiFiPacketDelay = 0.0;
  self->_maxExpirationTime = 0.0;
  self->_averageExpirationTime = 0.0;
  self->_maxVideoStallInterval = 0.0;
  self->_totalVideoStallTime = 0.0;
  self->_lastReportedVideoStallTime = 0.0;
  self->_sessionTotalDuration = 0.0;
  self->_averagePacketLossRate = 0;
  self->_maxBurstyPacketLossCount = 0;
  self->_averageBurstyPacketLossCount = 0;
  self->_totalNACKCounter = 0;
  self->_averageWiFiThroughput = 0;
  self->_maxJitterQueueSize = 0;
  self->_averageJitterQueueSizeChanges = 0;
  self->_averageJitterQueueSize = 0;
  self->_maxBandwidthEstimation = 0;
  self->_averageBandwidthEstimation = 0;
  self->_maxHIDEventLatency = 0;
  self->_averageHIDEventLatency = 0;
  self->_averageHIDEventLatencySampleCount = 0;
  self->_maxRoundTripTime = 0;
  self->_averageRoundTripTime = 0;
  self->_videoFrameDisplayedCounter = 0;
  self->_videoFrameNonFECCompleteCounter = 0;
  self->_videoFrameNonFECTotalCounter = 0;
  self->_minHIDEventLatency = 0;
  self->super.super._mediaStreamEndReason = 0;
  self->_rtcpTimeoutCount = 0;
  self->_videoFrameExpectedCounter = 0;
  self->_videoFrameReceivedCounter = 0;
  self->_decodedVideoFrameEnqueueCounter = 0;
  self->_encodedVideoFrameCount = 0;
  self->_decodedVideoFrameCount = 0;
  self->_currentNumberEndpoints = 0;
  self->_maxNumberEndpoints = 0;

  self->_segmentName = 0;
  self->_segmentName = [@"NHDR" copy];

  self->_channelSequence = 0;
  self->_previousChannelSequence = 0;

  self->_remoteOSBuildVersion = 0;
  self->_remoteFrameworkVersion = 0;

  self->_remoteDeviceModel = 0;
  [(VCAggregator *)self setLowLatencyInterfaceStatistics:0];
  [(VCHistogram *)self->_RBR reset];
  [(VCHistogram *)self->_TBR reset];
  [(VCHistogram *)self->_SBR reset];
  [(VCHistogram *)self->_VST reset];
  [(VCHistogram *)self->_PLR reset];
  [(VCHistogram *)self->_BPL reset];
  [(VCHistogram *)self->_EXT reset];
  [(VCHistogram *)self->_BWE reset];
  [(VCHistogram *)self->_VJS reset];
  [(VCHistogram *)self->_RTT reset];
  [(VCHistogram *)self->_HEL reset];
  *&self->_channelSequenceStats.twoPtFourGhzChannelCount = 0;
  *&self->_channelSequenceStats.dfsChannelCount = 0;
  *&self->_previousChannelSequenceStats.twoPtFourGhzChannelCount = 0;
  *&self->_previousChannelSequenceStats.dfsChannelCount = 0;
}

- (void)startNewSegment
{
  [(VCAggregatorAirPlay *)self flushCurrentSegment];

  [(VCAggregatorAirPlay *)self reset];
}

- (void)processMediaStreamEndState:(id)state
{
  if ([state objectForKeyedSubscript:@"VCMSEndReason"])
  {
    self->super.super._mediaStreamEndReason = [objc_msgSend(state objectForKeyedSubscript:{@"VCMSEndReason", "unsignedIntValue"}];
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
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__VCAggregatorAirPlay_processEventWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  categoryCopy = category;
  block[4] = self;
  block[5] = payload;
  typeCopy = type;
  dispatch_sync(stateQueue, block);
}

id __61__VCAggregatorAirPlay_processEventWithCategory_type_payload___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        *buf = 136315906;
        v13 = v2;
        v14 = 2080;
        v15 = "[VCAggregatorAirPlay processEventWithCategory:type:payload:]_block_invoke";
        v16 = 1024;
        v17 = 944;
        v18 = 1024;
        v19 = v4;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AirPlay: received method=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __61__VCAggregatorAirPlay_processEventWithCategory_type_payload___block_invoke_cold_1(v2, a1, v3);
    }
  }

  [*(a1 + 32) updateVideoStreamInfo:*(a1 + 40)];
  v5 = *(a1 + 48);
  v6 = *(a1 + 50);
  v7 = *(a1 + 40);
  v11.receiver = *(a1 + 32);
  v11.super_class = VCAggregatorAirPlay;
  result = objc_msgSendSuper2(&v11, sel_dispatchedProcessEventWithCategory_type_payload_, v5, v6, v7);
  v9 = *(a1 + 48);
  if (v9 > 0xC9)
  {
    if (*(a1 + 48) > 0xEFu)
    {
      if (v9 == 240)
      {
        result = [*(a1 + 32) processRealtimeStats:*(a1 + 40)];
      }

      else if (v9 == 374)
      {
        result = [*(a1 + 32) processEndpointChanged:*(a1 + 50)];
      }
    }

    else if (v9 == 202)
    {
      result = [*(a1 + 32) processMediaStreamEndState:*(a1 + 40)];
    }

    else if (v9 == 214)
    {
      ++*(*(a1 + 32) + 1736);
    }
  }

  else if (*(a1 + 48) > 0x2Fu)
  {
    if (v9 == 48)
    {
      result = [*(a1 + 32) updateVideoFeatureStatus:*(a1 + 40)];
    }

    else if (v9 == 201)
    {
      [*(a1 + 32) startNewSegment];
      [*(a1 + 32) updateVideoStreamInfo:*(a1 + 40)];
      result = [*(a1 + 32) updateSenderVideoStreamConfiguration:*(a1 + 40)];
    }
  }

  else if (v9 == 31)
  {
    if (*(a1 + 50) == 1)
    {
      result = [*(a1 + 32) updateReceiverVideoStreamConfiguration:*(a1 + 40)];
    }
  }

  else if (v9 == 41)
  {
    result = [*(a1 + 40) objectForKeyedSubscript:@"TransportType"];
    if (result)
    {
      *(*(a1 + 32) + 448) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TransportType", "intValue"}];
      result = [*(a1 + 32) initializeLowLatencyInterfaceStatistics];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __61__VCAggregatorAirPlay_processEventWithCategory_type_payload___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v5 = 136315906;
  v6 = a1;
  v7 = 2080;
  v8 = "[VCAggregatorAirPlay processEventWithCategory:type:payload:]_block_invoke";
  v9 = 1024;
  v10 = 944;
  v11 = 1024;
  v12 = v3;
  _os_log_debug_impl(&dword_23D4DF000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AirPlay: received method=%d", &v5, 0x22u);
  v4 = *MEMORY[0x277D85DE8];
}

@end