@interface VCRedundancyControlAlgorithmVideo
- ($BACB928BC0970026F35E6219D6E28B55)setUpFeedbackAnalyzerConfigWithFrameBasedFECEnabled:(SEL)enabled;
- ($EFC350629329D7EA4758EE5353B94EAC)getFecLevelPerFrameSizeVector;
- (VCRedundancyControlAlgorithmVideo)initWithRedundancyControllerMode:(int)mode maxAllowedRedundancyPercentage:(unsigned int)percentage mediaControlInfoFECFeedbackVersion:(unsigned __int8)version isFrameBasedFECEnabled:(BOOL)enabled;
- (unsigned)computeRedundancyWithBurstyLoss;
- (unsigned)computeRedundancyWithLossPercentage;
- (void)checkAndEnablePersonaBDATv2RedundancyWithStats:(tagVCStatisticsMessage *)stats;
- (void)checkForRedundancyFreeze:(tagVCStatisticsMessage *)freeze;
- (void)dealloc;
- (void)processNWConnectionStatistics:(tagVCStatisticsMessage *)statistics;
- (void)processRCNetworkStatistics:(tagVCStatisticsMessage *)statistics;
- (void)processRTCPPSFBStatistics:(tagVCStatisticsMessage *)statistics;
- (void)processTargetBitrateUpdate:(tagVCStatisticsMessage *)update;
- (void)reset;
- (void)stateFrozen:(tagVCStatisticsMessage *)frozen;
- (void)stateRunning:(tagVCStatisticsMessage *)running;
- (void)updateBurstyLoss:(unsigned int)loss;
- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics;
@end

@implementation VCRedundancyControlAlgorithmVideo

- (VCRedundancyControlAlgorithmVideo)initWithRedundancyControllerMode:(int)mode maxAllowedRedundancyPercentage:(unsigned int)percentage mediaControlInfoFECFeedbackVersion:(unsigned __int8)version isFrameBasedFECEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v21 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCRedundancyControlAlgorithmVideo;
  v10 = [(VCRedundancyControlAlgorithmVideo *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_redundancyMode = mode;
    v10->_redundancyPercentage = 0;
    v10->_maxAllowedRedundancyPercentage = percentage;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = "[VCRedundancyControlAlgorithmVideo initWithRedundancyControllerMode:maxAllowedRedundancyPercentage:mediaControlInfoFECFeedbackVersion:isFrameBasedFECEnabled:]";
        *&buf[22] = 1024;
        LODWORD(v19) = 76;
        WORD2(v19) = 1024;
        *(&v19 + 6) = percentage;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting maxAllowedRedundancyPercentage = %d", buf, 0x22u);
      }
    }

    v11->_mediaControlInfoFECFeedbackVersion = version;
    *buf = -1;
    *&buf[8] = -1;
    *&buf[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = -1;
    *(&v19 + 1) = -1;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    [(VCRedundancyControlAlgorithmVideo *)v11 setUpFeedbackAnalyzerConfigWithFrameBasedFECEnabled:enabledCopy];
    v11->_isRedundancyStrategyResetPending = 0;
    VCFECFeedbackAnalyzer_Create(*MEMORY[0x1E695E480], &v11->_feedbackAnalyzer, buf);
    *&v11->_freezeReason = 0xFFFFFFFFLL;
    if (mode == 9)
    {
      v14 = 8;
    }

    else
    {
      v14 = 6;
    }

    v11->_lossFeedbackPackingLength = v14;
    v11->_isFrameBasedFECEnabled = enabledCopy;
    if (v11->_redundancyMode == 10)
    {
      [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-red-plr-threshold-for-bdatv2" userDefaultKey:0 defaultValue:&unk_1F5798550 isDoubleType:{1), "doubleValue"}];
      v11->_redundancyThresholdForBDATv2 = v15;
    }
  }

  return v11;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  feedbackAnalyzer = self->_feedbackAnalyzer;
  if (feedbackAnalyzer)
  {
    CFRelease(feedbackAnalyzer);
    self->_feedbackAnalyzer = 0;
  }

  v4.receiver = self;
  v4.super_class = VCRedundancyControlAlgorithmVideo;
  [(VCRedundancyControlAlgorithmVideo *)&v4 dealloc];
}

