@interface DownlinkSegment
- (id)callStatsForParticipant:(id)a3 andTime:(double)a4;
- (id)segmentReport:(double)a3;
- (void)accumulateAudioPerStreamGroupStats:(id)a3 streamGroupStats:(id)a4;
- (void)accumulateRTXPerStreamGroupStats:(id)a3 streamGroupStats:(id)a4 streamGroup:(id)a5;
- (void)accumulateVideoPerStreamGroupStats:(id)a3 streamGroupStats:(id)a4;
- (void)addCellByteCountStats:(id)a3;
- (void)addCelltechTelemetryToDictionary:(id)a3;
- (void)addDownlinkParticipantStats:(id)a3 currentTime:(double)a4;
- (void)addNetworkCapabilityInfoToSegmentReport:(id)a3;
- (void)addPerStreamGroupStats:(id)a3 timestamp:(double)a4;
- (void)calculateDownlinkTelemetry:(id)a3 downlinkRTT:(unsigned int)a4;
- (void)calculateStreamTelemetry:(id)a3 AndReceiveRate:(unsigned int *)a4;
- (void)dealloc;
- (void)finalizeVideoStreamGroupStats:(id)a3 timestamp:(double)a4;
- (void)processAudioErasureValue:(unsigned int)a3;
- (void)processAudioErasureValueAlt:(unsigned int)a3;
- (void)processAudioStreamData:(id)a3 streamGroupStats:(id)a4;
- (void)processNetworkQualityUpdatedWithStatus:(unsigned int)a3 forParticipant:(id)a4 timestamp:(double)a5;
- (void)processRTEvent:(id)a3 now:(double)a4;
- (void)processRTXStreamData:(id)a3 streamGroupStats:(id)a4;
- (void)processStreamData:(id)a3 forParticipant:(id)a4 streamGroup:(id)a5 withTime:(double)a6;
- (void)processVTPEgressIngressTelemetry:(id)a3;
- (void)processVideoStreamData:(id)a3 streamGroupStats:(id)a4;
- (void)reportAudioPerStreamGroupStats:(id)a3 streamGroup:(id)a4 accumulatedStreamGroupStats:(id)a5;
- (void)reportRTXPerStreamGroupStats:(id)a3 streamGroup:(id)a4 accumulatedStreamGroupStats:(id)a5;
- (void)reportVideoPerStreamGroupStats:(id)a3 streamGroup:(id)a4 accumulatedStreamGroupStats:(id)a5;
- (void)resetVideoDegradedForAllParticipants:(double)a3;
- (void)setCurrentThermalLevel:(int)a3 withTime:(double)a4;
- (void)updateDownlinkSegmentStats:(id)a3 withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)a4;
- (void)updateMinimumAndMaximumAVSyncOffset:(id)a3 streamGroupStats:(id)a4;
- (void)updateRxAudioStatsWithPayload:(id)a3 streamGroupStats:(id)a4;
@end

@implementation DownlinkSegment

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownlinkSegment;
  [(MultiwaySegment *)&v3 dealloc];
}

- (void)processAudioErasureValue:(unsigned int)a3
{
  [(VCHistogram *)self->_audioErasures addValue:?];
  self->_averageAudioErasuresSum = self->_averageAudioErasuresSum + a3;
  self->_averageAudioErasuresCounter = self->_averageAudioErasuresCounter + 1.0;
}

- (void)processAudioErasureValueAlt:(unsigned int)a3
{
  [(VCHistogram *)self->_audioErasuresAlt addValue:?];
  self->_averageAudioErasuresSumAlt = self->_averageAudioErasuresSumAlt + a3;
  self->_averageAudioErasuresCounterAlt = self->_averageAudioErasuresCounterAlt + 1.0;
}

- (id)callStatsForParticipant:(id)a3 andTime:(double)a4
{
  if ([a3 isEqualToString:self->super._localParticipantID])
  {
    [DownlinkSegment callStatsForParticipant:? andTime:?];
    return v9;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_downlinkParticipantStats objectForKeyedSubscript:a3];
    if (!v7)
    {
      v7 = [[DownlinkParticipantStats alloc] initWithThermalLevel:self->super.super._currentThermalLevel andTime:a4];
      [(NSMutableDictionary *)self->_downlinkParticipantStats setObject:v7 forKeyedSubscript:a3];
    }
  }

  return v7;
}

- (void)resetVideoDegradedForAllParticipants:(double)a3
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
            -[DownlinkSegment processVideoDegraded:forParticipant:streamGroup:timestamp:](self, "processVideoDegraded:forParticipant:streamGroup:timestamp:", 0, v9, [MEMORY[0x277CCABA8] numberWithInt:v10], a3);
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

- (void)setCurrentThermalLevel:(int)a3 withTime:(double)a4
{
  v17 = *MEMORY[0x277D85DE8];
  self->super.super._currentThermalLevel = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->_downlinkParticipantStats allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [objc_msgSend(*(*(&v12 + 1) + 8 * v10++) "mlEnhance")];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(VCDurationHistogram *)self->_pipThermalDurations switchBucket:self->super.super._currentThermalLevel currentTime:a4];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateMinimumAndMaximumAVSyncOffset:(id)a3 streamGroupStats:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"AVSyncOffsetMax", "integerValue"}];
  v7 = [a4 maxAVSyncOffset];
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  [a4 setMaxAVSyncOffset:v8];
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{@"AVSyncOffsetMin", "integerValue"}];
  v10 = [a4 minAVSyncOffset];
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  [a4 setMinAVSyncOffset:v11];
}

