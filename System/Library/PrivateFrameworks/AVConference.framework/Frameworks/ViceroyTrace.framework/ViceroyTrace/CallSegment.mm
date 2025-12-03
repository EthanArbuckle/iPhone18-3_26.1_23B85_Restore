@interface CallSegment
- (CallSegment)initWithDictionary:(id)dictionary;
- (CallSegment)initWithSegmentName:(id)name previousSegmentName:(id)segmentName mode:(unsigned __int16)mode deviceRole:(unsigned __int16)role transportType:(unsigned __int16)type relayServer:(id)server relayType:(unsigned __int16)relayType accessToken:(id)self0 duplicationType:(unsigned __int8)self1 switchConfig:(id)self2 linkProbingConfig:(id *)self3 nwActivity:(id)self4 conversationTimeBase:(id)self5 isInitiator:(BOOL)self6 delegate:(id)self7;
- (id)celltechTelemetry;
- (id)duplicationCategoryForSegmentName:(id)name;
- (id)reportingClientExperimentSettingsDictionary;
- (id)segmentQRReport;
- (id)segmentReport;
- (void)addProtocolStackDescriptionTelemetry:(id)telemetry;
- (void)addQRServerTelemetryToDictionary:(id)dictionary;
- (void)addSegmentWRMReportStats:(id)stats;
- (void)assertCleanCellTech;
- (void)changeDuplicationWithType:(unsigned __int16)type payload:(id)payload;
- (void)dealloc;
- (void)merge:(id)merge;
- (void)processSmartBrakeEvent:(id)event;
- (void)reportSpatialAudioSupport:(id)support;
- (void)reportVideoFeatureStatus:(id)status;
- (void)segmentReport;
- (void)setNWActivityReportingEnabled:(BOOL)enabled;
- (void)updateMaxVideoStallInterval:(double)interval withDelta:(double)delta;
@end

@implementation CallSegment

