@interface VCAudioStream
+ (id)capabilities;
+ (id)newPayloadConfigForCodecConfig:(id)config streamConfig:(id)streamConfig inputSampleRate:(unsigned int)rate;
+ (id)supportedAudioPayloads;
+ (int)operatingModeForAudioStreamMode:(int64_t)mode;
+ (unsigned)audioChannelCountForMode:(id)mode;
+ (unsigned)audioIODirectionWithMediaStreamDirection:(int64_t)direction;
+ (unsigned)audioIOTypeForMode:(int64_t)mode;
- (BOOL)createAudioReceiver;
- (BOOL)createAudioTransmitter:(int64_t)transmitter streamIDs:(id)ds;
- (BOOL)generateRTCPXRSummaryReports:(tagVCRTCPXRSummaryReport *)reports reportCount:(char *)count;
- (BOOL)generateRTCPXRVoIPMetricsReports:(tagVCRTCPXRVoIPMetricsReport *)reports reportCount:(char *)count;
- (BOOL)generateReceptionReportList:(_RTCP_RECEPTION_REPORT *)list reportCount:(char *)count;
- (BOOL)getCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event forCodecBitrate:(unsigned int)bitrate payload:(int)payload;
- (BOOL)handleUplinkBitrateChange:(_VCAudioCodecModeChangeEvent *)change reason:(unsigned __int8)reason;
- (BOOL)isVoLTERateAdaptationEnabled;
- (BOOL)networkUplinkClockUsesBaseband:(int64_t)baseband;
- (BOOL)onConfigureStreamWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)setReceiverPayloads;
- (BOOL)setupAudioStreamWithClientPid:(int)pid enableAudioPowerSpectrum:(BOOL)spectrum;
- (BOOL)setupPayloads;
- (BOOL)setupSourceTransport:(id)transport;
- (BOOL)shouldEnableAACELDInactiveFrames:(BOOL)frames streamConfig:(id)config;
- (BOOL)shouldEnableFixedJitterBufferInitialOvershootResiliency;
- (BOOL)shouldSetUpMediaRecorderWithParticipantInfoDictionary:(id)dictionary;
- (BOOL)validateAudioStreamConfigurations:(id)configurations;
- (VCAudioStream)initWithClientPid:(int)pid;
- (VCAudioStream)initWithClientPid:(int)pid ssrc:(unsigned int)ssrc transportSessionID:(unsigned int)d streamToken:(int64_t)token experimentManager:(id)manager logPrefix:(id)prefix;
- (_METER_INFO)meterWithType:(int)type;
- (__CFDictionary)getClientSpecificUserInfo:(id)info;
- (__CFString)getReportingClientName;
- (double)lastReceivedRTCPPacketTime;
- (id)addAudioPayload:(int)payload;
- (id)codecConfigForOpusWithStreamConfig:(id)config;
- (id)configForPayloadType:(int)type;
- (id)createTransportWithStreamConfig:(id)config;
- (id)getCodecConfigForPayload:(int)payload streamConfig:(id)config;
- (id)getReportingServiceID;
- (id)getSupportedPayloads;
- (id)setLocalParticipantInfo:(id)info networkSockets:(id)sockets withError:(id *)error;
- (id)streamIDsFromTransport;
- (id)supportedPayloads;
- (int)getConnectionTypeForStreamMode:(int64_t)mode;
- (int)getPacketsPerBundleForStreamConfig:(id)config;
- (int)getRTPTimeStampRateScaleFactor;
- (int)getReportingClientType;
- (int)preferredAudioCodecWithStreamConfig:(id)config;
- (int)selectCodecBandwidthForCodecRateMode:(int)mode;
- (unsigned)computePacketTimestampWithInputTimestamp:(unsigned int)timestamp numSamples:(int)samples hostTime:(double)time;
- (unsigned)internalSampleRateForCodecType:(int64_t)type;
- (unsigned)packetExpirationTimeForStreamConfig:(id)config;
- (unsigned)preferredAudioBitrateForPayload:(int)payload;
- (void)_computeInternalFormatForStreamConfigurations:(id)configurations;
- (void)addStreamStartingMetricsToReport:(const __CFDictionary *)report;
- (void)addSyncSourceDelegate:(id)delegate;
- (void)cleanUpAudioMachineLearningCoordinators;
- (void)cleanUpMediaRecorder;
- (void)cleanupAudio;
- (void)cleanupBeforeReconfigure:(id)reconfigure;
- (void)collectRxChannelMetrics:(id *)metrics;
- (void)collectTxChannelMetrics:(id *)metrics;
- (void)configureAudioJBAlgos:(tagVCAudioReceiverConfig *)algos;
- (void)configureCellularFeatures;
- (void)createAudioReceiver;
- (void)createReportSSRCListWithStreamConfigs:(id)configs;
- (void)dealloc;
- (void)didChangeThermalLevel:(int)level;
- (void)didEnterState:(int)state oldState:(int)oldState;
- (void)didResumeAudioIO:(id)o;
- (void)didSuspendAudioIO:(id)o;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec;
- (void)gatherRealtimeStats:(__CFDictionary *)stats;
- (void)getCodecConfigForPayload:(int)payload block:(id)block;
- (void)handleANBR:(unsigned int)r forDirection:(int64_t)direction;
- (void)handleActiveConnectionChange:(id)change;
- (void)handleBasebandRateTrendSuggestion:(int)suggestion;
- (void)handleCellularToWiFiHandover;
- (void)handleCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event;
- (void)handleDownlinkANBR:(_VCAudioCodecModeChangeEvent *)r;
- (void)handleUplinkANBR:(_VCAudioCodecModeChangeEvent *)r;
- (void)handleWiFiToCelluarHandover;
- (void)notifyCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event didUpdateBandwidth:(BOOL)bandwidth didUpdateBitrate:(BOOL)bitrate;
- (void)notifyCodecModeChangeToCT:(_VCAudioCodecModeChangeEvent *)t;
- (void)onCallIDChanged;
- (void)onPauseWithCompletionHandler:(id)handler;
- (void)onRTCPTimeout;
- (void)onResumeWithCompletionHandler:(id)handler;
- (void)onSendRTCPPacket;
- (void)onStartWithCompletionHandler:(id)handler;
- (void)onStopWithCompletionHandler:(id)handler;
- (void)prepareAudio;
- (void)queryAnbrBitrate:(unsigned int)bitrate forDirection:(int64_t)direction;
- (void)rateAdaptation:(id)adaptation targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter;
- (void)registerActiveAudioStreamChangeNotifications;
- (void)registerCodecRateModeChangeNotifications;
- (void)removeSyncSourceDelegate:(id)delegate;
- (void)reportTimestampJumpsWithReportingDictionary:(__CFDictionary *)dictionary;
- (void)reportingAlgosAudioStreamEvent:(unsigned __int16)event;
- (void)reportingAudioStreamEvent:(unsigned __int16)event;
- (void)sendDTMFEvent:(id)event;
- (void)serverDidDie;
- (void)setCurrentDTXEnable:(BOOL)enable;
- (void)setDTXPayload:(id)payload;
- (void)setDeviceRoleForAudioStreamMode:(int64_t)mode direction:(int64_t)direction;
- (void)setFrequencyMeteringEnabled:(BOOL)enabled meterType:(int)type;
- (void)setIsLocalCelluar:(unsigned int)celluar;
- (void)setJitterBufferMode:(int)mode;
- (void)setOverlayToken:(int64_t)token;
- (void)setPreferredMediaBitrateWithConfiguration:(id)configuration;
- (void)setReceiverPayloads;
- (void)setRemoteCodecTypeAndSampleRate:(_VCAudioCodecModeChangeEvent *)rate;
- (void)setSendActiveVoiceOnly:(BOOL)only;
- (void)setStreamDirection:(int64_t)direction;
- (void)setTargetBitrate:(unsigned int)bitrate rateChangeCounter:(unsigned int)counter;
- (void)setTargetStreamID:(id)d;
- (void)setUpMediaRecorder;
- (void)setVCStatistics:(tagVCStatisticsMessage *)statistics;
- (void)setVolume:(float)volume;
- (void)setupAudioMachineLearningCoordinatorsWithFormat:(tagVCAudioFrameFormat *)format direction:(int64_t)direction;
- (void)setupAudioPowerSpectrum;
- (void)setupPayloads;
- (void)setupPeriodicReporting;
- (void)setupReportingAgent:(id)agent;
- (void)startAudioWithCompletionHandler:(id)handler;
- (void)stopAudioWithCompletionHandler:(id)handler;
- (void)stopSendDTMFEvent;
- (void)storeLastCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event;
- (void)telephonyInterface:(id)interface anbrActivationUpdate:(BOOL)update;
- (void)telephonyInterface:(id)interface anbrRecommendation:(unsigned int)recommendation forDirection:(int64_t)direction;
- (void)updateCodecPayloadAndBitrateForStartEvent:(int *)event bitrate:(unsigned int *)bitrate;
- (void)updateOperatingMode:(int)mode;
- (void)updateSyncSourceState:(int)state;
- (void)waitIdleForSyncSourceDelegates;
- (void)willExitState:(int)state newState:(int)newState;
@end

@implementation VCAudioStream

- (void)setOverlayToken:(int64_t)token
{
  if (self->_overlayToken != token)
  {
    self->_overlayToken = token;
    if (VCOverlayManager_isOverlayEnabled())
    {
      audioReceiver = self->_sourceContext.audioReceiver;
      if (audioReceiver)
      {
        overlayToken = self->_overlayToken;

        VCAudioReceiver_SetOverlayToken(audioReceiver, overlayToken);
      }
    }
  }
}

- (unsigned)computePacketTimestampWithInputTimestamp:(unsigned int)timestamp numSamples:(int)samples hostTime:(double)time
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->super._operatingMode != 6)
  {
    dAudioHostTime = self->dAudioHostTime;
    if (dAudioHostTime == 0.0)
    {
      v14 = 0;
    }

    else
    {
      v9 = time - dAudioHostTime;
      v10 = self->_vpioFormat.format.mSampleRate / samples;
      v11 = llround(v9 * v10) * samples;
      if (v11 != samples)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            lastInputAudioTimeStamp = self->lastInputAudioTimeStamp;
            v17 = self->dAudioHostTime;
            v18 = 136317954;
            v19 = v12;
            v20 = 2080;
            v21 = "[VCAudioStream computePacketTimestampWithInputTimestamp:numSamples:hostTime:]";
            v22 = 1024;
            v23 = 251;
            v24 = 2080;
            v25 = "[VCAudioStream computePacketTimestampWithInputTimestamp:numSamples:hostTime:]";
            v26 = 1024;
            v27 = timestamp - lastInputAudioTimeStamp;
            v28 = 1024;
            v29 = lastInputAudioTimeStamp;
            v30 = 1024;
            timestampCopy = timestamp;
            v32 = 2048;
            v33 = v9;
            v34 = 1024;
            v35 = v11;
            v36 = 2048;
            v37 = v17;
            v38 = 2048;
            timeCopy = time;
            v40 = 1024;
            v41 = v11;
            _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %s Timestamp jumped: %u (%u to %u), host time: %f (%d samples) (%f to %f). Adjustment: %d", &v18, 0x62u);
          }
        }

        samples = v11;
      }

      v14 = (([(VCAudioPayloadConfig *)[(VCAudioTransmitter *)[(VCAudioStream *)self audioTransmitter] currentAudioPayloadConfig] codecSampleRate]* samples) / self->_vpioFormat.format.mSampleRate);
    }

    return self->lastSentAudioSampleTime + v14;
  }

  return timestamp;
}

- (unsigned)internalSampleRateForCodecType:(int64_t)type
{
  operatingMode = self->super._operatingMode;
  if (operatingMode == 6 || self->_isVoiceProcessingAt24KSupported)
  {
    return 24000;
  }

  result = 8000;
  switch(type)
  {
    case 1:
    case 5:
    case 6:
    case 13:
    case 14:
    case 17:
      return result;
    case 2:
    case 3:
    case 7:
    case 12:
    case 15:
      result = 16000;
      break;
    case 4:
      if (operatingMode == 3)
      {
        result = 32000;
      }

      else
      {
        result = 24000;
      }

      break;
    case 8:
    case 11:
    case 18:
    case 20:
      return 24000;
    case 16:
    case 19:
      result = 48000;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (void)_computeInternalFormatForStreamConfigurations:(id)configurations
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = +[VCAudioStream audioChannelCountForMode:](VCAudioStream, "audioChannelCountForMode:", [configurations firstObject]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [configurations countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(configurations);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        if ([v10 useExternalIO])
        {
          externalIOFormat = [v10 externalIOFormat];
          v19 = externalIOFormat[1];
          v18 = externalIOFormat[2];
          *&self->_vpioFormat.format.mSampleRate = *externalIOFormat;
          *&self->_vpioFormat.format.mBytesPerPacket = v19;
          *&self->_vpioFormat.format.mBitsPerChannel = v18;
          v20 = 1;
          goto LABEL_24;
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [objc_msgSend(v10 "allCodecConfigurations")];
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = -[VCAudioStream internalSampleRateForCodecType:](self, "internalSampleRateForCodecType:", [*(*(&v23 + 1) + 8 * j) codecType]);
              if (v7 <= v16)
              {
                v7 = v16;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v23 objects:v22 count:16];
          }

          while (v13);
        }

        if (self->super._operatingMode == 11)
        {
          v21 = [objc_msgSend(configurations objectAtIndexedSubscript:{0), "channelCount"}];
        }
      }

      v6 = [configurations countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  Format_Float(&self->_vpioFormat, v21, v7);
  v20 = 0;
LABEL_24:
  self->_useExternalIO = v20;
}

- (BOOL)generateRTCPXRSummaryReports:(tagVCRTCPXRSummaryReport *)reports reportCount:(char *)count
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *count;
  *count = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  transportArray = self->super._transportArray;
  v8 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (!v8)
  {
    return 0;
  }

  v10 = v8;
  v11 = 0;
  v12 = *v29;
  *&v9 = 136315650;
  v18 = v9;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(transportArray);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      if ([v14 isRTCPXREnabled])
      {
        v20 = v6;
        if ([v14 generateRTCPXRSummaryReport:reports reportCount:&v20])
        {
          v15 = v20;
          reports += v20;
          *count += v20;
          v6 -= v15;
          v11 = 1;
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v22 = v19;
            v23 = 2080;
            v24 = "[VCAudioStream generateRTCPXRSummaryReports:reportCount:]";
            v25 = 1024;
            v26 = 546;
            _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d Failed to generate the RTCP XR statistics summary report.", buf, 0x1Cu);
          }
        }
      }
    }

    v10 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v28 objects:v27 count:16];
  }

  while (v10);
  return v11;
}

- (BOOL)generateRTCPXRVoIPMetricsReports:(tagVCRTCPXRVoIPMetricsReport *)reports reportCount:(char *)count
{
  v89 = *MEMORY[0x1E69E9840];
  audioReceiver = self->_sourceContext.audioReceiver;
  if (audioReceiver)
  {
    v7 = *count;
    *count = 0;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    transportArray = self->super._transportArray;
    v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v9)
    {
      v11 = v9;
      countCopy = count;
      v12 = 0;
      v13 = *v50;
      *&v10 = 136315650;
      v44 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(transportArray);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          if ([v15 isRTCPXREnabled])
          {
            v47 = v7;
            if ([v15 generateRTCPXRVoIPMetricsReport:reports reportCount:&v47])
            {
              DiscardRate = VCJitterBuffer_GetDiscardRate(audioReceiver->var2);
              v17 = *&DiscardRate;
              TargetTime = VCJitterBuffer_GetTargetTime(audioReceiver->var2);
              reports->var1 = (v17 * 255.0);
              *buf = -1;
              v19 = *&reports->var20;
              *&buf[8] = -1431655766;
              *v54 = v19;
              VCJitterBuffer_GetBurstMetrics(audioReceiver->var2, buf);
              v20 = vcvtd_n_s64_f64(*buf, 8uLL);
              v21 = vcvtd_n_s64_f64(*&buf[4], 8uLL);
              if (v20 >= 0xFF)
              {
                LOBYTE(v20) = -1;
              }

              reports->var2 = v20;
              if (v21 >= 0xFF)
              {
                v22 = -1;
              }

              else
              {
                v22 = v21;
              }

              reports->var3 = v22;
              *&reports->var4 = *&buf[8];
              v23 = TargetTime + 3;
              if ((TargetTime + 3) >= 0xFFFF)
              {
                v23 = -1;
              }

              reports->var7 = v23;
              *&reports->var8 = 0x7F7F7F7F107F7F7FLL;
              reports->var16 = -16;
              VCJitterBuffer_GetRTCPXRJitterBufferParameters(audioReceiver->var2, &reports->var17, &reports->var18, &reports->var19);
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v24 = VRTraceErrorLogLevelToCSTR();
                v25 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  var20 = reports->var20;
                  var21 = reports->var21;
                  var0 = reports->var0;
                  var1 = reports->var1;
                  v30 = vcvtd_n_f64_u32(reports->var2, 8uLL) * 100.0;
                  v31 = vcvtd_n_f64_u32(reports->var3, 8uLL) * 100.0;
                  var4 = reports->var4;
                  var5 = reports->var5;
                  var6 = reports->var6;
                  var7 = reports->var7;
                  var11 = reports->var11;
                  var16 = reports->var16;
                  var17 = reports->var17;
                  var18 = reports->var18;
                  var19 = reports->var19;
                  *buf = 136319746;
                  *&buf[4] = v24;
                  *v54 = 2080;
                  *&v54[2] = "_VCAudioStream_FillRTCPXRVoIPMetricsReport";
                  v55 = 1024;
                  v56 = 615;
                  v57 = 2048;
                  v58 = audioReceiver;
                  v59 = 1024;
                  v60 = var20;
                  v61 = 1024;
                  v62 = var21;
                  v63 = 1024;
                  v64 = var0;
                  v65 = 1024;
                  v66 = var1;
                  v67 = 2048;
                  v68 = v30;
                  v69 = 2048;
                  v70 = v31;
                  v71 = 1024;
                  v72 = var4;
                  v73 = 1024;
                  v74 = var5;
                  v75 = 1024;
                  v76 = var6;
                  v77 = 1024;
                  v78 = var7;
                  v79 = 1024;
                  v80 = var11;
                  v81 = 1024;
                  v82 = var16;
                  v83 = 1024;
                  v84 = var17;
                  v85 = 1024;
                  v86 = var18;
                  v87 = 1024;
                  v88 = var19;
                  _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d RTCP XR VOIP Metrics report audioReceiver=%p startSeq=%d endSeq=%d lossRate=%d discardRate=%d burstDensity=%f gapDensity=%f burstDuration=%d gapDuration=%d roundTripDelay=%d endSystemDelay=%d gmin=%d rxConfig=%d jbNominal=%d jbMax=%d jbAbsMax=%d", buf, 0x88u);
                }
              }

              v41 = v47;
              reports += v47;
              *countCopy += v47;
              v7 -= v41;
              v12 = 1;
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v45 = VRTraceErrorLogLevelToCSTR();
              v42 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = v44;
                *&buf[4] = v45;
                *v54 = 2080;
                *&v54[2] = "[VCAudioStream generateRTCPXRVoIPMetricsReports:reportCount:]";
                v55 = 1024;
                v56 = 634;
                _os_log_error_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d Failed to generate the RTCP XR VoIP metrics report.", buf, 0x1Cu);
              }
            }
          }
        }

        v11 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v49 objects:v48 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    [VCAudioStream generateRTCPXRVoIPMetricsReports:buf reportCount:?];
    v12 = buf[0];
  }

  return v12 & 1;
}

- (void)startAudioWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  v12 = 0;
  currentAudioPayload = self->currentAudioPayload;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (currentAudioPayload)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioStream startAudioWithCompletionHandler:]";
        *&buf[22] = 1024;
        *&buf[24] = 664;
        *&buf[28] = 1024;
        *&buf[30] = [(VCMediaStream *)self state]== 2;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d alreadyStarted = %d", buf, 0x22u);
      }
    }

    if ([(VCAudioStream *)self audioTransmitter]&& ![(VCAudioTransmitter *)[(VCAudioStream *)self audioTransmitter] setupAudio:&v12])
    {
      VCMediaStream_Unlock(self);
      if (handler)
      {
        (*(handler + 2))(handler, 0, v12);
      }
    }

    else
    {

      self->_allowedAudioPayloads = [(NSArray *)[(VCAudioTransmitter *)[(VCAudioStream *)self audioTransmitter] audioPayloads] mutableCopy];
      if (self->super._operatingMode == 6)
      {
        if (handler)
        {
          (*(handler + 2))(handler, 1, 0);
        }
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v24 = 0u;
        v25 = 0u;
        memset(buf, 0, sizeof(buf));
        AUIOGetAUNumber(&v29);
        [(VCAudioIO *)self->_audioIO setFarEndVersionInfo:buf];
        [(VCAudioIO *)self->_audioIO setRemoteCodecType:[VCPayloadUtils sampleRate:"audioCodecTypeForPayload:" audioCodecTypeForPayload:?], [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] codecSampleRate]];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            audioIO = self->_audioIO;
            *v13 = 136316162;
            v14 = v9;
            v15 = 2080;
            v16 = "[VCAudioStream startAudioWithCompletionHandler:]";
            v17 = 1024;
            v18 = 683;
            v19 = 2048;
            selfCopy = self;
            v21 = 2048;
            v22 = audioIO;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d (%p) starting audioIO=%p", v13, 0x30u);
          }
        }

        [(VCAudioIO *)self->_audioIO startWithCompletionHandler:handler];
      }

      [(VCAudioStream *)self reportingAlgosAudioStreamEvent:0];
      [(VCAudioTransmitter *)[(VCAudioStream *)self audioTransmitter] start];
      VCMediaStream_Unlock(self);
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioStream startAudioWithCompletionHandler:];
      }
    }

    VCMediaStream_Unlock(self);
    if (handler)
    {
      (*(handler + 2))(handler, 1, 0);
    }
  }
}

- (void)stopAudioWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  if (self->super._operatingMode == 6)
  {
    (*(handler + 2))(handler, 1, 0);
  }

  else
  {
    if ([(VCAudioIO *)self->_audioIO state])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          audioIO = self->_audioIO;
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "[VCAudioStream stopAudioWithCompletionHandler:]";
          v12 = 1024;
          v13 = 701;
          v14 = 2048;
          selfCopy = self;
          v16 = 2048;
          v17 = audioIO;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d [%p] stopping audioIO=%p", &v8, 0x30u);
        }
      }

      [(VCAudioIO *)self->_audioIO stopWithCompletionHandler:handler];
    }

    else
    {
      (*(handler + 2))(handler, 1, 0);
    }

    if ((self->super._operatingMode - 1) >= 2)
    {
      [(VCMediaStream *)self deregisterAggregationHandlers];
    }
  }

  VCMediaStream_Unlock(self);
}

- (id)getSupportedPayloads
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->super._transportArray;
  v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v17)
  {
    v16 = *v32;
    do
    {
      v4 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v4;
        streamConfig = [*(*(&v31 + 1) + 8 * v4) streamConfig];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v6 = [objc_msgSend(streamConfig "allCodecConfigurations")];
        v7 = [v6 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v27;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v27 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [*(*(&v26 + 1) + 8 * i) codecType]);
              if (v11 == 117)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v12 = VRTraceErrorLogLevelToCSTR();
                  v13 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v20 = v12;
                    v21 = 2080;
                    v22 = "[VCAudioStream getSupportedPayloads]";
                    v23 = 1024;
                    v24 = 724;
                    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Skip DTMF from supported payloads for AudioStream", buf, 0x1Cu);
                  }
                }
              }

              else
              {
                [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v26 objects:v25 count:16];
          }

          while (v8);
        }

        v4 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v17);
  }

  return v3;
}

- (BOOL)setupPayloads
{
  v44 = *MEMORY[0x1E69E9840];
  getSupportedPayloads = [(VCAudioStream *)self getSupportedPayloads];
  [(NSMutableArray *)self->audioPayloads removeAllObjects];
  self->currentAudioPayload = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [getSupportedPayloads countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(getSupportedPayloads);
        }

        unsignedIntValue = [*(*(&v40 + 1) + 8 * i) unsignedIntValue];
        v9 = [(VCAudioStream *)self addAudioPayload:unsignedIntValue];
        if (unsignedIntValue == self->preferredAudioCodec)
        {
          self->currentAudioPayload = v9;
        }
      }

      v5 = [getSupportedPayloads countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v5);
  }

  currentAudioPayload = self->currentAudioPayload;
  if (!currentAudioPayload)
  {
    if (![(NSMutableArray *)self->audioPayloads count])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v23 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v23)
        {
          return v23;
        }

        [VCAudioStream setupPayloads];
      }

      LOBYTE(v23) = 0;
      return v23;
    }

    currentAudioPayload = [(NSMutableArray *)self->audioPayloads objectAtIndexedSubscript:0];
    self->currentAudioPayload = currentAudioPayload;
  }

  if (!self->_useExternalIO)
  {
    samplesPerFrame = [(VCAudioPayloadConfig *)[(VCAudioPayload *)currentAudioPayload config] samplesPerFrame];
    if (samplesPerFrame / [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] inputSampleRate]>= 0.02)
    {
      samplesPerFrame2 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] samplesPerFrame];
    }

    else
    {
      v12 = [(VCAudioStream *)self getPacketsPerBundleForStreamConfig:[(VCMediaStream *)self defaultStreamConfig]];
      samplesPerFrame2 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] samplesPerFrame]* v12;
    }

    self->_vpioFormat.samplesPerFrame = samplesPerFrame2;
    v37 = 0u;
    v38 = 0u;
    *__str = 0u;
    v36 = 0u;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_32;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v17 = self->currentAudioPayload;
      v18 = FormatToCStr(&self->_vpioFormat, __str, 0x40uLL);
      samplesPerFrame = self->_vpioFormat.samplesPerFrame;
      *v31 = 136316418;
      *&v31[4] = v15;
      *&v31[12] = 2080;
      *&v31[14] = "[VCAudioStream setupPayloads]";
      *&v31[22] = 1024;
      LODWORD(v32) = 769;
      WORD2(v32) = 2112;
      *(&v32 + 6) = v17;
      HIWORD(v32) = 2080;
      selfCopy = v18;
      *v34 = 1024;
      *&v34[2] = samplesPerFrame;
      v20 = "VCAudioStream [%s] %s:%d currentAudioPayload=%@ vpioFormat=%s samplesPerFrame=%u";
      v21 = v16;
      v22 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_32;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v26 = self->currentAudioPayload;
      v27 = FormatToCStr(&self->_vpioFormat, __str, 0x40uLL);
      v28 = self->_vpioFormat.samplesPerFrame;
      *v31 = 136316930;
      *&v31[4] = v24;
      *&v31[12] = 2080;
      *&v31[14] = "[VCAudioStream setupPayloads]";
      *&v31[22] = 1024;
      LODWORD(v32) = 769;
      WORD2(v32) = 2112;
      *(&v32 + 6) = v14;
      HIWORD(v32) = 2048;
      selfCopy = self;
      *v34 = 2112;
      *&v34[2] = v26;
      *&v34[10] = 2080;
      *&v34[12] = v27;
      *&v34[20] = 1024;
      *&v34[22] = v28;
      v20 = "VCAudioStream [%s] %s:%d %@(%p) currentAudioPayload=%@ vpioFormat=%s samplesPerFrame=%u";
      v21 = v25;
      v22 = 74;
    }

    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, v31, v22);