- ($BACB928BC0970026F35E6219D6E28B55)setUpFeedbackAnalyzerConfigWithFrameBasedFECEnabled:(SEL)enabled
{
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-fec-feedback-analyzer-level-match-percentile" userDefaultKey:0 defaultValue:&unk_1F579E3D0 isDoubleType:{1), "doubleValue"}];
  retstr->var0 = v7;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-fec-feedback-analyzer-buffer-max-length" userDefaultKey:0 defaultValue:&unk_1F579E400 isDoubleType:{1), "doubleValue"}];
  v9 = v8;
  retstr->var1 = v8;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-fec-feedback-analyzer-report-min-period" userDefaultKey:0 defaultValue:&unk_1F579E410 isDoubleType:{1), "doubleValue"}];
  if (v10 <= 0.0)
  {
    v11 = 0.02;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCRedundancyControlAlgorithmVideo setUpFeedbackAnalyzerConfigWithFrameBasedFECEnabled:v12];
      }
    }
  }

  else
  {
    v11 = v10;
  }

  retstr->var2 = (v9 / v11);
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-fec-feedback-analyzer-vplr-window-size" userDefaultKey:0 defaultValue:&unk_1F579E420 isDoubleType:{1), "doubleValue"}];
  retstr->var3 = v13;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-fec-feedback-analyzer-interpolation-threshold" userDefaultKey:0 defaultValue:&unk_1F579E3E0 isDoubleType:{1), "doubleValue"}];
  retstr->var4 = v14;
  retstr->var5 = a4;
  redundancyMode = self->_redundancyMode;
  v16 = redundancyMode == 6;
  if (redundancyMode == 6)
  {
    v17 = &unk_1F5798568;
  }

  else
  {
    v17 = &unk_1F5798580;
  }

  v18 = VCFECFeedbackAnalyzerCameraFECLevelCappingBitrate;
  if (!v16)
  {
    v18 = VCFECFeedbackAnalyzerScreenFECLevelCappingBitrate;
  }

  result = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:*v18 userDefaultKey:0 defaultValue:v17 isDoubleType:{0), "unsignedIntValue"}];
  retstr->var6 = result;
  return result;
}

- (void)stateRunning:(tagVCStatisticsMessage *)running
{
  v26 = *MEMORY[0x1E69E9840];
  if (running->var0.feedback.videoReceivedPackets)
  {
    self->_freezeReason = 0;
  }

  else
  {
    if (self->_offChannelTimeRatio <= 0.4)
    {
      if ((atomic_exchange(&self->_isRedundancyStrategyResetPending, 0) & 1) == 0)
      {
        if (self->_freezeReason == -1)
        {
          return;
        }

        goto LABEL_8;
      }

      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    self->_freezeReason = v5;
  }

LABEL_8:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      freezeReason = self->_freezeReason;
      videoReceivedPackets = running->var0.feedback.videoReceivedPackets;
      offChannelTimeRatio = self->_offChannelTimeRatio;
      v11 = atomic_load(&self->_isRedundancyStrategyResetPending);
      v12 = 136316674;
      v13 = v6;
      v14 = 2080;
      v15 = "[VCRedundancyControlAlgorithmVideo stateRunning:]";
      v16 = 1024;
      v17 = 131;
      v18 = 1024;
      v19 = freezeReason;
      v20 = 1024;
      v21 = videoReceivedPackets;
      v22 = 2048;
      v23 = offChannelTimeRatio;
      v24 = 1024;
      v25 = v11 & 1;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Redundancy frozen reason=%d isNetworkCongested=%d _offChannelTimeRatio=%2.3f bluetoohResetFlag=%d", &v12, 0x38u);
    }
  }

  self->_state = 1;
}

