@interface VCAggregatorFaceTime
+ (id)newThermalDataCollectors;
+ (void)newThermalDataCollectors;
- (BOOL)isDuplicationChangedForEventType:(unsigned __int16)a3;
- (VCAggregatorFaceTime)initWithDelegate:(id)a3 nwParentActivity:(id)a4 conversationTimeBase:(id)a5;
- (double)markHandshakeCompletion:(id)a3;
- (id)aggregatedCallReports;
- (id)aggregatedSegmentQRReport;
- (id)aggregatedSegmentReport:(int)a3;
- (id)aggregatedSegmentReportInternal:(int)a3;
- (id)updatePayloadWithSingleParticipantData:(id)a3;
- (void)addConnectionTiming:(id)a3;
- (void)addControlChannelTelemetry:(id)a3;
- (void)dealloc;
- (void)flushCurrentSegment;
- (void)flushCurrentSegment:(id)a3;
- (void)markHandshakeStart:(id)a3;
- (void)populateSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)a3 toPayload:(id)a4;
- (void)processBackgroundReplacementStatus:(id)a3;
- (void)processCameraResolution:(id)a3;
- (void)processCenterStageFeatureStatus:(id)a3;
- (void)processConnectionEstablishment:(id)a3;
- (void)processControlChannelEventType:(unsigned __int16)a3 payload:(id)a4;
- (void)processDuplication:(id)a3 type:(unsigned __int16)a4;
- (void)processEventTriggerForNewSegment:(id)a3;
- (void)processEyeContactFeatureStatus:(id)a3;
- (void)processPortraitModeFeatureStatus:(id)a3;
- (void)processRTXConfigData:(id)a3;
- (void)processReactionFeatureStatus:(id)a3;
- (void)processRtcpPSFBForResiliencyConfigData:(id)a3;
- (void)processStudioLightFeatureStatus:(id)a3;
- (void)processThermalLevelChange:(id)a3 withTime:(double)a4;
- (void)processWindowMode:(id)a3 responseCode:(int)a4;
- (void)reset:(id)a3;
- (void)setNWActivityReportingEnabled:(BOOL)a3;
- (void)setupAdaptiveLearningWithParameters:(id)a3;
- (void)startNewSegment:(id)a3;
- (void)transferActiveSegmentStatus:(id)a3;
- (void)updateAVSyncOffsetSumAndCountWithValue:(int)a3;
- (void)updateAlgoMetrics:(id)a3 type:(unsigned int)a4;
- (void)updateAudioTxStatsWithPayload:(id)a3;
- (void)updateBitrateCap:(id)a3;
- (void)updateCellTech:(id)a3;
- (void)updateCenterStageEnabled:(unsigned __int16)a3;
- (void)updateConnectionSubTimes:(id)a3;
- (void)updateConnectionTelemetry:(id)a3;
- (void)updateCoreMotionActivityWithPayload:(id)a3;
- (void)updateCurrentMediaBitratesWithPayload:(id)a3;
- (void)updateErrorCode:(id)a3;
- (void)updateLateFrameStats:(id)a3;
- (void)updateLinkProbingStats:(unsigned int)a3 payload:(id)a4;
- (void)updateLinkSuggestionTelemetry:(id)a3;
- (void)updateNetworkSendResultStats:(id)a3;
- (void)updateNetworkStats:(unsigned int)a3 payload:(id)a4;
- (void)updateNoRemoteState:(id)a3 state:(BOOL)a4;
- (void)updatePauseVideo:(id)a3;
- (void)updatePortraitBlurEnabled:(unsigned __int16)a3;
- (void)updatePrimaryConnHealthAllowedDelay:(double)a3;
- (void)updateProtocolStackDescription:(id)a3;
- (void)updateQRExperiments:(id)a3;
- (void)updateRTStats:(id)a3;
- (void)updateRTXStats:(id)a3;
- (void)updateRateControlExperiment:(id)a3 type:(unsigned __int16)a4;
- (void)updateRateControlSmartBrakeTrialVersion:(id)a3 type:(unsigned __int16)a4;
- (void)updateRelayInfo:(id)a3;
- (void)updateSegmentStats:(id)a3;
- (void)updateSpatialAudioSupport:(id)a3;
- (void)updateSwitchConfiguration:(unsigned int)a3 payload:(id)a4;
- (void)updateThermalDataCollectorsStateWithPayload:(id)a3 withTime:(double)a4;
- (void)updateThermalMetricsFromPayload:(id)a3;
- (void)updateTotalConnectionTime:(id)a3;
- (void)updateVCRCProfileNumber:(unsigned int)a3;
- (void)updateVPCStatus:(id)a3;
- (void)updateVideoQualityWithPayload:(id)a3;
- (void)updateVideoResolution:(id)a3;
- (void)updateVideoSwitchTimes:(id)a3;
- (void)updateWRMMetrics:(unsigned int)a3 payload:(id)a4;
@end

@implementation VCAggregatorFaceTime

- (VCAggregatorFaceTime)initWithDelegate:(id)a3 nwParentActivity:(id)a4 conversationTimeBase:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = VCAggregatorFaceTime;
  v5 = [(VCAggregator *)&v15 initWithDelegate:a3 nwParentActivity:a4 conversationTimeBase:a5];
  v6 = v5;
  if (v5)
  {
    v5->super._isOneToOneMode = 1;
    v5->super._isDuplicationEnabled = 0;
    v5->_callTotalDurationTicks = 0;
    v5->_callAggregatedDurationTicks = 0;
    v5->_minVideoFrameRate = 60;
    v5->_callVideoSwitchPeriodHistogram = [[VCReportingHistogram alloc] initWithType:31 bucketValues:0];
    v6->_lossPattern = [[VCReportingHistogram alloc] initWithType:41 bucketValues:0];
    v6->_minVPCProcessingTime = 4294967300.0;
    v6->_JBQSizeDeltaVidLarger = [[VCReportingHistogram alloc] initWithType:45 bucketValues:0];
    v6->_JBQSizeDeltaAudLarger = [[VCReportingHistogram alloc] initWithType:45 bucketValues:0];
    v6->_evictedFramesLatePacketHist = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
    v6->super.super._retransmissionResponseTime = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
    v6->super.super._retransmissionLateTime = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
    v6->super.super._retransmissionActualMediaBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v6->super.super._retransmissionBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v6->_minVPCProcessingTime = 4294967300.0;
    v6->super._nwActivity = nw_activity_create();
    if (v6->super._sessionNwActivity)
    {
      nw_activity_set_parent_activity();
      nwActivity = v6->super._nwActivity;
    }

    nw_activity_activate();
    v6->_minAVSyncOffset = 0x7FFFFFFF;
    v6->_maxAVSyncOffset = 0x80000000;
    v6->_lastSegmentKey = objc_alloc_init(MEMORY[0x277CCACA0]);
    v6->_pipThermalDurations = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->_handshakeStartTime = NAN;
    v6->_handshakeDuration = NAN;
    v6->super._studioLightDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._centerStageDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._portraitModeDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._backgroundReplacementDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._reactionActiveDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._eyeContactDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->_currentAudioCodecPayload = 0;
    v6->_currentAudioMediaBitrate = 0;
    v6->_lastAudioTierStatsUpdate = 0.0;
    v6->_nacksPLRWithRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
    v6->_nacksPLRWithoutRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
    v6->_thermalDataCollectors = +[VCAggregatorFaceTime newThermalDataCollectors];
    v6->_mediaReceivedTime = 0x80000000;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        lossPattern = v6->_lossPattern;
        JBQSizeDeltaVidLarger = v6->_JBQSizeDeltaVidLarger;
        JBQSizeDeltaAudLarger = v6->_JBQSizeDeltaAudLarger;
        *buf = 136316418;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCAggregatorFaceTime initWithDelegate:nwParentActivity:conversationTimeBase:]";
        v20 = 1024;
        v21 = 2139;
        v22 = 2048;
        v23 = lossPattern;
        v24 = 2048;
        v25 = JBQSizeDeltaVidLarger;
        v26 = 2048;
        v27 = JBQSizeDeltaAudLarger;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _lossPattern=%p _JBQSizeDeltaVidLarger=%p _JBQSizeDeltaAudLarger=%p", buf, 0x3Au);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  self->_lastSegmentKey = 0;

  if (self->super._nwActivity)
  {
    nw_activity_complete_with_reason();
    nw_release(self->super._nwActivity);
    self->super._nwActivity = 0;
  }

  v3.receiver = self;
  v3.super_class = VCAggregatorFaceTime;
  [(VCAggregator *)&v3 dealloc];
}

- (void)setupAdaptiveLearningWithParameters:(id)a3
{
  if ([objc_msgSend(a3 objectForKeyedSubscript:{sRTCReportingAdaptiveLearningState), "intValue"}])
  {
    v5 = [[VCAdaptiveLearning alloc] initWithParameters:a3];
  }

  else
  {
    v5 = 0;
  }

  self->super._adaptiveLearning = v5;
}

+ (id)newThermalDataCollectors
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (!v2)
  {
    +[(VCAggregatorFaceTime *)&v14];
LABEL_13:
    v12 = v14;
    v13 = v15;

    return 0;
  }

  v3 = objc_alloc_init(VCWalkieTalkieData);
  if (!v3)
  {
    +[(VCAggregatorFaceTime *)&v14];
    goto LABEL_13;
  }

  v4 = v3;
  v5 = objc_alloc_init(VCRelayData);
  if (!v5)
  {
    [(VCAggregatorFaceTime *)v4 newThermalDataCollectors:&v15];
    goto LABEL_13;
  }

  v6 = v5;
  v7 = objc_alloc_init(VCEffectsData);
  if (!v7)
  {
    [(VCAggregatorFaceTime *)v6 newThermalDataCollectors:v4];
    goto LABEL_13;
  }

  v8 = v7;
  v9 = objc_alloc_init(VCVoiceIsolationData);
  if (!v9)
  {
    [(VCAggregatorFaceTime *)v8 newThermalDataCollectors:v6];
    goto LABEL_13;
  }

  v10 = v9;
  [v2 addObject:v4];
  [v2 addObject:v6];
  [v2 addObject:v8];
  [v2 addObject:v10];

  return v2;
}

- (id)aggregatedSegmentReportInternal:(int)a3
{
  if (a3 == 2)
  {
    return [(CallSegment *)self->_currentSegment segmentReport];
  }

  else
  {
    return 0;
  }
}

- (id)aggregatedSegmentReport:(int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__1;
  stateQueue = self->super._stateQueue;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__VCAggregatorFaceTime_aggregatedSegmentReport___block_invoke;
  block[3] = &unk_278BD4890;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(stateQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __48__VCAggregatorFaceTime_aggregatedSegmentReport___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) aggregatedSegmentReportInternal:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)aggregatedSegmentQRReport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__VCAggregatorFaceTime_aggregatedSegmentQRReport__block_invoke;
  v5[3] = &unk_278BD4CF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__VCAggregatorFaceTime_aggregatedSegmentQRReport__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1368) setErrorCode:*(*(a1 + 32) + 520)];
  result = [*(*(a1 + 32) + 1368) segmentQRReport];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)addControlChannelTelemetry:(id)a3
{
  [(VCAggregatorFaceTime *)self markHandshakeCompletion:0];
  v4 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:?], 2);

  [a3 setObject:v4 forKeyedSubscript:@"CCHDRTN"];
}

