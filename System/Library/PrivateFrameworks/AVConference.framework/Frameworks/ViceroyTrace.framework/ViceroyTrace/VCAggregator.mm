@interface VCAggregator
+ (id)connectionCategoryForType:(id)a3;
+ (id)interfaceCategoryForType:(id)a3;
+ (id)newThermalDataCollectors;
+ (id)relayedCallTypeIndicator:(id)a3;
+ (unsigned)mediaStreamDirectionForSegmentReportDirection:(int)a3;
+ (void)addVideoFeatureStatus:(char)a3 histogramKey:(__CFString *)a4 histogram:(id)a5 statusKey:(__CFString *)a6 report:(id)a7;
+ (void)newThermalDataCollectors;
- (BOOL)didUpdateStringFrom:(id *)a3 toString:(id)a4;
- (BOOL)hasQRServerPrefix:(id)a3;
- (BOOL)isApplePersonalHotspotAndUpdatePhyMode;
- (BOOL)isLocalInterfaceTypeForSegment:(id)a3 equalTo:(id)a4;
- (VCAggregator)initWithDelegate:(id)a3 nwParentActivity:(id)a4 conversationTimeBase:(id)a5;
- (__WiFiDeviceClient)copyCurrentWiFiDevice;
- (char)processVideoFeatureStatus:(__CFString *)a3 currentFeatureStatus:(char)a4 payload:(id)a5;
- (double)microFromPayload:(id)a3;
- (id)dispatchedAggregatedCallReport;
- (id)dispatchedAggregatedSegmentReport:(int)a3;
- (id)dispatchedAggregatedSessionReport;
- (id)duplicationIndicator;
- (id)phyModeFromWifiInterface:(id)a3;
- (id)reportingClientExperimentSettingsDictionary;
- (id)symptomsOccurrencesStats;
- (uint64_t)copyCurrentWiFiDevice;
- (void)addAggregateAudioInjectorMetricsToReport:(id)a3;
- (void)addAlternateThermalMetricsToReportDictionary:(id)a3;
- (void)addAudioStreamTimestampJumpDurationToReport:(id)a3;
- (void)addCameraMetricsToReportDictionary:(id)a3 totalDuration:(int)a4;
- (void)addFECStats:(id)a3 parameters:(tagVCFECSegmentReportParameters *)a4 reportFrameSizeTelemetry:(BOOL)a5 reportLevels:(BOOL)a6;
- (void)addFECStatsHolderKPIs:(id)a3 usingFECStatsHolder:(id)a4 reportFrameSizeTelemetry:(BOOL)a5 reportLevels:(BOOL)a6;
- (void)addIDSTelemetry:(id)a3;
- (void)addLegacyThermalMetricsToReportDictionary:(id)a3;
- (void)addLowLatencyInterfaceStatisticsToPayload:(id)a3;
- (void)addThermalMetricsToReportDictionary:(id)a3;
- (void)addVPCTelemetry:(id)a3;
- (void)addVideoFeatureStatus:(id)a3;
- (void)copyCurrentWiFiDevice;
- (void)dealloc;
- (void)filterDictionaryUsingQRServerPrefix:(id)a3 addTo:(id)a4;
- (void)initializeAudioTxTelemetry;
- (void)initializeLowLatencyInterfaceStatistics;
- (void)initializeThermalsTelemetry;
- (void)initializeVideoJitterBufferTelemetry;
- (void)isApplePersonalHotspotAndUpdatePhyMode;
- (void)migrateValueForKey:(__CFString *)a3 from:(id)a4 to:(id)a5 withKey:(__CFString *)a6;
- (void)processAudioInjectionInitWithPayload:(id)a3 currentTime:(double)a4;
- (void)processBitratesWithPayload:(id)a3;
- (void)processEventWithCategory:(unsigned __int16)a3 type:(unsigned __int16)a4 payload:(id)a5;
- (void)processIDSReportingBlob:(id)a3;
- (void)processInitWithPayload:(id)a3 timestamp:(double)a4;
- (void)processRTEvent:(id)a3;
- (void)processVideoFeatureStatus:(__CFString *)a3 durationHistogram:(id)a4 payload:(id)a5;
- (void)reportSpatialAudioSupport:(id)a3;
- (void)reset;
- (void)setEventDrivenAggregationOccurredHandler:(id)a3;
- (void)setNWActivityReportingEnabled:(BOOL)a3;
- (void)setPeriodicAggregationOccurredHandler:(id)a3;
- (void)startNewSegment;
- (void)updateAdaptiveLearningStats:(unsigned int)a3 payload:(id)a4;
- (void)updateFECStats:(id)a3 usingUpdateValuesIn:(id)a4;
- (void)updateHandoverCount:(id)a3 withPreviousSegmentKey:(id)a4;
- (void)updateLateFrameStatsForHistogram:(id)a3 WithPayload:(id)a4;
- (void)updateReportWithQRServerSessionStats:(id)a3;
- (void)updateThermalDurationsFromPayload:(id)a3;
- (void)updateThermalMetricsFromPayload:(id)a3;
- (void)updateTimeToThermalsAlternate:(id)a3;
- (void)updateTimeToThermalsLegacy:(id)a3;
- (void)updateTimestampJumpStats:(id)a3;
- (void)updateVPCStats:(id)a3;
- (void)updateVideoFECStats:(id)a3 fecStats:(id)a4 callLossPattern:(id)a5 segmentLossPattern:(id)a6 segmentLossHistogram:(id)a7 segmentLossFecHistogram:(id)a8;
- (void)updateVideoFECStatsOnCall:(id)a3 callLossPattern:(id)a4;
- (void)updateVideoFECStatsOnSegment:(id)a3 fecStats:(id)a4 segmentLossPattern:(id)a5 segmentLossHistogram:(id)a6 segmentLossFecHistogram:(id)a7 direction:(int)a8;
- (void)updateVideoFeatureDuration:(id)a3 time:(double)a4 enabled:(id)a5;
- (void)updateVideoFeatureDuration:(id)a3 time:(double)a4 thermalLevel:(id)a5;
- (void)updateVideoFeatureStatus:(id)a3;
@end

@implementation VCAggregator

- (VCAggregator)initWithDelegate:(id)a3 nwParentActivity:(id)a4 conversationTimeBase:(id)a5
{
  v11.receiver = self;
  v11.super_class = VCAggregator;
  v8 = [(VCReportingCommon *)&v11 init];
  if (v8)
  {
    v8->_stateQueue = dispatch_queue_create("com.apple.avconference.VCAggregatorStateQueue", 0);
    v8->_notificationQueue = dispatch_queue_create("com.apple.avconference.VCAggregatorNotificationQueue", 0);
    v8->_delegate = objc_storeWeak(&v8->_delegate, a3);
    reportingGetDefaults(&v8->_interval, &v8->_frequency);
    if (!v8->_interval || !v8->_frequency)
    {
      v8->_interval = 1;
      v8->_frequency = 5;
    }

    v8->_algosScoreAggregator = objc_alloc_init(VCAlgosStreamingScoreAggregator);
    v8->_algosScoreAggregatorAlternate = objc_alloc_init(VCAlgosStreamingScoreAggregator);
    v8->_algosScoreAggregatorBounded = objc_alloc_init(VCAlgosStreamingScoreAggregator);
    v8->_videoQualityWidth = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8->_videoQualityHeight = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8->_sessionNwActivity = a4;
    if (a4)
    {
      nw_retain(a4);
    }

    v8->_useNwActivitySubmitMetrics = _os_feature_enabled_impl();
    if (a5)
    {
      v8->_conversationTimeBase = [a5 copy];
      [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
      v8->_startDate = v9;
    }

    v8->_cameraTimers = objc_alloc_init(TimingCollection);
    getpid();
    v8->_transaction = FigOSTransactionCreate();
    v8->_lastUsedTimestamp = NAN;
    v8->_idsReportingBlobs = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8->_symptomsOccurrences = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    [(VCAggregator *)v8 initializeVideoJitterBufferTelemetry];
    [(VCAggregator *)v8 initializeAudioTxTelemetry];
    v8->_lossPattern = [[VCReportingHistogram alloc] initWithType:41 bucketValues:0];
    v8->_JBQSizeDeltaVidLarger = [[VCReportingHistogram alloc] initWithType:45 bucketValues:0];
    v8->_JBQSizeDeltaAudLarger = [[VCReportingHistogram alloc] initWithType:45 bucketValues:0];
    v8->_audioStreamTimestampJumpDuration = [[VCReportingHistogram alloc] initWithType:89 bucketValues:0];
    v8->_redOverhead = [[VCReportingHistogram alloc] initWithType:26 bucketValues:0];
    v8->_linkPreferSuggestion = -1;
    v8->_linkIPPreference = -1;
    v8->_minVPCProcessingTime = 4294967300.0;
    v8->_mediaAnalyzerDataCollector = [[VCMediaAnalyzerDataCollector alloc] initWithDispatchQueue:v8->_stateQueue];
    v8->_mediaRecorderDataCollector = [[VCMediaRecorderDataCollector alloc] initWithDispatchQueue:v8->_stateQueue];
    v8->_captionsDataCollector = [[VCCaptionsDataCollector alloc] initWithDispatchQueue:v8->_stateQueue];
    v8->_audioInjectorFileSizeHistogram = [[VCReportingHistogram alloc] initWithType:59 bucketValues:0];
    v8->_audioInjectorMessageLengthHistogram = [[VCReportingHistogram alloc] initWithType:60 bucketValues:0];
    v8->_fecStatsHolder = objc_alloc_init(VCVideoFECStatsHolder);
    [(VCAggregator *)v8 initializeThermalsTelemetry];
  }

  return v8;
}

- (void)dealloc
{
  self->_delegate = objc_storeWeak(&self->_delegate, 0);
  dispatch_release(self->_stateQueue);
  dispatch_release(self->_notificationQueue);

  self->_cameraTimers = 0;
  periodicAggregationOccurredHandler = self->_periodicAggregationOccurredHandler;
  if (periodicAggregationOccurredHandler)
  {
    _Block_release(periodicAggregationOccurredHandler);
  }

  eventDrivenAggregationOccurredHandler = self->_eventDrivenAggregationOccurredHandler;
  if (eventDrivenAggregationOccurredHandler)
  {
    _Block_release(eventDrivenAggregationOccurredHandler);
  }

  sessionNwActivity = self->_sessionNwActivity;
  if (sessionNwActivity)
  {
    nw_release(sessionNwActivity);
  }

  symptomsOccurrences = self->_symptomsOccurrences;
  if (symptomsOccurrences)
  {
    CFRelease(symptomsOccurrences);
    self->_symptomsOccurrences = 0;
  }

  transaction = self->_transaction;
  if (transaction)
  {

    self->_transaction = 0;
  }

  v8.receiver = self;
  v8.super_class = VCAggregator;
  [(VCReportingCommon *)&v8 dealloc];
}

- (void)initializeVideoJitterBufferTelemetry
{
  self->_WANVJBQSize = [[VCReportingHistogram alloc] initWithType:44 bucketValues:0];
  self->_TVidMedBR = [[VCReportingHistogram alloc] initWithType:61 bucketValues:0];
  self->_TVidCodecPayload = [[VCReportingHistogram alloc] initWithType:63 bucketValues:0];
}

- (void)initializeAudioTxTelemetry
{
  self->_audioCodecPayload = [[VCReportingHistogram alloc] initWithType:66 bucketValues:0];
  self->_audioFrameBundling = [[VCReportingHistogram alloc] initWithType:67 bucketValues:0];
  self->_audioMediaBitrate = [[VCReportingHistogram alloc] initWithType:64 bucketValues:0];
  self->_redPayloadBitrate = [[VCReportingHistogram alloc] initWithType:64 bucketValues:0];
}

- (void)initializeThermalsTelemetry
{
  self->_thermalTimeToLightAlternate = 0x80000000;
  self->_thermalTimeToModerateAlternate = 0x80000000;
  self->_thermalTimeToHeavyAlternate = 0x80000000;
}

- (void)setPeriodicAggregationOccurredHandler:(id)a3
{
  notificationQueue = self->_notificationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__VCAggregator_setPeriodicAggregationOccurredHandler___block_invoke;
  v4[3] = &unk_278BD50D0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(notificationQueue, v4);
}

void *__54__VCAggregator_setPeriodicAggregationOccurredHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 264);
  if (v2)
  {
    _Block_release(v2);
    *(*(a1 + 32) + 264) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = _Block_copy(result);
    *(*(a1 + 32) + 264) = result;
  }

  return result;
}