LABEL_32:
    currentAudioPayload = self->currentAudioPayload;
  }

  v29 = [(VCAudioStream *)self preferredAudioBitrateForPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)currentAudioPayload config:*v31] payload]];
  if (v29)
  {
    [(VCAudioPayload *)self->currentAudioPayload setBitrate:v29];
  }

  LOBYTE(v23) = self->currentAudioPayload != 0;
  return v23;
}

- (id)getCodecConfigForPayload:(int)payload streamConfig:(id)config
{
  v7 = [VCPayloadUtils codecTypeForPayload:?];
  allCodecConfigurations = [config allCodecConfigurations];
  v9 = [allCodecConfigurations objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v7)}];
  v10 = v9;
  if (payload != 119 || v9)
  {
    if (payload == 113 && v9)
    {
      [v9 setIsACC24FixedBitrateModeEnabled:{-[VCExperimentManager isEnabledExperiment:forceDisable:](self->super._experimentManager, "isEnabledExperiment:forceDisable:", @"enableACC24FixedBitrateMode", !VCFeatureFlagManager_AudioCodecACC24FixedBitrateMode())}];
    }

    return v10;
  }

  else
  {

    return [(VCAudioStream *)self codecConfigForOpusWithStreamConfig:config];
  }
}

- (void)getCodecConfigForPayload:(int)payload block:(id)block
{
  v5 = *&payload;
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  transportArray = self->super._transportArray;
  v8 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(transportArray);
        }

        streamConfig = [*(*(&v28 + 1) + 8 * i) streamConfig];
        v13 = [(VCAudioStream *)self getCodecConfigForPayload:v5 streamConfig:streamConfig];
        if (v13)
        {
          (*(block + 2))(block, streamConfig, v13);
          return;
        }
      }

      v9 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioStream getCodecConfigForPayload:block:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v17 = 136316162;
        v18 = v15;
        v19 = 2080;
        v20 = "[VCAudioStream getCodecConfigForPayload:block:]";
        v21 = 1024;
        v22 = 818;
        v23 = 2112;
        v24 = v14;
        v25 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %@(%p) Failed to retrieve codec config.", &v17, 0x30u);
      }
    }
  }
}

- (unsigned)preferredAudioBitrateForPayload:(int)payload
{
  v10 = *MEMORY[0x1E69E9840];
  preferredMediaBitrate = self->_preferredMediaBitrate;
  if (!preferredMediaBitrate)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__VCAudioStream_preferredAudioBitrateForPayload___block_invoke;
    v5[3] = &unk_1E85F54A0;
    v5[4] = &v6;
    [(VCAudioStream *)self getCodecConfigForPayload:*&payload block:v5];
    preferredMediaBitrate = *(v7 + 6);
    _Block_object_dispose(&v6, 8);
  }

  return preferredMediaBitrate;
}

uint64_t __49__VCAudioStream_preferredAudioBitrateForPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = +[VCPayloadUtils bitrateForCodecType:mode:](VCPayloadUtils, "bitrateForCodecType:mode:", [a3 codecType], objc_msgSend(a3, "preferredMode"));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (unsigned)audioChannelCountForMode:(id)mode
{
  audioStreamMode = [mode audioStreamMode];
  result = 1;
  if (audioStreamMode > 10)
  {
    if (audioStreamMode != 12)
    {
      if (audioStreamMode != 11)
      {
        return result;
      }

      return 2;
    }
  }

  else if (audioStreamMode != 8)
  {
    if (audioStreamMode != 9)
    {
      return result;
    }

    return 2;
  }

  if (![mode channelCount])
  {
    return 1;
  }

  return [mode channelCount];
}

+ (unsigned)audioIOTypeForMode:(int64_t)mode
{
  if ((mode - 1) < 0xC)
  {
    return dword_1DBD477A8[mode - 1];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCAudioStream audioIOTypeForMode:];
  }

  return 0;
}

+ (id)newPayloadConfigForCodecConfig:(id)config streamConfig:(id)streamConfig inputSampleRate:(unsigned int)rate
{
  v5 = *&rate;
  v49 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [config codecType]);
  v10 = v9;
  if (v9 == 108)
  {
    forceEVSWideBand = [streamConfig forceEVSWideBand];
    v12 = kVCAudioPayloadConfigKeyPayloadType;
    v13 = v10;
    if (forceEVSWideBand)
    {
      [v8 setObject:&unk_1F5798B38 forKeyedSubscript:@"vcAudioPayloadConfigKeyPayloadType"];
      v12 = kVCAudioPayloadConfigKeyPayloadTypeOverride;
      v13 = 108;
    }
  }

  else
  {
    v12 = kVCAudioPayloadConfigKeyPayloadType;
    v13 = v9;
  }

  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v13), *v12}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(config, "codecType")), @"vcAudioPayloadConfigKeyCodecType"}];
  if ([config codecType] == 12)
  {
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", 320), @"vcAudioPayloadConfigKeyBlockSize"}];
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", 16000), @"vcPayloadConfigKeySampleRate"}];
  }

  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v5), @"vcAudioPayloadConfigKeyInputSampleRate"}];
  v14 = v10 - 97;
  if ((v10 - 97) <= 0x16 && ((1 << v14) & 0x404C03) != 0)
  {
    pTime = [config pTime];
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", pTime / 0x14), @"vcPayloadConfigKeyInternalBundleFactor"}];
  }

  if ([config codecType] == 19)
  {
    pTime2 = [config pTime];
    v17 = (pTime2 / 1000.0 * 48000.0);
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", VCDefaults_GetBoolValueForKey(@"useRestrictedLowDelayModeForOpus", pTime2 == 5)), @"vcAudioPayloadConfigKeyOpusRestrictedLowDelayEnabled"}];
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v17), @"vcAudioPayloadConfigKeyBlockSize"}];
    [v8 setObject:&unk_1F5798B50 forKeyedSubscript:@"vcPayloadConfigKeySampleRate"];
    [v8 setObject:&unk_1F5798B68 forKeyedSubscript:@"vcPayloadConfigKeyInternalBundleFactor"];
  }

  if ((v10 - 107) <= 4 && ((1 << (v10 - 107)) & 0x13) != 0)
  {
    if (+[VCAudioStream isTelephony:](VCAudioStream, "isTelephony:", [streamConfig audioStreamMode]))
    {
      v18 = 0;
    }

    else
    {
      v18 = 8;
    }

    IntValueForKey = VCDefaults_GetIntValueForKey(@"EVSSIDDuration", v18);
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(config, "evsChannelAwareOffset")), @"vcPayloadConfigKeyEVSChannelAwareOffset"}];
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(config, "evsHeaderFullOnly")), @"vcPayloadConfigKeyEVSHeaderFullOnly"}];
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", IntValueForKey), @"vcPayloadConfigKeyEVSSIDPeriod"}];
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(config, "evsCMRMode")), @"vcPayloadConfigKeyEVSCMRMode"}];
  }

  if (VCPayloadUtils_supportsInternalDTXForPayload(v10))
  {
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(config, "isDTXEnabled")), @"vcPayloadConfigKeyDTXEnabled"}];
  }

  if (v14 <= 1)
  {
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(config, "isOctetAligned")), @"vcPayloadConfigKeyOctetAligned"}];
  }

  if ((v10 - 101) <= 5 && ((1 << (v10 - 101)) & 0x39) != 0)
  {
    v20 = +[VCAudioStream shouldUseAACELDSBRForMode:](VCAudioStream, "shouldUseAACELDSBRForMode:", [streamConfig audioStreamMode]);
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v20), @"vcPayloadConfigKeyUseSBR"}];
  }

  if ([config supportedModes] && +[VCPayloadUtils supportsCodecRateModesForCodecType:](VCPayloadUtils, "supportsCodecRateModesForCodecType:", objc_msgSend(config, "codecType")))
  {
    v38 = v10;
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objc_msgSend(config, "supportedModes"), "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    supportedModes = [config supportedModes];
    v23 = [supportedModes countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(supportedModes);
          }

          v27 = +[VCPayloadUtils bitrateForCodecType:mode:](VCPayloadUtils, "bitrateForCodecType:mode:", [config codecType], objc_msgSend(*(*(&v45 + 1) + 8 * i), "unsignedIntValue"));
          [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithUnsignedInt:", v27), objc_msgSend(v21, "count")}];
        }

        v24 = [supportedModes countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v24);
    }

    [v8 setObject:v21 forKeyedSubscript:@"vcPayloadConfigKeyCodecBitrates"];
    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", +[VCPayloadUtils bitrateForCodecType:mode:](VCPayloadUtils, "bitrateForCodecType:mode:", objc_msgSend(config, "codecType"), objc_msgSend(config, "preferredMode"))), @"vcPayloadConfigKeyPreferredBitrate"}];

    LODWORD(v10) = v38;
  }

  if ([objc_msgSend(config "supportedBandwidths")] && +[VCPayloadUtils supportsCodecBandwidthUpdateForCodecType:](VCPayloadUtils, "supportsCodecBandwidthUpdateForCodecType:", objc_msgSend(config, "codecType")))
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objc_msgSend(config, "supportedBandwidths"), "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    supportedBandwidths = [config supportedBandwidths];
    v30 = [supportedBandwidths countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v41;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(supportedBandwidths);
          }

          [v28 setObject:*(*(&v40 + 1) + 8 * j) atIndexedSubscript:{objc_msgSend(v28, "count")}];
        }

        v31 = [supportedBandwidths countByEnumeratingWithState:&v40 objects:v39 count:16];
      }

      while (v31);
    }

    [v8 setObject:v28 forKeyedSubscript:@"vcAudioPayloadConfigKeySupportedBandwidths"];
  }

  if (v10 == 113)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isACC24FixedBitrateModeEnabled")}];
    v35 = kVCAudioPayloadConfigKeyACC24FixedBitrateModeEnabled;
    goto LABEL_49;
  }

  if (v10 == 119)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(config, "isOpusInBandFecEnabled")}];
    v35 = kVCAudioPayloadConfigKeyOPUSInBandFecEnabled;
LABEL_49:
    [v8 setObject:v34 forKeyedSubscript:*v35];
  }

  v36 = [[VCAudioPayloadConfig alloc] initWithConfigDict:v8];

  return v36;
}

- (id)configForPayloadType:(int)type
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__VCAudioStream_configForPayloadType___block_invoke;
  v5[3] = &unk_1E85F54C8;
  v5[4] = self;
  v5[5] = &v6;
  [(VCAudioStream *)self getCodecConfigForPayload:*&type block:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __38__VCAudioStream_configForPayloadType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [VCAudioStream newPayloadConfigForCodecConfig:a3 streamConfig:a2 inputSampleRate:*(*(a1 + 32) + 1144)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)addAudioPayload:(int)payload
{
  v4 = [[VCAudioPayload alloc] initWithConfig:[(VCAudioStream *)self configForPayloadType:*&payload]];
  if (v4)
  {
    [(NSMutableArray *)self->audioPayloads addObject:v4];
  }

  return v4;
}

- (void)setDTXPayload:(id)payload
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [objc_msgSend(payload "codecConfigurations")];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 isComfortNoise])
        {
          v10 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [v9 codecType]);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          audioPayloads = self->audioPayloads;
          v12 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v18 objects:v17 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v19;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v19 != v14)
                {
                  objc_enumerationMutation(audioPayloads);
                }

                v16 = *(*(&v18 + 1) + 8 * j);
                if ([(VCAudioPayloadConfig *)[(VCAudioPayload *)v16 config] payload]== v10)
                {
                  self->currentDTXPayload = v16;
                  goto LABEL_20;
                }
              }

              v13 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v18 objects:v17 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
          if (!self->currentDTXPayload)
          {
            self->currentDTXPayload = -[VCAudioStream addAudioPayload:](self, "addAudioPayload:", +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [v9 codecType]));
          }

          return;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }
}

- (BOOL)setReceiverPayloads
{
  v71 = *MEMORY[0x1E69E9840];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  transportArray = self->super._transportArray;
  v4 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v67 objects:v66 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  selfCopy = self;
  v6 = 0;
  v7 = *v68;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v68 != v7)
      {
        objc_enumerationMutation(transportArray);
      }

      v6 += [objc_msgSend(objc_msgSend(*(*(&v67 + 1) + 8 * i) "streamConfig")];
    }

    v5 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v67 objects:v66 count:16];
  }

  while (v5);
  if (!v6)
  {
    return 0;
  }

  v9 = malloc_type_calloc(v6, 0x28uLL, 0x100004087E24A4FuLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = selfCopy->super._transportArray;
  v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v62 objects:v61 count:16];
  v33 = v10;
  if (v36)
  {
    v46 = 0;
    v39 = v10 + 1;
    v35 = *v63;
    do
    {
      v11 = 0;
      do
      {
        if (*v63 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v11;
        streamConfig = [*(*(&v62 + 1) + 8 * v11) streamConfig];
        BoolValueForKey = VCDefaults_GetBoolValueForKey(@"dtmfTonePlaybackEnabled", [streamConfig dtmfTonePlaybackEnabled]);
        v14 = VCDefaults_GetBoolValueForKey(@"dtmfEventCallbacksEnabled", [streamConfig dtmfEventCallbacksEnabled]);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v45 = streamConfig;
        v44 = [objc_msgSend(streamConfig "codecConfigurations")];
        v15 = [v44 countByEnumeratingWithState:&v57 objects:v56 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v58;
          v41 = v14;
          v42 = BoolValueForKey;
          v40 = *v58;
          do
          {
            v18 = 0;
            v43 = v16;
            do
            {
              if (*v58 != v17)
              {
                objc_enumerationMutation(v44);
              }

              v19 = *(*(&v57 + 1) + 8 * v18);
              if (BoolValueForKey | (([v19 isDTMF] & 1) == 0) | v14)
              {
                v20 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [v19 codecType]);
                networkPayload = v20;
                if ([v19 networkPayload] != 0xFFFF)
                {
                  networkPayload = [v19 networkPayload];
                }

                if (v20 == 117)
                {
                  v22 = 0;
                }

                else
                {
                  v22 = [VCAudioStream newPayloadConfigForCodecConfig:v19 streamConfig:v45 inputSampleRate:selfCopy->_vpioFormat.format.mSampleRate];
                }

                if (v46 >= 1)
                {
                  v23 = v46;
                  v24 = v39;
                  do
                  {
                    if (*(v24 - 1) == v20)
                    {
                      if (*v24 == networkPayload)
                      {
                        goto LABEL_35;
                      }

                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v25 = VRTraceErrorLogLevelToCSTR();
                        v26 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          v27 = *v24;
                          *buf = 136316418;
                          v48 = v25;
                          v49 = 2080;
                          v50 = "[VCAudioStream setReceiverPayloads]";
                          v51 = 1024;
                          v52 = 1077;
                          v53 = 1024;
                          *v54 = v27;
                          *&v54[4] = 1024;
                          *&v54[6] = networkPayload;
                          LOWORD(v55) = 1024;
                          *(&v55 + 2) = v20;
                          _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Multiple network payloads=%d, %d for internal payload=%d. Creating decoders for both", buf, 0x2Eu);
                        }
                      }
                    }

                    v24 += 10;
                    --v23;
                  }

                  while (v23);
                }

                *v10 = v20;
                v10[1] = networkPayload;
                *(v10 + 16) = [v19 isOctetAligned];
                *(v10 + 36) = [v19 evsHeaderFullOnly];
                *(v10 + 25) = [v19 isOpusInBandFecEnabled];
                v10[7] = [v22 codecSampleRate];
                v10[8] = [v22 blockSize];
                v10[5] = [v45 bundlingScheme];
                v10[3] = [v22 flags];
                v10[2] = [v22 samplesPerFrame];
                *(v10 + 24) = [v45 forceEVSWideBand];
                *(v10 + 17) = selfCopy->_sourceContext.audioReceiver->var0.var21;
                ++v46;
                v10 += 10;
LABEL_35:
                v14 = v41;
                BoolValueForKey = v42;
                v17 = v40;
                v16 = v43;
              }

              ++v18;
            }

            while (v18 != v16);
            v16 = [v44 countByEnumeratingWithState:&v57 objects:v56 count:16];
          }

          while (v16);
        }

        v11 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v62 objects:v61 count:16];
    }

    while (v36);
  }

  else
  {
    v46 = 0;
  }

  v28 = VCAudioReceiver_SetupDecoders(selfCopy->_sourceContext.audioReceiver, v33, v46, &selfCopy->_vpioFormat, 0);
  if ((v28 & 1) == 0)
  {
    if (objc_opt_class() == selfCopy)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioStream setReceiverPayloads];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCAudioStream *)selfCopy performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v48 = v30;
          v49 = 2080;
          v50 = "[VCAudioStream setReceiverPayloads]";
          v51 = 1024;
          v52 = 1103;
          v53 = 2112;
          *v54 = v29;
          *&v54[8] = 2048;
          v55 = selfCopy;
          _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %@(%p) Failed to setup receiver decoders.", buf, 0x30u);
        }
      }
    }
  }

  free(v33);
  return v28;
}

- (double)lastReceivedRTCPPacketTime
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transportArray = self->super._transportArray;
  v3 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v3)
  {
    return NAN;
  }

  v4 = v3;
  v5 = *v14;
  v6 = NAN;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(transportArray);
      }

      v8 = *(*(&v13 + 1) + 8 * i);
      [v8 lastReceivedRTCPPacketTime];
      [v8 lastReceivedRTCPPacketTime];
      if (v9 > v6)
      {
        [v8 lastReceivedRTCPPacketTime];
        v6 = v10;
      }
    }

    v4 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  }

  while (v4);
  return v6;
}

- (void)updateSyncSourceState:(int)state
{
  os_unfair_lock_lock(&self->_delegateLock);
  syncSourceDelegates = self->_syncSourceDelegates;
  if (syncSourceDelegates)
  {
    Count = CFArrayGetCount(syncSourceDelegates);
    v7 = (Count - 1);
    if (Count - 1 >= 0)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_syncSourceDelegates, v7);
        VCMediaStreamSyncSourceDelegate_updateSourceState(ValueAtIndex, state);
        --v7;
      }

      while (v7 != -1);
    }
  }

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (void)willExitState:(int)state newState:(int)newState
{
  if (state == 2)
  {
    [(VCAudioStream *)self updateSyncSourceState:1, *&newState];
  }
}

- (void)didEnterState:(int)state oldState:(int)oldState
{
  if (state == 2 && self->super._operatingMode != 5)
  {
    [(VCAudioStream *)self updateSyncSourceState:0, *&oldState];
  }
}

+ (int)operatingModeForAudioStreamMode:(int64_t)mode
{
  if (mode < 0xD)
  {
    return dword_1DBD477D8[mode];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    +[VCAudioStream operatingModeForAudioStreamMode:];
  }

  return 0;
}

+ (unsigned)audioIODirectionWithMediaStreamDirection:(int64_t)direction
{
  v3 = 0x3010200u >> (8 * direction);
  if (direction >= 4)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 3;
}

- (void)setDeviceRoleForAudioStreamMode:(int64_t)mode direction:(int64_t)direction
{
  if (mode <= 0xC)
  {
    if (((1 << mode) & 0xAB2) != 0)
    {
      goto LABEL_10;
    }

    if (((1 << mode) & 0x44C) != 0)
    {
      v4 = 3;
      goto LABEL_11;
    }

    if (((1 << mode) & 0x1100) != 0)
    {
      if ((direction - 2) < 2)
      {
        if (mode == 8)
        {
          v4 = 7;
        }

        else
        {
          v4 = 0;
        }

LABEL_11:

        [(VCAudioStream *)self setDeviceRole:v4, direction];
        return;
      }

      if (direction)
      {
        if (direction != 1)
        {
          return;
        }

        v4 = 8;
        goto LABEL_11;
      }

LABEL_10:
      v4 = 0;
      goto LABEL_11;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioStream setDeviceRoleForAudioStreamMode:direction:];
    }
  }
}

- (void)setupAudioPowerSpectrum
{
  self->_audioPowerSpectrumSourceUplink = [[VCAudioPowerSpectrumSource alloc] initWithStreamToken:self->super._streamTokenUplink delegate:0];
  [+[VCAudioPowerSpectrumManager sharedInstance](VCAudioPowerSpectrumManager registerAudioPowerMeterSource:"registerAudioPowerMeterSource:", self->_audioPowerSpectrumSourceUplink];
  self->_audioPowerSpectrumSourceDownlink = [[VCAudioPowerSpectrumSource alloc] initWithStreamToken:self->super._streamTokenDownlink delegate:0];
  v3 = +[VCAudioPowerSpectrumManager sharedInstance];
  audioPowerSpectrumSourceDownlink = self->_audioPowerSpectrumSourceDownlink;

  [(VCAudioPowerSpectrumManager *)v3 registerAudioPowerMeterSource:audioPowerSpectrumSourceDownlink];
}

- (BOOL)shouldSetUpMediaRecorderWithParticipantInfoDictionary:(id)dictionary
{
  if (self->super._operatingMode == 11)
  {
    return 0;
  }

  v6 = [dictionary objectForKeyedSubscript:{@"vcMediaStreamSetUpRecording", v3}];

  return [v6 BOOLValue];
}

- (void)setUpMediaRecorder
{
  if (objc_opt_class() == self)
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
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }
}

- (void)cleanUpMediaRecorder
{
  mediaRecorder = self->_mediaRecorder;
  if (mediaRecorder)
  {
    [(VCMediaRecorder *)mediaRecorder invalidate];

    self->_mediaRecorder = 0;
  }
}

- (void)cleanUpAudioMachineLearningCoordinators
{
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorUplink invalidate];

  self->_audioMachineLearningCoordinatorUplink = 0;
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorDownlink invalidate];

  self->_audioMachineLearningCoordinatorDownlink = 0;
  self->_isCaptionsFormatValid = 0;
}

- (VCAudioStream)initWithClientPid:(int)pid
{
  v3 = *&pid;
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCAudioStream;
  v4 = [(VCMediaStream *)&v7 initWithTransportSessionID:0];
  v5 = v4;
  if (v4 && ![(VCAudioStream *)v4 setupAudioStreamWithClientPid:v3 enableAudioPowerSpectrum:1])
  {

    return 0;
  }

  return v5;
}

- (VCAudioStream)initWithClientPid:(int)pid ssrc:(unsigned int)ssrc transportSessionID:(unsigned int)d streamToken:(int64_t)token experimentManager:(id)manager logPrefix:(id)prefix
{
  v9 = *&pid;
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCAudioStream;
  v10 = [(VCMediaStream *)&v13 initWithTransportSessionID:*&d localSSRC:*&ssrc streamToken:token logPrefix:prefix];
  v11 = v10;
  if (v10)
  {
    [(VCMediaStream *)v10 setExperimentManager:manager];
    if (![(VCAudioStream *)v11 setupAudioStreamWithClientPid:v9 enableAudioPowerSpectrum:0])
    {

      return 0;
    }
  }

  return v11;
}

- (BOOL)setupAudioStreamWithClientPid:(int)pid enableAudioPowerSpectrum:(BOOL)spectrum
{
  spectrumCopy = spectrum;
  v36 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  VRTracePrintLoggingInfo();
  self->_isACC24ForU1Enabled = [(VCExperimentManager *)self->super._experimentManager isEnabledExperiment:@"enableACC24ForU1" forceDisable:!VCFeatureFlagManager_UseAudioCodecACC24ForU1()];
  self->_isACC24ForGFTEnabled = [(VCExperimentManager *)self->super._experimentManager isEnabledExperiment:@"enableACC24ForGFT" forceDisable:!VCFeatureFlagManager_UseAudioCodecACC24ForGFT()];
  if ((AVConferenceServer_ProcessIsAvconferenced() & 1) == 0)
  {
    SoundDec_PrepareAudioConverter();
  }

  self->_clientPid = pid;
  self->_currentDTXEnable = 1;
  self->_audioSessionId = VCUniqueIDGenerator_GenerateID();
  pthread_rwlock_init(&self->stateLock, 0);
  +[GKSConnectivitySettings getRemoteMediaStallTimeout];
  self->_remoteMediaStallTimeout = v7;
  self->_sourceContext.volume = -1.0;
  self->_sourceContext.self = self;
  self->_sourceContext.remoteMediaStallTimeout = v7;
  VCSingleLinkedListInitialize(&self->_sourceContext.transports, _VCAudioStreamSourceContextTransportCompare);
  self->audioPayloads = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  self->_allowedAudioPayloads = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v8 = *MEMORY[0x1E695E480];
  self->_syncSourceDelegates = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CMSimpleQueueCreate(v8, 100, &self->_syncSourceDelegateQueue);
  self->_delegateLock._os_unfair_lock_opaque = 0;
  self->_runLock = dispatch_semaphore_create(1);
  VCSingleLinkedListInitialize(&self->_sourceContext.syncDelegateList, _VCAudioStreamSyncDelegateCompare);
  if (self->audioPayloads)
  {
    self->preferredAudioCodec = 98;
    v9 = objc_alloc_init(DTMFEventHandler);
    self->dtmfEventHandler = v9;
    if (v9)
    {
      [(VCObject *)self setReportingAgent:0];
      self->_enableAudioPowerSpectrum = spectrumCopy;
      if (spectrumCopy)
      {
        [(VCAudioStream *)self setupAudioPowerSpectrum];
      }

      [VCPowerManager_DefaultManager() registerForThermalEvents:self];
      self->super._notificationHandler = _VCAudioStream_NWConnectionNotificationHandler;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_27;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v26 = 136315650;
        v27 = v13;
        v28 = 2080;
        v29 = "[VCAudioStream setupAudioStreamWithClientPid:enableAudioPowerSpectrum:]";
        v30 = 1024;
        v31 = 1507;
        v15 = "VCAudioStream [%s] %s:%d ";
        v16 = v14;
        v17 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [(VCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v10 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_27;
        }

        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v26 = 136316162;
        v27 = v19;
        v28 = 2080;
        v29 = "[VCAudioStream setupAudioStreamWithClientPid:enableAudioPowerSpectrum:]";
        v30 = 1024;
        v31 = 1507;
        v32 = 2112;
        v33 = v10;
        v34 = 2048;
        selfCopy3 = self;
        v15 = "VCAudioStream [%s] %s:%d %@(%p) ";
        v16 = v20;
        v17 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v26, v17);
LABEL_27:
      LOBYTE(v18) = 1;
      return v18;
    }

    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_40;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v18)
      {
        return v18;
      }

      v26 = 136316162;
      v27 = v24;
      v28 = 2080;
      v29 = "[VCAudioStream setupAudioStreamWithClientPid:enableAudioPowerSpectrum:]";
      v30 = 1024;
      v31 = 1492;
      v32 = 2112;
      v33 = v12;
      v34 = 2048;
      selfCopy3 = self;
      v23 = "VCAudioStream [%s] %s:%d %@(%p) Failed to allocate the DTMF event handler";
      goto LABEL_39;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v18)
      {
        return v18;
      }

      [VCAudioStream setupAudioStreamWithClientPid:enableAudioPowerSpectrum:];
    }

    goto LABEL_40;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_40;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v18)
    {
      return v18;
    }

    v26 = 136316162;
    v27 = v21;
    v28 = 2080;
    v29 = "[VCAudioStream setupAudioStreamWithClientPid:enableAudioPowerSpectrum:]";
    v30 = 1024;
    v31 = 1485;
    v32 = 2112;
    v33 = v11;
    v34 = 2048;
    selfCopy3 = self;
    v23 = "VCAudioStream [%s] %s:%d %@(%p) Failed to allocate audio payloads";
