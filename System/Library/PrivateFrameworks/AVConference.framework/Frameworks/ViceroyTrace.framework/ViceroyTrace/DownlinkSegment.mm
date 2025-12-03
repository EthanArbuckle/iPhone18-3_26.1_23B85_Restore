@interface DownlinkSegment
- (id)callStatsForParticipant:(id)participant andTime:(double)time;
- (id)segmentReport:(double)report;
- (void)accumulateAudioPerStreamGroupStats:(id)stats streamGroupStats:(id)groupStats;
- (void)accumulateRTXPerStreamGroupStats:(id)stats streamGroupStats:(id)groupStats streamGroup:(id)group;
- (void)accumulateVideoPerStreamGroupStats:(id)stats streamGroupStats:(id)groupStats;
- (void)addCellByteCountStats:(id)stats;
- (void)addCelltechTelemetryToDictionary:(id)dictionary;
- (void)addDownlinkParticipantStats:(id)stats currentTime:(double)time;
- (void)addNetworkCapabilityInfoToSegmentReport:(id)report;
- (void)addPerStreamGroupStats:(id)stats timestamp:(double)timestamp;
- (void)calculateDownlinkTelemetry:(id)telemetry downlinkRTT:(unsigned int)t;
- (void)calculateStreamTelemetry:(id)telemetry AndReceiveRate:(unsigned int *)rate;
- (void)dealloc;
- (void)finalizeVideoStreamGroupStats:(id)stats timestamp:(double)timestamp;
- (void)processAudioErasureValue:(unsigned int)value;
- (void)processAudioErasureValueAlt:(unsigned int)alt;
- (void)processAudioStreamData:(id)data streamGroupStats:(id)stats;
- (void)processNetworkQualityUpdatedWithStatus:(unsigned int)status forParticipant:(id)participant timestamp:(double)timestamp;
- (void)processRTEvent:(id)event now:(double)now;
- (void)processRTXStreamData:(id)data streamGroupStats:(id)stats;
- (void)processStreamData:(id)data forParticipant:(id)participant streamGroup:(id)group withTime:(double)time;
- (void)processVTPEgressIngressTelemetry:(id)telemetry;
- (void)processVideoStreamData:(id)data streamGroupStats:(id)stats;
- (void)reportAudioPerStreamGroupStats:(id)stats streamGroup:(id)group accumulatedStreamGroupStats:(id)groupStats;
- (void)reportRTXPerStreamGroupStats:(id)stats streamGroup:(id)group accumulatedStreamGroupStats:(id)groupStats;
- (void)reportVideoPerStreamGroupStats:(id)stats streamGroup:(id)group accumulatedStreamGroupStats:(id)groupStats;
- (void)resetVideoDegradedForAllParticipants:(double)participants;
- (void)setCurrentThermalLevel:(int)level withTime:(double)time;
- (void)updateDownlinkSegmentStats:(id)stats withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes;
- (void)updateMinimumAndMaximumAVSyncOffset:(id)offset streamGroupStats:(id)stats;
- (void)updateRxAudioStatsWithPayload:(id)payload streamGroupStats:(id)stats;
@end

@implementation DownlinkSegment

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownlinkSegment;
  [(MultiwaySegment *)&v3 dealloc];
}

- (void)processAudioErasureValue:(unsigned int)value
{
  [(VCHistogram *)self->_audioErasures addValue:?];
  self->_averageAudioErasuresSum = self->_averageAudioErasuresSum + value;
  self->_averageAudioErasuresCounter = self->_averageAudioErasuresCounter + 1.0;
}

- (void)processAudioErasureValueAlt:(unsigned int)alt
{
  [(VCHistogram *)self->_audioErasuresAlt addValue:?];
  self->_averageAudioErasuresSumAlt = self->_averageAudioErasuresSumAlt + alt;
  self->_averageAudioErasuresCounterAlt = self->_averageAudioErasuresCounterAlt + 1.0;
}

- (id)callStatsForParticipant:(id)participant andTime:(double)time
{
  if ([participant isEqualToString:self->super._localParticipantID])
  {
    [DownlinkSegment callStatsForParticipant:? andTime:?];
    return v9;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_downlinkParticipantStats objectForKeyedSubscript:participant];
    if (!v7)
    {
      v7 = [[DownlinkParticipantStats alloc] initWithThermalLevel:self->super.super._currentThermalLevel andTime:time];
      [(NSMutableDictionary *)self->_downlinkParticipantStats setObject:v7 forKeyedSubscript:participant];
    }
  }

  return v7;
}

