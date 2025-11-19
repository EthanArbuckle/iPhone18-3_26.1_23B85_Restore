@interface VCAudioTransmitter
- ($630EEFBF570FF8F3C5E9582E2A557BD5)currentChannelMetrics;
- (BOOL)allocateLastInputSampleBuffer:(unsigned int)a3;
- (BOOL)chooseAudioNetworkBitrate;
- (BOOL)isCodecModeChangeRequestValid:(_VCAudioCodecModeChangeEvent *)a3;
- (BOOL)sendCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)a3;
- (BOOL)setupAudio:(id *)a3;
- (BOOL)setupAudioEncoders;
- (BOOL)setupAudioTierPicker;
- (BOOL)setupEncoderBuffer;
- (BOOL)shouldUpdateCodecBandwidth:(_VCAudioCodecModeChangeEvent *)a3;
- (BOOL)shouldUpdateCodecBitrate:(_VCAudioCodecModeChangeEvent *)a3;
- (NSDictionary)dtxMetrics;
- (VCAudioTransmitter)initWithConfig:(id)a3;
- (float)nextAudioInterval:(int)a3;
- (id)packetsPerBundle;
- (int)redundancyControllerModeForOperatingMode:(int)a3 isRedEnabled:(BOOL)a4 isHigherAudioREDCutoverU1Enabled:(BOOL)a5;
- (unsigned)initialTargetBitrate;
- (unsigned)maximumSamplesPerFrame;
- (void)audioIssueDetectorCreateAndConfigure;
- (void)audioIssueDetectorStopAndFinalize;
- (void)currentPayloadUsed:(int)a3 payloadUsed:(id *)a4;
- (void)dealloc;
- (void)gatherRealtimeStats:(__CFDictionary *)a3;
- (void)handleActiveConnectionChange:(id)a3;
- (void)handleActiveConnectionChangeDefault:(id)a3;
- (void)handleActiveConnectionChangeMultiway:(id)a3;
- (void)handleCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)a3 didUpdateBandwidth:(BOOL *)a4 didUpdateBitrate:(BOOL *)a5;
- (void)initAudioValues;
- (void)logNWConnectionNotification:(tagVCNWConnectionNotification *)a3;
- (void)logNWConnectionNotificationBBAdvisoryTypeBWLimitation:(tagVCNWConnectionNotification *)a3;
- (void)logNWConnectionNotificationBBAdvisoryTypeCDRX:(tagVCNWConnectionNotification *)a3;
- (void)logNWConnectionNotificationBBAdvisoryTypeDefault:(tagVCNWConnectionNotification *)a3;
- (void)logNWConnectionNotificationBBAdvisoryTypeLinkMeasurement:(tagVCNWConnectionNotification *)a3;
- (void)logTierInfo:(int)a3;
- (void)process5GRATInNWConnectionNotification:(tagVCNWConnectionNotification *)a3;
- (void)processCDRXInNWConnectionNotification:(tagVCNWConnectionNotification *)a3;
- (void)processNWConnectionNotification:(tagVCNWConnectionNotification *)a3;
- (void)redundancyController:(id)a3 redundancyIntervalDidChange:(double)a4;
- (void)redundancyController:(id)a3 redundancyPercentageDidChange:(unsigned int)a4;
- (void)removeUnusedAudioPayloads;
- (void)reportRTCPPacket;
- (void)reportRedundancyConfigChange;
- (void)setCellTech:(int)a3 remoteCellular:(int)a4 isIPV6:(int)a5 audioCap:(unsigned int)a6;
- (void)setCurrentChannelMetrics:(id *)a3;
- (void)setCurrentDTXEnable:(BOOL)a3;
- (void)setOperatingMode:(int)a3;
- (void)setRedNumPayloads:(int)a3 withMaxDelay:(int)a4 shouldResetHistory:(BOOL)a5 shouldEnableShortRED:(BOOL)a6;
- (void)setStreamIDs:(id)a3;
- (void)setTierPickerMode:(unsigned __int8)a3;
- (void)setupAudioEncoders;
- (void)setupAudioHeaderSize;
- (void)start;
- (void)stop;
- (void)updateAudioTxBitrate;
- (void)updateAudioTxRate;
- (void)useAudioPayload:(id)a3 withBitrate:(unsigned int)a4 redNumPayloads:(unsigned int)a5;
- (void)useAudioTier:(id)a3;
@end

@implementation VCAudioTransmitter

- (void)redundancyController:(id)a3 redundancyIntervalDidChange:(double)a4
{
  self->_redundancyInterval = a4;
  v5 = [+[VCDefaults forceRedMaxDelay:a3]];
  if (v5)
  {
    self->_redundancyInterval = (20 * v5);
  }
}

- (VCAudioTransmitter)initWithConfig:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = VCAudioTransmitter;
  v4 = [(VCAudioTransmitter *)&v40 init];
  if (!v4)
  {
    return v4;
  }

  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_28;
    }

    __str = 0;
    v6 = a3 ? [objc_msgSend(a3 "description")] : "<nil>";
    asprintf(&__str, "Initializing with config=%s", v6);
    if (!__str)
    {
      goto LABEL_28;
    }

    __lasts = 0;
    v13 = strtok_r(__str, "\n", &__lasts);
    v14 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter initWithConfig:]";
          *&buf[22] = 1024;
          *&buf[24] = 165;
          *&buf[28] = 2080;
          *&buf[30] = "";
          *&buf[38] = 2080;
          *&buf[40] = v13;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v13 = strtok_r(0, "\n", &__lasts);
    }

    while (v13);
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_28;
    }

    __str = 0;
    v7 = [(__CFString *)v5 UTF8String];
    v8 = a3 ? [objc_msgSend(a3 "description")] : "<nil>";
    asprintf(&__str, "%s(%p) Initializing with config=%s", v7, v4, v8);
    if (!__str)
    {
      goto LABEL_28;
    }

    __lasts = 0;
    v9 = strtok_r(__str, "\n", &__lasts);
    v10 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter initWithConfig:]";
          *&buf[22] = 1024;
          *&buf[24] = 165;
          *&buf[28] = 2080;
          *&buf[30] = "";
          *&buf[38] = 2080;
          *&buf[40] = v9;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v9 = strtok_r(0, "\n", &__lasts);
    }

    while (v9);
  }

  free(__str);
LABEL_28:
  *(v4 + 37) = [a3 rtpHandle];
  v17 = [a3 controlInfoGenerator];
  if (v17)
  {
    v17 = CFRetain(v17);
  }

  *(v4 + 41) = v17;
  *(v4 + 45) = [objc_msgSend(a3 "audioPayloads")];
  *(v4 + 47) = [a3 chosenAudioPayload];
  *(v4 + 46) = [a3 chosenDTXPayload];
  v4[344] = [a3 isRedEnabled];
  *(v4 + 96) = [a3 chosenRedPayloadType];
  v4[345] = [a3 includeRedSequenceOffset];
  *(v4 + 87) = [a3 redNumPayloads];
  *(v4 + 88) = [a3 redMaxDelay20ms];
  v4[336] = [a3 useRateControl];
  v4[337] = [a3 isUseCaseWatchContinuity];
  v4[338] = [a3 allowAudioSwitching];
  *(v4 + 38) = [a3 afrcHandle];
  *(v4 + 113) = [a3 operatingMode];
  v4[339] = [a3 supportsAdaptation];
  v4[340] = [a3 needsPacketThread];
  *(v4 + 57) = [a3 transportSession];
  *(v4 + 39) = [a3 mediaQueue];
  *(v4 + 40) = [a3 rtpVideo];
  v18 = v4 + 392;
  if (a3)
  {
    [a3 inputFormat];
  }

  else
  {
    memset(buf, 0, 48);
  }

  v19 = *&buf[16];
  *v18 = *buf;
  *(v4 + 408) = v19;
  *(v4 + 424) = *&buf[32];
  *(v4 + 31) = [a3 statisticsCollector];
  v4[356] = [a3 transmitROC];
  v4[472] = [a3 ignoreSilence];
  *(v4 + 52) = [v4 initialTargetBitrate];
  *(v4 + 119) = [a3 tierNetworkBitrate];
  *(v4 + 174) = [a3 maxIDSStreamIdCount];
  *(v4 + 88) = [a3 supportedNumRedundantPayload];
  v4[480] = [a3 sendActiveVoiceOnly];
  v4[712] = [a3 isCurrentDTXEnabled];
  v4[713] = [a3 mediaControlInfoVersion];
  v4[714] = [a3 alwaysOnAudioRedundancyEnabled];
  v4[715] = [a3 cellularAllowRedLowBitratesEnabled];
  v4[716] = [a3 wifiAllowRedLowBitratesEnabled];
  *(v4 + 91) = [a3 remoteIDSParticipantID];
  v4[736] = [a3 useChannelDataFormat];
  *(v4 + 121) = [a3 qualityIndex];
  v4[737] = [a3 useWifiTiers];
  v4[738] = [a3 supportsCodecBandwidthUpdate];
  v4[924] = [a3 tierPickerMode];
  v4[992] = [a3 targetBitrateIsAudioOnly];
  if ([a3 maxAudioPacketSize])
  {
    v20 = [a3 maxAudioPacketSize];
  }

  else
  {
    v20 = 1280;
  }

  *(v4 + 24) = v20;
  *(v4 + 25) = [a3 constantTransportOverhead];
  v4[961] = [a3 isACC24Enabled];
  *(v4 + 121) = [a3 experimentManager];
  if (v4[736] == 1)
  {
    if (*(v4 + 25))
    {
      v21 = *(v4 + 25) + VCNetworkUtils_AdditionalOverheadForIDSOptions();
    }

    else
    {
      v21 = VCNetworkUtils_WorstCaseIDSOverheadForOptions();
    }

    *(v4 + 25) = v21;
    v4[695] = 1;
  }

  v22 = *(v4 + 91);
  if (v22)
  {
    v4[646] = 1;
    *(v4 + 81) = v22;
  }

  v23 = [a3 sframeCryptor];
  if (v23)
  {
    v23 = CFRetain(v23);
  }

  *(v4 + 106) = v23;
  *(v4 + 247) = [a3 packetExpirationTime];
  *(v4 + 122) = [a3 ratType];
  v24 = *(v4 + 55);
  v25 = [a3 reportingAgent];
  *(v4 + 55) = v25;
  if (v25)
  {
    CFRetain(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  *(v4 + 112) = VCReporting_GetDynamicReportingModuleID();
  [a3 reportingParentID];
  reportingInheritModuleSpecificInfoFromParent();
  *(v4 + 90) = VCMemoryPool_CreateTyped(0x640uLL, 2964314069);
  v26 = *(v4 + 46);
  v27 = *(v4 + 57);
  v28 = *(v4 + 31);
  *(v4 + 1) = -[VCPacketBundler initWithOperatingMode:bundlingScheme:]([VCPacketBundler alloc], "initWithOperatingMode:bundlingScheme:", *(v4 + 113), [a3 bundlingScheme]);
  [*(v4 + 1) setPacketsPerBundle:{objc_msgSend(a3, "packetsPerBundle")}];
  *(v4 + 2) = -[VCPacketBundler initWithOperatingMode:bundlingScheme:]([VCPacketBundler alloc], "initWithOperatingMode:bundlingScheme:", *(v4 + 113), [a3 bundlingScheme]);
  [*(v4 + 2) setPacketsPerBundle:{objc_msgSend(a3, "packetsPerBundle")}];
  v4[916] = 0;
  *(v4 + 230) = 0;
  *(v4 + 228) = 128;
  [v4 initAudioValues];
  *(v4 + 3) = [[VCAudioRedBuilder alloc] initWithRedPayloadType:*(v4 + 96) sampleRate:*(v4 + 49) samplesPerFrame:*(v4 + 108) numPayloads:*(v4 + 87) maxDelay:*(v4 + 88) includeSequenceOffset:v4[345]];
  if ([a3 shouldCreateRedundancyController])
  {
    *(v4 + 4) = -[VCRedundancyControllerAudio initWithDelegate:statisticsCollector:mode:experimentManager:]([VCRedundancyControllerAudio alloc], "initWithDelegate:statisticsCollector:mode:experimentManager:", v4, *(v4 + 31), [v4 redundancyControllerModeForOperatingMode:*(v4 + 113) isRedEnabled:v4[344] isHigherAudioREDCutoverU1Enabled:{objc_msgSend(a3, "isHigherAudioREDCutoverU1Enabled")}], *(v4 + 121));
  }

  v29 = [+[VCDefaults sharedInstance](VCDefaults forceRedNumPayloads];
  if (v29)
  {
    *(v4 + 56) = 100 * v29;
  }

  v30 = [+[VCDefaults sharedInstance](VCDefaults forceRedMaxDelay];
  if (v30)
  {
    *(v4 + 29) = (20 * v30);
  }

  v31 = *(v4 + 49);
  *(v4 + 28) = *(v4 + 108) / v31;
  [*(v4 + 1) setMaxPacketSize:1600];
  [*(v4 + 2) setMaxPacketSize:1600];
  *(v4 + 244) = RTPGetTimestampBase();
  [v4 setStreamIDs:{objc_msgSend(a3, "streamIDs")}];
  v4[980] = VCDefaults_GetBoolValueForKey(@"shouldApplyRedAsBoolean", [a3 shouldApplyRedAsBoolean]);
  *(v4 + 107) = 0;
  if ([a3 audioIssueDetectorEnabled])
  {
    [v4 audioIssueDetectorCreateAndConfigure];
  }

  v4[888] = [a3 audioDumpEnabled];
  *(v4 + 113) = v18;
  *(v4 + 223) = [objc_msgSend(*(v4 + 47) "config")];
  v4[896] = [objc_msgSend(*(v4 + 47) "config")];
  v4[897] = [objc_msgSend(*(v4 + 47) "config")];
  v4[608] = 0;
  *(v4 + 872) = 0u;
  v4[925] = [a3 ramStadSRCEnabled];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v32 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
    asprintf(&__str, "%s[%p] %s", v32, v4, [objc_msgSend(a3 "description")]);
    if (__str)
    {
      __lasts = 0;
      v33 = strtok_r(__str, "\n", &__lasts);
      v34 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v35 = VRTraceErrorLogLevelToCSTR();
          v36 = *v34;
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v35;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioTransmitter initWithConfig:]";
            *&buf[22] = 1024;
            *&buf[24] = 287;
            *&buf[28] = 2080;
            *&buf[30] = "[VCAudioTransmitter initWithConfig:]";
            *&buf[38] = 2080;
            *&buf[40] = v33;
            _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v33 = strtok_r(0, "\n", &__lasts);
      }

      while (v33);
      free(__str);
    }
  }

  return v4;
}