- (void)stateFrozen:(tagVCStatisticsMessage *)frozen
{
  v23 = *MEMORY[0x1E69E9840];
  freezeReason = self->_freezeReason;
  if (freezeReason)
  {
    if (freezeReason != 2 && (freezeReason != 1 || self->_offChannelTimeRatio >= 0.25))
    {
      return;
    }
  }

  else if (frozen->var0.feedback.videoReceivedPackets)
  {
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_freezeReason;
      videoReceivedPackets = frozen->var0.feedback.videoReceivedPackets;
      offChannelTimeRatio = self->_offChannelTimeRatio;
      v11 = 136316418;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCRedundancyControlAlgorithmVideo stateFrozen:]";
      v15 = 1024;
      v16 = 153;
      v17 = 1024;
      v18 = v8;
      v19 = 1024;
      v20 = videoReceivedPackets;
      v21 = 2048;
      v22 = offChannelTimeRatio;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Redundancy unfrozen reason=%d isNetworkCongested=%d _offChannelTimeRatio=%2.3f", &v11, 0x32u);
    }
  }

  *&self->_freezeReason = 0xFFFFFFFFLL;
  [(VCRedundancyControlAlgorithmVideo *)self reset];
}

- (void)checkForRedundancyFreeze:(tagVCStatisticsMessage *)freeze
{
  v29 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == 1)
  {
    v10 = *(&freeze->var0.addRemoveEndPoint + 19);
    v26 = *(&freeze->var0.addRemoveEndPoint + 17);
    v27 = v10;
    v28 = *(&freeze->var0.addRemoveEndPoint + 21);
    v11 = *(&freeze->var0.addRemoveEndPoint + 11);
    v22 = *(&freeze->var0.addRemoveEndPoint + 9);
    v23 = v11;
    v12 = *(&freeze->var0.addRemoveEndPoint + 15);
    v24 = *(&freeze->var0.addRemoveEndPoint + 13);
    v25 = v12;
    v13 = *(&freeze->var0.addRemoveEndPoint + 3);
    v18 = *&freeze->var0.rtcpRR.lastSequenceNumber;
    v19 = v13;
    v14 = *(&freeze->var0.addRemoveEndPoint + 7);
    v20 = *(&freeze->var0.addRemoveEndPoint + 5);
    v21 = v14;
    v15 = *&freeze->isVCRCInternal;
    v16 = *&freeze->type;
    v17 = v15;
    [(VCRedundancyControlAlgorithmVideo *)self stateFrozen:&v16];
  }

  else if (!state)
  {
    v4 = *(&freeze->var0.addRemoveEndPoint + 19);
    v26 = *(&freeze->var0.addRemoveEndPoint + 17);
    v27 = v4;
    v28 = *(&freeze->var0.addRemoveEndPoint + 21);
    v5 = *(&freeze->var0.addRemoveEndPoint + 11);
    v22 = *(&freeze->var0.addRemoveEndPoint + 9);
    v23 = v5;
    v6 = *(&freeze->var0.addRemoveEndPoint + 15);
    v24 = *(&freeze->var0.addRemoveEndPoint + 13);
    v25 = v6;
    v7 = *(&freeze->var0.addRemoveEndPoint + 3);
    v18 = *&freeze->var0.rtcpRR.lastSequenceNumber;
    v19 = v7;
    v8 = *(&freeze->var0.addRemoveEndPoint + 7);
    v20 = *(&freeze->var0.addRemoveEndPoint + 5);
    v21 = v8;
    v9 = *&freeze->isVCRCInternal;
    v16 = *&freeze->type;
    v17 = v9;
    [(VCRedundancyControlAlgorithmVideo *)self stateRunning:&v16];
  }
}

- (void)reset
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCRedundancyControlAlgorithmVideo reset]";
      v9 = 1024;
      v10 = 174;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Redundancy reset", &v5, 0x1Cu);
    }
  }

  self->_plrEnvelope = 0.0;
  *&self->_burstyLossArraySize = 0;
  VCFECFeedbackAnalyzer_CleanHistory(self->_feedbackAnalyzer);
}