- (CallSegment)initWithSegmentName:(id)name previousSegmentName:(id)segmentName mode:(unsigned __int16)mode deviceRole:(unsigned __int16)role transportType:(unsigned __int16)type relayServer:(id)server relayType:(unsigned __int16)relayType accessToken:(id)self0 duplicationType:(unsigned __int8)self1 switchConfig:(id)self2 linkProbingConfig:(id *)self3 nwActivity:(id)self4 conversationTimeBase:(id)self5 isInitiator:(BOOL)self6 delegate:(id)self7
{
  typeCopy = type;
  roleCopy = role;
  modeCopy = mode;
  v28.receiver = self;
  v28.super_class = CallSegment;
  v23 = [(VCReportingCommon *)&v28 init];
  v24 = v23;
  if (v23)
  {
    if (name)
    {
      v23->_segmentName = [name copy];
      v24->_previousSegmentName = [segmentName copy];
      v24->_RTT = [[VCReportingHistogram alloc] initWithType:0 bucketValues:0];
      v24->_abnormalRTT = [[VCReportingHistogram alloc] initWithType:1 bucketValues:0];
      v24->_JBQSize = [[VCReportingHistogram alloc] initWithType:10 bucketValues:0];
      v24->_WANVJBQSize = [[VCReportingHistogram alloc] initWithType:44 bucketValues:0];
      v24->_JBQSizeDeltaVidLarger = [[VCReportingHistogram alloc] initWithType:45 bucketValues:0];
      v24->_JBQSizeDeltaAudLarger = [[VCReportingHistogram alloc] initWithType:45 bucketValues:0];
      v24->_JBTarget = [[VCReportingHistogram alloc] initWithType:12 bucketValues:0];
      v24->_JBUnclippedTarget = [[VCReportingHistogram alloc] initWithType:12 bucketValues:0];
      v24->_PLR = [[VCReportingHistogram alloc] initWithType:2 bucketValues:0];
      v24->_VPLR = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
      v24->_abnormalPLR = [[VCReportingHistogram alloc] initWithType:4 bucketValues:0];
      v24->_abnormalBPL = [[VCReportingHistogram alloc] initWithType:5 bucketValues:0];
      v24->_latency = [[VCReportingHistogram alloc] initWithType:9 bucketValues:0];
      v24->_TBR = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
      v24->_RBR = [[VCReportingHistogram alloc] initWithType:7 bucketValues:0];
      v24->_SBR = [[VCReportingHistogram alloc] initWithType:8 bucketValues:0];
      v24->_TVidMedBR = [[VCReportingHistogram alloc] initWithType:61 bucketValues:0];
      v24->_TVidCodecPayload = [[VCReportingHistogram alloc] initWithType:63 bucketValues:0];
      v24->_framerate = [[VCReportingHistogram alloc] initWithType:15 bucketValues:0];
      v24->_jitterErasures = [[VCReportingHistogram alloc] initWithType:16 bucketValues:0];
      v24->_audioErasures = [[VCReportingHistogram alloc] initWithType:16 bucketValues:0];
      v24->_speechErasures = [[VCReportingHistogram alloc] initWithType:16 bucketValues:0];
      v24->_maxConsAudioErasuresHistogram = [[VCReportingHistogram alloc] initWithType:68 bucketValues:0];
      v24->_videoQualityScore = [[VCReportingHistogram alloc] initWithType:17 bucketValues:0];
      v24->_poorConnection = [[VCReportingHistogram alloc] initWithType:18 bucketValues:0];
      v24->_videoResolution = [[VCReportingHistogram alloc] initWithType:19 bucketValues:0];
      v24->_videoEncodingBitrate = [[VCReportingHistogram alloc] initWithType:20 bucketValues:0];
      v24->_videoJitter = [[VCReportingHistogram alloc] initWithType:14 bucketValues:0];
      v24->_REDErasureCompensationRate = [[VCReportingHistogram alloc] initWithType:22 bucketValues:0];
      v24->_REDReceivedCount = [[VCReportingHistogram alloc] initWithType:23 bucketValues:0];
      v24->_REDDiscardedCount = [[VCReportingHistogram alloc] initWithType:24 bucketValues:0];
      v24->_REDNumPayloadsUsed = [[VCReportingHistogram alloc] initWithType:27 bucketValues:0];
      v24->_REDMaxDelay = [[VCReportingHistogram alloc] initWithType:28 bucketValues:0];
      v24->_videoStall = [[VCReportingHistogram alloc] initWithType:30 bucketValues:0];
      v24->_mediaStall = [[VCReportingHistogram alloc] initWithType:32 bucketValues:0];
      v24->_continuousHighRTTReportCount = [[VCReportingHistogram alloc] initWithType:47 bucketValues:0];
      v24->_continuousHighPLRReportCount = [[VCReportingHistogram alloc] initWithType:48 bucketValues:0];
      v24->_continuousHighRTTPLRReportCount = [[VCReportingHistogram alloc] initWithType:49 bucketValues:0];
      v24->_nacksRTXResponseTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
      v24->_nacksRTXLateTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
      v24->_nacksRTXMediaBitRate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
      v24->_nacksRTXRetransmittedMediaBitRate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
      v24->_nacksPLRWithRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
      v24->_nacksPLRWithoutRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
      v24->super._retransmissionResponseTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
      v24->super._retransmissionLateTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
      v24->super._retransmissionActualMediaBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
      v24->super._retransmissionBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
      v24->_evictedFramesLatePacketDelayHist = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
      v24->_audioCodecPayload = [[VCReportingHistogram alloc] initWithType:66 bucketValues:0];
      v24->_audioFrameBundling = [[VCReportingHistogram alloc] initWithType:67 bucketValues:0];
      v24->_audioMediaBitrate = [[VCReportingHistogram alloc] initWithType:64 bucketValues:0];
      v24->_redPayloadBitrate = [[VCReportingHistogram alloc] initWithType:64 bucketValues:0];
      v24->_timescaleRate = [[VCReportingHistogram alloc] initWithType:73 bucketValues:0];
      v24->_silenceTimescaleRate = [[VCReportingHistogram alloc] initWithType:76 bucketValues:0];
      v24->_speechTimescaleRate = [[VCReportingHistogram alloc] initWithType:77 bucketValues:0];
      v24->_pipThermalDurations = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v24->_studioLightDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v24->_centerStageDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v24->_portraitModeDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v24->_reactionActiveDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v24->_eyeContactDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v24->_backgroundReplacementDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
      v24->_callMode = modeCopy;
      v24->_callDeviceRole = roleCopy;
      v24->_callTransportType = typeCopy;
      v24->_isInitiator = initiator;
      v24->_speechErasureTotalTime = 0.0;
      v24->_relayServer = [server copy];
      v24->_relayType = relayType;
      v24->_accessToken = [token copy];
      v24->_fecStatsHolder = objc_alloc_init(VCVideoFECStatsHolder);
      v24->_lossPattern = [[VCReportingHistogram alloc] initWithType:41 bucketValues:0];
      v24->_lossHistogram = [[VCReportingHistogram2D alloc] initWithType:42 bucketValues:0];
      v24->_lossFecHistogram = [[VCReportingHistogram2D alloc] initWithType:42 bucketValues:0];
      v24->_smartBrakeDuration = [[VCReportingHistogram alloc] initWithType:1 bucketValues:0];
      v24->_smartBrakeTargetBitrateStart = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
      v24->_smartBrakeBandwidthStart = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
      v24->_smartBrakeBandwidthEnd = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
      v24->_smartBrakeTargetBitrateAfter5 = [[VCReportingHistogram alloc] initWithType:80 bucketValues:0];
      v24->_smartBrakeTargetBitrateAfter15 = [[VCReportingHistogram alloc] initWithType:80 bucketValues:0];
      v24->_smartBrakeTargetBitrateAfter30 = [[VCReportingHistogram alloc] initWithType:80 bucketValues:0];
      reportingGetDefaults(&v24->_interval, &v24->_frequency);
      objc_storeWeak(&v24->_delegate, delegate);
      v24->_duration = 0;
      v24->_adjustedDuration = 0;
      v24->_minBWE = -1;
      v24->_duplicationType = duplicationType;
      v24->_negotiatedSwitches = [objc_msgSend(config objectForKeyedSubscript:{@"NegSw", "unsignedIntValue"}];
      if ([config objectForKey:@"RemSw"])
      {
        v24->_remoteSwitches = [objc_msgSend(config objectForKeyedSubscript:{@"RemSw", "unsignedIntValue"}];
        v24->_remoteFaceTimeSwitchesAvailable = 1;
      }

      v24->_localAlertStateSwitchCount = 0;
      v24->_remoteAlertStateSwitchCount = 0;
      v24->_dynamicDupeLinkCount = 0;
      v24->_rttMeanTotalDelta = 0.0;
      v24->_plrTierTotalDelta = 0;
      v25 = *&probingConfig->var0;
      v24->_linkProbingConfig.remoteAlertDuration = probingConfig->var3;
      *&v24->_linkProbingConfig.linkProbingVersion = v25;
      v24->_nwActivity = activity;
      if (activity)
      {
        nw_retain(activity);
      }

      v24->_useNwActivitySubmitMetrics = _os_feature_enabled_impl();
      v24->_minAVSyncOffset = 0x7FFFFFFF;
      v24->_maxAVSyncOffset = 0x80000000;
      if (base)
      {
        v24->_conversationTimeBase = [base copy];
        [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
        v24->_startDate = v26;
      }

      v24->_thermalDataCollectors = +[VCAggregatorFaceTime newThermalDataCollectors];
    }

    else
    {

      return 0;
    }
  }

  return v24;
}

- (CallSegment)initWithDictionary:(id)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v18.receiver = self;
  v18.super_class = CallSegment;
  v4 = [(VCReportingCommon *)&v18 init];
  if (!v4)
  {
    return v4;
  }

  v5 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"CONFIG", "copy"}];
  v4->_segmentName = v5;
  if (!v5)
  {

    return 0;
  }

  v4->_previousSegmentName = [objc_msgSend(dictionary objectForKeyedSubscript:{@"PREVCONFIG", "copy"}];
  v4->_RTT = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 0, [dictionary objectForKeyedSubscript:@"RTT"]);
  v4->_abnormalRTT = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 1, [dictionary objectForKeyedSubscript:@"ABRTT"]);
  v4->_JBQSize = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 10, [dictionary objectForKeyedSubscript:@"JBQS"]);
  v4->_WANVJBQSize = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 44, [dictionary objectForKeyedSubscript:@"WVJBQS"]);
  v4->_JBQSizeDeltaVidLarger = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 45, [dictionary objectForKeyedSubscript:@"JBQSDV"]);
  v4->_JBQSizeDeltaAudLarger = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 45, [dictionary objectForKeyedSubscript:@"JBQSDA"]);
  v4->_JBTarget = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 12, [dictionary objectForKeyedSubscript:@"JBT"]);
  v4->_JBUnclippedTarget = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 12, [dictionary objectForKeyedSubscript:@"AUJBL"]);
  v4->_PLR = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 2, [dictionary objectForKeyedSubscript:@"PLR"]);
  v4->_VPLR = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 3, [dictionary objectForKeyedSubscript:@"VPLR"]);
  v4->_abnormalPLR = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 4, [dictionary objectForKeyedSubscript:@"ABPLR"]);
  v4->_abnormalBPL = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 5, [dictionary objectForKeyedSubscript:@"ABBPL"]);
  v4->_latency = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 9, [dictionary objectForKeyedSubscript:@"LAT"]);
  v4->_TBR = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 6, [dictionary objectForKeyedSubscript:@"TBR"]);
  v4->_RBR = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 7, [dictionary objectForKeyedSubscript:@"RBR"]);
  v4->_SBR = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 8, [dictionary objectForKeyedSubscript:@"SBR"]);
  v4->_TVidMedBR = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 61, [dictionary objectForKeyedSubscript:@"TVMBR"]);
  v4->_TVidCodecPayload = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 63, [dictionary objectForKeyedSubscript:@"TVPAY"]);
  v4->_framerate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 15, [dictionary objectForKeyedSubscript:@"FR"]);
  v4->_jitterErasures = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 16, [dictionary objectForKeyedSubscript:@"JE"]);
  v4->_audioErasures = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 16, [dictionary objectForKeyedSubscript:@"AE"]);
  v4->_speechErasures = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 16, [dictionary objectForKeyedSubscript:@"SERCNT"]);
  v4->_maxConsAudioErasuresHistogram = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 68, [dictionary objectForKeyedSubscript:@"MCAEH"]);
  v4->_timescaleRate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 73, [dictionary objectForKeyedSubscript:@"JBTS"]);
  v4->_silenceTimescaleRate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 76, [dictionary objectForKeyedSubscript:@"JBSITS"]);
  v4->_speechTimescaleRate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 77, [dictionary objectForKeyedSubscript:@"JBSPTS"]);
  v4->_videoQualityScore = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 17, [dictionary objectForKeyedSubscript:@"VQS"]);
  v4->_poorConnection = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 18, [dictionary objectForKeyedSubscript:@"PCON"]);
  v4->_videoResolution = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 19, [dictionary objectForKeyedSubscript:@"VRES"]);
  v4->_videoEncodingBitrate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 20, [dictionary objectForKeyedSubscript:@"VEBR"]);
  v4->_videoJitter = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 14, [dictionary objectForKeyedSubscript:@"VJ"]);
  v4->_REDErasureCompensationRate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 22, [dictionary objectForKeyedSubscript:@"REDECR"]);
  v4->_REDReceivedCount = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 23, [dictionary objectForKeyedSubscript:@"REDRC"]);
  v4->_REDDiscardedCount = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 24, [dictionary objectForKeyedSubscript:@"REDDC"]);
  v4->_REDNumPayloadsUsed = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 27, [dictionary objectForKeyedSubscript:@"REDNPU"]);
  v4->_REDMaxDelay = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 28, [dictionary objectForKeyedSubscript:@"REDMD"]);
  v4->_videoStall = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 30, [dictionary objectForKeyedSubscript:@"SVSH"]);
  v4->_mediaStall = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 32, [dictionary objectForKeyedSubscript:@"TMST"]);
  v4->_continuousHighRTTReportCount = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 47, [dictionary objectForKeyedSubscript:@"CHRC"]);
  v4->_continuousHighPLRReportCount = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 48, [dictionary objectForKeyedSubscript:@"CHPC"]);
  v4->_continuousHighRTTPLRReportCount = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 49, [dictionary objectForKeyedSubscript:@"CHRPC"]);
  v4->_pipThermalDurations = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v4->_studioLightDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v4->_centerStageDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v4->_portraitModeDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v4->_reactionActiveDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v4->_eyeContactDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v4->_backgroundReplacementDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v4->_nacksRTXResponseTime = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 50, [dictionary objectForKeyedSubscript:@"NACKAVGRSPT"]);
  v4->_nacksRTXLateTime = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 50, [dictionary objectForKeyedSubscript:@"NACKAVGLATET"]);
  v4->_nacksRTXMediaBitRate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 51, [dictionary objectForKeyedSubscript:@"NACKMBR"]);
  v4->_nacksRTXRetransmittedMediaBitRate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 51, [dictionary objectForKeyedSubscript:@"NACKRTXMBR"]);
  v4->_nacksPLRWithRTX = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 3, [dictionary objectForKeyedSubscript:@"NACKPLRWRTX"]);
  v4->_nacksPLRWithoutRTX = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 3, [dictionary objectForKeyedSubscript:@"NACKPLRWORTX"]);
  v4->super._retransmissionResponseTime = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 50, [dictionary objectForKeyedSubscript:@"ULNACKAVGRESP"]);
  v4->super._retransmissionLateTime = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 50, [dictionary objectForKeyedSubscript:@"ULNACKAVGLATE"]);
  v4->super._retransmissionActualMediaBitrate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 51, [dictionary objectForKeyedSubscript:@"ULNACKMBR"]);
  v4->super._retransmissionBitrate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 51, [dictionary objectForKeyedSubscript:@"ULNACKRBR"]);
  v4->_evictedFramesLatePacketDelayHist = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 79, [dictionary objectForKeyedSubscript:@"VPBEVLPDHIST"]);
  v4->_audioCodecPayload = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 66, [dictionary objectForKeyedSubscript:@"TAPAY"]);
  v4->_audioFrameBundling = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 67, [dictionary objectForKeyedSubscript:@"AATBH"]);
  v4->_audioMediaBitrate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 64, [dictionary objectForKeyedSubscript:@"TAMBR"]);
  v4->_redPayloadBitrate = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 64, [dictionary objectForKeyedSubscript:@"TRPBR"]);
  v4->_smartBrakeDuration = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 1, [dictionary objectForKeyedSubscript:@"SBCGSTDRTN"]);
  v4->_smartBrakeTargetBitrateStart = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 6, [dictionary objectForKeyedSubscript:@"SBTTXRS"]);
  v4->_smartBrakeBandwidthStart = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 6, [dictionary objectForKeyedSubscript:@"SBBWES"]);
  v4->_smartBrakeBandwidthEnd = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 6, [dictionary objectForKeyedSubscript:@"SBBWEE"]);
  v4->_smartBrakeTargetBitrateAfter5 = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 6, [dictionary objectForKeyedSubscript:@"SBTTXR5"]);
  v4->_smartBrakeTargetBitrateAfter15 = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 6, [dictionary objectForKeyedSubscript:@"SBTTXR15"]);
  v4->_smartBrakeTargetBitrateAfter30 = -[VCReportingHistogram initWithType:bucketValues:]([VCReportingHistogram alloc], "initWithType:bucketValues:", 6, [dictionary objectForKeyedSubscript:@"SBTTXR30"]);
  v4->_callMode = [objc_msgSend(dictionary objectForKeyedSubscript:{@"MODE", "intValue"}];
  v4->_callDeviceRole = [objc_msgSend(dictionary objectForKeyedSubscript:{@"DEVROLE", "intValue"}];
  v4->_callTransportType = [objc_msgSend(dictionary objectForKeyedSubscript:{@"TT", "intValue"}];
  [objc_msgSend(dictionary objectForKeyedSubscript:{@"TSERT", "floatValue"}];
  v4->_speechErasureTotalTime = v6;
  reportingGetDefaults(&v4->_interval, &v4->_frequency);
  v7 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"DRTN", "intValue"}];
  v8 = v7 / [(CallSegment *)v4 RTPeriod];
  v4->_duration = v8;
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v4->_adjustedDuration = v9;
  v10 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"TVSP", "intValue"}] / 10000.0 * v4->_adjustedDuration;
  v4->_totalVideoStallTime = v10 * [(CallSegment *)v4 RTPeriod];
  v4->_maxVideoStallInterval = [objc_msgSend(dictionary objectForKeyedSubscript:{@"MVSI", "intValue"}] / 100.0;
  v11 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"TASP", "intValue"}] / 10000.0 * v4->_adjustedDuration;
  v4->_totalAudioStallTime = v11 * [(CallSegment *)v4 RTPeriod];
  v4->_maxAudioStallInterval = [objc_msgSend(dictionary objectForKeyedSubscript:{@"MASI", "intValue"}] / 100.0;
  v4->_maxNoRemotePacketsInterval = [objc_msgSend(dictionary objectForKeyedSubscript:{@"MNRPI", "intValue"}] / 100.0;
  v12 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"TNRPP", "intValue"}] / 10000.0 * v4->_adjustedDuration;
  v4->_totalNoRemotePacketsTime = v12 * [(CallSegment *)v4 RTPeriod];
  v13 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"BBQTL", "intValue"}] / 10000.0 * v4->_adjustedDuration;
  v4->_BBQueueTooLargeCount = (v13 * [(CallSegment *)v4 RTPeriod]);
  v14 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"BBRTL", "intValue"}] / 10000.0 * v4->_adjustedDuration;
  v4->_BBRateTooLowCount = (v14 * [(CallSegment *)v4 RTPeriod]);
  v4->_audioSentPacketCount = 10000 * v4->_adjustedDuration;
  v15 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"AFP", "intValue"}];
  adjustedDuration = v4->_adjustedDuration;
  v4->_audioFlushPacketCount = (v15 * adjustedDuration);
  v4->_videoSentPacketCount = 10000 * adjustedDuration;
  v4->_videoFlushPacketCount = ([objc_msgSend(dictionary objectForKeyedSubscript:{@"VFP", "intValue"}] * v4->_adjustedDuration);
  v4->_averageBWE = [objc_msgSend(dictionary objectForKeyedSubscript:{@"SABWE", "intValue"}] * v4->_adjustedDuration;
  v4->_maxBWE = [objc_msgSend(dictionary objectForKeyedSubscript:{@"SMAXBWE", "intValue"}];
  v4->_minBWE = [objc_msgSend(dictionary objectForKeyedSubscript:{@"SMINBWE", "intValue"}];
  v4->_averageRTT = [objc_msgSend(dictionary objectForKeyedSubscript:{@"SARTT", "intValue"}] / 100.0 * v4->_adjustedDuration;
  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);

  nwActivity = self->_nwActivity;
  if (nwActivity)
  {
    nw_release(nwActivity);
    self->_nwActivity = 0;
  }

  v4.receiver = self;
  v4.super_class = CallSegment;
  [(VCReportingCommon *)&v4 dealloc];
}

- (void)merge:(id)merge
{
  -[VCHistogram merge:](self->_RTT, "merge:", [merge RTT]);
  -[VCHistogram merge:](self->_abnormalRTT, "merge:", [merge abnormalRTT]);
  -[VCHistogram merge:](self->_JBQSize, "merge:", [merge JBQSize]);
  -[VCHistogram merge:](self->_WANVJBQSize, "merge:", [merge WANVJBQSize]);
  -[VCHistogram merge:](self->_JBQSizeDeltaVidLarger, "merge:", [merge JBQSizeDeltaVidLarger]);
  -[VCHistogram merge:](self->_JBQSizeDeltaAudLarger, "merge:", [merge JBQSizeDeltaAudLarger]);
  -[VCHistogram merge:](self->_JBTarget, "merge:", [merge JBTarget]);
  -[VCHistogram merge:](self->_JBUnclippedTarget, "merge:", [merge JBUnclippedTarget]);
  -[VCHistogram merge:](self->_PLR, "merge:", [merge PLR]);
  -[VCHistogram merge:](self->_VPLR, "merge:", [merge VPLR]);
  -[VCHistogram merge:](self->_abnormalPLR, "merge:", [merge abnormalPLR]);
  -[VCHistogram merge:](self->_abnormalBPL, "merge:", [merge abnormalBPL]);
  -[VCHistogram merge:](self->_latency, "merge:", [merge latency]);
  -[VCHistogram merge:](self->_TBR, "merge:", [merge TBR]);
  -[VCHistogram merge:](self->_RBR, "merge:", [merge RBR]);
  -[VCHistogram merge:](self->_SBR, "merge:", [merge SBR]);
  -[VCHistogram merge:](self->_TVidMedBR, "merge:", [merge TVidMedBR]);
  -[VCHistogram merge:](self->_TVidCodecPayload, "merge:", [merge TVidCodecPayload]);
  -[VCHistogram merge:](self->_evictedFramesLatePacketDelayHist, "merge:", [merge evictedFramesLatePacketDelayHist]);
  -[VCHistogram merge:](self->_framerate, "merge:", [merge framerate]);
  -[VCHistogram merge:](self->_jitterErasures, "merge:", [merge jitterErasures]);
  -[VCHistogram merge:](self->_audioErasures, "merge:", [merge audioErasures]);
  -[VCHistogram merge:](self->_speechErasures, "merge:", [merge speechErasures]);
  -[VCHistogram merge:](self->_maxConsAudioErasuresHistogram, "merge:", [merge maxConsAudioErasuresHistogram]);
  -[VCHistogram merge:](self->_videoQualityScore, "merge:", [merge videoQualityScore]);
  -[VCHistogram merge:](self->_poorConnection, "merge:", [merge poorConnection]);
  -[VCHistogram merge:](self->_videoResolution, "merge:", [merge videoResolution]);
  -[VCHistogram merge:](self->_videoEncodingBitrate, "merge:", [merge videoEncodingBitrate]);
  -[VCHistogram merge:](self->_videoJitter, "merge:", [merge videoJitter]);
  -[VCHistogram merge:](self->_REDErasureCompensationRate, "merge:", [merge REDErasureCompensationRate]);
  -[VCHistogram merge:](self->_REDReceivedCount, "merge:", [merge REDReceivedCount]);
  -[VCHistogram merge:](self->_REDDiscardedCount, "merge:", [merge REDDiscardedCount]);
  -[VCHistogram merge:](self->_REDNumPayloadsUsed, "merge:", [merge REDNumPayloadsUsed]);
  -[VCHistogram merge:](self->_REDMaxDelay, "merge:", [merge REDMaxDelay]);
  -[VCHistogram merge:](self->_videoStall, "merge:", [merge videoStall]);
  -[VCHistogram merge:](self->_mediaStall, "merge:", [merge mediaStall]);
  -[VCHistogram merge:](self->_audioCodecPayload, "merge:", [merge audioCodecPayload]);
  -[VCHistogram merge:](self->_audioFrameBundling, "merge:", [merge audioFrameBundling]);
  -[VCHistogram merge:](self->_audioMediaBitrate, "merge:", [merge audioMediaBitrate]);
  -[VCHistogram merge:](self->_redPayloadBitrate, "merge:", [merge redPayloadBitrate]);
  -[VCHistogram merge:](self->_timescaleRate, "merge:", [merge timescaleRate]);
  -[VCHistogram merge:](self->_silenceTimescaleRate, "merge:", [merge silenceTimescaleRate]);
  -[VCHistogram merge:](self->_speechTimescaleRate, "merge:", [merge speechTimescaleRate]);
  -[VCHistogram merge:](self->_pipThermalDurations, "merge:", [merge pipThermalDurations]);
  [merge speechErasureTotalTime];
  self->_speechErasureTotalTime = v5 + self->_speechErasureTotalTime;
  [merge totalMediaStallTime];
  self->_totalMediaStallTime = v6 + self->_totalMediaStallTime;
  maxMediaStallTime = self->_maxMediaStallTime;
  [merge maxMediaStallTime];
  if (maxMediaStallTime >= v8)
  {
    v8 = maxMediaStallTime;
  }

  self->_maxMediaStallTime = v8;
  self->_mediaStallCount += [merge mediaStallCount];
  [merge totalVideoStallTime];
  self->_totalVideoStallTime = v9 + self->_totalVideoStallTime;
  maxVideoStallInterval = self->_maxVideoStallInterval;
  [merge maxVideoStallInterval];
  if (maxVideoStallInterval >= v11)
  {
    v11 = maxVideoStallInterval;
  }

  self->_maxVideoStallInterval = v11;
  [merge totalAudioStallTime];
  self->_totalAudioStallTime = v12 + self->_totalAudioStallTime;
  maxAudioStallInterval = self->_maxAudioStallInterval;
  [merge maxAudioStallInterval];
  if (maxAudioStallInterval >= v14)
  {
    v14 = maxAudioStallInterval;
  }

  self->_maxAudioStallInterval = v14;
  [merge totalNoRemotePacketsTime];
  self->_totalNoRemotePacketsTime = v15 + self->_totalNoRemotePacketsTime;
  maxNoRemotePacketsInterval = self->_maxNoRemotePacketsInterval;
  [merge maxNoRemotePacketsInterval];
  if (maxNoRemotePacketsInterval >= v17)
  {
    v17 = maxNoRemotePacketsInterval;
  }

  self->_maxNoRemotePacketsInterval = v17;
  self->_BBQueueTooLargeCount += [merge BBQueueTooLargeCount];
  self->_BBRateTooLowCount += [merge BBRateTooLowCount];
  self->_audioFlushPacketCount += [merge audioFlushPacketCount];
  self->_audioSentPacketCount += [merge audioSentPacketCount];
  self->_videoFlushPacketCount += [merge videoFlushPacketCount];
  self->_videoSentPacketCount += [merge videoSentPacketCount];
  self->_duration += [merge duration];
  self->_adjustedDuration += [merge adjustedDuration];
  [merge poorConnectionTotalLength];
  self->_poorConnectionTotalLength = v18 + self->_poorConnectionTotalLength;
  poorConnectionMaxLength = self->_poorConnectionMaxLength;
  [merge poorConnectionMaxLength];
  if (poorConnectionMaxLength >= v20)
  {
    v20 = poorConnectionMaxLength;
  }

  self->_poorConnectionMaxLength = v20;
  self->_poorConnectionFrequency += [merge poorConnectionFrequency];
  [merge averageTargetBitrate];
  self->_averageTargetBitrate = v21 + self->_averageTargetBitrate;
  [merge averageJitterErasuresRate];
  self->_averageJitterErasuresRate = v22 + self->_averageJitterErasuresRate;
  [merge averageAudioErasuresRate];
  self->_averageAudioErasuresRate = v23 + self->_averageAudioErasuresRate;
  [merge averageSpeechErasuresRate];
  self->_averageSpeechErasuresRate = v24 + self->_averageSpeechErasuresRate;
  maxConsecutiveAudioErasures = self->_maxConsecutiveAudioErasures;
  maxConsecutiveAudioErasures = [merge maxConsecutiveAudioErasures];
  if (maxConsecutiveAudioErasures <= maxConsecutiveAudioErasures)
  {
    v27 = maxConsecutiveAudioErasures;
  }

  else
  {
    v27 = maxConsecutiveAudioErasures;
  }

  self->_maxConsecutiveAudioErasures = v27;
  [merge averageBWE];
  self->_averageBWE = v28 + self->_averageBWE;
  maxBWE = self->_maxBWE;
  maxBWE = [merge maxBWE];
  if (maxBWE <= maxBWE)
  {
    v31 = maxBWE;
  }

  else
  {
    v31 = maxBWE;
  }

  self->_maxBWE = v31;
  minBWE = self->_minBWE;
  minBWE = [merge minBWE];
  if (minBWE >= minBWE)
  {
    v34 = minBWE;
  }

  else
  {
    v34 = minBWE;
  }

  self->_minBWE = v34;
  self->_totalSuddenBandwidthDropCount += [merge totalSuddenBandwidthDropCount];
  self->_totalMBLRampDownCount += [merge totalMBLRampDownCount];
  [merge averageRTT];
  self->_averageRTT = v35 + self->_averageRTT;
  self->_overshootSendBitrate += [merge overshootSendBitrate];
  self->_undershootSendBitrate += [merge undershootSendBitrate];
  self->_overUtilizedBandwidth += [merge overUtilizedBandwidth];
  self->_underUtilizedBandwidth += [merge underUtilizedBandwidth];
  [merge evictedFramesAverageLatePacketDelay];
  self->_evictedFramesAverageLatePacketDelay = v36 + self->_evictedFramesAverageLatePacketDelay;
  evictedFramesMaxLatePacketDelay = self->_evictedFramesMaxLatePacketDelay;
  [merge evictedFramesMaxLatePacketDelay];
  if (evictedFramesMaxLatePacketDelay >= v38)
  {
    v38 = evictedFramesMaxLatePacketDelay;
  }

  self->_evictedFramesMaxLatePacketDelay = v38;
  self->_ecnEnabledCount += [merge ecnEnabledCount];
  fecStatsHolder = self->_fecStatsHolder;
  fecStatsHolder = [merge fecStatsHolder];

  [(VCVideoFECStatsHolder *)fecStatsHolder merge:fecStatsHolder];
}

- (void)assertCleanCellTech
{
  if (!self->_isLocalCelltechDirty)
  {
    intValue = [(NSNumber *)self->_localCelltech intValue];
    if ((intValue - 8) >= 2)
    {
      if (intValue != 5)
      {
        return;
      }

      v4 = &unk_284FA53C0;
    }

    else
    {
      v4 = &unk_284FA53D8;
    }

    self->_localCelltech = v4;
  }
}

- (void)addQRServerTelemetryToDictionary:(id)dictionary
{
  qrExperiments = self->_qrExperiments;
  if (qrExperiments)
  {

    [dictionary addEntriesFromDictionary:qrExperiments];
  }

  else
  {
    [CallSegment addQRServerTelemetryToDictionary:];
  }
}

- (id)celltechTelemetry
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  IPVersion = self->_IPVersion;
  if (IPVersion)
  {
    [v3 setObject:IPVersion forKeyedSubscript:@"IPVER"];
  }

  if (self->_localCelltech)
  {
    [(CallSegment *)self assertCleanCellTech];
    [v4 setObject:self->_localCelltech forKeyedSubscript:@"LCTCH"];
  }

  isLocalExpensive = self->_isLocalExpensive;
  if (isLocalExpensive)
  {
    [v4 setObject:isLocalExpensive forKeyedSubscript:@"LXPNSV"];
  }

  remoteCelltech = self->_remoteCelltech;
  if (remoteCelltech)
  {
    [v4 setObject:remoteCelltech forKeyedSubscript:@"RCTCH"];
  }

  isRemoteExpensive = self->_isRemoteExpensive;
  if (isRemoteExpensive)
  {
    [v4 setObject:isRemoteExpensive forKeyedSubscript:@"RXPNSV"];
  }

  maxNegotiatedUplinkBitrate = self->_maxNegotiatedUplinkBitrate;
  if (maxNegotiatedUplinkBitrate)
  {
    [v4 setObject:maxNegotiatedUplinkBitrate forKeyedSubscript:@"MNUBRT"];
  }

  maxNegotiatedDownlinkBitrate = self->_maxNegotiatedDownlinkBitrate;
  if (maxNegotiatedDownlinkBitrate)
  {
    [v4 setObject:maxNegotiatedDownlinkBitrate forKeyedSubscript:@"MNDBRT"];
  }

  return v4;
}

- (void)addProtocolStackDescriptionTelemetry:(id)telemetry
{
  relayProtocolStack = self->_relayProtocolStack;
  if (relayProtocolStack)
  {
    [telemetry setObject:relayProtocolStack forKeyedSubscript:@"RPS"];
  }

  if (self->_channelProtocolStack)
  {

    [telemetry setObject:? forKeyedSubscript:?];
  }
}

- (id)reportingClientExperimentSettingsDictionary
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"NCM";
  p_reportingClientExperimentSettings = &self->_reportingClientExperimentSettings;
  v3 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_reportingClientExperimentSettings.networkConditionMonitoringClientExperimentEnabled];
  v6[1] = @"MBD";
  v7[0] = v3;
  v7[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:p_reportingClientExperimentSettings->motionBasedDuplicationClientExperimentEnabled];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)reportVideoFeatureStatus:(id)status
{
  [VCAggregator addVideoFeatureStatus:self->_centerStageStatus histogramKey:@"CSDUR" histogram:self->_centerStageDuration statusKey:@"CSFENB" report:status];
  [VCAggregator addVideoFeatureStatus:self->_portraitModeStatus histogramKey:@"PMDUR" histogram:self->_portraitModeDuration statusKey:@"PMFENB" report:status];
  [VCAggregator addVideoFeatureStatus:self->_studioLightStatus histogramKey:@"SLDUR" histogram:self->_studioLightDuration statusKey:@"SLFENB" report:status];
  [VCAggregator addVideoFeatureStatus:self->_reactionsStatus histogramKey:@"REACDUR" histogram:self->_reactionActiveDuration statusKey:@"REFENB" report:status];
  [VCAggregator addVideoFeatureStatus:self->_eyeContactStatus histogramKey:@"ECDUR" histogram:self->_eyeContactDuration statusKey:@"ECFENB" report:status];
  backgroundReplacementStatus = self->_backgroundReplacementStatus;
  backgroundReplacementDuration = self->_backgroundReplacementDuration;

  [VCAggregator addVideoFeatureStatus:backgroundReplacementStatus histogramKey:@"BGRDUR" histogram:backgroundReplacementDuration statusKey:@"BGRFENB" report:status];
}