- (unsigned)initialTargetBitrate
{
  if ([(VCAudioTransmitter *)self isStandaloneStreamMode]&& self->_inputFormat.format.mChannelsPerFrame == 4)
  {
    return 900000;
  }

  else
  {
    return 100000;
  }
}

- (int)redundancyControllerModeForOperatingMode:(int)a3 isRedEnabled:(BOOL)a4 isHigherAudioREDCutoverU1Enabled:(BOOL)a5
{
  v5 = 1 << a3;
  if (a5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (!a4)
  {
    v6 = 1;
  }

  if ((v5 & 0x86) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 4;
  }

  if ((v5 & 0x3F39) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (a3 <= 0xD)
  {
    return v8;
  }

  else
  {
    return 4;
  }
}

- (void)initAudioValues
{
  self->_lastIsTalking = 1;
  self->_lastUpdateQualityIndicator = 0.0;
  self->_qualityIndicator = 0;
  self->_audioTierChangeRequestCount = 0;
  self->_lastTierSwitch = 0.0;
  self->_audioTxBitrate = 32000;
  LODWORD(v2) = self->_inputFormat.samplesPerFrame;
  self->_audioInterval = v2 / self->_inputFormat.format.mSampleRate;
  self->_lastSentAudioSampleTime = 0;
  self->_inputMeter = 0;
  self->_audioHeaderSize = -1;
  self->_audioTierChangeCount = 0;
  self->_sendSilenceSamplesEnabled = 0;
  self->_firstSilencePacketTimeStamp = NAN;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  reportingUnregisterPeriodicTask();
  reportingCacheModuleSpecificInfo();
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  objc_storeWeak(&self->_delegate, 0);
  lastInputSampleBuffer = self->_lastInputSampleBuffer;
  if (lastInputSampleBuffer)
  {
    free(lastInputSampleBuffer);
  }

  [(VCRedundancyControllerAudio *)self->_redundancyController unregisterStatistics];
  controlInfoGenerator = self->_controlInfoGenerator;
  if (controlInfoGenerator)
  {
    CFRelease(controlInfoGenerator);
  }

  sframeCryptor = self->_sframeCryptor;
  if (sframeCryptor)
  {
    CFRelease(sframeCryptor);
  }

  VCAudioBufferList_Destroy(&self->_encodeBuffer);
  audioBundlePool = self->_audioBundlePool;
  if (audioBundlePool)
  {
    VCMemoryPool_Destroy(audioBundlePool);
    self->_audioBundlePool = 0;
  }

  if (self->_audioIssueDetector)
  {
    [(VCAudioTransmitter *)self audioIssueDetectorStopAndFinalize];
  }

  VCAudioDump_Finalize(&self->_encoderOutAudioDump);
  VCAudioDump_Finalize(&self->_encoderInAudioDump);
  v8.receiver = self;
  v8.super_class = VCAudioTransmitter;
  [(VCAudioTransmitter *)&v8 dealloc];
}

- (BOOL)isCodecModeChangeRequestValid:(_VCAudioCodecModeChangeEvent *)a3
{
  v5 = [VCPayloadUtils isCodecModeSupported:a3->codecRateMode forBandwidth:a3->codecBandwidth withPayload:a3->payload];
  v6 = [VCPayloadUtils skipBandWidthCheckForCodecRateModes:a3->payload supportedBitrates:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] supportedBitrates]];
  result = v6 && v5;
  if (!v6 && v5)
  {
    if ([(VCAudioPayload *)self->_currentAudioPayload bandwidth]== a3->codecBandwidth)
    {
      return 1;
    }

    else
    {
      v8 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] supportedBandwidths];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3->codecBandwidth];

      return [(NSArray *)v8 containsObject:v9];
    }
  }

  return result;
}

- (void)handleCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)a3 didUpdateBandwidth:(BOOL *)a4 didUpdateBitrate:(BOOL *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = *a3;
  if ([(VCAudioTransmitter *)self isCodecModeChangeRequestValid:&v31])
  {
    v9 = [VCPayloadUtils isEVSPayload:a3->payload];
    offset = a3->RFParams.offset;
    v11 = offset > 7;
    v12 = (1 << offset) & 0xAC;
    if (!v11 && v12 != 0 && a3->RFParams.indicator < 2 && v9)
    {
      if ([(VCAudioPayload *)self->_currentAudioPayload setEVSRFParams:&a3->RFParams])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v17 = a3->RFParams.offset;
            indicator = a3->RFParams.indicator;
            v31.payload = 136316418;
            *&v31.codecRateMode = v15;
            LOWORD(v31.codecBitrate) = 2080;
            *(&v31.codecBitrate + 2) = "[VCAudioTransmitter handleCodecModeChangeEvent:didUpdateBandwidth:didUpdateBitrate:]";
            HIWORD(v31.RFParams.indicator) = 1024;
            v32 = 455;
            v33 = 2048;
            v34 = self;
            v35 = 1024;
            v36 = v17;
            v37 = 1024;
            v38 = indicator;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] EVSCodec rfparams change requested offset=%u indicator=%u ", &v31, 0x32u);
          }
        }
      }
    }

    if (self->_supportsCodecBandwidthUpdate)
    {
      v31 = *a3;
      if ([(VCAudioTransmitter *)self shouldUpdateCodecBandwidth:&v31])
      {
        v19 = [(VCAudioPayload *)self->_currentAudioPayload setBandwidth:a3->codecBandwidth];
        if (a4)
        {
          if (v19)
          {
            *a4 = 1;
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v20 = VRTraceErrorLogLevelToCSTR();
              v21 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                payload = a3->payload;
                codecRateMode = a3->codecRateMode;
                codecBandwidth = a3->codecBandwidth;
                v31.payload = 136316674;
                *&v31.codecRateMode = v20;
                LOWORD(v31.codecBitrate) = 2080;
                *(&v31.codecBitrate + 2) = "[VCAudioTransmitter handleCodecModeChangeEvent:didUpdateBandwidth:didUpdateBitrate:]";
                HIWORD(v31.RFParams.indicator) = 1024;
                v32 = 462;
                v33 = 2048;
                v34 = self;
                v35 = 1024;
                v36 = payload;
                v37 = 1024;
                v38 = codecRateMode;
                v39 = 1024;
                v40 = codecBandwidth;
                _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Codec bandwidth change requested for payload=%u: mode=%u bandwidth=%u", &v31, 0x38u);
              }
            }
          }
        }
      }
    }

    v31 = *a3;
    if ([(VCAudioTransmitter *)self shouldUpdateCodecBitrate:&v31])
    {
      v25 = [(VCAudioPayload *)self->_currentAudioPayload setBitrate:a3->codecBitrate];
      if (a5)
      {
        if (v25)
        {
          *a5 = 1;
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v28 = a3->payload;
              v29 = a3->codecRateMode;
              codecBitrate = a3->codecBitrate;
              v31.payload = 136316674;
              *&v31.codecRateMode = v26;
              LOWORD(v31.codecBitrate) = 2080;
              *(&v31.codecBitrate + 2) = "[VCAudioTransmitter handleCodecModeChangeEvent:didUpdateBandwidth:didUpdateBitrate:]";
              HIWORD(v31.RFParams.indicator) = 1024;
              v32 = 469;
              v33 = 2048;
              v34 = self;
              v35 = 1024;
              v36 = v28;
              v37 = 1024;
              v38 = v29;
              v39 = 1024;
              v40 = codecBitrate;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Codec rate mode change requested for payload=%u: mode=%u bitrate=%u", &v31, 0x38u);
            }
          }
        }
      }
    }
  }

  else
  {
    [VCAudioTransmitter handleCodecModeChangeEvent:? didUpdateBandwidth:? didUpdateBitrate:?];
  }
}

- (BOOL)sendCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  currentAudioPayload = self->_currentAudioPayload;
  v17 = *a3;
  v6 = [(VCAudioPayload *)currentAudioPayload setCodecModeRequest:&v17];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        codecRateMode = a3->codecRateMode;
        codecBandwidth = a3->codecBandwidth;
        v17.payload = 136316418;
        *&v17.codecRateMode = v8;
        LOWORD(v17.codecBitrate) = 2080;
        *(&v17.codecBitrate + 2) = "[VCAudioTransmitter sendCodecModeChangeEvent:]";
        HIWORD(v17.RFParams.indicator) = 1024;
        v18 = 479;
        v19 = 2048;
        v20 = self;
        v21 = 1024;
        v22 = codecRateMode;
        v23 = 1024;
        v24 = codecBandwidth;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Requested codec rate mode change: mode=%u bandwidth=%u", &v17, 0x32u);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = a3->codecRateMode;
      v16 = a3->codecBandwidth;
      v17.payload = 136316418;
      *&v17.codecRateMode = v12;
      LOWORD(v17.codecBitrate) = 2080;
      *(&v17.codecBitrate + 2) = "[VCAudioTransmitter sendCodecModeChangeEvent:]";
      HIWORD(v17.RFParams.indicator) = 1024;
      v18 = 481;
      v19 = 2048;
      v20 = self;
      v21 = 1024;
      v22 = v15;
      v23 = 1024;
      v24 = v16;
      _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCAudioTransmitter[%p] Failed requesting codec rate mode change: mode=%u bandwidth=%u", &v17, 0x32u);
    }
  }

  return v6;
}

- (void)setCellTech:(int)a3 remoteCellular:(int)a4 isIPV6:(int)a5 audioCap:(unsigned int)a6
{
  v6 = self->_isLocalCellular_LowestConnectionQuality != a3 || self->_isRemoteCellular_LowestConnectionQuality != a4 || self->_isConnectedOnIPv6_LowestConnectionQuality != a5 || self->_currentAudioCap != a6;
  self->_isConnectedOnIPv6_LowestConnectionQuality = a5 != 0;
  self->_isLocalCellular_LowestConnectionQuality = a3 != 0;
  self->_isRemoteCellular_LowestConnectionQuality = a4 != 0;
  self->_currentAudioCap = a6;
  if (v6)
  {
    atomic_fetch_add(&self->_audioTierChangeRequestCount, 1u);
  }
}

- (BOOL)setupEncoderBuffer
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  audioPayloads = self->_audioPayloads;
  v4 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(audioPayloads);
      }

      v9 = [objc_msgSend(*(*(&v15 + 1) + 8 * i) "config")];
      if (v9 > v6)
      {
        v6 = v9;
      }
    }

    v5 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v15 objects:v14 count:16];
  }

  while (v5);
  if (v6)
  {
      ;
    }
  }

  else
  {
LABEL_14:
    j = 0;
  }

  VCAudioBufferList_Destroy(&self->_encodeBuffer);
  v11 = *&self->_inputFormat.format.mBytesPerPacket;
  *&v13.mSampleRate = *&self->_inputFormat.format.mSampleRate;
  *&v13.mBytesPerPacket = v11;
  *&v13.mBitsPerChannel = *&self->_inputFormat.format.mBitsPerChannel;
  return VCAudioBufferList_Allocate(&v13, j, &self->_encodeBuffer);
}

- (BOOL)setupAudio:(id *)a3
{
  self->_encoderOutAudioDump = VCAudioDump_Create(1u, &self->_payloadInfo);
  self->_encoderInAudioDump = VCAudioDump_Create(0, &self->_payloadInfo);
  [(VCAudioTransmitter *)self setupAudioHeaderSize];
  if (![(VCAudioTransmitter *)self setupAudioTierPicker])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioTransmitter.m", 528];
    v7 = @"Couldn't setup audio selector";
    v8 = @"Bad audio payload?";
LABEL_12:
    v9 = a3;
    v10 = 227;
    goto LABEL_13;
  }

  [(VCAudioTransmitter *)self logTierInfo:0];
  if ([(VCAudioTransmitter *)self setupAudioEncoders])
  {
    if ([(VCPacketBundler *)self->_audioBundler allocateBundleBuffer:1600]&& [(VCPacketBundler *)self->_audioBundlerShortRED allocateBundleBuffer:1600]&& [(VCAudioTransmitter *)self allocateLastInputSampleBuffer:[(VCAudioTransmitter *)self maximumSamplesPerFrame]])
    {
      if ([(VCAudioTransmitter *)self setupEncoderBuffer])
      {
        return 1;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioTransmitter.m", 561];
      v7 = @"Couldn't allocate encode buffer for audio";
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioTransmitter.m", 551];
      v7 = @"Couldn't allocate memory for audio";
    }

    v8 = @"Malloc?";
    goto LABEL_12;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioTransmitter.m", 540];
  v7 = @"Couldn't setup encoder.";
  v8 = @"Bad remote payload?";
  v9 = a3;
  v10 = 226;
LABEL_13:
  [GKVoiceChatError getNSError:v9 code:32016 detailedCode:v10 filePath:v6 description:v7 reason:v8];
  return 0;
}

- (void)setOperatingMode:(int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_operatingMode != a3)
  {
    self->_operatingMode = a3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [VCStringUtils cStringFromOperatingMode:self->_operatingMode];
        v7 = 136316162;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCAudioTransmitter setOperatingMode:]";
        v11 = 1024;
        v12 = 573;
        v13 = 2048;
        v14 = self;
        v15 = 2080;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] operatingMode changed to %s", &v7, 0x30u);
      }
    }
  }
}

