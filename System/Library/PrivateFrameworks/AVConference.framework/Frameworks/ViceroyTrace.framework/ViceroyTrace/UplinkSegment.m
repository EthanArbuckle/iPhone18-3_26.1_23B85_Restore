@interface UplinkSegment
- (id)calculateAverageWithCounter:(id)a3 sumKey:(id)a4 counterKey:(id)a5;
- (id)calculateBitrate:(id)a3 sumKey:(id)a4 counterKey:(id)a5;
- (id)calculateFramerate:(id)a3 sumKey:(id)a4 counterKey:(id)a5;
- (id)segmentReport;
- (unsigned)audioFlushPercent;
- (void)addBIFStatsToDictionary:(id)a3;
- (void)addCellByteCountStats:(id)a3;
- (void)addCelltechTelemetryToDictionary:(id)a3;
- (void)addPerStreamGroupRTXStatsToDictionary:(id)a3 streamGroup:(id)a4;
- (void)addPerStreamGroupStatsToDictionary:(id)a3;
- (void)addSegmentWRMReportStats:(id)a3;
- (void)addSmartBrakeStats:(id)a3;
- (void)addVideoFeatureStatus:(id)a3;
- (void)calculateUplinkAudioTimestampJumps:(id)a3;
- (void)calculateUplinkTelemetry:(id)a3 lastReportedAudioPauseTime:(double)a4 lastReportedVideoPacketSentCount:(double)a5;
- (void)collectStreamQualityAggregator:(id)a3;
- (void)collectStreamTemporalStats:(id)a3;
- (void)dealloc;
- (void)processAudioTransmitterStreamData:(id)a3;
- (void)processAverageEvent:(id)a3 forMetrics:(id)a4 withStreamGroup:(id)a5 withQuality:(id)a6 sumKey:(id)a7 counterKey:(id)a8;
- (void)processCountEvent:(id)a3 forMetrics:(id)a4 withStreamGroup:(id)a5 withQuality:(id)a6 counterKey:(id)a7;
- (void)processLateSmartBrakeEvent:(id)a3;
- (void)processMediaQueueEgressIngressTelemetry:(id)a3;
- (void)processMediaQueueTelemetry:(id)a3;
- (void)processRTEvent:(id)a3 now:(double)a4;
- (void)processSegmentRateControllerTelemetry:(id)a3;
- (void)processSmartBrakeEvent:(id)a3;
- (void)processTransmitterStats:(id)a3;
- (void)processUplinkRTXMetricsFromStreamData:(id)a3;
- (void)processVTPEgressIngressTelemetry:(id)a3;
- (void)processVideoTransmitterStreamData:(id)a3;
- (void)releaseWRMMetrics;
- (void)reportSpatialAudioSupport:(id)a3;
- (void)updateAdaptiveLearningSegment;
- (void)updateAudioCodecAndMediaBitrateWithPayload:(id)a3 andCurrentTime:(double)a4 andStats:(const tagVCAudioCodecAndMediaBitrateStats *)a5;
- (void)updateLastValuesForMediaQueueEgressIngressTelemetry:(id)a3;
- (void)updateNetworkSendResultStats:(id)a3;
- (void)updateSegmentStatsWifiTx:(id)a3 withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)a4;
- (void)updateUplinkSegmentStats:(id)a3 withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)a4;
@end

@implementation UplinkSegment

- (void)dealloc
{
  [(UplinkSegment *)self releaseWRMMetrics];
  v3.receiver = self;
  v3.super_class = UplinkSegment;
  [(MultiwaySegment *)&v3 dealloc];
}

- (void)updateLastValuesForMediaQueueEgressIngressTelemetry:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"VCMQIngressVideoPkts"])
  {
    self->_lastReportedVCMQIngressVideoPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQIngressVideoPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQIngressAudioPkts"])
  {
    self->_lastReportedVCMQIngressAudioPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQIngressAudioPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQIngressPkts"])
  {
    self->_lastReportedVCMQIngressPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQIngressPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressVideoPkts"])
  {
    self->_lastReportedVCMQEgressVideoPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressVideoPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressAudioPkts"])
  {
    self->_lastReportedVCMQEgressAudioPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressAudioPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressPkts"])
  {
    self->_lastReportedVCMQEgressPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressNonDupAudioPkts"])
  {
    self->_lastReportedVCMQEgressNonDupAudioPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressNonDupAudioPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressNonDupVideoPkts"])
  {
    self->_lastReportedVCMQEgressNonDupVideoPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressNonDupVideoPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressNonDupPkts"])
  {
    self->_lastReportedVCMQEgressNonDupPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressNonDupPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQIngressQueuedPkts"])
  {
    self->_lastReportedVCMQIngressQueuedPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQIngressQueuedPkts", "integerValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"VCMQFlushedPkts"])
  {
    self->_lastReportedVCMQFlushedPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQFlushedPkts", "integerValue"}];
  }
}

- (void)processMediaQueueTelemetry:(id)a3
{
  [(UplinkSegment *)self processMediaQueueEgressIngressTelemetry:?];
  streamGroupStats = self->_streamGroupStats;

  _VCAggregatorMultiway_CollectMediaQueueTelemetry(streamGroupStats, a3);
}

- (void)processAverageEvent:(id)a3 forMetrics:(id)a4 withStreamGroup:(id)a5 withQuality:(id)a6 sumKey:(id)a7 counterKey:(id)a8
{
  if ([a3 objectForKeyedSubscript:a4])
  {
    v15 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{a5), "objectForKeyedSubscript:", a6}];
    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{a5), "setObject:forKeyedSubscript:", v15, a6}];
    }

    [objc_msgSend(a3 objectForKeyedSubscript:{a4), "doubleValue"}];
    v17 = v16;
    v18 = MEMORY[0x277CCABA8];
    [objc_msgSend(v15 objectForKeyedSubscript:{a7), "doubleValue"}];
    [v15 setObject:objc_msgSend(v18 forKeyedSubscript:{"numberWithDouble:", v17 + v19), a7}];
    v20 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(objc_msgSend(v15, "objectForKeyedSubscript:", a8), "intValue") + 1}];

    [v15 setObject:v20 forKeyedSubscript:a8];
  }
}

- (void)processCountEvent:(id)a3 forMetrics:(id)a4 withStreamGroup:(id)a5 withQuality:(id)a6 counterKey:(id)a7
{
  if ([a3 objectForKeyedSubscript:a4])
  {
    v13 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{a5), "objectForKeyedSubscript:", a6}];
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{a5), "setObject:forKeyedSubscript:", v13, a6}];
    }

    [objc_msgSend(a3 objectForKeyedSubscript:{a4), "doubleValue"}];
    [v13 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:"), a4}];
    v14 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", a7), "intValue") + 1}];

    [v13 setObject:v14 forKeyedSubscript:a7];
  }
}

- (void)processSegmentRateControllerTelemetry:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"OVSBR"];
  if (v5)
  {
    -[UplinkSegment setOvershootSendBitrate:](self, "setOvershootSendBitrate:", -[UplinkSegment overshootSendBitrate](self, "overshootSendBitrate") + [v5 intValue]);
  }

  v6 = [a3 objectForKeyedSubscript:@"UNSBR"];
  if (v6)
  {
    -[UplinkSegment setUndershootSendBitrate:](self, "setUndershootSendBitrate:", -[UplinkSegment undershootSendBitrate](self, "undershootSendBitrate") + [v6 intValue]);
  }

  v7 = [a3 objectForKeyedSubscript:@"AExTR"];
  if (v7)
  {
    -[UplinkSegment setTotalExtraTargetBitrate:](self, "setTotalExtraTargetBitrate:", -[UplinkSegment totalExtraTargetBitrate](self, "totalExtraTargetBitrate") + [v7 intValue]);
  }

  v8 = [a3 objectForKeyedSubscript:@"OVBWE"];
  if (v8)
  {
    -[UplinkSegment setOverUtilizedBandwidth:](self, "setOverUtilizedBandwidth:", -[UplinkSegment overUtilizedBandwidth](self, "overUtilizedBandwidth") + [v8 intValue]);
  }

  v9 = [a3 objectForKeyedSubscript:@"UNBWE"];
  if (v9)
  {
    -[UplinkSegment setUnderUtilizedBandwidth:](self, "setUnderUtilizedBandwidth:", -[UplinkSegment underUtilizedBandwidth](self, "underUtilizedBandwidth") + [v9 intValue]);
  }

  v10 = [a3 objectForKeyedSubscript:@"APF"];
  if (v10)
  {
    -[UplinkSegment setAudioFlushPacketCount:](self, "setAudioFlushPacketCount:", -[UplinkSegment audioFlushPacketCount](self, "audioFlushPacketCount") + [v10 intValue]);
  }

  v11 = [a3 objectForKeyedSubscript:@"VPF"];
  if (v11)
  {
    -[UplinkSegment setVideoFlushPacketCount:](self, "setVideoFlushPacketCount:", -[UplinkSegment videoFlushPacketCount](self, "videoFlushPacketCount") + [v11 intValue]);
  }

  v12 = [a3 objectForKeyedSubscript:@"APBBD"];
  if (v12)
  {
    -[UplinkSegment setAudioBasebandDropPacketCount:](self, "setAudioBasebandDropPacketCount:", -[UplinkSegment audioBasebandDropPacketCount](self, "audioBasebandDropPacketCount") + [v12 intValue]);
  }

  v13 = [a3 objectForKeyedSubscript:@"VPBBD"];
  if (v13)
  {
    -[UplinkSegment setVideoBasebandDropPacketCount:](self, "setVideoBasebandDropPacketCount:", -[UplinkSegment videoBasebandDropPacketCount](self, "videoBasebandDropPacketCount") + [v13 intValue]);
  }

  v14 = [a3 objectForKeyedSubscript:@"BBNOTENW"];
  if (v14)
  {
    self->_rateControlBasebandNotificationNWCount += [v14 intValue];
  }

  if ([a3 objectForKeyedSubscript:@"BbTx"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"BbTx", "floatValue"}];
    v16 = v15;
    maxBaseBandTxRate = self->_maxBaseBandTxRate;
    if (maxBaseBandTxRate < v16)
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{@"BbTx", "floatValue"}];
      maxBaseBandTxRate = v18;
    }

    self->_maxBaseBandTxRate = maxBaseBandTxRate;
    if (self->_minBaseBandTxRate == 0.0 || ([objc_msgSend(a3 objectForKeyedSubscript:{@"BbTx", "floatValue"}], v20 = v19, minBaseBandTxRate = self->_minBaseBandTxRate, minBaseBandTxRate > v20))
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{@"BbTx", "floatValue"}];
      minBaseBandTxRate = v22;
    }

    self->_minBaseBandTxRate = minBaseBandTxRate;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"BbTx", "floatValue"}];
    self->_totalBaseBandTxRate = self->_totalBaseBandTxRate + v23;
  }

  if ([a3 objectForKeyedSubscript:@"SS"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"SS", "floatValue"}];
    v25 = v24;
    v26 = [(UplinkSegment *)self cellStrengthRawBars];

    [(VCHistogram *)v26 addValue:v25];
  }
}