- (void)addConnectionTiming:(id)a3
{
  mediaReceivedTime = self->_mediaReceivedTime;
  if (mediaReceivedTime != 0x80000000 && (mediaReceivedTime || self->_transportConnectionTime) && (self->_mediaReceivedToProcessedTime || self->super._isWalkieTalkieMode))
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_totalConnectionTime), @"CTCT"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_startConnectionTime), @"CST"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_transportConnectionTime), @"CTT"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_totalMediaStallSaveInterval), @"TMSSI"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_mediaReceivedTime), @"MRT"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_mediaReceivedToProcessedTime), @"MRPT"}];
  }

  if (self->_totalConnectionTime_Alt && [MEMORY[0x277CCABA8] numberWithUnsignedInt:?])
  {
    v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"CTCT", @"A"];
    if (self->_totalConnectionTime_Alt)
    {
      v7 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
    }

    else
    {
      v7 = 0;
    }

    [a3 setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)updateTotalConnectionTime:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if ([a3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAE5)}])
  {
    if ([a3 objectForKeyedSubscript:@"VCSPIDSID"])
    {
      self->_totalConnectionTime_Alt = [objc_msgSend(a3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAE5)), "unsignedIntValue"}];
      if (VRTraceGetErrorLogLevelForModule("") >= 6)
      {
        v5 = VRTraceErrorLogLevelToCSTR(6u);
        v6 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [a3 objectForKeyedSubscript:@"VCSPIDSID"];
          totalConnectionTime_Alt = self->_totalConnectionTime_Alt;
          v10 = 136316162;
          v11 = v5;
          v12 = 2080;
          v13 = "[VCAggregatorFaceTime updateTotalConnectionTime:]";
          v14 = 1024;
          v15 = 2285;
          v16 = 2112;
          v17 = v7;
          v18 = 1024;
          v19 = totalConnectionTime_Alt;
          _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing for participantID=%@, TotalConnectionTime=%d", &v10, 0x2Cu);
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)aggregatedCallReports
{
  v16[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  stateQueue = self->super._stateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__VCAggregatorFaceTime_aggregatedCallReports__block_invoke;
  v9[3] = &unk_278BD4C10;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(stateQueue, v9);
  activeConnectionRegistry = self->super._activeConnectionRegistry;
  if (activeConnectionRegistry)
  {
    [v11[5] setObject:activeConnectionRegistry forKeyedSubscript:@"ACAS"];
  }

  v5 = v11[5];
  v16[0] = v11[5];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __45__VCAggregatorFaceTime_aggregatedCallReports__block_invoke(uint64_t a1)
{
  v208[1] = *MEMORY[0x277D85DE8];
  v182 = objc_alloc(MEMORY[0x277CBEB38]);
  v180 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "RTPeriod") * *(*(a1 + 32) + 1420)}];
  v178 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 548)];
  v176 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1744)];
  v174 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1748)];
  v173 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 479)];
  v171 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(*(a1 + 32), "adaptiveLearningState")}];
  v169 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 516)];
  v167 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 520)];
  v165 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 188)];
  v163 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 784)];
  v161 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 2120)];
  v159 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 2144)];
  v157 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 2145)];
  v155 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 432)];
  v2 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 433)];
  v3 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 428)];
  v4 = [MEMORY[0x277CCABA8] numberWithInt:*(*(a1 + 32) + 2148)];
  v5 = [MEMORY[0x277CCABA8] numberWithInt:*(*(a1 + 32) + 2152)];
  v6 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2088)];
  v7 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2096)];
  v8 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 472)];
  v9 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 473)];
  *(*(*(a1 + 40) + 8) + 40) = [v182 initWithObjectsAndKeys:{v180, @"DRTN", v178, @"MODE", v176, @"DEVROLE", v174, @"TT", v173, @"INTTR", v171, @"MLRN", v169, @"ERR", v167, @"DERR", v165, @"NEGSW", &unk_284FA5408, @"RVER", v163, @"VPCENBD", v161, @"EXPE", v159, @"CAMCENSTAGE", v157, @"CAMB", v155, @"RTXNacksEnabled", v2, @"RTXNacksDelayedEnabled", v3, @"RTXNacksConfigVersion", v4, @"CAMRESW", v5, @"CAMRESH", v6, @"TPSSCTR", v7, @"TPSFCTR", v8, @"RtcpForLoss", v9, @"RtcpForLtrAck", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", *(*(a1 + 32) + 330)), @"DIAFELD", 0}];
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v189.receiver = *(a1 + 32);
  v189.super_class = VCAggregatorFaceTime;
  [v10 addEntriesFromDictionary:{objc_msgSendSuper2(&v189, sel_dispatchedAggregatedReportCommon)}];
  [*(a1 + 32) addConnectionTiming:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) addVPCTelemetry:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) addIDSTelemetry:*(*(*(a1 + 40) + 8) + 40)];
  [objc_msgSend(*(a1 + 32) "captionsDataCollector")];
  v11 = *(a1 + 32);
  if (*(v11 + 192) == 1)
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v207 = @"REMSW";
    v208[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v11 + 184)];
    [v12 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v208, &v207, 1)}];
    v11 = *(a1 + 32);
  }

  [v11 addVideoFeatureStatus:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) reportSpatialAudioSupport:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:{objc_msgSend(*(a1 + 32), "reportingClientExperimentSettingsDictionary")}];
  [*(a1 + 32) addControlChannelTelemetry:*(*(*(a1 + 40) + 8) + 40)];
  v13 = *(a1 + 32);
  if (*(v13 + 384))
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *(v13 + 392)), @"StartDate"}];
    v14 = MEMORY[0x277CCABA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(v14 forKeyedSubscript:{"numberWithInt:", v15), @"EndDate"}];
    v13 = *(a1 + 32);
  }

  if (*(v13 + 1884) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", 1), @"1T1SWT"}];
    v13 = *(a1 + 32);
    if (*(v13 + 1888) > 0.0)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:"), @"1T1SWTT"}];
      v13 = *(a1 + 32);
    }
  }

  if (*(v13 + 1885) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", 1), @"GFTSWT"}];
    v13 = *(a1 + 32);
    if (*(v13 + 1904) > 0.0)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:"), @"GFTSWTT"}];
      v13 = *(a1 + 32);
    }
  }

  if (*(v13 + 1896))
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"1T1SWTERR"}];
    v13 = *(a1 + 32);
  }

  if (*(v13 + 1912))
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"GFTSWTERR"}];
    v13 = *(a1 + 32);
  }

  v16 = *(v13 + 176);
  if (v16)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKeyedSubscript:@"REMBUILD"];
    v13 = *(a1 + 32);
  }

  [v13 addCameraMetricsToReportDictionary:*(*(*(a1 + 40) + 8) + 40) totalDuration:{objc_msgSend(v13, "RTPeriod") * *(v13 + 1420)}];
  [*(a1 + 32) addThermalMetricsToReportDictionary:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(*(a1 + 32) forKeyedSubscript:{"symptomsOccurrencesStats"), @"ABC"}];
  [*(a1 + 32) updateReportWithQRServerSessionStats:*(*(*(a1 + 40) + 8) + 40)];
  result = *(a1 + 32);
  if (*(result + 2280) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", 1), @"VCSCACAMTX"}];
    result = *(a1 + 32);
  }

  if (*(result + 2281) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", 1), @"VCSCACAMRX"}];
    result = *(a1 + 32);
  }

  if (*(result + 1320))
  {
    v18 = *(result + 1424);
    v19 = [result RTPeriod] * v18;
    v20 = *(a1 + 32);
    v21 = v19;
    if (*(v20 + 1656) <= v19)
    {
      v22 = *(v20 + 1656);
    }

    else
    {
      v22 = v19;
    }

    v23 = *(v20 + 1024);
    if (*(v20 + 1680) <= v21)
    {
      v24 = *(v20 + 1680);
    }

    else
    {
      v24 = v19;
    }

    if (v23 <= v21)
    {
      v25 = *(v20 + 1024);
    }

    else
    {
      v25 = v19;
    }

    v146 = v24;
    v147 = v25;
    if (v19)
    {
      LODWORD(v25) = *(v20 + 1792);
      *&v26 = *&v25 * 1000.0 / v21;
      LODWORD(v151) = *&v26;
      LODWORD(v26) = *(v20 + 1796);
      *&v27 = v26 * 1000.0 / v21;
      v150 = *&v27;
      LODWORD(v27) = *(v20 + 1800);
      *&v28 = v27 * 1000.0 / v21;
      HIDWORD(v151) = *&v28;
      LODWORD(v28) = *(v20 + 1804);
      *&v29 = v28 * 1000.0 / v21;
      LODWORD(v152) = *&v29;
      LODWORD(v29) = *(v20 + 1928);
      *&v30 = v29 * 1000.0 / v21;
      HIDWORD(v154) = *&v30;
      LODWORD(v30) = *(v20 + 1808);
      *&v31 = v30 * 1000.0 / v21;
      HIDWORD(v152) = *&v31;
      LODWORD(v31) = *(v20 + 1964);
      *&v32 = v31 * 1000.0 / v21;
      v156 = *&v32;
      LODWORD(v32) = *(v20 + 1812);
      *&v33 = v32 * 1000.0 / v21;
      LODWORD(v153) = *&v33;
      LODWORD(v33) = *(v20 + 1816);
      *&v34 = v33 * 1000.0 / v21;
      v158 = *&v34;
      LODWORD(v34) = *(v20 + 1820);
      *&v35 = v34 * 1000.0 / v21;
      HIDWORD(v153) = *&v35;
      LODWORD(v35) = *(v20 + 1832);
      *&v36 = v35 * 1000.0 / v21;
      v160 = *&v36;
      LODWORD(v36) = *(v20 + 1836);
      v23 = v36;
      LODWORD(v154) = (v23 * 1000.0 / v21);
    }

    else
    {
      v160 = 0;
      v158 = 0;
      v156 = 0;
      v153 = 0;
      v154 = 0;
      v151 = 0;
      v152 = 0;
      v150 = 0;
    }

    v37 = *(v20 + 592);
    if (v37)
    {
      HIDWORD(v23) = 1083129856;
      v38 = (*(v20 + 584) / v37 * 1000.0);
    }

    else
    {
      v38 = 0;
    }

    v39 = *(v20 + 1424);
    v40 = 0.0;
    v41 = v39;
    v42 = 0.0;
    if (v39 >= 1)
    {
      v23 = *(v20 + 1640);
      v42 = v23 / v41;
    }

    if (v19)
    {
      LODWORD(v23) = *(v20 + 1648);
      v40 = *&v23 * 1000.0 / v21;
    }

    v43 = *(v20 + 928);
    v44 = 0.0;
    v45 = 0.0;
    if (v43)
    {
      v45 = *(v20 + 920) / v43;
    }

    if (v19)
    {
      v44 = v43 * 1000.0 / v21;
    }

    v46 = 0.0;
    v47 = 0.0;
    if (v39 >= 1)
    {
      v41 = *(v20 + 936) / v41;
      v47 = v41 * 100.0;
    }

    if (v19)
    {
      LODWORD(v41) = *(v20 + 944);
      v41 = *&v41 * 1000.0;
      v46 = v41 / v21;
    }

    if (v39)
    {
      LODWORD(v41) = *(v20 + 948);
      *&v48 = *&v41 * 1000.0 / v39;
      v49 = *&v48;
      LODWORD(v48) = *(v20 + 952);
      *&v50 = v48 * 1000.0 / v39;
      LODWORD(v148) = *&v50;
      LODWORD(v50) = *(v20 + 956);
      *&v51 = v50 * 1000.0 / v39;
      HIDWORD(v148) = *&v51;
      LODWORD(v51) = *(v20 + 960);
      v41 = v51 * 1000.0 / v39;
      v149 = v41;
    }

    else
    {
      v148 = 0;
      v49 = 0;
      v149 = 0;
    }

    v52 = *(v20 + 1932);
    if (v52)
    {
      v41 = *(v20 + 1936) * 1000.0 / v52;
      v162 = v41;
    }

    else
    {
      v162 = 0;
    }

    v53 = *(v20 + 1928);
    if (v53)
    {
      LODWORD(v41) = *(v20 + 1960);
      v164 = (*&v41 * 10000.0 / v53);
      if (v39)
      {
LABEL_57:
        v166 = (*(v20 + 1480) * 1000.0 / v39);
        *&v54 = *(v20 + 1488) * 1000.0 / v39;
        v168 = *&v54;
        LODWORD(v54) = *(v20 + 976);
        v170 = (v54 * 1000.0 / v39);
LABEL_60:
        v55 = *(v20 + 844);
        v56 = 0.0;
        v57 = 0.0;
        if (v55)
        {
          v56 = *(v20 + 848) / v55;
          v57 = (*(v20 + 856) / v55);
        }

        v177 = v56;
        v181 = v57;
        if (v39)
        {
          LODWORD(v57) = *(v20 + 1712);
          v172 = *&v57 * 10000.0 / v39;
          v175 = (*(v20 + 1548) / v39);
          v179 = *(v20 + 1544) / v39;
          v58 = *(v20 + 1560) / v39;
        }

        else
        {
          v58 = 0.0;
          v172 = 0.0;
          v179 = 0;
          v175 = 0.0;
        }

        v183 = v58;
        v184 = *(*(*(a1 + 40) + 8) + 40);
        v205[0] = @"LASTCONFIG";
        v206[0] = *(v20 + 1328);
        v205[1] = @"NUMSEGS";
        v206[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v20 + 1756)];
        v205[2] = @"ATXBR";
        v59 = *(a1 + 32);
        v60 = *(v59 + 1424);
        if (v60)
        {
          v61 = (*(v59 + 1432) / v60 * 1000.0);
        }

        else
        {
          v61 = 0;
        }

        v206[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v61];
        v205[3] = @"AAMTBR";
        v62 = *(a1 + 32);
        v63 = *(v62 + 1424);
        if (v63)
        {
          v64 = (*(v62 + 1440) / v63 * 1000.0);
        }

        else
        {
          v64 = 0;
        }

        v206[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v64];
        v205[4] = @"AAMRBR";
        v65 = *(a1 + 32);
        v66 = *(v65 + 1424);
        if (v66)
        {
          v67 = (*(v65 + 1448) / v66 * 1000.0);
        }

        else
        {
          v67 = 0;
        }

        v206[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v67];
        v205[5] = @"ARBR";
        v68 = *(a1 + 32);
        v69 = *(v68 + 1424);
        if (v69)
        {
          v70 = (*(v68 + 1464) / v69 * 1000.0);
        }

        else
        {
          v70 = 0;
        }

        v206[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v70];
        v205[6] = @"AVTSBR";
        v71 = *(a1 + 32);
        v72 = *(v71 + 1424);
        if (v72)
        {
          v73 = (*(v71 + 1584) / v72 * 1000.0);
        }

        else
        {
          v73 = 0;
        }

        v206[6] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v73];
        v205[7] = @"AVMSBR";
        v74 = *(a1 + 32);
        v75 = *(v74 + 1424);
        if (v75)
        {
          v76 = (*(v74 + 1592) / v75 * 1000.0);
        }

        else
        {
          v76 = 0;
        }

        v206[7] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v76];
        v205[8] = @"AVMRBR";
        v77 = *(a1 + 32);
        v78 = *(v77 + 1424);
        if (v78)
        {
          v79 = (*(v77 + 1600) / v78 * 1000.0);
        }

        else
        {
          v79 = 0;
        }

        v206[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v79];
        v205[9] = @"AVHSBR";
        v80 = *(a1 + 32);
        v81 = *(v80 + 1424);
        if (v81)
        {
          v82 = (*(v80 + 1608) / v81 * 1000.0);
        }

        else
        {
          v82 = 0;
        }

        v206[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v82];
        v205[10] = @"AVFSBR";
        v83 = *(a1 + 32);
        v84 = *(v83 + 1424);
        if (v84)
        {
          v85 = (*(v83 + 1624) / v84 * 1000.0);
        }

        else
        {
          v85 = 0;
        }

        v206[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v85];
        v205[11] = @"AVFRBR";
        v86 = *(a1 + 32);
        v87 = *(v86 + 1424);
        if (v87)
        {
          v88 = (*(v86 + 1616) / v87 * 1000.0);
        }

        else
        {
          v88 = 0;
        }

        v206[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v88];
        v205[12] = @"AVTRBR";
        v89 = *(a1 + 32);
        v90 = *(v89 + 1424);
        if (v90)
        {
          v91 = (*(v89 + 664) / v90 * 1000.0);
        }

        else
        {
          v91 = 0;
        }

        v206[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v91];
        v205[13] = @"ASBR";
        v92 = *(a1 + 32);
        v93 = *(v92 + 1424);
        if (v93)
        {
          v94 = (*(v92 + 1456) / v93 * 1000.0);
        }

        else
        {
          v94 = 0;
        }

        v206[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v94];
        v205[14] = @"ARTT";
        v95 = *(a1 + 32);
        v96 = *(v95 + 1424);
        if (v96)
        {
          v97 = (*(v95 + 1632) / v96 * 100.0);
        }

        else
        {
          v97 = 0;
        }

        v206[14] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v97];
        v205[15] = @"DUPSWCNT";
        v206[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 204)];
        v205[16] = @"WRMDUPSWCNT";
        v206[16] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2072)];
        v205[17] = @"RWRMDUPSWCNT";
        v206[17] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2080)];
        v205[18] = @"PCONMAX";
        v206[18] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1664)];
        v205[19] = @"PCONFQ";
        v206[19] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1672)];
        v205[20] = @"PCONP";
        if (v19)
        {
          v98 = (v22 / v21 * 10000.0);
        }

        else
        {
          v98 = 0;
        }

        v206[20] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v98];
        v205[21] = @"VSP";
        if (v19)
        {
          v99 = (v146 / v21 * 10000.0);
        }

        else
        {
          v99 = 0;
        }

        v206[21] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v99];
        v205[22] = @"TMST";
        v206[22] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 584) * 1000.0)];
        v205[23] = @"MSMAX";
        v206[23] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 576) * 1000.0)];
        v205[24] = @"AMST";
        v206[24] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v38];
        v205[25] = @"MSTCNT";
        v206[25] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 592)];
        v205[26] = @"VSMAX";
        v206[26] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 656) * 100.0)];
        v205[27] = @"ASP";
        if (v19)
        {
          v100 = (v147 / v21 * 10000.0);
        }

        else
        {
          v100 = 0;
        }

        v206[27] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v100];
        v205[28] = @"ASMAX";
        v206[28] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 1016) * 100.0)];
        v205[29] = @"AJEAP";
        v101 = *(a1 + 32);
        v102 = *(v101 + 1424);
        if (v102)
        {
          v103 = (*(v101 + 864) / v102);
        }

        else
        {
          v103 = 0;
        }

        v206[29] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v103];
        v205[30] = @"AEAP";
        v104 = *(a1 + 32);
        v105 = *(v104 + 1424);
        if (v105)
        {
          v106 = (*(v104 + 872) / v105);
        }

        else
        {
          v106 = 0;
        }

        v206[30] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v106];
        v205[31] = @"ASEAP";
        v107 = *(a1 + 32);
        v108 = *(v107 + 1424);
        if (v108)
        {
          v109 = (*(v107 + 880) / v108);
        }

        else
        {
          v109 = 0;
        }

        v206[31] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v109];
        v205[32] = @"CMCAE";
        v206[32] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1040)];
        v205[33] = @"REDST";
        v206[33] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 904)];
        v205[34] = @"WAS";
        v206[34] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(a1 + 32) + 908)];
        v205[35] = @"CNR";
        v206[35] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 524)];
        v205[36] = @"CRNR";
        v206[36] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 528)];
        v205[37] = @"RSWP";
        v206[37] = [*(*(a1 + 32) + 2064) description];
        v205[38] = @"IRUT";
        v206[38] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 536)];
        v205[39] = @"ISBD";
        v206[39] = [MEMORY[0x277CCABA8] numberWithInt:*(*(a1 + 32) + 540)];
        v205[40] = @"IBTR";
        v206[40] = [MEMORY[0x277CCABA8] numberWithInt:*(*(a1 + 32) + 544)];
        v205[41] = @"OOOPCT";
        v206[41] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1784)];
        v205[42] = @"AOVSBR";
        v206[42] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v49], 3);
        v205[43] = @"AUNSBR";
        v206[43] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v148], 3);
        v205[44] = @"AOVBWE";
        v206[44] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v148)], 3);
        v205[45] = @"AUNBWE";
        v206[45] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v149], 3);
        v205[46] = @"AABPLR";
        v206[46] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v42], 3);
        v205[47] = @"AABPLRR";
        v206[47] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v40], 3);
        v205[48] = @"AABBPL";
        v206[48] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v45], 3);
        v205[49] = @"AABBPLR";
        v206[49] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v44], 3);
        v205[50] = @"AABRTT";
        v206[50] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v47], 3);
        v205[51] = @"AABRTTR";
        v206[51] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v46], 3);
        v205[52] = @"VPBNRFR";
        v206[52] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v151];
        v205[53] = @"FIRFR";
        v206[53] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v150];
        v205[54] = @"FIRFSFR";
        v206[54] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v151)];
        v205[55] = @"FIRFSFC";
        v206[55] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1800)];
        v205[56] = @"VFDSKPR";
        v206[56] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v152];
        v205[57] = @"VPBINTSER";
        v206[57] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v154)];
        v205[58] = @"VPBTIR";
        v206[58] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v152)];
        v205[59] = @"VPBLSR";
        v206[59] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v156];
        v205[60] = @"VREFR";
        v206[60] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v153];
        v205[61] = @"VRRFR";
        v206[61] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v158];
        v205[62] = @"VRExFR";
        v206[62] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v153)];
        v205[63] = @"VTEFR";
        v206[63] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v160];
        v205[64] = @"VTCFR";
        v206[64] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v154];
        v205[65] = @"CSBWD";
        v206[65] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 496)], 3);
        v205[66] = @"CRDMBL";
        v206[66] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1856)], 3);
        v205[67] = @"AAUDPLR";
        v110 = *(a1 + 32);
        v111 = *(v110 + 1000);
        if (v111)
        {
          v112 = ((1.0 - *(v110 + 1008) / v111) * 10000.0);
        }

        else
        {
          v112 = 0;
        }

        v206[67] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v112];
        v205[68] = @"AVIDPLR";
        v113 = *(a1 + 32);
        v114 = *(v113 + 1424);
        if (v114)
        {
          v115 = *(v113 + 1776) / v114;
        }

        else
        {
          v115 = 0;
        }

        v206[68] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v115];
        v205[69] = @"ULLBAP";
        v116 = *(a1 + 32);
        v117 = *(v116 + 1424);
        if (v117)
        {
          v118 = 10000 * *(v116 + 1652) / v117;
        }

        else
        {
          v118 = 0;
        }

        v206[69] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v118];
        v205[70] = @"ACDTXDB";
        v206[70] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1840)], 4);
        v205[71] = @"ACDRXDB";
        v206[71] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1844)], 4);
        v205[72] = @"AUCBTXDB";
        v206[72] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1848)], 4);
        v205[73] = @"AUCBRXDB";
        v206[73] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1852)], 4);
        v205[74] = @"ACTXDB";
        v206[74] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 1864)], 4);
        v205[75] = @"ACRXDB";
        v206[75] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 1872)], 4);
        v205[76] = @"AWTXDB";
        v206[76] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 552)], 4);
        v205[77] = @"AWRXDB";
        v206[77] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 560)], 4);
        v205[78] = @"DUPDRTN";
        v206[78] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1880)];
        v205[79] = @"AWCHC";
        v206[79] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 568)], 3);
        v205[80] = @"ACWHC";
        v206[80] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 572)], 3);
        v205[81] = @"VCRCPROFNUM";
        v206[81] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1416)];
        v205[82] = @"VPBEVALPD";
        v206[82] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v162];
        v205[83] = @"VPBEVMLPD";
        v206[83] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 1944) * 1000.0)];
        v205[84] = @"VPBEVLPDHIST";
        v206[84] = [*(*(a1 + 32) + 1952) description];
        v205[85] = @"PEVFR";
        v206[85] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v164];
        v205[86] = @"MAECT";
        v206[86] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1472)];
        v205[87] = @"MVSTCT";
        v206[87] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1476)];
        v205[88] = @"AAJBD";
        v206[88] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v166];
        v205[89] = @"MAJBSC";
        v206[89] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1492)];
        v205[90] = @"AAJBSC";
        v206[90] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v168];
        v205[91] = @"MNVFR";
        v206[91] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1496)];
        v205[92] = @"AFECET";
        v119 = *(a1 + 32);
        v120 = *(v119 + 1424);
        if (v120)
        {
          v121 = *(v119 + 1968) / v120;
        }

        else
        {
          v121 = 0;
        }

        v206[92] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v121];
        v205[93] = @"VRXL";
        v206[93] = [*(*(a1 + 32) + 1976) description];
        v205[94] = @"VMFRERC";
        v206[94] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 972)];
        v205[95] = @"VAFRERC";
        v206[95] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v170];
        v205[96] = @"LOCALRTCNT";
        v206[96] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 2000)], 3);
        v205[97] = @"REMALRTCNT";
        v206[97] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 2004)], 3);
        v205[98] = @"LNKPRBVER";
        v206[98] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 836)];
        v205[99] = @"REMLNKPRBVER";
        v206[99] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 840)];
        v205[100] = @"ECNP";
        v206[100] = [MEMORY[0x277CCABA8] numberWithDouble:v172];
        v205[101] = @"DYNDUPLNKCNT";
        v206[101] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 844)], 3);
        v205[102] = @"RTTMEANDLT";
        v206[102] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v177], 3);
        v205[103] = @"PLRTIERDLT";
        v206[103] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v181], 3);
        v205[104] = @"AJBSCH";
        v206[104] = [MEMORY[0x277CCABA8] numberWithDouble:v175];
        v205[105] = @"AJBL";
        v206[105] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v179];
        v205[106] = @"MJBL";
        v206[106] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1552)];
        v205[107] = @"TWJBL";
        v206[107] = [MEMORY[0x277CCABA8] numberWithDouble:v183];
        v205[108] = @"WVJBQS";
        v206[108] = [*(*(a1 + 32) + 672) description];
        v205[109] = @"JBQSDV";
        v206[109] = [*(*(a1 + 32) + 1568) description];
        v205[110] = @"JBQSDA";
        v206[110] = [*(*(a1 + 32) + 1576) description];
        v205[111] = @"TALGOS";
        v122 = MEMORY[0x277CCABA8];
        v123 = *(a1 + 32);
        v124 = v123[35];
        [v123 microFromPayload:0];
        [v124 aggregateScoresWithDictionaryLogging:1 time:?];
        v206[111] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [v122 numberWithDouble:?], 3);
        v205[112] = @"TAPAY";
        v206[112] = [*(*(a1 + 32) + 600) description];
        v205[113] = @"AATBH";
        v206[113] = [*(*(a1 + 32) + 608) description];
        v205[114] = @"TAMBR";
        v206[114] = [*(*(a1 + 32) + 616) description];
        v205[115] = @"TRPBR";
        v206[115] = [*(*(a1 + 32) + 624) description];
        [v184 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v206, v205, 116)}];
        [objc_msgSend(*(a1 + 32) "captionsDataCollector")];
        v125 = *(a1 + 32);
        if (*(v125 + 548) == 1)
        {
          v126 = *(*(*(a1 + 40) + 8) + 40);
          v203[0] = @"TVMBR";
          v204[0] = [*(v125 + 680) description];
          v203[1] = @"TVPAY";
          v204[1] = [*(*(a1 + 32) + 688) description];
          [v126 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v204, v203, 2)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 1992))
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(*(v125 + 1992) forKeyedSubscript:{"description"), @"PIPDUR"}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 2116))
        {
          v127 = *(*(*(a1 + 40) + 8) + 40);
          v201[0] = @"AAVSO";
          v128 = *(v125 + 2116);
          if (v128)
          {
            v129 = (*(v125 + 2104) / v128);
          }

          else
          {
            v129 = 0;
          }

          v202[0] = [MEMORY[0x277CCABA8] numberWithInt:v129];
          v201[1] = @"MINAVSO";
          v130 = *(*(a1 + 32) + 2108);
          if (v130 == 0x7FFFFFFF)
          {
            v131 = 0;
          }

          else
          {
            v131 = v130;
          }

          v202[1] = [MEMORY[0x277CCABA8] numberWithInt:v131];
          v201[2] = @"MAXAVSO";
          v132 = *(*(a1 + 32) + 2112);
          if (v132 == 0x80000000)
          {
            v133 = 0;
          }

          else
          {
            v133 = v132;
          }

          v202[2] = [MEMORY[0x277CCABA8] numberWithInt:v133];
          [v127 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v202, v201, 3)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 512) != 255)
        {
          v134 = *(*(*(a1 + 40) + 8) + 40);
          v199[0] = @"LNKSUG";
          v200[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v125 + 512)];
          v199[1] = @"LNKSCR";
          v200[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(a1 + 32) + 513)];
          v199[2] = @"LNKDEC";
          v200[2] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(a1 + 32) + 514)];
          [v134 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v200, v199, 3)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 515) != 255)
        {
          v135 = *(*(*(a1 + 40) + 8) + 40);
          v197 = @"LNKIP";
          v198 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v125 + 515)];
          [v135 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v198, &v197, 1)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 424) == 1)
        {
          v136 = *(*(*(a1 + 40) + 8) + 40);
          v195[0] = @"RCEV";
          v196[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v125 + 425)];
          v195[1] = @"RCEG";
          v196[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(a1 + 32) + 426)];
          [v136 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v196, v195, 2)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 436))
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"SBVERS"}];
          v125 = *(a1 + 32);
        }

        [objc_msgSend(v125 "captionsDataCollector")];
        v137 = *(a1 + 32);
        if (*(v137 + 2156) == 1)
        {
          v138 = *(*(*(a1 + 40) + 8) + 40);
          v193[0] = @"NACKS";
          v194[0] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(v137 + 2160)];
          v193[1] = @"NACKF";
          v194[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2168)];
          v193[2] = @"UNACKS";
          v194[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 2184)];
          v193[3] = @"NACKFOT";
          v194[3] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2176)];
          v193[4] = @"RTXNacksConfigVersion";
          v194[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 428)];
          v193[5] = @"RTXNacksEnabled";
          v194[5] = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 432)];
          v193[6] = @"RTXNacksDelayedEnabled";
          v194[6] = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 433)];
          v193[7] = @"NACKPLRWRTX";
          v194[7] = [*(*(a1 + 32) + 2216) description];
          v193[8] = @"NACKPLRWORTX";
          v194[8] = [*(*(a1 + 32) + 2224) description];
          [v138 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v194, v193, 9)}];
          v137 = *(a1 + 32);
          if (v19)
          {
            v139 = *(*(*(a1 + 40) + 8) + 40);
            v191[0] = @"NACKSRATE";
            v192[0] = [MEMORY[0x277CCABA8] numberWithDouble:*(v137 + 2160) / v21];
            v191[1] = @"NACKFRATE";
            v192[1] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2168) / v21];
            v191[2] = @"NACKFOTRATE";
            v192[2] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2176) / v21];
            v191[3] = @"NACKFASSMRTX";
            v192[3] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2200) / v21];
            v191[4] = @"NACKLSCHFRTX";
            v192[4] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2192) / v21];
            v191[5] = @"NACKFFASSMRTX";
            v192[5] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2208) / v21];
            v191[6] = @"UNACKSRATE";
            LODWORD(v140) = *(*(a1 + 32) + 2184);
            v192[6] = [MEMORY[0x277CCABA8] numberWithDouble:v140 / v21];
            [v139 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v192, v191, 7)}];
            v137 = *(a1 + 32);
          }
        }

        [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:{objc_msgSend(v137, "getUplinkRTXelemetryWithDuration:", v19)}];
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v141 = *(*(a1 + 32) + 2272);
        result = [v141 countByEnumeratingWithState:&v185 objects:v190 count:16];
        if (result)
        {
          v142 = result;
          v143 = *v186;
          do
          {
            v144 = 0;
            do
            {
              if (*v186 != v143)
              {
                objc_enumerationMutation(v141);
              }

              [*(*(&v185 + 1) + 8 * v144++) updateReport:*(*(*(a1 + 40) + 8) + 40)];
            }

            while (v142 != v144);
            result = [v141 countByEnumeratingWithState:&v185 objects:v190 count:16];
            v142 = result;
          }

          while (result);
        }

        goto LABEL_167;
      }
    }

    else
    {
      v164 = 0;
      if (v39)
      {
        goto LABEL_57;
      }
    }

    v168 = 0;
    v166 = 0;
    v170 = 0;
    goto LABEL_60;
  }