- (void)setTierPickerMode:(unsigned __int8)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_tierPickerMode != a3)
  {
    self->_tierPickerMode = a3;
    atomic_fetch_add(&self->_audioTierChangeRequestCount, 1u);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [VCStringUtils cStringFromTierPickerMode:self->_tierPickerMode];
        v7 = 136316162;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCAudioTransmitter setTierPickerMode:]";
        v11 = 1024;
        v12 = 581;
        v13 = 2048;
        v14 = self;
        v15 = 2080;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Setting tierPickerMode=%s. Resetting the audio tier picker", &v7, 0x30u);
      }
    }
  }
}

- (void)updateAudioTxRate
{
  v3 = micro();
  lastReportingCallbackTimeShort = self->_lastReportingCallbackTimeShort;
  v5 = v3 - lastReportingCallbackTimeShort;
  self->_lastReportingCallbackTimeShort = v3;
  networkBitrate = self->_currentChannelMetrics.networkBitrate;
  *&self->_currentChannelMetrics.networkBitrate[1] = *self->_currentChannelMetrics.networkBitrate;
  if (v3 - lastReportingCallbackTimeShort >= 0.5)
  {
    v8 = [(VCAudioTransmitter *)self sentAudioBytesShort];
    HIDWORD(lastReportingCallbackTimeShort) = 1083129856;
    v7 = ((8 * v8) / v5 / 1000.0 + 0.5);
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
  *networkBitrate = v7;
  v10 = 0.0;
  do
  {
    LODWORD(lastReportingCallbackTimeShort) = networkBitrate[v9];
    lastReportingCallbackTimeShort = *&lastReportingCallbackTimeShort;
    v10 = v10 + lastReportingCallbackTimeShort;
    ++v9;
  }

  while (v9 != 5);
  self->_currentChannelMetrics.averageNetworkBitrate = (v10 / 5.0);
}

- (void)gatherRealtimeStats:(__CFDictionary *)a3
{
  v63 = *MEMORY[0x1E69E9840];
  [(VCAudioTransmitter *)self updateAudioTxRate];
  if (a3)
  {
    v5 = micro();
    v6 = v5 - self->_lastReportingCallbackTime;
    self->_lastReportingCallbackTime = v5;
    if (v6 >= 0.5)
    {
      v11 = ((8 * [(VCAudioTransmitter *)self encodedBytes]) / v6 / 1000.0 + 0.5);
      v10 = ((8 * [(VCAudioTransmitter *)self sentAudioBytes]) / v6 / 1000.0 + 0.5);
      v9 = ((8 * [(VCAudioTransmitter *)self encodedRedBytes]) / v6 / 1000.0 + 0.5);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v36 = v7;
          v37 = 2080;
          v38 = "[VCAudioTransmitter gatherRealtimeStats:]";
          v39 = 1024;
          v40 = 625;
          v41 = 2048;
          v42 = self;
          v43 = 2048;
          *v44 = v6;
          *&v44[8] = 2048;
          *&v44[10] = 0x3FE0000000000000;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d [%p] Failed to compute audio Tx bit rate because timePeriod=%fs < (AUDIO_TRANSMITTER_MIN_BITRATE_REPORT_PERIOD=%fs)", buf, 0x3Au);
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    self->_currentChannelMetrics.averageMediaBitrate = 0;
    v34 = 0;
    RTPGetUplinkReportingStats(self->_rtpHandle, &v34);
    lastReportedRTPIngresspackets = self->_lastReportedRTPIngresspackets;
    if (v34 <= lastReportedRTPIngresspackets)
    {
      lastReportedRTPIngresspackets = 0;
    }

    v13 = v34 - lastReportedRTPIngresspackets;
    v14 = selectDestinationForRTMetrics();
    CFDictionaryAddValue(v14, @"RTPUplinkIngressAudioPkts", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13]);
    CFDictionaryAddValue(v14, @"ATxR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10]);
    LODWORD(v15) = self->_currentDuplication;
    CFDictionaryAddValue(v14, @"AFEC", [MEMORY[0x1E696AD98] numberWithDouble:v15 / 100.0]);
    CFDictionaryAddValue(v14, @"ATxRPrimary", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11]);
    CFDictionaryAddValue(v14, @"ATxEncodedBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11]);
    CFDictionaryAddValue(v14, @"VCASRedundancyLevel", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_redNumPayloads]);
    CFDictionaryAddValue(v14, @"QID", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_qualityIndex]);
    CFDictionaryAddValue(v14, @"ATCC", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_inputFormat.format.mChannelsPerFrame]);
    CFDictionaryAddValue(v14, @"RedPayloadsAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.redPayloads]);
    CFDictionaryAddValue(v14, @"RedMaxDelayAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.redMaxDelay]);
    CFDictionaryAddValue(v14, @"REDPayloadBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9]);
    CFDictionaryAddValue(v14, @"PayloadAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.codecPayload]);
    CFDictionaryAddValue(v14, @"BitRateAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.codecBitrate]);
    CFDictionaryAddValue(v14, @"BundleAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.bundling]);
    v16 = MEMORY[0x1E696AD98];
    atomic_exchange(&self->_audioTierChangeCount, 0);
    CFDictionaryAddValue(v14, @"ATierChangeCount", [v16 numberWithUnsignedInt:?]);
    if ([(VCAudioTransmitter *)self isStandaloneStreamMode])
    {
      LODWORD(v17) = self->_targetBitrate;
      CFDictionaryAddValue(v14, @"TTxR", [MEMORY[0x1E696AD98] numberWithDouble:v17 / 1000.0]);
    }

    v33 = 0;
    RTPGetPacketSent(self->_rtpHandle, &v33);
    v32 = 0.0;
    AFRCGetAudioPauseTime(self->_afrc, &v32);
    v31 = NAN;
    AFRCGetAudioMaxPauseTimes(self->_afrc, &v31);
    CFDictionaryAddValue(v14, @"APT", [MEMORY[0x1E696AD98] numberWithDouble:v32]);
    CFDictionaryAddValue(v14, @"APSM", [MEMORY[0x1E696AD98] numberWithDouble:v31]);
    CFDictionaryAddValue(v14, @"APS", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v33]);
    audioIssueDetector = self->_audioIssueDetector;
    if (audioIssueDetector)
    {
      *buf = 0;
      VCAudioIssueDetector_GetReportingStats(audioIssueDetector, buf);
    }

    self->_lastReportedRTPIngresspackets = v34;
    v19 = [MEMORY[0x1E696AD60] stringWithFormat:@"streamIDsCount=%d ", self->_idsChannelDataFormat.numOfStreamIDs];
    if (self->_idsChannelDataFormat.numOfStreamIDs)
    {
      v20 = 0;
      do
      {
        [v19 appendFormat:@"StreamID%d=%d ", v20, self->_idsChannelDataFormat.streamIDs[v20]];
        ++v20;
      }

      while (v20 < self->_idsChannelDataFormat.numOfStreamIDs);
    }

    if (VRTraceGetErrorLogLevelForModule() > 5)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v23) = self->_currentDuplication;
        redNumPayloads = self->_redNumPayloads;
        qualityIndex = self->_qualityIndex;
        v26 = v23 / 100.0;
        v27 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] payload];
        targetBitrate = self->_targetBitrate;
        currentTargetBitrate = self->_currentTargetBitrate;
        supportsAdaptation = self->_supportsAdaptation;
        *buf = 136318978;
        v36 = v21;
        v37 = 2080;
        v38 = "[VCAudioTransmitter gatherRealtimeStats:]";
        v39 = 1024;
        v40 = 684;
        v41 = 2048;
        v42 = self;
        v43 = 1024;
        *v44 = v10;
        *&v44[4] = 2048;
        *&v44[6] = v26;
        *&v44[14] = 1024;
        *&v44[16] = v11;
        v45 = 1024;
        v46 = redNumPayloads;
        v47 = 1024;
        v48 = qualityIndex;
        v49 = 1024;
        v50 = v27;
        v51 = 1024;
        v52 = v33;
        v53 = 2112;
        v54 = v19;
        v55 = 1024;
        v56 = targetBitrate;
        v57 = 1024;
        v58 = currentTargetBitrate;
        v59 = 1024;
        v60 = supportsAdaptation;
        v61 = 1024;
        v62 = v9;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCAudioTransmitter [%p] audioTxBitrate=%ukbps, audioFecTx=%f, primaryAudioTxRate=%ukbps, audioStreamRedundancyLevel=%u, _qualityIndex=%u, payload=%u, totalPacketsSent=%d %@ _targetBitrate=%u _currentTargetBitrate=%u _supportsAdaptation=%d audioTxRedRate=%ukbps", buf, 0x76u);
      }
    }
  }
}

uint64_t __43__VCAudioTransmitter_registerReportingTask__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 periodicReportingEnabled];
  if (result)
  {

    return [a2 gatherRealtimeStats:a3];
  }

  return result;
}

- (void)reportRedundancyConfigChange
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (NSDictionary)dtxMetrics
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (!self->_currentDTXPayload)
  {
    return 0;
  }

  audioFrameCounter = self->_audioFrameCounter;
  if (audioFrameCounter)
  {
    v4 = self->_silenceFrameCounter / audioFrameCounter;
  }

  else
  {
    v4 = 0.0;
  }

  v7[0] = @"DtxFramesTotal";
  v8[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v7[1] = @"DtxFrameSilent";
  v8[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_silenceFrameCounter];
  v7[2] = @"DtxCompRatio";
  *&v6 = v4;
  v8[2] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v7[3] = @"TxBytesActual";
  v8[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalTxAudioBytes];
  v7[4] = @"TxBytesEstimate";
  v8[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_estimateTxAudioBytes];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
}

- (float)nextAudioInterval:(int)a3
{
  v5 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] samplesPerFrame];
  v6 = [(VCPacketBundler *)self->_audioBundler packetsPerBundle]* v5 - a3;
  if (v6 < 1)
  {
    return 0.0;
  }

  else
  {
    return self->_blockSeconds * ceilf(v6 / self->_inputFormat.samplesPerFrame);
  }
}

- (void)removeUnusedAudioPayloads
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v4 = [(VCAudioTierPicker *)self->_audioTierPicker allPayloadsFromAllTierTables];
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v52;
    *&v6 = 136316930;
    v29 = v6;
    v30 = v3;
    v31 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        v11 = _VCAudioTransmitter_UsedAudioPayloadForType(self, [v10 unsignedIntValue]);
        if (v11)
        {
          [v3 addObject:v11];
          goto LABEL_8;
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v10 unsignedIntValue];
              audioTierPicker = self->_audioTierPicker;
              v25 = [-[VCAudioTierPicker allPayloadsFromAllTierTables](audioTierPicker "allPayloadsFromAllTierTables")];
              audioPayloads = self->_audioPayloads;
              v27 = [(NSMutableArray *)audioPayloads count];
              *buf = v29;
              v35 = v22;
              v36 = 2080;
              v37 = "[VCAudioTransmitter removeUnusedAudioPayloads]";
              v38 = 1024;
              v39 = 798;
              v40 = 1024;
              *v41 = v33;
              *&v41[4] = 2048;
              *&v41[6] = audioTierPicker;
              *&v41[14] = 2048;
              *&v41[16] = v25;
              v4 = v31;
              v42 = 2048;
              v43 = audioPayloads;
              v44 = 2048;
              v45 = v27;
              v19 = v23;
              v20 = " [%s] %s:%d payload=%u from _audioTierPicker=%p (count=%lu) was not found in the audio transmitter's _audioPayloads=%p (count=%lu)";
              v21 = 74;
              goto LABEL_19;
            }
          }
        }

        else
        {
          v12 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v12 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v10 unsignedIntValue];
              v15 = self->_audioTierPicker;
              v16 = [-[VCAudioTierPicker allPayloadsFromAllTierTables](v15 "allPayloadsFromAllTierTables")];
              v17 = self->_audioPayloads;
              v18 = [(NSMutableArray *)v17 count];
              *buf = 136317442;
              v35 = v13;
              v36 = 2080;
              v37 = "[VCAudioTransmitter removeUnusedAudioPayloads]";
              v38 = 1024;
              v39 = 798;
              v40 = 2112;
              *v41 = v12;
              *&v41[8] = 2048;
              *&v41[10] = self;
              *&v41[18] = 1024;
              *&v41[20] = v32;
              v42 = 2048;
              v43 = v15;
              v44 = 2048;
              v45 = v16;
              v46 = 2048;
              v47 = v17;
              v3 = v30;
              v4 = v31;
              v48 = 2048;
              v49 = v18;
              v19 = v14;
              v20 = " [%s] %s:%d %@(%p) payload=%u from _audioTierPicker=%p (count=%lu) was not found in the audio transmitter's _audioPayloads=%p (count=%lu)";
              v21 = 94;
LABEL_19:
              _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
            }
          }
        }

LABEL_8:
        ++v9;
      }

      while (v7 != v9);
      v28 = [v4 countByEnumeratingWithState:&v51 objects:v50 count:16];
      v7 = v28;
    }

    while (v28);
  }

  if (self->_currentDTXPayload)
  {
    [v3 addObject:?];
  }

  [(NSMutableArray *)self->_audioPayloads removeAllObjects];
  -[NSMutableArray addObjectsFromArray:](self->_audioPayloads, "addObjectsFromArray:", [v3 allObjects]);
}