- (void)updateAudioCodecAndMediaBitrateWithPayload:(id)a3 andCurrentTime:(double)a4 andStats:(const tagVCAudioCodecAndMediaBitrateStats *)a5
{
  if (a5)
  {
    LODWORD(v5) = vcvtad_u64_f64(a4 - a5->var0);
    p_var1 = &a5->var1;
    if (a5->var1)
    {
      if (![(VCHistogram *)[(UplinkSegment *)self audioCodecPayload] addOnlyExactMatchingValue:*p_var1 increment:v5]&& VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [UplinkSegment updateAudioCodecAndMediaBitrateWithPayload:v10 andCurrentTime:p_var1 andStats:?];
        }
      }
    }

    [(UplinkSegment *)self updateMediaBitratesWithTimeElapsed:v5 andStats:a5];
    v11 = [a3 objectForKeyedSubscript:@"Bundle"];
    if (v11)
    {
      -[VCHistogram addValue:](-[UplinkSegment audioFrameBundling](self, "audioFrameBundling"), "addValue:", [v11 unsignedLongValue]);
    }

    if ([a3 objectForKeyedSubscript:@"RedPayloads"])
    {
      -[VCHistogram addValue:](-[UplinkSegment redNumPayloadsUsed](self, "redNumPayloadsUsed"), "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"RedPayloads", "integerValue"}]);
    }

    if ([a3 objectForKeyedSubscript:@"RedMaxDelay"])
    {
      -[VCHistogram addValue:](-[UplinkSegment redMaxDelay](self, "redMaxDelay"), "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"RedMaxDelay", "integerValue"}]);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [UplinkSegment updateAudioCodecAndMediaBitrateWithPayload:andCurrentTime:andStats:];
    }
  }
}

- (void)processTransmitterStats:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"VCSActiveStreamsList"];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 objectForKeyedSubscript:sRTCReportingStreamCollection];
    if (v7)
    {
      v8 = v7;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v35 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = *v22;
        *&v10 = 136316162;
        v20 = v10;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            if ([v6 containsString:{v14, v20}])
            {
              v15 = [v8 objectForKeyedSubscript:v14];
              if ([objc_msgSend(v15 objectForKeyedSubscript:{@"VCMSDirection", "intValue"}] == 1)
              {
                v16 = [v15 objectForKeyedSubscript:@"VCMSStreamGroup"];
                if ([v16 unsignedIntValue] == 1 || objc_msgSend(v16, "unsignedIntValue") == 3 || objc_msgSend(v16, "unsignedIntValue") == 5 || objc_msgSend(v16, "unsignedIntValue") == 7 || objc_msgSend(v16, "unsignedIntValue") == 8 || objc_msgSend(v16, "unsignedIntValue") == 10)
                {
                  [(UplinkSegment *)self processVideoTransmitterStreamData:v15];
                }

                if ([v16 unsignedIntValue] == 2 || objc_msgSend(v16, "unsignedIntValue") == 4 || objc_msgSend(v16, "unsignedIntValue") == 6)
                {
                  [(UplinkSegment *)self processAudioTransmitterStreamData:v15];
                }
              }
            }

            else if (VRTraceGetErrorLogLevelForModule("") >= 8)
            {
              v17 = VRTraceErrorLogLevelToCSTR(8u);
              v18 = gVRTraceOSLog;
              if (gVRTraceLogDebugAsInfo == 1)
              {
                if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v20;
                  v26 = v17;
                  v27 = 2080;
                  v28 = "[UplinkSegment processTransmitterStats:]";
                  v29 = 1024;
                  v30 = 4149;
                  v31 = 2112;
                  v32 = v14;
                  v33 = 2112;
                  v34 = v6;
                  _os_log_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamKey=%@, is not in list of activeStreams=%@. Ignoring its telemetry...", buf, 0x30u);
                }
              }

              else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = v20;
                v26 = v17;
                v27 = 2080;
                v28 = "[UplinkSegment processTransmitterStats:]";
                v29 = 1024;
                v30 = 4149;
                v31 = 2112;
                v32 = v14;
                v33 = 2112;
                v34 = v6;
                _os_log_debug_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEBUG, " [%s] %s:%d streamKey=%@, is not in list of activeStreams=%@. Ignoring its telemetry...", buf, 0x30u);
              }
            }
          }

          v11 = [v8 countByEnumeratingWithState:&v21 objects:v35 count:16];
        }

        while (v11);
      }
    }

    else
    {
      [UplinkSegment processTransmitterStats:];
    }
  }

  else
  {
    [UplinkSegment processTransmitterStats:];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)processUplinkRTXMetricsFromStreamData:(id)a3
{
  v4 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", [a3 objectForKeyedSubscript:@"VCMSStreamGroup"]);
  if (v4)
  {
    v5 = v4;
    v6 = [a3 objectForKeyedSubscript:@"UNRPC"];
    if (v6)
    {
      *(v5 + 16) += [v6 intValue];
    }

    v7 = [a3 objectForKeyedSubscript:@"UNFPC"];
    if (v7)
    {
      *(v5 + 24) += [v7 intValue];
    }

    v8 = [a3 objectForKeyedSubscript:@"UNCHPC"];
    if (v8)
    {
      *(v5 + 32) += [v8 intValue];
    }

    v9 = [a3 objectForKeyedSubscript:@"UNCMPC"];
    if (v9)
    {
      *(v5 + 40) += [v9 intValue];
    }

    v10 = [a3 objectForKeyedSubscript:@"UNTRC"];
    if (v10)
    {
      *(v5 + 48) += [v10 intValue];
    }

    v11 = [a3 objectForKeyedSubscript:@"UNRRC"];
    if (v11)
    {
      *(v5 + 56) += [v11 intValue];
    }

    v12 = [a3 objectForKeyedSubscript:@"UNRRMC"];
    if (v12)
    {
      v13 = v12;
      if ([v12 unsignedIntValue] > *(v5 + 64))
      {
        *(v5 + 64) = [v13 unsignedIntValue];
      }
    }

    v14 = [a3 objectForKeyedSubscript:@"UNART"];
    if (v14)
    {
      v15 = *(v5 + 72);
      [v14 doubleValue];
      [v15 addValue:(v16 * 100.0)];
    }

    v17 = [a3 objectForKeyedSubscript:@"UNALT"];
    if (v17)
    {
      v18 = *(v5 + 80);
      [v17 doubleValue];
      [v18 addValue:(v19 * 100.0)];
    }

    v20 = [a3 objectForKeyedSubscript:@"UNMB"];
    if (v20)
    {
      [*(v5 + 88) addValue:{objc_msgSend(v20, "unsignedIntValue")}];
    }

    v21 = [a3 objectForKeyedSubscript:@"UNRB"];
    if (v21)
    {
      [*(v5 + 96) addValue:{objc_msgSend(v21, "unsignedIntValue")}];
    }

    *(v5 + 8) = 1;
  }

  else
  {
    [UplinkSegment processUplinkRTXMetricsFromStreamData:];
  }
}

- (void)processVideoTransmitterStreamData:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"QID"];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 objectForKeyedSubscript:@"VCMSStreamGroup"];
    if (v7)
    {
      v8 = v7;
      if (![(NSMutableDictionary *)self->_streamQualityAggregator objectForKeyedSubscript:v7])
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(NSMutableDictionary *)self->_streamQualityAggregator setObject:v9 forKeyedSubscript:v8];
      }

      [(UplinkSegment *)self processAverageEvent:a3 forMetrics:@"EncOutFrameCnt" withStreamGroup:v8 withQuality:v6 sumKey:@"encodedVideoFrameSum" counterKey:@"encodedVideoFrameCounter"];
      [(UplinkSegment *)self processAverageEvent:a3 forMetrics:@"VFCCnt" withStreamGroup:v8 withQuality:v6 sumKey:@"capturedVideoFrameSum" counterKey:@"capturedVideoFrameCounter"];
      [(UplinkSegment *)self processAverageEvent:a3 forMetrics:@"IdleFrameCount" withStreamGroup:v8 withQuality:v6 sumKey:@"capturedVideoIdleFrameSum" counterKey:@"capturedVideoIdleFrameCounter"];
      [(UplinkSegment *)self processAverageEvent:a3 forMetrics:@"VTxR" withStreamGroup:v8 withQuality:v6 sumKey:@"totalVideoSendBitrateSum" counterKey:@"totalVideoSendBitrateCounter"];
      [(UplinkSegment *)self processAverageEvent:a3 forMetrics:@"VTxMetadataOverhead" withStreamGroup:v8 withQuality:v6 sumKey:@"totalMetadataOverheadSendBitrateSum" counterKey:@"totalMetadataSendBitrateCounter"];
      [(UplinkSegment *)self processAverageEvent:a3 forMetrics:@"VTxRMedia" withStreamGroup:v8 withQuality:v6 sumKey:@"videoMediaSendBitrateSum" counterKey:@"videoMediaSendBitrateCounter"];
      [(UplinkSegment *)self processAverageEvent:a3 forMetrics:@"VTxRHDR" withStreamGroup:v8 withQuality:v6 sumKey:@"videoHeaderSendBitrateSum" counterKey:@"videoHeaderSendBitrateCounter"];
      [(UplinkSegment *)self processAverageEvent:a3 forMetrics:@"VTxRFEC" withStreamGroup:v8 withQuality:v6 sumKey:@"videoFECSendBitrateSum" counterKey:@"videoFECSendBitrateCounter"];
      [(UplinkSegment *)self processCountEvent:a3 forMetrics:@"VPS" withStreamGroup:v8 withQuality:v6 counterKey:@"videoPacketSentCounter"];
      [(SegmentStatsDelegate *)self->super._delegate updateVideoFECStatsOnSegment:a3 fecStats:[(MultiwaySegment *)self fecStatsHolder] segmentLossPattern:[(MultiwaySegment *)self lossPattern] segmentLossHistogram:[(MultiwaySegment *)self lossHistogram] segmentLossFecHistogram:[(MultiwaySegment *)self lossFecHistogram] direction:0];
      v10 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v8];
      [objc_msgSend(v10 "videoTxFecData")];
      v11 = [a3 objectForKeyedSubscript:@"VTxR"];
      if (v11)
      {
        [v10 setAverageVideoBitrate:{objc_msgSend(v10, "averageVideoBitrate") + objc_msgSend(v11, "unsignedIntValue")}];
      }

      v12 = [a3 objectForKeyedSubscript:@"VTxRMedia"];
      if (v12)
      {
        [v10 setAverageVideoTxMediaBitrate:{objc_msgSend(v10, "averageVideoTxMediaBitrate") + objc_msgSend(v12, "unsignedIntValue")}];
      }

      v13 = [a3 objectForKeyedSubscript:@"VTxRHDR"];
      if (v13)
      {
        [v10 setAverageVideoTxHeaderBitrate:{objc_msgSend(v10, "averageVideoTxHeaderBitrate") + objc_msgSend(v13, "unsignedIntValue")}];
      }

      v14 = [a3 objectForKeyedSubscript:@"VTxRFEC"];
      if (v14)
      {
        [v10 setAverageVideoTxFecBitrate:{objc_msgSend(v10, "averageVideoTxFecBitrate") + objc_msgSend(v14, "unsignedIntValue")}];
      }

      v15 = [a3 objectForKeyedSubscript:@"VTxMetadataOverhead"];
      if (v15)
      {
        [v10 setAverageMetadataTxBitrate:{objc_msgSend(v10, "averageMetadataTxBitrate") + objc_msgSend(v15, "unsignedIntValue")}];
      }

      v16 = [a3 objectForKeyedSubscript:@"RTPUplinkIngressVideoPkts"];
      if (v16)
      {
        [v10 setTotalRTPUplinkIngressVideoPackets:{objc_msgSend(v10, "totalRTPUplinkIngressVideoPackets") + objc_msgSend(v16, "unsignedIntegerValue")}];
      }

      v17 = [a3 objectForKeyedSubscript:@"VTxDeltaKeyFramesSent"];
      if (v17)
      {
        [v10 setIdrSentCount:{objc_msgSend(v10, "idrSentCount") + objc_msgSend(v17, "unsignedIntValue")}];
      }

      v18 = [a3 objectForKeyedSubscript:@"VFCCnt"];
      if (v18)
      {
        [v10 setVideoFrameCapturedCounter:{objc_msgSend(v10, "videoFrameCapturedCounter") + objc_msgSend(v18, "unsignedIntValue")}];
        [v10 setVideoFrameCaptureReportCount:{objc_msgSend(v10, "videoFrameCaptureReportCount") + 1}];
      }

      v19 = [a3 objectForKeyedSubscript:@"EncOutFrameCnt"];
      if (v19)
      {
        [v10 setEncodedFrameSum:{objc_msgSend(v10, "encodedFrameSum") + objc_msgSend(v19, "unsignedIntValue")}];
        [v10 setEncodedFrameReportedCount:{objc_msgSend(v10, "encodedFrameReportedCount") + 1}];
      }

      [(UplinkSegment *)self processUplinkRTXMetricsFromStreamData:a3];
      v20 = [v10 transmitterAVHostTimeData];

      [v20 updateWithPayload:a3];
    }

    else
    {
      [UplinkSegment processVideoTransmitterStreamData:];
    }
  }

  else
  {
    [UplinkSegment processVideoTransmitterStreamData:];
  }
}