- (void)reportSpatialAudioSupport:(id)support
{
  v4 = [MEMORY[0x277CCABA8] numberWithChar:self->_spatialAudioSupported];

  [support setObject:v4 forKeyedSubscript:@"SAFSUP"];
}

- (id)segmentReport
{
  v191[132] = *MEMORY[0x277D85DE8];
  if (self->_duration <= 1)
  {
    if (self->_nwActivity)
    {
      nw_activity_complete_with_reason();
      nw_release(self->_nwActivity);
      dispatchedAggregatedReportCommon = 0;
      self->_nwActivity = 0;
    }

    else
    {
      dispatchedAggregatedReportCommon = 0;
    }

    goto LABEL_200;
  }

  adjustedDuration = self->_adjustedDuration;
  if (adjustedDuration)
  {
    LODWORD(v162) = (self->_averageTargetBitrate / adjustedDuration * 1000.0);
    HIDWORD(v162) = (self->_averageReceiveBitrate / adjustedDuration * 1000.0);
    v163 = (self->_averageSendBitrate / adjustedDuration * 1000.0);
    HIDWORD(v157) = (self->_averageVideoMediaSendBitrate / adjustedDuration * 1000.0);
    LODWORD(v154) = (self->_averageVideoMediaReceiveBitrate / adjustedDuration * 1000.0);
    HIDWORD(v154) = (self->_averageTotalVideoSendBitrate / adjustedDuration * 1000.0);
    LODWORD(v155) = (self->_averageVideoFECSendBitrate / adjustedDuration * 1000.0);
    HIDWORD(v155) = (self->_averageVideoHeaderSendBitrate / adjustedDuration * 1000.0);
    *&v5 = self->_averageTotalVideoRecvBitrate / adjustedDuration * 1000.0;
    v6 = *&v5;
    LODWORD(v5) = self->_overshootSendBitrate;
    *&v7 = v5 * 1000.0 / adjustedDuration;
    LODWORD(v158) = (self->_averageVideoFECReceiveBitrate / adjustedDuration * 1000.0);
    HIDWORD(v158) = *&v7;
    LODWORD(v7) = self->_undershootSendBitrate;
    *&v8 = v7 * 1000.0 / adjustedDuration;
    LODWORD(v156) = v6;
    HIDWORD(v156) = *&v8;
    LODWORD(v8) = self->_overUtilizedBandwidth;
    *&v9 = v8 * 1000.0 / adjustedDuration;
    v10 = *&v9;
    LODWORD(v9) = self->_underUtilizedBandwidth;
    LODWORD(v157) = (v9 * 1000.0 / adjustedDuration);
  }

  else
  {
    v10 = 0;
    v157 = 0;
    v158 = 0;
    v154 = 0;
    v155 = 0;
    v163 = 0;
    v162 = 0;
    v156 = 0;
  }

  totalVideoStallTime = self->_totalVideoStallTime;
  if (totalVideoStallTime <= ([(CallSegment *)self RTPeriod]* adjustedDuration))
  {
    v13 = self->_totalVideoStallTime;
  }

  else
  {
    v12 = self->_adjustedDuration;
    v13 = ([(CallSegment *)self RTPeriod]* v12);
  }

  v135 = v13;
  totalAudioStallTime = self->_totalAudioStallTime;
  v15 = self->_adjustedDuration;
  if (totalAudioStallTime <= ([(CallSegment *)self RTPeriod]* v15))
  {
    v17 = self->_totalAudioStallTime;
  }

  else
  {
    v16 = self->_adjustedDuration;
    v17 = ([(CallSegment *)self RTPeriod]* v16);
  }

  totalNoRemotePacketsTime = self->_totalNoRemotePacketsTime;
  v19 = self->_adjustedDuration;
  v159 = v10;
  if (totalNoRemotePacketsTime <= ([(CallSegment *)self RTPeriod]* v19))
  {
    v21 = self->_totalNoRemotePacketsTime;
  }

  else
  {
    v20 = self->_adjustedDuration;
    v21 = ([(CallSegment *)self RTPeriod]* v20);
  }

  BBQueueTooLargeCount = self->_BBQueueTooLargeCount;
  v23 = self->_adjustedDuration;
  if (BBQueueTooLargeCount <= [(CallSegment *)self RTPeriod]* v23)
  {
    v25 = self->_BBQueueTooLargeCount;
  }

  else
  {
    v24 = self->_adjustedDuration;
    v25 = [(CallSegment *)self RTPeriod]* v24;
  }

  v150 = v25;
  BBRateTooLowCount = self->_BBRateTooLowCount;
  v27 = self->_adjustedDuration;
  if (BBRateTooLowCount <= [(CallSegment *)self RTPeriod]* v27)
  {
    v29 = self->_BBRateTooLowCount;
  }

  else
  {
    v28 = self->_adjustedDuration;
    v29 = [(CallSegment *)self RTPeriod]* v28;
  }

  v149 = v29;
  audioFlushPacketCount = self->_audioFlushPacketCount;
  if (audioFlushPacketCount >= self->_audioSentPacketCount)
  {
    audioFlushPacketCount = self->_audioSentPacketCount;
  }

  v151 = audioFlushPacketCount;
  videoFlushPacketCount = self->_videoFlushPacketCount;
  if (videoFlushPacketCount >= self->_videoSentPacketCount)
  {
    videoFlushPacketCount = self->_videoSentPacketCount;
  }

  v133 = videoFlushPacketCount;
  poorConnectionTotalLength = self->_poorConnectionTotalLength;
  v33 = self->_adjustedDuration;
  if (poorConnectionTotalLength <= ([(CallSegment *)self RTPeriod]* v33))
  {
    v35 = self->_poorConnectionTotalLength;
  }

  else
  {
    v34 = self->_adjustedDuration;
    v35 = ([(CallSegment *)self RTPeriod]* v34);
  }

  v134 = v35;
  v36 = self->_adjustedDuration;
  if (v36)
  {
    v161 = (self->_averageBWE / v36);
  }

  else
  {
    v161 = 0;
  }

  initialSettledBitrate = [(VCAdaptiveLearningDelegate *)self->_delegate initialSettledBitrate];
  v38 = [(NSString *)self->_segmentName substringToIndex:3];
  v160 = [(VCAdaptiveLearningDelegate *)self->_delegate previousISBRForSegment:v38];
  if ([(VCAdaptiveLearningDelegate *)self->_delegate adaptiveLearningState])
  {
    v40 = [(NSString *)self->_segmentName containsString:@"D"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (v40)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v42 = VRTraceErrorLogLevelToCSTR(8u);
        v43 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            segmentName = self->_segmentName;
            *buf = 136315906;
            *&buf[4] = v42;
            *&buf[12] = 2080;
            *&buf[14] = "[CallSegment segmentReport]";
            *&buf[22] = 1024;
            LODWORD(v171) = 1336;
            WORD2(v171) = 2112;
            *(&v171 + 6) = segmentName;
            _os_log_impl(&dword_23D4DF000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AdaptiveLearning: Ignoring duplication segment [%@]", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          [(CallSegment *)v42 segmentReport];
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v45 = VRTraceErrorLogLevelToCSTR(7u);
        v46 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v47 = self->_segmentName;
          *buf = 136315906;
          *&buf[4] = v45;
          *&buf[12] = 2080;
          *&buf[14] = "[CallSegment segmentReport]";
          *&buf[22] = 1024;
          LODWORD(v171) = 1333;
          WORD2(v171) = 2112;
          *(&v171 + 6) = v47;
          _os_log_impl(&dword_23D4DF000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AdaptiveLearning: Updating Target Bitrate history for segment [%@]", buf, 0x26u);
        }
      }

      [(VCAdaptiveLearningDelegate *)self->_delegate updateSegment:v38 TBR:v162 ISBTR:initialSettledBitrate SATXBR:v163 SARBR:HIDWORD(v162) BWE:v161];
    }
  }

  v48 = self->_adjustedDuration;
  if (!v48)
  {
    v144 = 0;
    v146 = 0;
    v148 = 0;
LABEL_57:
    v147 = 0;
LABEL_58:
    v145 = 0;
LABEL_59:
    v143 = 0;
    goto LABEL_60;
  }

  LODWORD(v39) = self->_totalFIRDemandCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v48);
  v148 = v39;
  v49 = self->_adjustedDuration;
  if (!v49)
  {
    v144 = 0;
    v146 = 0;
    goto LABEL_57;
  }

  LODWORD(v39) = self->_totalFIRCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v49);
  v147 = v39;
  v50 = self->_adjustedDuration;
  if (!v50)
  {
    v144 = 0;
    v146 = 0;
    goto LABEL_58;
  }

  LODWORD(v39) = self->_totalFIRFailSafeCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v50);
  HIDWORD(v146) = v39;
  v51 = self->_adjustedDuration;
  if (!v51)
  {
    v144 = 0;
    LODWORD(v146) = 0;
    goto LABEL_58;
  }

  LODWORD(v39) = self->_videoFrameDecodedButSkippedCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v51);
  v145 = v39;
  v52 = self->_adjustedDuration;
  if (!v52)
  {
    v144 = 0;
    LODWORD(v146) = 0;
    goto LABEL_59;
  }

  LODWORD(v39) = self->_videoFrameIncompleteNextTSCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v52);
  LODWORD(v146) = v39;
  v53 = self->_adjustedDuration;
  if (!v53)
  {
    v144 = 0;
    goto LABEL_59;
  }

  LODWORD(v39) = self->_videoFrameTotalIncompleteCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v53);
  v143 = v39;
  v54 = self->_adjustedDuration;
  if (!v54)
  {
    v144 = 0;
    goto LABEL_60;
  }

  LODWORD(v39) = self->_decodedVideoFrameEnqueueCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v54);
  v144 = v39;
  v55 = self->_adjustedDuration;
  if (!v55)
  {
LABEL_60:
    v140 = 0;
    v142 = 0;
LABEL_61:
    v141 = 0;
    goto LABEL_62;
  }

  LODWORD(v39) = self->_videoFrameReceivedCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v55);
  v142 = v39;
  v56 = self->_adjustedDuration;
  if (!v56)
  {
    v140 = 0;
    goto LABEL_61;
  }

  LODWORD(v39) = self->_videoFrameExpectedCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v56);
  v141 = v39;
  v57 = self->_adjustedDuration;
  if (!v57)
  {
    v140 = 0;
    goto LABEL_62;
  }

  LODWORD(v39) = self->_encodedVideoFrameCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v57);
  v140 = v39;
  v58 = self->_adjustedDuration;
  if (!v58)
  {
LABEL_62:
    v139 = 0;
    goto LABEL_63;
  }

  LODWORD(v39) = self->_captureVideoFrameCounter;
  v39 = *&v39 * 1000.0 / ([(CallSegment *)self RTPeriod]* v58);
  v139 = v39;