LABEL_167:
  v145 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)flushCurrentSegment
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__VCAggregatorFaceTime_flushCurrentSegment__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)flushCurrentSegment:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  if (self->_currentSegmentKey)
  {
    v5 = [(CallSegment *)self->_currentSegment duration];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (v5 > 1)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v14 = VRTraceErrorLogLevelToCSTR(8u);
        v15 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [(CallSegment *)self->_currentSegment duration];
            v17 = [(NSString *)self->_currentSegmentKey UTF8String];
            v37 = 136316162;
            v38 = v14;
            v39 = 2080;
            v40 = "[VCAggregatorFaceTime flushCurrentSegment:]";
            v41 = 1024;
            v42 = 2648;
            v43 = 1024;
            *v44 = v16;
            *&v44[4] = 2080;
            *&v44[6] = v17;
            _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Segment event counter is %d, saving the stats for the segment %s", &v37, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          v35 = [(CallSegment *)self->_currentSegment duration];
          v36 = [(NSString *)self->_currentSegmentKey UTF8String];
          v37 = 136316162;
          v38 = v14;
          v39 = 2080;
          v40 = "[VCAggregatorFaceTime flushCurrentSegment:]";
          v41 = 1024;
          v42 = 2648;
          v43 = 1024;
          *v44 = v35;
          *&v44[4] = 2080;
          *&v44[6] = v36;
          _os_log_debug_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Segment event counter is %d, saving the stats for the segment %s", &v37, 0x2Cu);
        }
      }

      [(VCAggregatorFaceTime *)self updateAudioTxStatsWithPayload:0];
      if (self->_degradedVideoStartTime != 0.0)
      {
        [(VCAggregator *)self microFromPayload:a3];
        v21 = v20 - self->_degradedVideoStartTime;
        [(VCHistogram *)[(CallSegment *)self->_currentSegment poorConnection] addValue:(v21 / [(VCAggregator *)self RTPeriod])];
        [(CallSegment *)self->_currentSegment poorConnectionMaxLength];
        if (v22 < v21)
        {
          v22 = v21;
        }

        [(CallSegment *)self->_currentSegment setPoorConnectionMaxLength:v22];
        callPoorConnectionMaxLength = self->_callPoorConnectionMaxLength;
        if (callPoorConnectionMaxLength < v21)
        {
          callPoorConnectionMaxLength = v21;
        }

        self->_callPoorConnectionMaxLength = callPoorConnectionMaxLength;
        currentSegment = self->_currentSegment;
        [(CallSegment *)currentSegment poorConnectionTotalLength];
        [(CallSegment *)currentSegment setPoorConnectionTotalLength:v21 + v25];
        self->_callPoorConnectionTotalLength = v21 + self->_callPoorConnectionTotalLength;
        self->_degradedVideoStartTime = 0.0;
      }

      if (self->_noRemoteStartTime != 0.0)
      {
        [(VCAggregator *)self microFromPayload:a3];
        v27 = v26 - self->_noRemoteStartTime;
        v28 = self->_currentSegment;
        [(CallSegment *)v28 totalNoRemotePacketsTime];
        [(CallSegment *)v28 setTotalNoRemotePacketsTime:v27 + v29];
        [(CallSegment *)self->_currentSegment maxNoRemotePacketsInterval];
        if (v30 < v27)
        {
          v30 = v27;
        }

        [(CallSegment *)self->_currentSegment setMaxNoRemotePacketsInterval:v30];
        self->_noRemoteStartTime = 0.0;
      }

      self->_lastReportedTotalCellDupTxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalCellDupTxDataBytes];
      self->_lastReportedTotalCellDupRxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalCellDupRxDataBytes];
      self->_lastReportedTotalUsedCellBudgetTxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetTxDataBytes];
      self->_lastReportedTotalUsedCellBudgetRxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetRxDataBytes];
      self->_lastReportedTotalCellTxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalCellTxDataBytes];
      self->_lastReportedTotalCellRxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalCellRxDataBytes];
      self->super._lastReportedTotalWifiTxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalWifiTxDataBytes];
      self->super._lastReportedTotalWifiRxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalWifiRxDataBytes];
      [(VCHistogram *)[(CallSegment *)self->_currentSegment continuousHighRTTReportCount] addValue:[(CallSegment *)self->_currentSegment highRTTReportCounter]];
      [(VCHistogram *)[(CallSegment *)self->_currentSegment continuousHighPLRReportCount] addValue:[(CallSegment *)self->_currentSegment highPLRReportCounter]];
      [(VCHistogram *)[(CallSegment *)self->_currentSegment continuousHighRTTPLRReportCount] addValue:[(CallSegment *)self->_currentSegment highRTTPLRReportCounter]];
      if (VRTraceGetErrorLogLevelForModule("") >= 8)
      {
        v31 = VRTraceErrorLogLevelToCSTR(8u);
        v32 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [(NSString *)self->_currentSegmentKey UTF8String];
            v37 = 136315906;
            v38 = v31;
            v39 = 2080;
            v40 = "[VCAggregatorFaceTime flushCurrentSegment:]";
            v41 = 1024;
            v42 = 2683;
            v43 = 2080;
            *v44 = v33;
            v11 = " [%s] %s:%d VCAggregator: Segment %s flushed";
            v12 = v32;
            v13 = 38;
            goto LABEL_29;
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          [(VCAggregatorFaceTime *)v31 flushCurrentSegment:?];
        }
      }
    }

    else if (ErrorLogLevelForModule >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(NSString *)self->_currentSegmentKey UTF8String];
          v10 = [(CallSegment *)self->_currentSegment duration];
          v37 = 136316162;
          v38 = v7;
          v39 = 2080;
          v40 = "[VCAggregatorFaceTime flushCurrentSegment:]";
          v41 = 1024;
          v42 = 2646;
          v43 = 2080;
          *v44 = v9;
          *&v44[8] = 1024;
          *&v44[10] = v10;
          v11 = " [%s] %s:%d VCAggregator: Segment %s has too few events %d. Ignoring its stats";
          v12 = v8;
          v13 = 44;
LABEL_29:
          _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, v11, &v37, v13);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        v18 = [(NSString *)self->_currentSegmentKey UTF8String];
        v19 = [(CallSegment *)self->_currentSegment duration];
        v37 = 136316162;
        v38 = v7;
        v39 = 2080;
        v40 = "[VCAggregatorFaceTime flushCurrentSegment:]";
        v41 = 1024;
        v42 = 2646;
        v43 = 2080;
        *v44 = v18;
        *&v44[8] = 1024;
        *&v44[10] = v19;
        _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Segment %s has too few events %d. Ignoring its stats", &v37, 0x2Cu);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)reset:(id)a3
{
  v45[1] = *MEMORY[0x277D85DE8];
  [(VCAggregatorDelegate *)self->super._delegate reportSegment:[(VCAggregatorFaceTime *)self aggregatedSegmentReportInternal:2] withMessageType:2 clientType:0];
  [(VCAggregatorDelegate *)self->super._delegate reportQR:[(CallSegment *)self->_currentSegment segmentQRReport]];

  self->_currentSegment = 0;
  currentSegmentKey = self->_currentSegmentKey;
  self->_currentSegmentKey = [CallSegment newSegmentNameWithComponents:[VCAggregator interfaceCategoryForType:self->super._localInterfaceType] remoteInterface:[VCAggregator interfaceCategoryForType:self->super._remoteInterfaceType] connectionType:[VCAggregator connectionCategoryForType:self->super._connectionType] duplicationIndicator:[(VCAggregator *)self duplicationIndicator]];
  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v44 = @"NegSw";
  v45[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._negotiatedSwitches];
  v7 = [v6 initWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v45, &v44, 1)}];
  if (self->super._remoteFaceTimeSwitchesAvailable)
  {
    v42 = @"RemSw";
    v43 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._remoteSwitches];
    [v7 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v43, &v42, 1)}];
  }

  linkProbingVersion = self->super._linkProbingVersion;
  remoteLinkProbingVersion = self->super._remoteLinkProbingVersion;
  [(VCAggregator *)self microFromPayload:a3];
  v11 = 0.0;
  v12 = 0.0;
  if (self->_localAlertActive)
  {
    lastLocalAlertTime = self->_lastLocalAlertTime;
    if (v10 >= lastLocalAlertTime)
    {
      v12 = v10 - lastLocalAlertTime;
    }
  }

  if (self->_remoteAlertActive)
  {
    lastRemoteAlertTime = self->_lastRemoteAlertTime;
    if (v10 >= lastRemoteAlertTime)
    {
      v11 = v10 - lastRemoteAlertTime;
    }
  }

  v15 = nw_activity_create();
  if (self->super._nwActivity)
  {
    nw_activity_set_parent_activity();
  }

  nw_activity_activate();
  v16 = [CallSegment alloc];
  v17 = self->_currentSegmentKey;
  callMode_low = LOWORD(self->super._callMode);
  callDeviceRole_low = LOWORD(self->_callDeviceRole);
  callTransportType_low = LOWORD(self->_callTransportType);
  relayServer = self->_relayServer;
  relayType = self->_relayType;
  accessToken = self->_accessToken;
  duplicationType = self->_duplicationType;
  conversationTimeBase = self->super._conversationTimeBase;
  isInitiator = self->super._isInitiator;
  *buf = linkProbingVersion;
  *v38 = remoteLinkProbingVersion;
  *&v38[4] = v12;
  *&v38[12] = v11;
  LOBYTE(v36) = isInitiator;
  LOBYTE(v35) = duplicationType;
  LOWORD(v34) = relayType;
  v27 = [(CallSegment *)v16 initWithSegmentName:v17 previousSegmentName:currentSegmentKey mode:callMode_low deviceRole:callDeviceRole_low transportType:callTransportType_low relayServer:relayServer relayType:v34 accessToken:accessToken duplicationType:v35 switchConfig:v7 linkProbingConfig:buf nwActivity:v15 conversationTimeBase:conversationTimeBase isInitiator:v36 delegate:self];
  self->_currentSegment = v27;
  [(VCReportingCommon *)v27 setCurrentThermalLevel:self->super.super._currentThermalLevel];
  v28 = [(VCReportingCommon *)self->_currentSegment thermalDurations];
  currentThermalLevel = self->super.super._currentThermalLevel;
  [(VCAggregator *)self microFromPayload:a3];
  [(VCDurationHistogram *)v28 resumeAtBucket:currentThermalLevel currentTime:?];
  [(CallSegment *)self->_currentSegment setIsApplePersonalHotspot:[(VCAggregator *)self isApplePersonalHotspotAndUpdatePhyMode]];
  [(CallSegment *)self->_currentSegment setNWActivityReportingEnabled:self->super._isNWActivityReportingEnabled];
  [(CallSegment *)self->_currentSegment setIsCenterStageEnabled:self->_isCenterStageEnabled];
  [(CallSegment *)self->_currentSegment setIsPortraitBlurEnabled:self->_isPortraitBlurEnabled];
  [(VCAggregatorFaceTime *)self transferActiveSegmentStatus:self->_currentSegment];
  if (v15)
  {
    nw_release(v15);
  }

  [(VCAggregator *)self updateHandoverCount:self->_currentSegmentKey withPreviousSegmentKey:currentSegmentKey];

  ++self->_numberOfSegments;
  [(CallSegment *)self->_currentSegment setActiveConnectionRegistry:self->super._activeConnectionRegistry];
  [(CallSegment *)self->_currentSegment setCoreMotionActivityValue:self->_coreMotionActivityValue];
  [(CallSegment *)self->_currentSegment setCoreMotionActivityConfidence:self->_coreMotionActivityConfidence];
  [(CallSegment *)self->_currentSegment setLinkPreferSuggestion:self->super._linkPreferSuggestion];
  [(CallSegment *)self->_currentSegment setLinkConfidenceScore:self->super._linkConfidenceScore];
  [(CallSegment *)self->_currentSegment setLinkPreferDecision:self->super._linkPreferDecision];
  [(CallSegment *)self->_currentSegment setLinkIPPreference:self->super._linkIPPreference];
  [(CallSegment *)self->_currentSegment setRemoteOSBuild:self->super._remoteOSBuild];
  [(CallSegment *)self->_currentSegment setReportingClientExperimentSettings:*&self->super._reportingClientExperimentSettings.networkConditionMonitoringClientExperimentEnabled | (self->super._reportingClientExperimentSettings.detectInactiveAudioFramesAACELD << 16)];
  [(CallSegment *)self->_currentSegment setRelayedCallTypeIndicator:self->_relayedCallTypeRemoteFacingHost];
  [(CallSegment *)self->_currentSegment setServerPacketRetransmissionsForVideoEnabled:self->super._serverPacketRetransmissionsForVideoEnabled];
  [(CallSegment *)self->_currentSegment setServerPacketRetransmissionsExtraDelayBudgetEnabled:self->super._serverPacketRetransmissionsExtraDelayBudgetEnabled];
  [(CallSegment *)self->_currentSegment setNackGeneratorConfigVersion:self->super._nackGeneratorConfigVersion];
  [(CallSegment *)self->_currentSegment setRtcpPSFBForLossFeedbackEnabled:self->super._rtcpPSFBForLossFeedbackEnabled];
  [(CallSegment *)self->_currentSegment setRtcpPSFBForLtrAckEnabled:self->super._rtcpPSFBForLtrAckEnabled];
  if (self->super._rateControlSmartBrakeTrialVersion)
  {
    [(CallSegment *)self->_currentSegment setRateControlSmartBrakeTrialVersion:?];
  }

  [(CallSegment *)self->_currentSegment setEyeContactStatus:self->super._eyeContactStatus];
  [(CallSegment *)self->_currentSegment setCenterStageStatus:self->super._centerStageStatus];
  [(CallSegment *)self->_currentSegment setPortraitModeStatus:self->super._portraitModeStatus];
  [(CallSegment *)self->_currentSegment setReactionsStatus:self->super._reactionsStatus];
  [(CallSegment *)self->_currentSegment setStudioLightStatus:self->super._studioLightStatus];
  [(CallSegment *)self->_currentSegment setSpatialAudioSupported:self->super._spatialAudioSupported];
  [(VCReportingCommon *)self->_currentSegment setBackgroundReplacementStatus:self->super._backgroundReplacementStatus];
  [(CallSegment *)self->_currentSegment setCallAverageAudioRxBitrate:self->_callAverageAudioRxBitrate];
  [(CallSegment *)self->_currentSegment setCallAverageAudioTxBitrate:self->_callAverageAudioTxBitrate];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v30 = VRTraceErrorLogLevelToCSTR(8u);
    v31 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(NSString *)self->_currentSegmentKey UTF8String];
        *buf = 136315906;
        *v38 = v30;
        *&v38[8] = 2080;
        *&v38[10] = "[VCAggregatorFaceTime reset:]";
        *&v38[18] = 1024;
        v39 = 2786;
        v40 = 2080;
        v41 = v32;
        _os_log_impl(&dword_23D4DF000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: New key generated %s", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [(VCAggregatorFaceTime *)v30 reset:?];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)transferActiveSegmentStatus:(id)a3
{
  v5 = micro();
  if (![(VCDurationHistogram *)self->super._studioLightDuration isPaused])
  {
    [objc_msgSend(a3 "studioLightDuration")];
  }

  if (![(VCDurationHistogram *)self->super._centerStageDuration isPaused])
  {
    [objc_msgSend(a3 "centerStageDuration")];
  }

  if (![(VCDurationHistogram *)self->super._portraitModeDuration isPaused])
  {
    [objc_msgSend(a3 "portraitModeDuration")];
  }

  if (![(VCDurationHistogram *)self->super._eyeContactDuration isPaused])
  {
    [objc_msgSend(a3 "eyeContactDuration")];
  }

  if (![(VCDurationHistogram *)self->super._reactionActiveDuration isPaused])
  {
    [objc_msgSend(a3 "reactionActiveDuration")];
  }

  if (![(VCDurationHistogram *)self->super._backgroundReplacementDuration isPaused])
  {
    v6 = [a3 backgroundReplacementDuration];
    currentThermalLevel = self->super.super._currentThermalLevel;

    [v6 resumeAtBucket:currentThermalLevel currentTime:v5];
  }
}

- (void)setNWActivityReportingEnabled:(BOOL)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__VCAggregatorFaceTime_setNWActivityReportingEnabled___block_invoke;
  v4[3] = &unk_278BD4D20;
  v5 = a3;
  v4[4] = self;
  dispatch_async(stateQueue, v4);
}

void *__54__VCAggregatorFaceTime_setNWActivityReportingEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = VCAggregatorFaceTime;
  objc_msgSendSuper2(&v5, sel_setNWActivityReportingEnabled_, v2);
  v3 = *(a1 + 32);
  result = *(v3 + 1368);
  if (result)
  {
    return [result setNWActivityReportingEnabled:*(v3 + 408)];
  }

  return result;
}

- (void)startNewSegment:(id)a3
{
  [(VCAggregatorFaceTime *)self flushCurrentSegment:?];

  [(VCAggregatorFaceTime *)self reset:a3];
}

- (id)updatePayloadWithSingleParticipantData:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a3];
  v4 = [v3 objectForKeyedSubscript:sRTCReportingStreamCollection];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v16 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [v4 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v7)];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 allKeys];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            v13 = 0;
            do
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v3 setObject:objc_msgSend(v8 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v17 + 1) + 8 * v13)), *(*(&v17 + 1) + 8 * v13)}];
              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v6);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updateAVSyncOffsetSumAndCountWithValue:(int)a3
{
  self->_avSyncOffsetSum += a3;
  [(CallSegment *)self->_currentSegment setAvSyncOffsetSum:[(CallSegment *)self->_currentSegment avSyncOffsetSum]+ a3];
  ++self->_avSyncOffsetSamplesCount;
  currentSegment = self->_currentSegment;
  v5 = [(CallSegment *)currentSegment avSyncOffsetSamplesCount]+ 1;

  [(CallSegment *)currentSegment setAvSyncOffsetSamplesCount:v5];
}

- (void)processCameraResolution:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"CAMRESW"])
  {
    self->_lastCameraCaptureWidth = [objc_msgSend(a3 objectForKeyedSubscript:{@"CAMRESW", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"CAMRESH"])
  {
    self->_lastCameraCaptureHeight = [objc_msgSend(a3 objectForKeyedSubscript:{@"CAMRESH", "integerValue"}];
  }
}

- (void)updateNetworkSendResultStats:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"PSSCTR"])
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"PSSCTR", "intValue"}];
    [(CallSegment *)self->_currentSegment setPacketSendSuccessCounter:[(CallSegment *)self->_currentSegment packetSendSuccessCounter]+ v5];
    self->_packetSendSuccessCounter += v5;
  }

  if ([a3 objectForKeyedSubscript:@"PSFCTR"])
  {
    v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"PSFCTR", "intValue"}];
    [(CallSegment *)self->_currentSegment setPacketSendFailureCounter:[(CallSegment *)self->_currentSegment packetSendFailureCounter]+ v6];
    self->_packetSendFailureCounter += v6;
  }
}