- (void)updateRedundancyStrategyWithNetworkStatistics:(tagVCStatisticsMessage *)statistics
{
  v35 = *MEMORY[0x1E69E9840];
  type = statistics->type;
  if (statistics->type == 13)
  {
    v16 = *(&statistics->var0.addRemoveEndPoint + 19);
    v32 = *(&statistics->var0.addRemoveEndPoint + 17);
    v33 = v16;
    v34 = *(&statistics->var0.addRemoveEndPoint + 21);
    v17 = *(&statistics->var0.addRemoveEndPoint + 11);
    v28 = *(&statistics->var0.addRemoveEndPoint + 9);
    v29 = v17;
    v18 = *(&statistics->var0.addRemoveEndPoint + 15);
    v30 = *(&statistics->var0.addRemoveEndPoint + 13);
    v31 = v18;
    v19 = *(&statistics->var0.addRemoveEndPoint + 3);
    v24 = *&statistics->var0.rtcpRR.lastSequenceNumber;
    v25 = v19;
    v20 = *(&statistics->var0.addRemoveEndPoint + 7);
    v26 = *(&statistics->var0.addRemoveEndPoint + 5);
    v27 = v20;
    v21 = *&statistics->isVCRCInternal;
    v22 = *&statistics->type;
    v23 = v21;
    [(VCRedundancyControlAlgorithmVideo *)self processRTCPPSFBStatistics:&v22];
  }

  else if (type == 11)
  {
    v10 = *(&statistics->var0.addRemoveEndPoint + 19);
    v32 = *(&statistics->var0.addRemoveEndPoint + 17);
    v33 = v10;
    v34 = *(&statistics->var0.addRemoveEndPoint + 21);
    v11 = *(&statistics->var0.addRemoveEndPoint + 11);
    v28 = *(&statistics->var0.addRemoveEndPoint + 9);
    v29 = v11;
    v12 = *(&statistics->var0.addRemoveEndPoint + 15);
    v30 = *(&statistics->var0.addRemoveEndPoint + 13);
    v31 = v12;
    v13 = *(&statistics->var0.addRemoveEndPoint + 3);
    v24 = *&statistics->var0.rtcpRR.lastSequenceNumber;
    v25 = v13;
    v14 = *(&statistics->var0.addRemoveEndPoint + 7);
    v26 = *(&statistics->var0.addRemoveEndPoint + 5);
    v27 = v14;
    v15 = *&statistics->isVCRCInternal;
    v22 = *&statistics->type;
    v23 = v15;
    [(VCRedundancyControlAlgorithmVideo *)self processNWConnectionStatistics:&v22];
  }

  else if (type == 3)
  {
    v4 = *(&statistics->var0.addRemoveEndPoint + 19);
    v32 = *(&statistics->var0.addRemoveEndPoint + 17);
    v33 = v4;
    v34 = *(&statistics->var0.addRemoveEndPoint + 21);
    v5 = *(&statistics->var0.addRemoveEndPoint + 11);
    v28 = *(&statistics->var0.addRemoveEndPoint + 9);
    v29 = v5;
    v6 = *(&statistics->var0.addRemoveEndPoint + 15);
    v30 = *(&statistics->var0.addRemoveEndPoint + 13);
    v31 = v6;
    v7 = *(&statistics->var0.addRemoveEndPoint + 3);
    v24 = *&statistics->var0.rtcpRR.lastSequenceNumber;
    v25 = v7;
    v8 = *(&statistics->var0.addRemoveEndPoint + 7);
    v26 = *(&statistics->var0.addRemoveEndPoint + 5);
    v27 = v8;
    v9 = *&statistics->isVCRCInternal;
    v22 = *&statistics->type;
    v23 = v9;
    [(VCRedundancyControlAlgorithmVideo *)self processRCNetworkStatistics:&v22];
  }
}

- (void)processNWConnectionStatistics:(tagVCStatisticsMessage *)statistics
{
  if (statistics->type == 11)
  {
    LODWORD(self->_offChannelTimeRatio) = statistics->var0.feedback.receiveQueueTarget;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCRedundancyControlAlgorithmVideo *)v4 processNWConnectionStatistics:v5];
    }
  }
}