- (void)setEventDrivenAggregationOccurredHandler:(id)a3
{
  notificationQueue = self->_notificationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__VCAggregator_setEventDrivenAggregationOccurredHandler___block_invoke;
  v4[3] = &unk_278BD50D0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(notificationQueue, v4);
}

void *__57__VCAggregator_setEventDrivenAggregationOccurredHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 272);
  if (v2)
  {
    _Block_release(v2);
    *(*(a1 + 32) + 272) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = _Block_copy(result);
    *(*(a1 + 32) + 272) = result;
  }

  return result;
}

- (id)symptomsOccurrencesStats
{
  v34 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_symptomsOccurrences;
  v3 = [(__CFDictionary *)obj countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [(__CFDictionary *)self->_symptomsOccurrences objectForKey:v8];
        if (VRTraceGetErrorLogLevelForModule("") >= 8)
        {
          v10 = VRTraceErrorLogLevelToCSTR(8u);
          v11 = gVRTraceOSLog;
          if (gVRTraceLogDebugAsInfo == 1)
          {
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [(__CFDictionary *)self->_symptomsOccurrences objectForKey:v8];
              *buf = 136316162;
              v24 = v10;
              v25 = 2080;
              v26 = "[VCAggregator symptomsOccurrencesStats]";
              v27 = 1024;
              v28 = 451;
              v29 = 2112;
              v30 = v8;
              v31 = 2112;
              v32 = v12;
              _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d key=%@ value=%@", buf, 0x30u);
            }
          }

          else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
          {
            v14 = [(__CFDictionary *)self->_symptomsOccurrences objectForKey:v8];
            *buf = 136316162;
            v24 = v10;
            v25 = 2080;
            v26 = "[VCAggregator symptomsOccurrencesStats]";
            v27 = 1024;
            v28 = 451;
            v29 = 2112;
            v30 = v8;
            v31 = 2112;
            v32 = v14;
            _os_log_debug_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d key=%@ value=%@", buf, 0x30u);
          }
        }

        if (v5)
        {
          v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@;%@=%@", v5, v8, v9];
        }

        else
        {
          v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@=%@", v8, v9, v17];
        }

        v5 = v13;
      }

      v4 = [(__CFDictionary *)obj countByEnumeratingWithState:&v19 objects:v33 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    result = v5;
  }

  else
  {
    result = &stru_284F80940;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateLateFrameStatsForHistogram:(id)a3 WithPayload:(id)a4
{
  v5 = [a4 objectForKeyedSubscript:@"VFEVLtPktDelayHist"];
  if (v5)
  {
    v6 = v5;
    v12 = 0;
    v7 = [VCReportingHistogram bucketWithType:79 count:&v12];
    if (v12 != 1)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        [a3 addValue:v8[v9++] withIncrement:valuePtr];
      }

      while (v9 < (v12 - 1));
    }
  }
}

- (void)updateHandoverCount:(id)a3 withPreviousSegmentKey:(id)a4
{
  if (a4)
  {
    if ([(VCAggregator *)self isLocalInterfaceTypeForSegment:a4 equalTo:@"W"]&& ([(VCAggregator *)self isLocalInterfaceTypeForSegment:a3 equalTo:@"F"]|| [(VCAggregator *)self isLocalInterfaceTypeForSegment:a3 equalTo:@"S"]))
    {
      v7 = &OBJC_IVAR___VCAggregator__wifiToCellHandoverCount;
LABEL_10:
      ++*(&self->super.super.isa + *v7);
      return;
    }

    if (([(VCAggregator *)self isLocalInterfaceTypeForSegment:a4 equalTo:@"F"]|| [(VCAggregator *)self isLocalInterfaceTypeForSegment:a4 equalTo:@"S"]) && [(VCAggregator *)self isLocalInterfaceTypeForSegment:a3 equalTo:@"W"])
    {
      v7 = &OBJC_IVAR___VCAggregator__cellToWifiHandoverCount;
      goto LABEL_10;
    }
  }
}

- (BOOL)isLocalInterfaceTypeForSegment:(id)a3 equalTo:(id)a4
{
  isOneToOneMode = self->_isOneToOneMode;
  v7 = [a3 length];
  if (v7)
  {
    if (isOneToOneMode)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    v9 = [a3 substringWithRange:{v8, 1}];

    LOBYTE(v7) = [v9 isEqualToString:a4];
  }

  return v7;
}

- (void)addVPCTelemetry:(id)a3
{
  if (self->_isVPCEnabled)
  {
    averageVPCProcessingTimeCounter = self->_averageVPCProcessingTimeCounter;
    v6 = 0.0;
    if (averageVPCProcessingTimeCounter)
    {
      v6 = self->_averageVPCProcessingTimeSum / averageVPCProcessingTimeCounter;
    }

    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", v6), 3), @"AVPCPT"}];
    minVPCProcessingTime = self->_minVPCProcessingTime;
    if (minVPCProcessingTime == 4294967300.0)
    {
      minVPCProcessingTime = 0.0;
    }

    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", minVPCProcessingTime), 3), @"MINVPCPT"}];
    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithDouble:", self->_maxVPCProcessingTime), 3), @"MAXVPCPT"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_vpcProcessCount), @"VPCPCNT"}];
    vpcProcessCount = self->_vpcProcessCount;
    if (vpcProcessCount)
    {
      LODWORD(v8) = self->_vpcModifiedCount;
      v10 = (v8 * 100.0 / vpcProcessCount);
    }

    else
    {
      v10 = 0;
    }

    v11 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v10];

    [a3 setObject:v11 forKeyedSubscript:@"VPCMPCT"];
  }
}

- (void)updateThermalMetricsFromPayload:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if ([a3 objectForKeyedSubscript:@"Thermal"])
  {
    [(VCAggregator *)self updateTimeToThermalsLegacy:a3];
    [(VCAggregator *)self updateTimeToThermalsAlternate:a3];

    [(VCAggregator *)self updateThermalDurationsFromPayload:a3];
  }
}

- (void)updateTimeToThermalsLegacy:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"Thermal", "intValue"}];
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"TimeToThermal", "intValue"}];
  switch(v5)
  {
    case 10:
      v7 = 1264;
      break;
    case 30:
      v7 = 1280;
      break;
    case 20:
      v7 = 1272;
      break;
    default:
      return;
  }

  v8 = (self + v7);
  if (!*v8)
  {
    *v8 = 1000 * v6;
  }
}

- (void)updateTimeToThermalsAlternate:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"Thermal", "intValue"}];
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"TimeToThermal", "intValue"}];
  switch(v5)
  {
    case 10:
      v7 = 1268;
      break;
    case 30:
      v7 = 1284;
      break;
    case 20:
      v7 = 1276;
      break;
    default:
      return;
  }

  v8 = (self + v7);
  if (*v8 == 0x80000000)
  {
    *v8 = 1000 * v6;
  }
}

- (void)updateThermalDurationsFromPayload:(id)a3
{
  [(VCAggregator *)self microFromPayload:?];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __50__VCAggregator_updateThermalDurationsFromPayload___block_invoke;
  v9 = &unk_278BD4E60;
  v12 = v5;
  v10 = self;
  v11 = a3;
  v6 = [a3 objectForKeyedSubscript:@"Thermal"];
  if (v6)
  {
    v8(v7, v6);
  }
}

uint64_t __50__VCAggregator_updateThermalDurationsFromPayload___block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 104) = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCReportingCommon, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  [*(*(a1 + 32) + 112) switchBucket:*(*(a1 + 32) + 104) currentTime:*(a1 + 48)];
  [*(*(a1 + 32) + 1192) updateThermalLevel:*(*(a1 + 32) + 104)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 updateVideoFeatureStatus:v4];
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

- (void)addThermalMetricsToReportDictionary:(id)a3
{
  [(VCAggregator *)self addLegacyThermalMetricsToReportDictionary:?];

  [(VCAggregator *)self addAlternateThermalMetricsToReportDictionary:a3];
}

- (void)addLegacyThermalMetricsToReportDictionary:(id)a3
{
  if (self->_thermalTimeToLight)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:"), @"THRMTTL"}];
  }

  if (self->_thermalTimeToModerate)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:"), @"THRMTTM"}];
  }

  if (self->_thermalTimeToHeavy)
  {
    v5 = [MEMORY[0x277CCABA8] numberWithInt:?];

    [a3 setObject:v5 forKeyedSubscript:@"THRMTTH"];
  }
}

- (void)addAlternateThermalMetricsToReportDictionary:(id)a3
{
  if (self->_thermalTimeToLightAlternate != 0x80000000)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:"), @"THRMTTL_A"}];
  }

  if (self->_thermalTimeToModerateAlternate != 0x80000000)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:"), @"THRMTTM_A"}];
  }

  if (self->_thermalTimeToHeavyAlternate != 0x80000000)
  {
    v5 = [MEMORY[0x277CCABA8] numberWithInt:?];

    [a3 setObject:v5 forKeyedSubscript:@"THRMTTH_A"];
  }
}

- (void)updateVideoFeatureDuration:(id)a3 time:(double)a4 enabled:(id)a5
{
  if ([a5 intValue] == 1)
  {
    currentThermalLevel = self->super._currentThermalLevel;

    [a3 resumeAtBucket:currentThermalLevel currentTime:a4];
  }

  else
  {

    [a3 pause:a4];
  }
}

- (void)updateVideoFeatureDuration:(id)a3 time:(double)a4 thermalLevel:(id)a5
{
  v7 = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCReportingCommon, "aggregatorThermalLevelWithThermalLevel:", [a5 intValue]);
  if (([a3 isPaused] & 1) == 0)
  {

    [a3 switchBucket:v7 currentTime:a4];
  }
}