- (void)populateSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)a3 toPayload:(id)a4
{
  if (a3)
  {
    a3->var7 = [objc_msgSend(a4 objectForKeyedSubscript:{@"CDupTxDb", "integerValue"}];
    a3->var4 = [objc_msgSend(a4 objectForKeyedSubscript:{@"CDupRxDb", "integerValue"}];
    a3->var5 = [objc_msgSend(a4 objectForKeyedSubscript:{@"CBudgTxDb", "integerValue"}];
    a3->var6 = [objc_msgSend(a4 objectForKeyedSubscript:{@"CBudgRxDb", "integerValue"}];
    a3->var0 = [objc_msgSend(a4 objectForKeyedSubscript:{@"CTxDb", "integerValue"}];
    a3->var1 = [objc_msgSend(a4 objectForKeyedSubscript:{@"CRxDb", "integerValue"}];
    a3->var2 = [objc_msgSend(a4 objectForKeyedSubscript:{@"WTxDb", "integerValue"}];
    a3->var3 = [objc_msgSend(a4 objectForKeyedSubscript:{@"WRxDb", "integerValue"}];
  }

  else
  {
    [VCAggregatorFaceTime populateSegmentBytes:? toPayload:?];
  }
}

- (void)updateSegmentStats:(id)a3
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  [(VCAggregatorFaceTime *)self populateSegmentBytes:&v36 toPayload:a3];
  v4 = [(CallSegment *)self->_currentSegment lastReportedTotalCellDupTxDataBytes];
  v5 = *(&v39 + 1);
  currentSegment = self->_currentSegment;
  if (v4 <= *(&v39 + 1))
  {
    v7 = v5 - [(CallSegment *)self->_currentSegment lastReportedTotalCellDupTxDataBytes];
    v5 = v7 + [(CallSegment *)currentSegment totalCellDupTxDataBytes];
  }

  [(CallSegment *)currentSegment setTotalCellDupTxDataBytes:v5];
  [(CallSegment *)self->_currentSegment setLastReportedTotalCellDupTxDataBytes:*(&v39 + 1)];
  v8 = [(CallSegment *)self->_currentSegment lastReportedTotalCellDupRxDataBytes];
  v9 = v38;
  v10 = self->_currentSegment;
  if (v8 <= v38)
  {
    v11 = v9 - [(CallSegment *)self->_currentSegment lastReportedTotalCellDupRxDataBytes];
    v9 = v11 + [(CallSegment *)v10 totalCellDupRxDataBytes];
  }

  [(CallSegment *)v10 setTotalCellDupRxDataBytes:v9];
  [(CallSegment *)self->_currentSegment setLastReportedTotalCellDupRxDataBytes:v38];
  v12 = [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetTxDataBytes];
  v13 = *(&v38 + 1);
  v14 = self->_currentSegment;
  if (v12 <= *(&v38 + 1))
  {
    v15 = v13 - [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetTxDataBytes];
    v13 = v15 + [(CallSegment *)v14 totalUsedCellBudgetTxDataBytes];
  }

  [(CallSegment *)v14 setTotalUsedCellBudgetTxDataBytes:v13];
  [(CallSegment *)self->_currentSegment setLastReportedTotalUsedCellBudgetTxDataBytes:*(&v38 + 1)];
  v16 = [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetRxDataBytes];
  v17 = v39;
  v18 = self->_currentSegment;
  if (v16 <= v39)
  {
    v19 = v17 - [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetRxDataBytes];
    v17 = v19 + [(CallSegment *)v18 totalUsedCellBudgetRxDataBytes];
  }

  [(CallSegment *)v18 setTotalUsedCellBudgetRxDataBytes:v17];
  [(CallSegment *)self->_currentSegment setLastReportedTotalUsedCellBudgetRxDataBytes:v39];
  v20 = [(CallSegment *)self->_currentSegment lastReportedTotalCellTxDataBytes];
  v21 = v36;
  v22 = self->_currentSegment;
  if (v20 <= v36)
  {
    v23 = v21 - [(CallSegment *)self->_currentSegment lastReportedTotalCellTxDataBytes];
    v21 = v23 + [(CallSegment *)v22 totalCellTxDataBytes];
  }

  [(CallSegment *)v22 setTotalCellTxDataBytes:v21];
  [(CallSegment *)self->_currentSegment setLastReportedTotalCellTxDataBytes:v36];
  v24 = [(CallSegment *)self->_currentSegment lastReportedTotalCellRxDataBytes];
  v25 = *(&v36 + 1);
  v26 = self->_currentSegment;
  if (v24 <= *(&v36 + 1))
  {
    v27 = v25 - [(CallSegment *)self->_currentSegment lastReportedTotalCellRxDataBytes];
    v25 = v27 + [(CallSegment *)v26 totalCellRxDataBytes];
  }

  [(CallSegment *)v26 setTotalCellRxDataBytes:v25];
  [(CallSegment *)self->_currentSegment setLastReportedTotalCellRxDataBytes:*(&v36 + 1)];
  v28 = [(CallSegment *)self->_currentSegment lastReportedTotalWifiTxDataBytes];
  v29 = v37;
  v30 = self->_currentSegment;
  if (v28 <= v37)
  {
    v31 = v29 - [(CallSegment *)self->_currentSegment lastReportedTotalWifiTxDataBytes];
    v29 = v31 + [(CallSegment *)v30 totalWifiTxDataBytes];
  }

  [(CallSegment *)v30 setTotalWifiTxDataBytes:v29];
  [(CallSegment *)self->_currentSegment setLastReportedTotalWifiTxDataBytes:v37];
  v32 = [(CallSegment *)self->_currentSegment lastReportedTotalWifiRxDataBytes];
  v33 = *(&v37 + 1);
  v34 = self->_currentSegment;
  if (v32 <= *(&v37 + 1))
  {
    v35 = v33 - [(CallSegment *)self->_currentSegment lastReportedTotalWifiRxDataBytes];
    v33 = v35 + [(CallSegment *)v34 totalWifiRxDataBytes];
  }

  [(CallSegment *)v34 setTotalWifiRxDataBytes:v33];
  [(CallSegment *)self->_currentSegment setLastReportedTotalWifiRxDataBytes:*(&v37 + 1)];
}

- (void)updateRTStats:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__VCAggregatorFaceTime_updateRTStats___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(stateQueue, v4);
}

void __38__VCAggregatorFaceTime_updateRTStats___block_invoke(uint64_t a1)
{
  v248 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(*(a1 + 32) + 1368) duration] >= 1)
  {
    v3 = (a1 + 40);
    [*(a1 + 32) microFromPayload:*(a1 + 40)];
    v5 = v4;
    v6 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RTT", "integerValue"}];
    [objc_msgSend(*(*(a1 + 32) + 1368) "RTT")];
    *(*(a1 + 32) + 1632) = *(*(a1 + 32) + 1632) + v6;
    v7 = *(*(a1 + 32) + 1368);
    [v7 averageRTT];
    [v7 setAverageRTT:v8 + v6];
    v9 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"WRRTT", "integerValue"}];
    [objc_msgSend(*(*(a1 + 32) + 1368) "abnormalRTT")];
    if (v9 >= 0x1F5)
    {
      *(*v2 + 117) = *(*v2 + 117) + v9;
      ++*(*v2 + 236);
    }

    [objc_msgSend(*v3 objectForKeyedSubscript:{@"AJQS", "doubleValue"}];
    v11 = (v10 * 1000.0);
    [objc_msgSend(*(*v2 + 171) "JBQSize")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJ", "doubleValue"}];
    v13 = (v12 * 1000.0);
    [objc_msgSend(*(*v2 + 171) "WANVJBQSize")];
    [*(*v2 + 171) setAverageJitterQueueSize:{objc_msgSend(*(*v2 + 171), "averageJitterQueueSize") + v13}];
    v14 = [*(*v2 + 171) maxJitterQueueSize];
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    [*(*v2 + 171) setMaxJitterQueueSize:v15];
    [*v2 updateNetworkSendResultStats:*v3];
    v16 = *(*v2 + 171);
    if (v13 >= v11)
    {
      v17 = [v16 JBQSizeDeltaVidLarger];
      v18 = (v13 - v11);
    }

    else
    {
      v17 = [v16 JBQSizeDeltaAudLarger];
      v18 = (v11 - v13);
    }

    [v17 addValue:v18];
    [*(*v2 + 171) setAverageJitterQueueSizeChanges:{objc_msgSend(*(*v2 + 171), "averageJitterQueueSizeChanges") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VJBTC", "intValue")}];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJBTWA", "doubleValue"}];
    v23 = v22 * 1000.0;
    v24 = *(*v2 + 171);
    [v24 timeWeightedJitterQueueSize];
    [v24 setTimeWeightedJitterQueueSize:v23 + v25];
    [objc_msgSend(*(*v2 + 171) "latency")];
    v26 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"PLR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "PLR")];
    [objc_msgSend(*(*v2 + 171) "abnormalPLR")];
    v27 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRxPLR", "integerValue"}];
    v28 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VPLR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "VPLR")];
    if (v28 >= 0x3E9)
    {
      ++*(*v2 + 412);
      *(*v2 + 205) = *(*v2 + 205) + v28;
    }

    [*(*v2 + 171) setVPLRAccumulator:{objc_msgSend(*(*v2 + 171), "VPLRAccumulator") + v27}];
    *(*v2 + 222) += v27;
    v29 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"WRBPL", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "abnormalBPL")];
    if (v29 >= 7)
    {
      ++*(*v2 + 232);
      *(*v2 + 115) = *(*v2 + 115) + v29;
    }

    if ([objc_msgSend(*v3 objectForKeyedSubscript:{@"ULLBA", "integerValue"}])
    {
      ++*(*v2 + 413);
    }

    if ([objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSECNEnabled", "integerValue"}])
    {
      [*(*v2 + 171) setEcnEnabledCount:{objc_msgSend(*(*v2 + 171), "ecnEnabledCount") + 1}];
      ++*(*v2 + 428);
    }

    v30 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"TTxR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "TBR")];
    v31 = *(*v2 + 171);
    [v31 averageTargetBitrate];
    [v31 setAverageTargetBitrate:v32 + v30];
    *(*v2 + 179) = *(*v2 + 179) + v30;
    v33 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"NJB", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "JBTarget")];
    *(*v2 + 185) = *(*v2 + 185) + v33;
    [objc_msgSend(*(*v2 + 171) "JBUnclippedTarget")];
    [objc_msgSend(*(*v2 + 171) "videoJitter")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"RedErasureCompensationRate", "doubleValue"}];
    [objc_msgSend(*(*v2 + 171) "REDErasureCompensationRate")];
    [objc_msgSend(*(*v2 + 171) "REDReceivedCount")];
    [objc_msgSend(*(*v2 + 171) "REDDiscardedCount")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"ARFr", "doubleValue"}];
    [objc_msgSend(*(*v2 + 171) "framerate")];
    [objc_msgSend(*(*v2 + 171) "videoQualityScore")];
    [objc_msgSend(*(*v2 + 171) "videoEncodingBitrate")];
    [*v2 updateSegmentStats:*v3];
    if ([*v3 objectForKeyedSubscript:@"VST"])
    {
      [objc_msgSend(*v3 objectForKeyedSubscript:{@"VST", "doubleValue"}];
      v37 = v36;
      v38 = v36 - *(*v2 + 211);
      [*(*v2 + 38) addVideoStallWithStartTime:v5 - v38 endStallTime:v5];
      *(*v2 + 211) = v37;
      v39 = *(*v2 + 171);
      [v39 totalVideoStallTime];
      [v39 setTotalVideoStallTime:v38 + v40];
      *(*v2 + 210) = v38 + *(*v2 + 210);
      [objc_msgSend(*(*v2 + 171) "videoStall")];
    }

    if ([*v3 objectForKeyedSubscript:@"AVSyncOffset"])
    {
      [*v2 updateAVSyncOffsetSumAndCountWithValue:{objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"AVSyncOffset", "integerValue")}];
      v41 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"AVSyncOffsetMax", "integerValue"}];
      v42 = [*(*v2 + 171) maxAVSyncOffset];
      if (v42 <= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      [*(*v2 + 171) setMaxAVSyncOffset:v43];
      v44 = *(*v2 + 528);
      if (v44 <= v41)
      {
        v44 = v41;
      }

      *(*v2 + 528) = v44;
      v45 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"AVSyncOffsetMin", "integerValue"}];
      v46 = [*(*v2 + 171) minAVSyncOffset];
      if (v46 >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46;
      }

      [*(*v2 + 171) setMinAVSyncOffset:v47];
      v48 = *(*v2 + 527);
      if (v48 >= v45)
      {
        v48 = v45;
      }

      *(*v2 + 527) = v48;
    }

    [objc_msgSend(*v3 objectForKeyedSubscript:{@"MSTT", "doubleValue"}];
    v50 = v49;
    v51 = *(*v2 + 171);
    [v51 totalMediaStallTime];
    [v51 setTotalMediaStallTime:v50 + v52];
    *(*v2 + 73) = v50 + *(*v2 + 73);
    [objc_msgSend(*(*v2 + 171) "mediaStall")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"MMST", "doubleValue"}];
    v54 = v53;
    [*(*v2 + 171) maxMediaStallTime];
    if (v54 >= v55)
    {
      v55 = v54;
    }

    [*(*v2 + 171) setMaxMediaStallTime:v55];
    v56 = *(*v2 + 72);
    if (v56 < v54)
    {
      v56 = v54;
    }

    *(*v2 + 72) = v56;
    v57 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"MSTC", "intValue"}];
    [*(*v2 + 171) setMediaStallCount:{objc_msgSend(*(*v2 + 171), "mediaStallCount") + v57}];
    *(*v2 + 148) += v57;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VSTSM", "doubleValue"}];
    v59 = v58;
    [*(*v2 + 171) maxVideoStallInterval];
    if (v59 >= v60)
    {
      v60 = v59;
    }

    [*(*v2 + 171) setMaxVideoStallInterval:v60];
    v61 = *(*v2 + 82);
    if (v61 < v59)
    {
      v61 = v59;
    }

    *(*v2 + 82) = v61;
    if ([*v3 objectForKeyedSubscript:@"APT"])
    {
      [objc_msgSend(*v3 objectForKeyedSubscript:{@"APT", "doubleValue"}];
      v63 = v62 - *(*v2 + 129);
      *(*v2 + 129) = v62;
      v64 = *(*v2 + 171);
      [v64 totalAudioStallTime];
      [v64 setTotalAudioStallTime:v63 + v65];
      *(*v2 + 128) = v63 + *(*v2 + 128);
    }

    [objc_msgSend(*v3 objectForKeyedSubscript:{@"APSM", "doubleValue"}];
    v67 = v66;
    [*(*v2 + 171) maxAudioStallInterval];
    if (v67 >= v68)
    {
      v68 = v67;
    }

    [*(*v2 + 171) setMaxAudioStallInterval:v68];
    v69 = *(*v2 + 127);
    if (v69 < v67)
    {
      v69 = v67;
    }

    *(*v2 + 127) = v69;
    if ([*v3 objectForKeyedSubscript:@"VPS"])
    {
      v70 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VPS", "integerValue"}];
      v71 = v70;
      [*(*v2 + 171) setVideoSentPacketCount:{objc_msgSend(*(*v2 + 171), "videoSentPacketCount") + v70 - *(*v2 + 440)}];
      *(*v2 + 220) = v71;
    }

    if ([*v3 objectForKeyedSubscript:@"APS"])
    {
      v72 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"APS", "integerValue"}];
      v73 = v72;
      [*(*v2 + 171) setAudioSentPacketCount:{objc_msgSend(*(*v2 + 171), "audioSentPacketCount") + v72 - *(*v2 + 250)}];
      *(*v2 + 125) = v73;
    }

    v74 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"APRR", "integerValue"}];
    v75 = v74;
    [*(*v2 + 171) setAudioRecvPacketCount:{objc_msgSend(*(*v2 + 171), "audioRecvPacketCount") + v74 - *(*v2 + 252)}];
    *(*v2 + 126) = v75;
    [*(*v2 + 171) setVideoFlushPacketCount:{objc_msgSend(*(*v2 + 171), "videoFlushPacketCount") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VPF", "integerValue")}];
    [*(*v2 + 171) setAudioFlushPacketCount:{objc_msgSend(*(*v2 + 171), "audioFlushPacketCount") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"APF", "integerValue")}];
    [*(*v2 + 171) setBBQueueTooLargeCount:{objc_msgSend(*(*v2 + 171), "BBQueueTooLargeCount") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VFL", "integerValue")}];
    [*(*v2 + 171) setBBRateTooLowCount:{objc_msgSend(*(*v2 + 171), "BBRateTooLowCount") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"AFL", "integerValue")}];
    v76 = *v2;
    if (*(*v2 + 137) == 4)
    {
      v77 = 0;
    }

    else
    {
      v77 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"ATxR", "integerValue"}];
      v76 = *v2;
    }

    v76[180] = v76[180] + v77;
    v78 = *(*v2 + 171);
    [v78 callAverageAudioTxBitrate];
    [v78 setCallAverageAudioTxBitrate:v79 + v77];
    v80 = v77 + [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "SBR")];
    v81 = *(*v2 + 171);
    [v81 averageSendBitrate];
    [v81 setAverageSendBitrate:v82 + v80];
    *(*v2 + 182) = *(*v2 + 182) + v80;
    LODWORD(v80) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxR", "integerValue"}];
    v83 = *(*v2 + 171);
    [v83 averageTotalVideoSendBitrate];
    [v83 setAverageTotalVideoSendBitrate:v84 + v80];
    *(*v2 + 198) = *(*v2 + 198) + v80;
    v85 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxRMedia", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "TVidMedBR")];
    [*(*v2 + 85) addValue:v85];
    v86 = *(*v2 + 171);
    [v86 averageVideoMediaSendBitrate];
    [v86 setAverageVideoMediaSendBitrate:v87 + v85];
    *(*v2 + 199) = *(*v2 + 199) + v85;
    LODWORD(v85) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRxMR", "integerValue"}];
    v88 = *(*v2 + 171);
    [v88 averageVideoMediaReceiveBitrate];
    [v88 setAverageVideoMediaReceiveBitrate:v89 + v85];
    *(*v2 + 200) = *(*v2 + 200) + v85;
    LODWORD(v85) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRFECRxR", "integerValue"}];
    v90 = *(*v2 + 171);
    [v90 averageVideoFECReceiveBitrate];
    [v90 setAverageVideoFECReceiveBitrate:v91 + v85];
    *(*v2 + 202) = *(*v2 + 202) + v85;
    v92 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"CodecPayload", "integerValue"}];
    if (([objc_msgSend(*(*v2 + 171) "TVidCodecPayload")] & 1) == 0 && VRTraceGetErrorLogLevelForModule("") >= 5)
    {
      v93 = VRTraceErrorLogLevelToCSTR(5u);
      v94 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v235 = v93;
        v236 = 2080;
        v237 = "[VCAggregatorFaceTime updateRTStats:]_block_invoke";
        v238 = 1024;
        v239 = 3164;
        v240 = 1024;
        LODWORD(v241) = v92;
        _os_log_impl(&dword_23D4DF000, v94, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to find valueInt=%u in Segment Codec Payload histogram. No value will be reported.", buf, 0x22u);
      }
    }

    [*(*v2 + 86) addOnlyExactMatchingValue:v92];
    v95 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxRHDR", "integerValue"}];
    v96 = *(*v2 + 171);
    [v96 averageVideoHeaderSendBitrate];
    [v96 setAverageVideoHeaderSendBitrate:v97 + v95];
    *(*v2 + 201) = *(*v2 + 201) + v95;
    v98 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxRFEC", "integerValue"}];
    v99 = *(*v2 + 171);
    [v99 averageVideoFECSendBitrate];
    [v99 setAverageVideoFECSendBitrate:v100 + v98];
    *(*v2 + 203) = *(*v2 + 203) + v98;
    v101 = *v2;
    if (*(*v2 + 137) == 4)
    {
      v102 = 0;
    }

    else
    {
      v102 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"ARxR", "integerValue"}];
      v101 = *v2;
    }

    v101[181] = v101[181] + v102;
    v103 = *(*v2 + 171);
    [v103 callAverageAudioRxBitrate];
    [v103 setCallAverageAudioRxBitrate:v104 + v102];
    v105 = v102 + [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "RBR")];
    v106 = *(*v2 + 171);
    [v106 averageReceiveBitrate];
    [v106 setAverageReceiveBitrate:v107 + v105];
    *(*v2 + 183) = *(*v2 + 183) + v105;
    [*(*v2 + 38) setAvgReceivingBitrate:{objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"ARxR", "integerValue") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VRxR", "integerValue") - objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VRFECRxR", "integerValue")}];
    LODWORD(v103) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    v108 = *(*v2 + 171);
    [v108 averageTotalVideoRecvBitrate];
    [v108 setAverageTotalVideoRecvBitrate:v109 + v103];
    *(*v2 + 83) = *(*v2 + 83) + v103;
    [objc_msgSend(*(*v2 + 171) "videoResolution")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"JitterErasureRate", "floatValue"}];
    v111 = (v110 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "jitterErasures")];
    v112 = *(*v2 + 171);
    [v112 averageJitterErasuresRate];
    [v112 setAverageJitterErasuresRate:v113 + v111];
    *(*v2 + 108) = *(*v2 + 108) + v111;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"FrameErasureRate", "floatValue"}];
    v115 = (v114 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "audioErasures")];
    v116 = *(*v2 + 171);
    [v116 averageAudioErasuresRate];
    [v116 setAverageAudioErasuresRate:v117 + v115];
    *(*v2 + 109) = *(*v2 + 109) + v115;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"WindowedFrameErasureRate", "floatValue"}];
    [*(*v2 + 38) addLargeGapErasureWithTime:v5 largeGapErasureRate:v118];
    *(*v2 + 368) = fmax(*(*v2 + 368), [objc_msgSend(*v3 objectForKeyedSubscript:{@"FrameErasureCount", "intValue"}]);
    v119 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"MaxConsecutiveAudioErasures", "intValue"}];
    [objc_msgSend(*(*v2 + 171) "maxConsAudioErasuresHistogram")];
    [*(*v2 + 171) setMaxConsecutiveAudioErasures:{fmax(objc_msgSend(*(*v2 + 171), "maxConsecutiveAudioErasures"), v119)}];
    LODWORD(v120) = *(*v2 + 260);
    *(*v2 + 260) = fmax(v120, v119);
    *(*v2 + 375) = fmax(*(*v2 + 375), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalTimescaleCount", "intValue"}]);
    *(*v2 + 377) = fmax(*(*v2 + 377), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalSilenceTimescaleCount", "intValue"}]);
    *(*v2 + 376) = fmax(*(*v2 + 376), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalSpeechTimescaleCount", "intValue"}]);
    *(*v2 + 378) = fmax(*(*v2 + 378), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalExpandTimescaleCount", "intValue"}]);
    *(*v2 + 379) = fmax(*(*v2 + 379), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalCompressTimescaleCount", "intValue"}]);
    v121 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"JitterBufferTargetChanges", "intValue"}];
    *(*v2 + 372) += v121;
    *(*v2 + 373) = fmax(*(*v2 + 373), v121);
    *(*v2 + 369) = fmax(*(*v2 + 369), [objc_msgSend(*v3 objectForKeyedSubscript:{@"VSTCNT", "intValue"}]);
    v122 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFrErCnt", "intValue"}];
    *(*v2 + 244) += v122;
    LODWORD(v123) = *(*v2 + 243);
    *(*v2 + 243) = fmax(v123, v122);
    *(*v2 + 387) += [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJBTC", "intValue"}];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJ", "doubleValue"}];
    v125 = v124 * 1000.0;
    v126 = v125;
    *(*v2 + 386) += v125;
    v127 = *(*v2 + 388);
    if (v127 <= v125)
    {
      v127 = v125;
    }

    *(*v2 + 388) = v127;
    [*(*v2 + 84) addValue:v125];
    v128 = &OBJC_IVAR___VCAggregatorFaceTime__JBQSizeDeltaVidLarger;
    if (v126 >= v11)
    {
      v129 = v126 - v11;
    }

    else
    {
      v128 = &OBJC_IVAR___VCAggregatorFaceTime__JBQSizeDeltaAudLarger;
      v129 = v11 - v126;
    }

    [*(*v2 + *v128) addValue:v129];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJBTWA", "doubleValue"}];
    *(*v2 + 195) = v130 * 1000.0 + *(*v2 + 195);
    *(*v2 + 374) = fmin(*(*v2 + 374), [objc_msgSend(*v3 objectForKeyedSubscript:{@"NRFr", "intValue"}]);
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"FrameSpeechErasureRate", "floatValue"}];
    v132 = (v131 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "speechErasures")];
    v133 = *(*v2 + 171);
    [v133 averageSpeechErasuresRate];
    [v133 setAverageSpeechErasuresRate:v134 + v132];
    *(*v2 + 110) = *(*v2 + 110) + v132;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"TimescaleRate", "floatValue"}];
    v136 = (v135 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "timescaleRate")];
    v137 = *(*v2 + 171);
    [v137 averageTotalTimescaleRate];
    [v137 setAverageTotalTimescaleRate:v138 + v136];
    *(*v2 + 190) = *(*v2 + 190) + v136;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"SilenceTimescaleRate", "floatValue"}];
    v140 = (v139 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "silenceTimescaleRate")];
    v141 = *(*v2 + 171);
    [v141 averageSilenceTimescaleRate];
    [v141 setAverageSilenceTimescaleRate:v142 + v140];
    *(*v2 + 191) = *(*v2 + 191) + v140;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"SpeechTimescaleRate", "floatValue"}];
    v144 = (v143 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "speechTimescaleRate")];
    v145 = *(*v2 + 171);
    [v145 averageSpeechTimescaleRate];
    [v145 setAverageSpeechTimescaleRate:v146 + v144];
    *(*v2 + 192) = *(*v2 + 192) + v144;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"FrameSpeechErasureRate", "doubleValue"}];
    v148 = v147 * [*v2 RTPeriod] * 1000.0;
    if (v148 != 0.0)
    {
      v149 = *(*v2 + 171);
      [v149 speechErasureTotalTime];
      [v149 setSpeechErasureTotalTime:v148 + v150];
    }

    v151 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"DBE", "intValue"}];
    v152 = *(*v2 + 171);
    [v152 averageBWE];
    [v152 setAverageBWE:v153 + v151];
    v154 = [*(*v2 + 171) minBWE];
    if (v151 >= v154)
    {
      v155 = v154;
    }

    else
    {
      v155 = v151;
    }

    [*(*v2 + 171) setMinBWE:v155];
    v156 = [*(*v2 + 171) maxBWE];
    if (v151 <= v156)
    {
      v157 = v156;
    }

    else
    {
      v157 = v151;
    }

    [*(*v2 + 171) setMaxBWE:v157];
    v158 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"SBWD", "intValue"}];
    [*(*v2 + 171) setTotalSuddenBandwidthDropCount:{v158 - *(*v2 + 124) + objc_msgSend(*(*v2 + 171), "totalSuddenBandwidthDropCount")}];
    *(*v2 + 124) = v158;
    v159 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"RDMBL", "intValue"}];
    [*(*v2 + 171) setTotalMBLRampDownCount:{v159 - *(*v2 + 464) + objc_msgSend(*(*v2 + 171), "totalMBLRampDownCount")}];
    *(*v2 + 464) = v159;
    v160 = *v2;
    if (*(*v2 + 1376) == 1)
    {
      [objc_msgSend(v160[171] "poorConnection")];
    }

    else if (*(v160 + 174) != 0.0)
    {
      [objc_msgSend(v160[171] "poorConnection")];
      *(*v2 + 174) = 0;
    }

    v161 = [*v3 objectForKeyedSubscript:@"VPktRx"];
    v162 = [*v3 objectForKeyedSubscript:@"VRxPktLoss"];
    v163 = [*v3 objectForKeyedSubscript:@"VRSOOOCnt"];
    if (v161)
    {
      if (v162)
      {
        v164 = v163;
        if (v163)
        {
          v165 = [v161 intValue];
          [v162 doubleValue];
          v167 = v166 / 100.0;
          if (v167 >= 1.0)
          {
            v168 = 0;
          }

          else
          {
            v168 = (v165 / (1.0 - v167));
          }

          *(*v2 + 447) += v168;
          [*(*v2 + 171) setTotalVideoPacketsExpected:{objc_msgSend(*(*v2 + 171), "totalVideoPacketsExpected") + v168}];
          v169 = [v164 intValue];
          *(*v2 + 446) += v169;
          [*(*v2 + 171) setSignificantOOOPacketCount:{objc_msgSend(*(*v2 + 171), "significantOOOPacketCount") + v169}];
        }
      }
    }

    v170 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFIRDCnt", "intValue"}];
    *(*v2 + 448) += v170;
    [*(*v2 + 171) setTotalFIRDemandCounter:{objc_msgSend(*(*v2 + 171), "totalFIRDemandCounter") + v170}];
    v171 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFIRCnt", "intValue"}];
    *(*v2 + 449) += v171;
    [*(*v2 + 171) setTotalFIRCounter:{objc_msgSend(*(*v2 + 171), "totalFIRCounter") + v171}];
    v172 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFIRFSCnt", "intValue"}];
    *(*v2 + 450) += v172;
    [*(*v2 + 171) setTotalFIRFailSafeCounter:{objc_msgSend(*(*v2 + 171), "totalFIRFailSafeCounter") + v172}];
    v173 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFDBSCnt", "intValue"}];
    *(*v2 + 451) += v173;
    [*(*v2 + 171) setVideoFrameDecodedButSkippedCounter:{objc_msgSend(*(*v2 + 171), "videoFrameDecodedButSkippedCounter") + v173}];
    v174 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFTICnt", "intValue"}];
    *(*v2 + 452) += v174;
    [*(*v2 + 171) setVideoFrameTotalIncompleteCounter:{objc_msgSend(*(*v2 + 171), "videoFrameTotalIncompleteCounter") + v174}];
    v175 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"DVFECnt", "intValue"}];
    *(*v2 + 453) += v175;
    [*(*v2 + 171) setDecodedVideoFrameEnqueueCounter:{objc_msgSend(*(*v2 + 171), "decodedVideoFrameEnqueueCounter") + v175}];
    v176 = reportingDefaultRealtimePeriod();
    if (v176)
    {
      v177 = v175 / v176;
    }

    else
    {
      v177 = 0.0;
    }

    [*(*v2 + 38) setVideoFramerate:v177];
    v178 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFRxCnt", "intValue"}];
    *(*v2 + 454) += v178;
    [*(*v2 + 171) setVideoFrameReceivedCounter:{objc_msgSend(*(*v2 + 171), "videoFrameReceivedCounter") + v178}];
    v179 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFExCnt", "intValue"}];
    *(*v2 + 455) += v179;
    [*(*v2 + 171) setVideoFrameExpectedCounter:{objc_msgSend(*(*v2 + 171), "videoFrameExpectedCounter") + v179}];
    v180 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VNoFecTF", "intValue"}];
    *(*v2 + 456) += v180;
    [*(*v2 + 171) setVideoFrameNonFECTotalCounter:{objc_msgSend(*(*v2 + 171), "videoFrameNonFECTotalCounter") + v180}];
    v181 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VNoFecCF", "intValue"}];
    *(*v2 + 457) += v181;
    [*(*v2 + 171) setVideoFrameNonFECCompleteCounter:{objc_msgSend(*(*v2 + 171), "videoFrameNonFECCompleteCounter") + v181}];
    v182 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"EncOutFrameCnt", "integerValue"}];
    *(*v2 + 458) += v182;
    [*(*v2 + 171) setEncodedVideoFrameCounter:{objc_msgSend(*(*v2 + 171), "encodedVideoFrameCounter") + v182}];
    v183 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFCCnt", "integerValue"}];
    *(*v2 + 459) += v183;
    [*(*v2 + 171) setCaptureVideoFrameCounter:{objc_msgSend(*(*v2 + 171), "captureVideoFrameCounter") + v183}];
    [*v2 updateRTXStats:*v3];
    v184 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"OVSBR", "intValue"}];
    *(*v2 + 237) += v184;
    [*(*v2 + 171) setOvershootSendBitrate:{objc_msgSend(*(*v2 + 171), "overshootSendBitrate") + v184}];
    v185 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"UNSBR", "intValue"}];
    *(*v2 + 238) += v185;
    [*(*v2 + 171) setUndershootSendBitrate:{objc_msgSend(*(*v2 + 171), "undershootSendBitrate") + v185}];
    v186 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"OVBWE", "intValue"}];
    *(*v2 + 239) += v186;
    [*(*v2 + 171) setOverUtilizedBandwidth:{objc_msgSend(*(*v2 + 171), "overUtilizedBandwidth") + v186}];
    v187 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"UNBWE", "intValue"}];
    *(*v2 + 240) += v187;
    [*(*v2 + 171) setUnderUtilizedBandwidth:{objc_msgSend(*(*v2 + 171), "underUtilizedBandwidth") + v187}];
    v188 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFEVTrCnt", "intValue"}];
    *(*v2 + 482) += v188;
    [*(*v2 + 171) setEvictedFramesTrackedCount:{objc_msgSend(*(*v2 + 171), "evictedFramesTrackedCount") + v188}];
    v189 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFEVRecoveredCnt", "intValue"}];
    *(*v2 + 490) += v189;
    [*(*v2 + 171) setEvictedFramesRecoveredCount:{objc_msgSend(*(*v2 + 171), "evictedFramesRecoveredCount") + v189}];
    v190 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFrLateCount", "intValue"}];
    *(*v2 + 491) += v190;
    [*(*v2 + 171) setLateFramesScheduledCount:{objc_msgSend(*(*v2 + 171), "lateFramesScheduledCount") + v190}];
    [*v2 updateLateFrameStats:*v3];
    v191 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxFECTime", "integerValue"}];
    LODWORD(v192) = *(*v2 + 492);
    *(*v2 + 492) = (v191 + v192);
    [*(*v2 + 171) setFecProcessingTime:{(v191 + objc_msgSend(*(*v2 + 171), "fecProcessingTime"))}];
    [*(*v2 + 171) setIs5GHz:{objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"iWiFi5GHz", "integerValue") != 0}];
    v193 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"RTT", "integerValue"}];
    v194 = *(*v2 + 171);
    if (v193 < 0x1F5)
    {
      [objc_msgSend(*(*v2 + 171) "continuousHighRTTReportCount")];
      v196 = *(*v2 + 171);
      v195 = 0;
    }

    else
    {
      v195 = [*(*v2 + 171) highRTTReportCounter] + 1;
      v196 = v194;
    }

    [v196 setHighRTTReportCounter:v195];
    if ([objc_msgSend(*v3 objectForKeyedSubscript:{@"VPLR", "integerValue"}] < 1)
    {
      [objc_msgSend(*(*v2 + 171) "continuousHighPLRReportCount")];
      [*(*v2 + 171) setHighPLRReportCounter:0];
      if (v193 < 0x1F5)
      {
        [objc_msgSend(*(*v2 + 171) "continuousHighRTTPLRReportCount")];
        v199 = *(*v2 + 171);
        v198 = 0;
        goto LABEL_98;
      }
    }

    else
    {
      [*(*v2 + 171) setHighPLRReportCounter:{objc_msgSend(*(*v2 + 171), "highPLRReportCounter") + 1}];
    }

    v197 = *(*v2 + 171);
    v198 = [v197 highRTTPLRReportCounter] + 1;
    v199 = v197;
LABEL_98:
    [v199 setHighRTTPLRReportCounter:v198];
    [*v2 processCameraResolution:*v3];
    [*v2 updateAudioTxStatsWithPayload:*v3];
    [objc_msgSend(*v2 "captionsDataCollector")];
    v232 = 0u;
    v233 = 0u;
    v230 = 0u;
    v231 = 0u;
    v200 = *(*v2 + 284);
    v201 = [v200 countByEnumeratingWithState:&v230 objects:v247 count:16];
    if (v201)
    {
      v202 = v201;
      v203 = *v231;
      do
      {
        for (i = 0; i != v202; ++i)
        {
          if (*v231 != v203)
          {
            objc_enumerationMutation(v200);
          }

          [*(*(&v230 + 1) + 8 * i) updateDataWithTime:v5];
        }

        v202 = [v200 countByEnumeratingWithState:&v230 objects:v247 count:16];
      }

      while (v202);
    }

    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v205 = [*(*v2 + 171) thermalDataCollectors];
    v206 = [v205 countByEnumeratingWithState:&v226 objects:v246 count:16];
    if (v206)
    {
      v207 = v206;
      v208 = *v227;
      do
      {
        for (j = 0; j != v207; ++j)
        {
          if (*v227 != v208)
          {
            objc_enumerationMutation(v205);
          }

          [*(*(&v226 + 1) + 8 * j) updateDataWithTime:v5];
        }

        v207 = [v205 countByEnumeratingWithState:&v226 objects:v246 count:16];
      }

      while (v207);
    }

    ++*(*v2 + 356);
    [*(*v2 + 171) setAdjustedDuration:{objc_msgSend(*(*v2 + 171), "adjustedDuration") + 1}];
    goto LABEL_124;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v19 = VRTraceErrorLogLevelToCSTR(8u);
    v20 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(*v2 + 165) UTF8String];
        *buf = 136315906;
        v235 = v19;
        v236 = 2080;
        v237 = "[VCAggregatorFaceTime updateRTStats:]_block_invoke";
        v238 = 1024;
        v239 = 3469;
        v240 = 2080;
        v241 = v21;
        _os_log_impl(&dword_23D4DF000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Ignoring first event(s) for segment %s", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __38__VCAggregatorFaceTime_updateRTStats___block_invoke_cold_1(v19, v2);
    }
  }

  if ([*(a1 + 40) objectForKeyedSubscript:@"VST"])
  {
    [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"VST", "doubleValue"}];
    *(*(a1 + 32) + 1688) = v210;
  }

  if ([*(a1 + 40) objectForKeyedSubscript:@"APT"])
  {
    [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"APT", "doubleValue"}];
    *(*(a1 + 32) + 1032) = v211;
  }

  v212 = *v2;
  if (*(*v2 + 1400) == 1)
  {
    [v212 microFromPayload:*(a1 + 40)];
    *(*(a1 + 32) + 1408) = v213;
    v212 = *(a1 + 32);
  }

  if (v212[1376] == 1)
  {
    [v212 microFromPayload:*(a1 + 40)];
    *(*(a1 + 32) + 1384) = v214;
  }