LABEL_39:
    _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, v23, &v26, 0x30u);
    goto LABEL_40;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
LABEL_40:
    LOBYTE(v18) = 0;
    return v18;
  }

  VRTraceErrorLogLevelToCSTR();
  v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v18)
  {
    [VCAudioStream setupAudioStreamWithClientPid:enableAudioPowerSpectrum:];
    goto LABEL_40;
  }

  return v18;
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v4;
        v24 = 2080;
        v25 = "[VCAudioStream dealloc]";
        v26 = 1024;
        v27 = 1513;
        v6 = "VCAudioStream [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v9;
        v24 = 2080;
        v25 = "[VCAudioStream dealloc]";
        v26 = 1024;
        v27 = 1513;
        v28 = 2112;
        v29 = v3;
        v30 = 2048;
        selfCopy = self;
        v6 = "VCAudioStream [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCAudioStream *)self reportingAlgosAudioStreamEvent:4];
  while (1)
  {
    v11 = VCSingleLinkedListPop(&self->_sourceContext.transports);
    if (!v11)
    {
      break;
    }

    free(v11);
  }

  _VCAudioStream_ProcessDelegateEventQueue(self);
  while (1)
  {
    *buf = VCSingleLinkedListPop(&self->_sourceContext.syncDelegateList);
    if (!*buf)
    {
      break;
    }

    _VCAudioStream_ReleaseSyncDelegateEvent(buf, 0);
  }

  pthread_rwlock_destroy(&self->stateLock);
  pausedAudioHeartBeat = self->pausedAudioHeartBeat;
  if (pausedAudioHeartBeat)
  {
    dispatch_release(pausedAudioHeartBeat);
  }

  audioReceiver = self->_sourceContext.audioReceiver;
  if (audioReceiver)
  {
    VCAudioReceiver_Finalize(&audioReceiver->var0.var0);
    self->_sourceContext.audioReceiver = 0;
  }

  syncSourceDelegates = self->_syncSourceDelegates;
  if (syncSourceDelegates)
  {
    CFRelease(syncSourceDelegates);
  }

  syncSourceDelegateQueue = self->_syncSourceDelegateQueue;
  if (syncSourceDelegateQueue)
  {
    CFRelease(syncSourceDelegateQueue);
  }

  runLock = self->_runLock;
  if (runLock)
  {
    dispatch_release(runLock);
  }

  reportingSSRCList = self->_reportingSSRCList;
  if (reportingSSRCList)
  {
    free(reportingSSRCList);
    self->_reportingSSRCList = 0;
  }

  [(VCAudioStream *)self setFrequencyMeteringEnabled:0 meterType:0];
  [(VCAudioStream *)self setFrequencyMeteringEnabled:0 meterType:1];
  [(VCObject *)self reportingAgent];
  reportingCacheModuleSpecificInfo();

  operatingMode = self->super._operatingMode;
  if (operatingMode > 6 || ((1 << operatingMode) & 0x46) == 0)
  {
    [(VCMediaStream *)self deregisterAggregationHandlers];
  }

  [VCPowerManager_DefaultManager() unregisterForThermalEvents:self];
  if (self->_enableAudioPowerSpectrum)
  {
    v19 = +[VCAudioPowerSpectrumManager sharedInstance];
    -[VCAudioPowerSpectrumManager unregisterAudioPowerSpectrumSourceForStreamToken:](v19, "unregisterAudioPowerSpectrumSourceForStreamToken:", [MEMORY[0x1E696AD98] numberWithInteger:self->super._streamTokenUplink]);
    v20 = +[VCAudioPowerSpectrumManager sharedInstance];
    -[VCAudioPowerSpectrumManager unregisterAudioPowerSpectrumSourceForStreamToken:](v20, "unregisterAudioPowerSpectrumSourceForStreamToken:", [MEMORY[0x1E696AD98] numberWithInteger:self->super._streamTokenDownlink]);
    [(VCAudioPowerSpectrumSource *)self->_audioPowerSpectrumSourceUplink invalidate];

    [(VCAudioPowerSpectrumSource *)self->_audioPowerSpectrumSourceDownlink invalidate];
  }

  statsCollector = self->_statsCollector;
  if (statsCollector)
  {
    CFRelease(statsCollector);
    self->_statsCollector = 0;
  }

  [(VCAudioStream *)self cleanUpAudioMachineLearningCoordinators];
  [(VCAudioStream *)self cleanUpMediaRecorder];
  v22.receiver = self;
  v22.super_class = VCAudioStream;
  [(VCMediaStream *)&v22 dealloc];
}

- (int)getPacketsPerBundleForStreamConfig:(id)config
{
  v5 = [VCPayloadUtils codecTypeForPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]];
  allCodecConfigurations = [config allCodecConfigurations];
  v7 = [objc_msgSend(allCodecConfigurations objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v5)), "pTime"}];
  if ([(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]== 106)
  {
    if (v7 == 60)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ([(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]== 104)
  {
    if (v7 == 60)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    if (v7 == 40)
    {
      return 2;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    payload = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload];
    if (v7 == 40)
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    if (v7 == 20)
    {
      v11 = 2;
    }

    if (payload == 101)
    {
      return v11;
    }

    else
    {
      return 1;
    }
  }
}

- (void)configureAudioJBAlgos:(tagVCAudioReceiverConfig *)algos
{
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  v6 = defaultStreamConfig;
  isTelephony = self->_isTelephony;
  v8 = 2;
  if (isTelephony)
  {
    v9 = 1;
  }

  else
  {
    channelCount = [(VCMediaStreamConfig *)defaultStreamConfig channelCount];
    v9 = channelCount < 2;
    if (channelCount >= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  algos->var6 = VCDefaults_GetIntValueForKey(@"audioTimescaleAlgorithm", v8);
  algos->var20 = VCDefaults_GetIntValueForKey(@"audioJitterBufferQueueManagementAlgo", v9);
  algos->var18 = VCDefaults_GetBoolValueForKey(@"audioJitterBufferDisableSpikeManagement", isTelephony);
  audioStreamMode = [(VCMediaStreamConfig *)v6 audioStreamMode];
  if (audioStreamMode == 12)
  {
    v12 = 1;
  }

  else
  {
    v12 = algos->var11 && [(VCMediaStreamConfig *)v6 channelCount]< 2;
  }

  algos->var7 = v12;
  algos->var46 = audioStreamMode == 12;
  algos->var47 = [(VCAudioStream *)self shouldEnableFixedJitterBufferInitialOvershootResiliency];
  if (+[GKSConnectivitySettings supportsEVSCodec])
  {
    v13 = [VCAudioStream isVoLTE:[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] audioStreamMode]];
  }

  else
  {
    v13 = 0;
  }

  algos->var21 = VCDefaults_GetBoolValueForKey(@"enableEVSWidebandDecodeForAMRWideband", v13);
}

- (BOOL)shouldEnableAACELDInactiveFrames:(BOOL)frames streamConfig:(id)config
{
  v26 = *MEMORY[0x1E69E9840];
  if (frames)
  {
    operatingMode = self->super._operatingMode;
    v9 = (!config || ![objc_msgSend(config "multiwayConfig")] || (v7 = objc_msgSend(config, "direction") & 0xFFFFFFFFFFFFFFFELL, operatingMode = objc_msgSend(config, "oneToOneOperatingMode"), v7 == 2)) && (operatingMode == 6 || (operatingMode - 1) < 2);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = "Disabling";
        v14 = 136316418;
        v15 = v10;
        v16 = 2080;
        v17 = "[VCAudioStream shouldEnableAACELDInactiveFrames:streamConfig:]";
        if (v9)
        {
          v12 = "Enabling";
        }

        v18 = 1024;
        v19 = 1673;
        v20 = 2048;
        selfCopy = self;
        v22 = 2080;
        v23 = v12;
        v24 = 1024;
        v25 = operatingMode;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d [%p] %s AAC-ELD Inactive Frames. operatingMode=%d", &v14, 0x36u);
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)createAudioReceiver
{
  v87 = *MEMORY[0x1E69E9840];
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  defaultRemoteSSRC = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] defaultRemoteSSRC];
  v4 = 0uLL;
  if (!defaultRemoteSSRC)
  {
    if (self->super._callID)
    {
      *buf = 0;
      v5 = [objc_msgSend(MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\d{1 options:10}$" error:{0, buf, 0.0), "numberOfMatchesInString:options:range:", self->super._callID, 0, 0, -[NSString length](self->super._callID, "length")}];
      callID = self->super._callID;
      if (v5 == 1)
      {
        defaultRemoteSSRC = [(NSString *)callID integerValue];
      }

      else
      {
        defaultRemoteSSRC = [(NSString *)callID hash];
      }

      v4 = 0uLL;
    }

    else
    {
      defaultRemoteSSRC = 0;
    }
  }

  v54 = defaultRemoteSSRC;
  v70 = v4;
  v71 = v4;
  v68 = v4;
  v69 = v4;
  obj = self->super._transportArray;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v68 objects:v67 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v69;
    *&v8 = 136315650;
    v53 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v69 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v68 + 1) + 8 * v11);
        streamConfig = [objc_msgSend(v12 streamConfig];
        self->_sourceContext.isMultiwayConfig |= streamConfig != 0;
        hasIdsStreamID = [streamConfig hasIdsStreamID];
        *(&v72[1] + 56 * LODWORD(v72[0]) + 2) = hasIdsStreamID;
        if ([streamConfig hasIdsStreamID])
        {
          idsStreamId = [v12 idsStreamId];
          *(&v72[1] + 28 * LODWORD(v72[0])) = idsStreamId;
        }

        isOneToOne = [streamConfig isOneToOne];
        v17 = v72 + 56 * LODWORD(v72[0]) + 8;
        v17[11] = isOneToOne;
        *(v17 + 6) = 1;
        v18 = [objc_msgSend(objc_msgSend(v12 "streamConfig")];
        *(&v72[3] + 7 * LODWORD(v72[0])) = v18;
        v19 = [objc_msgSend(objc_msgSend(v12 "streamConfig")];
        *(&v72[3] + 7 * LODWORD(v72[0]) + 1) = v19;
        if ([streamConfig isOneToOne])
        {
          *(&v72[2] + 14 * LODWORD(v72[0])) = 0;
          shouldIgnoreRTPHeaderExtensions = [streamConfig shouldIgnoreRTPHeaderExtensions];
          *(&v72[2] + 56 * LODWORD(v72[0]) + 4) = shouldIgnoreRTPHeaderExtensions;
          self->_sourceContext.oneToOneStreamID = [v12 idsStreamId];
          self->_sourceContext.oneToOneStatisticsCollector = [(VCMediaStreamRateControlConfig *)[(VCMediaStreamConfig *)[(VCMediaStream *)self oneToOneStreamConfig] rateControlConfig] statisticsCollector];
          statisticsCollector = [(VCMediaStreamRateControlConfig *)[(VCMediaStreamConfig *)[(VCMediaStream *)self oneToOneStreamConfig] rateControlConfig] statisticsCollector];
          *(&v72[3] + 7 * LODWORD(v72[0]) + 1) = statisticsCollector;
          if (!self->super._isWRMinitialized)
          {
            if ([(VCMediaStream *)self networkFeedbackController])
            {
              -[VCMediaStream initializeWRMUsingRtpHandle:](self, "initializeWRMUsingRtpHandle:", [v12 rtpHandle]);
              self->super._isWRMinitialized = 1;
            }

            else if (!self->super._isWRMinitialized && ![(VCMediaStream *)self networkFeedbackController]&& VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v25 = VRTraceErrorLogLevelToCSTR();
              v26 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = v53;
                *&buf[4] = v25;
                v57 = 2080;
                v58 = "[VCAudioStream createAudioReceiver]";
                v59 = 1024;
                v60 = 1711;
                _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d NetworkFeedbackController is nil in AudioStream", buf, 0x1Cu);
              }
            }
          }
        }

        else
        {
          *(&v81 + 1) = [objc_msgSend(objc_msgSend(v12 "streamConfig")];
        }

        rtpHandle = [v12 rtpHandle];
        *(v72 + 7 * LODWORD(v72[0]) + 1) = rtpHandle;
        receiverSframeCryptor = [v12 receiverSframeCryptor];
        v24 = LODWORD(v72[0])++;
        *(&v72[1] + 7 * v24 + 1) = receiverSframeCryptor;
        ++v11;
      }

      while (v9 != v11);
      v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v68 objects:v67 count:16];
      v9 = v27;
    }

    while (v27);
  }

  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"useErasureSensitiveMode", 0);
  jitterBufferMode = 0;
  if (!BoolValueForKey)
  {
    jitterBufferMode = [(VCMediaStreamConfig *)defaultStreamConfig jitterBufferMode];
  }

  DWORD1(v74) = jitterBufferMode;
  if ([VCAudioStream isVoWiFi:[(VCMediaStreamConfig *)defaultStreamConfig audioStreamMode]])
  {
    if (self->_shouldEnableJBLatencySenstiveModeForVoWiFi)
    {
      DWORD1(v74) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v31;
          v57 = 2080;
          v58 = "[VCAudioStream createAudioReceiver]";
          v59 = 1024;
          v60 = 1724;
          _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Using the jitter buffer latency sensitive mode for VoWiFi", buf, 0x1Cu);
        }
      }
    }
  }

  DWORD2(v74) = [(VCMediaStreamConfig *)defaultStreamConfig fixedJitterBufferSize];
  v33 = ([(VCMediaStreamConfig *)defaultStreamConfig isLowLatency]& 1) != 0 || [(VCMediaStreamConfig *)defaultStreamConfig audioStreamMode]== 9;
  BYTE8(v83) = v33;
  LODWORD(v74) = v54;
  *(&v73 + 1) = [(VCMediaStream *)self mediaControlInfoGenerator];
  BYTE4(v75) = self->super._operatingMode == 6;
  *(&v75 + 1) = [(VCObject *)self reportingAgent];
  BYTE4(v76) = self->super._operatingMode == 6;
  LODWORD(v76) = self->_reportingModuleID;
  BYTE11(v77) = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] enableMaxBitrateOnNoChangeCMR];
  BYTE10(v77) = 0;
  *(&v78 + 1) = self;
  *&v79 = _VCAudioStream_UpdateSourceNTPToRTPTimeMappingCallback;
  *(&v79 + 1) = _VCAudioStream_StreamSwitchCallback;
  *&v80 = VCMediaStream_RTCPPacketsCallback;
  *&v81 = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] jbTargetEstimatorSynchronizer];
  BYTE14(v77) = VCDefaults_GetBoolValueForKey(@"dtmfTonePlaybackEnabled", [(VCMediaStreamConfig *)defaultStreamConfig dtmfTonePlaybackEnabled]);
  v34 = VCDefaults_GetBoolValueForKey(@"dtmfEventCallbacksEnabled", [(VCMediaStreamConfig *)defaultStreamConfig dtmfEventCallbacksEnabled]);
  BYTE9(v85) = v34;
  if (v34)
  {
    [(VCMediaStream *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      *(&v80 + 1) = _VCAudioStream_DTMFEventCallback;
    }
  }

  LODWORD(v83) = [(VCMediaStreamConfig *)defaultStreamConfig dtmfSampleRate];
  BYTE9(v84) = [(VCMediaStreamConfig *)defaultStreamConfig outOfProcessCodecsEnabled];
  *&v85 = self->super._callID;
  WORD4(v77) = [(VCMediaStreamConfig *)defaultStreamConfig direction];
  BYTE11(v85) = [VCAudioStream isVoLTE:[(VCMediaStreamConfig *)defaultStreamConfig audioStreamMode]];
  LOBYTE(v86) = [(VCAudioStream *)self shouldEnableAACELDInactiveFrames:[(VCMediaStreamConfig *)defaultStreamConfig detectInactiveAudioFramesAACELD] streamConfig:[(VCMediaStream *)self oneToOneStreamConfig]];
  BYTE4(v86) = [(VCMediaStreamConfig *)defaultStreamConfig externalSampleReblockingEnabled];
  [(VCAudioStream *)self configureAudioJBAlgos:v72];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v35;
      v57 = 2080;
      v58 = "[VCAudioStream createAudioReceiver]";
      v59 = 1024;
      v60 = 1756;
      v61 = 2048;
      v62 = v81;
      _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Creating Audio Receiver with jbTargetEstimatorSynchronizer=%p", buf, 0x26u);
    }
  }

  if (BYTE4(v76) == 1)
  {
    DWORD2(v82) = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] streamGroupID];
    *(&v76 + 1) = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] participantId];
    *&v77 = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] sessionId];
    BYTE12(v77) = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] shouldIgnoreRTPHeaderExtensions];
    *&v84 = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] remoteIDSParticipantID];
  }

  if (self->_isTelephony)
  {
    BYTE12(v82) = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-audio-issue-detector-enabled" userDefaultKey:@"audioIssueDetectorEnabled" featureFlagDomain:"AVConference" featureFlagName:"UseAudioIssueDetectors"];
  }

  DWORD1(v83) = [(VCAudioStream *)self getConnectionTypeForStreamMode:[(VCMediaStreamConfig *)defaultStreamConfig audioStreamMode]];
  BYTE9(v83) = self->super._isNWMonitorSignalEnabled;
  v37 = self->_isVoiceProcessingAt24KSupported && self->_isRamStadSRCEnabled;
  BYTE8(v85) = v37;
  BYTE8(v84) = VCDefaults_GetBoolValueForKey(@"audioDumpEnabled", 0);
  BYTE10(v85) = [(VCMediaStreamConfig *)defaultStreamConfig isEnhancedJBAdaptationsEnabled];
  HIDWORD(v85) = [+[GKSConnectivitySettings readStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings readStorebagValueForStorebagKey:@"vc-reporting-audio-erasure-percentage-symptom-threshold" userDefaultKey:0 defaultValue:&unk_1F5798B80 isDoubleType:{0), "intValue"}];
  BYTE3(v86) = self->_sendActiveVoiceOnly;
  Receiver = VCAudioReceiver_CreateReceiver(v72);
  self->_sourceContext.audioReceiver = Receiver;
  if (!Receiver)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v40 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v40)
      {
        return v40;
      }

      [VCAudioStream createAudioReceiver];
    }

    LOBYTE(v40) = 0;
    return v40;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioReceiver = self->_sourceContext.audioReceiver;
        *buf = 136315906;
        *&buf[4] = v41;
        v57 = 2080;
        v58 = "[VCAudioStream createAudioReceiver]";
        v59 = 1024;
        v60 = 1783;
        v61 = 2048;
        v62 = audioReceiver;
        v44 = "VCAudioStream [%s] %s:%d audioReceiver=%p";
        v45 = v42;
        v46 = 38;
LABEL_66:
        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, v44, buf, v46);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v39 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v39 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v49 = self->_sourceContext.audioReceiver;
        *buf = 136316418;
        *&buf[4] = v47;
        v57 = 2080;
        v58 = "[VCAudioStream createAudioReceiver]";
        v59 = 1024;
        v60 = 1783;
        v61 = 2112;
        v62 = v39;
        v63 = 2048;
        selfCopy = self;
        v65 = 2048;
        v66 = v49;
        v44 = "VCAudioStream [%s] %s:%d %@(%p) audioReceiver=%p";
        v45 = v48;
        v46 = 58;
        goto LABEL_66;
      }
    }
  }

  self->_sourceContext.audioReceiver->var66 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload];
  self->_sourceContext.audioReceiver->var70 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] codecSampleRate];
  if (self->_sourceContext.isSendOnly || [(VCAudioStream *)self setReceiverPayloads])
  {
    operatingMode = self->super._operatingMode;
    if (operatingMode == 6)
    {
      [(VCAudioStream *)self registerActiveAudioStreamChangeNotifications];
    }

    else if (operatingMode == 3)
    {
      [(VCAudioStream *)self registerCodecRateModeChangeNotifications];
    }

    VCAudioReceiver_SetOverlayToken(self->_sourceContext.audioReceiver, self->_overlayToken);
    VCAudioReceiver_SetAudioPlayoutDelay(self->_sourceContext.audioReceiver, self->_audioPlayoutDelay, v51);
    LOBYTE(v40) = 1;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioStream createAudioReceiver];
      }
    }

    VCAudioReceiver_Finalize(&self->_sourceContext.audioReceiver->var0.var0);
    LOBYTE(v40) = 0;
    self->_sourceContext.audioReceiver = 0;
  }

  return v40;
}

- (BOOL)createAudioTransmitter:(int64_t)transmitter streamIDs:(id)ds
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(VCAudioTransmitterConfig);
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  v9 = [(VCAudioStream *)self getPacketsPerBundleForStreamConfig:defaultStreamConfig];
  v10 = [VCPayloadUtils codecTypeForPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]];
  [(VCAudioTransmitterConfig *)v7 setRtpHandle:[(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtpHandle]];
  [(VCAudioTransmitterConfig *)v7 setControlInfoGenerator:[(VCMediaStream *)self mediaControlInfoGenerator]];
  [(VCAudioTransmitterConfig *)v7 setAudioPayloads:self->audioPayloads];
  [(VCAudioTransmitterConfig *)v7 setChosenAudioPayload:self->currentAudioPayload];
  [(VCAudioTransmitterConfig *)v7 setChosenDTXPayload:self->currentDTXPayload];
  v11 = *&self->_vpioFormat.format.mBytesPerPacket;
  *v39 = *&self->_vpioFormat.format.mSampleRate;
  *&v39[16] = v11;
  *&v39[32] = *&self->_vpioFormat.format.mBitsPerChannel;
  [(VCAudioTransmitterConfig *)v7 setInputFormat:v39];
  [(VCAudioTransmitterConfig *)v7 setAfrcHandle:0xFFFFFFFFLL];
  [(VCAudioTransmitterConfig *)v7 setUseRateControl:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] isOneToOne]];
  [(VCAudioTransmitterConfig *)v7 setBundlingScheme:[(VCMediaStreamConfig *)defaultStreamConfig bundlingScheme]];
  [(VCAudioTransmitterConfig *)v7 setAllowAudioSwitching:self->super._operatingMode == 6];
  cachedConnectionMTU = self->_cachedConnectionMTU;
  if (!cachedConnectionMTU)
  {
    cachedConnectionMTU = [(VCMediaStreamConfig *)defaultStreamConfig recommendedMTU];
  }

  [(VCAudioTransmitterConfig *)v7 setMaxAudioPacketSize:cachedConnectionMTU];
  if (self->super._operatingMode == 6)
  {
    constantTransportOverhead = self->_constantTransportOverhead;
  }

  else
  {
    constantTransportOverhead = 0;
  }

  [(VCAudioTransmitterConfig *)v7 setConstantTransportOverhead:constantTransportOverhead];
  [(VCAudioTransmitterConfig *)v7 setSupportsAdaptation:[(VCMediaStreamConfig *)defaultStreamConfig supportsAdaptation]];
  [(VCAudioTransmitterConfig *)v7 setNeedsPacketThread:0];
  [(VCAudioTransmitterConfig *)v7 setReportingAgent:[(VCObject *)self reportingAgent]];
  [(VCAudioTransmitterConfig *)v7 setReportingParentID:self->_reportingModuleID];
  [(VCAudioTransmitterConfig *)v7 setPacketsPerBundle:v9];
  v14 = 0;
  if (self->super._operatingMode == 6)
  {
    v14 = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] isOneToOne]^ 1;
  }

  [(VCAudioTransmitterConfig *)v7 setTransmitROC:v14];
  [(VCAudioTransmitterConfig *)v7 setIgnoreSilence:0];
  [(VCAudioTransmitterConfig *)v7 setChosenRedPayloadType:20];
  [(VCAudioTransmitterConfig *)v7 setRedEnabled:[(VCMediaStreamConfig *)defaultStreamConfig isRedEnabled]];
  [(VCAudioTransmitterConfig *)v7 setIncludeRedSequenceOffset:self->super._operatingMode == 6];
  [(VCAudioTransmitterConfig *)v7 setRedNumPayloads:[(VCMediaStreamConfig *)defaultStreamConfig numRedundantPayloads]];
  [(VCAudioTransmitterConfig *)v7 setRedMaxDelay20ms:[(VCMediaStreamConfig *)defaultStreamConfig numRedundantPayloads]];
  [(VCAudioTransmitterConfig *)v7 setStatisticsCollector:[(VCMediaStreamRateControlConfig *)[(VCMediaStreamConfig *)defaultStreamConfig rateControlConfig] statisticsCollector]];
  [(VCAudioTransmitterConfig *)v7 setStreamIDs:ds];
  [(VCAudioTransmitterConfig *)v7 setTierNetworkBitrate:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] maxNetworkBitrate]];
  [(VCAudioTransmitterConfig *)v7 setMaxIDSStreamIdCount:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] maxIDSStreamIdCount]];
  [(VCAudioTransmitterConfig *)v7 setSupportedNumRedundantPayload:[(VCMediaStreamConfig *)defaultStreamConfig supportedNumRedundantPayload]];
  [(VCAudioTransmitterConfig *)v7 setSendActiveVoiceOnly:self->_sendActiveVoiceOnly];
  [(VCAudioTransmitterConfig *)v7 setCurrentDTXEnable:self->_currentDTXEnable];
  [(VCAudioTransmitterConfig *)v7 setAlwaysOnAudioRedundancyEnabled:1];
  [(VCAudioTransmitterConfig *)v7 setCellularAllowRedLowBitratesEnabled:0];
  [(VCAudioTransmitterConfig *)v7 setWifiAllowRedLowBitratesEnabled:0];
  [(VCAudioTransmitterConfig *)v7 setRemoteIDSParticipantID:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] remoteIDSParticipantID]];
  if ([(VCMediaStreamConfig *)defaultStreamConfig rateControlConfig])
  {
    mediaQueue = [(VCMediaStreamRateControlConfig *)[(VCMediaStreamConfig *)defaultStreamConfig rateControlConfig] mediaQueue];
  }

  else
  {
    mediaQueue = 0xFFFFFFFFLL;
  }

  [(VCAudioTransmitterConfig *)v7 setMediaQueue:mediaQueue];
  [(VCAudioTransmitterConfig *)v7 setShouldCreateRedundancyController:self->super._operatingMode != 6];
  [(VCAudioTransmitterConfig *)v7 setUseChannelDataFormat:self->super._operatingMode == 6];
  [(VCAudioTransmitterConfig *)v7 setPacketExpirationTime:[(VCAudioStream *)self packetExpirationTimeForStreamConfig:defaultStreamConfig]];
  if ([(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] isOneToOne])
  {
    isACC24ForU1Enabled = [(VCMediaStreamConfig *)defaultStreamConfig isACC24ForU1Enabled];
  }

  else
  {
    isACC24ForU1Enabled = [(VCMediaStreamConfig *)defaultStreamConfig isACC24ForGFTEnabled];
  }

  [(VCAudioTransmitterConfig *)v7 setIsACC24Enabled:isACC24ForU1Enabled];
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceAudioPacketExpirationTime", 0xFFFFFFFFLL);
  if ((IntValueForKey & 0x80000000) == 0)
  {
    [(VCAudioTransmitterConfig *)v7 setPacketExpirationTime:IntValueForKey];
  }

  if ([VCAudioStream isVoLTE:transmitter])
  {
    v18 = [VCPayloadUtils supportsCodecBandwidthUpdateForCodecType:v10];
  }

  else
  {
    v18 = 0;
  }

  [(VCAudioTransmitterConfig *)v7 setSupportsCodecBandwidthUpdate:v18];
  if ([(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] isOneToOne])
  {
    [(VCAudioTransmitterConfig *)v7 setUseChannelDataFormat:0];
  }

  [(VCAudioTransmitterConfig *)v7 setShouldApplyRedAsBoolean:[(VCMediaStreamConfig *)defaultStreamConfig shouldApplyRedAsBoolean]];
  [(VCAudioTransmitterConfig *)v7 setUseWifiTiers:[(VCMediaStreamConfig *)defaultStreamConfig useWifiTiers]];
  if ([(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] hasQualityIndex])
  {
    [(VCAudioTransmitterConfig *)v7 setQualityIndex:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] qualityIndex]];
  }

  [(VCAudioTransmitterConfig *)v7 setSframeCryptor:[(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] transmitterSframeCryptor]];
  [(VCAudioTransmitterConfig *)v7 setRatType:[(VCAudioStream *)self getConnectionTypeForStreamMode:[(VCMediaStreamConfig *)defaultStreamConfig audioStreamMode]]];
  if (self->_isTelephony)
  {
    [(VCAudioTransmitterConfig *)v7 setAudioIssueDetectorEnabled:[GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-audio-issue-detector-enabled" userDefaultKey:@"audioIssueDetectorEnabled" featureFlagDomain:"AVConference" featureFlagName:"UseAudioIssueDetectors"]];
  }

  if ([(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] isOneToOne])
  {
    operatingMode = [(VCMediaStreamConfig *)defaultStreamConfig oneToOneOperatingMode];
  }

  else
  {
    operatingMode = self->super._operatingMode;
  }

  [(VCAudioTransmitterConfig *)v7 setOperatingMode:operatingMode];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      operatingMode = [(VCAudioTransmitterConfig *)v7 operatingMode];
      isOneToOne = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)defaultStreamConfig multiwayConfig] isOneToOne];
      oneToOneOperatingMode = [(VCMediaStreamConfig *)defaultStreamConfig oneToOneOperatingMode];
      v25 = self->super._operatingMode;
      *v39 = 136316674;
      *&v39[4] = v20;
      *&v39[12] = 2080;
      *&v39[14] = "[VCAudioStream createAudioTransmitter:streamIDs:]";
      *&v39[22] = 1024;
      *&v39[24] = 1888;
      *&v39[28] = 1024;
      *&v39[30] = operatingMode;
      *&v39[34] = 1024;
      *&v39[36] = isOneToOne;
      *&v39[40] = 1024;
      *&v39[42] = oneToOneOperatingMode;
      *&v39[46] = 1024;
      v40[0] = v25;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Setting audioTransmitterConfig.operatingMode=%d streamConfig.multiwayConfig.isOneToOne=%d streamConfig.oneToOneOperatingMode=%d _operatingMode=%d", v39, 0x34u);
    }
  }

  [(VCAudioTransmitterConfig *)v7 setTargetBitrateIsAudioOnly:[(VCAudioStream *)self bitrateIsAudioOnly]];
  [(VCAudioTransmitterConfig *)v7 setAudioDumpEnabled:VCDefaults_GetBoolValueForKey(@"audioDumpEnabled", 0)];
  [(VCAudioTransmitterConfig *)v7 setTierPickerMode:[VCAudioTierPicker operatingModeToTierPickerMode:[(VCAudioTransmitterConfig *)v7 operatingMode] isLowLatency:[(VCMediaStreamConfig *)defaultStreamConfig isLowLatency] preferPlistForTierTable:!self->_isTelephony]];
  isRamStadSRCEnabled = 0;
  if (self->_isVoiceProcessingAt24KSupported)
  {
    isRamStadSRCEnabled = self->_isRamStadSRCEnabled;
  }

  [(VCAudioTransmitterConfig *)v7 setRamStadSRCEnabled:isRamStadSRCEnabled];
  [(VCAudioTransmitterConfig *)v7 setIsHigherAudioREDCutoverU1Enabled:[(VCMediaStreamConfig *)defaultStreamConfig isHigherAudioREDCutoverU1Enabled]];
  [(VCAudioTransmitterConfig *)v7 setExperimentManager:self->super._experimentManager];
  self->_audioTransmitter = [[VCAudioTransmitter alloc] initWithConfig:v7];

  audioTransmitter = [(VCAudioStream *)self audioTransmitter];
  if (audioTransmitter)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          audioTransmitter = self->_audioTransmitter;
          *v39 = 136315906;
          *&v39[4] = v29;
          *&v39[12] = 2080;
          *&v39[14] = "[VCAudioStream createAudioTransmitter:streamIDs:]";
          *&v39[22] = 1024;
          *&v39[24] = 1906;
          *&v39[28] = 2048;
          *&v39[30] = audioTransmitter;
          v32 = "VCAudioStream [%s] %s:%d audioTransmitter=%p";
          v33 = v30;
          v34 = 38;