- (void)processAudioTransmitterStreamData:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"VCMSStreamGroup"];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [a3 objectForKeyedSubscript:@"ATxR"];
      if (v8)
      {
        [v7 setAverageAudioBitrate:{objc_msgSend(v7, "averageAudioBitrate") + objc_msgSend(v8, "unsignedIntValue")}];
      }

      v9 = [a3 objectForKeyedSubscript:@"ATierChangeCount"];
      if (v9)
      {
        [objc_msgSend(v7 "audioTierChangeHistogram")];
      }

      v10 = [a3 objectForKeyedSubscript:@"RTPUplinkIngressAudioPkts"];
      if (v10)
      {
        [v7 setTotalRTPUplinkIngressAudioPackets:{objc_msgSend(v7, "totalRTPUplinkIngressAudioPackets") + objc_msgSend(v10, "unsignedIntegerValue")}];
      }

      v11 = [a3 objectForKeyedSubscript:@"ATxRPrimary"];
      if (v11)
      {
        [v7 setAverageAudioMediaBitrate:{objc_msgSend(v7, "averageAudioMediaBitrate") + objc_msgSend(v11, "unsignedIntValue")}];
      }

      v12 = [a3 objectForKeyedSubscript:@"ATxEncodedBitrate"];
      if (v12)
      {
        v13 = [v12 unsignedIntValue];
        [v7 averageAudioMediaTxNoRedBitrate];
        [v7 setAverageAudioMediaTxNoRedBitrate:v14 + v13];
      }

      v15 = [a3 objectForKeyedSubscript:@"BundleAlt"];
      if (v15)
      {
        [objc_msgSend(v7 "audioTierBundling_Alternate")];
      }

      v16 = [a3 objectForKeyedSubscript:@"PayloadAlt"];
      if (v16)
      {
        [objc_msgSend(v7 "audioTierCodecPayload_Alternate")];
      }

      v17 = [a3 objectForKeyedSubscript:@"BitRateAlt"];
      if (v17)
      {
        [objc_msgSend(v7 "audioTierCodecBitrate_Alternate")];
      }

      v18 = [a3 objectForKeyedSubscript:@"RedPayloadsAlt"];
      if (v18)
      {
        [objc_msgSend(v7 "audioTierREDPayload_Alternate")];
      }

      v19 = [a3 objectForKeyedSubscript:@"RedMaxDelayAlt"];
      if (v19)
      {
        [objc_msgSend(v7 "audioTierREDMaxDelay_Alternate")];
      }

      v20 = [a3 objectForKeyedSubscript:@"REDPayloadBitrate"];
      if (v20)
      {
        v21 = [v20 unsignedIntValue];
        v22 = [v7 averageAudioRedTxBitrate] + v21;

        [v7 setAverageAudioRedTxBitrate:v22];
      }
    }

    else
    {
      [UplinkSegment processAudioTransmitterStreamData:];
    }
  }

  else
  {
    [UplinkSegment processAudioTransmitterStreamData:];
  }
}

- (void)processLateSmartBrakeEvent:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"BWETTxRRatio5"])
  {
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateAfter5, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"BWETTxRRatio5", "unsignedIntValue"}]);
  }

  if ([a3 objectForKeyedSubscript:@"BWETTxRRatio15"])
  {
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateAfter15, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"BWETTxRRatio15", "unsignedIntValue"}]);
  }

  if ([a3 objectForKeyedSubscript:@"BWETTxRRatio30"])
  {
    smartBrakeTargetBitrateAfter30 = self->_smartBrakeTargetBitrateAfter30;
    v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"BWETTxRRatio30", "unsignedIntValue"}];

    [(VCHistogram *)smartBrakeTargetBitrateAfter30 addValue:v6];
  }
}

- (void)processSmartBrakeEvent:(id)a3
{
  if (!self->_isSmartBrakeHistogramPopulated)
  {
    self->_isSmartBrakeHistogramPopulated = 1;
  }

  if ([a3 objectForKeyedSubscript:@"EndBWE"] && objc_msgSend(a3, "objectForKeyedSubscript:", @"StartBWE") && objc_msgSend(a3, "objectForKeyedSubscript:", @"StartTargetTxR") && objc_msgSend(a3, "objectForKeyedSubscript:", @"CongestionDuration"))
  {
    smartBrakeDuration = self->_smartBrakeDuration;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"CongestionDuration", "doubleValue"}];
    [(VCHistogram *)smartBrakeDuration addValue:v6];
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateStart, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"StartTargetTxR", "unsignedIntValue"}]);
    -[VCHistogram addValue:](self->_smartBrakeBandwidthStart, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"StartBWE", "unsignedIntValue"}]);
    -[VCHistogram addValue:](self->_smartBrakeBandwidthEnd, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"EndBWE", "unsignedIntValue"}]);
  }

  [(UplinkSegment *)self processLateSmartBrakeEvent:a3];
}

- (void)processMediaQueueEgressIngressTelemetry:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"VCMQIngressVideoPkts"])
  {
    self->_totalVCMQIngressVideoPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQIngressVideoPkts", "integerValue"}] - self->_lastReportedVCMQIngressVideoPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQIngressAudioPkts"])
  {
    self->_totalVCMQIngressAudioPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQIngressAudioPkts", "integerValue"}] - self->_lastReportedVCMQIngressAudioPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQIngressPkts"])
  {
    self->_totalVCMQIngressPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQIngressPkts", "integerValue"}] - self->_lastReportedVCMQIngressPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressVideoPkts"])
  {
    self->_totalVCMQEgressVideoPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressVideoPkts", "integerValue"}] - self->_lastReportedVCMQEgressVideoPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressAudioPkts"])
  {
    self->_totalVCMQEgressAudioPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressAudioPkts", "integerValue"}] - self->_lastReportedVCMQEgressAudioPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressPkts"])
  {
    self->_totalVCMQEgressPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressPkts", "integerValue"}] - self->_lastReportedVCMQEgressPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressNonDupAudioPkts"])
  {
    self->_totalVCMQEgressNonDupAudioPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressNonDupAudioPkts", "integerValue"}] - self->_lastReportedVCMQEgressNonDupAudioPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressNonDupVideoPkts"])
  {
    self->_totalVCMQEgressNonDupVideoPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressNonDupVideoPkts", "integerValue"}] - self->_lastReportedVCMQEgressNonDupVideoPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQEgressNonDupPkts"])
  {
    self->_totalVCMQEgressNonDupPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQEgressNonDupPkts", "integerValue"}] - self->_lastReportedVCMQEgressNonDupPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQIngressQueuedPkts"])
  {
    self->_totalVCMQIngressQueuedPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQIngressQueuedPkts", "integerValue"}] - self->_lastReportedVCMQIngressQueuedPackets;
  }

  if ([a3 objectForKeyedSubscript:@"VCMQFlushedPkts"])
  {
    self->_totalVCMQFlushedPackets = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMQFlushedPkts", "integerValue"}] - self->_lastReportedVCMQFlushedPackets;
  }
}

- (void)processVTPEgressIngressTelemetry:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"VTPUplinkEgressPkts"];
  if (v5)
  {
    self->_totalVTPUplinkEgressMediaPackets += [v5 unsignedIntegerValue];
  }

  v6 = [a3 objectForKeyedSubscript:@"VTPUplinkIngressPkts"];
  if (v6)
  {
    self->_totalVTPUplinkIngressMediaPackets += [v6 unsignedIntegerValue];
  }
}

- (void)processRTEvent:(id)a3 now:(double)a4
{
  if ([a3 objectForKeyedSubscript:@"WPSSZ"])
  {
    self->_averageWireSendBytes += [objc_msgSend(a3 objectForKeyedSubscript:{@"WPSSZ", "integerValue"}];
    ++self->_averageWireSendCounter;
  }

  [(MultiwaySegment *)self processRTEventCommon:a3 now:a4];

  [(UplinkSegment *)self processVTPEgressIngressTelemetry:a3];
}

- (id)calculateBitrate:(id)a3 sumKey:(id)a4 counterKey:(id)a5
{
  [objc_msgSend(a3 objectForKeyedSubscript:{a4), "doubleValue"}];
  v8 = v7;
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{a5), "intValue"}];
  if (v9)
  {
    v10 = (v8 * 1000.0 / v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277CCABA8];

  return [v11 numberWithUnsignedInt:v10];
}

- (id)calculateAverageWithCounter:(id)a3 sumKey:(id)a4 counterKey:(id)a5
{
  [objc_msgSend(a3 objectForKeyedSubscript:{a4), "doubleValue"}];
  v9 = v8;
  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{a5), "intValue"}];
  if (v10)
  {
    v11 = v9 / ([(MultiwaySegment *)self RTPeriod]* v10) * 100.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = MEMORY[0x277CCABA8];
  v13 = round(v11);

  return [v12 numberWithDouble:v13];
}

