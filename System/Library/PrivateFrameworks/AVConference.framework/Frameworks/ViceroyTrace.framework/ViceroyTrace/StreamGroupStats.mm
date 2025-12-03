@interface StreamGroupStats
- (StreamGroupStats)init;
- (void)dealloc;
- (void)finalizeStats;
- (void)processKeyFrameReceived:(double)received;
- (void)processKeyFrameRequestSent:(double)sent;
- (void)processMLStreamData:(id)data;
- (void)resetMLStats;
- (void)setUpMLHistograms;
@end

@implementation StreamGroupStats

- (StreamGroupStats)init
{
  v5.receiver = self;
  v5.super_class = StreamGroupStats;
  v2 = [(VCReportingCommon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_minVideoFrameRate = 60;
    v2->_minAVSyncOffset = 0x7FFFFFFF;
    v2->_maxAVSyncOffset = 0x80000000;
    v2->_videoTxFecData = objc_alloc_init(VCVideoFECData);
    v3->_nacksRTXResponseTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
    v3->_nacksRTXLateTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
    v3->_nacksRTXMediaBitRate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v3->_nacksRTXRetransmittedMediaBitRate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v3->_nacksPLRWithRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
    v3->_nacksPLRWithoutRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
    v3->_JBTarget = [[VCReportingHistogram alloc] initWithType:12 bucketValues:0];
    v3->_JBUnclippedTarget = [[VCReportingHistogram alloc] initWithType:12 bucketValues:0];
    v3->super._retransmissionResponseTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
    v3->super._retransmissionLateTime = [[VCReportingHistogram alloc] initWithType:50 bucketValues:0];
    v3->super._retransmissionActualMediaBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v3->super._retransmissionBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v3->_videoStall = [[VCReportingHistogram alloc] initWithType:30 bucketValues:0];
    v3->_abnormalPLR = [[VCReportingHistogram alloc] initWithType:4 bucketValues:0];
    v3->_abnormalBPL = [[VCReportingHistogram alloc] initWithType:5 bucketValues:0];
    v3->_abnormalRTT = [[VCReportingHistogram alloc] initWithType:1 bucketValues:0];
    v3->_poorConnection = [[VCReportingHistogram alloc] initWithType:18 bucketValues:0];
    [(StreamGroupStats *)v3 setUpMLHistograms];
    v3->_rxAudioCodecPayload = [[VCReportingHistogram alloc] initWithType:84 bucketValues:0];
    v3->_firResponseTime = [[VCReportingDistribution alloc] initWithHistogramType:52 reportingKeys:VCReportingDistributionKeys_FIRResponseTime()];
    v3->_videoDegradedDurationPerReason = [[VCReportingHistogram alloc] initWithType:92 bucketValues:0];
    v3->_videoPlayerAVHostTimeDelta = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:74 reportingKeys:VCReportingDeltaDistributionKeys_VideoPlayerHostTimeDelta() histogramIncrementFactor:1000];
    v3->_videoTierDurationData = objc_alloc_init(VCVideoTierDurationData);
    v3->_videoPlayerAVSyncOffsetData = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:75 reportingKeys:VCReportingDeltaDistributionKeys_VideoPlayerAVSyncOffset() histogramIncrementFactor:1000];
    v3->_audioTierBundling_Alternate = [[VCReportingHistogram alloc] initWithType:67 bucketValues:0];
    v3->_audioTierCodecPayload_Alternate = [[VCReportingHistogram alloc] initWithType:66 bucketValues:0];
    v3->_audioTierCodecBitrate_Alternate = [[VCReportingHistogram alloc] initWithType:64 bucketValues:0];
    v3->_audioTierREDPayload_Alternate = [[VCReportingHistogram alloc] initWithType:27 bucketValues:0];
    v3->_audioTierREDMaxDelay_Alternate = [[VCReportingHistogram alloc] initWithType:28 bucketValues:0];
    v3->_transmitterAVHostTimeData = [(VCReportingDistribution *)[VCReportingDeltaDistribution alloc] initWithSignedHistogramType:46 reportingKeys:VCReportingDeltaDistributionKeys_TransmitterHostTimeDelta() histogramIncrementFactor:1000];
    v3->_videoPlayerDisplayData = [[VCReportingDistribution alloc] initWithHistogramType:78 reportingKeys:VCReportingDistributionKeys_VideoPlayerDisplayFrameRate() histogramIncrementFactor:1000];
    v3->_audioTierChangeHistogram = [[VCReportingHistogram alloc] initWithType:29 bucketValues:0];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = StreamGroupStats;
  [(VCReportingCommon *)&v3 dealloc];
}