- (void)resetVideoDegradedForAllParticipants:(double)participants
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_downlinkParticipantStats;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = 1;
        do
        {
          if ((v10 & 0xDu) <= 8 && ((1 << (v10 & 0xD)) & 0x122) != 0)
          {
            -[DownlinkSegment processVideoDegraded:forParticipant:streamGroup:timestamp:](self, "processVideoDegraded:forParticipant:streamGroup:timestamp:", 0, v9, [MEMORY[0x277CCABA8] numberWithInt:v10], participants);
          }

          v10 = (v10 + 1);
        }

        while (v10 != 11);
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentThermalLevel:(int)level withTime:(double)time
{
  v17 = *MEMORY[0x277D85DE8];
  self->super.super._currentThermalLevel = level;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_downlinkParticipantStats allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [objc_msgSend(*(*(&v12 + 1) + 8 * v10++) "mlEnhance")];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(VCDurationHistogram *)self->_pipThermalDurations switchBucket:self->super.super._currentThermalLevel currentTime:time];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateMinimumAndMaximumAVSyncOffset:(id)offset streamGroupStats:(id)stats
{
  v6 = [objc_msgSend(offset objectForKeyedSubscript:{@"AVSyncOffsetMax", "integerValue"}];
  maxAVSyncOffset = [stats maxAVSyncOffset];
  if (maxAVSyncOffset <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = maxAVSyncOffset;
  }

  [stats setMaxAVSyncOffset:v8];
  v9 = [objc_msgSend(offset objectForKeyedSubscript:{@"AVSyncOffsetMin", "integerValue"}];
  minAVSyncOffset = [stats minAVSyncOffset];
  if (minAVSyncOffset >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = minAVSyncOffset;
  }

  [stats setMinAVSyncOffset:v11];
}

- (void)processVideoStreamData:(id)data streamGroupStats:(id)stats
{
  v7 = [data objectForKeyedSubscript:@"VST"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
    [stats lastReceivedVideoStallTime];
    if (v9 == v10)
    {
      [stats currentStallTime];
      if (v15 != 0.0)
      {
        [stats currentStallTime];
        v17 = v16;
        [stats currentStallTime];
        if (v18 > 0.5)
        {
          [stats setSignificantVideoStallCount:{objc_msgSend(stats, "significantVideoStallCount") + 1}];
        }

        [stats currentStallTime];
        v20 = v19;
        [stats videoStalledTotalTime];
        [stats setVideoStalledTotalTime:v20 + v21];
        [stats currentStallTime];
        v23 = v22;
        [stats videoStalledMaxLength];
        if (v23 >= v24)
        {
          v24 = v23;
        }

        [stats setVideoStalledMaxLength:v24];
        [stats setCurrentStallTime:0.0];
        v14 = (v17 * 100.0);
        goto LABEL_11;
      }
    }

    else
    {
      [stats lastReceivedVideoStallTime];
      v12 = v9 - v11;
      [stats currentStallTime];
      [stats setCurrentStallTime:v13 + v12];
      [stats setLastReceivedVideoStallTime:v9];
    }

    v14 = 0;
LABEL_11:
    [objc_msgSend(stats "videoStall")];
  }

  [stats setVideoFrameReceivedCounter:{objc_msgSend(stats, "videoFrameReceivedCounter") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VFRxCnt", "intValue")}];
  [stats setVideoFrameExpectedCounter:{objc_msgSend(stats, "videoFrameExpectedCounter") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VFExCnt", "intValue")}];
  [stats setIdrReceivedCount:{objc_msgSend(stats, "idrReceivedCount") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VRxIDRC", "intValue")}];
  [stats setLateKeyFrameAssembledCount:{objc_msgSend(stats, "lateKeyFrameAssembledCount") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"LKFASC", "intValue")}];
  [stats setLatePFrameAssembledCount:{objc_msgSend(stats, "latePFrameAssembledCount") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"LPFASC", "intValue")}];
  [stats setAverageVideoBitrate:{objc_msgSend(stats, "averageVideoBitrate") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VRxR", "unsignedIntValue")}];
  [stats setAverageVideoRxMediaBitrate:{objc_msgSend(stats, "averageVideoRxMediaBitrate") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VRxMR", "unsignedIntValue")}];
  [stats setAverageVideoRxDecoderMediaBitrate:{objc_msgSend(stats, "averageVideoRxDecoderMediaBitrate") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VRxDMR", "unsignedIntValue")}];
  [stats setAverageVideoRxFecBitrate:{objc_msgSend(stats, "averageVideoRxFecBitrate") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VRFECRxR", "unsignedIntValue")}];
  [stats setPacketLossRateAccumulator:{objc_msgSend(stats, "packetLossRateAccumulator") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VRxPLR", "unsignedIntValue")}];
  [stats setAverageMetadataRxBitrate:{objc_msgSend(stats, "averageMetadataRxBitrate") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VRxMetadataOverhead", "unsignedIntValue")}];
  [stats setVideoPlayerDecodeAlarmCount:{objc_msgSend(stats, "videoPlayerDecodeAlarmCount") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VPDECAC", "unsignedIntValue")}];
  [stats setVideoPlayerDisplayAlarmCount:{objc_msgSend(stats, "videoPlayerDisplayAlarmCount") + objc_msgSend(objc_msgSend(data, "objectForKeyedSubscript:", @"VPDISAC", "unsignedIntValue")}];
  v25 = [data objectForKeyedSubscript:@"VSTCNT"];
  if (v25)
  {
    [stats setMaxVideoStallCount:{fmax(objc_msgSend(stats, "maxVideoStallCount"), objc_msgSend(v25, "intValue"))}];
  }

  v26 = [data objectForKeyedSubscript:@"NRFr"];
  if (v26)
  {
    [stats setMinVideoFrameRate:{fmin(objc_msgSend(stats, "minVideoFrameRate"), objc_msgSend(v26, "intValue"))}];
  }

  [objc_msgSend(data objectForKeyedSubscript:{@"VJ", "doubleValue"}];
  v28 = v27;
  [stats averageJitterQueueSize];
  [stats setAverageJitterQueueSize:v28 + v29];
  v30 = [data objectForKeyedSubscript:@"AVSyncOffset"];
  if ([data objectForKeyedSubscript:@"VCSPUUID"] && v30)
  {
    [stats setAvSyncOffsetSum:{objc_msgSend(stats, "avSyncOffsetSum") + objc_msgSend(v30, "integerValue")}];
    [stats setAvSyncOffsetSamplesCount:{objc_msgSend(stats, "avSyncOffsetSamplesCount") + 1}];
    [(DownlinkSegment *)self updateMinimumAndMaximumAVSyncOffset:data streamGroupStats:stats];
  }

  [stats processMLStreamData:data];
  if ([objc_msgSend(data objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}] == 2)
  {
    [stats videoDegradedStartTime];
    if (v31 == 0.0)
    {
      [stats lastVideoDegradedTime];
      if (v32 == 0.0)
      {
        v34 = 0;
      }

      else
      {
        [stats lastVideoDegradedTime];
        v34 = (v33 / [(MultiwaySegment *)self RTPeriod]);
      }

      [objc_msgSend(stats "poorConnection")];
      [stats setLastVideoDegradedTime:0.0];
    }

    else
    {
      [objc_msgSend(stats "poorConnection")];
    }
  }

  v35 = [data objectForKeyedSubscript:@"RTPDownlinkIngressVideoPkts"];
  if (v35)
  {
    [stats setTotalRTPDownlinkIngressVideoPackets:{objc_msgSend(stats, "totalRTPDownlinkIngressVideoPackets") + objc_msgSend(v35, "unsignedIntegerValue")}];
  }

  v36 = [data objectForKeyedSubscript:@"RTPDownlinkEgressVideoPkts"];
  if (v36)
  {
    [stats setTotalRTPDownlinkEgressVideoPackets:{objc_msgSend(stats, "totalRTPDownlinkEgressVideoPackets") + objc_msgSend(v36, "unsignedIntegerValue")}];
  }

  v37 = [data objectForKeyedSubscript:@"RTPDownlinkIngressNonDupMediaPkts"];
  if (v37)
  {
    [stats setTotalRTPDownlinkIngressNonDupVideoPackets:{objc_msgSend(stats, "totalRTPDownlinkIngressNonDupVideoPackets") + objc_msgSend(v37, "unsignedIntegerValue")}];
  }

  [(SegmentStatsDelegate *)self->super._delegate updateLateFrameStatsForHistogram:self->_evictedFramesLatePacketDelayHist WithPayload:data];
  [objc_msgSend(stats "videoPlayerDisplayData")];
  [objc_msgSend(stats "videoPlayerAVHostTimeDelta")];
  videoPlayerAVSyncOffsetData = [stats videoPlayerAVSyncOffsetData];

  [videoPlayerAVSyncOffsetData updateWithPayload:data];
}

- (void)updateRxAudioStatsWithPayload:(id)payload streamGroupStats:(id)stats
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [payload componentsSeparatedByString:@";"];
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CCAC70] regularExpressionWithPattern:@"^\\d{1 options:3}=\\d+$" error:{0, 0}];
    if ([v5 count])
    {
      v8 = 0;
      *&v7 = 136315906;
      v14 = v7;
      do
      {
        if ([v6 numberOfMatchesInString:objc_msgSend(v5 options:"objectAtIndexedSubscript:" range:{v8, v14), 0, 0, objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", v8), "length")}] == 1)
        {
          v9 = [objc_msgSend(v5 objectAtIndexedSubscript:{v8), "componentsSeparatedByString:", @"="}];
          if (([objc_msgSend(stats "rxAudioCodecPayload")] & 1) == 0)
          {
            if (VRTraceGetErrorLogLevelForModule("") >= 3)
            {
              v10 = VRTraceErrorLogLevelToCSTR(3u);
              v11 = gVRTraceOSLog;
              if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
              {
                v12 = [objc_msgSend(v9 objectAtIndexedSubscript:{0), "intValue"}];
                *buf = v14;
                v16 = v10;
                v17 = 2080;
                v18 = "[DownlinkSegment updateRxAudioStatsWithPayload:streamGroupStats:]";
                v19 = 1024;
                v20 = 5870;
                v21 = 1024;
                v22 = v12;
                _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bin not found for audioCodecPayload=%d", buf, 0x22u);
              }
            }

            [objc_msgSend(stats "rxAudioCodecPayload")];
          }
        }

        ++v8;
      }

      while (v8 < [v5 count]);
    }
  }

  else
  {
    [DownlinkSegment updateRxAudioStatsWithPayload:streamGroupStats:];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)processAudioStreamData:(id)data streamGroupStats:(id)stats
{
  v7 = [data objectForKeyedSubscript:@"FrameErasureRate"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8 * [(MultiwaySegment *)self RTPeriod];
    if (v9 != 0.0)
    {
      [stats totalAudioErasureTime];
      [stats setTotalAudioErasureTime:v9 + v10];
      [stats setAudioErasureCount:{objc_msgSend(stats, "audioErasureCount") + 1}];
    }
  }

  v11 = [data objectForKeyedSubscript:@"FrameErasureCount"];
  if (v11)
  {
    v12 = v11;
    maxAudioErasureCount = [stats maxAudioErasureCount];
    [v12 doubleValue];
    [stats setMaxAudioErasureCount:{fmax(maxAudioErasureCount, v14)}];
  }

  v15 = [data objectForKeyedSubscript:@"NJB"];
  [v15 doubleValue];
  if (v16 != 0.0)
  {
    [v15 doubleValue];
    v18 = v17;
    [stats averageJitterBufferDelay];
    [stats setAverageJitterBufferDelay:v18 + v19];
    [stats setAverageJitterBufferDelayCount:{objc_msgSend(stats, "averageJitterBufferDelayCount") + 1}];
    jBTarget = [stats JBTarget];
    [v15 doubleValue];
    [jBTarget addValue:v21];
  }

  v22 = [data objectForKeyedSubscript:@"UJBL"];
  if (v22)
  {
    [objc_msgSend(stats "JBUnclippedTarget")];
  }

  v23 = [data objectForKeyedSubscript:@"EnhancedJBAdaptationsEnabled"];
  if (v23)
  {
    [stats setEnhancedJBAdaptationsEnabled:{objc_msgSend(v23, "intValue")}];
  }

  v24 = [data objectForKeyedSubscript:@"JitterBufferTargetChanges"];
  if (v24)
  {
    v25 = v24;
    [stats maxJBTargetSizeChanges];
    v27 = v26;
    [v25 doubleValue];
    [stats setMaxJBTargetSizeChanges:{fmax(v27, v28)}];
    [v25 doubleValue];
    v30 = v29;
    [stats avgJBTargetSizeChanges];
    [stats setAvgJBTargetSizeChanges:v30 + v31];
    [stats setAvgJBTargetSizeChangesCount:{objc_msgSend(stats, "avgJBTargetSizeChangesCount") + 1}];
  }

  v32 = [data objectForKeyedSubscript:@"ARxR"];
  if (v32)
  {
    [stats setAverageAudioBitrate:{objc_msgSend(stats, "averageAudioBitrate") + objc_msgSend(v32, "unsignedIntValue")}];
  }

  v33 = [data objectForKeyedSubscript:@"AMRR"];
  if (v33)
  {
    [stats setAverageAudioMediaBitrate:{objc_msgSend(stats, "averageAudioMediaBitrate") + objc_msgSend(v33, "unsignedIntValue")}];
  }

  v34 = [data objectForKeyedSubscript:@"ARxDecodeBitrate"];
  if (v34)
  {
    unsignedIntValue = [v34 unsignedIntValue];
    [stats averageAudioMediaRxDecodeBitrate];
    [stats setAverageAudioMediaRxDecodeBitrate:v36 + unsignedIntValue];
  }

  v37 = [data objectForKeyedSubscript:@"RedRxBitrate"];
  if (v37)
  {
    [stats setAverageAudioRedRxBitrate:{objc_msgSend(stats, "averageAudioRedRxBitrate") + objc_msgSend(v37, "unsignedIntValue")}];
  }

  v38 = [data objectForKey:@"Payload"];
  v39 = [objc_msgSend(data objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
  if (v38 && v39 == 2)
  {
    [(DownlinkSegment *)self updateRxAudioStatsWithPayload:v38 streamGroupStats:stats];
  }

  v40 = [data objectForKeyedSubscript:@"ARxPLR"];
  if (v40)
  {
    [stats setPacketLossRateAccumulator:{objc_msgSend(stats, "packetLossRateAccumulator") + objc_msgSend(v40, "unsignedIntegerValue")}];
  }

  v41 = [data objectForKeyedSubscript:@"RTPDownlinkIngressAudioPkts"];
  if (v41)
  {
    [stats setTotalRTPDownlinkIngressAudioPackets:{objc_msgSend(stats, "totalRTPDownlinkIngressAudioPackets") + objc_msgSend(v41, "unsignedIntegerValue")}];
  }

  v42 = [data objectForKeyedSubscript:@"RTPDownlinkIngressNonDupMediaPkts"];
  if (v42)
  {
    [stats setTotalRTPDownlinkIngressNonDupAudioPackets:{objc_msgSend(stats, "totalRTPDownlinkIngressNonDupAudioPackets") + objc_msgSend(v42, "unsignedIntegerValue")}];
  }

  v43 = [data objectForKeyedSubscript:@"RTPDownlinkEgressAudioPkts"];
  if (v43)
  {
    unsignedIntegerValue = [v43 unsignedIntegerValue];
    v45 = [stats totalRTPDownlinkEgressAudioPackets] + unsignedIntegerValue;

    [stats setTotalRTPDownlinkEgressAudioPackets:v45];
  }
}

- (void)processRTXStreamData:(id)data streamGroupStats:(id)stats
{
  v6 = [data objectForKeyedSubscript:@"NacksSent"];
  if (v6)
  {
    [stats setNacksSent:{objc_msgSend(stats, "nacksSent") + objc_msgSend(v6, "intValue")}];
  }

  v7 = [data objectForKeyedSubscript:@"NacksFulfilled"];
  if (v7)
  {
    [stats setNacksFulfilled:{objc_msgSend(stats, "nacksFulfilled") + objc_msgSend(v7, "intValue")}];
  }

  v8 = [data objectForKeyedSubscript:@"NacksFulfilledOnTime"];
  if (v8)
  {
    [stats setNacksFulfilledOnTime:{objc_msgSend(stats, "nacksFulfilledOnTime") + objc_msgSend(v8, "intValue")}];
  }

  v9 = [data objectForKeyedSubscript:@"UniqueNacksSent"];
  if (v9)
  {
    [stats setUniqueNacksSent:{objc_msgSend(stats, "uniqueNacksSent") + objc_msgSend(v9, "intValue")}];
  }

  v10 = [data objectForKeyedSubscript:@"NacksFrmsSchWithRTX"];
  if (v10)
  {
    intValue = [v10 intValue];
  }

  else
  {
    intValue = 0;
  }

  [stats setLateFramesScheduledWithRTXCount:{objc_msgSend(stats, "lateFramesScheduledWithRTXCount") + intValue}];
  v12 = [data objectForKeyedSubscript:@"NacksFrmsAssemWithRTX"];
  if (v12)
  {
    intValue2 = [v12 intValue];
  }

  else
  {
    intValue2 = 0;
  }

  [stats setAssembledFramesWithRTXPacketsCount:{objc_msgSend(stats, "assembledFramesWithRTXPacketsCount") + intValue2}];
  v14 = [data objectForKeyedSubscript:@"NacksFrmsFailedAssemWithRTX"];
  if (v14)
  {
    intValue3 = [v14 intValue];
  }

  else
  {
    intValue3 = 0;
  }

  [stats setFailedToAssembleFramesWithRTXPacketsCount:{objc_msgSend(stats, "failedToAssembleFramesWithRTXPacketsCount") + intValue3}];
  v16 = [data objectForKeyedSubscript:@"DVFECnt"];
  if (v16)
  {
    intValue4 = [v16 intValue];
  }

  else
  {
    intValue4 = 0.0;
  }

  [stats decodedVideoFrameEnqueueCounter];
  [stats setDecodedVideoFrameEnqueueCounter:intValue4 + v18];
  v19 = [data objectForKeyedSubscript:@"VFEVTrCnt"];
  if (v19)
  {
    intValue5 = [v19 intValue];
  }

  else
  {
    intValue5 = 0;
  }

  [stats setVideoFrameIncompleteNextTSCounter:{objc_msgSend(stats, "videoFrameIncompleteNextTSCounter") + intValue5}];
  v21 = [data objectForKeyedSubscript:@"NacksAvgResponseTime"];
  if (v21)
  {
    v22 = v21;
    nacksRTXResponseTime = [stats nacksRTXResponseTime];
    [v22 doubleValue];
    [nacksRTXResponseTime addValue:(v24 * 1000.0)];
  }

  v25 = [data objectForKeyedSubscript:@"NacksLateTime"];
  if (v25)
  {
    v26 = v25;
    nacksRTXLateTime = [stats nacksRTXLateTime];
    [v26 doubleValue];
    [nacksRTXLateTime addValue:(v28 * 1000.0)];
  }

  v29 = [data objectForKeyedSubscript:@"NacksMediaBitRate"];
  if (v29)
  {
    v30 = v29;
    nacksRTXMediaBitRate = [stats nacksRTXMediaBitRate];
    [v30 doubleValue];
    [nacksRTXMediaBitRate addValue:v32];
  }

  v33 = [data objectForKeyedSubscript:@"NacksRTXMediaBitRate"];
  if (v33)
  {
    v34 = v33;
    nacksRTXRetransmittedMediaBitRate = [stats nacksRTXRetransmittedMediaBitRate];
    [v34 doubleValue];
    [nacksRTXRetransmittedMediaBitRate addValue:v36];
  }

  v37 = [data objectForKeyedSubscript:@"NacksPLRWithRTX"];
  if (v37)
  {
    [objc_msgSend(stats "nacksPLRWithRTX")];
  }

  v38 = [data objectForKeyedSubscript:@"NacksPLRWithoutRTX"];
  if (v38)
  {
    [objc_msgSend(stats "nacksPLRWithoutRTX")];
  }

  [stats setIsRTXTelemetryAvailable:1];
}

- (void)processStreamData:(id)data forParticipant:(id)participant streamGroup:(id)group withTime:(double)time
{
  v10 = [(DownlinkSegment *)self callStatsForParticipant:participant andTime:time];
  if (v10)
  {
    v11 = [v10 statsForStreamGroup:group];
    if ([group unsignedIntValue] == 1 || objc_msgSend(group, "unsignedIntValue") == 3 || objc_msgSend(group, "unsignedIntValue") == 5 || objc_msgSend(group, "unsignedIntValue") == 7 || objc_msgSend(group, "unsignedIntValue") == 8 || objc_msgSend(group, "unsignedIntValue") == 10)
    {
      [(DownlinkSegment *)self processVideoStreamData:data streamGroupStats:v11];
    }

    if ([group unsignedIntValue] == 2 || objc_msgSend(group, "unsignedIntValue") == 4 || objc_msgSend(group, "unsignedIntValue") == 6)
    {
      [(DownlinkSegment *)self processAudioStreamData:data streamGroupStats:v11];
    }

    if ([data objectForKeyedSubscript:@"NacksSent"] && objc_msgSend(data, "objectForKeyedSubscript:", @"NacksFulfilled") && objc_msgSend(data, "objectForKeyedSubscript:", @"NacksFulfilledOnTime"))
    {
      [(DownlinkSegment *)self processRTXStreamData:data streamGroupStats:v11];
    }

    if ([data objectForKeyedSubscript:@"UNRPC"] && objc_msgSend(data, "objectForKeyedSubscript:", @"UNFPC") && objc_msgSend(data, "objectForKeyedSubscript:", @"ULNACKCHCNT") && objc_msgSend(data, "objectForKeyedSubscript:", @"ULNACKCMCNT") && objc_msgSend(data, "objectForKeyedSubscript:", @"ULNACKNRCNT"))
    {
      [v11 setUplinkRTXTelemetryWithRealTimeStreamData:data];
    }

    [v11 setTickCount:{objc_msgSend(v11, "tickCount") + 1}];
  }

  else
  {
    VRTraceGetErrorLogLevelForModule("");
  }

  if ([participant isEqualToString:self->super._localParticipantID])
  {
    v12 = [(DownlinkParticipantStats *)self->_localParticipantStats_Deprecated statsForStreamGroup:group];
    v13 = [v12 tickCount] + 1;

    [v12 setTickCount:v13];
  }
}

- (void)processVTPEgressIngressTelemetry:(id)telemetry
{
  v5 = [telemetry objectForKeyedSubscript:@"VTPDownlinkIngressMediaPkts"];
  if (v5)
  {
    self->_totalVTPDownlinkIngressMediaPackets += [v5 unsignedIntegerValue];
  }

  v6 = [telemetry objectForKeyedSubscript:@"VTPDownlinkEgressMediaPkts"];
  if (v6)
  {
    self->_totalVTPDownlinkEgressMediaPackets += [v6 unsignedIntegerValue];
  }
}

- (void)processRTEvent:(id)event now:(double)now
{
  if ([event objectForKeyedSubscript:@"WPRSZ"])
  {
    self->_averageWireReceiveBytes += [objc_msgSend(event objectForKeyedSubscript:{@"WPRSZ", "integerValue"}];
    ++self->_averageWireReceiveCounter;
  }

  [(MultiwaySegment *)self processRTEventCommon:event now:now];

  [(DownlinkSegment *)self processVTPEgressIngressTelemetry:event];
}

- (void)calculateStreamTelemetry:(id)telemetry AndReceiveRate:(unsigned int *)rate
{
  if ([objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}] == 2)
  {
    if ([telemetry objectForKeyedSubscript:@"ARxR"])
    {
      *rate += [objc_msgSend(telemetry objectForKeyedSubscript:{@"ARxR", "integerValue"}];
    }

    if ([telemetry objectForKeyedSubscript:@"VRxR"])
    {
      *rate += [objc_msgSend(telemetry objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    }

    [(SegmentStatsDelegate *)self->super._delegate updateVideoFECStatsOnSegment:telemetry fecStats:[(MultiwaySegment *)self fecStatsHolder] segmentLossPattern:[(MultiwaySegment *)self lossPattern] segmentLossHistogram:[(MultiwaySegment *)self lossHistogram] segmentLossFecHistogram:[(MultiwaySegment *)self lossFecHistogram] direction:1];
    -[DownlinkSegment setVideoFrameNonFECCompleteCounter:](self, "setVideoFrameNonFECCompleteCounter:", -[DownlinkSegment videoFrameNonFECCompleteCounter](self, "videoFrameNonFECCompleteCounter") + [objc_msgSend(telemetry objectForKeyedSubscript:{@"VNoFecCF", "integerValue"}]);
    -[DownlinkSegment setVideoFrameNonFECTotalCounter:](self, "setVideoFrameNonFECTotalCounter:", -[DownlinkSegment videoFrameNonFECTotalCounter](self, "videoFrameNonFECTotalCounter") + [objc_msgSend(telemetry objectForKeyedSubscript:{@"VNoFecTF", "integerValue"}]);
    [(MultiwaySegment *)self processFrameSizeBasedFECTelemetry:telemetry statsHolder:[(MultiwaySegment *)self fecStatsHolder] direction:1];
  }

  if ([objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}] == 1 && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"VTxFECTime"))
  {
    v7 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VTxFECTime", "integerValue"}];
    v8 = [(DownlinkSegment *)self fecProcessingTime]+ v7;

    [(DownlinkSegment *)self setFecProcessingTime:v8];
  }
}

- (void)addCellByteCountStats:(id)stats
{
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellRxDataBytes), 4, &unk_284FA5468), @"SCRXDB"}];
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellDupRxDataBytes), 4, &unk_284FA5468), @"SCDRXDB"}];
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalUsedCellBudgetRxDataBytes), 4, &unk_284FA5468), @"SUCBRXDB"}];
  v5 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalWifiRxDataBytes], 4, &unk_284FA5468);

  [stats setObject:v5 forKeyedSubscript:@"SWRXDB"];
}

- (void)finalizeVideoStreamGroupStats:(id)stats timestamp:(double)timestamp
{
  [stats currentStallTime];
  v7 = v6;
  [stats videoStalledTotalTime];
  [stats setVideoStalledTotalTime:v7 + v8];
  [stats currentStallTime];
  v10 = v9;
  [stats videoStalledMaxLength];
  if (v10 >= v11)
  {
    v11 = v10;
  }

  [stats setVideoStalledMaxLength:v11];
  [stats setCurrentStallTime:0.0];
  [stats videoDegradedStartTime];
  if (v12 != 0.0)
  {
    [stats setVideoDegradedTotalCounter:{objc_msgSend(stats, "videoDegradedTotalCounter") + 1}];
    [stats videoDegradedStartTime];
    v14 = timestamp - v13;
    [stats videoDegradedTotalTime];
    [stats setVideoDegradedTotalTime:v15 + v14];
    [stats videoDegradedMaxLength];
    if (v16 < v14)
    {
      v16 = v14;
    }

    [stats setVideoDegradedMaxLength:v16];
    [stats setVideoDegradedStartTime:0.0];
  }

  videoTierDurationData = [stats videoTierDurationData];

  [videoTierDurationData finalize];
}

- (void)accumulateVideoPerStreamGroupStats:(id)stats streamGroupStats:(id)groupStats
{
  if (stats)
  {
    if (groupStats)
    {
      [stats setMaxVideoStallCount:{objc_msgSend(stats, "maxVideoStallCount") + objc_msgSend(groupStats, "maxVideoStallCount")}];
      [groupStats videoStalledTotalTime];
      v8 = v7;
      [stats videoStalledTotalTime];
      [stats setVideoStalledTotalTime:v8 + v9];
      [stats videoStalledMaxLength];
      v11 = v10;
      [groupStats videoStalledMaxLength];
      if (v11 >= v12)
      {
        v12 = v11;
      }

      [stats setVideoStalledMaxLength:v12];
      minVideoFrameRate = [stats minVideoFrameRate];
      minVideoFrameRate2 = [groupStats minVideoFrameRate];
      if (minVideoFrameRate >= minVideoFrameRate2)
      {
        v15 = minVideoFrameRate2;
      }

      else
      {
        v15 = minVideoFrameRate;
      }

      [stats setMinVideoFrameRate:v15];
      [stats setVideoDegradedTotalCounter:{objc_msgSend(stats, "videoDegradedTotalCounter") + objc_msgSend(groupStats, "videoDegradedTotalCounter")}];
      [groupStats videoDegradedTotalTime];
      v17 = v16;
      [stats videoDegradedTotalTime];
      [stats setVideoDegradedTotalTime:v17 + v18];
      [stats videoDegradedMaxLength];
      v20 = v19;
      [groupStats videoDegradedMaxLength];
      if (v20 >= v21)
      {
        v21 = v20;
      }

      [stats setVideoDegradedMaxLength:v21];
      [objc_msgSend(stats "videoDegradedDurationPerReason")];
      [stats setVideoFrameReceivedCounter:{objc_msgSend(stats, "videoFrameReceivedCounter") + objc_msgSend(groupStats, "videoFrameReceivedCounter")}];
      [stats setVideoFrameExpectedCounter:{objc_msgSend(stats, "videoFrameExpectedCounter") + objc_msgSend(groupStats, "videoFrameExpectedCounter")}];
      [stats setIdrReceivedCount:{objc_msgSend(stats, "idrReceivedCount") + objc_msgSend(groupStats, "idrReceivedCount")}];
      [stats setAverageVideoBitrate:{objc_msgSend(stats, "averageVideoBitrate") + objc_msgSend(groupStats, "averageVideoBitrate")}];
      [stats setAverageVideoRxMediaBitrate:{objc_msgSend(stats, "averageVideoRxMediaBitrate") + objc_msgSend(groupStats, "averageVideoRxMediaBitrate")}];
      [stats setAverageVideoRxDecoderMediaBitrate:{objc_msgSend(stats, "averageVideoRxDecoderMediaBitrate") + objc_msgSend(groupStats, "averageVideoRxDecoderMediaBitrate")}];
      [stats setAverageVideoRxFecBitrate:{objc_msgSend(stats, "averageVideoRxFecBitrate") + objc_msgSend(groupStats, "averageVideoRxFecBitrate")}];
      [stats setAverageMetadataRxBitrate:{objc_msgSend(stats, "averageMetadataRxBitrate") + objc_msgSend(groupStats, "averageMetadataRxBitrate")}];
      [groupStats averageJitterQueueSize];
      v23 = v22;
      [stats averageJitterQueueSize];
      [stats setAverageJitterQueueSize:v23 + v24];
      [groupStats decodedVideoFrameEnqueueCounter];
      v26 = v25;
      [stats decodedVideoFrameEnqueueCounter];
      [stats setDecodedVideoFrameEnqueueCounter:v26 + v27];
      [objc_msgSend(stats "videoStall")];
      [objc_msgSend(stats "poorConnection")];
      [objc_msgSend(stats "mlEnhanceFramePercent")];
      for (i = 0; i != 4; ++i)
      {
        [objc_msgSend(objc_msgSend(stats "mlEnhancedPercentInputResolutions")];
        [objc_msgSend(objc_msgSend(stats "mlEnhancedPercentOutputResolutions")];
      }

      [stats setTotalDecodedFrameCount:{objc_msgSend(stats, "totalDecodedFrameCount") + objc_msgSend(groupStats, "totalDecodedFrameCount")}];
      [stats setLateKeyFrameAssembledCount:{objc_msgSend(stats, "lateKeyFrameAssembledCount") + objc_msgSend(groupStats, "lateKeyFrameAssembledCount")}];
      [stats setLatePFrameAssembledCount:{objc_msgSend(stats, "latePFrameAssembledCount") + objc_msgSend(groupStats, "latePFrameAssembledCount")}];
      if ([groupStats tickCount])
      {
        v29 = [groupStats videoFrameIncompleteNextTSCounter] * 1000.0;
        tickCount = [groupStats tickCount];
        v31 = v29 / ([(MultiwaySegment *)self RTPeriod]* tickCount);
      }

      else
      {
        v31 = 0.0;
      }

      [stats totalVideoFrameIncompleteNextTSRate];
      [stats setTotalVideoFrameIncompleteNextTSRate:v31 + v32];
      [stats setTotalRTPDownlinkIngressVideoPackets:{objc_msgSend(stats, "totalRTPDownlinkIngressVideoPackets") + objc_msgSend(groupStats, "totalRTPDownlinkIngressVideoPackets")}];
      [stats setTotalRTPDownlinkIngressNonDupVideoPackets:{objc_msgSend(stats, "totalRTPDownlinkIngressNonDupVideoPackets") + objc_msgSend(groupStats, "totalRTPDownlinkIngressNonDupVideoPackets")}];
      [stats setTotalRTPDownlinkEgressVideoPackets:{objc_msgSend(stats, "totalRTPDownlinkEgressVideoPackets") + objc_msgSend(groupStats, "totalRTPDownlinkEgressVideoPackets")}];
      [stats setVideoPlayerDecodeAlarmCount:{objc_msgSend(stats, "videoPlayerDecodeAlarmCount") + objc_msgSend(groupStats, "videoPlayerDecodeAlarmCount")}];
      [stats setVideoPlayerDisplayAlarmCount:{objc_msgSend(stats, "videoPlayerDisplayAlarmCount") + objc_msgSend(groupStats, "videoPlayerDisplayAlarmCount")}];
      [objc_msgSend(stats "videoPlayerAVHostTimeDelta")];
      [objc_msgSend(stats "videoPlayerAVSyncOffsetData")];
      if ([groupStats avSyncOffsetSamplesCount])
      {
        [stats setAvSyncOffsetSamplesCount:{objc_msgSend(stats, "avSyncOffsetSamplesCount") + objc_msgSend(groupStats, "avSyncOffsetSamplesCount")}];
        [stats setAvSyncOffsetSum:{objc_msgSend(stats, "avSyncOffsetSum") + objc_msgSend(groupStats, "avSyncOffsetSum")}];
        if ([groupStats minAVSyncOffset] != 0x7FFFFFFF)
        {
          minAVSyncOffset = [stats minAVSyncOffset];
          minAVSyncOffset2 = [groupStats minAVSyncOffset];
          if (minAVSyncOffset >= minAVSyncOffset2)
          {
            v35 = minAVSyncOffset2;
          }

          else
          {
            v35 = minAVSyncOffset;
          }

          [stats setMinAVSyncOffset:v35];
        }

        if ([groupStats maxAVSyncOffset] != 0x80000000)
        {
          maxAVSyncOffset = [stats maxAVSyncOffset];
          maxAVSyncOffset2 = [groupStats maxAVSyncOffset];
          if (maxAVSyncOffset >= maxAVSyncOffset2)
          {
            v38 = maxAVSyncOffset2;
          }

          else
          {
            v38 = maxAVSyncOffset;
          }

          [stats setMaxAVSyncOffset:v38];
        }
      }

      [objc_msgSend(stats "videoPlayerDisplayData")];
      [objc_msgSend(stats "videoTierDurationData")];
      [stats setPacketLossRateAccumulator:{objc_msgSend(stats, "packetLossRateAccumulator") + objc_msgSend(groupStats, "packetLossRateAccumulator")}];
      firReceivedCount = [groupStats firReceivedCount];
      v40 = [stats firReceivedCount] + firReceivedCount;

      [stats setFirReceivedCount:v40];
    }

    else
    {
      [DownlinkSegment accumulateVideoPerStreamGroupStats:streamGroupStats:];
    }
  }

  else
  {
    [DownlinkSegment accumulateVideoPerStreamGroupStats:streamGroupStats:];
  }
}

- (void)accumulateAudioPerStreamGroupStats:(id)stats streamGroupStats:(id)groupStats
{
  if (stats)
  {
    if (groupStats)
    {
      [stats setAudioErasureCount:{objc_msgSend(stats, "audioErasureCount") + objc_msgSend(groupStats, "audioErasureCount")}];
      [groupStats totalAudioErasureTime];
      v7 = v6;
      [stats totalAudioErasureTime];
      [stats setTotalAudioErasureTime:v7 + v8];
      maxAudioErasureCount = [stats maxAudioErasureCount];
      maxAudioErasureCount2 = [groupStats maxAudioErasureCount];
      if (maxAudioErasureCount <= maxAudioErasureCount2)
      {
        v11 = maxAudioErasureCount2;
      }

      else
      {
        v11 = maxAudioErasureCount;
      }

      [stats setMaxAudioErasureCount:v11];
      [stats setAverageJitterBufferDelayCount:{objc_msgSend(stats, "averageJitterBufferDelayCount") + objc_msgSend(groupStats, "averageJitterBufferDelayCount")}];
      [groupStats averageJitterBufferDelay];
      v13 = v12;
      [stats averageJitterBufferDelay];
      [stats setAverageJitterBufferDelay:v13 + v14];
      [stats maxJBTargetSizeChanges];
      v16 = v15;
      [groupStats maxJBTargetSizeChanges];
      if (v16 >= v17)
      {
        v17 = v16;
      }

      [stats setMaxJBTargetSizeChanges:v17];
      [stats setAvgJBTargetSizeChangesCount:{objc_msgSend(stats, "avgJBTargetSizeChangesCount") + objc_msgSend(groupStats, "avgJBTargetSizeChangesCount")}];
      [groupStats avgJBTargetSizeChanges];
      v19 = v18;
      [stats avgJBTargetSizeChanges];
      [stats setAvgJBTargetSizeChanges:v19 + v20];
      [objc_msgSend(stats "JBTarget")];
      [objc_msgSend(stats "JBUnclippedTarget")];
      [stats setAverageAudioBitrate:{objc_msgSend(stats, "averageAudioBitrate") + objc_msgSend(groupStats, "averageAudioBitrate")}];
      [stats setAverageAudioMediaBitrate:{objc_msgSend(stats, "averageAudioMediaBitrate") + objc_msgSend(groupStats, "averageAudioMediaBitrate")}];
      [stats setAverageAudioRedRxBitrate:{objc_msgSend(stats, "averageAudioRedRxBitrate") + objc_msgSend(groupStats, "averageAudioRedRxBitrate")}];
      [stats setPacketLossRateAccumulator:{objc_msgSend(stats, "packetLossRateAccumulator") + objc_msgSend(stats, "packetLossRateAccumulator")}];
      [stats setTotalRTPDownlinkIngressAudioPackets:{objc_msgSend(stats, "totalRTPDownlinkIngressAudioPackets") + objc_msgSend(groupStats, "totalRTPDownlinkIngressAudioPackets")}];
      [stats setTotalRTPDownlinkIngressNonDupAudioPackets:{objc_msgSend(stats, "totalRTPDownlinkIngressNonDupAudioPackets") + objc_msgSend(groupStats, "totalRTPDownlinkIngressNonDupAudioPackets")}];
      [stats setTotalRTPDownlinkEgressAudioPackets:{objc_msgSend(stats, "totalRTPDownlinkEgressAudioPackets") + objc_msgSend(groupStats, "totalRTPDownlinkEgressAudioPackets")}];
      [objc_msgSend(stats "rxAudioCodecPayload")];
      enhancedJBAdaptationsEnabled = [stats enhancedJBAdaptationsEnabled];
      enhancedJBAdaptationsEnabled2 = [groupStats enhancedJBAdaptationsEnabled];
      if (enhancedJBAdaptationsEnabled <= enhancedJBAdaptationsEnabled2)
      {
        v23 = enhancedJBAdaptationsEnabled2;
      }

      else
      {
        v23 = enhancedJBAdaptationsEnabled;
      }

      [stats setEnhancedJBAdaptationsEnabled:v23];
    }

    else
    {
      [DownlinkSegment accumulateAudioPerStreamGroupStats:streamGroupStats:];
    }
  }

  else
  {
    [DownlinkSegment accumulateAudioPerStreamGroupStats:streamGroupStats:];
  }
}

- (void)accumulateRTXPerStreamGroupStats:(id)stats streamGroupStats:(id)groupStats streamGroup:(id)group
{
  if (stats)
  {
    if (groupStats)
    {
      [stats setNacksSent:{objc_msgSend(stats, "nacksSent") + objc_msgSend(groupStats, "nacksSent")}];
      [stats setNacksFulfilled:{objc_msgSend(stats, "nacksFulfilled") + objc_msgSend(groupStats, "nacksFulfilled")}];
      [stats setUniqueNacksSent:{objc_msgSend(stats, "uniqueNacksSent") + objc_msgSend(groupStats, "uniqueNacksSent")}];
      [stats setNacksFulfilledOnTime:{objc_msgSend(stats, "nacksFulfilledOnTime") + objc_msgSend(groupStats, "nacksFulfilledOnTime")}];
      [stats setLateFramesScheduledWithRTXCount:{objc_msgSend(stats, "lateFramesScheduledWithRTXCount") + objc_msgSend(groupStats, "lateFramesScheduledWithRTXCount")}];
      [stats setAssembledFramesWithRTXPacketsCount:{objc_msgSend(stats, "assembledFramesWithRTXPacketsCount") + objc_msgSend(groupStats, "assembledFramesWithRTXPacketsCount")}];
      [stats setFailedToAssembleFramesWithRTXPacketsCount:{objc_msgSend(stats, "failedToAssembleFramesWithRTXPacketsCount") + objc_msgSend(groupStats, "failedToAssembleFramesWithRTXPacketsCount")}];
      [objc_msgSend(stats "nacksRTXResponseTime")];
      [objc_msgSend(stats "nacksRTXLateTime")];
      [objc_msgSend(stats "nacksRTXMediaBitRate")];
      [objc_msgSend(stats "nacksRTXRetransmittedMediaBitRate")];
      [objc_msgSend(stats "nacksPLRWithRTX")];
      nacksPLRWithoutRTX = [stats nacksPLRWithoutRTX];
      nacksPLRWithoutRTX2 = [groupStats nacksPLRWithoutRTX];

      [nacksPLRWithoutRTX merge:nacksPLRWithoutRTX2];
    }

    else
    {
      [DownlinkSegment accumulateRTXPerStreamGroupStats:streamGroupStats:streamGroup:];
    }
  }

  else
  {
    [DownlinkSegment accumulateRTXPerStreamGroupStats:streamGroupStats:streamGroup:];
  }
}

- (void)reportVideoPerStreamGroupStats:(id)stats streamGroup:(id)group accumulatedStreamGroupStats:(id)groupStats
{
  group = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VSTCNT", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "maxVideoStallCount")), group}];
  group2 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"FIRRCVDC", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "firReceivedCount")), group2}];
  group3 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TVST", group];
  v12 = MEMORY[0x277CCABA8];
  [groupStats videoStalledTotalTime];
  [stats setObject:objc_msgSend(v12 forKeyedSubscript:{"numberWithUnsignedInt:", (v13 * 1000.0)), group3}];
  LODWORD(group3) = self->super._adjustedDuration;
  v14 = [(MultiwaySegment *)self RTPeriod]* group3;
  [groupStats videoStalledTotalTime];
  v15 = v14;
  if (v16 <= v14)
  {
    [groupStats videoStalledTotalTime];
    v15 = v17;
  }

  group4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TVSP", group];
  if (v14)
  {
    v19 = (v15 / v14 * 10000.0);
  }

  else
  {
    v19 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v19), group4}];
  group5 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MVSI", group];
  v21 = MEMORY[0x277CCABA8];
  [groupStats videoStalledMaxLength];
  [stats setObject:objc_msgSend(v21 forKeyedSubscript:{"numberWithUnsignedInt:", (v22 * 100.0)), group5}];
  group6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MNVFR", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "minVideoFrameRate")), group6}];
  group7 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"PCSWCNT", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "videoDegradedTotalCounter")), group7}];
  group8 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TPCT", group];
  v26 = MEMORY[0x277CCABA8];
  [groupStats videoDegradedTotalTime];
  [stats setObject:objc_msgSend(v26 forKeyedSubscript:{"numberWithUnsignedInt:", (v27 * 1000.0)), group8}];
  group9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"PCONP", group];
  adjustedDuration = self->super._adjustedDuration;
  if (adjustedDuration)
  {
    [groupStats videoDegradedTotalTime];
    v31 = self->super._adjustedDuration;
    adjustedDuration = (v30 * 10000.0 / ([(MultiwaySegment *)self RTPeriod]* v31));
  }

  if (adjustedDuration >= 0x2710)
  {
    v32 = 10000;
  }

  else
  {
    v32 = adjustedDuration;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v32), group9}];
  group10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"SPCONMAXLEN", group];
  v34 = MEMORY[0x277CCABA8];
  [groupStats videoDegradedMaxLength];
  [stats setObject:objc_msgSend(v34 forKeyedSubscript:{"numberWithUnsignedInt:", (v35 * 1000.0)), group10}];
  group11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"SPCONP", group];
  if (self->super._adjustedDuration)
  {
    [groupStats videoDegradedTotalTime];
    v38 = self->super._adjustedDuration;
    v39 = (v37 * 100.0 / ([(MultiwaySegment *)self RTPeriod]* v38));
  }

  else
  {
    v39 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v39), group11}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"videoStall"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"SVSH", group)}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"poorConnection"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"PCON", group)}];
  if ([groupStats videoDegradedTotalCounter])
  {
    [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"videoDegradedDurationPerReason"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"VDDPR", group)}];
  }

  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"mlEnhanceFramePercent"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"MLFCP", group)}];
  for (i = 0; i != 4; ++i)
  {
    [stats setObject:objc_msgSend(objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"mlEnhancedPercentInputResolutions"), "objectAtIndexedSubscript:", i), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%d", @"MLRIFP", group, i)}];
    [stats setObject:objc_msgSend(objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"mlEnhancedPercentOutputResolutions"), "objectAtIndexedSubscript:", i), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%d", @"MLROFP", group, i)}];
  }

  group12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPBINTSER", group];
  v42 = MEMORY[0x277CCABA8];
  [groupStats totalVideoFrameIncompleteNextTSRate];
  [stats setObject:objc_msgSend(v42 forKeyedSubscript:{"numberWithUnsignedInt:", v43), group12}];
  group13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"IDRRCVDC", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "idrReceivedCount")), group13}];
  group14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPDECAC", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "videoPlayerDecodeAlarmCount")), group14}];
  group15 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPDISAC", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "videoPlayerDisplayAlarmCount")), group15}];
  if (![groupStats tickCount] || !self->super._adjustedDuration)
  {
    goto LABEL_118;
  }

  v47 = @"VRRFR";
  if (!group)
  {
    goto LABEL_23;
  }

  group16 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRRFR", group];
  if (!group16)
  {
    goto LABEL_25;
  }

  v47 = group16;
  if (!self->super._adjustedDuration)
  {
    v51 = 0;
  }

  else
  {
LABEL_23:
    v49 = [groupStats videoFrameReceivedCounter] * 1000.0;
    v50 = self->super._adjustedDuration;
    v51 = (v49 / ([(MultiwaySegment *)self RTPeriod]* v50));
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v51), v47}];
  if (!group)
  {
    group17 = @"VRExFR";
    goto LABEL_28;
  }

