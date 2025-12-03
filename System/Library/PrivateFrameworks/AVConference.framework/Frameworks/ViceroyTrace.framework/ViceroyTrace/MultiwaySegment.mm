@interface MultiwaySegment
- (MultiwaySegment)initWithSegmentName:(id)name previousSegmentName:(id)segmentName segmentStreamGroups:(unsigned int)groups previousSegmentStreamGroups:(unsigned int)streamGroups nwActivity:(id)activity localSwitches:(unsigned int)switches sessionSwitches:(unint64_t)sessionSwitches conversationTimeBase:(id)self0 delegate:(id)obj;
- (double)averageBWE;
- (double)averageReceiveBitrate;
- (double)averageRoundTripTime;
- (double)averageSendBitrate;
- (double)averageTargetBitrate;
- (double)packetLossRate;
- (id)reportingClientExperimentSettingsDictionary;
- (void)_releaseProtocolDescription;
- (void)addCelltechTelemetryToDictionary:(id)dictionary;
- (void)addCommonSegmentTelemetry:(id)telemetry;
- (void)addProtocolStackDescriptionTelemetry:(id)telemetry;
- (void)addQRServerTelemetryToDictionary:(id)dictionary;
- (void)addRateControlExperimentInfoToSegmentReport:(id)report;
- (void)applyKnownDataModeToNewSegment:(id)segment;
- (void)assertCleanCellTech;
- (void)calculateDataModeDurationForLinkProperty:(unsigned int)property withCurrentState:(unsigned __int8)state andTime:(double)time;
- (void)complete_and_release_nw_activity:(int)complete_and_release_nw_activity;
- (void)dealloc;
- (void)endDataModeDuration:(unsigned int *)duration totalTime:(unsigned int *)time time:(double)a5 hasStartedCalculating:(BOOL *)calculating;
- (void)finalizeAllDataModeDurationAtTime:(double)time;
- (void)finalizePathMTUForTime:(double)time;
- (void)flushAllDataModeDurationForLinkProperty:(unsigned int)property AtTime:(double)time;
- (void)markConnectionDurationHasStarted:(unsigned __int8)started withProperty:(unsigned int)property;
- (void)processDataMode:(id)mode withTime:(double)time;
- (void)processDuplicationConnectionTelemetry:(id)telemetry type:(unsigned __int16)type;
- (void)processFrameSizeBasedFECTelemetry:(id)telemetry statsHolder:(id)holder direction:(int)direction;
- (void)processPathMTU:(id)u now:(double)now;
- (void)processRTEventCommon:(id)common now:(double)now;
- (void)processRoundTripTime:(unsigned int)time;
- (void)processTargetBitrate:(unsigned int)bitrate;
- (void)reportVCRCMLStats:(id)stats;
- (void)setNWActivityReportingEnabled:(BOOL)enabled;
- (void)setupConnectionDurationStart:(unsigned __int8)start withProperty:(unsigned int)property setTime:(unsigned int)time;
- (void)startDataModeDuration:(unsigned int *)duration totalTime:(unsigned int *)time time:(double)a5 hasStartedCalculating:(BOOL *)calculating;
- (void)updateCurrentRemoteSliceStatusDuration;
- (void)updateCurrentSliceStatusDuration;
- (void)updateDuplicationPossibilityDuration;
@end

@implementation MultiwaySegment