- (void)processRTCPPSFBStatistics:(tagVCStatisticsMessage *)statistics
{
  v26 = *MEMORY[0x1E69E9840];
  VCFECFeedbackAnalyzer_ProcessFeedback(self->_feedbackAnalyzer, *&statistics->arrivalTime, statistics->var0.videoLossFeedback.frameSize | (statistics->var0.videoLossFeedback.packetsLost << 16) | 0xAAAAAAAA00000000, v3, v4, v5, v6, v7);
  VPLR = VCFECFeedbackAnalyzer_GetVPLR(self->_feedbackAnalyzer, v10, v11, v12, v13, v14, v15, v16);
  self->_packetLossPercentage = VPLR;
  self->_packetLossPercentageVideo = VPLR;
  if (self->_redundancyMode == 10)
  {
    v18 = *(&statistics->var0.addRemoveEndPoint + 19);
    v24[10] = *(&statistics->var0.addRemoveEndPoint + 17);
    v24[11] = v18;
    v25 = *(&statistics->var0.addRemoveEndPoint + 21);
    v19 = *(&statistics->var0.addRemoveEndPoint + 11);
    v24[6] = *(&statistics->var0.addRemoveEndPoint + 9);
    v24[7] = v19;
    v20 = *(&statistics->var0.addRemoveEndPoint + 15);
    v24[8] = *(&statistics->var0.addRemoveEndPoint + 13);
    v24[9] = v20;
    v21 = *(&statistics->var0.addRemoveEndPoint + 3);
    v24[2] = *&statistics->var0.rtcpRR.lastSequenceNumber;
    v24[3] = v21;
    v22 = *(&statistics->var0.addRemoveEndPoint + 7);
    v24[4] = *(&statistics->var0.addRemoveEndPoint + 5);
    v24[5] = v22;
    v23 = *&statistics->isVCRCInternal;
    v24[0] = *&statistics->type;
    v24[1] = v23;
    [(VCRedundancyControlAlgorithmVideo *)self checkAndEnablePersonaBDATv2RedundancyWithStats:v24];
  }
}