- (BOOL)setupAudioEncoders
{
  v51 = *MEMORY[0x1E69E9840];
  if (self->_supportsAdaptation)
  {
    [(VCAudioTransmitter *)self removeUnusedAudioPayloads];
  }

  v3 = [(NSMutableArray *)self->_audioPayloads count];
  v4 = 4 * v3;
  v5 = &v29[-((v4 + 15) & 0x7FFFFFFF0) - 16];
  if (v3)
  {
    memset(&v29[-((v4 + 15) & 0x7FFFFFFF0) - 16], 170, v4);
  }

  if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      *&v5[4 * v6] = [objc_msgSend(-[NSMutableArray objectAtIndex:](self->_audioPayloads objectAtIndex:{v6), "config"), "payload"}];
      ++v6;
    }

    while ((v3 & 0x7FFFFFFF) != v6);
  }

  RTPSetTxPayloadList(self->_rtpHandle, v3, v5);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  audioPayloads = self->_audioPayloads;
  v8 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
LABEL_10:
    v11 = 0;
    while (1)
    {
      if (*v48 != v10)
      {
        objc_enumerationMutation(audioPayloads);
      }

      v12 = *(*(&v47 + 1) + 8 * v11);
      [v12 setRamStadSRCEnabled:self->_ramStadSRCEnabled];
      if (([v12 createEncoderWithInputFormat:&self->_inputFormat] & 1) == 0)
      {
        break;
      }

      [v12 setCurrentDTXEnable:self->_currentDTXEnable];
      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v9)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v23 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v23)
        {
          return v23;
        }

        [VCAudioTransmitter setupAudioEncoders];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        v23 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v23)
        {
          return v23;
        }

        v34 = 136316418;
        v35 = v25;
        v36 = 2080;
        v37 = "[VCAudioTransmitter setupAudioEncoders]";
        v38 = 1024;
        v39 = 829;
        v40 = 2112;
        v41 = v24;
        v42 = 2048;
        v43 = self;
        v44 = 2112;
        v45 = v12;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create encoder for payload=%@", &v34, 0x3Au);
      }
    }

    LOBYTE(v23) = 0;
  }

  else
  {
LABEL_16:
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = self->_audioPayloads;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v14)
    {
      v16 = v14;
      v17 = *v31;
      v18 = MEMORY[0x1E6986650];
      *&v15 = 136315906;
      v28 = v15;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *v18;
            if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
            {
              v34 = v28;
              v35 = v21;
              v36 = 2080;
              v37 = "[VCAudioTransmitter setupAudioEncoders]";
              v38 = 1024;
              v39 = 833;
              v40 = 2112;
              v41 = v20;
              _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPayload createEncoder yielded instance=%@", &v34, 0x26u);
            }
          }
        }

        v16 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v16);
    }

    LOBYTE(v23) = 1;
  }

  return v23;
}

- (BOOL)allocateLastInputSampleBuffer:(unsigned int)a3
{
  v3 = self->_inputFormat.format.mBytesPerFrame * a3;
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      LODWORD(v5) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v5)
      {
        return v5;
      }

      [VCAudioTransmitter allocateLastInputSampleBuffer:];
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  if (self->_lastInputSampleBuffer && v3 <= self->_lastInputSampleBufferSize)
  {
LABEL_13:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = malloc_type_calloc(1uLL, v3, 0x57B8AE95uLL);
  if (v5)
  {
    v6 = v5;
    lastInputSampleBuffer = self->_lastInputSampleBuffer;
    if (lastInputSampleBuffer)
    {
      memcpy(&v5[(v3 - self->_lastInputSampleBufferSize)], lastInputSampleBuffer, self->_lastInputSampleBufferSize);
      v8 = self->_lastInputSampleBuffer;
    }

    else
    {
      v8 = 0;
    }

    free(v8);
    self->_lastInputSampleBuffer = v6;
    self->_lastInputSampleBufferSize = v3;
    goto LABEL_13;
  }

  return v5;
}

- (unsigned)maximumSamplesPerFrame
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  audioPayloads = self->_audioPayloads;
  v3 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(audioPayloads);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (v5 < [objc_msgSend(v8 "config")])
        {
          v5 = [objc_msgSend(v8 "config")];
        }
      }

      v4 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v4);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

- (void)setCurrentDTXEnable:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  self->_currentDTXEnable = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  audioPayloads = self->_audioPayloads;
  v5 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(audioPayloads);
        }

        [*(*(&v10 + 1) + 8 * i) setCurrentDTXEnable:self->_currentDTXEnable];
      }

      v6 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)currentPayloadUsed:(int)a3 payloadUsed:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    audioPayloads = self->_audioPayloads;
    v7 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(audioPayloads);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v11 "config")] == a3)
          {
            *a4 = v11;
            return;
          }
        }

        v8 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (BOOL)chooseAudioNetworkBitrate
{
  v100 = *MEMORY[0x1E69E9840];
  if (!self->_supportsAdaptation)
  {
    return 1;
  }

  rateChangeCounter = self->_rateChangeCounter;
  targetBitrate = self->_targetBitrate;
  v87 = rateChangeCounter;
  isAudioStalled = self->_isAudioStalled;
  v86 = 0;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  if (self->_statisticsCollector)
  {
LABEL_5:
    redundancyPercentage = self->_redundancyPercentage;
    v6 = redundancyPercentage / 0x64;
    v7 = (self->_redundancyInterval / 20.0);
    v8 = redundancyPercentage / 0x64 != self->_redundancyControllerNumPayloads || self->_redundancyControllerMaxDelay20ms != v7;
    if (v86)
    {
      RTPResetConnectionStats();
    }

    operatingMode = self->_operatingMode;
    if (operatingMode == 7 || operatingMode == 2)
    {
      RTPUpdateAudioOnlyRateChange(self->_rtpHandle, v87);
    }

    v11 = micro();
    if (self->_isLocalCellular_LowestConnectionQuality && v11 - self->_lastUpdateQualityIndicator > 5.0)
    {
      self->_lastUpdateQualityIndicator = v11;
      global_queue = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__VCAudioTransmitter_chooseAudioNetworkBitrate__block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = self;
      dispatch_async(global_queue, block);
    }

    if (isAudioStalled != self->_lastAudioStalled)
    {
      if (self->_isLocalCellular_LowestConnectionQuality)
      {
        RTPSetCellularAudioStallState(self->_rtpVideo, isAudioStalled);
        RTPSetCellularAudioStallState(self->_rtpHandle, isAudioStalled);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          lastAudioStalled = self->_lastAudioStalled;
          isConnectedOnIPv6_LowestConnectionQuality = self->_isConnectedOnIPv6_LowestConnectionQuality;
          *buf = 136316418;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
          *&buf[22] = 1024;
          *&buf[24] = 1171;
          *&buf[28] = 1024;
          *&buf[30] = lastAudioStalled;
          *&buf[34] = 1024;
          *&buf[36] = isAudioStalled;
          *&buf[40] = 1024;
          *&buf[42] = isConnectedOnIPv6_LowestConnectionQuality;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d UNEXPECTED: audio stall change (%d -> %d) while not in cellular(IPv6 :%d)", buf, 0x2Eu);
        }
      }

      self->_lastAudioStalled = isAudioStalled;
    }

    isAudioStalled = 0;
    audioTierChangeRequestCount = self->_audioTierChangeRequestCount;
    if (audioTierChangeRequestCount >= 1)
    {
      [(VCAudioTransmitter *)self setupAudioHeaderSize];
      [(VCAudioTransmitter *)self setupAudioTierPicker];
      atomic_fetch_add(&self->_audioTierChangeRequestCount, 0xFFFFFFFF);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v70 = [(VCAudioPayloadConfig *)[(VCAudioTier *)self->_currentAudioTier payloadConfig] payload];
          v68 = [(VCAudioTier *)self->_currentAudioTier audioCodecBitrate];
          v18 = [(VCAudioTier *)self->_currentAudioTier redNumPayloads];
          v19 = [(VCAudioTier *)self->_currentAudioTier packetsPerBundle];
          v20 = self->_operatingMode;
          *buf = 136317186;
          *&buf[4] = v16;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
          *&buf[22] = 1024;
          *&buf[24] = 1187;
          *&buf[28] = 2048;
          *&buf[30] = self;
          *&buf[38] = 1024;
          *&buf[40] = v70;
          *&buf[44] = 1024;
          *&buf[46] = v68;
          v6 = redundancyPercentage / 0x64;
          *&buf[50] = 1024;
          *&buf[52] = v18;
          *&buf[56] = 1024;
          *&buf[58] = v19;
          *&buf[62] = 1024;
          LODWORD(v91) = v20;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] AudioTierPicker was reset. Current audioTier info from default tier: payload=%u audioCodecBitrate=%u redNumPayloads=%u packetsPerBundle=%u operatingMode=%d.", buf, 0x44u);
        }
      }
    }

    v21 = redundancyPercentage + 100;
    v22 = v8;
    if (targetBitrate == self->_currentTargetBitrate && v21 == self->_currentDuplication && !v8 && audioTierChangeRequestCount <= 0 && !self->_audioTierHysteresis)
    {
      return !isAudioStalled;
    }

    self->_currentTargetBitrate = targetBitrate;
    if (self->_isRedEnabled)
    {
      audioTierPicker = self->_audioTierPicker;
      if (self->_targetBitrateIsAudioOnly)
      {
        v24 = [VCAudioTierPicker tierForAudioBitrate:"tierForAudioBitrate:withRedNumPayloads:" withRedNumPayloads:?];
      }

      else
      {
        v24 = [VCAudioTierPicker tierForNetworkBitrate:"tierForNetworkBitrate:withRedNumPayloads:" withRedNumPayloads:?];
      }

      v25 = v24;
      v27 = [(VCAudioTier *)self->_currentAudioTier redNumPayloads];
      v26 = v27 != [(VCAudioTier *)v25 redNumPayloads];
    }

    else
    {
      v25 = [VCAudioTierPicker tierForNetworkBitrate:"tierForNetworkBitrate:withLegacyDuplication:" withLegacyDuplication:?];
      v26 = 0;
    }

    if (([(VCAudioPayloadConfig *)[(VCAudioTier *)v25 payloadConfig] isEqual:[(VCAudioPayload *)self->_currentAudioPayload config]]& 1) != 0 || v21 != self->_currentDuplication || v22 || (v28 = [(VCAudioTier *)v25 audioCodecBitrate], v28 == [(VCAudioPayload *)self->_currentAudioPayload bitrate]) || ([(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] qualityForBitRate:[(VCAudioTier *)v25 audioCodecBitrate]], v29 <= 0.5))
    {
      if (([(VCAudioPayloadConfig *)[(VCAudioTier *)v25 payloadConfig] isEqual:[(VCAudioPayload *)self->_currentAudioPayload config]]& 1) == 0)
      {
        v34 = [(VCAudioTier *)v25 audioCodecBitrate];
        if (v34 > [(VCAudioPayload *)self->_currentAudioPayload bitrate]&& v21 <= self->_currentDuplication && v6 <= self->_redNumPayloads && self->_lastTierSwitch != 0.0)
        {
          v35 = micro();
          if (audioTierChangeRequestCount <= 0 && v35 - self->_lastTierSwitch < 2.0)
          {
            if (!self->_audioTierHysteresis)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v36 = VRTraceErrorLogLevelToCSTR();
                v37 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v38 = [(VCAudioPayloadConfig *)[(VCAudioTier *)self->_currentAudioTier payloadConfig] payload];
                  v39 = [(VCAudioPayloadConfig *)[(VCAudioTier *)v25 payloadConfig] payload];
                  lastTierSwitch = self->_lastTierSwitch;
                  *buf = 136316418;
                  *&buf[4] = v36;
                  *&buf[12] = 2080;
                  *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
                  *&buf[22] = 1024;
                  *&buf[24] = 1233;
                  *&buf[28] = 1024;
                  *&buf[30] = v38;
                  *&buf[34] = 1024;
                  *&buf[36] = v39;
                  *&buf[40] = 2048;
                  *&buf[42] = lastTierSwitch;
                  _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Time Hysteresis preventing tier upgrade from %d to %d, last upgrade at %6.3f", buf, 0x32u);
                }
              }

              self->_audioTierHysteresis = 1;
            }

            return !isAudioStalled;
          }
        }
      }

      if (v25 == self->_currentAudioTier || (v41 = [(VCAudioTier *)v25 audioCodecBitrate], v41 == [(VCAudioPayload *)self->_currentAudioPayload bitrate]) && v21 == self->_currentDuplication && !v22 && (v42 = [(VCAudioTier *)self->_currentAudioTier packetsPerBundle], v42 == [(VCAudioTier *)v25 packetsPerBundle]&& !v26))
      {
        if (v21 != self->_currentDuplication || v22)
        {
          self->_currentDuplication = v21;
          self->_redundancyControllerNumPayloads = v6;
          self->_redundancyControllerMaxDelay20ms = v7;
          if (self->_isRedEnabled && [(VCAudioTier *)v25 redNumPayloads]!= v6 && VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v60 = VRTraceErrorLogLevelToCSTR();
            v61 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v62 = [(VCAudioTier *)v25 redNumPayloads];
              *buf = 136316162;
              *&buf[4] = v60;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
              *&buf[22] = 1024;
              *&buf[24] = 1278;
              *&buf[28] = 1024;
              *&buf[30] = v6;
              *&buf[34] = 1024;
              *&buf[36] = v62;
              _os_log_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding suggested red value %d with red value %u", buf, 0x28u);
            }
          }

          v63 = [(VCAudioTier *)v25 redMaxDelay20ms];
          redundancyControllerMaxDelay20ms = self->_redundancyControllerMaxDelay20ms;
          if (v63 > redundancyControllerMaxDelay20ms)
          {
            redundancyControllerMaxDelay20ms = v63;
          }

          redMaxDelay20ms = self->_redMaxDelay20ms;
          atomic_compare_exchange_strong_explicit(&self->_redMaxDelay20ms, &redMaxDelay20ms, redundancyControllerMaxDelay20ms, memory_order_relaxed, memory_order_relaxed);
          [(VCAudioTransmitter *)self setRedNumPayloads:[(VCAudioTier *)self->_currentAudioTier redNumPayloads] withMaxDelay:self->_redMaxDelay20ms shouldResetHistory:0 shouldEnableShortRED:[(VCAudioTier *)self->_currentAudioTier shortREDEnabled]];
        }

        else
        {
          self->_audioTierHysteresis = 0;
        }

        return !isAudioStalled;
      }

      if (v25 != self->_requestedAudioTier || self->_currentDuplication != v21 || v22 || v26)
      {
        self->_requestedAudioTier = v25;
        self->_currentDuplication = v21;
        self->_redundancyControllerNumPayloads = v6;
        self->_redundancyControllerMaxDelay20ms = v7;
        redNumPayloads = self->_redNumPayloads;
        atomic_compare_exchange_strong_explicit(&self->_redNumPayloads, &redNumPayloads, [(VCAudioTier *)v25 redNumPayloads], memory_order_relaxed, memory_order_relaxed);
        v44 = [(VCAudioTier *)v25 redMaxDelay20ms];
        v45 = self->_redundancyControllerMaxDelay20ms;
        if (v44 > v45)
        {
          v45 = v44;
        }

        v46 = self->_redMaxDelay20ms;
        atomic_compare_exchange_strong_explicit(&self->_redMaxDelay20ms, &v46, v45, memory_order_relaxed, memory_order_relaxed);
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v47 = VRTraceErrorLogLevelToCSTR();
          v48 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v69 = [(VCAudioPayloadConfig *)[(VCAudioTier *)self->_currentAudioTier payloadConfig] payload];
            v49 = [(VCAudioPayloadConfig *)[(VCAudioTier *)v25 payloadConfig] payload];
            v71 = v6;
            v50 = targetBitrate;
            v51 = [(VCAudioTier *)self->_currentAudioTier networkBitrate];
            v52 = [(VCAudioTier *)v25 networkBitrate];
            v53 = [(VCAudioTier *)self->_currentAudioTier packetsPerBundle];
            v54 = [(VCAudioTier *)v25 packetsPerBundle];
            *buf = 136317442;
            *&buf[4] = v47;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
            *&buf[22] = 1024;
            *&buf[24] = 1256;
            *&buf[28] = 1024;
            *&buf[30] = v69;
            *&buf[34] = 1024;
            *&buf[36] = v49;
            *&buf[40] = 1024;
            *&buf[42] = v50;
            v6 = v71;
            *&buf[46] = 1024;
            *&buf[48] = v51;
            *&buf[52] = 1024;
            *&buf[54] = v52;
            *&buf[58] = 1024;
            *&buf[60] = v53;
            LOWORD(v91) = 1024;
            *(&v91 + 2) = v54;
            _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Switching audio bitrate tier payload %d -> %d for total tx %d: netBitrate %d -> %d, bundle %d -> %d", buf, 0x46u);
          }
        }

        if (self->_isRedEnabled && [(VCAudioTier *)v25 redNumPayloads]!= v6 && VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v55 = VRTraceErrorLogLevelToCSTR();
          v56 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v57 = [(VCAudioTier *)v25 redNumPayloads];
            *buf = 136316162;
            *&buf[4] = v55;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
            *&buf[22] = 1024;
            *&buf[24] = 1258;
            *&buf[28] = 1024;
            *&buf[30] = v6;
            *&buf[34] = 1024;
            *&buf[36] = v57;
            _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding suggested red value %d with red value %u", buf, 0x28u);
          }
        }

        v58 = [(VCAudioTier *)v25 redPayloadSize];
        v59 = v58 < [(VCAudioTier *)self->_currentAudioTier redPayloadSize];
        [(VCAudioTransmitter *)self useAudioTier:v25];
        [(VCAudioTransmitter *)self setRedNumPayloads:self->_redNumPayloads withMaxDelay:self->_redMaxDelay20ms shouldResetHistory:v59 shouldEnableShortRED:[(VCAudioTier *)v25 shortREDEnabled]];
        [(VCAudioTransmitter *)self reportRedundancyConfigChange];
        goto LABEL_77;
      }
    }

    else if (v25 != self->_requestedAudioTier)
    {
      self->_requestedAudioTier = v25;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
          v33 = [(VCAudioTier *)v25 audioCodecBitrate];
          *buf = 136316162;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
          *&buf[22] = 1024;
          *&buf[24] = 1218;
          *&buf[28] = 1024;
          *&buf[30] = v32;
          *&buf[34] = 1024;
          *&buf[36] = v33;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Switching audio bitrates without changing tier %d -> %d", buf, 0x28u);
        }
      }

      [(VCAudioTransmitter *)self useAudioPayload:self->_currentAudioPayload withBitrate:[(VCAudioTier *)v25 audioCodecBitrate] redNumPayloads:[(VCAudioTier *)v25 redNumPayloads]];
      [(VCAudioTransmitter *)self updateAudioTxBitrate];