- (MultiwaySegment)initWithSegmentName:(id)name previousSegmentName:(id)segmentName segmentStreamGroups:(unsigned int)groups previousSegmentStreamGroups:(unsigned int)streamGroups nwActivity:(id)activity localSwitches:(unsigned int)switches sessionSwitches:(unint64_t)sessionSwitches conversationTimeBase:(id)self0 delegate:(id)obj
{
  v21.receiver = self;
  v21.super_class = MultiwaySegment;
  v17 = [(VCReportingCommon *)&v21 init];
  v18 = v17;
  if (v17)
  {
    if (name)
    {
      objc_storeWeak(&v17->_delegate, obj);
      v18->_segmentName = [name copy];
      v18->_previousSegmentName = [segmentName copy];
      v18->_segmentStreamGroups = groups;
      v18->_previousSegmentStreamGroups = streamGroups;
      v18->_RTT = [[VCReportingHistogram alloc] initWithType:0 bucketValues:0];
      v18->_PLR = [[VCReportingHistogram alloc] initWithType:2 bucketValues:0];
      v18->_TBR = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
      reportingGetDefaults(&v18->_interval, &v18->_frequency);
      if (!v18->_interval || !v18->_frequency)
      {
        v18->_interval = 1;
        v18->_frequency = 5;
      }

      v18->_nwActivity = activity;
      if (activity)
      {
        nw_retain(activity);
      }

      v18->_useNwActivitySubmitMetrics = _os_feature_enabled_impl();
      v18->_localSwitches = switches;
      v18->_sessionSwitches = sessionSwitches;
      if (base)
      {
        v18->_conversationTimeBase = [base copy];
        [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
        v18->_startDate = v19;
      }

      v18->_activeTemporalTiersBitmapStreams = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18->_linkPreferSuggestion = -1;
      v18->_linkIPPreference = -1;
      v18->_fecStatsHolder = objc_alloc_init(VCVideoFECStatsHolder);
      v18->_pathMTUArray = objc_alloc_init(MEMORY[0x277CCAB60]);
      v18->_pathMTUDurationArray = objc_alloc_init(MEMORY[0x277CCAB60]);
      v18->_currentPathMTU = 0;
      v18->_pathMTUCounter = 0;
      v18->_minPathMTU = -1;
      v18->_maxPathMTU = 0;
      v18->_currentMTUDurationStartTime = NAN;
      v18->_lossPattern = [[VCReportingHistogram alloc] initWithType:41 bucketValues:0];
      v18->_lossHistogram = [[VCReportingHistogram2D alloc] initWithType:42 bucketValues:0];
      v18->_lossFecHistogram = [[VCReportingHistogram2D alloc] initWithType:42 bucketValues:0];
      v18->_wlanRadioCoexistence = [[VCReportingHistogram alloc] initWithType:85 bucketValues:0];
      v18->_wlanOffChannelTime = [[VCReportingHistogram alloc] initWithType:86 bucketValues:0];
      v18->_wlanMaxSingleOutagePeriod = [[VCReportingHistogram alloc] initWithType:87 bucketValues:0];
      v18->_cellularSliceStatusDuration = [[VCReportingHistogram alloc] initWithType:93 bucketValues:0];
      v18->_cellularRemoteSliceStatusDuration = [[VCReportingHistogram alloc] initWithType:93 bucketValues:0];
    }

    else
    {

      return 0;
    }
  }

  return v18;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  if (self->_nwActivity)
  {
    nw_activity_complete_with_reason();
    nw_release(self->_nwActivity);
    self->_nwActivity = 0;
  }

  [(MultiwaySegment *)self _releaseProtocolDescription];
  v3.receiver = self;
  v3.super_class = MultiwaySegment;
  [(VCReportingCommon *)&v3 dealloc];
}

- (void)_releaseProtocolDescription
{
  relayProtocolStack = self->_relayProtocolStack;
}

- (double)averageTargetBitrate
{
  averageTargetBitrateReportCounter = self->_averageTargetBitrateReportCounter;
  if (averageTargetBitrateReportCounter)
  {
    return self->_averageTargetBitrateSum / averageTargetBitrateReportCounter * 1000.0;
  }

  else
  {
    return 0.0;
  }
}

- (void)processTargetBitrate:(unsigned int)bitrate
{
  self->_averageTargetBitrateSum = self->_averageTargetBitrateSum + bitrate;
  ++self->_averageTargetBitrateReportCounter;
  [(VCHistogram *)self->_TBR addValue:?];
}

- (double)averageSendBitrate
{
  uplinkActualBitrateCounter = self->_uplinkActualBitrateCounter;
  if (uplinkActualBitrateCounter)
  {
    return self->_uplinkActualBitrateSum / uplinkActualBitrateCounter * 1000.0;
  }

  else
  {
    return 0.0;
  }
}

- (double)averageBWE
{
  uplinkBWEstimationCounter = self->_uplinkBWEstimationCounter;
  if (uplinkBWEstimationCounter)
  {
    return self->_uplinkBWEstimationSum / uplinkBWEstimationCounter * 1000.0;
  }

  else
  {
    return 0.0;
  }
}

- (void)updateCurrentSliceStatusDuration
{
  cellularSliceStatusDuration = self->_cellularSliceStatusDuration;
  currentCellularSliceStatus = [(MultiwaySegment *)self currentCellularSliceStatus];

  [(VCHistogram *)cellularSliceStatusDuration addValue:currentCellularSliceStatus];
}

- (void)updateCurrentRemoteSliceStatusDuration
{
  cellularRemoteSliceStatusDuration = self->_cellularRemoteSliceStatusDuration;
  currentCellularRemoteSliceStatus = [(MultiwaySegment *)self currentCellularRemoteSliceStatus];

  [(VCHistogram *)cellularRemoteSliceStatusDuration addValue:currentCellularRemoteSliceStatus];
}

- (double)averageReceiveBitrate
{
  receiveBitrateCounter = self->_receiveBitrateCounter;
  if (receiveBitrateCounter)
  {
    return self->_receiveBitrateSum / receiveBitrateCounter;
  }

  else
  {
    return 0.0;
  }
}

- (void)updateDuplicationPossibilityDuration
{
  if (self->_isDuplicationPossible)
  {
    ++self->_totalDurationForDuplicationPossible;
  }
}

- (void)processRoundTripTime:(unsigned int)time
{
  self->_roundTripTimeSum = self->_roundTripTimeSum + time;
  ++self->_roundTripTimeReportCounter;
  [(VCHistogram *)self->_RTT addValue:?];
}

- (double)averageRoundTripTime
{
  roundTripTimeReportCounter = self->_roundTripTimeReportCounter;
  if (roundTripTimeReportCounter)
  {
    return self->_roundTripTimeSum / roundTripTimeReportCounter;
  }

  else
  {
    return 0.0;
  }
}

- (double)packetLossRate
{
  totalPacketsLost = self->_totalPacketsLost;
  v3 = totalPacketsLost + self->_totalPacketsReceived;
  if (v3)
  {
    return totalPacketsLost * 100.0 / v3;
  }

  else
  {
    return 0.0;
  }
}

- (void)complete_and_release_nw_activity:(int)complete_and_release_nw_activity
{
  if (self->_nwActivity)
  {
    nw_activity_complete_with_reason();
    nw_release(self->_nwActivity);
    self->_nwActivity = 0;
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
        v11 = "[MultiwaySegment setNWActivityReportingEnabled:]";
        v12 = 1024;
        v13 = 3284;
        v14 = 1024;
        v15 = isNWActivityReportingEnabled;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _isNWActivityReportingEnabled=%d", &v8, 0x22u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [(MultiwaySegment *)v4 setNWActivityReportingEnabled:?];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
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

      v4 = &unk_284FA5438;
    }

    else
    {
      v4 = &unk_284FA5450;
    }

    self->_localCelltech = v4;
  }
}