LABEL_25:
  group17 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRExFR", group];
  if (!group17)
  {
    goto LABEL_32;
  }

LABEL_28:
  if (self->super._adjustedDuration)
  {
    v53 = [groupStats videoFrameExpectedCounter] * 1000.0;
    v54 = self->super._adjustedDuration;
    v55 = (v53 / ([(MultiwaySegment *)self RTPeriod]* v54));
  }

  else
  {
    v55 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v55), group17}];
  if (group)
  {
LABEL_32:
    group18 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VREFR", group];
    if (!group18)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  group18 = @"VREFR";
LABEL_35:
  if (self->super._adjustedDuration)
  {
    [groupStats decodedVideoFrameEnqueueCounter];
    v58 = self->super._adjustedDuration;
    v59 = (v57 * 1000.0 / ([(MultiwaySegment *)self RTPeriod]* v58));
  }

  else
  {
    v59 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v59), group18}];
  if (!group)
  {
    group19 = @"IDRRCVDR";
    goto LABEL_42;
  }

LABEL_39:
  group19 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"IDRRCVDR", group];
  if (!group19)
  {
    goto LABEL_46;
  }

LABEL_42:
  if (self->super._adjustedDuration)
  {
    v61 = [groupStats idrReceivedCount] * 1000.0;
    v62 = self->super._adjustedDuration;
    v63 = (v61 / ([(MultiwaySegment *)self RTPeriod]* v62));
  }

  else
  {
    v63 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v63), group19}];
  if (group)
  {
LABEL_46:
    group20 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"FIRRCVDR", group];
    if (!group20)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  group20 = @"FIRRCVDR";