LABEL_63:
  mediaStallCount = self->_mediaStallCount;
  if (mediaStallCount)
  {
    v39 = self->_totalMediaStallTime / mediaStallCount * 1000.0;
    v152 = v39;
  }

  else
  {
    v152 = 0;
  }

  evictedFramesAnalysisValidIntervals = self->_evictedFramesAnalysisValidIntervals;
  if (evictedFramesAnalysisValidIntervals)
  {
    v39 = self->_evictedFramesAverageLatePacketDelay * 1000.0 / evictedFramesAnalysisValidIntervals;
    v137 = v39;
  }

  else
  {
    v137 = 0;
  }

  evictedFramesTrackedCount = self->_evictedFramesTrackedCount;
  if (evictedFramesTrackedCount)
  {
    LODWORD(v39) = self->_evictedFramesRecoveredCount;
    v39 = *&v39 * 10000.0 / evictedFramesTrackedCount;
    v138 = v39;
  }

  else
  {
    v138 = 0;
  }

  v62 = self->_adjustedDuration;
  v63 = 0.0;
  v64 = 0.0;
  if (v62)
  {
    LODWORD(v39) = self->_ecnEnabledCount;
    v64 = *&v39 * 10000.0 / v62;
  }

  dynamicDupeLinkCount = self->_dynamicDupeLinkCount;
  v66 = 0.0;
  if (dynamicDupeLinkCount)
  {
    v63 = self->_rttMeanTotalDelta / dynamicDupeLinkCount;
    v66 = (self->_plrTierTotalDelta / dynamicDupeLinkCount);
  }

  if (v62)
  {
    v67 = (self->_averageJitterQueueSizeChanges / v62);
    v153 = self->_averageJitterQueueSize / v62;
    timeWeightedJitterQueueSize = self->_timeWeightedJitterQueueSize;
    v69 = timeWeightedJitterQueueSize / v62;
    LODWORD(timeWeightedJitterQueueSize) = self->_lateFramesScheduledCount;
    v136 = (*&timeWeightedJitterQueueSize * 1000.0 / ([(CallSegment *)self RTPeriod]* v62));
    v62 = self->_adjustedDuration;
  }

  else
  {
    v153 = 0;
    v136 = 0;
    v69 = 0.0;
    v67 = 0.0;
  }

  v70 = [(CallSegment *)self RTPeriod]* v62;
  v168.receiver = self;
  v168.super_class = CallSegment;
  dispatchedAggregatedReportCommon = [(VCReportingCommon *)&v168 dispatchedAggregatedReportCommon];
  v71 = self->_segmentName;
  if (!v71)
  {
    v71 = &stru_284F80940;
  }

  v190[0] = @"CONFIG";
  v190[1] = @"PREVCONFIG";
  previousSegmentName = self->_previousSegmentName;
  if (!previousSegmentName)
  {
    previousSegmentName = &stru_284F80940;
  }

  v191[0] = v71;
  v191[1] = previousSegmentName;
  v190[2] = @"MODE";
  v191[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_callMode];
  v190[3] = @"DEVROLE";
  v191[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_callDeviceRole];
  v190[4] = @"TT";
  v191[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_callTransportType];
  v190[5] = @"INTTR";
  v191[5] = [MEMORY[0x277CCABA8] numberWithBool:self->_isInitiator];
  v190[6] = @"SMLRN";
  v191[6] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate adaptiveLearningState](self->_delegate, "adaptiveLearningState")}];
  v190[7] = @"DRTN";
  v191[7] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[CallSegment RTPeriod](self, "RTPeriod") * self->_duration}];
  v190[8] = @"RTT";
  v191[8] = [(VCHistogram *)self->_RTT description];
  v190[9] = @"ABRTT";
  v191[9] = [(VCHistogram *)self->_abnormalRTT description];
  v190[10] = @"TBR";
  v191[10] = [(VCHistogram *)self->_TBR description];
  v190[11] = @"RBR";
  v191[11] = [(VCHistogram *)self->_RBR description];
  v190[12] = @"SBR";
  v191[12] = [(VCHistogram *)self->_SBR description];
  v190[13] = @"JBQS";
  v191[13] = [(VCHistogram *)self->_JBQSize description];
  v190[14] = @"WVJBQS";
  v191[14] = [(VCHistogram *)self->_WANVJBQSize description];
  v190[15] = @"JBQSDV";
  v191[15] = [(VCHistogram *)self->_JBQSizeDeltaVidLarger description];
  v190[16] = @"JBQSDA";
  v191[16] = [(VCHistogram *)self->_JBQSizeDeltaAudLarger description];
  v190[17] = @"JBT";
  v191[17] = [(VCHistogram *)self->_JBTarget description];
  v190[18] = @"AUJBL";
  v191[18] = [(VCHistogram *)self->_JBUnclippedTarget description];
  v190[19] = @"LAT";
  v191[19] = [(VCHistogram *)self->_latency description];
  v190[20] = @"REDECR";
  v191[20] = [(VCHistogram *)self->_REDErasureCompensationRate description];
  v190[21] = @"REDRC";
  v191[21] = [(VCHistogram *)self->_REDReceivedCount description];
  v190[22] = @"REDDC";
  v191[22] = [(VCHistogram *)self->_REDDiscardedCount description];
  v190[23] = @"REDNPU";
  v191[23] = [(VCHistogram *)self->_REDNumPayloadsUsed description];
  v190[24] = @"REDMD";
  v191[24] = [(VCHistogram *)self->_REDMaxDelay description];
  v190[25] = @"JE";
  v191[25] = [(VCHistogram *)self->_jitterErasures description];
  v190[26] = @"AE";
  v191[26] = [(VCHistogram *)self->_audioErasures description];
  v190[27] = @"SERCNT";
  v191[27] = [(VCHistogram *)self->_speechErasures description];
  v190[28] = @"MCAEH";
  v191[28] = [(VCHistogram *)self->_maxConsAudioErasuresHistogram description];
  v190[29] = @"JBTS";
  v191[29] = [(VCHistogram *)self->_timescaleRate description];
  v190[30] = @"JBSITS";
  v191[30] = [(VCHistogram *)self->_silenceTimescaleRate description];
  v190[31] = @"JBSPTS";
  v191[31] = [(VCHistogram *)self->_speechTimescaleRate description];
  v190[32] = @"TSERT";
  v191[32] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_speechErasureTotalTime];
  v190[33] = @"TMST";
  v191[33] = [(VCHistogram *)self->_mediaStall description];
  v190[34] = @"MSMAX";
  v191[34] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxMediaStallTime * 1000.0)];
  v190[35] = @"AMST";
  v191[35] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v152];
  v190[36] = @"MSTCNT";
  v191[36] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_mediaStallCount];
  v190[37] = @"TASP";
  if (v70)
  {
    v73 = (v17 / v70 * 10000.0);
  }

  else
  {
    v73 = 0;
  }

  v191[37] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v73];
  v190[38] = @"MASI";
  v191[38] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxAudioStallInterval * 100.0)];
  v190[39] = @"TNRPP";
  if (v70)
  {
    v74 = (v21 / v70 * 10000.0);
  }

  else
  {
    v74 = 0;
  }

  v191[39] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v74];
  v190[40] = @"MNRPI";
  v191[40] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxNoRemotePacketsInterval * 100.0)];
  v190[41] = @"BBQTL";
  if (v70)
  {
    v75 = (v150 / v70 * 10000.0);
  }

  else
  {
    v75 = 0;
  }

  v191[41] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v75];
  v190[42] = @"BBRTL";
  if (v70)
  {
    v76 = (v149 / v70 * 10000.0);
  }

  else
  {
    v76 = 0;
  }

  v191[42] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v76];
  v190[43] = @"AFP";
  audioSentPacketCount = self->_audioSentPacketCount;
  if (audioSentPacketCount)
  {
    v78 = (v151 / audioSentPacketCount * 10000.0);
  }

  else
  {
    v78 = 0;
  }

  v191[43] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v78];
  v190[44] = @"SATXBR";
  v191[44] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v162];
  v190[45] = @"SARBR";
  v191[45] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v162)];
  v190[46] = @"SASBR";
  v191[46] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v163];
  v190[47] = @"AVTSBR";
  v191[47] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v154)];
  v190[48] = @"AVMRBR";
  v191[48] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v154];
  v190[49] = @"AVMSBR";
  v191[49] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v157)];
  v190[50] = @"AVHSBR";
  v191[50] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v155)];
  v190[51] = @"AVFSBR";
  v191[51] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v155];
  v190[52] = @"AVFRBR";
  v191[52] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v158];
  v190[53] = @"AVTRBR";
  v191[53] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v156];
  v190[54] = @"AOVSBR";
  v191[54] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v158)];
  v190[55] = @"AUNSBR";
  v191[55] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v156)];
  v190[56] = @"AOVBWE";
  v191[56] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v159];
  v190[57] = @"AUNBWE";
  v191[57] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v157];
  v190[58] = @"SAJEAP";
  v79 = self->_adjustedDuration;
  if (v79)
  {
    v80 = (self->_averageJitterErasuresRate / v79);
  }

  else
  {
    v80 = 0;
  }

  v191[58] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v80];
  v190[59] = @"SAEAP";
  v81 = self->_adjustedDuration;
  if (v81)
  {
    v82 = (self->_averageAudioErasuresRate / v81);
  }

  else
  {
    v82 = 0;
  }

  v191[59] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v82];
  v190[60] = @"SASEAP";
  v83 = self->_adjustedDuration;
  if (v83)
  {
    v84 = (self->_averageSpeechErasuresRate / v83);
  }

  else
  {
    v84 = 0;
  }

  v191[60] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v84];
  v190[61] = @"SMCAE";
  v191[61] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxConsecutiveAudioErasures];
  v190[62] = @"SABWE";
  v191[62] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v161];
  v190[63] = @"SMAXBWE";
  v191[63] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxBWE];
  v190[64] = @"SMINBWE";
  v191[64] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_minBWE];
  v190[65] = @"SSBWD";
  v191[65] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_totalSuddenBandwidthDropCount], 3);
  v190[66] = @"SRDMBL";
  v191[66] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_totalMBLRampDownCount], 3);
  v190[67] = @"SARTT";
  v85 = self->_adjustedDuration;
  if (v85)
  {
    v86 = (self->_averageRTT / v85 * 100.0);
  }

  else
  {
    v86 = 0;
  }

  v191[67] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v86];
  v190[68] = @"PLR";
  v191[68] = [(VCHistogram *)self->_PLR description];
  v190[69] = @"ABPLR";
  v191[69] = [(VCHistogram *)self->_abnormalPLR description];
  v190[70] = @"ABBPL";
  v191[70] = [(VCHistogram *)self->_abnormalBPL description];
  v190[71] = @"STATBR";
  v191[71] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate shortTermAverageTBRForSegment:](self->_delegate, "shortTermAverageTBRForSegment:", v38)}];
  v190[72] = @"LTATBR";
  v191[72] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate longTermAverageTBRForSegment:](self->_delegate, "longTermAverageTBRForSegment:", v38)}];
  v190[73] = @"LTAISBR";
  v191[73] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate longTermAverageISBRForSegment:](self->_delegate, "longTermAverageISBRForSegment:", v38)}];
  v190[74] = @"STAISBR";
  v191[74] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate shortTermAverageISBRForSegment:](self->_delegate, "shortTermAverageISBRForSegment:", v38)}];
  v190[75] = @"PISBR";
  v191[75] = [MEMORY[0x277CCABA8] numberWithInt:v160];
  v190[76] = @"LTASATXBR";
  v191[76] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate longTermAverageSATXBRForSegment:](self->_delegate, "longTermAverageSATXBRForSegment:", v38)}];
  v190[77] = @"STASATXBR";
  v191[77] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate shortTermAverageSATXBRForSegment:](self->_delegate, "shortTermAverageSATXBRForSegment:", v38)}];
  v190[78] = @"LTASARBR";
  v191[78] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate longTermAverageSARBRForSegment:](self->_delegate, "longTermAverageSARBRForSegment:", v38)}];
  v190[79] = @"SRASARBR";
  v191[79] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate shortTermAverageSARBRForSegment:](self->_delegate, "shortTermAverageSARBRForSegment:", v38)}];
  v190[80] = @"LTABWE";
  v191[80] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate longTermAverageBWEForSegment:](self->_delegate, "longTermAverageBWEForSegment:", v38)}];
  v190[81] = @"STABWE";
  v191[81] = [MEMORY[0x277CCABA8] numberWithInt:{-[VCAdaptiveLearningDelegate shortTermAverageBWEForSegment:](self->_delegate, "shortTermAverageBWEForSegment:", v38)}];
  v190[82] = @"OOOPCT";
  v191[82] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_significantOOOPacketCount];
  v190[83] = @"SAAUDPLR";
  v88 = self->_audioSentPacketCount;
  if (v88)
  {
    LODWORD(v87) = self->_audioRecvPacketCount;
    v89 = ((1.0 - v87 / v88) * 10000.0);
  }

  else
  {
    v89 = 0;
  }

  v191[83] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v89];
  v190[84] = @"SCDTXDB";
  v191[84] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalCellDupTxDataBytes], 4);
  v190[85] = @"SCDRXDB";
  v191[85] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalCellDupRxDataBytes], 4);
  v190[86] = @"SUCBTXDB";
  v191[86] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalUsedCellBudgetTxDataBytes], 4);
  v190[87] = @"SUCBRXDB";
  v191[87] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalUsedCellBudgetRxDataBytes], 4);
  v190[88] = @"SCTXDB";
  v191[88] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalCellTxDataBytes], 4);
  v190[89] = @"SCRXDB";
  v191[89] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalCellRxDataBytes], 4);
  v190[90] = @"SWTXDB";
  v191[90] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalWifiTxDataBytes], 4);
  v190[91] = @"SWRXDB";
  v191[91] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalWifiRxDataBytes], 4);
  v190[92] = @"MAXNRPT";
  v191[92] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_duplicationMaxNoRemotePacketTime * 1000.0)];
  v190[93] = @"MAXRNRPT";
  v191[93] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_duplicationMaxRemoteNoRemotePacketTime * 1000.0)];
  v190[94] = @"NEGSW";
  v191[94] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_negotiatedSwitches];
  v190[95] = @"RVER";
  v191[95] = &unk_284FA53F0;
  v190[96] = @"VCRCPROFNUM";
  v191[96] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_vcrcProfileNumber];
  v190[97] = @"LOCALRTCNT";
  v191[97] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_localAlertStateSwitchCount], 3);
  v190[98] = @"REMALRTCNT";
  v191[98] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_remoteAlertStateSwitchCount], 3);
  v190[99] = @"LNKPRBVER";
  v191[99] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_linkProbingConfig.linkProbingVersion];
  v190[100] = @"REMLNKPRBVER";
  v191[100] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_linkProbingConfig.remoteLinkProbingVersion];
  v190[101] = @"DYNDUPLNKCNT";
  v191[101] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_dynamicDupeLinkCount], 3);
  v190[102] = @"RTTMEANDLT";
  v191[102] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v63], 3);
  v190[103] = @"PLRTIERDLT";
  v191[103] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v66], 3);
  v190[104] = @"PCHADEL";
  v191[104] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:self->_primaryConnHealthAllowedDelay], 2);
  v190[105] = @"ECNP";
  v191[105] = [MEMORY[0x277CCABA8] numberWithDouble:v64];
  v190[106] = @"CMAV";
  v191[106] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_coreMotionActivityValue];
  v190[107] = @"CMAC";
  v191[107] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_coreMotionActivityConfidence];
  v190[108] = @"AJBSCH";
  v191[108] = [MEMORY[0x277CCABA8] numberWithDouble:v67];
  v190[109] = @"AJBL";
  v191[109] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v153];
  v190[110] = @"MJBL";
  v191[110] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxJitterQueueSize];
  v190[111] = @"TWJBL";
  v191[111] = [MEMORY[0x277CCABA8] numberWithDouble:v69];
  v190[112] = @"CHRC";
  v191[112] = [(VCHistogram *)self->_continuousHighRTTReportCount description];
  v190[113] = @"CHPC";
  v191[113] = [(VCHistogram *)self->_continuousHighPLRReportCount description];
  v190[114] = @"CHRPC";
  v191[114] = [(VCHistogram *)self->_continuousHighRTTPLRReportCount description];
  v190[115] = @"RTXNacksEnabled";
  v191[115] = [MEMORY[0x277CCABA8] numberWithBool:self->_serverPacketRetransmissionsForVideoEnabled];
  v190[116] = @"RTXNacksDelayedEnabled";
  v191[116] = [MEMORY[0x277CCABA8] numberWithBool:self->_serverPacketRetransmissionsExtraDelayBudgetEnabled];
  v190[117] = @"RTXNacksConfigVersion";
  v191[117] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_nackGeneratorConfigVersion];
  v190[118] = @"TAPAY";
  v191[118] = [(VCHistogram *)self->_audioCodecPayload description];
  v190[119] = @"AATBH";
  v191[119] = [(VCHistogram *)self->_audioFrameBundling description];
  v190[120] = @"TAMBR";
  v191[120] = [(VCHistogram *)self->_audioMediaBitrate description];
  v190[121] = @"TRPBR";
  v191[121] = [(VCHistogram *)self->_redPayloadBitrate description];
  v190[122] = @"CAMCENSTAGE";
  v191[122] = [MEMORY[0x277CCABA8] numberWithBool:self->_isCenterStageEnabled];
  v190[123] = @"CAMB";
  v191[123] = [MEMORY[0x277CCABA8] numberWithBool:self->_isPortraitBlurEnabled];
  v190[124] = @"TPSSCTR";
  v191[124] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_packetSendSuccessCounter];
  v190[125] = @"TPSFCTR";
  v191[125] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_packetSendFailureCounter];
  v190[126] = @"RtcpForLoss";
  v191[126] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_rtcpPSFBForLossFeedbackEnabled];
  v190[127] = @"RtcpForLtrAck";
  v191[127] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_rtcpPSFBForLtrAckEnabled];
  v190[128] = @"CPT";
  v191[128] = [MEMORY[0x277CCABA8] numberWithUnsignedShort:self->_connectionProtocolType];
  v190[129] = @"AAMRBR";
  v90 = self->_adjustedDuration;
  if (v90)
  {
    v91 = (self->_callAverageAudioRxBitrate / v90 * 1000.0);
  }

  else
  {
    v91 = 0;
  }

  v191[129] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v91];
  v190[130] = @"AAMTBR";
  v92 = self->_adjustedDuration;
  if (v92)
  {
    v93 = (self->_callAverageAudioTxBitrate / v92 * 1000.0);
  }

  else
  {
    v93 = 0;
  }

  v191[130] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v93];
  v190[131] = @"DIAFELD";
  v191[131] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_reportingClientExperimentSettings.detectInactiveAudioFramesAACELD];
  [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v191, v190, 132)}];
  if (self->_remoteFaceTimeSwitchesAvailable)
  {
    v188 = @"REMSW";
    v189 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_remoteSwitches];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v189, &v188, 1)}];
  }

  if ([(VCDurationHistogram *)self->_pipThermalDurations totalDuration])
  {
    [dispatchedAggregatedReportCommon setObject:-[VCHistogram description](self->_pipThermalDurations forKeyedSubscript:{"description"), @"PIPDUR"}];
  }

  [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", -[CallSegment isApplePersonalHotspot](self, "isApplePersonalHotspot")), @"PHS"}];
  if (self->_linkPreferSuggestion != 255)
  {
    v186[0] = @"LNKSUG";
    v187[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:?];
    v186[1] = @"LNKSCR";
    v187[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_linkConfidenceScore];
    v186[2] = @"LNKDEC";
    v187[2] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_linkPreferDecision];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v187, v186, 3)}];
  }

  if (self->_linkIPPreference != 255)
  {
    v184 = @"LNKIP";
    v185 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:?];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v185, &v184, 1)}];
  }

  if (self->_isRTXTelemetryAvailable)
  {
    v182[0] = @"NACKS";
    v183[0] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_nacksSent];
    v182[1] = @"NACKF";
    v183[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_nacksFulfilled];
    v182[2] = @"NACKFOT";
    v183[2] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_nacksFulfilledOnTime];
    v182[3] = @"UNACKS";
    v183[3] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_uniqueNacksSent];
    v182[4] = @"UNACKSRATE";
    v94 = 0.0;
    v95 = 0.0;
    if (v70)
    {
      v95 = self->_uniqueNacksSent / v70;
    }

    v183[4] = [MEMORY[0x277CCABA8] numberWithDouble:v95];
    v182[5] = @"NACKSRATE";
    if (v70)
    {
      v94 = self->_nacksSent / v70;
    }

    v183[5] = [MEMORY[0x277CCABA8] numberWithDouble:v94];
    v182[6] = @"NACKFRATE";
    v96 = 0.0;
    v97 = 0.0;
    if (v70)
    {
      v97 = self->_nacksFulfilled / v70;
    }

    v183[6] = [MEMORY[0x277CCABA8] numberWithDouble:v97];
    v182[7] = @"NACKFOTRATE";
    if (v70)
    {
      v96 = self->_nacksFulfilledOnTime / v70;
    }

    v183[7] = [MEMORY[0x277CCABA8] numberWithDouble:v96];
    v182[8] = @"NACKFASSMRTX";
    v98 = 0.0;
    v99 = 0.0;
    if (v70)
    {
      v99 = self->_assembledFramesWithRTXPacketsCount / v70;
    }

    v183[8] = [MEMORY[0x277CCABA8] numberWithDouble:v99];
    v182[9] = @"NACKLSCHFRTX";
    if (v70)
    {
      v98 = self->_lateFramesScheduledWithRTXCount / v70;
    }

    v183[9] = [MEMORY[0x277CCABA8] numberWithDouble:v98];
    v182[10] = @"NACKFFASSMRTX";
    if (v70)
    {
      v100 = self->_failedToAssembleFramesWithRTXPacketsCount / v70;
    }

    else
    {
      v100 = 0.0;
    }

    v183[10] = [MEMORY[0x277CCABA8] numberWithDouble:v100];
    v182[11] = @"NACKAVGRSPT";
    v183[11] = [(VCHistogram *)self->_nacksRTXResponseTime description];
    v182[12] = @"NACKAVGLATET";
    v183[12] = [(VCHistogram *)self->_nacksRTXLateTime description];
    v182[13] = @"NACKMBR";
    v183[13] = [(VCHistogram *)self->_nacksRTXMediaBitRate description];
    v182[14] = @"NACKRTXMBR";
    v183[14] = [(VCHistogram *)self->_nacksRTXRetransmittedMediaBitRate description];
    v182[15] = @"NACKPLRWRTX";
    v183[15] = [(VCHistogram *)self->_nacksPLRWithRTX description];
    v182[16] = @"NACKPLRWORTX";
    v183[16] = [(VCHistogram *)self->_nacksPLRWithoutRTX description];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v183, v182, 17)}];
  }

  [dispatchedAggregatedReportCommon addEntriesFromDictionary:{-[CallSegment reportingClientExperimentSettingsDictionary](self, "reportingClientExperimentSettingsDictionary")}];
  [dispatchedAggregatedReportCommon addEntriesFromDictionary:{-[VCReportingCommon getUplinkRTXelemetryWithDuration:](self, "getUplinkRTXelemetryWithDuration:", v70)}];
  [dispatchedAggregatedReportCommon addEntriesFromDictionary:{-[CallSegment celltechTelemetry](self, "celltechTelemetry")}];
  if (self->_conversationTimeBase)
  {
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_startDate), @"StartDate"}];
    v101 = MEMORY[0x277CCABA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(v101 forKeyedSubscript:{"numberWithInt:", v102), @"EndDate"}];
  }

  remoteOSBuild = self->_remoteOSBuild;
  if (remoteOSBuild)
  {
    [dispatchedAggregatedReportCommon setObject:remoteOSBuild forKeyedSubscript:@"REMBUILD"];
  }

  duplicationConnectionConfig = self->_duplicationConnectionConfig;
  v105 = &off_23D598000;
  if (duplicationConnectionConfig)
  {
    [dispatchedAggregatedReportCommon setObject:duplicationConnectionConfig forKeyedSubscript:@"DCCFG"];
  }

  duplicationConnectionFamily = self->_duplicationConnectionFamily;
  if (duplicationConnectionFamily)
  {
    [dispatchedAggregatedReportCommon setObject:duplicationConnectionFamily forKeyedSubscript:@"DCF"];
  }

  activeConnectionRegistry = self->_activeConnectionRegistry;
  if (activeConnectionRegistry)
  {
    [dispatchedAggregatedReportCommon setObject:activeConnectionRegistry forKeyedSubscript:@"ACAS"];
  }

  suggestedLinkTypeCombo = self->_suggestedLinkTypeCombo;
  if (suggestedLinkTypeCombo)
  {
    [dispatchedAggregatedReportCommon setObject:suggestedLinkTypeCombo forKeyedSubscript:@"SLTS"];
  }

  relayedCallTypeIndicator = self->_relayedCallTypeIndicator;
  if (relayedCallTypeIndicator)
  {
    [dispatchedAggregatedReportCommon setObject:relayedCallTypeIndicator forKeyedSubscript:@"RELAYEDCALLTYPE"];
  }

  if ([-[CallSegment duplicationCategoryForSegmentName:](self duplicationCategoryForSegmentName:{self->_segmentName), "isEqualToString:", @"D"}])
  {
    [dispatchedAggregatedReportCommon setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", self->_linkProbingConfig.localAlertDuration), 3), @"LOCALRTDUR"}];
    v105 = &off_23D598000;
    [dispatchedAggregatedReportCommon setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", self->_linkProbingConfig.remoteAlertDuration), 3), @"REMALRTDUR"}];
  }

  if ([(NSString *)self->_segmentName hasPrefix:@"W"])
  {
    v180 = @"WiFi5GHz";
    v181 = [MEMORY[0x277CCABA8] numberWithInt:self->_is5GHz];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v181, &v180, 1)}];
  }

  if (self->_isSmartBrakeHistogramPopulated)
  {
    v178[0] = @"SBCGSTDRTN";
    v179[0] = [(VCHistogram *)self->_smartBrakeDuration description];
    v178[1] = @"SBTTXRS";
    v179[1] = [(VCHistogram *)self->_smartBrakeTargetBitrateStart description];
    v178[2] = @"SBBWES";
    v179[2] = [(VCHistogram *)self->_smartBrakeBandwidthStart description];
    v178[3] = @"SBBWEE";
    v179[3] = [(VCHistogram *)self->_smartBrakeBandwidthEnd description];
    v178[4] = @"SBTTXR5";
    v179[4] = [(VCHistogram *)self->_smartBrakeTargetBitrateAfter5 description];
    v178[5] = @"SBTTXR15";
    v179[5] = [(VCHistogram *)self->_smartBrakeTargetBitrateAfter15 description];
    v178[6] = @"SBTTXR30";
    v179[6] = [(VCHistogram *)self->_smartBrakeTargetBitrateAfter30 description];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v179, v178, 7)}];
  }

  if (self->_rateControlSmartBrakeTrialVersion)
  {
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"SBVERS"}];
  }

  if (self->_callMode == 1)
  {
    v176[0] = @"VPLR";
    v177[0] = [(VCHistogram *)self->_VPLR description];
    v176[1] = @"VJ";
    v177[1] = [(VCHistogram *)self->_videoJitter description];
    v176[2] = @"SVSH";
    v177[2] = [(VCHistogram *)self->_videoStall description];
    v176[3] = @"FR";
    v177[3] = [(VCHistogram *)self->_framerate description];
    v176[4] = @"VQS";
    v177[4] = [(VCHistogram *)self->_videoQualityScore description];
    v176[5] = @"PCON";
    v177[5] = [(VCHistogram *)self->_poorConnection description];
    v176[6] = @"VRES";
    v177[6] = [(VCHistogram *)self->_videoResolution description];
    v176[7] = @"VEBR";
    v177[7] = [(VCHistogram *)self->_videoEncodingBitrate description];
    v176[8] = @"TVSP";
    if (v70)
    {
      v110 = (v135 / v70 * *(v105 + 276));
    }

    else
    {
      v110 = 0;
    }

    v177[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v110];
    v176[9] = @"MVSI";
    v177[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxVideoStallInterval * 100.0)];
    v176[10] = @"VFP";
    videoSentPacketCount = self->_videoSentPacketCount;
    if (videoSentPacketCount)
    {
      v112 = (v133 / videoSentPacketCount * *(v105 + 276));
    }

    else
    {
      v112 = 0;
    }

    v177[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v112];
    v176[11] = @"SAVIDPLR";
    v113 = self->_adjustedDuration;
    if (v113)
    {
      v114 = self->_VPLRAccumulator / v113;
    }

    else
    {
      v114 = 0;
    }

    v177[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v114];
    v176[12] = @"SPCONTLEN";
    v177[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_poorConnectionTotalLength];
    v176[13] = @"SPCONMAXLEN";
    v177[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_poorConnectionMaxLength];
    v176[14] = @"SPCONFQ";
    v177[14] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_poorConnectionFrequency];
    v176[15] = @"SPCONP";
    if (v70)
    {
      v115 = (v134 / v70 * *(v105 + 276));
    }

    else
    {
      v115 = 0;
    }

    v177[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v115];
    v176[16] = @"VPBNRFR";
    v177[16] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v148];
    v176[17] = @"FIRFR";
    v177[17] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v147];
    v176[18] = @"FIRFSFR";
    v177[18] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v146)];
    v176[19] = @"FIRFSFC";
    v177[19] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_totalFIRFailSafeCounter];
    v176[20] = @"VFDSKPR";
    v177[20] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v145];
    v176[21] = @"VPBINTSER";
    v177[21] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v146];
    v176[22] = @"VPBTIR";
    v177[22] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v143];
    v176[23] = @"VPBLSR";
    v177[23] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v136];
    v176[24] = @"VREFR";
    v177[24] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v144];
    v176[25] = @"VRRFR";
    v177[25] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v142];
    v176[26] = @"VRExFR";
    v177[26] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v141];
    v176[27] = @"VTEFR";
    v177[27] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v140];
    v176[28] = @"VTCFR";
    v177[28] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v139];
    v176[29] = @"DUPTYPE";
    v177[29] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_duplicationType];
    v176[30] = @"VPBEVALPD";
    v177[30] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v137];
    v176[31] = @"VPBEVMLPD";
    v177[31] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_evictedFramesMaxLatePacketDelay * 1000.0)];
    v176[32] = @"VPBEVLPDHIST";
    v177[32] = [(VCHistogram *)self->_evictedFramesLatePacketDelayHist description];
    v176[33] = @"PEVFR";
    v177[33] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v138];
    v176[34] = @"TVMBR";
    v177[34] = [(VCHistogram *)self->_TVidMedBR description];
    v176[35] = @"TVPAY";
    v177[35] = [(VCHistogram *)self->_TVidCodecPayload description];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v177, v176, 36)}];
    avSyncOffsetSamplesCount = self->_avSyncOffsetSamplesCount;
    if (avSyncOffsetSamplesCount)
    {
      v174[0] = @"AAVSO";
      v175[0] = [MEMORY[0x277CCABA8] numberWithInt:(self->_avSyncOffsetSum / avSyncOffsetSamplesCount)];
      v174[1] = @"MINAVSO";
      minAVSyncOffset = self->_minAVSyncOffset;
      if (minAVSyncOffset == 0x7FFFFFFF)
      {
        v118 = 0;
      }

      else
      {
        v118 = minAVSyncOffset;
      }

      v175[1] = [MEMORY[0x277CCABA8] numberWithInt:v118];
      v174[2] = @"MAXAVSO";
      maxAVSyncOffset = self->_maxAVSyncOffset;
      if (maxAVSyncOffset == 0x80000000)
      {
        v120 = 0;
      }

      else
      {
        v120 = maxAVSyncOffset;
      }

      v175[2] = [MEMORY[0x277CCABA8] numberWithInt:v120];
      [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v175, v174, 3)}];
    }

    [(CallSegment *)self addProtocolStackDescriptionTelemetry:dispatchedAggregatedReportCommon];
    [(CallSegment *)self addSegmentWRMReportStats:dispatchedAggregatedReportCommon];
    lossPattern = self->_lossPattern;
    *buf = self->_fecStatsHolder;
    *&buf[8] = lossPattern;
    lossFecHistogram = self->_lossFecHistogram;
    *&buf[16] = self->_lossHistogram;
    *&v171 = lossFecHistogram;
    LODWORD(lossFecHistogram) = self->_videoFrameNonFECCompleteCounter;
    DWORD2(v171) = self->_videoFrameNonFECTotalCounter;
    HIDWORD(v171) = lossFecHistogram;
    LODWORD(lossFecHistogram) = self->_fecProcessingTime;
    v172 = self->_adjustedDuration;
    v173 = lossFecHistogram;
    [(VCAdaptiveLearningDelegate *)self->_delegate addFECStats:dispatchedAggregatedReportCommon parameters:buf];
    if (self->_nwActivity)
    {
      if (self->_useNwActivitySubmitMetrics && self->_isNWActivityReportingEnabled)
      {
        v123 = _CFXPCCreateXPCObjectFromCFObject();
        nwActivity = self->_nwActivity;
        nw_activity_submit_metrics();
        xpc_release(v123);
        v125 = self->_nwActivity;
      }

      nw_activity_complete_with_reason();
      nw_release(self->_nwActivity);
      self->_nwActivity = 0;
    }

    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_isQUICPod), @"TLE"}];
  }

  [(CallSegment *)self addQRServerTelemetryToDictionary:dispatchedAggregatedReportCommon];
  [(CallSegment *)self reportVideoFeatureStatus:dispatchedAggregatedReportCommon];
  [(CallSegment *)self reportSpatialAudioSupport:dispatchedAggregatedReportCommon];
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  thermalDataCollectors = self->_thermalDataCollectors;
  v127 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v164 objects:v169 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v165;
    do
    {
      for (i = 0; i != v128; ++i)
      {
        if (*v165 != v129)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v164 + 1) + 8 * i) updateReport:dispatchedAggregatedReportCommon];
      }

      v128 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v164 objects:v169 count:16];
    }

    while (v128);
  }