LABEL_124:
  [*(a1 + 32) updateVideoFECStats:*(a1 + 40) fecStats:objc_msgSend(*(*(a1 + 32) + 1368) callLossPattern:"fecStatsHolder") segmentLossPattern:*(*(a1 + 32) + 1976) segmentLossHistogram:objc_msgSend(*(*(a1 + 32) + 1368) segmentLossFecHistogram:{"lossPattern"), objc_msgSend(*(*(a1 + 32) + 1368), "lossHistogram"), objc_msgSend(*(*(a1 + 32) + 1368), "lossFecHistogram")}];
  [*(a1 + 32) updateVPCStats:*(a1 + 40)];
  [*(a1 + 32) updateVideoFeatureStatus:*(a1 + 40)];
  ++*(*(a1 + 32) + 1420);
  [*(*(a1 + 32) + 1368) setDuration:{objc_msgSend(*(*(a1 + 32) + 1368), "duration") + 1}];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v215 = VRTraceErrorLogLevelToCSTR(8u);
    v216 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v217 = [objc_msgSend(*(*v2 + 171) "description")];
        v218 = *v2;
        v219 = *(*v2 + 355);
        v220 = [v218[171] duration];
        *buf = 136316418;
        v235 = v215;
        v236 = 2080;
        v237 = "[VCAggregatorFaceTime updateRTStats:]_block_invoke";
        v238 = 1024;
        v239 = 3492;
        v240 = 2080;
        v241 = v217;
        v242 = 1024;
        v243 = v219;
        v244 = 1024;
        v245 = v220;
        _os_log_impl(&dword_23D4DF000, v216, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Current segment after RT event {%s}, total duration is %d, segment duration is %d", buf, 0x32u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v222 = [objc_msgSend(*(*v2 + 171) "description")];
      v223 = *v2;
      v224 = *(*v2 + 355);
      v225 = [v223[171] duration];
      *buf = 136316418;
      v235 = v215;
      v236 = 2080;
      v237 = "[VCAggregatorFaceTime updateRTStats:]_block_invoke";
      v238 = 1024;
      v239 = 3492;
      v240 = 2080;
      v241 = v222;
      v242 = 1024;
      v243 = v224;
      v244 = 1024;
      v245 = v225;
      _os_log_debug_impl(&dword_23D4DF000, v216, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Current segment after RT event {%s}, total duration is %d, segment duration is %d", buf, 0x32u);
    }
  }

  v221 = *MEMORY[0x277D85DE8];
}

- (void)updateLateFrameStats:(id)a3
{
  [objc_msgSend(a3 objectForKeyedSubscript:{@"VFEVLtPktDelay", "doubleValue"}];
  v6 = v5;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"VFEVMaxLtPktDelay", "doubleValue"}];
  v8 = v7;
  self->_evictedFramesAverageLatePacketDelay = v6 + self->_evictedFramesAverageLatePacketDelay;
  evictedFramesMaxLatePacketDelay = self->_evictedFramesMaxLatePacketDelay;
  if (evictedFramesMaxLatePacketDelay < v8)
  {
    evictedFramesMaxLatePacketDelay = v8;
  }

  self->_evictedFramesMaxLatePacketDelay = evictedFramesMaxLatePacketDelay;
  currentSegment = self->_currentSegment;
  [(CallSegment *)currentSegment evictedFramesAverageLatePacketDelay];
  [(CallSegment *)currentSegment setEvictedFramesAverageLatePacketDelay:v6 + v11];
  [(CallSegment *)self->_currentSegment evictedFramesMaxLatePacketDelay];
  if (v12 < v8)
  {
    v12 = v8;
  }

  [(CallSegment *)self->_currentSegment setEvictedFramesMaxLatePacketDelay:v12];
  if (v6 != 0.0)
  {
    ++self->_evictedFramesAnalysisValidIntervals;
    [(CallSegment *)self->_currentSegment setEvictedFramesAnalysisValidIntervals:[(CallSegment *)self->_currentSegment evictedFramesAnalysisValidIntervals]+ 1];
  }

  v13 = [a3 objectForKeyedSubscript:@"VFEVLtPktDelayHist"];
  if (v13)
  {
    v14 = v13;
    v21 = 0;
    v15 = [VCReportingHistogram bucketWithType:79 count:&v21];
    if (v21 != 1)
    {
      v16 = v15;
      v17 = 0;
      do
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        [(VCHistogram *)self->_evictedFramesLatePacketHist addValue:v16[v17] withIncrement:valuePtr];
        v19 = [(CallSegment *)self->_currentSegment evictedFramesLatePacketDelayHist];
        [(VCHistogram *)v19 addValue:v16[v17++] withIncrement:valuePtr];
      }

      while (v17 < (v21 - 1));
    }
  }
}

- (void)updateRTXStats:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"NacksSent"] && objc_msgSend(a3, "objectForKeyedSubscript:", @"NacksFulfilled") && objc_msgSend(a3, "objectForKeyedSubscript:", @"NacksFulfilledOnTime"))
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksSent", "integerValue"}];
    self->_nacksSent += v5;
    [(CallSegment *)self->_currentSegment setNacksSent:[(CallSegment *)self->_currentSegment nacksSent]+ v5];
    v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksFulfilled", "integerValue"}];
    self->_nacksFulfilled += v6;
    [(CallSegment *)self->_currentSegment setNacksFulfilled:[(CallSegment *)self->_currentSegment nacksFulfilled]+ v6];
    v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksFulfilledOnTime", "integerValue"}];
    self->_nacksFulfilledOnTime += v7;
    [(CallSegment *)self->_currentSegment setNacksFulfilledOnTime:[(CallSegment *)self->_currentSegment nacksFulfilledOnTime]+ v7];
    v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"UniqueNacksSent", "integerValue"}];
    self->_uniqueNacksSent += v5;
    [(CallSegment *)self->_currentSegment setUniqueNacksSent:[(CallSegment *)self->_currentSegment uniqueNacksSent]+ v8];
    v9 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksFrmsSchWithRTX", "integerValue"}];
    self->_lateFramesScheduledWithRTXCount += v9;
    [(CallSegment *)self->_currentSegment setLateFramesScheduledWithRTXCount:[(CallSegment *)self->_currentSegment lateFramesScheduledWithRTXCount]+ v9];
    v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksFrmsAssemWithRTX", "integerValue"}];
    self->_assembledFramesWithRTXPacketsCount += v10;
    [(CallSegment *)self->_currentSegment setAssembledFramesWithRTXPacketsCount:[(CallSegment *)self->_currentSegment assembledFramesWithRTXPacketsCount]+ v10];
    v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksFrmsFailedAssemWithRTX", "integerValue"}];
    self->_failedToAssembleFramesWithRTXPacketsCount += v11;
    [(CallSegment *)self->_currentSegment setFailedToAssembleFramesWithRTXPacketsCount:[(CallSegment *)self->_currentSegment failedToAssembleFramesWithRTXPacketsCount]+ v11];
    v12 = [(CallSegment *)self->_currentSegment nacksRTXMediaBitRate];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksMediaBitRate", "doubleValue"}];
    [(VCHistogram *)v12 addValue:v13];
    v14 = [(CallSegment *)self->_currentSegment nacksRTXRetransmittedMediaBitRate];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksRTXMediaBitRate", "doubleValue"}];
    [(VCHistogram *)v14 addValue:v15];
    v16 = [(CallSegment *)self->_currentSegment nacksPLRWithRTX];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksPLRWithRTX", "doubleValue"}];
    [(VCHistogram *)v16 addValue:v17];
    v18 = [(CallSegment *)self->_currentSegment nacksPLRWithoutRTX];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksPLRWithoutRTX", "doubleValue"}];
    [(VCHistogram *)v18 addValue:v19];
    nacksPLRWithRTX = self->_nacksPLRWithRTX;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksPLRWithRTX", "doubleValue"}];
    [(VCHistogram *)nacksPLRWithRTX addValue:v21];
    nacksPLRWithoutRTX = self->_nacksPLRWithoutRTX;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksPLRWithoutRTX", "doubleValue"}];
    [(VCHistogram *)nacksPLRWithoutRTX addValue:v23];
    v24 = [(CallSegment *)self->_currentSegment nacksRTXResponseTime];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksAvgResponseTime", "doubleValue"}];
    [(VCHistogram *)v24 addValue:(v25 * 1000.0)];
    v26 = [(CallSegment *)self->_currentSegment nacksRTXLateTime];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NacksLateTime", "doubleValue"}];
    [(VCHistogram *)v26 addValue:(v27 * 1000.0)];
    [(CallSegment *)self->_currentSegment setIsRTXTelemetryAvailable:1];
    self->_isRTXTelemetryAvailable = 1;
    self->super._serverPacketRetransmissionsForVideoEnabled = 1;
  }

  if (self->_currentSegment && [a3 objectForKeyedSubscript:@"UNRPC"] && objc_msgSend(a3, "objectForKeyedSubscript:", @"UNFPC") && objc_msgSend(a3, "objectForKeyedSubscript:", @"ULNACKCHCNT") && objc_msgSend(a3, "objectForKeyedSubscript:", @"ULNACKCMCNT") && objc_msgSend(a3, "objectForKeyedSubscript:", @"ULNACKNRCNT"))
  {
    self->_currentSegment->super._isUplinkRTXTelemetryAvailable = 1;
    self->super.super._isUplinkRTXTelemetryAvailable = 1;
    v28 = [objc_msgSend(a3 objectForKeyedSubscript:{@"UNRPC", "integerValue"}];
    self->super.super._retransmissionRequestPacketCount += v28;
    self->_currentSegment->super._retransmissionRequestPacketCount += v28;
    v29 = [objc_msgSend(a3 objectForKeyedSubscript:{@"UNFPC", "integerValue"}];
    self->super.super._retransmissionFulfilledPacketCount += v29;
    self->_currentSegment->super._retransmissionFulfilledPacketCount += v29;
    v30 = [objc_msgSend(a3 objectForKeyedSubscript:{@"UNCHPC", "integerValue"}];
    self->super.super._retransmissionCacheHitCount += v30;
    self->_currentSegment->super._retransmissionCacheHitCount += v30;
    v31 = [objc_msgSend(a3 objectForKeyedSubscript:{@"UNCMPC", "integerValue"}];
    self->super.super._retransmissionCacheMissCount += v31;
    self->_currentSegment->super._retransmissionCacheMissCount += v31;
    v32 = [objc_msgSend(a3 objectForKeyedSubscript:{@"UNTRC", "integerValue"}];
    self->super.super._retransmissionNACKReceivedCount += v32;
    self->_currentSegment->super._retransmissionNACKReceivedCount += v32;
    v33 = [objc_msgSend(a3 objectForKeyedSubscript:{@"UNRRC", "integerValue"}];
    self->super.super._retransmissionRequestRepeatedCount += v33;
    self->_currentSegment->super._retransmissionRequestRepeatedCount += v33;
    v34 = [objc_msgSend(a3 objectForKeyedSubscript:{@"UNRRMC", "integerValue"}];
    currentSegment = self->_currentSegment;
    if (v34 > currentSegment->super._retransmissionRequestRepeatedMaxCount)
    {
      currentSegment->super._retransmissionRequestRepeatedMaxCount = v34;
      currentSegment = self->_currentSegment;
    }

    retransmissionResponseTime = currentSegment->super._retransmissionResponseTime;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"UNART", "doubleValue"}];
    [(VCHistogram *)retransmissionResponseTime addValue:(v37 * 1000.0)];
    retransmissionLateTime = self->_currentSegment->super._retransmissionLateTime;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"UNALT", "doubleValue"}];
    [(VCHistogram *)retransmissionLateTime addValue:(v39 * 1000.0)];
    retransmissionActualMediaBitrate = self->_currentSegment->super._retransmissionActualMediaBitrate;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"UNMB", "doubleValue"}];
    [(VCHistogram *)retransmissionActualMediaBitrate addValue:(v41 * 1000.0)];
    retransmissionBitrate = self->_currentSegment->super._retransmissionBitrate;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"UNRB", "doubleValue"}];
    [(VCHistogram *)retransmissionBitrate addValue:(v43 * 1000.0)];
    self->_currentSegment->super._isUplinkRTXTelemetryAvailable = 1;
    self->super.super._isUplinkRTXTelemetryAvailable = 1;
  }
}