LABEL_77:
      self->_lastTierSwitch = micro();
      self->_audioTierHysteresis = 0;
      [(VCAudioTransmitter *)self logTierInfo:1];
    }

    return !isAudioStalled;
  }

  if ((AFRCGetAudioTxInfo(self->_afrc, &targetBitrate, 0, 0, 0, 0, &isAudioStalled, &v87, &v86, &v73) & 0x80000000) == 0)
  {
    redundancyController = self->_redundancyController;
    v97 = v83;
    v98 = v84;
    v99 = v85;
    v93 = v79;
    v94 = v80;
    v95 = v81;
    v96 = v82;
    *&buf[32] = v75;
    *&buf[48] = v76;
    v91 = v77;
    v92 = v78;
    *buf = v73;
    *&buf[16] = v74;
    [(VCRedundancyControllerAudio *)redundancyController updateRedundancyStrategyWithNetworkStatistics:buf];
    goto LABEL_5;
  }

  return 0;
}

uint64_t __47__VCAudioTransmitter_chooseAudioNetworkBitrate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 248))
  {
    AFRCGetQualityIndication(*(v1 + 304), (v1 + 128));
    v1 = *(a1 + 32);
  }

  v3 = *(v1 + 456);
  v4 = *(v1 + 128);
  v5 = *(v1 + 343);

  return [v3 updateQualityIndicator:v4 isIPv6:v5];
}

- (void)setupAudioHeaderSize
{
  v32 = *MEMORY[0x1E69E9840];
  self->_audioHeaderSize = 0;
  if (self->_useChannelDataFormat)
  {
    v17 = 0;
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"disableDynamicMediaPacketHeaderCalculations", 0);
    HIDWORD(v16) = -1431655766;
    LODWORD(v16) = VCMediaControlInfoGeneratorGetType(self->_controlInfoGenerator);
    BYTE4(v16) = VCMediaControlInfoGeneratorGetVersion(self->_controlInfoGenerator);
    v4 = VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle(self->_rtpHandle, &v16, &v17);
    if (v4 < 0)
    {
      v12 = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          rtpHandle = self->_rtpHandle;
          *buf = 136316674;
          v19 = v13;
          v20 = 2080;
          v21 = "[VCAudioTransmitter setupAudioHeaderSize]";
          v22 = 1024;
          v23 = 1432;
          v24 = 1024;
          v25 = v12;
          v26 = 2048;
          v27 = rtpHandle;
          v28 = 1024;
          v29 = v16;
          v30 = 1024;
          v31 = BYTE4(v16);
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to get media framing overhead. result=0x%08x rtpHandle=%p mediaControlInfoGeneratorType=%u version=%u", buf, 0x38u);
        }
      }
    }

    else
    {
      self->_audioHeaderSize = self->_constantTransportOverhead + v17;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          audioHeaderSize = self->_audioHeaderSize;
          constantTransportOverhead = self->_constantTransportOverhead;
          *buf = 136316418;
          v19 = v5;
          v20 = 2080;
          v21 = "[VCAudioTransmitter setupAudioHeaderSize]";
          v22 = 1024;
          v23 = 1435;
          v24 = 1024;
          v25 = audioHeaderSize;
          v26 = 2048;
          v27 = v17;
          v28 = 1024;
          v29 = constantTransportOverhead;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio header size=%d, framingOverhead=%lu, _constantTransportOverhead=%u", buf, 0x32u);
        }
      }

      if (!BoolValueForKey)
      {
        v9 = self->_audioHeaderSize;
LABEL_19:
        v11 = self->_constantTransportOverhead;
        goto LABEL_20;
      }
    }

    v9 = [VCConnectionIDS worstCaseNetworkOverheadInBytesWithNumOfStreamId:self->_maxIDSStreamIdCount isPriorityIncluded:1, v16]+ 12;
    self->_audioHeaderSize = v9;
    goto LABEL_19;
  }

  if (self->_isUseCaseWatchContinuity)
  {
    v10 = 0;
  }

  else if (self->_isConnectedOnIPv6_LowestConnectionQuality)
  {
    v10 = 40;
  }

  else
  {
    v10 = 20;
  }

  v11 = v10 + 8;
  v9 = v10 + 20;
  self->_audioHeaderSize = v9;
  if (self->_useRateControl)
  {
    v9 = VCMediaControlInfoGeneratorGetFeedbackSize(self->_controlInfoGenerator, a2) + self->_audioHeaderSize + 10;
    self->_audioHeaderSize = v9;
  }

LABEL_20:
  [(VCAudioRedBuilder *)self->_redBuilder setMaxREDPayloadSize:self->_maxAudioPacketSize + v11 - v9, v16];
}

- (id)packetsPerBundle
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [+[VCDefaults sharedInstance](VCDefaults forceAudioPacketsPerBundle];
  if (v3)
  {
    v16[0] = [MEMORY[0x1E696AD98] numberWithInt:v3];
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else if (self->_isUseCaseWatchContinuity)
  {
    return &unk_1F579E220;
  }

  else if (self->_operatingMode == 6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    audioPayloads = self->_audioPayloads;
    v6 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      v4 = &unk_1F579E238;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(audioPayloads);
          }

          if ([objc_msgSend(*(*(&v12 + 1) + 8 * i) "config")] == 101)
          {
            return &unk_1F579E250;
          }
        }

        v7 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v12 objects:v11 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return &unk_1F579E238;
    }
  }

  else
  {
    return &unk_1F579E268;
  }

  return v4;
}

- (BOOL)setupAudioTierPicker
{
  v40 = *MEMORY[0x1E69E9840];
  if (!self->_supportsAdaptation)
  {
    return 1;
  }

  v3 = [(VCAudioTransmitter *)self packetsPerBundle];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_audioPayloads, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  audioPayloads = self->_audioPayloads;
  v6 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(audioPayloads);
        }

        [v4 setObject:objc_msgSend(*(*(&v36 + 1) + 8 * i) atIndexedSubscript:{"config"), objc_msgSend(v4, "count")}];
      }

      v7 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v7);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      operatingMode = self->_operatingMode;
      tierPickerMode = self->_tierPickerMode;
      *buf = 136316418;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioTransmitter setupAudioTierPicker]";
      *&buf[22] = 1024;
      *v30 = 1498;
      *&v30[4] = 2048;
      *&v30[6] = self;
      v31 = 1024;
      v32 = operatingMode;
      v33 = 1024;
      *v34 = tierPickerMode;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Tier Table for operatingMode=%d and tierPickerMode=%d", buf, 0x32u);
    }
  }

  currentAudioCap = self->_currentAudioCap;
  self->_currentAudioTier = 0;
  v15 = self->_tierPickerMode;
  supportedNumRedundantPayload = self->_supportedNumRedundantPayload;
  audioHeaderSize = self->_audioHeaderSize;
  isUseCaseWatchContinuity = self->_isUseCaseWatchContinuity;
  v28 = !self->_useWiFiTiers;
  v18 = v3;
  if (self->_operatingMode == 6)
  {
    tierNetworkBitrate = self->_tierNetworkBitrate;
  }

  else
  {
    tierNetworkBitrate = currentAudioCap;
  }

  v20 = *&self->_alwaysOnAudioRedundancyEnabled;
  wifiAllowRedLowBitratesEnabled = self->_wifiAllowRedLowBitratesEnabled;
  v22 = !self->_isConnectedOnIPv6_LowestConnectionQuality;
  isACC24Enabled = self->_isACC24Enabled;

  v24 = [VCAudioTierPicker alloc];
  buf[0] = v15;
  *&buf[1] = 0;
  *&buf[4] = 0;
  *&buf[8] = v4;
  *&buf[16] = v18;
  *v30 = supportedNumRedundantPayload;
  *&v30[8] = audioHeaderSize;
  v30[12] = v28;
  v30[13] = isUseCaseWatchContinuity;
  v31 = 0;
  v32 = tierNetworkBitrate;
  v33 = v20;
  v34[0] = wifiAllowRedLowBitratesEnabled;
  v34[1] = v22;
  v34[2] = isACC24Enabled;
  *&v34[3] = 0;
  *&v34[6] = 0;
  v25 = [(VCAudioTierPicker *)v24 initWithConfig:buf];
  self->_audioTierPicker = v25;
  [(VCAudioTransmitter *)self useAudioTier:[(VCAudioTierPicker *)v25 defaultTier]];
  if (self->_statisticsCollector)
  {
    self->_currentDuplication = self->_redundancyPercentage + 100;
  }

  else
  {
    AFRCGetAudioTxInfo(self->_afrc, 0, &self->_currentDuplication, 0, 0, 0, 0, 0, 0, 0);
  }

  [(VCAudioTransmitter *)self updateAudioTxBitrate];
  return self->_audioTierPicker != 0;
}