- (void)processVideoStreamData:(id)a3 streamGroupStats:(id)a4
{
  v7 = [a3 objectForKeyedSubscript:@"VST"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
    [a4 lastReceivedVideoStallTime];
    if (v9 == v10)
    {
      [a4 currentStallTime];
      if (v15 != 0.0)
      {
        [a4 currentStallTime];
        v17 = v16;
        [a4 currentStallTime];
        if (v18 > 0.5)
        {
          [a4 setSignificantVideoStallCount:{objc_msgSend(a4, "significantVideoStallCount") + 1}];
        }

        [a4 currentStallTime];
        v20 = v19;
        [a4 videoStalledTotalTime];
        [a4 setVideoStalledTotalTime:v20 + v21];
        [a4 currentStallTime];
        v23 = v22;
        [a4 videoStalledMaxLength];
        if (v23 >= v24)
        {
          v24 = v23;
        }

        [a4 setVideoStalledMaxLength:v24];
        [a4 setCurrentStallTime:0.0];
        v14 = (v17 * 100.0);
        goto LABEL_11;
      }
    }

    else
    {
      [a4 lastReceivedVideoStallTime];
      v12 = v9 - v11;
      [a4 currentStallTime];
      [a4 setCurrentStallTime:v13 + v12];
      [a4 setLastReceivedVideoStallTime:v9];
    }

    v14 = 0;
LABEL_11:
    [objc_msgSend(a4 "videoStall")];
  }

  [a4 setVideoFrameReceivedCounter:{objc_msgSend(a4, "videoFrameReceivedCounter") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VFRxCnt", "intValue")}];
  [a4 setVideoFrameExpectedCounter:{objc_msgSend(a4, "videoFrameExpectedCounter") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VFExCnt", "intValue")}];
  [a4 setIdrReceivedCount:{objc_msgSend(a4, "idrReceivedCount") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VRxIDRC", "intValue")}];
  [a4 setLateKeyFrameAssembledCount:{objc_msgSend(a4, "lateKeyFrameAssembledCount") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"LKFASC", "intValue")}];
  [a4 setLatePFrameAssembledCount:{objc_msgSend(a4, "latePFrameAssembledCount") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"LPFASC", "intValue")}];
  [a4 setAverageVideoBitrate:{objc_msgSend(a4, "averageVideoBitrate") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VRxR", "unsignedIntValue")}];
  [a4 setAverageVideoRxMediaBitrate:{objc_msgSend(a4, "averageVideoRxMediaBitrate") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VRxMR", "unsignedIntValue")}];
  [a4 setAverageVideoRxDecoderMediaBitrate:{objc_msgSend(a4, "averageVideoRxDecoderMediaBitrate") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VRxDMR", "unsignedIntValue")}];
  [a4 setAverageVideoRxFecBitrate:{objc_msgSend(a4, "averageVideoRxFecBitrate") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VRFECRxR", "unsignedIntValue")}];
  [a4 setPacketLossRateAccumulator:{objc_msgSend(a4, "packetLossRateAccumulator") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VRxPLR", "unsignedIntValue")}];
  [a4 setAverageMetadataRxBitrate:{objc_msgSend(a4, "averageMetadataRxBitrate") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VRxMetadataOverhead", "unsignedIntValue")}];
  [a4 setVideoPlayerDecodeAlarmCount:{objc_msgSend(a4, "videoPlayerDecodeAlarmCount") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VPDECAC", "unsignedIntValue")}];
  [a4 setVideoPlayerDisplayAlarmCount:{objc_msgSend(a4, "videoPlayerDisplayAlarmCount") + objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"VPDISAC", "unsignedIntValue")}];
  v25 = [a3 objectForKeyedSubscript:@"VSTCNT"];
  if (v25)
  {
    [a4 setMaxVideoStallCount:{fmax(objc_msgSend(a4, "maxVideoStallCount"), objc_msgSend(v25, "intValue"))}];
  }

  v26 = [a3 objectForKeyedSubscript:@"NRFr"];
  if (v26)
  {
    [a4 setMinVideoFrameRate:{fmin(objc_msgSend(a4, "minVideoFrameRate"), objc_msgSend(v26, "intValue"))}];
  }

  [objc_msgSend(a3 objectForKeyedSubscript:{@"VJ", "doubleValue"}];
  v28 = v27;
  [a4 averageJitterQueueSize];
  [a4 setAverageJitterQueueSize:v28 + v29];
  v30 = [a3 objectForKeyedSubscript:@"AVSyncOffset"];
  if ([a3 objectForKeyedSubscript:@"VCSPUUID"] && v30)
  {
    [a4 setAvSyncOffsetSum:{objc_msgSend(a4, "avSyncOffsetSum") + objc_msgSend(v30, "integerValue")}];
    [a4 setAvSyncOffsetSamplesCount:{objc_msgSend(a4, "avSyncOffsetSamplesCount") + 1}];
    [(DownlinkSegment *)self updateMinimumAndMaximumAVSyncOffset:a3 streamGroupStats:a4];
  }

  [a4 processMLStreamData:a3];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}] == 2)
  {
    [a4 videoDegradedStartTime];
    if (v31 == 0.0)
    {
      [a4 lastVideoDegradedTime];
      if (v32 == 0.0)
      {
        v34 = 0;
      }

      else
      {
        [a4 lastVideoDegradedTime];
        v34 = (v33 / [(MultiwaySegment *)self RTPeriod]);
      }

      [objc_msgSend(a4 "poorConnection")];
      [a4 setLastVideoDegradedTime:0.0];
    }

    else
    {
      [objc_msgSend(a4 "poorConnection")];
    }
  }

  v35 = [a3 objectForKeyedSubscript:@"RTPDownlinkIngressVideoPkts"];
  if (v35)
  {
    [a4 setTotalRTPDownlinkIngressVideoPackets:{objc_msgSend(a4, "totalRTPDownlinkIngressVideoPackets") + objc_msgSend(v35, "unsignedIntegerValue")}];
  }

  v36 = [a3 objectForKeyedSubscript:@"RTPDownlinkEgressVideoPkts"];
  if (v36)
  {
    [a4 setTotalRTPDownlinkEgressVideoPackets:{objc_msgSend(a4, "totalRTPDownlinkEgressVideoPackets") + objc_msgSend(v36, "unsignedIntegerValue")}];
  }

  v37 = [a3 objectForKeyedSubscript:@"RTPDownlinkIngressNonDupMediaPkts"];
  if (v37)
  {
    [a4 setTotalRTPDownlinkIngressNonDupVideoPackets:{objc_msgSend(a4, "totalRTPDownlinkIngressNonDupVideoPackets") + objc_msgSend(v37, "unsignedIntegerValue")}];
  }

  [(SegmentStatsDelegate *)self->super._delegate updateLateFrameStatsForHistogram:self->_evictedFramesLatePacketDelayHist WithPayload:a3];
  [objc_msgSend(a4 "videoPlayerDisplayData")];
  [objc_msgSend(a4 "videoPlayerAVHostTimeDelta")];
  v38 = [a4 videoPlayerAVSyncOffsetData];

  [v38 updateWithPayload:a3];
}

- (void)updateRxAudioStatsWithPayload:(id)a3 streamGroupStats:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [a3 componentsSeparatedByString:@";"];
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
          if (([objc_msgSend(a4 "rxAudioCodecPayload")] & 1) == 0)
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

            [objc_msgSend(a4 "rxAudioCodecPayload")];
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

- (void)processAudioStreamData:(id)a3 streamGroupStats:(id)a4
{
  v7 = [a3 objectForKeyedSubscript:@"FrameErasureRate"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8 * [(MultiwaySegment *)self RTPeriod];
    if (v9 != 0.0)
    {
      [a4 totalAudioErasureTime];
      [a4 setTotalAudioErasureTime:v9 + v10];
      [a4 setAudioErasureCount:{objc_msgSend(a4, "audioErasureCount") + 1}];
    }
  }

  v11 = [a3 objectForKeyedSubscript:@"FrameErasureCount"];
  if (v11)
  {
    v12 = v11;
    v13 = [a4 maxAudioErasureCount];
    [v12 doubleValue];
    [a4 setMaxAudioErasureCount:{fmax(v13, v14)}];
  }

  v15 = [a3 objectForKeyedSubscript:@"NJB"];
  [v15 doubleValue];
  if (v16 != 0.0)
  {
    [v15 doubleValue];
    v18 = v17;
    [a4 averageJitterBufferDelay];
    [a4 setAverageJitterBufferDelay:v18 + v19];
    [a4 setAverageJitterBufferDelayCount:{objc_msgSend(a4, "averageJitterBufferDelayCount") + 1}];
    v20 = [a4 JBTarget];
    [v15 doubleValue];
    [v20 addValue:v21];
  }

  v22 = [a3 objectForKeyedSubscript:@"UJBL"];
  if (v22)
  {
    [objc_msgSend(a4 "JBUnclippedTarget")];
  }

  v23 = [a3 objectForKeyedSubscript:@"EnhancedJBAdaptationsEnabled"];
  if (v23)
  {
    [a4 setEnhancedJBAdaptationsEnabled:{objc_msgSend(v23, "intValue")}];
  }

  v24 = [a3 objectForKeyedSubscript:@"JitterBufferTargetChanges"];
  if (v24)
  {
    v25 = v24;
    [a4 maxJBTargetSizeChanges];
    v27 = v26;
    [v25 doubleValue];
    [a4 setMaxJBTargetSizeChanges:{fmax(v27, v28)}];
    [v25 doubleValue];
    v30 = v29;
    [a4 avgJBTargetSizeChanges];
    [a4 setAvgJBTargetSizeChanges:v30 + v31];
    [a4 setAvgJBTargetSizeChangesCount:{objc_msgSend(a4, "avgJBTargetSizeChangesCount") + 1}];
  }

  v32 = [a3 objectForKeyedSubscript:@"ARxR"];
  if (v32)
  {
    [a4 setAverageAudioBitrate:{objc_msgSend(a4, "averageAudioBitrate") + objc_msgSend(v32, "unsignedIntValue")}];
  }

  v33 = [a3 objectForKeyedSubscript:@"AMRR"];
  if (v33)
  {
    [a4 setAverageAudioMediaBitrate:{objc_msgSend(a4, "averageAudioMediaBitrate") + objc_msgSend(v33, "unsignedIntValue")}];
  }

  v34 = [a3 objectForKeyedSubscript:@"ARxDecodeBitrate"];
  if (v34)
  {
    v35 = [v34 unsignedIntValue];
    [a4 averageAudioMediaRxDecodeBitrate];
    [a4 setAverageAudioMediaRxDecodeBitrate:v36 + v35];
  }

  v37 = [a3 objectForKeyedSubscript:@"RedRxBitrate"];
  if (v37)
  {
    [a4 setAverageAudioRedRxBitrate:{objc_msgSend(a4, "averageAudioRedRxBitrate") + objc_msgSend(v37, "unsignedIntValue")}];
  }

  v38 = [a3 objectForKey:@"Payload"];
  v39 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
  if (v38 && v39 == 2)
  {
    [(DownlinkSegment *)self updateRxAudioStatsWithPayload:v38 streamGroupStats:a4];
  }

  v40 = [a3 objectForKeyedSubscript:@"ARxPLR"];
  if (v40)
  {
    [a4 setPacketLossRateAccumulator:{objc_msgSend(a4, "packetLossRateAccumulator") + objc_msgSend(v40, "unsignedIntegerValue")}];
  }

  v41 = [a3 objectForKeyedSubscript:@"RTPDownlinkIngressAudioPkts"];
  if (v41)
  {
    [a4 setTotalRTPDownlinkIngressAudioPackets:{objc_msgSend(a4, "totalRTPDownlinkIngressAudioPackets") + objc_msgSend(v41, "unsignedIntegerValue")}];
  }

  v42 = [a3 objectForKeyedSubscript:@"RTPDownlinkIngressNonDupMediaPkts"];
  if (v42)
  {
    [a4 setTotalRTPDownlinkIngressNonDupAudioPackets:{objc_msgSend(a4, "totalRTPDownlinkIngressNonDupAudioPackets") + objc_msgSend(v42, "unsignedIntegerValue")}];
  }

  v43 = [a3 objectForKeyedSubscript:@"RTPDownlinkEgressAudioPkts"];
  if (v43)
  {
    v44 = [v43 unsignedIntegerValue];
    v45 = [a4 totalRTPDownlinkEgressAudioPackets] + v44;

    [a4 setTotalRTPDownlinkEgressAudioPackets:v45];
  }
}

- (void)processRTXStreamData:(id)a3 streamGroupStats:(id)a4
{
  v6 = [a3 objectForKeyedSubscript:@"NacksSent"];
  if (v6)
  {
    [a4 setNacksSent:{objc_msgSend(a4, "nacksSent") + objc_msgSend(v6, "intValue")}];
  }

  v7 = [a3 objectForKeyedSubscript:@"NacksFulfilled"];
  if (v7)
  {
    [a4 setNacksFulfilled:{objc_msgSend(a4, "nacksFulfilled") + objc_msgSend(v7, "intValue")}];
  }

  v8 = [a3 objectForKeyedSubscript:@"NacksFulfilledOnTime"];
  if (v8)
  {
    [a4 setNacksFulfilledOnTime:{objc_msgSend(a4, "nacksFulfilledOnTime") + objc_msgSend(v8, "intValue")}];
  }

  v9 = [a3 objectForKeyedSubscript:@"UniqueNacksSent"];
  if (v9)
  {
    [a4 setUniqueNacksSent:{objc_msgSend(a4, "uniqueNacksSent") + objc_msgSend(v9, "intValue")}];
  }

  v10 = [a3 objectForKeyedSubscript:@"NacksFrmsSchWithRTX"];
  if (v10)
  {
    v11 = [v10 intValue];
  }

  else
  {
    v11 = 0;
  }

  [a4 setLateFramesScheduledWithRTXCount:{objc_msgSend(a4, "lateFramesScheduledWithRTXCount") + v11}];
  v12 = [a3 objectForKeyedSubscript:@"NacksFrmsAssemWithRTX"];
  if (v12)
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = 0;
  }

  [a4 setAssembledFramesWithRTXPacketsCount:{objc_msgSend(a4, "assembledFramesWithRTXPacketsCount") + v13}];
  v14 = [a3 objectForKeyedSubscript:@"NacksFrmsFailedAssemWithRTX"];
  if (v14)
  {
    v15 = [v14 intValue];
  }

  else
  {
    v15 = 0;
  }

  [a4 setFailedToAssembleFramesWithRTXPacketsCount:{objc_msgSend(a4, "failedToAssembleFramesWithRTXPacketsCount") + v15}];
  v16 = [a3 objectForKeyedSubscript:@"DVFECnt"];
  if (v16)
  {
    v17 = [v16 intValue];
  }

  else
  {
    v17 = 0.0;
  }

  [a4 decodedVideoFrameEnqueueCounter];
  [a4 setDecodedVideoFrameEnqueueCounter:v17 + v18];
  v19 = [a3 objectForKeyedSubscript:@"VFEVTrCnt"];
  if (v19)
  {
    v20 = [v19 intValue];
  }

  else
  {
    v20 = 0;
  }

  [a4 setVideoFrameIncompleteNextTSCounter:{objc_msgSend(a4, "videoFrameIncompleteNextTSCounter") + v20}];
  v21 = [a3 objectForKeyedSubscript:@"NacksAvgResponseTime"];
  if (v21)
  {
    v22 = v21;
    v23 = [a4 nacksRTXResponseTime];
    [v22 doubleValue];
    [v23 addValue:(v24 * 1000.0)];
  }

  v25 = [a3 objectForKeyedSubscript:@"NacksLateTime"];
  if (v25)
  {
    v26 = v25;
    v27 = [a4 nacksRTXLateTime];
    [v26 doubleValue];
    [v27 addValue:(v28 * 1000.0)];
  }

  v29 = [a3 objectForKeyedSubscript:@"NacksMediaBitRate"];
  if (v29)
  {
    v30 = v29;
    v31 = [a4 nacksRTXMediaBitRate];
    [v30 doubleValue];
    [v31 addValue:v32];
  }

  v33 = [a3 objectForKeyedSubscript:@"NacksRTXMediaBitRate"];
  if (v33)
  {
    v34 = v33;
    v35 = [a4 nacksRTXRetransmittedMediaBitRate];
    [v34 doubleValue];
    [v35 addValue:v36];
  }

  v37 = [a3 objectForKeyedSubscript:@"NacksPLRWithRTX"];
  if (v37)
  {
    [objc_msgSend(a4 "nacksPLRWithRTX")];
  }

  v38 = [a3 objectForKeyedSubscript:@"NacksPLRWithoutRTX"];
  if (v38)
  {
    [objc_msgSend(a4 "nacksPLRWithoutRTX")];
  }

  [a4 setIsRTXTelemetryAvailable:1];
}

- (void)processStreamData:(id)a3 forParticipant:(id)a4 streamGroup:(id)a5 withTime:(double)a6
{
  v10 = [(DownlinkSegment *)self callStatsForParticipant:a4 andTime:a6];
  if (v10)
  {
    v11 = [v10 statsForStreamGroup:a5];
    if ([a5 unsignedIntValue] == 1 || objc_msgSend(a5, "unsignedIntValue") == 3 || objc_msgSend(a5, "unsignedIntValue") == 5 || objc_msgSend(a5, "unsignedIntValue") == 7 || objc_msgSend(a5, "unsignedIntValue") == 8 || objc_msgSend(a5, "unsignedIntValue") == 10)
    {
      [(DownlinkSegment *)self processVideoStreamData:a3 streamGroupStats:v11];
    }

    if ([a5 unsignedIntValue] == 2 || objc_msgSend(a5, "unsignedIntValue") == 4 || objc_msgSend(a5, "unsignedIntValue") == 6)
    {
      [(DownlinkSegment *)self processAudioStreamData:a3 streamGroupStats:v11];
    }

    if ([a3 objectForKeyedSubscript:@"NacksSent"] && objc_msgSend(a3, "objectForKeyedSubscript:", @"NacksFulfilled") && objc_msgSend(a3, "objectForKeyedSubscript:", @"NacksFulfilledOnTime"))
    {
      [(DownlinkSegment *)self processRTXStreamData:a3 streamGroupStats:v11];
    }

    if ([a3 objectForKeyedSubscript:@"UNRPC"] && objc_msgSend(a3, "objectForKeyedSubscript:", @"UNFPC") && objc_msgSend(a3, "objectForKeyedSubscript:", @"ULNACKCHCNT") && objc_msgSend(a3, "objectForKeyedSubscript:", @"ULNACKCMCNT") && objc_msgSend(a3, "objectForKeyedSubscript:", @"ULNACKNRCNT"))
    {
      [v11 setUplinkRTXTelemetryWithRealTimeStreamData:a3];
    }

    [v11 setTickCount:{objc_msgSend(v11, "tickCount") + 1}];
  }

  else
  {
    VRTraceGetErrorLogLevelForModule("");
  }

  if ([a4 isEqualToString:self->super._localParticipantID])
  {
    v12 = [(DownlinkParticipantStats *)self->_localParticipantStats_Deprecated statsForStreamGroup:a5];
    v13 = [v12 tickCount] + 1;

    [v12 setTickCount:v13];
  }
}

- (void)processVTPEgressIngressTelemetry:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"VTPDownlinkIngressMediaPkts"];
  if (v5)
  {
    self->_totalVTPDownlinkIngressMediaPackets += [v5 unsignedIntegerValue];
  }

  v6 = [a3 objectForKeyedSubscript:@"VTPDownlinkEgressMediaPkts"];
  if (v6)
  {
    self->_totalVTPDownlinkEgressMediaPackets += [v6 unsignedIntegerValue];
  }
}

- (void)processRTEvent:(id)a3 now:(double)a4
{
  if ([a3 objectForKeyedSubscript:@"WPRSZ"])
  {
    self->_averageWireReceiveBytes += [objc_msgSend(a3 objectForKeyedSubscript:{@"WPRSZ", "integerValue"}];
    ++self->_averageWireReceiveCounter;
  }

  [(MultiwaySegment *)self processRTEventCommon:a3 now:a4];

  [(DownlinkSegment *)self processVTPEgressIngressTelemetry:a3];
}

- (void)calculateStreamTelemetry:(id)a3 AndReceiveRate:(unsigned int *)a4
{
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}] == 2)
  {
    if ([a3 objectForKeyedSubscript:@"ARxR"])
    {
      *a4 += [objc_msgSend(a3 objectForKeyedSubscript:{@"ARxR", "integerValue"}];
    }

    if ([a3 objectForKeyedSubscript:@"VRxR"])
    {
      *a4 += [objc_msgSend(a3 objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    }

    [(SegmentStatsDelegate *)self->super._delegate updateVideoFECStatsOnSegment:a3 fecStats:[(MultiwaySegment *)self fecStatsHolder] segmentLossPattern:[(MultiwaySegment *)self lossPattern] segmentLossHistogram:[(MultiwaySegment *)self lossHistogram] segmentLossFecHistogram:[(MultiwaySegment *)self lossFecHistogram] direction:1];
    -[DownlinkSegment setVideoFrameNonFECCompleteCounter:](self, "setVideoFrameNonFECCompleteCounter:", -[DownlinkSegment videoFrameNonFECCompleteCounter](self, "videoFrameNonFECCompleteCounter") + [objc_msgSend(a3 objectForKeyedSubscript:{@"VNoFecCF", "integerValue"}]);
    -[DownlinkSegment setVideoFrameNonFECTotalCounter:](self, "setVideoFrameNonFECTotalCounter:", -[DownlinkSegment videoFrameNonFECTotalCounter](self, "videoFrameNonFECTotalCounter") + [objc_msgSend(a3 objectForKeyedSubscript:{@"VNoFecTF", "integerValue"}]);
    [(MultiwaySegment *)self processFrameSizeBasedFECTelemetry:a3 statsHolder:[(MultiwaySegment *)self fecStatsHolder] direction:1];
  }

  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}] == 1 && objc_msgSend(a3, "objectForKeyedSubscript:", @"VTxFECTime"))
  {
    v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"VTxFECTime", "integerValue"}];
    v8 = [(DownlinkSegment *)self fecProcessingTime]+ v7;

    [(DownlinkSegment *)self setFecProcessingTime:v8];
  }
}

- (void)addCellByteCountStats:(id)a3
{
  [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellRxDataBytes), 4, &unk_284FA5468), @"SCRXDB"}];
  [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellDupRxDataBytes), 4, &unk_284FA5468), @"SCDRXDB"}];
  [a3 setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalUsedCellBudgetRxDataBytes), 4, &unk_284FA5468), @"SUCBRXDB"}];
  v5 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalWifiRxDataBytes], 4, &unk_284FA5468);

  [a3 setObject:v5 forKeyedSubscript:@"SWRXDB"];
}