- (char)processVideoFeatureStatus:(__CFString *)a3 currentFeatureStatus:(char)a4 payload:(id)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = a4;
  if (a4 - 255 <= 0xFFFFFF01)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = __71__VCAggregator_processVideoFeatureStatus_currentFeatureStatus_payload___block_invoke;
    v9 = &unk_278BD54E0;
    v10 = &v11;
    if ([a5 objectForKeyedSubscript:a3])
    {
      (v8)(v7);
    }
  }

  v5 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t __71__VCAggregator_processVideoFeatureStatus_currentFeatureStatus_payload___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 intValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (void)addVideoFeatureStatus:(char)a3 histogramKey:(__CFString *)a4 histogram:(id)a5 statusKey:(__CFString *)a6 report:(id)a7
{
  v10 = a3;
  if (a4)
  {
    [a7 setObject:objc_msgSend(a5 forKeyedSubscript:{"description"), a4}];
  }

  if (v10 == -1)
  {
    v11 = -1;
  }

  else
  {
    v11 = [a5 totalDuration] != 0;
  }

  v12 = [MEMORY[0x277CCABA8] numberWithChar:v11];

  [a7 setObject:v12 forKeyedSubscript:a6];
}

- (void)addVideoFeatureStatus:(id)a3
{
  [VCAggregator addVideoFeatureStatus:self->_centerStageStatus histogramKey:@"CSDUR" histogram:self->_centerStageDuration statusKey:@"CSFENB" report:a3];
  [VCAggregator addVideoFeatureStatus:self->_portraitModeStatus histogramKey:@"PMDUR" histogram:self->_portraitModeDuration statusKey:@"PMFENB" report:a3];
  [VCAggregator addVideoFeatureStatus:self->_studioLightStatus histogramKey:@"SLDUR" histogram:self->_studioLightDuration statusKey:@"SLFENB" report:a3];
  [VCAggregator addVideoFeatureStatus:self->_reactionsStatus histogramKey:@"REACDUR" histogram:self->_reactionActiveDuration statusKey:@"REFENB" report:a3];
  eyeContactDuration = self->_eyeContactDuration;
  [(VCAggregator *)self microFromPayload:0];
  [(VCDurationHistogram *)eyeContactDuration finalize:?];
  [VCAggregator addVideoFeatureStatus:self->_eyeContactStatus histogramKey:@"ECDUR" histogram:self->_eyeContactDuration statusKey:@"ECFENB" report:a3];
  backgroundReplacementStatus = self->_backgroundReplacementStatus;
  backgroundReplacementDuration = self->_backgroundReplacementDuration;

  [VCAggregator addVideoFeatureStatus:backgroundReplacementStatus histogramKey:@"BGRDUR" histogram:backgroundReplacementDuration statusKey:@"BGRFENB" report:a3];
}

- (void)processVideoFeatureStatus:(__CFString *)a3 durationHistogram:(id)a4 payload:(id)a5
{
  [(VCAggregator *)self microFromPayload:a5];
  v10 = v9;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = __68__VCAggregator_processVideoFeatureStatus_durationHistogram_payload___block_invoke;
  v21 = &unk_278BD4E60;
  v22 = self;
  v23 = a4;
  v24 = v9;
  v11 = [a5 objectForKeyedSubscript:a3];
  if (v11)
  {
    v20(v19, v11);
  }

  v14 = __68__VCAggregator_processVideoFeatureStatus_durationHistogram_payload___block_invoke_2;
  v15 = &unk_278BD4E60;
  v16 = self;
  v17 = a4;
  v18 = v10;
  v12 = [a5 objectForKeyedSubscript:{@"Thermal", MEMORY[0x277D85DD0], 3221225472}];
  if (v12)
  {
    v14(&v13, v12);
  }
}

- (void)reportSpatialAudioSupport:(id)a3
{
  v4 = [MEMORY[0x277CCABA8] numberWithChar:self->_spatialAudioSupported];

  [a3 setObject:v4 forKeyedSubscript:@"SAFSUP"];
}

- (void)updateVideoFeatureStatus:(id)a3
{
  [(VCAggregator *)self processReactionFeatureStatus:?];
  [(VCAggregator *)self processStudioLightFeatureStatus:a3];
  [(VCAggregator *)self processPortraitModeFeatureStatus:a3];
  [(VCAggregator *)self processCenterStageFeatureStatus:a3];
  [(VCAggregator *)self processEyeContactFeatureStatus:a3];
  [(VCAggregator *)self processBackgroundReplacementFeatureStatus:a3];

  [(VCAggregator *)self processAlwaysFullBleedUserPrefer:a3];
}

- (void)addIDSTelemetry:(id)a3
{
  [a3 setObject:objc_msgSend(objc_msgSend(MEMORY[0x277CCAC50] forKeyedSubscript:{"dataWithPropertyList:format:options:error:", self->_idsReportingBlobs, 200, 0, 0), "base64EncodedStringWithOptions:", 0), @"IDSCBA"}];
  v5 = [MEMORY[0x277CCABA8] numberWithBool:self->_isP2PTLEABTestEnabled];

  [a3 setObject:v5 forKeyedSubscript:@"PTLE"];
}

- (void)processIDSReportingBlob:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 objectForKeyedSubscript:@"IDSCB"])
    {
      idsReportingBlobs = self->_idsReportingBlobs;
      v6 = [a3 objectForKeyedSubscript:@"IDSCB"];

      [(NSMutableArray *)idsReportingBlobs addObject:v6];
    }

    else
    {
      [VCAggregator processIDSReportingBlob:];
    }
  }

  else
  {
    [VCAggregator processIDSReportingBlob:];
  }
}

- (void)updateVPCStats:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"VPCPROCESSTIME"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"VPCPROCESSTIME", "doubleValue"}];
    minVPCProcessingTime = self->_minVPCProcessingTime;
    if (minVPCProcessingTime >= v5)
    {
      minVPCProcessingTime = v5;
    }

    self->_minVPCProcessingTime = minVPCProcessingTime;
    maxVPCProcessingTime = self->_maxVPCProcessingTime;
    if (maxVPCProcessingTime < v5)
    {
      maxVPCProcessingTime = v5;
    }

    self->_maxVPCProcessingTime = maxVPCProcessingTime;
    self->_averageVPCProcessingTimeSum = v5 + self->_averageVPCProcessingTimeSum;
    ++self->_averageVPCProcessingTimeCounter;
  }

  if ([a3 objectForKeyedSubscript:@"VPCFRAMECOUNT"])
  {
    self->_vpcProcessCount += [objc_msgSend(a3 objectForKeyedSubscript:{@"VPCFRAMECOUNT", "unsignedIntValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VPCMODIFYCOUNT"])
  {
    self->_vpcModifiedCount += [objc_msgSend(a3 objectForKeyedSubscript:{@"VPCMODIFYCOUNT", "unsignedIntValue"}];
  }
}

- (void)updateAdaptiveLearningStats:(unsigned int)a3 payload:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [objc_msgSend(a4 objectForKeyedSubscript:{@"TtSD", "doubleValue"}];
    self->_initialRampUpTime = (v6 * 1000.0);
    self->_initialBitrateDelta = [objc_msgSend(a4 objectForKeyedSubscript:{@"BtRD", "intValue"}];
    self->_initialBitrate = [objc_msgSend(a4 objectForKeyedSubscript:{@"IBTR", "intValue"}];
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          initialRampUpTime = self->_initialRampUpTime;
          initialBitrateDelta = self->_initialBitrateDelta;
          initialBitrate = self->_initialBitrate;
          v16 = 136316418;
          v17 = v7;
          v18 = 2080;
          v19 = "[VCAggregator updateAdaptiveLearningStats:payload:]";
          v20 = 1024;
          v21 = 814;
          v22 = 1024;
          v23 = initialRampUpTime;
          v24 = 1024;
          v25 = initialBitrateDelta;
          v26 = 1024;
          v27 = initialBitrate;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Initial Ramp Up time is %d ms, Initial Bitrate delta is %d, Initial bitrate is %d", &v16, 0x2Eu);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        v13 = self->_initialRampUpTime;
        v14 = self->_initialBitrateDelta;
        v15 = self->_initialBitrate;
        v16 = 136316418;
        v17 = v7;
        v18 = 2080;
        v19 = "[VCAggregator updateAdaptiveLearningStats:payload:]";
        v20 = 1024;
        v21 = 814;
        v22 = 1024;
        v23 = v13;
        v24 = 1024;
        v25 = v14;
        v26 = 1024;
        v27 = v15;
        _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Initial Ramp Up time is %d ms, Initial Bitrate delta is %d, Initial bitrate is %d", &v16, 0x2Eu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processAudioInjectionInitWithPayload:(id)a3 currentTime:(double)a4
{
  self->_audioInjectorCreatedTime = a4;
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"CAIFS", "unsignedLongLongValue"}];
  if (v6 <= 0xFFFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  [(VCHistogram *)self->_audioInjectorFileSizeHistogram addValue:v7];
  [objc_msgSend(a3 objectForKeyedSubscript:{@"CAIFL", "doubleValue"}];
  audioInjectorMessageLengthHistogram = self->_audioInjectorMessageLengthHistogram;

  [(VCHistogram *)audioInjectorMessageLengthHistogram addValue:(v8 * 1000.0)];
}

+ (id)newThermalDataCollectors
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (!v2)
  {
    +[VCAggregator newThermalDataCollectors];
LABEL_9:

    return 0;
  }

  v3 = objc_alloc_init(VCEffectsData);
  if (!v3)
  {
    +[VCAggregator newThermalDataCollectors];
    goto LABEL_9;
  }

  v4 = v3;
  v5 = objc_alloc_init(VCVoiceIsolationData);
  if (!v5)
  {
    +[(VCAggregator *)v4];
    goto LABEL_9;
  }

  v6 = v5;
  [v2 addObject:v4];
  [v2 addObject:v6];

  return v2;
}

uint64_t __64__VCAggregator_dispatchedProcessEventWithCategory_type_payload___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 264);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 264), *(result + 40));
  }

  return result;
}

uint64_t __64__VCAggregator_dispatchedProcessEventWithCategory_type_payload___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 272);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 272), *(result + 48), *(result + 40));
  }

  return result;
}

- (void)processEventWithCategory:(unsigned __int16)a3 type:(unsigned __int16)a4 payload:(id)a5
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__VCAggregator_processEventWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  v7 = a3;
  v8 = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_sync(stateQueue, block);
}

- (void)updateTimestampJumpStats:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"VCASTimestampJumpDuration"];
  if (v5)
  {
    -[VCHistogram addValue:](self->_audioStreamTimestampJumpDuration, "addValue:", [v5 unsignedIntValue]);
  }

  v6 = [a3 objectForKeyedSubscript:@"VCASTimestampJumpCount"];
  if (v6)
  {
    self->_audioStreamTimestampJumpCount += [v6 unsignedIntValue];
  }

  v7 = [a3 objectForKeyedSubscript:@"VCASTimestampJumpMax"];
  if (v7)
  {
    audioStreamTimestampJumpMax = self->_audioStreamTimestampJumpMax;
    v9 = [v7 unsignedLongValue];
    if (audioStreamTimestampJumpMax <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = audioStreamTimestampJumpMax;
    }

    self->_audioStreamTimestampJumpMax = v10;
  }
}