LABEL_200:
  v131 = *MEMORY[0x277D85DE8];
  return dispatchedAggregatedReportCommon;
}

- (void)updateMaxVideoStallInterval:(double)interval withDelta:(double)delta
{
  self->_totalVideoStallTime = self->_totalVideoStallTime + delta;
  lastReceivedVideoStallTime = self->_lastReceivedVideoStallTime;
  if (lastReceivedVideoStallTime == interval)
  {
    currentStallTime = self->_currentStallTime;
    if (currentStallTime == 0.0)
    {
      v5 = 0;
    }

    else
    {
      if (currentStallTime < self->_maxVideoStallInterval)
      {
        currentStallTime = self->_maxVideoStallInterval;
      }

      self->_maxVideoStallInterval = currentStallTime;
      v7 = self->_currentStallTime;
      self->_currentStallTime = 0.0;
      v5 = (v7 * 100.0);
    }
  }

  else
  {
    v5 = 0;
    self->_currentStallTime = interval - lastReceivedVideoStallTime + self->_currentStallTime;
    self->_lastReceivedVideoStallTime = interval;
  }

  [(VCHistogram *)self->_videoStall addValue:v5];
}

- (void)addSegmentWRMReportStats:(id)stats
{
  wrmLinkTypeSuggestion = self->_wrmLinkTypeSuggestion;
  if (wrmLinkTypeSuggestion)
  {
    [stats setObject:wrmLinkTypeSuggestion forKeyedSubscript:@"WRMLTS"];
  }

  wrmLinkTypeChangeReasonCode = self->_wrmLinkTypeChangeReasonCode;
  if (wrmLinkTypeChangeReasonCode)
  {
    [stats setObject:wrmLinkTypeChangeReasonCode forKeyedSubscript:@"WRMLTCRC"];
  }

  wrmLinkTypeWifiRSSI = self->_wrmLinkTypeWifiRSSI;
  if (wrmLinkTypeWifiRSSI)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiRSSI, 3), @"WRMLTCWRSSI"}];
  }

  wrmLinkTypeWifiRSSIThreshold = self->_wrmLinkTypeWifiRSSIThreshold;
  if (wrmLinkTypeWifiRSSIThreshold)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiRSSIThreshold, 3), @"WRMLTCWRSSITH"}];
  }

  wrmLinkTypeWifiSNR = self->_wrmLinkTypeWifiSNR;
  if (wrmLinkTypeWifiSNR)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiSNR, 3), @"WRMLTCWSNR"}];
  }

  wrmLinkTypeWifiCCA = self->_wrmLinkTypeWifiCCA;
  if (wrmLinkTypeWifiCCA)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiCCA, 3), @"WRMLTCWCCA"}];
  }

  wrmLinkTypeWifiPacketLoss = self->_wrmLinkTypeWifiPacketLoss;
  if (wrmLinkTypeWifiPacketLoss)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiPacketLoss, 3), @"WRMLTCWPL"}];
  }

  wrmLinkTypeCellSignalStrength = self->_wrmLinkTypeCellSignalStrength;
  if (wrmLinkTypeCellSignalStrength)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellSignalStrength, 3), @"WRMLTCCSS"}];
  }

  wrmLinkTypeCellSignalBar = self->_wrmLinkTypeCellSignalBar;
  if (wrmLinkTypeCellSignalBar)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellSignalBar, 3), @"WRMLTCCSB"}];
  }

  wrmLinkTypeCellServingCellType = self->_wrmLinkTypeCellServingCellType;
  if (wrmLinkTypeCellServingCellType)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellServingCellType, 3), @"WRMLTCCSCT"}];
  }

  wrmLinkTypeWifiRemoteRSSIThreshold = self->_wrmLinkTypeWifiRemoteRSSIThreshold;
  if (wrmLinkTypeWifiRemoteRSSIThreshold)
  {
    v16 = [VCAggregatorUtils safeRoundOffNumber:wrmLinkTypeWifiRemoteRSSIThreshold toSignificantDigits:3];

    [stats setObject:v16 forKeyedSubscript:@"RWRMLTCWRSSITH"];
  }
}