- (void)finalizeVideoStreamGroupStats:(id)a3 timestamp:(double)a4
{
  [a3 currentStallTime];
  v7 = v6;
  [a3 videoStalledTotalTime];
  [a3 setVideoStalledTotalTime:v7 + v8];
  [a3 currentStallTime];
  v10 = v9;
  [a3 videoStalledMaxLength];
  if (v10 >= v11)
  {
    v11 = v10;
  }

  [a3 setVideoStalledMaxLength:v11];
  [a3 setCurrentStallTime:0.0];
  [a3 videoDegradedStartTime];
  if (v12 != 0.0)
  {
    [a3 setVideoDegradedTotalCounter:{objc_msgSend(a3, "videoDegradedTotalCounter") + 1}];
    [a3 videoDegradedStartTime];
    v14 = a4 - v13;
    [a3 videoDegradedTotalTime];
    [a3 setVideoDegradedTotalTime:v15 + v14];
    [a3 videoDegradedMaxLength];
    if (v16 < v14)
    {
      v16 = v14;
    }

    [a3 setVideoDegradedMaxLength:v16];
    [a3 setVideoDegradedStartTime:0.0];
  }

  v17 = [a3 videoTierDurationData];

  [v17 finalize];
}

- (void)accumulateVideoPerStreamGroupStats:(id)a3 streamGroupStats:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [a3 setMaxVideoStallCount:{objc_msgSend(a3, "maxVideoStallCount") + objc_msgSend(a4, "maxVideoStallCount")}];
      [a4 videoStalledTotalTime];
      v8 = v7;
      [a3 videoStalledTotalTime];
      [a3 setVideoStalledTotalTime:v8 + v9];
      [a3 videoStalledMaxLength];
      v11 = v10;
      [a4 videoStalledMaxLength];
      if (v11 >= v12)
      {
        v12 = v11;
      }

      [a3 setVideoStalledMaxLength:v12];
      v13 = [a3 minVideoFrameRate];
      v14 = [a4 minVideoFrameRate];
      if (v13 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      [a3 setMinVideoFrameRate:v15];
      [a3 setVideoDegradedTotalCounter:{objc_msgSend(a3, "videoDegradedTotalCounter") + objc_msgSend(a4, "videoDegradedTotalCounter")}];
      [a4 videoDegradedTotalTime];
      v17 = v16;
      [a3 videoDegradedTotalTime];
      [a3 setVideoDegradedTotalTime:v17 + v18];
      [a3 videoDegradedMaxLength];
      v20 = v19;
      [a4 videoDegradedMaxLength];
      if (v20 >= v21)
      {
        v21 = v20;
      }

      [a3 setVideoDegradedMaxLength:v21];
      [objc_msgSend(a3 "videoDegradedDurationPerReason")];
      [a3 setVideoFrameReceivedCounter:{objc_msgSend(a3, "videoFrameReceivedCounter") + objc_msgSend(a4, "videoFrameReceivedCounter")}];
      [a3 setVideoFrameExpectedCounter:{objc_msgSend(a3, "videoFrameExpectedCounter") + objc_msgSend(a4, "videoFrameExpectedCounter")}];
      [a3 setIdrReceivedCount:{objc_msgSend(a3, "idrReceivedCount") + objc_msgSend(a4, "idrReceivedCount")}];
      [a3 setAverageVideoBitrate:{objc_msgSend(a3, "averageVideoBitrate") + objc_msgSend(a4, "averageVideoBitrate")}];
      [a3 setAverageVideoRxMediaBitrate:{objc_msgSend(a3, "averageVideoRxMediaBitrate") + objc_msgSend(a4, "averageVideoRxMediaBitrate")}];
      [a3 setAverageVideoRxDecoderMediaBitrate:{objc_msgSend(a3, "averageVideoRxDecoderMediaBitrate") + objc_msgSend(a4, "averageVideoRxDecoderMediaBitrate")}];
      [a3 setAverageVideoRxFecBitrate:{objc_msgSend(a3, "averageVideoRxFecBitrate") + objc_msgSend(a4, "averageVideoRxFecBitrate")}];
      [a3 setAverageMetadataRxBitrate:{objc_msgSend(a3, "averageMetadataRxBitrate") + objc_msgSend(a4, "averageMetadataRxBitrate")}];
      [a4 averageJitterQueueSize];
      v23 = v22;
      [a3 averageJitterQueueSize];
      [a3 setAverageJitterQueueSize:v23 + v24];
      [a4 decodedVideoFrameEnqueueCounter];
      v26 = v25;
      [a3 decodedVideoFrameEnqueueCounter];
      [a3 setDecodedVideoFrameEnqueueCounter:v26 + v27];
      [objc_msgSend(a3 "videoStall")];
      [objc_msgSend(a3 "poorConnection")];
      [objc_msgSend(a3 "mlEnhanceFramePercent")];
      for (i = 0; i != 4; ++i)
      {
        [objc_msgSend(objc_msgSend(a3 "mlEnhancedPercentInputResolutions")];
        [objc_msgSend(objc_msgSend(a3 "mlEnhancedPercentOutputResolutions")];
      }

      [a3 setTotalDecodedFrameCount:{objc_msgSend(a3, "totalDecodedFrameCount") + objc_msgSend(a4, "totalDecodedFrameCount")}];
      [a3 setLateKeyFrameAssembledCount:{objc_msgSend(a3, "lateKeyFrameAssembledCount") + objc_msgSend(a4, "lateKeyFrameAssembledCount")}];
      [a3 setLatePFrameAssembledCount:{objc_msgSend(a3, "latePFrameAssembledCount") + objc_msgSend(a4, "latePFrameAssembledCount")}];
      if ([a4 tickCount])
      {
        v29 = [a4 videoFrameIncompleteNextTSCounter] * 1000.0;
        v30 = [a4 tickCount];
        v31 = v29 / ([(MultiwaySegment *)self RTPeriod]* v30);
      }

      else
      {
        v31 = 0.0;
      }

      [a3 totalVideoFrameIncompleteNextTSRate];
      [a3 setTotalVideoFrameIncompleteNextTSRate:v31 + v32];
      [a3 setTotalRTPDownlinkIngressVideoPackets:{objc_msgSend(a3, "totalRTPDownlinkIngressVideoPackets") + objc_msgSend(a4, "totalRTPDownlinkIngressVideoPackets")}];
      [a3 setTotalRTPDownlinkIngressNonDupVideoPackets:{objc_msgSend(a3, "totalRTPDownlinkIngressNonDupVideoPackets") + objc_msgSend(a4, "totalRTPDownlinkIngressNonDupVideoPackets")}];
      [a3 setTotalRTPDownlinkEgressVideoPackets:{objc_msgSend(a3, "totalRTPDownlinkEgressVideoPackets") + objc_msgSend(a4, "totalRTPDownlinkEgressVideoPackets")}];
      [a3 setVideoPlayerDecodeAlarmCount:{objc_msgSend(a3, "videoPlayerDecodeAlarmCount") + objc_msgSend(a4, "videoPlayerDecodeAlarmCount")}];
      [a3 setVideoPlayerDisplayAlarmCount:{objc_msgSend(a3, "videoPlayerDisplayAlarmCount") + objc_msgSend(a4, "videoPlayerDisplayAlarmCount")}];
      [objc_msgSend(a3 "videoPlayerAVHostTimeDelta")];
      [objc_msgSend(a3 "videoPlayerAVSyncOffsetData")];
      if ([a4 avSyncOffsetSamplesCount])
      {
        [a3 setAvSyncOffsetSamplesCount:{objc_msgSend(a3, "avSyncOffsetSamplesCount") + objc_msgSend(a4, "avSyncOffsetSamplesCount")}];
        [a3 setAvSyncOffsetSum:{objc_msgSend(a3, "avSyncOffsetSum") + objc_msgSend(a4, "avSyncOffsetSum")}];
        if ([a4 minAVSyncOffset] != 0x7FFFFFFF)
        {
          v33 = [a3 minAVSyncOffset];
          v34 = [a4 minAVSyncOffset];
          if (v33 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v33;
          }

          [a3 setMinAVSyncOffset:v35];
        }

        if ([a4 maxAVSyncOffset] != 0x80000000)
        {
          v36 = [a3 maxAVSyncOffset];
          v37 = [a4 maxAVSyncOffset];
          if (v36 >= v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v36;
          }

          [a3 setMaxAVSyncOffset:v38];
        }
      }

      [objc_msgSend(a3 "videoPlayerDisplayData")];
      [objc_msgSend(a3 "videoTierDurationData")];
      [a3 setPacketLossRateAccumulator:{objc_msgSend(a3, "packetLossRateAccumulator") + objc_msgSend(a4, "packetLossRateAccumulator")}];
      v39 = [a4 firReceivedCount];
      v40 = [a3 firReceivedCount] + v39;

      [a3 setFirReceivedCount:v40];
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

- (void)accumulateAudioPerStreamGroupStats:(id)a3 streamGroupStats:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [a3 setAudioErasureCount:{objc_msgSend(a3, "audioErasureCount") + objc_msgSend(a4, "audioErasureCount")}];
      [a4 totalAudioErasureTime];
      v7 = v6;
      [a3 totalAudioErasureTime];
      [a3 setTotalAudioErasureTime:v7 + v8];
      v9 = [a3 maxAudioErasureCount];
      v10 = [a4 maxAudioErasureCount];
      if (v9 <= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      [a3 setMaxAudioErasureCount:v11];
      [a3 setAverageJitterBufferDelayCount:{objc_msgSend(a3, "averageJitterBufferDelayCount") + objc_msgSend(a4, "averageJitterBufferDelayCount")}];
      [a4 averageJitterBufferDelay];
      v13 = v12;
      [a3 averageJitterBufferDelay];
      [a3 setAverageJitterBufferDelay:v13 + v14];
      [a3 maxJBTargetSizeChanges];
      v16 = v15;
      [a4 maxJBTargetSizeChanges];
      if (v16 >= v17)
      {
        v17 = v16;
      }

      [a3 setMaxJBTargetSizeChanges:v17];
      [a3 setAvgJBTargetSizeChangesCount:{objc_msgSend(a3, "avgJBTargetSizeChangesCount") + objc_msgSend(a4, "avgJBTargetSizeChangesCount")}];
      [a4 avgJBTargetSizeChanges];
      v19 = v18;
      [a3 avgJBTargetSizeChanges];
      [a3 setAvgJBTargetSizeChanges:v19 + v20];
      [objc_msgSend(a3 "JBTarget")];
      [objc_msgSend(a3 "JBUnclippedTarget")];
      [a3 setAverageAudioBitrate:{objc_msgSend(a3, "averageAudioBitrate") + objc_msgSend(a4, "averageAudioBitrate")}];
      [a3 setAverageAudioMediaBitrate:{objc_msgSend(a3, "averageAudioMediaBitrate") + objc_msgSend(a4, "averageAudioMediaBitrate")}];
      [a3 setAverageAudioRedRxBitrate:{objc_msgSend(a3, "averageAudioRedRxBitrate") + objc_msgSend(a4, "averageAudioRedRxBitrate")}];
      [a3 setPacketLossRateAccumulator:{objc_msgSend(a3, "packetLossRateAccumulator") + objc_msgSend(a3, "packetLossRateAccumulator")}];
      [a3 setTotalRTPDownlinkIngressAudioPackets:{objc_msgSend(a3, "totalRTPDownlinkIngressAudioPackets") + objc_msgSend(a4, "totalRTPDownlinkIngressAudioPackets")}];
      [a3 setTotalRTPDownlinkIngressNonDupAudioPackets:{objc_msgSend(a3, "totalRTPDownlinkIngressNonDupAudioPackets") + objc_msgSend(a4, "totalRTPDownlinkIngressNonDupAudioPackets")}];
      [a3 setTotalRTPDownlinkEgressAudioPackets:{objc_msgSend(a3, "totalRTPDownlinkEgressAudioPackets") + objc_msgSend(a4, "totalRTPDownlinkEgressAudioPackets")}];
      [objc_msgSend(a3 "rxAudioCodecPayload")];
      v21 = [a3 enhancedJBAdaptationsEnabled];
      v22 = [a4 enhancedJBAdaptationsEnabled];
      if (v21 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      [a3 setEnhancedJBAdaptationsEnabled:v23];
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

- (void)accumulateRTXPerStreamGroupStats:(id)a3 streamGroupStats:(id)a4 streamGroup:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      [a3 setNacksSent:{objc_msgSend(a3, "nacksSent") + objc_msgSend(a4, "nacksSent")}];
      [a3 setNacksFulfilled:{objc_msgSend(a3, "nacksFulfilled") + objc_msgSend(a4, "nacksFulfilled")}];
      [a3 setUniqueNacksSent:{objc_msgSend(a3, "uniqueNacksSent") + objc_msgSend(a4, "uniqueNacksSent")}];
      [a3 setNacksFulfilledOnTime:{objc_msgSend(a3, "nacksFulfilledOnTime") + objc_msgSend(a4, "nacksFulfilledOnTime")}];
      [a3 setLateFramesScheduledWithRTXCount:{objc_msgSend(a3, "lateFramesScheduledWithRTXCount") + objc_msgSend(a4, "lateFramesScheduledWithRTXCount")}];
      [a3 setAssembledFramesWithRTXPacketsCount:{objc_msgSend(a3, "assembledFramesWithRTXPacketsCount") + objc_msgSend(a4, "assembledFramesWithRTXPacketsCount")}];
      [a3 setFailedToAssembleFramesWithRTXPacketsCount:{objc_msgSend(a3, "failedToAssembleFramesWithRTXPacketsCount") + objc_msgSend(a4, "failedToAssembleFramesWithRTXPacketsCount")}];
      [objc_msgSend(a3 "nacksRTXResponseTime")];
      [objc_msgSend(a3 "nacksRTXLateTime")];
      [objc_msgSend(a3 "nacksRTXMediaBitRate")];
      [objc_msgSend(a3 "nacksRTXRetransmittedMediaBitRate")];
      [objc_msgSend(a3 "nacksPLRWithRTX")];
      v7 = [a3 nacksPLRWithoutRTX];
      v8 = [a4 nacksPLRWithoutRTX];

      [v7 merge:v8];
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

- (void)reportVideoPerStreamGroupStats:(id)a3 streamGroup:(id)a4 accumulatedStreamGroupStats:(id)a5
{
  v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VSTCNT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "maxVideoStallCount")), v9}];
  v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"FIRRCVDC", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "firReceivedCount")), v10}];
  v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TVST", a4];
  v12 = MEMORY[0x277CCABA8];
  [a5 videoStalledTotalTime];
  [a3 setObject:objc_msgSend(v12 forKeyedSubscript:{"numberWithUnsignedInt:", (v13 * 1000.0)), v11}];
  LODWORD(v11) = self->super._adjustedDuration;
  v14 = [(MultiwaySegment *)self RTPeriod]* v11;
  [a5 videoStalledTotalTime];
  v15 = v14;
  if (v16 <= v14)
  {
    [a5 videoStalledTotalTime];
    v15 = v17;
  }

  v18 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TVSP", a4];
  if (v14)
  {
    v19 = (v15 / v14 * 10000.0);
  }

  else
  {
    v19 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v19), v18}];
  v20 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MVSI", a4];
  v21 = MEMORY[0x277CCABA8];
  [a5 videoStalledMaxLength];
  [a3 setObject:objc_msgSend(v21 forKeyedSubscript:{"numberWithUnsignedInt:", (v22 * 100.0)), v20}];
  v23 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MNVFR", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "minVideoFrameRate")), v23}];
  v24 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"PCSWCNT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "videoDegradedTotalCounter")), v24}];
  v25 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TPCT", a4];
  v26 = MEMORY[0x277CCABA8];
  [a5 videoDegradedTotalTime];
  [a3 setObject:objc_msgSend(v26 forKeyedSubscript:{"numberWithUnsignedInt:", (v27 * 1000.0)), v25}];
  v28 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"PCONP", a4];
  adjustedDuration = self->super._adjustedDuration;
  if (adjustedDuration)
  {
    [a5 videoDegradedTotalTime];
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

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v32), v28}];
  v33 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"SPCONMAXLEN", a4];
  v34 = MEMORY[0x277CCABA8];
  [a5 videoDegradedMaxLength];
  [a3 setObject:objc_msgSend(v34 forKeyedSubscript:{"numberWithUnsignedInt:", (v35 * 1000.0)), v33}];
  v36 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"SPCONP", a4];
  if (self->super._adjustedDuration)
  {
    [a5 videoDegradedTotalTime];
    v38 = self->super._adjustedDuration;
    v39 = (v37 * 100.0 / ([(MultiwaySegment *)self RTPeriod]* v38));
  }

  else
  {
    v39 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v39), v36}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"videoStall"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"SVSH", a4)}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"poorConnection"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"PCON", a4)}];
  if ([a5 videoDegradedTotalCounter])
  {
    [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"videoDegradedDurationPerReason"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"VDDPR", a4)}];
  }

  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"mlEnhanceFramePercent"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"MLFCP", a4)}];
  for (i = 0; i != 4; ++i)
  {
    [a3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"mlEnhancedPercentInputResolutions"), "objectAtIndexedSubscript:", i), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%d", @"MLRIFP", a4, i)}];
    [a3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"mlEnhancedPercentOutputResolutions"), "objectAtIndexedSubscript:", i), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%d", @"MLROFP", a4, i)}];
  }

  v41 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPBINTSER", a4];
  v42 = MEMORY[0x277CCABA8];
  [a5 totalVideoFrameIncompleteNextTSRate];
  [a3 setObject:objc_msgSend(v42 forKeyedSubscript:{"numberWithUnsignedInt:", v43), v41}];
  v44 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"IDRRCVDC", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "idrReceivedCount")), v44}];
  v45 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPDECAC", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "videoPlayerDecodeAlarmCount")), v45}];
  v46 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPDISAC", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "videoPlayerDisplayAlarmCount")), v46}];
  if (![a5 tickCount] || !self->super._adjustedDuration)
  {
    goto LABEL_118;
  }

  v47 = @"VRRFR";
  if (!a4)
  {
    goto LABEL_23;
  }

  v48 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRRFR", a4];
  if (!v48)
  {
    goto LABEL_25;
  }

  v47 = v48;
  if (!self->super._adjustedDuration)
  {
    v51 = 0;
  }

  else
  {
LABEL_23:
    v49 = [a5 videoFrameReceivedCounter] * 1000.0;
    v50 = self->super._adjustedDuration;
    v51 = (v49 / ([(MultiwaySegment *)self RTPeriod]* v50));
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v51), v47}];
  if (!a4)
  {
    v52 = @"VRExFR";
    goto LABEL_28;
  }