LABEL_49:
  if (self->super._adjustedDuration)
  {
    v65 = [groupStats firReceivedCount] * 1000.0;
    v66 = self->super._adjustedDuration;
    v67 = (v65 / ([(MultiwaySegment *)self RTPeriod]* v66));
  }

  else
  {
    v67 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v67), group20}];
  if (!group)
  {
    group21 = @"AVTRBR";
    goto LABEL_56;
  }

LABEL_53:
  group21 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVTRBR", group];
  if (!group21)
  {
    goto LABEL_60;
  }

LABEL_56:
  if (self->super._adjustedDuration)
  {
    v69 = [groupStats averageVideoBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v69 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v69), group21}];
  if (group)
  {
LABEL_60:
    group22 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVMRBR", group];
    if (!group22)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  group22 = @"AVMRBR";
LABEL_63:
  if (self->super._adjustedDuration)
  {
    v71 = [groupStats averageVideoRxMediaBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v71 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v71), group22}];
  if (!group)
  {
    group23 = @"AVDMRBR";
    goto LABEL_70;
  }

LABEL_67:
  group23 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVDMRBR", group];
  if (!group23)
  {
    goto LABEL_74;
  }

LABEL_70:
  if (self->super._adjustedDuration)
  {
    v73 = [groupStats averageVideoRxDecoderMediaBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v73 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v73), group23}];
  if (group)
  {
LABEL_74:
    group24 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVFRBR", group];
    if (!group24)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  group24 = @"AVFRBR";
LABEL_77:
  if (self->super._adjustedDuration)
  {
    v75 = [groupStats averageVideoRxFecBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v75 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v75), group24}];
  if (!group)
  {
    group25 = @"VRAMDO";
    goto LABEL_84;
  }

LABEL_81:
  group25 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRAMDO", group];
  if (!group25)
  {
    goto LABEL_88;
  }

LABEL_84:
  if (self->super._adjustedDuration)
  {
    v77 = ([groupStats averageMetadataRxBitrate] * 1000.0 / self->super._adjustedDuration);
  }

  else
  {
    v77 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v77), group25}];
  if (group)
  {
LABEL_88:
    group26 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPBLKFAR", group];
    if (!group26)
    {
      goto LABEL_95;
    }

    goto LABEL_91;
  }

  group26 = @"VPBLKFAR";
LABEL_91:
  if (self->super._adjustedDuration)
  {
    v79 = [groupStats lateKeyFrameAssembledCount] * 1000.0;
    v80 = self->super._adjustedDuration;
    v81 = (v79 / ([(MultiwaySegment *)self RTPeriod]* v80));
  }

  else
  {
    v81 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v81), group26}];
  if (!group)
  {
    group27 = @"VPBLPFAR";
    goto LABEL_98;
  }

LABEL_95:
  group27 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPBLPFAR", group];
  if (!group27)
  {
    goto LABEL_102;
  }

LABEL_98:
  if (self->super._adjustedDuration)
  {
    v83 = [groupStats latePFrameAssembledCount] * 1000.0;
    v84 = self->super._adjustedDuration;
    v85 = (v83 / ([(MultiwaySegment *)self RTPeriod]* v84));
  }

  else
  {
    v85 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v85), group27}];
  if (group)
  {
LABEL_102:
    group28 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AJBL", group];
    if (!group28)
    {
      if (![groupStats packetLossRateAccumulator])
      {
        goto LABEL_118;
      }

      goto LABEL_111;
    }

    goto LABEL_106;
  }

  group28 = @"AJBL";
LABEL_106:
  if (self->super._adjustedDuration)
  {
    [groupStats averageJitterQueueSize];
    v88 = (v87 * 1000.0 / self->super._adjustedDuration);
  }

  else
  {
    v88 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v88), group28}];
  if ([groupStats packetLossRateAccumulator])
  {
    if (!group)
    {
      group29 = @"SAVIDPLR";
LABEL_114:
      if (self->super._adjustedDuration)
      {
        v90 = [groupStats packetLossRateAccumulator] / self->super._adjustedDuration;
      }

      else
      {
        v90 = 0;
      }

      [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v90), group29}];
      goto LABEL_118;
    }

LABEL_111:
    group29 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"SAVIDPLR", group];
    if (!group29)
    {
      goto LABEL_118;
    }

    goto LABEL_114;
  }

LABEL_118:
  if ([groupStats avSyncOffsetSamplesCount])
  {
    group30 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAVSO", group];
    v92 = MEMORY[0x277CCABA8];
    if ([groupStats avSyncOffsetSamplesCount])
    {
      avSyncOffsetSum = [groupStats avSyncOffsetSum];
      v94 = (avSyncOffsetSum / [groupStats avSyncOffsetSamplesCount]);
    }

    else
    {
      v94 = 0;
    }

    [stats setObject:objc_msgSend(v92 forKeyedSubscript:{"numberWithInt:", v94), group30}];
    group31 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MINAVSO", group];
    v96 = MEMORY[0x277CCABA8];
    if ([groupStats minAVSyncOffset] == 0x7FFFFFFF)
    {
      minAVSyncOffset = 0;
    }

    else
    {
      minAVSyncOffset = [groupStats minAVSyncOffset];
    }

    [stats setObject:objc_msgSend(v96 forKeyedSubscript:{"numberWithInt:", minAVSyncOffset), group31}];
    group32 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MAXAVSO", group];
    v99 = MEMORY[0x277CCABA8];
    if ([groupStats maxAVSyncOffset] == 0x80000000)
    {
      maxAVSyncOffset = 0;
    }

    else
    {
      maxAVSyncOffset = [groupStats maxAVSyncOffset];
    }

    [stats setObject:objc_msgSend(v99 forKeyedSubscript:{"numberWithInt:", maxAVSyncOffset), group32}];
  }

  [objc_msgSend(groupStats "videoPlayerDisplayData")];
  [objc_msgSend(groupStats "videoPlayerAVHostTimeDelta")];
  [objc_msgSend(groupStats "videoPlayerAVSyncOffsetData")];
  [objc_msgSend(groupStats "videoTierDurationData")];
  if (group)
  {
    group33 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLIVP", group];
    if (group33)
    {
      [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(groupStats, "totalRTPDownlinkIngressVideoPackets")), group33}];
    }

    group34 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLEVP", group];
    if (!group34)
    {
LABEL_136:
      group35 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLINDP", group];
      if (!group35)
      {
        return;
      }

      goto LABEL_139;
    }
  }

  else
  {
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(groupStats, "totalRTPDownlinkIngressVideoPackets")), @"RTPDLIVP"}];
    group34 = @"RTPDLEVP";
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(groupStats, "totalRTPDownlinkEgressVideoPackets")), group34}];
  if (group)
  {
    goto LABEL_136;
  }

  group35 = @"RTPDLINDP";
LABEL_139:
  v104 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(groupStats, "totalRTPDownlinkIngressNonDupVideoPackets")}];

  [stats setObject:v104 forKeyedSubscript:group35];
}

- (void)reportAudioPerStreamGroupStats:(id)stats streamGroup:(id)group accumulatedStreamGroupStats:(id)groupStats
{
  group = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AERCNT", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "audioErasureCount")), group}];
  group2 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TAERT", group];
  v11 = MEMORY[0x277CCABA8];
  [groupStats totalAudioErasureTime];
  [stats setObject:objc_msgSend(v11 forKeyedSubscript:{"numberWithUnsignedInt:", (v12 * 1000.0)), group2}];
  group3 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MAECT", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "maxAudioErasureCount")), group3}];
  group4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAJBD", group];
  v15 = MEMORY[0x277CCABA8];
  if ([groupStats averageJitterBufferDelayCount])
  {
    [groupStats averageJitterBufferDelay];
    v17 = (v16 / [groupStats averageJitterBufferDelayCount] * 1000.0);
  }

  else
  {
    v17 = 0;
  }

  [stats setObject:objc_msgSend(v15 forKeyedSubscript:{"numberWithUnsignedInt:", v17), group4}];
  group5 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MAJBSC", group];
  v19 = MEMORY[0x277CCABA8];
  [groupStats maxJBTargetSizeChanges];
  [stats setObject:objc_msgSend(v19 forKeyedSubscript:{"numberWithUnsignedInt:", v20), group5}];
  group6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAJBSC", group];
  v22 = MEMORY[0x277CCABA8];
  if ([groupStats avgJBTargetSizeChangesCount])
  {
    [groupStats avgJBTargetSizeChanges];
    v24 = (v23 / [groupStats avgJBTargetSizeChangesCount] * 1000.0);
  }

  else
  {
    v24 = 0;
  }

  [stats setObject:objc_msgSend(v22 forKeyedSubscript:{"numberWithUnsignedInt:", v24), group6}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"JBTarget"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"JBT", group)}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"JBUnclippedTarget"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"AUJBL", group)}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"rxAudioCodecPayload"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"APAY", group)}];
  group7 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"EJBAdEn", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "enhancedJBAdaptationsEnabled")), group7}];
  v26 = @"AANRBR";
  if (group && (v26 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AANRBR", group]) == 0 || (!self->super._adjustedDuration ? (v27 = 0) : (v27 = objc_msgSend(groupStats, "averageAudioBitrate") / self->super._adjustedDuration), objc_msgSend(stats, "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v27), v26), group))
  {
    group8 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAMRBR", group];
    if (!group8)
    {
      goto LABEL_20;
    }

    v29 = group8;
  }

  else
  {
    v29 = @"AAMRBR";
  }

  if (self->super._adjustedDuration)
  {
    v30 = [groupStats averageAudioMediaBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v30 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v30), v29}];
  if (!group)
  {
    v32 = @"AADMRBR";
    goto LABEL_23;
  }

LABEL_20:
  group9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AADMRBR", group];
  if (!group9)
  {
    goto LABEL_27;
  }

  v32 = group9;
LABEL_23:
  if (self->super._adjustedDuration)
  {
    [groupStats averageAudioMediaRxDecodeBitrate];
    v34 = (v33 / self->super._adjustedDuration);
  }

  else
  {
    v34 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v34), v32}];
  if (!group)
  {
    v36 = @"AARRBR";
    goto LABEL_30;
  }

LABEL_27:
  group10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AARRBR", group];
  if (!group10)
  {
    if (![groupStats packetLossRateAccumulator])
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  v36 = group10;
LABEL_30:
  if (self->super._adjustedDuration)
  {
    v37 = [groupStats averageAudioRedRxBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v37 = 0;
  }

  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v37), v36}];
  if ([groupStats packetLossRateAccumulator])
  {
    if (!group)
    {
      v38 = @"SAAUDPLR";
LABEL_39:
      if (self->super._adjustedDuration)
      {
        v40 = [groupStats packetLossRateAccumulator] / self->super._adjustedDuration;
      }

      else
      {
        v40 = 0;
      }

      [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v40), v38}];
      goto LABEL_43;
    }

LABEL_37:
    group11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"SAAUDPLR", group];
    if (!group11)
    {
      goto LABEL_44;
    }

    v38 = group11;
    goto LABEL_39;
  }

LABEL_43:
  if (!group)
  {
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(groupStats, "totalRTPDownlinkIngressAudioPackets")), @"RTPDLIAP"}];
    group13 = @"RTPDLINDP";
    goto LABEL_49;
  }

LABEL_44:
  group12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLIAP", group];
  if (group12)
  {
    [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(groupStats, "totalRTPDownlinkIngressAudioPackets")), group12}];
  }

  group13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLINDP", group];
  if (!group13)
  {
LABEL_50:
    group14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLEAP", group];
    if (!group14)
    {
      return;
    }

    goto LABEL_53;
  }