- (id)segmentQRReport
{
  v36[12] = *MEMORY[0x277D85DE8];
  result = [(NSString *)self->_relayServer length];
  if (result)
  {
    adjustedDuration = self->_adjustedDuration;
    if (adjustedDuration)
    {
      v5 = (self->_averageTargetBitrate / adjustedDuration * 1000.0);
    }

    else
    {
      v5 = 0;
    }

    poorConnectionTotalLength = self->_poorConnectionTotalLength;
    if (poorConnectionTotalLength <= ([(CallSegment *)self RTPeriod]* adjustedDuration))
    {
      v8 = self->_poorConnectionTotalLength;
    }

    else
    {
      v7 = self->_adjustedDuration;
      v8 = ([(CallSegment *)self RTPeriod]* v7);
    }

    totalVideoStallTime = self->_totalVideoStallTime;
    v10 = self->_adjustedDuration;
    if (totalVideoStallTime <= ([(CallSegment *)self RTPeriod]* v10))
    {
      v12 = self->_totalVideoStallTime;
    }

    else
    {
      v11 = self->_adjustedDuration;
      v12 = ([(CallSegment *)self RTPeriod]* v11);
    }

    totalAudioStallTime = self->_totalAudioStallTime;
    v14 = self->_adjustedDuration;
    if (totalAudioStallTime <= ([(CallSegment *)self RTPeriod]* v14))
    {
      v16 = self->_totalAudioStallTime;
    }

    else
    {
      v15 = self->_adjustedDuration;
      v16 = ([(CallSegment *)self RTPeriod]* v15);
    }

    v17 = objc_alloc(MEMORY[0x277CBEB38]);
    segmentName = self->_segmentName;
    if (!segmentName)
    {
      segmentName = &stru_284F80940;
    }

    relayServer = self->_relayServer;
    v35[0] = @"CONFIG";
    v35[1] = @"QRSRVR";
    v36[0] = segmentName;
    v36[1] = relayServer;
    v35[2] = @"QRTYPE";
    v20 = [MEMORY[0x277CCABA8] numberWithInt:self->_relayType];
    accessToken = self->_accessToken;
    v36[2] = v20;
    v36[3] = accessToken;
    v35[3] = @"QRATKN";
    v35[4] = @"MODE";
    v36[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_callMode];
    v35[5] = @"DRTN";
    v36[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[CallSegment RTPeriod](self, "RTPeriod") * self->_duration}];
    v35[6] = @"PLR";
    v36[6] = [(VCHistogram *)self->_PLR description];
    v35[7] = @"RTT";
    v36[7] = [(VCHistogram *)self->_RTT description];
    v35[8] = @"LAT";
    v36[8] = [(VCHistogram *)self->_latency description];
    v35[9] = @"SATXBR";
    v36[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v5];
    v35[10] = @"ERR";
    v36[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_errorCode];
    v35[11] = @"TASP";
    v22 = MEMORY[0x277CCABA8];
    v23 = self->_adjustedDuration;
    if (v23)
    {
      v24 = (v16 / ([(CallSegment *)self RTPeriod]* v23) * 10000.0);
    }

    else
    {
      v24 = 0;
    }

    v36[11] = [v22 numberWithUnsignedInt:v24];
    v25 = [v17 initWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v36, v35, 12)}];
    if (self->_callMode == 1)
    {
      v33[0] = @"VPLR";
      v34[0] = [(VCHistogram *)self->_VPLR description];
      v33[1] = @"SPCONP";
      v26 = MEMORY[0x277CCABA8];
      v27 = self->_adjustedDuration;
      if (v27)
      {
        v28 = (v8 / ([(CallSegment *)self RTPeriod]* v27) * 10000.0);
      }

      else
      {
        v28 = 0;
      }

      v34[1] = [v26 numberWithUnsignedInt:v28];
      v33[2] = @"TVSP";
      v29 = MEMORY[0x277CCABA8];
      v30 = self->_adjustedDuration;
      if (v30)
      {
        v31 = (v12 / ([(CallSegment *)self RTPeriod]* v30) * 10000.0);
      }

      else
      {
        v31 = 0;
      }

      v34[2] = [v29 numberWithUnsignedInt:v31];
      [v25 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v34, v33, 3)}];
    }

    result = v25;
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)duplicationCategoryForSegmentName:(id)name
{
  if (![name length])
  {
    return &stru_284F80940;
  }

  v4 = [name length] - 1;

  return [name substringToIndex:v4];
}