LABEL_25:
  v52 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRExFR", a4];
  if (!v52)
  {
    goto LABEL_32;
  }

LABEL_28:
  if (self->super._adjustedDuration)
  {
    v53 = [a5 videoFrameExpectedCounter] * 1000.0;
    v54 = self->super._adjustedDuration;
    v55 = (v53 / ([(MultiwaySegment *)self RTPeriod]* v54));
  }

  else
  {
    v55 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v55), v52}];
  if (a4)
  {
LABEL_32:
    v56 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VREFR", a4];
    if (!v56)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v56 = @"VREFR";
LABEL_35:
  if (self->super._adjustedDuration)
  {
    [a5 decodedVideoFrameEnqueueCounter];
    v58 = self->super._adjustedDuration;
    v59 = (v57 * 1000.0 / ([(MultiwaySegment *)self RTPeriod]* v58));
  }

  else
  {
    v59 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v59), v56}];
  if (!a4)
  {
    v60 = @"IDRRCVDR";
    goto LABEL_42;
  }

LABEL_39:
  v60 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"IDRRCVDR", a4];
  if (!v60)
  {
    goto LABEL_46;
  }

LABEL_42:
  if (self->super._adjustedDuration)
  {
    v61 = [a5 idrReceivedCount] * 1000.0;
    v62 = self->super._adjustedDuration;
    v63 = (v61 / ([(MultiwaySegment *)self RTPeriod]* v62));
  }

  else
  {
    v63 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v63), v60}];
  if (a4)
  {
LABEL_46:
    v64 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"FIRRCVDR", a4];
    if (!v64)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v64 = @"FIRRCVDR";