- (void)addCameraMetricsToReportDictionary:(id)a3 totalDuration:(int)a4
{
  v27 = *MEMORY[0x277D85DE8];
  cameraTimers = self->_cameraTimers;
  [(VCAggregator *)self microFromPayload:0];
  [(TimingCollection *)cameraTimers setStopTime:1 forKey:?];
  [(TimingCollection *)self->_cameraTimers totalTimeForKey:1];
  v9 = v8;
  v10 = 0;
  if (a4 && v8 > 0.0)
  {
    v11 = 10000.0;
    if (v9 * 10000.0 / a4 <= 10000.0)
    {
      v11 = v9 * 10000.0 / a4;
    }

    v10 = v11;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR(8u);
    v13 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCAggregator addCameraMetricsToReportDictionary:totalDuration:]";
        v19 = 1024;
        v20 = 1015;
        v21 = 1024;
        v22 = v10;
        v23 = 2048;
        v24 = v9;
        v25 = 1024;
        v26 = a4;
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cameraFrontPercentage=%d, frontCameraTime=%8.2f, TotalTime=%d", &v15, 0x32u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136316418;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCAggregator addCameraMetricsToReportDictionary:totalDuration:]";
      v19 = 1024;
      v20 = 1015;
      v21 = 1024;
      v22 = v10;
      v23 = 2048;
      v24 = v9;
      v25 = 1024;
      v26 = a4;
      _os_log_debug_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d cameraFrontPercentage=%d, frontCameraTime=%8.2f, TotalTime=%d", &v15, 0x32u);
    }
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v10), @"CAMPOS"}];
  [(VCMediaRecorderDataCollector *)self->_mediaRecorderDataCollector addAggregatedMediaRecorderMetricsToReport:a3];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)addAggregateAudioInjectorMetricsToReport:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_audioInjectorSetUpTime), @"ACAITTSU"}];
  [a3 setObject:-[VCHistogram description](self->_audioInjectorFileSizeHistogram forKeyedSubscript:{"description"), @"ACAIFSH"}];
  v5 = [(VCHistogram *)self->_audioInjectorMessageLengthHistogram description];

  [a3 setObject:v5 forKeyedSubscript:@"ACAIFLH"];
}

- (void)setNWActivityReportingEnabled:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  self->_isNWActivityReportingEnabled = a3;
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
        v11 = "[VCAggregator setNWActivityReportingEnabled:]";
        v12 = 1024;
        v13 = 1031;
        v14 = 1024;
        v15 = isNWActivityReportingEnabled;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isNWActivityReportingEnabled=%d", &v8, 0x22u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [(VCAggregator *)v4 setNWActivityReportingEnabled:?];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addAudioStreamTimestampJumpDurationToReport:(id)a3
{
  [a3 setObject:-[VCHistogram description](self->_audioStreamTimestampJumpDuration forKeyedSubscript:{"description"), @"ATJD"}];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_audioStreamTimestampJumpCount), @"ATJC"}];
  v5 = [MEMORY[0x277CCABA8] numberWithUnsignedLong:self->_audioStreamTimestampJumpMax];

  [a3 setObject:v5 forKeyedSubscript:@"ATJM"];
}

- (void)migrateValueForKey:(__CFString *)a3 from:(id)a4 to:(id)a5 withKey:(__CFString *)a6
{
  v8 = [a4 objectForKeyedSubscript:a3];
  if (v8)
  {

    [a5 setObject:v8 forKeyedSubscript:a6];
  }
}

- (BOOL)didUpdateStringFrom:(id *)a3 toString:(id)a4
{
  if (a3)
  {
    if (!*a3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = [*a3 caseInsensitiveCompare:a4];
    if (v6)
    {
      v7 = *a3;
LABEL_7:

      *a3 = [a4 copy];
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (double)microFromPayload:(id)a3
{
  v5 = micro();
  if (!a3)
  {
    return self->_lastUsedTimestamp;
  }

  if ([a3 objectForKeyedSubscript:@"_clientTS"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"_clientTS", "doubleValue"}];
    v5 = v6;
    self->_lastUsedTimestamp = v6;
  }

  return v5;
}

+ (id)interfaceCategoryForType:(id)a3
{
  if ([a3 containsString:@"NonCellular"])
  {
    return @"W";
  }

  if ([a3 containsString:@"Wired"])
  {
    return @"E";
  }

  if ([&unk_284FA5858 containsObject:a3])
  {
    return @"F";
  }

  return @"S";
}

+ (id)connectionCategoryForType:(id)a3
{
  if ([a3 isEqualToString:@"p2p"])
  {
    return @"P";
  }

  else
  {
    return @"R";
  }
}

+ (unsigned)mediaStreamDirectionForSegmentReportDirection:(int)a3
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (id)duplicationIndicator
{
  if (self->_isDuplicationEnabled)
  {
    return @"D";
  }

  else
  {
    return @"N";
  }
}

+ (id)relayedCallTypeIndicator:(id)a3
{
  if (![a3 objectForKeyedSubscript:@"RelayedCT"])
  {
    return @"nil";
  }

  return [a3 objectForKeyedSubscript:@"RelayedCT"];
}

- (void)updateVideoFECStats:(id)a3 fecStats:(id)a4 callLossPattern:(id)a5 segmentLossPattern:(id)a6 segmentLossHistogram:(id)a7 segmentLossFecHistogram:(id)a8
{
  [(VCAggregator *)self updateVideoFECStatsOnCall:a3 callLossPattern:a5];

  [(VCAggregator *)self updateVideoFECStatsOnSegment:a3 fecStats:a4 segmentLossPattern:a6 segmentLossHistogram:a7 segmentLossFecHistogram:a8 direction:1];
}

- (void)updateVideoFECStatsOnCall:(id)a3 callLossPattern:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VFecStats", "objectForKeyedSubscript:", @"VRLossPattern"}];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
              objc_enumerationMutation(v5);
            }

            [a4 addValue:objc_msgSend(*(*(&v11 + 1) + 8 * i) withIncrement:{"integerValue"), objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", *(*(&v11 + 1) + 8 * i)), "integerValue")}];
          }

          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }

    else
    {
      [VCAggregator updateVideoFECStatsOnCall:callLossPattern:];
    }
  }

  else
  {
    [VCAggregator updateVideoFECStatsOnCall:callLossPattern:];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoFECStatsOnSegment:(id)a3 fecStats:(id)a4 segmentLossPattern:(id)a5 segmentLossHistogram:(id)a6 segmentLossFecHistogram:(id)a7 direction:(int)a8
{
  v46 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if (a7)
          {
            v13 = @"VFecStats";
            if (!a8)
            {
              v13 = @"VTxFecStats";
            }

            v14 = [a3 objectForKeyedSubscript:v13];
            [(VCAggregator *)self updateFECStats:a4 usingUpdateValuesIn:v14];
            v15 = [v14 objectForKeyedSubscript:@"VRLossPattern"];
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v16 = [v15 countByEnumeratingWithState:&v39 objects:v45 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v40;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v40 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  [a5 addValue:objc_msgSend(*(*(&v39 + 1) + 8 * i) withIncrement:{"integerValue"), objc_msgSend(objc_msgSend(v15, "objectForKeyedSubscript:", *(*(&v39 + 1) + 8 * i)), "integerValue")}];
                }

                v17 = [v15 countByEnumeratingWithState:&v39 objects:v45 count:16];
              }

              while (v17);
            }

            v20 = [v14 objectForKeyedSubscript:@"VRLossHistogram"];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v21 = [v20 countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v36;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v36 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  [a6 addValue:objc_msgSend(*(*(&v35 + 1) + 8 * j) withArray:{"integerValue"), objc_msgSend(v20, "objectForKeyedSubscript:", *(*(&v35 + 1) + 8 * j))}];
                }

                v22 = [v20 countByEnumeratingWithState:&v35 objects:v44 count:16];
              }

              while (v22);
            }

            v25 = [v14 objectForKeyedSubscript:@"VRLossFecHistogram"];
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v26 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v32;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v32 != v28)
                  {
                    objc_enumerationMutation(v20);
                  }

                  [a7 addValue:objc_msgSend(*(*(&v31 + 1) + 8 * k) withArray:{"integerValue"), objc_msgSend(v25, "objectForKeyedSubscript:", *(*(&v31 + 1) + 8 * k))}];
                }

                v27 = [v20 countByEnumeratingWithState:&v31 objects:v43 count:16];
              }

              while (v27);
            }
          }

          else
          {
            [VCAggregator updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:];
          }
        }

        else
        {
          [VCAggregator updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:];
        }
      }

      else
      {
        [VCAggregator updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:];
      }
    }

    else
    {
      [VCAggregator updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:];
    }
  }

  else
  {
    [VCAggregator updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updateFECStats:(id)a3 usingUpdateValuesIn:(id)a4
{
  v112 = *MEMORY[0x277D85DE8];
  if ([a4 objectForKeyedSubscript:@"VFecDB"])
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v6 = [a4 objectForKeyedSubscript:@"VFecDB"];
    v7 = [v6 countByEnumeratingWithState:&v98 objects:v111 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v99;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v99 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [objc_msgSend(a3 "totalFECDataByteCount")];
        }

        v8 = [v6 countByEnumeratingWithState:&v98 objects:v111 count:16];
      }

      while (v8);
    }
  }

  if ([a4 objectForKeyedSubscript:@"VFecPB"])
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v11 = [a4 objectForKeyedSubscript:@"VFecPB"];
    v12 = [v11 countByEnumeratingWithState:&v94 objects:v110 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v95;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v95 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [objc_msgSend(a3 "totalFECParityByteCount")];
        }

        v13 = [v11 countByEnumeratingWithState:&v94 objects:v110 count:16];
      }

      while (v13);
    }
  }

  if ([a4 objectForKeyedSubscript:@"VFecTF"])
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v16 = [a4 objectForKeyedSubscript:@"VFecTF"];
    v17 = [v16 countByEnumeratingWithState:&v90 objects:v109 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v91;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v91 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [objc_msgSend(a3 "totalFECFrameCount")];
        }

        v18 = [v16 countByEnumeratingWithState:&v90 objects:v109 count:16];
      }

      while (v18);
    }
  }

  if ([a4 objectForKeyedSubscript:@"VFecCF"])
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v21 = [a4 objectForKeyedSubscript:@"VFecCF"];
    v22 = [v21 countByEnumeratingWithState:&v86 objects:v108 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v87;
      do
      {
        for (m = 0; m != v23; ++m)
        {
          if (*v87 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [objc_msgSend(a3 "completeFECFrameCount")];
        }

        v23 = [v21 countByEnumeratingWithState:&v86 objects:v108 count:16];
      }

      while (v23);
    }
  }

  if ([a4 objectForKeyedSubscript:@"VFecNF"])
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v26 = [a4 objectForKeyedSubscript:@"VFecNF"];
    v27 = [v26 countByEnumeratingWithState:&v82 objects:v107 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v83;
      do
      {
        for (n = 0; n != v28; ++n)
        {
          if (*v83 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [objc_msgSend(a3 "unfixableFECFrameCount")];
        }

        v28 = [v26 countByEnumeratingWithState:&v82 objects:v107 count:16];
      }

      while (v28);
    }
  }

  if ([a4 objectForKeyedSubscript:@"VFecFF"])
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v31 = [a4 objectForKeyedSubscript:@"VFecFF"];
    v32 = [v31 countByEnumeratingWithState:&v78 objects:v106 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v79;
      do
      {
        for (ii = 0; ii != v33; ++ii)
        {
          if (*v79 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [objc_msgSend(a3 "failedFECFrameCount")];
        }

        v33 = [v31 countByEnumeratingWithState:&v78 objects:v106 count:16];
      }

      while (v33);
    }
  }

  if ([a4 objectForKeyedSubscript:@"VFecMPC"])
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v36 = [a4 objectForKeyedSubscript:@"VFecMPC"];
    v37 = [v36 countByEnumeratingWithState:&v74 objects:v105 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v75;
      do
      {
        for (jj = 0; jj != v38; ++jj)
        {
          if (*v75 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [objc_msgSend(a3 "totalFECMediaPacketCount")];
        }

        v38 = [v36 countByEnumeratingWithState:&v74 objects:v105 count:16];
      }

      while (v38);
    }
  }

  if ([a4 objectForKeyedSubscript:@"VFecPPC"])
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v41 = [a4 objectForKeyedSubscript:@"VFecPPC"];
    v42 = [v41 countByEnumeratingWithState:&v70 objects:v104 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v71;
      do
      {
        for (kk = 0; kk != v43; ++kk)
        {
          if (*v71 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [objc_msgSend(a3 "totalFECParityPacketCount")];
        }

        v43 = [v41 countByEnumeratingWithState:&v70 objects:v104 count:16];
      }

      while (v43);
    }
  }

  if ([a4 objectForKeyedSubscript:@"VFecTF"] && (v68 = 0u, v69 = 0u, v66 = 0u, v67 = 0u, v46 = objc_msgSend(a4, "objectForKeyedSubscript:", @"VFecTF"), (v47 = objc_msgSend(v46, "countByEnumeratingWithState:objects:count:", &v66, v103, 16)) != 0))
  {
    v48 = v47;
    v49 = 0;
    v50 = *v67;
    do
    {
      for (mm = 0; mm != v48; ++mm)
      {
        if (*v67 != v50)
        {
          objc_enumerationMutation(v46);
        }

        v49 += [objc_msgSend(objc_msgSend(a4 objectForKeyedSubscript:{@"VFecTF", "objectForKeyedSubscript:", *(*(&v66 + 1) + 8 * mm)), "unsignedLongValue"}];
      }

      v48 = [v46 countByEnumeratingWithState:&v66 objects:v103 count:16];
    }

    while (v48);
  }

  else
  {
    v49 = 0;
  }

  if ([a4 objectForKeyedSubscript:@"VFecTF"])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [a4 objectForKeyedSubscript:@"VFecTF"];
    v52 = [obj countByEnumeratingWithState:&v62 objects:v102 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v55 = *v63;
      do
      {
        for (nn = 0; nn != v53; ++nn)
        {
          if (*v63 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v57 = *(*(&v62 + 1) + 8 * nn);
          v58 = [objc_msgSend(objc_msgSend(a4 objectForKeyedSubscript:{@"VFecTF", "objectForKeyedSubscript:", v57), "unsignedLongValue"}];
          v54 += v58 * [v57 intValue];
        }

        v53 = [obj countByEnumeratingWithState:&v62 objects:v102 count:16];
      }

      while (v53);
      if (v49)
      {
        goto LABEL_84;
      }

LABEL_86:
      v59 = 0;
      goto LABEL_87;
    }
  }

  v54 = 0;
  if (!v49)
  {
    goto LABEL_86;
  }

LABEL_84:
  v59 = v54 / v49;
LABEL_87:
  [objc_msgSend(a3 "fecLevelDuration")];
  v60 = *MEMORY[0x277D85DE8];
}

- (void)addFECStatsHolderKPIs:(id)a3 usingFECStatsHolder:(id)a4 reportFrameSizeTelemetry:(BOOL)a5 reportLevels:(BOOL)a6
{
  if (a4)
  {
    v6 = a6;
    v7 = a5;
    [objc_msgSend(a4 "totalFECDataByteCount")];
    [objc_msgSend(a4 "totalFECParityByteCount")];
    [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"totalFECParityByteCount"), "description"), @"FECBPS"}];
    [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"totalFECFrameCount"), "description"), @"FECFC"}];
    [objc_msgSend(a4 "completeFECFrameCount")];
    [objc_msgSend(a4 "completeFECFrameCount")];
    [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"completeFECFrameCount"), "description"), @"FECVPNR"}];
    [objc_msgSend(a4 "unfixableFECFrameCount")];
    [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"unfixableFECFrameCount"), "description"), @"FECVPUR"}];
    [objc_msgSend(a4 "failedFECFrameCount")];
    [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"failedFECFrameCount"), "description"), @"FECVPFR"}];
    [objc_msgSend(a4 "totalFECMediaPacketCount")];
    [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"totalFECMediaPacketCount"), "description"), @"FECMPR"}];
    [objc_msgSend(a4 "totalFECParityPacketCount")];
    [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"totalFECParityPacketCount"), "description"), @"FECPPR"}];
    if (v6)
    {
      [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"fecLevelDuration"), "description"), @"FECLVL"}];
    }

    if (v7)
    {
      [objc_msgSend(a4 "frameSizeVsParityCount")];
      [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"frameSizeVsParityCount"), "description"), @"FECFP"}];
      [objc_msgSend(a4 "frameSizeVsDeltaBetweenParityAndLoss")];
      [a3 setObject:objc_msgSend(objc_msgSend(a4 forKeyedSubscript:{"frameSizeVsDeltaBetweenParityAndLoss"), "description"), @"FECFDPL"}];
      v10 = [objc_msgSend(a4 "frameSizeVsFailedCount")];

      [a3 setObject:v10 forKeyedSubscript:@"FECFDF"];
    }
  }

  else
  {
    [VCAggregator addFECStatsHolderKPIs:usingFECStatsHolder:reportFrameSizeTelemetry:reportLevels:];
  }
}