- (void)processRCNetworkStatistics:(tagVCStatisticsMessage *)statistics
{
  v55 = *MEMORY[0x1E69E9840];
  if (statistics->type == 3)
  {
    v5 = *(&statistics->var0.addRemoveEndPoint + 19);
    v52 = *(&statistics->var0.addRemoveEndPoint + 17);
    v53 = v5;
    v54 = *(&statistics->var0.addRemoveEndPoint + 21);
    v6 = *(&statistics->var0.addRemoveEndPoint + 11);
    v48 = *(&statistics->var0.addRemoveEndPoint + 9);
    v49 = v6;
    v7 = *(&statistics->var0.addRemoveEndPoint + 15);
    v50 = *(&statistics->var0.addRemoveEndPoint + 13);
    v51 = v7;
    v8 = *(&statistics->var0.addRemoveEndPoint + 3);
    *&buf[32] = *&statistics->var0.rtcpRR.lastSequenceNumber;
    *v46 = v8;
    v9 = *(&statistics->var0.addRemoveEndPoint + 7);
    *&v46[16] = *(&statistics->var0.addRemoveEndPoint + 5);
    v47 = v9;
    v10 = *&statistics->isVCRCInternal;
    *buf = *&statistics->type;
    *&buf[16] = v10;
    [(VCRedundancyControlAlgorithmVideo *)self processTargetBitrateUpdate:buf];
    self->_packetLossPercentage = statistics->var0.network.packetLossPercentage;
    if (self->_mediaControlInfoFECFeedbackVersion == 1)
    {
      VPLR = VCFECFeedbackAnalyzer_GetVPLR(self->_feedbackAnalyzer, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      VPLR = statistics->var0.network.packetLossPercentageVideo;
    }

    self->_packetLossPercentageVideo = VPLR;
    v20 = *(&statistics->var0.addRemoveEndPoint + 19);
    v52 = *(&statistics->var0.addRemoveEndPoint + 17);
    v53 = v20;
    v54 = *(&statistics->var0.addRemoveEndPoint + 21);
    v21 = *(&statistics->var0.addRemoveEndPoint + 11);
    v48 = *(&statistics->var0.addRemoveEndPoint + 9);
    v49 = v21;
    v22 = *(&statistics->var0.addRemoveEndPoint + 15);
    v50 = *(&statistics->var0.addRemoveEndPoint + 13);
    v51 = v22;
    v23 = *(&statistics->var0.addRemoveEndPoint + 3);
    *&buf[32] = *&statistics->var0.rtcpRR.lastSequenceNumber;
    *v46 = v23;
    v24 = *(&statistics->var0.addRemoveEndPoint + 7);
    *&v46[16] = *(&statistics->var0.addRemoveEndPoint + 5);
    v47 = v24;
    v25 = *&statistics->isVCRCInternal;
    *buf = *&statistics->type;
    *&buf[16] = v25;
    [(VCRedundancyControlAlgorithmVideo *)self checkForRedundancyFreeze:buf];
    if (self->_state != 1)
    {
      if (VCMediaControlInfo_IsLossStatsEnabled(self->_mediaControlInfoFECFeedbackVersion))
      {
        v44 = 0;
        *buf = 0;
        FECUtil_UnpackFrameLoss(*(&statistics->var0.addRemoveEndPoint + 28), buf, &v44, LOWORD(self->_lossFeedbackPackingLength));
        VCFECFeedbackAnalyzer_ProcessFeedback(self->_feedbackAnalyzer, *&statistics->arrivalTime, *buf | (v44 << 16) | 0xAAAAAAAA00000000, v26, v27, v28, v29, v30);
      }

      [(VCRedundancyControlAlgorithmVideo *)self updateBurstyLoss:statistics->var0.baseband.transmittedBytes];
      computeRedundancyWithLossPercentage = [(VCRedundancyControlAlgorithmVideo *)self computeRedundancyWithLossPercentage];
      computeRedundancyWithBurstyLoss = [(VCRedundancyControlAlgorithmVideo *)self computeRedundancyWithBurstyLoss];
      if (computeRedundancyWithLossPercentage <= computeRedundancyWithBurstyLoss)
      {
        v33 = computeRedundancyWithBurstyLoss;
      }

      else
      {
        v33 = computeRedundancyWithLossPercentage;
      }

      if (self->_mediaControlInfoFECFeedbackVersion)
      {
        v34 = computeRedundancyWithLossPercentage;
      }

      else
      {
        v34 = v33;
      }

      if (self->_redundancyPercentage != v34)
      {
        v35 = computeRedundancyWithBurstyLoss;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v36 = VRTraceErrorLogLevelToCSTR();
          v37 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            redundancyPercentage = self->_redundancyPercentage;
            redundancyMode = self->_redundancyMode;
            plrEnvelope = self->_plrEnvelope;
            packetLossPercentage = self->_packetLossPercentage;
            packetLossPercentageVideo = self->_packetLossPercentageVideo;
            mediaControlInfoFECFeedbackVersion = self->_mediaControlInfoFECFeedbackVersion;
            *buf = 136317954;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = "[VCRedundancyControlAlgorithmVideo processRCNetworkStatistics:]";
            *&buf[22] = 1024;
            *&buf[24] = 278;
            *&buf[28] = 1024;
            *&buf[30] = redundancyPercentage;
            *&buf[34] = 1024;
            *&buf[36] = v34;
            *&buf[40] = 1024;
            *&buf[42] = redundancyMode;
            *&buf[46] = 1024;
            *v46 = computeRedundancyWithLossPercentage;
            *&v46[4] = 1024;
            *&v46[6] = v35;
            *&v46[10] = 2048;
            *&v46[12] = plrEnvelope;
            *&v46[20] = 2048;
            *&v46[22] = packetLossPercentage;
            *&v46[30] = 2048;
            *&v47 = packetLossPercentageVideo;
            WORD4(v47) = 1024;
            *(&v47 + 10) = mediaControlInfoFECFeedbackVersion;
            _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Redundancy level changed from %d to %d _redundancyMode=%d redundancyPercentageBasedOnPLR=%d redundancyPercentageBasedOnBurstyLoss=%d _plrEnvelope=%3.3f _packetLossPercentage=%3.3f _packetLossPercentageVideo=%3.3f _mediaControlInfoFECFeedbackVersion=%d", buf, 0x5Eu);
          }
        }

        self->_redundancyPercentage = v34;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCRedundancyControlAlgorithmVideo processRCNetworkStatistics:v19];
    }
  }
}