- (void)updateAudioTxBitrate
{
  v64 = *MEMORY[0x1E69E9840];
  audioTxBitrate = self->_audioTxBitrate;
  v4 = [(VCAudioPayload *)self->_currentAudioPayload config];
  v5 = (8 * self->_audioHeaderSize);
  mSampleRate = self->_inputFormat.format.mSampleRate;
  v7 = (mSampleRate / [(VCAudioPayloadConfig *)v4 samplesPerFrame]* v5);
  p_vtable = VCVideoTransmitterDefault.vtable;
  if ([VCPayloadUtils canBundleExternallyForPayload:[(VCAudioPayloadConfig *)v4 payload] forBundlingScheme:[(VCPacketBundler *)self->_audioBundler bundlingScheme] operatingMode:self->_operatingMode])
  {
    v9 = (v7 / [(VCPacketBundler *)self->_audioBundler packetsPerBundle]);
    v10 = (8 * [(VCAudioPayloadConfig *)v4 bundleHeaderBytes]);
    v11 = self->_inputFormat.format.mSampleRate;
    v7 = (v9 + v10 * (v11 / [(VCAudioPayloadConfig *)v4 samplesPerFrame]));
  }

  self->_audioTxBitrate = [(VCAudioPayload *)self->_currentAudioPayload bitrate]+ v7;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_audioTxBitrate;
        v15 = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
        audioHeaderSize = self->_audioHeaderSize;
        v16 = [(VCPacketBundler *)self->_audioBundler packetsPerBundle];
        v17 = [(VCAudioPayloadConfig *)v4 bundleHeaderBytes];
        v18 = self->_inputFormat.format.mSampleRate;
        v19 = [(VCAudioPayloadConfig *)v4 samplesPerFrame];
        operatingMode = self->_operatingMode;
        *buf = 136317954;
        v44 = v13;
        v45 = 2080;
        v46 = "[VCAudioTransmitter updateAudioTxBitrate]";
        v47 = 1024;
        v48 = 1553;
        v49 = 1024;
        *v50 = v41;
        *&v50[4] = 1024;
        *&v50[6] = v15;
        LOWORD(v51) = 1024;
        *(&v51 + 2) = v7;
        HIWORD(v51) = 1024;
        *v52 = audioHeaderSize;
        *&v52[4] = 1024;
        *v53 = v16;
        p_vtable = (VCVideoTransmitterDefault + 24);
        *&v53[4] = 1024;
        *v54 = v17;
        *&v54[4] = 1024;
        *v55 = v18;
        *&v55[4] = 1024;
        *v56 = v19;
        *&v56[4] = 1024;
        *v57 = operatingMode;
        v21 = " [%s] %s:%d Setting audioTxBitrate to %d, %d audio + %d ((%d/%d+%d)*%d/%d) header for mode=%d";
        v22 = v14;
        v23 = 82;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v42 = self->_audioTxBitrate;
        v38 = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
        v40 = self->_audioHeaderSize;
        v26 = [(VCPacketBundler *)self->_audioBundler packetsPerBundle];
        v27 = [(VCAudioPayloadConfig *)v4 bundleHeaderBytes];
        v28 = self->_inputFormat.format.mSampleRate;
        v29 = [(VCAudioPayloadConfig *)v4 samplesPerFrame];
        v30 = self->_operatingMode;
        *buf = 136318466;
        v44 = v24;
        v45 = 2080;
        v46 = "[VCAudioTransmitter updateAudioTxBitrate]";
        v47 = 1024;
        v48 = 1553;
        v49 = 2112;
        *v50 = v12;
        *&v50[8] = 2048;
        v51 = self;
        *v52 = 1024;
        *&v52[2] = v42;
        *v53 = 1024;
        *&v53[2] = v38;
        *v54 = 1024;
        *&v54[2] = v7;
        *v55 = 1024;
        *&v55[2] = v40;
        *v56 = 1024;
        *&v56[2] = v26;
        *v57 = 1024;
        *&v57[2] = v27;
        v58 = 1024;
        v59 = v28;
        p_vtable = VCVideoTransmitterDefault.vtable;
        v60 = 1024;
        v61 = v29;
        v62 = 1024;
        v63 = v30;
        v21 = " [%s] %s:%d %@(%p) Setting audioTxBitrate to %d, %d audio + %d ((%d/%d+%d)*%d/%d) header for mode=%d";
        v22 = v25;
        v23 = 102;
        goto LABEL_13;
      }
    }
  }

  if (self->_mediaQueue != 0xFFFFFFFFLL)
  {
    v31 = [(VCAudioPayloadConfig *)v4 samplesPerFrame]/ self->_inputFormat.format.mSampleRate;
    if ([p_vtable + 472 canBundleExternallyForPayload:-[VCAudioPayloadConfig payload](v4 forBundlingScheme:"payload") operatingMode:{-[VCPacketBundler bundlingScheme](self->_audioBundler, "bundlingScheme"), self->_operatingMode}])
    {
      v31 = v31 * [(VCPacketBundler *)self->_audioBundler packetsPerBundle];
    }

    if (v31 != self->_audioInterval)
    {
      MediaQueue_SetThrottlingAudioInterval(v31);
      self->_audioInterval = v31;
    }
  }

  v32 = self->_audioTxBitrate;
  if (v32 != audioTxBitrate)
  {
    afrc = self->_afrc;
    if (afrc != 0xFFFFFFFFLL)
    {
      AFRCSetAudioBitRate(afrc, v32);
    }
  }

  if (self->_isRedEnabled)
  {
    v34 = [(VCAudioPayload *)self->_currentAudioPayload shortREDEnabled];
    v35 = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
    if (v34)
    {
      v36 = v35 + self->_redNumPayloads * [(VCAudioPayload *)self->_currentAudioPayload shortREDBitrate];
    }

    else
    {
      v36 = v35 + v35 * self->_redNumPayloads;
    }

    self->_actualAudioSendingBitrate = v36 + v7;
    v37 = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
  }

  else
  {
    v37 = self->_audioTxBitrate;
    self->_actualAudioSendingBitrate = (self->_redundancyPercentage + 100) * v37 / 0x64;
  }

  self->_actualAudioSendingBitrateNoRED = v37;
}

- (void)useAudioPayload:(id)a3 withBitrate:(unsigned int)a4 redNumPayloads:(unsigned int)a5
{
  v6 = *&a4;
  v28 = *MEMORY[0x1E69E9840];
  if (self->_allowAudioSwitching)
  {
    currentAudioPayload = self->_currentAudioPayload;
    if (currentAudioPayload != a3)
    {
      v10 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)currentAudioPayload config] payload];
      if (VCPayloadUtils_SupportsShortREDForPayload(v10) && (VCPayloadUtils_SupportsShortREDForPayload([objc_msgSend(a3 "config")]) & 1) == 0)
      {
        [(VCAudioRedBuilder *)self->_redBuilder resetShortREDHistoryAndPrimaryPayloadHistory:0];
      }

      self->_currentAudioPayload = a3;
      [a3 resetEncoder];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_17;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v14 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] payload];
        v15 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] samplesPerFrame];
        *v23 = 136316418;
        *&v23[4] = v12;
        *&v23[12] = 2080;
        *&v23[14] = "[VCAudioTransmitter useAudioPayload:withBitrate:redNumPayloads:]";
        *&v23[22] = 1024;
        LODWORD(v24) = 1593;
        WORD2(v24) = 1024;
        *(&v24 + 6) = v10;
        WORD5(v24) = 1024;
        HIDWORD(v24) = v14;
        LOWORD(v25) = 1024;
        *(&v25 + 2) = v15;
        v16 = " [%s] %s:%d Switching payloads from payload=%d -> %d %d samplesPerFrame";
        v17 = v13;
        v18 = 46;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v11 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
        }

        else
        {
          v11 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_17;
        }

        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v21 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] payload];
        v22 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] samplesPerFrame];
        *v23 = 136316930;
        *&v23[4] = v19;
        *&v23[12] = 2080;
        *&v23[14] = "[VCAudioTransmitter useAudioPayload:withBitrate:redNumPayloads:]";
        *&v23[22] = 1024;
        LODWORD(v24) = 1593;
        WORD2(v24) = 2112;
        *(&v24 + 6) = v11;
        HIWORD(v24) = 2048;
        v25 = self;
        LOWORD(v26) = 1024;
        *(&v26 + 2) = v10;
        HIWORD(v26) = 1024;
        LODWORD(v27) = v21;
        WORD2(v27) = 1024;
        *(&v27 + 6) = v22;
        v16 = " [%s] %s:%d %@(%p) Switching payloads from payload=%d -> %d %d samplesPerFrame";
        v17 = v20;
        v18 = 66;
      }

      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, v23, v18);
LABEL_17:
      AFRCSetAudioPayload(self->_afrc, [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config:*v23] payload], [(VCAudioPayload *)self->_currentAudioPayload bitrate]);
    }
  }

  [(VCAudioPayload *)self->_currentAudioPayload setShortREDEnabled:a5 != 0];
  if (!a5)
  {
    [(VCPacketBundler *)self->_audioBundlerShortRED resetBuffer];
  }

  [(VCAudioPayload *)self->_currentAudioPayload setBitrate:v6];
}

- (void)useAudioTier:(id)a3
{
  self->_currentAudioTier = a3;
  -[VCAudioTransmitter useAudioPayload:withBitrate:redNumPayloads:](self, "useAudioPayload:withBitrate:redNumPayloads:", _VCAudioTransmitter_UsedAudioPayloadForType(self, [objc_msgSend(a3 "payloadConfig")]), objc_msgSend(a3, "audioCodecBitrate"), objc_msgSend(a3, "redNumPayloads"));
  -[VCPacketBundler setPacketsPerBundle:](self->_audioBundler, "setPacketsPerBundle:", [a3 packetsPerBundle]);
  -[VCPacketBundler setPacketsPerBundle:](self->_audioBundlerShortRED, "setPacketsPerBundle:", [a3 packetsPerBundle]);
  [(VCAudioTransmitter *)self updateAudioTxBitrate];
  atomic_fetch_add(&self->_audioTierChangeCount, 1u);
}

- (void)start
{
  v31 = *MEMORY[0x1E69E9840];
  [(VCAudioTransmitter *)self setPeriodicReportingEnabled:1];
  [(VCAudioTransmitter *)self registerReportingTask];
  if (self->_needsPacketThread)
  {
    v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __27__VCAudioTransmitter_start__block_invoke;
    v16[3] = &unk_1E85F9BC0;
    v16[4] = self;
    v16[5] = v3;
    v4 = PacketThread_Create(48, 2048, 0x10u, 19, "rtpsend", v16);
    self->_packetThread = v4;
    PacketThread_ReceiverIsReady(v4);
  }

  audioIssueDetector = self->_audioIssueDetector;
  if (audioIssueDetector)
  {
    VCAudioIssueDetector_Start(audioIssueDetector);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_audioIssueDetector;
          *buf = 136316162;
          v18 = v7;
          v19 = 2080;
          v20 = "[VCAudioTransmitter start]";
          v21 = 1024;
          v22 = 1645;
          v23 = 2048;
          v24 = v9;
          v25 = 2048;
          v26 = self;
          v10 = " [%s] %s:%d Audio issue detector=%p is started in audio transmitter=%p";
          v11 = v8;
          v12 = 48;
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_audioIssueDetector;
          *buf = 136316674;
          v18 = v13;
          v19 = 2080;
          v20 = "[VCAudioTransmitter start]";
          v21 = 1024;
          v22 = 1645;
          v23 = 2112;
          v24 = v6;
          v25 = 2048;
          v26 = self;
          v27 = 2048;
          v28 = v15;
          v29 = 2048;
          v30 = self;
          v10 = " [%s] %s:%d %@(%p) Audio issue detector=%p is started in audio transmitter=%p";
          v11 = v14;
          v12 = 68;
          goto LABEL_14;
        }
      }
    }
  }
}

unint64_t __27__VCAudioTransmitter_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *(a2 + 32) = 0;
  *(a2 + 36) = *(*(a1 + 32) + 336);
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *(a2 + 32);
  v8 = a3;
  v9 = a4;
  return _VCAudioTransmitter_SendAudioPacketImpl([*(a1 + 40) strong], v7, &v6);
}

- (void)stop
{
  v29 = *MEMORY[0x1E69E9840];
  [(VCAudioTransmitter *)self setPeriodicReportingEnabled:0];
  reportingUnregisterPeriodicTask();
  audioIssueDetector = self->_audioIssueDetector;
  if (!audioIssueDetector)
  {
    goto LABEL_13;
  }

  VCAudioIssueDetector_Stop(audioIssueDetector);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v7 = self->_audioIssueDetector;
    v15 = 136316162;
    v16 = v5;
    v17 = 2080;
    v18 = "[VCAudioTransmitter stop]";
    v19 = 1024;
    v20 = 1654;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = self;
    v8 = " [%s] %s:%d Audio issue detector=%p is stopped in audio transmitter=%p";
    v9 = v6;
    v10 = 48;
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_audioIssueDetector;
      v15 = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCAudioTransmitter stop]";
      v19 = 1024;
      v20 = 1654;
      v21 = 2112;
      v22 = v4;
      v23 = 2048;
      v24 = self;
      v25 = 2048;
      v26 = v13;
      v27 = 2048;
      v28 = self;
      v8 = " [%s] %s:%d %@(%p) Audio issue detector=%p is stopped in audio transmitter=%p";
      v9 = v12;
      v10 = 68;
LABEL_12:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v15, v10);
    }
  }