LABEL_47:
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, v39, v34);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v28 = [(VCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v28 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v37 = self->_audioTransmitter;
          *v39 = 136316418;
          *&v39[4] = v35;
          *&v39[12] = 2080;
          *&v39[14] = "[VCAudioStream createAudioTransmitter:streamIDs:]";
          *&v39[22] = 1024;
          *&v39[24] = 1906;
          *&v39[28] = 2112;
          *&v39[30] = v28;
          *&v39[38] = 2048;
          *&v39[40] = self;
          LOWORD(v40[0]) = 2048;
          *(v40 + 2) = v37;
          v32 = "VCAudioStream [%s] %s:%d %@(%p) audioTransmitter=%p";
          v33 = v36;
          v34 = 58;
          goto LABEL_47;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioStream createAudioTransmitter:streamIDs:];
    }
  }

  return audioTransmitter != 0;
}

- (void)updateOperatingMode:(int)mode
{
  v3 = *&mode;
  v22 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  self->super._operatingMode = v3;
  [(VCAudioTransmitter *)self->_audioTransmitter setOperatingMode:v3];
  [(VCAudioTransmitter *)self->_audioTransmitter setTierPickerMode:[VCAudioTierPicker operatingModeToTierPickerMode:v3 isLowLatency:[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] isLowLatency] preferPlistForTierTable:!self->_isTelephony]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      audioTransmitter = self->_audioTransmitter;
      v8 = [VCStringUtils cStringFromOperatingMode:self->super._operatingMode];
      v9 = [VCStringUtils cStringFromTierPickerMode:[(VCAudioTransmitter *)self->_audioTransmitter tierPickerMode]];
      v10 = 136316418;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCAudioStream updateOperatingMode:]";
      v14 = 1024;
      v15 = 1920;
      v16 = 2048;
      v17 = audioTransmitter;
      v18 = 2080;
      v19 = v8;
      v20 = 2080;
      v21 = v9;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Setting operatingMode and tierPickerMode on VCAudioTransmitter[%p] -> operatingMode=%s tierPickerMode=%s", &v10, 0x3Au);
    }
  }

  VCMediaStream_Unlock(self);
}

- (void)sendDTMFEvent:(id)event
{
  dtmfEventHandler = self->dtmfEventHandler;
  lastSentAudioSampleTime = self->lastSentAudioSampleTime;
  codecSampleRate = [(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] codecSampleRate];

  [(DTMFEventHandler *)dtmfEventHandler sendDTMFEvent:event atTimestamp:lastSentAudioSampleTime withSampleRate:codecSampleRate];
}

- (void)stopSendDTMFEvent
{
  dtmfEventHandler = self->dtmfEventHandler;
  lastSentAudioSampleTime = self->lastSentAudioSampleTime;
  codecSampleRate = [(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] codecSampleRate];

  [(DTMFEventHandler *)dtmfEventHandler stopDTMFEventAtTimestamp:lastSentAudioSampleTime withSampleRate:codecSampleRate];
}

+ (id)supportedAudioPayloads
{
  v2 = [MEMORY[0x1E695DF70] arrayWithObjects:{&unk_1F5798B98, &unk_1F5798BB0, &unk_1F5798BC8, &unk_1F5798B08, &unk_1F5798BE0, &unk_1F5798BF8, &unk_1F5798C10, &unk_1F5798C28, &unk_1F5798C40, 0}];
  [v2 addObject:&unk_1F5798C58];
  [v2 addObject:&unk_1F5798C70];
  [v2 addObject:&unk_1F5798C88];
  [v2 addObject:&unk_1F5798CA0];
  [v2 addObject:&unk_1F5798CB8];
  if (VCFeatureFlagManager_UseAudioCodecACC24ForU1() || VCFeatureFlagManager_UseAudioCodecACC24ForGFT())
  {
    [v2 addObject:&unk_1F5798CD0];
  }

  return v2;
}

+ (id)capabilities
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"avcKeySupportedAudioCodecs";
  v4[0] = +[VCAudioStream supportedAudioPayloads];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
}

- (_METER_INFO)meterWithType:(int)type
{
  if (type)
  {
    return &self->_sourceContext.soundMeter;
  }

  else
  {
    return &self->_sinkContext.soundMeter;
  }
}

- (void)setFrequencyMeteringEnabled:(BOOL)enabled meterType:(int)type
{
  enabledCopy = enabled;
  v5 = [(VCAudioStream *)self meterWithType:*&type];
  if (v5->frequencyMeteringEnabled != enabledCopy)
  {
    v6 = v5;
    if (enabledCopy)
    {
      v5->fftMeter = VCFFTMeter_Create();
    }

    else
    {
      VCFFTMeter_Destroy(&v5->fftMeter);
      v6->fftMeter = 0;
    }

    v6->frequencyMeteringEnabled = enabledCopy;
  }
}

- (void)prepareAudio
{
  VCMediaStream_Lock(self);
  VCAudioReceiver_Start(&self->_sourceContext.audioReceiver->var0.var0, v3);

  VCMediaStream_Unlock(self);
}

- (void)cleanupAudio
{
  p_sourceContext = &self->_sourceContext;
  VCAudioReceiver_Stop(self->_sourceContext.audioReceiver);

  p_sourceContext->delegate = 0;
  p_sourceContext->momentsCollectorDelegate = 0;
}

- (BOOL)generateReceptionReportList:(_RTCP_RECEPTION_REPORT *)list reportCount:(char *)count
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCAudioStream;
  v6 = [(VCMediaStream *)&v8 generateReceptionReportList:list reportCount:count];
  if (v6)
  {
    list->var7 = VCAudioReceiver_CalculateBurstLoss(self->_sourceContext.audioReceiver);
  }

  return v6;
}

- (void)setStreamDirection:(int64_t)direction
{
  v6 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  v5.receiver = self;
  v5.super_class = VCAudioStream;
  [(VCMediaStream *)&v5 setStreamDirection:direction];
  [(VCAudioIO *)self->_audioIO setDirection:[VCAudioStream audioIODirectionWithMediaStreamDirection:direction]];
  VCMediaStream_Unlock(self);
}

- (void)setSendActiveVoiceOnly:(BOOL)only
{
  onlyCopy = only;
  VCMediaStream_Lock(self);
  self->_sendActiveVoiceOnly = onlyCopy;
  [(VCAudioTransmitter *)self->_audioTransmitter setSendActiveVoiceOnly:onlyCopy];
  audioReceiver = self->_sourceContext.audioReceiver;
  if (audioReceiver)
  {
    VCAudioReceiver_SetVADFiltering(audioReceiver, onlyCopy);
  }

  VCMediaStream_Unlock(self);
}

- (void)setCurrentDTXEnable:(BOOL)enable
{
  VCMediaStream_Lock(self);
  self->_currentDTXEnable = enable;

  VCMediaStream_Unlock(self);
}

- (void)setVolume:(float)volume
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      volume = self->_sourceContext.volume;
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCAudioStream setVolume:]";
      v12 = 1024;
      v13 = 2065;
      v14 = 2048;
      volumeCopy = volume;
      v16 = 2048;
      volumeCopy2 = volume;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d Setting volume from %f to %f", &v8, 0x30u);
    }
  }

  self->_sourceContext.volume = volume;
}

- (void)setVCStatistics:(tagVCStatisticsMessage *)statistics
{
  statisticsCollector = [(VCMediaStreamRateControlConfig *)[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] rateControlConfig] statisticsCollector];

  AVCStatisticsCollector_SetVCStatistics(statisticsCollector, statistics);
}

- (void)setTargetBitrate:(unsigned int)bitrate rateChangeCounter:(unsigned int)counter
{
  v4 = *&counter;
  [(VCAudioTransmitter *)self->_audioTransmitter setTargetBitrate:*&bitrate];
  audioTransmitter = self->_audioTransmitter;

  [(VCAudioTransmitter *)audioTransmitter setRateChangeCounter:v4];
}

- (id)supportedPayloads
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:{+[VCAudioStream supportedAudioPayloads](VCAudioStream, "supportedAudioPayloads")}];
  v4 = v3;
  if (!self->_isACC24ForU1Enabled && !self->_isACC24ForGFTEnabled)
  {
    [v3 removeObject:&unk_1F5798CD0];
  }

  return v4;
}

- (void)onCallIDChanged
{
  v14 = *MEMORY[0x1E69E9840];
  integerValue = [(NSString *)self->super._callID integerValue];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  transportArray = self->super._transportArray;
  v5 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(transportArray);
        }

        [*(*(&v10 + 1) + 8 * v8++) setWRMCallId:integerValue];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (BOOL)validateAudioStreamConfigurations:(id)configurations
{
  v38 = *MEMORY[0x1E69E9840];
  if (![configurations count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        return v9;
      }

      [VCAudioStream validateAudioStreamConfigurations:];
    }

    goto LABEL_20;
  }

  v4 = [configurations objectAtIndexedSubscript:0];
  if ([configurations count] < 2 || objc_msgSend(v4, "direction") == 2)
  {
    if ([configurations count] < 2)
    {
LABEL_9:
      LOBYTE(v9) = 1;
    }

    else
    {
      v5 = 1;
      while (1)
      {
        v6 = [configurations objectAtIndexedSubscript:v5];
        audioStreamMode = [v6 audioStreamMode];
        if (audioStreamMode != [v4 audioStreamMode])
        {
          break;
        }

        direction = [v6 direction];
        if (direction != [v4 direction])
        {
          break;
        }

        v5 = (v5 + 1);
        if ([configurations count] <= v5)
        {
          goto LABEL_9;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_20;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        v18 = 136317698;
        v19 = v10;
        v20 = 2080;
        v21 = "[VCAudioStream validateAudioStreamConfigurations:]";
        v22 = 1024;
        v23 = 2172;
        v24 = 1024;
        v25 = v5;
        v26 = 1024;
        *v27 = [configurations count];
        *&v27[4] = 2048;
        *&v27[6] = [v6 audioStreamMode];
        v28 = 2048;
        audioStreamMode2 = [v4 audioStreamMode];
        v30 = 1024;
        jitterBufferMode = [v6 jitterBufferMode];
        v32 = 1024;
        jitterBufferMode2 = [v4 jitterBufferMode];
        v34 = 2048;
        direction2 = [v6 direction];
        v36 = 2048;
        direction3 = [v4 direction];
        v12 = "VCAudioStream [%s] %s:%d Failure at index i=%u of streamConfigArray.count=%u audioStreamConfig.audioStreamMode=%ld firstAudioStreamConfig.audioStreamMode=%ld audioStreamConfig.jitterBufferMode=%u firstAudioStreamConfig.jitterBufferMode=%u audioStreamConfig.direction=%ld firstAudioStreamConfig.direction=%ld";
        v13 = v11;
        v14 = 92;
LABEL_19:
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, v12, &v18, v14);
        goto LABEL_20;
      }
    }

    return v9;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
LABEL_20:
    LOBYTE(v9) = 0;
    return v9;
  }

  v15 = VRTraceErrorLogLevelToCSTR();
  v16 = *MEMORY[0x1E6986650];
  v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v9)
  {
    v18 = 136316162;
    v19 = v15;
    v20 = 2080;
    v21 = "[VCAudioStream validateAudioStreamConfigurations:]";
    v22 = 1024;
    v23 = 2162;
    v24 = 1024;
    v25 = [configurations count];
    v26 = 2048;
    *v27 = [v4 direction];
    v12 = "VCAudioStream [%s] %s:%d streamConfigArray.count=%u, but firstAudioStreamConfig.direction=%ld";
    v13 = v16;
    v14 = 44;
    goto LABEL_19;
  }

  return v9;
}

- (BOOL)setupSourceTransport:(id)transport
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (v5)
  {
    v6 = v5;
    v5[1] = [transport realtimeContext];
    if (VCSingleLinkedListPush(&self->_sourceContext.transports, v6))
    {
      return 1;
    }

    else
    {
      [VCAudioStream setupSourceTransport:v6];
      return 0;
    }
  }

  else
  {
    [VCAudioStream setupSourceTransport:?];
    return v8;
  }
}

- (id)createTransportWithStreamConfig:(id)config
{
  v5 = [(VCMediaStream *)self createRTPHandleWithStreamConfig:config payloadType:0 localSSRC:self->super._localSSRC];
  if (v5 == 0xFFFFFFFFLL)
  {
    [VCAudioStream createTransportWithStreamConfig:];
    v8 = v10;
  }

  else
  {
    v6 = v5;
    if ([config rateControlConfig])
    {
      v7 = [objc_msgSend(config "rateControlConfig")];
      if (v7 != 0xFFFFFFFFLL)
      {
        MediaQueue_SetRTPHandle(v7, v6);
      }
    }

    v8 = [[VCAudioStreamTransport alloc] initWithHandle:v6 callId:[(NSString *)self->super._callID integerValue] localSSRC:self->super._localSSRC enableNetworkMonitor:self->super._operatingMode != 6];
    if (v8)
    {
      if ([(VCAudioStream *)self setupSourceTransport:v8])
      {
        [(NSMutableArray *)self->super._transportArray addObject:v8];
      }

      else
      {
        [VCAudioStream createTransportWithStreamConfig:];
        v8 = 0;
      }
    }

    else
    {
      [VCAudioStream createTransportWithStreamConfig:];
    }
  }

  return v8;
}

- (void)createReportSSRCListWithStreamConfigs:(id)configs
{
  v22 = *MEMORY[0x1E69E9840];
  reportingSSRCList = self->_reportingSSRCList;
  if (reportingSSRCList)
  {
    free(reportingSSRCList);
    self->_reportingSSRCList = 0;
  }

  self->_reportingSSRCCount = 0;
  if ([configs count])
  {
    v6 = malloc_type_calloc([configs count], 4uLL, 0x100004052888210uLL);
    self->_reportingSSRCList = v6;
    if (self->super._operatingMode == 6)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [configs countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(configs);
            }

            v11 = *(*(&v18 + 1) + 8 * i);
            if ([v11 direction] == 2)
            {
              localSSRC = [v11 defaultRemoteSSRC];
            }

            else
            {
              localSSRC = self->super._localSSRC;
            }

            v13 = self->_reportingSSRCList;
            reportingSSRCCount = self->_reportingSSRCCount;
            self->_reportingSSRCCount = reportingSSRCCount + 1;
            v13[reportingSSRCCount] = localSSRC;
          }

          v8 = [configs countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v15 = self->super._localSSRC;
      v16 = self->_reportingSSRCCount;
      self->_reportingSSRCCount = v16 + 1;
      v6[v16] = v15;
    }
  }
}

- (void)cleanupBeforeReconfigure:(id)reconfigure
{
  v24 = *MEMORY[0x1E69E9840];
  [(VCAudioStream *)self setAudioTransmitter:0];
  audioReceiver = self->_sourceContext.audioReceiver;
  if (audioReceiver)
  {
    VCAudioReceiver_Finalize(&audioReceiver->var0.var0);
    self->_sourceContext.audioReceiver = 0;
  }

  if ([(NSMutableArray *)self->super._transportArray count])
  {
    v6 = [objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->super._transportArray objectAtIndexedSubscript:{0), "streamConfig"), "localSSRC"}];
  }

  else
  {
    v6 = 0;
  }

  if ([reconfigure count])
  {
    v7 = [objc_msgSend(reconfigure objectAtIndexedSubscript:{0), "localSSRC"}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [reconfigure count];
  if (v8 != [(NSMutableArray *)self->super._transportArray count]|| v7 != v6)
  {
    if ([(NSMutableArray *)self->super._transportArray count])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioStream cleanupBeforeReconfigure:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [(VCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v10 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v14 = 136316162;
            v15 = v11;
            v16 = 2080;
            v17 = "[VCAudioStream cleanupBeforeReconfigure:]";
            v18 = 1024;
            v19 = 2258;
            v20 = 2112;
            v21 = v10;
            v22 = 2048;
            selfCopy = self;
            _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %@(%p) Reconfiguring VCAudioStream with a different number of transports.", &v14, 0x30u);
          }
        }
      }

      [(NSMutableArray *)self->super._transportArray removeAllObjects];
    }

    while (1)
    {
      v13 = VCSingleLinkedListPop(&self->_sourceContext.transports);
      if (!v13)
      {
        break;
      }

      free(v13);
    }

    [(VCAudioStream *)self createReportSSRCListWithStreamConfigs:reconfigure];
  }
}

- (id)streamIDsFromTransport
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->super._operatingMode != 6)
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->super._transportArray, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transportArray = self->super._transportArray;
  v5 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(transportArray);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([objc_msgSend(objc_msgSend(v9 "streamConfig")] & 1) == 0)
        {
          [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(objc_msgSend(objc_msgSend(v9, "streamConfig"), "multiwayConfig"), "idsStreamID"))}];
          v10 = [objc_msgSend(objc_msgSend(v9 "streamConfig")];
          if (v10)
          {
            [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v10)}];
          }
        }
      }

      v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setPreferredMediaBitrateWithConfiguration:(id)configuration
{
  self->_preferredMediaBitrate = 0;
  if ([configuration audioStreamMode] == 5)
  {
    preferredMediaBitRate = [objc_msgSend(configuration "multiwayConfig")];
  }

  else
  {
    if ([configuration audioStreamMode] != 8 && objc_msgSend(configuration, "audioStreamMode") != 9 && objc_msgSend(configuration, "audioStreamMode") != 11 && objc_msgSend(configuration, "audioStreamMode") != 12)
    {
      preferredMediaBitrate = self->_preferredMediaBitrate;
      goto LABEL_9;
    }

    preferredMediaBitRate = [configuration preferredMediaBitRate];
  }

  preferredMediaBitrate = preferredMediaBitRate;
  self->_preferredMediaBitrate = preferredMediaBitRate;
LABEL_9:
  self->_preferredMediaBitrate = VCDefaults_GetIntValueForKey(@"audioStreamPreferredMediaBitrate", preferredMediaBitrate);
}

- (int)getRTPTimeStampRateScaleFactor
{
  payload = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload];
  result = 5;
  if (payload <= 106)
  {
    if (payload != 97)
    {
      if (payload == 98)
      {
        return result;
      }

      return 0;
    }

    return 4;
  }

  else
  {
    if (payload == 107)
    {
      return result;
    }

    if (payload != 111)
    {
      if (payload == 108)
      {
        return 7;
      }

      return 0;
    }

    return 6;
  }
}

- (BOOL)networkUplinkClockUsesBaseband:(int64_t)baseband
{
  result = +[VCHardwareSettings supportsOptimizedHandoversForTelephony];
  if (baseband != 7)
  {
    return 0;
  }

  return result;
}

- (int)preferredAudioCodecWithStreamConfig:(id)config
{
  if (self->super._operatingMode == 6 && ([config isLowLatency] & 1) != 0)
  {
    return 101;
  }

  else
  {
    return 98;
  }
}