- (id)calculateFramerate:(id)a3 sumKey:(id)a4 counterKey:(id)a5
{
  [objc_msgSend(a3 objectForKeyedSubscript:{a4), "doubleValue"}];
  v9 = v8;
  LODWORD(a5) = [objc_msgSend(a3 objectForKeyedSubscript:{a5), "intValue"}];
  v10 = [(MultiwaySegment *)self RTPeriod]* a5;
  if (v10)
  {
    v11 = (v9 * 1000.0 / v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x277CCABA8];

  return [v12 numberWithUnsignedInt:v11];
}

- (void)updateNetworkSendResultStats:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"PSSCTR"])
  {
    self->_packetSendSuccessCounter += [objc_msgSend(a3 objectForKeyedSubscript:{@"PSSCTR", "intValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"PSFCTR"])
  {
    self->_packetSendFailureCounter += [objc_msgSend(a3 objectForKeyedSubscript:{@"PSFCTR", "intValue"}];
  }
}

- (void)updateSegmentStatsWifiTx:(id)a3 withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)a4
{
  v7 = [(UplinkSegment *)self lastReportedTotalWifiTxDataBytes];
  var2 = a4->var2;
  if (v7 <= var2)
  {
    v9 = var2 - [(UplinkSegment *)self lastReportedTotalWifiTxDataBytes];
    var2 = v9 + [(UplinkSegment *)self totalWifiTxDataBytes];
  }

  [(UplinkSegment *)self setTotalWifiTxDataBytes:var2];
  [(UplinkSegment *)self setLastReportedTotalWifiTxDataBytes:a4->var2];
  if ([a3 objectForKeyedSubscript:@"NWQualityLossTxAvg"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NWQualityLossTxAvg", "floatValue"}];
    [(VCHistogram *)[(UplinkSegment *)self wifiQualityScoreLossTx] addValue:(v10 * 10.0)];
  }

  if ([a3 objectForKeyedSubscript:@"NWQualityChannelAvg"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NWQualityChannelAvg", "floatValue"}];
    [(VCHistogram *)[(UplinkSegment *)self wifiQualityScoreChannel] addValue:(v11 * 10.0)];
  }

  if ([a3 objectForKeyedSubscript:@"NWQualityDelayTxAvg"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NWQualityDelayTxAvg", "floatValue"}];
    v13 = v12;
    v14 = [(UplinkSegment *)self wifiQualityScoreDelayTx];

    [(VCHistogram *)v14 addValue:(v13 * 10.0)];
  }
}

- (void)collectStreamQualityAggregator:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [VCAggregatorUtils validBitmapIndices:self->super._segmentStreamGroups size:11];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR(7u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      segmentStreamGroups = self->super._segmentStreamGroups;
      *buf = 136316162;
      v34 = v6;
      v35 = 2080;
      v36 = "[UplinkSegment collectStreamQualityAggregator:]";
      v37 = 1024;
      v38 = 4529;
      v39 = 1024;
      v40 = segmentStreamGroups;
      v41 = 2112;
      v42 = [v5 componentsJoinedByString:{@", "}];
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d segmentStreamGroups=%u streamGroups=%@", buf, 0x2Cu);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v19 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v18 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v9;
        v10 = *(*(&v27 + 1) + 8 * v9);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v21 = [(NSMutableDictionary *)self->_streamQualityAggregator objectForKeyedSubscript:v10];
        v11 = [v21 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v22 = *v24;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v24 != v22)
              {
                objc_enumerationMutation(v21);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              v15 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{v10), "objectForKeyedSubscript:", v14}];
              [a3 setObject:-[UplinkSegment calculateFramerate:sumKey:counterKey:](self forKeyedSubscript:{"calculateFramerate:sumKey:counterKey:", v15, @"encodedVideoFrameSum", @"encodedVideoFrameCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"VTEFR", v10, v14)}];
              [a3 setObject:-[UplinkSegment calculateFramerate:sumKey:counterKey:](self forKeyedSubscript:{"calculateFramerate:sumKey:counterKey:", v15, @"capturedVideoFrameSum", @"capturedVideoFrameCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"VTCFR", v10, v14)}];
              [a3 setObject:-[UplinkSegment calculateFramerate:sumKey:counterKey:](self forKeyedSubscript:{"calculateFramerate:sumKey:counterKey:", v15, @"capturedVideoIdleFrameSum", @"capturedVideoIdleFrameCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"ITFR", v10, v14)}];
              [a3 setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"totalVideoSendBitrateSum", @"totalVideoSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"AVTSBR", v10, v14)}];
              [a3 setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"totalMetadataOverheadSendBitrateSum", @"totalMetadataSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"VTAMDO", v10, v14)}];
              [a3 setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"videoMediaSendBitrateSum", @"videoMediaSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"AVMSBR", v10, v14)}];
              [a3 setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"videoHeaderSendBitrateSum", @"videoHeaderSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"AVHSBR", v10, v14)}];
              [a3 setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"videoFECSendBitrateSum", @"videoFECSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"AVFSBR", v10, v14)}];
              [a3 setObject:-[UplinkSegment calculateAverageWithCounter:sumKey:counterKey:](self forKeyedSubscript:{"calculateAverageWithCounter:sumKey:counterKey:", v15, @"VPS", @"videoPacketSentCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"PPS", v10, v14)}];
            }

            v12 = [v21 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        v9 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v19);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)collectStreamTemporalStats:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [VCAggregatorUtils validBitmapIndices:self->super._segmentStreamGroups size:11];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      segmentStreamGroups = self->super._segmentStreamGroups;
      *buf = 136316162;
      v20 = v4;
      v21 = 2080;
      v22 = "[UplinkSegment collectStreamTemporalStats:]";
      v23 = 1024;
      v24 = 4566;
      v25 = 1024;
      v26 = segmentStreamGroups;
      v27 = 2112;
      v28 = [v3 componentsJoinedByString:{@", "}];
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d segmentStreamGroups=%u streamGroups=%@", buf, 0x2Cu);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v3);
        }

        [a3 setObject:-[NSMutableDictionary objectForKeyedSubscript:](self->super._activeTemporalTiersBitmapStreams forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v14 + 1) + 8 * i)), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"VTXTT", *(*(&v14 + 1) + 8 * i))}];
      }

      v8 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addCellByteCountStats:(id)a3
{
  [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellTxDataBytes), 4, &unk_284FA5468), @"SCTXDB"}];
  [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellDupTxDataBytes), 4, &unk_284FA5468), @"SCDTXDB"}];
  [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalUsedCellBudgetTxDataBytes), 4, &unk_284FA5468), @"SUCBTXDB"}];
  v5 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalWifiTxDataBytes], 4, &unk_284FA5468);

  [a3 setObject:v5 forKeyedSubscript:@"SWTXDB"];
}

- (void)addSegmentWRMReportStats:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  wrmLinkTypeSuggestion = self->_wrmLinkTypeSuggestion;
  if (wrmLinkTypeSuggestion)
  {
    [a3 setObject:wrmLinkTypeSuggestion forKeyedSubscript:@"WRMLTS"];
  }

  wrmLinkTypeChangeReasonCode = self->_wrmLinkTypeChangeReasonCode;
  if (wrmLinkTypeChangeReasonCode)
  {
    [a3 setObject:wrmLinkTypeChangeReasonCode forKeyedSubscript:@"WRMLTCRC"];
  }

  wrmLinkTypeWifiRSSI = self->_wrmLinkTypeWifiRSSI;
  if (wrmLinkTypeWifiRSSI)
  {
    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiRSSI, 3), @"WRMLTCWRSSI"}];
  }

  wrmLinkTypeWifiSNR = self->_wrmLinkTypeWifiSNR;
  if (wrmLinkTypeWifiSNR)
  {
    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiSNR, 3), @"WRMLTCWSNR"}];
  }

  wrmLinkTypeWifiCCA = self->_wrmLinkTypeWifiCCA;
  if (wrmLinkTypeWifiCCA)
  {
    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiCCA, 3), @"WRMLTCWCCA"}];
  }

  wrmLinkTypeWifiPacketLoss = self->_wrmLinkTypeWifiPacketLoss;
  if (wrmLinkTypeWifiPacketLoss)
  {
    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiPacketLoss, 3), @"WRMLTCWPL"}];
  }

  wrmLinkTypeCellSignalStrength = self->_wrmLinkTypeCellSignalStrength;
  if (wrmLinkTypeCellSignalStrength)
  {
    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellSignalStrength, 3), @"WRMLTCCSS"}];
  }

  wrmLinkTypeCellSignalBar = self->_wrmLinkTypeCellSignalBar;
  if (wrmLinkTypeCellSignalBar)
  {
    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellSignalBar, 3), @"WRMLTCCSB"}];
  }

  wrmLinkTypeCellServingCellType = self->_wrmLinkTypeCellServingCellType;
  if (wrmLinkTypeCellServingCellType)
  {
    [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellServingCellType, 3), @"WRMLTCCSCT"}];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR(8u);
    v15 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_wrmLinkTypeSuggestion;
        v17 = self->_wrmLinkTypeChangeReasonCode;
        v18 = self->_wrmLinkTypeWifiRSSI;
        v19 = self->_wrmLinkTypeWifiSNR;
        v20 = self->_wrmLinkTypeWifiCCA;
        v21 = self->_wrmLinkTypeWifiPacketLoss;
        v22 = self->_wrmLinkTypeCellSignalStrength;
        v23 = self->_wrmLinkTypeCellSignalBar;
        v24 = self->_wrmLinkTypeCellServingCellType;
        *buf = 136318210;
        v36 = v14;
        v37 = 2080;
        v38 = "[UplinkSegment addSegmentWRMReportStats:]";
        v39 = 1024;
        v40 = 4608;
        v41 = 2112;
        v42 = self;
        v43 = 2112;
        v44 = v16;
        v45 = 2112;
        v46 = v17;
        v47 = 2112;
        v48 = v18;
        v49 = 2112;
        v50 = v19;
        v51 = 2112;
        v52 = v20;
        v53 = 2112;
        v54 = v21;
        v55 = 2112;
        v56 = v22;
        v57 = 2112;
        v58 = v23;
        v59 = 2112;
        v60 = v24;
        _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Adding WRM metrics to uplink segment report=%@ wrmLinkTypeSuggestion=%@ wrmLinkTypeChangeReasonCode=%@ wrmLinkTypeWifiRSSI=%@  wrmLinkTypeWifiSNR=%@ _currentSegment.wrmLinkTypeWifiCCA=%@ wrmLinkTypeWifiPacketLoss=%@ wrmLinkTypeCellSignalStrength=%@ wrmLinkTypeCellSignalBar=%@ wrmLinkTypeCellServingCellType=%@", buf, 0x80u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v26 = self->_wrmLinkTypeSuggestion;
      v27 = self->_wrmLinkTypeChangeReasonCode;
      v28 = self->_wrmLinkTypeWifiRSSI;
      v29 = self->_wrmLinkTypeWifiSNR;
      v30 = self->_wrmLinkTypeWifiCCA;
      v31 = self->_wrmLinkTypeWifiPacketLoss;
      v32 = self->_wrmLinkTypeCellSignalStrength;
      v33 = self->_wrmLinkTypeCellSignalBar;
      v34 = self->_wrmLinkTypeCellServingCellType;
      *buf = 136318210;
      v36 = v14;
      v37 = 2080;
      v38 = "[UplinkSegment addSegmentWRMReportStats:]";
      v39 = 1024;
      v40 = 4608;
      v41 = 2112;
      v42 = self;
      v43 = 2112;
      v44 = v26;
      v45 = 2112;
      v46 = v27;
      v47 = 2112;
      v48 = v28;
      v49 = 2112;
      v50 = v29;
      v51 = 2112;
      v52 = v30;
      v53 = 2112;
      v54 = v31;
      v55 = 2112;
      v56 = v32;
      v57 = 2112;
      v58 = v33;
      v59 = 2112;
      v60 = v34;
      _os_log_debug_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Adding WRM metrics to uplink segment report=%@ wrmLinkTypeSuggestion=%@ wrmLinkTypeChangeReasonCode=%@ wrmLinkTypeWifiRSSI=%@  wrmLinkTypeWifiSNR=%@ _currentSegment.wrmLinkTypeWifiCCA=%@ wrmLinkTypeWifiPacketLoss=%@ wrmLinkTypeCellSignalStrength=%@ wrmLinkTypeCellSignalBar=%@ wrmLinkTypeCellServingCellType=%@", buf, 0x80u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addSmartBrakeStats:(id)a3
{
  if (self->_isSmartBrakeHistogramPopulated)
  {
    [a3 setObject:-[VCHistogram description](self->_smartBrakeDuration forKeyedSubscript:{"description"), @"SBCGSTDRTN"}];
    [a3 setObject:-[VCHistogram description](self->_smartBrakeTargetBitrateStart forKeyedSubscript:{"description"), @"SBTTXRS"}];
    [a3 setObject:-[VCHistogram description](self->_smartBrakeBandwidthStart forKeyedSubscript:{"description"), @"SBBWES"}];
    [a3 setObject:-[VCHistogram description](self->_smartBrakeBandwidthEnd forKeyedSubscript:{"description"), @"SBBWEE"}];
    [a3 setObject:-[VCHistogram description](self->_smartBrakeTargetBitrateAfter5 forKeyedSubscript:{"description"), @"SBTTXR5"}];
    [a3 setObject:-[VCHistogram description](self->_smartBrakeTargetBitrateAfter15 forKeyedSubscript:{"description"), @"SBTTXR15"}];
    v6 = [(VCHistogram *)self->_smartBrakeTargetBitrateAfter30 description];

    [a3 setObject:v6 forKeyedSubscript:@"SBTTXR30"];
  }
}