- (void)processRTXConfigData:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__VCAggregatorFaceTime_processRTXConfigData___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

uint64_t __45__VCAggregatorFaceTime_processRTXConfigData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"NacksRTXEnabled"];
  if (v2)
  {
    *(*(a1 + 40) + 432) = [v2 integerValue] != 0;
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"NacksRTXConfigVersion"];
  if (v3)
  {
    *(*(a1 + 40) + 428) = [v3 integerValue];
  }

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"NacksRTXDelayedEnabled"];
  if (v4)
  {
    *(*(a1 + 40) + 433) = [v4 integerValue] != 0;
  }

  [*(*(a1 + 40) + 1368) setNackGeneratorConfigVersion:*(*(a1 + 40) + 428)];
  [*(*(a1 + 40) + 1368) setServerPacketRetransmissionsForVideoEnabled:*(*(a1 + 40) + 432)];
  v5 = *(a1 + 40);
  v6 = *(v5 + 433);
  v7 = *(v5 + 1368);

  return [v7 setServerPacketRetransmissionsExtraDelayBudgetEnabled:v6];
}

- (void)updateVideoResolution:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__VCAggregatorFaceTime_updateVideoResolution___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(stateQueue, v4);
}

void __46__VCAggregatorFaceTime_updateVideoResolution___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 196) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"Width", "intValue"}];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 196);
        v6 = *(v4 + 1420);
        v7 = [*(v4 + 1368) duration];
        v13 = 136316418;
        v14 = v2;
        v15 = 2080;
        v16 = "[VCAggregatorFaceTime updateVideoResolution:]_block_invoke";
        v17 = 1024;
        v18 = 3635;
        v19 = 1024;
        v20 = v5;
        v21 = 1024;
        v22 = v6;
        v23 = 1024;
        v24 = v7;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Current width has been updated to %d, total duration is %d, segment duration is %d", &v13, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 196);
      v11 = *(v9 + 1420);
      v12 = [*(v9 + 1368) duration];
      v13 = 136316418;
      v14 = v2;
      v15 = 2080;
      v16 = "[VCAggregatorFaceTime updateVideoResolution:]_block_invoke";
      v17 = 1024;
      v18 = 3635;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 1024;
      v24 = v12;
      _os_log_debug_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Current width has been updated to %d, total duration is %d, segment duration is %d", &v13, 0x2Eu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updatePauseVideo:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCSPVideoDegraded", "BOOLValue"}];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__VCAggregatorFaceTime_updatePauseVideo___block_invoke;
  block[3] = &unk_278BD4D70;
  v8 = v5;
  block[4] = self;
  block[5] = a3;
  dispatch_async(stateQueue, block);
}

void __41__VCAggregatorFaceTime_updatePauseVideo___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    if ((*(v3 + 1376) & 1) == 0)
    {
      [*(v3 + 1368) setPoorConnectionFrequency:{objc_msgSend(*(v3 + 1368), "poorConnectionFrequency") + 1}];
      ++*(*(a1 + 32) + 1672);
      [*(a1 + 32) microFromPayload:*(a1 + 40)];
      *(*(a1 + 32) + 1384) = v4;
    }
  }

  else if (*(v3 + 1384) != 0.0)
  {
    [v3 microFromPayload:*(a1 + 40)];
    *(*(a1 + 32) + 1392) = v5 - *(*(a1 + 32) + 1384);
    [*(*(a1 + 32) + 1368) poorConnectionMaxLength];
    v7 = *(a1 + 32);
    if (v6 < *(v7 + 1392))
    {
      v6 = *(v7 + 1392);
    }

    [*(v7 + 1368) setPoorConnectionMaxLength:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1664);
    if (v9 < *(v8 + 1392))
    {
      v9 = *(v8 + 1392);
    }

    *(v8 + 1664) = v9;
    v10 = *(a1 + 32);
    v11 = *(v10 + 1368);
    [v11 poorConnectionTotalLength];
    [v11 setPoorConnectionTotalLength:v12 + *(v10 + 1392)];
    *(*(a1 + 32) + 1656) = *(*(a1 + 32) + 1392) + *(*(a1 + 32) + 1656);
    *(*(a1 + 32) + 1384) = 0;
  }

  *(*(a1 + 32) + 1376) = *(a1 + 48);
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v13 = VRTraceErrorLogLevelToCSTR(8u);
    v14 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 1376);
        v17 = *(v15 + 1384);
        v18 = *(v15 + 1420);
        v19 = [*(v15 + 1368) duration];
        v26 = 136316674;
        v27 = v13;
        v28 = 2080;
        v29 = "[VCAggregatorFaceTime updatePauseVideo:]_block_invoke";
        v30 = 1024;
        v31 = 3658;
        v32 = 1024;
        v33 = v16;
        v34 = 2048;
        v35 = v17;
        v36 = 1024;
        v37 = v18;
        v38 = 1024;
        v39 = v19;
        _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Video degraded state has been updated to %d, degragedg video start time is %.2f, total duration is %d, segment duration is %d", &v26, 0x38u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      v22 = *(v21 + 1376);
      v23 = *(v21 + 1384);
      v24 = *(v21 + 1420);
      v25 = [*(v21 + 1368) duration];
      v26 = 136316674;
      v27 = v13;
      v28 = 2080;
      v29 = "[VCAggregatorFaceTime updatePauseVideo:]_block_invoke";
      v30 = 1024;
      v31 = 3658;
      v32 = 1024;
      v33 = v22;
      v34 = 2048;
      v35 = v23;
      v36 = 1024;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      _os_log_debug_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Video degraded state has been updated to %d, degragedg video start time is %.2f, total duration is %d, segment duration is %d", &v26, 0x38u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateErrorCode:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__VCAggregatorFaceTime_updateErrorCode___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(stateQueue, v4);
}

void __40__VCAggregatorFaceTime_updateErrorCode___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 516) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"CallEndError", "integerValue"}];
  *(*(a1 + 32) + 520) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"Term", "integerValue"}];
  *(*(a1 + 32) + 1752) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"CallEndErrorDomain", "integerValue"}];
  *(*(a1 + 32) + 524) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"NoRemote", "intValue"}];
  *(*(a1 + 32) + 528) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RemoteNoRemote", "intValue"}];
  v2 = *(a1 + 32);
  v3 = v2[38];
  [v2 microFromPayload:*(a1 + 40)];
  [v3 addCallFailureWithTime:*(*(a1 + 32) + 520) detailedErrorCode:?];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR(8u);
    v5 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 520);
        v9 = 136315906;
        v10 = v4;
        v11 = 2080;
        v12 = "[VCAggregatorFaceTime updateErrorCode:]_block_invoke";
        v13 = 1024;
        v14 = 3680;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Call termination reason is %d", &v9, 0x22u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1 + 32) + 520);
      v9 = 136315906;
      v10 = v4;
      v11 = 2080;
      v12 = "[VCAggregatorFaceTime updateErrorCode:]_block_invoke";
      v13 = 1024;
      v14 = 3680;
      v15 = 1024;
      v16 = v8;
      _os_log_debug_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Call termination reason is %d", &v9, 0x22u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateConnectionTelemetry:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__VCAggregatorFaceTime_updateConnectionTelemetry___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(stateQueue, v4);
}

void __50__VCAggregatorFaceTime_updateConnectionTelemetry___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 904) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RedState", "integerValue"}];
  *(*(a1 + 32) + 908) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"WAState", "unsignedCharValue"}];

  *(*(a1 + 32) + 176) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"REMBUILD", "copy"}];
  [*(*(a1 + 32) + 1368) setRemoteOSBuild:*(*(a1 + 32) + 176)];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 904);
        LODWORD(v4) = *(v4 + 908);
        v9 = 136316162;
        v10 = v2;
        v11 = 2080;
        v12 = "[VCAggregatorFaceTime updateConnectionTelemetry:]_block_invoke";
        v13 = 1024;
        v14 = 3691;
        v15 = 1024;
        v16 = v5;
        v17 = 1024;
        v18 = v4;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: RED State=%d, wifiAssistState State=%d", &v9, 0x28u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 904);
      LODWORD(v7) = *(v7 + 908);
      v9 = 136316162;
      v10 = v2;
      v11 = 2080;
      v12 = "[VCAggregatorFaceTime updateConnectionTelemetry:]_block_invoke";
      v13 = 1024;
      v14 = 3691;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = v7;
      _os_log_debug_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: RED State=%d, wifiAssistState State=%d", &v9, 0x28u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateNoRemoteState:(id)a3 state:(BOOL)a4
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__VCAggregatorFaceTime_updateNoRemoteState_state___block_invoke;
  block[3] = &unk_278BD4D70;
  v6 = a4;
  block[4] = self;
  block[5] = a3;
  dispatch_async(stateQueue, block);
}

void __50__VCAggregatorFaceTime_updateNoRemoteState_state___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1400) = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(v2 + 1408);
  if (*(v2 + 1400) == 1)
  {
    if (v3 != 0.0)
    {
      goto LABEL_9;
    }

    [v2 microFromPayload:*(a1 + 40)];
  }

  else
  {
    if (v3 == 0.0)
    {
      goto LABEL_9;
    }

    [v2 microFromPayload:*(a1 + 40)];
    v5 = *(a1 + 32);
    v7 = v6 - *(v5 + 1408);
    v8 = *(v5 + 1368);
    [v8 totalNoRemotePacketsTime];
    [v8 setTotalNoRemotePacketsTime:v7 + v9];
    [*(*(a1 + 32) + 1368) maxNoRemotePacketsInterval];
    if (v10 < v7)
    {
      v10 = v7;
    }

    [*(*(a1 + 32) + 1368) setMaxNoRemotePacketsInterval:v10];
    v4 = 0;
  }

  *(*(a1 + 32) + 1408) = v4;
LABEL_9:
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR(8u);
    v12 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(a1 + 32) + 1408);
        v16 = 136316162;
        v17 = v11;
        v18 = 2080;
        v19 = "[VCAggregatorFaceTime updateNoRemoteState:state:]_block_invoke";
        v20 = 1024;
        v21 = 3708;
        v22 = 2048;
        v23 = v13;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: No Remote Packet state=%f, start time=%f", &v16, 0x30u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(*(a1 + 32) + 1408);
      v16 = 136316162;
      v17 = v11;
      v18 = 2080;
      v19 = "[VCAggregatorFaceTime updateNoRemoteState:state:]_block_invoke";
      v20 = 1024;
      v21 = 3708;
      v22 = 2048;
      v23 = v15;
      v24 = 2048;
      v25 = v15;
      _os_log_debug_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: No Remote Packet state=%f, start time=%f", &v16, 0x30u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateRelayInfo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];

  self->_relayServer = 0;
  self->_accessToken = 0;
  self->_relayType = 0;
  v5 = [a3 objectForKeyedSubscript:@"relayServer"];
  if ([(__CFString *)v5 length]&& (([(__CFString *)v5 isEqualToString:@"QRSAK"]& 1) != 0 || [(__CFString *)v5 isEqualToString:@"QRSAP"]))
  {
    v6 = v5;
  }

  else
  {
    v6 = @"QRSUN";
  }

  self->_relayServer = [(__CFString *)v6 copy];
  self->_relayType = [objc_msgSend(a3 objectForKeyedSubscript:{@"relayType", "integerValue"}];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"IDSToken", "copy"}];
  self->_accessToken = v7;
  if (!v7)
  {
    self->_accessToken = [@"Unknown" copy];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR(8u);
    v9 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        relayServer = self->_relayServer;
        accessToken = self->_accessToken;
        relayType = self->_relayType;
        v17 = 136316418;
        v18 = v8;
        v19 = 2080;
        v20 = "[VCAggregatorFaceTime updateRelayInfo:]";
        v21 = 1024;
        v22 = 3740;
        v23 = 2112;
        v24 = relayServer;
        v25 = 2112;
        v26 = accessToken;
        v27 = 1024;
        v28 = relayType;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Relay info updated: Server %@, AccessToken %@, RelayType %d", &v17, 0x36u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v14 = self->_relayServer;
      v15 = self->_accessToken;
      v16 = self->_relayType;
      v17 = 136316418;
      v18 = v8;
      v19 = 2080;
      v20 = "[VCAggregatorFaceTime updateRelayInfo:]";
      v21 = 1024;
      v22 = 3740;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 1024;
      v28 = v16;
      _os_log_debug_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Relay info updated: Server %@, AccessToken %@, RelayType %d", &v17, 0x36u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateConnectionSubTimes:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__VCAggregatorFaceTime_updateConnectionSubTimes___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

void __49__VCAggregatorFaceTime_updateConnectionSubTimes___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA0C)}];
  v3 = *(a1 + 32);
  if (v2)
  {
    [objc_msgSend(v3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA0C)), "doubleValue"}];
    *(*(a1 + 40) + 1724) = v4;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A952)), "doubleValue"}];
    v6 = v5;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A933)), "doubleValue"}];
    if (v6 >= v7)
    {
      v7 = v6;
    }

    *(*(a1 + 40) + 1736) = v7;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A971)), "doubleValue"}];
    *(*(a1 + 40) + 1740) = v8;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA2B)), "doubleValue"}];
    *(*(a1 + 40) + 1728) = v9;
    if (!v9)
    {
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &kVCReporting_PerfTimersKeys)), "doubleValue"}];
      v11 = v10;
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A8B7)), "doubleValue"}];
      v13 = v11 + v12;
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A8D6)), "doubleValue"}];
      v15 = v13 + v14;
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A8F5)), "doubleValue"}];
      v17 = v15 + v16;
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A914)), "doubleValue"}];
      *(*(a1 + 40) + 1728) = (v17 + v18);
    }

    *(*(a1 + 40) + 1716) = *(*(a1 + 40) + 1728) + *(*(a1 + 40) + 1724) + *(*(a1 + 40) + 1736) + *(*(a1 + 40) + 1740);
    if (VRTraceGetErrorLogLevelForModule("") >= 6)
    {
      v19 = VRTraceErrorLogLevelToCSTR(6u);
      v20 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v21 = *(a1 + 40);
        v23 = v21[429];
        v24 = v21[431];
        v25 = v21[432];
        v26 = v21[434];
        v27 = v21[435];
        LODWORD(v21) = v21[433];
        *buf = 136317442;
        v65 = v19;
        v66 = 2080;
        v67 = "[VCAggregatorFaceTime updateConnectionSubTimes:]_block_invoke";
        v68 = 1024;
        v69 = 3761;
        v70 = 1024;
        *v71 = v23;
        *&v71[4] = 1024;
        *&v71[6] = v24;
        *v72 = 1024;
        *&v72[2] = v25;
        *&v72[6] = 1024;
        *&v72[8] = v26;
        *&v72[12] = 1024;
        *&v72[14] = v27;
        *&v72[18] = 1024;
        *&v72[20] = v21;
        *&v72[24] = 2112;
        *&v72[26] = v22;
        v28 = " [%s] %s:%d Connection timing selected: TotalConnectionTime=%d, StartConnectionTime=%d, TransportConnectionTime=%d, MediaReceivedTime=%d, _mediaReceivedToProcessedTime=%d, _totalMediaStallSaveInterval=%d, original dictionary=%@";
        v29 = v20;
        v30 = 74;
LABEL_9:
        _os_log_impl(&dword_23D4DF000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
      }
    }
  }

  else
  {
    if ([v3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A952)}])
    {
      v31 = &unk_23D59A952;
    }

    else
    {
      v31 = &unk_23D59A933;
    }

    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", v31)), "doubleValue"}];
    v33 = v32;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA88)), "doubleValue"}];
    v35 = v34;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAC6)), "doubleValue"}];
    v37 = v36;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAA7)), "doubleValue"}];
    v39 = v38;
    v40 = v35 + v38 + v33;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (v40)
    {
      if (ErrorLogLevelForModule >= 6)
      {
        v42 = VRTraceErrorLogLevelToCSTR(6u);
        v43 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v63 = [*(a1 + 32) objectForKeyedSubscript:@"VCSPIDSID"];
          v44 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A952)}];
          v45 = *(a1 + 32);
          v46 = @"Video";
          *buf = 136317698;
          v65 = v42;
          if (!v44)
          {
            v46 = @"Audio";
          }

          v66 = 2080;
          v67 = "[VCAggregatorFaceTime updateConnectionSubTimes:]_block_invoke";
          v68 = 1024;
          v69 = 3770;
          v70 = 2112;
          *v71 = v63;
          *&v71[8] = 2112;
          *v72 = v46;
          *&v72[8] = 1024;
          *&v72[10] = v40;
          *&v72[14] = 1024;
          *&v72[16] = v35;
          *&v72[20] = 1024;
          *&v72[22] = v39;
          *&v72[26] = 1024;
          *&v72[28] = v33;
          *&v72[32] = 1024;
          *v73 = v37;
          *&v73[4] = 2112;
          *&v73[6] = v45;
          _os_log_impl(&dword_23D4DF000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing for participantID=%@, media=%@: TotalConnectionTime=%d, TransportConnectionTime=%d, MediaReceivedTime=%d, _mediaReceivedToProcessedTime=%d, _totalMediaStallSaveInterval=%d, original dictionary=%@", buf, 0x58u);
        }
      }

      v47 = *(a1 + 40);
      if (v40 > *(v47 + 1716))
      {
        *(v47 + 1740) = v33;
        *(*(a1 + 40) + 1728) = v35;
        *(*(a1 + 40) + 1732) = v37;
        *(*(a1 + 40) + 1736) = v39;
        *(*(a1 + 40) + 1716) = *(*(a1 + 40) + 1728) + *(*(a1 + 40) + 1724) + *(*(a1 + 40) + 1736) + *(*(a1 + 40) + 1740);
        if (VRTraceGetErrorLogLevelForModule("") >= 6)
        {
          v48 = VRTraceErrorLogLevelToCSTR(6u);
          v49 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [*(a1 + 32) objectForKeyedSubscript:@"VCSPIDSID"];
            v52 = *(a1 + 32);
            v51 = *(a1 + 40);
            v53 = v51[429];
            v54 = v51[431];
            v55 = v51[432];
            v56 = v51[434];
            v57 = v51[435];
            LODWORD(v51) = v51[433];
            *buf = 136317698;
            v65 = v48;
            v66 = 2080;
            v67 = "[VCAggregatorFaceTime updateConnectionSubTimes:]_block_invoke";
            v68 = 1024;
            v69 = 3783;
            v70 = 2112;
            *v71 = v50;
            *&v71[8] = 1024;
            *v72 = v53;
            *&v72[4] = 1024;
            *&v72[6] = v54;
            *&v72[10] = 1024;
            *&v72[12] = v55;
            *&v72[16] = 1024;
            *&v72[18] = v56;
            *&v72[22] = 1024;
            *&v72[24] = v57;
            *&v72[28] = 1024;
            *&v72[30] = v51;
            *v73 = 2112;
            *&v73[2] = v52;
            v28 = " [%s] %s:%d Connection timing selected for participantID=%@: TotalConnectionTime=%d, StartConnectionTime=%d, TransportConnectionTime=%d, MediaReceivedTime=%d, _mediaReceivedToProcessedTime=%d, _totalMediaStallSaveInterval=%d, original dictionary=%@";
            v29 = v49;
            v30 = 84;
            goto LABEL_9;
          }
        }
      }
    }

    else if (ErrorLogLevelForModule >= 5)
    {
      v58 = VRTraceErrorLogLevelToCSTR(5u);
      v59 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [*(a1 + 32) objectForKeyedSubscript:@"VCSPIDSID"];
        v61 = *(a1 + 32);
        *buf = 136316162;
        v65 = v58;
        v66 = 2080;
        v67 = "[VCAggregatorFaceTime updateConnectionSubTimes:]_block_invoke";
        v68 = 1024;
        v69 = 3772;
        v70 = 2112;
        *v71 = v60;
        *&v71[8] = 2112;
        *v72 = v61;
        v28 = " [%s] %s:%d Connection timing: incomplete timing for participantID=%@ received=%@";
        v29 = v59;
        v30 = 48;
        goto LABEL_9;
      }
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoQualityWithPayload:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__VCAggregatorFaceTime_updateVideoQualityWithPayload___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

