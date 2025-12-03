@interface MultiwayStream
- (double)averageJBTargetSizeChanges;
- (double)averageJitterBufferDelay;
- (id)initStreamWithID:(id)d;
- (void)dealloc;
- (void)processData:(id)data algosScorer:(id)scorer algosScorerAlternate:(id)alternate algosScorerBounded:(id)bounded timestamp:(double)timestamp;
- (void)processRTXData:(id)data;
- (void)updateMinimumAndMaximumAVSyncOffset:(id)offset;
@end

@implementation MultiwayStream

- (id)initStreamWithID:(id)d
{
  v6.receiver = self;
  v6.super_class = MultiwayStream;
  v4 = [(VCReportingCommon *)&v6 init];
  if (v4)
  {
    v4->_streamID = [d copy];
    reportingGetDefaults(&v4->_interval, &v4->_frequency);
    v4->_minVideoFrameRate = 60;
    v4->_evictedFramesLatePacketDelayHist = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
    v4->_nacksRTXResponseTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
    v4->_nacksRTXLateTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
    v4->_nacksRTXMediaBitRate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v4->_nacksRTXRetransmittedMediaBitRate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v4->_nacksPLRWithRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
    v4->_nacksPLRWithoutRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
    v4->_videoTxFecData = objc_alloc_init(VCVideoFECData);
    v4->_JBTarget = [[VCReportingHistogram alloc] initWithType:12 bucketValues:0];
    v4->_JBUnclippedTarget = [[VCReportingHistogram alloc] initWithType:12 bucketValues:0];
    v4->super._retransmissionResponseTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
    v4->super._retransmissionLateTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
    v4->super._retransmissionActualMediaBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v4->super._retransmissionBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v4->_videoPlayerDisplayData = [[VCReportingDistribution alloc] initWithHistogramType:78 reportingKeys:VCReportingDistributionKeys_VideoPlayerDisplayFrameRate() histogramIncrementFactor:1000];
    v4->_cameraCaptureData = [[VCReportingDistribution alloc] initWithHistogramType:81 reportingKeys:VCReportingDistributionKeys_CameraCaptureFrameRate() histogramIncrementFactor:1000];
    v4->_videoPlayerAVHostTimeData = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:74 reportingKeys:VCReportingDeltaDistributionKeys_VideoPlayerHostTimeDelta() histogramIncrementFactor:1000];
    v4->_videoPlayerAVSyncOffsetData = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:75 reportingKeys:VCReportingDeltaDistributionKeys_VideoPlayerAVSyncOffset() histogramIncrementFactor:1000];
    v4->_transmitterAVHostTimeData = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:46 reportingKeys:VCReportingDeltaDistributionKeys_TransmitterHostTimeDelta() histogramIncrementFactor:1000];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MultiwayStream;
  [(VCReportingCommon *)&v3 dealloc];
}