- (BOOL)shouldEnableFixedJitterBufferInitialOvershootResiliency
{
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  v3 = [objc_msgSend(-[VCMediaStreamConfig codecConfigurations](defaultStreamConfig "codecConfigurations")] == 5 && -[VCMediaStreamConfig jitterBufferMode](defaultStreamConfig, "jitterBufferMode") == 3;

  return VCDefaults_GetBoolValueForKey(@"audioStreamEnableFixedJitterBufferInitialOvershootResiliency", v3);
}

- (BOOL)onConfigureStreamWithConfiguration:(id)configuration error:(id *)error
{
  v131 = *MEMORY[0x1E69E9840];
  if (![(VCAudioStream *)self validateAudioStreamConfigurations:?])
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStream.m", 2358], @"Invalid Parameter", @"Called with an invalid parameter");
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 2)
      {
        goto LABEL_161;
      }

      v51 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v53 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        setupPayloads = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (setupPayloads)
        {
          if (*error)
          {
            v54 = [objc_msgSend(*error "description")];
          }

          else
          {
            v54 = "<nil>";
          }

          *buf = 136316418;
          *&buf[4] = v51;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
          *&buf[22] = 1024;
          *&buf[24] = 2361;
          *&buf[28] = 2112;
          *&buf[30] = v12;
          *&buf[38] = 2048;
          *&buf[40] = self;
          LOWORD(v112) = 2080;
          *(&v112 + 2) = v54;
          v63 = "VCAudioStream [%s] %s:%d %@(%p) error[%s]";
          v64 = v53;
LABEL_175:
          _os_log_error_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_ERROR, v63, buf, 0x3Au);
          goto LABEL_161;
        }
      }

      else
      {
        setupPayloads = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
        if (setupPayloads)
        {
          if (*error)
          {
            v56 = [objc_msgSend(*error "description")];
          }

          else
          {
            v56 = "<nil>";
          }

          *buf = 136316418;
          *&buf[4] = v51;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
          *&buf[22] = 1024;
          *&buf[24] = 2361;
          *&buf[28] = 2112;
          *&buf[30] = v12;
          *&buf[38] = 2048;
          *&buf[40] = self;
          LOWORD(v112) = 2080;
          *(&v112 + 2) = v56;
          v65 = "VCAudioStream [%s] %s:%d %@(%p) error[%s]";
          v66 = v53;
          goto LABEL_178;
        }
      }

      return setupPayloads;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        setupPayloads = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!setupPayloads)
        {
          return setupPayloads;
        }

        [VCAudioStream onConfigureStreamWithConfiguration:v49 error:error];
      }

      else
      {
        setupPayloads = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
        if (!setupPayloads)
        {
          return setupPayloads;
        }

        [VCAudioStream onConfigureStreamWithConfiguration:v49 error:error];
      }
    }

    goto LABEL_161;
  }

  v7 = [configuration objectAtIndexedSubscript:0];
  [(VCAudioStream *)self cleanupBeforeReconfigure:configuration];
  -[VCAudioStream setDeviceRoleForAudioStreamMode:direction:](self, "setDeviceRoleForAudioStreamMode:direction:", [v7 audioStreamMode], objc_msgSend(v7, "direction"));
  v105 = v7;
  v8 = +[VCAudioStream isTelephony:](VCAudioStream, "isTelephony:", [v7 audioStreamMode]);
  self->_isTelephony = v8;
  if (v8)
  {
    LOBYTE(v8) = VCCarrierBundle_GetForceJBLatencySensitiveModeForVoWiFi();
  }

  self->_shouldEnableJBLatencySenstiveModeForVoWiFi = v8;
  -[VCMediaStream setOperatingMode:](self, "setOperatingMode:", +[VCAudioStream operatingModeForAudioStreamMode:](VCAudioStream, "operatingModeForAudioStreamMode:", [v7 audioStreamMode]));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 2375;
      *&buf[28] = 1024;
      *&buf[30] = [(VCMediaStream *)self operatingMode];
      *&buf[34] = 2048;
      *&buf[36] = [v7 audioStreamMode];
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d operatingMode=%d based on audioStreamMode defaultConfig.audioStreamMode=%ld", buf, 0x2Cu);
    }
  }

  v11 = self->_isTelephony && +[VCHardwareSettings isVoiceProcessingAt24KSupported];
  self->_isVoiceProcessingAt24KSupported = v11;
  self->_isRamStadSRCEnabled = VCDefaults_GetBoolValueForKey(@"enableRamStadSRC", 1);
  if (self->super._operatingMode == 6)
  {
    if ((self->_reportingModuleID + 1) <= 1)
    {
      [(VCObject *)self reportingAgent];
      self->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
      [(VCObject *)self reportingAgent];
      [(VCAudioStream *)self getReportingServiceID];
      [(VCAudioStream *)self getClientSpecificUserInfo:configuration];
      reportingCacheModuleSpecificInfo();
    }
  }

  else if (![(VCObject *)self reportingAgent])
  {
    [(VCAudioStream *)self setupReportingAgent:configuration];
  }

  errorCopy = error;
  [(VCAudioStream *)self setPreferredMediaBitrateWithConfiguration:v7];
  self->preferredAudioCodec = [(VCAudioStream *)self preferredAudioCodecWithStreamConfig:v7];
  [(VCAudioStream *)self _computeInternalFormatForStreamConfigurations:configuration];
  self->super._transportSetupInfo.sourceRate = self->_vpioFormat.format.mSampleRate;
  self->super._useRandomTS = [VCAudioStream shouldUseRandomRTPTimestampForMode:self->super._operatingMode];
  if ([(VCMediaStream *)self networkFeedbackController])
  {
    self->_sourceContext.wrmInfo = [(VCNetworkFeedbackController *)[(VCMediaStream *)self networkFeedbackController] wrmInfo];
    self->_sourceContext.defaultRtpHandle = [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtpHandle];
  }

  v107 = [(NSMutableArray *)self->super._transportArray count];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v13 = [configuration countByEnumeratingWithState:&v127 objects:v126 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v128;
    obj = configuration;
LABEL_22:
    v16 = 0;
    while (1)
    {
      if (*v128 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v127 + 1) + 8 * v16);
      if (v107)
      {
        v18 = [(NSMutableArray *)self->super._transportArray objectAtIndexedSubscript:0];
      }

      else
      {
        v18 = [(VCAudioStream *)self createTransportWithStreamConfig:v17];
      }

      v19 = v18;
      if (!v18)
      {
        if (objc_opt_class() == self)
        {
          v57 = errorCopy;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioStream onConfigureStreamWithConfiguration:error:];
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v50 = [(VCAudioStream *)self performSelector:sel_logPrefix];
          }

          else
          {
            v50 = &stru_1F570E008;
          }

          v57 = errorCopy;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v58 = VRTraceErrorLogLevelToCSTR();
            v59 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              *&buf[4] = v58;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
              *&buf[22] = 1024;
              *&buf[24] = 2410;
              *&buf[28] = 2112;
              *&buf[30] = v50;
              *&buf[38] = 2048;
              *&buf[40] = self;
              _os_log_error_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %@(%p) Failed to create transport", buf, 0x30u);
            }
          }
        }

        +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v57, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStream.m", 2414], @"Failed to create transport", @"Create transport failed");
        goto LABEL_161;
      }

      v20 = [objc_msgSend(v17 "rateControlConfig")];
      if (([v19 configureWithStreamConfig:v17 setupInfo:&self->super._transportSetupInfo reducedSizeRTCPPackets:self->super._operatingMode == 6 hopByHopEncryptRTCPPackets:self->super._operatingMode == 6 statisticsCollector:v20 basebandCongestionDetector:objc_msgSend(objc_msgSend(v17 error:{"rateControlConfig"), "basebandCongestionDetector"), errorCopy}] & 1) == 0)
      {
        break;
      }

      statsCollector = self->_statsCollector;
      self->_statsCollector = v20;
      if (v20)
      {
        CFRetain(v20);
      }

      if (statsCollector)
      {
        CFRelease(statsCollector);
      }

      VCAudioReceiver_FlushQueues(self->_sourceContext.audioReceiver);
      if (v14 == ++v16)
      {
        configuration = obj;
        v14 = [obj countByEnumeratingWithState:&v127 objects:v126 count:16];
        if (!v14)
        {
          goto LABEL_36;
        }

        goto LABEL_22;
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 2)
      {
        goto LABEL_161;
      }

      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        setupPayloads = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!setupPayloads)
        {
          return setupPayloads;
        }

        [VCAudioStream onConfigureStreamWithConfiguration:error:];
      }

      else
      {
        setupPayloads = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
        if (!setupPayloads)
        {
          return setupPayloads;
        }

        [VCAudioStream onConfigureStreamWithConfiguration:error:];
      }

      goto LABEL_161;
    }

    if (objc_opt_respondsToSelector())
    {
      v55 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v55 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 2)
    {
      goto LABEL_161;
    }

    v60 = VRTraceErrorLogLevelToCSTR();
    v61 = VRTraceIsOSFaultDisabled();
    v62 = *MEMORY[0x1E6986650];
    if (v61)
    {
      setupPayloads = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!setupPayloads)
      {
        return setupPayloads;
      }

      *buf = 136316418;
      *&buf[4] = v60;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 2429;
      *&buf[28] = 2112;
      *&buf[30] = v55;
      *&buf[38] = 2048;
      *&buf[40] = self;
      LOWORD(v112) = 2048;
      *(&v112 + 2) = v17;
      v63 = "VCAudioStream [%s] %s:%d %@(%p) Failed to configure transport for streamConfig=%p";
      v64 = v62;
      goto LABEL_175;
    }

    setupPayloads = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
    if (!setupPayloads)
    {
      return setupPayloads;
    }

    *buf = 136316418;
    *&buf[4] = v60;
    *&buf[12] = 2080;
    *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
    *&buf[22] = 1024;
    *&buf[24] = 2429;
    *&buf[28] = 2112;
    *&buf[30] = v55;
    *&buf[38] = 2048;
    *&buf[40] = self;
    LOWORD(v112) = 2048;
    *(&v112 + 2) = v17;
    v65 = "VCAudioStream [%s] %s:%d %@(%p) Failed to configure transport for streamConfig=%p";
    v66 = v62;
LABEL_178:
    _os_log_fault_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_FAULT, v65, buf, 0x3Au);
    goto LABEL_161;
  }

LABEL_36:
  setupPayloads = [(VCAudioStream *)self setupPayloads];
  if (!setupPayloads)
  {
    return setupPayloads;
  }

  obja = configuration;
  [(VCAudioStream *)self setDTXPayload:v7];
  dtmfEventHandler = self->dtmfEventHandler;
  if (dtmfEventHandler)
  {
    [(DTMFEventHandler *)dtmfEventHandler setDTMFRTPEventDurationForPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]];
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  transportArray = self->super._transportArray;
  v24 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v122 objects:v121 count:16];
  if (v24)
  {
    v25 = v24;
    v108 = *v123;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v123 != v108)
        {
          objc_enumerationMutation(transportArray);
        }

        v27 = *(*(&v122 + 1) + 8 * i);
        if (self->_isTelephony)
        {
          realtimeContext = [*(*(&v122 + 1) + 8 * i) realtimeContext];
          *(realtimeContext + 220) = +[VCAudioStream isVoLTE:](VCAudioStream, "isVoLTE:", [v105 audioStreamMode]);
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v36 = VRTraceErrorLogLevelToCSTR();
              v37 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v38 = *(realtimeContext + 220);
                *buf = 136315906;
                *&buf[4] = v36;
                *&buf[12] = 2080;
                *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
                *&buf[22] = 1024;
                *&buf[24] = 2450;
                *&buf[28] = 1024;
                *&buf[30] = v38;
                v33 = v37;
                v34 = "VCAudioStream [%s] %s:%d Telephony calling isLocalCellular=%d";
                v35 = 34;
                goto LABEL_54;
              }
            }
          }

          else
          {
            v29 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v29 = [(VCAudioStream *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v30 = VRTraceErrorLogLevelToCSTR();
              v31 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v32 = *(realtimeContext + 220);
                *buf = 136316418;
                *&buf[4] = v30;
                *&buf[12] = 2080;
                *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
                *&buf[22] = 1024;
                *&buf[24] = 2450;
                *&buf[28] = 2112;
                *&buf[30] = v29;
                *&buf[38] = 2048;
                *&buf[40] = self;
                LOWORD(v112) = 1024;
                *(&v112 + 2) = v32;
                v33 = v31;
                v34 = "VCAudioStream [%s] %s:%d %@(%p) Telephony calling isLocalCellular=%d";
                v35 = 54;
LABEL_54:
                _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, v35);
              }
            }
          }
        }

        operatingMode = self->super._operatingMode;
        if (operatingMode != 3)
        {
          v40 = 0;
LABEL_59:
          v41 = 0;
          goto LABEL_60;
        }

        v40 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]== 108;
        operatingMode = self->super._operatingMode;
        if (operatingMode != 3)
        {
          goto LABEL_59;
        }

        v41 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]== 111;
        operatingMode = self->super._operatingMode;
LABEL_60:
        v42 = operatingMode == 6 && -[VCAudioPayloadConfig inputSampleRate](-[VCAudioPayload config](self->currentAudioPayload, "config"), "inputSampleRate") == 48000 && [objc_msgSend(v27 "streamConfig")] == 24000;
        if (self->_isVoiceProcessingAt24KSupported)
        {
          rtpHandle = [v27 rtpHandle];
          getRTPTimeStampRateScaleFactor = [(VCAudioStream *)self getRTPTimeStampRateScaleFactor];
          rtpHandle2 = rtpHandle;
        }

        else if (v40 || v42)
        {
          rtpHandle2 = [v27 rtpHandle];
          getRTPTimeStampRateScaleFactor = 1;
        }

        else if (v41 || self->super._operatingMode != 5 && -[VCAudioPayloadConfig payload](-[VCAudioPayload config](self->currentAudioPayload, "config"), "payload") == 119 && -[VCAudioPayloadConfig inputSampleRate](-[VCAudioPayload config](self->currentAudioPayload, "config"), "inputSampleRate") == 24000 && [objc_msgSend(v27 "streamConfig")] == 48000)
        {
          rtpHandle2 = [v27 rtpHandle];
          getRTPTimeStampRateScaleFactor = 2;
        }

        else
        {
          inputSampleRate = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] inputSampleRate];
          rtpHandle2 = [v27 rtpHandle];
          if (inputSampleRate == 32000)
          {
            getRTPTimeStampRateScaleFactor = 3;
          }

          else
          {
            getRTPTimeStampRateScaleFactor = 0;
          }
        }

        RTPSetTimestampRateScale(rtpHandle2, getRTPTimeStampRateScaleFactor);
      }

      v25 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v122 objects:v121 count:16];
    }

    while (v25);
  }

  if (!self->_useExternalIO)
  {
    -[VCAudioStream setupAudioMachineLearningCoordinatorsWithFormat:direction:](self, "setupAudioMachineLearningCoordinatorsWithFormat:direction:", &self->_vpioFormat, [v105 direction]);

    self->_remoteDeviceInfo = objc_alloc_init(VCAudioHALPluginRemoteDeviceInfo);
    -[VCAudioHALPluginRemoteDeviceInfo setDeviceName:](self->_remoteDeviceInfo, "setDeviceName:", [objc_msgSend(v105 "remoteDeviceInfo")]);
    -[VCAudioHALPluginRemoteDeviceInfo setDeviceUID:](self->_remoteDeviceInfo, "setDeviceUID:", [objc_msgSend(v105 "remoteDeviceInfo")]);
    -[VCAudioHALPluginRemoteDeviceInfo setModelUID:](self->_remoteDeviceInfo, "setModelUID:", [objc_msgSend(v105 "remoteDeviceInfo")]);
    v47 = +[VCAudioStream audioIODirectionWithMediaStreamDirection:](VCAudioStream, "audioIODirectionWithMediaStreamDirection:", [v105 direction]);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v67 = VRTraceErrorLogLevelToCSTR();
        v68 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          remoteDeviceInfo = self->_remoteDeviceInfo;
          *buf = 136315906;
          *&buf[4] = v67;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
          *&buf[22] = 1024;
          *&buf[24] = 2478;
          *&buf[28] = 2048;
          *&buf[30] = remoteDeviceInfo;
          v70 = "VCAudioStream [%s] %s:%d configuring remoteDeviceInfo=%p";
          v71 = v68;
          v72 = 38;
LABEL_130:
          _os_log_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_DEFAULT, v70, buf, v72);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v48 = [(VCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v48 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v73 = VRTraceErrorLogLevelToCSTR();
        v74 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v75 = self->_remoteDeviceInfo;
          *buf = 136316418;
          *&buf[4] = v73;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
          *&buf[22] = 1024;
          *&buf[24] = 2478;
          *&buf[28] = 2112;
          *&buf[30] = v48;
          *&buf[38] = 2048;
          *&buf[40] = self;
          LOWORD(v112) = 2048;
          *(&v112 + 2) = v75;
          v70 = "VCAudioStream [%s] %s:%d %@(%p) configuring remoteDeviceInfo=%p";
          v71 = v74;
          v72 = 58;
          goto LABEL_130;
        }
      }
    }

    *&v76 = 0xAAAAAAAAAAAAAAAALL;
    *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v119 = v76;
    v120 = v76;
    *&v117[32] = v76;
    v118 = v76;
    *v117 = v76;
    *&v117[16] = v76;
    *v116 = v76;
    *&v116[16] = v76;
    v114 = v76;
    v115 = v76;
    v112 = v76;
    v113 = v76;
    *&buf[16] = v76;
    *&buf[32] = v76;
    *buf = v76;
    *buf = VCUniqueIDGenerator_GenerateID();
    *&buf[4] = 0;
    deviceRole = self->deviceRole;
    *&buf[8] = self->super._operatingMode;
    *&buf[12] = deviceRole;
    *&buf[16] = +[VCAudioStream audioIOTypeForMode:](VCAudioStream, "audioIOTypeForMode:", [v105 audioStreamMode]);
    *&buf[20] = v47;
    *&buf[24] = self;
    *&buf[32] = self->_clientPid;
    *&buf[36] = 0;
    buf[44] = 0;
    *&v112 = self->super._streamToken;
    DWORD2(v112) = +[VCAudioStream audioChannelCountForMode:](VCAudioStream, "audioChannelCountForMode:", [obja firstObject]);
    streamInputID = [v105 streamInputID];
    streamToken = self->super._streamToken;
    *&v113 = streamInputID;
    *(&v113 + 1) = streamToken;
    *&v114 = [v105 networkClockID];
    WORD4(v114) = 256;
    *&v115 = 0;
    *(&v115 + 1) = VCAudioStream_PullAudioSamples;
    *v116 = &self->_sourceContext;
    memset(&v116[8], 0, 24);
    memset(&v117[8], 0, 40);
    *v117 = self;
    *&v118 = self->_remoteDeviceInfo;
    BYTE8(v118) = -[VCAudioStream networkUplinkClockUsesBaseband:](self, "networkUplinkClockUsesBaseband:", [v105 audioStreamMode]);
    BYTE9(v118) = [v105 audioStreamMode] == 11;
    *&v119 = [v105 processIdentifiersForAudioTap];
    *(&v119 + 1) = [v105 muteBehaviorForAudioTap];
    *&v120 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
    BYTE8(v120) = [(VCAudioStream *)self shouldEnableFixedJitterBufferInitialOvershootResiliency];
    audioIO = self->_audioIO;
    if (audioIO)
    {
      if ([(VCAudioIO *)audioIO reconfigureWithConfig:buf])
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_141;
        }

        v81 = VRTraceErrorLogLevelToCSTR();
        v82 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_141;
        }

        v83 = self->_audioIO;
        v84 = self->super._operatingMode;
        v85 = self->deviceRole;
        *v109 = 136316930;
        *&v109[4] = v81;
        *&v109[12] = 2080;
        *&v109[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
        *&v109[22] = 1024;
        *&v109[24] = 2529;
        *&v109[28] = 2048;
        *&v109[30] = self;
        *&v109[38] = 2048;
        *&v109[40] = v83;
        *&v109[48] = 1024;
        *&v109[50] = v84;
        *&v109[54] = 1024;
        *&v109[56] = v85;
        *&v109[60] = 1024;
        *&v109[62] = v47;
        v86 = "VCAudioStream [%s] %s:%d (%p) reconfigured audioIO=%p operatingMode:%d deviceRole:%d direction:%d";
LABEL_140:
        _os_log_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_DEFAULT, v86, v109, 0x42u);
LABEL_141:
        v110[0] = 0;
        memset(v109, 0, sizeof(v109));
        AUIOGetAUNumber(v110);
        [(VCAudioIO *)self->_audioIO setMuted:self->_isMuted];
        [(VCAudioIO *)self->_audioIO setClientFormat:&self->_vpioFormat];
        [(VCAudioIO *)self->_audioIO setRemoteCodecType:[VCPayloadUtils sampleRate:"audioCodecTypeForPayload:" audioCodecTypeForPayload:?], [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] codecSampleRate]];
        [(VCAudioIO *)self->_audioIO setFarEndVersionInfo:v109];
        goto LABEL_142;
      }

      [(VCAudioStream *)self setAudioIO:0];
    }

    else
    {
      v87 = [[VCAudioIO alloc] initWithConfiguration:buf];
      self->_audioIO = v87;
      if (v87)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_141;
        }

        v88 = VRTraceErrorLogLevelToCSTR();
        v82 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_141;
        }

        v89 = self->_audioIO;
        v90 = self->super._operatingMode;
        v91 = self->deviceRole;
        *v109 = 136316930;
        *&v109[4] = v88;
        *&v109[12] = 2080;
        *&v109[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
        *&v109[22] = 1024;
        *&v109[24] = 2523;
        *&v109[28] = 2048;
        *&v109[30] = self;
        *&v109[38] = 2048;
        *&v109[40] = v89;
        *&v109[48] = 1024;
        *&v109[50] = v90;
        *&v109[54] = 1024;
        *&v109[56] = v91;
        *&v109[60] = 1024;
        *&v109[62] = v47;
        v86 = "VCAudioStream [%s] %s:%d (%p) created audioIO=%p operatingMode:%d deviceRole:%d direction:%d";
        goto LABEL_140;
      }

      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", errorCopy, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStream.m", 2517], @"Failed to create VCAudioIO", @"Invalid config caused VCAudioIO init to fail");
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_161;
        }

        v94 = VRTraceErrorLogLevelToCSTR();
        v95 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_161;
        }

        *v109 = 136315650;
        *&v109[4] = v94;
        *&v109[12] = 2080;
        *&v109[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
        *&v109[22] = 1024;
        *&v109[24] = 2520;
        v96 = "VCAudioStream [%s] %s:%d VCAudioIO initWithConfiguration failed";
        v97 = v95;
        v98 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v93 = [(VCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v93 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_161;
        }

        v99 = VRTraceErrorLogLevelToCSTR();
        v100 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_161;
        }

        *v109 = 136316162;
        *&v109[4] = v99;
        *&v109[12] = 2080;
        *&v109[14] = "[VCAudioStream onConfigureStreamWithConfiguration:error:]";
        *&v109[22] = 1024;
        *&v109[24] = 2520;
        *&v109[28] = 2112;
        *&v109[30] = v93;
        *&v109[38] = 2048;
        *&v109[40] = self;
        v96 = "VCAudioStream [%s] %s:%d %@(%p) VCAudioIO initWithConfiguration failed";
        v97 = v100;
        v98 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v97, OS_LOG_TYPE_DEFAULT, v96, v109, v98);
    }

LABEL_161:
    LOBYTE(setupPayloads) = 0;
    return setupPayloads;
  }

LABEL_142:
  self->_sourceContext.isSendOnly = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] direction]== 1;
  self->_sourceContext.shouldPostProcessSamples = self->super._operatingMode != 6;
  [(VCMediaStream *)self registerMediaControlInfoGeneratorWithConfigs:obja];
  if (![(VCAudioStream *)self createAudioReceiver])
  {
    [(VCAudioStream *)self setAudioIO:0];
LABEL_160:
    [(VCMediaStream *)self unregisterMediaControlInfoGenerator];
    goto LABEL_161;
  }

  if ((-[VCAudioStream shouldCreateReceiveSideTransmitter](self, "shouldCreateReceiveSideTransmitter") || -[VCMediaStream isSendingMedia](self, "isSendingMedia")) && !-[VCAudioStream createAudioTransmitter:streamIDs:](self, "createAudioTransmitter:streamIDs:", [v105 audioStreamMode], -[VCAudioStream streamIDsFromTransport](self, "streamIDsFromTransport")))
  {
    [(VCAudioStream *)self setAudioIO:0];
    VCAudioReceiver_Finalize(&self->_sourceContext.audioReceiver->var0.var0);
    self->_sourceContext.audioReceiver = 0;
    goto LABEL_160;
  }

  if (self->_constantTransportOverhead && self->super._operatingMode == 6)
  {
    [(VCMediaStream *)self updateTransportsWithConstantConnectionOverhead:?];
  }

  if (!self->_isTelephony)
  {
    goto LABEL_152;
  }

  v92 = -[VCTelephonyInterface initWithTelephonySubscriptionSlot:]([VCTelephonyInterface alloc], "initWithTelephonySubscriptionSlot:", [v105 subscriptionSlot]);
  self->_telephonyInterface = v92;
  if (v92)
  {
    [(VCTelephonyInterface *)v92 setDelegate:self];
LABEL_152:
    if ([VCAudioStream isVoLTE:[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] audioStreamMode]])
    {
      [(VCAudioStream *)self configureCellularFeatures];
    }

    [(VCTransportSession *)self->super._transportSession setShouldIgnoreConnectionRefusedError:self->_isTelephony];
    LOBYTE(setupPayloads) = 1;
    return setupPayloads;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioStream onConfigureStreamWithConfiguration:error:];
    }
  }

  [(VCAudioStream *)self setAudioIO:0];
  VCAudioReceiver_Finalize(&self->_sourceContext.audioReceiver->var0.var0);
  self->_sourceContext.audioReceiver = 0;
  [(VCMediaStream *)self unregisterMediaControlInfoGenerator];

  LOBYTE(setupPayloads) = 0;
  self->_audioTransmitter = 0;
  return setupPayloads;
}

- (void)onStartWithCompletionHandler:(id)handler
{
  v6[6] = *MEMORY[0x1E69E9840];
  [(VCAudioStream *)self prepareAudio];
  if ([(VCAudioStream *)self shouldResetRTPTimestampOnStart])
  {
    self->lastSentAudioSampleTime = 0;
    self->lastInputAudioTimeStamp = 0;
    self->dAudioHostTime = 0.0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__VCAudioStream_onStartWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E85F5518;
  v6[4] = self;
  v6[5] = handler;
  [(VCAudioStream *)self startAudioWithCompletionHandler:v6];
  if ([(VCAudioStream *)self shouldRegisterReportingPeriodicTask])
  {
    [(VCAudioStream *)self setupPeriodicReporting];
  }

  operatingMode = self->super._operatingMode;
  if ((operatingMode - 1) < 2)
  {
    goto LABEL_8;
  }

  if (operatingMode != 6)
  {
    [(VCMediaStream *)self registerAggregationHandlers];
LABEL_8:
    [(VCObject *)self reportingAgent];
    reportingStartTimer();
  }

  [(VCAudioStream *)self reportingAudioStreamEvent:182];
  self->_sourceContext.delegate = [(VCMediaStream *)self delegate];
  self->_sourceContext.delegateFunctions.updateFrequencyLevel = [(VCMediaStream *)self delegateFunctions];
  self->_sourceContext.momentsCollectorDelegate = [(VCMediaStream *)self momentsCollectorDelegate];
  [objc_msgSend(objc_msgSend(-[VCMediaStreamConfig codecConfigurations](-[VCMediaStream defaultStreamConfig](self "defaultStreamConfig")];
  [(VCAudioStream *)self preferredAudioBitrateForPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]];
  [(VCObject *)self reportingAgent];
  [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload];
  [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] codecSampleRate];
  reportingAudioStreamLogCallStart();
  [(VCMediaStream *)self registerStatistics:self->_statsCollector];
}

uint64_t __46__VCAudioStream_onStartWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) reportingAgent];
    reportingSymptom();
    VCMediaStream_Lock(*(a1 + 32));
    [*(a1 + 32) cleanupAudio];
    VCMediaStream_Unlock(*(a1 + 32));
  }

  if ([*(a1 + 32) isVoLTERateAdaptationEnabled])
  {
    [*(*(a1 + 32) + 720) start];
  }

  v3 = *(a1 + 32);
  if (*(v3 + 1776) == 1)
  {
    v4 = VCPayloadUtils_AudioCodecRateModeForBitrate([objc_msgSend(*(v3 + 1232) "currentAudioPayloadConfig")], objc_msgSend(objc_msgSend(*(*(a1 + 32) + 1232), "currentAudioPayloadConfig"), "bitrate"));
    v5 = VCPayloadUtils_DefaultAudioCodecBandwidthCodecForSampleRate([objc_msgSend(*(*(a1 + 32) + 1232) "currentAudioPayloadConfig")]);
    v6 = [objc_msgSend(*(*(a1 + 32) + 1232) "currentAudioPayloadConfig")];
    v7 = [objc_msgSend(*(*(a1 + 32) + 1232) "currentAudioPayloadConfig")];
    v8 = *(*(a1 + 32) + 1248);
    v14[0] = v6;
    v14[1] = v4;
    v14[2] = v5;
    v14[3] = v7;
    v15 = 0;
    [v8 notifyCodecModeChangeEventToCT:v14];
    v9 = *(a1 + 32) + 1620;
    *v9 = v6;
    *(v9 + 4) = v4;
    *(v9 + 8) = v5;
    *(v9 + 12) = v7;
    *(v9 + 16) = 0;
    v10 = *(a1 + 32);
    if (*(v10 + 1616) == 1)
    {
      v11 = *(v10 + 1248);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __46__VCAudioStream_onStartWithCompletionHandler___block_invoke_2;
      v13[3] = &unk_1E85F54F0;
      v13[4] = v10;
      [v11 getAnbrActivationStateWithCompletionHandler:v13];
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void __46__VCAudioStream_onStartWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v4;
        v8 = 2080;
        v9 = "[VCAudioStream onStartWithCompletionHandler:]_block_invoke_2";
        v10 = 1024;
        v11 = 2711;
        v12 = 2112;
        v13 = a3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d VCTelephonyInterface returned error=%@", &v6, 0x26u);
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 1617) = a2;
  }
}