LABEL_49:
  if (self->super._adjustedDuration)
  {
    v65 = [a5 firReceivedCount] * 1000.0;
    v66 = self->super._adjustedDuration;
    v67 = (v65 / ([(MultiwaySegment *)self RTPeriod]* v66));
  }

  else
  {
    v67 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v67), v64}];
  if (!a4)
  {
    v68 = @"AVTRBR";
    goto LABEL_56;
  }

LABEL_53:
  v68 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVTRBR", a4];
  if (!v68)
  {
    goto LABEL_60;
  }

LABEL_56:
  if (self->super._adjustedDuration)
  {
    v69 = [a5 averageVideoBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v69 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v69), v68}];
  if (a4)
  {
LABEL_60:
    v70 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVMRBR", a4];
    if (!v70)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  v70 = @"AVMRBR";
LABEL_63:
  if (self->super._adjustedDuration)
  {
    v71 = [a5 averageVideoRxMediaBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v71 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v71), v70}];
  if (!a4)
  {
    v72 = @"AVDMRBR";
    goto LABEL_70;
  }

LABEL_67:
  v72 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVDMRBR", a4];
  if (!v72)
  {
    goto LABEL_74;
  }

LABEL_70:
  if (self->super._adjustedDuration)
  {
    v73 = [a5 averageVideoRxDecoderMediaBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v73 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v73), v72}];
  if (a4)
  {
LABEL_74:
    v74 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVFRBR", a4];
    if (!v74)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  v74 = @"AVFRBR";
LABEL_77:
  if (self->super._adjustedDuration)
  {
    v75 = [a5 averageVideoRxFecBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v75 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v75), v74}];
  if (!a4)
  {
    v76 = @"VRAMDO";
    goto LABEL_84;
  }