- (void)setUpMLHistograms
{
  self->_mlEnhanceFramePercent = [[VCReportingHistogram alloc] initWithType:82 bucketValues:0];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v6 = [[VCReportingHistogram alloc] initWithType:83 bucketValues:0];
    v7 = [[VCReportingHistogram alloc] initWithType:83 bucketValues:0];
    [(NSArray *)v3 setObject:v6 atIndexedSubscript:i];
    [(NSArray *)v4 setObject:v7 atIndexedSubscript:i];
  }

  self->_mlEnhancedPercentInputResolutions = v3;
  self->_mlEnhancedPercentOutputResolutions = v4;
}

- (void)resetMLStats
{
  self->_totalDecodedFrameCount = 0;
  [(VCHistogram *)self->_mlEnhanceFramePercent reset];
  for (i = 0; i != 4; ++i)
  {
    [-[NSArray objectAtIndexedSubscript:](self->_mlEnhancedPercentInputResolutions objectAtIndexedSubscript:{i), "reset"}];
    [-[NSArray objectAtIndexedSubscript:](self->_mlEnhancedPercentOutputResolutions objectAtIndexedSubscript:{i), "reset"}];
  }
}

- (void)processKeyFrameRequestSent:(double)sent
{
  if (self->_oldestPendingFirTime == 0.0)
  {
    self->_oldestPendingFirTime = sent;
  }
}