- (void)addCelltechTelemetryToDictionary:(id)a3
{
  v5.receiver = self;
  v5.super_class = UplinkSegment;
  [(MultiwaySegment *)&v5 addCelltechTelemetryToDictionary:?];
  if ([(MultiwaySegment *)self maxNegotiatedUplinkBitrate])
  {
    [a3 setObject:self->super._maxNegotiatedUplinkBitrate forKeyedSubscript:@"MNUBRT"];
  }

  if (self->super._maxNegotiatedUplinkBitrate_Alternate)
  {
    [a3 setObject:self->super._maxNegotiatedUplinkBitrate_Alternate forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"MNUBRT", @"A"}];
  }
}

- (void)addPerStreamGroupStatsToDictionary:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = [VCAggregatorUtils validBitmapIndices:self->super._segmentStreamGroups size:11];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR(7u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      segmentStreamGroups = self->super._segmentStreamGroups;
      *buf = 136316162;
      v58 = v6;
      v59 = 2080;
      v60 = "[UplinkSegment addPerStreamGroupStatsToDictionary:]";
      v61 = 1024;
      v62 = 4638;
      v63 = 1024;
      v64 = segmentStreamGroups;
      v65 = 2112;
      v66 = [v5 componentsJoinedByString:{@", "}];
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d segmentStreamGroups=%u streamGroups=%@", buf, 0x2Cu);
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = [v5 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v50)
  {
    v49 = *v53;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v51 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
        if ([v10 unsignedIntValue] != 2 && objc_msgSend(v10, "unsignedIntValue") != 4 && objc_msgSend(v10, "unsignedIntValue") != 6)
        {
          goto LABEL_47;
        }

        if (v10)
        {
          v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AANTBR", v10];
          if (!v11)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v11 = @"AANTBR";
        }

        if (self->super._adjustedDuration)
        {
          v12 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageAudioBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v12 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v12), v11}];
        if (!v10)
        {
          v14 = @"AAMTBR";
          goto LABEL_23;
        }

LABEL_20:
        v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAMTBR", v10];
        if (!v13)
        {
          goto LABEL_27;
        }

        v14 = v13;
LABEL_23:
        if (self->super._adjustedDuration)
        {
          v15 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageAudioMediaBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v15 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v15), v14}];
        if (!v10)
        {
          v17 = @"AAEMTBR";
          goto LABEL_30;
        }

LABEL_27:
        v16 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAEMTBR", v10];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = v16;
LABEL_30:
        if (self->super._adjustedDuration)
        {
          [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageAudioMediaTxNoRedBitrate"}];
          v19 = (v18 / self->super._adjustedDuration);
        }

        else
        {
          v19 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v19), v17}];
LABEL_34:
        [a3 setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierBundling_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"AATBH_A", v10)}];
        [a3 setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierCodecBitrate_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"TAMBR_A", v10)}];
        [a3 setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierCodecPayload_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"TAPAY_A", v10)}];
        [a3 setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierREDPayload_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"REDNPU_A", v10)}];
        [a3 setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierREDMaxDelay_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"REDMD_A", v10)}];
        if (!v10)
        {
          v20 = @"AARTBR";
LABEL_38:
          if (self->super._adjustedDuration)
          {
            v21 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageAudioRedTxBitrate"}] / self->super._adjustedDuration;
          }

          else
          {
            v21 = 0;
          }

          [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v21), v20}];
          goto LABEL_42;
        }

        v20 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AARTBR", v10];
        if (v20)
        {
          goto LABEL_38;
        }

LABEL_42:
        [a3 setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierChangeHistogram"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"AATCC", v10)}];
        if (v10)
        {
          v22 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPULAP", v10];
          if (!v22)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v22 = @"RTPULAP";
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v10), "totalRTPUplinkIngressAudioPackets")), v22}];
LABEL_47:
        if ([v10 unsignedIntValue] != 1 && objc_msgSend(v10, "unsignedIntValue") != 3 && objc_msgSend(v10, "unsignedIntValue") != 5 && objc_msgSend(v10, "unsignedIntValue") != 7 && objc_msgSend(v10, "unsignedIntValue") != 8 && objc_msgSend(v10, "unsignedIntValue") != 10)
        {
          goto LABEL_110;
        }

        [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "videoTxFecData"), "updateReport:withStreamGroup:", a3, v10}];
        if (v10)
        {
          v23 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVTSBR", v10];
          if (!v23)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v23 = @"AVTSBR";
        }

        if (self->super._adjustedDuration)
        {
          v24 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageVideoBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v24 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v24), v23}];
        if (!v10)
        {
          v26 = @"AVMSBR";
          goto LABEL_64;
        }

LABEL_61:
        v25 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVMSBR", v10];
        if (!v25)
        {
          goto LABEL_68;
        }

        v26 = v25;
LABEL_64:
        if (self->super._adjustedDuration)
        {
          v27 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageVideoTxMediaBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v27 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v27), v26}];
        if (!v10)
        {
          v29 = @"AVHSBR";
          goto LABEL_71;
        }

LABEL_68:
        v28 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVHSBR", v10];
        if (!v28)
        {
          goto LABEL_75;
        }

        v29 = v28;
LABEL_71:
        if (self->super._adjustedDuration)
        {
          v30 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageVideoTxHeaderBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v30 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v30), v29}];
        if (!v10)
        {
          v32 = @"AVFSBR";
          goto LABEL_78;
        }

LABEL_75:
        v31 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVFSBR", v10];
        if (!v31)
        {
          goto LABEL_82;
        }

        v32 = v31;
LABEL_78:
        if (self->super._adjustedDuration)
        {
          v33 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageVideoTxFecBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v33 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v33), v32}];
LABEL_82:
        [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "firResponseTime"), "updateReport:withStreamGroup:", a3, v10}];
        [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "transmitterAVHostTimeData"), "updateReport:withStreamGroup:", a3, v10}];
        if (v10)
        {
          v34 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPULVP", v10];
          if (v34)
          {
            [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v10), "totalRTPUplinkIngressVideoPackets")), v34}];
          }

          v35 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTIDRS", v10];
          if (!v35)
          {
LABEL_89:
            v36 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTIDRSR", v10];
            if (!v36)
            {
              goto LABEL_96;
            }

            goto LABEL_92;
          }
        }

        else
        {
          [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", 0), "totalRTPUplinkIngressVideoPackets")), @"RTPULVP"}];
          v35 = @"VTIDRS";
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v10), "idrSentCount")), v35}];
        if (v10)
        {
          goto LABEL_89;
        }

        v36 = @"VTIDRSR";
LABEL_92:
        if (self->super._adjustedDuration)
        {
          v37 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "idrSentCount"}] * 1000.0;
          adjustedDuration = self->super._adjustedDuration;
          v39 = (v37 / ([(MultiwaySegment *)self RTPeriod]* adjustedDuration));
        }

        else
        {
          v39 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v39), v36}];
        if (!v10)
        {
          v40 = @"VTCFR";
          goto LABEL_99;
        }

LABEL_96:
        v40 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTCFR", v10];
        if (!v40)
        {
          goto LABEL_103;
        }

LABEL_99:
        if ([v51 videoFrameCaptureReportCount])
        {
          v41 = [v51 videoFrameCapturedCounter] * 1000.0;
          v42 = [v51 videoFrameCaptureReportCount];
          v43 = (v41 / (v42 * [(MultiwaySegment *)self RTPeriod]));
        }

        else
        {
          v43 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v43), v40}];
        if (v10)
        {
LABEL_103:
          v44 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTEFR", v10];
          if (!v44)
          {
            goto LABEL_110;
          }

          goto LABEL_106;
        }

        v44 = @"VTEFR";
LABEL_106:
        if ([v51 encodedFrameReportedCount])
        {
          v45 = [v51 encodedFrameSum] * 1000.0;
          v46 = [v51 encodedFrameReportedCount];
          v47 = (v45 / (v46 * [(MultiwaySegment *)self RTPeriod]));
        }

        else
        {
          v47 = 0;
        }

        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v47), v44}];
LABEL_110:
        [(UplinkSegment *)self addPerStreamGroupRTXStatsToDictionary:a3 streamGroup:v10];
      }

      v50 = [v5 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v50);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)addPerStreamGroupRTXStatsToDictionary:(id)a3 streamGroup:(id)a4
{
  v7 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:a4];
  if (!v7)
  {
    [UplinkSegment addPerStreamGroupRTXStatsToDictionary:streamGroup:];
    return;
  }

  v8 = v7;
  if (*(v7 + 8) != 1)
  {
    return;
  }

  v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKRQCNT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 16)), v9}];
  v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKFLCNT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 24)), v10}];
  v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKCHCNT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 32)), v11}];
  v12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKCMCNT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 40)), v12}];
  v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKNRCNT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 48)), v13}];
  v14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNRRC", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 56)), v14}];
  v15 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNRRMC", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedShort:", *(v8 + 64)), v15}];
  v16 = @"ULNACKRQRATE";
  if (a4 && (v16 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKRQRATE", a4]) == 0 || ((adjustedDuration = self->super._adjustedDuration, !adjustedDuration) ? (v18 = 0) : (v18 = *(v8 + 16) / adjustedDuration), objc_msgSend(a3, "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v18), v16), a4))
  {
    v19 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKFLRATE", a4];
    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = v19;
  }

  else
  {
    v20 = @"ULNACKFLRATE";
  }

  v21 = self->super._adjustedDuration;
  if (v21)
  {
    v22 = *(v8 + 24) / v21;
  }

  else
  {
    v22 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v22), v20}];
  if (!a4)
  {
    v24 = @"ULNACKCHRATE";
    goto LABEL_19;
  }

LABEL_16:
  v23 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKCHRATE", a4];
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v23;
LABEL_19:
  v25 = self->super._adjustedDuration;
  if (v25)
  {
    v26 = *(v8 + 32) / v25;
  }

  else
  {
    v26 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v26), v24}];
  if (!a4)
  {
    v28 = @"ULNACKNRRATE";
    goto LABEL_26;
  }

LABEL_23:
  v27 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKNRRATE", a4];
  if (!v27)
  {
    goto LABEL_30;
  }

  v28 = v27;
LABEL_26:
  v29 = self->super._adjustedDuration;
  if (v29)
  {
    v30 = *(v8 + 48) / v29;
  }

  else
  {
    v30 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v30), v28}];
  if (!a4)
  {
    v32 = @"ULNACKRPRATE";
    goto LABEL_33;
  }

LABEL_30:
  v31 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKRPRATE", a4];
  if (!v31)
  {
    goto LABEL_37;
  }

  v32 = v31;
LABEL_33:
  v33 = self->super._adjustedDuration;
  if (v33)
  {
    v34 = *(v8 + 56) / v33;
  }

  else
  {
    v34 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v34), v32}];
  if (!a4)
  {
    v36 = @"ULNACKNRRATE";
    goto LABEL_40;
  }

LABEL_37:
  v35 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKNRRATE", a4];
  if (!v35)
  {
    goto LABEL_44;
  }

  v36 = v35;
LABEL_40:
  v37 = self->super._adjustedDuration;
  if (v37)
  {
    v38 = *(v8 + 48) / v37;
  }

  else
  {
    v38 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v38), v36}];
  if (!a4)
  {
    v40 = @"ULNACKNRRATE";
    goto LABEL_47;
  }