- (void)addCelltechTelemetryToDictionary:(id)dictionary
{
  if ([(MultiwaySegment *)self IPVersion])
  {
    [dictionary setObject:-[MultiwaySegment IPVersion](self forKeyedSubscript:{"IPVersion"), @"IPVER"}];
  }

  if ([(MultiwaySegment *)self localCelltech])
  {
    [(MultiwaySegment *)self assertCleanCellTech];
    [dictionary setObject:-[MultiwaySegment localCelltech](self forKeyedSubscript:{"localCelltech"), @"LCTCH"}];
  }

  if ([(MultiwaySegment *)self isLocalExpensive])
  {
    [dictionary setObject:-[MultiwaySegment isLocalExpensive](self forKeyedSubscript:{"isLocalExpensive"), @"LXPNSV"}];
  }

  if ([(MultiwaySegment *)self remoteCelltech])
  {
    [dictionary setObject:-[MultiwaySegment remoteCelltech](self forKeyedSubscript:{"remoteCelltech"), @"RCTCH"}];
  }

  if ([(MultiwaySegment *)self isRemoteExpensive])
  {
    isRemoteExpensive = [(MultiwaySegment *)self isRemoteExpensive];

    [dictionary setObject:isRemoteExpensive forKeyedSubscript:@"RXPNSV"];
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
    [MultiwaySegment addQRServerTelemetryToDictionary:];
  }
}