LABEL_49:
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(groupStats, "totalRTPDownlinkIngressNonDupAudioPackets")), group13}];
  if (group)
  {
    goto LABEL_50;
  }

  group14 = @"RTPDLEAP";
LABEL_53:
  v44 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(groupStats, "totalRTPDownlinkEgressAudioPackets")}];

  [stats setObject:v44 forKeyedSubscript:group14];
}

- (void)reportRTXPerStreamGroupStats:(id)stats streamGroup:(id)group accumulatedStreamGroupStats:(id)groupStats
{
  adjustedDuration = self->super._adjustedDuration;
  v9 = [(MultiwaySegment *)self RTPeriod]* adjustedDuration;
  group = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKS", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "nacksSent")), group}];
  group2 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKF", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "nacksFulfilled")), group2}];
  group3 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFOT", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "nacksFulfilledOnTime")), group3}];
  group4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKSRATE", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(groupStats, "nacksSent") / v9), group4}];
  group5 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFRATE", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(groupStats, "nacksFulfilled") / v9), group5}];
  group6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFOTRATE", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(groupStats, "nacksFulfilledOnTime") / v9), group6}];
  group7 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKLSCHFRTX", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(groupStats, "lateFramesScheduledWithRTXCount") / v9), group7}];
  group8 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFASSMRTX", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(groupStats, "assembledFramesWithRTXPacketsCount") / v9), group8}];
  group9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFFASSMRTX", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(groupStats, "failedToAssembleFramesWithRTXPacketsCount") / v9), group9}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"nacksRTXResponseTime"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKAVGRSPT", group)}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"nacksRTXLateTime"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKAVGLATET", group)}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"nacksRTXMediaBitRate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKMBR", group)}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"nacksRTXRetransmittedMediaBitRate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKRTXMBR", group)}];
  group10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNACKS", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(groupStats, "uniqueNacksSent")), group10}];
  group11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNACKSRATE", group];
  [stats setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(groupStats, "uniqueNacksSent") / v9), group11}];
  [stats setObject:objc_msgSend(objc_msgSend(groupStats forKeyedSubscript:{"nacksPLRWithRTX"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKPLRWRTX", group)}];
  group12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKPLRWORTX", group];
  v22 = [objc_msgSend(groupStats "nacksPLRWithoutRTX")];

  [stats setObject:v22 forKeyedSubscript:group12];
}

- (void)addDownlinkParticipantStats:(id)stats currentTime:(double)time
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(VCDataMLEnhance);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSMutableDictionary *)self->_downlinkParticipantStats allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = [(NSMutableDictionary *)self->_downlinkParticipantStats objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v12)];
        [objc_msgSend(v13 "mlEnhance")];
        -[VCDataMLEnhance accumulate:](v7, "accumulate:", [v13 mlEnhance]);
        ++v12;
      }

      while (v10 != v12);
      v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    mlEnhanceStatus = [(MultiwaySegment *)self mlEnhanceStatus];
  }

  [stats setObject:objc_msgSend(v15 forKeyedSubscript:{"numberWithInt:", mlEnhanceStatus), @"MLSFENB"}];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addPerStreamGroupStats:(id)stats timestamp:(double)timestamp
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = [VCAggregatorUtils validBitmapIndices:self->super._segmentStreamGroups size:11];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR(7u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      segmentStreamGroups = self->super._segmentStreamGroups;
      *buf = 136316162;
      v45 = v8;
      v46 = 2080;
      v47 = "[DownlinkSegment addPerStreamGroupStats:timestamp:]";
      v48 = 1024;
      v49 = 6477;
      v50 = 1024;
      v51 = segmentStreamGroups;
      v52 = 2112;
      v53 = [v7 componentsJoinedByString:{@", "}];
      _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d segmentStreamGroups=%u streamGroups=%@", buf, 0x2Cu);
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v31)
  {
    v33 = 0;
    v28 = *v39;
    v29 = v7;
    statsCopy = stats;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v7);
        }

        v32 = v11;
        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = objc_alloc_init(StreamGroupStats);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        downlinkParticipantStats = self->_downlinkParticipantStats;
        v15 = [(NSMutableDictionary *)downlinkParticipantStats countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          do
          {
            v18 = 0;
            do
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(downlinkParticipantStats);
              }

              v19 = *(*(&v34 + 1) + 8 * v18);
              v20 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_downlinkParticipantStats objectForKeyedSubscript:{v19), "statsForStreamGroup:", v12}];
              if ([v12 unsignedIntValue] == 1 || objc_msgSend(v12, "unsignedIntValue") == 3 || objc_msgSend(v12, "unsignedIntValue") == 5 || objc_msgSend(v12, "unsignedIntValue") == 7 || objc_msgSend(v12, "unsignedIntValue") == 8 || objc_msgSend(v12, "unsignedIntValue") == 10)
              {
                [(DownlinkSegment *)self processVideoDegraded:0 forParticipant:v19 streamGroup:v12 timestamp:timestamp];
                [(DownlinkSegment *)self finalizeVideoStreamGroupStats:v20 timestamp:timestamp];
                [(DownlinkSegment *)self accumulateVideoPerStreamGroupStats:v13 streamGroupStats:v20];
              }

              else if ([v12 unsignedIntValue] == 2 || objc_msgSend(v12, "unsignedIntValue") == 4 || objc_msgSend(v12, "unsignedIntValue") == 6)
              {
                [(DownlinkSegment *)self accumulateAudioPerStreamGroupStats:v13 streamGroupStats:v20];
              }

              if ([v20 isRTXTelemetryAvailable])
              {
                [(DownlinkSegment *)self accumulateRTXPerStreamGroupStats:v13 streamGroupStats:v20 streamGroup:v12];
                v33 = 1;
              }

              -[StreamGroupStats setTickCount:](v13, "setTickCount:", -[StreamGroupStats tickCount](v13, "tickCount") + [v20 tickCount]);
              ++v18;
            }

            while (v16 != v18);
            v21 = [(NSMutableDictionary *)downlinkParticipantStats countByEnumeratingWithState:&v34 objects:v42 count:16];
            v16 = v21;
          }

          while (v21);
        }

        [(StreamGroupStats *)v13 finalizeStats];
        if ([v12 unsignedIntValue] == 1 || objc_msgSend(v12, "unsignedIntValue") == 3 || objc_msgSend(v12, "unsignedIntValue") == 5 || objc_msgSend(v12, "unsignedIntValue") == 7 || objc_msgSend(v12, "unsignedIntValue") == 8 || objc_msgSend(v12, "unsignedIntValue") == 10)
        {
          v22 = statsCopy;
          [(DownlinkSegment *)self reportVideoPerStreamGroupStats:statsCopy streamGroup:v12 accumulatedStreamGroupStats:v13];
        }

        else
        {
          v22 = statsCopy;
          if ([v12 unsignedIntValue] == 2 || objc_msgSend(v12, "unsignedIntValue") == 4 || objc_msgSend(v12, "unsignedIntValue") == 6)
          {
            [(DownlinkSegment *)self reportAudioPerStreamGroupStats:statsCopy streamGroup:v12 accumulatedStreamGroupStats:v13];
          }
        }

        if (v33)
        {
          [(DownlinkSegment *)self reportRTXPerStreamGroupStats:v22 streamGroup:v12 accumulatedStreamGroupStats:v13];
        }

        v23 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"COUNT_A", v12];
        [v22 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", -[StreamGroupStats tickCount](v13, "tickCount")), v23}];
        v24 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"COUNT", v12];
        v25 = [(DownlinkParticipantStats *)self->_localParticipantStats_Deprecated statsForStreamGroup:v12];
        [v22 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v25, "tickCount") + -[StreamGroupStats tickCount](v13, "tickCount")), v24}];

        ++v11;
        v7 = v29;
      }

      while (v32 + 1 != v31);
      v26 = [v29 countByEnumeratingWithState:&v38 objects:v43 count:16];
      v31 = v26;
    }

    while (v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addCelltechTelemetryToDictionary:(id)dictionary
{
  v5.receiver = self;
  v5.super_class = DownlinkSegment;
  [(MultiwaySegment *)&v5 addCelltechTelemetryToDictionary:?];
  if ([(MultiwaySegment *)self maxNegotiatedDownlinkBitrate])
  {
    [dictionary setObject:self->super._maxNegotiatedDownlinkBitrate forKeyedSubscript:@"MNDBRT"];
  }

  if (self->super._maxNegotiatedDownlinkBitrate_Alternate)
  {
    [dictionary setObject:self->super._maxNegotiatedDownlinkBitrate_Alternate forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"MNDBRT", @"A"}];
  }
}

- (void)updateDownlinkSegmentStats:(id)stats withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes
{
  lastReportedTotalCellDupRxDataBytes = [(DownlinkSegment *)self lastReportedTotalCellDupRxDataBytes];
  var4 = bytes->var4;
  if (lastReportedTotalCellDupRxDataBytes <= var4)
  {
    v9 = var4 - [(DownlinkSegment *)self lastReportedTotalCellDupRxDataBytes];
    var4 = v9 + [(DownlinkSegment *)self totalCellDupRxDataBytes];
  }

  [(DownlinkSegment *)self setTotalCellDupRxDataBytes:var4];
  [(DownlinkSegment *)self setLastReportedTotalCellDupRxDataBytes:bytes->var4];
  lastReportedTotalUsedCellBudgetRxDataBytes = [(DownlinkSegment *)self lastReportedTotalUsedCellBudgetRxDataBytes];
  var6 = bytes->var6;
  if (lastReportedTotalUsedCellBudgetRxDataBytes <= var6)
  {
    v12 = var6 - [(DownlinkSegment *)self lastReportedTotalUsedCellBudgetRxDataBytes];
    var6 = v12 + [(DownlinkSegment *)self totalUsedCellBudgetRxDataBytes];
  }

  [(DownlinkSegment *)self setTotalUsedCellBudgetRxDataBytes:var6];
  [(DownlinkSegment *)self setLastReportedTotalUsedCellBudgetRxDataBytes:bytes->var6];
  lastReportedTotalCellRxDataBytes = [(DownlinkSegment *)self lastReportedTotalCellRxDataBytes];
  var1 = bytes->var1;
  if (lastReportedTotalCellRxDataBytes <= var1)
  {
    v15 = var1 - [(DownlinkSegment *)self lastReportedTotalCellRxDataBytes];
    var1 = v15 + [(DownlinkSegment *)self totalCellRxDataBytes];
  }

  [(DownlinkSegment *)self setTotalCellRxDataBytes:var1];
  [(DownlinkSegment *)self setLastReportedTotalCellRxDataBytes:bytes->var1];
  lastReportedTotalWifiRxDataBytes = [(DownlinkSegment *)self lastReportedTotalWifiRxDataBytes];
  var3 = bytes->var3;
  if (lastReportedTotalWifiRxDataBytes <= var3)
  {
    v18 = var3 - [(DownlinkSegment *)self lastReportedTotalWifiRxDataBytes];
    var3 = v18 + [(DownlinkSegment *)self totalWifiRxDataBytes];
  }

  [(DownlinkSegment *)self setTotalWifiRxDataBytes:var3];
  [(DownlinkSegment *)self setLastReportedTotalWifiRxDataBytes:bytes->var3];
  if ([stats objectForKeyedSubscript:@"NWQualityLossRxAvg"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"NWQualityLossRxAvg", "floatValue"}];
    [(VCHistogram *)[(DownlinkSegment *)self wifiQualityScoreDelayRx] addValue:(v19 * 10.0)];
  }

  if ([stats objectForKeyedSubscript:@"NWQualityDelayRxAvg"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"NWQualityDelayRxAvg", "floatValue"}];
    v21 = v20;
    wifiQualityScoreLossRx = [(DownlinkSegment *)self wifiQualityScoreLossRx];

    [(VCHistogram *)wifiQualityScoreLossRx addValue:(v21 * 10.0)];
  }
}

- (id)segmentReport:(double)report
{
  v107[107] = *MEMORY[0x277D85DE8];
  if (self->super._hasReported)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR(7u);
      v5 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        segmentName = self->super._segmentName;
        *buf = 136315906;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = "[DownlinkSegment segmentReport:]";
        *&buf[22] = 1024;
        LODWORD(v99) = 6556;
        WORD2(v99) = 2112;
        *(&v99 + 6) = segmentName;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Downlink segment=%@ has already been reported. Ignoring request...", buf, 0x26u);
      }
    }

    goto LABEL_7;
  }

  if (self->super._duration <= 1)
  {
    [(MultiwaySegment *)self complete_and_release_nw_activity:2, report];
LABEL_7:
    dispatchedAggregatedReportCommon = 0;
    goto LABEL_118;
  }

  v95.receiver = self;
  v95.super_class = DownlinkSegment;
  dispatchedAggregatedReportCommon = [(VCReportingCommon *)&v95 dispatchedAggregatedReportCommon];
  adjustedDuration = self->super._adjustedDuration;
  v10 = [(MultiwaySegment *)self RTPeriod]* adjustedDuration;
  evictedFramesTrackedCount = self->_evictedFramesTrackedCount;
  if (evictedFramesTrackedCount)
  {
    LODWORD(v11) = self->_evictedFramesRecoveredCount;
    v11 = *&v11 * 10000.0 / evictedFramesTrackedCount;
    v84 = v11;
  }

  else
  {
    v84 = 0;
  }

  v13 = v10;
  if (v10)
  {
    LODWORD(v11) = self->_videoFrameDecodedButSkippedCounter;
    v85 = (*&v11 * 1000.0 / v13);
  }

  else
  {
    v85 = 0;
  }

  if (self->_totalNoRemotePacketsTime <= v13)
  {
    totalNoRemotePacketsTime = self->_totalNoRemotePacketsTime;
  }

  else
  {
    totalNoRemotePacketsTime = v10;
  }

  totalNoRemotePacketsTime_Alternate = self->_totalNoRemotePacketsTime_Alternate;
  if (totalNoRemotePacketsTime_Alternate <= v13)
  {
    v16 = self->_totalNoRemotePacketsTime_Alternate;
  }

  else
  {
    v16 = v10;
  }

  evictedFramesAnalysisValidIntervals = self->_evictedFramesAnalysisValidIntervals;
  if (evictedFramesAnalysisValidIntervals)
  {
    totalNoRemotePacketsTime_Alternate = self->_evictedFramesAverageLatePacketDelay * 1000.0 / evictedFramesAnalysisValidIntervals;
    v89 = totalNoRemotePacketsTime_Alternate;
  }

  else
  {
    v89 = 0;
  }

  v18 = self->super._adjustedDuration;
  v19 = 0.0;
  if (!v18)
  {
    v90 = 0;
LABEL_32:
    v88 = 0;
    v86 = 0;
LABEL_33:
    v87 = 0;
    goto LABEL_34;
  }

  LODWORD(totalNoRemotePacketsTime_Alternate) = self->_videoFrameTotalIncompleteCounter;
  totalNoRemotePacketsTime_Alternate = *&totalNoRemotePacketsTime_Alternate * 1000.0 / ([(MultiwaySegment *)self RTPeriod]* v18);
  LODWORD(v90) = totalNoRemotePacketsTime_Alternate;
  v20 = self->super._adjustedDuration;
  if (!v20)
  {
    HIDWORD(v90) = 0;
    goto LABEL_32;
  }

  LODWORD(totalNoRemotePacketsTime_Alternate) = self->_totalFIRDemandCounter;
  totalNoRemotePacketsTime_Alternate = *&totalNoRemotePacketsTime_Alternate * 1000.0 / ([(MultiwaySegment *)self RTPeriod]* v20);
  v86 = totalNoRemotePacketsTime_Alternate;
  v21 = self->super._adjustedDuration;
  if (!v21)
  {
    HIDWORD(v90) = 0;
    v88 = 0;
    goto LABEL_33;
  }

  LODWORD(totalNoRemotePacketsTime_Alternate) = self->_totalFIRCount;
  totalNoRemotePacketsTime_Alternate = *&totalNoRemotePacketsTime_Alternate * 1000.0 / ([(MultiwaySegment *)self RTPeriod]* v21);
  v88 = totalNoRemotePacketsTime_Alternate;
  v22 = self->super._adjustedDuration;
  if (!v22)
  {
    HIDWORD(v90) = 0;
    goto LABEL_33;
  }

  LODWORD(totalNoRemotePacketsTime_Alternate) = self->_totalFIRFailSafeCount;
  totalNoRemotePacketsTime_Alternate = *&totalNoRemotePacketsTime_Alternate * 1000.0 / ([(MultiwaySegment *)self RTPeriod]* v22);
  v87 = totalNoRemotePacketsTime_Alternate;
  v23 = self->super._adjustedDuration;
  if (v23)
  {
    LODWORD(totalNoRemotePacketsTime_Alternate) = self->_lateFramesScheduledCount;
    totalNoRemotePacketsTime_Alternate = *&totalNoRemotePacketsTime_Alternate * 1000.0 / ([(MultiwaySegment *)self RTPeriod]* v23);
    HIDWORD(v90) = totalNoRemotePacketsTime_Alternate;
    v24 = self->super._adjustedDuration;
    if (v24)
    {
      v25 = 0;
      v19 = v24;
      totalNoRemotePacketsTime_Alternate = self->_averageBWE / v24;
      v92 = totalNoRemotePacketsTime_Alternate;
      goto LABEL_35;
    }
  }

  else
  {
    HIDWORD(v90) = 0;
  }