- (void)updateBurstyLoss:(unsigned int)loss
{
  self->_burstyLoss[self->_burstyLossArrayIndex] = loss;
  burstyLossArraySize = self->_burstyLossArraySize;
  self->_burstyLossArrayIndex = (self->_burstyLossArrayIndex + 1) & 7;
  if (burstyLossArraySize <= 7)
  {
    self->_burstyLossArraySize = burstyLossArraySize + 1;
  }
}

- (unsigned)computeRedundancyWithLossPercentage
{
  v63 = *MEMORY[0x1E69E9840];
  if (self->_redundancyMode == 6)
  {
    packetLossPercentageVideo = self->_packetLossPercentageVideo;
    plrEnvelope = self->_plrEnvelope;
    v5 = dbl_1DBD45A80[plrEnvelope < packetLossPercentageVideo];
    v6 = plrEnvelope * (1.0 - v5) + packetLossPercentageVideo * v5;
    self->_plrEnvelope = v6;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          packetLossPercentage = self->_packetLossPercentage;
          v18 = packetLossPercentage;
          v19 = self->_packetLossPercentageVideo;
          v20 = v19;
          v21 = self->_plrEnvelope;
          v22 = v21;
          v23 = v6;
          v24 = v23;
          VPLR = VCFECFeedbackAnalyzer_GetVPLR(self->_feedbackAnalyzer, v10, v11, v12, v13, v14, v15, v16);
          v47 = 136316930;
          v48 = v7;
          v49 = 2080;
          v50 = "[VCRedundancyControlAlgorithmVideo computeRedundancyWithLossPercentage]";
          v51 = 1024;
          v52 = 334;
          v53 = 2048;
          v54 = v18;
          v55 = 2048;
          v56 = v20;
          v57 = 2048;
          v58 = v22;
          v59 = 2048;
          v60 = v24;
          v61 = 2048;
          v62 = VPLR;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Redundancy level _packetLossPercentage=%2.2f _packetLossPercentageVideo=%2.2f _plrEnvelope=%2.2f currentPLR=%2.2f GetFECVPLR=%2.2f", &v47, 0x4Eu);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v38 = self->_packetLossPercentage;
        v39 = v38;
        v40 = self->_packetLossPercentageVideo;
        v41 = v40;
        v42 = self->_plrEnvelope;
        v43 = v42;
        v44 = v6;
        v45 = v44;
        v46 = VCFECFeedbackAnalyzer_GetVPLR(self->_feedbackAnalyzer, v31, v32, v33, v34, v35, v36, v37);
        v47 = 136316930;
        v48 = v7;
        v49 = 2080;
        v50 = "[VCRedundancyControlAlgorithmVideo computeRedundancyWithLossPercentage]";
        v51 = 1024;
        v52 = 334;
        v53 = 2048;
        v54 = v39;
        v55 = 2048;
        v56 = v41;
        v57 = 2048;
        v58 = v43;
        v59 = 2048;
        v60 = v45;
        v61 = 2048;
        v62 = v46;
        _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Redundancy level _packetLossPercentage=%2.2f _packetLossPercentageVideo=%2.2f _plrEnvelope=%2.2f currentPLR=%2.2f GetFECVPLR=%2.2f", &v47, 0x4Eu);
      }
    }
  }

  else
  {
    v6 = self->_packetLossPercentage;
  }

  if (v6 >= 0.05)
  {
    if (v6 >= 30.0)
    {
      v27 = 300;
    }

    else
    {
      v27 = 200;
    }

    if (v6 >= 20.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 100;
    }

    if (v6 >= 5.0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 50;
    }

    if (v6 >= 2.0)
    {
      v26 = v29;
    }

    else
    {
      v26 = 25;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v26 >= self->_maxAllowedRedundancyPercentage)
  {
    return self->_maxAllowedRedundancyPercentage;
  }

  else
  {
    return v26;
  }
}