- (void)addFECStats:(id)a3 parameters:(tagVCFECSegmentReportParameters *)a4 reportFrameSizeTelemetry:(BOOL)a5 reportLevels:(BOOL)a6
{
  if (a3)
  {
    if (a4)
    {
      var0 = a4->var0;
      if (a4->var0)
      {
        if (a4->var1)
        {
          if (a4->var2)
          {
            if (a4->var3)
            {
              [VCAggregator addFECStatsHolderKPIs:"addFECStatsHolderKPIs:usingFECStatsHolder:reportFrameSizeTelemetry:reportLevels:" usingFECStatsHolder:? reportFrameSizeTelemetry:? reportLevels:?];
              var6 = a4->var6;
              if (var6)
              {
                v10 = a4->var7 / var6;
              }

              else
              {
                v10 = 0;
              }

              [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v10), @"AFECET"}];
              [a3 setObject:objc_msgSend(a4->var1 forKeyedSubscript:{"description"), @"VRXL"}];
              [a3 setObject:objc_msgSend(a4->var2 forKeyedSubscript:{"description"), @"VRXLP"}];
              v11 = [a4->var3 description];

              [a3 setObject:v11 forKeyedSubscript:@"VRXLFP"];
            }

            else
            {
              [VCAggregator addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:];
            }
          }

          else
          {
            [VCAggregator addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:];
          }
        }

        else
        {
          [VCAggregator addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:];
        }
      }

      else
      {
        [VCAggregator addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:];
      }
    }

    else
    {
      [VCAggregator addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:];
    }
  }

  else
  {
    [VCAggregator addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:];
  }
}

- (__WiFiDeviceClient)copyCurrentWiFiDevice
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v2 = getWiFiManagerClientCreateSymbolLoc_ptr;
  v18 = getWiFiManagerClientCreateSymbolLoc_ptr;
  if (!getWiFiManagerClientCreateSymbolLoc_ptr)
  {
    v14 = MEMORY[0x277D85DD0];
    v3 = MobileWiFiLibrary();
    v16[3] = dlsym(v3, "WiFiManagerClientCreate");
    getWiFiManagerClientCreateSymbolLoc_ptr = v16[3];
    v2 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v2)
  {
    [VCAggregator copyCurrentWiFiDevice];
  }

  v4 = (v2)(0, 0);
  if (!v4)
  {
    [VCAggregator copyCurrentWiFiDevice];
    return v14;
  }

  v5 = v4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = getWiFiManagerClientCopyDevicesSymbolLoc_ptr;
  v18 = getWiFiManagerClientCopyDevicesSymbolLoc_ptr;
  if (!getWiFiManagerClientCopyDevicesSymbolLoc_ptr)
  {
    v14 = MEMORY[0x277D85DD0];
    v7 = MobileWiFiLibrary();
    v16[3] = dlsym(v7, "WiFiManagerClientCopyDevices");
    getWiFiManagerClientCopyDevicesSymbolLoc_ptr = v16[3];
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v6)
  {
    [VCAggregator copyCurrentWiFiDevice];
  }

  v8 = v6(v5);
  v9 = v8;
  if (v8 && CFArrayGetCount(v8) > 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      CFRetain(ValueAtIndex);
    }

    else
    {
      [VCAggregator copyCurrentWiFiDevice];
      v11 = v14;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (([(VCAggregator *)v9 == 0 copyCurrentWiFiDevice]& 1) != 0)
    {
      goto LABEL_13;
    }
  }

  CFRelease(v9);
  v12 = v11;
LABEL_13:
  CFRelease(v5);
  return v12;
}

- (id)phyModeFromWifiInterface:(id)a3
{
  if ([(NSString *)self->_localInterfaceType caseInsensitiveCompare:@"NonCellular"])
  {
    [VCAggregator phyModeFromWifiInterface:];
  }

  else
  {
    result = [a3 maxPHYModeDescription];
    if (result)
    {
      goto LABEL_3;
    }

    [VCAggregator phyModeFromWifiInterface:];
  }

  result = v5;
LABEL_3:
  if (!result)
  {
    return &stru_284F80940;
  }

  return result;
}