- (void)updateMinimumAndMaximumAVSyncOffset:(id)offset
{
  v5 = [objc_msgSend(offset objectForKeyedSubscript:{@"AVSyncOffsetMax", "integerValue"}];
  maxAVSyncOffset = self->_maxAVSyncOffset;
  if (maxAVSyncOffset <= v5)
  {
    maxAVSyncOffset = v5;
  }

  self->_maxAVSyncOffset = maxAVSyncOffset;
  v7 = [objc_msgSend(offset objectForKeyedSubscript:{@"AVSyncOffsetMin", "integerValue"}];
  minAVSyncOffset = self->_minAVSyncOffset;
  if (minAVSyncOffset >= v7)
  {
    minAVSyncOffset = v7;
  }

  self->_minAVSyncOffset = minAVSyncOffset;
}

- (void)processData:(id)data algosScorer:(id)scorer algosScorerAlternate:(id)alternate algosScorerBounded:(id)bounded timestamp:(double)timestamp
{
  v13 = [data objectForKeyedSubscript:@"VST"];
  if (v13)
  {
    [v13 doubleValue];
    v15 = v14 * 1000.0;
    lastReceivedVideoStallTime = self->_lastReceivedVideoStallTime;
    if (v15 == lastReceivedVideoStallTime)
    {
      currentStallTime = self->_currentStallTime;
      if (currentStallTime != 0.0)
      {
        if (currentStallTime > 500.0)
        {
          ++self->_significantVideoStallCount;
        }

        self->_totalVideoStallTime = currentStallTime + self->_totalVideoStallTime;
        [scorer addVideoStallWithStartTime:timestamp - self->_currentStallTime / 1000.0 endStallTime:timestamp];
        [alternate addVideoStallWithStartTime:timestamp - self->_currentStallTime / 1000.0 endStallTime:timestamp];
        [bounded addVideoStallWithStartTime:timestamp - self->_currentStallTime / 1000.0 endStallTime:timestamp];
        maxVideoStallTime = self->_currentStallTime;
        if (maxVideoStallTime < self->_maxVideoStallTime)
        {
          maxVideoStallTime = self->_maxVideoStallTime;
        }

        self->_maxVideoStallTime = maxVideoStallTime;
        self->_currentStallTime = 0.0;
      }
    }

    else
    {
      self->_currentStallTime = v15 - lastReceivedVideoStallTime + self->_currentStallTime;
      self->_lastReceivedVideoStallTime = v15;
    }
  }

  v19 = [data objectForKeyedSubscript:@"FrameErasureRate"];
  if (v19)
  {
    [v19 doubleValue];
    v21 = v20 * [(MultiwayStream *)self RTPeriod]* 1000.0;
    if (v21 != 0.0)
    {
      self->_totalAudioErasureTime = v21 + self->_totalAudioErasureTime;
    }
  }

  v22 = [data objectForKeyedSubscript:@"FrameErasureRateAlt"];
  if (v22)
  {
    [v22 doubleValue];
    v24 = v23 * [(MultiwayStream *)self RTPeriod]* 1000.0;
    if (v24 != 0.0)
    {
      self->_totalAudioErasureTimeAlt = v24 + self->_totalAudioErasureTimeAlt;
    }
  }

  v25 = [data objectForKeyedSubscript:@"FrameErasureCount"];
  if (v25)
  {
    v26 = v25;
    self->_audioErasureCount += [v25 intValue];
    LOWORD(v27) = self->_maxAudioErasureCount;
    self->_maxAudioErasureCount = fmax(v27, [v26 intValue]);
  }

  v28 = [data objectForKeyedSubscript:@"LKFASC"];
  if (v28)
  {
    self->_lateKeyFrameAssembledCount += [v28 intValue];
  }

  v29 = [data objectForKeyedSubscript:@"LPFASC"];
  if (v29)
  {
    self->_latePFrameAssembledCount += [v29 intValue];
  }

  v30 = [data objectForKeyedSubscript:@"VRxIDRC"];
  if (v30)
  {
    self->_idrReceivedCount += [v30 intValue];
  }

  v31 = [data objectForKeyedSubscript:@"VTxDeltaKeyFramesSent"];
  if (v31)
  {
    self->_idrSentCount += [v31 intValue];
  }

  v32 = [data objectForKeyedSubscript:@"WindowedFrameErasureRate"];
  if (v32)
  {
    v33 = v32;
    [v32 floatValue];
    [scorer addLargeGapErasureWithTime:timestamp largeGapErasureRate:v34];
    [v33 floatValue];
    [alternate addLargeGapErasureWithTime:timestamp largeGapErasureRate:v35];
    [v33 floatValue];
    [bounded addLargeGapErasureWithTime:timestamp largeGapErasureRate:v36];
  }

  v37 = [data objectForKeyedSubscript:@"VSTCNT"];
  if (v37)
  {
    LOWORD(v38) = self->_maxVideoStallCount;
    self->_maxVideoStallCount = fmax(v38, [v37 intValue]);
  }

  v39 = [data objectForKeyedSubscript:@"NJB"];
  [v39 doubleValue];
  if (v40 != 0.0)
  {
    ++self->_totalJitterBufferDelayCnt;
    [v39 doubleValue];
    self->_averageJitterBufferDelay = v41 + self->_averageJitterBufferDelay;
  }

  JBTarget = self->_JBTarget;
  [v39 doubleValue];
  [(VCHistogram *)JBTarget addValue:v43];
  v44 = [data objectForKeyedSubscript:@"UJBL"];
  JBUnclippedTarget = self->_JBUnclippedTarget;
  [v44 doubleValue];
  [(VCHistogram *)JBUnclippedTarget addValue:v46];
  v47 = [data objectForKeyedSubscript:@"EnhancedJBAdaptationsEnabled"];
  if (v47)
  {
    self->_enhancedJBAdaptationsEnabled = [v47 intValue];
  }

  v48 = [data objectForKeyedSubscript:@"JitterBufferTargetChanges"];
  if (v48)
  {
    v49 = v48;
    ++self->_targetJBSizeChngCnt;
    self->_targetJBSizeAccumulation += [v48 intValue];
    LOWORD(v50) = self->_maxTargetJBSizeChanges;
    self->_maxTargetJBSizeChanges = fmax(v50, [v49 intValue]);
  }

  v51 = [data objectForKeyedSubscript:@"NRFr"];
  if (v51)
  {
    v52 = v51;
    intValue = [v51 intValue];
    LOWORD(v54) = self->_minVideoFrameRate;
    v55 = v54;
    if (intValue)
    {
      v55 = fmin(v55, [v52 intValue]);
    }

    self->_minVideoFrameRate = v55;
  }

  v56 = [data objectForKeyedSubscript:@"ARFr"];
  if (v56)
  {
    [v56 doubleValue];
    self->_averageFramerateSum = v57 + self->_averageFramerateSum;
    ++self->_averageFramerateReportCounter;
  }

  if ([data objectForKeyedSubscript:@"ARxR"] || objc_msgSend(data, "objectForKeyedSubscript:", @"VRxR"))
  {
    v58 = [objc_msgSend(data objectForKeyedSubscript:{@"ARxR", "integerValue"}];
    self->_averageReceiveBitrateSum = self->_averageReceiveBitrateSum + ([objc_msgSend(data objectForKeyedSubscript:{@"VRxR", "integerValue"}] + v58);
    ++self->_averageReceiveBitrateReportCounter;
  }

  v59 = [data objectForKeyedSubscript:@"VJ"];
  if (v59)
  {
    [v59 doubleValue];
    self->_averageVideoJitterLengthSum = self->_averageVideoJitterLengthSum + v60 * 1000.0;
    ++self->_averageVideoJitterReportCounter;
  }

  v61 = [data objectForKeyedSubscript:@"VPktRx"];
  v62 = [data objectForKeyedSubscript:@"VRSOOOCnt"];
  if (v61)
  {
    v63 = v62;
    if (v62)
    {
      self->_totalVideoPacketsReceived += [v61 intValue];
      self->_oooPacketCount += [v63 intValue];
    }
  }

  v64 = [data objectForKeyedSubscript:@"VFIRDCnt"];
  if (v64)
  {
    self->_totalFIRDemandCounter += [v64 intValue];
  }

  v65 = [data objectForKeyedSubscript:@"VFIRCnt"];
  if (v65)
  {
    self->_totalFIRCounter += [v65 intValue];
  }

  v66 = [data objectForKeyedSubscript:@"VFIRFSCnt"];
  if (v66)
  {
    self->_totalFIRFailSafeCounter += [v66 intValue];
  }

  v67 = [data objectForKeyedSubscript:@"VFDBSCnt"];
  if (v67)
  {
    self->_videoFrameDecodedButSkippedCounter += [v67 intValue];
  }

  v68 = [data objectForKeyedSubscript:@"VFTICnt"];
  if (v68)
  {
    self->_videoFrameTotalIncompleteCounter += [v68 intValue];
  }

  v69 = [data objectForKeyedSubscript:@"DVFECnt"];
  if (v69)
  {
    v70 = v69;
    self->_decodedVideoFrameEnqueueCounter += [v69 intValue];
    v71 = reportingDefaultRealtimePeriod();
    if (v71)
    {
      v72 = v71;
      [v70 doubleValue];
      v74 = v73 / v72;
    }

    else
    {
      v74 = 0.0;
    }

    [scorer setVideoFramerate:v74];
    [alternate setVideoFramerate:v74];
    [bounded setVideoFramerate:v74];
  }

  v75 = [data objectForKeyedSubscript:@"VFEVTrCnt"];
  if (v75)
  {
    self->_evictedFramesTrackedCount += [v75 intValue];
  }

  v76 = [data objectForKeyedSubscript:@"VRxMR"];
  if (v76)
  {
    self->_averageVideoRxMediaBitrate += [v76 unsignedIntValue];
  }

  v77 = [data objectForKeyedSubscript:@"VRxDMR"];
  if (v77)
  {
    self->_averageVideoRxDecoderMediaBitrate += [v77 unsignedIntValue];
  }

  v78 = [data objectForKeyedSubscript:@"VTxRMedia"];
  if (v78)
  {
    self->_averageVideoTxMediaBitrate += [v78 intValue];
  }

  v79 = [data objectForKeyedSubscript:@"VTxRHDR"];
  if (v79)
  {
    self->_averageVideoTxHeaderBitrate += [v79 intValue];
  }

  v80 = [data objectForKeyedSubscript:@"VFEVRecoveredCnt"];
  if (v80)
  {
    self->_evictedFramesRecoveredCount += [v80 intValue];
  }

  v81 = [data objectForKeyedSubscript:@"VFrLateCount"];
  if (v81)
  {
    self->_lateFramesScheduledCount += [v81 intValue];
  }

  v82 = [data objectForKeyedSubscript:@"VFEVLtPktDelay"];
  if (v82)
  {
    [v82 doubleValue];
    self->_evictedFramesAverageLatePacketDelay = v83 + self->_evictedFramesAverageLatePacketDelay;
    if (v83 != 0.0)
    {
      ++self->_evictedFramesAnalysisValidIntervals;
    }
  }

  v84 = [data objectForKeyedSubscript:@"VFEVMaxLtPktDelay"];
  if (v84)
  {
    evictedFramesMaxLatePacketDelay = self->_evictedFramesMaxLatePacketDelay;
    [v84 doubleValue];
    if (evictedFramesMaxLatePacketDelay >= v86)
    {
      v86 = evictedFramesMaxLatePacketDelay;
    }

    self->_evictedFramesMaxLatePacketDelay = v86;
  }

  v87 = [data objectForKeyedSubscript:@"VFEVLtPktDelayHist"];
  if (v87)
  {
    v88 = v87;
    v104 = 0;
    v89 = [VCReportingHistogram bucketWithType:79 count:&v104];
    if (v104 != 1)
    {
      v90 = v89;
      v91 = 0;
      do
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v88, v91);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        [(VCHistogram *)self->_evictedFramesLatePacketDelayHist addValue:v90[v91++] withIncrement:valuePtr];
      }

      while (v91 < (v104 - 1));
    }
  }

  [(VCReportingDeltaDistribution *)self->_transmitterAVHostTimeData updateWithPayload:data];
  v93 = [data objectForKeyedSubscript:@"AVSyncOffset"];
  if ([data objectForKeyedSubscript:@"VCSPUUID"] && v93)
  {
    ++self->_averageAVSyncOffsetCounter;
    self->_averageAVSyncOffsetSum += [v93 integerValue];
    [(MultiwayStream *)self updateMinimumAndMaximumAVSyncOffset:data];
  }

  v94 = [data objectForKeyedSubscript:@"DecNoShowFrameCnt"];
  if (v94)
  {
    self->_decodeNoShowFrameCount += [v94 intValue];
  }

  v95 = [data objectForKeyedSubscript:@"VPDECAC"];
  if (v95)
  {
    self->_videoPlayerDecodeAlarmCount += [v95 unsignedIntValue];
  }

  v96 = [data objectForKeyedSubscript:@"VPDISAC"];
  if (v96)
  {
    self->_videoPlayerDisplayAlarmCount += [v96 unsignedIntValue];
  }

  v97 = [data objectForKeyedSubscript:@"VTxRFEC"];
  if (v97)
  {
    self->_averageVideoTxFecBitrate += [v97 unsignedIntValue];
  }

  v98 = [data objectForKeyedSubscript:@"VRxR"];
  if (v98)
  {
    self->_averageVideoRxBitrate += [v98 unsignedIntValue];
  }

  v99 = [data objectForKeyedSubscript:@"VRFECRxR"];
  if (v99)
  {
    self->_averageVideoRxFecBitrate += [v99 unsignedIntValue];
  }

  v100 = [data objectForKeyedSubscript:@"VTxMetadataOverhead"];
  if (v100)
  {
    self->_averageVideoTxMetadataOverheadBitrate += [v100 unsignedIntValue];
  }

  v101 = [data objectForKeyedSubscript:@"VRxMetadataOverhead"];
  if (v101)
  {
    self->_averageVideoRxMetadataOverheadBitrate += [v101 unsignedIntValue];
  }

  v102 = [data objectForKeyedSubscript:@"EncOutFrameCnt"];
  if (v102)
  {
    self->_encodedVideoFrameCount += [v102 intValue];
    ++self->_encodedVideoReportCount;
  }

  [(MultiwayStream *)self processRTXData:data];
  [(VCVideoFECData *)self->_videoTxFecData updateWithPayload:data];
  [(VCReportingDistribution *)self->_cameraCaptureData updateWithPayload:data];
  [(VCReportingDistribution *)self->_videoPlayerDisplayData updateWithPayload:data];
  [(VCReportingDeltaDistribution *)self->_videoPlayerAVHostTimeData updateWithPayload:data];
  [(VCReportingDeltaDistribution *)self->_videoPlayerAVSyncOffsetData updateWithPayload:data];
}

- (void)processRTXData:(id)data
{
  if ([data objectForKeyedSubscript:@"NacksSent"] && objc_msgSend(data, "objectForKeyedSubscript:", @"NacksFulfilled") && objc_msgSend(data, "objectForKeyedSubscript:", @"NacksFulfilledOnTime"))
  {
    v5 = [data objectForKeyedSubscript:@"NacksSent"];
    if (v5)
    {
      self->_nacksSent += [v5 intValue];
    }

    v6 = [data objectForKeyedSubscript:@"NacksFulfilled"];
    if (v6)
    {
      self->_nacksFulfilled += [v6 intValue];
    }

    v7 = [data objectForKeyedSubscript:@"NacksFulfilledOnTime"];
    if (v7)
    {
      self->_nacksFulfilledOnTime += [v7 intValue];
    }

    v8 = [data objectForKeyedSubscript:@"UniqueNacksSent"];
    if (v8)
    {
      self->_uniqueNacksSent += [v8 intValue];
    }

    v9 = [data objectForKeyedSubscript:@"NacksAvgResponseTime"];
    if (v9)
    {
      nacksRTXResponseTime = self->_nacksRTXResponseTime;
      [v9 doubleValue];
      [(VCHistogram *)nacksRTXResponseTime addValue:v11];
    }

    v12 = [data objectForKeyedSubscript:@"NacksLateTime"];
    if (v12)
    {
      nacksRTXLateTime = self->_nacksRTXLateTime;
      [v12 doubleValue];
      [(VCHistogram *)nacksRTXLateTime addValue:v14];
    }

    v15 = [data objectForKeyedSubscript:@"NacksMediaBitRate"];
    if (v15)
    {
      nacksRTXMediaBitRate = self->_nacksRTXMediaBitRate;
      [v15 doubleValue];
      [(VCHistogram *)nacksRTXMediaBitRate addValue:v17];
    }

    v18 = [data objectForKeyedSubscript:@"NacksRTXMediaBitRate"];
    if (v18)
    {
      nacksRTXRetransmittedMediaBitRate = self->_nacksRTXRetransmittedMediaBitRate;
      [v18 doubleValue];
      [(VCHistogram *)nacksRTXRetransmittedMediaBitRate addValue:v20];
    }

    v21 = [data objectForKeyedSubscript:@"NacksPLRWithRTX"];
    if (v21)
    {
      -[VCHistogram addValue:](self->_nacksPLRWithRTX, "addValue:", [v21 unsignedIntValue]);
    }

    v22 = [data objectForKeyedSubscript:@"NacksPLRWithoutRTX"];
    if (v22)
    {
      -[VCHistogram addValue:](self->_nacksPLRWithoutRTX, "addValue:", [v22 unsignedIntValue]);
    }

    v23 = [data objectForKeyedSubscript:@"NacksFrmsAssemWithRTX"];
    if (v23)
    {
      self->_assembledFramesWithRTXPacketsCount += [v23 intValue];
    }

    v24 = [data objectForKeyedSubscript:@"NacksFrmsFailedAssemWithRTX"];
    if (v24)
    {
      self->_failedToAssembleFramesWithRTXPacketsCount += [v24 intValue];
    }

    self->_isRTXTelemetryAvailable = 1;
  }

  if ([data objectForKeyedSubscript:@"UNRPC"] && objc_msgSend(data, "objectForKeyedSubscript:", @"UNFPC") && objc_msgSend(data, "objectForKeyedSubscript:", @"ULNACKCHCNT") && objc_msgSend(data, "objectForKeyedSubscript:", @"ULNACKCMCNT") && objc_msgSend(data, "objectForKeyedSubscript:", @"ULNACKNRCNT"))
  {
    v25 = [data objectForKeyedSubscript:@"UNRPC"];
    if (v25)
    {
      self->super._retransmissionRequestPacketCount += [v25 intValue];
    }

    v26 = [data objectForKeyedSubscript:@"UNFPC"];
    if (v26)
    {
      self->super._retransmissionFulfilledPacketCount += [v26 intValue];
    }

    v27 = [data objectForKeyedSubscript:@"UNCHPC"];
    if (v27)
    {
      self->super._retransmissionCacheHitCount += [v27 intValue];
    }

    v28 = [data objectForKeyedSubscript:@"UNCMPC"];
    if (v28)
    {
      self->super._retransmissionCacheMissCount += [v28 intValue];
    }

    v29 = [data objectForKeyedSubscript:@"UNTRC"];
    if (v29)
    {
      self->super._retransmissionNACKReceivedCount += [v29 intValue];
    }

    v30 = [data objectForKeyedSubscript:@"UNRRC"];
    if (v30)
    {
      self->super._retransmissionRequestRepeatedCount += [v30 intValue];
    }

    v31 = [data objectForKeyedSubscript:@"UNRRMC"];
    if (v31)
    {
      v32 = v31;
      if ([v31 unsignedIntValue] > self->super._retransmissionRequestRepeatedMaxCount)
      {
        self->super._retransmissionRequestRepeatedMaxCount = [v32 unsignedIntValue];
      }
    }

    v33 = [data objectForKeyedSubscript:@"UNART"];
    if (v33)
    {
      retransmissionResponseTime = self->super._retransmissionResponseTime;
      [v33 doubleValue];
      [(VCHistogram *)retransmissionResponseTime addValue:(v35 * 100.0)];
    }

    v36 = [data objectForKeyedSubscript:@"UNALT"];
    if (v36)
    {
      retransmissionLateTime = self->super._retransmissionLateTime;
      [v36 doubleValue];
      [(VCHistogram *)retransmissionLateTime addValue:(v38 * 100.0)];
    }

    v39 = [data objectForKeyedSubscript:@"UNMB"];
    if (v39)
    {
      -[VCHistogram addValue:](self->super._retransmissionActualMediaBitrate, "addValue:", [v39 unsignedIntValue]);
    }

    v40 = [data objectForKeyedSubscript:@"UNRB"];
    if (v40)
    {
      -[VCHistogram addValue:](self->super._retransmissionBitrate, "addValue:", [v40 unsignedIntValue]);
    }

    self->super._isUplinkRTXTelemetryAvailable = 1;
  }
}

- (double)averageJitterBufferDelay
{
  if (self->_totalJitterBufferDelayCnt)
  {
    return self->_averageJitterBufferDelay / self->_totalJitterBufferDelayCnt;
  }

  else
  {
    return 0.0;
  }
}

- (double)averageJBTargetSizeChanges
{
  if (!self->_targetJBSizeChngCnt)
  {
    return 0.0;
  }

  LOWORD(v2) = self->_targetJBSizeAccumulation;
  return v2 / self->_targetJBSizeChngCnt;
}

@end