- (void)onStopWithCompletionHandler:(id)handler
{
  v5[6] = *MEMORY[0x1E69E9840];
  if (self->_isTelephony)
  {
    VCAudioTransmitter_ReportAWDMetrics([(VCAudioStream *)self audioTransmitter]);
    VCAudioReceiver_ReportAWDMetrics(&self->_sourceContext.audioReceiver->var0.var0);
  }

  [(VCObject *)self reportingAgent];
  reportingAudioStreamLogCallEnd();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__VCAudioStream_onStopWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E85F5518;
  v5[4] = self;
  v5[5] = handler;
  [(VCAudioStream *)self stopAudioWithCompletionHandler:v5];
}

uint64_t __45__VCAudioStream_onStopWithCompletionHandler___block_invoke(uint64_t a1)
{
  VCMediaStream_Lock(*(a1 + 32));
  [*(a1 + 32) cleanupAudio];
  [*(*(a1 + 32) + 720) stop];
  [objc_msgSend(*(a1 + 32) "audioTransmitter")];
  if ([*(a1 + 32) shouldRegisterReportingPeriodicTask])
  {
    [*(a1 + 32) reportingAgent];
    reportingUnregisterPeriodicTask();
  }

  if ([*(a1 + 32) shouldStopReportingTimer])
  {
    [*(a1 + 32) reportingAgent];
    reportingStopTimer();
  }

  [*(a1 + 32) reportingAlgosAudioStreamEvent:2];
  [*(a1 + 32) reportingAudioStreamEvent:183];
  VCMediaStream_Unlock(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)onPauseWithCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __46__VCAudioStream_onPauseWithCompletionHandler___block_invoke;
  v10 = &unk_1E85F5518;
  selfCopy = self;
  handlerCopy = handler;
  v4 = [v8 copy];
  if (self->super._operatingMode == 6)
  {
    [(VCAudioTransmitter *)[(VCAudioStream *)self audioTransmitter] setPeriodicReportingEnabled:0];
    (v9)(v8, 1, 0);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIO = self->_audioIO;
        *buf = 136316162;
        v14 = v5;
        v15 = 2080;
        v16 = "[VCAudioStream onPauseWithCompletionHandler:]";
        v17 = 1024;
        v18 = 2792;
        v19 = 2048;
        selfCopy2 = self;
        v21 = 2048;
        v22 = audioIO;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d (%p) pausing audioIO=%p", buf, 0x30u);
      }
    }

    [(VCAudioIO *)self->_audioIO stopWithCompletionHandler:v8];
  }
}

uint64_t __46__VCAudioStream_onPauseWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  VCMediaStream_Lock(*(a1 + 32));
  if ((a2 & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __46__VCAudioStream_onPauseWithCompletionHandler___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) reportingAudioStreamEvent:184];
  [*(a1 + 32) reportingAlgosAudioStreamEvent:2];
  VCMediaStream_Unlock(*(a1 + 32));
  return (*(*(a1 + 40) + 16))();
}

- (void)onResumeWithCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  transportArray = self->super._transportArray;
  v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(transportArray);
        }

        [*(*(&v30 + 1) + 8 * i) reset];
      }

      v7 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v7);
  }

  VCAudioReceiver_Reset(self->_sourceContext.audioReceiver);
  [(VCPacketBundler *)[(VCAudioTransmitter *)self->_audioTransmitter audioBundler] resetBuffer];
  [(VCPacketBundler *)[(VCAudioTransmitter *)self->_audioTransmitter audioBundlerShortRED] resetBuffer];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __47__VCAudioStream_onResumeWithCompletionHandler___block_invoke;
  v16 = &unk_1E85F5518;
  selfCopy = self;
  handlerCopy = handler;
  if (self->super._operatingMode == 6)
  {
    [(VCAudioTransmitter *)[(VCAudioStream *)self audioTransmitter:v13] setPeriodicReportingEnabled:1];
    (v15)(&v13, 1, 0);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIO = self->_audioIO;
        *buf = 136316162;
        v20 = v10;
        v21 = 2080;
        v22 = "[VCAudioStream onResumeWithCompletionHandler:]";
        v23 = 1024;
        v24 = 2823;
        v25 = 2048;
        selfCopy2 = self;
        v27 = 2048;
        v28 = audioIO;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d (%p) resume audioIO=%p", buf, 0x30u);
      }
    }

    [(VCAudioIO *)self->_audioIO startWithCompletionHandler:&v13];
  }
}

uint64_t __47__VCAudioStream_onResumeWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  VCMediaStream_Lock(*(a1 + 32));
  if ((a2 & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __47__VCAudioStream_onResumeWithCompletionHandler___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) reportingAudioStreamEvent:185];
  [*(a1 + 32) reportingAlgosAudioStreamEvent:0];
  VCMediaStream_Unlock(*(a1 + 32));
  return (*(*(a1 + 40) + 16))();
}

- (void)onRTCPTimeout
{
  if (self->super._operatingMode == 11)
  {
    [(VCAudioStream *)self reportingAudioStreamEvent:242];
  }
}

- (void)onSendRTCPPacket
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  memset(__b, 170, sizeof(__b));
  memset(v11, 170, sizeof(v11));
  v9 = 35;
  v3 = [(VCAudioStream *)self generateRTCPXRSummaryReports:__b reportCount:&v9];
  v4 = v9;
  if (v3)
  {
    *&v16 = __b;
    BYTE8(v16) = v9;
    v13[0] = 256;
  }

  if (v9)
  {
    v5 = &__b[14];
    v6 = &v11[30];
    do
    {
      *(v6 - 2) = *(v5 - 2);
      v5 += 44;
      v6 += 32;
      --v4;
    }

    while (v4);
  }

  v9 = 35;
  if ([(VCAudioStream *)self generateRTCPXRVoIPMetricsReports:v11 reportCount:&v9])
  {
    *&v17 = v11;
    BYTE8(v17) = v9;
    v13[0] = 256;
  }

  memset(v10, 170, sizeof(v10));
  rtcpReportProvider = self->super._rtcpReportProvider;
  if (rtcpReportProvider)
  {
    v9 = 35;
    [-[VCWeakObjectHolder strong](rtcpReportProvider "strong")];
    if (v9)
    {
      *(&v14 + 1) = v10;
      LOBYTE(v15) = v9;
    }
  }

  [(VCMediaStream *)self sendControlPacketWithParameters:v13];
  audioTransmitter = self->_audioTransmitter;
  if (audioTransmitter)
  {
    [(VCAudioTransmitter *)audioTransmitter reportRTCPPacket];
  }
}

- (void)setTargetStreamID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(NSNumber *)self->_targetStreamID isEqualToNumber:?])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315906;
          v18 = v5;
          v19 = 2080;
          v20 = "[VCAudioStream setTargetStreamID:]";
          v21 = 1024;
          v22 = 2897;
          v23 = 2112;
          dCopy2 = d;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d TargetStreamID didn't change %@", &v17, 0x26u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [VCAudioStream setTargetStreamID:];
      }
    }

    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v17 = 136315906;
    v18 = v9;
    v19 = 2080;
    v20 = "[VCAudioStream setTargetStreamID:]";
    v21 = 1024;
    v22 = 2900;
    v23 = 2112;
    dCopy2 = d;
    v11 = "VCAudioStream [%s] %s:%d Setting target stream id: %@";
    v12 = v10;
    v13 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v17 = 136316418;
    v18 = v14;
    v19 = 2080;
    v20 = "[VCAudioStream setTargetStreamID:]";
    v21 = 1024;
    v22 = 2900;
    v23 = 2112;
    dCopy2 = v8;
    v25 = 2048;
    selfCopy = self;
    v27 = 2112;
    dCopy3 = d;
    v11 = "VCAudioStream [%s] %s:%d %@(%p) Setting target stream id: %@";
    v12 = v15;
    v13 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
LABEL_17:

  self->_targetStreamID = d;
  VCMediaStream_Lock(self);
  audioReceiver = self->_sourceContext.audioReceiver;
  if (audioReceiver)
  {
    VCAudioReceiver_SetTargetStreamID(audioReceiver, [d unsignedShortValue]);
  }

  VCMediaStream_Unlock(self);
}

- (void)setupPeriodicReporting
{
  if ([(VCObject *)self reportingAgent])
  {
    [(VCObject *)self reportingAgent];

    reportingRegisterPeriodicTaskWeak();
  }
}

uint64_t __39__VCAudioStream_setupPeriodicReporting__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  VCMediaStream_Lock(a2);
  if ([a2 state] == 2)
  {
    [a2 gatherRealtimeStats:a3];
  }

  return VCMediaStream_Unlock(a2);
}

- (void)setupReportingAgent:(id)agent
{
  self->super._isReportingAgentOwner = 1;
  getReportingClientType = [(VCAudioStream *)self getReportingClientType];
  -[VCMediaStream applyClientSessionID:clientUserInfo:](self, "applyClientSessionID:clientUserInfo:", getReportingClientType, [MEMORY[0x1E695DF90] dictionary]);
  [(VCAudioStream *)self getReportingClientName];
  [(VCAudioStream *)self getReportingServiceID];
  Agent = reportingCreateAgent();
  [(VCObject *)self setReportingAgent:Agent];
  if (Agent)
  {
    CFRelease(Agent);
  }

  [(VCObject *)self reportingAgent];
  self->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
  [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  [(VCObject *)self reportingAgent];
  [(VCAudioStream *)self getReportingClientName];
  [(VCAudioStream *)self getReportingServiceID];
  [(VCAudioStream *)self getClientSpecificUserInfo:agent];
  reportingSetUserInfo();
}

void __37__VCAudioStream_setupReportingAgent___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (![a2 count])
  {
    [*(a1 + 32) strong];
    v3 = objc_opt_class();
    if (v3 == [*(a1 + 32) strong])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __37__VCAudioStream_setupReportingAgent___block_invoke_cold_1();
        }
      }
    }

    else
    {
      [*(a1 + 32) strong];
      if (objc_opt_respondsToSelector())
      {
        v4 = [objc_msgSend(*(a1 + 32) "strong")];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = [*(a1 + 32) strong];
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "[VCAudioStream setupReportingAgent:]_block_invoke";
          v12 = 1024;
          v13 = 2968;
          v14 = 2112;
          v15 = v4;
          v16 = 2048;
          v17 = v7;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %@(%p) Reporting not available (no backends)", &v8, 0x30u);
        }
      }
    }
  }
}

- (__CFDictionary)getClientSpecificUserInfo:(id)info
{
  v25 = *MEMORY[0x1E69E9840];
  if (-[VCAudioStream isStandaloneStreamClientSpecificUserInfoSupported](self, "isStandaloneStreamClientSpecificUserInfoSupported") && [info count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->super._streamToken), @"VCVSStreamToken"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(objc_msgSend(info, "objectAtIndexedSubscript:", 0), "direction")), @"VCMSDirection"}];
    callID = self->super._callID;
    if (callID)
    {
      [dictionary setObject:callID forKeyedSubscript:@"CallID"];
    }

    [(VCMediaStream *)self applyClientSessionID:[(VCAudioStream *)self getReportingClientType] clientUserInfo:dictionary];
  }

  else if (self->super._operatingMode == 6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [info countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(info);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [objc_msgSend(v12 "multiwayConfig")];
          v14 = MEMORY[0x1E696AD98];
          multiwayConfig = [v12 multiwayConfig];
          if (v13)
          {
            v16 = [v14 numberWithUnsignedShort:{objc_msgSend(multiwayConfig, "idsStreamID")}];
          }

          else
          {
            v16 = [v14 numberWithUnsignedInt:{objc_msgSend(multiwayConfig, "streamGroupID")}];
          }

          [v7 addObject:v16];
        }

        v9 = [info countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v9);
    }

    v17 = [info objectAtIndexedSubscript:0];
    [objc_msgSend(v17 "multiwayConfig")];
    v18 = reportingStreamGroupFromStreamGroupID();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:objc_msgSend(objc_msgSend(v17 forKeyedSubscript:{"multiwayConfig"), "sessionId"), @"VCSUUID"}];
    [dictionary setObject:objc_msgSend(objc_msgSend(v17 forKeyedSubscript:{"multiwayConfig"), "participantId"), @"VCSPUUID"}];
    [dictionary setObject:objc_msgSend(v7 forKeyedSubscript:{"componentsJoinedByString:", @", "), @"VCASStreamIDs"}];
    [dictionary setObject:objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(v17, "direction")), "stringValue"), @"VCMSDirection"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v18), @"VCMSStreamGroup"}];
    [(VCMediaStream *)self applyClientSessionID:[(VCAudioStream *)self getReportingClientType] clientUserInfo:dictionary];
  }

  else
  {
    return 0;
  }

  return dictionary;
}

- (int)getReportingClientType
{
  operatingMode = self->super._operatingMode;
  result = -1;
  if (operatingMode <= 5)
  {
    if (operatingMode == 3)
    {
      return 1;
    }

    else if (operatingMode == 5)
    {
      return 2;
    }
  }

  else
  {
    switch(operatingMode)
    {
      case 6:
        return 4;
      case 11:
        if ([(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E6986740]])
        {
          return 17;
        }

        else
        {
          return 11;
        }

      case 12:
        if ([(NSString *)self->super._clientName isEqualToString:@"CoreDeviceScreenSharing"]|| [(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E6986770]])
        {
          return 14;
        }

        else if ([(NSString *)self->super._clientName isEqualToString:@"RemoteDesktopScreenSharing"]|| [(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E69866E8]])
        {
          return 18;
        }

        else if ([(NSString *)self->super._clientName isEqualToString:@"NearbyScreenSharing"])
        {
          return 20;
        }

        else if ([(NSString *)self->super._clientName isEqualToString:@"SidecarSharing"])
        {
          return 22;
        }

        else if ([(NSString *)self->super._clientName isEqualToString:@"CompositorServices"])
        {
          return 23;
        }

        else if ([(NSString *)self->super._clientName isEqualToString:@"ImmersiveMediaSupport"])
        {
          return 25;
        }

        else
        {
          return -1;
        }
    }
  }

  return result;
}

- (__CFString)getReportingClientName
{
  operatingMode = self->super._operatingMode;
  v3 = &stru_1F570E008;
  if (operatingMode > 7)
  {
    if (operatingMode != 8)
    {
      if (operatingMode == 11)
      {
        v6 = MEMORY[0x1E6986740];
        if (![(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E6986740]])
        {
          v4 = MEMORY[0x1E6986760];
          return *v4;
        }

        return *v6;
      }

      if (operatingMode != 12)
      {
        return v3;
      }

      if ([(NSString *)self->super._clientName isEqualToString:@"CoreDeviceScreenSharing"])
      {
        v4 = MEMORY[0x1E6986700];
        return *v4;
      }

      v7 = MEMORY[0x1E6986770];
      if ([(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E6986770]])
      {
        return *v7;
      }

      if ([(NSString *)self->super._clientName isEqualToString:@"RemoteDesktopScreenSharing"])
      {
        v4 = MEMORY[0x1E6986758];
        return *v4;
      }

      if ([(NSString *)self->super._clientName isEqualToString:@"NearbyScreenSharing"])
      {
        v4 = MEMORY[0x1E6986738];
        return *v4;
      }

      if (![(NSString *)self->super._clientName isEqualToString:@"SidecarSharing"])
      {
        v7 = MEMORY[0x1E69866E8];
        if (![(NSString *)self->super._clientName isEqualToString:*MEMORY[0x1E69866E8]])
        {
          if ([(NSString *)self->super._clientName isEqualToString:@"CompositorServices"])
          {
            v4 = MEMORY[0x1E69866F0];
            return *v4;
          }

          if ([(NSString *)self->super._clientName isEqualToString:@"ImmersiveMediaSupport"])
          {
            return *MEMORY[0x1E6986728];
          }

          return v3;
        }

        return *v7;
      }
    }

    v4 = MEMORY[0x1E6986778];
    return *v4;
  }

  switch(operatingMode)
  {
    case 3:
      v4 = MEMORY[0x1E6986798];
      return *v4;
    case 5:
      v4 = MEMORY[0x1E6986718];
      return *v4;
    case 6:
      v4 = MEMORY[0x1E6986730];
      return *v4;
  }

  return v3;
}

- (id)getReportingServiceID
{
  operatingMode = self->super._operatingMode;
  result = &stru_1F570E008;
  if (operatingMode <= 0xC)
  {
    if (((1 << operatingMode) & 0x1848) != 0)
    {
      return @"Audio";
    }

    else if (operatingMode == 5)
    {
      return *MEMORY[0x1E6986720];
    }
  }

  return result;
}

- (void)reportTimestampJumpsWithReportingDictionary:(__CFDictionary *)dictionary
{
  v4 = MEMORY[0x1E696AD98];
  p_periodicReportingMetrics = &self->_periodicReportingMetrics;
  atomic_exchange(&self->_periodicReportingMetrics.timestampJumpDuration, 0);
  CFDictionaryAddValue(dictionary, @"VCASTimestampJumpDuration", [v4 numberWithUnsignedLong:?]);
  v6 = MEMORY[0x1E696AD98];
  atomic_exchange(p_periodicReportingMetrics, 0);
  CFDictionaryAddValue(dictionary, @"VCASTimestampJumpCount", [v6 numberWithUnsignedInt:?]);
  v7 = MEMORY[0x1E696AD98];
  v8 = atomic_load(&p_periodicReportingMetrics->timestampJumpMax);
  v9 = [v7 numberWithUnsignedLong:v8];

  CFDictionaryAddValue(dictionary, @"VCASTimestampJumpMax", v9);
}

- (void)gatherRealtimeStats:(__CFDictionary *)stats
{
  reportingStats = [(VCAudioIO *)self->_audioIO reportingStats];
  if (reportingStats)
  {
    VCUtil_AppendFromDictionary(stats, reportingStats);
  }

  [(VCAudioStream *)self reportTimestampJumpsWithReportingDictionary:stats];

  [(VCMediaStream *)self collectChannelSequenceMetrics:stats];
}

- (void)updateCodecPayloadAndBitrateForStartEvent:(int *)event bitrate:(unsigned int *)bitrate
{
  v30 = *MEMORY[0x1E69E9840];
  if (event)
  {
    if (bitrate)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = self->super._transportArray;
      v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v17)
      {
        v16 = *v27;
        do
        {
          v5 = 0;
          do
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = v5;
            streamConfig = [*(*(&v26 + 1) + 8 * v5) streamConfig];
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v7 = [objc_msgSend(streamConfig "allCodecConfigurations")];
            v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v22;
              do
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v22 != v10)
                  {
                    objc_enumerationMutation(v7);
                  }

                  v12 = *(*(&v21 + 1) + 8 * i);
                  v13 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [v12 codecType]);
                  v14 = +[VCPayloadUtils bitrateForCodecType:mode:](VCPayloadUtils, "bitrateForCodecType:mode:", [v12 codecType], objc_msgSend(v12, "preferredMode"));
                  if (v14 > *bitrate)
                  {
                    *bitrate = v14;
                    *event = v13;
                  }
                }

                v9 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
              }

              while (v9);
            }

            v5 = v18 + 1;
          }

          while (v18 + 1 != v17);
          v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v25 count:16];
        }

        while (v17);
      }
    }

    else
    {
      [VCAudioStream updateCodecPayloadAndBitrateForStartEvent:? bitrate:?];
    }
  }

  else
  {
    [VCAudioStream updateCodecPayloadAndBitrateForStartEvent:? bitrate:?];
  }
}

- (void)addStreamStartingMetricsToReport:(const __CFDictionary *)report
{
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  CFDictionaryAddValue(report, @"VCASMaxNetworkBitRate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCMediaStreamMultiwayConfig maxNetworkBitrate](-[VCMediaStreamConfig multiwayConfig](defaultStreamConfig, "multiwayConfig"), "maxNetworkBitrate")}]);
  if ([(VCAudioStream *)self isStandaloneStreamClientSpecificUserInfoSupported])
  {
    CFDictionaryAddValue(report, @"VCVSStreamToken", [MEMORY[0x1E696AD98] numberWithInteger:self->super._streamToken]);
    CFDictionaryAddValue(report, @"VCMSDirection", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStreamConfig direction](defaultStreamConfig, "direction")}]);
    callID = self->super._callID;
    if (callID)
    {
      CFDictionaryAddValue(report, @"CallID", callID);
    }

    remoteEndpointInfo = self->super._remoteEndpointInfo;
    if (remoteEndpointInfo)
    {
      CFDictionaryAddValue(report, @"VCVSRemoteDeviceModel", [(VCCallInfoBlob *)remoteEndpointInfo deviceType]);
      osVersion = [(VCCallInfoBlob *)self->super._remoteEndpointInfo osVersion];
      v9 = @"VCVSRemoteOSBuildVersion";
LABEL_8:
      CFDictionaryAddValue(report, v9, osVersion);
    }
  }

  else if (self->super._operatingMode == 3)
  {
    osVersion = [MEMORY[0x1E696AD98] numberWithBool:{-[VCMediaStreamConfig outOfProcessCodecsEnabled](defaultStreamConfig, "outOfProcessCodecsEnabled")}];
    v9 = @"VCMSOOPCodecs";
    goto LABEL_8;
  }

  if ([(VCMediaStreamConfig *)defaultStreamConfig remoteEndpoints]&& [(NSArray *)[(VCMediaStreamConfig *)defaultStreamConfig remoteEndpoints] count])
  {
    CFDictionaryAddValue(report, @"RemoteEndpoints", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](-[VCMediaStreamConfig remoteEndpoints](defaultStreamConfig, "remoteEndpoints"), "count")}]);
  }

  v10 = [VCAudioStream audioChannelCountForMode:defaultStreamConfig];
  if ([(VCMediaStreamConfig *)defaultStreamConfig direction]== 1 || [(VCMediaStreamConfig *)defaultStreamConfig direction]== 3)
  {
    CFDictionaryAddValue(report, @"ATCC", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10]);
  }

  if ([(VCMediaStreamConfig *)defaultStreamConfig direction]== 2 || [(VCMediaStreamConfig *)defaultStreamConfig direction]== 3)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];

    CFDictionaryAddValue(report, @"ARCC", v11);
  }
}

- (void)reportingAudioStreamEvent:(unsigned __int16)event
{
  eventCopy = event;
  v13 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  payload = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload];
  HIDWORD(v12) = payload;
  LODWORD(v12) = [(VCAudioPayload *)self->currentAudioPayload bitrate];
  if (self->super._operatingMode == 6)
  {
    direction = [(VCMediaStreamConfig *)defaultStreamConfig direction];
    if (eventCopy == 182 && direction == 1)
    {
      [(VCAudioStream *)self updateCodecPayloadAndBitrateForStartEvent:&v12 + 4 bitrate:&v12];
LABEL_8:
      [(VCAudioStream *)self addStreamStartingMetricsToReport:Mutable, v12, v13];
      CFDictionaryAddValue(Mutable, @"VCMSConnectionType", [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->super._connectionType]);
      payload = HIDWORD(v12);
      goto LABEL_9;
    }
  }

  if (eventCopy != 187)
  {
    if (eventCopy == 183)
    {
      endReason = [(VCMediaStream *)self endReason];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:endReason];
      v10 = @"VCMSEndReason";
      goto LABEL_11;
    }

    if (eventCopy != 182)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_9:
  CFDictionaryAddValue(Mutable, @"VCASCurrentPayload", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{payload, v12}]);
  CFDictionaryAddValue(Mutable, @"VCASCodecBitRate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12]);
  CFDictionaryAddValue(Mutable, @"VCASRedundancyLevel", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCAudioTransmitter redNumPayloads](self->_audioTransmitter, "redNumPayloads")}]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCAudioTransmitter redMaxDelay20ms](self->_audioTransmitter, "redMaxDelay20ms")}];
  v10 = @"VCASRedundancyDelay";
LABEL_11:
  CFDictionaryAddValue(Mutable, v10, v9);
LABEL_12:
  [(VCObject *)self reportingAgent];
  reportingAudioStreamEvent();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

- (void)reportingAlgosAudioStreamEvent:(unsigned __int16)event
{
  defaultStreamConfig = [(VCMediaStream *)self defaultStreamConfig];
  if (self->super._operatingMode == 6)
  {
    v5 = defaultStreamConfig;
    if ([(VCMediaStreamConfig *)defaultStreamConfig direction]== 2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"VCSPUUID", [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)v5 multiwayConfig] participantId]);
      [(VCObject *)self reportingAgent];
      reportingGenericEvent();
      if (Mutable)
      {

        CFRelease(Mutable);
      }
    }
  }
}

- (int)getConnectionTypeForStreamMode:(int64_t)mode
{
  result = -1;
  if (mode > 2)
  {
    if (mode != 3)
    {
      if (mode == 10 || mode == 7)
      {
        return 2;
      }

      return result;
    }

    return 3;
  }

  if (mode)
  {
    if (mode != 1)
    {
      return result;
    }

    return 3;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioStream getConnectionTypeForStreamMode:];
    }
  }

  return -1;
}

- (void)addSyncSourceDelegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = _VCAudioStream_NewSyncDelegateEvent(0, self, delegate);
  v12 = v5;
  VCMediaStream_Lock(self);
  os_unfair_lock_lock(&self->_delegateLock);
  CFArrayAppendValue(self->_syncSourceDelegates, delegate);
  state = [(VCMediaStream *)self state];
  if (state != 2)
  {
    _VCAudioStream_RegisterSyncDelegateEvent(self, v5);
LABEL_7:
    if (self->super._operatingMode != 5)
    {
      VCMediaStreamSyncSourceDelegate_updateSourceState(delegate, state != 2);
    }

    os_unfair_lock_unlock(&self->_delegateLock);

    VCMediaStream_Unlock(self);
    return;
  }

  v7 = CMSimpleQueueEnqueue(self->_syncSourceDelegateQueue, v5);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioStream addSyncSourceDelegate:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCAudioStream addSyncSourceDelegate:]";
        v17 = 1024;
        v18 = 3452;
        v19 = 2112;
        v20 = v9;
        v21 = 2048;
        selfCopy = self;
        v23 = 1024;
        v24 = v8;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %@(%p) CMSimpleQueueEnqueue enqueue failed with error=%d", buf, 0x36u);
      }
    }
  }

  _VCAudioStream_ReleaseSyncDelegateEvent(&v12, 1);
  os_unfair_lock_unlock(&self->_delegateLock);
  VCMediaStream_Unlock(self);
  [(VCAudioStream *)self waitIdleForSyncSourceDelegates];
}