LABEL_44:
  v39 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKNRRATE", a4];
  if (v39)
  {
    v40 = v39;
LABEL_47:
    v41 = self->super._adjustedDuration;
    if (v41)
    {
      v42 = *(v8 + 48) / v41;
    }

    else
    {
      v42 = 0;
    }

    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v42), v40}];
  }

  [a3 setObject:objc_msgSend(*(v8 + 72) forKeyedSubscript:{"description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"ULNACKAVGRESP", a4)}];
  [a3 setObject:objc_msgSend(*(v8 + 80) forKeyedSubscript:{"description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"ULNACKAVGLATE", a4)}];
  [a3 setObject:objc_msgSend(*(v8 + 88) forKeyedSubscript:{"description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"ULNACKMBR", a4)}];
  v43 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKRBR", a4];
  v44 = [*(v8 + 96) description];

  [a3 setObject:v44 forKeyedSubscript:v43];
}

- (void)addBIFStatsToDictionary:(id)a3
{
  if (self->super._shouldReportBIFPercentage)
  {
    v11 = v3;
    adjustedDuration = self->super._adjustedDuration;
    if (adjustedDuration)
    {
      v9 = 10000 * self->super._bifAboveThresholdCount / adjustedDuration;
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{v9, v4, v11, v5}];

    [a3 setObject:v10 forKeyedSubscript:@"BIFCngP"];
  }
}

- (void)updateAdaptiveLearningSegment
{
  OUTLINED_FUNCTION_50(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

- (unsigned)audioFlushPercent
{
  audioFlushPacketCount = self->_audioFlushPacketCount;
  audioSentPacketCount = self->_audioSentPacketCount;
  if (audioFlushPacketCount > audioSentPacketCount)
  {
    self->_audioSentPacketCount = audioFlushPacketCount;
    v4 = self->_audioFlushPacketCount;
    return 10000 * v4 / audioFlushPacketCount;
  }

  v4 = self->_audioFlushPacketCount;
  audioFlushPacketCount = self->_audioSentPacketCount;
  if (audioSentPacketCount)
  {
    return 10000 * v4 / audioFlushPacketCount;
  }

  return 0;
}

- (void)updateUplinkSegmentStats:(id)a3 withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)a4
{
  v6 = [(UplinkSegment *)self lastReportedTotalCellDupTxDataBytes];
  var7 = a4->var7;
  if (v6 <= var7)
  {
    v8 = var7 - [(UplinkSegment *)self lastReportedTotalCellDupTxDataBytes];
    var7 = v8 + [(UplinkSegment *)self totalCellDupTxDataBytes];
  }

  [(UplinkSegment *)self setTotalCellDupTxDataBytes:var7];
  [(UplinkSegment *)self setLastReportedTotalCellDupTxDataBytes:a4->var7];
  v9 = [(UplinkSegment *)self lastReportedTotalUsedCellBudgetTxDataBytes];
  var5 = a4->var5;
  if (v9 <= var5)
  {
    v11 = var5 - [(UplinkSegment *)self lastReportedTotalUsedCellBudgetTxDataBytes];
    var5 = v11 + [(UplinkSegment *)self totalUsedCellBudgetTxDataBytes];
  }

  [(UplinkSegment *)self setTotalUsedCellBudgetTxDataBytes:var5];
  [(UplinkSegment *)self setLastReportedTotalUsedCellBudgetTxDataBytes:a4->var5];
  v12 = [(UplinkSegment *)self lastReportedTotalCellTxDataBytes];
  var0 = a4->var0;
  if (v12 <= a4->var0)
  {
    v14 = var0 - [(UplinkSegment *)self lastReportedTotalCellTxDataBytes];
    var0 = v14 + [(UplinkSegment *)self totalCellTxDataBytes];
  }

  [(UplinkSegment *)self setTotalCellTxDataBytes:var0];
  [(UplinkSegment *)self setLastReportedTotalCellTxDataBytes:a4->var0];
  v15 = [(UplinkSegment *)self lastReportedTotalWifiTxDataBytes];
  var2 = a4->var2;
  if (v15 <= var2)
  {
    v17 = var2 - [(UplinkSegment *)self lastReportedTotalWifiTxDataBytes];
    var2 = v17 + [(UplinkSegment *)self totalWifiTxDataBytes];
  }

  [(UplinkSegment *)self setTotalWifiTxDataBytes:var2];
  v18 = a4->var2;

  [(UplinkSegment *)self setLastReportedTotalWifiTxDataBytes:v18];
}

- (id)segmentReport
{
  v110[88] = *MEMORY[0x277D85DE8];
  if (self->super._hasReported)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR(7u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        segmentName = self->super._segmentName;
        *buf = 136315906;
        *&buf[4] = v3;
        *&buf[12] = 2080;
        *&buf[14] = "[UplinkSegment segmentReport]";
        *&buf[22] = 1024;
        LODWORD(v102) = 4798;
        WORD2(v102) = 2112;
        *(&v102 + 6) = segmentName;
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Uplink segment=%@ has already been reported. Ignoring request...", buf, 0x26u);
      }
    }

    goto LABEL_7;
  }

  if (self->super._duration <= 1)
  {
    [(MultiwaySegment *)self complete_and_release_nw_activity:2];
LABEL_7:
    v6 = 0;
    goto LABEL_91;
  }

  v99.receiver = self;
  v99.super_class = UplinkSegment;
  v6 = [(VCReportingCommon *)&v99 dispatchedAggregatedReportCommon];
  [v6 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", -[UplinkSegment segmentReportingMode](self, "segmentReportingMode")), @"SSOPMODE"}];
  dynamicDupeLinkCount = self->super._dynamicDupeLinkCount;
  if (dynamicDupeLinkCount)
  {
    v8 = (self->super._plrTierTotalDelta / dynamicDupeLinkCount);
  }

  else
  {
    v8 = 0.0;
  }

  [-[MultiwaySegment delegate](self "delegate")];
  v10 = v9;
  v11 = 0;
  if (v9 > 0.0)
  {
    [-[MultiwaySegment delegate](self "delegate")];
    v11 = (v12 * 10000.0 / v10);
  }

  v90 = v11;
  delegate = self->super._delegate;
  v14 = [(NSString *)self->super._segmentName substringToIndex:3];
  [(UplinkSegment *)self updateAdaptiveLearningSegment];
  adjustedDuration = self->super._adjustedDuration;
  v16 = [(MultiwaySegment *)self RTPeriod];
  if (self->_BBQueueTooLargeCount >= v16 * adjustedDuration)
  {
    BBQueueTooLargeCount = v16 * adjustedDuration;
  }

  else
  {
    BBQueueTooLargeCount = self->_BBQueueTooLargeCount;
  }

  BBRateTooLowCount = self->_BBRateTooLowCount;
  v19 = v16 * adjustedDuration;
  if (BBRateTooLowCount >= v16 * adjustedDuration)
  {
    BBRateTooLowCount = v16 * adjustedDuration;
  }

  v88 = BBQueueTooLargeCount;
  v89 = BBRateTooLowCount;
  totalAudioPauseTime = self->_totalAudioPauseTime;
  v21 = self->super._adjustedDuration;
  v22 = ([(MultiwaySegment *)self RTPeriod]* v21);
  if (totalAudioPauseTime <= v22)
  {
    v24 = self->_totalAudioPauseTime;
  }

  else
  {
    v23 = self->super._adjustedDuration;
    v24 = ([(MultiwaySegment *)self RTPeriod]* v23);
  }

  videoFlushPacketCount = self->_videoFlushPacketCount;
  videoSentPacketCount = self->_videoSentPacketCount;
  if (videoFlushPacketCount >= videoSentPacketCount)
  {
    videoFlushPacketCount = self->_videoSentPacketCount;
  }

  v85 = videoFlushPacketCount;
  videoBasebandDropPacketCount = self->_videoBasebandDropPacketCount;
  if (videoBasebandDropPacketCount >= videoSentPacketCount)
  {
    videoBasebandDropPacketCount = self->_videoSentPacketCount;
  }

  v86 = videoBasebandDropPacketCount;
  if (self->_audioBasebandDropPacketCount >= self->_audioSentPacketCount)
  {
    audioSentPacketCount = self->_audioSentPacketCount;
  }

  else
  {
    audioSentPacketCount = self->_audioBasebandDropPacketCount;
  }

  v87 = audioSentPacketCount;
  v29 = self->super._adjustedDuration;
  if (v29)
  {
    LODWORD(v22) = self->_totalExtraTargetBitrate;
    *&v30 = *&v22 * 1000.0 / v29;
    v84 = *&v30;
    LODWORD(v30) = self->_overshootSendBitrate;
    *&v31 = v30 * 1000.0 / v29;
    v32 = *&v31;
    LODWORD(v31) = self->_undershootSendBitrate;
    *&v33 = v31 * 1000.0 / v29;
    v34 = *&v33;
    LODWORD(v33) = self->_overUtilizedBandwidth;
    *&v35 = v33 * 1000.0 / v29;
    LODWORD(v94) = v32;
    HIDWORD(v94) = *&v35;
    LODWORD(v35) = self->_underUtilizedBandwidth;
    LODWORD(v93) = v34;
    HIDWORD(v93) = (v35 * 1000.0 / v29);
    v36 = 10000 * self->super._ecnEnabledCount / v29;
    v91 = 10000 * self->super._networkCongestedCount / v29;
  }

  else
  {
    v36 = 0;
    v93 = 0;
    v94 = 0;
    v84 = 0;
    v91 = 0;
  }

  v37 = v19;
  v38 = self->super._dynamicDupeLinkCount;
  if (v38)
  {
    v39 = self->super._rttMeanTotalDelta / v38;
  }

  else
  {
    v39 = 0.0;
  }

  averageWireSendCounter = self->_averageWireSendCounter;
  if (averageWireSendCounter)
  {
    v41 = self->_averageWireSendBytes * 8.0;
    v92 = (v41 / (averageWireSendCounter * [(MultiwaySegment *)self RTPeriod]));
  }

  else
  {
    v92 = 0;
  }

  totalBaseBandTxRate = self->_totalBaseBandTxRate;
  v109[0] = @"RVER";
  v109[1] = @"CONFIG";
  v43 = self->super._segmentName;
  if (!v43)
  {
    v43 = &stru_284F80940;
  }

  v110[0] = &unk_284FA5480;
  v110[1] = v43;
  previousSegmentName = self->super._previousSegmentName;
  if (!previousSegmentName)
  {
    previousSegmentName = &stru_284F80940;
  }

  v110[2] = previousSegmentName;
  v109[2] = @"PREVCONFIG";
  v109[3] = @"STRMGRPS";
  v110[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._segmentStreamGroups];
  v109[4] = @"PREVSTRMGRPS";
  v110[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._previousSegmentStreamGroups];
  v109[5] = @"DRTN";
  v110[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment RTPeriod](self, "RTPeriod") * self->super._duration}];
  v109[6] = @"ATBR";
  v45 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageTargetBitrate];
  v110[6] = [v45 numberWithUnsignedInt:v46];
  v109[7] = @"TSBTS";
  v110[7] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->super._totalBytesSent];
  v109[8] = @"ARTT";
  v47 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageRoundTripTime];
  v110[8] = [v47 numberWithUnsignedInt:v48];
  v109[9] = @"TPSSCNT";
  v110[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalPacketsSent](self, "totalPacketsSent")}];
  v109[10] = @"TPRSCNT";
  v110[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalPacketsReceived](self, "totalPacketsReceived")}];
  v109[11] = @"NUMPARTS";
  v110[11] = [MEMORY[0x277CCABA8] numberWithDouble:v10];
  v109[12] = @"GNDLUP";
  v110[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v90];
  v109[13] = @"GNDLUCNT";
  v110[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(-[MultiwaySegment delegate](self, "delegate"), "numberOfWebParticipants")}];
  v109[14] = @"APLR";
  v49 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self packetLossRate];
  v110[14] = [v49 numberWithUnsignedInt:v50];
  v109[15] = @"STATBR";
  v110[15] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageTBRForSegment:](delegate, "shortTermAverageTBRForSegment:", v14)}];
  v109[16] = @"LTATBR";
  v110[16] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageTBRForSegment:](delegate, "longTermAverageTBRForSegment:", v14)}];
  v109[17] = @"LTAISBR";
  v110[17] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageISBRForSegment:](delegate, "longTermAverageISBRForSegment:", v14)}];
  v109[18] = @"STAISBR";
  v110[18] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageISBRForSegment:](delegate, "shortTermAverageISBRForSegment:", v14)}];
  v109[19] = @"PISBR";
  v110[19] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate previousISBRForSegment:](delegate, "previousISBRForSegment:", v14)}];
  v109[20] = @"LTASATXBR";
  v110[20] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageSATXBRForSegment:](delegate, "longTermAverageSATXBRForSegment:", v14)}];
  v109[21] = @"STASATXBR";
  v110[21] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageSATXBRForSegment:](delegate, "shortTermAverageSATXBRForSegment:", v14)}];
  v109[22] = @"LTASARBR";
  v110[22] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageSARBRForSegment:](delegate, "longTermAverageSARBRForSegment:", v14)}];
  v109[23] = @"SRASARBR";
  v110[23] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageSARBRForSegment:](delegate, "shortTermAverageSARBRForSegment:", v14)}];
  v109[24] = @"LTABWE";
  v110[24] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageBWEForSegment:](delegate, "longTermAverageBWEForSegment:", v14)}];
  v109[25] = @"STABWE";
  v110[25] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageBWEForSegment:](delegate, "shortTermAverageBWEForSegment:", v14)}];
  v109[26] = @"SMLRN";
  v110[26] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate adaptiveLearningState](delegate, "adaptiveLearningState")}];
  v109[27] = @"ECNP";
  v110[27] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v36];
  v109[28] = @"ECT1Cnt";
  v110[28] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._ecnECT1Count];
  v109[29] = @"CECnt";
  v110[29] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._ecnCECount];
  v109[30] = @"NWCngP";
  v110[30] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v91];
  v109[31] = @"RTT";
  v110[31] = [(VCHistogram *)self->super._RTT description];
  v109[32] = @"PLR";
  v110[32] = [(VCHistogram *)self->super._PLR description];
  v109[33] = @"TBR";
  v110[33] = [(VCHistogram *)self->super._TBR description];
  v109[34] = @"LOCSW";
  v110[34] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment localSwitches](self, "localSwitches")}];
  v109[35] = @"SESSW";
  v110[35] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{-[MultiwaySegment sessionSwitches](self, "sessionSwitches")}];
  v109[36] = @"CAMCENSTAGE";
  v110[36] = [MEMORY[0x277CCABA8] numberWithBool:self->_isCenterStageEnabled];
  v109[37] = @"CAMB";
  v110[37] = [MEMORY[0x277CCABA8] numberWithBool:self->_isPortraitBlurEnabled];
  v109[38] = @"TPSSCTR";
  v110[38] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_packetSendSuccessCounter];
  v109[39] = @"TPSFCTR";
  v110[39] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_packetSendFailureCounter];
  v109[40] = @"CMAV";
  v110[40] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:{-[MultiwaySegment coreMotionActivityValue](self, "coreMotionActivityValue")}];
  v109[41] = @"CMAC";
  v110[41] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:{-[MultiwaySegment coreMotionActivityConfidence](self, "coreMotionActivityConfidence")}];
  v109[42] = @"AFP";
  v110[42] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[UplinkSegment audioFlushPercent](self, "audioFlushPercent")}];
  v109[43] = @"SARTT";
  v51 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageRoundTripTime];
  v110[43] = [v51 numberWithUnsignedInt:(v52 * 100.0)];
  v109[44] = @"SASBR";
  v53 = self->super._adjustedDuration;
  if (v53)
  {
    v54 = (self->_averageSendBitrate / v53 * 1000.0);
  }

  else
  {
    v54 = 0;
  }

  v110[44] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v54];
  v109[45] = @"SBR";
  v110[45] = [(VCHistogram *)self->_SBR description];
  v109[46] = @"SATXBR";
  v55 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageTargetBitrate];
  v110[46] = [v55 numberWithUnsignedInt:v56];
  v109[47] = @"PCHADEL";
  v110[47] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:self->super._primaryConnHealthAllowedDelay], 2);
  v109[48] = @"PLRTIERDLT";
  v110[48] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v8], 3);
  v109[49] = @"VEBR";
  v110[49] = [(VCHistogram *)self->_videoEncodingBitrate description];
  v109[50] = @"TASP";
  v57 = self->super._adjustedDuration;
  if (v57)
  {
    v58 = (v24 / v57 * 10000.0);
  }

  else
  {
    v58 = 0;
  }

  v110[50] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v58];
  v109[51] = @"VFP";
  v59 = self->_videoSentPacketCount;
  if (v59)
  {
    v60 = (v85 / v59 * 10000.0);
  }

  else
  {
    v60 = 0;
  }

  v110[51] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v60];
  v109[52] = @"VBBDP";
  v61 = self->_videoSentPacketCount;
  if (v61)
  {
    v62 = (v86 / v61 * 10000.0);
  }

  else
  {
    v62 = 0;
  }

  v110[52] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v62];
  v109[53] = @"ABBDP";
  v63 = self->_audioSentPacketCount;
  if (v63)
  {
    v64 = (v87 / v63 * 10000.0);
  }

  else
  {
    v64 = 0;
  }

  v110[53] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v64];
  v109[54] = @"BBNWP";
  v65 = self->super._adjustedDuration;
  if (v65)
  {
    v66 = 10000 * (self->_rateControlBasebandNotificationNWCount / v65);
  }

  else
  {
    v66 = 0;
  }

  v67 = v37;
  v110[54] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v66];
  v109[55] = @"BBQTL";
  if (v37)
  {
    v68 = (v88 / v67 * 10000.0);
  }

  else
  {
    v68 = 0;
  }

  v110[55] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v68];
  v109[56] = @"BBRTL";
  if (v37)
  {
    v69 = (v89 / v67 * 10000.0);
  }

  else
  {
    v69 = 0;
  }

  v110[56] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v69];
  v109[57] = @"MASI";
  v110[57] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxAudioStallInterval * 100.0)];
  v109[58] = @"SRDMBL";
  v110[58] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalMBLRampDownCount](self, "totalMBLRampDownCount")}], 3);
  v109[59] = @"SSBWD";
  v110[59] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalSuddenBandwidthDropCount](self, "totalSuddenBandwidthDropCount")}], 3);
  v109[60] = @"TAPAY";
  v110[60] = [(VCHistogram *)self->_audioCodecPayload description];
  v109[61] = @"AATBH";
  v110[61] = [(VCHistogram *)self->_audioFrameBundling description];
  v109[62] = @"TAMBR";
  v110[62] = [(VCHistogram *)self->_audioMediaBitrate description];
  v109[63] = @"TRPBR";
  v110[63] = [(VCHistogram *)self->_redPayloadBitrate description];
  v109[64] = @"TVPAY";
  v110[64] = [(VCHistogram *)self->_videoCodecPayload description];
  v109[65] = @"TVMBR";
  v110[65] = [(VCHistogram *)self->_videoMediaBitrate description];
  v109[66] = @"AOVSBR";
  v110[66] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v94];
  v109[67] = @"AUNSBR";
  v110[67] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v93];
  v109[68] = @"AOVBWE";
  v110[68] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v94)];
  v109[69] = @"AUNBWE";
  v110[69] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v93)];
  v109[70] = @"RTTMEANDLT";
  v110[70] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v39], 3);
  v109[71] = @"BSIDX";
  v110[71] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._bootstrapSampleIndex];
  v109[72] = @"REDMD";
  v110[72] = [(VCHistogram *)self->_redMaxDelay description];
  v109[73] = @"REDNPU";
  v110[73] = [(VCHistogram *)self->_redNumPayloadsUsed description];
  v109[74] = @"AWSB";
  v110[74] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v92];
  v109[75] = @"VTPULEP";
  v110[75] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVTPUplinkEgressMediaPackets];
  v109[76] = @"VTPULIP";
  v110[76] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVTPUplinkIngressMediaPackets];
  v109[77] = @"ATJC";
  v110[77] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_audioStreamTimestampJumpCount];
  v109[78] = @"ATJD";
  v110[78] = [(VCHistogram *)self->_audioStreamTimestampJumpDuration description];
  v109[79] = @"ATJM";
  v110[79] = [MEMORY[0x277CCABA8] numberWithUnsignedLong:self->_audioStreamTimestampJumpMax];
  v109[80] = @"WLTA";
  v110[80] = [(VCHistogram *)self->_wifiQualityScoreLossTx description];
  v109[81] = @"WDTA";
  v110[81] = [(VCHistogram *)self->_wifiQualityScoreDelayTx description];
  v109[82] = @"WCSA";
  v110[82] = [(VCHistogram *)self->_wifiQualityScoreChannel description];
  v109[83] = @"ABBR";
  v110[83] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:totalBaseBandTxRate / v67], 2);
  v109[84] = @"MAXBBR";
  v110[84] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:self->_maxBaseBandTxRate], 2);
  v109[85] = @"MINBBR";
  v110[85] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:self->_minBaseBandTxRate], 2);
  v109[86] = @"ACSR";
  v110[86] = [(VCHistogram *)self->_cellStrengthRawBars description];
  v109[87] = @"FECHDRVER";
  v110[87] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._fecHeaderVersion];
  [v6 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v110, v109, 88)}];
  [(VCReportingDistribution *)self->_cameraCaptureData updateReport:v6];
  if (self->super._isOneToOneMode)
  {
    v107[0] = @"VCMQIAP";
    v108[0] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQIngressAudioPackets];
    v107[1] = @"VCMQIVP";
    v108[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQIngressVideoPackets];
    v107[2] = @"VCMQIP";
    v108[2] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQIngressPackets];
    v107[3] = @"VCMQEAP";
    v108[3] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressAudioPackets];
    v107[4] = @"VCMQEVP";
    v108[4] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressVideoPackets];
    v107[5] = @"VCMQEP";
    v108[5] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressPackets];
    v107[6] = @"VCMQENDAP";
    v108[6] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressNonDupAudioPackets];
    v107[7] = @"VCMQENDVP";
    v108[7] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressNonDupVideoPackets];
    v107[8] = @"VCMQENDP";
    v108[8] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressNonDupPackets];
    v107[9] = @"VCMQIQP";
    v108[9] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQIngressQueuedPackets];
    v107[10] = @"VCMQFP";
    v108[10] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQFlushedPackets];
    v107[11] = @"AExTXBR";
    v108[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v84];
    v107[12] = @"VCSECNLinkType";
    v108[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_ecnLinkType];
    [v6 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v108, v107, 13)}];
    if ([(MultiwaySegment *)self linksWithMaxPacketHistory])
    {
      [v6 setObject:-[MultiwaySegment linksWithMaxPacketHistory](self forKeyedSubscript:{"linksWithMaxPacketHistory"), @"ULPH"}];
      [v6 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", -[MultiwaySegment packetHistoryIndex](self, "packetHistoryIndex")), @"ULPI"}];
    }
  }

  [(MultiwaySegment *)self addCommonSegmentTelemetry:v6];
  [(UplinkSegment *)self addBIFStatsToDictionary:v6];
  [v6 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", -[MultiwaySegment isApplePersonalHotspot](self, "isApplePersonalHotspot")), @"PHS"}];
  activeConnectionRegistry = self->super._activeConnectionRegistry;
  if (activeConnectionRegistry)
  {
    [v6 setObject:activeConnectionRegistry forKeyedSubscript:@"ACAS"];
  }

  if (self->_isUplinkScreenEnabled)
  {
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_isFullScreenCapture), @"FULLCAP"}];
  }

  if (self->super._mediaQueueSchedulePolicy)
  {
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"LMQSchP"}];
  }

  if (self->super._conversationTimeBase)
  {
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._startDate), @"StartDate"}];
    v71 = MEMORY[0x277CCABA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [v6 setObject:objc_msgSend(v71 forKeyedSubscript:{"numberWithInt:", v72), @"EndDate"}];
  }

  if ([[(NSString *)self->super._segmentName substringFromIndex:2] hasPrefix:@"W"])
  {
    v105 = @"WiFi5GHz";
    v106 = [MEMORY[0x277CCABA8] numberWithInt:self->super._is5GHz];
    [v6 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v106, &v105, 1)}];
  }

  lossPattern = self->super._lossPattern;
  *buf = self->super._fecStatsHolder;
  *&buf[8] = lossPattern;
  lossFecHistogram = self->super._lossFecHistogram;
  *&buf[16] = self->super._lossHistogram;
  v102 = lossFecHistogram;
  v103 = self->super._adjustedDuration;
  v104 = 0;
  [(SegmentStatsDelegate *)self->super._delegate addFECStats:v6 parameters:buf reportFrameSizeTelemetry:0 reportLevels:1];
  [(MultiwaySegment *)self addRateControlExperimentInfoToSegmentReport:v6];
  [(MultiwaySegment *)self reportVCRCMLStats:v6];
  if (self->super._nwActivity)
  {
    if (self->super._useNwActivitySubmitMetrics && self->super._isNWActivityReportingEnabled)
    {
      v75 = _CFXPCCreateXPCObjectFromCFObject();
      nwActivity = self->super._nwActivity;
      nw_activity_submit_metrics();
      xpc_release(v75);
    }

    [(MultiwaySegment *)self complete_and_release_nw_activity:2];
  }

  [(UplinkSegment *)self addCellByteCountStats:v6];
  [(UplinkSegment *)self collectStreamQualityAggregator:v6];
  [(UplinkSegment *)self collectStreamTemporalStats:v6];
  [(UplinkSegment *)self addSegmentWRMReportStats:v6];
  [(UplinkSegment *)self addMediaQueueStats:v6];
  [(UplinkSegment *)self addSmartBrakeStats:v6];
  [(UplinkSegment *)self addCelltechTelemetryToDictionary:v6];
  [(MultiwaySegment *)self addQRServerTelemetryToDictionary:v6];
  [(VCReportingCommon *)self addClientExperimentsToReport:v6];
  [(UplinkSegment *)self addPerStreamGroupStatsToDictionary:v6];
  [(UplinkSegment *)self addVideoFeatureStatus:v6];
  [(UplinkSegment *)self reportSpatialAudioSupport:v6];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  thermalDataCollectors = self->_thermalDataCollectors;
  v78 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v95 objects:v100 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v96;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v96 != v80)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v95 + 1) + 8 * i) updateReport:v6];
      }

      v79 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v95 objects:v100 count:16];
    }

    while (v79);
  }

  self->super._hasReported = 1;