LABEL_34:
  v92 = 0;
  v25 = 1;
LABEL_35:
  mediaStallCount = self->super._mediaStallCount;
  if (mediaStallCount)
  {
    totalNoRemotePacketsTime_Alternate = self->_totalMediaStallTime / mediaStallCount * 1000.0;
    v91 = totalNoRemotePacketsTime_Alternate;
    if (v25)
    {
LABEL_37:
      v93 = 0;
      v27 = 0.0;
      goto LABEL_40;
    }
  }

  else
  {
    v91 = 0;
    if (v25)
    {
      goto LABEL_37;
    }
  }

  v93 = (self->_averageTotalVideoRecvBitrate / v19 * 1000.0);
  totalNoRemotePacketsTime_Alternate = self->_timeWeightedJitterQueueSize;
  v27 = totalNoRemotePacketsTime_Alternate / v19;
LABEL_40:
  averageWireReceiveCounter = self->_averageWireReceiveCounter;
  if (!averageWireReceiveCounter)
  {
    v94 = 0;
    if (v10)
    {
      goto LABEL_42;
    }

LABEL_44:
    v31 = 0.0;
    v32 = 0.0;
    goto LABEL_45;
  }

  v29 = self->_averageWireReceiveBytes * 8.0;
  totalNoRemotePacketsTime_Alternate = v29 / (averageWireReceiveCounter * [(MultiwaySegment *)self RTPeriod]);
  v94 = totalNoRemotePacketsTime_Alternate;
  if (!v10)
  {
    goto LABEL_44;
  }

LABEL_42:
  LODWORD(totalNoRemotePacketsTime_Alternate) = self->_jitterBufferJumpSpikeCount;
  *&v30 = *&totalNoRemotePacketsTime_Alternate * 1000.0;
  v31 = *&v30 / v13;
  LODWORD(v30) = self->_jitterBufferSlopeSpikeCount;
  v32 = v30 * 1000.0 / v13;
LABEL_45:
  v33 = self->super._segmentName;
  v106[0] = @"RVER";
  v106[1] = @"CONFIG";
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = &stru_284F80940;
  }

  v107[0] = &unk_284FA5498;
  v107[1] = v34;
  v106[2] = @"AE";
  v107[2] = [(VCHistogram *)self->_audioErasures description];
  v106[3] = @"AE_A";
  v107[3] = [(VCHistogram *)self->_audioErasuresAlt description];
  v106[4] = @"AEAP";
  averageAudioErasuresCounter = self->_averageAudioErasuresCounter;
  if (averageAudioErasuresCounter == 0.0)
  {
    v36 = 0;
  }

  else
  {
    v36 = (self->_averageAudioErasuresSum / averageAudioErasuresCounter);
  }

  v107[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v36];
  v106[5] = @"AEAP_A";
  averageAudioErasuresCounterAlt = self->_averageAudioErasuresCounterAlt;
  if (averageAudioErasuresCounterAlt == 0.0)
  {
    v38 = 0;
  }

  else
  {
    v38 = (self->_averageAudioErasuresSumAlt / averageAudioErasuresCounterAlt);
  }

  v39 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v38];
  previousSegmentName = self->super._previousSegmentName;
  if (!previousSegmentName)
  {
    previousSegmentName = &stru_284F80940;
  }

  v107[5] = v39;
  v107[6] = previousSegmentName;
  v106[6] = @"PREVCONFIG";
  v106[7] = @"STRMGRPS";
  if (self->super._segmentStreamGroups)
  {
    v41 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
  }

  else
  {
    v41 = &unk_284FA54B0;
  }

  v107[7] = v41;
  v106[8] = @"PREVSTRMGRPS";
  if (self->super._previousSegmentStreamGroups)
  {
    v42 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
  }

  else
  {
    v42 = &unk_284FA54B0;
  }

  v107[8] = v42;
  v106[9] = @"DRTN";
  v107[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment RTPeriod](self, "RTPeriod") * self->super._duration}];
  v106[10] = @"ATBR";
  v43 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageTargetBitrate];
  v107[10] = [v43 numberWithUnsignedInt:v44];
  v106[11] = @"ARTT";
  v45 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageRoundTripTime];
  v107[11] = [v45 numberWithUnsignedInt:v46];
  v106[12] = @"TPRCNT";
  v107[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalPacketsReceived](self, "totalPacketsReceived")}];
  v106[13] = @"TRBTS";
  v107[13] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->super._totalBytesReceived];
  v106[14] = @"APLR";
  v47 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self packetLossRate];
  v107[14] = [v47 numberWithUnsignedInt:v48];
  v106[15] = @"RTT";
  v107[15] = [(VCHistogram *)self->super._RTT description];
  v106[16] = @"PLR";
  v107[16] = [(VCHistogram *)self->super._PLR description];
  v106[17] = @"TBR";
  v107[17] = [(VCHistogram *)self->super._TBR description];
  v106[18] = @"FR";
  v107[18] = [(VCHistogram *)self->_framerate description];
  v106[19] = @"JBQS";
  v107[19] = [(VCHistogram *)self->_JBQSize description];
  v106[20] = @"JBJSR";
  v107[20] = [MEMORY[0x277CCABA8] numberWithDouble:v31];
  v106[21] = @"JBSSR";
  v107[21] = [MEMORY[0x277CCABA8] numberWithDouble:v32];
  v106[22] = @"JBSS";
  v107[22] = [(VCHistogram *)self->_JBSpikeSizeDeltaHistogram description];
  v106[23] = @"MJBSS";
  v107[23] = [MEMORY[0x277CCABA8] numberWithDouble:self->_maxJitterBufferSpikeSizeDelta];
  v106[24] = @"LOCSW";
  v107[24] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment localSwitches](self, "localSwitches")}];
  v106[25] = @"SESSW";
  v107[25] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{-[MultiwaySegment sessionSwitches](self, "sessionSwitches")}];
  v106[26] = @"RTXNacksEnabled";
  v107[26] = [MEMORY[0x277CCABA8] numberWithBool:self->_serverPacketRetransmissionsForVideoEnabled];
  v106[27] = @"RTXNacksDelayedEnabled";
  v107[27] = [MEMORY[0x277CCABA8] numberWithBool:self->_serverPacketRetransmissionsExtraDelayBudgetEnabled];
  v106[28] = @"RTXNacksConfigVersion";
  v107[28] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_nackGeneratorConfigVersion];
  v106[29] = @"RtcpForLoss";
  v107[29] = [MEMORY[0x277CCABA8] numberWithBool:self->_rtcpPSFBForLossFeedbackEnabled];
  v106[30] = @"RtcpForLtrAck";
  v107[30] = [MEMORY[0x277CCABA8] numberWithBool:self->_rtcpPSFBForLtrAckEnabled];
  v106[31] = @"VPLR";
  v107[31] = [(VCHistogram *)self->_VPLR description];
  v106[32] = @"SARTT";
  v49 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageRoundTripTime];
  v107[32] = [v49 numberWithUnsignedInt:(v50 * 100.0)];
  v106[33] = @"SATXBR";
  v51 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageTargetBitrate];
  v107[33] = [v51 numberWithUnsignedInt:v52];
  v106[34] = @"AJBSCH";
  v53 = self->super._adjustedDuration;
  if (v53)
  {
    v54 = self->_averageJitterQueueSizeChanges / v53;
  }

  else
  {
    v54 = 0;
  }

  v107[34] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:v54];
  v106[35] = @"OOOPCT";
  v107[35] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_significantOOOPacketCount];
  v106[36] = @"REDECR";
  v107[36] = [(VCHistogram *)self->_REDErasureCompensationRate description];
  v106[37] = @"MRFRD";
  v107[37] = [(VCHistogram *)self->_maxREDFrameRecoveryDepth description];
  v106[38] = @"REDRC";
  v107[38] = [(VCHistogram *)self->_REDReceivedCount description];
  v106[39] = @"REDO";
  v107[39] = [(VCHistogram *)self->_REDOverhead description];
  v106[40] = @"SAAUDPLR";
  audioSentPacketCount = self->_audioSentPacketCount;
  if (audioSentPacketCount)
  {
    v56 = ((1.0 - self->_audioRemoteReceivedPacketCount / audioSentPacketCount) * 10000.0);
  }

  else
  {
    v56 = 0;
  }

  v107[40] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v56];
  v106[41] = @"SARBR";
  v57 = self->super._adjustedDuration;
  if (v57)
  {
    v58 = self->_averageReceiveBitrate / v57;
  }

  else
  {
    v58 = 0.0;
  }

  v107[41] = [MEMORY[0x277CCABA8] numberWithDouble:v58];
  v106[42] = @"SASEAP";
  v59 = self->super._adjustedDuration;
  if (v59)
  {
    v60 = (self->_averageSpeechErasuresRate / v59);
  }

  else
  {
    v60 = 0;
  }

  v107[42] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v60];
  v106[43] = @"SAVIDPLR";
  v61 = self->super._adjustedDuration;
  if (v61)
  {
    v62 = self->_VPLRAccumulator / v61;
  }

  else
  {
    v62 = 0;
  }

  v107[43] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v62];
  v106[44] = @"SABWE";
  v63 = self->super._adjustedDuration;
  if (v63)
  {
    v64 = (self->_averageBWESum / v63);
  }

  else
  {
    v64 = 0;
  }

  v107[44] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v64];
  v106[45] = @"SAEAP";
  v65 = self->super._adjustedDuration;
  if (v65)
  {
    v66 = self->_averageAudioErasuresRate / v65;
  }

  else
  {
    v66 = 0;
  }

  v107[45] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v66];
  v106[46] = @"LAT";
  v107[46] = [(VCHistogram *)self->_latency description];
  v106[47] = @"JBSITS";
  v107[47] = [(VCHistogram *)self->_silenceTimescaleRate description];
  v106[48] = @"JBSPTS";
  v107[48] = [(VCHistogram *)self->_speechTimescaleRate description];
  v106[49] = @"JBTS";
  v107[49] = [(VCHistogram *)self->_timescaleRate description];
  v106[50] = @"JE";
  v107[50] = [(VCHistogram *)self->_jitterErasures description];
  v106[51] = @"PCHADEL";
  v107[51] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:self->super._primaryConnHealthAllowedDelay], 2);
  v106[52] = @"RBR";
  v107[52] = [(VCHistogram *)self->_RBR description];
  v106[53] = @"REDDC";
  v107[53] = [(VCHistogram *)self->_REDDiscardedCount description];
  v106[54] = @"REDPC";
  v107[54] = [(VCHistogram *)self->_REDPlayedCount description];
  v106[55] = @"PEVFR";
  v107[55] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v84];
  v106[56] = @"SERCNT";
  v107[56] = [(VCHistogram *)self->_speechErasures description];
  v106[57] = @"VJ";
  v107[57] = [(VCHistogram *)self->_videoJitter description];
  v106[58] = @"TSERT";
  v107[58] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_speechErasureTotalTime];
  v106[59] = @"VFDSKPR";
  v107[59] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v85];
  v106[60] = @"SAJEAP";
  v67 = self->super._adjustedDuration;
  if (v67)
  {
    v68 = (self->_averageJitterErasuresRate / v67);
  }

  else
  {
    v68 = 0;
  }

  v107[60] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v68];
  v106[61] = @"CHRC";
  v107[61] = [(VCHistogram *)self->_continuousHighRTTReportCount description];
  v106[62] = @"CHPC";
  v107[62] = [(VCHistogram *)self->_continuousHighPLRReportCount description];
  v106[63] = @"CHRPC";
  v107[63] = [(VCHistogram *)self->_continuousHighRTTPLRReportCount description];
  v106[64] = @"MCAEH";
  v107[64] = [(VCHistogram *)self->_maxConsAudioErasuresHistogram description];
  v106[65] = @"SMCAE";
  v107[65] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxConsecutiveAudioErasures];
  v106[66] = @"MNRPI";
  v107[66] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxNoRemotePacketsInterval * 100.0)];
  v106[67] = @"TNRPP";
  if (v10)
  {
    v69 = (totalNoRemotePacketsTime / v13 * 10000.0);
  }

  else
  {
    v69 = 0;
  }

  v107[67] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v69];
  v106[68] = @"VPBEVALPD";
  v107[68] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v89];
  v106[69] = @"VPBEVLPDHIST";
  v107[69] = [(VCHistogram *)self->_evictedFramesLatePacketDelayHist description];
  v106[70] = @"VPBEVMLPD";
  v107[70] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_evictedFramesMaxLatePacketDelay * 1000.0)];
  v106[71] = @"VPBTIR";
  v107[71] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v90];
  v106[72] = @"VPBNRFR";
  v107[72] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v86];
  v106[73] = @"VPBNRFC";
  v107[73] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_totalFIRDemandCounter];
  v106[74] = @"FIRFR";
  v107[74] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v88];
  v106[75] = @"FIRFC";
  v107[75] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_totalFIRCount];
  v106[76] = @"FIRFSFR";
  v107[76] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v87];
  v106[77] = @"FIRFSFC";
  v107[77] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_totalFIRFailSafeCount];
  v106[78] = @"VPBLSR";
  v107[78] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v90)];
  v106[79] = @"WVJBQS";
  v107[79] = [(VCHistogram *)self->_WANVJBQSize description];
  v106[80] = @"VQS";
  v107[80] = [(VCHistogram *)self->_videoQualityScore description];
  v106[81] = @"VRES";
  v107[81] = [(VCHistogram *)self->_videoResolution description];
  v106[82] = @"SABWE";
  v107[82] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v92];
  v106[83] = @"SMAXBWE";
  v107[83] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxBWE];
  v106[84] = @"SMINBWE";
  v107[84] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_minBWE];
  v106[85] = @"SRDMBL";
  v107[85] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalMBLRampDownCount](self, "totalMBLRampDownCount")}], 3);
  v106[86] = @"SSBWD";
  v107[86] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalSuddenBandwidthDropCount](self, "totalSuddenBandwidthDropCount")}], 3);
  v106[87] = @"SPCONFQ";
  v107[87] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_poorConnectionFrequency];
  v106[88] = @"SPCONTLEN";
  v107[88] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_poorConnectionTotalLength];
  v106[89] = @"AMST";
  v107[89] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v91];
  v106[90] = @"MSMAX";
  v107[90] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxMediaStallTime * 1000.0)];
  v106[91] = @"TMST";
  v107[91] = [(VCHistogram *)self->_mediaStall description];
  v106[92] = @"AVTRBR";
  v107[92] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v93];
  v106[93] = @"JBQSDA";
  v107[93] = [(VCHistogram *)self->_JBQSizeDeltaAudLarger description];
  v106[94] = @"JBQSDV";
  v107[94] = [(VCHistogram *)self->_JBQSizeDeltaVidLarger description];
  v106[95] = @"MJBL";
  v107[95] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_maxJitterQueueSize];
  v106[96] = @"TWJBL";
  v107[96] = [MEMORY[0x277CCABA8] numberWithDouble:v27];
  v106[97] = @"VCRCPROFNUM";
  v107[97] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_vcrcProfileNumber];
  v106[98] = @"ABBPL";
  v107[98] = [(VCHistogram *)self->_abnormalBPL description];
  v106[99] = @"ABPLR";
  v107[99] = [(VCHistogram *)self->_abnormalPLR description];
  v106[100] = @"ABRTT";
  v107[100] = [(VCHistogram *)self->_abnormalRTT description];
  v106[101] = @"AWRB";
  v107[101] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v94];
  v106[102] = @"EJBAdEn";
  v107[102] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_enhancedJBAdaptationsEnabled];
  v106[103] = @"WLRA";
  v107[103] = [(VCHistogram *)self->_wifiQualityScoreLossRx description];
  v106[104] = @"WDRA";
  v107[104] = [(VCHistogram *)self->_wifiQualityScoreDelayRx description];
  v106[105] = @"BSIDX";
  v107[105] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._bootstrapSampleIndex];
  v106[106] = @"FECHDRVER";
  v107[106] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._fecHeaderVersion];
  [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v107, v106, 107)}];
  if ([MEMORY[0x277CCABA8] numberWithInt:(self->_maxNoRemotePacketsInterval_Alternate * 100.0)])
  {
    v70 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MNRPI", @"A"];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", (self->_maxNoRemotePacketsInterval_Alternate * 100.0)), v70}];
  }

  if (v10)
  {
    v71 = (v16 / v13 * 10000.0);
  }

  else
  {
    v71 = 0;
  }

  if ([MEMORY[0x277CCABA8] numberWithInt:v71])
  {
    v72 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TNRPP", @"A"];
    if (v10)
    {
      v73 = (v16 / v13 * 10000.0);
    }

    else
    {
      v73 = 0;
    }

    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v73), v72}];
  }

  if ([(VCDurationHistogram *)self->_pipThermalDurations totalDuration])
  {
    [dispatchedAggregatedReportCommon setObject:-[VCHistogram description](self->_pipThermalDurations forKeyedSubscript:{"description"), @"PIPDUR"}];
  }

  if (self->super._isOneToOneMode && [(MultiwaySegment *)self linksWithMaxPacketHistory])
  {
    [dispatchedAggregatedReportCommon setObject:-[MultiwaySegment linksWithMaxPacketHistory](self forKeyedSubscript:{"linksWithMaxPacketHistory"), @"DLPH"}];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", -[MultiwaySegment packetHistoryIndex](self, "packetHistoryIndex")), @"DLPI"}];
  }

  v104[0] = @"VTPDLIP";
  v74 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVTPDownlinkIngressMediaPackets];
  v104[1] = @"VTPDLEP";
  v105[0] = v74;
  v105[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVTPDownlinkEgressMediaPackets];
  [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v105, v104, 2)}];
  if ([(MultiwaySegment *)self linkIPPreference]!= 255)
  {
    v102 = @"LNKIP";
    v103 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:{-[MultiwaySegment linkIPPreference](self, "linkIPPreference")}];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v103, &v102, 1)}];
  }

  [dispatchedAggregatedReportCommon addEntriesFromDictionary:{-[MultiwaySegment reportingClientExperimentSettingsDictionary](self, "reportingClientExperimentSettingsDictionary")}];
  [(MultiwaySegment *)self addCommonSegmentTelemetry:dispatchedAggregatedReportCommon];
  lossPattern = self->super._lossPattern;
  *buf = self->super._fecStatsHolder;
  *&buf[8] = lossPattern;
  lossFecHistogram = self->super._lossFecHistogram;
  *&buf[16] = self->super._lossHistogram;
  *&v99 = lossFecHistogram;
  LODWORD(lossFecHistogram) = self->_videoFrameNonFECCompleteCounter;
  DWORD2(v99) = self->_videoFrameNonFECTotalCounter;
  HIDWORD(v99) = lossFecHistogram;
  LODWORD(lossFecHistogram) = self->_fecProcessingTime;
  v100 = self->super._adjustedDuration;
  v101 = lossFecHistogram;
  [(SegmentStatsDelegate *)self->super._delegate addFECStats:dispatchedAggregatedReportCommon parameters:buf reportFrameSizeTelemetry:1 reportLevels:1];
  [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", -[MultiwaySegment isApplePersonalHotspot](self, "isApplePersonalHotspot")), @"PHS"}];
  activeConnectionRegistry = self->super._activeConnectionRegistry;
  if (activeConnectionRegistry)
  {
    [dispatchedAggregatedReportCommon setObject:activeConnectionRegistry forKeyedSubscript:@"ACAS"];
  }

  if (self->super._conversationTimeBase)
  {
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._startDate), @"StartDate"}];
    v78 = MEMORY[0x277CCABA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(v78 forKeyedSubscript:{"numberWithInt:", v79), @"EndDate"}];
  }

  if ([[(NSString *)self->super._segmentName substringFromIndex:2] hasPrefix:@"W"])
  {
    v96 = @"WiFi5GHz";
    v97 = [MEMORY[0x277CCABA8] numberWithInt:self->super._is5GHz];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v97, &v96, 1)}];
  }

  [(DownlinkSegment *)self addDownlinkParticipantStats:dispatchedAggregatedReportCommon currentTime:report];
  [(DownlinkSegment *)self addPerStreamGroupStats:dispatchedAggregatedReportCommon timestamp:report];
  [(DownlinkSegment *)self addCellByteCountStats:dispatchedAggregatedReportCommon];
  [(MultiwaySegment *)self addRateControlExperimentInfoToSegmentReport:dispatchedAggregatedReportCommon];
  [(DownlinkSegment *)self addNetworkCapabilityInfoToSegmentReport:dispatchedAggregatedReportCommon];
  if (self->super._nwActivity)
  {
    if (self->super._useNwActivitySubmitMetrics && self->super._isNWActivityReportingEnabled)
    {
      v80 = _CFXPCCreateXPCObjectFromCFObject();
      nwActivity = self->super._nwActivity;
      nw_activity_submit_metrics();
      xpc_release(v80);
    }

    [(MultiwaySegment *)self complete_and_release_nw_activity:2];
  }

  [(DownlinkSegment *)self addCelltechTelemetryToDictionary:dispatchedAggregatedReportCommon];
  [(MultiwaySegment *)self addQRServerTelemetryToDictionary:dispatchedAggregatedReportCommon];
  [(VCReportingCommon *)self addClientExperimentsToReport:dispatchedAggregatedReportCommon];
  [(MultiwaySegment *)self reportVCRCMLStats:dispatchedAggregatedReportCommon];
  self->super._hasReported = 1;