LABEL_81:
  v76 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VRAMDO", a4];
  if (!v76)
  {
    goto LABEL_88;
  }

LABEL_84:
  if (self->super._adjustedDuration)
  {
    v77 = ([a5 averageMetadataRxBitrate] * 1000.0 / self->super._adjustedDuration);
  }

  else
  {
    v77 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v77), v76}];
  if (a4)
  {
LABEL_88:
    v78 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPBLKFAR", a4];
    if (!v78)
    {
      goto LABEL_95;
    }

    goto LABEL_91;
  }

  v78 = @"VPBLKFAR";
LABEL_91:
  if (self->super._adjustedDuration)
  {
    v79 = [a5 lateKeyFrameAssembledCount] * 1000.0;
    v80 = self->super._adjustedDuration;
    v81 = (v79 / ([(MultiwaySegment *)self RTPeriod]* v80));
  }

  else
  {
    v81 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v81), v78}];
  if (!a4)
  {
    v82 = @"VPBLPFAR";
    goto LABEL_98;
  }

LABEL_95:
  v82 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VPBLPFAR", a4];
  if (!v82)
  {
    goto LABEL_102;
  }

LABEL_98:
  if (self->super._adjustedDuration)
  {
    v83 = [a5 latePFrameAssembledCount] * 1000.0;
    v84 = self->super._adjustedDuration;
    v85 = (v83 / ([(MultiwaySegment *)self RTPeriod]* v84));
  }

  else
  {
    v85 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v85), v82}];
  if (a4)
  {
LABEL_102:
    v86 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AJBL", a4];
    if (!v86)
    {
      if (![a5 packetLossRateAccumulator])
      {
        goto LABEL_118;
      }

      goto LABEL_111;
    }

    goto LABEL_106;
  }

  v86 = @"AJBL";
LABEL_106:
  if (self->super._adjustedDuration)
  {
    [a5 averageJitterQueueSize];
    v88 = (v87 * 1000.0 / self->super._adjustedDuration);
  }

  else
  {
    v88 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v88), v86}];
  if ([a5 packetLossRateAccumulator])
  {
    if (!a4)
    {
      v89 = @"SAVIDPLR";
LABEL_114:
      if (self->super._adjustedDuration)
      {
        v90 = [a5 packetLossRateAccumulator] / self->super._adjustedDuration;
      }

      else
      {
        v90 = 0;
      }

      [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v90), v89}];
      goto LABEL_118;
    }

LABEL_111:
    v89 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"SAVIDPLR", a4];
    if (!v89)
    {
      goto LABEL_118;
    }

    goto LABEL_114;
  }

LABEL_118:
  if ([a5 avSyncOffsetSamplesCount])
  {
    v91 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAVSO", a4];
    v92 = MEMORY[0x277CCABA8];
    if ([a5 avSyncOffsetSamplesCount])
    {
      v93 = [a5 avSyncOffsetSum];
      v94 = (v93 / [a5 avSyncOffsetSamplesCount]);
    }

    else
    {
      v94 = 0;
    }

    [a3 setObject:objc_msgSend(v92 forKeyedSubscript:{"numberWithInt:", v94), v91}];
    v95 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MINAVSO", a4];
    v96 = MEMORY[0x277CCABA8];
    if ([a5 minAVSyncOffset] == 0x7FFFFFFF)
    {
      v97 = 0;
    }

    else
    {
      v97 = [a5 minAVSyncOffset];
    }

    [a3 setObject:objc_msgSend(v96 forKeyedSubscript:{"numberWithInt:", v97), v95}];
    v98 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MAXAVSO", a4];
    v99 = MEMORY[0x277CCABA8];
    if ([a5 maxAVSyncOffset] == 0x80000000)
    {
      v100 = 0;
    }

    else
    {
      v100 = [a5 maxAVSyncOffset];
    }

    [a3 setObject:objc_msgSend(v99 forKeyedSubscript:{"numberWithInt:", v100), v98}];
  }

  [objc_msgSend(a5 "videoPlayerDisplayData")];
  [objc_msgSend(a5 "videoPlayerAVHostTimeDelta")];
  [objc_msgSend(a5 "videoPlayerAVSyncOffsetData")];
  [objc_msgSend(a5 "videoTierDurationData")];
  if (a4)
  {
    v101 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLIVP", a4];
    if (v101)
    {
      [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(a5, "totalRTPDownlinkIngressVideoPackets")), v101}];
    }

    v102 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLEVP", a4];
    if (!v102)
    {
LABEL_136:
      v103 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLINDP", a4];
      if (!v103)
      {
        return;
      }

      goto LABEL_139;
    }
  }

  else
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(a5, "totalRTPDownlinkIngressVideoPackets")), @"RTPDLIVP"}];
    v102 = @"RTPDLEVP";
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(a5, "totalRTPDownlinkEgressVideoPackets")), v102}];
  if (a4)
  {
    goto LABEL_136;
  }

  v103 = @"RTPDLINDP";
LABEL_139:
  v104 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(a5, "totalRTPDownlinkIngressNonDupVideoPackets")}];

  [a3 setObject:v104 forKeyedSubscript:v103];
}

- (void)reportAudioPerStreamGroupStats:(id)a3 streamGroup:(id)a4 accumulatedStreamGroupStats:(id)a5
{
  v9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AERCNT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "audioErasureCount")), v9}];
  v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"TAERT", a4];
  v11 = MEMORY[0x277CCABA8];
  [a5 totalAudioErasureTime];
  [a3 setObject:objc_msgSend(v11 forKeyedSubscript:{"numberWithUnsignedInt:", (v12 * 1000.0)), v10}];
  v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MAECT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "maxAudioErasureCount")), v13}];
  v14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAJBD", a4];
  v15 = MEMORY[0x277CCABA8];
  if ([a5 averageJitterBufferDelayCount])
  {
    [a5 averageJitterBufferDelay];
    v17 = (v16 / [a5 averageJitterBufferDelayCount] * 1000.0);
  }

  else
  {
    v17 = 0;
  }

  [a3 setObject:objc_msgSend(v15 forKeyedSubscript:{"numberWithUnsignedInt:", v17), v14}];
  v18 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MAJBSC", a4];
  v19 = MEMORY[0x277CCABA8];
  [a5 maxJBTargetSizeChanges];
  [a3 setObject:objc_msgSend(v19 forKeyedSubscript:{"numberWithUnsignedInt:", v20), v18}];
  v21 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAJBSC", a4];
  v22 = MEMORY[0x277CCABA8];
  if ([a5 avgJBTargetSizeChangesCount])
  {
    [a5 avgJBTargetSizeChanges];
    v24 = (v23 / [a5 avgJBTargetSizeChangesCount] * 1000.0);
  }

  else
  {
    v24 = 0;
  }

  [a3 setObject:objc_msgSend(v22 forKeyedSubscript:{"numberWithUnsignedInt:", v24), v21}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"JBTarget"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"JBT", a4)}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"JBUnclippedTarget"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"AUJBL", a4)}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"rxAudioCodecPayload"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"APAY", a4)}];
  v25 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"EJBAdEn", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "enhancedJBAdaptationsEnabled")), v25}];
  v26 = @"AANRBR";
  if (a4 && (v26 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AANRBR", a4]) == 0 || (!self->super._adjustedDuration ? (v27 = 0) : (v27 = objc_msgSend(a5, "averageAudioBitrate") / self->super._adjustedDuration), objc_msgSend(a3, "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v27), v26), a4))
  {
    v28 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAMRBR", a4];
    if (!v28)
    {
      goto LABEL_20;
    }

    v29 = v28;
  }

  else
  {
    v29 = @"AAMRBR";
  }

  if (self->super._adjustedDuration)
  {
    v30 = [a5 averageAudioMediaBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v30 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v30), v29}];
  if (!a4)
  {
    v32 = @"AADMRBR";
    goto LABEL_23;
  }