uint64_t __54__VCAggregatorFaceTime_updateVideoQualityWithPayload___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"Width", "intValue"}];
  v3 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"Height", "intValue"}];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v4[38];
  [v4 microFromPayload:v5];

  return [v6 setVideoResolutionWithTime:v2 width:v3 height:?];
}

- (void)updateVideoSwitchTimes:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__VCAggregatorFaceTime_updateVideoSwitchTimes___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(stateQueue, v4);
}

void __47__VCAggregatorFaceTime_updateVideoSwitchTimes___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) microFromPayload:*(a1 + 40)];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1704);
  if (v5 != 0.0)
  {
    v6 = ((v3 - v5) * 1000.0);
    [*(v4 + 2064) addValue:v6];
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315906;
          v11 = v7;
          v12 = 2080;
          v13 = "[VCAggregatorFaceTime updateVideoSwitchTimes:]_block_invoke";
          v14 = 1024;
          v15 = 3803;
          v16 = 1024;
          v17 = v6;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Video resolution switched after %d ms", &v10, 0x22u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        __47__VCAggregatorFaceTime_updateVideoSwitchTimes___block_invoke_cold_1();
      }
    }
  }

  *(*(a1 + 32) + 1704) = v3;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateSwitchConfiguration:(unsigned int)a3 payload:(id)a4
{
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__VCAggregatorFaceTime_updateSwitchConfiguration_payload___block_invoke;
  v5[3] = &unk_278BD4D48;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(stateQueue, v5);
}

void *__58__VCAggregatorFaceTime_updateSwitchConfiguration_payload___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 188) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"NegSw", "intValue"}];
  *(*(a1 + 32) + 184) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RemSw", "intValue"}];
  *(*(a1 + 32) + 192) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RemSwAvlbl", "BOOLValue"}];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 188);
        v6 = *(v4 + 184);
        if (*(v4 + 192))
        {
          v7 = "NO";
        }

        else
        {
          v7 = "YES";
        }

        v16 = 136316418;
        v17 = v2;
        v18 = 2080;
        v19 = "[VCAggregatorFaceTime updateSwitchConfiguration:payload:]_block_invoke";
        v20 = 1024;
        v21 = 3814;
        v22 = 1024;
        v23 = v5;
        v24 = 1024;
        v25 = v6;
        v26 = 2080;
        v27 = v7;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Negotiated A/B test switch settings is %08X, Remote A/B test switch settings is %08X, Remote switches available? : %s", &v16, 0x32u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 188);
      v14 = *(v12 + 184);
      if (*(v12 + 192))
      {
        v15 = "NO";
      }

      else
      {
        v15 = "YES";
      }

      v16 = 136316418;
      v17 = v2;
      v18 = 2080;
      v19 = "[VCAggregatorFaceTime updateSwitchConfiguration:payload:]_block_invoke";
      v20 = 1024;
      v21 = 3814;
      v22 = 1024;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      v26 = 2080;
      v27 = v15;
      _os_log_debug_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Negotiated A/B test switch settings is %08X, Remote A/B test switch settings is %08X, Remote switches available? : %s", &v16, 0x32u);
    }
  }

  v8 = *(a1 + 32);
  result = *(v8 + 1368);
  if (result)
  {
    [result setNegotiatedSwitches:*(v8 + 188)];
    result = [*(*(a1 + 32) + 1368) setRemoteFaceTimeSwitchesAvailable:*(*(a1 + 32) + 192)];
    v10 = *(a1 + 32);
    if (*(v10 + 192) == 1)
    {
      result = [*(v10 + 1368) setRemoteSwitches:*(v10 + 184)];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateLinkProbingStats:(unsigned int)a3 payload:(id)a4
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__VCAggregatorFaceTime_updateLinkProbingStats_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(stateQueue, block);
}

uint64_t __55__VCAggregatorFaceTime_updateLinkProbingStats_payload___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 <= 1)
  {
    if (!v2)
    {
      *(*(result + 32) + 836) = [objc_msgSend(*(result + 40) objectForKeyedSubscript:{@"lnkPrbVers", "intValue"}];
      result = [objc_msgSend(*(v1 + 40) objectForKeyedSubscript:{@"remLnkPrbVers", "intValue"}];
      *(*(v1 + 32) + 840) = result;
      return result;
    }

    if (v2 != 1)
    {
      return result;
    }

    result = [objc_msgSend(*(result + 40) objectForKeyedSubscript:{@"WRMLocAlrtUpdate", "intValue"}];
    v3 = *(v1 + 32);
    if (result == 1)
    {
      ++*(v3 + 2000);
      [*(*(v1 + 32) + 1368) setLocalAlertStateSwitchCount:{objc_msgSend(*(*(v1 + 32) + 1368), "localAlertStateSwitchCount") + 1}];
      *(*(v1 + 32) + 2024) = 1;
      result = [*(v1 + 32) microFromPayload:*(v1 + 40)];
      v5 = *(v1 + 32);
      v6 = 2008;
LABEL_17:
      *(v5 + v6) = v4;
      return result;
    }

    v10 = 2024;
LABEL_20:
    *(v3 + v10) = 0;
    return result;
  }

  if (v2 == 2)
  {
    result = [objc_msgSend(*(result + 40) objectForKeyedSubscript:{@"WRMRemAlrtUpdate", "intValue"}];
    v3 = *(v1 + 32);
    if (result == 1)
    {
      ++*(v3 + 2004);
      [*(*(v1 + 32) + 1368) setRemoteAlertStateSwitchCount:{objc_msgSend(*(*(v1 + 32) + 1368), "remoteAlertStateSwitchCount") + 1}];
      *(*(v1 + 32) + 2025) = 1;
      result = [*(v1 + 32) microFromPayload:*(v1 + 40)];
      v5 = *(v1 + 32);
      v6 = 2016;
      goto LABEL_17;
    }

    v10 = 2025;
    goto LABEL_20;
  }

  if (v2 == 3)
  {
    if ([*(result + 40) objectForKeyedSubscript:@"lnkPrbRTTMeanDelta"] && objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"lnkPrbPLRTierDelta"))
    {
      ++*(*(v1 + 32) + 844);
      [objc_msgSend(*(v1 + 40) objectForKeyedSubscript:{@"lnkPrbRTTMeanDelta", "doubleValue"}];
      *(*(v1 + 32) + 848) = v7 + *(*(v1 + 32) + 848);
      *(*(v1 + 32) + 856) += [objc_msgSend(*(v1 + 40) objectForKeyedSubscript:{@"lnkPrbPLRTierDelta", "unsignedIntValue"}];
    }

    v8 = *(v1 + 40);
    v9 = *(*(v1 + 32) + 1368);

    return [v9 changeDuplicationWithType:3 payload:v8];
  }

  return result;
}

- (void)updateWRMMetrics:(unsigned int)a3 payload:(id)a4
{
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__VCAggregatorFaceTime_updateWRMMetrics_payload___block_invoke;
  v5[3] = &unk_278BD4D48;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(stateQueue, v5);
}

uint64_t __49__VCAggregatorFaceTime_updateWRMMetrics_payload___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 168) & 1) == 0)
  {
    v1 = result;
    result = [objc_msgSend(*(result + 40) objectForKeyedSubscript:{@"WRMAlertedMode", "BOOLValue"}];
    if ((result & 1) == 0)
    {
      v2 = [objc_msgSend(*(v1 + 40) objectForKeyedSubscript:{@"WRMCoexIsLocal", "BOOLValue"}];
      v3 = *(v1 + 40);
      if (v2)
      {
        if ([v3 objectForKeyedSubscript:@"WRMLinkType"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeSuggestion:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMLinkType"}];
        }

        if ([*(v1 + 40) objectForKeyedSubscript:@"WRMReasonCode"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeChangeReasonCode:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMReasonCode"}];
        }

        if ([*(v1 + 40) objectForKeyedSubscript:@"WRMwRSSI"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeWifiRSSI:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMwRSSI"}];
        }

        if ([*(v1 + 40) objectForKeyedSubscript:@"WRMwRSSIThreshold"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeWifiRSSIThreshold:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMwRSSIThreshold"}];
        }

        if ([*(v1 + 40) objectForKeyedSubscript:@"WRMwSNR"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeWifiSNR:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMwSNR"}];
        }

        if ([*(v1 + 40) objectForKeyedSubscript:@"WRMwCCA"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeWifiCCA:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMwCCA"}];
        }

        if ([*(v1 + 40) objectForKeyedSubscript:@"WRMwPacketLoss"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeWifiPacketLoss:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMwPacketLoss"}];
        }

        if ([*(v1 + 40) objectForKeyedSubscript:@"WRMcSigStrength"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeCellSignalStrength:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMcSigStrength"}];
        }

        if ([*(v1 + 40) objectForKeyedSubscript:@"WRMcSignalBar"])
        {
          [*(*(v1 + 32) + 1368) setWrmLinkTypeCellSignalBar:{objc_msgSend(*(v1 + 40), "objectForKeyedSubscript:", @"WRMcSignalBar"}];
        }

        result = [*(v1 + 40) objectForKeyedSubscript:@"WRMcServingCellType"];
        if (result)
        {
          v4 = [*(v1 + 40) objectForKeyedSubscript:@"WRMcServingCellType"];
          v5 = *(*(v1 + 32) + 1368);

          return [v5 setWrmLinkTypeCellServingCellType:v4];
        }
      }

      else
      {
        result = [v3 objectForKeyedSubscript:@"WRMwRSSIThreshold"];
        if (result)
        {
          v6 = [*(v1 + 40) objectForKeyedSubscript:@"WRMwRSSIThreshold"];
          v7 = *(*(v1 + 32) + 1368);

          return [v7 setWrmLinkTypeWifiRemoteRSSIThreshold:v6];
        }
      }
    }
  }

  return result;
}

- (void)updateAlgoMetrics:(id)a3 type:(unsigned int)a4
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VCAggregatorFaceTime_updateAlgoMetrics_type___block_invoke;
  block[3] = &unk_278BD48B8;
  block[4] = self;
  block[5] = a3;
  v6 = a4;
  dispatch_async(stateQueue, block);
}

id __47__VCAggregatorFaceTime_updateAlgoMetrics_type___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) microFromPayload:*(a1 + 40)];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!*(v5 + 304))
  {
    [*(v5 + 280) addParticipantWithTime:@"DefaultParticipantID" participantID:v3];
    result = [*(*(a1 + 32) + 280) algosScorerWithParticipantID:@"DefaultParticipantID"];
    *(*(a1 + 32) + 304) = result;
  }

  v6 = *(a1 + 48);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = *(*(a1 + 32) + 304);
        v8 = v4;
        v9 = 2;
LABEL_14:

        return [v7 stopWithTime:v9 streamType:v8];
      case 4:
        v10 = *(*(a1 + 32) + 304);
        v11 = v4;
        v12 = 1;
        break;
      case 5:
        v10 = *(*(a1 + 32) + 304);
        v11 = v4;
        v12 = 2;
        break;
      default:
        return result;
    }

    return [v10 endWithTime:v12 streamType:v11];
  }

  else
  {
    if (v6)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          return result;
        }

        v7 = *(*(a1 + 32) + 304);
        v8 = v4;
        v9 = 1;
        goto LABEL_14;
      }

      v13 = *(*(a1 + 32) + 304);
      v14 = v4;
      v15 = 2;
    }

    else
    {
      v13 = *(*(a1 + 32) + 304);
      v14 = v4;
      v15 = 1;
    }

    return [v13 startWithTime:v15 streamType:v14];
  }
}

- (void)updateNetworkStats:(unsigned int)a3 payload:(id)a4
{
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__VCAggregatorFaceTime_updateNetworkStats_payload___block_invoke;
  v5[3] = &unk_278BD4D48;
  v5[4] = a4;
  v5[5] = self;
  dispatch_async(stateQueue, v5);
}

id __51__VCAggregatorFaceTime_updateNetworkStats_payload___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKeyedSubscript:@"LocalInterfaceType"];
  if (result)
  {
    result = [*(a1 + 32) objectForKeyedSubscript:@"LocalInterfaceType"];
    if (result)
    {
      result = [*(a1 + 32) objectForKeyedSubscript:@"LocalInterfaceType"];
      if (result)
      {

        result = +[CallSegment newSegmentNameWithComponents:remoteInterface:connectionType:duplicationIndicator:](CallSegment, "newSegmentNameWithComponents:remoteInterface:connectionType:duplicationIndicator:", +[VCAggregator interfaceCategoryForType:](VCAggregator, "interfaceCategoryForType:", [*(a1 + 32) objectForKeyedSubscript:@"LocalInterfaceType"]), +[VCAggregator interfaceCategoryForType:](VCAggregator, "interfaceCategoryForType:", objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"RemoteInterfaceType")), +[VCAggregator connectionCategoryForType:](VCAggregator, "connectionCategoryForType:", objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"ConnectionType")), objc_msgSend(*(a1 + 40), "duplicationIndicator"));
        *(*(a1 + 40) + 1328) = result;
      }
    }
  }

  return result;
}

- (void)updateCoreMotionActivityWithPayload:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__VCAggregatorFaceTime_updateCoreMotionActivityWithPayload___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

uint64_t __60__VCAggregatorFaceTime_updateCoreMotionActivityWithPayload___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKeyedSubscript:@"CMActivityValue"];
  if (result)
  {
    result = [*(a1 + 32) objectForKeyedSubscript:@"CMActivityConfidence"];
    if (result)
    {
      *(*(a1 + 40) + 2026) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"CMActivityValue", "intValue"}];
      *(*(a1 + 40) + 2027) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"CMActivityConfidence", "intValue"}];
      v3 = *(a1 + 40);
      if (*(v3 + 168) == 1)
      {
        result = [*(v3 + 1368) duration];
        if (result > 0)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }

      [*(v3 + 1368) setCoreMotionActivityValue:*(v3 + 2026)];
      v4 = *(a1 + 40);
      v5 = *(v4 + 2027);
      v6 = *(v4 + 1368);

      return [v6 setCoreMotionActivityConfidence:v5];
    }
  }

  return result;
}

- (void)updateVCRCProfileNumber:(unsigned int)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__VCAggregatorFaceTime_updateVCRCProfileNumber___block_invoke;
  v4[3] = &unk_278BD4D98;
  v4[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, v4);
}

- (void)updatePrimaryConnHealthAllowedDelay:(double)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__VCAggregatorFaceTime_updatePrimaryConnHealthAllowedDelay___block_invoke;
  v4[3] = &unk_278BD4DC0;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(stateQueue, v4);
}

- (BOOL)isDuplicationChangedForEventType:(unsigned __int16)a3
{
  isDuplicationEnabled = self->super._isDuplicationEnabled;
  if (isDuplicationEnabled == a3)
  {
    self->super._isDuplicationEnabled = isDuplicationEnabled ^ 1;
    if ((isDuplicationEnabled & 1) == 0)
    {
      ++self->super._switchIntoDupCount;
    }
  }

  return isDuplicationEnabled == a3;
}

- (void)updateCellTech:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"IPVER"])
  {
    -[CallSegment setIPVersion:](self->_currentSegment, "setIPVersion:", [a3 objectForKeyedSubscript:@"IPVER"]);
  }

  if ([a3 objectForKeyedSubscript:@"LCTCH"])
  {
    v5 = [a3 objectForKeyedSubscript:@"LCTCH"];
    if ([(CallSegment *)self->_currentSegment localCelltech])
    {
      [(CallSegment *)self->_currentSegment setIsLocalCelltechDirty:[(CallSegment *)self->_currentSegment isLocalCelltechDirty]| [(NSNumber *)[(CallSegment *)self->_currentSegment localCelltech] isEqualToNumber:v5]^ 1];
    }

    [(CallSegment *)self->_currentSegment setLocalCelltech:v5];
  }

  if ([a3 objectForKeyedSubscript:@"LXPNSV"])
  {
    -[CallSegment setIsLocalExpensive:](self->_currentSegment, "setIsLocalExpensive:", [a3 objectForKeyedSubscript:@"LXPNSV"]);
  }

  if ([a3 objectForKeyedSubscript:@"RCTCH"])
  {
    -[CallSegment setRemoteCelltech:](self->_currentSegment, "setRemoteCelltech:", [a3 objectForKeyedSubscript:@"RCTCH"]);
  }

  if ([a3 objectForKeyedSubscript:@"RXPNSV"])
  {
    v6 = [a3 objectForKeyedSubscript:@"RXPNSV"];
    currentSegment = self->_currentSegment;

    [(CallSegment *)currentSegment setIsRemoteExpensive:v6];
  }
}

- (void)updateCurrentMediaBitratesWithPayload:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"BitRate"])
  {
    self->_currentAudioMediaBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"BitRate", "intValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"REDPayloadBitrate"])
  {
    self->_currentREDPayloadBitrate = [objc_msgSend(a3 objectForKeyedSubscript:{@"REDPayloadBitrate", "unsignedLongValue"}];
  }
}

- (void)updateBitrateCap:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"localBitrateCap"] && objc_msgSend(a3, "objectForKeyedSubscript:", @"remoteBitrateCap"))
  {
    stateQueue = self->super._stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__VCAggregatorFaceTime_updateBitrateCap___block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = a3;
    block[5] = self;
    dispatch_async(stateQueue, block);
  }

  if ([a3 objectForKeyedSubscript:@"maxTargetBitrate"])
  {
    v6 = self->super._stateQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__VCAggregatorFaceTime_updateBitrateCap___block_invoke_2;
    v7[3] = &unk_278BD4D48;
    v7[4] = self;
    v7[5] = a3;
    dispatch_async(v6, v7);
  }
}

uint64_t __41__VCAggregatorFaceTime_updateBitrateCap___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"localBitrateCap", "intValue"}];
  v3 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"remoteBitrateCap", "intValue"}];
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v4];
  [*(*(a1 + 40) + 1368) setMaxNegotiatedDownlinkBitrate:v5];
  v6 = *(*(a1 + 40) + 1368);

  return [v6 setMaxNegotiatedUplinkBitrate:v5];
}

uint64_t __41__VCAggregatorFaceTime_updateBitrateCap___block_invoke_2(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"maxTargetBitrate", "intValue"}];
  v3 = *(*(a1 + 32) + 304);

  return [v3 setMaxTargetBitrate:v2];
}

- (void)updateVPCStatus:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"VPCENABLED"])
  {
    self->super._isVPCEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"VPCENABLED", "intValue"}];
  }
}

- (void)updateLinkSuggestionTelemetry:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"LnkSug"] && objc_msgSend(a3, "objectForKeyedSubscript:", @"LnkScr") && objc_msgSend(a3, "objectForKeyedSubscript:", @"LnkDec"))
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"LnkSug", "intValue"}];
    [(CallSegment *)self->_currentSegment setLinkPreferSuggestion:v5];
    self->super._linkPreferSuggestion = v5;
    v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"LnkScr", "intValue"}];
    [(CallSegment *)self->_currentSegment setLinkConfidenceScore:v6];
    self->super._linkConfidenceScore = v6;
    v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"LnkDec", "intValue"}];
    [(CallSegment *)self->_currentSegment setLinkPreferDecision:v7];
    self->super._linkPreferDecision = v7;
  }

  if ([a3 objectForKeyedSubscript:@"LnkIp"])
  {
    v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"LnkIp", "intValue"}];
    [(CallSegment *)self->_currentSegment setLinkIPPreference:v8];
    self->super._linkIPPreference = v8;
  }
}