- (void)changeDuplicationWithType:(unsigned __int16)type payload:(id)payload
{
  if (!type || type == 3)
  {
    if ([payload objectForKeyedSubscript:@"ConnectionType"] && objc_msgSend(payload, "objectForKeyedSubscript:", @"LocalInterfaceType") && objc_msgSend(payload, "objectForKeyedSubscript:", @"RemoteInterfaceType") && objc_msgSend(payload, "objectForKeyedSubscript:", @"ConnFmly") && objc_msgSend(payload, "objectForKeyedSubscript:", @"SLTS"))
    {

      self->_duplicationConnectionConfig = +[CallSegment newSegmentNameWithComponents:remoteInterface:connectionType:duplicationIndicator:](CallSegment, "newSegmentNameWithComponents:remoteInterface:connectionType:duplicationIndicator:", +[VCAggregator interfaceCategoryForType:](VCAggregator, "interfaceCategoryForType:", [payload objectForKeyedSubscript:@"LocalInterfaceType"]), +[VCAggregator interfaceCategoryForType:](VCAggregator, "interfaceCategoryForType:", objc_msgSend(payload, "objectForKeyedSubscript:", @"RemoteInterfaceType")), +[VCAggregator connectionCategoryForType:](VCAggregator, "connectionCategoryForType:", objc_msgSend(payload, "objectForKeyedSubscript:", @"ConnectionType")), @"D");
      -[CallSegment setDuplicationConnectionFamily:](self, "setDuplicationConnectionFamily:", [payload objectForKeyedSubscript:@"ConnFmly"]);
      -[CallSegment setSuggestedLinkTypeCombo:](self, "setSuggestedLinkTypeCombo:", [payload objectForKeyedSubscript:@"SLTS"]);
    }

    if ([payload objectForKeyedSubscript:@"DuplicationType"])
    {
      self->_duplicationType = [objc_msgSend(payload objectForKeyedSubscript:{@"DuplicationType", "intValue"}];
    }

    if ([payload objectForKeyedSubscript:@"lnkPrbRTTMeanDelta"] && objc_msgSend(payload, "objectForKeyedSubscript:", @"lnkPrbPLRTierDelta"))
    {
      ++self->_dynamicDupeLinkCount;
      [objc_msgSend(payload objectForKeyedSubscript:{@"lnkPrbRTTMeanDelta", "doubleValue"}];
      self->_rttMeanTotalDelta = v10 + self->_rttMeanTotalDelta;
      self->_plrTierTotalDelta += [objc_msgSend(payload objectForKeyedSubscript:{@"lnkPrbPLRTierDelta", "unsignedIntValue"}];
    }
  }

  else if (type == 2)
  {
    if ([payload objectForKeyedSubscript:@"MAXNRPT"])
    {
      duplicationMaxNoRemotePacketTime = self->_duplicationMaxNoRemotePacketTime;
      [objc_msgSend(payload objectForKeyedSubscript:{@"MAXNRPT", "doubleValue"}];
      if (duplicationMaxNoRemotePacketTime >= v7)
      {
        v7 = duplicationMaxNoRemotePacketTime;
      }

      self->_duplicationMaxNoRemotePacketTime = v7;
    }

    if ([payload objectForKeyedSubscript:@"MAXRNRPT"])
    {
      duplicationMaxRemoteNoRemotePacketTime = self->_duplicationMaxRemoteNoRemotePacketTime;
      [objc_msgSend(payload objectForKeyedSubscript:{@"MAXRNRPT", "doubleValue"}];
      if (duplicationMaxRemoteNoRemotePacketTime >= v9)
      {
        v9 = duplicationMaxRemoteNoRemotePacketTime;
      }

      self->_duplicationMaxRemoteNoRemotePacketTime = v9;
    }
  }
}

- (void)setNWActivityReportingEnabled:(BOOL)enabled
{
  v16 = *MEMORY[0x277D85DE8];
  self->_isNWActivityReportingEnabled = enabled;
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR(8u);
    v5 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        isNWActivityReportingEnabled = self->_isNWActivityReportingEnabled;
        v8 = 136315906;
        v9 = v4;
        v10 = 2080;
        v11 = "[CallSegment setNWActivityReportingEnabled:]";
        v12 = 1024;
        v13 = 1848;
        v14 = 1024;
        v15 = isNWActivityReportingEnabled;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isNWActivityReportingEnabled=%d", &v8, 0x22u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [(CallSegment *)v4 setNWActivityReportingEnabled:?];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processSmartBrakeEvent:(id)event
{
  if (!self->_isSmartBrakeHistogramPopulated)
  {
    self->_isSmartBrakeHistogramPopulated = 1;
  }

  if ([event objectForKeyedSubscript:@"EndBWE"] && objc_msgSend(event, "objectForKeyedSubscript:", @"StartBWE") && objc_msgSend(event, "objectForKeyedSubscript:", @"StartTargetTxR") && objc_msgSend(event, "objectForKeyedSubscript:", @"CongestionDuration"))
  {
    smartBrakeDuration = self->_smartBrakeDuration;
    [objc_msgSend(event objectForKeyedSubscript:{@"CongestionDuration", "doubleValue"}];
    [(VCHistogram *)smartBrakeDuration addValue:v6];
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateStart, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"StartTargetTxR", "unsignedIntValue"}]);
    -[VCHistogram addValue:](self->_smartBrakeBandwidthStart, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"StartBWE", "unsignedIntValue"}]);
    -[VCHistogram addValue:](self->_smartBrakeBandwidthEnd, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"EndBWE", "unsignedIntValue"}]);
  }

  if ([event objectForKeyedSubscript:@"BWETTxRRatio5"])
  {
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateAfter5, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"BWETTxRRatio5", "unsignedIntValue"}]);
  }

  if ([event objectForKeyedSubscript:@"BWETTxRRatio15"])
  {
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateAfter15, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"BWETTxRRatio15", "unsignedIntValue"}]);
  }

  if ([event objectForKeyedSubscript:@"BWETTxRRatio30"])
  {
    smartBrakeTargetBitrateAfter30 = self->_smartBrakeTargetBitrateAfter30;
    v8 = [objc_msgSend(event objectForKeyedSubscript:{@"BWETTxRRatio30", "unsignedIntValue"}];

    [(VCHistogram *)smartBrakeTargetBitrateAfter30 addValue:v8];
  }
}

- (void)addQRServerTelemetryToDictionary:.cold.1()
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

- (void)segmentReport
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setNWActivityReportingEnabled:(uint64_t)a1 .cold.1(uint64_t a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x277D85DE8];
}

@end