LABEL_13:
  VCAudioDump_Finalize(&self->_encoderOutAudioDump);
  VCAudioDump_Finalize(&self->_encoderInAudioDump);
  packetThread = self->_packetThread;
  if (packetThread)
  {
    PacketThread_Destroy(packetThread);
    self->_packetThread = 0;
  }
}

- (void)logTierInfo:(int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = -1431655766;
  v9 = -1431655766;
  if (self->_statisticsCollector)
  {
    targetBitrate = self->_targetBitrate;
    v5 = self->_redundancyPercentage + 100;
    v8 = v5;
    v9 = targetBitrate;
  }

  else
  {
    AFRCGetAudioTxInfo(self->_afrc, &v9, &v8, 0, 0, 0, 0, 0, 0, 0);
    v5 = v8;
    targetBitrate = v9;
  }

  *&v6 = __PAIR64__(v5, targetBitrate);
  DWORD2(v6) = [(VCAudioTransmitter *)self redNumPayloads];
  HIDWORD(v6) = 20 * [(VCAudioTransmitter *)self redMaxDelay20ms];
  LODWORD(v7) = [(VCAudioTier *)self->_currentAudioTier packetsPerBundle];
  DWORD1(v7) = [(VCAudioPayloadConfig *)[(VCAudioTier *)self->_currentAudioTier payloadConfig] payload];
  DWORD2(v7) = [(VCAudioTier *)self->_currentAudioTier audioCodecBitrate];
  HIDWORD(v7) = [(VCAudioTier *)self->_currentAudioTier redPayloadBitrate];
  *&self->_tierInfo.tier = v6;
  *&self->_tierInfo.bundling = v7;
  reportingTierLog();
}

- (void)setRedNumPayloads:(int)a3 withMaxDelay:(int)a4 shouldResetHistory:(BOOL)a5 shouldEnableShortRED:(BOOL)a6
{
  LODWORD(v6) = a6;
  v7 = a5;
  v8 = *&a4;
  v9 = *&a3;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136316418;
      v14 = v11;
      v15 = 2080;
      v16 = "[VCAudioTransmitter setRedNumPayloads:withMaxDelay:shouldResetHistory:shouldEnableShortRED:]";
      v17 = 1024;
      v18 = 1893;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v8;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d numPayloads:%d maxDelay(in20ms):%d shouldResetHistory=%d", &v13, 0x2Eu);
    }
  }

  if (v9 > 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  [(VCAudioPayload *)self->_currentAudioPayload setShortREDEnabled:v6];
  if ((v6 & 1) == 0)
  {
    [(VCPacketBundler *)self->_audioBundlerShortRED resetBuffer];
  }

  [(VCAudioRedBuilder *)self->_redBuilder setNumPayloads:v9];
  [(VCAudioRedBuilder *)self->_redBuilder setMaxDelay:v8];
  if (v7)
  {
    [(VCAudioRedBuilder *)self->_redBuilder resetShortREDHistoryAndPrimaryPayloadHistory:1];
  }
}

- (void)setStreamIDs:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  self->_idsChannelDataFormat.numOfStreamIDs = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) unsignedShortValue];
        numOfStreamIDs = self->_idsChannelDataFormat.numOfStreamIDs;
        self->_idsChannelDataFormat.numOfStreamIDs = numOfStreamIDs + 1;
        self->_idsChannelDataFormat.streamIDs[numOfStreamIDs] = v9;
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }
}

- (void)redundancyController:(id)a3 redundancyPercentageDidChange:(unsigned int)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = [+[VCDefaults forceRedNumPayloads:a3]];
  if (v6)
  {
    v7 = 100 * v6;
  }

  else
  {
    v7 = a4;
    if (self->_shouldApplyRedAsBoolean)
    {
      v8 = [-[NSArray lastObject](self->_supportedNumRedundantPayload "lastObject")];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      supportedNumRedundantPayload = self->_supportedNumRedundantPayload;
      v10 = [(NSArray *)supportedNumRedundantPayload countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v40;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(supportedNumRedundantPayload);
            }

            v14 = *(*(&v39 + 1) + 8 * i);
            if ([v14 unsignedIntegerValue] >= a4 / 0x64uLL)
            {
              v8 = [v14 unsignedIntValue];
              goto LABEL_14;
            }
          }

          v11 = [(NSArray *)supportedNumRedundantPayload countByEnumeratingWithState:&v39 objects:v38 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
      v7 = 100 * v8;
    }
  }

  self->_redundancyPercentage = v7;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        redundancyPercentage = self->_redundancyPercentage;
        v25 = 136316162;
        v26 = v16;
        v27 = 2080;
        v28 = "[VCAudioTransmitter redundancyController:redundancyPercentageDidChange:]";
        v29 = 1024;
        v30 = 1935;
        v31 = 1024;
        *v32 = a4;
        *&v32[4] = 1024;
        *&v32[6] = redundancyPercentage;
        v19 = " [%s] %s:%d Changed redundancyPercentage=%d applying _redundancyPercentage=%d";
        v20 = v17;
        v21 = 40;
LABEL_25:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v25, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_redundancyPercentage;
        v25 = 136316674;
        v26 = v22;
        v27 = 2080;
        v28 = "[VCAudioTransmitter redundancyController:redundancyPercentageDidChange:]";
        v29 = 1024;
        v30 = 1935;
        v31 = 2112;
        *v32 = v15;
        *&v32[8] = 2048;
        v33 = self;
        v34 = 1024;
        v35 = a4;
        v36 = 1024;
        v37 = v24;
        v19 = " [%s] %s:%d %@(%p) Changed redundancyPercentage=%d applying _redundancyPercentage=%d";
        v20 = v23;
        v21 = 60;
        goto LABEL_25;
      }
    }
  }
}

- (void)processCDRXInNWConnectionNotification:(tagVCNWConnectionNotification *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  VCNWConnectionMonitorUtils_GetCDRXCycleFromNWNotification(&self->_lastNWConnectionNotification, &v9, &v8);
  VCNWConnectionMonitorUtils_GetCDRXCycleFromNWNotification(a3, &v7, &v6);
  if (v9 != v7 || v8 != v6)
  {
    VCPacketBundler_StoreAndEnqueueCdrxInfo(self->_audioBundler, v6, v7);
  }
}

- (void)process5GRATInNWConnectionNotification:(tagVCNWConnectionNotification *)a3
{
  RATFromNWNotification = VCNWConnectionMonitorUtils_GetRATFromNWNotification(&self->_lastNWConnectionNotification);
  v6 = VCNWConnectionMonitorUtils_GetRATFromNWNotification(a3);
  if (!RATFromNWNotification && VCNWConnectionMonitorUtils_IsBasebandRAT5G(v6))
  {
    self->_ratType = 6;
    audioIssueDetector = self->_audioIssueDetector;

    VCAudioIssueDetector_UpdateConnectionType(audioIssueDetector, 6);
  }
}

- (void)logNWConnectionNotificationBBAdvisoryTypeDefault:(tagVCNWConnectionNotification *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  RATFromNWNotification = VCNWConnectionMonitorUtils_GetRATFromNWNotification(&self->_lastNWConnectionNotification);
  v6 = VCNWConnectionMonitorUtils_GetRATFromNWNotification(a3);
  SignalLevelFromNWNotification = VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(&self->_lastNWConnectionNotification);
  v8 = VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(a3);
  if ((RATFromNWNotification != v6 || SignalLevelFromNWNotification != v8) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      basebandAdvisoryType = a3->var0.basebandAdvisoryType;
      frequency_band = a3->var1.advisory.frequency_band;
      reference_signal_level = a3->var1.advisory.cell_context.reference_signal_level;
      signal_level = a3->var1.advisory.cell_context.signal_level;
      signal_quality = a3->var1.advisory.cell_context.signal_quality;
      bt_coex = a3->var1.advisory.bt_coex;
      quality_score_loss = a3->var1.advisory.quality_score_loss;
      cdrx_cycle = a3->var1.advisory.cell_context.cdrx_cycle;
      v19 = 136317954;
      v20 = v9;
      v21 = 2080;
      v22 = "[VCAudioTransmitter logNWConnectionNotificationBBAdvisoryTypeDefault:]";
      v23 = 1024;
      v24 = 1972;
      v25 = 2048;
      v26 = self;
      v27 = 1024;
      v28 = basebandAdvisoryType;
      v29 = 1024;
      v30 = frequency_band;
      v31 = 1024;
      v32 = reference_signal_level;
      v33 = 1024;
      v34 = signal_level;
      v35 = 1024;
      v36 = signal_quality;
      v37 = 1024;
      v38 = bt_coex;
      v39 = 1024;
      v40 = quality_score_loss;
      v41 = 1024;
      v42 = cdrx_cycle;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Cellular Network Notification: basebandAdvisoryType=%d radioAccessTechnology=%u referenceSignalLevel=%d signalLevel=%d signalQuality=%d uplinkBler=%u bandwidthLimitationIndication=%u cdrxCycleLength=%u", &v19, 0x56u);
    }
  }
}

- (void)logNWConnectionNotificationBBAdvisoryTypeBWLimitation:(tagVCNWConnectionNotification *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3->var1.advisory.version != self->_lastNWConnectionNotification.var1.advisory.version && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      basebandAdvisoryType = a3->var0.basebandAdvisoryType;
      version = a3->var1.advisory.version;
      v9 = 136316418;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAudioTransmitter logNWConnectionNotificationBBAdvisoryTypeBWLimitation:]";
      v13 = 1024;
      v14 = 1978;
      v15 = 2048;
      v16 = self;
      v17 = 1024;
      v18 = basebandAdvisoryType;
      v19 = 1024;
      v20 = version;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Cellular BW Limitation: basebandAdvisoryType=%d bandwidthLimitationIndication=%u", &v9, 0x32u);
    }
  }
}

- (void)logNWConnectionNotificationBBAdvisoryTypeLinkMeasurement:(tagVCNWConnectionNotification *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  RATFromNWNotification = VCNWConnectionMonitorUtils_GetRATFromNWNotification(&self->_lastNWConnectionNotification);
  v6 = VCNWConnectionMonitorUtils_GetRATFromNWNotification(a3);
  SignalLevelFromNWNotification = VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(&self->_lastNWConnectionNotification);
  v8 = VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(a3);
  if ((RATFromNWNotification != v6 || SignalLevelFromNWNotification != v8) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      basebandAdvisoryType = a3->var0.basebandAdvisoryType;
      radioAccessTechnology = a3->var1.codecRateAdaptation.radioAccessTechnology;
      referenceSignalLevel = a3->var1.linkMeasurement.referenceSignalLevel;
      signalLevel = a3->var1.linkMeasurement.signalLevel;
      signalQuality = a3->var1.linkMeasurement.signalQuality;
      uplinkBler = a3->var1.linkMeasurement.uplinkBler;
      v17 = 136317442;
      v18 = v9;
      v19 = 2080;
      v20 = "[VCAudioTransmitter logNWConnectionNotificationBBAdvisoryTypeLinkMeasurement:]";
      v21 = 1024;
      v22 = 1989;
      v23 = 2048;
      v24 = self;
      v25 = 1024;
      v26 = basebandAdvisoryType;
      v27 = 1024;
      v28 = radioAccessTechnology;
      v29 = 1024;
      v30 = referenceSignalLevel;
      v31 = 1024;
      v32 = signalLevel;
      v33 = 1024;
      v34 = signalQuality;
      v35 = 1024;
      v36 = uplinkBler;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Cellular Link Measurement Notification: basebandAdvisoryType=%d radioAccessTechnology=%u referenceSignalLevel=%d signalLevel=%d signalQuality=%d uplinkBler=%u", &v17, 0x4Au);
    }
  }
}

- (void)logNWConnectionNotificationBBAdvisoryTypeCDRX:(tagVCNWConnectionNotification *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      basebandAdvisoryType = a3->var0.basebandAdvisoryType;
      reserved = a3->var1.advisory._reserved;
      version = a3->var1.advisory.version;
      v10 = 136316674;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCAudioTransmitter logNWConnectionNotificationBBAdvisoryTypeCDRX:]";
      v14 = 1024;
      v15 = 1994;
      v16 = 2048;
      v17 = self;
      v18 = 1024;
      v19 = basebandAdvisoryType;
      v20 = 1024;
      v21 = reserved;
      v22 = 1024;
      v23 = version;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Cellular CDRX Notification: basebandAdvisoryType=%d cdrxCycleLength=%u cdrxState=%u", &v10, 0x38u);
    }
  }
}

- (void)logNWConnectionNotification:(tagVCNWConnectionNotification *)a3
{
  basebandAdvisoryType = a3->var0.basebandAdvisoryType;
  if (basebandAdvisoryType > 2)
  {
    if (basebandAdvisoryType == 3)
    {
      [(VCAudioTransmitter *)self logNWConnectionNotificationBBAdvisoryTypeBWLimitation:?];
    }

    else if (basebandAdvisoryType == 4)
    {
      [(VCAudioTransmitter *)self logNWConnectionNotificationBBAdvisoryTypeCDRX:?];
    }
  }

  else if (basebandAdvisoryType)
  {
    if (basebandAdvisoryType == 2)
    {
      [(VCAudioTransmitter *)self logNWConnectionNotificationBBAdvisoryTypeLinkMeasurement:?];
    }
  }

  else
  {
    [(VCAudioTransmitter *)self logNWConnectionNotificationBBAdvisoryTypeDefault:?];
  }
}