- (unsigned)computeRedundancyWithBurstyLoss
{
  burstyLossArraySize = self->_burstyLossArraySize;
  if (burstyLossArraySize)
  {
    v3 = 0;
    burstyLoss = self->_burstyLoss;
    do
    {
      v6 = *burstyLoss++;
      v5 = v6;
      if (v3 <= v6)
      {
        v3 = v5;
      }

      --burstyLossArraySize;
    }

    while (burstyLossArraySize);
    if (v3 >= 5)
    {
      v7 = 300;
    }

    else
    {
      v7 = dword_1DBD45A90[v3];
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7 >= self->_maxAllowedRedundancyPercentage)
  {
    return self->_maxAllowedRedundancyPercentage;
  }

  else
  {
    return v7;
  }
}

- ($EFC350629329D7EA4758EE5353B94EAC)getFecLevelPerFrameSizeVector
{
  bzero(retstr, 0x202uLL);
  feedbackAnalyzer = self->_feedbackAnalyzer;

  return VCFECFeedbackAnalyzer_GetFECLevelVector(feedbackAnalyzer, retstr);
}

- (void)checkAndEnablePersonaBDATv2RedundancyWithStats:(tagVCStatisticsMessage *)stats
{
  v26 = *MEMORY[0x1E69E9840];
  redundancyPercentage = self->_redundancyPercentage;
  if (self->_redundancyMode == 10 && (v5 = self->_plrEnvelope * (1.0 - dbl_1DBD45A60[self->_plrEnvelope < self->_packetLossPercentageVideo]) + self->_packetLossPercentageVideo * dbl_1DBD45A60[self->_plrEnvelope < self->_packetLossPercentageVideo], self->_plrEnvelope = v5, v5 > self->_redundancyThresholdForBDATv2))
  {
    v6 = 100;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != redundancyPercentage)
  {
    self->_redundancyPercentage = v6;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_redundancyPercentage;
        packetLossPercentageVideo = self->_packetLossPercentageVideo;
        plrEnvelope = self->_plrEnvelope;
        v12 = 136316674;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCRedundancyControlAlgorithmVideo checkAndEnablePersonaBDATv2RedundancyWithStats:]";
        v16 = 1024;
        v17 = 219;
        v18 = 1024;
        v19 = redundancyPercentage;
        v20 = 1024;
        v21 = v9;
        v22 = 2048;
        v23 = plrEnvelope;
        v24 = 2048;
        v25 = packetLossPercentageVideo;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d redundancy percentage changed from previousRedundancy=%u to _redundancyPercentage=%u _plrEnvelope=%f currentLossPercentage=%f", &v12, 0x3Cu);
      }
    }
  }
}

- (void)processTargetBitrateUpdate:(tagVCStatisticsMessage *)update
{
  if (self->_isFrameBasedFECEnabled)
  {
    VCFECFeedbackAnalyzer_UpdateTargetBitrate(self->_feedbackAnalyzer, update->var0.feedback.totalSentPackets);
  }
}

- (void)setUpFeedbackAnalyzerConfigWithFrameBasedFECEnabled:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 136316162;
  v4 = a1;
  OUTLINED_FUNCTION_0();
  v5 = 104;
  v6 = 2048;
  v7 = v1;
  v8 = 2048;
  v9 = 0x3F947AE147AE147BLL;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected reportMinPeriod storebag value %f, falling back to default %f", &v3, 0x30u);
}

- (void)processNWConnectionStatistics:(os_log_t)log .cold.1(uint64_t a1, int *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCRedundancyControlAlgorithmVideo processNWConnectionStatistics:]";
  v8 = 1024;
  v9 = 199;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl type=%d", &v4, 0x22u);
}

- (void)processRCNetworkStatistics:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 241;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d wrong type of statistics message is processed by VCRedundancyControl", &v2, 0x1Cu);
}

@end