- (void)processBackgroundReplacementStatus:(id)a3
{
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMBGRA" durationHistogram:self->super._backgroundReplacementDuration payload:a3];
  v5 = [(CallSegment *)self->_currentSegment backgroundReplacementDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMBGRA" durationHistogram:v5 payload:a3];
}

- (void)processStudioLightFeatureStatus:(id)a3
{
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMSLA" durationHistogram:self->super._studioLightDuration payload:a3];
  v5 = [(CallSegment *)self->_currentSegment studioLightDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMSLA" durationHistogram:v5 payload:a3];
}

- (void)processCenterStageFeatureStatus:(id)a3
{
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMCSA" durationHistogram:self->super._centerStageDuration payload:a3];
  v5 = [(CallSegment *)self->_currentSegment centerStageDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMCSA" durationHistogram:v5 payload:a3];
}

- (void)processPortraitModeFeatureStatus:(id)a3
{
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMPMA" durationHistogram:self->super._portraitModeDuration payload:a3];
  v5 = [(CallSegment *)self->_currentSegment portraitModeDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMPMA" durationHistogram:v5 payload:a3];
}

- (void)processReactionFeatureStatus:(id)a3
{
  [(VCAggregator *)self processVideoFeatureStatus:@"REACDUR" durationHistogram:self->super._reactionActiveDuration payload:a3];
  v5 = [(CallSegment *)self->_currentSegment reactionActiveDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"REACDUR" durationHistogram:v5 payload:a3];
}

- (void)processEyeContactFeatureStatus:(id)a3
{
  [(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" durationHistogram:self->super._eyeContactDuration payload:a3];
  v5 = [(CallSegment *)self->_currentSegment eyeContactDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" durationHistogram:v5 payload:a3];
}

- (void)updateCenterStageEnabled:(unsigned __int16)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__VCAggregatorFaceTime_updateCenterStageEnabled___block_invoke;
  v4[3] = &unk_278BD4DE8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, v4);
}

uint64_t __49__VCAggregatorFaceTime_updateCenterStageEnabled___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 2144) = *(a1 + 40) != 0;
  [*(*(a1 + 32) + 1368) setIsCenterStageEnabled:?];
  v2 = *(a1 + 32);
  v5 = @"CAMCSA";
  v6[0] = [MEMORY[0x277CCABA8] numberWithBool:v2[2144]];
  result = [v2 updateVideoFeatureStatus:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updatePortraitBlurEnabled:(unsigned __int16)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__VCAggregatorFaceTime_updatePortraitBlurEnabled___block_invoke;
  v4[3] = &unk_278BD4DE8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, v4);
}

uint64_t __50__VCAggregatorFaceTime_updatePortraitBlurEnabled___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 2145) = *(a1 + 40) != 0;
  [*(*(a1 + 32) + 1368) setIsPortraitBlurEnabled:?];
  v2 = *(a1 + 32);
  v5 = @"CAMPMA";
  v6[0] = [MEMORY[0x277CCABA8] numberWithBool:v2[2145]];
  result = [v2 updateVideoFeatureStatus:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)markHandshakeStart:(id)a3
{
  v5 = *MEMORY[0x277D85DE8];
  handshakeStartTime = self->_handshakeStartTime;
  v4 = *MEMORY[0x277D85DE8];
}

- (double)markHandshakeCompletion:(id)a3
{
  v5 = *MEMORY[0x277D85DE8];
  result = self->_handshakeDuration;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)processControlChannelEventType:(unsigned __int16)a3 payload:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = *MEMORY[0x277D85DE8];

    [(VCAggregatorFaceTime *)self markHandshakeCompletion:a4];
  }

  else
  {
    v4 = a3;
    if (a3)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 5)
      {
        v7 = VRTraceErrorLogLevelToCSTR(5u);
        v8 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315906;
          v11 = v7;
          v12 = 2080;
          v13 = "[VCAggregatorFaceTime processControlChannelEventType:payload:]";
          v14 = 1024;
          v15 = 4193;
          v16 = 1024;
          v17 = v4;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown control channel event type=%d. Ignoring ...", &v10, 0x22u);
        }
      }

      v9 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v5 = *MEMORY[0x277D85DE8];

      [(VCAggregatorFaceTime *)self markHandshakeStart:a4];
    }
  }
}

- (void)processConnectionEstablishment:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__VCAggregatorFaceTime_processConnectionEstablishment___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(stateQueue, v4);
}

uint64_t __55__VCAggregatorFaceTime_processConnectionEstablishment___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) didUpdateStringFrom:*(a1 + 32) + 160 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"ConnectionType"}];
  v3 = v2 | [*(a1 + 32) didUpdateStringFrom:*(a1 + 32) + 144 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"LocalInterfaceType"}];
  v4 = v3 | [*(a1 + 32) didUpdateStringFrom:*(a1 + 32) + 152 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"RemoteInterfaceType"}];
  if ([*(a1 + 40) objectForKeyedSubscript:@"EndToEnd"])
  {
    v5 = v4 | [*(a1 + 32) didUpdateStringFrom:*(a1 + 32) + 1344 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"EndToEnd"}];
    result = [*(a1 + 32) updateVPCStatus:*(a1 + 40)];
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = [*(a1 + 32) updateVPCStatus:*(a1 + 40)];
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR(8u);
    v8 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCAggregatorFaceTime processConnectionEstablishment:]_block_invoke";
        v14 = 1024;
        v15 = 4211;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: New segment started", &v10, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __55__VCAggregatorFaceTime_processConnectionEstablishment___block_invoke_cold_1(v7);
    }
  }

  [*(a1 + 32) updateRelayInfo:*(a1 + 40)];
  [*(a1 + 32) startNewSegment:*(a1 + 40)];
  [*(*(a1 + 32) + 1368) setSuggestedLinkTypeCombo:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"SLTS"}];
  [*(a1 + 32) updateCellTech:*(a1 + 40)];
  [*(*(a1 + 32) + 1368) setPrimaryConnHealthAllowedDelay:*(*(a1 + 32) + 1984)];
  if ([*(a1 + 40) objectForKeyedSubscript:@"QuicPod"])
  {
    [*(*(a1 + 32) + 1368) setIsQUICPod:{objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"QuicPod", "integerValue") != 0}];
  }

  result = [*(a1 + 40) objectForKeyedSubscript:@"ConnProtocolType"];
  if (result)
  {
    result = [*(*(a1 + 32) + 1368) setConnectionProtocolType:{objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"ConnProtocolType", "unsignedIntValue")}];
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)processEventTriggerForNewSegment:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"RelayedCT"])
  {
    stateQueue = self->super._stateQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__VCAggregatorFaceTime_processEventTriggerForNewSegment___block_invoke;
    v6[3] = &unk_278BD4D48;
    v6[4] = self;
    v6[5] = a3;
    dispatch_sync(stateQueue, v6);
  }
}

uint64_t __57__VCAggregatorFaceTime_processEventTriggerForNewSegment___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[283])
  {
    v2[283] = @"nil";
    v2 = *(a1 + 32);
  }

  v3 = [v2 didUpdateStringFrom:v2 + 283 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"RelayedCT"}];
  result = [*(*(a1 + 32) + 1368) updateRelayedCallTypeForSegment:*(*(a1 + 32) + 2264)];
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 startNewSegment:v6];
  }

  return result;
}

- (void)processDuplication:(id)a3 type:(unsigned __int16)a4
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__VCAggregatorFaceTime_processDuplication_type___block_invoke;
  block[3] = &unk_278BD4E10;
  v6 = a4;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(stateQueue, block);
}

uint64_t __48__VCAggregatorFaceTime_processDuplication_type___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  if ([*(a1 + 32) isDuplicationChangedForEventType:*(a1 + 48)])
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR(8u);
      v4 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          if (*(*v2 + 168))
          {
            v5 = "started";
          }

          else
          {
            v5 = "stopped";
          }

          v17 = 136315906;
          v18 = v3;
          v19 = 2080;
          v20 = "[VCAggregatorFaceTime processDuplication:type:]_block_invoke";
          v21 = 1024;
          v22 = 4246;
          v23 = 2080;
          v24 = v5;
          _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Duplication changed to %s", &v17, 0x26u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        __48__VCAggregatorFaceTime_processDuplication_type___block_invoke_cold_1(v3, v2);
      }
    }

    *(*(a1 + 32) + 1860) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"DuplicationType", "intValue"}];
    v6 = *(a1 + 32);
    if (*(v6 + 168) == 1)
    {
      v7 = *(v6 + 2072);
      if (*(v6 + 1860) == 3)
      {
        ++v7;
      }

      *(v6 + 2072) = v7;
      v8 = *(a1 + 32);
      if (*(v8 + 1860) == 4)
      {
        v9 = *(v8 + 2080) + 1;
      }

      else
      {
        v9 = *(v8 + 2080);
      }

      *(v8 + 2080) = v9;
      [*(a1 + 32) microFromPayload:*(a1 + 40)];
      *(*(a1 + 32) + 1920) = v10;
    }

    else
    {
      [v6 microFromPayload:*(a1 + 40)];
      v11 = *(a1 + 32);
      v12 = *(v11 + 1920);
      v14 = v13 - v12;
      LODWORD(v12) = *(v11 + 1880);
      *(v11 + 1880) = (v14 + *&v12);
    }

    [*(a1 + 32) startNewSegment:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 1368) changeDuplicationWithType:*(a1 + 48) payload:*(a1 + 40)];
  result = [*(*(a1 + 32) + 1368) setPrimaryConnHealthAllowedDelay:*(*(a1 + 32) + 1984)];
  if (!*(a1 + 48))
  {
    [*(a1 + 32) updateCellTech:*(a1 + 40)];
    [*(a1 + 32) updateQRExperiments:*(a1 + 40)];
    result = [*(a1 + 32) updateProtocolStackDescription:*(a1 + 40)];
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateQRExperiments:(id)a3
{
  if ([a3 count])
  {
    if (self->_currentSegment)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(VCAggregator *)self filterDictionaryUsingQRServerPrefix:a3 addTo:v5];
      [(CallSegment *)self->_currentSegment setQrExperiments:v5];
      [(VCAggregator *)self setQrExperiments:v5];
    }

    else
    {
      [VCAggregatorFaceTime updateQRExperiments:];
    }
  }

  else
  {
    [VCAggregatorFaceTime updateQRExperiments:?];
  }
}

- (void)processRtcpPSFBForResiliencyConfigData:(id)a3
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__VCAggregatorFaceTime_processRtcpPSFBForResiliencyConfigData___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

uint64_t __63__VCAggregatorFaceTime_processRtcpPSFBForResiliencyConfigData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"RtcpForLoss"];
  if (v2)
  {
    *(*(a1 + 40) + 472) = [v2 integerValue] != 0;
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"RtcpForLtrAck"];
  if (v3)
  {
    *(*(a1 + 40) + 473) = [v3 integerValue] != 0;
  }

  [*(*(a1 + 40) + 1368) setRtcpPSFBForLossFeedbackEnabled:*(*(a1 + 40) + 472)];
  v4 = *(a1 + 40);
  v5 = *(v4 + 473);
  v6 = *(v4 + 1368);

  return [v6 setRtcpPSFBForLtrAckEnabled:v5];
}

- (void)updateThermalMetricsFromPayload:(id)a3
{
  dispatch_assert_queue_V2(self->super._stateQueue);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __56__VCAggregatorFaceTime_updateThermalMetricsFromPayload___block_invoke;
  v9 = &unk_278BD4E38;
  v10 = self;
  v5 = [a3 objectForKeyedSubscript:@"Thermal"];
  if (v5)
  {
    v8(v7, v5);
  }

  v6.receiver = self;
  v6.super_class = VCAggregatorFaceTime;
  [(VCAggregator *)&v6 updateThermalMetricsFromPayload:a3];
}

uint64_t __56__VCAggregatorFaceTime_updateThermalMetricsFromPayload___block_invoke(uint64_t a1, void *a2)
{
  result = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCReportingCommon, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  *(*(a1 + 32) + 104) = result;
  return result;
}

- (void)updateRateControlExperiment:(id)a3 type:(unsigned __int16)a4
{
  v4 = a4;
  if ([a3 objectForKeyedSubscript:@"RCEV"])
  {
    v7 = [a3 objectForKeyedSubscript:@"RCEG"];
    if (!v4)
    {
      if (v7)
      {
        self->super._reportRateControlExperiment = 1;
        self->super._rateControlExperimentVersion = [objc_msgSend(a3 objectForKeyedSubscript:{@"RCEV", "unsignedIntValue"}];
        self->super._rateControlExperimentGroupIndex = [objc_msgSend(a3 objectForKeyedSubscript:{@"RCEG", "unsignedIntValue"}];
      }
    }
  }
}

- (void)updateRateControlSmartBrakeTrialVersion:(id)a3 type:(unsigned __int16)a4
{
  if (a3)
  {
    v4 = a4;
    v7 = [a3 objectForKeyedSubscript:@"SBVERS"];
    if (!v4)
    {
      if (v7)
      {
        self->super._rateControlSmartBrakeTrialVersion = [objc_msgSend(a3 objectForKeyedSubscript:{@"SBVERS", "unsignedIntValue"}];
        v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SBVERS", "unsignedIntValue"}];
        currentSegment = self->_currentSegment;

        [(CallSegment *)currentSegment setRateControlSmartBrakeTrialVersion:v8];
      }
    }
  }
}

- (void)updateProtocolStackDescription:(id)a3
{
  if (a3)
  {
    if ([a3 objectForKeyedSubscript:@"Rpsd"])
    {
      -[CallSegment setRelayProtocolStack:](self->_currentSegment, "setRelayProtocolStack:", [a3 objectForKeyedSubscript:@"Rpsd"]);
    }

    if ([a3 objectForKeyedSubscript:@"Cpsd"])
    {
      v5 = [a3 objectForKeyedSubscript:@"Cpsd"];
      currentSegment = self->_currentSegment;

      [(CallSegment *)currentSegment setChannelProtocolStack:v5];
    }
  }

  else
  {
    [VCAggregatorFaceTime updateProtocolStackDescription:];
  }
}

- (void)updateThermalDataCollectorsStateWithPayload:(id)a3 withTime:(double)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  thermalDataCollectors = self->_thermalDataCollectors;
  v8 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v22 + 1) + 8 * i) updateStateWithPayload:a3 withTime:a4];
      }

      v9 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(CallSegment *)self->_currentSegment thermalDataCollectors];
  v13 = [(NSSet *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * j) updateStateWithPayload:a3 withTime:a4];
      }

      v14 = [(NSSet *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)processThermalLevelChange:(id)a3 withTime:(double)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __59__VCAggregatorFaceTime_processThermalLevelChange_withTime___block_invoke;
  v7 = &unk_278BD4E60;
  v10 = a4;
  v8 = self;
  v9 = a3;
  v4 = [a3 objectForKeyedSubscript:@"Thermal"];
  if (v4)
  {
    v6(v5, v4);
  }
}

uint64_t __59__VCAggregatorFaceTime_processThermalLevelChange_withTime___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCReportingCommon, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(*(a1 + 32) + 2272);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v20 + 1) + 8 * i) updateThermalLevel:v3 withTime:*(a1 + 48)];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [*(*(a1 + 32) + 1368) thermalDataCollectors];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * j) updateThermalLevel:v3 withTime:*(a1 + 48)];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  result = [*(a1 + 32) updateVideoFeatureStatus:*(a1 + 40)];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateSpatialAudioSupport:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v5 = __50__VCAggregatorFaceTime_updateSpatialAudioSupport___block_invoke;
  v6 = &unk_278BD4E38;
  v7 = self;
  v3 = [a3 objectForKeyedSubscript:@"SpatialAudioSupported"];
  if (v3)
  {
    v5(v4, v3);
  }
}

uint64_t __50__VCAggregatorFaceTime_updateSpatialAudioSupport___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!*(v5 + 835))
  {
    *(v5 + 835) = v3;
    v5 = *(a1 + 32);
  }

  result = [*(v5 + 1368) spatialAudioSupported];
  if (!result)
  {
    v7 = *(*(a1 + 32) + 1368);

    return [v7 setSpatialAudioSupported:v4];
  }

  return result;
}

void *__62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKeyedSubscript:@"VCSPUUID"];
  if (result)
  {
    result = *(a1 + 40);
    if (!result[38])
    {
      v3 = result[35];
      [result microFromPayload:*(a1 + 32)];
      [v3 addParticipantWithTime:@"DefaultParticipantID" participantID:?];
      result = [*(*(a1 + 40) + 280) algosScorerWithParticipantID:@"DefaultParticipantID"];
      *(*(a1 + 40) + 304) = result;
    }
  }

  return result;
}

uint64_t __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) dispatchedUpdateRoleModeTransport:*(a1 + 56) deviceRole:objc_msgSend(objc_msgSend(*(a1 + 40) transportType:"objectForKeyedSubscript:" isInitiator:@"DeviceRole" isWalkieTalkieMode:{"intValue"), objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"TransportType", "intValue"), objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"INTTR", "BOOLValue"), objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"IsWalkieTalkieMode", "BOOLValue")}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 updateThermalDataCollectorsStateWithPayload:v3 withTime:v4];
}

uint64_t __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) updateRateControlExperiment:*(a1 + 40) type:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 updateRateControlSmartBrakeTrialVersion:v3 type:v4];
}

- (void)processWindowMode:(id)a3 responseCode:(int)a4
{
  [(VCAggregator *)self microFromPayload:?];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __55__VCAggregatorFaceTime_processWindowMode_responseCode___block_invoke;
  v11 = &unk_278BD4EB0;
  v14 = a4;
  v12 = self;
  v13 = v7;
  v8 = [a3 objectForKeyedSubscript:@"State"];
  if (v8)
  {
    v10(v9, v8);
  }
}

uint64_t __55__VCAggregatorFaceTime_processWindowMode_responseCode___block_invoke(uint64_t result, void *a2)
{
  if (!*(result + 48))
  {
    v2 = result;
    v3 = [a2 isEqualToString:@"ForegroundPIP"];
    v4 = [*(*(v2 + 32) + 1368) pipThermalDurations];
    if (v3)
    {
      [v4 resumeAtBucket:*(*(v2 + 32) + 104) currentTime:*(v2 + 40)];
      v5 = *(v2 + 32);
      v6 = *(v5 + 1992);
      v7 = *(v5 + 104);
      v8 = *(v2 + 40);

      return [v6 resumeAtBucket:v7 currentTime:v8];
    }

    else
    {
      [v4 pause:*(v2 + 40)];
      v9 = *(*(v2 + 32) + 1992);
      v10 = *(v2 + 40);

      return [v9 pause:v10];
    }
  }

  return result;
}

- (void)updateAudioTxStatsWithPayload:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = micro();
  lastAudioTierStatsUpdate = self->_lastAudioTierStatsUpdate;
  if (lastAudioTierStatsUpdate != 0.0)
  {
    LODWORD(v3) = vcvtad_u64_f64(v6 - lastAudioTierStatsUpdate);
    if (self->_currentAudioCodecPayload)
    {
      [objc_msgSend(OUTLINED_FUNCTION_12_0() "audioCodecPayload")];
      if (![(VCHistogram *)self->super._audioCodecPayload addOnlyExactMatchingValue:self->_currentAudioCodecPayload increment:v3]&& VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          currentAudioCodecPayload = self->_currentAudioCodecPayload;
          LODWORD(v18) = 136315906;
          *(&v18 + 4) = v8;
          WORD6(v18) = 2080;
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_6_3();
          OUTLINED_FUNCTION_10_0();
          _os_log_error_impl(v13, v14, v15, v16, v17, 0x22u);
        }
      }
    }

    [(VCAggregatorFaceTime *)self updateMediaBitrateHistogramsWithTimeElapsed:v3, v18];
    v9 = [a3 objectForKeyedSubscript:@"Bundle"];
    if (v9)
    {
      v10 = [v9 unsignedLongValue];
      [objc_msgSend(OUTLINED_FUNCTION_12_0() "audioFrameBundling")];
      [(VCHistogram *)self->super._audioFrameBundling addValue:v10];
    }
  }

  if ([a3 objectForKeyedSubscript:@"Payload"])
  {
    self->_currentAudioCodecPayload = [objc_msgSend(a3 objectForKeyedSubscript:{@"Payload", "intValue"}];
  }

  [(VCAggregatorFaceTime *)self updateCurrentMediaBitratesWithPayload:a3];
  if ([a3 objectForKeyedSubscript:@"RedPayloads"])
  {
    [objc_msgSend(OUTLINED_FUNCTION_12_0() "REDNumPayloadsUsed")];
  }

  if ([a3 objectForKeyedSubscript:@"RedMaxDelay"])
  {
    [objc_msgSend(OUTLINED_FUNCTION_12_0() "REDMaxDelay")];
  }

  self->_lastAudioTierStatsUpdate = v6;
  v11 = *MEMORY[0x277D85DE8];
}

+ (void)newThermalDataCollectors
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_10_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }

  *a3 = 0;
  OUTLINED_FUNCTION_8_2();
  v4 = *MEMORY[0x277D85DE8];
}

- (void)flushCurrentSegment:(uint64_t)a1 .cold.1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*a2 UTF8String];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_7_2(&dword_23D4DF000, v2, v3, " [%s] %s:%d VCAggregator: Segment %s flushed", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reset:(uint64_t)a1 .cold.1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*a2 UTF8String];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_7_2(&dword_23D4DF000, v2, v3, " [%s] %s:%d VCAggregator: New key generated %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)populateSegmentBytes:(uint64_t)a1 toPayload:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      v3 = *(a1 + 1368);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __38__VCAggregatorFaceTime_updateRTStats___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(*a2 + 1320) UTF8String];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_7_2(&dword_23D4DF000, v2, v3, " [%s] %s:%d VCAggregator: Ignoring first event(s) for segment %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __47__VCAggregatorFaceTime_updateVideoSwitchTimes___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaBitrateHistogramsWithTimeElapsed:(uint64_t)a1 .cold.1(uint64_t a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_0(&dword_23D4DF000, v3, v4, " [%s] %s:%d Bin not found for _currentAudioMediaBitrate=%u", v6, v7, v8, v9);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaBitrateHistogramsWithTimeElapsed:(uint64_t)a1 .cold.2(uint64_t a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_0(&dword_23D4DF000, v3, v4, " [%s] %s:%d Bin not found for currentREDPayloadBitrate=%u", v6, v7, v8, v9);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__VCAggregatorFaceTime_processConnectionEstablishment___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 4211;
  _os_log_debug_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: New segment started", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

void __48__VCAggregatorFaceTime_processDuplication_type___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*a2 + 168);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateQRExperiments:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateQRExperiments:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR(3u);
    v3 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCAggregatorFaceTime updateQRExperiments:]";
      v9 = 1024;
      v10 = 4275;
      v11 = 2112;
      v12 = a1;
      _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Empty QRExperiments dictionary for segment=%@", &v5, 0x26u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)updateProtocolStackDescription:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end