- (void)processDuplicationConnectionTelemetry:(id)telemetry type:(unsigned __int16)type
{
  if (!type || type == 3)
  {
    if ([telemetry objectForKeyedSubscript:@"ConnectionType"] && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"LocalInterfaceType") && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"RemoteInterfaceType") && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"ConnFmly") && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"SLTS"))
    {

      self->_duplicationConnectionConfig = [objc_alloc(MEMORY[0x277CCACA0]) initWithFormat:@"%@%s%@%s%@%s%@", objc_msgSend(telemetry, "objectForKeyedSubscript:", @"LocalInterfaceType", ":", objc_msgSend(telemetry, "objectForKeyedSubscript:", @"RemoteInterfaceType", ":", objc_msgSend(telemetry, "objectForKeyedSubscript:", @"ConnectionType", ":", @"D"];
      -[MultiwaySegment setDuplicationConnectionFamily:](self, "setDuplicationConnectionFamily:", [telemetry objectForKeyedSubscript:@"ConnFmly"]);
    }

    if ([telemetry objectForKeyedSubscript:@"DuplicationType"])
    {
      self->_duplicationType = [objc_msgSend(telemetry objectForKeyedSubscript:{@"DuplicationType", "intValue"}];
    }

    if ([telemetry objectForKeyedSubscript:@"lnkPrbRTTMeanDelta"] && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"lnkPrbPLRTierDelta"))
    {
      ++self->_dynamicDupeLinkCount;
      [objc_msgSend(telemetry objectForKeyedSubscript:{@"lnkPrbRTTMeanDelta", "doubleValue"}];
      self->_rttMeanTotalDelta = v10 + self->_rttMeanTotalDelta;
      self->_plrTierTotalDelta += [objc_msgSend(telemetry objectForKeyedSubscript:{@"lnkPrbPLRTierDelta", "unsignedIntValue"}];
    }
  }

  else if (type == 2)
  {
    if ([telemetry objectForKeyedSubscript:@"MAXNRPT"])
    {
      duplicationMaxNoRemotePacketTime = self->_duplicationMaxNoRemotePacketTime;
      [objc_msgSend(telemetry objectForKeyedSubscript:{@"MAXNRPT", "doubleValue"}];
      if (duplicationMaxNoRemotePacketTime >= v7)
      {
        v7 = duplicationMaxNoRemotePacketTime;
      }

      self->_duplicationMaxNoRemotePacketTime = v7;
    }

    if ([telemetry objectForKeyedSubscript:@"MAXRNRPT"])
    {
      duplicationMaxRemoteNoRemotePacketTime = self->_duplicationMaxRemoteNoRemotePacketTime;
      [objc_msgSend(telemetry objectForKeyedSubscript:{@"MAXRNRPT", "doubleValue"}];
      if (duplicationMaxRemoteNoRemotePacketTime >= v9)
      {
        v9 = duplicationMaxRemoteNoRemotePacketTime;
      }

      self->_duplicationMaxRemoteNoRemotePacketTime = v9;
    }
  }
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

- (void)processFrameSizeBasedFECTelemetry:(id)telemetry statsHolder:(id)holder direction:(int)direction
{
  v50 = *MEMORY[0x277D85DE8];
  if (direction)
  {
    v7 = @"VFecStats";
  }

  else
  {
    v7 = @"VTxFecStats";
  }

  v8 = [telemetry objectForKeyedSubscript:v7];
  if ([v8 objectForKeyedSubscript:@"VFecSVFC"])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = [v8 objectForKeyedSubscript:@"VFecSVFC"];
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        v13 = 0;
        do
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [objc_msgSend(holder "frameSizeCount")];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v11);
    }
  }

  if ([v8 objectForKeyedSubscript:@"VFecSVPC"])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = [v8 objectForKeyedSubscript:@"VFecSVPC"];
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        v18 = 0;
        do
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [objc_msgSend(holder "frameSizeVsParityCount")];
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v16);
    }
  }

  if ([v8 objectForKeyedSubscript:@"VFecSVFAC"])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [v8 objectForKeyedSubscript:@"VFecSVFAC"];
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        v23 = 0;
        do
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [objc_msgSend(holder "frameSizeVsFailedCount")];
          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v21);
    }
  }

  if ([v8 objectForKeyedSubscript:@"VFecSVDPL"])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = [v8 objectForKeyedSubscript:{@"VFecSVDPL", 0}];
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        v28 = 0;
        do
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [objc_msgSend(holder "frameSizeVsDeltaBetweenParityAndLoss")];
          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
      }

      while (v26);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)addCommonSegmentTelemetry:(id)telemetry
{
  [telemetry setObject:self->_duplicationConnectionConfig forKeyedSubscript:@"DCCFG"];
  [telemetry setObject:self->_duplicationConnectionFamily forKeyedSubscript:@"DCF"];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_totalDurationForDuplicationPossible * -[MultiwaySegment RTPeriod](self, "RTPeriod")), @"DUPPOSDRTN"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_duplicationType), @"DUPTYPE"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_mediaStallCount), @"MSTCNT"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_negotiatedSwitches), @"NEGSW"}];
  [telemetry setObject:self->_remoteOSBuild forKeyedSubscript:@"REMBUILD"];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_remoteSwitches), @"REMSW"}];
  [telemetry setObject:self->_suggestedLinkTypeCombo forKeyedSubscript:@"SLTS"];
  [telemetry setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", self->_localAlertStateSwitchCount), 3), @"LOCALRTCNT"}];
  [telemetry setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", self->_remoteAlertStateSwitchCount), 3), @"REMALRTCNT"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (self->_duplicationMaxNoRemotePacketTime * 1000.0)), @"MAXNRPT"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", (self->_duplicationMaxRemoteNoRemotePacketTime * 1000.0)), @"MAXRNRPT"}];
  [telemetry setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", self->_dynamicDupeLinkCount), 3), @"DYNDUPLNKCNT"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_isInitiator), @"INTTR"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_isOneToOneMode), @"AU1"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_linkProbingVersion), @"LNKPRBVER"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_remoteLinkProbingVersion), @"REMLNKPRBVER"}];
  [telemetry setObject:-[MultiwaySegment localPHYMode](self forKeyedSubscript:{"localPHYMode"), @"LPMS"}];
  [(MultiwaySegment *)self addProtocolStackDescriptionTelemetry:telemetry];
  if (self->_linkPreferSuggestion != 255)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:"), @"LNKSUG"}];
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_linkConfidenceScore), @"LNKSCR"}];
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_linkPreferDecision), @"LNKDEC"}];
  }

  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_dataPath), @"DPT"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedShort:", self->_connectionProtocolType), @"CPT"}];
  [telemetry setObject:-[VCHistogram description](self->_wlanRadioCoexistence forKeyedSubscript:{"description"), @"RADIOCOEX"}];
  [telemetry setObject:-[VCHistogram description](self->_wlanOffChannelTime forKeyedSubscript:{"description"), @"OFFCHANNEL"}];
  [telemetry setObject:-[VCHistogram description](self->_wlanMaxSingleOutagePeriod forKeyedSubscript:{"description"), @"MAXSOP"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_isQUICPod), @"TLE"}];
  [telemetry setObject:self->_gecoVersion forKeyedSubscript:@"GECO_ABT"];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxMTU), @"MMTU"}];
  if (self->_pathMTUCounter)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedShort:", self->_maxPathMTU), @"MAXPMTU"}];
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedShort:", self->_minPathMTU), @"MINPMTU"}];
    [telemetry setObject:self->_pathMTUArray forKeyedSubscript:@"PMTUAR"];
    [telemetry setObject:self->_pathMTUDurationArray forKeyedSubscript:@"PMTUDRTN"];
  }

  v5 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"DMEDRTN", @"L"];
  if (v5)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_expensiveConnectionDuration[0]), v5}];
  }

  v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"DMEDRTN", @"R"];
  if (v6)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_expensiveConnectionDuration[1]), v6}];
  }

  v7 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"DMEDRTN", @"B"];
  if (v7)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_expensiveConnectionDuration[2]), v7}];
  }

  v8 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"DMCDRTN", @"L"];
  if (v8)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_constrainedConnectionDuration[0]), v8}];
  }

  v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"DMCDRTN", @"R"];
  if (v9)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_constrainedConnectionDuration[1]), v9}];
  }

  v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"DMCDRTN", @"B"];
  if (v10)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_constrainedConnectionDuration[2]), v10}];
  }

  [telemetry setObject:-[VCHistogram description](self->_cellularSliceStatusDuration forKeyedSubscript:{"description"), @"CSS"}];
  [-[MultiwaySegment delegate](self "delegate")];
  if (self->_isOneToOneMode)
  {
    [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_reconnectCount), @"RC"}];
    [telemetry setObject:-[VCHistogram description](self->_cellularRemoteSliceStatusDuration forKeyedSubscript:{"description"), @"CRSS"}];
    [-[MultiwaySegment delegate](self "delegate")];
    if (self->_remoteDeviceType)
    {
      remoteDeviceType = self->_remoteDeviceType;
    }

    else
    {
      remoteDeviceType = &stru_284F80940;
    }

    v12 = @"REMMDL";
    telemetryCopy2 = telemetry;
  }

  else
  {
    v14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_ABT", @"TLE"];
    remoteDeviceType = [MEMORY[0x277CCABA8] numberWithBool:self->_isTLEABTestEnabled];
    telemetryCopy2 = telemetry;
    v12 = v14;
  }

  [telemetryCopy2 setObject:remoteDeviceType forKeyedSubscript:v12];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_isP2PTLEABTestEnabled), @"PTLE"}];
  [telemetry setObject:self->_localParticipantID forKeyedSubscript:@"VCSPUUID"];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_currentLocalSatelliteStatus), @"LSAT"}];
  [telemetry setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_currentRemoteSatelliteStatus), @"RSAT"}];

  [(VCReportingCommon *)self reportTestName:telemetry];
}