LABEL_118:
  v82 = *MEMORY[0x277D85DE8];
  return dispatchedAggregatedReportCommon;
}

- (void)addNetworkCapabilityInfoToSegmentReport:(id)report
{
  if (self->_reportNetworkCapabilities)
  {
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_isUplinkRetransmissionEnabled), @"RULRTX"}];
    [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->super._isRemoteQUICPod), @"RTLE"}];
    if (self->super._remoteMediaQueueSchedulePolicy)
    {
      v5 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];

      [report setObject:v5 forKeyedSubscript:@"RMQSchP"];
    }
  }
}

- (void)calculateDownlinkTelemetry:(id)telemetry downlinkRTT:(unsigned int)t
{
  telemetryCopy = telemetry;
  v191 = *MEMORY[0x277D85DE8];
  v7 = [telemetry objectForKeyedSubscript:sRTCReportingStreamCollection];
  v8 = [v7 count];
  if (v8)
  {
    v16 = OUTLINED_FUNCTION_70(v8, v9, v10, v11, v12, v13, v14, v15, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, 0, 0, 0, 0, 0, 0, 0, 0, v189);
    if (v16)
    {
      HIDWORD(v107) = t;
      v109 = telemetryCopy;
      selfCopy = self;
      v159 = 0;
      v161 = 0;
      LODWORD(v177) = 0;
      v163 = 0;
      v165 = 0;
      v167 = 0;
      v169 = 0;
      HIDWORD(v129) = 0;
      v171 = 0;
      v173 = 0;
      v17 = 0;
      v18 = 0;
      integerValue = 0;
      v133 = 0;
      HIDWORD(v157) = 0;
      HIDWORD(v137) = 0;
      v153 = 0;
      v155 = 0;
      v149 = 0;
      v151 = 0;
      v145 = 0;
      v147 = 0;
      v121 = 0;
      HIDWORD(v143) = 0;
      v139 = 0;
      v117 = 0;
      HIDWORD(v115) = 0;
      v175 = *v183;
      v123 = 0.0;
      v125 = 0.0;
      v19 = 0.0;
      v127 = 0.0;
      v20 = 0.0;
      v119 = 0.0;
      v21 = 0.0;
      v131 = 0.0;
      v141 = 0.0;
      v135 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          HIDWORD(v177) = v18;
          LODWORD(v179) = v17;
          if (*v183 != v175)
          {
            objc_enumerationMutation(v7);
          }

          v27 = [v7 objectForKeyedSubscript:*(v182 + 8 * i)];
          doubleValue = [objc_msgSend(v27 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
          if (doubleValue == 2)
          {
            if ([v27 objectForKeyedSubscript:@"VFrErCnt"])
            {
              [objc_msgSend(v27 objectForKeyedSubscript:{@"VFrErCnt", "integerValue"}];
            }

            if ([v27 objectForKeyedSubscript:@"ARFr"])
            {
              [objc_msgSend(v27 objectForKeyedSubscript:{@"ARFr", "doubleValue"}];
              v25 = v25 + v36;
              ++HIDWORD(v117);
            }

            if (OUTLINED_FUNCTION_61())
            {
              LODWORD(v179) = v17 + [OUTLINED_FUNCTION_61() integerValue];
              ++HIDWORD(v177);
            }

            if (OUTLINED_FUNCTION_45())
            {
              [OUTLINED_FUNCTION_61() doubleValue];
              v23 = v23 + v37;
              ++HIDWORD(v115);
            }

            if (OUTLINED_FUNCTION_45())
            {
              [OUTLINED_FUNCTION_45() doubleValue];
              v22 = v22 + v38;
              LODWORD(v117) = v117 + 1;
            }

            if (OUTLINED_FUNCTION_73())
            {
              [OUTLINED_FUNCTION_73() doubleValue];
              v24 = v24 + v39;
              LODWORD(v121) = v121 + 1;
            }

            if (OUTLINED_FUNCTION_43())
            {
              LODWORD(v169) = v169 + [OUTLINED_FUNCTION_43() integerValue];
              ++HIDWORD(v169);
            }

            if (OUTLINED_FUNCTION_61())
            {
              [OUTLINED_FUNCTION_61() doubleValue];
              OUTLINED_FUNCTION_33(v40, HIDWORD(v139), 10000.0);
              HIDWORD(v139) = v41;
            }

            if (OUTLINED_FUNCTION_43())
            {
              [OUTLINED_FUNCTION_43() doubleValue];
              OUTLINED_FUNCTION_33(v42, HIDWORD(v143), 10000.0);
              HIDWORD(v143) = v43;
            }

            if ([v27 objectForKeyedSubscript:@"SilenceTimescaleRate"])
            {
              [OUTLINED_FUNCTION_43() doubleValue];
              OUTLINED_FUNCTION_33(v44, v145, 10000.0);
              LODWORD(v145) = v45;
            }

            if ([v27 objectForKeyedSubscript:@"SpeechTimescaleRate"])
            {
              [OUTLINED_FUNCTION_43() doubleValue];
              OUTLINED_FUNCTION_33(v46, HIDWORD(v145), 10000.0);
              HIDWORD(v145) = v47;
            }

            if ([v27 objectForKeyedSubscript:@"JitterErasureRate"])
            {
              [OUTLINED_FUNCTION_43() doubleValue];
              OUTLINED_FUNCTION_33(v48, v147, 10000.0);
              LODWORD(v147) = v49;
            }

            if ([v27 objectForKeyedSubscript:@"RedRxDiscardCount"])
            {
              HIDWORD(v121) += [objc_msgSend(v27 objectForKeyedSubscript:{@"RedRxDiscardCount", "integerValue"}];
            }

            if (OUTLINED_FUNCTION_38())
            {
              HIDWORD(v147) += [OUTLINED_FUNCTION_38() integerValue];
            }

            if (OUTLINED_FUNCTION_38())
            {
              LODWORD(v149) = v149 + [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"VFEVTrCnt"])
            {
              HIDWORD(v149) += [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"VRSOOOCnt"])
            {
              LODWORD(v151) = v151 + [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"RedRxCount"])
            {
              LODWORD(v153) = v153 + [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"RedOverheadDelay"])
            {
              [OUTLINED_FUNCTION_38() doubleValue];
              v141 = v141 + v50 * 1000.0;
            }

            if ([v27 objectForKeyedSubscript:@"VRxPLR"])
            {
              v155 += [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"RedErasureCompensationRate"])
            {
              [OUTLINED_FUNCTION_38() doubleValue];
              v135 = v135 + v51 * 10000.0;
            }

            if ([v27 objectForKeyedSubscript:@"MaxRedFrameRecoveryDepth"])
            {
              HIDWORD(v151) += [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"FrameSpeechErasureRate"])
            {
              [OUTLINED_FUNCTION_38() doubleValue];
              OUTLINED_FUNCTION_33(v52, HIDWORD(v153), 10000.0);
              HIDWORD(v153) = v53;
            }

            if ([v27 objectForKeyedSubscript:@"VJBTC"])
            {
              LODWORD(v139) = v139 + [OUTLINED_FUNCTION_45() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"VRxR"])
            {
              [OUTLINED_FUNCTION_45() doubleValue];
              v119 = v119 + v54;
            }

            if ([v27 objectForKeyedSubscript:@"VJ"])
            {
              [OUTLINED_FUNCTION_45() doubleValue];
              OUTLINED_FUNCTION_33(v55, HIDWORD(v137), 1000.0);
              HIDWORD(v137) = v56;
            }

            if (OUTLINED_FUNCTION_38())
            {
              [OUTLINED_FUNCTION_38() doubleValue];
              OUTLINED_FUNCTION_33(v57, HIDWORD(v157), 10000.0);
              HIDWORD(v157) = v58;
            }

            if (OUTLINED_FUNCTION_38())
            {
              [OUTLINED_FUNCTION_38() doubleValue];
              LODWORD(v159) = (v159 + v59 * ([(MultiwaySegment *)selfCopy RTPeriod]* 1000.0));
            }

            if (OUTLINED_FUNCTION_45())
            {
              HIDWORD(v159) += [OUTLINED_FUNCTION_45() integerValue];
            }

            if (OUTLINED_FUNCTION_38())
            {
              LODWORD(v161) = v161 + [OUTLINED_FUNCTION_38() integerValue];
            }

            if (OUTLINED_FUNCTION_43())
            {
              [OUTLINED_FUNCTION_43() doubleValue];
              v123 = v123 + v60 * 10000.0;
            }

            if (OUTLINED_FUNCTION_38())
            {
              HIDWORD(v161) += [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"VFIRCnt"])
            {
              LODWORD(v163) = v163 + [OUTLINED_FUNCTION_43() integerValue];
            }

            if (OUTLINED_FUNCTION_38())
            {
              HIDWORD(v163) += [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"VFTICnt"])
            {
              LODWORD(v165) = v165 + [OUTLINED_FUNCTION_43() integerValue];
            }

            if (OUTLINED_FUNCTION_38())
            {
              HIDWORD(v165) += [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"VQS"])
            {
              HIDWORD(v167) += [OUTLINED_FUNCTION_43() integerValue];
            }

            if (OUTLINED_FUNCTION_38())
            {
              [OUTLINED_FUNCTION_38() doubleValue];
              v127 = v127 + v61;
            }

            if (OUTLINED_FUNCTION_73())
            {
              [OUTLINED_FUNCTION_73() doubleValue];
              OUTLINED_FUNCTION_33(v62, HIDWORD(v129), 1000.0);
              HIDWORD(v129) = v63;
            }

            if (OUTLINED_FUNCTION_45())
            {
              [OUTLINED_FUNCTION_45() doubleValue];
              OUTLINED_FUNCTION_33(v64, HIDWORD(v173), 1000.0);
              HIDWORD(v173) = v65;
            }

            if (OUTLINED_FUNCTION_43())
            {
              [OUTLINED_FUNCTION_43() doubleValue];
              v21 = v21 + v66 * 1000.0;
            }

            if (OUTLINED_FUNCTION_38())
            {
              HIDWORD(v171) += [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"LPFASC"])
            {
              LODWORD(v173) = v173 + [OUTLINED_FUNCTION_43() integerValue];
            }

            if (OUTLINED_FUNCTION_38())
            {
              LODWORD(v171) = v171 + [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"EnhancedJBAdaptationsEnabled"])
            {
              integerValue = [OUTLINED_FUNCTION_43() integerValue];
            }

            if (OUTLINED_FUNCTION_38())
            {
              LODWORD(v133) = v133 + [OUTLINED_FUNCTION_38() integerValue];
            }

            if ([v27 objectForKeyedSubscript:@"JBSlopeSpikeCount"])
            {
              HIDWORD(v133) += [OUTLINED_FUNCTION_43() integerValue];
            }

            if (OUTLINED_FUNCTION_38())
            {
              [OUTLINED_FUNCTION_38() doubleValue];
              v131 = v131 + v67;
            }

            [objc_msgSend(v27 objectForKeyedSubscript:{@"VFEVMaxLtPktDelay", "doubleValue"}];
            if (v19 < v68)
            {
              v19 = v68;
            }

            v69 = [objc_msgSend(v27 objectForKeyedSubscript:{@"MaxConsecutiveAudioErasures", "unsignedIntValue"}];
            if (v177 <= v69)
            {
              v70 = v69;
            }

            else
            {
              v70 = v177;
            }

            LODWORD(v177) = v70;
            [objc_msgSend(v27 objectForKeyedSubscript:{@"MMST", "doubleValue"}];
            if (v20 < v71)
            {
              v20 = v71;
            }

            doubleValue = [v27 objectForKeyedSubscript:@"VFEVLtPktDelay"];
            if (doubleValue)
            {
              doubleValue = [OUTLINED_FUNCTION_43() doubleValue];
              v125 = v125 + v72;
              v73 = v167;
              if (v72 > 0.0)
              {
                v73 = v167 + 1;
              }

              LODWORD(v167) = v73;
            }
          }

          v18 = HIDWORD(v177);
          v17 = v179;
        }

        v16 = OUTLINED_FUNCTION_70(doubleValue, v29, v30, v31, v32, v33, v34, v35, v105, v107, v109, selfCopy, integerValue, v115, v117, *&v119, v121, *&v123, *&v125, *&v127, v129, *&v131, v133, *&v135, v137, v139, *&v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v182, v183, v184, v185, v186, v187, v188, v190);
      }

      while (v16);
      v74 = v17;
      v75 = v18;
      v180 = v21;
      if (HIDWORD(v115))
      {
        v76 = (v23 / HIDWORD(v115) * 10000.0);
      }

      else
      {
        v76 = 0;
      }

      telemetryCopy = v109;
      self = selfCopy;
      v78 = HIDWORD(v129);
      v81 = v119;
      v82 = v127;
      LODWORD(v16) = HIDWORD(v121);
      t = HIDWORD(v107);
      v79 = v177;
      [(DownlinkSegment *)selfCopy processAudioErasureValue:v76];
      if (v117)
      {
        v85 = (v22 / v117 * 10000.0);
      }

      else
      {
        v85 = 0;
      }

      v84 = v123;
      [(DownlinkSegment *)selfCopy processAudioErasureValueAlt:v85];
      if (HIDWORD(v117))
      {
        v80 = (v25 / HIDWORD(v117) * 10.0);
      }

      else
      {
        v80 = 0;
      }

      v83 = v125;
      v77 = v121;
    }

    else
    {
      [(DownlinkSegment *)self processAudioErasureValue:0];
      [(DownlinkSegment *)self processAudioErasureValueAlt:0];
      v77 = 0;
      v169 = 0;
      v139 = 0;
      HIDWORD(v143) = 0;
      v145 = 0;
      v147 = 0;
      HIDWORD(v151) = 0;
      LODWORD(v153) = 0;
      v155 = 0;
      HIDWORD(v137) = 0;
      HIDWORD(v157) = 0;
      HIDWORD(v159) = 0;
      HIDWORD(v173) = 0;
      integerValue = 0;
      v75 = 0;
      v74 = 0;
      v78 = 0;
      HIDWORD(v167) = 0;
      v79 = 0;
      v80 = 0;
      v24 = 0.0;
      v135 = 0.0;
      v141 = 0.0;
      v131 = 0.0;
      v180 = 0.0;
      v81 = 0.0;
      v20 = 0.0;
      v82 = 0.0;
      v19 = 0.0;
      v83 = 0.0;
      v84 = 0.0;
    }

    [(VCHistogram *)[(DownlinkSegment *)self framerate] addValue:v80];
    if (v75)
    {
      v86 = v74 / v75;
    }

    else
    {
      v86 = 0;
    }

    [(VCHistogram *)[(DownlinkSegment *)self videoResolution] addValue:v86];
    if (v77)
    {
      v87 = v24 * 1000.0 / v77;
    }

    else
    {
      v87 = 0.0;
    }

    [(VCHistogram *)[(DownlinkSegment *)self JBQSize] addValue:v87];
    [(DownlinkSegment *)self jitterBufferJumpSpikeCount];
    [OUTLINED_FUNCTION_30() setJitterBufferJumpSpikeCount:?];
    [(DownlinkSegment *)self jitterBufferSlopeSpikeCount];
    [OUTLINED_FUNCTION_30() setJitterBufferSlopeSpikeCount:?];
    [(VCHistogram *)[(DownlinkSegment *)self JBSpikeSizeDeltaHistogram] addValue:v131];
    [(DownlinkSegment *)self maxJitterBufferSpikeSizeDelta];
    if (v131 >= v88)
    {
      v88 = v131;
    }

    [(DownlinkSegment *)self setMaxJitterBufferSpikeSizeDelta:v88];
    [(VCHistogram *)[(DownlinkSegment *)self latency] addValue:(v87 + (t >> 1) + 90.0)];
    [(VCHistogram *)[(DownlinkSegment *)self WANVJBQSize] addValue:HIDWORD(v137)];
    maxJitterQueueSize = [(DownlinkSegment *)self maxJitterQueueSize];
    if (HIDWORD(v137) <= maxJitterQueueSize)
    {
      v90 = maxJitterQueueSize;
    }

    else
    {
      v90 = HIDWORD(v137);
    }

    [(DownlinkSegment *)self setMaxJitterQueueSize:v90];
    [(DownlinkSegment *)self setAverageJitterQueueSizeChanges:[(DownlinkSegment *)self averageJitterQueueSizeChanges]+ v139];
    [(DownlinkSegment *)self setAverageAudioErasuresRate:[(DownlinkSegment *)self averageAudioErasuresRate]+ HIDWORD(v139)];
    [(VCHistogram *)[(DownlinkSegment *)self timescaleRate] addValue:HIDWORD(v143)];
    [(VCHistogram *)[(DownlinkSegment *)self silenceTimescaleRate] addValue:v145];
    [(VCHistogram *)[(DownlinkSegment *)self speechTimescaleRate] addValue:HIDWORD(v145)];
    [(VCHistogram *)[(DownlinkSegment *)self jitterErasures] addValue:v147];
    [(VCHistogram *)[(DownlinkSegment *)self REDDiscardedCount] addValue:100 * v16 / [(MultiwaySegment *)self RTPeriod]];
    [(VCHistogram *)[(DownlinkSegment *)self REDPlayedCount] addValue:100 * HIDWORD(v147) / [(MultiwaySegment *)self RTPeriod]];
    [(DownlinkSegment *)self evictedFramesRecoveredCount];
    [OUTLINED_FUNCTION_30() setEvictedFramesRecoveredCount:?];
    [(DownlinkSegment *)self evictedFramesTrackedCount];
    [OUTLINED_FUNCTION_30() setEvictedFramesTrackedCount:?];
    [(DownlinkSegment *)self significantOOOPacketCount];
    [OUTLINED_FUNCTION_30() setSignificantOOOPacketCount:?];
    [(VCHistogram *)[(DownlinkSegment *)self REDErasureCompensationRate] addValue:v135];
    [(VCHistogram *)[(DownlinkSegment *)self maxREDFrameRecoveryDepth] addValue:HIDWORD(v151)];
    [(VCHistogram *)[(DownlinkSegment *)self REDReceivedCount] addValue:100 * v153 / [(MultiwaySegment *)self RTPeriod]];
    [(VCHistogram *)[(DownlinkSegment *)self REDOverhead] addValue:v141];
    [(DownlinkSegment *)self averageSpeechErasuresRate];
    [OUTLINED_FUNCTION_34() setAverageSpeechErasuresRate:?];
    [(DownlinkSegment *)self setVPLRAccumulator:[(DownlinkSegment *)self VPLRAccumulator]+ v155];
    [(VCHistogram *)[(DownlinkSegment *)self VPLR] addValue:v155];
    [(VCHistogram *)[(DownlinkSegment *)self speechErasures] addValue:HIDWORD(v157)];
    [(DownlinkSegment *)self speechErasureTotalTime];
    [OUTLINED_FUNCTION_34() setSpeechErasureTotalTime:?];
    [(VCHistogram *)[(DownlinkSegment *)self videoJitter] addValue:HIDWORD(v159)];
    [(DownlinkSegment *)self videoFrameDecodedButSkippedCounter];
    [OUTLINED_FUNCTION_30() setVideoFrameDecodedButSkippedCounter:?];
    [(DownlinkSegment *)self averageJitterErasuresRate];
    [(DownlinkSegment *)self setAverageJitterErasuresRate:v84 + v91];
    maxConsecutiveAudioErasures = [(DownlinkSegment *)self maxConsecutiveAudioErasures];
    if (maxConsecutiveAudioErasures <= v79)
    {
      v93 = v79;
    }

    else
    {
      v93 = maxConsecutiveAudioErasures;
    }

    [(DownlinkSegment *)self setMaxConsecutiveAudioErasures:v93];
    [(VCHistogram *)[(DownlinkSegment *)self maxConsAudioErasuresHistogram] addValue:v79];
    [(DownlinkSegment *)self totalFIRDemandCounter];
    [OUTLINED_FUNCTION_30() setTotalFIRDemandCounter:?];
    [(DownlinkSegment *)self totalFIRCount];
    [OUTLINED_FUNCTION_30() setTotalFIRCount:?];
    [(DownlinkSegment *)self totalFIRFailSafeCount];
    [OUTLINED_FUNCTION_30() setTotalFIRFailSafeCount:?];
    [(DownlinkSegment *)self videoFrameTotalIncompleteCounter];
    [OUTLINED_FUNCTION_30() setVideoFrameTotalIncompleteCounter:?];
    [(DownlinkSegment *)self lateFramesScheduledCount];
    [OUTLINED_FUNCTION_30() setLateFramesScheduledCount:?];
    [(DownlinkSegment *)self evictedFramesAverageLatePacketDelay];
    [(DownlinkSegment *)self setEvictedFramesAverageLatePacketDelay:v83 + v94];
    [(DownlinkSegment *)self evictedFramesAnalysisValidIntervals];
    [OUTLINED_FUNCTION_30() setEvictedFramesAnalysisValidIntervals:?];
    [(DownlinkSegment *)self evictedFramesMaxLatePacketDelay];
    if (v95 < v19)
    {
      v95 = v19;
    }

    [(DownlinkSegment *)self setEvictedFramesMaxLatePacketDelay:v95];
    [(VCHistogram *)[(DownlinkSegment *)self videoQualityScore] addValue:HIDWORD(v167)];
    if (HIDWORD(v169))
    {
      v96 = v169 / HIDWORD(v169);
    }

    else
    {
      v96 = 0;
    }

    [(MultiwaySegment *)self setMediaStallCount:[(MultiwaySegment *)self mediaStallCount]+ v96];
    [(DownlinkSegment *)self totalMediaStallTime];
    [(DownlinkSegment *)self setTotalMediaStallTime:v82 + v97];
    [(VCHistogram *)[(DownlinkSegment *)self mediaStall] addValue:(v82 * 100.0)];
    [(DownlinkSegment *)self maxMediaStallTime];
    if (v20 >= v98)
    {
      v98 = v20;
    }

    [(DownlinkSegment *)self setMaxMediaStallTime:v98];
    [(DownlinkSegment *)self averageTotalVideoRecvBitrate];
    [(DownlinkSegment *)self setAverageTotalVideoRecvBitrate:v81 + v99];
    [(DownlinkSegment *)self timeWeightedJitterQueueSize];
    [(DownlinkSegment *)self setTimeWeightedJitterQueueSize:v180 + v100];
    [(DownlinkSegment *)self idrReceivedCount];
    [OUTLINED_FUNCTION_30() setIdrReceivedCount:?];
    [(DownlinkSegment *)self setEnhancedJBAdaptationsEnabled:integerValue];
    [(DownlinkSegment *)self lateKeyFrameAssembledCount];
    [OUTLINED_FUNCTION_34() setLateKeyFrameAssembledCount:?];
    [(DownlinkSegment *)self latePFrameAssembledCount];
    [OUTLINED_FUNCTION_34() setLatePFrameAssembledCount:?];
    v101 = HIDWORD(v173) - v78;
    if (HIDWORD(v173) >= v78)
    {
      jBQSizeDeltaVidLarger = [(DownlinkSegment *)self JBQSizeDeltaVidLarger];
    }

    else
    {
      v101 = v78 - HIDWORD(v173);
      jBQSizeDeltaVidLarger = [(DownlinkSegment *)self JBQSizeDeltaAudLarger];
    }

    [(VCHistogram *)jBQSizeDeltaVidLarger addValue:v101];
    [(DownlinkSegment *)self abnormalBPL];
    [objc_msgSend(telemetryCopy objectForKeyedSubscript:{@"WRBPL", "integerValue"}];
    [OUTLINED_FUNCTION_40() addValue:?];
    [(DownlinkSegment *)self abnormalPLR];
    [objc_msgSend(telemetryCopy objectForKeyedSubscript:{@"PLR", "integerValue"}];
    [OUTLINED_FUNCTION_40() addValue:?];
    [(DownlinkSegment *)self abnormalRTT];
    [objc_msgSend(telemetryCopy objectForKeyedSubscript:{@"WRRTT", "integerValue"}];
    [OUTLINED_FUNCTION_40() addValue:?];
  }

  v103 = *MEMORY[0x277D85DE8];
}

- (void)processNetworkQualityUpdatedWithStatus:(unsigned int)status forParticipant:(id)participant timestamp:(double)timestamp
{
  OUTLINED_FUNCTION_58();
  v23 = *MEMORY[0x277D85DE8];
  if (v5[366] != v6)
  {
    v9 = v8;
    v10 = v6;
    v11 = v5;
    v12 = [v5 callStatsForParticipant:v7 andTime:?];
    streamGroupStats = [v12 streamGroupStats];
    OUTLINED_FUNCTION_65();
    v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(streamGroupStats);
          }

          v19 = [v12 statsForStreamGroup:*(8 * i)];
          [v19 videoDegradedStartTimePerReason];
          if (v20 > 0.0)
          {
            [v19 videoDegradedStartTimePerReason];
            [objc_msgSend(v19 "videoDegradedDurationPerReason")];
          }
        }

        OUTLINED_FUNCTION_65();
        v16 = [streamGroupStats countByEnumeratingWithState:? objects:? count:?];
      }

      while (v16);
    }

    v11[366] = v10;
  }

  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_57();
}

- (void)callStatsForParticipant:(void *)a1 andTime:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *a1 = 0;
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateRxAudioStatsWithPayload:streamGroupStats:.cold.1()
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

- (void)accumulateVideoPerStreamGroupStats:streamGroupStats:.cold.1()
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

- (void)accumulateVideoPerStreamGroupStats:streamGroupStats:.cold.2()
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

- (void)accumulateAudioPerStreamGroupStats:streamGroupStats:.cold.1()
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

- (void)accumulateAudioPerStreamGroupStats:streamGroupStats:.cold.2()
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

- (void)accumulateRTXPerStreamGroupStats:streamGroupStats:streamGroup:.cold.1()
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

- (void)accumulateRTXPerStreamGroupStats:streamGroupStats:streamGroup:.cold.2()
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