- (void)removeSyncSourceDelegate:(id)delegate
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = _VCAudioStream_NewSyncDelegateEvent(1, self, delegate);
  v15 = v5;
  VCMediaStream_Lock(self);
  os_unfair_lock_lock(&self->_delegateLock);
  if ([(VCMediaStream *)self state]!= 2)
  {
    _VCAudioStream_DeregisterSyncDelegateEvent(self, v5);
    goto LABEL_7;
  }

  v6 = CMSimpleQueueEnqueue(self->_syncSourceDelegateQueue, v5);
  if (!v6)
  {
LABEL_7:
    v9 = 1;
    goto LABEL_16;
  }

  v7 = v6;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioStream removeSyncSourceDelegate:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v17 = v10;
        v18 = 2080;
        v19 = "[VCAudioStream removeSyncSourceDelegate:]";
        v20 = 1024;
        v21 = 3479;
        v22 = 2112;
        v23 = v8;
        v24 = 2048;
        selfCopy = self;
        v26 = 1024;
        v27 = v7;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d %@(%p) CMSimpleQueueEnqueue enqueue failed with error=%d", buf, 0x36u);
      }
    }
  }

  _VCAudioStream_ReleaseSyncDelegateEvent(&v15, 1);
  v9 = 0;
LABEL_16:
  Count = CFArrayGetCount(self->_syncSourceDelegates);
  v13 = (Count - 1);
  if (Count - 1 >= 0)
  {
    do
    {
      if (CFArrayGetValueAtIndex(self->_syncSourceDelegates, v13) == delegate)
      {
        CFArrayRemoveValueAtIndex(self->_syncSourceDelegates, v13);
      }
    }

    while (v13-- > 0);
  }

  VCMediaStreamSyncSourceDelegate_updateSourceState(delegate, 1);
  os_unfair_lock_unlock(&self->_delegateLock);
  VCMediaStream_Unlock(self);
  if ((v9 & 1) == 0)
  {
    [(VCAudioStream *)self waitIdleForSyncSourceDelegates];
  }
}

- (void)waitIdleForSyncSourceDelegates
{
  v32 = *MEMORY[0x1E69E9840];
  if (![VCDefaults BOOLeanValueForKey:@"skipAudioManagerIdleWait" defaultValue:0])
  {
    v4 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(self->_runLock, v4))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_25;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v20 = 136315650;
        v21 = v13;
        v22 = 2080;
        v23 = "[VCAudioStream waitIdleForSyncSourceDelegates]";
        v24 = 1024;
        v25 = 3509;
        v15 = "VCAudioStream [%s] %s:%d Sink run lock semaphore was not signaled!";
        v16 = v14;
        v17 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [(VCAudioStream *)self performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_25;
        }

        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v20 = 136316162;
        v21 = v18;
        v22 = 2080;
        v23 = "[VCAudioStream waitIdleForSyncSourceDelegates]";
        v24 = 1024;
        v25 = 3509;
        v26 = 2112;
        v27 = v5;
        v28 = 2048;
        selfCopy2 = self;
        v15 = "VCAudioStream [%s] %s:%d %@(%p) Sink run lock semaphore was not signaled!";
        v16 = v19;
        v17 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
    }

LABEL_25:
    dispatch_semaphore_signal(self->_runLock);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315906;
        v21 = v6;
        v22 = 2080;
        v23 = "[VCAudioStream waitIdleForSyncSourceDelegates]";
        v24 = 1024;
        v25 = 3503;
        v26 = 2112;
        v27 = @"skipAudioManagerIdleWait";
        v8 = "VCAudioStream [%s] %s:%d %@ set. Skipping idle wait";
        v9 = v7;
        v10 = 38;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v20, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136316418;
        v21 = v11;
        v22 = 2080;
        v23 = "[VCAudioStream waitIdleForSyncSourceDelegates]";
        v24 = 1024;
        v25 = 3503;
        v26 = 2112;
        v27 = v3;
        v28 = 2048;
        selfCopy2 = self;
        v30 = 2112;
        v31 = @"skipAudioManagerIdleWait";
        v8 = "VCAudioStream [%s] %s:%d %@(%p) %@ set. Skipping idle wait";
        v9 = v12;
        v10 = 58;
        goto LABEL_16;
      }
    }
  }
}

- (void)registerCodecRateModeChangeNotifications
{
  v4 = *MEMORY[0x1E69E9840];
  *&v2 = self;
  *(&v2 + 1) = MEMORY[0x1E695D7C8];
  v3 = MEMORY[0x1E695D7C0];
  VCAudioReceiver_RegisterCodecRateModeRequestCallback(self->_sourceContext.audioReceiver, CodecRateModeChangeNotificationCallback, &v2);
}

- (void)registerActiveAudioStreamChangeNotifications
{
  v4 = *MEMORY[0x1E69E9840];
  *&v2 = self;
  *(&v2 + 1) = MEMORY[0x1E695D7C8];
  v3 = MEMORY[0x1E695D7C0];
  VCAudioReceiver_RegisterActiveAudioStreamRequestCallback(self->_sourceContext.audioReceiver, _VCAudioStream_ActiveStreamChangeCallback, &v2);
}

- (void)didSuspendAudioIO:(id)o
{
  VCMediaStream_Lock(self);
  VCAudioReceiver_Reset(self->_sourceContext.audioReceiver);
  [(VCPacketBundler *)[(VCAudioTransmitter *)self->_audioTransmitter audioBundler] resetBuffer];
  [(VCPacketBundler *)[(VCAudioTransmitter *)self->_audioTransmitter audioBundlerShortRED] resetBuffer];
  self->_rtpEnabledBeforeInterrupt = [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] isRTPTimeoutEnabled];
  [(VCMediaStream *)self setRtpTimeOutEnabled:0];
  self->_rtcpEnabledBeforeInterrupt = [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] isRTCPTimeoutEnabled];
  [(VCMediaStream *)self setRtcpTimeOutEnabled:0];
  [(VCAudioStream *)self reportingAudioStreamEvent:184];
  [(VCAudioStream *)self reportingAlgosAudioStreamEvent:2];
  [(VCMediaStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(VCMediaStreamDelegate *)[(VCMediaStream *)self delegate] vcMediaStreamDidInterruptionBegin:self];
  }

  VCMediaStream_Unlock(self);
}

- (void)didResumeAudioIO:(id)o
{
  VCMediaStream_Lock(self);
  [(VCMediaStream *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(VCMediaStreamDelegate *)[(VCMediaStream *)self delegate] vcMediaStreamDidInterruptionEnd:self];
  }

  [(VCAudioStream *)self reportingAudioStreamEvent:185];
  [(VCAudioStream *)self reportingAlgosAudioStreamEvent:0];
  [(VCMediaStream *)self setRtpTimeOutEnabled:self->_rtpEnabledBeforeInterrupt];
  [(VCMediaStream *)self setRtcpTimeOutEnabled:self->_rtcpEnabledBeforeInterrupt];

  VCMediaStream_Unlock(self);
}

- (void)serverDidDie
{
  VCMediaStream_Lock(self);
  v3 = MEMORY[0x1E1289F20](&self->super._delegate);
  VCMediaStream_Unlock(self);
  [v3 vcMediaStreamServerDidDie:self];
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)collectRxChannelMetrics:(id *)metrics
{
  v27 = *MEMORY[0x1E69E9840];
  p_sourceContext = &self->_sourceContext;
  VCAudioReceiver_CollectChannelMetrics(self->_sourceContext.audioReceiver, metrics);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      framesProcessed = p_sourceContext->framesProcessed;
      state = [(VCMediaStream *)self state];
      participantId = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] multiwayConfig] participantId];
      audioReceiver = p_sourceContext->audioReceiver;
      v11 = 136316930;
      v12 = v5;
      v13 = 2080;
      v14 = "[VCAudioStream collectRxChannelMetrics:]";
      v15 = 1024;
      v16 = 3658;
      v17 = 2048;
      selfCopy = self;
      v19 = 1024;
      v20 = framesProcessed;
      v21 = 1024;
      v22 = state;
      v23 = 2112;
      v24 = participantId;
      v25 = 2048;
      v26 = audioReceiver;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d VCAudioStream[%p] PullAudioSamples count:%u, state:%d, participantID:[%@], audioReceiver[%p]", &v11, 0x46u);
    }
  }
}

- (void)collectTxChannelMetrics:(id *)metrics
{
  audioTransmitter = self->_audioTransmitter;
  if (audioTransmitter)
  {
    [(VCAudioTransmitter *)audioTransmitter currentChannelMetrics];
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  *&metrics->var3 = v7;
  *&metrics->var4.height = v8;
  *&metrics->var6 = v9;
  *&metrics->var8 = v10;
  *&metrics->var0 = v5;
  *&metrics->var1[3] = v6;
}

- (void)handleActiveConnectionChange:(id)change
{
  VCMediaStream_Lock(self);
  self->_cachedConnectionMTU = [change maxConnectionMTU];
  self->_constantTransportOverhead = VCConnection_PerPacketConnectionOverhead(change);
  if (self->super._operatingMode == 6)
  {
    [(VCMediaStream *)self updateTransportsWithConstantConnectionOverhead:?];
  }

  [(VCAudioTransmitter *)self->_audioTransmitter handleActiveConnectionChange:change];
  audioReceiver = self->_sourceContext.audioReceiver;
  v6 = VCConnection_LocalCellTech(change);
  v7 = VCConnection_RemoteCellTech(change);
  VCAudioReceiver_UpdateCellTech(audioReceiver, v6, v7);

  VCMediaStream_Unlock(self);
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioStream didUpdateBasebandCodec:];
    }
  }
}

- (void)didChangeThermalLevel:(int)level
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"Thermal";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&level];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  VCMediaStream_Lock(self);
  reportingGenericEvent();
  VCMediaStream_Unlock(self);
}

void ___VCAudioStream_DTMFEventCallback_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E1289F20](*(a1 + 32) + 256);
  [v2 vcMediaStream:*(a1 + 32) didReceiveDTMFEventWithDigit:*(a1 + 40)];
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t ___VCAudioStream_ActiveStreamChangeCallback_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(*(a1 + 32));
  Count = CFArrayGetCount(*(*(a1 + 32) + 1768));
  v3 = (Count - 1);
  if (Count - 1 >= 0)
  {
    v4 = MEMORY[0x1E6986650];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 1768), v3);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v11 = v6;
          v12 = 2080;
          v13 = "_VCAudioStream_ActiveStreamChangeCallback_block_invoke";
          v14 = 1024;
          v15 = 3584;
          v16 = 1024;
          v17 = 3584;
          v18 = 2048;
          v19 = ValueAtIndex;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCAudioStream [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStream.m:%d: resetting SourceState for syncSourceDelegate=%p", buf, 0x2Cu);
        }
      }

      VCMediaStreamSyncSourceDelegate_resetSourceState(ValueAtIndex);
    }

    while (v3-- > 0);
  }

  VCMediaStream_Unlock(*(a1 + 32));
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [objc_msgSend(*(a1 + 32) "delegate")];
  }

  return result;
}

- (void)setIsLocalCelluar:(unsigned int)celluar
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  transportArray = self->super._transportArray;
  v6 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v34;
    *&v7 = 136315906;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(transportArray);
        }

        *([*(*(&v33 + 1) + 8 * i) realtimeContext] + 220) = celluar;
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v21 = v17;
              v22 = 2080;
              v23 = "[VCAudioStream(Telephony) setIsLocalCelluar:]";
              v24 = 1024;
              v25 = 37;
              v26 = 1024;
              LODWORD(v27) = celluar;
              v14 = v18;
              v15 = " [%s] %s:%d WiFi<->Cellular handover isLocalCellular=%d";
              v16 = 34;
              goto LABEL_15;
            }
          }
        }

        else
        {
          v11 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v11 = [(VCAudioStream *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              v21 = v12;
              v22 = 2080;
              v23 = "[VCAudioStream(Telephony) setIsLocalCelluar:]";
              v24 = 1024;
              v25 = 37;
              v26 = 2112;
              v27 = v11;
              v28 = 2048;
              selfCopy = self;
              v30 = 1024;
              celluarCopy = celluar;
              v14 = v13;
              v15 = " [%s] %s:%d %@(%p) WiFi<->Cellular handover isLocalCellular=%d";
              v16 = 54;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
              continue;
            }
          }
        }
      }

      v8 = [(NSMutableArray *)transportArray countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v8);
  }
}

- (void)handleCellularToWiFiHandover
{
  [(VCAudioStream *)self setIsLocalCelluar:0];
  [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] setAudioStreamMode:1];
  VCAudioTransmitter_ProcessConnectionType(self->_audioTransmitter, 3);
  VCAudioReceiver_ProcessConnectionType(self->_sourceContext.audioReceiver, 3);
  [(VCObject *)self reportingAgent];
  reportingAudioStreamLogCallEnd();
  [(VCTransportSession *)self->super._transportSession destroyNWMonitor];
  rateAdaptation = self->super._rateAdaptation;

  [(VCMediaStreamRateAdaptation *)rateAdaptation stop];
}

- (void)handleWiFiToCelluarHandover
{
  [(VCAudioStream *)self setIsLocalCelluar:1];
  [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] setAudioStreamMode:7];
  VCAudioTransmitter_ProcessConnectionType(self->_audioTransmitter, 2);
  VCAudioReceiver_ProcessConnectionType(self->_sourceContext.audioReceiver, 2);
  [(VCObject *)self reportingAgent];
  reportingAudioStreamLogCallEnd();
  [(VCAudioStream *)self configureCellularFeatures];
  [(VCTransportSession *)self->super._transportSession setupNWMonitor];
  rateAdaptation = self->super._rateAdaptation;

  [(VCMediaStreamRateAdaptation *)rateAdaptation start];
}

- (void)setJitterBufferMode:(int)mode
{
  VCMediaStream_Lock(self);
  audioReceiver = self->_sourceContext.audioReceiver;
  if (audioReceiver)
  {
    if (!self->_shouldEnableJBLatencySenstiveModeForVoWiFi)
    {
      audioReceiver->var75 = 1;
      audioReceiver->var0.var4 = mode;
    }

    if (mode == 1)
    {
      if (self->_isTelephony)
      {
        [(VCAudioStream *)self handleWiFiToCelluarHandover];
      }
    }

    else if (!mode && self->_isTelephony)
    {
      [(VCAudioStream *)self handleCellularToWiFiHandover];
    }
  }

  else
  {
    [VCAudioStream(Telephony) setJitterBufferMode:];
  }

  VCMediaStream_Unlock(self);
}

- (BOOL)isVoLTERateAdaptationEnabled
{
  isRateAdaptationEnabled = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] isRateAdaptationEnabled];
  if (isRateAdaptationEnabled)
  {
    isRateAdaptationEnabled = [VCAudioStream isVoLTE:[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] audioStreamMode]];
    if (isRateAdaptationEnabled)
    {
      isRateAdaptationEnabled = [VCPayloadUtils isEVSPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]];
      if (isRateAdaptationEnabled)
      {
        LOBYTE(isRateAdaptationEnabled) = [(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] bitrate]== 24400;
      }
    }
  }

  return isRateAdaptationEnabled;
}

- (void)configureCellularFeatures
{
  v6 = *MEMORY[0x1E69E9840];
  self->_anbrEnabled = [(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] anbrEnabled];
  [(VCTransportSession *)self->super._transportSession setShouldSetupNWMonitor:1];
  if ([(VCAudioStream *)self isVoLTERateAdaptationEnabled]&& !self->_anbrEnabled)
  {
    memset(v5, 0, sizeof(v5));
    v4 = 0u;
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"stream_%ld", self->super._streamToken];
    *(&v4 + 1) = [(VCObject *)self reportingAgent];
    LODWORD(v5[0]) = 1;
    [(VCTelephonyInterface *)self->_telephonyInterface setupVCMediaStreamRateAdaptationConfig:v5 + 8];
    if (*(&v5[0] + 1) == 1)
    {

      self->super._rateAdaptation = [[VCMediaStreamRateAdaptation alloc] initWithDelegate:self params:&v3];
      self->_uplinkRateAdaptationMaxAllowedBitrate = 24400;
    }
  }
}

- (void)setRemoteCodecTypeAndSampleRate:(_VCAudioCodecModeChangeEvent *)rate
{
  v5 = [VCPayloadUtils audioCodecTypeForPayload:rate->payload];
  v6 = [VCPayloadUtils sampleRateForCodecBandwidth:rate->codecBandwidth];
  audioIO = self->_audioIO;

  [(VCAudioIO *)audioIO setRemoteCodecType:v5 sampleRate:v6];
}

- (void)queryAnbrBitrate:(unsigned int)bitrate forDirection:(int64_t)direction
{
  v7 = *MEMORY[0x1E69E9840];
  telephonyInterface = self->_telephonyInterface;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__VCAudioStream_Telephony__queryAnbrBitrate_forDirection___block_invoke;
  v5[3] = &unk_1E85F7E40;
  bitrateCopy = bitrate;
  v5[4] = self;
  v5[5] = direction;
  [(VCTelephonyInterface *)telephonyInterface queryAnbrBitrateRecommendation:*&bitrate direction:direction completionHandler:v5];
}

void __58__VCAudioStream_Telephony__queryAnbrBitrate_forDirection___block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v17 = 136316418;
    v18 = v5;
    v19 = 2080;
    v20 = "[VCAudioStream(Telephony) queryAnbrBitrate:forDirection:]_block_invoke";
    v21 = 1024;
    v22 = 126;
    v23 = 1024;
    *v24 = v7;
    *&v24[4] = 2048;
    *&v24[6] = v8;
    *&v24[14] = 2112;
    *&v24[16] = a2;
    v9 = " [%s] %s:%d Failed querying Telephony Interface for ANBR bitrate recommendation, bitrate=%u, direction=%ld, error=%@";
    v10 = v6;
    v11 = 54;
LABEL_13:
    _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, &v17, v11);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = 136316930;
      v18 = v12;
      v19 = 2080;
      v20 = "[VCAudioStream(Telephony) queryAnbrBitrate:forDirection:]_block_invoke";
      v21 = 1024;
      v22 = 126;
      v23 = 2112;
      *v24 = v4;
      *&v24[8] = 2048;
      *&v24[10] = v15;
      *&v24[18] = 1024;
      *&v24[20] = v14;
      v25 = 2048;
      v26 = v16;
      v27 = 2112;
      v28 = a2;
      v9 = " [%s] %s:%d %@(%p) Failed querying Telephony Interface for ANBR bitrate recommendation, bitrate=%u, direction=%ld, error=%@";
      v10 = v13;
      v11 = 74;
      goto LABEL_13;
    }
  }
}

- (void)notifyCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event didUpdateBandwidth:(BOOL)bandwidth didUpdateBitrate:(BOOL)bitrate
{
  v8 = *MEMORY[0x1E69E9840];
  if (bandwidth)
  {
    v7 = *event;
    [(VCAudioStream *)self setRemoteCodecTypeAndSampleRate:&v7, bandwidth, bitrate];
  }

  else if (!bitrate)
  {
    return;
  }

  v7 = *event;
  [(VCAudioStream *)self notifyCodecModeChangeToCT:&v7];
}

- (void)handleCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [VCPayloadUtils codecTypeForPayload:event->payload];
  v6 = [VCAudioStream isVoLTE:[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] audioStreamMode]];
  if (!v5)
  {
    [VCAudioStream(Telephony) handleCodecModeChangeEvent:];
    return;
  }

  if (event->codecRateMode == -1)
  {
    [VCAudioStream(Telephony) handleCodecModeChangeEvent:];
    return;
  }

  v7 = v6;
  supportedBitrates = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] supportedBitrates];
  p_codecBitrate = &event->codecBitrate;
  if (!-[NSArray containsObject:](supportedBitrates, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:event->codecBitrate]))
  {
    [(VCAudioStream(Telephony) *)event handleCodecModeChangeEvent:?];
    return;
  }

  if (v7 && self->_anbrActive && self->_anbrEnabled && (v10 = *p_codecBitrate, v10 > [(VCAudioPayload *)self->currentAudioPayload bitrate]))
  {
    v11 = *p_codecBitrate;

    [(VCAudioStream *)self queryAnbrBitrate:v11 forDirection:1];
  }

  else
  {
    *v18 = *&event->payload;
    *&v18[16] = event->RFParams;
    if ([(VCAudioStream *)self handleUplinkBitrateChange:v18 reason:1]&& [VCPayloadUtils isEVSPayload:event->payload]&& self->super._rateAdaptation)
    {
      if (VCPayloadUtils_AudioCodecRateModeForBitrate(event->payload, [(VCAudioPayload *)self->currentAudioPayload bitrate]) > 8)
      {
        self->_uplinkRateAdaptationMaxAllowedBitrate = [(VCAudioPayload *)self->currentAudioPayload bitrate];
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          return;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        uplinkRateAdaptationMaxAllowedBitrate = self->_uplinkRateAdaptationMaxAllowedBitrate;
        *v18 = 136315906;
        *&v18[4] = v16;
        *&v18[12] = 2080;
        *&v18[14] = "[VCAudioStream(Telephony) handleCodecModeChangeEvent:]";
        *&v18[22] = 1024;
        v19 = 165;
        v20 = 1024;
        v21 = uplinkRateAdaptationMaxAllowedBitrate;
        v15 = " [%s] %s:%d Updated uplink rate adaptation max allowed bitrate=%d";
      }

      else
      {
        [(VCMediaStreamRateAdaptation *)self->super._rateAdaptation stop];
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          return;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        bitrate = [(VCAudioPayload *)self->currentAudioPayload bitrate];
        *v18 = 136315906;
        *&v18[4] = v12;
        *&v18[12] = 2080;
        *&v18[14] = "[VCAudioStream(Telephony) handleCodecModeChangeEvent:]";
        *&v18[22] = 1024;
        v19 = 162;
        v20 = 1024;
        v21 = bitrate;
        v15 = " [%s] %s:%d Disabling uplink rate adaptation due to EVS AMRWB-IO bitrate=%u";
      }

      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v15, v18, 0x22u);
    }
  }
}

- (void)storeLastCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event
{
  self->_cmrBitrateActive = 1;
  v3 = *&event->payload;
  self->_lastCodecModeChangeEvent.RFParams = event->RFParams;
  *&self->_lastCodecModeChangeEvent.payload = v3;
}

- (BOOL)handleUplinkBitrateChange:(_VCAudioCodecModeChangeEvent *)change reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  v37 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if (reason == 4 || !self->_basebandThermalMitigationsEnabled)
  {
    audioTransmitter = [(VCAudioStream *)self audioTransmitter];
    buf = *change;
    [(VCAudioTransmitter *)audioTransmitter handleCodecModeChangeEvent:&buf didUpdateBandwidth:&v24 didUpdateBitrate:&v24 + 1];
    buf = *change;
    [(VCAudioStream *)self notifyCodecModeChangeEvent:&buf didUpdateBandwidth:v24 didUpdateBitrate:HIBYTE(v24)];
    if ((v24 & 0x100) == 0 && v24 != 1)
    {
LABEL_19:
      v7 = HIBYTE(v24);
      return v7 & 1;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6 || (v10 = VRTraceErrorLogLevelToCSTR(), v11 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_17:
        if (reasonCopy != 4)
        {
          buf = *change;
          [(VCAudioStream *)self storeLastCodecModeChangeEvent:&buf];
        }

        goto LABEL_19;
      }

      payload = change->payload;
      codecBandwidth = change->codecBandwidth;
      codecBitrate = change->codecBitrate;
      buf.payload = 136316674;
      *&buf.codecRateMode = v10;
      LOWORD(buf.codecBitrate) = 2080;
      *(&buf.codecBitrate + 2) = "[VCAudioStream(Telephony) handleUplinkBitrateChange:reason:]";
      HIWORD(buf.RFParams.indicator) = 1024;
      v26 = 194;
      v27 = 1024;
      *v28 = reasonCopy;
      *&v28[4] = 1024;
      *&v28[6] = payload;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = codecBitrate;
      HIWORD(selfCopy) = 1024;
      *v30 = codecBandwidth;
      v15 = " [%s] %s:%d Bitrate adaptation performed: reason=%d, payload=%d, suggestedBitrate=%d, suggestedBandwidth=%d";
      v16 = v11;
      v17 = 52;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_17;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v20 = change->payload;
      v22 = change->codecBandwidth;
      v21 = change->codecBitrate;
      buf.payload = 136317186;
      *&buf.codecRateMode = v18;
      LOWORD(buf.codecBitrate) = 2080;
      *(&buf.codecBitrate + 2) = "[VCAudioStream(Telephony) handleUplinkBitrateChange:reason:]";
      HIWORD(buf.RFParams.indicator) = 1024;
      v26 = 194;
      v27 = 2112;
      *v28 = v9;
      *&v28[8] = 2048;
      selfCopy = self;
      *v30 = 1024;
      *&v30[2] = reasonCopy;
      v31 = 1024;
      v32 = v20;
      v33 = 1024;
      v34 = v21;
      v35 = 1024;
      v36 = v22;
      v15 = " [%s] %s:%d %@(%p) Bitrate adaptation performed: reason=%d, payload=%d, suggestedBitrate=%d, suggestedBandwidth=%d";
      v16 = v19;
      v17 = 72;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &buf, v17);
    goto LABEL_17;
  }

  buf = *change;
  [(VCAudioStream *)self storeLastCodecModeChangeEvent:&buf];
  v7 = 0;
  return v7 & 1;
}