LABEL_91:
  v82 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)addVideoFeatureStatus:(id)a3
{
  [VCAggregator addVideoFeatureStatus:self->super._centerStageStatus histogramKey:@"CSDUR" histogram:self->_centerStageDuration statusKey:@"CSFENB" report:a3];
  [VCAggregator addVideoFeatureStatus:self->super._portraitModeStatus histogramKey:@"PMDUR" histogram:self->_portraitModeDuration statusKey:@"PMFENB" report:a3];
  [VCAggregator addVideoFeatureStatus:self->super._studioLightStatus histogramKey:@"SLDUR" histogram:self->_studioLightDuration statusKey:@"SLFENB" report:a3];
  [VCAggregator addVideoFeatureStatus:self->super._reactionsStatus histogramKey:@"REACDUR" histogram:self->_reactionActiveDuration statusKey:@"REFENB" report:a3];
  [(VCDurationHistogram *)self->_eyeContactDuration finalize:micro()];
  [VCAggregator addVideoFeatureStatus:self->super._eyeContactStatus histogramKey:@"ECDUR" histogram:self->_eyeContactDuration statusKey:@"ECFENB" report:a3];
  backgroundReplacementStatus = self->super._backgroundReplacementStatus;
  backgroundReplacementDuration = self->_backgroundReplacementDuration;

  [VCAggregator addVideoFeatureStatus:backgroundReplacementStatus histogramKey:@"BGRDUR" histogram:backgroundReplacementDuration statusKey:@"BGRFENB" report:a3];
}