LABEL_20:
  v31 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AADMRBR", a4];
  if (!v31)
  {
    goto LABEL_27;
  }

  v32 = v31;
LABEL_23:
  if (self->super._adjustedDuration)
  {
    [a5 averageAudioMediaRxDecodeBitrate];
    v34 = (v33 / self->super._adjustedDuration);
  }

  else
  {
    v34 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v34), v32}];
  if (!a4)
  {
    v36 = @"AARRBR";
    goto LABEL_30;
  }

LABEL_27:
  v35 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AARRBR", a4];
  if (!v35)
  {
    if (![a5 packetLossRateAccumulator])
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  v36 = v35;
LABEL_30:
  if (self->super._adjustedDuration)
  {
    v37 = [a5 averageAudioRedRxBitrate] / self->super._adjustedDuration;
  }

  else
  {
    v37 = 0;
  }

  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v37), v36}];
  if ([a5 packetLossRateAccumulator])
  {
    if (!a4)
    {
      v38 = @"SAAUDPLR";
LABEL_39:
      if (self->super._adjustedDuration)
      {
        v40 = [a5 packetLossRateAccumulator] / self->super._adjustedDuration;
      }

      else
      {
        v40 = 0;
      }

      [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v40), v38}];
      goto LABEL_43;
    }

LABEL_37:
    v39 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"SAAUDPLR", a4];
    if (!v39)
    {
      goto LABEL_44;
    }

    v38 = v39;
    goto LABEL_39;
  }

LABEL_43:
  if (!a4)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(a5, "totalRTPDownlinkIngressAudioPackets")), @"RTPDLIAP"}];
    v42 = @"RTPDLINDP";
    goto LABEL_49;
  }

LABEL_44:
  v41 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLIAP", a4];
  if (v41)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(a5, "totalRTPDownlinkIngressAudioPackets")), v41}];
  }

  v42 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLINDP", a4];
  if (!v42)
  {
LABEL_50:
    v43 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPDLEAP", a4];
    if (!v43)
    {
      return;
    }

    goto LABEL_53;
  }

LABEL_49:
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(a5, "totalRTPDownlinkIngressNonDupAudioPackets")), v42}];
  if (a4)
  {
    goto LABEL_50;
  }

  v43 = @"RTPDLEAP";
LABEL_53:
  v44 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{objc_msgSend(a5, "totalRTPDownlinkEgressAudioPackets")}];

  [a3 setObject:v44 forKeyedSubscript:v43];
}

- (void)reportRTXPerStreamGroupStats:(id)a3 streamGroup:(id)a4 accumulatedStreamGroupStats:(id)a5
{
  adjustedDuration = self->super._adjustedDuration;
  v9 = [(MultiwaySegment *)self RTPeriod]* adjustedDuration;
  v10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKS", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "nacksSent")), v10}];
  v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKF", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "nacksFulfilled")), v11}];
  v12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFOT", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "nacksFulfilledOnTime")), v12}];
  v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKSRATE", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(a5, "nacksSent") / v9), v13}];
  v14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFRATE", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(a5, "nacksFulfilled") / v9), v14}];
  v15 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFOTRATE", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(a5, "nacksFulfilledOnTime") / v9), v15}];
  v16 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKLSCHFRTX", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(a5, "lateFramesScheduledWithRTXCount") / v9), v16}];
  v17 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFASSMRTX", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(a5, "assembledFramesWithRTXPacketsCount") / v9), v17}];
  v18 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKFFASSMRTX", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(a5, "failedToAssembleFramesWithRTXPacketsCount") / v9), v18}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"nacksRTXResponseTime"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKAVGRSPT", a4)}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"nacksRTXLateTime"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKAVGLATET", a4)}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"nacksRTXMediaBitRate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKMBR", a4)}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"nacksRTXRetransmittedMediaBitRate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKRTXMBR", a4)}];
  v19 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNACKS", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a5, "uniqueNacksSent")), v19}];
  v20 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNACKSRATE", a4];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", objc_msgSend(a5, "uniqueNacksSent") / v9), v20}];
  [a3 setObject:objc_msgSend(objc_msgSend(a5 forKeyedSubscript:{"nacksPLRWithRTX"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"NACKPLRWRTX", a4)}];
  v21 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"NACKPLRWORTX", a4];
  v22 = [objc_msgSend(a5 "nacksPLRWithoutRTX")];

  [a3 setObject:v22 forKeyedSubscript:v21];
}

- (void)addDownlinkParticipantStats:(id)a3 currentTime:(double)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(VCDataMLEnhance);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(NSMutableDictionary *)self->_downlinkParticipantStats allKeys];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_downlinkParticipantStats objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v12)];
        [objc_msgSend(v13 "mlEnhance")];
        -[VCDataMLEnhance accumulate:](v7, "accumulate:", [v13 mlEnhance]);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(VCDataMLEnhance *)v7 finalize:a4];
  [(VCDataMLEnhance *)v7 updateReport:a3];
  v14 = [(VCDataMLEnhance *)v7 status];
  v15 = MEMORY[0x277CCABA8];
  if (v14 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = [(MultiwaySegment *)self mlEnhanceStatus];
  }

  [a3 setObject:objc_msgSend(v15 forKeyedSubscript:{"numberWithInt:", v16), @"MLSFENB"}];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addPerStreamGroupStats:(id)a3 timestamp:(double)a4
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
    v30 = a3;
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
                [(DownlinkSegment *)self processVideoDegraded:0 forParticipant:v19 streamGroup:v12 timestamp:a4];
                [(DownlinkSegment *)self finalizeVideoStreamGroupStats:v20 timestamp:a4];
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
          v22 = v30;
          [(DownlinkSegment *)self reportVideoPerStreamGroupStats:v30 streamGroup:v12 accumulatedStreamGroupStats:v13];
        }

        else
        {
          v22 = v30;
          if ([v12 unsignedIntValue] == 2 || objc_msgSend(v12, "unsignedIntValue") == 4 || objc_msgSend(v12, "unsignedIntValue") == 6)
          {
            [(DownlinkSegment *)self reportAudioPerStreamGroupStats:v30 streamGroup:v12 accumulatedStreamGroupStats:v13];
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

- (void)addCelltechTelemetryToDictionary:(id)a3
{
  v5.receiver = self;
  v5.super_class = DownlinkSegment;
  [(MultiwaySegment *)&v5 addCelltechTelemetryToDictionary:?];
  if ([(MultiwaySegment *)self maxNegotiatedDownlinkBitrate])
  {
    [a3 setObject:self->super._maxNegotiatedDownlinkBitrate forKeyedSubscript:@"MNDBRT"];
  }

  if (self->super._maxNegotiatedDownlinkBitrate_Alternate)
  {
    [a3 setObject:self->super._maxNegotiatedDownlinkBitrate_Alternate forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"MNDBRT", @"A"}];
  }
}

- (void)updateDownlinkSegmentStats:(id)a3 withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)a4
{
  v7 = [(DownlinkSegment *)self lastReportedTotalCellDupRxDataBytes];
  var4 = a4->var4;
  if (v7 <= var4)
  {
    v9 = var4 - [(DownlinkSegment *)self lastReportedTotalCellDupRxDataBytes];
    var4 = v9 + [(DownlinkSegment *)self totalCellDupRxDataBytes];
  }

  [(DownlinkSegment *)self setTotalCellDupRxDataBytes:var4];
  [(DownlinkSegment *)self setLastReportedTotalCellDupRxDataBytes:a4->var4];
  v10 = [(DownlinkSegment *)self lastReportedTotalUsedCellBudgetRxDataBytes];
  var6 = a4->var6;
  if (v10 <= var6)
  {
    v12 = var6 - [(DownlinkSegment *)self lastReportedTotalUsedCellBudgetRxDataBytes];
    var6 = v12 + [(DownlinkSegment *)self totalUsedCellBudgetRxDataBytes];
  }

  [(DownlinkSegment *)self setTotalUsedCellBudgetRxDataBytes:var6];
  [(DownlinkSegment *)self setLastReportedTotalUsedCellBudgetRxDataBytes:a4->var6];
  v13 = [(DownlinkSegment *)self lastReportedTotalCellRxDataBytes];
  var1 = a4->var1;
  if (v13 <= var1)
  {
    v15 = var1 - [(DownlinkSegment *)self lastReportedTotalCellRxDataBytes];
    var1 = v15 + [(DownlinkSegment *)self totalCellRxDataBytes];
  }

  [(DownlinkSegment *)self setTotalCellRxDataBytes:var1];
  [(DownlinkSegment *)self setLastReportedTotalCellRxDataBytes:a4->var1];
  v16 = [(DownlinkSegment *)self lastReportedTotalWifiRxDataBytes];
  var3 = a4->var3;
  if (v16 <= var3)
  {
    v18 = var3 - [(DownlinkSegment *)self lastReportedTotalWifiRxDataBytes];
    var3 = v18 + [(DownlinkSegment *)self totalWifiRxDataBytes];
  }

  [(DownlinkSegment *)self setTotalWifiRxDataBytes:var3];
  [(DownlinkSegment *)self setLastReportedTotalWifiRxDataBytes:a4->var3];
  if ([a3 objectForKeyedSubscript:@"NWQualityLossRxAvg"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NWQualityLossRxAvg", "floatValue"}];
    [(VCHistogram *)[(DownlinkSegment *)self wifiQualityScoreDelayRx] addValue:(v19 * 10.0)];
  }

  if ([a3 objectForKeyedSubscript:@"NWQualityDelayRxAvg"])
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"NWQualityDelayRxAvg", "floatValue"}];
    v21 = v20;
    v22 = [(DownlinkSegment *)self wifiQualityScoreLossRx];

    [(VCHistogram *)v22 addValue:(v21 * 10.0)];
  }
}