- (BOOL)getCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event forCodecBitrate:(unsigned int)bitrate payload:(int)payload
{
  v30 = *MEMORY[0x1E69E9840];
  if (!event)
  {
    [VCAudioStream(Telephony) getCodecModeChangeEvent:? forCodecBitrate:? payload:?];
LABEL_9:
    LOBYTE(v11) = v16;
    return v11;
  }

  if (!bitrate || payload == 128)
  {
    [VCAudioStream(Telephony) getCodecModeChangeEvent:bitrate forCodecBitrate:&v16 payload:?];
    goto LABEL_9;
  }

  v9 = VCPayloadUtils_AudioCodecRateModeForBitrate(payload, bitrate);
  v10 = [(VCAudioStream *)self selectCodecBandwidthForCodecRateMode:v9];
  if ([VCPayloadUtils isCodecModeSupported:v9 forBandwidth:v10 withPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]])
  {
    event->codecBandwidth = v10;
    event->codecBitrate = bitrate;
    LOBYTE(v11) = 1;
    event->payload = payload;
    event->codecRateMode = v9;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v11)
      {
        return v11;
      }

      payload = [(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload];
      v16 = 136316674;
      v17 = v12;
      v18 = 2080;
      v19 = "[VCAudioStream(Telephony) getCodecModeChangeEvent:forCodecBitrate:payload:]";
      v20 = 1024;
      v21 = 215;
      v22 = 1024;
      v23 = payload;
      v24 = 1024;
      bitrateCopy = bitrate;
      v26 = 1024;
      v27 = v9;
      v28 = 1024;
      v29 = v10;
      _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Codec Rate Mode and Codec Bandwidth selected are not supported for payload=%d, codecBitrate=%u, codecRateMode=%u, codecBandwidth=%u", &v16, 0x34u);
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)handleBasebandRateTrendSuggestion:(int)suggestion
{
  v35 = *MEMORY[0x1E69E9840];
  v20 = 0uLL;
  RFParams = 0;
  if (![VCPayloadUtils codecTypeForPayload:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload]])
  {
    [(VCAudioStream(Telephony) *)&self->_audioTransmitter handleBasebandRateTrendSuggestion:buf];
    LOBYTE(v11) = buf[0];
    goto LABEL_25;
  }

  v5 = [VCPayloadUtils allowedBitratesForPayload:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload] supportedBitrates:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] supportedBitrates] supportedBandwidths:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] supportedBandwidths]];
  v6 = v5;
  if (suggestion == 0x80000000)
  {
    v7 = 0;
  }

  else
  {
    if (suggestion != 0x7FFFFFFF)
    {
      v11 = 0;
      v20 = *&self->_lastCodecModeChangeEvent.payload;
      RFParams = self->_lastCodecModeChangeEvent.RFParams;
      goto LABEL_13;
    }

    v7 = [v5 count] - 1;
  }

  v8 = [objc_msgSend(v6 objectAtIndex:{v7), "intValue"}];
  v9 = v8;
  if (self->_cmrBitrateActive)
  {
    codecBitrate = self->_lastCodecModeChangeEvent.codecBitrate;
    if (v8 >= codecBitrate)
    {
      v9 = codecBitrate;
    }

    else
    {
      v9 = v8;
    }
  }

  v11 = 1;
  if ([(VCAudioStream *)self getCodecModeChangeEvent:&v20 forCodecBitrate:v9 payload:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload]])
  {
LABEL_13:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_24;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136316930;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioStream(Telephony) handleBasebandRateTrendSuggestion:]";
      *&buf[22] = 1024;
      v23 = 265;
      v24 = 1024;
      *v25 = v11;
      *&v25[4] = 1024;
      *&v25[6] = suggestion;
      LOWORD(selfCopy) = 1024;
      *(&selfCopy + 2) = v20;
      HIWORD(selfCopy) = 1024;
      *v27 = HIDWORD(v20);
      *&v27[4] = 1024;
      *v28 = DWORD2(v20);
      v15 = " [%s] %s:%d Baseband Thermal Mitigations: enabled=%d suggestion=0x%08x, payload=%d, suggestedBitrate=%d, suggestedBandwidth=%d";
      v16 = v14;
      v17 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_24;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136317442;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioStream(Telephony) handleBasebandRateTrendSuggestion:]";
      *&buf[22] = 1024;
      v23 = 265;
      v24 = 2112;
      *v25 = v12;
      *&v25[8] = 2048;
      selfCopy = self;
      *v27 = 1024;
      *&v27[2] = v11;
      *v28 = 1024;
      *&v28[2] = suggestion;
      v29 = 1024;
      v30 = v20;
      v31 = 1024;
      v32 = HIDWORD(v20);
      v33 = 1024;
      v34 = DWORD2(v20);
      v15 = " [%s] %s:%d %@(%p) Baseband Thermal Mitigations: enabled=%d suggestion=0x%08x, payload=%d, suggestedBitrate=%d, suggestedBandwidth=%d";
      v16 = v19;
      v17 = 78;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_24:
    *buf = v20;
    *&buf[16] = RFParams;
    [(VCAudioStream *)self handleUplinkBitrateChange:buf reason:4, v20];
  }

LABEL_25:
  self->_basebandThermalMitigationsEnabled = v11;
}

- (void)handleUplinkANBR:(_VCAudioCodecModeChangeEvent *)r
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *r;
  [(VCAudioStream *)self handleUplinkBitrateChange:&v3 reason:3];
}

- (void)handleDownlinkANBR:(_VCAudioCodecModeChangeEvent *)r
{
  v6 = *MEMORY[0x1E69E9840];
  audioTransmitter = [(VCAudioStream *)self audioTransmitter];
  v5 = *r;
  [(VCAudioTransmitter *)audioTransmitter sendCodecModeChangeEvent:&v5];
}

- (int)selectCodecBandwidthForCodecRateMode:(int)mode
{
  v3 = *&mode;
  v19 = *MEMORY[0x1E69E9840];
  v5 = VCPayloadUtils_DefaultAudioCodecBandwidthCodecForSampleRate([(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] codecSampleRate]);
  v6 = [VCPayloadUtils codecTypeForPayload:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload]];
  if (![VCPayloadUtils isCodecModeSupported:v3 forBandwidth:v5 withPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]])
  {
    if ([(NSArray *)[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] supportedBandwidths] count])
    {
      if ([VCPayloadUtils supportsCodecBandwidthUpdateForCodecType:v6])
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        reverseObjectEnumerator = [(NSArray *)[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] supportedBandwidths] reverseObjectEnumerator];
        v8 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v8)
        {
          v9 = v8;
          v13 = v5;
          v10 = *v16;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v5 = *(*(&v15 + 1) + 8 * i);
              if (+[VCPayloadUtils isCodecModeSupported:forBandwidth:withPayload:](VCPayloadUtils, "isCodecModeSupported:forBandwidth:withPayload:", v3, [v5 unsignedIntValue], -[VCAudioPayloadConfig payload](-[VCAudioPayload config](self->currentAudioPayload, "config"), "payload")))
              {
                LODWORD(v5) = [v5 unsignedIntValue];
                return v5;
              }
            }

            v9 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v14 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          LODWORD(v5) = v13;
        }
      }
    }
  }

  return v5;
}

- (void)handleANBR:(unsigned int)r forDirection:(int64_t)direction
{
  v5 = *&r;
  v28 = *MEMORY[0x1E69E9840];
  if ([VCPayloadUtils codecTypeForPayload:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload]])
  {
    v7 = [VCPayloadUtils codecRateModeForDesiredANBR:v5 payload:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload] supportedBitrates:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] supportedBitrates] supportedBandwidths:[(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] supportedBandwidths]];
    if (v7 == -1)
    {
      [VCAudioStream(Telephony) handleANBR:? forDirection:?];
    }

    else
    {
      v8 = v7;
      v9 = VCPayloadUtils_BitrateForAudioCodecRateMode([(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload], v7);
      if (v9)
      {
        v10 = v9;
        v11 = [(VCAudioStream *)self selectCodecBandwidthForCodecRateMode:v8];
        if ([VCPayloadUtils isCodecModeSupported:v8 forBandwidth:v11 withPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]])
        {
          payload = [(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload];
          if (direction == 2)
          {
            v16 = payload;
            v17 = __PAIR64__(v11, v8);
            *v18 = v10;
            *&v18[4] = 0;
            [(VCAudioStream *)self handleDownlinkANBR:&v16];
          }

          else if (direction == 1)
          {
            v16 = payload;
            v17 = __PAIR64__(v11, v8);
            *v18 = v10;
            *&v18[4] = 0;
            [(VCAudioStream *)self handleUplinkANBR:&v16];
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            payload2 = [(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload];
            v16 = 136316674;
            v17 = v13;
            *v18 = 2080;
            *&v18[2] = "[VCAudioStream(Telephony) handleANBR:forDirection:]";
            *&v18[10] = 1024;
            v19 = 317;
            v20 = 1024;
            v21 = payload2;
            v22 = 1024;
            v23 = v10;
            v24 = 1024;
            v25 = v8;
            v26 = 1024;
            v27 = v11;
            _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d Codec Rate Mode and Codec Bandwidth selected are not supported for payload=%d, codecBitrate=%u, codecRateMode=%u, codecBandwidth=%u", &v16, 0x34u);
          }
        }
      }

      else
      {
        [VCAudioStream(Telephony) handleANBR:? forDirection:?];
      }
    }
  }

  else
  {
    [VCAudioStream(Telephony) handleANBR:? forDirection:?];
  }
}

- (void)telephonyInterface:(id)interface anbrActivationUpdate:(BOOL)update
{
  VCMediaStream_Lock(self);
  self->_anbrActive = update;

  VCMediaStream_Unlock(self);
}

- (void)telephonyInterface:(id)interface anbrRecommendation:(unsigned int)recommendation forDirection:(int64_t)direction
{
  v6 = *&recommendation;
  v26 = *MEMORY[0x1E69E9840];
  VCMediaStream_Lock(self);
  if (self->_anbrEnabled)
  {
    [(VCAudioStream *)self handleANBR:v6 forDirection:direction];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      anbrEnabled = self->_anbrEnabled;
      anbrActive = self->_anbrActive;
      v12 = 136316674;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCAudioStream(Telephony) telephonyInterface:anbrRecommendation:forDirection:]";
      v16 = 1024;
      v17 = 350;
      v18 = 1024;
      v19 = anbrEnabled;
      v20 = 1024;
      v21 = anbrActive;
      v22 = 1024;
      v23 = v6;
      v24 = 2048;
      directionCopy = direction;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Received a bitrate recommendation when ANBR is not enabled. anbrEnabled=%d, anbrActive=%d, bitrate=%u, direction=%ld", &v12, 0x38u);
    }
  }

  VCMediaStream_Unlock(self);
}

- (void)rateAdaptation:(id)adaptation targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter
{
  uplinkRateAdaptationMaxAllowedBitrate = change;
  v45 = *MEMORY[0x1E69E9840];
  [(VCMediaStream *)self lock:adaptation];
  rateAdaptation = self->super._rateAdaptation;
  if (!rateAdaptation || rateAdaptation != adaptation || self->_anbrEnabled)
  {
    [VCAudioStream(Telephony) rateAdaptation:? targetBitrateDidChange:? rateChangeCounter:?];
    goto LABEL_26;
  }

  payload = [(VCAudioPayloadConfig *)[(VCAudioTransmitter *)self->_audioTransmitter currentAudioPayloadConfig] payload];
  if (![VCPayloadUtils isEVSPayload:payload]|| ![VCAudioStream isVoLTE:[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] audioStreamMode]])
  {
    [VCAudioStream(Telephony) rateAdaptation:payload targetBitrateDidChange:? rateChangeCounter:?];
    goto LABEL_26;
  }

  if (uplinkRateAdaptationMaxAllowedBitrate != 13200 && uplinkRateAdaptationMaxAllowedBitrate != 24400)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioStream(Telephony) rateAdaptation:v27 targetBitrateDidChange:? rateChangeCounter:?];
        }
      }

      goto LABEL_26;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_26;
    }

    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *v40 = 136316418;
    *&v40[4] = v28;
    *&v40[12] = 2080;
    *&v40[14] = "[VCAudioStream(Telephony) rateAdaptation:targetBitrateDidChange:rateChangeCounter:]";
    *&v40[22] = 1024;
    LODWORD(v41) = 363;
    WORD2(v41) = 2112;
    *(&v41 + 6) = v13;
    HIWORD(v41) = 2048;
    selfCopy3 = self;
    LOWORD(v43) = 1024;
    *(&v43 + 2) = uplinkRateAdaptationMaxAllowedBitrate;
    v30 = " [%s] %s:%d %@(%p) Target bitrate change not supported targetBitrate=%d";
    v31 = v29;
    v32 = 54;
LABEL_34:
    _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, v30, v40, v32);
    goto LABEL_26;
  }

  if (self->_uplinkRateAdaptationMaxAllowedBitrate < uplinkRateAdaptationMaxAllowedBitrate)
  {
    uplinkRateAdaptationMaxAllowedBitrate = self->_uplinkRateAdaptationMaxAllowedBitrate;
  }

  bitrate = [(VCAudioPayload *)self->currentAudioPayload bitrate];
  v11 = objc_opt_class();
  if (bitrate != uplinkRateAdaptationMaxAllowedBitrate)
  {
    if (v11 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_25;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      bitrate2 = [(VCAudioPayload *)self->currentAudioPayload bitrate];
      v17 = self->_uplinkRateAdaptationMaxAllowedBitrate;
      *v40 = 136316418;
      *&v40[4] = v14;
      *&v40[12] = 2080;
      *&v40[14] = "[VCAudioStream(Telephony) rateAdaptation:targetBitrateDidChange:rateChangeCounter:]";
      *&v40[22] = 1024;
      LODWORD(v41) = 366;
      WORD2(v41) = 1024;
      *(&v41 + 6) = bitrate2;
      WORD5(v41) = 1024;
      HIDWORD(v41) = v17;
      LOWORD(selfCopy3) = 1024;
      *(&selfCopy3 + 2) = uplinkRateAdaptationMaxAllowedBitrate;
      v18 = " [%s] %s:%d Applying uplink rate adaptation recommendation currentBitrate=%u maxAllowedBitrate=%d uplinkTargetBitrate=%d";
      v19 = v15;
      v20 = 46;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_25;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      bitrate3 = [(VCAudioPayload *)self->currentAudioPayload bitrate];
      v24 = self->_uplinkRateAdaptationMaxAllowedBitrate;
      *v40 = 136316930;
      *&v40[4] = v21;
      *&v40[12] = 2080;
      *&v40[14] = "[VCAudioStream(Telephony) rateAdaptation:targetBitrateDidChange:rateChangeCounter:]";
      *&v40[22] = 1024;
      LODWORD(v41) = 366;
      WORD2(v41) = 2112;
      *(&v41 + 6) = v12;
      HIWORD(v41) = 2048;
      selfCopy3 = self;
      LOWORD(v43) = 1024;
      *(&v43 + 2) = bitrate3;
      HIWORD(v43) = 1024;
      LODWORD(v44) = v24;
      WORD2(v44) = 1024;
      *(&v44 + 6) = uplinkRateAdaptationMaxAllowedBitrate;
      v18 = " [%s] %s:%d %@(%p) Applying uplink rate adaptation recommendation currentBitrate=%u maxAllowedBitrate=%d uplinkTargetBitrate=%d";
      v19 = v22;
      v20 = 66;
    }

    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, v40, v20);
LABEL_25:
    v25 = VCPayloadUtils_AudioCodecRateModeForBitrate(payload, uplinkRateAdaptationMaxAllowedBitrate);
    bandwidth = [(VCAudioPayload *)self->currentAudioPayload bandwidth];
    *v40 = payload;
    *&v40[4] = v25;
    *&v40[8] = bandwidth;
    *&v40[12] = uplinkRateAdaptationMaxAllowedBitrate;
    *&v40[16] = 0;
    [(VCAudioStream *)self handleUplinkBitrateChange:v40 reason:2];
    goto LABEL_26;
  }

  if (v11 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_26;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v36 = self->_uplinkRateAdaptationMaxAllowedBitrate;
    *v40 = 136316162;
    *&v40[4] = v34;
    *&v40[12] = 2080;
    *&v40[14] = "[VCAudioStream(Telephony) rateAdaptation:targetBitrateDidChange:rateChangeCounter:]";
    *&v40[22] = 1024;
    LODWORD(v41) = 365;
    WORD2(v41) = 1024;
    *(&v41 + 6) = uplinkRateAdaptationMaxAllowedBitrate;
    WORD5(v41) = 1024;
    HIDWORD(v41) = v36;
    v30 = " [%s] %s:%d Current and target bitrates are same uplinkTargetBitrate=%d maxAllowedBitrate=%d";
    v31 = v35;
    v32 = 40;
    goto LABEL_34;
  }

  if (objc_opt_respondsToSelector())
  {
    v33 = [(VCAudioStream *)self performSelector:sel_logPrefix];
  }

  else
  {
    v33 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v39 = self->_uplinkRateAdaptationMaxAllowedBitrate;
      *v40 = 136316674;
      *&v40[4] = v37;
      *&v40[12] = 2080;
      *&v40[14] = "[VCAudioStream(Telephony) rateAdaptation:targetBitrateDidChange:rateChangeCounter:]";
      *&v40[22] = 1024;
      LODWORD(v41) = 365;
      WORD2(v41) = 2112;
      *(&v41 + 6) = v33;
      HIWORD(v41) = 2048;
      selfCopy3 = self;
      LOWORD(v43) = 1024;
      *(&v43 + 2) = uplinkRateAdaptationMaxAllowedBitrate;
      HIWORD(v43) = 1024;
      LODWORD(v44) = v39;
      v30 = " [%s] %s:%d %@(%p) Current and target bitrates are same uplinkTargetBitrate=%d maxAllowedBitrate=%d";
      v31 = v38;
      v32 = 60;
      goto LABEL_34;
    }
  }

LABEL_26:
  [(VCMediaStream *)self unlock:*v40];
}

- (id)codecConfigForOpusWithStreamConfig:(id)config
{
  result = [objc_msgSend(config "codecConfigurations")];
  if (!result)
  {
    codecConfigurations = [config codecConfigurations];

    return [codecConfigurations objectForKeyedSubscript:&unk_1F5798B20];
  }

  return result;
}

- (void)setupAudioMachineLearningCoordinatorsWithFormat:(tagVCAudioFrameFormat *)format direction:(int64_t)direction
{
  v58 = *MEMORY[0x1E69E9840];
  if (!self->_shouldSetUpCaptions)
  {
    goto LABEL_66;
  }

  if (self->_isCaptionsFormatValid)
  {
    if (!memcmp(&self->_captionsFormat, format, 0x30uLL))
    {
      return;
    }

    [(VCAudioStream *)self cleanUpAudioMachineLearningCoordinators];
  }

  self->_isCaptionsFormatValid = 1;
  v7 = *&self->_vpioFormat.format.mBytesPerPacket;
  v6 = *&self->_vpioFormat.format.mBitsPerChannel;
  *&self->_captionsFormat.format.mSampleRate = *&self->_vpioFormat.format.mSampleRate;
  *&self->_captionsFormat.format.mBytesPerPacket = v7;
  *&self->_captionsFormat.format.mBitsPerChannel = v6;
  streamTokenUplink = self->super._streamTokenUplink;
  v8 = *&self->_vpioFormat.format.mBytesPerPacket;
  v40 = *&self->_vpioFormat.format.mSampleRate;
  v41 = v8;
  v42 = *&self->_vpioFormat.format.mBitsPerChannel;
  streamTokenDownlink = self->super._streamTokenDownlink;
  v38 = v42;
  v37 = v8;
  v36 = v40;
  if (direction == 3)
  {
    v13 = [VCAudioMachineLearningCoordinator alloc];
    OUTLINED_FUNCTION_45();
    v14 = [OUTLINED_FUNCTION_42() initWithOneToOneEnabled:streamTokenDownlink isLocal:v36 taskIdentifier:v37 reportingAgent:v38 delegate:streamTokenUplink];
    self->_audioMachineLearningCoordinatorUplink = v14;
    if (v14)
    {
      v15 = [VCAudioMachineLearningCoordinator alloc];
      OUTLINED_FUNCTION_45();
      v16 = [OUTLINED_FUNCTION_42() initWithOneToOneEnabled:? isLocal:? taskIdentifier:? reportingAgent:? delegate:?];
      self->_audioMachineLearningCoordinatorDownlink = v16;
      if (v16)
      {
        [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorUplink registerStreamWithConfig:&streamTokenUplink];
        audioMachineLearningCoordinatorDownlink = self->_audioMachineLearningCoordinatorDownlink;
        goto LABEL_17;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_66;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_28())
        {
          goto LABEL_66;
        }

        OUTLINED_FUNCTION_23_2();
        OUTLINED_FUNCTION_4_9();
        v47 = 1366;
        goto LABEL_52;
      }

      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_66;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_66;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_28())
        {
          goto LABEL_66;
        }

        OUTLINED_FUNCTION_23_2();
        OUTLINED_FUNCTION_4_9();
        v47 = 1364;
        goto LABEL_52;
      }

      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_66;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_66;
      }
    }

LABEL_64:
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_7_3();
    goto LABEL_65;
  }

  if (direction == 2)
  {
    v12 = [VCAudioMachineLearningCoordinator alloc];
    OUTLINED_FUNCTION_45();
    audioMachineLearningCoordinatorDownlink = [OUTLINED_FUNCTION_42() initWithOneToOneEnabled:streamTokenDownlink isLocal:v36 taskIdentifier:v37 reportingAgent:v38 delegate:streamTokenUplink];
    self->_audioMachineLearningCoordinatorDownlink = audioMachineLearningCoordinatorDownlink;
    if (!audioMachineLearningCoordinatorDownlink)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_66;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_28())
        {
          goto LABEL_66;
        }

        OUTLINED_FUNCTION_23_2();
        OUTLINED_FUNCTION_4_9();
        v47 = 1359;
        goto LABEL_52;
      }

      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_66;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

LABEL_17:
    p_streamTokenDownlink = &streamTokenDownlink;
    goto LABEL_18;
  }

  if (direction != 1)
  {
    goto LABEL_19;
  }

  v9 = [VCAudioMachineLearningCoordinator alloc];
  OUTLINED_FUNCTION_45();
  audioMachineLearningCoordinatorDownlink = [OUTLINED_FUNCTION_42() initWithOneToOneEnabled:streamTokenDownlink isLocal:v36 taskIdentifier:v37 reportingAgent:v38 delegate:streamTokenUplink];
  self->_audioMachineLearningCoordinatorUplink = audioMachineLearningCoordinatorDownlink;
  if (!audioMachineLearningCoordinatorDownlink)
  {
    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_66;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_66;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_4_9();
    v47 = 1354;
LABEL_52:
    OUTLINED_FUNCTION_16_0();
LABEL_65:
    _os_log_error_impl(v29, v30, v31, v32, v33, v34);
LABEL_66:
    [(VCAudioStream *)self cleanUpAudioMachineLearningCoordinators];
    return;
  }

  p_streamTokenDownlink = &streamTokenUplink;
LABEL_18:
  [(VCAudioMachineLearningCoordinator *)audioMachineLearningCoordinatorDownlink registerStreamWithConfig:p_streamTokenDownlink];
LABEL_19:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_40_1();
        *buf = 136316418;
        v44 = v18;
        v45 = 2080;
        v46 = "[VCAudioStream setupAudioMachineLearningCoordinatorsWithFormat:direction:]";
        OUTLINED_FUNCTION_44();
        v48 = 2048;
        directionCopy = direction;
        v50 = 2048;
        selfCopy = v20;
        v52 = 2048;
        directionCopy2 = v21;
        v22 = "VCAudioStream [%s] %s:%d Registered audio machine learning coordinators for direction=%ld, _audioMachineLearningCoordinatorUplink=%p, _audioMachineLearningCoordinatorDownlink=%p";
        v23 = v19;
        v24 = 58;
LABEL_29:
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCAudioStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_40_1();
        *buf = 136316930;
        v44 = v25;
        v45 = 2080;
        v46 = "[VCAudioStream setupAudioMachineLearningCoordinatorsWithFormat:direction:]";
        OUTLINED_FUNCTION_44();
        v48 = 2112;
        directionCopy = v17;
        v50 = 2048;
        selfCopy = self;
        v52 = 2048;
        directionCopy2 = direction;
        v54 = 2048;
        v55 = v27;
        v56 = 2048;
        v57 = v28;
        v22 = "VCAudioStream [%s] %s:%d %@(%p) Registered audio machine learning coordinators for direction=%ld, _audioMachineLearningCoordinatorUplink=%p, _audioMachineLearningCoordinatorDownlink=%p";
        v23 = v26;
        v24 = 78;
        goto LABEL_29;
      }
    }
  }
}

- (id)setLocalParticipantInfo:(id)info networkSockets:(id)sockets withError:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  if (!sockets && self->super._operatingMode == 5)
  {
    self->super._connectionType = 1;
  }

  v11.receiver = self;
  v11.super_class = VCAudioStream;
  v8 = [VCMediaStream setLocalParticipantInfo:sel_setLocalParticipantInfo_networkSockets_withError_ networkSockets:info withError:?];
  if (v12)
  {
    v9 = 0;
    if (!error)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v9 = v8;
  if (self->_enableAudioPowerSpectrum)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->super._streamTokenUplink), @"avcKeyAudioPowerSpectrumTokenInput"}];
    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->super._streamTokenDownlink), @"avcKeyAudioPowerSpectrumTokenOutput"}];
  }

  self->_shouldSetUpCaptions = [objc_msgSend(info objectForKeyedSubscript:{@"vcMediaStreamSetUpCaptioning", "BOOLValue"}];
  if ([OUTLINED_FUNCTION_39_3() shouldSetUpMediaRecorderWithParticipantInfoDictionary:?])
  {
    [(VCAudioStream *)self setUpMediaRecorder];
  }

  if (error)
  {
LABEL_10:
    *error = v12;
  }

  return v9;
}

- (unsigned)packetExpirationTimeForStreamConfig:(id)config
{
  if ([config audioStreamMode] == 8)
  {
    return [config packetExpirationTime];
  }

  else
  {
    return 0;
  }
}

- (void)generateRTCPXRVoIPMetricsReports:(_BYTE *)a1 reportCount:.cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)startAudioWithCompletionHandler:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v3 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCAudioStream [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStream.m:%d: Benign Error (possibly not): We started audio before we negotiated our codec.", v2, 0x22u);
}

- (void)setupPayloads
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)getCodecConfigForPayload:block:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

+ (void)audioIOTypeForMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)setReceiverPayloads
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

+ (void)operatingModeForAudioStreamMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setDeviceRoleForAudioStreamMode:direction:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupAudioStreamWithClientPid:enableAudioPowerSpectrum:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioStreamWithClientPid:enableAudioPowerSpectrum:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createAudioReceiver
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)createAudioTransmitter:streamIDs:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)validateAudioStreamConfigurations:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupSourceTransport:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  free(a1);
}

- (void)setupSourceTransport:(_BYTE *)a1 .cold.2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)createTransportWithStreamConfig:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
}

- (void)createTransportWithStreamConfig:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  RTPCloseHandle();
}

- (void)createTransportWithStreamConfig:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_39_3() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
}

- (void)cleanupBeforeReconfigure:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)onConfigureStreamWithConfiguration:(uint64_t)a1 error:(id *)a2 .cold.1(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x26u);
}

- (void)onConfigureStreamWithConfiguration:(uint64_t)a1 error:(id *)a2 .cold.2(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x26u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, "VCAudioStream [%s] %s:%d Failed to configure transport for streamConfig=%p", v1, 0x26u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __46__VCAudioStream_onPauseWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __47__VCAudioStream_onResumeWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setTargetStreamID:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  v3 = v0;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCAudioStream [%s] %s:%d TargetStreamID didn't change %@", v2, 0x26u);
}

void __37__VCAudioStream_setupReportingAgent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)updateCodecPayloadAndBitrateForStartEvent:(uint64_t)a1 bitrate:.cold.1(uint64_t a1)
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
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }
}

- (void)updateCodecPayloadAndBitrateForStartEvent:(uint64_t)a1 bitrate:.cold.2(uint64_t a1)
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
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }
}

- (void)getConnectionTypeForStreamMode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)addSyncSourceDelegate:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)removeSyncSourceDelegate:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)didUpdateBasebandCodec:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)notifyCodecModeChangeToCT:(_VCAudioCodecModeChangeEvent *)t
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_isTelephony)
  {
    telephonyInterface = self->_telephonyInterface;
    v4 = *t;
    [(VCTelephonyInterface *)telephonyInterface notifyCodecModeChangeEventToCT:&v4];
  }
}

@end