- (void)processKeyFrameReceived:(double)received
{
  v8[2] = *MEMORY[0x277D85DE8];
  oldestPendingFirTime = self->_oldestPendingFirTime;
  if (oldestPendingFirTime != 0.0)
  {
    firResponseTime = self->_firResponseTime;
    v7[0] = @"FIRResponseTimeSum";
    v7[1] = @"FIRResponseTimeCount";
    v8[0] = [MEMORY[0x277CCABA8] numberWithDouble:(received - oldestPendingFirTime) * 1000.0];
    v8[1] = &unk_284FA5420;
    -[VCReportingDistribution updateWithPayload:](firResponseTime, "updateWithPayload:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2]);
    self->_oldestPendingFirTime = 0.0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)processMLStreamData:(id)data
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = [data objectForKeyedSubscript:@"DecOutMLEnhancedFrameCnt"];
  v6 = [data objectForKeyedSubscript:@"DecOutFrameCnt"];
  v7 = v6;
  if (v5 && v6)
  {
    [v6 doubleValue];
    v9 = 0.0;
    if (v10 > 0.0)
    {
      [v5 doubleValue];
      v12 = v11;
      [v7 doubleValue];
      v9 = v12 / v13 * 100.0;
    }

    LODWORD(v8) = vcvtad_u64_f64(v9);
    [(VCHistogram *)self->_mlEnhanceFramePercent addValue:v8];
  }

  if (!self->_isFinalized)
  {
    [v7 doubleValue];
    v14 = 0;
    LODWORD(v15) = self->_totalDecodedFrameCount;
    self->_totalDecodedFrameCount = (v16 + v15);
    do
    {
      [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%d", @"DecOutMLEnhancedHistInputRes", v14];
      v17 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%d", @"DecOutMLEnhancedHistOutputRes", v14];
      if (!OUTLINED_FUNCTION_75() || ![data objectForKeyedSubscript:v17])
      {
        goto LABEL_25;
      }

      v18 = OUTLINED_FUNCTION_75();
      v19 = [data objectForKeyedSubscript:v17];
      if ([v18 count] == 35 && objc_msgSend(v19, "count") == 35)
      {
        for (i = 0; i != 35; ++i)
        {
          v21 = [(NSArray *)self->_mlEnhancedPercentInputResolutions objectAtIndexedSubscript:v14];
          [objc_msgSend(OUTLINED_FUNCTION_36() "objectAtIndexedSubscript:"doubleValue"")];
          [v21 addValue:i withIncrement:v22];
          v23 = [(NSArray *)self->_mlEnhancedPercentOutputResolutions objectAtIndexedSubscript:v14];
          [objc_msgSend(v19 objectAtIndexedSubscript:{i), "doubleValue"}];
          [v23 addValue:i withIncrement:v24];
        }
      }

      else
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule("") < 5)
          {
            goto LABEL_25;
          }

          v34 = VRTraceErrorLogLevelToCSTR(5u);
          v35 = gVRTraceOSLog;
          if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }

          v36 = [v18 count];
          [v19 count];
          *buf = 136316418;
          v41 = v34;
          v42 = 2080;
          OUTLINED_FUNCTION_52();
          v43 = v37;
          *v44 = v36;
          *&v44[4] = v37;
          *&v44[6] = v38;
          LOWORD(selfCopy) = v37;
          *(&selfCopy + 2) = 35;
          v31 = v35;
          v32 = " [%s] %s:%d ML array size does not match histogram size! inputResolutionArraySize=%d outputResolutionArraySize=%d VCReportingVideoResolutionCount=%d";
          v33 = 46;
        }

        else
        {
          v25 = &stru_284F80940;
          if (objc_opt_respondsToSelector())
          {
            v25 = [(StreamGroupStats *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule("") < 5)
          {
            goto LABEL_25;
          }

          v26 = VRTraceErrorLogLevelToCSTR(5u);
          v27 = gVRTraceOSLog;
          if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }

          v28 = [v18 count];
          [v19 count];
          *buf = 136316930;
          v41 = v26;
          v42 = 2080;
          OUTLINED_FUNCTION_52();
          v43 = 2112;
          *v44 = v25;
          *&v44[8] = 2048;
          selfCopy = self;
          v46 = v29;
          v47 = v28;
          v48 = v29;
          v49 = v30;
          v50 = v29;
          v51 = 35;
          v31 = v27;
          v32 = " [%s] %s:%d %@(%p) ML array size does not match histogram size! inputResolutionArraySize=%d outputResolutionArraySize=%d VCReportingVideoResolutionCount=%d";
          v33 = 66;
        }

        _os_log_impl(&dword_23D4DF000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
      }

LABEL_25:
      ++v14;
    }

    while (v14 != 4);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)finalizeStats
{
  if (!self->_isFinalized)
  {
    v3 = [[VCReportingHistogram alloc] initWithType:83 bucketValues:0];
    v4 = 0;
    do
    {
      [(VCHistogram *)v3 addValue:v4 withIncrement:self->_totalDecodedFrameCount];
      v4 = (v4 + 1);
    }

    while (v4 != 35);
    for (i = 0; i != 4; ++i)
    {
      [-[NSArray objectAtIndexedSubscript:](self->_mlEnhancedPercentInputResolutions objectAtIndexedSubscript:{i), "convertHistogramIntoPercentageUsingValuesFrom:", v3}];
      [-[NSArray objectAtIndexedSubscript:](self->_mlEnhancedPercentOutputResolutions objectAtIndexedSubscript:{i), "convertHistogramIntoPercentageUsingValuesFrom:", v3}];
    }

    self->_isFinalized = 1;
  }
}

@end