- (id)segmentReport:(double)a3
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
    [(MultiwaySegment *)self complete_and_release_nw_activity:2, a3];
LABEL_7:
    v7 = 0;
    goto LABEL_118;
  }

  v95.receiver = self;
  v95.super_class = DownlinkSegment;
  v7 = [(VCReportingCommon *)&v95 dispatchedAggregatedReportCommon];
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
  [v7 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v107, v106, 107)}];
  if ([MEMORY[0x277CCABA8] numberWithInt:(self->_maxNoRemotePacketsInterval_Alternate * 100.0)])
  {
    v70 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MNRPI", @"A"];
    [v7 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", (self->_maxNoRemotePacketsInterval_Alternate * 100.0)), v70}];
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

    [v7 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v73), v72}];
  }

  if ([(VCDurationHistogram *)self->_pipThermalDurations totalDuration])
  {
    [v7 setObject:-[VCHistogram description](self->_pipThermalDurations forKeyedSubscript:{"description"), @"PIPDUR"}];
  }

  if (self->super._isOneToOneMode && [(MultiwaySegment *)self linksWithMaxPacketHistory])
  {
    [v7 setObject:-[MultiwaySegment linksWithMaxPacketHistory](self forKeyedSubscript:{"linksWithMaxPacketHistory"), @"DLPH"}];
    [v7 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", -[MultiwaySegment packetHistoryIndex](self, "packetHistoryIndex")), @"DLPI"}];
  }

  v104[0] = @"VTPDLIP";
  v74 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVTPDownlinkIngressMediaPackets];
  v104[1] = @"VTPDLEP";
  v105[0] = v74;
  v105[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVTPDownlinkEgressMediaPackets];
  [v7 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v105, v104, 2)}];
  if ([(MultiwaySegment *)self linkIPPreference]!= 255)
  {
    v102 = @"LNKIP";
    v103 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:{-[MultiwaySegment linkIPPreference](self, "linkIPPreference")}];
    [v7 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v103, &v102, 1)}];
  }

  [v7 addEntriesFromDictionary:{-[MultiwaySegment reportingClientExperimentSettingsDictionary](self, "reportingClientExperimentSettingsDictionary")}];
  [(MultiwaySegment *)self addCommonSegmentTelemetry:v7];
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
  [(SegmentStatsDelegate *)self->super._delegate addFECStats:v7 parameters:buf reportFrameSizeTelemetry:1 reportLevels:1];
  [v7 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", -[MultiwaySegment isApplePersonalHotspot](self, "isApplePersonalHotspot")), @"PHS"}];
  activeConnectionRegistry = self->super._activeConnectionRegistry;
  if (activeConnectionRegistry)
  {
    [v7 setObject:activeConnectionRegistry forKeyedSubscript:@"ACAS"];
  }

  if (self->super._conversationTimeBase)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._startDate), @"StartDate"}];
    v78 = MEMORY[0x277CCABA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [v7 setObject:objc_msgSend(v78 forKeyedSubscript:{"numberWithInt:", v79), @"EndDate"}];
  }

  if ([[(NSString *)self->super._segmentName substringFromIndex:2] hasPrefix:@"W"])
  {
    v96 = @"WiFi5GHz";
    v97 = [MEMORY[0x277CCABA8] numberWithInt:self->super._is5GHz];
    [v7 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v97, &v96, 1)}];
  }

  [(DownlinkSegment *)self addDownlinkParticipantStats:v7 currentTime:a3];
  [(DownlinkSegment *)self addPerStreamGroupStats:v7 timestamp:a3];
  [(DownlinkSegment *)self addCellByteCountStats:v7];
  [(MultiwaySegment *)self addRateControlExperimentInfoToSegmentReport:v7];
  [(DownlinkSegment *)self addNetworkCapabilityInfoToSegmentReport:v7];
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

  [(DownlinkSegment *)self addCelltechTelemetryToDictionary:v7];
  [(MultiwaySegment *)self addQRServerTelemetryToDictionary:v7];
  [(VCReportingCommon *)self addClientExperimentsToReport:v7];
  [(MultiwaySegment *)self reportVCRCMLStats:v7];
  self->super._hasReported = 1;
LABEL_118:
  v82 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)addNetworkCapabilityInfoToSegmentReport:(id)a3
{
  if (self->_reportNetworkCapabilities)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->_isUplinkRetransmissionEnabled), @"RULRTX"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", self->super._isRemoteQUICPod), @"RTLE"}];
    if (self->super._remoteMediaQueueSchedulePolicy)
    {
      v5 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];

      [a3 setObject:v5 forKeyedSubscript:@"RMQSchP"];
    }
  }
}

- (void)calculateDownlinkTelemetry:(id)a3 downlinkRTT:(unsigned int)a4
{
  v5 = a3;
  v191 = *MEMORY[0x277D85DE8];
  v7 = [a3 objectForKeyedSubscript:sRTCReportingStreamCollection];
  v8 = [v7 count];
  if (v8)
  {
    v16 = OUTLINED_FUNCTION_70(v8, v9, v10, v11, v12, v13, v14, v15, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, 0, 0, 0, 0, 0, 0, 0, 0, v189);
    if (v16)
    {
      HIDWORD(v107) = a4;
      v109 = v5;
      v111 = self;
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
      v113 = 0;
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
          v28 = [objc_msgSend(v27 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
          if (v28 == 2)
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
              LODWORD(v159) = (v159 + v59 * ([(MultiwaySegment *)v111 RTPeriod]* 1000.0));
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
              v113 = [OUTLINED_FUNCTION_43() integerValue];
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

            v28 = [v27 objectForKeyedSubscript:@"VFEVLtPktDelay"];
            if (v28)
            {
              v28 = [OUTLINED_FUNCTION_43() doubleValue];
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

        v16 = OUTLINED_FUNCTION_70(v28, v29, v30, v31, v32, v33, v34, v35, v105, v107, v109, v111, v113, v115, v117, *&v119, v121, *&v123, *&v125, *&v127, v129, *&v131, v133, *&v135, v137, v139, *&v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v182, v183, v184, v185, v186, v187, v188, v190);
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

      v5 = v109;
      self = v111;
      v78 = HIDWORD(v129);
      v81 = v119;
      v82 = v127;
      LODWORD(v16) = HIDWORD(v121);
      a4 = HIDWORD(v107);
      v79 = v177;
      [(DownlinkSegment *)v111 processAudioErasureValue:v76];
      if (v117)
      {
        v85 = (v22 / v117 * 10000.0);
      }

      else
      {
        v85 = 0;
      }

      v84 = v123;
      [(DownlinkSegment *)v111 processAudioErasureValueAlt:v85];
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
      v113 = 0;
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
    [(VCHistogram *)[(DownlinkSegment *)self latency] addValue:(v87 + (a4 >> 1) + 90.0)];
    [(VCHistogram *)[(DownlinkSegment *)self WANVJBQSize] addValue:HIDWORD(v137)];
    v89 = [(DownlinkSegment *)self maxJitterQueueSize];
    if (HIDWORD(v137) <= v89)
    {
      v90 = v89;
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
    v92 = [(DownlinkSegment *)self maxConsecutiveAudioErasures];
    if (v92 <= v79)
    {
      v93 = v79;
    }

    else
    {
      v93 = v92;
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
    [(DownlinkSegment *)self setEnhancedJBAdaptationsEnabled:v113];
    [(DownlinkSegment *)self lateKeyFrameAssembledCount];
    [OUTLINED_FUNCTION_34() setLateKeyFrameAssembledCount:?];
    [(DownlinkSegment *)self latePFrameAssembledCount];
    [OUTLINED_FUNCTION_34() setLatePFrameAssembledCount:?];
    v101 = HIDWORD(v173) - v78;
    if (HIDWORD(v173) >= v78)
    {
      v102 = [(DownlinkSegment *)self JBQSizeDeltaVidLarger];
    }

    else
    {
      v101 = v78 - HIDWORD(v173);
      v102 = [(DownlinkSegment *)self JBQSizeDeltaAudLarger];
    }

    [(VCHistogram *)v102 addValue:v101];
    [(DownlinkSegment *)self abnormalBPL];
    [objc_msgSend(v5 objectForKeyedSubscript:{@"WRBPL", "integerValue"}];
    [OUTLINED_FUNCTION_40() addValue:?];
    [(DownlinkSegment *)self abnormalPLR];
    [objc_msgSend(v5 objectForKeyedSubscript:{@"PLR", "integerValue"}];
    [OUTLINED_FUNCTION_40() addValue:?];
    [(DownlinkSegment *)self abnormalRTT];
    [objc_msgSend(v5 objectForKeyedSubscript:{@"WRRTT", "integerValue"}];
    [OUTLINED_FUNCTION_40() addValue:?];
  }

  v103 = *MEMORY[0x277D85DE8];
}

- (void)processNetworkQualityUpdatedWithStatus:(unsigned int)a3 forParticipant:(id)a4 timestamp:(double)a5
{
  OUTLINED_FUNCTION_58();
  v23 = *MEMORY[0x277D85DE8];
  if (v5[366] != v6)
  {
    v9 = v8;
    v10 = v6;
    v11 = v5;
    v12 = [v5 callStatsForParticipant:v7 andTime:?];
    v13 = [v12 streamGroupStats];
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
            objc_enumerationMutation(v13);
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
        v16 = [v13 countByEnumeratingWithState:? objects:? count:?];
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