- (BOOL)isApplePersonalHotspotAndUpdatePhyMode
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (self->_isDuplicationEnabled)
  {
    [(VCAggregator *)buf isApplePersonalHotspotAndUpdatePhyMode];
LABEL_25:
    v5 = *buf;
    v12 = LOBYTE(v17[0]);
    goto LABEL_17;
  }

  if ([(NSString *)self->_localInterfaceType caseInsensitiveCompare:@"NonCellular"])
  {
    [(VCAggregator *)buf isApplePersonalHotspotAndUpdatePhyMode];
    goto LABEL_25;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&v19 = __Block_byref_object_copy__9;
  v3 = getCWFInterfaceClass_softClass;
  *(&v19 + 1) = __Block_byref_object_dispose__9;
  v20 = getCWFInterfaceClass_softClass;
  if (!getCWFInterfaceClass_softClass)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __getCWFInterfaceClass_block_invoke;
    v17[3] = &unk_278BD5310;
    v17[4] = buf;
    __getCWFInterfaceClass_block_invoke(v17);
    v3 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);
  v4 = objc_alloc_init(v3);
  v5 = v4;
  if (!v4)
  {
    [(VCAggregator *)buf isApplePersonalHotspotAndUpdatePhyMode];
    goto LABEL_25;
  }

  [v4 activate];
  [(VCAggregator *)self setLocalPHYMode:[(VCAggregator *)self phyModeFromWifiInterface:v5]];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR(8u);
    v7 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        localPHYMode = self->_localPHYMode;
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAggregator isApplePersonalHotspotAndUpdatePhyMode]";
        *&buf[22] = 1024;
        LODWORD(v19) = 1504;
        WORD2(v19) = 2112;
        *(&v19 + 6) = localPHYMode;
        _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d locaPHYMode=%@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [(VCAggregator *)v6 isApplePersonalHotspotAndUpdatePhyMode];
    }
  }

  v9 = [v5 currentKnownNetworkProfile];
  if (VRTraceGetErrorLogLevelForModule("") >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR(6u);
    v11 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAggregator isApplePersonalHotspotAndUpdatePhyMode]";
      *&buf[22] = 1024;
      LODWORD(v19) = 1508;
      WORD2(v19) = 2112;
      *(&v19 + 6) = v9;
      _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PHS: WiFi interface profile=%@", buf, 0x26u);
    }
  }

  if (!v9)
  {
    [(VCAggregator *)v5 isApplePersonalHotspotAndUpdatePhyMode];
    goto LABEL_25;
  }

  v12 = [v9 isPersonalHotspot];
LABEL_17:
  [v5 invalidate];

  if (VRTraceGetErrorLogLevelForModule("") >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR(6u);
    v14 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAggregator isApplePersonalHotspotAndUpdatePhyMode]";
      *&buf[22] = 1024;
      LODWORD(v19) = 1517;
      WORD2(v19) = 1024;
      *(&v19 + 6) = v12;
      _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PHS: returned value=%d", buf, 0x22u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)hasQRServerPrefix:(id)a3
{
  if ([a3 hasPrefix:@"qrce_"])
  {
    return 1;
  }

  return [a3 hasPrefix:@"qrse_"];
}

- (void)updateReportWithQRServerSessionStats:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  qrExperiments = self->_qrExperiments;
  if (qrExperiments)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSDictionary *)qrExperiments countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(qrExperiments);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([(VCAggregator *)self hasQRServerSessionPrefix:v10])
          {
            [a3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_qrExperiments forKeyedSubscript:{"objectForKeyedSubscript:", v10), v10}];
          }
        }

        v7 = [(NSDictionary *)qrExperiments countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [VCAggregator updateReportWithQRServerSessionStats:];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)filterDictionaryUsingQRServerPrefix:(id)a3 addTo:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(VCAggregator *)self hasQRServerPrefix:v11])
        {
          [a4 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", v11), v11}];
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processRTEvent:(id)a3
{
  ++self->_sessionRealtimeEventCount;
  ++self->_segmentRealtimeEventCount;
  [(VCAggregator *)self processBitratesWithPayload:a3];
}

- (id)dispatchedAggregatedSegmentReport:(int)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  segmentRealtimeEventCount = self->_segmentRealtimeEventCount;
  v5 = [(VCAggregator *)self RTPeriod]* segmentRealtimeEventCount;
  if (!v5)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = VCAggregator;
  v6 = [(VCReportingCommon *)&v9 dispatchedAggregatedReportCommon];
  [v6 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v5), @"DRTN"}];
  [v6 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_transportType), @"TT"}];
  segmentName = self->_segmentName;
  if (segmentName)
  {
    [v6 setObject:segmentName forKeyedSubscript:@"CONFIG"];
  }

  return v6;
}

- (id)dispatchedAggregatedCallReport
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v4.receiver = self;
  v4.super_class = VCAggregator;
  return [(VCReportingCommon *)&v4 dispatchedAggregatedReportCommon];
}

- (id)dispatchedAggregatedSessionReport
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v7.receiver = self;
  v7.super_class = VCAggregator;
  v3 = [(VCReportingCommon *)&v7 dispatchedAggregatedReportCommon];
  sessionRealtimeEventCount = self->_sessionRealtimeEventCount;
  v5 = [(VCAggregator *)self RTPeriod];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v5 * sessionRealtimeEventCount), @"DRTN"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_transportType), @"TT"}];
  return v3;
}

- (void)reset
{
  localInterfaceType = self->_localInterfaceType;
  if (localInterfaceType)
  {
    CFRelease(localInterfaceType);
    self->_localInterfaceType = 0;
  }

  connectionType = self->_connectionType;
  if (connectionType)
  {
    CFRelease(connectionType);
    self->_connectionType = 0;
  }

  streamToken = self->_streamToken;
  if (streamToken)
  {
    CFRelease(streamToken);
    self->_streamToken = 0;
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    CFRelease(sessionID);
    self->_sessionID = 0;
  }

  self->_switchIntoDupCount = 0;
  self->_segmentRealtimeEventCount = 0;
}

- (void)startNewSegment
{
  [(VCAggregator *)self flushCurrentSegment];

  [(VCAggregator *)self reset];
}

- (void)processBitratesWithPayload:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"TTxR"];
  if (v5)
  {
    self->_targetBitrateSum += [v5 intValue];
    ++self->_targetBitrateCount;
  }

  v6 = [a3 objectForKeyedSubscript:@"ARxR"];
  if (v6 | [a3 objectForKeyedSubscript:@"VRxR"])
  {
    ++self->_rxTotalBitrateCount;
  }
}

- (void)processInitWithPayload:(id)a3 timestamp:(double)a4
{
  self->_sessionCreatedTime = a4;
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCSMode", "integerValue"}];
  self->_currentSessionMode = v5;
  self->_initialSessionMode = v5;
}