- (void)reportSpatialAudioSupport:(id)a3
{
  v4 = [MEMORY[0x277CCABA8] numberWithChar:self->super._spatialAudioSupported];

  [a3 setObject:v4 forKeyedSubscript:@"SAFSUP"];
}

- (void)releaseWRMMetrics
{
  wrmLinkTypeCellServingCellType = self->_wrmLinkTypeCellServingCellType;
}

- (void)calculateUplinkTelemetry:(id)a3 lastReportedAudioPauseTime:(double)a4 lastReportedVideoPacketSentCount:(double)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = [a3 objectForKeyedSubscript:sRTCReportingStreamCollection];
  if ([v7 count])
  {
    OUTLINED_FUNCTION_27();
    v12 = OUTLINED_FUNCTION_56(v8, v9, v10, v11);
    if (v12)
    {
      v13 = v12;
      v30 = 0;
      v29 = 0;
      v14 = 0;
      v15 = *v33;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v18 = [v7 objectForKeyedSubscript:*(v32 + 8 * i)];
          v19 = [objc_msgSend(v18 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
          if (v19 == 1)
          {
            if ([v18 objectForKeyedSubscript:@"VTxRMedia"])
            {
              [objc_msgSend(v18 objectForKeyedSubscript:{@"VTxRMedia", "integerValue"}];
              OUTLINED_FUNCTION_46();
            }

            if ([OUTLINED_FUNCTION_36() objectForKeyedSubscript:?])
            {
              HIDWORD(v30) += [objc_msgSend(OUTLINED_FUNCTION_36() "objectForKeyedSubscript:"integerValue"")];
            }

            if ([v18 objectForKeyedSubscript:@"APT"])
            {
              [objc_msgSend(v18 objectForKeyedSubscript:{@"APT", "doubleValue"}];
              v16 = v16 + v21;
            }

            if (OUTLINED_FUNCTION_44())
            {
              v29 += [OUTLINED_FUNCTION_44() integerValue];
            }

            if (OUTLINED_FUNCTION_59())
            {
              LODWORD(v30) = v30 + [OUTLINED_FUNCTION_59() integerValue];
            }

            if ([v18 objectForKeyedSubscript:@"ATxR"])
            {
              v14 = v14 + [OUTLINED_FUNCTION_59() integerValue];
            }

            if ([OUTLINED_FUNCTION_36() objectForKeyedSubscript:?])
            {
              v14 = v14 + [objc_msgSend(OUTLINED_FUNCTION_36() "objectForKeyedSubscript:"integerValue"")];
            }

            v19 = OUTLINED_FUNCTION_59();
            if (v19)
            {
              v19 = -[VCHistogram addOnlyExactMatchingValue:](-[UplinkSegment videoCodecPayload](self, "videoCodecPayload"), "addOnlyExactMatchingValue:", [OUTLINED_FUNCTION_59() intValue]);
            }
          }
        }

        v13 = OUTLINED_FUNCTION_56(v19, v20, v31, v34);
      }

      while (v13);
      v22 = v29;
      v23 = v30;
      v24 = HIDWORD(v30);
    }

    else
    {
      v24 = 0;
      v14 = 0;
      v23 = 0;
      v16 = 0.0;
      v22 = 0.0;
    }

    [(UplinkSegment *)self totalAudioPauseTime];
    [(UplinkSegment *)self setTotalAudioPauseTime:v16 - a4 + v25];
    [(UplinkSegment *)self setVideoSentPacketCount:(v22 - a5 + [(UplinkSegment *)self videoSentPacketCount])];
    [(VCHistogram *)[(UplinkSegment *)self videoMediaBitrate] addValue:0];
    [(VCHistogram *)[(UplinkSegment *)self videoEncodingBitrate] addValue:v24];
    [(VCHistogram *)[(UplinkSegment *)self SBR] addValue:v14];
    [(UplinkSegment *)self averageSendBitrate];
    [(UplinkSegment *)self setAverageSendBitrate:v26 + v14];
    [(UplinkSegment *)self setIdrSentCount:[(UplinkSegment *)self idrSentCount]+ v23];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)calculateUplinkAudioTimestampJumps:(id)a3
{
  OUTLINED_FUNCTION_58();
  v30 = v5;
  v40 = *MEMORY[0x277D85DE8];
  v7 = [v6 objectForKeyedSubscript:sRTCReportingStreamCollection];
  if ([v7 count])
  {
    v8 = [v7 countByEnumeratingWithState:OUTLINED_FUNCTION_27() objects:? count:?];
    if (v8)
    {
      OUTLINED_FUNCTION_54(v8, v9, v10, v11, v12, v13, v14, v15, v29, v30, v31, v33, v35, v36, v38);
      v16 = @"VCMSDirection";
      do
      {
        v17 = 0;
        do
        {
          if (*v39 != v4)
          {
            objc_enumerationMutation(v7);
          }

          v18 = [v7 objectForKeyedSubscript:*(v37 + 8 * v17)];
          v19 = [objc_msgSend(v18 objectForKeyedSubscript:{v16), "integerValue"}];
          if (v19 == 1)
          {
            if (OUTLINED_FUNCTION_68())
            {
              [objc_msgSend(v18 objectForKeyedSubscript:{v16), "integerValue"}];
              OUTLINED_FUNCTION_46();
            }

            v16 = @"VCASTimestampJumpMax";
            if (OUTLINED_FUNCTION_71())
            {
              v34 += [OUTLINED_FUNCTION_71() unsignedLongValue];
            }

            if ([v18 objectForKeyedSubscript:@"VCASTimestampJumpMax"])
            {
              v23 = [objc_msgSend(v18 objectForKeyedSubscript:{@"VCASTimestampJumpMax", "unsignedLongValue"}];
            }

            else
            {
              v23 = 0;
            }

            v24 = [v30 audioStreamTimestampJumpMax];
            if (v24 <= v23)
            {
              v25 = v23;
            }

            else
            {
              v25 = v24;
            }

            v19 = [v30 setAudioStreamTimestampJumpMax:v25];
          }

          ++v17;
        }

        while (v3 != v17);
        v3 = OUTLINED_FUNCTION_32(v19, v20, v21, v22);
      }

      while (v3);
      v26 = v34;
      v27 = v32;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    [v30 setAudioStreamTimestampJumpCount:{objc_msgSend(v30, "audioStreamTimestampJumpCount") + v27}];
    [objc_msgSend(v30 "audioStreamTimestampJumpDuration")];
  }

  v28 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_57();
}

- (void)updateMediaBitratesWithTimeElapsed:(uint64_t)a1 andStats:(unsigned int *)a2 .cold.1(uint64_t a1, unsigned int *a2)
{
  OUTLINED_FUNCTION_51(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaBitratesWithTimeElapsed:(uint64_t)a1 andStats:(unsigned int *)a2 .cold.2(uint64_t a1, unsigned int *a2)
{
  OUTLINED_FUNCTION_51(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaBitratesWithTimeElapsed:andStats:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioCodecAndMediaBitrateWithPayload:(uint64_t)a1 andCurrentTime:(unsigned __int16 *)a2 andStats:.cold.1(uint64_t a1, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioCodecAndMediaBitrateWithPayload:andCurrentTime:andStats:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processTransmitterStats:.cold.1()
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

- (void)processTransmitterStats:.cold.2()
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

- (void)processUplinkRTXMetricsFromStreamData:.cold.1()
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

- (void)processVideoTransmitterStreamData:.cold.1()
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

- (void)processVideoTransmitterStreamData:.cold.2()
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

- (void)processAudioTransmitterStreamData:.cold.1()
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

- (void)processAudioTransmitterStreamData:.cold.2()
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

- (void)addPerStreamGroupRTXStatsToDictionary:streamGroup:.cold.1()
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