- (void)addRateControlExperimentInfoToSegmentReport:(id)report
{
  if (self->_rateControlSmartBrakeTrialVersion)
  {
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"SBVERS"}];
  }

  if (self->_reportRateControlExperiment)
  {
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", self->_rateControlExperimentVersion), @"RCEV"}];
    v5 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_rateControlExperimentGroupIndex];

    [report setObject:v5 forKeyedSubscript:@"RCEG"];
  }
}

- (void)processRTEventCommon:(id)common now:(double)now
{
  if ([common objectForKeyedSubscript:@"NWRadioCoexMax"])
  {
    -[VCHistogram addValue:](self->_wlanRadioCoexistence, "addValue:", [objc_msgSend(common objectForKeyedSubscript:{@"NWRadioCoexMax", "unsignedIntValue"}]);
  }

  if ([common objectForKeyedSubscript:@"NWOffChannelTime"])
  {
    -[VCHistogram addValue:](self->_wlanOffChannelTime, "addValue:", [objc_msgSend(common objectForKeyedSubscript:{@"NWOffChannelTime", "longValue"}]);
  }

  if ([common objectForKeyedSubscript:@"NWOutagePeriodMax"])
  {
    -[VCHistogram addValue:](self->_wlanMaxSingleOutagePeriod, "addValue:", [objc_msgSend(common objectForKeyedSubscript:{@"NWOutagePeriodMax", "unsignedIntValue"}]);
  }

  [(MultiwaySegment *)self updateCurrentSliceStatusDuration];
  [(MultiwaySegment *)self processPathMTU:common now:now];
  if (self->_isOneToOneMode)
  {

    [(MultiwaySegment *)self updateCurrentRemoteSliceStatusDuration];
  }
}

- (void)setupConnectionDurationStart:(unsigned __int8)start withProperty:(unsigned int)property setTime:(unsigned int)time
{
  v5 = &OBJC_IVAR___MultiwaySegment__constrainedConnectionDurationStart;
  if (property == 1)
  {
    v5 = &OBJC_IVAR___MultiwaySegment__expensiveConnectionDurationStart;
  }

  *(&self->super.super.isa + 4 * start + *v5) = time;
}

- (void)markConnectionDurationHasStarted:(unsigned __int8)started withProperty:(unsigned int)property
{
  v4 = &OBJC_IVAR___MultiwaySegment__isConnectionConstrained;
  if (property == 1)
  {
    v4 = &OBJC_IVAR___MultiwaySegment__isConnectionExpensive;
  }

  *(&self->super.super.isa + *v4 + started) = 1;
}

- (void)applyKnownDataModeToNewSegment:(id)segment
{
  [(MultiwaySegment *)self applyKnownDataModeToNewSegmentForLinkProperty:1 andNewSegmemnt:segment];
  [(MultiwaySegment *)self applyKnownDataModeToNewSegmentForLinkProperty:0 andNewSegmemnt:segment];
  [segment setCurrentCellularSliceStatus:self->_currentCellularSliceStatus];
  [segment setCurrentCellularRemoteSliceStatus:self->_currentCellularRemoteSliceStatus];
  [segment setCurrentLocalSatelliteStatus:self->_currentLocalSatelliteStatus];
  currentRemoteSatelliteStatus = self->_currentRemoteSatelliteStatus;

  [segment setCurrentRemoteSatelliteStatus:currentRemoteSatelliteStatus];
}

- (void)finalizeAllDataModeDurationAtTime:(double)time
{
  [(MultiwaySegment *)self flushAllDataModeDurationForLinkProperty:1 AtTime:?];

  [(MultiwaySegment *)self flushAllDataModeDurationForLinkProperty:0 AtTime:time];
}

- (void)endDataModeDuration:(unsigned int *)duration totalTime:(unsigned int *)time time:(double)a5 hasStartedCalculating:(BOOL *)calculating
{
  if (*calculating)
  {
    LODWORD(v6) = *duration;
    *&v7 = v6;
    v8 = a5 - *&v7;
    LODWORD(v7) = *time;
    *time = (v8 + v7);
    *calculating = 0;
  }

  else
  {
    VRTraceGetErrorLogLevelForModule("");
  }
}

- (void)startDataModeDuration:(unsigned int *)duration totalTime:(unsigned int *)time time:(double)a5 hasStartedCalculating:(BOOL *)calculating
{
  if (*calculating)
  {
    VRTraceGetErrorLogLevelForModule("");
  }

  else
  {
    *duration = a5;
    *calculating = 1;
  }
}

- (void)flushAllDataModeDurationForLinkProperty:(unsigned int)property AtTime:(double)time
{
  v6 = &OBJC_IVAR___MultiwaySegment__constrainedConnectionDurationStart;
  if (property == 1)
  {
    v6 = &OBJC_IVAR___MultiwaySegment__expensiveConnectionDurationStart;
  }

  v7 = &OBJC_IVAR___MultiwaySegment__constrainedConnectionDuration;
  v8 = *v6;
  if (property == 1)
  {
    v7 = &OBJC_IVAR___MultiwaySegment__expensiveConnectionDuration;
  }

  v9 = &OBJC_IVAR___MultiwaySegment__isConnectionConstrained;
  v10 = *v7;
  if (property == 1)
  {
    v9 = &OBJC_IVAR___MultiwaySegment__isConnectionExpensive;
  }

  v11 = self + *v9;
  v12 = self + v10;
  v13 = self + v8;
  [(MultiwaySegment *)self endDataModeDuration:self + v8 totalTime:self + v10 time:v11 hasStartedCalculating:?];
  [(MultiwaySegment *)self endDataModeDuration:v13 + 4 totalTime:v12 + 4 time:v11 + 1 hasStartedCalculating:time];

  [(MultiwaySegment *)self endDataModeDuration:v13 + 8 totalTime:v12 + 8 time:v11 + 2 hasStartedCalculating:time];
}

- (void)calculateDataModeDurationForLinkProperty:(unsigned int)property withCurrentState:(unsigned __int8)state andTime:(double)time
{
  v7 = &OBJC_IVAR___MultiwaySegment__constrainedConnectionDurationStart;
  if (property == 1)
  {
    v7 = &OBJC_IVAR___MultiwaySegment__expensiveConnectionDurationStart;
  }

  v8 = self + *v7;
  v9 = &OBJC_IVAR___MultiwaySegment__expensiveConnectionDuration;
  if (property != 1)
  {
    v9 = &OBJC_IVAR___MultiwaySegment__constrainedConnectionDuration;
  }

  v10 = self + *v9;
  v11 = &OBJC_IVAR___MultiwaySegment__isConnectionConstrained;
  if (property == 1)
  {
    v11 = &OBJC_IVAR___MultiwaySegment__isConnectionExpensive;
  }

  stateCopy = state;
  v13 = &v8[4 * state];
  v14 = self + *v11;
  v15 = &v10[4 * state];
  v16 = &v14[state];
  v17 = 3;
  do
  {
    if (stateCopy)
    {
      [(MultiwaySegment *)self endDataModeDuration:v8 totalTime:v10 time:v14 hasStartedCalculating:time];
    }

    else
    {
      [(MultiwaySegment *)self startDataModeDuration:v13 totalTime:v15 time:v16 hasStartedCalculating:time];
    }

    v8 += 4;
    v10 += 4;
    ++v14;
    --stateCopy;
    --v17;
  }

  while (v17);
}

- (void)processDataMode:(id)mode withTime:(double)time
{
  v6 = [objc_msgSend(mode objectForKeyedSubscript:{@"connectionDataMode", "unsignedIntValue"}];
  if ((~v6 & 0xA) != 0)
  {
    selfCopy2 = self;
    if ((v6 & 2) != 0)
    {
      v8 = 0;
    }

    else
    {
      if ((v6 & 8) == 0)
      {
        [(MultiwaySegment *)self flushAllDataModeDurationForLinkProperty:1 AtTime:time];
        goto LABEL_9;
      }

      v8 = 1;
    }
  }

  else
  {
    selfCopy2 = self;
    v8 = 2;
  }

  [(MultiwaySegment *)selfCopy2 calculateDataModeDurationForLinkProperty:1 withCurrentState:v8 andTime:time];
LABEL_9:
  if ((~v6 & 5) == 0)
  {
    v9 = 2;
LABEL_18:

    [(MultiwaySegment *)self calculateDataModeDurationForLinkProperty:0 withCurrentState:v9 andTime:time];
    return;
  }

  if (v6)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((v6 & 4) != 0)
  {
    v9 = 1;
    goto LABEL_18;
  }

  [(MultiwaySegment *)self flushAllDataModeDurationForLinkProperty:0 AtTime:time];
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

- (void)finalizePathMTUForTime:(double)time
{
  if (!self->_isFinalized)
  {
    if (self->_pathMTUCounter)
    {
      if (self->_pathMTUCounter > 0x13u)
      {
        return;
      }
    }

    else if (!self->_currentPathMTU)
    {
      return;
    }

    [(MultiwaySegment *)self appendPathMTU:self->_currentPathMTU delta:time - self->_currentMTUDurationStartTime];
    self->_isFinalized = 1;
  }
}

- (void)processPathMTU:(id)u now:(double)now
{
  if (self->_pathMTUCounter <= 0x13u)
  {
    v6 = [objc_msgSend(u objectForKeyedSubscript:{@"PMTU", self->_currentMTUDurationStartTime), "intValue"}];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      if (self->_currentPathMTU != v6)
      {
        [(MultiwaySegment *)self appendPathMTU:now - self->_currentMTUDurationStartTime delta:?];
        self->_currentPathMTU = v8;
        self->_currentMTUDurationStartTime = now;
        minPathMTU = self->_minPathMTU;
        if (v7 < minPathMTU)
        {
          LOWORD(minPathMTU) = v7;
        }

        self->_minPathMTU = minPathMTU;
        maxPathMTU = self->_maxPathMTU;
        if (v7 > maxPathMTU)
        {
          LOWORD(maxPathMTU) = v7;
        }

        self->_maxPathMTU = maxPathMTU;
      }
    }
  }
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

- (void)addQRServerTelemetryToDictionary:.cold.1()
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

@end