- (void)initializeLowLatencyInterfaceStatistics
{
  v73 = *MEMORY[0x277D85DE8];
  if (self->_transportType == 2 && self->_shouldReportLowLatencyInterfaceStatistics)
  {
    if (![(VCAggregator *)self lowLatencyInterfaceMonitor])
    {
      [(VCAggregator *)self setLowLatencyInterfaceMonitor:objc_alloc_init(MEMORY[0x277D7BB20])];
    }

    [(VCAggregator *)self setLowLatencyInterfaceStatistics:[(WiFiP2PAWDLStateMonitor *)[(VCAggregator *)self lowLatencyInterfaceMonitor] copyLowLatencyStatistics]];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 8)
      {
        __str[0] = 0;
        v4 = [(VCAggregator *)self lowLatencyInterfaceStatistics]? [(NSString *)[(NSDictionary *)[(VCAggregator *)self lowLatencyInterfaceStatistics] description] UTF8String]: "<nil>";
        asprintf(__str, "%s", v4);
        if (__str[0])
        {
          __lasts = 0;
          strtok_r(__str[0], "\n", &__lasts);
          *&v34 = 136316162;
          v69 = v34;
          do
          {
            if (VRTraceGetErrorLogLevelForModule("") >= 8)
            {
              VRTraceErrorLogLevelToCSTR(8u);
              v35 = OUTLINED_FUNCTION_15_1();
              if (v9)
              {
                v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
                if (v36)
                {
                  OUTLINED_FUNCTION_6_8(v36, v37, v38, v39, v40, v41, v42, v43, v62, v63, v65, v67, v69);
                  v72 = 2080;
                  v44 = OUTLINED_FUNCTION_2_6();
                  _os_log_impl(v44, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", v46, 0x30u);
                }
              }

              else
              {
                v47 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
                if (v47)
                {
                  OUTLINED_FUNCTION_6_8(v47, v48, v49, v50, v51, v52, v53, v54, v62, v63, v65, v67, v69);
                  v72 = 2080;
                  v57 = OUTLINED_FUNCTION_2_6();
                  _os_log_debug_impl(v57, v58, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %s %s", v59, 0x30u);
                }
              }
            }

            v55 = OUTLINED_FUNCTION_14_2();
          }

          while (strtok_r(v55, "\n", v56));
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCAggregator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") >= 8)
      {
        __str[0] = 0;
        v5 = [(__CFString *)v3 UTF8String];
        v6 = [(VCAggregator *)self lowLatencyInterfaceStatistics]? [(NSString *)[(NSDictionary *)[(VCAggregator *)self lowLatencyInterfaceStatistics] description] UTF8String]: "<nil>";
        asprintf(__str, "%s(%p) %s", v5, self, v6);
        if (__str[0])
        {
          __lasts = 0;
          strtok_r(__str[0], "\n", &__lasts);
          *&v7 = 136316162;
          v68 = v7;
          do
          {
            if (VRTraceGetErrorLogLevelForModule("") >= 8)
            {
              VRTraceErrorLogLevelToCSTR(8u);
              v8 = OUTLINED_FUNCTION_15_1();
              if (v9)
              {
                v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
                if (v10)
                {
                  OUTLINED_FUNCTION_6_8(v10, v11, v12, v13, v14, v15, v16, v17, v61, v64, v66, v67, v68);
                  v72 = 2080;
                  v18 = OUTLINED_FUNCTION_2_6();
                  _os_log_impl(v18, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", v20, 0x30u);
                }
              }

              else
              {
                v21 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
                if (v21)
                {
                  OUTLINED_FUNCTION_6_8(v21, v22, v23, v24, v25, v26, v27, v28, v61, v64, v66, v67, v68);
                  v72 = 2080;
                  v31 = OUTLINED_FUNCTION_2_6();
                  _os_log_debug_impl(v31, v32, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %s %s", v33, 0x30u);
                }
              }
            }

            v29 = OUTLINED_FUNCTION_14_2();
          }

          while (strtok_r(v29, "\n", v30));
LABEL_38:
          free(__str[0]);
        }
      }
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)addLowLatencyInterfaceStatisticsToPayload:(id)a3
{
  v342 = *MEMORY[0x277D85DE8];
  if (self->_transportType == 2)
  {
    if ([(VCAggregator *)self lowLatencyInterfaceMonitor])
    {
      v4 = [(WiFiP2PAWDLStateMonitor *)[(VCAggregator *)self lowLatencyInterfaceMonitor] copyLowLatencyStatistics];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 8)
        {
          v337 = 0;
          v6 = v4 ? [objc_msgSend(v4 "description")] : "<nil>";
          asprintf(&v337, "%s", v6);
          if (v337)
          {
            OUTLINED_FUNCTION_25_1(v337, v44, v45, v46, v47, v48, v49, v50, v317, v323, v327, v331, v334, *(&v334 + 1), 0);
            OUTLINED_FUNCTION_23_0();
            do
            {
              if (VRTraceGetErrorLogLevelForModule("") >= 8)
              {
                VRTraceErrorLogLevelToCSTR(8u);
                OUTLINED_FUNCTION_22_0();
                v51 = OUTLINED_FUNCTION_24_1();
                if (v17)
                {
                  v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
                  if (v52)
                  {
                    OUTLINED_FUNCTION_3_5(v52, v53, v54, v55, v56, v57, v58, v59, v318, v323, v327, v331, v334);
                    OUTLINED_FUNCTION_5_2();
                    OUTLINED_FUNCTION_1_7();
                    OUTLINED_FUNCTION_20_2();
                    _os_log_impl(v60, v61, v62, " [%s] %s:%d %s %s", v63, 0x30u);
                  }
                }

                else
                {
                  v64 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);
                  if (v64)
                  {
                    OUTLINED_FUNCTION_3_5(v64, v65, v66, v67, v68, v69, v70, v71, v318, v323, v327, v331, v334);
                    OUTLINED_FUNCTION_5_2();
                    OUTLINED_FUNCTION_1_7();
                    OUTLINED_FUNCTION_21_1();
                    _os_log_debug_impl(v74, v75, v76, " [%s] %s:%d %s %s", v77, 0x30u);
                  }
                }
              }

              v72 = OUTLINED_FUNCTION_14_2();
            }

            while (strtok_r(v72, "\n", v73));
            goto LABEL_36;
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [(VCAggregator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") >= 8)
        {
          v337 = 0;
          v7 = [(__CFString *)v5 UTF8String];
          v8 = v4 ? [objc_msgSend(v4 "description")] : "<nil>";
          asprintf(&v337, "%s(%p) %s", v7, self, v8);
          if (v337)
          {
            OUTLINED_FUNCTION_25_1(v337, v9, v10, v11, v12, v13, v14, v15, v315, v323, v327, v331, v334, *(&v334 + 1), 0);
            OUTLINED_FUNCTION_23_0();
            do
            {
              if (VRTraceGetErrorLogLevelForModule("") >= 8)
              {
                VRTraceErrorLogLevelToCSTR(8u);
                OUTLINED_FUNCTION_22_0();
                v16 = OUTLINED_FUNCTION_24_1();
                if (v17)
                {
                  v18 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                  if (v18)
                  {
                    OUTLINED_FUNCTION_3_5(v18, v19, v20, v21, v22, v23, v24, v25, v316, v323, v327, v331, v334);
                    OUTLINED_FUNCTION_5_2();
                    OUTLINED_FUNCTION_1_7();
                    OUTLINED_FUNCTION_20_2();
                    _os_log_impl(v26, v27, v28, " [%s] %s:%d %s %s", v29, 0x30u);
                  }
                }

                else
                {
                  v30 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
                  if (v30)
                  {
                    OUTLINED_FUNCTION_3_5(v30, v31, v32, v33, v34, v35, v36, v37, v316, v323, v327, v331, v334);
                    OUTLINED_FUNCTION_5_2();
                    OUTLINED_FUNCTION_1_7();
                    OUTLINED_FUNCTION_21_1();
                    _os_log_debug_impl(v40, v41, v42, " [%s] %s:%d %s %s", v43, 0x30u);
                  }
                }
              }

              v38 = OUTLINED_FUNCTION_14_2();
            }

            while (strtok_r(v38, "\n", v39));
LABEL_36:
            free(v337);
          }
        }
      }

      v78 = [(WiFiP2PAWDLStateMonitor *)[(VCAggregator *)self lowLatencyInterfaceMonitor] lowLatencyStatisticsDifferenceBetweenPrevious:[(VCAggregator *)self lowLatencyInterfaceStatistics] current:v4];
      if (objc_opt_class() == self)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
        if (ErrorLogLevelForModule < 8)
        {
          goto LABEL_71;
        }

        v337 = 0;
        v82 = v78 ? [objc_msgSend(v78 "description")] : "<nil>";
        asprintf(&v337, "%s", v82);
        ErrorLogLevelForModule = v337;
        if (!v337)
        {
          goto LABEL_71;
        }

        OUTLINED_FUNCTION_25_1(v337, v81, v118, v119, v120, v121, v122, v123, v321, v323, v327, v331, v334, *(&v334 + 1), 0);
        OUTLINED_FUNCTION_23_0();
        do
        {
          if (VRTraceGetErrorLogLevelForModule("") >= 8)
          {
            VRTraceErrorLogLevelToCSTR(8u);
            OUTLINED_FUNCTION_22_0();
            v124 = OUTLINED_FUNCTION_24_1();
            if (v17)
            {
              v125 = os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT);
              if (v125)
              {
                OUTLINED_FUNCTION_3_5(v125, v126, v127, v128, v129, v130, v131, v132, v322, v326, v330, v333, v336);
                OUTLINED_FUNCTION_5_2();
                OUTLINED_FUNCTION_1_7();
                OUTLINED_FUNCTION_20_2();
                _os_log_impl(v133, v134, v135, " [%s] %s:%d %s %s", v136, 0x30u);
              }
            }

            else
            {
              v137 = os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG);
              if (v137)
              {
                OUTLINED_FUNCTION_3_5(v137, v138, v139, v140, v141, v142, v143, v144, v322, v326, v330, v333, v336);
                OUTLINED_FUNCTION_5_2();
                OUTLINED_FUNCTION_1_7();
                OUTLINED_FUNCTION_21_1();
                _os_log_debug_impl(v147, v148, v149, " [%s] %s:%d %s %s", v150, 0x30u);
              }
            }
          }

          v145 = OUTLINED_FUNCTION_14_2();
        }

        while (strtok_r(v145, "\n", v146));
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v79 = [(VCAggregator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v79 = &stru_284F80940;
        }

        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
        if (ErrorLogLevelForModule < 8)
        {
          goto LABEL_71;
        }

        v337 = 0;
        v83 = [(__CFString *)v79 UTF8String];
        v84 = v78 ? [objc_msgSend(v78 "description")] : "<nil>";
        asprintf(&v337, "%s(%p) %s", v83, self, v84);
        ErrorLogLevelForModule = v337;
        if (!v337)
        {
          goto LABEL_71;
        }

        OUTLINED_FUNCTION_25_1(v337, v81, v85, v86, v87, v88, v89, v90, v319, v324, v328, v331, v334, *(&v334 + 1), 0);
        OUTLINED_FUNCTION_23_0();
        do
        {
          if (VRTraceGetErrorLogLevelForModule("") >= 8)
          {
            VRTraceErrorLogLevelToCSTR(8u);
            OUTLINED_FUNCTION_22_0();
            v91 = OUTLINED_FUNCTION_24_1();
            if (v17)
            {
              v92 = os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT);
              if (v92)
              {
                OUTLINED_FUNCTION_3_5(v92, v93, v94, v95, v96, v97, v98, v99, v320, v325, v329, v332, v335);
                OUTLINED_FUNCTION_5_2();
                OUTLINED_FUNCTION_1_7();
                OUTLINED_FUNCTION_20_2();
                _os_log_impl(v100, v101, v102, " [%s] %s:%d %s %s", v103, 0x30u);
              }
            }

            else
            {
              v104 = os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG);
              if (v104)
              {
                OUTLINED_FUNCTION_3_5(v104, v105, v106, v107, v108, v109, v110, v111, v320, v325, v329, v332, v335);
                OUTLINED_FUNCTION_5_2();
                OUTLINED_FUNCTION_1_7();
                OUTLINED_FUNCTION_21_1();
                _os_log_debug_impl(v114, v115, v116, " [%s] %s:%d %s %s", v117, 0x30u);
              }
            }
          }

          v112 = OUTLINED_FUNCTION_14_2();
        }

        while (strtok_r(v112, "\n", v113));
      }

      free(v337);
LABEL_71:
      v151 = OUTLINED_FUNCTION_8_5(ErrorLogLevelForModule, v81, @"LL_STATS_ISSDB");
      v153 = OUTLINED_FUNCTION_8_5(v151, v152, @"LL_STATS_COUNTRY_CODE");
      v155 = OUTLINED_FUNCTION_8_5(v153, v154, @"LL_STATS_PEERRSSI24G");
      v157 = OUTLINED_FUNCTION_8_5(v155, v156, @"LL_STATS_PEERRSSI5G");
      v159 = OUTLINED_FUNCTION_8_5(v157, v158, @"LL_STATS_TX_AVG_CCA");
      v161 = OUTLINED_FUNCTION_8_5(v159, v160, @"LL_STATS_SELF_INFRA_PRE_START");
      v163 = OUTLINED_FUNCTION_8_5(v161, v162, @"LL_STATS_SELF_INFRA_POST_START");
      v165 = OUTLINED_FUNCTION_8_5(v163, v164, @"LL_STATS_PEER_INFRA_PRE_START");
      v167 = OUTLINED_FUNCTION_8_5(v165, v166, @"LL_STATS_PEER_INFRA_POST_START");
      v169 = OUTLINED_FUNCTION_8_5(v167, v168, @"LL_STATS_BSSSTEERING_ATTEMPT_COUNT");
      v171 = OUTLINED_FUNCTION_8_5(v169, v170, @"LL_STATS_BSSSTEERING_SUCCESS_COUNT");
      v173 = OUTLINED_FUNCTION_8_5(v171, v172, @"LL_STATS_BSSSTEERING_FAILURE_COUNT");
      v175 = OUTLINED_FUNCTION_8_5(v173, v174, @"LL_STATS_BSSSTEERING_TIMEOUT_COUNT");
      v177 = OUTLINED_FUNCTION_8_5(v175, v176, @"LL_STATS_INFRA_DISCONNECTED_POLICY_COUNT");
      v179 = OUTLINED_FUNCTION_8_5(v177, v178, @"LL_STATS_INFRA_DISCONNECTED_FAILURE_COUNT");
      v181 = OUTLINED_FUNCTION_8_5(v179, v180, @"LL_STATS_LIMITED_TX_MIN_RATE");
      v183 = OUTLINED_FUNCTION_8_5(v181, v182, @"LL_STATS_SESSION_DURATION");
      v185 = OUTLINED_FUNCTION_8_5(v183, v184, @"LL_STATS_IDLE_SLOTS_COUNT");
      v187 = OUTLINED_FUNCTION_8_5(v185, v186, @"LL_STATS_SYNC_ERRORS_COUNT");
      v189 = OUTLINED_FUNCTION_8_5(v187, v188, @"LL_STATS_CHANNEL_SEQ_MISMATCH_COUNT");
      v191 = OUTLINED_FUNCTION_8_5(v189, v190, @"LL_STATS_PREF_5G_CHAN_COUNT");
      v193 = OUTLINED_FUNCTION_8_5(v191, v192, @"LL_STATS_PREF_2G_CHAN_COUNT");
      v195 = OUTLINED_FUNCTION_8_5(v193, v194, @"LL_STATS_PARENT_NODE_CHANGE_COUNT");
      v197 = OUTLINED_FUNCTION_8_5(v195, v196, @"LL_STATS_ROOT_NODE_CHANGE_COUNT");
      v199 = OUTLINED_FUNCTION_8_5(v197, v198, @"LL_STATS_WATCHDOG_OR_CHIPTRAP_COUNT");
      v201 = OUTLINED_FUNCTION_8_5(v199, v200, @"LL_STATS_ACTIVE_SERVICES_BITMAP");
      v203 = OUTLINED_FUNCTION_8_5(v201, v202, @"LL_STATS_REMOTE_CAMERA_ACTIVE");
      v205 = OUTLINED_FUNCTION_8_5(v203, v204, @"LL_STATS_TXSUCCESSCOUNT");
      v207 = OUTLINED_FUNCTION_8_5(v205, v206, @"LL_STATS_TXEXPIREDCOUNT");
      v209 = OUTLINED_FUNCTION_8_5(v207, v208, @"LL_STATS_TXNOBUFFCOUNT");
      v211 = OUTLINED_FUNCTION_8_5(v209, v210, @"LL_STATS_TXNOACKCOUNT");
      v213 = OUTLINED_FUNCTION_8_5(v211, v212, @"LL_STATS_TXFAILCOUNT");
      v215 = OUTLINED_FUNCTION_8_5(v213, v214, @"LL_STATS_TXNORESOURCESCOUNT");
      v217 = OUTLINED_FUNCTION_8_5(v215, v216, @"LL_STATS_TXIOERRORCOUNT");
      v219 = OUTLINED_FUNCTION_8_5(v217, v218, @"LL_STATS_TXMBFREECOUNT");
      v221 = OUTLINED_FUNCTION_8_5(v219, v220, @"LL_STATS_TXCHIPMODEERRCOUNT");
      v223 = OUTLINED_FUNCTION_8_5(v221, v222, @"LL_STATS_TXNOREMOTEPEERCOUNT");
      v225 = OUTLINED_FUNCTION_8_5(v223, v224, @"LL_STATS_TXINTRERRCOUNT");
      v227 = OUTLINED_FUNCTION_8_5(v225, v226, @"LL_STATS_TXDRPCOUNT");
      v229 = OUTLINED_FUNCTION_8_5(v227, v228, @"LL_STATS_TXFWFREEPKTCOUNT");
      v231 = OUTLINED_FUNCTION_8_5(v229, v230, @"LL_STATS_TXMAXRETRIESCOUNT");
      v233 = OUTLINED_FUNCTION_8_5(v231, v232, @"LL_STATS_TXFORCELIFETIMEEXPIREDCOUNT");
      v235 = OUTLINED_FUNCTION_8_5(v233, v234, @"LL_STATS_TXERRORCOUNT");
      v237 = OUTLINED_FUNCTION_8_5(v235, v236, @"LL_STATS_TX_ON_5G_COUNT");
      v239 = OUTLINED_FUNCTION_8_5(v237, v238, @"LL_STATS_TX_ON_2G_COUNT");
      v241 = OUTLINED_FUNCTION_8_5(v239, v240, @"LL_STATS_TX_OVERRIDE_ON_5G_COUNT");
      v243 = OUTLINED_FUNCTION_8_5(v241, v242, @"LL_STATS_TX_NA_COUNT");
      v245 = OUTLINED_FUNCTION_8_5(v243, v244, @"LL_STATS_RX_PACKET_COUNT");
      v247 = OUTLINED_FUNCTION_8_5(v245, v246, @"LL_STATS_RX_ON_5G_COUNT");
      v249 = OUTLINED_FUNCTION_8_5(v247, v248, @"LL_STATS_RX_ON_2G_COUNT");
      v251 = OUTLINED_FUNCTION_8_5(v249, v250, @"LL_STATS_TX_REQUEUE_COUNT");
      v253 = OUTLINED_FUNCTION_8_5(v251, v252, @"LL_STATS_TX_REQUEUE_FAIL_COUNT");
      v255 = OUTLINED_FUNCTION_8_5(v253, v254, @"LL_STATS_TX_SWITCH_NAV_COUNT");
      v257 = OUTLINED_FUNCTION_8_5(v255, v256, @"LL_STATS_TX_SWITCH_HOF_COUNT");
      v259 = OUTLINED_FUNCTION_8_5(v257, v258, @"LL_STATS_TX_TOTAL_DELAY");
      v261 = OUTLINED_FUNCTION_8_5(v259, v260, @"LL_STATS_TX_COMPLETION_DELAY");
      v263 = OUTLINED_FUNCTION_8_5(v261, v262, @"LL_STATS_TX_IPCL_DELAY");
      v265 = OUTLINED_FUNCTION_8_5(v263, v264, @"LL_STATS_TX_FW_DELAY");
      v267 = OUTLINED_FUNCTION_8_5(v265, v266, @"LL_STATS_TX_HW_DELAY");
      v269 = OUTLINED_FUNCTION_8_5(v267, v268, @"LL_STATS_TX_DATA_RATE");
      v271 = OUTLINED_FUNCTION_8_5(v269, v270, @"LL_STATS_TX_RETRIES");
      v273 = OUTLINED_FUNCTION_8_5(v271, v272, @"LL_STATS_TX_PACKET_BURST_SIZE");
      v275 = OUTLINED_FUNCTION_8_5(v273, v274, @"LL_STATS_TX_PACKET_BURST_INTERVAL");
      v277 = OUTLINED_FUNCTION_8_5(v275, v276, @"LL_STATS_TX_PACKET_EXPIRY");
      v279 = OUTLINED_FUNCTION_8_5(v277, v278, @"LL_STATS_TX_CONSECUTIVE_ERRORS");
      v281 = OUTLINED_FUNCTION_8_5(v279, v280, @"LL_STATS_REQUEUE_COUNT");
      v283 = OUTLINED_FUNCTION_8_5(v281, v282, @"LL_STATS_RX_TOTAL_DELAY");
      v285 = OUTLINED_FUNCTION_8_5(v283, v284, @"LL_STATS_RX_IPC_DELAY");
      v287 = OUTLINED_FUNCTION_8_5(v285, v286, @"LL_STATS_RX_FW_DELAY");
      v289 = OUTLINED_FUNCTION_8_5(v287, v288, @"LL_STATS_RX_DATA_RATE");
      v291 = OUTLINED_FUNCTION_8_5(v289, v290, @"LL_STATS_RX_RSSI");
      v293 = OUTLINED_FUNCTION_8_5(v291, v292, @"LL_STATS_TX_CCA");
      v295 = OUTLINED_FUNCTION_8_5(v293, v294, @"LL_STATS_SAME_SSID");
      v297 = OUTLINED_FUNCTION_8_5(v295, v296, @"LL_STATS_SKIP_STEERING_COUNT_RSSI");
      v299 = OUTLINED_FUNCTION_8_5(v297, v298, @"LL_STATS_SKIP_STEERING_COUNT_REFS");
      v301 = OUTLINED_FUNCTION_8_5(v299, v300, @"LL_STATS_SKIP_STEERING_COUNT_DIFFSSID");
      v303 = OUTLINED_FUNCTION_8_5(v301, v302, @"LL_STATS_SKIP_STEERING_COUNT_CHAN");
      v305 = OUTLINED_FUNCTION_8_5(v303, v304, @"LL_STATS_IS_ODEON_ACTIVE");
      v307 = OUTLINED_FUNCTION_8_5(v305, v306, @"LL_STATS_2G_IN_CHAN_SEQ");
      v309 = OUTLINED_FUNCTION_8_5(v307, v308, @"LL_STATS_SIDECAR_SERV_TYPE_BITMAP");
      OUTLINED_FUNCTION_8_5(v309, v310, @"LL_STATS_RTG_ID");
      goto LABEL_72;
    }

    if (VRTraceGetErrorLogLevelForModule("") >= 5)
    {
      v312 = VRTraceErrorLogLevelToCSTR(5u);
      v313 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v338 = 136315650;
        v339 = v312;
        v340 = 2080;
        OUTLINED_FUNCTION_5_2();
        v341 = 1058;
        OUTLINED_FUNCTION_16_2(&dword_23D4DF000, v313, v314, " [%s] %s:%d _lowLatencyInterfaceMonitor=nil, not reporting low latency stats", &v338);
      }
    }
  }

LABEL_72:
  v311 = *MEMORY[0x277D85DE8];
}

- (void)processIDSReportingBlob:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Can not aggregate IDS reporting blob that's not a dictionary", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)processIDSReportingBlob:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Can not aggregate IDS reporting blob that's not a dictionary", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

+ (void)newThermalDataCollectors
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5(&dword_23D4DF000, v1, v2, " [%s] %s:%d Failed to allocate thermal data collectors array", v3, v4, v5, v6, v7);
    }
  }

  OUTLINED_FUNCTION_31_0();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)dispatchedProcessEventWithCategory:(uint64_t)a1 type:payload:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 878;
  _os_log_debug_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Not processing reserved event", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setNWActivityReportingEnabled:(uint64_t)a1 .cold.1(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_2();
  v7 = "[VCAggregator setNWActivityReportingEnabled:]";
  v8 = 1024;
  v9 = 1031;
  v10 = 1024;
  v11 = v3;
  _os_log_debug_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEBUG, " [%s] %s:%d _isNWActivityReportingEnabled=%d", v6, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoFECStatsOnCall:callLossPattern:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d callLossPattern must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoFECStatsOnCall:callLossPattern:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d payload must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentLossFecHistogram must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentLossHistogram must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentLossPattern must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentFecStats must point to a valid container", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateVideoFECStatsOnSegment:fecStats:segmentLossPattern:segmentLossHistogram:segmentLossFecHistogram:direction:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d payload must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addFECStatsHolderKPIs:usingFECStatsHolder:reportFrameSizeTelemetry:reportLevels:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentFECStats must point to a valid container", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentLossFecHistogram must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentLossHistogram must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentLossPattern must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d segmentFECStats must point to a valid container", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d parameters must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)addFECStats:parameters:reportFrameSizeTelemetry:reportLevels:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d fecStatsReport must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)copyCurrentWiFiDevice
{
  v0 = [MEMORY[0x277CCA888] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA0] file:"stringWithUTF8String:" lineNumber:"WiFiManagerClientRef sl_WiFiManagerClientCreate(CFAllocatorRef description:{WiFiClientType)"), @"VCAggregator.m", 47, @"%s", dlerror()}];
  __break(1u);
}

- (uint64_t)copyCurrentWiFiDevice
{
  v11 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5(&dword_23D4DF000, v4, v5, " [%s] %s:%d Failed to get device list for WiFi manager", v6, v7, v8, v9, v10);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return a1 & 1;
}

- (void)phyModeFromWifiInterface:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    v0 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      v4 = 1473;
      OUTLINED_FUNCTION_16_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d Cellular interface used, set phyMode to empty", v3);
    }
  }

  OUTLINED_FUNCTION_31_0();
  v2 = *MEMORY[0x277D85DE8];
}

- (void)phyModeFromWifiInterface:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    v0 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      v4 = 1475;
      OUTLINED_FUNCTION_16_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d result is nil", v3);
    }
  }

  OUTLINED_FUNCTION_31_0();
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isApplePersonalHotspotAndUpdatePhyMode
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 5)
  {
    VRTraceErrorLogLevelToCSTR(5u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_18_3();
      OUTLINED_FUNCTION_16_2(v3, v4, v5, v6, v7);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_31_0();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateReportWithQRServerSessionStats:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d qrExperiments must not be nil", v3, v4, v5, v6, v7);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end