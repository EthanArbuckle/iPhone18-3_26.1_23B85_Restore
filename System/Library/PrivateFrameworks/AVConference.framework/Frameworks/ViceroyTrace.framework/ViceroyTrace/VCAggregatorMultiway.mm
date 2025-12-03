@interface VCAggregatorMultiway
- (BOOL)addHomogeneousBuildStat;
- (BOOL)checkSliceStatus:(id)status hasValuesOnlyForStatus:(int)forStatus;
- (BOOL)currentUISize;
- (BOOL)isAllowlistedEvent:(unsigned __int16)event;
- (BOOL)isDuplicationChangedWithType:(unsigned __int16)type;
- (BOOL)isParticipantLive:(id)live;
- (BOOL)shouldConnectionEstablishmentStartNewSegment:(id)segment;
- (VCAggregatorMultiway)initWithDelegate:(id)delegate creationOptions:(id *)options;
- (double)audioErasureTotalTime:(id)time;
- (double)audioErasureTotalTimeAlt:(id)alt;
- (double)averageJitterBufferDelay:(id)delay;
- (double)avgJBTargetSizeChanges:(id)changes;
- (double)getSessionCameraCompositionDurationMsec;
- (double)getSessionScreenControlDurationMsec;
- (double)significantVideoStallTotalTime:(id)time;
- (double)timeWeightedNumberOfParticipantsWebOnly:(BOOL)only;
- (id)aggregatedCallReports;
- (id)aggregatedDownlinkSegmentReport:(id)report;
- (id)aggregatedSegmentReport:(int)report withPayload:(id)payload;
- (id)aggregatedSessionReport;
- (id)boundedTalgos;
- (id)downlinkParticipantStatsForParticipant:(id)participant withTime:(double)time;
- (id)interfaceTypeIndicator;
- (id)newDownlinkSegmentKey;
- (id)newUplinkSegmentKey;
- (int)boundedAlgoScoreTimePeriodTicks;
- (unsigned)audioErasureCount:(id)count;
- (unsigned)currentDegragedParticipantCount;
- (unsigned)getActiveStreamGroups:(id)groups direction:(int)direction;
- (unsigned)maxAudioErasureCount:(id)count;
- (unsigned)maxJBTargetSizeChanges:(id)changes;
- (unsigned)maxVideoStallCount:(id)count;
- (unsigned)minVideoFrameRate:(id)rate;
- (unsigned)significantVideoStallCount:(id)count;
- (void)_VCAggregatorMultiway_FinalizeNoRemotePacketsTimeIntervalWithPayload:(id)payload;
- (void)_releaseProtocolDescription;
- (void)addAdaptiveLearningTelemetry:(id)telemetry;
- (void)addAverageSendBitRateStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d;
- (void)addBoundedAlgoScoreWithTime:(double)time;
- (void)addBoundedTalgosToReport:(id)report;
- (void)addCellByteCountStats:(id)stats;
- (void)addConfigUpdatedStatsToSessionReport:(id)report;
- (void)addDownlinkParticipantStats:(id)stats currentTime:(double)time;
- (void)addHomogeneousBuildStat;
- (void)addLocalParticipnt:(double)participnt;
- (void)addNetworkCapabilityInfoToReport:(id)report;
- (void)addPerStreamGroupIDStats:(id)stats;
- (void)addSessionOperatingModeForCallReport:(id)report;
- (void)addStreamGroupTelemetryForCall:(id)call callReport:(id)report;
- (void)addUplinkStreamGroupTelemetry:(id)telemetry;
- (void)addUplinkVideoStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d;
- (void)applyKnownMetricsToNewSegment:(id)segment;
- (void)applyKnownThermalMetricsToNewSegment:(id)segment;
- (void)applyKnownWRMMetricsToNewUplinkSegment:(id)segment;
- (void)audioEnabled:(id)enabled;
- (void)boundedTalgos;
- (void)calculateAverageReceivingBitrateForStreamGroup:(id)group audioStreamsCount:(unsigned int *)count avgAudioRecvBitrate:(unsigned int *)bitrate vedioStreamsCount:(unsigned int *)streamsCount avgVideoRecvBitrate:(unsigned int *)recvBitrate;
- (void)calculateStreamTelemetry:(id)telemetry totalReceiveRate:(unsigned int *)rate audioPacketsSent:(unsigned int *)sent;
- (void)calculateUplinkAudioTimestampJumps:(id)jumps;
- (void)calculateUplinkRelatedTelemetry:(id)telemetry;
- (void)checkForNewSegmentBasedOnActiveStreamGroups:(id)groups;
- (void)dealloc;
- (void)expanseEnabled:(id)enabled withType:(unsigned __int16)type;
- (void)finalizeCall:(id)call;
- (void)finalizeSession;
- (void)flushCurrentDownlinkSegment:(id)segment;
- (void)flushCurrentSegment;
- (void)flushCurrentUplinkSegment:(id)segment;
- (void)populateSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes toPayload:(id)payload;
- (void)processActiveTemporalTiers:(id)tiers;
- (void)processActualBitrateChange:(id)change;
- (void)processAudioStreamSwitch:(id)switch;
- (void)processBackgroundReplacementFeatureStatus:(id)status;
- (void)processCameraCompositionEnabled:(id)enabled withType:(unsigned __int16)type withTimestamp:(double)timestamp;
- (void)processCameraResolution:(id)resolution;
- (void)processCenterStageFeatureStatus:(id)status;
- (void)processControlChannelEventType:(unsigned __int16)type payload:(id)payload;
- (void)processDecryptionTimeoutEvent:(id)event;
- (void)processDeviceOrientation:(id)orientation;
- (void)processDownlinkOptedInRateChange:(id)change;
- (void)processDownlinkStreamData:(id)data streamGroupID:(id)d;
- (void)processEyeContactFeatureStatus:(id)status;
- (void)processFecConfigData:(id)data;
- (void)processHDCaptureBenefitDistribution:(id)distribution;
- (void)processHDCaptureEnabledWithPayload:(id)payload withType:(unsigned __int16)type withTimestamp:(double)timestamp;
- (void)processInternalErrorDetected:(unsigned __int16)detected payload:(id)payload;
- (void)processKeyFrameReceived:(id)received;
- (void)processKeyFrameRequestSent:(id)sent;
- (void)processMKMRecoveryRequestEventForParticipant:(id)participant;
- (void)processMLEnhanceFeatureStats:(id)stats;
- (void)processMediaQueueEgressIngressTelemetry:(id)telemetry;
- (void)processMediaQueueTelemetry:(id)telemetry;
- (void)processNearbyStopWithPayload:(id)payload;
- (void)processNetworkQualityUpdated:(id)updated;
- (void)processPIPFeatureStatus:(id)status;
- (void)processParticipantTimingInfo:(id)info;
- (void)processParticipantTimingInfoV1ForMultiwayCall:(id)call payload:(id)payload;
- (void)processParticipantTimingInfoV2ForMultiwayCall:(id)call payload:(id)payload;
- (void)processPortraitModeFeatureStatus:(id)status;
- (void)processRTEvent:(id)event;
- (void)processRTXConfigData:(id)data;
- (void)processRTXStreamData:(id)data streamGroupID:(id)d;
- (void)processRateControllerTelemetry:(id)telemetry;
- (void)processReactionFeatureStatus:(id)status;
- (void)processRemoteThermalLevelChange:(id)change;
- (void)processRtcpPSFBForResiliencyConfigData:(id)data;
- (void)processScreenControlEnabled:(id)enabled withType:(unsigned __int16)type withTimestamp:(double)timestamp;
- (void)processSessionConfigUpdatedWithPayload:(id)payload;
- (void)processSessionInitWithPayload:(id)payload timestamp:(double)timestamp;
- (void)processSessionStart:(double)start;
- (void)processSessionStreamStats:(id)stats;
- (void)processSliceStatusFailedABCSymptom:(id)symptom isRemoteStatus:(BOOL)status;
- (void)processSliceStatusNotReceivedABCSymptom:(id)symptom isRemoteStatus:(BOOL)status;
- (void)processStatsForNumberOfParticipants:(unsigned int)participants webParticipants:(unsigned int)webParticipants withPayload:(id)payload;
- (void)processStudioLightFeatureStatus:(id)status;
- (void)processThermalLevelChange:(id)change;
- (void)processUILayout:(id)layout;
- (void)processUplinkStreamData:(id)data streamGroupID:(id)d;
- (void)processVTPEgressIngressTelemetry:(id)telemetry;
- (void)processVideoEnabled:(id)enabled withType:(unsigned __int16)type;
- (void)processVideoStreamSwitch:(id)switch;
- (void)reallocateAndStartBoundedAlgoScorerWithTime:(double)time;
- (void)releaseWRMMetrics;
- (void)remoteVideoEnabled:(id)enabled;
- (void)reportNegotiatedCipherSuitesTelemetryForCall:(id)call report:(id)report;
- (void)reportVCRCMLStats:(id)stats;
- (void)resetBoundedAlgoScoreWithTime:(double)time;
- (void)resetDownlinkSegmentRateControlInfo;
- (void)resetDownlinkSegmentWithStreamGroups:(unsigned int)groups withPayload:(id)payload;
- (void)resetRateControlMLEnrollmentAndStatsInSegment:(id)segment;
- (void)resetUplinkSegmentRateControlInfo;
- (void)resetUplinkSegmentWithStreamGroups:(unsigned int)groups withPayload:(id)payload;
- (void)resetVideoStatsForU1OrMultiwaySwitch:(id)switch participantID:(id)d;
- (void)screenEnabled:(id)enabled timestamp:(double)timestamp;
- (void)setAlgosScorerVideoResolution:(id)resolution time:(double)time participantID:(id)d;
- (void)setNWActivityReportingEnabled:(BOOL)enabled;
- (void)setupAdaptiveLearningWithParameters:(id)parameters;
- (void)startAlgosScorer:(id)scorer time:(double)time;
- (void)stopBoundedAlgoScorerWithTime:(double)time;
- (void)storeToReport:(id)report value:(id)value key:(__CFString *)key streamGroup:(id)group;
- (void)transferActiveUplinkStatesToCall:(id)call payload:(id)payload;
- (void)transferSegmentStateToNewDownlinkSegment:(id)segment fromPreviousDownlinkSegment:(id)downlinkSegment withPayload:(id)payload;
- (void)transferSegmentStateToNewUplinkSegment:(id)segment fromPreviousUplinkSegment:(id)uplinkSegment withPayload:(id)payload;
- (void)updateAlgoMetrics:(unsigned int)metrics payload:(id)payload;
- (void)updateAudioCodecAndMediaBitrate:(id)bitrate currentTime:(double)time;
- (void)updateAudioTxStatsWithPayload:(id)payload;
- (void)updateBitrateCap:(id)cap;
- (void)updateBitrateCap_Alternate:(id)alternate;
- (void)updateBootstrapIndex:(id)index;
- (void)updateCallStreamGroupTickCount:(id)count streamData:(id)data;
- (void)updateCellTech:(id)tech;
- (void)updateCenterStageEnabled:(unsigned __int16)enabled;
- (void)updateClientExperiments:(id)experiments;
- (void)updateConnectionProperties:(id)properties;
- (void)updateConnectionTelemetry:(id)telemetry;
- (void)updateCoreMotionActivityWithPayload:(id)payload;
- (void)updateCurrentRemoteSliceStatusWithPayload:(id)payload;
- (void)updateCurrentSatelliteNetworkStatusWithPayload:(id)payload;
- (void)updateCurrentSliceStatusWithPayload:(id)payload shouldUpdateOneToOneRemoteStatus:(BOOL)status;
- (void)updateDeviceOutputLatency:(id)latency;
- (void)updateDuplicationPossibilityDuration;
- (void)updateErrorCode:(id)code withType:(unsigned __int16)type;
- (void)updateFIRReceivedCount:(id)count;
- (void)updateIDSConfiguration:(id)configuration;
- (void)updateLinkProbingStats:(unsigned int)stats payload:(id)payload;
- (void)updateLinkSuggestionTelemetry:(id)telemetry;
- (void)updateMLEnhanceStatsForParticipant:(id)participant withPayload:(id)payload;
- (void)updateMediaQueueInfoWithPayload:(id)payload;
- (void)updateNetworkCapabilities:(id)capabilities type:(unsigned __int16)type;
- (void)updateNetworkSendResultStats:(id)stats;
- (void)updateNoRemoteState:(id)state state:(BOOL)a4;
- (void)updateNoRemoteState_Alternate:(id)alternate state:(BOOL)state;
- (void)updateOperatingMode:(unsigned int)mode;
- (void)updatePacketHistoryForLinks:(id)links;
- (void)updatePortraitBlurEnabled:(unsigned __int16)enabled;
- (void)updatePrimaryConnHealthAllowedDelay:(double)delay;
- (void)updateProtocolStackDescription:(id)description;
- (void)updateQRExperiments:(id)experiments;
- (void)updateRTStatsSession:(id)session audioPacketsSent:(unsigned int)sent;
- (void)updateRateControlExperiment:(id)experiment type:(unsigned __int16)type;
- (void)updateRateControlExperimentCall:(id)call;
- (void)updateRateControlExperimentSegment:(id)segment WithPayload:(id)payload;
- (void)updateRateControlMachineLearningEnrollment:(id)enrollment;
- (void)updateRateControlMachineLearningRateControllerStats:(id)stats;
- (void)updateRateControlSmartBrakeTrialVersion:(id)version type:(unsigned __int16)type;
- (void)updateRateControlSmartBrakeTrialVersionRemote:(id)remote;
- (void)updateReceivedVideoTierDurations:(id)durations;
- (void)updateReconnectStats:(id)stats withType:(unsigned __int16)type;
- (void)updateSpatialAudioSupport:(id)support;
- (void)updateSwitchConfiguration:(id)configuration;
- (void)updateThermalDataCollectorsDataWithTime:(double)time;
- (void)updateThermalDataCollectorsStateWithPayload:(id)payload withTime:(double)time;
- (void)updateTotalConnectionTime:(id)time;
- (void)updateUplinkSegmentAudioCodecAndMediaBitrateWithPayload:(id)payload currentTime:(double)time;
- (void)updateVCRCProfileNumber:(id)number;
- (void)updateVPCStatus:(id)status;
- (void)updateVideoFeatureStatus:(id)status;
- (void)updateVideoQualityWithPayload:(id)payload participantID:(id)d;
- (void)updateWRMMetrics:(unsigned int)metrics payload:(id)payload;
- (void)videoEnabled:(id)enabled;
@end

@implementation VCAggregatorMultiway

- (VCAggregatorMultiway)initWithDelegate:(id)delegate creationOptions:(id *)options
{
  if (options)
  {
    var0 = options->var0;
    var2 = options->var2;
    v13.receiver = self;
    v13.super_class = VCAggregatorMultiway;
    v7 = [(VCAggregator *)&v13 initWithDelegate:delegate nwParentActivity:var0 conversationTimeBase:var2];
    v8 = v7;
    if (v7)
    {
      v9 = 1;
      v7->super._callMode = 1;
      v7->_calls = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_internalErrors = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_streamGroupStats = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:11];
      do
      {
        v10 = objc_alloc_init(StreamGroupStats);
        -[NSMutableDictionary setObject:forKeyedSubscript:](v8->_streamGroupStats, "setObject:forKeyedSubscript:", v10, [MEMORY[0x277CCABA8] numberWithInt:v9]);

        v9 = (v9 + 1);
      }

      while (v9 != 11);
      v8->super._sessionNwActivity = options->var0;
      v8->super._isOneToOneMode = options->var1;
      v8->super._osBuild = [(__CFString *)options->var3 copy];
      v8->super._deviceType = [(__CFString *)options->var4 copy];
      v8->_sessionModeHistogram = [[VCReportingHistogram alloc] initWithType:21 bucketValues:0];
      v8->super._nwActivity = nw_activity_create();
      if (v8->super._sessionNwActivity)
      {
        nw_activity_set_parent_activity();
        nwActivity = v8->super._nwActivity;
      }

      nw_activity_activate();
      v8->super._studioLightDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v8->super._centerStageDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v8->super._portraitModeDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v8->super._eyeContactDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v8->super._reactionActiveDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v8->super._backgroundReplacementDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v8->_videoEnabledState = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8->_videoEnabledDuration = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8->_downlinkParticipantStats = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8->_cameraCaptureData = [[VCReportingDistribution alloc] initWithHistogramType:81 reportingKeys:VCReportingDistributionKeys_CameraCaptureFrameRate() histogramIncrementFactor:1000];
      v8->_pipThermalDurations = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v8->_currentLocalOrientation = 4;
      v8->_localOrientationDurations = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:99 bucketValues:0];
      v8->_portraitOrientationBucketed = [[VCReportingHistogram alloc] initWithType:101 bucketValues:0];
      v8->_portraitUpsideDownOrientationBucketed = [[VCReportingHistogram alloc] initWithType:101 bucketValues:0];
      v8->_landscapeLeftOrientationBucketed = [[VCReportingHistogram alloc] initWithType:101 bucketValues:0];
      v8->_landscapeRightOrientationBucketed = [[VCReportingHistogram alloc] initWithType:101 bucketValues:0];
      v8->_thermalDataCollectors = +[VCAggregator newThermalDataCollectors];
      v8->_lossPattern = [[VCReportingHistogram alloc] initWithType:41 bucketValues:0];
      v8->_lossHistogram = [[VCReportingHistogram2D alloc] initWithType:42 bucketValues:0];
      v8->_lossFecHistogram = [[VCReportingHistogram2D alloc] initWithType:42 bucketValues:0];
      v8->_nearbyStats = objc_opt_new();
      v8->_weeklyDUID = [(__CFString *)options->var6 copy];
      v8->_hdCaptureDurationsMsec = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8->_hdCaptureStartTime = NAN;
      v8->_hdCaptureBenefitDistribution = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_284FA54B0, 0}];
    }
  }

  else
  {
    [VCAggregatorMultiway initWithDelegate:&v14 creationOptions:?];
    return v14;
  }

  return v8;
}

- (void)dealloc
{
  [(VCAggregatorMultiway *)self _releaseProtocolDescription];
  if (self->super._nwActivity)
  {
    if (self->_sessionEndReason)
    {
      sessionErrorDomain = self->_sessionErrorDomain;
      nw_activity_complete_with_reason_and_underlying_error();
    }

    else
    {
      nw_activity_complete_with_reason();
    }

    nw_release(self->super._nwActivity);
    self->super._nwActivity = 0;
  }

  [(VCAggregatorMultiway *)self releaseWRMMetrics];
  v4.receiver = self;
  v4.super_class = VCAggregatorMultiway;
  [(VCAggregator *)&v4 dealloc];
}

- (void)_releaseProtocolDescription
{
  relayProtocolStack = self->_relayProtocolStack;
}

- (void)releaseWRMMetrics
{
  wrmLinkTypeCellServingCellType = self->_wrmLinkTypeCellServingCellType;
}

- (void)setNWActivityReportingEnabled:(BOOL)enabled
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__VCAggregatorMultiway_setNWActivityReportingEnabled___block_invoke;
  v4[3] = &unk_278BD4D20;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_sync(stateQueue, v4);
}

void *__54__VCAggregatorMultiway_setNWActivityReportingEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = VCAggregatorMultiway;
  objc_msgSendSuper2(&v6, sel_setNWActivityReportingEnabled_, v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1336);
  if (v4)
  {
    [v4 setNWActivityReportingEnabled:*(v3 + 408)];
    v3 = *(a1 + 32);
  }

  result = *(v3 + 1360);
  if (result)
  {
    return [result setNWActivityReportingEnabled:*(v3 + 408)];
  }

  return result;
}

- (BOOL)isAllowlistedEvent:(unsigned __int16)event
{
  v3 = 76;
  do
  {
    v4 = allowlistedEvents[v3];
  }

  while (v4 != event && v3-- != 0);
  return v4 == event;
}

- (void)flushCurrentSegment
{
  v16 = *MEMORY[0x277D85DE8];
  [(VCAggregator *)self microFromPayload:0];
  v4 = v3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  calls = self->_calls;
  v6 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(calls);
        }

        [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i)), "processVideoDegraded:timestamp:", 0, v4}];
      }

      v7 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(VCAggregatorMultiway *)self updateAudioTxStatsWithPayload:0];
  [(VCAggregatorMultiway *)self flushCurrentUplinkSegment:0];
  [(VCAggregatorMultiway *)self flushCurrentDownlinkSegment:0];
  [self->_currentDownlinkSegment resetVideoDegradedForAllParticipants:v4];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setupAdaptiveLearningWithParameters:(id)parameters
{
  if ([objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningState), "intValue"}])
  {
    v5 = [[VCAdaptiveLearning alloc] initWithParameters:parameters];
  }

  else
  {
    v5 = 0;
  }

  self->super._adaptiveLearning = v5;
}

- (id)aggregatedSegmentReport:(int)report withPayload:(id)payload
{
  v4 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  if (report <= 1)
  {
    stateQueue = self->super._stateQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__VCAggregatorMultiway_aggregatedSegmentReport_withPayload___block_invoke;
    v7[3] = &unk_278BD4ED8;
    v7[5] = payload;
    v7[6] = &v9;
    reportCopy = report;
    v7[4] = self;
    dispatch_sync(stateQueue, v7);
    v4 = v10[5];
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __60__VCAggregatorMultiway_aggregatedSegmentReport_withPayload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2)
  {
    result = [v3 aggregatedDownlinkSegmentReport:*(a1 + 40)];
  }

  else
  {
    result = [v3 aggregatedUplinkSegmentReport];
  }

  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)storeToReport:(id)report value:(id)value key:(__CFString *)key streamGroup:(id)group
{
  group = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", key, group];

  [report setObject:value forKeyedSubscript:group];
}

- (void)addSessionOperatingModeForCallReport:(id)report
{
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_callStartReportingMode), @"SSOPMODE"}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_currentReportingMode), @"SEOPMODE"}];
  if (self->_audioOnlyModeDuration)
  {
    v5 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];

    [report setObject:v5 forKeyedSubscript:@"ADRTN"];
  }
}

- (void)addStreamGroupTelemetryForCall:(id)call callReport:(id)report
{
  v346 = *MEMORY[0x277D85DE8];
  v326 = 0u;
  v327 = 0u;
  v328 = 0u;
  v329 = 0u;
  obj = [call streamGroups];
  v179 = [obj countByEnumeratingWithState:&v326 objects:v345 count:16];
  if (v179)
  {
    v178 = *v327;
    reportCopy = report;
    do
    {
      v5 = 0;
      do
      {
        if (*v327 != v178)
        {
          objc_enumerationMutation(obj);
        }

        v181 = v5;
        v6 = *(*(&v326 + 1) + 8 * v5);
        v223 = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
        v189 = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
        v188 = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
        v187 = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
        v186 = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
        v211 = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
        v210 = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
        v217 = [[VCReportingHistogram alloc] initWithType:12 bucketValues:0];
        v216 = [[VCReportingHistogram alloc] initWithType:12 bucketValues:0];
        v185 = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
        v184 = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
        v183 = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
        v182 = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
        v191 = [[VCReportingHistogram alloc] initWithType:58 bucketValues:0];
        v194 = v6;
        v7 = [obj objectForKeyedSubscript:v6];
        v222 = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:74 reportingKeys:VCReportingDeltaDistributionKeys_VideoPlayerHostTimeDelta() histogramIncrementFactor:1000];
        v221 = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:75 reportingKeys:VCReportingDeltaDistributionKeys_VideoPlayerAVSyncOffset() histogramIncrementFactor:1000];
        v220 = [[VCReportingDistribution alloc] initWithHistogramType:78 reportingKeys:VCReportingDistributionKeys_VideoPlayerDisplayFrameRate() histogramIncrementFactor:1000];
        v218 = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:46 reportingKeys:VCReportingDeltaDistributionKeys_TransmitterHostTimeDelta() histogramIncrementFactor:1000];
        v209 = [[VCReportingDistribution alloc] initWithHistogramType:81 reportingKeys:VCReportingDistributionKeys_CameraCaptureFrameRate() histogramIncrementFactor:1000];
        v219 = objc_alloc_init(VCVideoFECData);
        v322 = 0u;
        v323 = 0u;
        v324 = 0u;
        v325 = 0u;
        v225 = [v7 countByEnumeratingWithState:&v322 objects:v344 count:16];
        v8 = 0;
        if (v225)
        {
          v9 = 0;
          v297 = 0;
          v10 = 0;
          v11 = 0;
          v296 = 0;
          v319 = 0;
          v291 = 0;
          v311 = 0;
          v12 = 0;
          v208 = 0;
          v199 = 0;
          v200 = 0;
          v206 = 0;
          v207 = 0;
          v204 = 0;
          v205 = 0;
          v212 = 0;
          v214 = 0;
          v195 = 0;
          v197 = 0;
          v198 = 0;
          v290 = 0;
          v202 = 0;
          v203 = 0;
          v201 = 0;
          v320 = 0;
          v288 = 0;
          v285 = 0;
          v312 = 0;
          v282 = 0;
          v280 = 0;
          v276 = 0;
          v318 = 0;
          v317 = 0;
          v310 = 0;
          v293 = 0;
          v272 = 0;
          v13 = 0;
          LOWORD(v270) = 0;
          v309 = 0;
          v278 = 0.0;
          v14 = 0.0;
          v304 = 0.0;
          v302 = 0.0;
          v224 = *v323;
          v300 = 0.0;
          v274 = 0.0;
          v315 = 0.0;
          v15 = 0.0;
          v16 = 0.0;
          v316 = 0.0;
          LOWORD(v17) = 60;
          v299 = 0x80000000;
          v298 = 0x7FFFFFFF;
          v196 = v7;
          do
          {
            for (i = 0; i != v225; ++i)
            {
              if (*v323 != v224)
              {
                objc_enumerationMutation(v7);
              }

              v19 = [v7 objectForKeyedSubscript:*(*(&v322 + 1) + 8 * i)];
              if (v19)
              {
                v20 = v19;
                v255 = v15;
                v256 = v16;
                v258 = v14;
                significantVideoStallCount = [v19 significantVideoStallCount];
                [v20 videoStallTotalTime];
                v254 = v21;
                [v20 currentStallTime];
                v253 = v22;
                audioErasureCount = [v20 audioErasureCount];
                [v20 audioErasureTotalTime];
                v252 = v23;
                [v20 audioErasureTotalTimeAlt];
                v251 = v24;
                [v20 averageFramerateSum];
                v26 = v25;
                averageFramerateReportCounter = [v20 averageFramerateReportCounter];
                [v20 averageReceiveBitrateSum];
                v28 = v27;
                averageReceiveBitrateReportCounter = [v20 averageReceiveBitrateReportCounter];
                [v20 averageVideoJitterLengthSum];
                v30 = v29;
                averageVideoJitterReportCounter = [v20 averageVideoJitterReportCounter];
                maxAudioErasureCount = [v20 maxAudioErasureCount];
                maxVideoStallCount = [v20 maxVideoStallCount];
                [v20 averageJitterBufferDelay];
                v32 = v31;
                [v20 averageJitterBufferDelay];
                if (v33 != 0.0)
                {
                  ++v13;
                }

                [v20 averageJBTargetSizeChanges];
                v35 = v34;
                maxJBTargetSizeChanges = [v20 maxJBTargetSizeChanges];
                v36 = v17;
                v306 = v8;
                v268 = v12;
                v266 = v13;
                v264 = v10;
                v262 = v9;
                v260 = v11;
                if ([v20 minVideoFrameRate])
                {
                  v36 = fmin(v36, [v20 minVideoFrameRate]);
                }

                oooPacketCount = [v20 oooPacketCount];
                [v20 totalVideoPacketsReceived];
                totalFIRDemandCounter = [v20 totalFIRDemandCounter];
                totalFIRCounter = [v20 totalFIRCounter];
                totalFIRFailSafeCounter = [v20 totalFIRFailSafeCounter];
                videoFrameDecodedButSkippedCounter = [v20 videoFrameDecodedButSkippedCounter];
                videoFrameTotalIncompleteCounter = [v20 videoFrameTotalIncompleteCounter];
                decodedVideoFrameEnqueueCounter = [v20 decodedVideoFrameEnqueueCounter];
                lateKeyFrameAssembledCount = [v20 lateKeyFrameAssembledCount];
                latePFrameAssembledCount = [v20 latePFrameAssembledCount];
                idrReceivedCount = [v20 idrReceivedCount];
                idrSentCount = [v20 idrSentCount];
                [v20 evictedFramesAverageLatePacketDelay];
                v38 = v37;
                [v20 evictedFramesMaxLatePacketDelay];
                v40 = v278;
                if (v278 < v39)
                {
                  v40 = v39;
                }

                v278 = v40;
                -[VCHistogram merge:](v223, "merge:", [v20 evictedFramesLatePacketDelayHist]);
                -[VCHistogram merge:](v211, "merge:", [v20 nacksPLRWithRTX]);
                -[VCHistogram merge:](v210, "merge:", [v20 nacksPLRWithoutRTX]);
                evictedFramesTrackedCount = [v20 evictedFramesTrackedCount];
                [v20 evictedFramesAnalysisValidIntervals];
                v42 = v41;
                lateFramesScheduledCount = [v20 lateFramesScheduledCount];
                evictedFramesRecoveredCount = [v20 evictedFramesRecoveredCount];
                maxAVSyncOffset = [v20 maxAVSyncOffset];
                if (v299 <= maxAVSyncOffset)
                {
                  v44 = maxAVSyncOffset;
                }

                else
                {
                  v44 = v299;
                }

                v299 = v44;
                minAVSyncOffset = [v20 minAVSyncOffset];
                if (v298 >= minAVSyncOffset)
                {
                  v46 = minAVSyncOffset;
                }

                else
                {
                  v46 = v298;
                }

                v298 = v46;
                averageAVSyncOffsetCounter = [v20 averageAVSyncOffsetCounter];
                averageAVSyncOffsetSum = [v20 averageAVSyncOffsetSum];
                decodeNoShowFrameCount = [v20 decodeNoShowFrameCount];
                [v20 averageVideoTxFecBitrate];
                averageVideoRxFecBitrate = [v20 averageVideoRxFecBitrate];
                averageVideoTxMetadataOverheadBitrate = [v20 averageVideoTxMetadataOverheadBitrate];
                averageVideoRxMetadataOverheadBitrate = [v20 averageVideoRxMetadataOverheadBitrate];
                averageVideoRxBitrate = [v20 averageVideoRxBitrate];
                averageVideoRxMediaBitrate = [v20 averageVideoRxMediaBitrate];
                averageVideoRxDecoderMediaBitrate = [v20 averageVideoRxDecoderMediaBitrate];
                [v20 averageVideoTxMediaBitrate];
                [v20 enhancedJBAdaptationsEnabled];
                -[VCHistogram merge:](v217, "merge:", [v20 JBTarget]);
                -[VCHistogram merge:](v216, "merge:", [v20 JBUnclippedTarget]);
                videoPlayerDisplayAlarmCount = [v20 videoPlayerDisplayAlarmCount];
                videoPlayerDecodeAlarmCount = [v20 videoPlayerDecodeAlarmCount];
                -[VCReportingDistribution accumulate:](v209, "accumulate:", [v20 cameraCaptureData]);
                -[VCReportingDistribution accumulate:](v220, "accumulate:", [v20 videoPlayerDisplayData]);
                -[VCReportingDeltaDistribution accumulate:](v222, "accumulate:", [v20 videoPlayerAVHostTimeData]);
                -[VCReportingDeltaDistribution accumulate:](v221, "accumulate:", [v20 videoPlayerAVSyncOffsetData]);
                -[VCVideoFECData accumulate:](v219, "accumulate:", [v20 videoTxFecData]);
                if ([v20 isRTXTelemetryAvailable])
                {
                  v201 += [v20 nacksSent];
                  v202 += [v20 nacksFulfilled];
                  v203 += [v20 nacksFulfilledOnTime];
                  v212 += [v20 uniqueNacksSent];
                  v197 += [v20 lateFramesScheduledWithRTXCount];
                  v198 += [v20 assembledFramesWithRTXPacketsCount];
                  v199 += [v20 failedToAssembleFramesWithRTXPacketsCount];
                  LOBYTE(v195) = 1;
                }

                WORD2(v309) += significantVideoStallCount;
                LOWORD(v309) = audioErasureCount + v309;
                LOWORD(v293) = averageFramerateReportCounter + v293;
                LOWORD(v312) = averageReceiveBitrateReportCounter + v312;
                WORD2(v293) += averageVideoJitterReportCounter;
                if (*(v20 + 8) == 1)
                {
                  v214 += *(v20 + 2);
                  v204 += *(v20 + 3);
                  v205 += *(v20 + 4);
                  v206 += *(v20 + 5);
                  v207 += *(v20 + 6);
                  v200 += *(v20 + 7);
                  v55 = v20[32];
                  if (v55 <= v208)
                  {
                    LOWORD(v55) = v208;
                  }

                  v208 = v55;
                  BYTE4(v195) = 1;
                }

                v310 += oooPacketCount;
                v317 += totalFIRDemandCounter;
                LODWORD(v318) = totalFIRCounter + v318;
                HIDWORD(v318) += totalFIRFailSafeCounter;
                v276 += videoFrameDecodedButSkippedCounter;
                v280 += videoFrameTotalIncompleteCounter;
                v282 += decodedVideoFrameEnqueueCounter;
                LODWORD(v291) = lateKeyFrameAssembledCount + v291;
                HIDWORD(v291) += latePFrameAssembledCount;
                LODWORD(v319) = idrReceivedCount + v319;
                HIDWORD(v319) += idrSentCount;
                LODWORD(v320) = evictedFramesTrackedCount + v320;
                v285 += lateFramesScheduledCount;
                HIDWORD(v290) += evictedFramesRecoveredCount;
                HIDWORD(v320) += averageAVSyncOffsetCounter;
                v288 += averageAVSyncOffsetSum;
                LODWORD(v290) = decodeNoShowFrameCount + v290;
                HIDWORD(v296) += averageVideoRxFecBitrate;
                v11 = averageVideoTxMetadataOverheadBitrate + v260;
                v10 = averageVideoRxMetadataOverheadBitrate + v264;
                v316 = v316 + v254 + v253;
                v315 = v315 + v252;
                v274 = v274 + v251;
                v300 = v300 + v26;
                v302 = v302 + v28;
                v304 = v304 + v30;
                LODWORD(v296) = averageVideoRxBitrate + v296;
                LODWORD(v272) = fmax(v272, maxAudioErasureCount);
                HIDWORD(v297) += averageVideoRxMediaBitrate;
                v270 = fmax(v270, maxVideoStallCount);
                v16 = v256 + v32;
                LODWORD(v297) = averageVideoRxDecoderMediaBitrate + v297;
                HIDWORD(v272) = fmax(WORD2(v272), maxJBTargetSizeChanges);
                v12 = (videoPlayerDisplayAlarmCount + v268);
                v17 = v36;
                v15 = v255 + v35;
                v14 = v258 + v38;
                v311 += videoPlayerDecodeAlarmCount;
                HIDWORD(v312) = (v42 + HIDWORD(v312));
                -[VCReportingDeltaDistribution accumulate:](v218, "accumulate:", [v20 transmitterAVHostTimeData]);
                v9 = v262 + [v20 encodedVideoFrameCount];
                v8 = v306 + [v20 encodedVideoReportCount];
                v13 = v266;
                v7 = v196;
              }
            }

            v225 = [v7 countByEnumeratingWithState:&v322 objects:v344 count:16];
          }

          while (v225);
          v56 = v276 * 1000.0;
          v57 = v280 * 1000.0;
          v58 = v282 * 1000.0;
          v59 = v15 * 1000.0;
          v263 = v14 * 1000.0;
          v283 = v285 * 1000.0;
          v286 = v291 * 1000.0;
          v267 = HIDWORD(v291) * 1000.0;
          v265 = v16 * 1000.0;
          v307 = v288;
          v60 = v290 * 1000.0;
          v61 = HIDWORD(v290) * 10000.0;
          v269 = v274 * 10000.0;
          LODWORD(v292) = (v278 * 1000.0);
          HIDWORD(v292) = v270;
          HIDWORD(v290) = v17;
          v271 = v9 * 1000.0;
          v261 = v11 * 1000.0;
          v259 = v10 * 1000.0;
          v279 = v272;
          v281 = WORD2(v272);
          v257 = v198;
          v62 = v197;
          v63 = v199;
          v65 = v212;
          v64 = v214;
          v66 = WORD2(v293);
          v67 = v293;
        }

        else
        {
          v297 = 0;
          v296 = 0;
          v319 = 0;
          v311 = 0;
          v12 = 0;
          v208 = 0;
          v200 = 0;
          v201 = 0;
          v206 = 0;
          v207 = 0;
          v204 = 0;
          v205 = 0;
          v64 = 0;
          v195 = 0;
          v65 = 0;
          v202 = 0;
          v203 = 0;
          v320 = 0;
          v312 = 0;
          v292 = 0;
          v318 = 0;
          v317 = 0;
          v310 = 0;
          v66 = 0;
          v67 = 0;
          v281 = 0;
          LOWORD(v13) = 0;
          v279 = 0;
          v309 = 0;
          v271 = 0.0;
          v259 = 0.0;
          v261 = 0.0;
          v267 = 0.0;
          v286 = 0.0;
          v63 = 0.0;
          v257 = 0.0;
          v62 = 0.0;
          v61 = 0.0;
          v60 = 0.0;
          v307 = 0.0;
          v283 = 0.0;
          v263 = 0.0;
          v58 = 0.0;
          v57 = 0.0;
          v56 = 0.0;
          v304 = 0.0;
          v302 = 0.0;
          v300 = 0.0;
          v269 = 0.0;
          v315 = 0.0;
          v59 = 0.0;
          v265 = 0.0;
          v316 = 0.0;
          HIDWORD(v290) = 60;
          v299 = 0x80000000;
          v298 = 0x7FFFFFFF;
        }

        v68 = [objc_msgSend(objc_msgSend(call "streamGroupStats")];
        v69 = v68;
        selfCopy2 = self;
        if (v67)
        {
          v294 = (v300 / v67);
        }

        else
        {
          v294 = 0;
        }

        if (v312)
        {
          v313 = (v302 / v312 * 1000.0);
        }

        else
        {
          v313 = 0;
        }

        if (v66)
        {
          LODWORD(v290) = (v304 / v66);
          if (!v68)
          {
            goto LABEL_45;
          }
        }

        else
        {
          LODWORD(v290) = 0;
          if (!v68)
          {
LABEL_45:
            v305 = 0;
            v71 = 0;
            v295 = 0;
            v301 = 0;
            v303 = 0;
            v72 = 0.0;
            goto LABEL_46;
          }
        }

        v295 = (v318 * 1000.0 / ([(VCAggregatorMultiway *)self RTPeriod]* v68));
        v301 = (HIDWORD(v318) * 1000.0 / ([(VCAggregatorMultiway *)self RTPeriod]* v69));
        v71 = (v320 * 1000.0 / ([(VCAggregatorMultiway *)self RTPeriod]* v69));
        v303 = (v56 / ([(VCAggregatorMultiway *)self RTPeriod]* v69));
        v305 = (v57 / ([(VCAggregatorMultiway *)self RTPeriod]* v69));
        v72 = v58 / ([(VCAggregatorMultiway *)self RTPeriod]* v69);
LABEL_46:
        v213 = v65;
        v215 = v64;
        if (!self->super._isOneToOneMode && [v194 unsignedIntValue] == 1 && v72 > 30000.0)
        {
          if (VRTraceGetErrorLogLevelForModule("") >= 5)
          {
            v73 = VRTraceErrorLogLevelToCSTR(5u);
            v74 = gVRTraceOSLog;
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              v333 = v73;
              v334 = 2080;
              v335 = "[VCAggregatorMultiway addStreamGroupTelemetryForCall:callReport:]";
              v336 = 1024;
              v337 = 7545;
              v338 = 1024;
              v339 = v72;
              v340 = 2112;
              v341 = @"VREFR";
              v342 = 1024;
              v343 = 30;
              _os_log_impl(&dword_23D4DF000, v74, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d totalDecodedVideoFrameEnqueueCounter=%u (%@); Frame rate is higher than %d FPS", buf, 0x32u);
            }
          }

          selfCopy2 = self;
          delegate = [(VCAggregator *)self delegate];
          v330 = @"SymptomReporterOptionalKeyGroupID";
          v331 = v194;
          reportingSymptom(delegate, 79, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v331 forKeys:&v330 count:1]);
        }

        if (v13)
        {
          v277 = (v59 / v13);
          if (v69)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v277 = 0;
          if (v69)
          {
LABEL_55:
            v76 = (v317 * 1000.0 / ([(VCAggregatorMultiway *)selfCopy2 RTPeriod]* v69));
            goto LABEL_58;
          }
        }

        v76 = 0;
LABEL_58:
        if (HIDWORD(v312))
        {
          v77 = (v263 / HIDWORD(v312));
          if (v69)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v77 = 0;
          if (v69)
          {
LABEL_60:
            v284 = (v283 / ([(VCAggregatorMultiway *)selfCopy2 RTPeriod]* v69));
            v287 = (v286 / ([(VCAggregatorMultiway *)selfCopy2 RTPeriod]* v69));
            v289 = (v267 / ([(VCAggregatorMultiway *)selfCopy2 RTPeriod]* v69));
            goto LABEL_63;
          }
        }

        v287 = 0;
        v284 = 0;
        v289 = 0;
LABEL_63:
        if (v13)
        {
          v275 = (v265 / v13);
        }

        else
        {
          v275 = 0;
        }

        if (HIDWORD(v320))
        {
          v78 = (v307 / HIDWORD(v320));
          if (v69)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v78 = 0;
          if (v69)
          {
LABEL_68:
            v314 = (v60 / ([(VCAggregatorMultiway *)selfCopy2 RTPeriod]* v69));
            goto LABEL_71;
          }
        }

        v314 = 0;
LABEL_71:
        if (v320)
        {
          v79 = (v61 / v320);
        }

        else
        {
          v79 = 0;
        }

        v308 = v8;
        if (v69)
        {
          v273 = (v315 * 10000.0 / (([(VCAggregatorMultiway *)selfCopy2 RTPeriod]* v69) * 1000.0));
          v321 = (v269 / (([(VCAggregatorMultiway *)selfCopy2 RTPeriod]* v69) * 1000.0));
          rTPeriod = [(VCAggregatorMultiway *)selfCopy2 RTPeriod];
          v81 = v316 / 1000.0;
          if (v316 / 1000.0 >= (rTPeriod * v69))
          {
            v81 = (rTPeriod * v69);
          }

          v82 = selfCopy2;
          v83 = (v81 * 10000.0 / ([(VCAggregatorMultiway *)selfCopy2 RTPeriod]* v69));
          v84 = v194;
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v86 = v85 * 10000.0;
          v87 = [(VCAggregatorMultiway *)v82 RTPeriod]* v69;
          if (v86 / v87 <= 10000.0)
          {
            v88 = v86 / v87;
          }

          else
          {
            v88 = 10000.0;
          }

          v89 = v319 * 1000.0 / ([(VCAggregatorMultiway *)v82 RTPeriod]* v69);
          v90 = HIDWORD(v319) * 1000.0 / ([(VCAggregatorMultiway *)v82 RTPeriod]* v69);
          v69 = v88;
          v91 = 0x277CCA000;
        }

        else
        {
          [(VCAggregatorMultiway *)selfCopy2 RTPeriod];
          v83 = 0;
          v273 = 0;
          v321 = 0;
          v89 = 0.0;
          v90 = 0.0;
          v91 = 0x277CCA000uLL;
          v84 = v194;
        }

        if ([v84 unsignedIntValue] == 1 || objc_msgSend(v84, "unsignedIntValue") == 3 || objc_msgSend(v84, "unsignedIntValue") == 5 || objc_msgSend(v84, "unsignedIntValue") == 7 || objc_msgSend(v84, "unsignedIntValue") == 8 || objc_msgSend(v84, "unsignedIntValue") == 10)
        {
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedShort:WORD2(v309)], @"VSTCNT", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v316], @"TVST", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v83], @"VSP", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v294], @"ARFR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v290], @"AJBL", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v71], @"VPBINTSER", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v76], @"VPBNRFR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v317], @"VPBNRFC", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v295], @"FIRFR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v318], @"FIRFC", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v301], @"FIRFSFR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v318)], @"FIRFSFC", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v303], @"VFDSKPR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v305], @"VPBTIR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v72], @"VREFR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v77], @"VPBEVALPD", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v292], @"VPBEVMLPD", v84);
          [(VCAggregatorMultiway *)self storeToReport:reportCopy value:[(VCHistogram *)v223 description] key:@"VPBEVLPDHIST" streamGroup:v84];
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v292)], @"MVSTCT", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v290)], @"MNVFR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v310], @"OOOPCT", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v284], @"VPBLSR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v287], @"VPBLKFAR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v289], @"VPBLPFAR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(objc_msgSend(call, "streamGroupStats"), "objectForKeyedSubscript:", v84), "videoDegradedTotalCounter")}], @"PCSWCNT", v84);
          v92 = MEMORY[0x277CCABA8];
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [v92 numberWithUnsignedInt:(v93 * 1000.0)], @"TPCT", v84);
          v94 = MEMORY[0x277CCABA8];
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [v94 numberWithUnsignedInt:(v95 * 1000.0)], @"SPCONMAXLEN", v84);
          v91 = 0x277CCA000uLL;
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(objc_msgSend(call, "streamGroupStats"), "objectForKeyedSubscript:", v84), "videoDegradedTotalCounter")}], @"PCONFQ", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v69], @"PCONP", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v314], @"VRXTNSFR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v79], @"PEVFR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v319], @"IDRRCVDC", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithDouble:v89], @"IDRRCVDR", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v319)], @"VTIDRS", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithDouble:v90], @"VTIDRSR", v84);
          [(VCAggregatorMultiway *)self storeToReport:reportCopy value:[(VCHistogram *)v191 description] key:@"AFECL" streamGroup:v84];
          if ([objc_msgSend(objc_msgSend(call "streamGroupStats")])
          {
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [objc_msgSend(objc_msgSend(objc_msgSend(call "streamGroupStats")], @"VDDPR", v84);
          }

          if (HIDWORD(v320))
          {
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithInt:v78], @"AAVSO", v84);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithInt:v298], @"MINAVSO", v84);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithInt:v299], @"MAXAVSO", v84);
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v311], @"VPDECAC", v84);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v12], @"VPDISAC", v84);
          [objc_msgSend(objc_msgSend(objc_msgSend(call "streamGroupStats")];
          [objc_msgSend(objc_msgSend(objc_msgSend(call "streamGroupStats")];
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v12], @"VPDISAC", v84);
          if (v84)
          {
            v96 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTEFR", v84];
            v97 = v194;
            v98 = v96;
            if (!v96)
            {
              goto LABEL_100;
            }
          }

          else
          {
            v98 = @"VTEFR";
          }

          if (v308)
          {
            v99 = (v271 / ([(VCAggregatorMultiway *)self RTPeriod]* v308));
          }

          else
          {
            v99 = 0;
          }

          [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v99), v98}];
          v97 = v194;
          if (v194)
          {
LABEL_100:
            v100 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVMRBR", v97];
            v101 = v194;
            v102 = v100;
            if (!v100)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v102 = @"AVMRBR";
          }

          if ([call duration])
          {
            v103 = HIDWORD(v297) / [call duration];
          }

          else
          {
            v103 = 0;
          }

          v91 = 0x277CCA000uLL;
          [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v103), v102}];
          v101 = v194;
          if (v194)
          {
LABEL_107:
            v101 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVDMRBR", v101];
            v105 = v194;
            v106 = v101;
            if (!v101)
            {
              goto LABEL_114;
            }
          }

          else
          {
            v106 = @"AVDMRBR";
          }

          if ([call duration])
          {
            v107 = v297 / [call duration];
          }

          else
          {
            v107 = 0;
          }

          v91 = 0x277CCA000uLL;
          [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v107), v106}];
          v105 = v194;
          if (v194)
          {
LABEL_114:
            v105 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVFRBR", v105];
            v109 = v194;
            v110 = v105;
            if (!v105)
            {
              goto LABEL_121;
            }
          }

          else
          {
            v110 = @"AVFRBR";
          }

          if ([call duration])
          {
            v111 = HIDWORD(v296) / [call duration];
          }

          else
          {
            v111 = 0;
          }

          v91 = 0x277CCA000uLL;
          [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v111), v110}];
          v109 = v194;
          if (v194)
          {
LABEL_121:
            v109 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTAMDO", v109];
            v113 = v194;
            v114 = v109;
            if (!v109)
            {
              goto LABEL_128;
            }
          }

          else
          {
            v114 = @"VTAMDO";
          }

          if ([call duration])
          {
            v115 = (v261 / [call duration]);
          }

          else
          {
            v115 = 0;
          }

          v91 = 0x277CCA000uLL;
          [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v115), v114}];
          v113 = v194;
          if (v194)
          {
LABEL_128:
            v113 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRAMDO", v113];
            v117 = v194;
            v118 = v113;
            if (!v113)
            {
              goto LABEL_135;
            }
          }

          else
          {
            v118 = @"VRAMDO";
          }

          if ([call duration])
          {
            v119 = (v259 / [call duration]);
          }

          else
          {
            v119 = 0;
          }

          v91 = 0x277CCA000uLL;
          [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v119), v118}];
          v117 = v194;
          if (v194)
          {
LABEL_135:
            v117 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVTRBR", v117];
            if (!v117)
            {
LABEL_142:
              v84 = v194;
              [(VCReportingDeltaDistribution *)v222 updateReport:reportCopy withStreamGroup:v194];
              [(VCReportingDeltaDistribution *)v221 updateReport:reportCopy withStreamGroup:v194];
              [(VCReportingDistribution *)v220 updateReport:reportCopy withStreamGroup:v194];
              [(VCReportingDeltaDistribution *)v218 updateReport:reportCopy withStreamGroup:v194];
              [(VCVideoFECData *)v219 updateReport:reportCopy withStreamGroup:v194];
              goto LABEL_143;
            }
          }

          else
          {
            v117 = @"AVTRBR";
          }

          if ([call duration])
          {
            v121 = v296 / [call duration];
          }

          else
          {
            v121 = 0;
          }

          v91 = 0x277CCA000uLL;
          [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v121), v117}];
          goto LABEL_142;
        }

LABEL_143:
        v122 = reportCopy;
        if ([v84 unsignedIntValue] != 2 && objc_msgSend(v194, "unsignedIntValue") != 4 && objc_msgSend(v194, "unsignedIntValue") != 6)
        {
          goto LABEL_203;
        }

        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedShort:v309], @"AERCNT", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedInt:v315], @"TAERT", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedInt:v273], @"AEAP", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedInt:v321], @"AEAP_A", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedInt:v279], @"MAECT", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedInt:v275], @"AAJBD", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedInt:v277], @"AAJBSC", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedInt:v281], @"MAJBSC", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", reportCopy, [*(v91 + 2984) numberWithUnsignedInt:v281], @"MAJBSC", v194);
        [(VCAggregatorMultiway *)self storeToReport:reportCopy value:[(VCHistogram *)v217 description] key:@"JBT" streamGroup:v194];
        [(VCAggregatorMultiway *)self storeToReport:reportCopy value:[(VCHistogram *)v216 description] key:@"AUJBL" streamGroup:v194];
        if (v194)
        {
          v123 = v194;
          v194 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AANTBR", v194];
          if (!v194)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v194 = @"AANTBR";
        }

        if ([call adjustedDuration])
        {
          v123 = v194;
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v126 = (v125 / [call adjustedDuration]);
        }

        else
        {
          v126 = 0;
          v123 = v194;
        }

        v91 = 0x277CCA000uLL;
        [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v126), v194}];
        if (v123)
        {
LABEL_154:
          v123 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAMTBR", v123];
          v128 = v194;
          v129 = v123;
          if (!v123)
          {
            goto LABEL_161;
          }

          goto LABEL_157;
        }

        v129 = @"AAMTBR";
LABEL_157:
        if ([call adjustedDuration])
        {
          v128 = v194;
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v131 = (v130 / [call adjustedDuration]);
        }

        else
        {
          v131 = 0;
          v128 = v194;
        }

        v91 = 0x277CCA000uLL;
        [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v131), v129}];
        if (!v128)
        {
          v134 = @"AAEMTBR";
          goto LABEL_164;
        }

LABEL_161:
        v128 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAEMTBR", v128];
        v133 = v194;
        v134 = v128;
        if (!v128)
        {
          goto LABEL_168;
        }

LABEL_164:
        if ([call adjustedDuration])
        {
          v133 = v194;
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v136 = (v135 / [call adjustedDuration]);
        }

        else
        {
          v136 = 0;
          v133 = v194;
        }

        v91 = 0x277CCA000uLL;
        [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v136), v134}];
        if (v133)
        {
LABEL_168:
          v133 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AADMRBR", v133];
          v138 = v194;
          v139 = v133;
          if (!v133)
          {
            goto LABEL_175;
          }

          goto LABEL_171;
        }

        v139 = @"AADMRBR";
LABEL_171:
        if ([call adjustedDuration])
        {
          v138 = v194;
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v141 = (v140 / [call adjustedDuration]);
        }

        else
        {
          v141 = 0;
          v138 = v194;
        }

        v91 = 0x277CCA000uLL;
        [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v141), v139}];
        if (!v138)
        {
          v144 = @"AANRBR";
          goto LABEL_178;
        }

LABEL_175:
        v138 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AANRBR", v138];
        v143 = v194;
        v144 = v138;
        if (!v138)
        {
          goto LABEL_182;
        }

LABEL_178:
        if ([call adjustedDuration])
        {
          v143 = v194;
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v146 = (v145 / [call adjustedDuration]);
        }

        else
        {
          v146 = 0;
          v143 = v194;
        }

        v91 = 0x277CCA000uLL;
        [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v146), v144}];
        if (v143)
        {
LABEL_182:
          v143 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAMRBR", v143];
          v148 = v194;
          v149 = v143;
          if (!v143)
          {
            goto LABEL_189;
          }

          goto LABEL_185;
        }

        v149 = @"AAMRBR";
LABEL_185:
        if ([call adjustedDuration])
        {
          v148 = v194;
          [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v151 = (v150 / [call adjustedDuration]);
        }

        else
        {
          v151 = 0;
          v148 = v194;
        }

        v91 = 0x277CCA000uLL;
        [reportCopy setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v151), v149}];
        if (!v148)
        {
          v154 = @"AARTBR";
          goto LABEL_192;
        }

LABEL_189:
        v148 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AARTBR", v148];
        v153 = v194;
        v154 = v148;
        if (!v148)
        {
          goto LABEL_196;
        }

LABEL_192:
        if ([call adjustedDuration])
        {
          v153 = v194;
          v155 = [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v156 = v155 / [call adjustedDuration];
          v122 = reportCopy;
        }

        else
        {
          v156 = 0;
          v153 = v194;
        }

        v91 = 0x277CCA000uLL;
        [v122 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v156), v154}];
        if (v153)
        {
LABEL_196:
          v153 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AARRBR", v153];
          if (!v153)
          {
            goto LABEL_203;
          }

          goto LABEL_199;
        }

        v153 = @"AARRBR";
LABEL_199:
        if ([call adjustedDuration])
        {
          v158 = [objc_msgSend(objc_msgSend(call "streamGroupStats")];
          v159 = v158 / [call adjustedDuration];
          v122 = reportCopy;
        }

        else
        {
          v159 = 0;
        }

        v91 = 0x277CCA000uLL;
        [v122 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v159), v153}];
LABEL_203:
        if (v195)
        {
          duration = [call duration];
          v161 = [(VCAggregatorMultiway *)self RTPeriod]* duration;
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v201], @"NACKS", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v202], @"NACKF", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v203], @"NACKFOT", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v213], @"UNACKS", v194);
          v162 = 0.0;
          v163 = 0.0;
          if (v161)
          {
            v163 = v213 / v161;
          }

          v91 = 0x277CCA000uLL;
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v163], @"UNACKSRATE", v194);
          if (v161)
          {
            v162 = v201 / v161;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v162], @"NACKSRATE", v194);
          v164 = 0.0;
          v165 = 0.0;
          if (v161)
          {
            v165 = v202 / v161;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v165], @"NACKFRATE", v194);
          if (v161)
          {
            v164 = v203 / v161;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v164], @"NACKFOTRATE", v194);
          v166 = 0.0;
          v167 = 0.0;
          if (v161)
          {
            v167 = v257 / v161;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v167], @"NACKFASSMRTX", v194);
          if (v161)
          {
            v166 = v62 / v161;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v166], @"NACKLSCHFRTX", v194);
          if (v161)
          {
            v168 = v63 / v161;
          }

          else
          {
            v168 = 0.0;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v168], @"NACKFFASSMRTX", v194);
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v189 description] key:@"NACKAVGRSPT" streamGroup:v194];
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v188 description] key:@"NACKAVGLATET" streamGroup:v194];
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v187 description] key:@"NACKMBR" streamGroup:v194];
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v186 description] key:@"NACKRTXMBR" streamGroup:v194];
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v211 description] key:@"NACKPLRWRTX" streamGroup:v194];
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v210 description] key:@"NACKPLRWORTX" streamGroup:v194];
        }

        if ((v195 & 0x100000000) != 0)
        {
          duration2 = [call duration];
          v170 = [(VCAggregatorMultiway *)self RTPeriod]* duration2;
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v215], @"ULNACKRQCNT", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v204], @"ULNACKFLCNT", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v205], @"ULNACKCHCNT", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v206], @"ULNACKCMCNT", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v207], @"ULNACKNRCNT", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedLongLong:v200], @"ULNACKRPCNT", v194);
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedShort:v208], @"ULNACKRPMAXCNT", v194);
          v171 = 0.0;
          v172 = 0.0;
          if (v170)
          {
            v172 = v215 / v170;
          }

          v91 = 0x277CCA000uLL;
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v172], @"ULNACKRQRATE", v194);
          if (v170)
          {
            v171 = v204 / v170;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v171], @"ULNACKFLRATE", v194);
          v173 = 0.0;
          v174 = 0.0;
          if (v170)
          {
            v174 = v205 / v170;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v174], @"ULNACKCHRATE", v194);
          if (v170)
          {
            v173 = v206 / v170;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v173], @"ULNACKCMRATE", v194);
          v175 = 0.0;
          v176 = 0.0;
          if (v170)
          {
            v176 = v207 / v170;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v176], @"ULNACKNRRATE", v194);
          if (v170)
          {
            v175 = v208 / v170;
          }

          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [MEMORY[0x277CCABA8] numberWithDouble:v175], @"ULNACKRPRATE", v194);
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v185 description] key:@"ULNACKAVGRESP" streamGroup:v194];
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v184 description] key:@"ULNACKAVGLATE" streamGroup:v194];
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v183 description] key:@"ULNACKMBR" streamGroup:v194];
          [(VCAggregatorMultiway *)self storeToReport:v122 value:[(VCHistogram *)v182 description] key:@"ULNACKRBR" streamGroup:v194];
        }

        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedInt:{objc_msgSend(objc_msgSend(objc_msgSend(call, "streamGroupStats"), "objectForKeyedSubscript:", v194), "tickCount")}], @"COUNT", v194);
        -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", v122, [*(v91 + 2984) numberWithUnsignedInt:v313], @"ARBR", v194);

        v5 = v181 + 1;
      }

      while (v181 + 1 != v179);
      v179 = [obj countByEnumeratingWithState:&v326 objects:v345 count:16];
    }

    while (v179);
  }

  v177 = *MEMORY[0x277D85DE8];
}

- (void)addAverageSendBitRateStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d
{
  v6 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  if ([v6 tickCount])
  {
    v7 = @"ASBR";
    if (!d || (v7 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ASBR", d]) != 0)
    {
      if ([v6 tickCount])
      {
        [v6 averageSendBitrateSum];
        v9 = (v8 * 1000.0 / [v6 tickCount]);
      }

      else
      {
        v9 = 0;
      }

      v10 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v9];

      [telemetry setObject:v10 forKeyedSubscript:v7];
    }
  }
}

- (void)addUplinkVideoStreamGroupTelemetry:(id)telemetry streamGroupID:(id)d
{
  v7 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  if (![v7 tickCount])
  {
    return;
  }

  v8 = @"VTCFR";
  if (d && (v8 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTCFR", d]) == 0 || (!objc_msgSend(v7, "tickCount") ? (v11 = 0) : (v9 = objc_msgSend(v7, "videoFrameCapturedCounter") * 1000.0, v10 = objc_msgSend(v7, "tickCount"), v11 = (v9 / (-[VCAggregatorMultiway RTPeriod](self, "RTPeriod") * v10))), objc_msgSend(telemetry, "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v11), v8), d))
  {
    v12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ATXBR", d];
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = @"ATXBR";
  }

  if ([v7 tickCount])
  {
    [v7 averageTargetBitrateSum];
    v14 = (v13 * 1000.0 / [v7 tickCount]);
  }

  else
  {
    v14 = 0;
  }

  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v14), v12}];
  if (!d)
  {
    v15 = @"AVFSBR";
    goto LABEL_18;
  }

LABEL_15:
  v15 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVFSBR", d];
  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ([v7 tickCount])
  {
    [v7 averageFECSendBitrateSum];
    v17 = (v16 * 1000.0 / [v7 tickCount]);
  }

  else
  {
    v17 = 0;
  }

  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v17), v15}];
  if (d)
  {
LABEL_22:
    v18 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVMSBR", d];
    if (!v18)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v18 = @"AVMSBR";
LABEL_25:
  if ([v7 tickCount])
  {
    [v7 averageMediaSendBitrateSum];
    v20 = (v19 * 1000.0 / [v7 tickCount]);
  }

  else
  {
    v20 = 0;
  }

  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v20), v18}];
  if (!d)
  {
    v21 = @"AVHSBR";
    goto LABEL_32;
  }

LABEL_29:
  v21 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVHSBR", d];
  if (!v21)
  {
    goto LABEL_36;
  }

LABEL_32:
  if ([v7 tickCount])
  {
    [v7 averageHeaderSendBitrateSum];
    v23 = (v22 * 1000.0 / [v7 tickCount]);
  }

  else
  {
    v23 = 0;
  }

  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v23), v21}];
  if (d)
  {
LABEL_36:
    v24 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTAMDO", d];
    if (!v24)
    {
      return;
    }

    goto LABEL_39;
  }

  v24 = @"VTAMDO";
LABEL_39:
  if ([v7 tickCount])
  {
    v25 = [v7 averageMetadataTxBitrate] * 1000.0;
    v26 = (v25 / [v7 tickCount]);
  }

  else
  {
    v26 = 0;
  }

  v27 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v26];

  [telemetry setObject:v27 forKeyedSubscript:v24];
}

- (void)addUplinkStreamGroupTelemetry:(id)telemetry
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  streamGroupStats = self->_streamGroupStats;
  v6 = [(NSMutableDictionary *)streamGroupStats countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(streamGroupStats);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 unsignedIntValue] == 1 || objc_msgSend(v10, "unsignedIntValue") == 3 || objc_msgSend(v10, "unsignedIntValue") == 5 || objc_msgSend(v10, "unsignedIntValue") == 7 || objc_msgSend(v10, "unsignedIntValue") == 8 || objc_msgSend(v10, "unsignedIntValue") == 10)
        {
          [(VCAggregatorMultiway *)self addUplinkVideoStreamGroupTelemetry:telemetry streamGroupID:v10];
        }

        [(VCAggregatorMultiway *)self addAverageSendBitRateStreamGroupTelemetry:telemetry streamGroupID:v10];
      }

      v7 = [(NSMutableDictionary *)streamGroupStats countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reportNegotiatedCipherSuitesTelemetryForCall:(id)call report:(id)report
{
  if (self->super._isOneToOneMode)
  {
    v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_ABT", @"CPHRS"];
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", objc_msgSend(call, "authTagABTest")), v6}];
    v7 = 1;
    do
    {
      streamGroupStats = [call streamGroupStats];
      v9 = [streamGroupStats objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v7)}];
      v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%d", @"CPHRS", v7];
      [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v9, "cipherSuite")), v10}];
      v7 = (v7 + 1);
    }

    while (v7 != 11);
  }
}

- (void)reportVCRCMLStats:(id)stats
{
  if (self->_VCRCML_modelID)
  {
    VCRCML_modelID = self->_VCRCML_modelID;
  }

  else
  {
    VCRCML_modelID = &stru_284F80940;
  }

  [stats setObject:VCRCML_modelID forKeyedSubscript:@"VCRCMLMID"];
  if (self->_VCRCML_recipeID)
  {
    VCRCML_recipeID = self->_VCRCML_recipeID;
  }

  else
  {
    VCRCML_recipeID = &stru_284F80940;
  }

  [stats setObject:VCRCML_recipeID forKeyedSubscript:@"VCRCMLRID"];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_VCRCML_nIteration), @"VCRCMLNI"}];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_VCRCML_reportingGroup), @"VCRCMLRG"}];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_VCRCML_activeMLEngagedDuration), @"VCRCMLD"}];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_VCRCML_isMLEngaged), @"VCRCMLE"}];
  v7 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_VCRCML_targetBitrateAtTimeOfDisengagement];

  [stats setObject:v7 forKeyedSubscript:@"VCRCMLRCTBR"];
}

- (id)aggregatedCallReports
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  stateQueue = self->super._stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__VCAggregatorMultiway_aggregatedCallReports__block_invoke;
  v6[3] = &unk_278BD4D48;
  v6[4] = self;
  v6[5] = v3;
  dispatch_sync(stateQueue, v6);
  return v3;
}

uint64_t __45__VCAggregatorMultiway_aggregatedCallReports__block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) microFromPayload:0];
  v3 = v2;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v4 = 1368;
  obj = *(*(a1 + 32) + 1368);
  result = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v50;
    v41 = *v50;
    v42 = 1368;
    do
    {
      v8 = 0;
      do
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(a1 + 32) + v4) objectForKeyedSubscript:{*(*(&v49 + 1) + 8 * v8), v41, v42}];
        if ([v9 duration] >= 2)
        {
          if ([v9 downlinkOptedInRateUpdateCounter])
          {
            v10 = [v9 downlinkOptedInRateSum];
            v11 = v10 / [v9 downlinkOptedInRateUpdateCounter];
          }

          else
          {
            v11 = 0;
          }

          if ([v9 actualBitrateUpdateCounter])
          {
            v12 = [v9 actualBitrateSum];
            v13 = (v12 / [v9 actualBitrateUpdateCounter]) * 1000.0;
          }

          else
          {
            v13 = 0.0;
          }

          [*(a1 + 32) timeWeightedNumberOfParticipantsWebOnly:0];
          v15 = v14;
          v16 = 0;
          if (v14 > 0.0)
          {
            [*(a1 + 32) timeWeightedNumberOfParticipantsWebOnly:1];
            v16 = (v17 * 10000.0 / v15);
          }

          v48.receiver = *(a1 + 32);
          v48.super_class = VCAggregatorMultiway;
          v18 = objc_msgSendSuper2(&v48, sel_dispatchedAggregatedCallReport);
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(*(a1 + 32), "RTPeriod") * objc_msgSend(v9, "duration")), @"DRTN"}];
          [objc_msgSend(v9 "remoteThermalDurations")];
          [v18 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"remoteThermalDurations"), "description"), @"RTHERMDUR"}];
          [*(a1 + 32) addStreamGroupTelemetryForCall:v9 callReport:v18];
          [*(a1 + 32) addThermalMetricsToReportDictionary:v18];
          [v9 addStreamGroupTelemetry:v18];
          [v9 addControlChannelTelemetry:v18 timestamp:v3];
          [*(a1 + 32) addUplinkStreamGroupTelemetry:v18];
          [*(a1 + 32) addAudioStreamTimestampJumpDurationToReport:v18];
          [*(a1 + 32) addVPCTelemetry:v18];
          [objc_msgSend(*(a1 + 32) "captionsDataCollector")];
          [objc_msgSend(*(a1 + 32) "mediaAnalyzerDataCollector")];
          [*(a1 + 32) addClientExperimentsToReport:v18];
          [*(a1 + 32) addFECStatsHolderKPIs:v18 usingFECStatsHolder:objc_msgSend(v9 reportFrameSizeTelemetry:"fecStatsHolder") reportLevels:{0, 1}];
          [*(a1 + 32) addSessionOperatingModeForCallReport:v18];
          [v18 setObject:*(*(a1 + 32) + 3064) forKeyedSubscript:@"VCSPUUID"];
          [v18 setObject:&unk_284FA54C8 forKeyedSubscript:@"RVER"];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v11), @"AOBR"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v13), @"ARBR"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v9, "decryptionTimeoutCount")), @"DCRTMTCNT"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v9, "downlinkOptedInBitrateSwitchCount")), @"DTBRSWCNT"}];
          v19 = MEMORY[0x277CCABA8];
          [v9 connectionTime];
          [v18 setObject:objc_msgSend(v19 forKeyedSubscript:{"numberWithUnsignedInt:", (v20 * 1000.0)), @"TMACPTINV"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", objc_msgSend(v9, "isAudioEnabled")), @"AUDEN"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", objc_msgSend(v9, "isVideoEnabled")), @"VIDEN"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", objc_msgSend(v9, "isScreenEnabled")), @"SCRNEN"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", v15), @"NUMPARTS"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v16), @"GNDLUP"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(*(a1 + 32), "numberOfWebParticipants")), @"GNDLUCNT"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", objc_msgSend(v9, "hasWebParticipant")), @"GNDLU"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", objc_msgSend(v9, "isExpanseEnabled")), @"EXPE"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", *(*(a1 + 32) + 432)), @"RTXNacksEnabled"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", *(*(a1 + 32) + 433)), @"RTXNacksDelayedEnabled"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", *(*(a1 + 32) + 428)), @"RTXNacksConfigVersion"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", *(*(a1 + 32) + 472)), @"RtcpForLoss"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", *(*(a1 + 32) + 473)), @"RtcpForLtrAck"}];
          v21 = MEMORY[0x277CCABA8];
          [v9 cameraCompositionTotalDurationMsec];
          [v18 setObject:objc_msgSend(v21 forKeyedSubscript:{"numberWithDouble:"), @"RCCDRN"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", *(*(a1 + 32) + 2764)), @"BSIDX"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", *(*(a1 + 32) + 1044)), @"EJBAdEn"}];
          [v18 setObject:*(*(a1 + 32) + 488) forKeyedSubscript:@"GECO_ABT"];
          [v18 setObject:objc_msgSend(v9 forKeyedSubscript:{"remoteOSBuild"), @"REMBUILD"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(*(a1 + 32) + 2416)), @"SESSW"}];
          [v18 setObject:objc_msgSend(v9 forKeyedSubscript:{"weeklyDUID"), @"DUID"}];
          [v18 setObject:objc_msgSend(*(*(a1 + 32) + 3128) forKeyedSubscript:{"componentsJoinedByString:", @", "), @"VTSCD"}];
          [v18 setObject:objc_msgSend(*(*(a1 + 32) + 3136) forKeyedSubscript:{"componentsJoinedByString:", @", "), @"VTSCBD"}];
          [v9 screenControlTotalDurationMsec];
          if (v22 != 0.0)
          {
            [v18 setObject:objc_msgSend(objc_msgSend(*(a1 + 32) forKeyedSubscript:{"dispatchedAggregatedSessionReport"), "objectForKeyedSubscript:", @"THERMDUR", @"THERMDUR"}];
          }

          [v18 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"screenControlDurationsMsec"), "componentsJoinedByString:", @", "), @"SCDUR"}];
          [v18 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"screenShareDurationsMsec"), "componentsJoinedByString:", @", "), @"SSDUR"}];
          v23 = *(a1 + 32);
          if (v23[308])
          {
            [v18 setObject:objc_msgSend(v23[308] forKeyedSubscript:{"description"), @"PIPDUR"}];
            v23 = *(a1 + 32);
          }

          [v23 reportNegotiatedCipherSuitesTelemetryForCall:v9 report:v18];
          [v18 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"cellularRemoteSliceStatusDuration"), "description"), @"CRSS"}];
          v24 = MEMORY[0x277CCABA8];
          if (*(*(a1 + 32) + 532) == 1)
          {
            [v9 screenControlTotalDurationMsec];
            v25 = [v24 numberWithDouble:?];
            v26 = v18;
            v27 = @"ULSCDRN";
          }

          else
          {
            v25 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v9, "sessionSynchronizerResponseFailure")}];
            v26 = v18;
            v27 = @"SIRF";
          }

          [v26 setObject:v25 forKeyedSubscript:v27];
          [v18 setObject:objc_msgSend(*(*(a1 + 32) + 1088) forKeyedSubscript:{"description"), @"REDO"}];
          v28 = *(a1 + 32);
          if (v28[2354] == 1)
          {
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v28[2356]), @"FULLCAP"}];
            v28 = *(a1 + 32);
          }

          [v18 addEntriesFromDictionary:{objc_msgSend(v28, "reportingClientExperimentSettingsDictionary")}];
          if ([v9 reportRateControlExperimentRemote])
          {
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", objc_msgSend(v9, "rateControlExperimentVersionRemote")), @"RCEV"}];
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", objc_msgSend(v9, "rateControlExperimentGroupIndexRemote")), @"RCEG"}];
          }

          if ([v9 rateControlSmartBrakeTrialVersionRemote])
          {
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v9, "rateControlSmartBrakeTrialVersionRemote")), @"SBVERS"}];
          }

          if ([v9 reportNetworkCapabilities])
          {
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v9, "isUplinkRetransmissionEnabled")), @"RULRTX"}];
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v9, "isRemoteQUICPod")), @"RTLE"}];
            if ([v9 remoteMediaQueueSchedulePolicy])
            {
              [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v9, "remoteMediaQueueSchedulePolicy")), @"RMQSchP"}];
            }
          }

          if ([v9 startDate] && *(*(a1 + 32) + 384))
          {
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", objc_msgSend(v9, "startDate")), @"StartDate"}];
            v29 = MEMORY[0x277CCABA8];
            [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
            [v18 setObject:objc_msgSend(v29 forKeyedSubscript:{"numberWithInt:", v30), @"EndDate"}];
          }

          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", objc_msgSend(v9, "mkmRecoveryAttemptCount")), @"MKMRA"}];
          [v9 addRTStatsTelemetry:v18];
          v31 = *(a1 + 32);
          if (*(v31 + 368) && *(v31 + 376) == 1 && *(v31 + 408) == 1)
          {
            v32 = _CFXPCCreateXPCObjectFromCFObject();
            v33 = *(*(a1 + 32) + 368);
            nw_activity_submit_metrics();
            xpc_release(v32);
            v31 = *(a1 + 32);
          }

          [v31 reportTestName:v18];
          [objc_msgSend(v9 "mlEnhance")];
          [objc_msgSend(v9 "mlEnhance")];
          if ([*(a1 + 32) mlEnhanceStatus] == -1)
          {
            [v18 setObject:&unk_284FA54E0 forKeyedSubscript:@"MLSFENB"];
          }

          [*(*(a1 + 32) + 2888) updateReport:v18];
          [*(a1 + 32) addVideoFeatureStatus:v18];
          [*(a1 + 32) reportSpatialAudioSupport:v18];
          [*(a1 + 32) reportVCRCMLStats:v18];
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v34 = [v9 thermalDataCollectors];
          v35 = [v34 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v45;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v45 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                [*(*(&v44 + 1) + 8 * i) updateReport:v18];
              }

              v36 = [v34 countByEnumeratingWithState:&v44 objects:v53 count:16];
            }

            while (v36);
          }

          [v18 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"cellularSliceStatusDuration"), "description"), @"CSS"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", *(*(a1 + 32) + 3076)), @"FECHDRVER"}];
          [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithChar:", *(*(a1 + 32) + 834)), @"AFBUPENB"}];
          v39 = *(a1 + 32);
          if (*(v39 + 3080) == 1)
          {
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", 1), @"VCSCACAMTX"}];
            v39 = *(a1 + 32);
          }

          if (*(v39 + 3081) == 1)
          {
            [v18 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", 1), @"VCSCACAMRX"}];
          }

          if ([objc_msgSend(v9 "matchedOrientationDurations")])
          {
            [objc_msgSend(v9 "mismatchedOrientationBucketed")];
          }

          if ([objc_msgSend(v9 "matchedOrientationDurations")])
          {
            [objc_msgSend(v9 "matchedOrientationBucketed")];
          }

          [v18 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"mismatchedOrientationBucketed"), "description"), @"ORTNMismatched"}];
          [v18 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"matchedOrientationBucketed"), "description"), @"ORTNMatched"}];
          [v18 addEntriesFromDictionary:*(*(a1 + 32) + 3088)];
          [*(a1 + 40) addObject:v18];
          v7 = v41;
          v4 = v42;
        }

        ++v8;
      }

      while (v8 != v6);
      result = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      v6 = result;
    }

    while (result);
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addCellByteCountStats:(id)stats
{
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellTxDataBytes), 4, &unk_284FA5468), @"ACTXDB"}];
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellRxDataBytes), 4, &unk_284FA5468), @"ACRXDB"}];
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellDupTxDataBytes), 4, &unk_284FA5468), @"ACDTXDB"}];
  v5 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalCellDupRxDataBytes], 4, &unk_284FA5468);

  [stats setObject:v5 forKeyedSubscript:@"ACDRXDB"];
}

- (void)addPerStreamGroupIDStats:(id)stats
{
  v96 = *MEMORY[0x277D85DE8];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = self->_streamGroupStats;
  v88 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (v88)
  {
    v87 = *v92;
    v5 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v92 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v91 + 1) + 8 * i);
        if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7), "tickCount"}])
        {
          v89 = i;
          v8 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7];
          [v8 finalizeStats];
          tickCount = [v8 tickCount];
          rTPeriod = [(VCAggregatorMultiway *)self RTPeriod];
          -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "tickCount")}], @"COUNT", v7);
          if ([v7 unsignedIntValue] == 2 || objc_msgSend(v7, "unsignedIntValue") == 4 || objc_msgSend(v7, "unsignedIntValue") == 6)
          {
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "totalRTPUplinkIngressAudioPackets")}], @"RTPULAP", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "totalRTPDownlinkIngressAudioPackets")}], @"RTPDLIAP", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "totalRTPDownlinkIngressNonDupAudioPackets")}], @"RTPDLINDP", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "totalRTPDownlinkEgressAudioPackets")}], @"RTPDLEAP", v7);
            if (v7)
            {
              v11 = [*(v5 + 3232) stringWithFormat:@"%@_%@", @"AAEMTBR", v7];
              if (!v11)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v11 = @"AAEMTBR";
            }

            if ([v8 tickCount])
            {
              [v8 averageAudioMediaTxNoRedBitrate];
              v13 = (v12 / [v8 tickCount]);
            }

            else
            {
              v13 = 0;
            }

            [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v13), v11}];
            if (v7)
            {
LABEL_18:
              v14 = [*(v5 + 3232) stringWithFormat:@"%@_%@", @"AADMRBR", v7];
              if (!v14)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v14 = @"AADMRBR";
            }

            if ([v8 tickCount])
            {
              [v8 averageAudioMediaRxDecodeBitrate];
              v16 = (v15 / [v8 tickCount]);
            }

            else
            {
              v16 = 0;
            }

            [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v16), v14}];
          }

LABEL_25:
          v90 = rTPeriod * tickCount;
          if ([v7 unsignedIntValue] == 1 || objc_msgSend(v7, "unsignedIntValue") == 3 || objc_msgSend(v7, "unsignedIntValue") == 5 || objc_msgSend(v7, "unsignedIntValue") == 7 || objc_msgSend(v7, "unsignedIntValue") == 8 || objc_msgSend(v7, "unsignedIntValue") == 10)
          {
            idrReceivedCount = [v8 idrReceivedCount];
            v18 = rTPeriod * tickCount;
            if (v90)
            {
              v19 = (idrReceivedCount * 1000.0 / v90);
            }

            else
            {
              v19 = 0;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:idrReceivedCount], @"IDRRCVDC", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v19], @"IDRRCVDR", v7);
            idrSentCount = [v8 idrSentCount];
            if (v90)
            {
              v21 = (idrSentCount * 1000.0 / v90);
            }

            else
            {
              v21 = 0;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:idrSentCount], @"VTIDRS", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v21], @"VTIDRSR", v7);
            [objc_msgSend(v8 "videoTxFecData")];
            totalFIRCount = [v8 totalFIRCount];
            v23 = totalFIRCount;
            if (v90)
            {
              v24 = (totalFIRCount * 1000.0 / v90);
              v25 = ([v8 totalFIRFailSafeCount] * 1000.0 / v90);
            }

            else
            {
              v24 = 0;
              v25 = 0;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v23], @"FIRFC", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v8, "totalFIRFailSafeCount")}], @"FIRFSFC", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v24], @"FIRFR", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v25], @"FIRFSFR", v7);
            if (v90)
            {
              v26 = ([v8 lateKeyFrameAssembledCount] * 1000.0 / v90);
              v27 = ([v8 latePFrameAssembledCount] * 1000.0 / v90);
            }

            else
            {
              v26 = 0;
              v27 = 0;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v26], @"VPBLKFAR", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v27], @"VPBLPFAR", v7);
            totalFIRDemandCount = [v8 totalFIRDemandCount];
            if (v18)
            {
              v29 = (totalFIRDemandCount * 1000.0 / v18);
            }

            else
            {
              v29 = 0;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:totalFIRDemandCount], @"VPBNRFC", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v29], @"VPBNRFR", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[VCAggregatorMultiway significantVideoStallCount:](self, "significantVideoStallCount:", v7)}], @"NSVST", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "videoDegradedTotalCounter")}], @"PCSWCNT", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v8, "videoPlayerDecodeAlarmCount")}], @"VPDECAC", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v8, "videoPlayerDisplayAlarmCount")}], @"VPDISAC", v7);
            [objc_msgSend(v8 "videoTierDurationData")];
            [objc_msgSend(v8 "firResponseTime")];
            if ([v8 tickCount])
            {
              averageVideoTxFecBitrate = [v8 averageVideoTxFecBitrate];
              v31 = averageVideoTxFecBitrate / [v8 tickCount];
            }

            else
            {
              v31 = 0;
            }

            if ([v8 tickCount])
            {
              averageVideoRxFecBitrate = [v8 averageVideoRxFecBitrate];
              v33 = averageVideoRxFecBitrate / [v8 tickCount];
            }

            else
            {
              v33 = 0;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v33], @"AVFRBR", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v31], @"AVFSBR", v7);
            if (v7)
            {
              v34 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVTRBR", v7];
              if (!v34)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v34 = @"AVTRBR";
            }

            if ([v8 tickCount])
            {
              averageVideoBitrate = [v8 averageVideoBitrate];
              v36 = averageVideoBitrate / [v8 tickCount];
            }

            else
            {
              v36 = 0;
            }

            [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v36), v34}];
            if (v7)
            {
LABEL_60:
              v37 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVMRBR", v7];
              if (!v37)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v37 = @"AVMRBR";
            }

            if ([v8 tickCount])
            {
              averageVideoRxMediaBitrate = [v8 averageVideoRxMediaBitrate];
              v39 = averageVideoRxMediaBitrate / [v8 tickCount];
            }

            else
            {
              v39 = 0;
            }

            [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v39), v37}];
            if (v7)
            {
LABEL_67:
              v40 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVDMRBR", v7];
              if (!v40)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v40 = @"AVDMRBR";
            }

            if ([v8 tickCount])
            {
              averageVideoRxDecoderMediaBitrate = [v8 averageVideoRxDecoderMediaBitrate];
              v42 = averageVideoRxDecoderMediaBitrate / [v8 tickCount];
            }

            else
            {
              v42 = 0;
            }

            [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v42), v40}];
            if (v7)
            {
LABEL_74:
              v43 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVMSBR", v7];
              if (!v43)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v43 = @"AVMSBR";
            }

            if ([v8 tickCount])
            {
              v44 = [v8 averageVideoTxMediaBitrate] * 1000.0;
              v45 = (v44 / [v8 tickCount]);
            }

            else
            {
              v45 = 0;
            }

            [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v45), v43}];
            if (v7)
            {
LABEL_81:
              v46 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVHSBR", v7];
              if (!v46)
              {
                goto LABEL_88;
              }
            }

            else
            {
              v46 = @"AVHSBR";
            }

            if ([v8 tickCount])
            {
              v47 = [v8 averageVideoTxHeaderBitrate] * 1000.0;
              v48 = (v47 / [v8 tickCount]);
            }

            else
            {
              v48 = 0;
            }

            [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v48), v46}];
LABEL_88:
            [objc_msgSend(v8 "videoPlayerAVHostTimeDelta")];
            [objc_msgSend(v8 "videoPlayerAVSyncOffsetData")];
            [objc_msgSend(v8 "videoPlayerDisplayData")];
            [objc_msgSend(v8 "transmitterAVHostTimeData")];
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "totalRTPUplinkIngressVideoPackets")}], @"RTPULVP", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "totalRTPDownlinkIngressVideoPackets")}], @"RTPDLIVP", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "totalRTPDownlinkEgressVideoPackets")}], @"RTPDLEVP", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "totalRTPDownlinkIngressNonDupVideoPackets")}], @"RTPDLINDP", v7);
            v49 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7), "firReceivedCount"}];
            if (v90)
            {
              v50 = v49 * 1000.0 / v90;
            }

            else
            {
              v50 = 0.0;
            }

            v51 = [MEMORY[0x277CCABA8] numberWithDouble:v50];
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedInt:v49], @"FIRRCVDC", v7);
            [(VCAggregatorMultiway *)self storeToReport:stats value:v51 key:@"FIRRCVDR" streamGroup:v7];
            if (v7)
            {
              v52 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTEFR", v7];
              if (!v52)
              {
                goto LABEL_99;
              }
            }

            else
            {
              v52 = @"VTEFR";
            }

            if ([v8 encodedFrameReportedCount])
            {
              v53 = [v8 encodedFrameSum] * 1000.0;
              encodedFrameReportedCount = [v8 encodedFrameReportedCount];
              v55 = (v53 / (encodedFrameReportedCount * [(VCAggregatorMultiway *)self RTPeriod]));
            }

            else
            {
              v55 = 0;
            }

            [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v55), v52}];
LABEL_99:
            v56 = 0;
            v5 = 0x277CCA000uLL;
            do
            {
              [stats setObject:objc_msgSend(objc_msgSend(objc_msgSend(v8 forKeyedSubscript:{"mlEnhancedPercentInputResolutions"), "objectAtIndexedSubscript:", v56), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%d", @"MLRIFP", v7, v56)}];
              [stats setObject:objc_msgSend(objc_msgSend(objc_msgSend(v8 forKeyedSubscript:{"mlEnhancedPercentOutputResolutions"), "objectAtIndexedSubscript:", v56), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%d", @"MLROFP", v7, v56)}];
              ++v56;
            }

            while (v56 != 4);
          }

          if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7), "isRTXTelemetryAvailable"}])
          {
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "nacksSent")}], @"NACKS", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "nacksFulfilled")}], @"NACKF", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "nacksFulfilledOnTime")}], @"NACKFOT", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7), "uniqueNacksSent")}], @"UNACKS", v7);
            v57 = MEMORY[0x277CCABA8];
            v58 = 0.0;
            v59 = 0.0;
            if (v90)
            {
              v59 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7, 0.0), "uniqueNacksSent"}] / v90;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v57 numberWithDouble:v59], @"UNACKSRATE", v7);
            v60 = MEMORY[0x277CCABA8];
            if (v90)
            {
              v58 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7), "nacksSent"}] / v90;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v60 numberWithDouble:v58], @"NACKSRATE", v7);
            v61 = MEMORY[0x277CCABA8];
            v62 = 0.0;
            v63 = 0.0;
            if (v90)
            {
              v63 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7, 0.0), "nacksFulfilled"}] / v90;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v61 numberWithDouble:v63], @"NACKFRATE", v7);
            v64 = MEMORY[0x277CCABA8];
            if (v90)
            {
              v62 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7), "nacksFulfilledOnTime"}] / v90;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v64 numberWithDouble:v62], @"NACKFOTRATE", v7);
            v65 = MEMORY[0x277CCABA8];
            v66 = 0.0;
            v67 = 0.0;
            if (v90)
            {
              v67 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7, 0.0), "lateFramesScheduledWithRTXCount"}] / v90;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v65 numberWithDouble:v67], @"NACKLSCHFRTX", v7);
            v68 = MEMORY[0x277CCABA8];
            if (v90)
            {
              v66 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7), "assembledFramesWithRTXPacketsCount"}] / v90;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v68 numberWithDouble:v66], @"NACKFASSMRTX", v7);
            v69 = MEMORY[0x277CCABA8];
            if (v90)
            {
              v70 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7), "failedToAssembleFramesWithRTXPacketsCount"}] / v90;
            }

            else
            {
              v70 = 0.0;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v69 numberWithDouble:v70], @"NACKFFASSMRTX", v7);
          }

          i = v89;
          if ([(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7]&& *([(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7]+ 8) == 1)
          {
            v71 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v7), "tickCount"}];
            v72 = [(VCAggregatorMultiway *)self RTPeriod]* v71;
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{*(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7) + 16)}], @"ULNACKRQCNT", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{*(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7) + 24)}], @"ULNACKFLCNT", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{*(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7) + 32)}], @"ULNACKCHCNT", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{*(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7) + 40)}], @"ULNACKCMCNT", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{*(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7) + 48)}], @"ULNACKNRCNT", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{*(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7) + 56)}], @"ULNACKRPCNT", v7);
            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [MEMORY[0x277CCABA8] numberWithUnsignedShort:{*(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v7) + 64)}], @"ULNACKRPMAXCNT", v7);
            v73 = MEMORY[0x277CCABA8];
            v74 = 0.0;
            v75 = 0.0;
            if (v72)
            {
              v75 = *([(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7, 0.0]+ 16) / v72;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v73 numberWithDouble:v75], @"ULNACKRQRATE", v7);
            v76 = MEMORY[0x277CCABA8];
            if (v72)
            {
              v74 = *([(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7]+ 24) / v72;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v76 numberWithDouble:v74], @"ULNACKFLRATE", v7);
            v77 = MEMORY[0x277CCABA8];
            v78 = 0.0;
            v79 = 0.0;
            v5 = 0x277CCA000;
            if (v72)
            {
              v79 = *([(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7, 0.0]+ 32) / v72;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v77 numberWithDouble:v79], @"ULNACKCHRATE", v7);
            v80 = MEMORY[0x277CCABA8];
            if (v72)
            {
              v78 = *([(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7]+ 40) / v72;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v80 numberWithDouble:v78], @"ULNACKCMRATE", v7);
            v81 = MEMORY[0x277CCABA8];
            v82 = 0.0;
            v83 = 0.0;
            if (v72)
            {
              v83 = *([(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7, 0.0]+ 48) / v72;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v81 numberWithDouble:v83], @"ULNACKNRRATE", v7);
            v84 = MEMORY[0x277CCABA8];
            if (v72)
            {
              v82 = *([(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7]+ 56) / v72;
            }

            -[VCAggregatorMultiway storeToReport:value:key:streamGroup:](self, "storeToReport:value:key:streamGroup:", stats, [v84 numberWithDouble:v82], @"ULNACKRPRATE", v7);
            i = v89;
          }

          continue;
        }
      }

      v88 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v91 objects:v95 count:16];
    }

    while (v88);
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (void)addNetworkCapabilityInfoToReport:(id)report
{
  if (self->_reportNetworkCapabilities)
  {
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_isUplinkRetransmissionEnabled), @"RULRTX"}];
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->super._isRemoteQUICPod), @"RTLE"}];
    if (self->super._remoteMediaQueueSchedulePolicy)
    {
      [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"RMQSchP"}];
    }
  }

  gecoVersion = self->super._gecoVersion;

  [report setObject:gecoVersion forKeyedSubscript:@"GECO_ABT"];
}

- (void)addAdaptiveLearningTelemetry:(id)telemetry
{
  if (self->super._isOneToOneMode)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->super._initialRampUpTime), @"IRUT"}];
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._initialBitrateDelta), @"ISBD"}];
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._initialBitrate), @"IBTR"}];
    v6 = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAggregator adaptiveLearningState](self, "adaptiveLearningState")}];

    [telemetry setObject:v6 forKeyedSubscript:@"MLRN"];
  }
}

- (void)updateErrorCode:(id)code withType:(unsigned __int16)type
{
  v21 = *MEMORY[0x277D85DE8];
  if (code)
  {
    if (type == 1)
    {
      self->super._callErrorCode = [objc_msgSend(code objectForKeyedSubscript:{@"CallEndError", "integerValue"}];
      self->super._callDetailedErrorCode = [objc_msgSend(code objectForKeyedSubscript:{@"Term", "integerValue"}];
      self->super._noRemoteAtCallEnd = [objc_msgSend(code objectForKeyedSubscript:{@"NoRemote", "integerValue"}];
      self->super._remoteNoRemoteAtCallEnd = [objc_msgSend(code objectForKeyedSubscript:{@"RemoteNoRemote", "integerValue"}];
      algosScorerDefault = self->super._algosScorerDefault;
      [(VCAggregator *)self microFromPayload:code];
      [(VCAlgosStreamingScorer *)algosScorerDefault addCallFailureWithTime:self->super._callDetailedErrorCode detailedErrorCode:?];
      algosScorerAlternate = self->super._algosScorerAlternate;
      [(VCAggregator *)self microFromPayload:code];
      [(VCAlgosStreamingScorer *)algosScorerAlternate addCallFailureWithTime:self->super._callDetailedErrorCode detailedErrorCode:?];
      algosScorerBounded = self->super._algosScorerBounded;
      [(VCAggregator *)self microFromPayload:code];
      [(VCAlgosStreamingScorer *)algosScorerBounded addCallFailureWithTime:self->super._callDetailedErrorCode detailedErrorCode:?];
      if (VRTraceGetErrorLogLevelForModule("") >= 8)
      {
        v9 = VRTraceErrorLogLevelToCSTR(8u);
        v10 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            callDetailedErrorCode = self->super._callDetailedErrorCode;
            v13 = 136315906;
            v14 = v9;
            v15 = 2080;
            v16 = "[VCAggregatorMultiway updateErrorCode:withType:]";
            v17 = 1024;
            v18 = 8145;
            v19 = 1024;
            v20 = callDetailedErrorCode;
            _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Call termination reason=%d", &v13, 0x22u);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          [VCAggregatorMultiway updateErrorCode:v9 withType:&self->super._callDetailedErrorCode];
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateConnectionTelemetry:(id)telemetry
{
  v23 = *MEMORY[0x277D85DE8];

  v5 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"REMBUILD", "copy"}];
  self->super._remoteOSBuild = v5;
  [(MultiwaySegment *)self->_currentUplinkSegment setRemoteOSBuild:v5];
  [(MultiwaySegment *)self->_currentDownlinkSegment setRemoteOSBuild:self->super._remoteOSBuild];
  self->super._REDState = [objc_msgSend(telemetry objectForKeyedSubscript:{@"RedState", "integerValue"}];
  self->super._wifiAssistState = [objc_msgSend(telemetry objectForKeyedSubscript:{@"WAState", "unsignedCharValue"}];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR(8u);
    v7 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        REDState = self->super._REDState;
        wifiAssistState = self->super._wifiAssistState;
        v13 = 136316162;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCAggregatorMultiway updateConnectionTelemetry:]";
        v17 = 1024;
        v18 = 8156;
        v19 = 1024;
        v20 = REDState;
        v21 = 1024;
        v22 = wifiAssistState;
        _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: RED State=%d, wifiAssistState State=%d", &v13, 0x28u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v11 = self->super._REDState;
      v12 = self->super._wifiAssistState;
      v13 = 136316162;
      v14 = v6;
      v15 = 2080;
      v16 = "[VCAggregatorMultiway updateConnectionTelemetry:]";
      v17 = 1024;
      v18 = 8156;
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      _os_log_debug_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: RED State=%d, wifiAssistState State=%d", &v13, 0x28u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioTxStatsWithPayload:(id)payload
{
  [(VCAggregator *)self microFromPayload:?];
  v6 = v5;
  lastAudioTierStatsUpdate = self->super._lastAudioTierStatsUpdate;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  currentAudioCodecPayload = self->super._currentAudioCodecPayload;
  v11 = lastAudioTierStatsUpdate;
  currentAudioMediaBitrate = self->super._currentAudioMediaBitrate;
  LOWORD(v12) = currentAudioCodecPayload;
  currentREDPayloadBitrate = self->super._currentREDPayloadBitrate;
  HIDWORD(v12) = currentAudioMediaBitrate;
  LODWORD(v13) = currentREDPayloadBitrate;
  [self->_currentUplinkSegment updateAudioCodecAndMediaBitrateWithPayload:payload andCurrentTime:&v11 andStats:v6];
  [(VCAggregatorMultiway *)self updateAudioCodecAndMediaBitrate:payload currentTime:v6];
}

- (void)addConfigUpdatedStatsToSessionReport:(id)report
{
  v7[5] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._stateQueue);
  v6[0] = @"VCSMI";
  v7[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_initialSessionMode];
  v6[1] = @"VCSMF";
  v7[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_currentSessionMode];
  v6[2] = @"VCSMH";
  v7[2] = [(VCHistogram *)self->_sessionModeHistogram description];
  v6[3] = @"VCSMSC";
  v7[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_sessionModeSwitchCount];
  v6[4] = @"VCSOC";
  v7[4] = [MEMORY[0x277CCABA8] numberWithBool:self->_outOfProcessCodecsEnabled];
  [report addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, v6, 5)}];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addDownlinkParticipantStats:(id)stats currentTime:(double)time
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(VCDataMLEnhance);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_downlinkParticipantStats allValues];
  v9 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [objc_msgSend(v13 "mlEnhance")];
        -[VCDataMLEnhance accumulate:](v7, "accumulate:", [v13 mlEnhance]);
      }

      v10 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(VCDataMLEnhance *)v7 finalize:time];
  [(VCDataMLEnhance *)v7 updateReport:stats];
  status = [(VCDataMLEnhance *)v7 status];
  v15 = MEMORY[0x277CCABA8];
  if (status == 1)
  {
    mlEnhanceStatus = 1;
  }

  else
  {
    mlEnhanceStatus = [(VCAggregator *)self mlEnhanceStatus];
  }

  [stats setObject:objc_msgSend(v15 forKeyedSubscript:{"numberWithInt:", mlEnhanceStatus), @"MLSFENB"}];

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)addHomogeneousBuildStat
{
  v24 = *MEMORY[0x277D85DE8];
  if (![(VCAggregator *)self osBuild])
  {
    [VCAggregatorMultiway addHomogeneousBuildStat];
LABEL_26:
    v4 = v22;
    goto LABEL_23;
  }

  if ([(NSString *)[(VCAggregator *)self osBuild] length]<= 2)
  {
    [VCAggregatorMultiway addHomogeneousBuildStat];
    goto LABEL_26;
  }

  intValue = [[(NSString *)[(VCAggregator *)self osBuild] substringToIndex:2] intValue];
  v4 = 1;
  if ([(NSString *)[(VCAggregator *)self deviceType] rangeOfString:@"Mac" options:1]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = intValue;
  }

  else
  {
    v5 = intValue - 2;
  }

  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  calls = self->_calls;
  v7 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(calls);
        }

        v11 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
        if (![v11 remoteOSBuild])
        {
          [VCAggregatorMultiway addHomogeneousBuildStat];
          goto LABEL_26;
        }

        if ([objc_msgSend(v11 "remoteOSBuild")] <= 2)
        {
          [VCAggregatorMultiway addHomogeneousBuildStat];
          goto LABEL_26;
        }

        v12 = [objc_msgSend(objc_msgSend(v11 "remoteOSBuild")];
        v13 = [objc_msgSend(v11 "remoteDeviceType")];
        v14 = v12 - 2;
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v12;
        }

        if (v14 < v5 && v14 != 0)
        {
          v4 = 0;
          goto LABEL_23;
        }
      }

      v8 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v4 = 1;
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)aggregatedSessionReport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__VCAggregatorMultiway_aggregatedSessionReport__block_invoke;
  v5[3] = &unk_278BD4C10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__VCAggregatorMultiway_aggregatedSessionReport__block_invoke(uint64_t a1)
{
  v235 = *MEMORY[0x277D85DE8];
  v214.receiver = *(a1 + 32);
  v214.super_class = VCAggregatorMultiway;
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSendSuper2(&v214, sel_dispatchedAggregatedSessionReport);
  v2 = *(a1 + 32);
  v3 = v2[38];
  [v2 microFromPayload:0];
  [v3 endWithTime:0 streamType:?];
  v4 = *(a1 + 32);
  v5 = v4[39];
  [v4 microFromPayload:0];
  [v5 endWithTime:0 streamType:?];
  v6 = *(a1 + 32);
  v7 = v6[40];
  [v6 microFromPayload:0];
  [v7 endWithTime:0 streamType:?];
  v8 = *(a1 + 32);
  v9 = *(v8 + 2104);
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v11 = (*(v8 + 2096) / v9) * 1000.0;
  }

  v12 = *(v8 + 2120);
  if (v12)
  {
    v10 = (*(v8 + 2112) / v12) * 1000.0;
  }

  v13 = *(v8 + 2136);
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    v15 = (*(v8 + 2128) / v13) * 1000.0;
  }

  v16 = *(v8 + 2152);
  if (v16)
  {
    v14 = (*(v8 + 2144) / v16) * 1000.0;
  }

  v17 = *(v8 + 2168);
  v18 = 0.0;
  v19 = 0.0;
  if (v17)
  {
    v19 = (*(v8 + 2160) / v17) * 1000.0;
  }

  v20 = *(v8 + 2184);
  if (v20)
  {
    v18 = (*(v8 + 2176) / v20);
  }

  v184 = v19;
  v21 = *(v8 + 2200);
  if (v21)
  {
    v181 = (*(v8 + 2192) / v21);
  }

  else
  {
    v181 = 0;
  }

  v22 = *(v8 + 2216);
  v23 = 0.0;
  v24 = 0.0;
  v25 = v22 + *(v8 + 2208);
  if (v25)
  {
    v24 = v22 * 100.0 / v25;
  }

  v26 = *(v8 + 2232);
  v27 = v26 + *(v8 + 2224);
  if (v27)
  {
    v23 = v26 * 100.0 / v27;
  }

  v188 = v15;
  v186 = v14;
  v192 = v11;
  v190 = v10;
  v28 = *(v8 + 2084);
  if (v28)
  {
    v29 = *(v8 + 2424);
    v30 = [objc_msgSend(*(v8 + 1384) objectForKeyedSubscript:{&unk_284FA54F8), "tickCount"}];
    v31 = (10000 * v29 / v28);
    v32 = *(a1 + 32);
    v33 = v32[521];
    v34 = (10000 * v30 / v33);
    v158 = 10000 * v32[560] / v33;
    v203 = 10000 * v32[561] / v33;
    v157 = 10000 * v32[641] / v33;
  }

  else
  {
    v203 = 0;
    v158 = 0;
    v157 = 0;
    v34 = 0.0;
    v31 = 0.0;
  }

  v35 = objc_alloc_init(MEMORY[0x277CCAB60]);
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v205 = a1;
  v36 = *(*(a1 + 32) + 1376);
  v37 = [v36 countByEnumeratingWithState:&v210 objects:v234 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v211;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v211 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v210 + 1) + 8 * i);
        if ([v35 length])
        {
          v42 = @",";
        }

        else
        {
          v42 = &stru_284F80940;
        }

        [v35 appendFormat:@"%@%@:%@", v42, v41, objc_msgSend(*(*(v205 + 32) + 1376), "objectForKeyedSubscript:", v41)];
      }

      v38 = [v36 countByEnumeratingWithState:&v210 objects:v234 count:16];
    }

    while (v38);
  }

  v43 = *(v205 + 32);
  v44 = v43[573];
  v45 = [v43 RTPeriod];
  [*(v205 + 32) timeWeightedNumberOfParticipantsWebOnly:0];
  v47 = v46;
  v48 = 0;
  if (v46 > 0.0)
  {
    [*(v205 + 32) timeWeightedNumberOfParticipantsWebOnly:1];
    v48 = (v49 * 10000.0 / v47);
  }

  [*(v205 + 32) getSessionScreenControlDurationMsec];
  v204 = v50;
  [*(v205 + 32) getSessionCameraCompositionDurationMsec];
  v156 = *&v51;
  v52 = *(v205 + 32);
  v53 = *(v52 + 2084);
  if (v53)
  {
    LODWORD(v51) = *(v52 + 976);
    v159 = (v51 * 1000.0 / v53);
  }

  else
  {
    v159 = 0;
  }

  v54 = *(v52 + 844);
  if (v54)
  {
    v160 = *(v52 + 848) / v54;
    v55 = (*(v52 + 856) / v54);
  }

  else
  {
    v55 = 0.0;
    v160 = 0.0;
  }

  v161 = v55;
  v56 = *(v52 + 592);
  if (v56)
  {
    v151 = (*(v52 + 584) / v56 * 1000.0);
  }

  else
  {
    v151 = 0;
  }

  v57 = [v52 RTPeriod] * v53;
  v58 = *(v205 + 32);
  v59 = *(v58 + 1024);
  v60 = v57;
  if (v59 > v57)
  {
    v59 = v57;
  }

  v146 = v59;
  v61 = *(v58 + 2084);
  if (v61)
  {
    *&v62 = (*(v58 + 712) / v61);
    v167 = *&v62;
    LODWORD(v62) = *(v58 + 2760);
    *&v63 = v62 * 1000.0 / v61;
    v145 = *&v63;
    LODWORD(v63) = *(v58 + 948);
    *&v64 = v63 * 1000.0 / v61;
    v152 = *&v64;
    LODWORD(v64) = *(v58 + 952);
    *&v65 = v64 * 1000.0 / v61;
    v153 = *&v65;
    LODWORD(v65) = *(v58 + 956);
    *&v66 = v65 * 1000.0 / v61;
    v154 = *&v66;
    LODWORD(v66) = *(v58 + 960);
    v155 = (v66 * 1000.0 / v61);
    v67 = *(v58 + 704) / v61;
  }

  else
  {
    v154 = 0;
    v152 = 0;
    v145 = 0;
    v153 = 0;
    v155 = 0;
    v67 = 0.0;
    v167 = 0.0;
  }

  v164 = v67;
  v68 = *(v58 + 2776);
  if (v68)
  {
    v69 = *(v58 + 2768) * 8.0;
    v163 = (v69 / (v68 * [v58 RTPeriod]));
    v58 = *(v205 + 32);
  }

  else
  {
    v163 = 0;
  }

  v70 = *(v58 + 2792);
  if (v70)
  {
    v71 = *(v58 + 2784) * 8.0;
    v162 = (v71 / (v70 * [v58 RTPeriod]));
    v58 = *(v205 + 32);
  }

  else
  {
    v162 = 0;
  }

  v72 = *(v58 + 928);
  v73 = 0.0;
  v74 = 0.0;
  if (v72)
  {
    v74 = *(v58 + 920) / v72;
  }

  v148 = v74;
  if (v57)
  {
    v73 = v72 * 1000.0 / v60;
  }

  v149 = v73;
  v75 = (v45 * v44);
  v76 = *(v58 + 944);
  v77 = 0.0;
  v78 = 0.0;
  if (v76)
  {
    v78 = *(v58 + 936) / v76 * 100.0;
  }

  v147 = v78;
  if (v57)
  {
    v77 = v76 * 1000.0 / v60;
  }

  v150 = v77;
  v79 = v18 * 1000.0;
  if (*(v58 + 532))
  {
    v79 = v18;
  }

  v80 = v79;
  v81 = *(v58 + 288);
  [v58 microFromPayload:0];
  [v81 aggregateScoresWithDictionaryLogging:1 time:?];
  v83 = v82;
  v84 = *(v205 + 32);
  v85 = v84[35];
  [v84 microFromPayload:0];
  [v85 aggregateScoresWithDictionaryLogging:1 time:?];
  v87 = v86;
  v202 = *(*(*(v205 + 40) + 8) + 40);
  v201 = MEMORY[0x277CBEAC0];
  v200 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(*(v205 + 32), "RTPeriod") * *(*(v205 + 32) + 2080)}];
  v199 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2248)];
  v198 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2252)];
  v197 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 204)];
  v196 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2392)];
  v195 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2400)];
  v194 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2088)];
  v193 = [MEMORY[0x277CCABA8] numberWithDouble:v192];
  v191 = [MEMORY[0x277CCABA8] numberWithDouble:v190];
  v189 = [MEMORY[0x277CCABA8] numberWithDouble:v188];
  v187 = [MEMORY[0x277CCABA8] numberWithDouble:v186];
  v185 = [MEMORY[0x277CCABA8] numberWithDouble:v184];
  v183 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v80];
  v182 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v181];
  *&v88 = v24;
  v180 = [MEMORY[0x277CCABA8] numberWithFloat:v88];
  *&v89 = v23;
  v179 = [MEMORY[0x277CCABA8] numberWithFloat:v89];
  v178 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2072)];
  v177 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2076)];
  v176 = [MEMORY[0x277CCABA8] numberWithDouble:v47];
  v175 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v48];
  v174 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(*(v205 + 32), "numberOfWebParticipants")}];
  v173 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2280)];
  v172 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2284)];
  v171 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2288)];
  v170 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v75];
  v169 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v87], 3);
  v168 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v75];
  v166 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v83], 3);
  v165 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2408)];
  [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2416)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v31];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v34];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v31 > 0.0];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v34 > 0.0];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2456)];
  [MEMORY[0x277CCABA8] numberWithChar:*(*(v205 + 32) + 834)];
  [MEMORY[0x277CCABA8] numberWithBool:*(*(v205 + 32) + 2496)];
  [MEMORY[0x277CCABA8] numberWithBool:*(*(v205 + 32) + 2497)];
  [MEMORY[0x277CCABA8] numberWithInt:*(*(v205 + 32) + 2500)];
  [MEMORY[0x277CCABA8] numberWithInt:*(*(v205 + 32) + 2504)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v158];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v203];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v157];
  [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2528)];
  [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2536)];
  [MEMORY[0x277CCABA8] numberWithDouble:v156];
  [MEMORY[0x277CCABA8] numberWithDouble:*(*(v205 + 32) + 2552)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 524)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 528)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 516)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 520)];
  [MEMORY[0x277CCABA8] numberWithBool:*(*(v205 + 32) + 532)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(v205 + 32) + 584) * 1000.0)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(v205 + 32) + 576) * 1000.0)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v151];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 592)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 188)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 904)];
  [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(v205 + 32) + 908)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(v205 + 32) + 656) * 100.0)];
  [*(*(v205 + 32) + 672) description];
  v90 = *(v205 + 32);
  v91 = *(v90 + 2084);
  if (v91)
  {
    v92 = (*(v90 + 664) / v91 * 1000.0);
  }

  else
  {
    v92 = 0;
  }

  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v92];
  [*(*(v205 + 32) + 616) description];
  [*(*(v205 + 32) + 624) description];
  [*(*(v205 + 32) + 600) description];
  [*(*(v205 + 32) + 608) description];
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 552)], 4, &unk_284FA5468);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 560)], 4, &unk_284FA5468);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 568)], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 572)], 3);
  v93 = *(v205 + 32);
  v94 = *(v93 + 2084);
  if (v94)
  {
    v95 = *(v93 + 2296) / v94;
  }

  else
  {
    v95 = 0;
  }

  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v95];
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v148], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v149], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v147], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v150], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v152], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v153], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v154], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v155], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v160], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v161], 3);
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 836)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 840)];
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 844)], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 964)], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 968)], 3);
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 972)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v159];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 784)];
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v160], 3);
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v161], 3);
  [MEMORY[0x277CCABA8] numberWithBool:*(*(v205 + 32) + 479)];
  +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2660)], 3);
  v96 = *(v205 + 32);
  v97 = *(v96 + 2084);
  if (v97)
  {
    v98 = (*(v96 + 864) / v97);
  }

  else
  {
    v98 = 0;
  }

  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v98];
  v99 = *(v205 + 32);
  v100 = *(v99 + 2084);
  if (v100)
  {
    v101 = (*(v99 + 880) / v100);
  }

  else
  {
    v101 = 0;
  }

  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v101];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2664)];
  v102 = *(v205 + 32);
  v103 = *(v102 + 2084);
  if (v103)
  {
    v104 = *(v102 + 896) / v103;
  }

  else
  {
    v104 = 0;
  }

  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v104];
  v105 = *(v205 + 32);
  v106 = *(v105 + 992);
  if (v106)
  {
    v107 = ((1.0 - *(v105 + 984) / v106) * 10000.0);
  }

  else
  {
    v107 = 0;
  }

  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v107];
  if (v57)
  {
    v108 = (v146 / v57 * 10000.0);
  }

  else
  {
    v108 = 0;
  }

  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v108];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(v205 + 32) + 1016) * 100.0)];
  [*(*(v205 + 32) + 2472) description];
  [*(*(v205 + 32) + 720) description];
  [*(*(v205 + 32) + 728) description];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 696)];
  [MEMORY[0x277CCABA8] numberWithDouble:v164];
  [MEMORY[0x277CCABA8] numberWithDouble:v167];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 1040)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 2764)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v163];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:v162];
  [MEMORY[0x277CCABA8] numberWithInt:*(*(v205 + 32) + 200)];
  [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 1044)];
  [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2992)];
  [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2984)];
  [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 3000)];
  [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 3008)];
  [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{*(*(v205 + 32) + 3048) * objc_msgSend(*(v205 + 32), "RTPeriod")}];
  v144 = *(*(v205 + 32) + 3064);
  [v202 addEntriesFromDictionary:{objc_msgSend(v201, "dictionaryWithObjectsAndKeys:", &unk_284FA5510, @"RVER", v200, @"DRTN", v199, @"SENDRSN", v198, @"SDTENDLRSN", v197, @"DUPSWCNT", v196, @"WRMDUPSWCNT", v195, @"RWRMDUPSWCNT", v194, @"UTBRSWCNT", v193, @"AUBE", v191, @"ADBE", v189, @"AUTBR", v187, @"ADTBR", v185, @"AUSBR", v183, @"ARBR", v182, @"ARTT", v180, @"ADLPLR", v179, @"AULPLR", v178, @"NUMSEGSUP", v177, @"NUMSEGSDWN", v176, @"NUMPARTS", v175, @"GNDLUP", v174, @"GNDLUCNT", v35, @"NED", v173, @"PCONMAXPCNT", v172, @"VSTMAXPCNT", v171, @"AEMAXPCNT", v170, @"DUPDRTN", v169, @"TALGOS", v168, @"DUPDRTN", v166, @"TALGOS_A", v165)}];
  [objc_msgSend(*(v205 + 32) "captionsDataCollector")];
  [objc_msgSend(*(v205 + 32) "mediaAnalyzerDataCollector")];
  if (v204 != 0.0)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(objc_msgSend(*(v205 + 32) forKeyedSubscript:{"dispatchedAggregatedSessionReport"), "objectForKeyedSubscript:", @"THERMDUR", @"THERMDUR"}];
  }

  v109 = *(v205 + 32);
  v110 = *(*(*(v205 + 40) + 8) + 40);
  v232[0] = @"AOL";
  v233[0] = [MEMORY[0x277CCABA8] numberWithDouble:*(v109 + 2736)];
  v232[1] = @"VDL";
  v233[1] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(v205 + 32) + 2744)];
  [v110 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v233, v232, 2)}];

  [*(v205 + 32) addFECStatsHolderKPIs:*(*(*(v205 + 40) + 8) + 40) usingFECStatsHolder:*(*(v205 + 32) + 1168) reportFrameSizeTelemetry:0 reportLevels:1];
  v111 = *(v205 + 32);
  v112 = *(*(*(v205 + 40) + 8) + 40);
  [v111 microFromPayload:0];
  [v111 addDownlinkParticipantStats:v112 currentTime:?];
  [*(v205 + 32) addConfigUpdatedStatsToSessionReport:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addPerStreamGroupIDStats:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addCellByteCountStats:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addCameraMetricsToReportDictionary:*(*(*(v205 + 40) + 8) + 40) totalDuration:{objc_msgSend(*(v205 + 32), "RTPeriod") * *(*(v205 + 32) + 2080)}];
  [*(v205 + 32) addAdaptiveLearningTelemetry:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addVPCTelemetry:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) updateReportWithQRServerSessionStats:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addNetworkCapabilityInfoToReport:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addAudioStreamTimestampJumpDurationToReport:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addVideoFeatureStatus:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) reportSpatialAudioSupport:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addBoundedTalgosToReport:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addClientExperimentsToReport:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) reportVCRCMLStats:*(*(*(v205 + 40) + 8) + 40)];
  v113 = *(v205 + 32);
  if (*(v113 + 548) == 1)
  {
    v114 = *(*(*(v205 + 40) + 8) + 40);
    v230[0] = @"TVMBR";
    v231[0] = [*(v113 + 680) description];
    v230[1] = @"TVPAY";
    v231[1] = [*(*(v205 + 32) + 688) description];
    [v114 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v231, v230, 2)}];
    v113 = *(v205 + 32);
  }

  if (*(v113 + 192) == 1)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", *(v113 + 184)), @"REMSW"}];
    v113 = *(v205 + 32);
  }

  if (*(v113 + 440))
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"LMQSchP"}];
    v113 = *(v205 + 32);
  }

  if (*(v113 + 2672))
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"VCSECNLinkType"}];
    v113 = *(v205 + 32);
  }

  v115 = *(v113 + 176);
  if (v115)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:v115 forKeyedSubscript:@"REMBUILD"];
    v113 = *(v205 + 32);
  }

  if (*(v113 + 512) != 255)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:"), @"LNKSUG"}];
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", *(*(v205 + 32) + 513)), @"LNKSCR"}];
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", *(*(v205 + 32) + 514)), @"LNKDEC"}];
    v113 = *(v205 + 32);
  }

  [*(v113 + 2888) updateReport:*(*(*(v205 + 40) + 8) + 40)];
  v116 = *(v205 + 32);
  if (*(v116 + 2668) != 255)
  {
    v117 = *(*(*(v205 + 40) + 8) + 40);
    v228 = @"LNKIP";
    v229 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v116 + 2668)];
    [v117 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v229, &v228, 1)}];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 2355) == 1)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:&unk_284FA5420 forKeyedSubscript:@"1T1SS"];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 2354) == 1)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", *(v116 + 2356)), @"FULLCAP"}];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 2430) == 1)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", 1), @"GFTSWT"}];
    v116 = *(v205 + 32);
    if (*(v116 + 2432) > 0.0)
    {
      [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:"), @"GFTSWTT"}];
      v116 = *(v205 + 32);
    }
  }

  if (*(v116 + 2429) == 1)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", 1), @"1T1SWT"}];
    v116 = *(v205 + 32);
    if (*(v116 + 2440) > 0.0)
    {
      [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:"), @"1T1SWTT"}];
      v116 = *(v205 + 32);
    }
  }

  if (*(v116 + 2448))
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"1T1SWTERR"}];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 2452))
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"GFTSWTERR"}];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 384))
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *(v116 + 392)), @"StartDate"}];
    v118 = MEMORY[0x277CCABA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(v118 forKeyedSubscript:{"numberWithInt:", v119), @"EndDate"}];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 1328))
  {
    v120 = *(*(*(v205 + 40) + 8) + 40);
    v226 = @"LASTCONFIGUP";
    v227 = *(v116 + 1328);
    [v120 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v227, &v226, 1)}];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 1360))
  {
    v121 = *(*(*(v205 + 40) + 8) + 40);
    v224 = @"LASTCONFIGDWN";
    v225 = *(v116 + 1344);
    [v121 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v225, &v224, 1)}];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 424) == 1)
  {
    v122 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RCEV", @"L"];
    v123 = *(v205 + 32);
    v124 = *(*(*(v205 + 40) + 8) + 40);
    v222 = v122;
    v223 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v123 + 425)];
    [v124 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v223, &v222, 1)}];
    v125 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RCEG", @"L"];
    v126 = *(v205 + 32);
    v127 = *(*(*(v205 + 40) + 8) + 40);
    v220 = v125;
    v221 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v126 + 426)];
    [v127 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v221, &v220, 1)}];
    v116 = *(v205 + 32);
  }

  if (*(v116 + 436))
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"SBVERS"}];
    v116 = *(v205 + 32);
  }

  [v116 addThermalMetricsToReportDictionary:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addMediaQueueStats:*(*(*(v205 + 40) + 8) + 40)];
  [*(v205 + 32) addIDSTelemetry:*(*(*(v205 + 40) + 8) + 40)];
  [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(*(v205 + 32) forKeyedSubscript:{"symptomsOccurrencesStats"), @"ABC"}];
  v128 = *(v205 + 32);
  v129 = *(v128 + 2800);
  if (v129)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(v129 forKeyedSubscript:{"componentsJoinedByString:", @", "), @"VIDSTATE"}];
    v128 = *(v205 + 32);
  }

  v130 = *(v128 + 2808);
  if (v130)
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(v130 forKeyedSubscript:{"componentsJoinedByString:", @", "), @"VIDDRTN"}];
    v128 = *(v205 + 32);
  }

  if ([*(v128 + 2464) totalDuration])
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(*(*(v205 + 32) + 2464) forKeyedSubscript:{"description"), @"PIPDUR"}];
  }

  v209 = 0u;
  v208 = 0u;
  v207 = 0u;
  v206 = 0u;
  v131 = *(*(v205 + 32) + 3056);
  v132 = [v131 countByEnumeratingWithState:&v206 objects:v219 count:16];
  if (v132)
  {
    v133 = v132;
    v134 = *v207;
    do
    {
      for (j = 0; j != v133; ++j)
      {
        if (*v207 != v134)
        {
          objc_enumerationMutation(v131);
        }

        [*(*(&v206 + 1) + 8 * j) updateReport:*(*(*(v205 + 40) + 8) + 40)];
      }

      v133 = [v131 countByEnumeratingWithState:&v206 objects:v219 count:16];
    }

    while (v133);
  }

  v136 = *(v205 + 32);
  if (*(v136 + 532) == 1)
  {
    v137 = *(*(*(v205 + 40) + 8) + 40);
    v217[0] = @"VCMQIAP";
    v218[0] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(v136 + 2896)];
    v217[1] = @"VCMQIVP";
    v218[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2904)];
    v217[2] = @"VCMQIP";
    v218[2] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2912)];
    v217[3] = @"VCMQEAP";
    v218[3] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2928)];
    v217[4] = @"VCMQEVP";
    v218[4] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2920)];
    v217[5] = @"VCMQEP";
    v218[5] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2936)];
    v217[6] = @"VCMQENDAP";
    v218[6] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2944)];
    v217[7] = @"VCMQENDVP";
    v218[7] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2952)];
    v217[8] = @"VCMQENDP";
    v218[8] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2960)];
    v217[9] = @"VCMQIQP";
    v218[9] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2968)];
    v217[10] = @"VCMQFP";
    v218[10] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 2976)];
    v217[11] = @"AExTXBR";
    v218[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v145];
    v217[12] = @"RC";
    v218[12] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(v205 + 32) + 3024)];
    v217[13] = @"REMMDL";
    v138 = *(v205 + 32);
    v139 = *(v138 + 3112);
    if (!v139)
    {
      v139 = &stru_284F80940;
    }

    v218[13] = v139;
    v217[14] = @"ULAR";
    v218[14] = [MEMORY[0x277CCABA8] numberWithBool:*(v138 + 3016)];
    v217[15] = @"ULSCDRN";
    v218[15] = [MEMORY[0x277CCABA8] numberWithDouble:v204];
    [v137 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v218, v217, 16)}];
  }

  else
  {
    [*(*(*(v205 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v136, "addHomogeneousBuildStat")), @"HBS"}];
  }

  if ([*(*(v205 + 32) + 3152) bucketValueAtIndex:0])
  {
    [*(*(v205 + 32) + 3168) addValue:{objc_msgSend(*(*(v205 + 32) + 3152), "bucketValueAtIndex:", 0)}];
  }

  if ([*(*(v205 + 32) + 3152) bucketValueAtIndex:1])
  {
    [*(*(v205 + 32) + 3176) addValue:{objc_msgSend(*(*(v205 + 32) + 3152), "bucketValueAtIndex:", 1)}];
  }

  if ([*(*(v205 + 32) + 3152) bucketValueAtIndex:2])
  {
    [*(*(v205 + 32) + 3184) addValue:{objc_msgSend(*(*(v205 + 32) + 3152), "bucketValueAtIndex:", 2)}];
  }

  if ([*(*(v205 + 32) + 3152) bucketValueAtIndex:3])
  {
    [*(*(v205 + 32) + 3192) addValue:{objc_msgSend(*(*(v205 + 32) + 3152), "bucketValueAtIndex:", 3)}];
  }

  v140 = *(v205 + 32);
  v141 = *(*(*(v205 + 40) + 8) + 40);
  v215[0] = @"ORTNPortrait";
  v216[0] = [*(v140 + 3168) description];
  v215[1] = @"ORTNPortraitUpsDown";
  v216[1] = [*(*(v205 + 32) + 3176) description];
  v215[2] = @"ORTNLandLeft";
  v216[2] = [*(*(v205 + 32) + 3184) description];
  v215[3] = @"ORTNLandRight";
  v216[3] = [*(*(v205 + 32) + 3192) description];
  v215[4] = @"ORTNChangeCount";
  v216[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(v205 + 32) + 3160)];
  result = [v141 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v216, v215, 5)}];
  v143 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)interfaceTypeIndicator
{
  if (self->super._isDuplicationEnabled)
  {
    return @"D";
  }

  if ([(NSString *)self->super._localInterfaceType caseInsensitiveCompare:@"Wired"]== NSOrderedSame)
  {
    return @"E";
  }

  if ([(NSString *)self->super._localInterfaceType caseInsensitiveCompare:@"NonCellular"]== NSOrderedSame)
  {
    return @"W";
  }

  if ([&unk_284FA5840 containsObject:self->super._localInterfaceType])
  {
    return @"F";
  }

  return @"S";
}

- (void)flushCurrentUplinkSegment:(id)segment
{
  v37 = *MEMORY[0x277D85DE8];
  [(VCAggregatorMultiway *)self processStatsForNumberOfParticipants:self->_participantCounter webParticipants:self->_webParticipantCounter withPayload:segment];
  if (self->_currentUplinkSegmentKey && self->_currentUplinkSegmentStreamGroups)
  {
    duration = [(MultiwaySegment *)self->_currentUplinkSegment duration];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (duration > 1)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR(8u);
        v13 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            currentUplinkSegmentKey = self->_currentUplinkSegmentKey;
            currentUplinkSegmentStreamGroups = self->_currentUplinkSegmentStreamGroups;
            v25 = 136316162;
            v26 = v12;
            v27 = 2080;
            v28 = "[VCAggregatorMultiway flushCurrentUplinkSegment:]";
            v29 = 1024;
            v30 = 8682;
            v31 = 2112;
            v32 = currentUplinkSegmentKey;
            v33 = 1024;
            v34 = currentUplinkSegmentStreamGroups;
            _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Uplink segment '%@' currentUplinkSegmentStreamGroups=%u flushed", &v25, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          v23 = self->_currentUplinkSegmentKey;
          v24 = self->_currentUplinkSegmentStreamGroups;
          v25 = 136316162;
          v26 = v12;
          v27 = 2080;
          v28 = "[VCAggregatorMultiway flushCurrentUplinkSegment:]";
          v29 = 1024;
          v30 = 8682;
          v31 = 2112;
          v32 = v23;
          v33 = 1024;
          v34 = v24;
          _os_log_debug_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregatorMultiway: Uplink segment '%@' currentUplinkSegmentStreamGroups=%u flushed", &v25, 0x2Cu);
        }
      }

      [(VCAggregator *)self microFromPayload:segment];
      [(MultiwaySegment *)self->_currentUplinkSegment finalizePathMTUForTime:?];
      self->_totalCellTxDataBytes += [self->_currentUplinkSegment totalCellTxDataBytes];
      self->_totalCellDupTxDataBytes += [self->_currentUplinkSegment totalCellDupTxDataBytes];
      self->super._lastReportedTotalWifiTxDataBytes += [self->_currentUplinkSegment lastReportedTotalWifiTxDataBytes];
      currentUplinkSegment = self->_currentUplinkSegment;
      [(VCAggregator *)self microFromPayload:segment];
      [(MultiwaySegment *)currentUplinkSegment flushAllDataModeDurationForLinkProperty:1 AtTime:?];
      v20 = self->_currentUplinkSegment;
      [(VCAggregator *)self microFromPayload:segment];
      [(MultiwaySegment *)v20 flushAllDataModeDurationForLinkProperty:0 AtTime:?];
      thermalDurations = [(VCReportingCommon *)self->_currentUplinkSegment thermalDurations];
      [(VCAggregator *)self microFromPayload:segment];
      [(VCDurationHistogram *)thermalDurations finalize:?];
      [(VCAggregatorDelegate *)[(VCAggregator *)self delegate] reportSegment:[(VCAggregatorMultiway *)self aggregatedUplinkSegmentReport] withMessageType:0 clientType:5];
      [self->_currentUplinkSegment setLastReportedTotalCellDupTxDataBytes:[self->_currentUplinkSegment lastReportedTotalCellDupTxDataBytes]+ [self->_currentUplinkSegment lastReportedTotalCellDupTxDataBytes]];
      [self->_currentUplinkSegment setLastReportedTotalUsedCellBudgetTxDataBytes:[self->_currentUplinkSegment lastReportedTotalUsedCellBudgetTxDataBytes]+ [self->_currentUplinkSegment lastReportedTotalUsedCellBudgetTxDataBytes]];
      [self->_currentUplinkSegment setLastReportedTotalCellTxDataBytes:[self->_currentUplinkSegment lastReportedTotalCellTxDataBytes]+ [self->_currentUplinkSegment lastReportedTotalCellTxDataBytes]];
      [self->_currentUplinkSegment setLastReportedTotalWifiTxDataBytes:[self->_currentUplinkSegment lastReportedTotalWifiTxDataBytes]+ [self->_currentUplinkSegment lastReportedTotalWifiTxDataBytes]];
    }

    else if (ErrorLogLevelForModule >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_currentUplinkSegmentKey;
          v10 = self->_currentUplinkSegmentStreamGroups;
          duration2 = [(MultiwaySegment *)self->_currentUplinkSegment duration];
          v25 = 136316418;
          v26 = v7;
          v27 = 2080;
          v28 = "[VCAggregatorMultiway flushCurrentUplinkSegment:]";
          v29 = 1024;
          v30 = 8679;
          v31 = 2112;
          v32 = v9;
          v33 = 1024;
          v34 = v10;
          v35 = 1024;
          v36 = [(VCAggregatorMultiway *)self RTPeriod]* duration2;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Segment '%@' currentUplinkSegmentStreamGroups=%u is too short (%ds). Ignore…", &v25, 0x32u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        v16 = self->_currentUplinkSegmentKey;
        v17 = self->_currentUplinkSegmentStreamGroups;
        duration3 = [(MultiwaySegment *)self->_currentUplinkSegment duration];
        v25 = 136316418;
        v26 = v7;
        v27 = 2080;
        v28 = "[VCAggregatorMultiway flushCurrentUplinkSegment:]";
        v29 = 1024;
        v30 = 8679;
        v31 = 2112;
        v32 = v16;
        v33 = 1024;
        v34 = v17;
        v35 = 1024;
        v36 = [(VCAggregatorMultiway *)self RTPeriod]* duration3;
        _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregatorMultiway: Segment '%@' currentUplinkSegmentStreamGroups=%u is too short (%ds). Ignore…", &v25, 0x32u);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)newUplinkSegmentKey
{
  if (!self->super._isOneToOneMode)
  {
    return [objc_alloc(MEMORY[0x277CCACA0]) initWithFormat:@"U%s%@", ":", -[VCAggregatorMultiway interfaceTypeIndicator](self, "interfaceTypeIndicator")];
  }

  return [(VCAggregator *)self newSegmentNameOneToOne];
}

- (void)resetUplinkSegmentWithStreamGroups:(unsigned int)groups withPayload:(id)payload
{
  v23 = *MEMORY[0x277D85DE8];
  currentUplinkSegment = self->_currentUplinkSegment;
  self->_currentUplinkSegment = 0;
  currentUplinkSegmentKey = self->_currentUplinkSegmentKey;
  self->_currentUplinkSegmentKey = [(VCAggregatorMultiway *)self newUplinkSegmentKey];
  currentUplinkSegmentStreamGroups = self->_currentUplinkSegmentStreamGroups;
  self->_currentUplinkSegmentStreamGroups = groups;
  v10 = nw_activity_create();
  if (self->super._nwActivity)
  {
    nw_activity_set_parent_activity();
  }

  nw_activity_activate();
  self->_currentUplinkSegment = [[UplinkSegment alloc] initWithSegmentName:self->_currentUplinkSegmentKey previousSegmentName:currentUplinkSegmentKey segmentStreamGroups:self->_currentUplinkSegmentStreamGroups previousSegmentStreamGroups:currentUplinkSegmentStreamGroups nwActivity:v10 localSwitches:self->_localSwitches sessionSwitches:self->_sessionSwitches conversationTimeBase:self->super._conversationTimeBase delegate:self];
  [(MultiwaySegment *)self->_currentUplinkSegment setIsApplePersonalHotspot:[(VCAggregator *)self isApplePersonalHotspotAndUpdatePhyMode]];
  [(MultiwaySegment *)self->_currentUplinkSegment setLocalPHYMode:[(VCAggregator *)self localPHYMode]];
  [(MultiwaySegment *)self->_currentUplinkSegment setActiveConnectionRegistry:self->super._activeConnectionRegistry];
  [self->_currentUplinkSegment setEcnLinkType:self->_ecnLinkType];
  [(MultiwaySegment *)self->_currentUplinkSegment setNWActivityReportingEnabled:self->super._isNWActivityReportingEnabled];
  [self->_currentUplinkSegment setIsCenterStageEnabled:self->_isCenterStageEnabled];
  [self->_currentUplinkSegment setIsPortraitBlurEnabled:self->_isPortraitBlurEnabled];
  [(MultiwaySegment *)self->_currentUplinkSegment setEyeContactStatus:self->super._eyeContactStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setCenterStageStatus:self->super._centerStageStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setPortraitModeStatus:self->super._portraitModeStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setReactionsStatus:self->super._reactionsStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setStudioLightStatus:self->super._studioLightStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setSpatialAudioSupported:self->super._spatialAudioSupported];
  [self->_currentUplinkSegment setCurrentThermalLevel:self->super.super._currentThermalLevel];
  [self->_currentUplinkSegment setSegmentReportingMode:self->_currentReportingMode];
  [(VCAggregatorMultiway *)self transferSegmentStateToNewUplinkSegment:self->_currentUplinkSegment fromPreviousUplinkSegment:currentUplinkSegment withPayload:payload];

  ++self->_numberOfUplinkSegments;
  if (v10)
  {
    nw_release(v10);
  }

  [(VCAggregatorMultiway *)self resetUplinkSegmentRateControlInfo];
  [(VCAggregatorMultiway *)self resetRateControlMLEnrollmentAndStatsInSegment:self->_currentUplinkSegment];
  [(MultiwaySegment *)self->_currentUplinkSegment setLocalParticipantID:self->_localParticipantID];
  [(MultiwaySegment *)self->_currentUplinkSegment setBootstrapSampleIndex:self->_bootstrapSampleIndex];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR(8u);
    v12 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_currentUplinkSegmentKey;
        *buf = 136315906;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCAggregatorMultiway resetUplinkSegmentWithStreamGroups:withPayload:]";
        v19 = 1024;
        v20 = 8756;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: New key generated for uplink segment '%@'", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [VCAggregatorMultiway resetUplinkSegmentWithStreamGroups:v11 withPayload:&self->_currentUplinkSegmentKey];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetUplinkSegmentRateControlInfo
{
  if (self->super._rateControlSmartBrakeTrialVersion)
  {
    [(MultiwaySegment *)self->_currentUplinkSegment setRateControlSmartBrakeTrialVersion:?];
  }

  if (self->super._reportRateControlExperiment)
  {
    [(MultiwaySegment *)self->_currentUplinkSegment setRateControlExperimentVersion:self->super._rateControlExperimentVersion];
    [(MultiwaySegment *)self->_currentUplinkSegment setRateControlExperimentGroupIndex:self->super._rateControlExperimentGroupIndex];
    currentUplinkSegment = self->_currentUplinkSegment;

    [(MultiwaySegment *)currentUplinkSegment setReportRateControlExperiment:1];
  }
}

- (void)resetRateControlMLEnrollmentAndStatsInSegment:(id)segment
{
  [segment setVCRCML_modelID:self->_VCRCML_modelID];
  [segment setVCRCML_recipeID:self->_VCRCML_recipeID];
  [segment setVCRCML_nIteration:self->_VCRCML_nIteration];
  [segment setVCRCML_reportingGroup:self->_VCRCML_reportingGroup];
  [segment setVCRCML_activeMLEngagedDuration:self->_VCRCML_activeMLEngagedDuration];
  [segment setVCRCML_isMLEngaged:self->_VCRCML_isMLEngaged];
  VCRCML_targetBitrateAtTimeOfDisengagement = self->_VCRCML_targetBitrateAtTimeOfDisengagement;

  [segment setVCRCML_targetBitrateAtTimeOfDisengagement:VCRCML_targetBitrateAtTimeOfDisengagement];
}

- (id)aggregatedDownlinkSegmentReport:(id)report
{
  currentDownlinkSegment = self->_currentDownlinkSegment;
  [(VCAggregator *)self microFromPayload:report];

  return [currentDownlinkSegment segmentReport:?];
}

- (void)flushCurrentDownlinkSegment:(id)segment
{
  v41 = *MEMORY[0x277D85DE8];
  if (self->_currentDownlinkSegmentKey && self->_currentDownlinkSegmentStreamGroups)
  {
    duration = [(MultiwaySegment *)self->_currentDownlinkSegment duration];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (duration > 1)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v11 = VRTraceErrorLogLevelToCSTR(8u);
        v12 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            currentDownlinkSegmentKey = self->_currentDownlinkSegmentKey;
            *buf = 136315906;
            v32 = v11;
            v33 = 2080;
            v34 = "[VCAggregatorMultiway flushCurrentDownlinkSegment:]";
            v35 = 1024;
            v36 = 8796;
            v37 = 2112;
            v38 = currentDownlinkSegmentKey;
            _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Downlink segment '%@' flushed", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          [(VCAggregatorMultiway *)v11 flushCurrentDownlinkSegment:?];
        }
      }

      [(VCAggregator *)self microFromPayload:segment];
      [(MultiwaySegment *)self->_currentDownlinkSegment finalizePathMTUForTime:?];
      self->_totalCellRxDataBytes += [self->_currentDownlinkSegment totalCellRxDataBytes];
      self->_totalCellDupRxDataBytes += [self->_currentDownlinkSegment totalCellDupRxDataBytes];
      self->super._lastReportedTotalWifiRxDataBytes += [self->_currentDownlinkSegment lastReportedTotalWifiRxDataBytes];
      currentDownlinkSegment = self->_currentDownlinkSegment;
      [(VCAggregator *)self microFromPayload:segment];
      [(MultiwaySegment *)currentDownlinkSegment flushAllDataModeDurationForLinkProperty:1 AtTime:?];
      v17 = self->_currentDownlinkSegment;
      [(VCAggregator *)self microFromPayload:segment];
      [(MultiwaySegment *)v17 flushAllDataModeDurationForLinkProperty:0 AtTime:?];
      [(VCAggregatorDelegate *)[(VCAggregator *)self delegate] reportSegment:[(VCAggregatorMultiway *)self aggregatedDownlinkSegmentReport:segment] withMessageType:1 clientType:5];
      [(VCHistogram *)[self->_currentDownlinkSegment continuousHighRTTReportCount] addValue:[self->_currentDownlinkSegment highRTTReportCounter]];
      [(VCHistogram *)[self->_currentDownlinkSegment continuousHighPLRReportCount] addValue:[self->_currentDownlinkSegment highPLRReportCounter]];
      [(VCHistogram *)[self->_currentDownlinkSegment continuousHighRTTPLRReportCount] addValue:[self->_currentDownlinkSegment highRTTPLRReportCounter]];
      [(VCAggregatorMultiway *)self _VCAggregatorMultiway_FinalizeNoRemotePacketsTimeIntervalWithPayload:segment];
      [(VCAggregator *)self microFromPayload:segment];
      v19 = v18;
      [(VCDurationHistogram *)[(VCReportingCommon *)self->_currentDownlinkSegment thermalDurations] finalize:v18];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      allValues = [(NSMutableDictionary *)self->_downlinkParticipantStats allValues];
      v21 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v27;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(allValues);
            }

            [objc_msgSend(*(*(&v26 + 1) + 8 * i) "mlEnhance")];
          }

          v22 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v22);
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
          v9 = self->_currentDownlinkSegmentKey;
          duration2 = [(MultiwaySegment *)self->_currentDownlinkSegment duration];
          *buf = 136316162;
          v32 = v7;
          v33 = 2080;
          v34 = "[VCAggregatorMultiway flushCurrentDownlinkSegment:]";
          v35 = 1024;
          v36 = 8794;
          v37 = 2112;
          v38 = v9;
          v39 = 1024;
          v40 = [(VCAggregatorMultiway *)self RTPeriod]* duration2;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Segment '%@' is too short (%ds). Ignore…", buf, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        v14 = self->_currentDownlinkSegmentKey;
        duration3 = [(MultiwaySegment *)self->_currentDownlinkSegment duration];
        *buf = 136316162;
        v32 = v7;
        v33 = 2080;
        v34 = "[VCAggregatorMultiway flushCurrentDownlinkSegment:]";
        v35 = 1024;
        v36 = 8794;
        v37 = 2112;
        v38 = v14;
        v39 = 1024;
        v40 = [(VCAggregatorMultiway *)self RTPeriod]* duration3;
        _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregatorMultiway: Segment '%@' is too short (%ds). Ignore…", buf, 0x2Cu);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_VCAggregatorMultiway_FinalizeNoRemotePacketsTimeIntervalWithPayload:(id)payload
{
  if (self->_noRemoteStartTime_Alternate != 0.0)
  {
    [(VCAggregator *)self microFromPayload:payload];
    v5 = v4 - self->_noRemoteStartTime_Alternate;
    currentDownlinkSegment = self->_currentDownlinkSegment;
    [currentDownlinkSegment totalNoRemotePacketsTime_Alternate];
    [currentDownlinkSegment setTotalNoRemotePacketsTime_Alternate:v5 + v7];
    [self->_currentDownlinkSegment maxNoRemotePacketsInterval_Alternate];
    if (v8 < v5)
    {
      v8 = v5;
    }

    [self->_currentDownlinkSegment setMaxNoRemotePacketsInterval_Alternate:v8];
    self->_noRemoteStartTime_Alternate = 0.0;
  }
}

- (void)transferSegmentStateToNewUplinkSegment:(id)segment fromPreviousUplinkSegment:(id)uplinkSegment withPayload:(id)payload
{
  [(VCAggregator *)self microFromPayload:payload];
  v9 = v8;
  [uplinkSegment applyKnownDataModeToNewSegment:segment];
  [segment setCurrentThermalLevel:self->super.super._currentThermalLevel];
  [objc_msgSend(segment "thermalDurations")];
  if (uplinkSegment)
  {
    [uplinkSegment applyKnownDataModeToNewSegment:segment];
    [segment setLastReportedUplinkPacketsSent:{objc_msgSend(uplinkSegment, "lastReportedUplinkPacketsSent")}];
    [segment setLastReportedUplinkPacketsReceived:{objc_msgSend(uplinkSegment, "lastReportedUplinkPacketsReceived")}];
    [segment setLastReportedUplinkBytesSent:{objc_msgSend(uplinkSegment, "lastReportedUplinkBytesSent")}];
    [segment setLastReportedVCMQEgressPackets:{objc_msgSend(uplinkSegment, "totalVCMQEgressPackets")}];
    [segment setLastReportedVCMQEgressAudioPackets:{objc_msgSend(uplinkSegment, "totalVCMQEgressAudioPackets")}];
    [segment setLastReportedVCMQEgressVideoPackets:{objc_msgSend(uplinkSegment, "totalVCMQEgressVideoPackets")}];
    [segment setLastReportedVCMQIngressPackets:{objc_msgSend(uplinkSegment, "totalVCMQIngressPackets")}];
    [segment setLastReportedVCMQIngressVideoPackets:{objc_msgSend(uplinkSegment, "totalVCMQIngressVideoPackets")}];
    [segment setLastReportedVCMQIngressAudioPackets:{objc_msgSend(uplinkSegment, "totalVCMQIngressAudioPackets")}];
    [segment setLastReportedVCMQEgressNonDupPackets:{objc_msgSend(uplinkSegment, "totalVCMQEgressNonDupPackets")}];
    [segment setLastReportedVCMQEgressNonDupVideoPackets:{objc_msgSend(uplinkSegment, "totalVCMQEgressNonDupVideoPackets")}];
    [segment setLastReportedVCMQEgressNonDupAudioPackets:{objc_msgSend(uplinkSegment, "totalVCMQEgressNonDupAudioPackets")}];
    [segment setLastReportedVCMQIngressQueuedPackets:{objc_msgSend(uplinkSegment, "totalVCMQIngressQueuedPackets")}];
    [segment setLastReportedVCMQFlushedPackets:{objc_msgSend(uplinkSegment, "totalVCMQFlushedPackets")}];
    if (([objc_msgSend(uplinkSegment "studioLightDuration")] & 1) == 0)
    {
      [objc_msgSend(segment "studioLightDuration")];
    }

    if (([objc_msgSend(uplinkSegment "centerStageDuration")] & 1) == 0)
    {
      [objc_msgSend(segment "centerStageDuration")];
    }

    if (([objc_msgSend(uplinkSegment "portraitModeDuration")] & 1) == 0)
    {
      [objc_msgSend(segment "portraitModeDuration")];
    }

    if (([objc_msgSend(uplinkSegment "eyeContactDuration")] & 1) == 0)
    {
      [objc_msgSend(segment "eyeContactDuration")];
    }

    if (([objc_msgSend(uplinkSegment "reactionActiveDuration")] & 1) == 0)
    {
      [objc_msgSend(segment "reactionActiveDuration")];
    }

    if (([objc_msgSend(uplinkSegment "backgroundReplacementDuration")] & 1) == 0)
    {
      [objc_msgSend(segment "backgroundReplacementDuration")];
    }

    fecHeaderVersion = self->_fecHeaderVersion;

    [segment setFecHeaderVersion:fecHeaderVersion];
  }
}

- (void)transferSegmentStateToNewDownlinkSegment:(id)segment fromPreviousDownlinkSegment:(id)downlinkSegment withPayload:(id)payload
{
  v61 = *MEMORY[0x277D85DE8];
  [segment setCurrentThermalLevel:self->super.super._currentThermalLevel];
  thermalDurations = [segment thermalDurations];
  selfCopy = self;
  currentThermalLevel = self->super.super._currentThermalLevel;
  payloadCopy = payload;
  [(VCAggregator *)self microFromPayload:payload];
  [thermalDurations resumeAtBucket:currentThermalLevel currentTime:?];
  segmentCopy = segment;
  [downlinkSegment applyKnownDataModeToNewSegment:segment];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  downlinkSegmentCopy = downlinkSegment;
  obj = [downlinkSegment downlinkParticipantStats];
  v36 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
  if (v36)
  {
    v31 = *v44;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v11;
        v12 = *(*(&v43 + 1) + 8 * v11);
        v13 = [objc_msgSend(downlinkSegmentCopy "downlinkParticipantStats")];
        v14 = [DownlinkParticipantStats alloc];
        v15 = selfCopy->super.super._currentThermalLevel;
        [(VCAggregator *)selfCopy microFromPayload:payloadCopy];
        v16 = [(DownlinkParticipantStats *)v14 initWithThermalLevel:v15 andTime:?];
        v38 = v12;
        [objc_msgSend(segmentCopy "downlinkParticipantStats")];
        -[VCDataMLEnhance transferStatus:thermalLevel:](-[DownlinkParticipantStats mlEnhance](v16, "mlEnhance"), "transferStatus:thermalLevel:", [v13 mlEnhance], selfCopy->super.super._currentThermalLevel);
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        streamGroupStats = [v13 streamGroupStats];
        v18 = [streamGroupStats countByEnumeratingWithState:&v39 objects:v59 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v40;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(streamGroupStats);
              }

              v22 = *(*(&v39 + 1) + 8 * i);
              v23 = [v13 statsForStreamGroup:v22];
              v24 = [(DownlinkParticipantStats *)v16 statsForStreamGroup:v22];
              [v23 lastReceivedVideoStallTime];
              [v24 setLastReceivedVideoStallTime:?];
              if (VRTraceGetErrorLogLevelForModule("") >= 8)
              {
                v25 = VRTraceErrorLogLevelToCSTR(8u);
                v26 = gVRTraceOSLog;
                if (gVRTraceLogDebugAsInfo == 1)
                {
                  if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
                  {
                    [v24 lastReceivedVideoStallTime];
                    *buf = 136316418;
                    v48 = v25;
                    v49 = 2080;
                    v50 = "[VCAggregatorMultiway transferSegmentStateToNewDownlinkSegment:fromPreviousDownlinkSegment:withPayload:]";
                    v51 = 1024;
                    v52 = 8903;
                    v53 = 2048;
                    v54 = v27;
                    v55 = 2112;
                    v56 = v38;
                    v57 = 2112;
                    v58 = v22;
                    _os_log_impl(&dword_23D4DF000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d lastReceivedVideoStallTime value=%f was transferred to the new DownlinkSegment for participantID=%@, streamGroupID=%@", buf, 0x3Au);
                  }
                }

                else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
                {
                  [v24 lastReceivedVideoStallTime];
                  *buf = 136316418;
                  v48 = v25;
                  v49 = 2080;
                  v50 = "[VCAggregatorMultiway transferSegmentStateToNewDownlinkSegment:fromPreviousDownlinkSegment:withPayload:]";
                  v51 = 1024;
                  v52 = 8903;
                  v53 = 2048;
                  v54 = v28;
                  v55 = 2112;
                  v56 = v38;
                  v57 = 2112;
                  v58 = v22;
                  _os_log_debug_impl(&dword_23D4DF000, v26, OS_LOG_TYPE_DEBUG, " [%s] %s:%d lastReceivedVideoStallTime value=%f was transferred to the new DownlinkSegment for participantID=%@, streamGroupID=%@", buf, 0x3Au);
                }
              }
            }

            v19 = [streamGroupStats countByEnumeratingWithState:&v39 objects:v59 count:16];
          }

          while (v19);
        }

        v11 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
    }

    while (v36);
  }

  [segmentCopy setLastReportedDownlinkPacketsReceived:{objc_msgSend(downlinkSegmentCopy, "lastReportedDownlinkPacketsReceived")}];
  [segmentCopy setLastReportedDownlinkBytesReceived:{objc_msgSend(downlinkSegmentCopy, "lastReportedDownlinkBytesReceived")}];
  [segmentCopy setCurrentThermalLevel:selfCopy->super.super._currentThermalLevel];
  [segmentCopy setFecHeaderVersion:selfCopy->_fecHeaderVersion];
  v29 = *MEMORY[0x277D85DE8];
}

- (id)newDownlinkSegmentKey
{
  if (self->super._isOneToOneMode)
  {

    return [(VCAggregator *)self newSegmentNameOneToOne];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCACA0]);
    interfaceTypeIndicator = [(VCAggregatorMultiway *)self interfaceTypeIndicator];
    if (self->_isFullsizeUI)
    {
      v6 = "F";
    }

    else if (self->_isGridView)
    {
      v6 = "G";
    }

    else
    {
      v6 = "O";
    }

    return [v4 initWithFormat:@"D%s%@%s%02d%s%s", ":", interfaceTypeIndicator, ":", self->_participantCounter, ":", v6];
  }
}

- (void)resetDownlinkSegmentWithStreamGroups:(unsigned int)groups withPayload:(id)payload
{
  v49 = *MEMORY[0x277D85DE8];
  currentDownlinkSegment = self->_currentDownlinkSegment;
  currentDownlinkSegmentKey = self->_currentDownlinkSegmentKey;
  self->_isFullsizeUI = [(VCAggregatorMultiway *)self currentUISize];
  self->_currentDownlinkSegmentKey = [(VCAggregatorMultiway *)self newDownlinkSegmentKey];
  currentDownlinkSegmentStreamGroups = self->_currentDownlinkSegmentStreamGroups;
  self->_currentDownlinkSegmentStreamGroups = groups;
  v9 = nw_activity_create();
  if (self->super._nwActivity)
  {
    nw_activity_set_parent_activity();
  }

  nw_activity_activate();
  v25 = v9;
  self->_currentDownlinkSegment = [[DownlinkSegment alloc] initWithSegmentName:self->_currentDownlinkSegmentKey previousSegmentName:currentDownlinkSegmentKey segmentStreamGroups:self->_currentDownlinkSegmentStreamGroups previousSegmentStreamGroups:currentDownlinkSegmentStreamGroups nwActivity:v9 localSwitches:self->_localSwitches sessionSwitches:self->_sessionSwitches conversationTimeBase:self->super._conversationTimeBase delegate:self];
  [(MultiwaySegment *)self->_currentDownlinkSegment setIsApplePersonalHotspot:[(VCAggregator *)self isApplePersonalHotspotAndUpdatePhyMode]];
  [(MultiwaySegment *)self->_currentDownlinkSegment setLocalPHYMode:[(VCAggregator *)self localPHYMode]];
  [(MultiwaySegment *)self->_currentDownlinkSegment setReportingClientExperimentSettings:*&self->super._reportingClientExperimentSettings.networkConditionMonitoringClientExperimentEnabled | (self->super._reportingClientExperimentSettings.detectInactiveAudioFramesAACELD << 16)];
  [(MultiwaySegment *)self->_currentDownlinkSegment setActiveConnectionRegistry:self->super._activeConnectionRegistry];
  [(MultiwaySegment *)self->_currentDownlinkSegment setLocalParticipantID:self->_localParticipantID];
  [(MultiwaySegment *)self->_currentDownlinkSegment setEyeContactStatus:self->super._eyeContactStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setCenterStageStatus:self->super._centerStageStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setPortraitModeStatus:self->super._portraitModeStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setReactionsStatus:self->super._reactionsStatus];
  [(MultiwaySegment *)self->_currentUplinkSegment setStudioLightStatus:self->super._studioLightStatus];
  [(MultiwaySegment *)self->_currentDownlinkSegment setMlEnhanceStatus:[(VCAggregator *)self mlEnhanceStatus]];
  [(MultiwaySegment *)self->_currentDownlinkSegment setNWActivityReportingEnabled:self->super._isNWActivityReportingEnabled];
  [(VCAggregatorMultiway *)self transferSegmentStateToNewDownlinkSegment:self->_currentDownlinkSegment fromPreviousDownlinkSegment:currentDownlinkSegment withPayload:payload];

  ++self->_numberOfDownlinkSegments;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_calls;
  v28 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v10;
        v11 = *(*(&v35 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v11];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        streamGroupStats = [v12 streamGroupStats];
        v14 = [streamGroupStats countByEnumeratingWithState:&v31 objects:v47 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v32;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(streamGroupStats);
              }

              v18 = *(*(&v31 + 1) + 8 * i);
              v19 = self->_currentDownlinkSegment;
              v20 = [objc_msgSend(objc_msgSend(v12 "streamGroupStats")];
              [(VCAggregator *)self microFromPayload:payload];
              [(DownlinkSegment *)v19 processVideoDegraded:v20 forParticipant:v11 streamGroup:v18 timestamp:?];
            }

            v15 = [streamGroupStats countByEnumeratingWithState:&v31 objects:v47 count:16];
          }

          while (v15);
        }

        [self->_currentDownlinkSegment setServerPacketRetransmissionsForVideoEnabled:self->super._serverPacketRetransmissionsForVideoEnabled];
        [self->_currentDownlinkSegment setNackGeneratorConfigVersion:self->super._nackGeneratorConfigVersion];
        [self->_currentDownlinkSegment setServerPacketRetransmissionsExtraDelayBudgetEnabled:self->super._serverPacketRetransmissionsExtraDelayBudgetEnabled];
        v10 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v28);
  }

  if (v25)
  {
    nw_release(v25);
  }

  [(VCAggregatorMultiway *)self resetDownlinkSegmentRateControlInfo];
  [(VCAggregatorMultiway *)self resetRateControlMLEnrollmentAndStatsInSegment:self->_currentDownlinkSegment];
  [(MultiwaySegment *)self->_currentDownlinkSegment setBootstrapSampleIndex:self->_bootstrapSampleIndex];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v21 = VRTraceErrorLogLevelToCSTR(8u);
    v22 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_currentDownlinkSegmentKey;
        *buf = 136315906;
        v40 = v21;
        v41 = 2080;
        v42 = "[VCAggregatorMultiway resetDownlinkSegmentWithStreamGroups:withPayload:]";
        v43 = 1024;
        v44 = 8984;
        v45 = 2112;
        v46 = v23;
        _os_log_impl(&dword_23D4DF000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: New key generated for downlink segment '%@'", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [VCAggregatorMultiway resetDownlinkSegmentWithStreamGroups:v21 withPayload:&self->_currentDownlinkSegmentKey];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)resetDownlinkSegmentRateControlInfo
{
  if (self->_rateControlSmartBrakeTrialVersionRemote)
  {
    [(MultiwaySegment *)self->_currentDownlinkSegment setRateControlSmartBrakeTrialVersion:?];
  }

  if (self->_reportRateControlExperimentRemote)
  {
    [(MultiwaySegment *)self->_currentDownlinkSegment setRateControlExperimentVersion:self->_rateControlExperimentVersionRemote];
    [(MultiwaySegment *)self->_currentDownlinkSegment setRateControlExperimentGroupIndex:self->_rateControlExperimentGroupIndexRemote];
    currentDownlinkSegment = self->_currentDownlinkSegment;

    [(MultiwaySegment *)currentDownlinkSegment setReportRateControlExperiment:1];
  }
}

- (void)transferActiveUplinkStatesToCall:(id)call payload:(id)payload
{
  [(VCAggregator *)self microFromPayload:payload];
  v7 = v6;
  [call setCurrentThermalLevel:self->super.super._currentThermalLevel];
  if (![(VCDurationHistogram *)self->super._studioLightDuration isPaused])
  {
    [objc_msgSend(call "studioLightDuration")];
  }

  if (![(VCDurationHistogram *)self->super._centerStageDuration isPaused])
  {
    [objc_msgSend(call "centerStageDuration")];
  }

  if (![(VCDurationHistogram *)self->super._portraitModeDuration isPaused])
  {
    [objc_msgSend(call "portraitModeDuration")];
  }

  if (![(VCDurationHistogram *)self->super._eyeContactDuration isPaused])
  {
    [objc_msgSend(call "eyeContactDuration")];
  }

  if (![(VCDurationHistogram *)self->super._reactionActiveDuration isPaused])
  {
    [objc_msgSend(call "reactionActiveDuration")];
  }

  if (![(VCDurationHistogram *)self->super._backgroundReplacementDuration isPaused])
  {
    backgroundReplacementDuration = [call backgroundReplacementDuration];
    currentThermalLevel = self->super.super._currentThermalLevel;

    [backgroundReplacementDuration resumeAtBucket:currentThermalLevel currentTime:v7];
  }
}

- (BOOL)isParticipantLive:(id)live
{
  if (live)
  {
    v3 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:?];

    return [v3 isLive];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway isParticipantLive:];
      }
    }

    return 0;
  }
}

- (void)audioEnabled:(id)enabled
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [enabled objectForKeyedSubscript:@"VCSPUUID"];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_msgSend(enabled objectForKeyedSubscript:{@"VCSPAudioEnabled", "BOOLValue"}];
      [v7 setIsAudioEnabled:{v8 | objc_msgSend(v7, "isAudioEnabled")}];
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR(7u);
        v10 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = @"Disabled";
          v13 = 136316162;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCAggregatorMultiway audioEnabled:]";
          if (v8)
          {
            v11 = @"Enabled";
          }

          v17 = 1024;
          v18 = 9087;
          v19 = 2112;
          v20 = v5;
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Audio for call with participantID '%@' was set to '%@'", &v13, 0x30u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway audioEnabled:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway audioEnabled:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoEnabled:(id)enabled
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [enabled objectForKeyedSubscript:@"VCSPUUID"];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_msgSend(enabled objectForKeyedSubscript:{@"VCSPVideoEnabled", "BOOLValue"}];
      [v7 setIsVideoEnabled:{v8 | objc_msgSend(v7, "isVideoEnabled")}];
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR(7u);
        v10 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = @"Disabled";
          v13 = 136316162;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCAggregatorMultiway remoteVideoEnabled:]";
          if (v8)
          {
            v11 = @"Enabled";
          }

          v17 = 1024;
          v18 = 9104;
          v19 = 2112;
          v20 = v5;
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Video for call with participantID '%@' was set to '%@'", &v13, 0x30u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway remoteVideoEnabled:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway remoteVideoEnabled:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateDeviceOutputLatency:(id)latency
{
  [objc_msgSend(latency objectForKeyedSubscript:{@"VCAudioOutputLatency", "doubleValue"}];
  self->_audioLatency = v5;
  [objc_msgSend(latency objectForKeyedSubscript:{@"VCVideoDisplayLatency", "doubleValue"}];
  self->_displayLatency = v6;
}

- (void)videoEnabled:(id)enabled
{
  [enabled objectForKeyedSubscript:@"VCSPUUID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([enabled objectForKeyedSubscript:@"VCSPUUID"])
    {
      v5 = [enabled objectForKeyedSubscript:@"VIDSTATE"];
      if (v5)
      {
        [(NSMutableArray *)self->_videoEnabledState addObject:v5];
      }

      v6 = [enabled objectForKeyedSubscript:@"VIDDRTN"];
      if (v6)
      {
        v7 = v6;
        videoEnabledDuration = self->_videoEnabledDuration;

        [(NSMutableArray *)videoEnabledDuration addObject:v7];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway videoEnabled:];
      }
    }
  }

  else
  {
    [VCAggregatorMultiway videoEnabled:?];
  }
}

- (void)screenEnabled:(id)enabled timestamp:(double)timestamp
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = [enabled objectForKeyedSubscript:@"VCSPUUID"];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_msgSend(enabled objectForKeyedSubscript:{@"VCSPScreenEnabled", "BOOLValue"}];
    if ([objc_msgSend(enabled objectForKeyedSubscript:{@"VCSPIsLocalParticipant", "BOOLValue"}])
    {
      self->_sessionAggregatedScreenLocalParticipantEnabled = v9;
      self->_isUplinkScreenEnabled |= v9;
      [self->_currentUplinkSegment setIsUplinkScreenEnabled:v9];
    }

    self->_reportScreenUpgrade = self->_participantCounter == 2;
    v10 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v8];
    if (v10)
    {
      v11 = v10;
      [v10 setIsScreenEnabled:{v9 | objc_msgSend(v10, "isScreenEnabled")}];
      if (v9)
      {
        [v11 markScreenShareStartWithTimestamp:timestamp];
      }

      else
      {
        [v11 markScreenShareCompletionWithTimestamp:timestamp];
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR(7u);
        v13 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v14 = @"Disabled";
          v16 = 136316162;
          v17 = v12;
          v18 = 2080;
          v19 = "[VCAggregatorMultiway screenEnabled:timestamp:]";
          if (v9)
          {
            v14 = @"Enabled";
          }

          v20 = 1024;
          v21 = 9159;
          v22 = 2112;
          v23 = v8;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Video for call with participantID '%@' was set to '%@'", &v16, 0x30u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway screenEnabled:timestamp:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway screenEnabled:timestamp:];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)expanseEnabled:(id)enabled withType:(unsigned __int16)type
{
  typeCopy = type;
  v26 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(enabled objectForKeyedSubscript:{@"VCSPExpanseEnabled", "BOOLValue"}];
  v8 = v7;
  if (typeCopy == 2)
  {
    v9 = [enabled objectForKeyedSubscript:@"VCSPUUID"];
    if (v9)
    {
      v10 = v9;
      v11 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v9];
      if (v11)
      {
        [v11 setIsExpanseEnabled:{v8 | objc_msgSend(v11, "isExpanseEnabled")}];
        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v12 = VRTraceErrorLogLevelToCSTR(7u);
          v13 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v14 = @"Disabled";
            v16 = 136316162;
            v17 = v12;
            v18 = 2080;
            v19 = "[VCAggregatorMultiway expanseEnabled:withType:]";
            if (v8)
            {
              v14 = @"Enabled";
            }

            v20 = 1024;
            v21 = 9178;
            v22 = 2112;
            v23 = v10;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Expanse for call with participantID=%@ was set to [%@]", &v16, 0x30u);
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [VCAggregatorMultiway expanseEnabled:withType:];
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway expanseEnabled:withType:];
      }
    }
  }

  else if (typeCopy == 1)
  {
    self->_isExpanseEnabled |= v7;
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway expanseEnabled:withType:];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateCenterStageEnabled:(unsigned __int16)enabled
{
  v6[1] = *MEMORY[0x277D85DE8];
  self->_isCenterStageEnabled = enabled != 0;
  [self->_currentUplinkSegment setIsCenterStageEnabled:?];
  v5 = @"CAMCSA";
  v6[0] = [MEMORY[0x277CCABA8] numberWithBool:self->_isCenterStageEnabled];
  -[VCAggregatorMultiway updateVideoFeatureStatus:](self, "updateVideoFeatureStatus:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1]);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)updatePortraitBlurEnabled:(unsigned __int16)enabled
{
  v6[1] = *MEMORY[0x277D85DE8];
  self->_isPortraitBlurEnabled = enabled != 0;
  [self->_currentUplinkSegment setIsPortraitBlurEnabled:?];
  v5 = @"CAMPMA";
  v6[0] = [MEMORY[0x277CCABA8] numberWithBool:self->_isPortraitBlurEnabled];
  -[VCAggregatorMultiway updateVideoFeatureStatus:](self, "updateVideoFeatureStatus:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1]);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)processStudioLightFeatureStatus:(id)status
{
  self->super._studioLightStatus = [(VCAggregator *)self processVideoFeatureStatus:@"SLFENB" currentFeatureStatus:self->super._studioLightStatus payload:status];
  [(MultiwaySegment *)self->_currentUplinkSegment setStudioLightStatus:[(VCAggregator *)self processVideoFeatureStatus:@"SLFENB" currentFeatureStatus:[(MultiwaySegment *)self->_currentUplinkSegment studioLightStatus] payload:status]];
  [(MultiwaySegment *)self->_currentDownlinkSegment setStudioLightStatus:[(VCAggregator *)self processVideoFeatureStatus:@"SLFENB" currentFeatureStatus:[(MultiwaySegment *)self->_currentDownlinkSegment studioLightStatus] payload:status]];
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMSLA" durationHistogram:self->super._studioLightDuration payload:status];
  studioLightDuration = [self->_currentUplinkSegment studioLightDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMSLA" durationHistogram:studioLightDuration payload:status];
}

- (void)processCenterStageFeatureStatus:(id)status
{
  self->super._centerStageStatus = [(VCAggregator *)self processVideoFeatureStatus:@"CSFENB" currentFeatureStatus:self->super._centerStageStatus payload:status];
  [(MultiwaySegment *)self->_currentUplinkSegment setCenterStageStatus:[(VCAggregator *)self processVideoFeatureStatus:@"CSFENB" currentFeatureStatus:[(MultiwaySegment *)self->_currentUplinkSegment centerStageStatus] payload:status]];
  [(MultiwaySegment *)self->_currentDownlinkSegment setCenterStageStatus:[(VCAggregator *)self processVideoFeatureStatus:@"CSFENB" currentFeatureStatus:[(MultiwaySegment *)self->_currentDownlinkSegment centerStageStatus] payload:status]];
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMCSA" durationHistogram:self->super._centerStageDuration payload:status];
  centerStageDuration = [self->_currentUplinkSegment centerStageDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMCSA" durationHistogram:centerStageDuration payload:status];
}

- (void)processPortraitModeFeatureStatus:(id)status
{
  self->super._portraitModeStatus = [(VCAggregator *)self processVideoFeatureStatus:@"PMFENB" currentFeatureStatus:self->super._portraitModeStatus payload:status];
  [(MultiwaySegment *)self->_currentUplinkSegment setPortraitModeStatus:[(VCAggregator *)self processVideoFeatureStatus:@"PMFENB" currentFeatureStatus:[(MultiwaySegment *)self->_currentUplinkSegment portraitModeStatus] payload:status]];
  [(MultiwaySegment *)self->_currentDownlinkSegment setPortraitModeStatus:[(VCAggregator *)self processVideoFeatureStatus:@"PMFENB" currentFeatureStatus:[(MultiwaySegment *)self->_currentDownlinkSegment portraitModeStatus] payload:status]];
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMPMA" durationHistogram:self->super._portraitModeDuration payload:status];
  portraitModeDuration = [self->_currentUplinkSegment portraitModeDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMPMA" durationHistogram:portraitModeDuration payload:status];
}

- (void)processReactionFeatureStatus:(id)status
{
  self->super._reactionsStatus = [(VCAggregator *)self processVideoFeatureStatus:@"REFENB" currentFeatureStatus:self->super._reactionsStatus payload:status];
  [(MultiwaySegment *)self->_currentUplinkSegment setReactionsStatus:[(VCAggregator *)self processVideoFeatureStatus:@"REFENB" currentFeatureStatus:[(MultiwaySegment *)self->_currentUplinkSegment reactionsStatus] payload:status]];
  [(MultiwaySegment *)self->_currentDownlinkSegment setReactionsStatus:[(VCAggregator *)self processVideoFeatureStatus:@"REFENB" currentFeatureStatus:[(MultiwaySegment *)self->_currentDownlinkSegment reactionsStatus] payload:status]];
  [(VCAggregator *)self processVideoFeatureStatus:@"REACDUR" durationHistogram:self->super._reactionActiveDuration payload:status];
  reactionActiveDuration = [self->_currentUplinkSegment reactionActiveDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"REACDUR" durationHistogram:reactionActiveDuration payload:status];
}

- (void)processBackgroundReplacementFeatureStatus:(id)status
{
  self->super._backgroundReplacementStatus = [(VCAggregator *)self processVideoFeatureStatus:@"BGRFENB" currentFeatureStatus:self->super._backgroundReplacementStatus payload:status];
  [(VCReportingCommon *)self->_currentUplinkSegment setBackgroundReplacementStatus:[(VCAggregator *)self processVideoFeatureStatus:@"BGRFENB" currentFeatureStatus:[(VCReportingCommon *)self->_currentUplinkSegment backgroundReplacementStatus] payload:status]];
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMBGRA" durationHistogram:self->super._backgroundReplacementDuration payload:status];
  backgroundReplacementDuration = [self->_currentUplinkSegment backgroundReplacementDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMBGRA" durationHistogram:backgroundReplacementDuration payload:status];
}

- (void)processEyeContactFeatureStatus:(id)status
{
  [(MultiwaySegment *)self->_currentDownlinkSegment setEyeContactStatus:[(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" currentFeatureStatus:[(MultiwaySegment *)self->_currentDownlinkSegment eyeContactStatus] payload:status]];
  [(MultiwaySegment *)self->_currentUplinkSegment setEyeContactStatus:[(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" currentFeatureStatus:[(MultiwaySegment *)self->_currentUplinkSegment eyeContactStatus] payload:status]];
  self->super._eyeContactStatus = [(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" currentFeatureStatus:self->super._eyeContactStatus payload:status];
  [(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" durationHistogram:self->super._eyeContactDuration payload:status];
  eyeContactDuration = [self->_currentUplinkSegment eyeContactDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" durationHistogram:eyeContactDuration payload:status];
}

- (void)processPIPFeatureStatus:(id)status
{
  [(VCAggregator *)self microFromPayload:?];
  v6 = v5;
  v7 = [status objectForKeyedSubscript:@"PIPDUR"];
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
    pipThermalDurations = [self->_currentDownlinkSegment pipThermalDurations];
    if (bOOLValue)
    {
      [(VCDurationHistogram *)pipThermalDurations resumeAtBucket:self->super.super._currentThermalLevel currentTime:v6];
      pipThermalDurations = self->_pipThermalDurations;
      currentThermalLevel = self->super.super._currentThermalLevel;

      [(VCDurationHistogram *)pipThermalDurations resumeAtBucket:currentThermalLevel currentTime:v6];
    }

    else
    {
      [(VCDurationHistogram *)pipThermalDurations pause:v6];
      v12 = self->_pipThermalDurations;

      [(VCDurationHistogram *)v12 pause:v6];
    }
  }
}

- (id)downlinkParticipantStatsForParticipant:(id)participant withTime:(double)time
{
  v7 = [(NSMutableDictionary *)self->_downlinkParticipantStats objectForKeyedSubscript:?];
  if (!v7)
  {
    v7 = [[DownlinkParticipantStats alloc] initWithThermalLevel:self->super.super._currentThermalLevel andTime:time];
    [(NSMutableDictionary *)self->_downlinkParticipantStats setObject:v7 forKeyedSubscript:participant];
  }

  return v7;
}

- (void)updateMLEnhanceStatsForParticipant:(id)participant withPayload:(id)payload
{
  [(VCAggregator *)self microFromPayload:payload];
  v8 = v7;
  v9 = [self->_currentDownlinkSegment callStatsForParticipant:participant andTime:?];
  if (v9)
  {
    v10 = v9;
    [objc_msgSend(v9 "mlEnhance")];
    [objc_msgSend(v10 "mlEnhance")];
  }

  v11 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:participant];
  if ([v11 isLive])
  {
    [objc_msgSend(v11 "mlEnhance")];
    [objc_msgSend(v11 "mlEnhance")];
  }

  v12 = [(VCAggregatorMultiway *)self downlinkParticipantStatsForParticipant:participant withTime:v8];
  [objc_msgSend(v12 "mlEnhance")];
  mlEnhance = [v12 mlEnhance];

  [mlEnhance updateStateWithPayload:payload withTime:v8];
}

- (void)processMLEnhanceFeatureStats:(id)stats
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [stats objectForKeyedSubscript:@"VCSPUUID"];
  if (v5)
  {
    v6 = *MEMORY[0x277D85DE8];

    [(VCAggregatorMultiway *)self updateMLEnhanceStatsForParticipant:v5 withPayload:stats];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allKeys = [(NSMutableDictionary *)self->_calls allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          [(VCAggregatorMultiway *)self updateMLEnhanceStatsForParticipant:*(*(&v13 + 1) + 8 * i) withPayload:stats];
        }

        v9 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)updateVideoFeatureStatus:(id)status
{
  v5.receiver = self;
  v5.super_class = VCAggregatorMultiway;
  [(VCAggregator *)&v5 updateVideoFeatureStatus:?];
  [(VCAggregatorMultiway *)self processPIPFeatureStatus:status];
  [(VCAggregatorMultiway *)self processMLEnhanceFeatureStats:status];
}

- (void)updateRateControlExperiment:(id)experiment type:(unsigned __int16)type
{
  typeCopy = type;
  if ([experiment objectForKeyedSubscript:@"RCEV"] && objc_msgSend(experiment, "objectForKeyedSubscript:", @"RCEG"))
  {
    if (typeCopy == 1)
    {
      self->_reportRateControlExperimentRemote = 1;
      self->_rateControlExperimentVersionRemote = [objc_msgSend(experiment objectForKeyedSubscript:{@"RCEV", "unsignedIntValue"}];
      self->_rateControlExperimentGroupIndexRemote = [objc_msgSend(experiment objectForKeyedSubscript:{@"RCEG", "unsignedIntValue"}];
      [(VCAggregatorMultiway *)self updateRateControlExperimentCall:experiment];
      v7 = &OBJC_IVAR___VCAggregatorMultiway__currentDownlinkSegment;
    }

    else
    {
      if (typeCopy)
      {
        return;
      }

      self->super._reportRateControlExperiment = 1;
      self->super._rateControlExperimentVersion = [objc_msgSend(experiment objectForKeyedSubscript:{@"RCEV", "unsignedIntValue"}];
      self->super._rateControlExperimentGroupIndex = [objc_msgSend(experiment objectForKeyedSubscript:{@"RCEG", "unsignedIntValue"}];
      v7 = &OBJC_IVAR___VCAggregatorMultiway__currentUplinkSegment;
    }

    v8 = *(&self->super.super.super.isa + *v7);

    [(VCAggregatorMultiway *)self updateRateControlExperimentSegment:v8 WithPayload:experiment];
  }
}

- (void)updateRateControlExperimentSegment:(id)segment WithPayload:(id)payload
{
  [segment setReportRateControlExperiment:1];
  [segment setRateControlExperimentVersion:{objc_msgSend(objc_msgSend(payload, "objectForKeyedSubscript:", @"RCEV", "unsignedIntValue")}];
  v6 = [objc_msgSend(payload objectForKeyedSubscript:{@"RCEG", "unsignedIntValue"}];

  [segment setRateControlExperimentGroupIndex:v6];
}

- (void)updateRateControlExperimentCall:(id)call
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [call objectForKeyedSubscript:@"VCSPUUID"];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      [v6 setReportRateControlExperimentRemote:1];
      [v7 setRateControlExperimentVersionRemote:{objc_msgSend(objc_msgSend(call, "objectForKeyedSubscript:", @"RCEV", "unsignedIntValue")}];
      [v7 setRateControlExperimentGroupIndexRemote:{objc_msgSend(objc_msgSend(call, "objectForKeyedSubscript:", @"RCEG", "unsignedIntValue")}];
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR(7u);
        v9 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316418;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCAggregatorMultiway updateRateControlExperimentCall:]";
          v15 = 1024;
          v16 = 9367;
          v17 = 2112;
          v18 = v5;
          v19 = 1024;
          rateControlExperimentVersionRemote = [v7 rateControlExperimentVersionRemote];
          v21 = 1024;
          rateControlExperimentGroupIndexRemote = [v7 rateControlExperimentGroupIndexRemote];
          _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: participantID[%@] rateControlExperimentVersionRemote=%d rateControlExperimentGroupIndexRemote=%d", &v11, 0x32u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway updateRateControlExperimentCall:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway updateRateControlExperimentCall:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateRateControlSmartBrakeTrialVersion:(id)version type:(unsigned __int16)type
{
  if (version)
  {
    typeCopy = type;
    if ([version objectForKeyedSubscript:@"SBVERS"])
    {
      if (typeCopy)
      {
        if (typeCopy != 1)
        {
          return;
        }

        [(VCAggregatorMultiway *)self updateRateControlSmartBrakeTrialVersionRemote:version];
        v7 = &OBJC_IVAR___VCAggregatorMultiway__currentDownlinkSegment;
        v8 = &OBJC_IVAR___VCAggregatorMultiway__rateControlSmartBrakeTrialVersionRemote;
      }

      else
      {
        v7 = &OBJC_IVAR___VCAggregatorMultiway__currentUplinkSegment;
        v8 = &OBJC_IVAR___VCAggregator__rateControlSmartBrakeTrialVersion;
      }

      *(&self->super.super.super.isa + *v8) = [objc_msgSend(version objectForKeyedSubscript:{@"SBVERS", "unsignedIntValue"}];
      v9 = [objc_msgSend(version objectForKeyedSubscript:{@"SBVERS", "unsignedIntValue"}];
      v10 = *(&self->super.super.super.isa + *v7);

      [v10 setRateControlSmartBrakeTrialVersion:v9];
    }
  }
}

- (void)updateRateControlSmartBrakeTrialVersionRemote:(id)remote
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [remote objectForKeyedSubscript:@"VCSPUUID"];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      [v6 setRateControlSmartBrakeTrialVersionRemote:{objc_msgSend(objc_msgSend(remote, "objectForKeyedSubscript:", @"SBVERS", "unsignedIntValue")}];
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR(7u);
        v9 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316162;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCAggregatorMultiway updateRateControlSmartBrakeTrialVersionRemote:]";
          v15 = 1024;
          v16 = 9400;
          v17 = 2112;
          v18 = v5;
          v19 = 1024;
          rateControlSmartBrakeTrialVersionRemote = [v7 rateControlSmartBrakeTrialVersionRemote];
          _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: participantID[%@] rateControlSmartBrakeTrialVersionRemote=%d", &v11, 0x2Cu);
        }
      }
    }

    else
    {
      [VCAggregatorMultiway updateRateControlSmartBrakeTrialVersionRemote:?];
    }
  }

  else
  {
    [VCAggregatorMultiway updateRateControlSmartBrakeTrialVersionRemote:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateRateControlMachineLearningEnrollment:(id)enrollment
{
  if (enrollment)
  {
    if ([enrollment objectForKeyedSubscript:@"VCRCMLMID"])
    {
      v5 = [enrollment objectForKeyedSubscript:@"VCRCMLMID"];
    }

    else
    {
      v5 = &stru_284F80940;
    }

    self->_VCRCML_modelID = &v5->isa;
    if ([enrollment objectForKeyedSubscript:@"VCRCMLRID"])
    {
      v6 = [enrollment objectForKeyedSubscript:@"VCRCMLRID"];
    }

    else
    {
      v6 = &stru_284F80940;
    }

    self->_VCRCML_recipeID = &v6->isa;
    self->_VCRCML_nIteration = [objc_msgSend(enrollment objectForKeyedSubscript:{@"VCRCMLNI", "intValue"}];
    self->_VCRCML_reportingGroup = [objc_msgSend(enrollment objectForKeyedSubscript:{@"VCRCMLRG", "intValue"}];
    currentUplinkSegment = self->_currentUplinkSegment;
    if (currentUplinkSegment)
    {
      [(MultiwaySegment *)currentUplinkSegment setVCRCML_modelID:self->_VCRCML_modelID];
      [(MultiwaySegment *)self->_currentUplinkSegment setVCRCML_recipeID:self->_VCRCML_recipeID];
      [(MultiwaySegment *)self->_currentUplinkSegment setVCRCML_nIteration:self->_VCRCML_nIteration];
      [(MultiwaySegment *)self->_currentUplinkSegment setVCRCML_reportingGroup:self->_VCRCML_reportingGroup];
    }

    currentDownlinkSegment = self->_currentDownlinkSegment;
    if (currentDownlinkSegment)
    {
      [(MultiwaySegment *)currentDownlinkSegment setVCRCML_modelID:self->_VCRCML_modelID];
      [(MultiwaySegment *)self->_currentDownlinkSegment setVCRCML_recipeID:self->_VCRCML_recipeID];
      [(MultiwaySegment *)self->_currentDownlinkSegment setVCRCML_nIteration:self->_VCRCML_nIteration];
      VCRCML_reportingGroup = self->_VCRCML_reportingGroup;
      v10 = self->_currentDownlinkSegment;

      [(MultiwaySegment *)v10 setVCRCML_reportingGroup:VCRCML_reportingGroup];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway updateRateControlMachineLearningEnrollment:];
    }
  }
}

- (void)updateRateControlMachineLearningRateControllerStats:(id)stats
{
  if (stats)
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VCRCMLD", "doubleValue"}];
    self->_VCRCML_activeMLEngagedDuration = v5;
    self->_VCRCML_isMLEngaged = [objc_msgSend(stats objectForKeyedSubscript:{@"VCRCMLE", "BOOLValue"}];
    self->_VCRCML_targetBitrateAtTimeOfDisengagement = [objc_msgSend(stats objectForKeyedSubscript:{@"VCRCMLRCTBR", "intValue"}];
    currentUplinkSegment = self->_currentUplinkSegment;
    if (currentUplinkSegment)
    {
      [(MultiwaySegment *)currentUplinkSegment setVCRCML_activeMLEngagedDuration:self->_VCRCML_activeMLEngagedDuration];
      [(MultiwaySegment *)self->_currentUplinkSegment setVCRCML_isMLEngaged:self->_VCRCML_isMLEngaged];
      [(MultiwaySegment *)self->_currentUplinkSegment setVCRCML_targetBitrateAtTimeOfDisengagement:self->_VCRCML_targetBitrateAtTimeOfDisengagement];
    }

    currentDownlinkSegment = self->_currentDownlinkSegment;
    if (currentDownlinkSegment)
    {
      [(MultiwaySegment *)currentDownlinkSegment setVCRCML_activeMLEngagedDuration:self->_VCRCML_activeMLEngagedDuration];
      [(MultiwaySegment *)self->_currentDownlinkSegment setVCRCML_isMLEngaged:self->_VCRCML_isMLEngaged];
      VCRCML_targetBitrateAtTimeOfDisengagement = self->_VCRCML_targetBitrateAtTimeOfDisengagement;
      v9 = self->_currentDownlinkSegment;

      [(MultiwaySegment *)v9 setVCRCML_targetBitrateAtTimeOfDisengagement:VCRCML_targetBitrateAtTimeOfDisengagement];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway updateRateControlMachineLearningRateControllerStats:];
    }
  }
}

- (void)updateMediaQueueInfoWithPayload:(id)payload
{
  v18 = *MEMORY[0x277D85DE8];
  if (payload)
  {
    if ([payload objectForKeyedSubscript:@"MQSchP"])
    {
      v5 = [objc_msgSend(payload objectForKeyedSubscript:{@"MQSchP", "intValue"}];
      [(MultiwaySegment *)self->_currentUplinkSegment setMediaQueueSchedulePolicy:v5];
      self->super._mediaQueueSchedulePolicy = v5;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR(7u);
      v7 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        mediaQueueSchedulePolicy = self->super._mediaQueueSchedulePolicy;
        v10 = 136315906;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCAggregatorMultiway updateMediaQueueInfoWithPayload:]";
        v14 = 1024;
        v15 = 9487;
        v16 = 1024;
        v17 = mediaQueueSchedulePolicy;
        _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: mediaQueueSchedulePolicy=%d", &v10, 0x22u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway updateMediaQueueInfoWithPayload:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateCoreMotionActivityWithPayload:(id)payload
{
  if ([payload objectForKeyedSubscript:@"CMActivityValue"] && objc_msgSend(payload, "objectForKeyedSubscript:", @"CMActivityConfidence"))
  {
    self->_coreMotionActivityValue = [objc_msgSend(payload objectForKeyedSubscript:{@"CMActivityValue", "intValue"}];
    self->_coreMotionActivityConfidence = [objc_msgSend(payload objectForKeyedSubscript:{@"CMActivityConfidence", "intValue"}];
    if (!self->super._isDuplicationEnabled || [(MultiwaySegment *)self->_currentUplinkSegment duration]<= 0)
    {
      [(MultiwaySegment *)self->_currentUplinkSegment setCoreMotionActivityValue:self->_coreMotionActivityValue];
      [(MultiwaySegment *)self->_currentUplinkSegment setCoreMotionActivityConfidence:self->_coreMotionActivityConfidence];
    }

    if (!self->super._isDuplicationEnabled || [(MultiwaySegment *)self->_currentDownlinkSegment duration]<= 0)
    {
      [(MultiwaySegment *)self->_currentDownlinkSegment setCoreMotionActivityValue:self->_coreMotionActivityValue];
      coreMotionActivityConfidence = self->_coreMotionActivityConfidence;
      currentDownlinkSegment = self->_currentDownlinkSegment;

      [(MultiwaySegment *)currentDownlinkSegment setCoreMotionActivityConfidence:coreMotionActivityConfidence];
    }
  }
}

- (void)updateBootstrapIndex:(id)index
{
  v5 = [index objectForKeyedSubscript:@"CID"];
  v6 = [index objectForKeyedSubscript:@"VCSPUUID"];
  if (v5)
  {
    self->_bootstrapSampleIndex = [v5 hash] % 0x64;
    [(MultiwaySegment *)self->_currentUplinkSegment setBootstrapSampleIndex:?];
    [(MultiwaySegment *)self->_currentDownlinkSegment setBootstrapSampleIndex:self->_bootstrapSampleIndex];
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v6];
      if (v7)
      {
        [v7 setBootstrapSampleIndex:self->_bootstrapSampleIndex];
      }

      else
      {
        [VCAggregatorMultiway updateBootstrapIndex:?];
      }
    }

    else
    {
      [VCAggregatorMultiway updateBootstrapIndex:?];
    }
  }

  else
  {
    [VCAggregatorMultiway updateBootstrapIndex:?];
  }
}

- (void)finalizeSession
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__VCAggregatorMultiway_finalizeSession__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

uint64_t __39__VCAggregatorMultiway_finalizeSession__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) microFromPayload:0];
  v3 = v2;
  [*(*(a1 + 32) + 3152) finalize:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 32) + 1368);
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 1368) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v8++)), "matchedOrientationDurations"), "finalize:", v3}];
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)finalizeCall:(id)call
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [call objectForKeyedSubscript:@"VCSPUUID"];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      [(VCAggregatorMultiway *)self processVideoDegraded:0 payload:call];
      [(VCAggregator *)self microFromPayload:call];
      [v7 finalizeCall:?];
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR(7u);
        v9 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315906;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCAggregatorMultiway finalizeCall:]";
          v15 = 1024;
          v16 = 9563;
          v17 = 2112;
          v18 = v5;
          _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Call for participantID '%@' has been finalized", &v11, 0x26u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway finalizeCall:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway finalizeCall:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)processDownlinkOptedInRateChange:(id)change
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [change objectForKeyedSubscript:@"VCSPUUIDList"];
  v6 = [v5 componentsSeparatedByString:{@", "}];
  if ([v6 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    calls = self->_calls;
    v8 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      v18 = v5;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(calls);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v6 indexOfObject:v12];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = v13;
            v15 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v12];
            if (v15)
            {
              v16 = v15;
              [v15 processDownlinkOptedInRateChange:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(change, "objectForKeyedSubscript:", @"VCSPDownlinkBitrates", "componentsSeparatedByString:", @", "), "objectAtIndexedSubscript:", v14), "intValue")}];
              [v16 setDownlinkOptedInBitrateSwitchCount:{objc_msgSend(v16, "downlinkOptedInBitrateSwitchCount") + 1}];
              v5 = v18;
            }

            else
            {
              v5 = v18;
              if (VRTraceGetErrorLogLevelForModule("") >= 3)
              {
                VRTraceErrorLogLevelToCSTR(3u);
                if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
                {
                  [VCAggregatorMultiway processDownlinkOptedInRateChange:];
                }
              }
            }

            goto LABEL_19;
          }
        }

        v9 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v19 objects:v23 count:16];
        v5 = v18;
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway processDownlinkOptedInRateChange:];
    }
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)processActualBitrateChange:(id)change
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(change objectForKeyedSubscript:{@"VCSPUUIDList", "componentsSeparatedByString:", @", "}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 136315906;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v10, v17];
        if (v11)
        {
          v12 = v11;
          v13 = [v4 indexOfObject:v10];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v12 processActualBitrateRateChange:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(change, "objectForKeyedSubscript:", @"VCSARxBRs", "componentsSeparatedByString:", @", "), "objectAtIndexedSubscript:", v13), "intValue") + objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(change, "objectForKeyedSubscript:", @"VCSVRxBRs", "componentsSeparatedByString:", @", "), "objectAtIndexedSubscript:", v13), "intValue")}];
          }
        }

        else if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR(3u);
          v15 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v24 = v14;
            v25 = 2080;
            v26 = "[VCAggregatorMultiway processActualBitrateChange:]";
            v27 = 1024;
            v28 = 9603;
            v29 = 2112;
            v30 = v10;
            _os_log_error_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCAggregatorMultiway:Can not process actual bitrate change for participantID '%@' as it does not exists", buf, 0x26u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)processAudioStreamSwitch:(id)switch
{
  v5 = [switch objectForKeyedSubscript:@"VCSPUUID"];
  v6 = [switch objectForKeyedSubscript:@"VCMSStreamGroup"];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway processAudioStreamSwitch:];
      }
    }
  }

  else
  {
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{v5), "incrementAudioStreamSwitchCounterForStreamGroup:", v6}];
  }
}

- (void)resetVideoStatsForU1OrMultiwaySwitch:(id)switch participantID:(id)d
{
  if (switch)
  {
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats "objectForKeyedSubscript:"resetMLStats"")];
    if (d)
    {
      [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{d), "streamGroupStats"), "objectForKeyedSubscript:", switch), "resetMLStats"}];
      v7 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_downlinkParticipantStats objectForKeyedSubscript:{d), "statsForStreamGroup:", switch}];

      [v7 resetMLStats];
    }
  }
}

- (void)processVideoStreamSwitch:(id)switch
{
  v5 = [switch objectForKeyedSubscript:@"VCSPUUID"];
  v6 = [switch objectForKeyedSubscript:@"VCMSStreamGroup"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway processVideoStreamSwitch:];
      }
    }
  }

  else
  {
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{v5), "incrementVideoStreamSwitchCounterForStreamGroup:", v6}];
  }

  if (self->super._isOneToOneMode)
  {
    [(VCAggregatorMultiway *)self resetVideoStatsForU1OrMultiwaySwitch:v7 participantID:v5];
  }
}

- (void)processDecryptionTimeoutEvent:(id)event
{
  v4 = [event objectForKeyedSubscript:@"VCSPUUID"];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v4];
    v6 = [v5 decryptionTimeoutCount] + 1;

    [v5 setDecryptionTimeoutCount:v6];
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway processDecryptionTimeoutEvent:];
    }
  }
}

- (void)processRTXConfigData:(id)data
{
  if ([data objectForKeyedSubscript:@"VCSPUUID"])
  {
    v5 = [data objectForKeyedSubscript:@"NacksRTXEnabled"];
    if (v5)
    {
      self->super._serverPacketRetransmissionsForVideoEnabled = [v5 integerValue] != 0;
    }

    v6 = [data objectForKeyedSubscript:@"NacksRTXConfigVersion"];
    if (v6)
    {
      self->super._nackGeneratorConfigVersion = [v6 integerValue];
    }

    v7 = [data objectForKeyedSubscript:@"NacksRTXDelayedEnabled"];
    if (v7)
    {
      self->super._serverPacketRetransmissionsExtraDelayBudgetEnabled = [v7 integerValue] != 0;
    }

    self->super._serverPacketRetransmissionsForVideoEnabled = [objc_msgSend(data objectForKeyedSubscript:{@"NacksRTXEnabled", "integerValue"}] != 0;
    self->super._nackGeneratorConfigVersion = [objc_msgSend(data objectForKeyedSubscript:{@"NacksRTXConfigVersion", "integerValue"}];
    self->super._serverPacketRetransmissionsExtraDelayBudgetEnabled = [objc_msgSend(data objectForKeyedSubscript:{@"NacksRTXDelayedEnabled", "integerValue"}] != 0;
    [self->_currentDownlinkSegment setServerPacketRetransmissionsForVideoEnabled:self->super._serverPacketRetransmissionsForVideoEnabled];
    [self->_currentDownlinkSegment setNackGeneratorConfigVersion:self->super._nackGeneratorConfigVersion];
    serverPacketRetransmissionsExtraDelayBudgetEnabled = self->super._serverPacketRetransmissionsExtraDelayBudgetEnabled;
    currentDownlinkSegment = self->_currentDownlinkSegment;

    [currentDownlinkSegment setServerPacketRetransmissionsExtraDelayBudgetEnabled:serverPacketRetransmissionsExtraDelayBudgetEnabled];
  }
}

- (void)processRtcpPSFBForResiliencyConfigData:(id)data
{
  if ([data objectForKeyedSubscript:@"VCSPUUID"])
  {
    v5 = [data objectForKeyedSubscript:@"RtcpForLoss"];
    if (v5)
    {
      self->super._rtcpPSFBForLossFeedbackEnabled = [v5 integerValue] != 0;
    }

    v6 = [data objectForKeyedSubscript:@"RtcpForLtrAck"];
    if (v6)
    {
      self->super._rtcpPSFBForLtrAckEnabled = [v6 integerValue] != 0;
    }

    [self->_currentDownlinkSegment setRtcpPSFBForLossFeedbackEnabled:self->super._rtcpPSFBForLossFeedbackEnabled];
    rtcpPSFBForLtrAckEnabled = self->super._rtcpPSFBForLtrAckEnabled;
    currentDownlinkSegment = self->_currentDownlinkSegment;

    [currentDownlinkSegment setRtcpPSFBForLtrAckEnabled:rtcpPSFBForLtrAckEnabled];
  }
}

- (unsigned)getActiveStreamGroups:(id)groups direction:(int)direction
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [groups objectForKeyedSubscript:@"VCSActiveStreamsList"];
  v7 = [groups objectForKeyedSubscript:sRTCReportingStreamCollection];
  if (v7 && (v8 = v7, v21 = 0u, v22 = 0u, v19 = 0u, v20 = 0u, (v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16]) != 0))
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (direction != 1 || [v6 containsString:*(*(&v19 + 1) + 8 * i)])
        {
          v15 = [v8 objectForKeyedSubscript:v14];
          if ([objc_msgSend(v15 objectForKeyedSubscript:{@"VCMSDirection", "intValue"}] == direction)
          {
            v16 = [v15 objectForKeyedSubscript:@"VCMSStreamGroup"];
            if (v16)
            {
              v11 |= 1 << [v16 unsignedIntValue];
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)checkForNewSegmentBasedOnActiveStreamGroups:(id)groups
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(VCAggregatorMultiway *)self getActiveStreamGroups:groups direction:1];
  if (v5 != self->_currentUplinkSegmentStreamGroups)
  {
    v6 = v5;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [+[VCAggregatorUtils validBitmapIndices:size:](VCAggregatorUtils validBitmapIndices:self->_currentUplinkSegmentStreamGroups size:{11), "componentsJoinedByString:", @", "}];
        v17 = 136316162;
        v18 = v7;
        v19 = 2080;
        v20 = "[VCAggregatorMultiway checkForNewSegmentBasedOnActiveStreamGroups:]";
        v21 = 1024;
        v22 = 9815;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = [+[VCAggregatorUtils validBitmapIndices:size:](VCAggregatorUtils validBitmapIndices:v6 size:{11), "componentsJoinedByString:", @", "}];
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: New segment started due to activeStreamGroups change from [%@] to [%@]", &v17, 0x30u);
      }
    }

    [(VCAggregatorMultiway *)self startUplinkSegmentWithStreamGroups:v6 withPayload:groups];
  }

  v10 = [(VCAggregatorMultiway *)self getActiveStreamGroups:groups direction:2];
  if (v10 != self->_currentDownlinkSegmentStreamGroups)
  {
    v11 = v10;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR(7u);
      v13 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [+[VCAggregatorUtils validBitmapIndices:size:](VCAggregatorUtils validBitmapIndices:self->_currentDownlinkSegmentStreamGroups size:{11), "componentsJoinedByString:", @", "}];
        v15 = [+[VCAggregatorUtils validBitmapIndices:size:](VCAggregatorUtils validBitmapIndices:v11 size:{11), "componentsJoinedByString:", @", "}];
        v17 = 136316162;
        v18 = v12;
        v19 = 2080;
        v20 = "[VCAggregatorMultiway checkForNewSegmentBasedOnActiveStreamGroups:]";
        v21 = 1024;
        v22 = 9822;
        v23 = 2112;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: New downlink segment started due to activeStreamGroups change from [%@] to [%@]", &v17, 0x30u);
      }
    }

    [(VCAggregatorMultiway *)self startDownlinkSegmentWithStreamGroups:v11 withPayload:groups];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateCallStreamGroupTickCount:(id)count streamData:(id)data
{
  v7 = [data objectForKeyedSubscript:@"VCMSStreamGroup"];
  v8 = [objc_msgSend(data objectForKeyedSubscript:{@"VCMSDirection", "intValue"}];
  if (v7 && v8 == 2)
  {
    v9 = [objc_msgSend(count "streamGroupStats")];
    [v9 setTickCount:{objc_msgSend(v9, "tickCount") + 1}];
    v10 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v7];
    v11 = [v10 tickCount] + 1;

    [v10 setTickCount:v11];
  }
}

- (void)processMediaQueueEgressIngressTelemetry:(id)telemetry
{
  if ([telemetry objectForKeyedSubscript:@"VCMQIngressVideoPkts"])
  {
    self->_totalVCMQIngressVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressVideoPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressAudioPkts"])
  {
    self->_totalVCMQIngressAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressAudioPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressPkts"])
  {
    self->_totalVCMQIngressPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressVideoPkts"])
  {
    self->_totalVCMQEgressVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressVideoPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressAudioPkts"])
  {
    self->_totalVCMQEgressAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressAudioPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressPkts"])
  {
    self->_totalVCMQEgressPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupAudioPkts"])
  {
    self->_totalVCMQEgressNonDupAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupAudioPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupVideoPkts"])
  {
    self->_totalVCMQEgressNonDupVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupVideoPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupPkts"])
  {
    self->_totalVCMQEgressNonDupPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressQueuedPkts"])
  {
    self->_totalVCMQIngressQueuedPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressQueuedPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQFlushedPkts"])
  {
    self->_totalVCMQFlushedPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQFlushedPkts", "integerValue"}];
  }
}

- (void)processMediaQueueTelemetry:(id)telemetry
{
  [(VCAggregatorMultiway *)self processMediaQueueEgressIngressTelemetry:?];
  streamGroupStats = self->_streamGroupStats;

  _VCAggregatorMultiway_CollectMediaQueueTelemetry(streamGroupStats, telemetry);
}

- (void)processCameraResolution:(id)resolution
{
  if ([resolution objectForKeyedSubscript:@"CAMRESW"])
  {
    self->_lastCameraCaptureWidth = [objc_msgSend(resolution objectForKeyedSubscript:{@"CAMRESW", "integerValue"}];
  }

  if ([resolution objectForKeyedSubscript:@"CAMRESH"])
  {
    self->_lastCameraCaptureHeight = [objc_msgSend(resolution objectForKeyedSubscript:{@"CAMRESH", "integerValue"}];
  }
}

- (void)updateNetworkSendResultStats:(id)stats
{
  if ([stats objectForKeyedSubscript:@"PSSCTR"])
  {
    self->_packetSendSuccessCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"PSSCTR", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"PSFCTR"])
  {
    self->_packetSendFailureCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"PSFCTR", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"WPRSZ"])
  {
    self->_averageWireReceiveBytes += [objc_msgSend(stats objectForKeyedSubscript:{@"WPRSZ", "integerValue"}];
    ++self->_averageWireReceiveCounter;
  }

  if ([stats objectForKeyedSubscript:@"WPSSZ"])
  {
    self->_averageWireSendBytes += [objc_msgSend(stats objectForKeyedSubscript:{@"WPSSZ", "integerValue"}];
    ++self->_averageWireSendCounter;
  }
}

- (void)processRateControllerTelemetry:(id)telemetry
{
  v5 = [telemetry objectForKeyedSubscript:@"OVSBR"];
  if (v5)
  {
    self->super._overshootSendBitrate += [v5 intValue];
  }

  v6 = [telemetry objectForKeyedSubscript:@"UNSBR"];
  if (v6)
  {
    self->super._undershootSendBitrate += [v6 intValue];
  }

  v7 = [telemetry objectForKeyedSubscript:@"AExTR"];
  if (v7)
  {
    self->_totalExtraTargetBitrate += [v7 intValue];
  }

  v8 = [telemetry objectForKeyedSubscript:@"OVBWE"];
  if (v8)
  {
    self->super._overUtilizedBandwidth += [v8 intValue];
  }

  v9 = [telemetry objectForKeyedSubscript:@"UNBWE"];
  if (v9)
  {
    self->super._underUtilizedBandwidth += [v9 intValue];
  }

  v10 = [telemetry objectForKeyedSubscript:@"WRBPL"];
  if (v10)
  {
    v11 = v10;
    if ([v10 intValue] >= 7)
    {
      ++self->super._abnormalBPLCount;
      self->super._averageAbnormalBPL = self->super._averageAbnormalBPL + [v11 intValue];
    }
  }

  v12 = [telemetry objectForKeyedSubscript:@"WRRTT"];
  if (v12)
  {
    v13 = v12;
    if ([v12 intValue] >= 501)
    {
      self->super._averageAbnormalRTT = self->super._averageAbnormalRTT + [v13 intValue];
      ++self->super._abnormalRTTCount;
    }
  }

  v14 = [telemetry objectForKeyedSubscript:@"SBWD"];
  if (v14)
  {
    self->_lastReportedSuddenBandwidthDropCount += [v14 intValue];
  }

  v15 = [telemetry objectForKeyedSubscript:@"ECT1Cnt"];
  if (v15)
  {
    -[MultiwaySegment setEcnECT1Count:](self->_currentUplinkSegment, "setEcnECT1Count:", [v15 intValue]);
  }

  v16 = [telemetry objectForKeyedSubscript:@"CECnt"];
  if (v16)
  {
    -[MultiwaySegment setEcnCECount:](self->_currentUplinkSegment, "setEcnCECount:", [v16 intValue]);
  }

  v17 = [telemetry objectForKeyedSubscript:@"NWCng"];
  if (v17)
  {
    -[MultiwaySegment setNetworkCongestedCount:](self->_currentUplinkSegment, "setNetworkCongestedCount:", -[MultiwaySegment networkCongestedCount](self->_currentUplinkSegment, "networkCongestedCount") + [v17 intValue]);
  }

  v18 = [telemetry objectForKeyedSubscript:@"BIFCng"];
  if (v18)
  {
    v19 = v18;
    [(MultiwaySegment *)self->_currentUplinkSegment setShouldReportBIFPercentage:1];
    currentUplinkSegment = self->_currentUplinkSegment;
    LODWORD(v19) = [v19 intValue];
    v21 = [(MultiwaySegment *)currentUplinkSegment bifAboveThresholdCount]+ v19;

    [(MultiwaySegment *)currentUplinkSegment setBifAboveThresholdCount:v21];
  }
}

- (void)processVTPEgressIngressTelemetry:(id)telemetry
{
  v5 = [telemetry objectForKeyedSubscript:@"VTPUplinkEgressPkts"];
  if (v5)
  {
    self->_totalVTPUplinkEgressMediaPackets += [v5 unsignedIntegerValue];
  }

  v6 = [telemetry objectForKeyedSubscript:@"VTPUplinkIngressPkts"];
  if (v6)
  {
    self->_totalVTPUplinkIngressMediaPackets += [v6 unsignedIntegerValue];
  }

  v7 = [telemetry objectForKeyedSubscript:@"VTPDownlinkIngressMediaPkts"];
  if (v7)
  {
    self->_totalVTPDownlinkIngressMediaPackets += [v7 unsignedIntegerValue];
  }

  v8 = [telemetry objectForKeyedSubscript:@"VTPDownlinkEgressMediaPkts"];
  if (v8)
  {
    self->_totalVTPDownlinkEgressMediaPackets += [v8 unsignedIntegerValue];
  }
}

- (void)updateRTStatsSession:(id)session audioPacketsSent:(unsigned int)sent
{
  if (self->super._isOneToOneMode)
  {
    v7 = @"RTT";
  }

  else
  {
    v7 = @"RTTUL";
  }

  v8 = [objc_msgSend(session objectForKeyedSubscript:{v7), "intValue"}];
  if (self->super._isOneToOneMode)
  {
    v9 = @"RTT";
  }

  else
  {
    v9 = @"RTTDL";
  }

  v10 = [objc_msgSend(session objectForKeyedSubscript:{v9), "intValue"}];
  [(VCAggregator *)self updateVPCStats:session];
  [(VCAggregatorMultiway *)self processMediaQueueTelemetry:session];
  [(VCAggregatorMultiway *)self processCameraResolution:session];
  [(VCAggregatorMultiway *)self processVTPEgressIngressTelemetry:session];
  if (v8)
  {
    v11 = self->super._isOneToOneMode ? @"TTxR" : @"ULTBR";
    v36 = [objc_msgSend(session objectForKeyedSubscript:{v11), "intValue"}];
    v12 = self->super._isOneToOneMode ? @"UBE" : @"ULBWE";
    v13 = [objc_msgSend(session objectForKeyedSubscript:{v12), "intValue"}];
    v14 = [objc_msgSend(session objectForKeyedSubscript:{@"ULTPST", "integerValue"}];
    v15 = v10;
    sentCopy = sent;
    v17 = [objc_msgSend(session objectForKeyedSubscript:{@"ULTPRC", "integerValue"}];
    v18 = [objc_msgSend(session objectForKeyedSubscript:{@"ULTBSNT", "intValue"}];
    v19 = self->super._isOneToOneMode ? @"PLR" : @"ULPLR";
    v20 = [objc_msgSend(session objectForKeyedSubscript:{v19), "intValue"}];
    [(VCAggregatorMultiway *)self processUplinkTargetBitrateOnSession:v36];
    [(VCAggregatorMultiway *)self processUplinkBWEstimation:v13];
    lastReportedUplinkPacketsSent = self->_lastReportedUplinkPacketsSent;
    self->_lastReportedUplinkPacketsSent = v14;
    v22 = v17 - self->_lastReportedUplinkPacketsReceived;
    self->_lastReportedUplinkPacketsReceived = v17;
    sent = sentCopy;
    v10 = v15;
    lastReportedUplinkBytesSent = self->_lastReportedUplinkBytesSent;
    self->_lastReportedUplinkBytesSent = v18;
    if ((v22 & 0x80000000) == 0)
    {
      v24 = v14 - lastReportedUplinkPacketsSent;
      if ((v24 & 0x80000000) == 0 && ((v18 - lastReportedUplinkBytesSent) & 0x80000000) == 0)
      {
        if (v20 <= 99)
        {
          v22 = (v20 * v22 / (100.0 - v20));
        }

        self->_sessionUplinkTotalPacketsSentSum += v24;
        self->_sessionUplinkTotalLostSum += v22;
      }
    }
  }

  if (v10)
  {
    v25 = self->super._isOneToOneMode ? @"DBE" : @"DLBWE";
    v26 = [objc_msgSend(session objectForKeyedSubscript:{v25), "intValue"}];
    v27 = self->super._isOneToOneMode ? @"TTxR" : @"DLTBR";
    v28 = [objc_msgSend(session objectForKeyedSubscript:{v27), "intValue"}];
    v29 = [objc_msgSend(session objectForKeyedSubscript:{@"DLTPRC", "integerValue"}];
    v30 = [objc_msgSend(session objectForKeyedSubscript:{@"DLTBRCVD", "integerValue"}];
    v31 = self->super._isOneToOneMode ? @"PLR" : @"DLPLR";
    v32 = [objc_msgSend(session objectForKeyedSubscript:{v31), "intValue"}];
    [(VCAggregatorMultiway *)self processDownlinkRoundTripTime:v10];
    [(VCAggregatorMultiway *)self processDownlinkBWEstimation:v26];
    [(VCAggregatorMultiway *)self processDownlinkTargetBitrate:v28];
    v33 = v29 - self->_lastReportedDownlinkPacketsReceived;
    self->_lastReportedDownlinkPacketsReceived = v29;
    lastReportedDownlinkBytesReceived = self->_lastReportedDownlinkBytesReceived;
    self->_lastReportedDownlinkBytesReceived = v30;
    if ((v33 & 0x80000000) == 0 && ((v30 - lastReportedDownlinkBytesReceived) & 0x80000000) == 0)
    {
      if (v32 <= 99)
      {
        v35 = v33;
        LODWORD(v33) = (v32 * v33 / (100.0 - v32));
      }

      else
      {
        v35 = 0;
      }

      self->_sessionDownlinkTotalPacketsReceivedSum += v35;
      self->_sessionDownlinkTotalLostSum += v33;
    }
  }

  if ([objc_msgSend(session objectForKeyedSubscript:{@"ULLBA", "integerValue"}])
  {
    ++self->_sessionUplinkLBAOnCount;
  }

  if ([objc_msgSend(session objectForKeyedSubscript:{@"DLLBA", "integerValue"}])
  {
    ++self->_sessionDownlinkLBAOnCount;
  }

  self->super._audioSentPacketCount += sent;
}

- (void)updateDuplicationPossibilityDuration
{
  if (self->_isDuplicationPossible)
  {
    ++self->_totalDurationForDuplicationPossible;
  }
}

- (void)updateUplinkSegmentAudioCodecAndMediaBitrateWithPayload:(id)payload currentTime:(double)time
{
  lastAudioTierStatsUpdate = self->super._lastAudioTierStatsUpdate;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  currentAudioCodecPayload = self->super._currentAudioCodecPayload;
  v8 = lastAudioTierStatsUpdate;
  currentAudioMediaBitrate = self->super._currentAudioMediaBitrate;
  LOWORD(v9) = currentAudioCodecPayload;
  currentREDPayloadBitrate = self->super._currentREDPayloadBitrate;
  HIDWORD(v9) = currentAudioMediaBitrate;
  LODWORD(v10) = currentREDPayloadBitrate;
  [self->_currentUplinkSegment updateAudioCodecAndMediaBitrateWithPayload:payload andCurrentTime:&v8 andStats:time];
}

- (void)processRTEvent:(id)event
{
  selfCopy = self;
  v202 = *MEMORY[0x277D85DE8];
  [(VCAggregator *)self microFromPayload:?];
  v6 = v5;
  [(VCAggregatorMultiway *)selfCopy checkForNewSegmentBasedOnActiveStreamGroups:event];
  memset(v179, 0, sizeof(v179));
  [(VCAggregatorMultiway *)selfCopy populateSegmentBytes:v179 toPayload:event];
  if (selfCopy->_currentReportingMode == 1)
  {
    ++selfCopy->_audioOnlyModeDuration;
  }

  [(MultiwaySegment *)selfCopy->_currentUplinkSegment setLinkProbingVersion:selfCopy->super._linkProbingVersion];
  [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setLinkProbingVersion:selfCopy->super._linkProbingVersion];
  [(MultiwaySegment *)selfCopy->_currentUplinkSegment setRemoteLinkProbingVersion:selfCopy->super._remoteLinkProbingVersion];
  [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setRemoteLinkProbingVersion:selfCopy->super._remoteLinkProbingVersion];
  selfCopy->_isFullScreenCapture = [objc_msgSend(event objectForKeyedSubscript:{@"ScreenSharingIsFullScreen", "intValue"}] != 0;
  [selfCopy->_currentUplinkSegment setIsFullScreenCapture:?];
  if (selfCopy->super._isOneToOneMode)
  {
    v7 = @"RTT";
  }

  else
  {
    v7 = @"RTTUL";
  }

  v8 = [objc_msgSend(event objectForKeyedSubscript:{v7), "intValue"}];
  if (selfCopy->super._isOneToOneMode)
  {
    v9 = @"RTT";
  }

  else
  {
    v9 = @"RTTDL";
  }

  v151 = [objc_msgSend(event objectForKeyedSubscript:{v9), "intValue"}];
  v149 = [objc_msgSend(event objectForKeyedSubscript:{@"RDMBL", "intValue"}];
  selfCopy->_lastReportedMBLRampDownCount = v149;
  v146 = [objc_msgSend(event objectForKeyedSubscript:{@"SBWD", "intValue"}];
  selfCopy->_lastReportedSuddenBandwidthDropCount = v146;
  v178 = 0;
  [(VCAggregatorMultiway *)selfCopy calculateStreamTelemetry:event totalReceiveRate:&v178 + 4 audioPacketsSent:&v178];
  if (selfCopy->super._isOneToOneMode)
  {
    v10 = HIDWORD(v178);
  }

  else
  {
    v10 = [objc_msgSend(event objectForKeyedSubscript:{@"DLRBR", "intValue"}];
  }

  HIDWORD(v178) = v10;
  duration = [(MultiwaySegment *)selfCopy->_currentUplinkSegment duration];
  currentUplinkSegment = selfCopy->_currentUplinkSegment;
  v148 = selfCopy;
  eventCopy = event;
  if (duration >= 1)
  {
    [currentUplinkSegment processRTEvent:event now:v6];
    if (selfCopy->super._isOneToOneMode)
    {
      v13 = @"TTxR";
    }

    else
    {
      v13 = @"ULTBR";
    }

    v141 = [objc_msgSend(event objectForKeyedSubscript:{v13), "intValue"}];
    v142 = [objc_msgSend(event objectForKeyedSubscript:{@"ULSBR", "integerValue"}];
    v14 = selfCopy;
    v15 = [objc_msgSend(event objectForKeyedSubscript:{@"ULTBSNT", "intValue"}];
    v16 = [objc_msgSend(event objectForKeyedSubscript:{@"ULTPST", "integerValue"}];
    v17 = [objc_msgSend(event objectForKeyedSubscript:{@"ULTPRC", "integerValue"}];
    if (v14->super._isOneToOneMode)
    {
      v18 = @"UBE";
    }

    else
    {
      v18 = @"ULBWE";
    }

    v139 = [objc_msgSend(event objectForKeyedSubscript:{v18), "intValue"}];
    if (v14->super._isOneToOneMode)
    {
      v19 = @"PLR";
    }

    else
    {
      v19 = @"ULPLR";
    }

    v137 = [objc_msgSend(event objectForKeyedSubscript:{v19), "intValue"}];
    [objc_msgSend(event objectForKeyedSubscript:{@"APSM", "doubleValue"}];
    v21 = v20;
    [v14->_currentUplinkSegment maxAudioStallInterval];
    if (v21 >= v22)
    {
      v22 = v21;
    }

    [v14->_currentUplinkSegment setMaxAudioStallInterval:v22];
    [v14->_currentUplinkSegment updateNetworkSendResultStats:event];
    [v14->_currentUplinkSegment updateUplinkSegmentStats:event withSegmentBytes:v179];
    [v14->_currentUplinkSegment updateSegmentStatsWifiTx:event withSegmentBytes:v179];
    [v14->_currentUplinkSegment processSegmentRateControllerTelemetry:event];
    [v14->_currentUplinkSegment calculateUplinkTelemetry:event lastReportedAudioPauseTime:v14->_lastReportedAudioPauseTime lastReportedVideoPacketSentCount:v14->_lastReportedVideoPacketSentCount];
    [v14->_currentUplinkSegment processAudioPacketsFlushed:0 audioPacketsSent:v178];
    [(VCAggregatorMultiway *)v14 updateUplinkSegmentAudioCodecAndMediaBitrateWithPayload:event currentTime:v6];
    [v14->_currentUplinkSegment calculateUplinkAudioTimestampJumps:event];
    if ([event objectForKeyedSubscript:@"CTxDb"])
    {
      -[UplinkSegment setTotalCellTxDataBytes:](v14->_currentUplinkSegment, "setTotalCellTxDataBytes:", [objc_msgSend(event objectForKeyedSubscript:{@"CTxDb", "intValue"}]);
    }

    if ([event objectForKeyedSubscript:@"CDupTxDb"])
    {
      -[UplinkSegment setTotalCellDupTxDataBytes:](v148->_currentUplinkSegment, "setTotalCellDupTxDataBytes:", [objc_msgSend(event objectForKeyedSubscript:{@"CDupTxDb", "intValue"}]);
    }

    if ([objc_msgSend(event objectForKeyedSubscript:{@"VFL", "integerValue"}])
    {
      v23 = [objc_msgSend(event objectForKeyedSubscript:{@"AFL", "integerValue"}];
      [v148->_currentUplinkSegment setBBQueueTooLargeCount:[v148->_currentUplinkSegment BBQueueTooLargeCount]+ v23];
      [v148->_currentUplinkSegment setBBRateTooLowCount:[v148->_currentUplinkSegment BBRateTooLowCount]+ v23];
    }

    if ([objc_msgSend(event objectForKeyedSubscript:{@"VCSECNEnabled", "integerValue"}])
    {
      [(MultiwaySegment *)v148->_currentUplinkSegment setEcnEnabledCount:[(MultiwaySegment *)v148->_currentUplinkSegment ecnEnabledCount]+ 1];
    }

    v24 = [objc_msgSend(event objectForKeyedSubscript:{@"RTT", "integerValue"}];
    currentDownlinkSegment = v148->_currentDownlinkSegment;
    if (v24 < 0x1F5)
    {
      [(VCHistogram *)[v148->_currentDownlinkSegment continuousHighRTTReportCount] addValue:[v148->_currentDownlinkSegment highRTTReportCounter]];
      v27 = v148->_currentDownlinkSegment;
      v26 = 0;
    }

    else
    {
      v26 = [v148->_currentDownlinkSegment highRTTReportCounter]+ 1;
      v27 = currentDownlinkSegment;
    }

    [(DownlinkSegment *)v27 setHighRTTReportCounter:v26];
    if ([objc_msgSend(event objectForKeyedSubscript:{@"VPLR", "integerValue"}] < 1)
    {
      [(VCHistogram *)[v148->_currentDownlinkSegment continuousHighPLRReportCount] addValue:[v148->_currentDownlinkSegment highPLRReportCounter]];
      [v148->_currentDownlinkSegment setHighPLRReportCounter:0];
      if (v24 < 0x1F5)
      {
        [(VCHistogram *)[v148->_currentDownlinkSegment continuousHighRTTPLRReportCount] addValue:[v148->_currentDownlinkSegment highRTTPLRReportCounter]];
        v33 = v148->_currentDownlinkSegment;
        v32 = 0;
        goto LABEL_43;
      }
    }

    else
    {
      [v148->_currentDownlinkSegment setHighPLRReportCounter:[v148->_currentDownlinkSegment highPLRReportCounter]+ 1];
    }

    v31 = v148->_currentDownlinkSegment;
    v32 = [(DownlinkSegment *)v31 highRTTPLRReportCounter]+ 1;
    v33 = v31;
LABEL_43:
    [(DownlinkSegment *)v33 setHighRTTPLRReportCounter:v32];
    v34 = v148;
    if (v8)
    {
      [(MultiwaySegment *)v148->_currentUplinkSegment processRoundTripTime:v8];
      [(MultiwaySegment *)v148->_currentUplinkSegment processTargetBitrate:v141];
      v35 = v142;
      [(MultiwaySegment *)v148->_currentUplinkSegment processUplinkActualBitrate:v142];
      [(MultiwaySegment *)v148->_currentUplinkSegment processUplinkBWEstimation:v139];
      [(MultiwaySegment *)v148->_currentUplinkSegment processReceiveBitrate:HIDWORD(v178)];
      lastReportedUplinkBytesSent = [v148->_currentUplinkSegment lastReportedUplinkBytesSent];
      lastReportedUplinkPacketsSent = [v148->_currentUplinkSegment lastReportedUplinkPacketsSent];
      v38 = v17 - [v148->_currentUplinkSegment lastReportedUplinkPacketsReceived];
      [v148->_currentUplinkSegment setLastReportedUplinkBytesSent:v15];
      [v148->_currentUplinkSegment setLastReportedUplinkPacketsSent:v16];
      [v148->_currentUplinkSegment setLastReportedUplinkPacketsReceived:v17];
      if ((v38 & 0x80000000) == 0)
      {
        v39 = v16 - lastReportedUplinkPacketsSent;
        if (((v16 - lastReportedUplinkPacketsSent) & 0x80000000) == 0 && ((v15 - lastReportedUplinkBytesSent) & 0x80000000) == 0)
        {
          if (v137 <= 99)
          {
            v40 = (v137 * v38 / (100.0 - v137));
          }

          else
          {
            v40 = v38;
            v38 = 0;
          }

          [(MultiwaySegment *)v148->_currentUplinkSegment setTotalPacketsReceived:[(MultiwaySegment *)v148->_currentUplinkSegment totalPacketsReceived]+ v38];
          [(MultiwaySegment *)v148->_currentUplinkSegment setTotalPacketsSent:[(MultiwaySegment *)v148->_currentUplinkSegment totalPacketsSent]+ v39];
          [(MultiwaySegment *)v148->_currentUplinkSegment setTotalBytesSent:[(MultiwaySegment *)v148->_currentUplinkSegment totalBytesSent]+ v15 - lastReportedUplinkBytesSent];
          [(MultiwaySegment *)v148->_currentUplinkSegment setTotalPacketsLost:[(MultiwaySegment *)v148->_currentUplinkSegment totalPacketsLost]+ v40];
          [(MultiwaySegment *)v148->_currentUplinkSegment setTotalMBLRampDownCount:v149 - v148->_lastReportedMBLRampDownCount + [(MultiwaySegment *)v148->_currentUplinkSegment totalMBLRampDownCount]];
          [(MultiwaySegment *)v148->_currentUplinkSegment setTotalSuddenBandwidthDropCount:v146 - v148->_lastReportedSuddenBandwidthDropCount + [(MultiwaySegment *)v148->_currentUplinkSegment totalSuddenBandwidthDropCount]];
          [(VCHistogram *)[(MultiwaySegment *)v148->_currentUplinkSegment PLR] addValue:v137];
          v35 = v142;
        }
      }

      v34 = v148;
      [v148->_currentUplinkSegment processTransmitterStats:eventCopy];
      [(VCAggregatorMultiway *)v148 processUplinkActualBitrate:v35];
    }

    event = eventCopy;
    -[MultiwaySegment setIs5GHz:](v34->_currentUplinkSegment, "setIs5GHz:", [objc_msgSend(eventCopy objectForKeyedSubscript:{@"iWiFi5GHz", "integerValue"}] != 0);
    [(VCReportingDistribution *)[v34->_currentUplinkSegment cameraCaptureData] updateWithPayload:eventCopy];
    [v34->_currentUplinkSegment processMediaQueueTelemetry:eventCopy];
    [(MultiwaySegment *)v34->_currentUplinkSegment updateDuplicationPossibilityDuration];
    [(MultiwaySegment *)v34->_currentUplinkSegment setAdjustedDuration:[(MultiwaySegment *)v34->_currentUplinkSegment adjustedDuration]+ 1];
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    thermalDataCollectors = [v34->_currentUplinkSegment thermalDataCollectors];
    v42 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v174 objects:v201 count:16];
    selfCopy = v34;
    if (v42)
    {
      v43 = v42;
      v44 = *v175;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v175 != v44)
          {
            objc_enumerationMutation(thermalDataCollectors);
          }

          [*(*(&v174 + 1) + 8 * i) updateDataWithTime:v6];
        }

        v43 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v174 objects:v201 count:16];
      }

      while (v43);
    }

    goto LABEL_60;
  }

  [currentUplinkSegment updateLastValuesForMediaQueueEgressIngressTelemetry:event];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v28 = VRTraceErrorLogLevelToCSTR(8u);
    v29 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        currentUplinkSegmentKey = selfCopy->_currentUplinkSegmentKey;
        *buf = 136315906;
        v182 = v28;
        v183 = 2080;
        v184 = "[VCAggregatorMultiway processRTEvent:]";
        v185 = 1024;
        v186 = 10345;
        v187 = 2112;
        v188 = currentUplinkSegmentKey;
        _os_log_impl(&dword_23D4DF000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Ignoring first event(s) for uplink segment %@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [(VCAggregatorMultiway *)v28 processRTEvent:selfCopy];
    }
  }

LABEL_60:
  if ([(MultiwaySegment *)selfCopy->_currentDownlinkSegment duration]< 1)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v72 = VRTraceErrorLogLevelToCSTR(8u);
      v73 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          currentDownlinkSegmentKey = selfCopy->_currentDownlinkSegmentKey;
          *buf = 136315906;
          v182 = v72;
          v183 = 2080;
          v184 = "[VCAggregatorMultiway processRTEvent:]";
          v185 = 1024;
          v186 = 10428;
          v187 = 2112;
          v188 = currentDownlinkSegmentKey;
          _os_log_impl(&dword_23D4DF000, v73, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Ignoring first event(s) for downlink segment %@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        [(VCAggregatorMultiway *)v72 processRTEvent:selfCopy];
      }
    }
  }

  else
  {
    [selfCopy->_currentDownlinkSegment processRTEvent:event now:v6];
    if (selfCopy->super._isOneToOneMode)
    {
      v46 = @"DBE";
    }

    else
    {
      v46 = @"DLBWE";
    }

    v47 = [objc_msgSend(event objectForKeyedSubscript:{v46), "intValue"}];
    if (selfCopy->super._isOneToOneMode)
    {
      v48 = @"TTxR";
    }

    else
    {
      v48 = @"DLTBR";
    }

    v49 = [objc_msgSend(event objectForKeyedSubscript:{v48), "intValue"}];
    eventCopy2 = event;
    v51 = [objc_msgSend(event objectForKeyedSubscript:{@"DLTPRC", "integerValue"}];
    v52 = [objc_msgSend(eventCopy2 objectForKeyedSubscript:{@"DLTBRCVD", "integerValue"}];
    if (selfCopy->super._isOneToOneMode)
    {
      v53 = @"PLR";
    }

    else
    {
      v53 = @"DLPLR";
    }

    v54 = [objc_msgSend(eventCopy2 objectForKeyedSubscript:{v53), "intValue"}];
    v55 = selfCopy->_currentDownlinkSegment;
    [(DownlinkSegment *)v55 averageBWE];
    v56 = v47;
    [(DownlinkSegment *)v55 setAverageBWE:v57 + v47];
    minBWE = [selfCopy->_currentDownlinkSegment minBWE];
    if (v47 >= minBWE)
    {
      v59 = minBWE;
    }

    else
    {
      v59 = v47;
    }

    [selfCopy->_currentDownlinkSegment setMinBWE:v59];
    maxBWE = [selfCopy->_currentDownlinkSegment maxBWE];
    if (v47 <= maxBWE)
    {
      v61 = maxBWE;
    }

    else
    {
      v61 = v47;
    }

    [selfCopy->_currentDownlinkSegment setMaxBWE:v61];
    [selfCopy->_currentDownlinkSegment updateDownlinkSegmentStats:eventCopy2 withSegmentBytes:v179];
    [selfCopy->_currentDownlinkSegment calculateDownlinkTelemetry:eventCopy2 downlinkRTT:v151];
    -[DownlinkSegment setAudioRemoteReceivedPacketCount:](selfCopy->_currentDownlinkSegment, "setAudioRemoteReceivedPacketCount:", -[DownlinkSegment audioRemoteReceivedPacketCount](selfCopy->_currentDownlinkSegment, "audioRemoteReceivedPacketCount") - selfCopy->super._lastReportedRemoteAudioPacketsReceived + [objc_msgSend(eventCopy2 objectForKeyedSubscript:{@"APRR", "integerValue"}]);
    v62 = selfCopy->_currentDownlinkSegment;
    audioSentPacketCount = [(DownlinkSegment *)v62 audioSentPacketCount];
    [(DownlinkSegment *)v62 setAudioSentPacketCount:audioSentPacketCount + v178];
    v64 = selfCopy->_currentDownlinkSegment;
    [(DownlinkSegment *)v64 averageReceiveBitrate];
    LODWORD(v65) = HIDWORD(v178);
    [(DownlinkSegment *)v64 setAverageReceiveBitrate:v66 + v65];
    v67 = selfCopy->_currentDownlinkSegment;
    [(DownlinkSegment *)v67 averageBWESum];
    [(DownlinkSegment *)v67 setAverageBWESum:v68 + v56];
    if ([eventCopy2 objectForKeyedSubscript:@"CRxDb"])
    {
      -[DownlinkSegment setTotalCellRxDataBytes:](selfCopy->_currentDownlinkSegment, "setTotalCellRxDataBytes:", [objc_msgSend(eventCopy2 objectForKeyedSubscript:{@"CRxDb", "intValue"}]);
    }

    if ([eventCopy2 objectForKeyedSubscript:@"CDupRxDb"])
    {
      -[DownlinkSegment setTotalCellDupRxDataBytes:](selfCopy->_currentDownlinkSegment, "setTotalCellDupRxDataBytes:", [objc_msgSend(eventCopy2 objectForKeyedSubscript:{@"CDupRxDb", "intValue"}]);
    }

    if (v151)
    {
      [(MultiwaySegment *)selfCopy->_currentDownlinkSegment processRoundTripTime:v151];
      [(MultiwaySegment *)selfCopy->_currentDownlinkSegment processTargetBitrate:v49];
      v69 = v51 - [selfCopy->_currentDownlinkSegment lastReportedDownlinkPacketsReceived];
      lastReportedDownlinkBytesReceived = [selfCopy->_currentDownlinkSegment lastReportedDownlinkBytesReceived];
      [selfCopy->_currentDownlinkSegment setLastReportedDownlinkPacketsReceived:v51];
      [selfCopy->_currentDownlinkSegment setLastReportedDownlinkBytesReceived:v52];
      if ((v69 & 0x80000000) == 0 && ((v52 - lastReportedDownlinkBytesReceived) & 0x80000000) == 0)
      {
        if (v54 <= 99)
        {
          v71 = (v54 * v69 / (100.0 - v54));
        }

        else
        {
          v71 = v69;
          v69 = 0;
        }

        [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setTotalPacketsReceived:[(MultiwaySegment *)selfCopy->_currentDownlinkSegment totalPacketsReceived]+ v69];
        [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setTotalBytesReceived:[(MultiwaySegment *)selfCopy->_currentDownlinkSegment totalBytesReceived]+ v52 - lastReportedDownlinkBytesReceived];
        [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setTotalPacketsLost:[(MultiwaySegment *)selfCopy->_currentDownlinkSegment totalPacketsLost]+ v71];
        [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setTotalMBLRampDownCount:v149 - selfCopy->_lastReportedMBLRampDownCount + [(MultiwaySegment *)selfCopy->_currentDownlinkSegment totalMBLRampDownCount]];
        [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setTotalSuddenBandwidthDropCount:v146 - selfCopy->_lastReportedSuddenBandwidthDropCount + [(MultiwaySegment *)selfCopy->_currentDownlinkSegment totalSuddenBandwidthDropCount]];
        [(VCHistogram *)[(MultiwaySegment *)selfCopy->_currentDownlinkSegment PLR] addValue:v54];
      }

      [(VCAggregatorMultiway *)selfCopy processDownlinkActualBitrate:HIDWORD(v178)];
    }

    -[MultiwaySegment setIs5GHz:](selfCopy->_currentDownlinkSegment, "setIs5GHz:", [objc_msgSend(eventCopy objectForKeyedSubscript:{@"iWiFi5GHz", "integerValue"}] != 0);
    *buf = 0;
    v75 = [eventCopy objectForKeyedSubscript:sRTCReportingStreamCollection];
    v172 = 0;
    v173 = 0;
    [(VCAggregator *)selfCopy microFromPayload:eventCopy];
    v77 = v76;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v78 = [v75 countByEnumeratingWithState:&v168 objects:v200 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v169;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v169 != v80)
          {
            objc_enumerationMutation(v75);
          }

          v82 = [v75 objectForKeyedSubscript:*(*(&v168 + 1) + 8 * j)];
          v83 = [v82 objectForKeyedSubscript:@"VCMSStreamGroup"];
          v84 = [v82 objectForKeyedSubscript:@"VCSPUUID"];
          if (v83)
          {
            v85 = v84 == 0;
          }

          else
          {
            v85 = 1;
          }

          if (!v85)
          {
            [selfCopy->_currentDownlinkSegment processStreamData:v82 forParticipant:v84 streamGroup:v83 withTime:v77];
            [selfCopy->_currentDownlinkSegment calculateStreamTelemetry:v82 AndReceiveRate:buf];
            [(VCAggregatorMultiway *)selfCopy calculateAverageReceivingBitrateForStreamGroup:v82 audioStreamsCount:&v172 + 4 avgAudioRecvBitrate:&v173 + 4 vedioStreamsCount:&v172 avgVideoRecvBitrate:&v173];
          }
        }

        v79 = [v75 countByEnumeratingWithState:&v168 objects:v200 count:16];
      }

      while (v79);
    }

    if (HIDWORD(v172))
    {
      v86 = HIDWORD(v173) / HIDWORD(v172);
    }

    else
    {
      v86 = 0;
    }

    [(VCAlgosStreamingScorer *)selfCopy->super._algosScorerAlternate setAvgReceivingBitrate:[(VCAlgosStreamingScorer *)selfCopy->super._algosScorerAlternate avgReceivingBitrate]+ v86];
    if (v172)
    {
      v87 = v173 / v172;
    }

    else
    {
      v87 = 0;
    }

    event = eventCopy;
    [(VCAlgosStreamingScorer *)selfCopy->super._algosScorerAlternate setAvgReceivingBitrate:[(VCAlgosStreamingScorer *)selfCopy->super._algosScorerAlternate avgReceivingBitrate]+ v87];
    if (HIDWORD(v172))
    {
      v88 = HIDWORD(v173) / HIDWORD(v172);
    }

    else
    {
      v88 = 0;
    }

    [(VCAlgosStreamingScorer *)selfCopy->super._algosScorerBounded setAvgReceivingBitrate:[(VCAlgosStreamingScorer *)selfCopy->super._algosScorerBounded avgReceivingBitrate]+ v88];
    if (v172)
    {
      v89 = v173 / v172;
    }

    else
    {
      v89 = 0;
    }

    [(VCAlgosStreamingScorer *)selfCopy->super._algosScorerBounded setAvgReceivingBitrate:[(VCAlgosStreamingScorer *)selfCopy->super._algosScorerBounded avgReceivingBitrate]+ v89];
    v90 = [selfCopy->_currentDownlinkSegment RBR];
    [(VCHistogram *)v90 addValue:*buf];
    [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setAdjustedDuration:[(MultiwaySegment *)selfCopy->_currentDownlinkSegment adjustedDuration]+ 1];
    [(MultiwaySegment *)selfCopy->_currentDownlinkSegment updateDuplicationPossibilityDuration];
  }

  [(VCAggregatorMultiway *)selfCopy updateRTStatsSession:event audioPacketsSent:v178];
  [(VCAggregatorMultiway *)selfCopy updateNetworkSendResultStats:event];
  [(VCAggregatorMultiway *)selfCopy calculateUplinkRelatedTelemetry:event];
  [(VCAggregatorMultiway *)selfCopy calculateDownlinkRealtedTelemetry:event downlinkRTT:v151];
  [(VCAggregatorMultiway *)selfCopy processRateControllerTelemetry:event];
  [(VCAggregatorMultiway *)selfCopy updateAudioCodecAndMediaBitrate:event currentTime:v6];
  [(VCAggregatorMultiway *)selfCopy calculateUplinkAudioTimestampJumps:event];
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = selfCopy->_calls;
  v145 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v164 objects:v199 count:16];
  if (v145)
  {
    v144 = 0;
    v143 = 0;
    v140 = *v165;
    do
    {
      for (k = 0; k != v145; ++k)
      {
        if (*v165 != v140)
        {
          objc_enumerationMutation(obj);
        }

        v92 = *(*(&v164 + 1) + 8 * k);
        v93 = [(NSMutableDictionary *)selfCopy->_calls objectForKeyedSubscript:v92];
        if ([v93 isLive])
        {
          [v93 incrementCallDuration];
          [v93 processRTEvent:event];
          v94 = [event objectForKeyedSubscript:sRTCReportingStreamCollection];
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          v95 = [v94 countByEnumeratingWithState:&v160 objects:v198 count:16];
          if (v95)
          {
            v96 = v95;
            v138 = k;
            v150 = 0;
            v97 = *v161;
            v147 = v94;
            do
            {
              for (m = 0; m != v96; ++m)
              {
                if (*v161 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = *(*(&v160 + 1) + 8 * m);
                if ([v99 containsString:v92])
                {
                  v100 = [v94 objectForKeyedSubscript:v99];
                  v101 = [v100 objectForKeyedSubscript:@"VCMSStreamGroup"];
                  if (v101)
                  {
                    v102 = v101;
                    [(VCAggregatorMultiway *)v148 updateCallStreamGroupTickCount:v93 streamData:v100];
                    v103 = [objc_msgSend(v93 "streamGroups")];
                    if (!v103)
                    {
                      v103 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
                      [objc_msgSend(v93 "streamGroups")];
                    }

                    v104 = [v103 objectForKeyedSubscript:v99];
                    if (!v104)
                    {
                      v104 = [[MultiwayStream alloc] initStreamWithID:v99];
                      [v103 setObject:v104 forKeyedSubscript:v99];
                    }

                    [v104 processData:v100 algosScorer:-[VCAlgosStreamingScoreAggregator algosScorerWithParticipantID:](v148->super._algosScoreAggregator algosScorerAlternate:"algosScorerWithParticipantID:" algosScorerBounded:v92) timestamp:{-[VCAlgosStreamingScoreAggregator algosScorerWithParticipantID:](v148->super._algosScoreAggregatorAlternate, "algosScorerWithParticipantID:", v92), -[VCAlgosStreamingScoreAggregator algosScorerWithParticipantID:](v148->super._algosScoreAggregatorBounded, "algosScorerWithParticipantID:", v92), v6}];
                    [v104 currentStallTime];
                    LOBYTE(v150) = v150 | (v105 > 500.0);
                    [v104 totalAudioErasureTime];
                    BYTE4(v150) |= v106 > 500.0;
                    -[VCAggregator updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:](v148, "updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:", v100, [v93 fecStatsHolder], objc_msgSend(v93, "lossPattern"), objc_msgSend(v93, "lossHistogram"), objc_msgSend(v93, "lossFecHistogram"), 0);
                    v94 = v147;
                  }
                }
              }

              v96 = [v94 countByEnumeratingWithState:&v160 objects:v198 count:16];
            }

            while (v96);
            v107 = v150 & 1;
            v108 = BYTE4(v150) & 1;
            event = eventCopy;
            k = v138;
          }

          else
          {
            v108 = 0;
            v107 = 0;
          }

          v143 += v107;
          v144 += v108;
          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          thermalDataCollectors2 = [v93 thermalDataCollectors];
          v110 = [thermalDataCollectors2 countByEnumeratingWithState:&v156 objects:v197 count:16];
          selfCopy = v148;
          if (v110)
          {
            v111 = v110;
            v112 = k;
            v113 = *v157;
            do
            {
              for (n = 0; n != v111; ++n)
              {
                if (*v157 != v113)
                {
                  objc_enumerationMutation(thermalDataCollectors2);
                }

                [*(*(&v156 + 1) + 8 * n) updateDataWithTime:v6];
              }

              v111 = [thermalDataCollectors2 countByEnumeratingWithState:&v156 objects:v197 count:16];
            }

            while (v111);
            k = v112;
          }
        }
      }

      v145 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v164 objects:v199 count:16];
    }

    while (v145);
  }

  else
  {
    v144 = 0;
    v143 = 0;
  }

  if ([(VCAggregatorMultiway *)selfCopy shouldRestBoundedAlgoScore])
  {
    [(VCAggregatorMultiway *)selfCopy resetBoundedAlgoScoreWithTime:v6];
  }

  significantAudioErasureMaxPercentOfParticipant = selfCopy->_participantCounter - 1;
  if (selfCopy->_participantCounter != 1)
  {
    significantVideoStallMaxPercentOfParticipant = 10000 * (v143 / significantAudioErasureMaxPercentOfParticipant);
    if (selfCopy->_significantVideoStallMaxPercentOfParticipant > significantVideoStallMaxPercentOfParticipant)
    {
      significantVideoStallMaxPercentOfParticipant = selfCopy->_significantVideoStallMaxPercentOfParticipant;
    }

    selfCopy->_significantVideoStallMaxPercentOfParticipant = significantVideoStallMaxPercentOfParticipant;
    significantAudioErasureMaxPercentOfParticipant = 10000 * (v144 / significantAudioErasureMaxPercentOfParticipant);
  }

  if (selfCopy->_significantAudioErasureMaxPercentOfParticipant > significantAudioErasureMaxPercentOfParticipant)
  {
    significantAudioErasureMaxPercentOfParticipant = selfCopy->_significantAudioErasureMaxPercentOfParticipant;
  }

  selfCopy->_significantAudioErasureMaxPercentOfParticipant = significantAudioErasureMaxPercentOfParticipant;
  if (selfCopy->super._isDuplicationEnabled)
  {
    ++selfCopy->_totalDuplicationTicks;
  }

  [(VCAggregatorMultiway *)selfCopy processActualBitrateChange:event];
  [(VCCaptionsDataCollector *)[(VCAggregator *)selfCopy captionsDataCollector] processCaptionsMetrics:event];
  [(VCMediaAnalyzerDataCollector *)[(VCAggregator *)selfCopy mediaAnalyzerDataCollector] processMediaAnalyzerMetrics:event];
  ++selfCopy->_sessionTotalDurationTicks;
  ++selfCopy->_sessionAggregatedDurationTicks;
  [(MultiwaySegment *)selfCopy->_currentUplinkSegment setDuration:[(MultiwaySegment *)selfCopy->_currentUplinkSegment duration]+ 1];
  [(MultiwaySegment *)selfCopy->_currentDownlinkSegment setDuration:[(MultiwaySegment *)selfCopy->_currentDownlinkSegment duration]+ 1];
  if (selfCopy->_sessionAggregatedScreenLocalParticipantEnabled)
  {
    ++selfCopy->_sessionAggregatedScreenUplinkDurationTicks;
  }

  [(VCReportingDistribution *)selfCopy->_cameraCaptureData updateWithPayload:event];
  [(VCAggregatorMultiway *)selfCopy updateDuplicationPossibilityDuration];
  [(VCAggregatorMultiway *)selfCopy updateVideoFeatureStatus:event];
  -[VCAggregatorMultiway processSessionStreamStats:](selfCopy, "processSessionStreamStats:", [event objectForKeyedSubscript:sRTCReportingStreamCollection]);
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v117 = VRTraceErrorLogLevelToCSTR(8u);
    v118 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v119 = selfCopy->_currentUplinkSegment;
        duration2 = [(MultiwaySegment *)v119 duration];
        v121 = selfCopy->_currentDownlinkSegment;
        duration3 = [(MultiwaySegment *)v121 duration];
        sessionTotalDurationTicks = selfCopy->_sessionTotalDurationTicks;
        *buf = 136316930;
        v182 = v117;
        v183 = 2080;
        v184 = "[VCAggregatorMultiway processRTEvent:]";
        v185 = 1024;
        v186 = 10529;
        v187 = 2112;
        v188 = v119;
        v189 = 1024;
        v190 = duration2;
        event = eventCopy;
        v191 = 2112;
        v192 = v121;
        v193 = 1024;
        v194 = duration3;
        v195 = 1024;
        v196 = sessionTotalDurationTicks;
        _os_log_impl(&dword_23D4DF000, v118, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Current uplink segment after RT event {%@} segment duration is %d, Current downlink segment after RT event {%@} segment duration is %d, total duration is %d", buf, 0x42u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v130 = selfCopy->_currentUplinkSegment;
      duration4 = [(MultiwaySegment *)v130 duration];
      v132 = selfCopy->_currentDownlinkSegment;
      duration5 = [(MultiwaySegment *)v132 duration];
      v134 = selfCopy->_sessionTotalDurationTicks;
      *buf = 136316930;
      v182 = v117;
      v183 = 2080;
      v184 = "[VCAggregatorMultiway processRTEvent:]";
      v185 = 1024;
      v186 = 10529;
      v187 = 2112;
      v188 = v130;
      v189 = 1024;
      v190 = duration4;
      event = eventCopy;
      v191 = 2112;
      v192 = v132;
      v193 = 1024;
      v194 = duration5;
      v195 = 1024;
      v196 = v134;
      _os_log_debug_impl(&dword_23D4DF000, v118, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Current uplink segment after RT event {%@} segment duration is %d, Current downlink segment after RT event {%@} segment duration is %d, total duration is %d", buf, 0x42u);
    }
  }

  [(VCAggregatorMultiway *)selfCopy processUILayout:event];
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  thermalDataCollectors = selfCopy->_thermalDataCollectors;
  v125 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v152 objects:v180 count:16];
  if (v125)
  {
    v126 = v125;
    v127 = *v153;
    do
    {
      for (ii = 0; ii != v126; ++ii)
      {
        if (*v153 != v127)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v152 + 1) + 8 * ii) updateDataWithTime:v6];
      }

      v126 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v152 objects:v180 count:16];
    }

    while (v126);
  }

  v129 = *MEMORY[0x277D85DE8];
}

- (void)processSessionStreamStats:(id)stats
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [stats countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v16 = *v18;
    do
    {
      v7 = 0;
      v15 = v6;
      do
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(stats);
        }

        v8 = [stats objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v7), v15}];
        v9 = [v8 objectForKeyedSubscript:@"VCMSStreamGroup"];
        v10 = [v8 objectForKeyedSubscript:@"VCSPUUID"];
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          if (v10)
          {
            [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{v10), "processStreamData:streamGroupID:", v8, v9}];
          }

          v12 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v9];
          [objc_msgSend(v12 "videoTxFecData")];
          [(VCAggregatorMultiway *)self processUplinkStreamData:v8 streamGroupID:v9];
          [(VCAggregatorMultiway *)self processDownlinkStreamData:v8 streamGroupID:v9];
          [(VCAggregatorMultiway *)self processRTXStreamData:v8 streamGroupID:v9];
          [v12 setUplinkRTXTelemetryWithRealTimeStreamData:v8];
          [v12 setLateKeyFrameAssembledCount:{objc_msgSend(v12, "lateKeyFrameAssembledCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"LKFASC", "intValue")}];
          [v12 setLatePFrameAssembledCount:{objc_msgSend(v12, "latePFrameAssembledCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"LPFASC", "intValue")}];
          [v12 setTotalFIRCount:{objc_msgSend(v12, "totalFIRCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VFIRCnt", "intValue")}];
          [v12 setTotalFIRFailSafeCount:{objc_msgSend(v12, "totalFIRFailSafeCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VFIRFSCnt", "intValue")}];
          [v12 setTotalFIRDemandCount:{objc_msgSend(v12, "totalFIRDemandCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VFIRDCnt", "intValue")}];
          [v12 setIdrReceivedCount:{objc_msgSend(v12, "idrReceivedCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VRxIDRC", "intValue")}];
          [v12 setIdrSentCount:{objc_msgSend(v12, "idrSentCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VTxDeltaKeyFramesSent", "intValue")}];
          [v12 setAverageVideoTxFecBitrate:{objc_msgSend(v12, "averageVideoTxFecBitrate") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VTxRFEC", "intValue")}];
          [v12 setAverageVideoRxFecBitrate:{objc_msgSend(v12, "averageVideoRxFecBitrate") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VRFECRxR", "intValue")}];
          [v12 setVideoPlayerDecodeAlarmCount:{objc_msgSend(v12, "videoPlayerDecodeAlarmCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VPDECAC", "unsignedIntValue")}];
          [v12 setVideoPlayerDisplayAlarmCount:{objc_msgSend(v12, "videoPlayerDisplayAlarmCount") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VPDISAC", "unsignedIntValue")}];
          [v12 setAverageVideoBitrate:{objc_msgSend(v12, "averageVideoBitrate") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VRxR", "unsignedIntValue")}];
          [v12 setAverageVideoRxMediaBitrate:{objc_msgSend(v12, "averageVideoRxMediaBitrate") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VRxMR", "unsignedIntValue")}];
          [v12 setAverageVideoRxDecoderMediaBitrate:{objc_msgSend(v12, "averageVideoRxDecoderMediaBitrate") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VRxDMR", "unsignedIntValue")}];
          [v12 setAverageVideoTxMediaBitrate:{objc_msgSend(v12, "averageVideoTxMediaBitrate") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VTxRMedia", "unsignedIntValue")}];
          [v12 setAverageVideoTxHeaderBitrate:{objc_msgSend(v12, "averageVideoTxHeaderBitrate") + objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", @"VTxRHDR", "unsignedIntValue")}];
          [objc_msgSend(v12 "videoPlayerAVHostTimeDelta")];
          [objc_msgSend(v12 "videoPlayerAVSyncOffsetData")];
          [objc_msgSend(v12 "videoPlayerDisplayData")];
          [objc_msgSend(v12 "transmitterAVHostTimeData")];
          [v12 processMLStreamData:v8];
          [(VCAggregator *)self updateVideoFECStatsOnSegment:v8 fecStats:self->super._fecStatsHolder segmentLossPattern:[(VCAggregatorMultiway *)self lossPattern] segmentLossHistogram:[(VCAggregatorMultiway *)self lossHistogram] segmentLossFecHistogram:[(VCAggregatorMultiway *)self lossFecHistogram] direction:0];
          v13 = [v8 objectForKeyedSubscript:@"EncOutFrameCnt"];
          v6 = v15;
          if (v13)
          {
            [v12 setEncodedFrameSum:{objc_msgSend(v12, "encodedFrameSum") + objc_msgSend(v13, "intValue")}];
            [v12 setEncodedFrameReportedCount:{objc_msgSend(v12, "encodedFrameReportedCount") + 1}];
          }
        }

        ++v7;
      }

      while (v6 != v7);
      v6 = [stats countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processDownlinkStreamData:(id)data streamGroupID:(id)d
{
  v6 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  if ([d unsignedIntValue] == 1 || objc_msgSend(d, "unsignedIntValue") == 3 || objc_msgSend(d, "unsignedIntValue") == 5 || objc_msgSend(d, "unsignedIntValue") == 7 || objc_msgSend(d, "unsignedIntValue") == 8 || objc_msgSend(d, "unsignedIntValue") == 10)
  {
    [v6 setTotalRTPDownlinkIngressVideoPackets:{objc_msgSend(v6, "totalRTPDownlinkIngressVideoPackets") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"RTPDownlinkIngressVideoPkts", "unsignedIntegerValue")}];
    [v6 setTotalRTPDownlinkEgressVideoPackets:{objc_msgSend(v6, "totalRTPDownlinkEgressVideoPackets") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"RTPDownlinkEgressVideoPkts", "unsignedIntegerValue")}];
    [v6 setTotalRTPDownlinkIngressNonDupVideoPackets:{objc_msgSend(v6, "totalRTPDownlinkIngressNonDupVideoPackets") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"RTPDownlinkIngressNonDupMediaPkts", "unsignedIntegerValue")}];
  }

  if ([d unsignedIntValue] == 2 || objc_msgSend(d, "unsignedIntValue") == 4 || objc_msgSend(d, "unsignedIntValue") == 6)
  {
    [v6 setTotalRTPDownlinkIngressAudioPackets:{objc_msgSend(v6, "totalRTPDownlinkIngressAudioPackets") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"RTPDownlinkIngressAudioPkts", "unsignedIntegerValue")}];
    [v6 setTotalRTPDownlinkIngressNonDupAudioPackets:{objc_msgSend(v6, "totalRTPDownlinkIngressNonDupAudioPackets") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"RTPDownlinkIngressNonDupMediaPkts", "unsignedIntegerValue")}];
    [v6 setTotalRTPDownlinkEgressAudioPackets:{objc_msgSend(v6, "totalRTPDownlinkEgressAudioPackets") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"RTPDownlinkEgressAudioPkts", "unsignedIntegerValue")}];
    v7 = [objc_msgSend(data objectForKeyedSubscript:{@"ARxDecodeBitrate", "unsignedIntegerValue"}];
    [v6 averageAudioMediaRxDecodeBitrate];
    v9 = v8 + v7;

    [v6 setAverageAudioMediaRxDecodeBitrate:v9];
  }
}

- (void)processUplinkStreamData:(id)data streamGroupID:(id)d
{
  v6 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  v7 = [objc_msgSend(data objectForKeyedSubscript:{@"ATxR", "integerValue"}];
  [v6 averageSendBitrateSum];
  [v6 setAverageSendBitrateSum:v8 + v7];
  if ([d unsignedIntValue] == 1 || objc_msgSend(d, "unsignedIntValue") == 3 || objc_msgSend(d, "unsignedIntValue") == 5 || objc_msgSend(d, "unsignedIntValue") == 7 || objc_msgSend(d, "unsignedIntValue") == 8 || objc_msgSend(d, "unsignedIntValue") == 10)
  {
    v9 = [objc_msgSend(data objectForKeyedSubscript:{@"VTxR", "integerValue"}];
    [v6 averageSendBitrateSum];
    [v6 setAverageSendBitrateSum:v10 + v9];
    v11 = [objc_msgSend(data objectForKeyedSubscript:{@"VTxRTarget", "integerValue"}];
    [v6 averageTargetBitrateSum];
    [v6 setAverageTargetBitrateSum:v12 + v11];
    v13 = [objc_msgSend(data objectForKeyedSubscript:{@"VTxRFEC", "integerValue"}];
    [v6 averageFECSendBitrateSum];
    [v6 setAverageFECSendBitrateSum:v14 + v13];
    v15 = [objc_msgSend(data objectForKeyedSubscript:{@"VTxRMedia", "integerValue"}];
    [v6 averageMediaSendBitrateSum];
    [v6 setAverageMediaSendBitrateSum:v16 + v15];
    v17 = [objc_msgSend(data objectForKeyedSubscript:{@"VTxRHDR", "integerValue"}];
    [v6 averageHeaderSendBitrateSum];
    [v6 setAverageHeaderSendBitrateSum:v18 + v17];
    [v6 setVideoFrameCapturedCounter:{objc_msgSend(v6, "videoFrameCapturedCounter") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VFCCnt", "integerValue")}];
    [v6 setAverageMetadataTxBitrate:{objc_msgSend(v6, "averageMetadataTxBitrate") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VTxMetadataOverhead", "integerValue")}];
    [v6 setTotalRTPUplinkIngressVideoPackets:{objc_msgSend(v6, "totalRTPUplinkIngressVideoPackets") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"RTPUplinkIngressVideoPkts", "unsignedIntegerValue")}];
  }

  if ([d unsignedIntValue] == 2 || objc_msgSend(d, "unsignedIntValue") == 4 || objc_msgSend(d, "unsignedIntValue") == 6)
  {
    [v6 setTotalRTPUplinkIngressAudioPackets:{objc_msgSend(v6, "totalRTPUplinkIngressAudioPackets") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"RTPUplinkIngressAudioPkts", "unsignedIntegerValue")}];
    v19 = [objc_msgSend(data objectForKeyedSubscript:{@"ATxEncodedBitrate", "unsignedIntegerValue"}];
    [v6 averageAudioMediaTxNoRedBitrate];
    v21 = v20 + v19;

    [v6 setAverageAudioMediaTxNoRedBitrate:v21];
  }
}

- (void)processRTXStreamData:(id)data streamGroupID:(id)d
{
  v6 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:d];
  [v6 setIsRTXTelemetryAvailable:1];
  if ([data objectForKeyedSubscript:@"NacksSent"])
  {
    [v6 setNacksSent:{objc_msgSend(v6, "nacksSent") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"NacksSent", "integerValue")}];
  }

  if ([data objectForKeyedSubscript:@"NacksFulfilled"])
  {
    [v6 setNacksFulfilled:{objc_msgSend(v6, "nacksFulfilled") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"NacksFulfilled", "integerValue")}];
  }

  if ([data objectForKeyedSubscript:@"NacksFulfilledOnTime"])
  {
    [v6 setNacksFulfilledOnTime:{objc_msgSend(v6, "nacksFulfilledOnTime") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"NacksFulfilledOnTime", "integerValue")}];
  }

  if ([data objectForKeyedSubscript:@"UniqueNacksSent"])
  {
    [v6 setUniqueNacksSent:{objc_msgSend(v6, "uniqueNacksSent") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"UniqueNacksSent", "integerValue")}];
  }

  if ([data objectForKeyedSubscript:@"VFEVTrCnt"])
  {
    [v6 setVideoFrameIncompleteNextTSCounter:{objc_msgSend(v6, "videoFrameIncompleteNextTSCounter") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VFEVTrCnt", "integerValue")}];
  }

  if ([data objectForKeyedSubscript:@"DVFECnt"])
  {
    v7 = [objc_msgSend(data objectForKeyedSubscript:{@"DVFECnt", "integerValue"}];
    [v6 decodedVideoFrameEnqueueCounter];
    [v6 setDecodedVideoFrameEnqueueCounter:v8 + v7];
  }

  v9 = [objc_msgSend(data objectForKeyedSubscript:{@"VCSPVideoDegraded", "BOOLValue"}];
  if (v9)
  {
    if ([v6 currentDegradedVideoState])
    {
      goto LABEL_21;
    }

    [(VCAggregator *)self microFromPayload:data];
  }

  else
  {
    [v6 degradedVideoStartTime];
    if (v11 == 0.0)
    {
      goto LABEL_21;
    }

    [(VCAggregator *)self microFromPayload:data];
    v13 = v12;
    [v6 degradedVideoStartTime];
    [v6 setDegradedVideoDuration:v13 - v14];
    [v6 poorConnectionMaxLength];
    v16 = v15;
    [v6 degradedVideoDuration];
    if (v16 >= v17)
    {
      v17 = v16;
    }

    [v6 setPoorConnectionMaxLength:v17];
    [v6 degradedVideoDuration];
    v19 = v18;
    [v6 poorConnectionTotalLength];
    [v6 setPoorConnectionTotalLength:v19 + v20];
    v10 = 0.0;
  }

  [v6 setDegradedVideoStartTime:v10];
LABEL_21:

  [v6 setCurrentDegradedVideoState:v9];
}

- (void)processUILayout:(id)layout
{
  currentUISize = [(VCAggregatorMultiway *)self currentUISize];
  isFullsizeUI = self->_isFullsizeUI;
  self->_isFullsizeUI = currentUISize;
  v7 = [objc_msgSend(layout objectForKeyedSubscript:{@"VCSInCanvasCounter", "intValue"}] > 4;
  if (self->_isFullsizeUI)
  {
    self->_isGridView = v7;
    if (isFullsizeUI == currentUISize)
    {
      return;
    }

    goto LABEL_8;
  }

  isGridView = self->_isGridView;
  self->_isGridView = v7;
  if (isFullsizeUI != currentUISize || isGridView != v7)
  {
LABEL_8:
    currentDownlinkSegmentStreamGroups = self->_currentDownlinkSegmentStreamGroups;

    [(VCAggregatorMultiway *)self startDownlinkSegmentWithStreamGroups:currentDownlinkSegmentStreamGroups withPayload:layout];
  }
}

- (BOOL)currentUISize
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  calls = self->_calls;
  v4 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(calls);
        }

        v6 |= [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i)), "isFullSize"}];
      }

      v5 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (void)processStatsForNumberOfParticipants:(unsigned int)participants webParticipants:(unsigned int)webParticipants withPayload:(id)payload
{
  v23 = *MEMORY[0x277D85DE8];
  if (participants > 0x27 || webParticipants >= 0x28)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR(3u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v13 = 136316162;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCAggregatorMultiway processStatsForNumberOfParticipants:webParticipants:withPayload:]";
        v17 = 1024;
        v18 = 10682;
        v19 = 1024;
        participantsCopy = participants;
        v21 = 1024;
        webParticipantsCopy = webParticipants;
        _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCAggregatorMultiway: formerParticipantCounter=%d or formerWebParticipantCounter=%d is greater than MAX_NUMBER_OF_PARTICIPANTS. Ignoring participant change...", &v13, 0x28u);
      }
    }
  }

  else
  {
    [(VCAggregator *)self microFromPayload:payload];
    v9 = v8 - self->_lastParticipantNumberChangeTime;
    self->_numberOfParticipantsDuration[participants] = v9 + self->_numberOfParticipantsDuration[participants];
    self->_numberOfWebParticipantsDuration[webParticipants] = v9 + self->_numberOfWebParticipantsDuration[webParticipants];
    self->_totalParticipantMeasuredTime = v9 + self->_totalParticipantMeasuredTime;
    self->_lastParticipantNumberChangeTime = v8;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processParticipantTimingInfoV1ForMultiwayCall:(id)call payload:(id)payload
{
  v38 = *MEMORY[0x277D85DE8];
  if ([payload objectForKeyedSubscript:@"VCMSStreamGroup"] && objc_msgSend(payload, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA88)) && objc_msgSend(objc_msgSend(payload, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAA7)), "intValue") && (objc_msgSend(objc_msgSend(payload, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A933)), "intValue") > 0 || objc_msgSend(objc_msgSend(payload, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A952)), "intValue") >= 1) && objc_msgSend(payload, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAC6)))
  {
    [objc_msgSend(payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA88)), "doubleValue"}];
    v7 = v6;
    [objc_msgSend(payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAA7)), "doubleValue"}];
    v9 = v8;
    if ([payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A952)}])
    {
      v10 = &unk_23D59A952;
    }

    else
    {
      v10 = &unk_23D59A933;
    }

    [objc_msgSend(payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", v10)), "doubleValue"}];
    v12 = v11;
    [objc_msgSend(payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAC6)), "doubleValue"}];
    v14 = v13;
    if (VRTraceGetErrorLogLevelForModule("") >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR(6u);
      v16 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136317442;
        v21 = v15;
        v22 = 2080;
        v23 = "[VCAggregatorMultiway processParticipantTimingInfoV1ForMultiwayCall:payload:]";
        v24 = 1024;
        v25 = 10714;
        v26 = 2112;
        v27 = [payload objectForKeyedSubscript:@"VCSPIDSID"];
        v28 = 1024;
        *v29 = v9 + v7 + v12;
        *&v29[4] = 1024;
        *&v29[6] = v7;
        v30 = 1024;
        v31 = v9;
        v32 = 1024;
        v33 = v12;
        v34 = 1024;
        v35 = v14;
        v36 = 2112;
        payloadCopy = payload;
        _os_log_impl(&dword_23D4DF000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing V1 for participantID=%@: totalConnectionTime=%d, firstMKIDelta=%d, firstMediaReceivedDelta=%d, firstFrameProcessingDelta=%d, totalMediaStallSaveDelta=%d, original dictionary=%@", &v20, 0x4Eu);
      }
    }

    [call updatePerfTimingV1WithFirstVideoFrameProcessingDelta:objc_msgSend(payload firstMediaReceivedDelta:"objectForKeyedSubscript:" firstMKIDelta:@"VCMSStreamGroup" totalMediaStallSaveDelta:v12 streamGroupID:{v9, v7, v14}];
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v17 = VRTraceErrorLogLevelToCSTR(8u);
    v18 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136316162;
        v21 = v17;
        v22 = 2080;
        v23 = "[VCAggregatorMultiway processParticipantTimingInfoV1ForMultiwayCall:payload:]";
        v24 = 1024;
        v25 = 10700;
        v26 = 2112;
        v27 = [payload objectForKeyedSubscript:@"VCSPIDSID"];
        v28 = 2112;
        *v29 = payload;
        _os_log_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing V1: incomplete timing for participantID=%@ received=%@", &v20, 0x30u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [VCAggregatorMultiway processParticipantTimingInfoV1ForMultiwayCall:v17 payload:payload];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)processParticipantTimingInfoV2ForMultiwayCall:(id)call payload:(id)payload
{
  v33 = *MEMORY[0x277D85DE8];
  if ([payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AB23)}] && objc_msgSend(payload, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AB42)))
  {
    [objc_msgSend(payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AB04)), "doubleValue"}];
    v7 = v6;
    [objc_msgSend(payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AB23)), "doubleValue"}];
    v9 = v8;
    [objc_msgSend(payload objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AB42)), "doubleValue"}];
    v11 = v10;
    if (VRTraceGetErrorLogLevelForModule("") >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR(6u);
      v13 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136317186;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCAggregatorMultiway processParticipantTimingInfoV2ForMultiwayCall:payload:]";
        v19 = 1024;
        v20 = 10735;
        v21 = 2112;
        v22 = [payload objectForKeyedSubscript:@"VCSPIDSID"];
        v23 = 1024;
        v24 = v9 + v7 + v11;
        v25 = 1024;
        v26 = v7;
        v27 = 1024;
        v28 = v9;
        v29 = 1024;
        v30 = v11;
        v31 = 2112;
        payloadCopy = payload;
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing V2 for participantID=%@: totalConnectionTime=%d, mediaCreatedToStartedTime=%d, mediaStartedToFirstPacketTime=%d, mediaFirstPacketToFirstFrameTime=%d, original dictionary=%@", &v15, 0x48u);
      }
    }

    [call updatePerfTimingV2WithMediaCreatedToStartedTime:objc_msgSend(payload mediaStartedToFirstPacketTime:"objectForKeyedSubscript:" mediaFirstPacketToFirstFrameTime:@"VCMSStreamGroup" streamGroupID:{v7, v9, v11}];
  }

  else
  {
    [VCAggregatorMultiway processParticipantTimingInfoV2ForMultiwayCall:payload payload:?];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processParticipantTimingInfo:(id)info
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_calls, "objectForKeyedSubscript:", [info objectForKeyedSubscript:@"VCSPUUID"]);
  if ([v5 isLive])
  {
    [(VCAggregatorMultiway *)self processParticipantTimingInfoV1ForMultiwayCall:v5 payload:info];

    [(VCAggregatorMultiway *)self processParticipantTimingInfoV2ForMultiwayCall:v5 payload:info];
  }
}

- (void)processSessionInitWithPayload:(id)payload timestamp:(double)timestamp
{
  self->_sessionCreatedTime = timestamp;
  v6 = [objc_msgSend(payload objectForKeyedSubscript:{@"VCSMode", "integerValue"}];
  self->_currentSessionMode = v6;
  self->_initialSessionMode = v6;
  [(VCHistogram *)self->_sessionModeHistogram addValue:self->_currentSessionMode];
  self->_outOfProcessCodecsEnabled = [objc_msgSend(payload objectForKeyedSubscript:{@"VCSOOPCodecs", "BOOLValue"}];
  v7 = [objc_msgSend(payload objectForKeyedSubscript:{@"LocSw", "intValue"}];
  [(MultiwaySegment *)self->_currentDownlinkSegment setLocalSwitches:v7];
  [(MultiwaySegment *)self->_currentUplinkSegment setLocalSwitches:v7];
  self->_localSwitches = v7;
  v8 = [objc_msgSend(payload objectForKeyedSubscript:{@"SesSw", "intValue"}];
  [(MultiwaySegment *)self->_currentDownlinkSegment setSessionSwitches:v8];
  [(MultiwaySegment *)self->_currentUplinkSegment setSessionSwitches:v8];
  self->_sessionSwitches = v8;
  if ([payload objectForKeyedSubscript:@"VideoEyeContact"])
  {
    v9 = [objc_msgSend(payload objectForKeyedSubscript:{@"VideoEyeContact", "intValue"}];
    [(MultiwaySegment *)self->_currentDownlinkSegment setEyeContactStatus:v9];
    [(MultiwaySegment *)self->_currentUplinkSegment setEyeContactStatus:v9];
    self->super._eyeContactStatus = v9;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v32 = __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke;
  v33 = &unk_278BD4E38;
  selfCopy = self;
  v10 = [payload objectForKeyedSubscript:@"REFENB"];
  if (v10)
  {
    v32(v31, v10);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v28 = __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke_2;
  v29 = &unk_278BD4E38;
  selfCopy2 = self;
  v11 = [payload objectForKeyedSubscript:@"CSFENB"];
  if (v11)
  {
    v28(v27, v11);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v24 = __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke_3;
  v25 = &unk_278BD4E38;
  selfCopy3 = self;
  v12 = [payload objectForKeyedSubscript:@"PMFENB"];
  if (v12)
  {
    v24(v23, v12);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke_4;
  v21 = &unk_278BD4E38;
  selfCopy4 = self;
  v13 = [payload objectForKeyedSubscript:@"SLFENB"];
  if (v13)
  {
    v20(v19, v13);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke_5;
  v17 = &unk_278BD4E38;
  selfCopy5 = self;
  v14 = [payload objectForKeyedSubscript:@"BGRFENB"];
  if (v14)
  {
    v16(v15, v14);
  }

  self->_localParticipantID = [objc_msgSend(payload objectForKeyedSubscript:{@"VCSPUUID", "copy"}];
}

uint64_t __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  [*(*(a1 + 32) + 1360) setReactionsStatus:v3];
  result = [*(*(a1 + 32) + 1336) setReactionsStatus:v3];
  *(*(a1 + 32) + 832) = v3;
  return result;
}

uint64_t __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  [*(*(a1 + 32) + 1360) setCenterStageStatus:v3];
  result = [*(*(a1 + 32) + 1336) setCenterStageStatus:v3];
  *(*(a1 + 32) + 829) = v3;
  return result;
}

uint64_t __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  [*(*(a1 + 32) + 1360) setPortraitModeStatus:v3];
  result = [*(*(a1 + 32) + 1336) setPortraitModeStatus:v3];
  *(*(a1 + 32) + 830) = v3;
  return result;
}

uint64_t __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  [*(*(a1 + 32) + 1360) setStudioLightStatus:v3];
  result = [*(*(a1 + 32) + 1336) setStudioLightStatus:v3];
  *(*(a1 + 32) + 831) = v3;
  return result;
}

uint64_t __64__VCAggregatorMultiway_processSessionInitWithPayload_timestamp___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  result = [*(*(a1 + 32) + 1336) setBackgroundReplacementStatus:v3];
  *(*(a1 + 32) + 833) = v3;
  return result;
}

- (void)processSessionConfigUpdatedWithPayload:(id)payload
{
  currentSessionMode = self->_currentSessionMode;
  v6 = [objc_msgSend(payload objectForKeyedSubscript:{@"VCSMode", "integerValue"}];
  self->_currentSessionMode = v6;
  if (currentSessionMode != v6)
  {
    ++self->_sessionModeSwitchCount;
    [(VCHistogram *)self->_sessionModeHistogram addValue:self->_currentSessionMode];
  }

  if (self->_outOfProcessCodecsEnabled)
  {
    v7 = 1;
  }

  else
  {
    v7 = [objc_msgSend(payload objectForKeyedSubscript:{@"VCSOOPCodecs", "BOOLValue"}];
  }

  self->_outOfProcessCodecsEnabled = v7;
}

- (void)processSessionStart:(double)start
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCreatedTime = self->_sessionCreatedTime;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  calls = self->_calls;
  v7 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = start - sessionCreatedTime;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(calls);
        }

        [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i)), "setConnectionTime:", v9}];
      }

      v8 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processScreenControlEnabled:(id)enabled withType:(unsigned __int16)type withTimestamp:(double)timestamp
{
  typeCopy = type;
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_calls, "objectForKeyedSubscript:", [enabled objectForKeyedSubscript:@"VCSPUUID"]);
  if (typeCopy == 1)
  {

    [v7 markScreenControlStartWithTimestamp:timestamp];
  }

  else if (typeCopy)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway processScreenControlEnabled:withType:withTimestamp:];
      }
    }
  }

  else
  {

    [v7 markScreenControlCompletionWithTimestamp:timestamp];
  }
}

- (double)getSessionScreenControlDurationMsec
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  calls = self->_calls;
  v4 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(calls);
        }

        [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i)), "screenControlTotalDurationMsec"}];
        v7 = v7 + v9;
      }

      v5 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)processCameraCompositionEnabled:(id)enabled withType:(unsigned __int16)type withTimestamp:(double)timestamp
{
  typeCopy = type;
  v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_calls, "objectForKeyedSubscript:", [enabled objectForKeyedSubscript:@"VCSPUUID"]);
  if (typeCopy > 1)
  {
    if (typeCopy == 3)
    {
      self->_cameraCompositionStartTimeMsec = timestamp;
      return;
    }

    if (typeCopy == 2)
    {
      self->_cameraCompositionTotalDurationMsec = (timestamp - self->_cameraCompositionStartTimeMsec) * 1000.0;
      self->_cameraCompositionStartTimeMsec = 0.0;
      return;
    }

LABEL_10:
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway processCameraCompositionEnabled:withType:withTimestamp:];
      }
    }

    return;
  }

  if (typeCopy)
  {
    if (typeCopy == 1)
    {

      [v8 markCameraCompositionStartWithTimestamp:timestamp];
      return;
    }

    goto LABEL_10;
  }

  [v8 markCameraCompositionCompletionWithTimestamp:timestamp];
}

- (double)getSessionCameraCompositionDurationMsec
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  calls = self->_calls;
  v4 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(calls);
        }

        [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i)), "cameraCompositionTotalDurationMsec"}];
        v7 = v7 + v9;
      }

      v5 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)currentDegragedParticipantCount
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  calls = self->_calls;
  v4 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(calls);
        }

        v6 += [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i)), "isVideoDegraded"}];
      }

      v5 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)processNetworkQualityUpdated:(id)updated
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [updated objectForKeyedSubscript:@"NetworkQualityStatus"];
  if (v4)
  {
    v5 = v4;
    networkQualityStatus = self->_networkQualityStatus;
    if (networkQualityStatus != [v4 unsignedIntValue])
    {
      [(VCAggregator *)self microFromPayload:0];
      v8 = v7;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      calls = self->_calls;
      v10 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(calls);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{v14), "processNetworkQualityUpdatedWithStatus:timestamp:", objc_msgSend(v5, "unsignedIntValue"), v8}];
            -[DownlinkSegment processNetworkQualityUpdatedWithStatus:forParticipant:timestamp:](self->_currentDownlinkSegment, "processNetworkQualityUpdatedWithStatus:forParticipant:timestamp:", [v5 unsignedIntValue], v14, v8);
          }

          v11 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }

      self->_networkQualityStatus = [v5 unsignedIntValue];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processInternalErrorDetected:(unsigned __int16)detected payload:(id)payload
{
  detectedCopy = detected;
  v7 = [payload objectForKeyedSubscript:@"VCSErrorDetected"];
  if (v7)
  {
    v8 = v7;
    if (detectedCopy == 1)
    {
      intValue = [v7 intValue];
      v10 = 2452;
      goto LABEL_9;
    }

    if (!detectedCopy)
    {
      intValue = [v7 intValue];
      v10 = 2448;
LABEL_9:
      *(&self->super.super.super.isa + v10) = intValue;
      return;
    }

    v11 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_internalErrors objectForKeyedSubscript:{objc_msgSend(v7, "description")), "intValue"}];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_internalErrors, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:(v11 + 1)], objc_msgSend(v8, "description"));
    stateQueue = self->super._stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__VCAggregatorMultiway_processInternalErrorDetected_payload___block_invoke;
    block[3] = &unk_278BD4F00;
    block[4] = self;
    block[5] = payload;
    block[6] = v8;
    dispatch_async(stateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway processInternalErrorDetected:payload:];
    }
  }
}

uint64_t __61__VCAggregatorMultiway_processInternalErrorDetected_payload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[38];
  [v2 microFromPayload:*(a1 + 40)];
  [v3 addCallFailureWithTime:objc_msgSend(*(a1 + 48) detailedErrorCode:{"intValue"), v4}];
  v5 = *(a1 + 32);
  v6 = v5[39];
  [v5 microFromPayload:*(a1 + 40)];
  [v6 addCallFailureWithTime:objc_msgSend(*(a1 + 48) detailedErrorCode:{"intValue"), v7}];
  v8 = *(a1 + 32);
  v9 = v8[40];
  [v8 microFromPayload:*(a1 + 40)];
  v11 = v10;
  v12 = [*(a1 + 48) intValue];

  return [v9 addCallFailureWithTime:v12 detailedErrorCode:v11];
}

- (void)processMKMRecoveryRequestEventForParticipant:(id)participant
{
  v3 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:participant];
  v4 = [v3 mkmRecoveryAttemptCount] + 1;

  [v3 setMkmRecoveryAttemptCount:v4];
}

- (void)processActiveTemporalTiers:(id)tiers
{
  if ([tiers objectForKeyedSubscript:@"VCVSTxTemporalTier"])
  {
    v5 = [tiers objectForKeyedSubscript:@"VCVSTxTemporalTier"];
    v6 = -[NSMutableDictionary objectForKeyedSubscript:](-[MultiwaySegment activeTemporalTiersBitmapStreams](self->_currentUplinkSegment, "activeTemporalTiersBitmapStreams"), "objectForKeyedSubscript:", [tiers objectForKeyedSubscript:@"VCMSStreamGroup"]);
    v7 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v5, "unsignedIntValue") | objc_msgSend(v6, "unsignedIntValue")}];
    activeTemporalTiersBitmapStreams = [(MultiwaySegment *)self->_currentUplinkSegment activeTemporalTiersBitmapStreams];
    v9 = [tiers objectForKeyedSubscript:@"VCMSStreamGroup"];

    [(NSMutableDictionary *)activeTemporalTiersBitmapStreams setObject:v7 forKeyedSubscript:v9];
  }
}

- (void)updateWRMMetrics:(unsigned int)metrics payload:(id)payload
{
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__VCAggregatorMultiway_updateWRMMetrics_payload___block_invoke;
  v5[3] = &unk_278BD4D48;
  v5[4] = payload;
  v5[5] = self;
  dispatch_async(stateQueue, v5);
}

void __49__VCAggregatorMultiway_updateWRMMetrics_payload___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMLinkType"])
  {

    *(*(a1 + 40) + 2816) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMLinkType", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeSuggestion:*(*(a1 + 40) + 2816)];
  }

  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMReasonCode"])
  {

    *(*(a1 + 40) + 2824) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMReasonCode", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeChangeReasonCode:*(*(a1 + 40) + 2824)];
  }

  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMwRSSI"])
  {

    *(*(a1 + 40) + 2832) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMwRSSI", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeWifiRSSI:*(*(a1 + 40) + 2832)];
  }

  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMwSNR"])
  {

    *(*(a1 + 40) + 2840) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMwSNR", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeWifiSNR:*(*(a1 + 40) + 2840)];
  }

  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMwCCA"])
  {

    *(*(a1 + 40) + 2848) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMwCCA", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeWifiCCA:*(*(a1 + 40) + 2848)];
  }

  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMwPacketLoss"])
  {

    *(*(a1 + 40) + 2856) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMwPacketLoss", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeWifiPacketLoss:*(*(a1 + 40) + 2856)];
  }

  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMcSigStrength"])
  {

    *(*(a1 + 40) + 2864) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMcSigStrength", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeCellSignalStrength:*(*(a1 + 40) + 2864)];
  }

  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMcSignalBar"])
  {

    *(*(a1 + 40) + 2872) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMcSignalBar", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeCellSignalBar:*(*(a1 + 40) + 2872)];
  }

  if ([*(a1 + 32) objectForKeyedSubscript:@"WRMcServingCellType"])
  {

    *(*(a1 + 40) + 2880) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"WRMcServingCellType", "copy"}];
    [*(*(a1 + 40) + 1336) setWrmLinkTypeCellServingCellType:*(*(a1 + 40) + 2880)];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(a1 + 40) + 1336);
        v14 = [v4 wrmLinkTypeSuggestion];
        v13 = [*(*(a1 + 40) + 1336) wrmLinkTypeChangeReasonCode];
        v12 = [*(*(a1 + 40) + 1336) wrmLinkTypeWifiRSSI];
        v5 = [*(*(a1 + 40) + 1336) wrmLinkTypeWifiSNR];
        v6 = [*(*(a1 + 40) + 1336) wrmLinkTypeWifiCCA];
        v7 = [*(*(a1 + 40) + 1336) wrmLinkTypeWifiPacketLoss];
        v8 = [*(*(a1 + 40) + 1336) wrmLinkTypeCellSignalStrength];
        v9 = [*(*(a1 + 40) + 1336) wrmLinkTypeCellSignalBar];
        v10 = [*(*(a1 + 40) + 1336) wrmLinkTypeCellServingCellType];
        *buf = 136318210;
        v16 = v2;
        v17 = 2080;
        v18 = "[VCAggregatorMultiway updateWRMMetrics:payload:]_block_invoke";
        v19 = 1024;
        v20 = 11011;
        v21 = 2112;
        v22 = v4;
        v23 = 2112;
        v24 = v14;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v12;
        v29 = 2112;
        v30 = v5;
        v31 = 2112;
        v32 = v6;
        v33 = 2112;
        v34 = v7;
        v35 = 2112;
        v36 = v8;
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = v10;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updating WRM metrics in uplink segment report=%@ wrmLinkTypeSuggestion=%@ wrmLinkTypeChangeReasonCode=%@ wrmLinkTypeWifiRSSI=%@ wrmLinkTypeWifiSNR=%@ wrmLinkTypeWifiCCA=%@ wrmLinkTypeWifiPacketLoss=%@ wrmLinkTypeCellSignalStrength=%@ wrmLinkTypeCellSignalBar=%@ wrmLinkTypeCellServingCellType=%@", buf, 0x80u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __49__VCAggregatorMultiway_updateWRMMetrics_payload___block_invoke_cold_1(v2, a1, v3);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)processControlChannelEventType:(unsigned __int16)type payload:(id)payload
{
  typeCopy = type;
  v28 = *MEMORY[0x277D85DE8];
  v7 = [payload objectForKeyedSubscript:@"VCSPUUID"];
  v8 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v7];
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 5)
    {
      goto LABEL_17;
    }

    v11 = VRTraceErrorLogLevelToCSTR(5u);
    v12 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v20 = 136315906;
    v21 = v11;
    v22 = 2080;
    v23 = "[VCAggregatorMultiway processControlChannelEventType:payload:]";
    v24 = 1024;
    v25 = 11019;
    v26 = 2112;
    v27 = v7;
    v13 = " [%s] %s:%d Unknown remote participant=%@. Ignoring ...";
    v14 = v12;
    v15 = 38;
    goto LABEL_16;
  }

  v9 = v8;
  [(VCAggregator *)self microFromPayload:payload];
  if (typeCopy != 1)
  {
    if (!typeCopy)
    {
      v10 = *MEMORY[0x277D85DE8];

      [v9 markHandshakeStart:?];
      return;
    }

    if (VRTraceGetErrorLogLevelForModule("") < 5 || (v17 = VRTraceErrorLogLevelToCSTR(5u), v18 = gVRTraceOSLog, !os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT)))
    {
LABEL_17:
      v19 = *MEMORY[0x277D85DE8];
      return;
    }

    v20 = 136315906;
    v21 = v17;
    v22 = 2080;
    v23 = "[VCAggregatorMultiway processControlChannelEventType:payload:]";
    v24 = 1024;
    v25 = 11031;
    v26 = 1024;
    LODWORD(v27) = typeCopy;
    v13 = " [%s] %s:%d Unknown control channel event type=%d. Ignoring ...";
    v14 = v18;
    v15 = 34;
LABEL_16:
    _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
    goto LABEL_17;
  }

  v16 = *MEMORY[0x277D85DE8];

  [v9 markHandshakeCompletion:?];
}

- (void)updateAlgoMetrics:(unsigned int)metrics payload:(id)payload
{
  v7 = [payload objectForKeyedSubscript:@"VCSPUUID"];
  stateQueue = self->super._stateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__VCAggregatorMultiway_updateAlgoMetrics_payload___block_invoke;
  v9[3] = &unk_278BD4F28;
  v9[4] = self;
  v9[5] = payload;
  v9[6] = v7;
  metricsCopy = metrics;
  dispatch_async(stateQueue, v9);
}

void __50__VCAggregatorMultiway_updateAlgoMetrics_payload___block_invoke(uint64_t a1)
{
  [*(a1 + 32) microFromPayload:*(a1 + 40)];
  v3 = v2;
  v4 = [*(*(a1 + 32) + 280) algosScorerWithParticipantID:*(a1 + 48)];
  if (!v4)
  {
    [*(*(a1 + 32) + 280) addParticipantWithTime:*(a1 + 48) participantID:v3];
    v4 = [*(*(a1 + 32) + 280) algosScorerWithParticipantID:*(a1 + 48)];
  }

  v18 = v4;
  v5 = [*(*(a1 + 32) + 288) algosScorerWithParticipantID:*(a1 + 48)];
  if (!v5)
  {
    [*(*(a1 + 32) + 288) addParticipantWithTime:*(a1 + 48) participantID:v3];
    v5 = [*(*(a1 + 32) + 288) algosScorerWithParticipantID:*(a1 + 48)];
  }

  v6 = [*(*(a1 + 32) + 296) algosScorerWithParticipantID:*(a1 + 48)];
  if (!v6)
  {
    [*(*(a1 + 32) + 296) addParticipantWithTime:*(a1 + 48) participantID:v3];
    v6 = [*(*(a1 + 32) + 296) algosScorerWithParticipantID:*(a1 + 48)];
  }

  v7 = *(a1 + 56);
  if (v7 <= 2)
  {
    v8 = v18;
    if (v7)
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          goto LABEL_24;
        }

        [v18 stopWithTime:1 streamType:v3];
        [v5 stopWithTime:1 streamType:v3];
        v9 = v6;
        v10 = v3;
        v11 = 1;
        goto LABEL_18;
      }

      [v18 startWithTime:2 streamType:v3];
      [v5 startWithTime:2 streamType:v3];
      v15 = v6;
      v16 = v3;
      v17 = 2;
    }

    else
    {
      [v18 startWithTime:1 streamType:v3];
      [v5 startWithTime:1 streamType:v3];
      v15 = v6;
      v16 = v3;
      v17 = 1;
    }

    [v15 startWithTime:v17 streamType:v16];
    goto LABEL_23;
  }

  v8 = v18;
  switch(v7)
  {
    case 3:
      [v18 stopWithTime:2 streamType:v3];
      [v5 stopWithTime:2 streamType:v3];
      v9 = v6;
      v10 = v3;
      v11 = 2;
LABEL_18:
      [v9 stopWithTime:v11 streamType:v10];
      goto LABEL_23;
    case 4:
      [v18 endWithTime:1 streamType:v3];
      [v5 endWithTime:1 streamType:v3];
      v12 = v6;
      v13 = v3;
      v14 = 1;
      break;
    case 5:
      [v18 endWithTime:2 streamType:v3];
      [v5 endWithTime:2 streamType:v3];
      v12 = v6;
      v13 = v3;
      v14 = 2;
      break;
    default:
      goto LABEL_24;
  }

  [v12 endWithTime:v14 streamType:v13];
LABEL_23:
  v8 = v18;
LABEL_24:
}

- (void)updateReceivedVideoTierDurations:(id)durations
{
  v5 = [durations objectForKeyedSubscript:@"VCSPUUID"];
  v6 = [durations objectForKeyedSubscript:@"VCMSStreamGroup"];
  [(VCAggregator *)self microFromPayload:durations];
  v8 = v7;
  v9 = [self->_currentDownlinkSegment callStatsForParticipant:v5 andTime:?];
  if (v9)
  {
    [objc_msgSend(objc_msgSend(v9 statsForStreamGroup:{v6), "videoTierDurationData"), "updateWithPayload:time:", durations, v8}];
  }

  [objc_msgSend(objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{v5), "streamGroupStats"), "objectForKeyedSubscript:", v6), "videoTierDurationData"), "updateWithPayload:time:", durations, v8}];
  v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v6), "videoTierDurationData"}];

  [v10 updateWithPayload:durations time:v8];
}

- (void)updateVideoQualityWithPayload:(id)payload participantID:(id)d
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__VCAggregatorMultiway_updateVideoQualityWithPayload_participantID___block_invoke;
  block[3] = &unk_278BD4F00;
  block[4] = self;
  block[5] = d;
  block[6] = payload;
  dispatch_async(stateQueue, block);
}

uint64_t __68__VCAggregatorMultiway_updateVideoQualityWithPayload_participantID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) algosScorerWithParticipantID:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 288) algosScorerWithParticipantID:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 296) algosScorerWithParticipantID:*(a1 + 40)];
  v5 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"Width", "intValue"}];
  v6 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"Height", "intValue"}];
  [*(a1 + 32) microFromPayload:*(a1 + 48)];
  [v2 setVideoResolutionWithTime:v5 width:v6 height:?];
  [*(a1 + 32) microFromPayload:*(a1 + 48)];
  [v3 setVideoResolutionWithTime:v5 width:v6 height:?];
  [*(a1 + 32) microFromPayload:*(a1 + 48)];
  [v4 setVideoResolutionWithTime:v5 width:v6 height:?];
  [*(*(a1 + 32) + 344) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v5), *(a1 + 40)}];
  [*(*(a1 + 32) + 352) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v6), *(a1 + 40)}];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);

  return [v7 updateReceivedVideoTierDurations:v8];
}

- (void)updateLinkSuggestionTelemetry:(id)telemetry
{
  if ([telemetry objectForKeyedSubscript:@"LnkSug"] && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"LnkScr") && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"LnkDec"))
  {
    v5 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"LnkSug", "intValue"}];
    [(MultiwaySegment *)self->_currentDownlinkSegment setLinkPreferSuggestion:v5];
    [(MultiwaySegment *)self->_currentUplinkSegment setLinkPreferSuggestion:v5];
    self->super._linkPreferSuggestion = v5;
    v6 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"LnkScr", "intValue"}];
    [(MultiwaySegment *)self->_currentDownlinkSegment setLinkConfidenceScore:v6];
    [(MultiwaySegment *)self->_currentUplinkSegment setLinkConfidenceScore:v6];
    self->super._linkConfidenceScore = v6;
    v7 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"LnkDec", "intValue"}];
    [(MultiwaySegment *)self->_currentDownlinkSegment setLinkPreferDecision:v7];
    [(MultiwaySegment *)self->_currentUplinkSegment setLinkPreferDecision:v7];
    self->super._linkPreferDecision = v7;
  }

  if ([telemetry objectForKeyedSubscript:@"LnkIp"])
  {
    v8 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"LnkIp", "intValue"}];
    [(MultiwaySegment *)self->_currentDownlinkSegment setLinkIPPreference:v8];
    [(MultiwaySegment *)self->_currentUplinkSegment setLinkIPPreference:v8];
    self->_linkIPPreference = v8;
  }
}

- (void)addLocalParticipnt:(double)participnt
{
  self->_lastParticipantNumberChangeTime = participnt;
  self->_participantCounter = 1;
  self->_webParticipantCounter = 0;
  [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregator addParticipantWithTime:@"DefaultParticipantID" participantID:?];
  algosScorerDefault = self->super._algosScorerDefault;
  if (!algosScorerDefault)
  {
    algosScorerDefault = [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregator algosScorerWithParticipantID:@"DefaultParticipantID"];
    self->super._algosScorerDefault = algosScorerDefault;
  }

  [(VCAlgosStreamingScorer *)algosScorerDefault startWithTime:0 streamType:participnt];
  [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorAlternate addParticipantWithTime:@"DefaultParticipantID" participantID:participnt];
  algosScorerAlternate = self->super._algosScorerAlternate;
  if (!algosScorerAlternate)
  {
    algosScorerAlternate = [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorAlternate algosScorerWithParticipantID:@"DefaultParticipantID"];
    self->super._algosScorerAlternate = algosScorerAlternate;
  }

  [(VCAlgosStreamingScorer *)algosScorerAlternate startWithTime:0 streamType:participnt];
  [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorBounded addParticipantWithTime:@"DefaultParticipantID" participantID:participnt];
  algosScorerBounded = self->super._algosScorerBounded;
  if (!algosScorerBounded)
  {
    algosScorerBounded = [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorBounded algosScorerWithParticipantID:@"DefaultParticipantID"];
    self->super._algosScorerBounded = algosScorerBounded;
  }

  [(VCAlgosStreamingScorer *)algosScorerBounded startWithTime:0 streamType:participnt];
}

- (BOOL)shouldConnectionEstablishmentStartNewSegment:(id)segment
{
  if (self->super._isOneToOneMode)
  {
    v5 = -[VCAggregator didUpdateStringFrom:toString:](self, "didUpdateStringFrom:toString:", &self->super._connectionType, [segment objectForKeyedSubscript:@"ConnectionType"]);
    v6 = v5 | -[VCAggregator didUpdateStringFrom:toString:](self, "didUpdateStringFrom:toString:", &self->super._localInterfaceType, [segment objectForKeyedSubscript:@"LocalInterfaceType"]);
    return v6 | -[VCAggregator didUpdateStringFrom:toString:](self, "didUpdateStringFrom:toString:", &self->super._remoteInterfaceType, [segment objectForKeyedSubscript:@"RemoteInterfaceType"]);
  }

  else
  {
    v8 = [segment objectForKeyedSubscript:@"LocalInterfaceType"];

    return [(VCAggregator *)self didUpdateStringFrom:&self->super._localInterfaceType toString:v8];
  }
}

- (void)updatePrimaryConnHealthAllowedDelay:(double)delay
{
  self->_primaryConnHealthAllowedDelay = delay;
  [(MultiwaySegment *)self->_currentDownlinkSegment setPrimaryConnHealthAllowedDelay:?];
  primaryConnHealthAllowedDelay = self->_primaryConnHealthAllowedDelay;
  currentUplinkSegment = self->_currentUplinkSegment;

  [(MultiwaySegment *)currentUplinkSegment setPrimaryConnHealthAllowedDelay:primaryConnHealthAllowedDelay];
}

- (void)updateLinkProbingStats:(unsigned int)stats payload:(id)payload
{
  if (stats > 1)
  {
    if (stats == 2)
    {
      if ([objc_msgSend(payload objectForKeyedSubscript:{@"WRMRemAlrtUpdate", "intValue"}])
      {
        [(MultiwaySegment *)self->_currentUplinkSegment setRemoteAlertStateSwitchCount:[(MultiwaySegment *)self->_currentUplinkSegment remoteAlertStateSwitchCount]+ 1];
        currentDownlinkSegment = self->_currentDownlinkSegment;
        v11 = [(MultiwaySegment *)currentDownlinkSegment remoteAlertStateSwitchCount]+ 1;

        [(MultiwaySegment *)currentDownlinkSegment setRemoteAlertStateSwitchCount:v11];
      }
    }

    else if (stats == 3)
    {
      if ([payload objectForKeyedSubscript:@"lnkPrbRTTMeanDelta"] && objc_msgSend(payload, "objectForKeyedSubscript:", @"lnkPrbPLRTierDelta"))
      {
        ++self->super._dynamicDupeLinkCount;
        [objc_msgSend(payload objectForKeyedSubscript:{@"lnkPrbRTTMeanDelta", "doubleValue"}];
        self->super._rttMeanTotalDelta = v8 + self->super._rttMeanTotalDelta;
        self->super._plrTierTotalDelta += [objc_msgSend(payload objectForKeyedSubscript:{@"lnkPrbPLRTierDelta", "unsignedIntValue"}];
      }

      [(MultiwaySegment *)self->_currentDownlinkSegment processDuplicationConnectionTelemetry:payload type:3];
      currentUplinkSegment = self->_currentUplinkSegment;

      [(MultiwaySegment *)currentUplinkSegment processDuplicationConnectionTelemetry:payload type:3];
    }
  }

  else if (stats)
  {
    if (stats == 1 && [objc_msgSend(payload objectForKeyedSubscript:{@"WRMLocAlrtUpdate", "intValue"}])
    {
      [(MultiwaySegment *)self->_currentUplinkSegment setLocalAlertStateSwitchCount:[(MultiwaySegment *)self->_currentUplinkSegment localAlertStateSwitchCount]+ 1];
      v6 = self->_currentDownlinkSegment;
      v7 = [(MultiwaySegment *)v6 localAlertStateSwitchCount]+ 1;

      [(MultiwaySegment *)v6 setLocalAlertStateSwitchCount:v7];
    }
  }

  else
  {
    self->super._linkProbingVersion = [objc_msgSend(payload objectForKeyedSubscript:{@"lnkPrbVers", "intValue"}];
    self->super._remoteLinkProbingVersion = [objc_msgSend(payload objectForKeyedSubscript:{@"remLnkPrbVers", "intValue"}];
  }
}

- (void)updateClientExperiments:(id)experiments
{
  if ([experiments count])
  {
    [(NSMutableDictionary *)self->super.super._clientExperiments addEntriesFromDictionary:experiments];
    currentDownlinkSegment = self->_currentDownlinkSegment;
    if (currentDownlinkSegment)
    {
      [(NSMutableDictionary *)[(VCReportingCommon *)currentDownlinkSegment clientExperiments] addEntriesFromDictionary:experiments];
      currentUplinkSegment = self->_currentUplinkSegment;
      if (currentUplinkSegment)
      {
        clientExperiments = [(VCReportingCommon *)currentUplinkSegment clientExperiments];

        [(NSMutableDictionary *)clientExperiments addEntriesFromDictionary:experiments];
      }

      else
      {
        [VCAggregatorMultiway updateClientExperiments:];
      }
    }

    else
    {
      [VCAggregatorMultiway updateClientExperiments:];
    }
  }

  else
  {
    [VCAggregatorMultiway updateClientExperiments:];
  }
}

- (void)updateVPCStatus:(id)status
{
  if ([status objectForKeyedSubscript:@"VPCENABLED"])
  {
    self->super._isVPCEnabled = [objc_msgSend(status objectForKeyedSubscript:{@"VPCENABLED", "intValue"}];
  }
}

- (void)updateQRExperiments:(id)experiments
{
  if ([experiments count])
  {
    if (self->_currentUplinkSegment)
    {
      if (self->_currentDownlinkSegment)
      {
        v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(VCAggregator *)self filterDictionaryUsingQRServerPrefix:experiments addTo:v5];
        [(MultiwaySegment *)self->_currentUplinkSegment setQrExperiments:v5];
        [(MultiwaySegment *)self->_currentDownlinkSegment setQrExperiments:v5];
        [(VCAggregator *)self setQrExperiments:v5];
      }

      else
      {
        [VCAggregatorMultiway updateQRExperiments:];
      }
    }

    else
    {
      [VCAggregatorMultiway updateQRExperiments:];
    }
  }

  else
  {
    [VCAggregatorMultiway updateQRExperiments:];
  }
}

- (void)updateVCRCProfileNumber:(id)number
{
  v4 = [number objectForKeyedSubscript:@"vcrcProfNum"];
  if (v4)
  {
    v5 = v4;
    self->_vcrcProfileNumber = [v4 unsignedIntValue];
    unsignedIntValue = [v5 unsignedIntValue];
    currentDownlinkSegment = self->_currentDownlinkSegment;

    [currentDownlinkSegment setVcrcProfileNumber:unsignedIntValue];
  }
}

- (void)updateOperatingMode:(unsigned int)mode
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = reportingSessionModeFromOperatingMode(mode);
  if (!v4)
  {
    [VCAggregatorMultiway updateOperatingMode:?];
    goto LABEL_27;
  }

  v5 = v4;
  if (self->_callStartReportingMode)
  {
    if (self->_currentReportingMode == v4)
    {
      goto LABEL_27;
    }

    self->_currentReportingMode = v4;
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAggregatorMultiway *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR(7u);
        v15 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136316418;
          v19 = v16;
          v20 = 2080;
          v21 = "[VCAggregatorMultiway updateOperatingMode:]";
          v22 = 1024;
          v23 = 11293;
          v24 = 2112;
          v25 = v6;
          v26 = 2048;
          selfCopy2 = self;
          v28 = 1024;
          v29 = v5;
          v10 = " [%s] %s:%d %@(%p) Changed reportingMode=%d";
          goto LABEL_25;
        }
      }

      goto LABEL_27;
    }

    if (VRTraceGetErrorLogLevelForModule("") < 7)
    {
      goto LABEL_27;
    }

    v11 = VRTraceErrorLogLevelToCSTR(7u);
    v9 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v18 = 136315906;
    v19 = v11;
    v20 = 2080;
    v21 = "[VCAggregatorMultiway updateOperatingMode:]";
    v22 = 1024;
    v23 = 11293;
    v24 = 1024;
    LODWORD(v25) = v5;
    v10 = " [%s] %s:%d Changed reportingMode=%d";
LABEL_16:
    v12 = v9;
    v13 = 34;
LABEL_26:
    _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, v10, &v18, v13);
    goto LABEL_27;
  }

  self->_callStartReportingMode = v4;
  self->_currentReportingMode = v4;
  [self->_currentUplinkSegment setSegmentReportingMode:v4];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 7)
    {
      goto LABEL_27;
    }

    v8 = VRTraceErrorLogLevelToCSTR(7u);
    v9 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v18 = 136315906;
    v19 = v8;
    v20 = 2080;
    v21 = "[VCAggregatorMultiway updateOperatingMode:]";
    v22 = 1024;
    v23 = 11289;
    v24 = 1024;
    LODWORD(v25) = v5;
    v10 = " [%s] %s:%d Starting reportingMode=%d";
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCAggregatorMultiway *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR(7u);
    v15 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136316418;
      v19 = v14;
      v20 = 2080;
      v21 = "[VCAggregatorMultiway updateOperatingMode:]";
      v22 = 1024;
      v23 = 11289;
      v24 = 2112;
      v25 = v7;
      v26 = 2048;
      selfCopy2 = self;
      v28 = 1024;
      v29 = v5;
      v10 = " [%s] %s:%d %@(%p) Starting reportingMode=%d";
LABEL_25:
      v12 = v15;
      v13 = 54;
      goto LABEL_26;
    }
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateReconnectStats:(id)stats withType:(unsigned __int16)type
{
  if (type == 1)
  {
    self->_lastUsableLinkReceivedAfterReconnect = 1;
  }

  else if (!type)
  {
    self->_lastUsableLinkReceivedAfterReconnect = 0;
    [(MultiwaySegment *)self->_currentUplinkSegment setReconnectCount:[(MultiwaySegment *)self->_currentUplinkSegment reconnectCount]+ 1];
    [(MultiwaySegment *)self->_currentDownlinkSegment setReconnectCount:[(MultiwaySegment *)self->_currentDownlinkSegment reconnectCount]+ 1];
    ++self->_reconnectCount;
  }
}

- (void)updateIDSConfiguration:(id)configuration
{
  if ([configuration objectForKeyedSubscript:@"GECO_ABT"])
  {
    -[MultiwaySegment setGecoVersion:](self->_currentUplinkSegment, "setGecoVersion:", [configuration objectForKeyedSubscript:@"GECO_ABT"]);
    -[MultiwaySegment setGecoVersion:](self->_currentDownlinkSegment, "setGecoVersion:", [configuration objectForKeyedSubscript:@"GECO_ABT"]);
    [(VCAggregator *)self setGecoVersion:[(MultiwaySegment *)self->_currentUplinkSegment gecoVersion]];
  }

  if ([configuration objectForKeyedSubscript:@"QuicPod"])
  {
    -[MultiwaySegment setIsQUICPod:](self->_currentUplinkSegment, "setIsQUICPod:", [objc_msgSend(configuration objectForKeyedSubscript:{@"QuicPod", "integerValue"}] != 0);
    -[MultiwaySegment setIsQUICPod:](self->_currentDownlinkSegment, "setIsQUICPod:", [objc_msgSend(configuration objectForKeyedSubscript:{@"QuicPod", "integerValue"}] != 0);
    self->super._isQUICPod = [(MultiwaySegment *)self->_currentUplinkSegment isQUICPod];
  }

  v5 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_ABT", @"QuicPod"];
  if ([configuration objectForKeyedSubscript:v5])
  {
    -[MultiwaySegment setIsTLEABTestEnabled:](self->_currentUplinkSegment, "setIsTLEABTestEnabled:", [objc_msgSend(configuration objectForKeyedSubscript:{v5), "BOOLValue"}]);
    -[MultiwaySegment setIsTLEABTestEnabled:](self->_currentDownlinkSegment, "setIsTLEABTestEnabled:", [objc_msgSend(configuration objectForKeyedSubscript:{v5), "BOOLValue"}]);
    self->super._isTLEABTestEnabled = [(MultiwaySegment *)self->_currentUplinkSegment isTLEABTestEnabled];
  }

  if ([configuration objectForKeyedSubscript:@"p2pTLE"])
  {
    -[MultiwaySegment setIsP2PTLEABTestEnabled:](self->_currentUplinkSegment, "setIsP2PTLEABTestEnabled:", [objc_msgSend(configuration objectForKeyedSubscript:{@"p2pTLE", "integerValue"}] != 0);
    -[MultiwaySegment setIsP2PTLEABTestEnabled:](self->_currentDownlinkSegment, "setIsP2PTLEABTestEnabled:", [objc_msgSend(configuration objectForKeyedSubscript:{@"p2pTLE", "integerValue"}] != 0);
    self->super._isP2PTLEABTestEnabled = [(MultiwaySegment *)self->_currentUplinkSegment isP2PTLEABTestEnabled];
  }
}

- (void)updateProtocolStackDescription:(id)description
{
  if (description)
  {
    if ([description objectForKeyedSubscript:@"Rpsd"])
    {
      -[MultiwaySegment setRelayProtocolStack:](self->_currentUplinkSegment, "setRelayProtocolStack:", [description objectForKeyedSubscript:@"Rpsd"]);
      -[MultiwaySegment setRelayProtocolStack:](self->_currentDownlinkSegment, "setRelayProtocolStack:", [description objectForKeyedSubscript:@"Rpsd"]);
      -[VCAggregatorMultiway setRelayProtocolStack:](self, "setRelayProtocolStack:", [description objectForKeyedSubscript:@"Rpsd"]);
    }

    if ([description objectForKeyedSubscript:@"Cpsd"])
    {
      -[MultiwaySegment setChannelProtocolStack:](self->_currentUplinkSegment, "setChannelProtocolStack:", [description objectForKeyedSubscript:@"Cpsd"]);
      -[MultiwaySegment setChannelProtocolStack:](self->_currentDownlinkSegment, "setChannelProtocolStack:", [description objectForKeyedSubscript:@"Cpsd"]);
      v5 = [description objectForKeyedSubscript:@"Cpsd"];

      [(VCAggregatorMultiway *)self setChannelProtocolStack:v5];
    }
  }

  else
  {
    [VCAggregatorMultiway updateProtocolStackDescription:];
  }
}

- (void)updateConnectionProperties:(id)properties
{
  if ([properties objectForKeyedSubscript:@"ConnProtocolType"])
  {
    v5 = [objc_msgSend(properties objectForKeyedSubscript:{@"ConnProtocolType", "unsignedIntValue"}];
    [(MultiwaySegment *)self->_currentDownlinkSegment setConnectionProtocolType:v5];
    [(MultiwaySegment *)self->_currentUplinkSegment setConnectionProtocolType:v5];
    self->super._connectionProtocolType = v5;
  }

  if ([properties objectForKeyedSubscript:@"MaxMTU"])
  {
    v6 = [objc_msgSend(properties objectForKeyedSubscript:{@"MaxMTU", "unsignedIntValue"}];
    [(MultiwaySegment *)self->_currentDownlinkSegment setMaxMTU:v6];
    [(MultiwaySegment *)self->_currentUplinkSegment setMaxMTU:v6];
    self->super._maxMTU = v6;
  }
}

- (void)processVideoEnabled:(id)enabled withType:(unsigned __int16)type
{
  if (type != 1)
  {
    if (type)
    {
      return;
    }

    [(VCAggregatorMultiway *)self videoEnabled:enabled];
  }

  [(VCAggregatorMultiway *)self remoteVideoEnabled:enabled];
}

- (void)updatePacketHistoryForLinks:(id)links
{
  -[MultiwaySegment setLinksWithMaxPacketHistory:](self->_currentUplinkSegment, "setLinksWithMaxPacketHistory:", [links objectForKeyedSubscript:@"ULPH"]);
  -[MultiwaySegment setPacketHistoryIndex:](self->_currentUplinkSegment, "setPacketHistoryIndex:", [objc_msgSend(links objectForKeyedSubscript:{@"ULPI", "intValue"}]);
  -[MultiwaySegment setLinksWithMaxPacketHistory:](self->_currentDownlinkSegment, "setLinksWithMaxPacketHistory:", [links objectForKeyedSubscript:@"DLPH"]);
  v5 = [objc_msgSend(links objectForKeyedSubscript:{@"DLPI", "intValue"}];
  currentDownlinkSegment = self->_currentDownlinkSegment;

  [(MultiwaySegment *)currentDownlinkSegment setPacketHistoryIndex:v5];
}

- (void)updateThermalDataCollectorsStateWithPayload:(id)payload withTime:(double)time
{
  v49 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  thermalDataCollectors = self->_thermalDataCollectors;
  v7 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v41 + 1) + 8 * i) updateStateWithPayload:payload withTime:time];
      }

      v8 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v8);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  thermalDataCollectors = [self->_currentUplinkSegment thermalDataCollectors];
  v12 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v37 + 1) + 8 * j) updateStateWithPayload:payload withTime:time];
      }

      v13 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v13);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  calls = self->_calls;
  v17 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(calls);
        }

        v21 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v33 + 1) + 8 * k)];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        thermalDataCollectors2 = [v21 thermalDataCollectors];
        v23 = [thermalDataCollectors2 countByEnumeratingWithState:&v29 objects:v45 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v30;
          do
          {
            for (m = 0; m != v24; ++m)
            {
              if (*v30 != v25)
              {
                objc_enumerationMutation(thermalDataCollectors2);
              }

              [*(*(&v29 + 1) + 8 * m) updateStateWithPayload:payload withTime:time];
            }

            v24 = [thermalDataCollectors2 countByEnumeratingWithState:&v29 objects:v45 count:16];
          }

          while (v24);
        }
      }

      v18 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v18);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateThermalDataCollectorsDataWithTime:(double)time
{
  v47 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  thermalDataCollectors = self->_thermalDataCollectors;
  v6 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v39 + 1) + 8 * i) updateDataWithTime:time];
      }

      v7 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  thermalDataCollectors = [self->_currentUplinkSegment thermalDataCollectors];
  v11 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v35 + 1) + 8 * j) updateDataWithTime:time];
      }

      v12 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  calls = self->_calls;
  v16 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(calls);
        }

        v20 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v31 + 1) + 8 * k)];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        thermalDataCollectors2 = [v20 thermalDataCollectors];
        v22 = [thermalDataCollectors2 countByEnumeratingWithState:&v27 objects:v43 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v28;
          do
          {
            for (m = 0; m != v23; ++m)
            {
              if (*v28 != v24)
              {
                objc_enumerationMutation(thermalDataCollectors2);
              }

              [*(*(&v27 + 1) + 8 * m) updateDataWithTime:time];
            }

            v23 = [thermalDataCollectors2 countByEnumeratingWithState:&v27 objects:v43 count:16];
          }

          while (v23);
        }
      }

      v17 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v17);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateSpatialAudioSupport:(id)support
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v5 = __50__VCAggregatorMultiway_updateSpatialAudioSupport___block_invoke;
  v6 = &unk_278BD4E38;
  selfCopy = self;
  v3 = [support objectForKeyedSubscript:@"SpatialAudioSupported"];
  if (v3)
  {
    v5(v4, v3);
  }
}

uint64_t __50__VCAggregatorMultiway_updateSpatialAudioSupport___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!*(v5 + 835))
  {
    *(v5 + 835) = v3;
    v5 = *(a1 + 32);
  }

  result = [*(v5 + 1336) spatialAudioSupported];
  if (!result)
  {
    v7 = *(*(a1 + 32) + 1336);

    return [v7 setSpatialAudioSupported:v4];
  }

  return result;
}

- (void)updateCurrentRemoteSliceStatusWithPayload:(id)payload
{
  if ([payload objectForKeyedSubscript:@"RemoteSliceStatus"])
  {
    if ([payload objectForKeyedSubscript:@"VCSPUUID"])
    {
      v5 = [objc_msgSend(payload objectForKeyedSubscript:{@"RemoteSliceStatus", "unsignedIntValue"}];
      v6 = -[NSMutableDictionary objectForKeyedSubscript:](self->_calls, "objectForKeyedSubscript:", [payload objectForKeyedSubscript:@"VCSPUUID"]);
      if (v6)
      {
        [v6 setCurrentCellularRemoteSliceStatus:v5];
      }

      else if (VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [VCAggregatorMultiway updateCurrentRemoteSliceStatusWithPayload:];
        }
      }

      [(MultiwaySegment *)self->_currentUplinkSegment updateCurrentRemoteSliceStatus:v5];
      [(MultiwaySegment *)self->_currentDownlinkSegment updateCurrentRemoteSliceStatus:v5];
    }

    else
    {
      [VCAggregatorMultiway updateCurrentRemoteSliceStatusWithPayload:];
    }
  }

  else
  {
    [VCAggregatorMultiway updateCurrentRemoteSliceStatusWithPayload:];
  }
}

- (BOOL)checkSliceStatus:(id)status hasValuesOnlyForStatus:(int)forStatus
{
  forStatusCopy = forStatus;
  if ([objc_msgSend(status objectAtIndexedSubscript:{forStatus), "intValue"}])
  {
    if ([status count])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        if (forStatusCopy != v6)
        {
          v7 &= [objc_msgSend(status objectAtIndexedSubscript:{v6), "intValue"}] == 0;
        }

        ++v6;
      }

      while (v6 < [status count]);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    [VCAggregatorMultiway checkSliceStatus:hasValuesOnlyForStatus:];
    v7 = v9;
  }

  return v7 & 1;
}

- (void)processSliceStatusFailedABCSymptom:(id)symptom isRemoteStatus:(BOOL)status
{
  v4 = &OBJC_IVAR___VCAggregatorMultiway__hasReportedSliceStatusFailedSymptom;
  if (status)
  {
    v4 = &OBJC_IVAR___VCAggregatorMultiway__hasReportedSliceStatusFailedRemoteSymptom;
  }

  v5 = *v4;
  if (*(&self->super.super.super.isa + v5) == 1)
  {
    [VCAggregatorMultiway processSliceStatusFailedABCSymptom:isRemoteStatus:];
  }

  else
  {
    statusCopy = status;
    if ([(VCAggregatorMultiway *)self checkSliceStatus:symptom hasValuesOnlyForStatus:3])
    {
      if (statusCopy)
      {
        v8 = 77;
      }

      else
      {
        v8 = 75;
      }

      reportingSymptom([(VCAggregator *)self delegate], v8, 0);
      *(&self->super.super.super.isa + v5) = 1;
    }
  }
}

- (void)processSliceStatusNotReceivedABCSymptom:(id)symptom isRemoteStatus:(BOOL)status
{
  v4 = &OBJC_IVAR___VCAggregatorMultiway__hasReportedSliceStatusNotReceivedSymptom;
  if (status)
  {
    v4 = &OBJC_IVAR___VCAggregatorMultiway__hasReportedSliceStatusNotReceivedRemoteSymptom;
  }

  v5 = *v4;
  if (*(&self->super.super.super.isa + v5) == 1)
  {
    [VCAggregatorMultiway processSliceStatusNotReceivedABCSymptom:isRemoteStatus:];
  }

  else
  {
    statusCopy = status;
    if ([(VCAggregatorMultiway *)self checkSliceStatus:symptom hasValuesOnlyForStatus:0])
    {
      if (statusCopy)
      {
        v8 = 78;
      }

      else
      {
        v8 = 76;
      }

      reportingSymptom([(VCAggregator *)self delegate], v8, 0);
      *(&self->super.super.super.isa + v5) = 1;
    }
  }
}

- (void)updateCurrentSliceStatusWithPayload:(id)payload shouldUpdateOneToOneRemoteStatus:(BOOL)status
{
  statusCopy = status;
  v21 = *MEMORY[0x277D85DE8];
  if ([payload objectForKeyedSubscript:@"sliceStatus"])
  {
    if ([payload objectForKeyedSubscript:@"RemoteSliceStatus"])
    {
      v7 = [objc_msgSend(payload objectForKeyedSubscript:{@"sliceStatus", "unsignedIntValue"}];
      v8 = [objc_msgSend(payload objectForKeyedSubscript:{@"RemoteSliceStatus", "unsignedIntValue"}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      calls = self->_calls;
      v10 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(calls);
            }

            v14 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
            [v14 setCurrentCellularSliceStatus:v7];
            if (statusCopy)
            {
              [v14 setCurrentCellularRemoteSliceStatus:v8];
            }
          }

          v11 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }

      [(MultiwaySegment *)self->_currentUplinkSegment updateCurrentSliceStatus:v7];
      [(MultiwaySegment *)self->_currentDownlinkSegment updateCurrentSliceStatus:v7];
      if (statusCopy)
      {
        [(MultiwaySegment *)self->_currentUplinkSegment updateCurrentRemoteSliceStatus:v8];
        [(MultiwaySegment *)self->_currentDownlinkSegment updateCurrentRemoteSliceStatus:v8];
      }
    }

    else
    {
      [VCAggregatorMultiway updateCurrentSliceStatusWithPayload:shouldUpdateOneToOneRemoteStatus:];
    }
  }

  else
  {
    [VCAggregatorMultiway updateCurrentSliceStatusWithPayload:shouldUpdateOneToOneRemoteStatus:];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentSatelliteNetworkStatusWithPayload:(id)payload
{
  v5 = [payload objectForKeyedSubscript:@"LSAT"];
  v6 = [payload objectForKeyedSubscript:@"RSAT"];
  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
    [(MultiwaySegment *)self->_currentUplinkSegment setCurrentLocalSatelliteStatus:unsignedIntValue];
    [(MultiwaySegment *)self->_currentDownlinkSegment setCurrentLocalSatelliteStatus:unsignedIntValue];
  }

  if (v6)
  {
    unsignedIntValue2 = [v6 unsignedIntValue];
    [(MultiwaySegment *)self->_currentUplinkSegment setCurrentRemoteSatelliteStatus:unsignedIntValue2];
    currentDownlinkSegment = self->_currentDownlinkSegment;

    [(MultiwaySegment *)currentDownlinkSegment setCurrentRemoteSatelliteStatus:unsignedIntValue2];
  }
}

void __62__VCAggregatorMultiway_processEventWithCategory_type_payload___block_invoke(uint64_t a1)
{
  v261 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  [*(a1 + 32) microFromPayload:*(a1 + 40)];
  v5 = v4;
  if (!*(*v2 + 350))
  {
    [*v2 addLocalParticipnt:v4];
  }

  v6 = *(a1 + 48);
  if (v6 <= 0x95)
  {
    if (*(a1 + 48) > 0x51u)
    {
      if (*(a1 + 48) > 0x5Du)
      {
        if (v6 == 94)
        {
          v188 = *(a1 + 50);
          v189 = *(a1 + 32);
          v190 = *(a1 + 40);
          v191 = *MEMORY[0x277D85DE8];

          [v189 updateAlgoMetrics:v188 payload:v190];
        }

        else
        {
          if (v6 != 96)
          {
            goto LABEL_328;
          }

          v45 = *(a1 + 50);
          v46 = *(a1 + 32);
          v47 = *(a1 + 40);
          v48 = *MEMORY[0x277D85DE8];

          [v46 updateLinkProbingStats:v45 payload:v47];
        }
      }

      else if (v6 == 82)
      {
        [*(a1 + 32) updateNoRemoteState:*(a1 + 40) state:*(a1 + 50) == 1];
        v184 = *(a1 + 32);
        v185 = *(a1 + 40);
        v186 = *(a1 + 50) == 1;
        v187 = *MEMORY[0x277D85DE8];

        [v184 updateNoRemoteState_Alternate:v185 state:v186];
      }

      else
      {
        if (v6 != 93 || (*(*v2 + 168) & 1) != 0 || ([objc_msgSend(*v3 objectForKeyedSubscript:{@"WRMAlertedMode", "BOOLValue"}] & 1) != 0)
        {
          goto LABEL_328;
        }

        v29 = *(a1 + 50);
        v30 = *(a1 + 32);
        v31 = *(a1 + 40);
        v32 = *MEMORY[0x277D85DE8];

        [v30 updateWRMMetrics:v29 payload:v31];
      }
    }

    else if (*(a1 + 48) <= 0x1Cu)
    {
      if (v6 == 1)
      {
        [*v2 updateSwitchConfiguration:*v3];
        v199 = *v2;
        [objc_msgSend(*v3 objectForKeyedSubscript:{@"PCHADel", "doubleValue"}];
        [v199 updatePrimaryConnHealthAllowedDelay:?];
        v200 = *v2;
        v201 = *v3;
        v202 = *MEMORY[0x277D85DE8];

        [v200 updateVCRCProfileNumber:v201];
      }

      else
      {
        if (v6 != 6)
        {
          if (v6 == 8 && *(a1 + 50) == 5)
          {
            v33 = *v3;
            if (*v3)
            {
LABEL_114:
              v71 = *v2;
              v72 = [objc_msgSend(v33 objectForKeyedSubscript:{@"VCSPVideoDegraded", "intValue"}] != 0;
              v73 = *v3;
              v74 = *MEMORY[0x277D85DE8];

              [v71 processVideoDegraded:v72 payload:v73];
              return;
            }
          }

          goto LABEL_328;
        }

        [*v2 updateConnectionTelemetry:*v3];
        [*v2 updateBitrateCap_Alternate:*v3];
LABEL_245:
        [*v2 updateCellTech:*v3];
        [*v2 applyKnownMetricsToNewSegment:*(*v2 + 167)];
        v192 = *v2;
        v193 = *(*v2 + 170);
        v194 = *MEMORY[0x277D85DE8];

        [v192 applyKnownMetricsToNewSegment:v193];
      }
    }

    else
    {
      switch(*(a1 + 48))
      {
        case 0x1D:
          v11 = *(a1 + 50);
          if (v11)
          {
            [*v2 updateRoleModeTransport:v11 deviceRole:objc_msgSend(objc_msgSend(*v3 transportType:"objectForKeyedSubscript:" isInitiator:{@"DeviceRole", "intValue"), objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"TransportType", "intValue"), objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"INTTR", "BOOLValue")}];
          }

          if ([*v3 objectForKeyedSubscript:@"INTTR"])
          {
            *(*v2 + 479) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"INTTR", "BOOLValue"}];
          }

          if (![*v3 objectForKeyedSubscript:@"Mode"])
          {
            goto LABEL_328;
          }

          v12 = *v2;
          v13 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"Mode", "unsignedIntValue"}];
          v14 = *MEMORY[0x277D85DE8];

          [v12 updateOperatingMode:v13];
          break;
        case 0x1E:
          if (!*(a1 + 50))
          {
            *(*v2 + 49) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"Width", "intValue"}];
          }

          goto LABEL_328;
        case 0x1F:
          if (*(a1 + 50) != 1)
          {
            goto LABEL_328;
          }

          v155 = *v2;
          v156 = *v3;
          v157 = [*v3 objectForKeyedSubscript:@"VCSPUUID"];
          v158 = *MEMORY[0x277D85DE8];

          [v155 updateVideoQualityWithPayload:v156 participantID:v157];
          break;
        case 0x22:
          if (![*v3 objectForKeyedSubscript:@"VCSPUUID"])
          {
            goto LABEL_328;
          }

          [*v2 processParticipantTimingInfo:*v3];
          v162 = *v2;
          v163 = *v3;
          v164 = *MEMORY[0x277D85DE8];

          [v162 updateTotalConnectionTime:v163];
          break;
        case 0x23:
          [*(a1 + 32) updateAudioTxStatsWithPayload:*(a1 + 40)];
          v140 = *(a1 + 32);
          v141 = *(a1 + 40);
          v142 = *(a1 + 50) == 1;
          v143 = *MEMORY[0x277D85DE8];

          [v140 updateNoRemoteState:v141 state:v142];
          break;
        case 0x26:
          if (*(a1 + 50) != 1)
          {
            goto LABEL_328;
          }

          v152 = *v2;
          v153 = *v3;
          v154 = *MEMORY[0x277D85DE8];

          [v152 updateCurrentRemoteSliceStatusWithPayload:v153];
          break;
        case 0x27:
          [*v2 updateErrorCode:*v3 withType:1];
          v168 = *v2;
          v169 = *v3;
          v170 = *MEMORY[0x277D85DE8];

          [v168 updateBitrateCap:v169];
          break;
        case 0x2A:
          v159 = *v2;
          v160 = *v3;
          v161 = *MEMORY[0x277D85DE8];

          [v159 processNetworkQualityUpdated:v160];
          break;
        case 0x2D:
          v175 = *v2;
          v176 = *v3;
          v177 = *MEMORY[0x277D85DE8];

          [v175 updateCoreMotionActivityWithPayload:v176];
          break;
        case 0x2E:
          v134 = *(a1 + 32);
          v135 = *(a1 + 50);
          v136 = *MEMORY[0x277D85DE8];

          [v134 updateCenterStageEnabled:v135];
          break;
        case 0x2F:
          v149 = *(a1 + 32);
          v150 = *(a1 + 50);
          v151 = *MEMORY[0x277D85DE8];

          [v149 updatePortraitBlurEnabled:v150];
          break;
        case 0x30:
          v127 = *v2;
          v128 = *v3;
          v129 = *MEMORY[0x277D85DE8];

          [v127 updateVideoFeatureStatus:v128];
          break;
        case 0x33:
          if (!*(a1 + 50))
          {
            [*v2 updateCellTech:*v3];
            if ([*v2 shouldConnectionEstablishmentStartNewSegment:*v3])
            {
              [*v2 updatePacketHistoryForLinks:*v3];
              [*v2 updateCellTech:*v3];
              if (VRTraceGetErrorLogLevelForModule("") >= 8)
              {
                v178 = VRTraceErrorLogLevelToCSTR(8u);
                v179 = gVRTraceOSLog;
                if (gVRTraceLogDebugAsInfo == 1)
                {
                  if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
                  {
                    *v254 = 136315650;
                    *&v254[4] = v178;
                    v255 = 2080;
                    v256 = "[VCAggregatorMultiway processEventWithCategory:type:payload:]_block_invoke";
                    v257 = 1024;
                    v258 = 11604;
                    _os_log_impl(&dword_23D4DF000, v179, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: New segments started", v254, 0x1Cu);
                  }
                }

                else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
                {
                  __62__VCAggregatorMultiway_processEventWithCategory_type_payload___block_invoke_cold_3();
                }
              }

              v250 = [*(*v2 + 168) copy];
              [*v2 startUplinkSegmentWithStreamGroups:*(*v2 + 330) withPayload:*v3];
              [*v2 startDownlinkSegmentWithStreamGroups:*(*v2 + 338) withPayload:*v3];
              [*v2 updateHandoverCount:*(*v2 + 168) withPreviousSegmentKey:v250];
              [*v2 updateVPCStatus:*v3];
              [*v2 updateIDSConfiguration:*v3];
              [*v2 updateQRExperiments:*v3];
              [*v2 updateProtocolStackDescription:*v3];
              [*v2 updateConnectionProperties:*v3];
            }

            [*v2 updateCurrentSliceStatusWithPayload:*v3 shouldUpdateOneToOneRemoteStatus:*(*v2 + 532)];
            [*v2 updateCurrentSatelliteNetworkStatusWithPayload:*v3];
          }

          goto LABEL_328;
        case 0x35:
          v165 = *v2;
          v166 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"DuplicationMultiLinkAvailable", "BOOLValue"}];
          v167 = *MEMORY[0x277D85DE8];

          [v165 updateDuplicationPossibility:v166];
          break;
        case 0x36:
          [*v2 updateBitrateCap:*v3];
          [*v2 updateCurrentSatelliteNetworkStatusWithPayload:*v3];
          if (!*v3 || ![*v3 objectForKeyedSubscript:@"connectionDataMode"])
          {
            goto LABEL_328;
          }

          [*v2 microFromPayload:*v3];
          v145 = v144;
          [*(*v2 + 167) processDataMode:*v3 withTime:?];
          v146 = *(*v2 + 170);
          v147 = *v3;
          v148 = *MEMORY[0x277D85DE8];

          [v146 processDataMode:v147 withTime:v145];
          break;
        case 0x37:
          if ([*(a1 + 32) isDuplicationChangedWithType:*(a1 + 50)])
          {
            [*v2 updateCellTech:*v3];
            if (VRTraceGetErrorLogLevelForModule("") > 7)
            {
              v130 = VRTraceErrorLogLevelToCSTR(8u);
              v131 = gVRTraceOSLog;
              if (gVRTraceLogDebugAsInfo == 1)
              {
                if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
                {
                  v132 = *(*v2 + 168);
                  *v254 = 136315906;
                  if (v132)
                  {
                    v133 = "started";
                  }

                  else
                  {
                    v133 = "stopped";
                  }

                  *&v254[4] = v130;
                  v255 = 2080;
                  v256 = "[VCAggregatorMultiway processEventWithCategory:type:payload:]_block_invoke";
                  v257 = 1024;
                  v258 = 11622;
                  v259 = 2080;
                  v260 = v133;
                  _os_log_impl(&dword_23D4DF000, v131, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: Duplication changed to=%s", v254, 0x26u);
                }
              }

              else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
              {
                v252 = *(*v2 + 168);
                *v254 = 136315906;
                if (v252)
                {
                  v253 = "started";
                }

                else
                {
                  v253 = "stopped";
                }

                *&v254[4] = v130;
                v255 = 2080;
                v256 = "[VCAggregatorMultiway processEventWithCategory:type:payload:]_block_invoke";
                v257 = 1024;
                v258 = 11622;
                v259 = 2080;
                v260 = v253;
                _os_log_debug_impl(&dword_23D4DF000, v131, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregatorMultiway: Duplication changed to=%s", v254, 0x26u);
              }
            }

            v245 = *v2;
            if (*(*v2 + 168) == 1)
            {
              v246 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"DuplicationType", "intValue"}];
              v247 = *(*v2 + 299);
              if (v246 == 3)
              {
                ++v247;
              }

              *(*v2 + 299) = v247;
              v248 = *(*v2 + 300);
              if (v246 == 4)
              {
                ++v248;
              }

              *(*v2 + 300) = v248;
              v245 = *v2;
            }

            [v245 updatePacketHistoryForLinks:{*v3, *v254}];
            v249 = [*(*v2 + 168) copy];
            [*v2 startUplinkSegmentWithStreamGroups:*(*v2 + 330) withPayload:*v3];
            [*v2 startDownlinkSegmentWithStreamGroups:*(*v2 + 338) withPayload:*v3];
            [*v2 updateHandoverCount:*(*v2 + 168) withPreviousSegmentKey:v249];
            [*v2 updateQRExperiments:*v3];
            [*v2 updateCurrentSliceStatusWithPayload:*v3 shouldUpdateOneToOneRemoteStatus:*(*v2 + 532)];
          }

          [*(*(a1 + 32) + 1360) processDuplicationConnectionTelemetry:*(a1 + 40) type:*(a1 + 50)];
          [*(*(a1 + 32) + 1336) processDuplicationConnectionTelemetry:*(a1 + 40) type:*(a1 + 50)];
          [*(a1 + 32) applyKnownWRMMetricsToNewUplinkSegment:*(*(a1 + 32) + 1336)];
          goto LABEL_328;
        case 0x38:
          goto LABEL_245;
        case 0x39:
          v137 = *v2;
          v138 = *v3;
          v139 = *MEMORY[0x277D85DE8];

          [v137 updateLinkSuggestionTelemetry:v138];
          break;
        case 0x3A:
          [*(a1 + 32) updateRateControlExperiment:*(a1 + 40) type:*(a1 + 50)];
          [*(a1 + 32) updateRateControlSmartBrakeTrialVersion:*(a1 + 40) type:*(a1 + 50)];
          v171 = *(a1 + 32);
          v172 = *(a1 + 40);
          v173 = *(a1 + 50);
          v174 = *MEMORY[0x277D85DE8];

          [v171 updateNetworkCapabilities:v172 type:v173];
          break;
        case 0x3E:
          v180 = *(a1 + 50);
          v181 = *(a1 + 32);
          v182 = *(a1 + 40);
          v183 = *MEMORY[0x277D85DE8];

          [v181 processControlChannelEventType:v180 payload:v182];
          break;
        default:
          goto LABEL_328;
      }
    }
  }

  else
  {
    if (*(a1 + 48) <= 0xE4u)
    {
      switch(*(a1 + 48))
      {
        case 0x96:
          v83 = *v2;
          v84 = *v3;
          v85 = *MEMORY[0x277D85DE8];

          [v83 processRTXConfigData:v84];
          return;
        case 0x9B:
          v100 = *v2;
          v101 = *v3;
          v102 = *MEMORY[0x277D85DE8];

          [v100 processRtcpPSFBForResiliencyConfigData:v101];
          return;
        case 0x9D:
          v80 = *v2;
          v81 = *v3;
          v82 = *MEMORY[0x277D85DE8];

          [v80 processFecConfigData:v81];
          return;
        case 0x9E:
          v33 = *v3;
          goto LABEL_114;
        case 0xA0:
          ++*(*v2 + 522);
          goto LABEL_328;
        case 0xA1:
          v109 = [*v3 objectForKeyedSubscript:@"VCSPUUID"];
          v110 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSPIsWebUser", "BOOLValue"}];
          if ([*v2 isParticipantLive:v109])
          {
            if (VRTraceGetErrorLogLevelForModule("") >= 3)
            {
              VRTraceErrorLogLevelToCSTR(3u);
              if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
              {
                __62__VCAggregatorMultiway_processEventWithCategory_type_payload___block_invoke_cold_2();
              }
            }

            goto LABEL_328;
          }

          v237 = *v2;
          v237[350] = *(*v2 + 350) + 1;
          v238 = *(*v2 + 436);
          v239 = *v3;
          [v237 processStatsForNumberOfParticipants:? webParticipants:? withPayload:?];
          v240 = *v2;
          if (*(*v2 + 350) >= 0x28u)
          {
            v240[350] = 39;
            v240 = *v2;
          }

          if (v110)
          {
            ++v240[436];
            v240 = *v2;
            if (*(*v2 + 436) >= 0x28u)
            {
              v240[436] = 39;
              v240 = *v2;
            }
          }

          [v240 startDownlinkSegmentWithStreamGroups:v240[338] withPayload:*v3];
          [*v2 addNewCall:*v3 isWebUser:v110];
          if (![*(*v2 + 35) algosScorerWithParticipantID:v109])
          {
            [*(*v2 + 35) addParticipantWithTime:v109 participantID:v5];
          }

          if (![*(*v2 + 36) algosScorerWithParticipantID:v109])
          {
            [*(*v2 + 36) addParticipantWithTime:v109 participantID:v5];
          }

          if (![*(*v2 + 37) algosScorerWithParticipantID:v109])
          {
            [*(*v2 + 37) addParticipantWithTime:v109 participantID:v5];
          }

          *(*v2 + 668) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSECNLinkType", "intValue"}];
          v241 = *(*v2 + 668);
          v242 = *(*v2 + 167);
          v243 = *MEMORY[0x277D85DE8];

          [v242 setEcnLinkType:v241];
          return;
        case 0xA2:
          v90 = [*v3 objectForKeyedSubscript:@"VCSPUUID"];
          v91 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSPIsWebUser", "BOOLValue"}];
          if ([*v2 isParticipantLive:v90])
          {
            v92 = *v2;
            v92[350] = *(*v2 + 350) - 1;
            v93 = *(*v2 + 436);
            v94 = *v3;
            [v92 processStatsForNumberOfParticipants:? webParticipants:? withPayload:?];
            v95 = *v2;
            if (!*(*v2 + 350))
            {
              v95[350] = 1;
              v95 = *v2;
            }

            if (v91)
            {
              --v95[436];
              v95 = *v2;
            }

            [v95 finalizeCall:*v3];
            [objc_msgSend(objc_msgSend(*(*v2 + 379) objectForKeyedSubscript:{v90), "mlEnhance"), "finalize:", v5}];
            v96 = *v2;
            v97 = *(*v2 + 338);
            v98 = *v3;
            v99 = *MEMORY[0x277D85DE8];

            [v96 startDownlinkSegmentWithStreamGroups:v97 withPayload:v98];
            return;
          }

          if (VRTraceGetErrorLogLevelForModule("") >= 3)
          {
            VRTraceErrorLogLevelToCSTR(3u);
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
            {
              __62__VCAggregatorMultiway_processEventWithCategory_type_payload___block_invoke_cold_1();
            }
          }

          goto LABEL_328;
        case 0xA3:
          [*v2 processSessionInitWithPayload:*v3 timestamp:v5];
          [*v2 updateThermalDataCollectorsStateWithPayload:*v3 withTime:v5];
          goto LABEL_121;
        case 0xA4:
          [*v2 processSessionStart:v5];
          v106 = *v2;
          v107 = *v3;
          v108 = *MEMORY[0x277D85DE8];

          [v106 updateBootstrapIndex:v107];
          return;
        case 0xA5:
          *(*v2 + 562) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSCallEndReason", "intValue"}];
          *(*v2 + 563) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSCallEndDetailedReason", "intValue"}];
          [*(*v2 + 38) addCallFailureWithTime:*(*v2 + 563) detailedErrorCode:v5];
          *(*v2 + 564) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSErrorDomain", "intValue"}];
          [*(*v2 + 39) addCallFailureWithTime:*(*v2 + 563) detailedErrorCode:v5];
          [*(*v2 + 40) addCallFailureWithTime:*(*v2 + 563) detailedErrorCode:v5];
          [*v2 updateThermalDataCollectorsDataWithTime:v5];
          [*(*v2 + 167) finalizePathMTUForTime:v5];
          v75 = *(*v2 + 170);
          v76 = *MEMORY[0x277D85DE8];

          [v75 finalizePathMTUForTime:v5];
          return;
        case 0xA6:
          v103 = *v2;
          v104 = *v3;
          v105 = *MEMORY[0x277D85DE8];

          [v103 processDownlinkOptedInRateChange:v104];
          return;
        case 0xA9:
          v117 = *v2;
          v118 = *v3;
          v119 = *MEMORY[0x277D85DE8];

          [v117 processSessionConfigUpdatedWithPayload:v118];
          return;
        case 0xAB:
        case 0xAF:
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v9 = *(a1 + 50);
          v10 = *MEMORY[0x277D85DE8];

          [v7 processVideoEnabled:v8 withType:v9];
          return;
        case 0xAE:
          v111 = *v2;
          v112 = *v3;
          v113 = *MEMORY[0x277D85DE8];

          [v111 audioEnabled:v112];
          return;
        case 0xB4:
          v62 = *v2;
          v63 = *v3;
          v64 = *MEMORY[0x277D85DE8];

          [v62 processRTEvent:v63];
          return;
        case 0xBA:
          v120 = *v2;
          v121 = *v3;
          v122 = *MEMORY[0x277D85DE8];

          [v120 processAudioStreamSwitch:v121];
          return;
        case 0xBC:
        case 0xBD:
          v52 = *v2;
          v53 = *v3;
          v54 = *MEMORY[0x277D85DE8];

          [v52 screenEnabled:v53 timestamp:v5];
          return;
        case 0xC3:
          v123 = *(a1 + 50);
          v124 = *(a1 + 32);
          v125 = *(a1 + 40);
          v126 = *MEMORY[0x277D85DE8];

          [v124 processInternalErrorDetected:v123 payload:v125];
          return;
        case 0xC4:
          v86 = *(a1 + 32);
          v87 = [*(a1 + 40) objectForKeyedSubscript:@"VCSPUUID"];
          v88 = *(a1 + 50) != 0;
          v89 = *MEMORY[0x277D85DE8];

          [v86 processUISizeEventForParticipant:v87 isFullSize:v88];
          return;
        case 0xC5:
          v68 = *v2;
          v69 = *v3;
          v70 = *MEMORY[0x277D85DE8];

          [v68 processDecryptionTimeoutEvent:v69];
          return;
        case 0xC6:
          v65 = *v2;
          v66 = [*v3 objectForKeyedSubscript:@"VCSPUUID"];
          v67 = *MEMORY[0x277D85DE8];

          [v65 processMKMRecoveryRequestEventForParticipant:v66];
          return;
        case 0xC7:
          if (*(a1 + 50) == 1)
          {
            *(*v2 + 2430) = 1;
            if (*v3 && [*v3 objectForKeyedSubscript:@"VCGFTSWTT"])
            {
              [objc_msgSend(*v3 objectForKeyedSubscript:{@"VCGFTSWTT", "doubleValue"}];
              v115 = *v2;
              v116 = 2432;
              goto LABEL_313;
            }
          }

          else if (!*(a1 + 50))
          {
            *(*v2 + 2429) = 1;
            if (*v3)
            {
              if ([*v3 objectForKeyedSubscript:@"VCSOTOST"])
              {
                [objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSOTOST", "doubleValue"}];
                v115 = *v2;
                v116 = 2440;
LABEL_313:
                *&v115[v116] = v114;
                goto LABEL_328;
              }
            }
          }

          break;
        case 0xC8:
          v58 = *(a1 + 32);
          v59 = *(a1 + 40);
          v60 = *(a1 + 50);
          v61 = *MEMORY[0x277D85DE8];

          [v58 expanseEnabled:v59 withType:v60];
          return;
        default:
          goto LABEL_328;
      }

      goto LABEL_328;
    }

    if (*(a1 + 48) <= 0x142u)
    {
      if (*(a1 + 48) > 0xFAu)
      {
        if (*(a1 + 48) > 0x13Fu)
        {
          if (v6 == 320)
          {
            v234 = *(*v2 + 167);
            v235 = *v3;
            v236 = *MEMORY[0x277D85DE8];

            [v234 processSmartBrakeEvent:v235];
          }

          else if (v6 == 321)
          {
            v222 = *v2;
            v223 = *v3;
            v224 = *MEMORY[0x277D85DE8];

            [v222 updateMediaQueueInfoWithPayload:v223];
          }

          else
          {
            v42 = *v2;
            v43 = *v3;
            v44 = *MEMORY[0x277D85DE8];

            [v42 updateRateControlMachineLearningEnrollment:v43];
          }
        }

        else
        {
          switch(v6)
          {
            case 0xFBu:
              v228 = *v2;
              v229 = *v3;
              v230 = *MEMORY[0x277D85DE8];

              [v228 updateDeviceOutputLatency:v229];
              break;
            case 0x136u:
              v215 = *(a1 + 32);
              v216 = *(a1 + 40);
              v217 = *(a1 + 50);
              v218 = *MEMORY[0x277D85DE8];

              [v215 processScreenControlEnabled:v216 withType:v217 withTimestamp:v5];
              break;
            case 0x137u:
              v25 = *(a1 + 32);
              v26 = *(a1 + 40);
              v27 = *(a1 + 50);
              v28 = *MEMORY[0x277D85DE8];

              [v25 processCameraCompositionEnabled:v26 withType:v27 withTimestamp:v5];
              break;
            default:
              goto LABEL_328;
          }
        }
      }

      else if (*(a1 + 48) > 0xE8u)
      {
        switch(v6)
        {
          case 0xE9u:
            v231 = *v2;
            v232 = *v3;
            v233 = *MEMORY[0x277D85DE8];

            [v231 updateFIRReceivedCount:v232];
            break;
          case 0xEAu:
            v219 = *v2;
            v220 = *v3;
            v221 = *MEMORY[0x277D85DE8];

            [v219 processActiveTemporalTiers:v220];
            break;
          case 0xF1u:
            v39 = *v2;
            v40 = *v3;
            v41 = *MEMORY[0x277D85DE8];

            [v39 processIDSReportingBlob:v40];
            break;
          default:
            goto LABEL_328;
        }
      }

      else
      {
        switch(v6)
        {
          case 0xE5u:
            v225 = *v2;
            v226 = *v3;
            v227 = *MEMORY[0x277D85DE8];

            [v225 processKeyFrameReceived:v226];
            break;
          case 0xE6u:
            v212 = *v2;
            v213 = *v3;
            v214 = *MEMORY[0x277D85DE8];

            [v212 processVideoStreamSwitch:v213];
            break;
          case 0xE8u:
            v18 = *v2;
            v19 = *v3;
            v20 = *MEMORY[0x277D85DE8];

            [v18 processKeyFrameRequestSent:v19];
            break;
          default:
            goto LABEL_328;
        }
      }
    }

    else
    {
      if (*(a1 + 48) <= 0x16Eu)
      {
        if (*(a1 + 48) > 0x169u)
        {
          if (v6 == 362)
          {
            v209 = *(a1 + 32);
            v210 = *(a1 + 40);
            if (*(a1 + 50) == 1)
            {
              v211 = *MEMORY[0x277D85DE8];

              [v209 processRemoteThermalLevelChange:v210];
            }

            else
            {
              v244 = *MEMORY[0x277D85DE8];

              [v209 processThermalLevelChange:v210];
            }

            return;
          }

          if (v6 != 363)
          {
            if (v6 != 364)
            {
              goto LABEL_328;
            }

            v34 = *v2;
            v35 = *v3;
            v36 = *MEMORY[0x277D85DE8];

            [v34 updatePacketHistoryForLinks:v35];
            return;
          }
        }

        else
        {
          if (v6 == 323)
          {
            v206 = *v2;
            v207 = *v3;
            v208 = *MEMORY[0x277D85DE8];

            [v206 updateRateControlMachineLearningRateControllerStats:v207];
            return;
          }

          if (v6 != 360)
          {
            if (v6 != 361)
            {
              goto LABEL_328;
            }

            v21 = *(a1 + 32);
            v22 = *(a1 + 40);
            v23 = *(a1 + 50);
            v24 = *MEMORY[0x277D85DE8];

            [v21 updateReconnectStats:v22 withType:v23];
            return;
          }
        }

        v55 = *v2;
        v56 = *v3;
        v57 = *MEMORY[0x277D85DE8];

        [v55 updateThermalDataCollectorsStateWithPayload:v56 withTime:v5];
        return;
      }

      if (*(a1 + 48) <= 0x171u)
      {
        if (v6 == 367)
        {
LABEL_121:
          v77 = *v2;
          v78 = *v3;
          v79 = *MEMORY[0x277D85DE8];

          [v77 updateSpatialAudioSupport:v78];
          return;
        }

        if (v6 != 368)
        {
          v37 = *v2;
          v38 = 3080;
          goto LABEL_249;
        }

        v203 = *v2;
        v204 = *v3;
        v205 = *MEMORY[0x277D85DE8];

        [v203 updateClientExperiments:v204];
      }

      else
      {
        if (*(a1 + 48) <= 0x176u)
        {
          if (v6 != 370)
          {
            if (v6 == 373)
            {
              v15 = *v2;
              v16 = *v3;
              v17 = *MEMORY[0x277D85DE8];

              [v15 processNearbyStopWithPayload:v16];
              return;
            }

LABEL_328:
            v251 = *MEMORY[0x277D85DE8];
            return;
          }

          v37 = *v2;
          v38 = 3081;
LABEL_249:
          v37[v38] = 1;
          goto LABEL_328;
        }

        if (v6 == 375)
        {
          v195 = *(a1 + 32);
          v196 = *(a1 + 40);
          v197 = *(a1 + 50);
          v198 = *MEMORY[0x277D85DE8];

          [v195 processHDCaptureEnabledWithPayload:v196 withType:v197 withTimestamp:v5];
        }

        else
        {
          if (v6 != 376)
          {
            goto LABEL_328;
          }

          v49 = *v2;
          v50 = *v3;
          v51 = *MEMORY[0x277D85DE8];

          [v49 processDeviceOrientation:v50];
        }
      }
    }
  }
}

- (void)processRemoteThermalLevelChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  if ([change objectForKeyedSubscript:@"VCSPUUID"])
  {
    v10 = __56__VCAggregatorMultiway_processRemoteThermalLevelChange___block_invoke;
    v11 = &unk_278BD4F50;
    selfCopy = self;
    changeCopy = change;
    v5 = [change objectForKeyedSubscript:{@"Thermal", MEMORY[0x277D85DD0], 3221225472}];
    if (v5)
    {
      v10(&v9, v5);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR(7u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = v6;
      v16 = 2080;
      v17 = "[VCAggregatorMultiway processRemoteThermalLevelChange:]";
      v18 = 1024;
      v19 = 11999;
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Participant is missing", buf, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __56__VCAggregatorMultiway_processRemoteThermalLevelChange___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) microFromPayload:*(a1 + 40)];
  v5 = v4;
  v6 = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCAggregator, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  v7 = [objc_msgSend(*(*(a1 + 32) + 1368) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"VCSPUUID", "remoteThermalDurations"}];

  return [v7 switchBucket:v6 currentTime:v5];
}

- (void)processThermalLevelChange:(id)change
{
  v5 = __50__VCAggregatorMultiway_processThermalLevelChange___block_invoke;
  v6 = &unk_278BD4F50;
  selfCopy = self;
  changeCopy = change;
  v3 = [change objectForKeyedSubscript:{@"Thermal", MEMORY[0x277D85DD0], 3221225472}];
  if (v3)
  {
    v5(&v4, v3);
  }
}

uint64_t __50__VCAggregatorMultiway_processThermalLevelChange___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) microFromPayload:*(a1 + 40)];
  v5 = v4;
  v6 = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCReportingCommon, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  [*(a1 + 32) updateThermalDataCollectorsThermalLevel:v6 withTime:v5];
  *(*(a1 + 32) + 104) = v6;
  [*(*(a1 + 32) + 1360) setCurrentThermalLevel:v6 withTime:v5];
  [*(*(a1 + 32) + 1336) setCurrentThermalLevel:v6];
  [objc_msgSend(*(*(a1 + 32) + 1360) "thermalDurations")];
  [objc_msgSend(*(*(a1 + 32) + 1336) "thermalDurations")];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 updateVideoFeatureStatus:v8];
}

- (void)processKeyFrameRequestSent:(id)sent
{
  v5 = [sent objectForKeyedSubscript:@"VCSPUUID"];
  v6 = reportingStreamGroupFromStreamGroupID([objc_msgSend(sent objectForKeyedSubscript:{@"VCMSStreamGroup", "intValue"}]);
  [(VCAggregator *)self microFromPayload:sent];
  v8 = v7;
  [self->_currentUplinkSegment processKeyFrameRequestSent:v6 withTime:?];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{v5), "processKeyFrameRequestSent:withTime:", v6, v8}];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v6]);

  [v9 processKeyFrameRequestSent:v8];
}

- (void)processKeyFrameReceived:(id)received
{
  v5 = [received objectForKeyedSubscript:@"VCSPUUID"];
  v6 = [objc_msgSend(received objectForKeyedSubscript:{@"VCMSStreamGroup", "unsignedIntValue"}];
  [(VCAggregator *)self microFromPayload:received];
  v8 = v7;
  [self->_currentUplinkSegment processKeyFrameReceived:v6 withTime:?];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{v5), "processKeyFrameReceived:withTime:", v6, v8}];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v6]);

  [v9 processKeyFrameReceived:v8];
}

- (void)updateFIRReceivedCount:(id)count
{
  v5 = [count objectForKeyedSubscript:@"VCSPUUID"];
  v6 = [objc_msgSend(count objectForKeyedSubscript:{@"VCASStreamIDs", "intValue"}];
  v7 = [count objectForKeyedSubscript:@"VCMSStreamGroup"];
  if (v5)
  {
    if (v7)
    {
      v8 = reportingStreamGroupFromStreamGroupID([v7 intValue]);
    }

    else
    {
      v8 = [(VCAggregatorMultiway *)self streamGroupIDForParticipant:v5 withStreamID:v6];
    }

    v9 = v8;
    currentDownlinkSegment = self->_currentDownlinkSegment;
    [(VCAggregator *)self microFromPayload:count];
    v11 = [currentDownlinkSegment callStatsForParticipant:v5 andTime:?];
    if (v11)
    {
      v12 = [v11 statsForStreamGroup:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v9)}];
      [v12 setFirReceivedCount:{objc_msgSend(v12, "firReceivedCount") + 1}];
    }

    v13 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_calls objectForKeyedSubscript:{v5), "streamGroupStats"}];
    v14 = [v13 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v9)}];
    [v14 setFirReceivedCount:{objc_msgSend(v14, "firReceivedCount") + 1}];
    v15 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v9]);
    v16 = [v15 firReceivedCount] + 1;

    [v15 setFirReceivedCount:v16];
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAggregatorMultiway updateFIRReceivedCount:];
    }
  }
}

- (void)applyKnownThermalMetricsToNewSegment:(id)segment
{
  v28 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    thermalDataCollectors = self->_thermalDataCollectors;
    v6 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    thermalDataCollectors = [segment thermalDataCollectors];
    v12 = [thermalDataCollectors countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(thermalDataCollectors);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v10 && v16)
            {
              [v16 setCurrentMicMode:{objc_msgSend(v10, "currentMicMode")}];
            }

            goto LABEL_23;
          }
        }

        v13 = [thermalDataCollectors countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)applyKnownMetricsToNewSegment:(id)segment
{
  [segment setIsOneToOneMode:self->super._isOneToOneMode];
  if (self->_IPVersion)
  {
    [segment setIPVersion:?];
  }

  if (self->_localCelltech)
  {
    [segment setLocalCelltech:?];
  }

  if (self->_remoteCelltech)
  {
    [segment setRemoteCelltech:?];
  }

  if (self->_isLocalExpensive)
  {
    [segment setIsLocalExpensive:?];
  }

  if (self->_isRemoteExpensive)
  {
    [segment setIsRemoteExpensive:?];
  }

  if (self->_maxNegotiatedUplinkBitrate)
  {
    [segment setMaxNegotiatedUplinkBitrate:?];
  }

  if (self->_maxNegotiatedDownlinkBitrate)
  {
    [segment setMaxNegotiatedDownlinkBitrate:?];
  }

  if (self->_maxNegotiatedUplinkBitrate_Alternate)
  {
    [segment setMaxNegotiatedUplinkBitrate_Alternate:?];
  }

  if (self->_maxNegotiatedDownlinkBitrate_Alternate)
  {
    [segment setMaxNegotiatedDownlinkBitrate_Alternate:?];
  }

  [segment setNegotiatedSwitches:self->super._negotiatedSwitches];
  if (self->super._remoteFaceTimeSwitchesAvailable)
  {
    [segment setRemoteSwitches:self->super._remoteSwitches];
  }

  if (self->super._linkPreferSuggestion != 255)
  {
    [segment setLinkPreferSuggestion:?];
    [segment setLinkConfidenceScore:self->super._linkConfidenceScore];
    [segment setLinkPreferDecision:self->super._linkPreferDecision];
  }

  if (self->_linkIPPreference != 255)
  {
    [segment setLinkIPPreference:?];
  }

  if (self->super._qrExperiments)
  {
    [segment setQrExperiments:?];
  }

  if (self->super.super._clientExperiments)
  {
    [segment setClientExperiments:?];
  }

  if (self->_relayProtocolStack)
  {
    [segment setRelayProtocolStack:?];
  }

  if (self->_channelProtocolStack)
  {
    [segment setChannelProtocolStack:?];
  }

  [segment setRemoteOSBuild:self->super._remoteOSBuild];
  [segment setPrimaryConnHealthAllowedDelay:self->_primaryConnHealthAllowedDelay];
  [segment setSuggestedLinkTypeCombo:self->_suggestedLinkTypeCombo];
  [segment setIsInitiator:self->super._isInitiator];
  [segment setIsQUICPod:self->super._isQUICPod];
  [segment setIsTLEABTestEnabled:self->super._isTLEABTestEnabled];
  [segment setIsP2PTLEABTestEnabled:self->super._isP2PTLEABTestEnabled];
  [segment setIsRemoteQUICPod:self->super._isRemoteQUICPod];
  [segment setConnectionProtocolType:self->super._connectionProtocolType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [segment setReportNetworkCapabilities:self->_reportNetworkCapabilities];
    [segment setIsUplinkRetransmissionEnabled:self->_isUplinkRetransmissionEnabled];
  }

  [segment setDataPath:self->super._dataPath];
  [segment setIsDuplicationPossible:self->_isDuplicationPossible];
  [segment setGecoVersion:self->super._gecoVersion];
  [segment setMaxMTU:self->super._maxMTU];
  if (self->super._isOneToOneMode)
  {
    [segment setRemoteDeviceType:self->_remoteDeviceType];
  }

  [(VCAggregatorMultiway *)self applyKnownThermalMetricsToNewSegment:segment];
}

- (void)applyKnownWRMMetricsToNewUplinkSegment:(id)segment
{
  if (self->super._isDuplicationEnabled && ([segment duplicationType] == 3 || objc_msgSend(segment, "duplicationType") == 8))
  {
    [segment setWrmLinkTypeSuggestion:self->_wrmLinkTypeSuggestion];
    [segment setWrmLinkTypeChangeReasonCode:self->_wrmLinkTypeChangeReasonCode];
    [segment setWrmLinkTypeWifiRSSI:self->_wrmLinkTypeWifiRSSI];
    [segment setWrmLinkTypeWifiSNR:self->_wrmLinkTypeWifiSNR];
    [segment setWrmLinkTypeWifiCCA:self->_wrmLinkTypeWifiCCA];
    [segment setWrmLinkTypeWifiPacketLoss:self->_wrmLinkTypeWifiPacketLoss];
    [segment setWrmLinkTypeCellSignalStrength:self->_wrmLinkTypeCellSignalStrength];
    [segment setWrmLinkTypeCellSignalBar:self->_wrmLinkTypeCellSignalBar];
    wrmLinkTypeCellServingCellType = self->_wrmLinkTypeCellServingCellType;

    [segment setWrmLinkTypeCellServingCellType:wrmLinkTypeCellServingCellType];
  }
}

- (void)updateBitrateCap:(id)cap
{
  if ([cap objectForKeyedSubscript:@"localBitrateCap"] && objc_msgSend(cap, "objectForKeyedSubscript:", @"remoteBitrateCap"))
  {
    v5 = [objc_msgSend(cap objectForKeyedSubscript:{@"localBitrateCap", "intValue"}];
    v6 = [objc_msgSend(cap objectForKeyedSubscript:{@"remoteBitrateCap", "intValue"}];
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v7];
    [(VCAggregatorMultiway *)self setMaxNegotiatedDownlinkBitrate:v8];
    [(VCAggregatorMultiway *)self setMaxNegotiatedUplinkBitrate:v8];
    [(MultiwaySegment *)self->_currentUplinkSegment setMaxNegotiatedUplinkBitrate:self->_maxNegotiatedUplinkBitrate];
    [(MultiwaySegment *)self->_currentDownlinkSegment setMaxNegotiatedDownlinkBitrate:self->_maxNegotiatedDownlinkBitrate];
  }

  if ([cap objectForKeyedSubscript:@"maxTargetBitrate"] && self->super._algosScorerAlternate)
  {
    -[VCAlgosStreamingScorer setMaxTargetBitrate:](self->super._algosScorerAlternate, "setMaxTargetBitrate:", [objc_msgSend(cap objectForKeyedSubscript:{@"maxTargetBitrate", "intValue"}]);
    -[VCAlgosStreamingScorer setMaxTargetBitrate:](self->super._algosScorerBounded, "setMaxTargetBitrate:", [objc_msgSend(cap objectForKeyedSubscript:{@"maxTargetBitrate", "intValue"}]);
  }

  [(VCAggregatorMultiway *)self updateBitrateCap_Alternate:cap];
}

- (void)updateBitrateCap_Alternate:(id)alternate
{
  if ([alternate objectForKeyedSubscript:@"localBitrateCap"] && objc_msgSend(alternate, "objectForKeyedSubscript:", @"remoteBitrateCap"))
  {
    v5 = [objc_msgSend(alternate objectForKeyedSubscript:{@"localBitrateCap", "intValue"}];
    v6 = [objc_msgSend(alternate objectForKeyedSubscript:{@"remoteBitrateCap", "intValue"}];
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v7];
    [(VCAggregatorMultiway *)self setMaxNegotiatedDownlinkBitrate_Alternate:v8];
    [(VCAggregatorMultiway *)self setMaxNegotiatedUplinkBitrate_Alternate:v8];
    [(MultiwaySegment *)self->_currentUplinkSegment setMaxNegotiatedUplinkBitrate_Alternate:self->_maxNegotiatedUplinkBitrate_Alternate];
    maxNegotiatedDownlinkBitrate_Alternate = self->_maxNegotiatedDownlinkBitrate_Alternate;
    currentDownlinkSegment = self->_currentDownlinkSegment;

    [(MultiwaySegment *)currentDownlinkSegment setMaxNegotiatedDownlinkBitrate_Alternate:maxNegotiatedDownlinkBitrate_Alternate];
  }
}

- (void)updateCellTech:(id)tech
{
  if ([tech objectForKeyedSubscript:@"IPVER"])
  {
    -[VCAggregatorMultiway setIPVersion:](self, "setIPVersion:", [tech objectForKeyedSubscript:@"IPVER"]);
  }

  if ([tech objectForKeyedSubscript:@"LCTCH"])
  {
    v5 = [tech objectForKeyedSubscript:@"LCTCH"];
    localCelltech = self->_localCelltech;
    if (localCelltech)
    {
      self->_isLocalCelltechDirty |= ![(NSNumber *)localCelltech isEqualToNumber:v5];
    }

    [(VCAggregatorMultiway *)self setLocalCelltech:v5];
  }

  if ([tech objectForKeyedSubscript:@"LXPNSV"])
  {
    -[VCAggregatorMultiway setIsLocalExpensive:](self, "setIsLocalExpensive:", [tech objectForKeyedSubscript:@"LXPNSV"]);
  }

  if ([tech objectForKeyedSubscript:@"RCTCH"])
  {
    -[VCAggregatorMultiway setRemoteCelltech:](self, "setRemoteCelltech:", [tech objectForKeyedSubscript:@"RCTCH"]);
  }

  if ([tech objectForKeyedSubscript:@"RXPNSV"])
  {
    -[VCAggregatorMultiway setIsRemoteExpensive:](self, "setIsRemoteExpensive:", [tech objectForKeyedSubscript:@"RXPNSV"]);
  }

  if ([tech objectForKeyedSubscript:@"SLTS"])
  {
    -[VCAggregatorMultiway setSuggestedLinkTypeCombo:](self, "setSuggestedLinkTypeCombo:", [tech objectForKeyedSubscript:@"SLTS"]);
  }

  if ([tech objectForKeyedSubscript:@"connectionDataMode"])
  {
    [(VCAggregator *)self microFromPayload:tech];
    v8 = v7;
    [(MultiwaySegment *)self->_currentUplinkSegment processDataMode:tech withTime:?];
    currentDownlinkSegment = self->_currentDownlinkSegment;

    [(MultiwaySegment *)currentDownlinkSegment processDataMode:tech withTime:v8];
  }
}

- (void)populateSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes toPayload:(id)payload
{
  if (bytes)
  {
    bytes->var7 = [objc_msgSend(payload objectForKeyedSubscript:{@"CDupTxDb", "integerValue"}];
    bytes->var4 = [objc_msgSend(payload objectForKeyedSubscript:{@"CDupRxDb", "integerValue"}];
    bytes->var5 = [objc_msgSend(payload objectForKeyedSubscript:{@"CBudgTxDb", "integerValue"}];
    bytes->var6 = [objc_msgSend(payload objectForKeyedSubscript:{@"CBudgRxDb", "integerValue"}];
    bytes->var0 = [objc_msgSend(payload objectForKeyedSubscript:{@"CTxDb", "integerValue"}];
    bytes->var1 = [objc_msgSend(payload objectForKeyedSubscript:{@"CRxDb", "integerValue"}];
    bytes->var2 = [objc_msgSend(payload objectForKeyedSubscript:{@"WTxDb", "integerValue"}];
    bytes->var3 = [objc_msgSend(payload objectForKeyedSubscript:{@"WRxDb", "integerValue"}];
  }

  else
  {
    [VCAggregatorMultiway populateSegmentBytes:toPayload:];
  }
}

- (void)updateNoRemoteState:(id)state state:(BOOL)a4
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__VCAggregatorMultiway_updateNoRemoteState_state___block_invoke;
  block[3] = &unk_278BD4D70;
  v6 = a4;
  block[4] = self;
  block[5] = state;
  dispatch_async(stateQueue, block);
}

void __50__VCAggregatorMultiway_updateNoRemoteState_state___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 3200) = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(v2 + 3208);
  if (*(v2 + 3200) == 1)
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
    v7 = v6 - *(v5 + 3208);
    v8 = *(v5 + 1360);
    [v8 totalNoRemotePacketsTime];
    [v8 setTotalNoRemotePacketsTime:v7 + v9];
    [*(*(a1 + 32) + 1360) maxNoRemotePacketsInterval];
    if (v10 < v7)
    {
      v10 = v7;
    }

    [*(*(a1 + 32) + 1360) setMaxNoRemotePacketsInterval:v10];
    v4 = 0;
  }

  *(*(a1 + 32) + 3208) = v4;
LABEL_9:
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR(8u);
    v12 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(a1 + 32) + 3208);
        v16 = 136316162;
        v17 = v11;
        v18 = 2080;
        v19 = "[VCAggregatorMultiway updateNoRemoteState:state:]_block_invoke";
        v20 = 1024;
        v21 = 12304;
        v22 = 2048;
        v23 = v13;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: No Remote Packet state=%f, start time=%f", &v16, 0x30u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(*(a1 + 32) + 3208);
      v16 = 136316162;
      v17 = v11;
      v18 = 2080;
      v19 = "[VCAggregatorMultiway updateNoRemoteState:state:]_block_invoke";
      v20 = 1024;
      v21 = 12304;
      v22 = 2048;
      v23 = v15;
      v24 = 2048;
      v25 = v15;
      _os_log_debug_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: No Remote Packet state=%f, start time=%f", &v16, 0x30u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateNoRemoteState_Alternate:(id)alternate state:(BOOL)state
{
  v26 = *MEMORY[0x277D85DE8];
  self->_currentNoRemoteState_Alternate = state;
  noRemoteStartTime_Alternate = self->_noRemoteStartTime_Alternate;
  if (state)
  {
    if (noRemoteStartTime_Alternate != 0.0)
    {
      goto LABEL_9;
    }

    [(VCAggregator *)self microFromPayload:alternate];
  }

  else
  {
    if (noRemoteStartTime_Alternate == 0.0)
    {
      goto LABEL_9;
    }

    [(VCAggregator *)self microFromPayload:alternate];
    v8 = v7 - self->_noRemoteStartTime_Alternate;
    currentDownlinkSegment = self->_currentDownlinkSegment;
    [currentDownlinkSegment totalNoRemotePacketsTime_Alternate];
    [currentDownlinkSegment setTotalNoRemotePacketsTime_Alternate:v8 + v10];
    [self->_currentDownlinkSegment maxNoRemotePacketsInterval_Alternate];
    if (v11 < v8)
    {
      v11 = v8;
    }

    [self->_currentDownlinkSegment setMaxNoRemotePacketsInterval_Alternate:v11];
    v6 = 0.0;
  }

  self->_noRemoteStartTime_Alternate = v6;
LABEL_9:
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR(8u);
    v13 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_noRemoteStartTime_Alternate;
        v16 = 136316162;
        v17 = v12;
        v18 = 2080;
        v19 = "[VCAggregatorMultiway updateNoRemoteState_Alternate:state:]";
        v20 = 1024;
        v21 = 12320;
        v22 = 2048;
        v23 = v14;
        v24 = 2048;
        v25 = v14;
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: No Remote Packet state=%f, start time=%f", &v16, 0x30u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [VCAggregatorMultiway updateNoRemoteState_Alternate:v12 state:&self->_noRemoteStartTime_Alternate];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int)boundedAlgoScoreTimePeriodTicks
{
  if ([(VCAggregatorMultiway *)self RTPeriod])
  {
    return 0x1E / [(VCAggregatorMultiway *)self RTPeriod];
  }

  else
  {
    return 6;
  }
}

- (void)stopBoundedAlgoScorerWithTime:(double)time
{
  [(VCAlgosStreamingScorer *)self->super._algosScorerBounded stopWithTime:1 streamType:?];
  [(VCAlgosStreamingScorer *)self->super._algosScorerBounded stopWithTime:2 streamType:time];
  [(VCAlgosStreamingScorer *)self->super._algosScorerBounded endWithTime:1 streamType:time];
  [(VCAlgosStreamingScorer *)self->super._algosScorerBounded endWithTime:2 streamType:time];
  algosScorerBounded = self->super._algosScorerBounded;

  [(VCAlgosStreamingScorer *)algosScorerBounded endWithTime:0 streamType:time];
}

- (void)addBoundedAlgoScoreWithTime:(double)time
{
  [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorBounded aggregateScoresWithDictionaryLogging:1 time:time];
  v5 = v4;
  algosScorerBoundedScoreList = self->super._algosScorerBoundedScoreList;
  if (!algosScorerBoundedScoreList)
  {
    algosScorerBoundedScoreList = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->super._algosScorerBoundedScoreList = algosScorerBoundedScoreList;
  }

  v7 = [(NSMutableArray *)algosScorerBoundedScoreList count];
  if (v7 >= [(VCAggregatorMultiway *)self boundedAlgoScoreListSizeMax])
  {
    [VCAggregatorMultiway addBoundedAlgoScoreWithTime:];
  }

  else
  {
    -[NSMutableArray addObject:](self->super._algosScorerBoundedScoreList, "addObject:", +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v5], 3));
    delegate = self->super._delegate;
    algosScoreAggregatorBounded = self->super._algosScoreAggregatorBounded;

    [(VCAggregatorDelegate *)delegate sendNetworkScoreDictionary:algosScoreAggregatorBounded networkScoreType:1];
  }
}

- (void)reallocateAndStartBoundedAlgoScorerWithTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  algoScorerParticipantIDList = [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorBounded algoScorerParticipantIDList];

  self->super._algosScoreAggregatorBounded = 0;
  self->super._algosScorerBounded = 0;
  v6 = objc_alloc_init(VCAlgosStreamingScoreAggregator);
  self->super._algosScoreAggregatorBounded = v6;
  [(VCAlgosStreamingScoreAggregator *)v6 addParticipantWithTime:@"DefaultParticipantID" participantID:time];
  v7 = [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorBounded algosScorerWithParticipantID:@"DefaultParticipantID"];
  self->super._algosScorerBounded = v7;
  [(VCAggregatorMultiway *)self startAlgosScorer:v7 time:time];
  [(VCAggregatorMultiway *)self setAlgosScorerVideoResolution:self->super._algosScorerBounded time:@"DefaultParticipantID" participantID:time];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [algoScorerParticipantIDList countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(algoScorerParticipantIDList);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (![(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorBounded algosScorerWithParticipantID:v12])
        {
          [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorBounded addParticipantWithTime:v12 participantID:time];
          v13 = [(VCAlgosStreamingScoreAggregator *)self->super._algosScoreAggregatorBounded algosScorerWithParticipantID:v12];
          [(VCAggregatorMultiway *)self startAlgosScorer:v13 time:time];
          [(VCAggregatorMultiway *)self setAlgosScorerVideoResolution:v13 time:v12 participantID:time];
        }
      }

      v9 = [algoScorerParticipantIDList countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startAlgosScorer:(id)scorer time:(double)time
{
  if (scorer)
  {
    [scorer startWithTime:0 streamType:?];
    [scorer startWithTime:1 streamType:time];

    [scorer startWithTime:2 streamType:time];
  }

  else
  {
    [VCAggregatorMultiway startAlgosScorer:time:];
  }
}

- (void)setAlgosScorerVideoResolution:(id)resolution time:(double)time participantID:(id)d
{
  if (resolution)
  {
    if ([(NSMutableDictionary *)self->super._videoQualityWidth objectForKeyedSubscript:d]&& [(NSMutableDictionary *)self->super._videoQualityHeight objectForKeyedSubscript:d])
    {
      v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._videoQualityWidth objectForKeyedSubscript:{d), "intValue"}];
      v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._videoQualityHeight objectForKeyedSubscript:{d), "intValue"}];

      [resolution setVideoResolutionWithTime:v9 width:v10 height:time];
    }

    else
    {
      [VCAggregatorMultiway setAlgosScorerVideoResolution:time:participantID:];
    }
  }

  else
  {
    [VCAggregatorMultiway setAlgosScorerVideoResolution:time:participantID:];
  }
}

- (void)resetBoundedAlgoScoreWithTime:(double)time
{
  [(VCAggregatorMultiway *)self stopBoundedAlgoScorerWithTime:?];
  [(VCAggregatorMultiway *)self addBoundedAlgoScoreWithTime:time];

  [(VCAggregatorMultiway *)self reallocateAndStartBoundedAlgoScorerWithTime:time];
}

- (id)boundedTalgos
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->super._algosScorerBoundedScoreList count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    algosScorerBoundedScoreList = self->super._algosScorerBoundedScoreList;
    v4 = [(NSMutableArray *)algosScorerBoundedScoreList countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(algosScorerBoundedScoreList);
          }

          [*(*(&v13 + 1) + 8 * i) doubleValue];
          v7 = v7 + v9;
        }

        v5 = [(NSMutableArray *)algosScorerBoundedScoreList countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }

    v10 = [(NSMutableArray *)self->super._algosScorerBoundedScoreList count];
    result = [MEMORY[0x277CCABA8] numberWithDouble:(200.0 / (exp(v7 / v10 * -0.05) + 1.0) + -100.0)];
  }

  else
  {
    [(VCAggregatorMultiway *)&v17 boundedTalgos];
    result = v17;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addBoundedTalgosToReport:(id)report
{
  if ([(NSMutableArray *)self->super._algosScorerBoundedScoreList count])
  {
    [report setObject:-[NSMutableArray componentsJoinedByString:](self->super._algosScorerBoundedScoreList forKeyedSubscript:{"componentsJoinedByString:", @", "), @"ALGOSLST"}];
    if ([(VCAggregatorMultiway *)self boundedTalgos])
    {
      v5 = [VCAggregatorUtils safeRoundOffNumber:[(VCAggregatorMultiway *)self boundedTalgos] toSignificantDigits:3];

      [report setObject:v5 forKeyedSubscript:@"ALGOSBND"];
    }
  }
}

- (unsigned)significantVideoStallCount:(id)count
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v18 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        streamGroups = [v8 streamGroups];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(streamGroups);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if ([v14 isEqual:count])
              {
                v6 += [v8 significantVideoStallCount:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v14)}];
              }
            }

            v11 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)significantVideoStallTotalTime:(id)time
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
        streamGroups = [v9 streamGroups];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [streamGroups countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(streamGroups);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              if ([v15 isEqual:time])
              {
                [v9 significantVideoStallTotalTime:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v15)}];
                v7 = v7 + v16;
              }
            }

            v12 = [streamGroups countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)audioErasureCount:(id)count
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v18 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        streamGroups = [v8 streamGroups];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(streamGroups);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if ([v14 isEqual:count])
              {
                v6 += [v8 audioErasureCount:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v14)}];
              }
            }

            v11 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unsigned)maxAudioErasureCount:(id)count
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    LOWORD(v6) = 0;
    v18 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        streamGroups = [v8 streamGroups];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(streamGroups);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if ([v14 isEqual:count])
              {
                v6 = fmax(v6, [v8 maxAudioErasureCount:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v14)}]);
              }
            }

            v11 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unsigned)maxVideoStallCount:(id)count
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    LOWORD(v6) = 0;
    v18 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        streamGroups = [v8 streamGroups];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(streamGroups);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if ([v14 isEqual:count])
              {
                v6 = fmax(v6, [v8 maxVideoStallCount:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v14)}]);
              }
            }

            v11 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)averageJitterBufferDelay:(id)delay
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = 0;
  v22 = *v29;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v29 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
      streamGroups = [v9 streamGroups];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = [streamGroups countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(streamGroups);
            }

            v15 = *(*(&v24 + 1) + 8 * j);
            if ([v15 isEqual:delay])
            {
              v16 = [streamGroups objectForKeyedSubscript:v15];
              [v9 avgJBDelay:v16];
              if (v17 != 0.0)
              {
                ++v6;
                [v9 avgJBDelay:v16];
                v7 = v7 + v18;
              }
            }
          }

          v12 = [streamGroups countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v12);
      }
    }

    v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v5);
  if (v6)
  {
    result = v7 / v6;
  }

  else
  {
LABEL_20:
    result = 0.0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)avgJBTargetSizeChanges:(id)changes
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = 0;
  v20 = *v27;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v27 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
      streamGroups = [v9 streamGroups];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = [streamGroups countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(streamGroups);
            }

            v15 = *(*(&v22 + 1) + 8 * j);
            if ([v15 isEqual:changes])
            {
              ++v6;
              [v9 avgJBTargetSizeChanges:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v15)}];
              v7 = v7 + v16;
            }
          }

          v12 = [streamGroups countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v12);
      }
    }

    v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  }

  while (v5);
  if (v6)
  {
    result = v7 / v6;
  }

  else
  {
LABEL_19:
    result = 0.0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)maxJBTargetSizeChanges:(id)changes
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    LOWORD(v6) = 0;
    v18 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        streamGroups = [v8 streamGroups];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(streamGroups);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if ([v14 isEqual:changes])
              {
                v6 = fmax(v6, [v8 maxJBTargetSizeChanges:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v14)}]);
              }
            }

            v11 = [streamGroups countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unsigned)minVideoFrameRate:(id)rate
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v27;
    LOWORD(v6) = 60;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
        streamGroups = [v8 streamGroups];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [streamGroups countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(streamGroups);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              if ([v14 isEqual:rate])
              {
                v15 = [streamGroups objectForKeyedSubscript:v14];
                v16 = v6;
                if ([v8 minVideoFrameRate:v15])
                {
                  v16 = fmin(v16, [v8 minVideoFrameRate:v15]);
                }

                v6 = v16;
              }
            }

            v11 = [streamGroups countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  else
  {
    LOWORD(v6) = 60;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)audioErasureTotalTime:(id)time
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
        streamGroups = [v9 streamGroups];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [streamGroups countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(streamGroups);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              if ([v15 isEqual:time])
              {
                [v9 audioErasureTotalTime:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v15)}];
                v7 = v7 + v16;
              }
            }

            v12 = [streamGroups countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)audioErasureTotalTimeAlt:(id)alt
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_calls;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
        streamGroups = [v9 streamGroups];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [streamGroups countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(streamGroups);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              if ([v15 isEqual:alt])
              {
                [v9 audioErasureTotalTimeAlt:{objc_msgSend(streamGroups, "objectForKeyedSubscript:", v15)}];
                v7 = v7 + v16;
              }
            }

            v12 = [streamGroups countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)timeWeightedNumberOfParticipantsWebOnly:(BOOL)only
{
  totalParticipantMeasuredTime = self->_totalParticipantMeasuredTime;
  if (totalParticipantMeasuredTime == 0.0)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = &OBJC_IVAR___VCAggregatorMultiway__numberOfParticipantsDuration;
  if (only)
  {
    v5 = &OBJC_IVAR___VCAggregatorMultiway__numberOfWebParticipantsDuration;
  }

  v6 = self + *v5;
  result = 0.0;
  do
  {
    result = result + *&v6[8 * v4] * v4 / totalParticipantMeasuredTime;
    ++v4;
  }

  while (v4 != 40);
  return result;
}

- (void)calculateAverageReceivingBitrateForStreamGroup:(id)group audioStreamsCount:(unsigned int *)count avgAudioRecvBitrate:(unsigned int *)bitrate vedioStreamsCount:(unsigned int *)streamsCount avgVideoRecvBitrate:(unsigned int *)recvBitrate
{
  if ([group objectForKeyedSubscript:@"VRxR"])
  {
    v12 = *recvBitrate;
    *recvBitrate = v12 + [objc_msgSend(group objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    ++*streamsCount;
  }

  if ([group objectForKeyedSubscript:@"ARxR"])
  {
    v13 = *bitrate;
    *bitrate = v13 + [objc_msgSend(group objectForKeyedSubscript:{@"ARxR", "integerValue"}];
    ++*count;
  }

  if ([group objectForKeyedSubscript:@"VRFECRxR"])
  {
    v14 = *recvBitrate;
    *recvBitrate = v14 - [objc_msgSend(group objectForKeyedSubscript:{@"VRFECRxR", "integerValue"}];
  }
}

- (void)processNearbyStopWithPayload:(id)payload
{
  v5 = [payload objectForKeyedSubscript:@"NBDUR"];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSMutableDictionary *)self->_nearbyStats objectForKeyedSubscript:@"ANBDUR"];
    v8 = MEMORY[0x277CCABA8];
    [v7 doubleValue];
    v10 = v9;
    [v6 doubleValue];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_nearbyStats, "setObject:forKeyedSubscript:", [v8 numberWithDouble:v10 + v11], @"ANBDUR");
  }

  v12 = [payload objectForKeyedSubscript:@"NBMPC"];
  if (v12)
  {
    v13 = v12;
    v14 = [(NSMutableDictionary *)self->_nearbyStats objectForKeyedSubscript:@"ANBMPC"];
    v15 = MEMORY[0x277CCABA8];
    unsignedIntValue = [v14 unsignedIntValue];
    unsignedIntValue2 = [v13 unsignedIntValue];
    if (unsignedIntValue <= unsignedIntValue2)
    {
      v18 = unsignedIntValue2;
    }

    else
    {
      v18 = unsignedIntValue;
    }

    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_nearbyStats, "setObject:forKeyedSubscript:", [v15 numberWithUnsignedInt:v18], @"ANBMPC");
  }

  v19 = [(NSMutableDictionary *)self->_nearbyStats objectForKeyedSubscript:@"ANBSC"];
  v20 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v19, "unsignedIntValue") + 1}];
  nearbyStats = self->_nearbyStats;

  [(NSMutableDictionary *)nearbyStats setObject:v20 forKeyedSubscript:@"ANBSC"];
}

- (void)processHDCaptureBenefitDistribution:(id)distribution
{
  v5 = [distribution objectForKeyedSubscript:@"VTxSCBenefitCount"];
  v6 = [distribution objectForKeyedSubscript:@"VTxSCTotalCount"];
  -[NSMutableArray setObject:atIndexedSubscript:](self->_hdCaptureBenefitDistribution, "setObject:atIndexedSubscript:", [MEMORY[0x277CCABA8] numberWithInteger:{objc_msgSend(v6, "integerValue") - objc_msgSend(v5, "integerValue")}], 0);
  hdCaptureBenefitDistribution = self->_hdCaptureBenefitDistribution;

  [(NSMutableArray *)hdCaptureBenefitDistribution setObject:v5 atIndexedSubscript:1];
}

- (void)processHDCaptureEnabledWithPayload:(id)payload withType:(unsigned __int16)type withTimestamp:(double)timestamp
{
  if (type)
  {
    if (type == 1)
    {

      [(VCAggregatorMultiway *)self markHDCaptureStartWithTimestamp:payload, timestamp];
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorMultiway processHDCaptureEnabledWithPayload:withType:withTimestamp:];
      }
    }
  }

  else
  {
    [(VCAggregatorMultiway *)self markHDCaptureStopWithTimestamp:timestamp];

    [(VCAggregatorMultiway *)self processHDCaptureBenefitDistribution:payload];
  }
}

- (void)processDeviceOrientation:(id)orientation
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = &OBJC_IVAR___VCAggregatorFaceTime__avSyncOffsetSamplesCount;
  if ([orientation objectForKeyedSubscript:@"ORTNLocal"])
  {
    v6 = [orientation objectForKeyedSubscript:@"ORTNLocal"];
    [(VCAggregator *)self microFromPayload:orientation];
    v8 = v7;
    v23 = v6;
    -[VCDurationHistogram resumeAtBucket:currentTime:](self->_localOrientationDurations, "resumeAtBucket:currentTime:", [v6 unsignedIntValue], v7);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    calls = self->_calls;
    v10 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(calls);
          }

          v14 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
          if ([v14 currentRemoteOrientation] != 4)
          {
            [objc_msgSend(v14 "matchedOrientationDurations")];
          }
        }

        v11 = [(NSMutableDictionary *)calls countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v5 = &OBJC_IVAR___VCAggregatorFaceTime__avSyncOffsetSamplesCount;
    currentLocalOrientation = self->_currentLocalOrientation;
    if ([v23 unsignedIntValue] != currentLocalOrientation && self->_currentLocalOrientation != 4)
    {
      ++self->_localOrientationChangeCount;
    }

    self->_currentLocalOrientation = [v23 unsignedIntValue];
  }

  if ([orientation objectForKeyedSubscript:@"ORTNRemote"] && objc_msgSend(orientation, "objectForKeyedSubscript:", @"VCSPUUID"))
  {
    v16 = [orientation objectForKeyedSubscript:@"ORTNRemote"];
    v17 = -[NSMutableDictionary objectForKeyedSubscript:](self->_calls, "objectForKeyedSubscript:", [orientation objectForKeyedSubscript:@"VCSPUUID"]);
    v18 = v17;
    v19 = v5[800];
    if (*(&self->super.super.super.isa + v19) != 4)
    {
      matchedOrientationDurations = [v17 matchedOrientationDurations];
      v21 = [objc_opt_class() firstOrientation:*(&self->super.super.super.isa + v19) matchesSecondOrientation:{objc_msgSend(v16, "unsignedIntValue")}];
      [(VCAggregator *)self microFromPayload:orientation];
      [matchedOrientationDurations resumeAtBucket:v21 currentTime:?];
    }

    [v18 setCurrentRemoteOrientation:{objc_msgSend(v16, "unsignedIntValue")}];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioCodecAndMediaBitrate:(id)bitrate currentTime:(double)time
{
  v17 = *MEMORY[0x277D85DE8];
  lastAudioTierStatsUpdate = self->super._lastAudioTierStatsUpdate;
  if (lastAudioTierStatsUpdate != 0.0)
  {
    LODWORD(v4) = vcvtad_u64_f64(time - lastAudioTierStatsUpdate);
    if (self->super._currentAudioCodecPayload)
    {
      if (![VCHistogram addOnlyExactMatchingValue:"addOnlyExactMatchingValue:increment:" increment:?]&& VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (OUTLINED_FUNCTION_60())
        {
          currentAudioCodecPayload = self->super._currentAudioCodecPayload;
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_6_3();
          OUTLINED_FUNCTION_10_0();
          _os_log_error_impl(v12, v13, v14, v15, v16, 0x22u);
        }
      }
    }

    [(VCAggregatorMultiway *)self updateMediaBitrateHistogramsWithTimeElapsed:v4];
    v9 = [bitrate objectForKeyedSubscript:@"Bundle"];
    if (v9)
    {
      -[VCHistogram addValue:](self->super._audioFrameBundling, "addValue:", [v9 unsignedLongValue]);
    }
  }

  if ([bitrate objectForKeyedSubscript:@"Payload"])
  {
    self->super._currentAudioCodecPayload = [objc_msgSend(bitrate objectForKeyedSubscript:{@"Payload", "intValue"}];
  }

  if ([bitrate objectForKeyedSubscript:@"BitRate"])
  {
    self->super._currentAudioMediaBitrate = [objc_msgSend(bitrate objectForKeyedSubscript:{@"BitRate", "intValue"}];
  }

  if ([bitrate objectForKeyedSubscript:@"REDPayloadBitrate"])
  {
    self->super._currentREDPayloadBitrate = [objc_msgSend(bitrate objectForKeyedSubscript:{@"REDPayloadBitrate", "unsignedLongValue"}];
  }

  self->super._lastAudioTierStatsUpdate = time;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateNetworkCapabilities:(id)capabilities type:(unsigned __int16)type
{
  v44 = *MEMORY[0x277D85DE8];
  if (type != 1)
  {
    goto LABEL_14;
  }

  if (!capabilities)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_14;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    v39 = 9455;
    goto LABEL_27;
  }

  if (![capabilities objectForKeyedSubscript:@"RULRTX"])
  {
    goto LABEL_14;
  }

  v6 = [capabilities objectForKeyedSubscript:@"VCSPUUID"];
  if (v6)
  {
    v7 = v6;
    v8 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = v8;
      [self->_currentDownlinkSegment setReportNetworkCapabilities:1];
      [v9 setReportNetworkCapabilities:1];
      self->_reportNetworkCapabilities = 1;
      v10 = [objc_msgSend(capabilities objectForKeyedSubscript:{@"RULRTX", "BOOLValue"}];
      [self->_currentDownlinkSegment setIsUplinkRetransmissionEnabled:v10];
      [v9 setIsUplinkRetransmissionEnabled:v10];
      self->_isUplinkRetransmissionEnabled = v10;
      v11 = [objc_msgSend(capabilities objectForKeyedSubscript:{@"RTLE", "BOOLValue"}];
      [(MultiwaySegment *)self->_currentDownlinkSegment setIsRemoteQUICPod:v11];
      [v9 setIsRemoteQUICPod:v11];
      self->super._isRemoteQUICPod = v11;
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR(7u);
        v13 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          isUplinkRetransmissionEnabled = [v9 isUplinkRetransmissionEnabled];
          [v9 isRemoteQUICPod];
          *v38 = 136316418;
          *&v38[4] = v12;
          OUTLINED_FUNCTION_25();
          *&v38[14] = "[VCAggregatorMultiway updateNetworkCapabilities:type:]";
          *&v38[22] = 1024;
          OUTLINED_FUNCTION_17_0();
          v40 = v7;
          v41 = v15;
          *v42 = isUplinkRetransmissionEnabled;
          *&v42[4] = v15;
          *&v42[6] = v16;
          _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregatorMultiway: participantID[%@] isUplinkRetransmissionEnabled=%d isRemoteQUICPod=%d", v38, 0x32u);
        }
      }

      if ([capabilities objectForKeyedSubscript:{@"MQSchP", *v38, *&v38[16]}])
      {
        v17 = [objc_msgSend(capabilities objectForKeyedSubscript:{@"MQSchP", "intValue"}];
        [(MultiwaySegment *)self->_currentDownlinkSegment setRemoteMediaQueueSchedulePolicy:v17];
        [v9 setRemoteMediaQueueSchedulePolicy:v17];
        self->super._remoteMediaQueueSchedulePolicy = v17;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        VRTraceErrorLogLevelToCSTR(7u);
        if (OUTLINED_FUNCTION_74())
        {
          isUplinkRetransmissionEnabled2 = [v9 isUplinkRetransmissionEnabled];
          isRemoteQUICPod = [v9 isRemoteQUICPod];
          [v9 remoteMediaQueueSchedulePolicy];
          OUTLINED_FUNCTION_5_1();
          *&v38[12] = v20;
          *&v38[14] = "[VCAggregatorMultiway updateNetworkCapabilities:type:]";
          *&v38[22] = 1024;
          OUTLINED_FUNCTION_17_0();
          v40 = v7;
          v41 = v21;
          *v42 = isUplinkRetransmissionEnabled2;
          *&v42[4] = v21;
          *&v42[6] = isRemoteQUICPod;
          LOWORD(v43) = v21;
          *(&v43 + 2) = v22;
          OUTLINED_FUNCTION_16_0();
          _os_log_impl(v23, v24, v25, v26, v27, 0x38u);
        }
      }

      goto LABEL_14;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        goto LABEL_14;
      }

      VRTraceErrorLogLevelToCSTR(3u);
      v36 = gVRTraceOSLog;
      if (!OUTLINED_FUNCTION_14_0())
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2_0();
      v40 = v7;
      v30 = &dword_23D4DF000;
      v33 = " [%s] %s:%d Can not set network capabilities with participantID=%@ as it does not exists";
      v34 = v38;
      v31 = v36;
      v32 = OS_LOG_TYPE_ERROR;
      v35 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCAggregatorMultiway *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        goto LABEL_14;
      }

      VRTraceErrorLogLevelToCSTR(3u);
      if (!OUTLINED_FUNCTION_60())
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2_0();
      v40 = v29;
      v41 = 2048;
      *v42 = self;
      *&v42[8] = v37;
      v43 = v7;
      OUTLINED_FUNCTION_10_0();
      v35 = 58;
    }

LABEL_38:
    _os_log_error_impl(v30, v31, v32, v33, v34, v35);
    goto LABEL_14;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_14;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    v39 = 9459;
LABEL_27:
    OUTLINED_FUNCTION_1();
    goto LABEL_38;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_38;
    }
  }

LABEL_14:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)processFecConfigData:(id)data
{
  v5 = [data objectForKeyedSubscript:@"FecHeaderVer"];
  if (v5)
  {
    self->_fecHeaderVersion = [v5 unsignedIntegerValue];
    v6 = [data objectForKeyedSubscript:@"VCMSDirection"];
    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      fecHeaderVersion = self->_fecHeaderVersion;
      v9 = &OBJC_IVAR___VCAggregatorMultiway__currentUplinkSegment;
      if (unsignedIntegerValue == 2)
      {
        v9 = &OBJC_IVAR___VCAggregatorMultiway__currentDownlinkSegment;
      }

      v10 = *(&self->super.super.super.isa + *v9);

      [v10 setFecHeaderVersion:fecHeaderVersion];
    }
  }
}

- (void)calculateUplinkAudioTimestampJumps:(id)jumps
{
  OUTLINED_FUNCTION_58();
  v29 = v6;
  v39 = *MEMORY[0x277D85DE8];
  v8 = [v7 objectForKeyedSubscript:sRTCReportingStreamCollection];
  if ([v8 count])
  {
    v9 = [v8 countByEnumeratingWithState:OUTLINED_FUNCTION_27() objects:? count:?];
    if (v9)
    {
      OUTLINED_FUNCTION_54(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29, v30, v32, v34, v35, v37);
      v17 = @"VCMSDirection";
      do
      {
        v18 = 0;
        do
        {
          if (*v38 != v5)
          {
            objc_enumerationMutation(v8);
          }

          v19 = [v8 objectForKeyedSubscript:*(v36 + 8 * v18)];
          v20 = [objc_msgSend(v19 objectForKeyedSubscript:{v17), "integerValue"}];
          if (v20 == 1)
          {
            if (OUTLINED_FUNCTION_68())
            {
              [objc_msgSend(v19 objectForKeyedSubscript:{v17), "integerValue"}];
              OUTLINED_FUNCTION_46();
            }

            v17 = v3;
            if (OUTLINED_FUNCTION_71())
            {
              v33 += [OUTLINED_FUNCTION_71() unsignedLongValue];
            }

            v20 = [v19 objectForKeyedSubscript:@"VCASTimestampJumpMax"];
            if (v20)
            {
              v20 = [objc_msgSend(v19 objectForKeyedSubscript:{@"VCASTimestampJumpMax", "unsignedLongValue"}];
            }

            v24 = *(v29 + 1128);
            if (v24 <= v20)
            {
              v24 = v20;
            }

            *(v29 + 1128) = v24;
          }

          ++v18;
        }

        while (v4 != v18);
        v4 = OUTLINED_FUNCTION_32(v20, v21, v22, v23);
      }

      while (v4);
      v25 = v33;
      v26 = v31;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v29 + 1120) += v26;
    [*(v29 + 1112) addValue:v25];
  }

  v27 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_57();
}

- (void)calculateUplinkRelatedTelemetry:(id)telemetry
{
  OUTLINED_FUNCTION_58();
  v4 = v3;
  v26 = *MEMORY[0x277D85DE8];
  v25 = v5;
  if ([objc_msgSend(v5 objectForKeyedSubscript:{@"VCSECNEnabled", "integerValue"}])
  {
    ++*(v4 + 2564);
  }

  v6 = [v25 objectForKeyedSubscript:sRTCReportingStreamCollection];
  v7 = [v6 count];
  if (v7)
  {
    v24 = v4;
    v9 = OUTLINED_FUNCTION_69(v7, v8);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = MEMORY[0];
      v13 = 0.0;
      v14 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v6);
          }

          v16 = [v6 objectForKeyedSubscript:*(8 * i)];
          v17 = [objc_msgSend(v16 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
          if (v17 == 1)
          {
            if (OUTLINED_FUNCTION_75())
            {
              v11 = v11 + [OUTLINED_FUNCTION_75() integerValue];
            }

            if ([v16 objectForKeyedSubscript:@"APT"])
            {
              [objc_msgSend(v16 objectForKeyedSubscript:{@"APT", "doubleValue"}];
              v13 = v13 + v19;
            }

            [objc_msgSend(v25 objectForKeyedSubscript:{@"APSM", "doubleValue"}];
            v14 = fmax(v20, v14);
            v17 = [v16 objectForKeyedSubscript:@"CodecPayload"];
            if (v17)
            {
              v17 = [*(v24 + 688) addOnlyExactMatchingValue:{objc_msgSend(objc_msgSend(v16, "objectForKeyedSubscript:", @"CodecPayload", "intValue")}];
            }
          }
        }

        v10 = OUTLINED_FUNCTION_69(v17, v18);
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v13 = 0.0;
      v14 = 0.0;
    }

    [*(v24 + 680) addValue:v11];
    v21 = *(v24 + 1016);
    if (v21 < v14)
    {
      v21 = v14;
    }

    *(v24 + 1016) = v21;
    v22 = v13 - *(v24 + 1032);
    *(v24 + 1032) = v13;
    OUTLINED_FUNCTION_47(1024, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_57();
}

- (void)calculateStreamTelemetry:(id)telemetry totalReceiveRate:(unsigned int *)rate audioPacketsSent:(unsigned int *)sent
{
  v43 = *MEMORY[0x277D85DE8];
  if (!rate)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_25;
    }

    v21 = VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_25;
    }

    v40 = 136315650;
    v41 = v21;
    OUTLINED_FUNCTION_66(2080);
    v42 = 10014;
LABEL_32:
    OUTLINED_FUNCTION_24();
    _os_log_error_impl(v23, v24, v25, v26, v27, v28);
    goto LABEL_25;
  }

  if (!sent)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_25;
    }

    v22 = VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_25;
    }

    v40 = 136315650;
    v41 = v22;
    OUTLINED_FUNCTION_66(2080);
    v42 = 10015;
    goto LABEL_32;
  }

  rateCopy = rate;
  v7 = [telemetry objectForKeyedSubscript:sRTCReportingStreamCollection];
  v8 = [v7 count];
  if (v8)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = OUTLINED_FUNCTION_56(v8, v9, &v35, v39);
    if (v10)
    {
      v11 = v10;
      v29 = rateCopy;
      v32 = 0;
      v34 = 0;
      v12 = *v36;
      v30 = v7;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [v7 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i)];
          if ([objc_msgSend(v14 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}] == 2)
          {
            if ([v14 objectForKeyedSubscript:@"ARxR"])
            {
              v34 += [objc_msgSend(v14 objectForKeyedSubscript:{@"ARxR", "integerValue"}];
            }

            if ([v14 objectForKeyedSubscript:@"VRxR"])
            {
              v34 += [objc_msgSend(v14 objectForKeyedSubscript:{@"VRxR", "integerValue"}];
            }

            [(VCAggregator *)self updateVideoFECStatsOnCall:telemetry callLossPattern:self->_lossPattern];
            v7 = v30;
          }

          v15 = [objc_msgSend(v14 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
          if (v15 == 1)
          {
            if ([v14 objectForKeyedSubscript:@"APS"])
            {
              v32 += [objc_msgSend(v14 objectForKeyedSubscript:{@"APS", "integerValue"}];
            }

            v15 = [OUTLINED_FUNCTION_53() objectForKeyedSubscript:?];
            if (v15)
            {
              v15 = [objc_msgSend(OUTLINED_FUNCTION_53() "objectForKeyedSubscript:"integerValue"")];
              self->_fecProcessingTime += v15;
            }
          }
        }

        v11 = OUTLINED_FUNCTION_56(v15, v16, &v35, v39);
      }

      while (v11);
      v17 = 1000 * v34;
      rateCopy = v29;
      v18 = v32;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    lastReportedAudioPacketSent = self->super._lastReportedAudioPacketSent;
    self->super._lastReportedAudioPacketSent = v18;
    *rateCopy = v17;
    *sent = v18 - lastReportedAudioPacketSent;
  }

LABEL_25:
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDuplicationChangedWithType:(unsigned __int16)type
{
  if (type > 1u)
  {
    return 0;
  }

  v3 = self->super._isDuplicationEnabled ^ type;
  v4 = v3 != 1;
  self->super._isDuplicationEnabled = type ^ 1;
  if (!type && v3 != 1)
  {
    ++self->super._switchIntoDupCount;
    return 1;
  }

  return v4;
}

- (void)updateSwitchConfiguration:(id)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  if ([configuration objectForKeyedSubscript:@"RemSw"])
  {
    self->super._negotiatedSwitches = [objc_msgSend(configuration objectForKeyedSubscript:{@"NegSw", "intValue"}];
    self->super._remoteSwitches = [objc_msgSend(configuration objectForKeyedSubscript:{@"RemSw", "intValue"}];
    self->super._remoteFaceTimeSwitchesAvailable = [objc_msgSend(configuration objectForKeyedSubscript:{@"RemSwAvlbl", "BOOLValue"}];
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR(8u);
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          negotiatedSwitches = self->super._negotiatedSwitches;
          remoteSwitches = self->super._remoteSwitches;
          LODWORD(v19) = 136316418;
          self->super._remoteFaceTimeSwitchesAvailable;
          *(&v19 + 4) = v5;
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_26();
          _os_log_impl(v8, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 0x32u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        v13 = self->super._negotiatedSwitches;
        v14 = self->super._remoteSwitches;
        LODWORD(v19) = 136316418;
        self->super._remoteFaceTimeSwitchesAvailable;
        *(&v19 + 4) = v5;
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_26();
        _os_log_debug_impl(v15, v16, OS_LOG_TYPE_DEBUG, v17, v18, 0x32u);
      }
    }

    [(MultiwaySegment *)self->_currentUplinkSegment setNegotiatedSwitches:self->super._negotiatedSwitches, v19];
    [(MultiwaySegment *)self->_currentDownlinkSegment setNegotiatedSwitches:self->super._negotiatedSwitches];
    if (self->super._remoteFaceTimeSwitchesAvailable)
    {
      [(MultiwaySegment *)self->_currentUplinkSegment setRemoteSwitches:self->super._remoteSwitches];
      [(MultiwaySegment *)self->_currentDownlinkSegment setRemoteSwitches:self->super._remoteSwitches];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateTotalConnectionTime:(id)time
{
  v31 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCACA0] stringWithUTF8String:&unk_23D59AAE5];
  if ([OUTLINED_FUNCTION_40() objectForKeyedSubscript:?])
  {
    [MEMORY[0x277CCACA0] stringWithUTF8String:&unk_23D59AB61];
    if ([OUTLINED_FUNCTION_40() objectForKeyedSubscript:?])
    {
      if ([time objectForKeyedSubscript:@"VCSPUUID"] && objc_msgSend(time, "objectForKeyedSubscript:", @"VCSPIDSID"))
      {
        v5 = [time objectForKeyedSubscript:@"VCSPUUID"];
        if (v5)
        {
          v6 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v5];
          [MEMORY[0x277CCACA0] stringWithUTF8String:&unk_23D59AAE5];
          [v6 setTotalConnectionTime_Alt:{objc_msgSend(OUTLINED_FUNCTION_40(), "objectForKeyedSubscript:")}];
          [MEMORY[0x277CCACA0] stringWithUTF8String:&unk_23D59AB61];
          [v6 setTotalConnectionTimeStarted:{objc_msgSend(OUTLINED_FUNCTION_40(), "objectForKeyedSubscript:")}];
          [v6 setTotalConnectionTimeSourceStreamGroupID:{objc_msgSend(time, "objectForKeyedSubscript:", @"VCMSStreamGroup"}];
          if (VRTraceGetErrorLogLevelForModule("") >= 6)
          {
            VRTraceErrorLogLevelToCSTR(6u);
            v7 = gVRTraceOSLog;
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v8 = [time objectForKeyedSubscript:@"VCSPIDSID"];
              v9 = [time objectForKeyedSubscript:@"VCMSStreamGroup"];
              totalConnectionTime_Alt = [v6 totalConnectionTime_Alt];
              [v6 totalConnectionTimeStarted];
              OUTLINED_FUNCTION_5_1();
              v22 = v11;
              OUTLINED_FUNCTION_4();
              OUTLINED_FUNCTION_2_0();
              v24 = v8;
              v25 = v12;
              v26 = v9;
              v27 = v12;
              v28 = totalConnectionTime_Alt;
              v29 = v12;
              v30 = v13;
              _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing V2 for participantID=%@, measured by streamGroupID=%@, TotalConnectionTime=%@, TotalConnectionTimeStarted=%@", v21, 0x44u);
            }
          }
        }

        else if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (OUTLINED_FUNCTION_14_0())
          {
            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_0();
            v23 = 11449;
            OUTLINED_FUNCTION_1();
            _os_log_error_impl(v15, v16, v17, v18, v19, v20);
          }
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:(void *)a1 creationOptions:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = 0;
  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateErrorCode:(uint64_t)a1 withType:(unsigned int *)a2 .cold.1(uint64_t a1, unsigned int *a2)
{
  OUTLINED_FUNCTION_51(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaBitrateHistogramsWithTimeElapsed:(uint64_t)a1 .cold.1(uint64_t a1, unsigned int *a2)
{
  OUTLINED_FUNCTION_51(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaBitrateHistogramsWithTimeElapsed:(uint64_t)a1 .cold.2(uint64_t a1, unsigned int *a2)
{
  OUTLINED_FUNCTION_51(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addHomogeneousBuildStat
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)resetUplinkSegmentWithStreamGroups:(uint64_t)a1 withPayload:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_50(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)flushCurrentDownlinkSegment:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_50(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetDownlinkSegmentWithStreamGroups:(uint64_t)a1 withPayload:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_50(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addNewCall:isWebUser:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isParticipantLive:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioEnabled:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioEnabled:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoEnabled:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteVideoEnabled:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)videoEnabled:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)videoEnabled:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)screenEnabled:timestamp:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)screenEnabled:timestamp:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)expanseEnabled:withType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)expanseEnabled:withType:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)expanseEnabled:withType:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateRateControlExperimentCall:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateRateControlExperimentCall:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateRateControlSmartBrakeTrialVersionRemote:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_4();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_53() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_10_0();
      v6 = 58;
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateRateControlSmartBrakeTrialVersionRemote:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateRateControlMachineLearningEnrollment:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateRateControlMachineLearningRateControllerStats:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaQueueInfoWithPayload:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBootstrapIndex:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_6_4();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_53() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_10_0();
      v6 = 58;
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateBootstrapIndex:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateBootstrapIndex:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)finalizeCall:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)finalizeCall:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processDownlinkOptedInRateChange:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processDownlinkOptedInRateChange:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processAudioStreamSwitch:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processVideoStreamSwitch:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processDecryptionTimeoutEvent:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processRTEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 1328);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)processRTEvent:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 1344);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)processParticipantTimingInfoV1ForMultiwayCall:(uint64_t)a1 payload:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 objectForKeyedSubscript:@"VCSPIDSID"];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)processParticipantTimingInfoV2ForMultiwayCall:(void *)a1 payload:.cold.1(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v2 = OUTLINED_FUNCTION_14();
    if (v3)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        [a1 objectForKeyedSubscript:@"VCSPIDSID"];
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_48();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
      }
    }

    else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [a1 objectForKeyedSubscript:@"VCSPIDSID"];
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_20();
      _os_log_debug_impl(v11, v12, v13, v14, v15, 0x30u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)processScreenControlEnabled:withType:withTimestamp:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processCameraCompositionEnabled:withType:withTimestamp:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processInternalErrorDetected:payload:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__VCAggregatorMultiway_updateWRMMetrics_payload___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 40) + 1336);
  *buf = 136318210;
  v7 = a1;
  v8 = 2080;
  v9 = "[VCAggregatorMultiway updateWRMMetrics:payload:]_block_invoke";
  v10 = 1024;
  v11 = 11011;
  v12 = 2112;
  v13 = v3;
  v14 = 2112;
  v15 = [v3 wrmLinkTypeSuggestion];
  v16 = 2112;
  v17 = [OUTLINED_FUNCTION_37() wrmLinkTypeChangeReasonCode];
  v18 = 2112;
  v19 = [OUTLINED_FUNCTION_37() wrmLinkTypeWifiRSSI];
  v20 = 2112;
  v21 = [OUTLINED_FUNCTION_37() wrmLinkTypeWifiSNR];
  v22 = 2112;
  v23 = [OUTLINED_FUNCTION_37() wrmLinkTypeWifiCCA];
  v24 = 2112;
  v25 = [OUTLINED_FUNCTION_37() wrmLinkTypeWifiPacketLoss];
  v26 = 2112;
  v27 = [OUTLINED_FUNCTION_37() wrmLinkTypeCellSignalStrength];
  v28 = 2112;
  v29 = [OUTLINED_FUNCTION_37() wrmLinkTypeCellSignalBar];
  v30 = 2112;
  v31 = [OUTLINED_FUNCTION_37() wrmLinkTypeCellServingCellType];
  _os_log_debug_impl(&dword_23D4DF000, a3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Updating WRM metrics in uplink segment report=%@ wrmLinkTypeSuggestion=%@ wrmLinkTypeChangeReasonCode=%@ wrmLinkTypeWifiRSSI=%@ wrmLinkTypeWifiSNR=%@ wrmLinkTypeWifiCCA=%@ wrmLinkTypeWifiPacketLoss=%@ wrmLinkTypeCellSignalStrength=%@ wrmLinkTypeCellSignalBar=%@ wrmLinkTypeCellServingCellType=%@", buf, 0x80u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)updateClientExperiments:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateClientExperiments:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateClientExperiments:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateQRExperiments:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateQRExperiments:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateQRExperiments:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateOperatingMode:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_19())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_6_0();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_53() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_60())
    {
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_10_0();
      v6 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateProtocolStackDescription:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentRemoteSliceStatusWithPayload:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentRemoteSliceStatusWithPayload:.cold.2()
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentRemoteSliceStatusWithPayload:.cold.3()
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkSliceStatus:hasValuesOnlyForStatus:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_26();
        _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
  v4 = *MEMORY[0x277D85DE8];
}

- (void)processSliceStatusFailedABCSymptom:isRemoteStatus:.cold.1()
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processSliceStatusNotReceivedABCSymptom:isRemoteStatus:.cold.1()
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentSliceStatusWithPayload:shouldUpdateOneToOneRemoteStatus:.cold.1()
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentSliceStatusWithPayload:shouldUpdateOneToOneRemoteStatus:.cold.2()
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_20();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __62__VCAggregatorMultiway_processEventWithCategory_type_payload___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__VCAggregatorMultiway_processEventWithCategory_type_payload___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__VCAggregatorMultiway_processEventWithCategory_type_payload___block_invoke_cold_3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  v3 = 11604;
  _os_log_debug_impl(&dword_23D4DF000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregatorMultiway: New segments started", v2, 0x1Cu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateFIRReceivedCount:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)populateSegmentBytes:toPayload:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_6_4();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateNoRemoteState_Alternate:(uint64_t)a1 state:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_50(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addBoundedAlgoScoreWithTime:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    VRTraceErrorLogLevelToCSTR(7u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)startAlgosScorer:time:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAlgosScorerVideoResolution:time:participantID:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_26();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x26u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setAlgosScorerVideoResolution:time:participantID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (OUTLINED_FUNCTION_74())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)boundedTalgos
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_26();
      _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0x1Cu);
    }
  }

  *self = 0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processHDCaptureEnabledWithPayload:withType:withTimestamp:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

@end