- (void)processNWConnectionNotification:(tagVCNWConnectionNotification *)a3
{
  if (a3)
  {
    basebandAdvisoryType = a3->var0.basebandAdvisoryType;
    if (basebandAdvisoryType <= 5 && ((1 << basebandAdvisoryType) & 0x25) != 0)
    {
      [(VCAudioTransmitter *)self process5GRATInNWConnectionNotification:a3];
      basebandAdvisoryType = a3->var0.basebandAdvisoryType;
    }

    if ((basebandAdvisoryType | 4) == 4)
    {
      [(VCAudioTransmitter *)self processCDRXInNWConnectionNotification:a3];
    }

    [(VCAudioTransmitter *)self logNWConnectionNotification:a3];
    v7 = *&a3->version;
    v8 = *(&a3->var1.thermalUpdate + 6);
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 2) = *(&a3->var1.thermalUpdate + 2);
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 6) = v8;
    *&self->_lastNWConnectionNotification.version = v7;
    v9 = *(&a3->var1.thermalUpdate + 10);
    v10 = *(&a3->var1.thermalUpdate + 14);
    v11 = *(&a3->var1.thermalUpdate + 18);
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 11) = *(&a3->var1.thermalUpdate + 11);
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 14) = v10;
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 18) = v11;
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 10) = v9;
    audioIssueDetector = self->_audioIssueDetector;
    if (audioIssueDetector)
    {

      VCAudioIssueDetector_ProcessCellularNetworkNotification(audioIssueDetector, a3);
    }
  }

  else
  {
    [VCAudioTransmitter processNWConnectionNotification:];
  }
}

- (void)reportRTCPPacket
{
  audioIssueDetector = self->_audioIssueDetector;
  if (audioIssueDetector)
  {
    VCAudioIssueDetector_ReportRTCPTraffic(audioIssueDetector);
  }
}

- (void)audioIssueDetectorCreateAndConfigure
{
  v37 = *MEMORY[0x1E69E9840];
  mSampleRate = self->_inputFormat.format.mSampleRate;
  reportingAgent = self->_reportingAgent;
  v17[0] = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = reportingAgent;
  WORD1(v17[0]) = mSampleRate;
  LOWORD(v17[0]) = self->_inputFormat.samplesPerFrame;
  ratType = self->_ratType;
  reportingModuleID = self->_reportingModuleID;
  v19 = ratType;
  v6 = VCAudioIssueDetector_Create(0);
  self->_audioIssueDetector = v6;
  VCAudioIssueDetector_Configure(v6, v17);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIssueDetector = self->_audioIssueDetector;
        *buf = 136316674;
        v21 = v8;
        v22 = 2080;
        v23 = "[VCAudioTransmitter audioIssueDetectorCreateAndConfigure]";
        v24 = 1024;
        v25 = 2061;
        v26 = 2048;
        v27 = audioIssueDetector;
        v28 = 2048;
        v29 = self;
        v30 = 1024;
        *v31 = WORD1(v17[0]);
        *&v31[4] = 1024;
        *&v31[6] = LOWORD(v17[0]);
        v11 = " [%s] %s:%d Audio issue detector=%p is configured in audioTransmitter=%p with audioIOSampleRate=%d, audioIOSampleCount=%d";
        v12 = v9;
        v13 = 60;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_audioIssueDetector;
        *buf = 136317186;
        v21 = v14;
        v22 = 2080;
        v23 = "[VCAudioTransmitter audioIssueDetectorCreateAndConfigure]";
        v24 = 1024;
        v25 = 2061;
        v26 = 2112;
        v27 = v7;
        v28 = 2048;
        v29 = self;
        v30 = 2048;
        *v31 = v16;
        *&v31[8] = 2048;
        v32 = self;
        v33 = 1024;
        v34 = WORD1(v17[0]);
        v35 = 1024;
        v36 = LOWORD(v17[0]);
        v11 = " [%s] %s:%d %@(%p) Audio issue detector=%p is configured in audioTransmitter=%p with audioIOSampleRate=%d, audioIOSampleCount=%d";
        v12 = v15;
        v13 = 80;
        goto LABEL_11;
      }
    }
  }
}

- (void)audioIssueDetectorStopAndFinalize
{
  v27 = *MEMORY[0x1E69E9840];
  VCAudioIssueDetector_Stop(self->_audioIssueDetector);
  VCAudioIssueDetector_Finalize(&self->_audioIssueDetector);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIssueDetector = self->_audioIssueDetector;
        v13 = 136316162;
        v14 = v4;
        v15 = 2080;
        v16 = "[VCAudioTransmitter audioIssueDetectorStopAndFinalize]";
        v17 = 1024;
        v18 = 2081;
        v19 = 2048;
        v20 = audioIssueDetector;
        v21 = 2048;
        v22 = self;
        v7 = " [%s] %s:%d Audio issue detector=%p is stopped and destroyed in audio transmitter=%p";
        v8 = v5;
        v9 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_audioIssueDetector;
        v13 = 136316674;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCAudioTransmitter audioIssueDetectorStopAndFinalize]";
        v17 = 1024;
        v18 = 2081;
        v19 = 2112;
        v20 = v3;
        v21 = 2048;
        v22 = self;
        v23 = 2048;
        v24 = v12;
        v25 = 2048;
        v26 = self;
        v7 = " [%s] %s:%d %@(%p) Audio issue detector=%p is stopped and destroyed in audio transmitter=%p";
        v8 = v11;
        v9 = 68;
        goto LABEL_11;
      }
    }
  }
}

- (void)handleActiveConnectionChangeMultiway:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  self->_maxAudioPacketSize = [a3 maxConnectionMTU];
  v5 = VCNetworkUtils_AdditionalOverheadForIDSOptions();
  self->_maxAudioPacketSize -= v5;
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    maxAudioPacketSize = self->_maxAudioPacketSize;
    v16 = 136316418;
    v17 = v13;
    v18 = 2080;
    v19 = "[VCAudioTransmitter handleActiveConnectionChangeMultiway:]";
    v20 = 1024;
    v21 = 2124;
    v22 = 2112;
    v23 = v6;
    v24 = 2048;
    v25 = self;
    v26 = 1024;
    v27 = maxAudioPacketSize;
    v10 = " [%s] %s:%d %@(%p) Setting _maxAudioPacketSize=%u for multiway connection";
    v11 = v14;
    v12 = 54;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_maxAudioPacketSize;
      v16 = 136315906;
      v17 = v7;
      v18 = 2080;
      v19 = "[VCAudioTransmitter handleActiveConnectionChangeMultiway:]";
      v20 = 1024;
      v21 = 2124;
      v22 = 1024;
      LODWORD(v23) = v9;
      v10 = " [%s] %s:%d Setting _maxAudioPacketSize=%u for multiway connection";
      v11 = v8;
      v12 = 34;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
    }
  }

LABEL_12:
  self->_constantTransportOverhead = VCConnection_PerPacketConnectionOverhead(a3);
  if (!VCDefaults_GetBoolValueForKey(@"disableDynamicMediaPacketHeaderCalculations", 0))
  {
    RTPUpdateConstantTransportOverhead(self->_rtpHandle, self->_constantTransportOverhead);
  }

  self->_constantTransportOverhead += v5;
  atomic_fetch_add(&self->_audioTierChangeRequestCount, 1u);
}

- (void)handleActiveConnectionChangeDefault:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  self->_useWiFiTiers = [a3 isWifiToWifi];
  self->_maxAudioPacketSize = [a3 connectionMTU];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    maxAudioPacketSize = self->_maxAudioPacketSize;
    useWiFiTiers = self->_useWiFiTiers;
    v21 = 136316162;
    v22 = v6;
    v23 = 2080;
    v24 = "[VCAudioTransmitter handleActiveConnectionChangeDefault:]";
    v25 = 1024;
    v26 = 2141;
    v27 = 1024;
    *v28 = maxAudioPacketSize;
    *&v28[4] = 1024;
    *&v28[6] = useWiFiTiers;
    v10 = " [%s] %s:%d Setting _maxAudioPacketSize=%u for default mode, useWiFiTiers=%{BOOL}d";
    v11 = v7;
    v12 = 40;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_maxAudioPacketSize;
      v16 = self->_useWiFiTiers;
      v21 = 136316674;
      v22 = v13;
      v23 = 2080;
      v24 = "[VCAudioTransmitter handleActiveConnectionChangeDefault:]";
      v25 = 1024;
      v26 = 2141;
      v27 = 2112;
      *v28 = v5;
      *&v28[8] = 2048;
      v29 = self;
      v30 = 1024;
      v31 = v15;
      v32 = 1024;
      v33 = v16;
      v10 = " [%s] %s:%d %@(%p) Setting _maxAudioPacketSize=%u for default mode, useWiFiTiers=%{BOOL}d";
      v11 = v14;
      v12 = 60;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v21, v12);
    }
  }

LABEL_12:
  if (self->_useRateControl)
  {
    v17 = [a3 uplinkAudioBitrateCapOneToOne];
  }

  else
  {
    v17 = [a3 uplinkBitrateCap];
  }

  v18 = v17;
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(a3);
  IsRemoteOnCellular = VCConnection_IsRemoteOnCellular(a3);
  [(VCAudioTransmitter *)self setCellTech:IsLocalOnCellular remoteCellular:IsRemoteOnCellular isIPV6:VCConnection_IsIPv6(a3) audioCap:v18];
}

- (void)handleActiveConnectionChange:(id)a3
{
  if (self->_operatingMode == 6)
  {
    [(VCAudioTransmitter *)self handleActiveConnectionChangeMultiway:a3];
  }

  else
  {
    [(VCAudioTransmitter *)self handleActiveConnectionChangeDefault:a3];
  }
}

- ($630EEFBF570FF8F3C5E9582E2A557BD5)currentChannelMetrics
{
  *&retstr->var8 = self[6].var7;
  var4 = self[6].var4;
  *&retstr->var3 = *&self[6].var2;
  *&retstr->var4.height = var4;
  *&retstr->var6 = *&self[6].var5;
  v4 = *&self[6].var1[1];
  *&retstr->var0 = *&self[5].var8;
  *&retstr->var1[3] = v4;
  return self;
}

- (void)setCurrentChannelMetrics:(id *)a3
{
  v3 = *&a3->var1[3];
  *&self->_currentChannelMetrics.averageNetworkBitrate = *&a3->var0;
  *&self->_currentChannelMetrics.networkBitrate[3] = v3;
  v4 = *&a3->var3;
  v5 = *&a3->var4.height;
  v6 = *&a3->var6;
  *&self->_currentChannelMetrics.lastVideoSampleTime = *&a3->var8;
  *&self->_currentChannelMetrics.frameResolution.height = v5;
  *&self->_currentChannelMetrics.lastAudioSampleTime = v6;
  *&self->_currentChannelMetrics.averageFramerate = v4;
}

- (BOOL)shouldUpdateCodecBitrate:(_VCAudioCodecModeChangeEvent *)a3
{
  if (!a3->codecBitrate)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_18;
    }

    VRTraceErrorLogLevelToCSTR();
    v7 = OUTLINED_FUNCTION_40();
    if (!v7)
    {
      return v7;
    }

LABEL_13:
    OUTLINED_FUNCTION_24();
    v13 = 50;
LABEL_17:
    _os_log_error_impl(v8, v9, v10, v11, v12, v13);
    goto LABEL_18;
  }

  if ([(VCAudioPayload *)self->_currentAudioPayload bitrate]== a3->codecBitrate)
  {
    goto LABEL_18;
  }

  payload = a3->payload;
  if (payload != [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] payload])
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_18;
    }

    VRTraceErrorLogLevelToCSTR();
    v7 = OUTLINED_FUNCTION_40();
    if (!v7)
    {
      return v7;
    }

    [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] payload];
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_19();
    goto LABEL_13;
  }

  v6 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] supportedBitrates];
  if (-[NSArray containsObject:](v6, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3->codecBitrate]))
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v7 = OUTLINED_FUNCTION_40();
    if (!v7)
    {
      return v7;
    }

    [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] supportedBitrates];
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_24();
    v13 = 60;
    goto LABEL_17;
  }

LABEL_18:
  LOBYTE(v7) = 0;
  return v7;
}

- (BOOL)shouldUpdateCodecBandwidth:(_VCAudioCodecModeChangeEvent *)a3
{
  payload = a3->payload;
  if (payload == [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] payload])
  {
    codecBandwidth = a3->codecBandwidth;
    if (codecBandwidth != [(VCAudioPayload *)self->_currentAudioPayload bandwidth])
    {
      v7 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] supportedBandwidths];
      if (-[NSArray containsObject:](v7, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3->codecBandwidth]))
      {
        LOBYTE(v8) = 1;
        return v8;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = OUTLINED_FUNCTION_40();
        if (!v8)
        {
          return v8;
        }

        [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] supportedBandwidths];
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_10_26();
        OUTLINED_FUNCTION_24();
        v14 = 60;
LABEL_12:
        _os_log_error_impl(v9, v10, v11, v12, v13, v14);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v8 = OUTLINED_FUNCTION_40();
    if (!v8)
    {
      return v8;
    }

    [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->_currentAudioPayload config] payload];
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_24();
    v14 = 50;
    goto LABEL_12;
  }

  LOBYTE(v8) = 0;
  return v8;
}

- (void)handleCodecModeChangeEvent:(int *)a1 didUpdateBandwidth:didUpdateBitrate:.cold.1(int *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_34())
    {
      v4 = *a1;
      v5 = a1[1];
      v6 = a1[2];
      v7 = 136316418;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCAudioTransmitter handleCodecModeChangeEvent:didUpdateBandwidth:didUpdateBitrate:]";
      v11 = 1024;
      v12 = 450;
      v13 = 1024;
      v14 = v4;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Coded rate mode and bandwidth combination is not supported for payload=%u. mode=%u bandwidth=%u", &v7, 0x2Eu);
    }
  }
}

- (void)setupAudioEncoders
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  v5 = 829;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create encoder for payload=%@", v3, 0x26u);
}

- (void)allocateLastInputSampleBuffer:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)processNWConnectionNotification:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end