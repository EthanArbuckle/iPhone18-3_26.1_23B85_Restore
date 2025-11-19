@interface VCSessionParticipant
+ (id)mediaTypesFromStreamGroupID:(unsigned int)a3;
+ (id)participantDataWithMediaNegotiatorVersion:(int)a3 participantData:(id)a4;
+ (id)participantDataWithParticipantData:(id)a3 isReinit:(BOOL)a4;
+ (id)participantDataWithParticipantInfo:(id)a3;
+ (id)participantInfoWithParticipantData:(id)a3;
+ (id)streamGroupIDsFromParticipantData:(id)a3;
+ (unsigned)mediaStreamGroupStateToVCStreamGroupState:(unsigned int)a3;
+ (void)addCodecModesForPayload:(int)a3 toCodecConfig:(id)a4;
+ (void)applyVideoNegotiatedSettings:(id)a3 toStreamConfiguration:(id)a4 withFeatureStringDictionary:(id)a5;
- (BOOL)completeStreamSetup:(id)a3 rtpCipherSuite:(int64_t)a4;
- (BOOL)configureMultiwayStreamGroups;
- (BOOL)configureOneToOneAudioStreamsWithDeviceRole:(int)a3 streamInfoArray:(id)a4;
- (BOOL)configureOneToOneVideoStreamsWithDeviceRole:(int)a3 streamInfoArray:(id)a4;
- (BOOL)configureOneToOneWithConfig:(id)a3;
- (BOOL)configureStreamInfosForMultiway:(id)a3 streamGroupID:(unsigned int)a4;
- (BOOL)configureWithDeviceRole:(int)a3 negotiatedVideoEnabled:(BOOL)a4 negotiatedScreenEnabled:(BOOL)a5 operatingMode:(int)a6;
- (BOOL)didNegotiateStreamGroupWithID:(unsigned int)a3;
- (BOOL)dispatchedConfigureWithDeviceRole:(int)a3 negotiatedVideoEnabled:(BOOL)a4 negotiatedScreenEnabled:(BOOL)a5 operatingMode:(int)a6;
- (BOOL)dispatchedIsPersonaCameraEnabled;
- (BOOL)handleEncryptionInfoChange:(id)a3;
- (BOOL)isAnyCameraMediaTypeEnabled;
- (BOOL)isOneToOneTemporalSupportedForSettings:(id)a3 streamDirection:(int64_t)a4;
- (BOOL)isPersonaCameraEnabled;
- (BOOL)remoteSupportsFullScreenReceive:(id)a3;
- (BOOL)rtcpPSFBForFeedbackStoreBagConfig;
- (BOOL)rtcpPSFBForLTRAckStoreBagConfig;
- (BOOL)setAudioPosition:(float)a3;
- (BOOL)setState:(unsigned int)a3;
- (BOOL)setVolume:(float)a3;
- (BOOL)setupAudioStreamConfiguration:(id)a3 audioRules:(id)a4;
- (BOOL)setupMediaSyncForStreamGroup:(id)a3;
- (BOOL)setupSecurityKeyHolderForStreamConfig:(id)a3;
- (BOOL)setupStreamGroupMediaSync;
- (BOOL)shouldSetPause:(BOOL)a3 onStream:(id)a4;
- (BOOL)supportsLowLatencyAudio;
- (BOOL)updateConfigurationWithDeviceRole:(int)a3;
- (BOOL)updateMediaStatesWithConfig:(id)a3;
- (NSArray)allParticipantStreamInfo;
- (NSDictionary)mediaTypeMixingList;
- (NSString)description;
- (VCMediaRecorder)mediaRecorder;
- (VCSessionParticipant)initWithConfig:(id)a3 delegate:(id)a4;
- (char)participantStateToString:(unsigned int)a3;
- (id)applyMediaState:(unsigned int)a3 forMediaType:(unsigned int)a4;
- (id)cameraGroups;
- (id)cameraGroupsExt;
- (id)generateEncryptionKeyForCipherSuite:(int64_t)a3;
- (id)newAudioRateControlConfigWithMediaControlInfoVersion:(unsigned __int8)a3 enableFeedbackController:(BOOL)a4 isOneToOne:(BOOL)a5;
- (id)newOneToOneAudioStreamConfigWithAudioSettings:(id)a3 streamDirection:(int64_t)a4 streamGroupId:(unsigned int)a5 streamSsrc:(unsigned int)a6;
- (id)newOneToOneVideoStreamConfigWithStreamDirection:(int64_t)a3 streamGroupId:(unsigned int)a4 streamSsrc:(unsigned int)a5 encodingType:(unsigned __int8)a6 videoSettings:(id)a7;
- (id)newOneToOneVideoStreamMultiwayConfiguration:(unsigned __int8)a3 streamGroupId:(unsigned int)a4 videoSettings:(id)a5 streamDirection:(int64_t)a6;
- (id)newVideoRateControlConfigWithMediaControlInfoVersion:(unsigned __int8)a3 enableMediaControlInfoGenerator:(BOOL)a4 enableFeedbackController:(BOOL)a5 isOneToOne:(BOOL)a6;
- (id)pauseAudioStreams:(BOOL)a3;
- (id)screenGroup;
- (id)setCameraStreamGroupsPaused:(BOOL)a3;
- (id)setPaused:(BOOL)a3 onStreamGroups:(id)a4;
- (id)startAudioIO;
- (id)startCameraStreamGroups;
- (id)startMediaStreams:(id)a3;
- (id)startMicStreamGroups;
- (id)startScreenGroup;
- (id)startStreamGroups;
- (id)startStreamGroups:(id)a3;
- (id)stopAudioIO;
- (id)stopAudioStreams;
- (id)stopMediaStreams:(id)a3;
- (id)stopMicStreamGroups;
- (id)stopMultiwayStreams;
- (id)stopScreenGroup;
- (id)stopStreamGroups:(id)a3;
- (id)streamGroupWithID:(unsigned int)a3;
- (id)streamGroupsForIDs:(id)a3;
- (id)streamGroupsForMediaType:(unsigned int)a3;
- (id)updateActiveStateForStreamGroup:(id)a3;
- (id)updateMediaState:(unsigned int)a3 forStreamGroups:(id)a4;
- (id)updateStreamGroups:(id)a3;
- (int)operatingMode;
- (int)securityKeyHolderUsageForStreamConfigDirection:(int64_t)a3;
- (int64_t)negotiatedCipherSuiteForStreamGroupID:(unsigned int)a3;
- (int64_t)participantMicrophoneToken;
- (int64_t)participantScreenToken;
- (int64_t)participantVideoToken;
- (unsigned)mediaControlVersionForStreamGroup:(unsigned int)a3;
- (unsigned)preferredIOSampleRateForGroupID:(unsigned int)a3;
- (unsigned)preferredIOSamplesPerFrameForGroupID:(unsigned int)a3;
- (unsigned)preferredRTPTimestampRateForGroupID:(unsigned int)a3;
- (unsigned)streamGroupStateFromStreamGroupID:(unsigned int)a3;
- (void)applyScreenEnabledSetting:(BOOL)a3;
- (void)callDelegateWithBlock:(id)a3;
- (void)callStreamDelegateWithBlock:(id)a3;
- (void)collectCaptionsChannelMetrics:(id *)a3;
- (void)configureFECFeedbackVersionAndGenerator:(id)a3 withStreamGroupID:(unsigned int)a4;
- (void)configureFramebasedFecForOneToOneVideoStreamConfig:(id)a3 withStreamGroupID:(unsigned int)a4;
- (void)configureFullScreenCameraPropertiesOnVideoStreamConfig:(id)a3 videoSettings:(id)a4 streamDirection:(int64_t)a5;
- (void)configureMultiwayStreamGroups;
- (void)configureOneToOneVideoSendingConfigs:(id)a3 streamGroupID:(unsigned int)a4;
- (void)configureParticipantForLowPowerModeEnabled:(BOOL)a3;
- (void)createRedundancyControllers;
- (void)dealloc;
- (void)didChangeActualNetworkBitrateForStreamGroup:(id)a3;
- (void)didChangeReceivingStreamsForStreamGroup:(id)a3;
- (void)didChangeSendingStreamsForStreamGroup:(id)a3;
- (void)didDecryptionTimeOutForMKMRecoveryForStreamGroup:(id)a3;
- (void)didMediaDecryptionTimeOutForStreamGroup:(id)a3;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3;
- (void)dispatchSetMediaType:(unsigned int)a3 mixingWithMediaType:(unsigned int)a4;
- (void)dispatchedSetAudioEnabled:(BOOL)a3;
- (void)dispatchedSetAudioPaused:(BOOL)a3;
- (void)dispatchedSetMediaState:(unsigned int)a3 forMediaType:(unsigned int)a4;
- (void)dispatchedSetScreenEnabled:(BOOL)a3;
- (void)dispatchedSetVideoEnabled:(BOOL)a3;
- (void)dispatchedSetVideoPaused:(BOOL)a3;
- (void)dispatchedStart;
- (void)dispatchedStop;
- (void)handleActiveConnectionChange:(id)a3;
- (void)handleRemoteOneToOneSwitchWithStreamGroup:(id)a3 fromStreamID:(unsigned __int16)a4 toStreamID:(unsigned __int16)a5;
- (void)handleStreamGroupsActiveConnectionChange:(id)a3;
- (void)handleSymptomReportForDecryptionError;
- (void)logAllStreamTokens;
- (void)mkiCollisionDetectedForStreamGroup:(id)a3;
- (void)resetDecryptionTimeout;
- (void)sendAudioPowerSpectrumSourceRegistration:(BOOL)a3;
- (void)setAudioEnabled:(BOOL)a3;
- (void)setAudioPaused:(BOOL)a3;
- (void)setBasebandCongestionDetector:(id)a3;
- (void)setFECConfigurationOnStreamConfig:(id)a3 withStreamGroupID:(unsigned int)a4;
- (void)setMediaQueue:(tagVCMediaQueue *)a3;
- (void)setMediaRecorder:(id)a3;
- (void)setMediaState:(unsigned int)a3 forMediaType:(unsigned int)a4;
- (void)setMediaType:(unsigned int)a3 mixingWithMediaType:(unsigned int)a4;
- (void)setMuted:(BOOL)a3;
- (void)setScreenEnabled:(BOOL)a3;
- (void)setSharingEnabled:(BOOL)a3;
- (void)setStatisticsCollector:(id)a3;
- (void)setVideoEnabled:(BOOL)a3;
- (void)setVideoPaused:(BOOL)a3;
- (void)setupMediaTypeSettingsWithConfig:(id)a3;
- (void)setupPreferredIOSettings;
- (void)start;
- (void)startMultiwayStreams;
- (void)startScreenGroup;
- (void)startStreamGroups;
- (void)stop;
- (void)stopAudioIO;
- (void)stopInternal;
- (void)stopStreamGroups;
- (void)streamGroup:(id)a3 didChangeMediaPriority:(unsigned __int8)a4;
- (void)streamGroup:(id)a3 didReceiveFlushRequestWithPayloads:(id)a4;
- (void)streamGroup:(id)a3 didRemoteEnableChange:(BOOL)a4;
- (void)streamGroup:(id)a3 didRemotePauseChange:(BOOL)a4;
- (void)streamGroup:(id)a3 didRequestRedundancy:(BOOL)a4;
- (void)streamGroup:(id)a3 didSuspendStreams:(BOOL)a4;
- (void)streamGroup:(id)a3 didSwitchFromStreamID:(unsigned __int16)a4 toStreamID:(unsigned __int16)a5;
- (void)streamGroup:(id)a3 remoteMediaStalled:(BOOL)a4 duration:(double)a5;
- (void)streamGroup:(id)a3 requestKeyFrameGenerationWithStreamID:(unsigned __int16)a4 firType:(int)a5;
- (void)swapScreenStreamGroupSyncSourceWithState:(unsigned int)a3;
- (void)syncCameraMediaStateFromLegacyState;
- (void)syncLegacyWithEnabled:(BOOL *)a3 paused:(BOOL *)a4 fromState:(id)a5;
- (void)syncMicMediaStateFromLegacyState;
- (void)syncScreenMediaStateFromLegacyState;
- (void)syncState:(id)a3 fromLegacyWithEnabled:(BOOL)a4 paused:(BOOL)a5;
- (void)updateOneToOneVideoStreamCustomResolution:(id)a3 videoSettings:(id)a4;
- (void)updateVideoPaused:(BOOL)a3;
- (void)vcMediaStream:(id)a3 requestKeyFrameGenerationWithStreamID:(unsigned __int16)a4 firType:(int)a5;
@end

@implementation VCSessionParticipant

- (int)operatingMode
{
  if (!self->_oneToOneModeEnabled)
  {
    return 6;
  }

  if ([(VCSessionParticipant *)self dispatchedIsAnyCameraMediaTypeEnabled:v2])
  {
    return 1;
  }

  return 2;
}

- (BOOL)isAnyCameraMediaTypeEnabled
{
  if ([(VCSessionParticipant *)self isEnabledMediaType:1])
  {
    return 1;
  }

  return [(VCSessionParticipant *)self isPersonaCameraEnabled];
}

- (BOOL)dispatchedIsPersonaCameraEnabled
{
  dispatch_assert_queue_V2(self->_participantQueue);
  if ([(VCSessionParticipant *)self isEnabledMediaType:6])
  {
    return 1;
  }

  return [(VCSessionParticipant *)self isEnabledMediaType:8];
}

- (BOOL)isPersonaCameraEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCSessionParticipant_isPersonaCameraEnabled__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(participantQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __46__VCSessionParticipant_isPersonaCameraEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedIsPersonaCameraEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSDictionary)mediaTypeMixingList
{
  os_unfair_lock_lock(&self->_mediaTypeMixingListLock);
  v3 = [(NSMutableDictionary *)self->_mediaTypeMixingList copy];
  os_unfair_lock_unlock(&self->_mediaTypeMixingListLock);
  return v3;
}

- (void)callDelegateWithBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = MEMORY[0x1E1289F20](&self->_delegate, a2);
    if (v5)
    {
      v6 = v5;
      (*(a3 + 2))(a3, v5);

      CFRelease(v6);
      return;
    }

    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v13 = 136316162;
      v14 = v12;
      v15 = 2080;
      v16 = "[VCSessionParticipant callDelegateWithBlock:]";
      v17 = 1024;
      v18 = 159;
      v19 = 2112;
      v20 = v8;
      v21 = 2048;
      v22 = self;
      v11 = " [%s] %s:%d %@(%p) delegate could not be loaded";
LABEL_27:
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 0x30u);
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipant callDelegateWithBlock:];
      }
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipant callDelegateWithBlock:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v13 = 136316162;
        v14 = v9;
        v15 = 2080;
        v16 = "[VCSessionParticipant callDelegateWithBlock:]";
        v17 = 1024;
        v18 = 151;
        v19 = 2112;
        v20 = v7;
        v21 = 2048;
        v22 = self;
        v11 = " [%s] %s:%d %@(%p) block is nil";
        goto LABEL_27;
      }
    }
  }
}

- (void)callStreamDelegateWithBlock:(id)a3
{
  v4 = MEMORY[0x1E1289F20](&self->_streamDelegate, a2);
  (*(a3 + 2))(a3, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)logAllStreamTokens
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [(NSMutableDictionary *)self->_participantStreamTokens allValues];
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v6 = MEMORY[0x1E6986650];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v8 unsignedIntValue];
            *buf = 136316162;
            v14 = v9;
            v15 = 2080;
            v16 = "[VCSessionParticipant logAllStreamTokens]";
            v17 = 1024;
            v18 = 171;
            v19 = 2048;
            v20 = self;
            v21 = 1024;
            v22 = v11;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d (%p) streamToken=%u", buf, 0x2Cu);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)setSharingEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCSessionParticipant_setSharingEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)configureParticipantForLowPowerModeEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCSessionParticipant_configureParticipantForLowPowerModeEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)configureFECFeedbackVersionAndGenerator:(id)a3 withStreamGroupID:(unsigned int)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-fec-generator-enabled" userDefaultKey:@"isFECGeneratorEnabled" defaultValue:&unk_1F579C330 isDoubleType:{0), "BOOLValue"}];
  FECFeedbackVersion = VCMediaControlInfoGeneratorGetFECFeedbackVersion([objc_msgSend(a3 "rateControlConfig")]);
  IsLossStatsEnabled = VCMediaControlInfo_IsLossStatsEnabled(FECFeedbackVersion);
  v8 = v5 | IsLossStatsEnabled;
  if ((v5 & 1) == 0)
  {
    v9 = IsLossStatsEnabled;
    if (IsLossStatsEnabled)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v10;
          v14 = 2080;
          v15 = "[VCSessionParticipant configureFECFeedbackVersionAndGenerator:withStreamGroupID:]";
          v16 = 1024;
          v17 = 193;
          v18 = 1024;
          v19 = FECFeedbackVersion;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Enabling FECGenerator for FECFeedbackVersion=%d", &v12, 0x22u);
        }
      }

      v8 = v9;
    }
  }

  [a3 setFecGeneratorEnabled:v8 & 1];
}

- (void)configureFramebasedFecForOneToOneVideoStreamConfig:(id)a3 withStreamGroupID:(unsigned int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  [a3 setFecHeaderVersion:self->_negotiatedFECFeaderVersion];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    negotiatedFECFeaderVersion = self->_negotiatedFECFeaderVersion;
    *v19 = 136316162;
    *&v19[4] = v8;
    *&v19[12] = 2080;
    *&v19[14] = "[VCSessionParticipant configureFramebasedFecForOneToOneVideoStreamConfig:withStreamGroupID:]";
    *&v19[22] = 1024;
    *v20 = 201;
    *&v20[4] = 1024;
    *&v20[6] = negotiatedFECFeaderVersion;
    *&v20[10] = 2080;
    *&v20[12] = FourccToCStr(a4);
    v11 = " [%s] %s:%d Finalized fecHeader version is %d for streamGroupID=%s";
    v12 = v9;
    v13 = 44;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
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
      v16 = self->_negotiatedFECFeaderVersion;
      *v19 = 136316674;
      *&v19[4] = v14;
      *&v19[12] = 2080;
      *&v19[14] = "[VCSessionParticipant configureFramebasedFecForOneToOneVideoStreamConfig:withStreamGroupID:]";
      *&v19[22] = 1024;
      *v20 = 201;
      *&v20[4] = 2112;
      *&v20[6] = v7;
      *&v20[14] = 2048;
      *&v20[16] = self;
      LOWORD(v21) = 1024;
      *(&v21 + 2) = v16;
      HIWORD(v21) = 2080;
      v22 = FourccToCStr(a4);
      v11 = " [%s] %s:%d %@(%p) Finalized fecHeader version is %d for streamGroupID=%s";
      v12 = v15;
      v13 = 64;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v19, v13);
    }
  }

LABEL_12:
  if ([a3 fecHeaderVersion] == 2 && a4 == 1935897189)
  {
    v18 = 8;
  }

  else
  {
    v18 = 6;
  }

  [a3 setFecLossFeedbackBitfieldLength:v18];
  VCMediaQueue_SetIsFrameBasedRedundancyEnabled(self->_mediaQueue, [a3 fecHeaderVersion] == 2);
  [a3 setIsFECFrameBasedEnabled:{objc_msgSend(a3, "fecHeaderVersion") == 2}];
}

- (void)setFECConfigurationOnStreamConfig:(id)a3 withStreamGroupID:(unsigned int)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *&a4;
    if ([objc_msgSend(a3 "multiwayConfig")])
    {
      [(VCSessionParticipant *)self configureFECFeedbackVersionAndGenerator:a3 withStreamGroupID:v4];

      [(VCSessionParticipant *)self configureFramebasedFecForOneToOneVideoStreamConfig:a3 withStreamGroupID:v4];
    }

    else if (v4 == 1718909044)
    {
      [a3 setFecHeaderVersion:1];

      [(VCSessionParticipant *)self configureFECFeedbackVersionAndGenerator:a3 withStreamGroupID:1718909044];
    }

    else
    {
      [a3 setFecGeneratorEnabled:0];

      [a3 setFecHeaderVersion:0];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCSessionParticipant setFECConfigurationOnStreamConfig:withStreamGroupID:]";
      v13 = 1024;
      v14 = 210;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoStreamConfig is nil!", &v9, 0x1Cu);
    }
  }
}

- (void)syncState:(id)a3 fromLegacyWithEnabled:(BOOL)a4 paused:(BOOL)a5
{
  if (a5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (a4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [a3 setMediaState:v7];
}

- (void)syncLegacyWithEnabled:(BOOL *)a3 paused:(BOOL *)a4 fromState:(id)a5
{
  v7 = [a5 mediaState];
  if (!v7)
  {
    v8 = 0;
    goto LABEL_10;
  }

  if (v7 != 2)
  {
    if (v7 != 1)
    {
      return;
    }

    if (!a4)
    {
      goto LABEL_8;
    }

    v8 = 0;
LABEL_7:
    *a4 = v8;
LABEL_8:
    v8 = 1;
    goto LABEL_10;
  }

  v8 = 1;
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_10:
  *a3 = v8;
}

- (void)syncMicMediaStateFromLegacyState
{
  v3 = [(NSMutableDictionary *)self->_mediaTypeSettingsDict objectForKeyedSubscript:&unk_1F579C348];
  audioEnabled = self->_audioEnabled;
  audioPaused = self->_audioPaused;

  [(VCSessionParticipant *)self syncState:v3 fromLegacyWithEnabled:audioEnabled paused:audioPaused];
}

- (void)syncCameraMediaStateFromLegacyState
{
  v3 = [(NSMutableDictionary *)self->_mediaTypeSettingsDict objectForKeyedSubscript:&unk_1F579C360];
  videoEnabled = self->_videoEnabled;
  videoPaused = self->_videoPaused;

  [(VCSessionParticipant *)self syncState:v3 fromLegacyWithEnabled:videoEnabled paused:videoPaused];
}

- (void)syncScreenMediaStateFromLegacyState
{
  v3 = [(NSMutableDictionary *)self->_mediaTypeSettingsDict objectForKeyedSubscript:&unk_1F579C378];
  screenEnabled = self->_screenEnabled;

  [(VCSessionParticipant *)self syncState:v3 fromLegacyWithEnabled:screenEnabled paused:0];
}

- (void)startMultiwayStreams
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (id)stopMultiwayStreams
{
  [(VCSessionParticipant *)self stopStreamGroups];
  [(VCSessionParticipant *)self stopSystemAudioCapture];

  return [(VCSessionParticipant *)self stopAudioIO];
}

- (void)dispatchedStart
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedStop
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedSetAudioEnabled:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_participantQueue);
  if (self->_audioEnabled == v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioEnabled = self->_audioEnabled;
        *buf = 136315906;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCSessionParticipant dispatchedSetAudioEnabled:]";
        v13 = 1024;
        v14 = 349;
        v15 = 1024;
        v16 = audioEnabled;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Participant audio already set to enabled[%d]", buf, 0x22u);
      }
    }
  }

  else
  {
    if (self->_audioEnabled)
    {
      self->_audioPaused = 0;
      [(VCSessionParticipant *)self syncMicMediaStateFromLegacyState];
      self->_audioPausedToStart = 0;
    }

    state = self->_state;
    self->_audioEnabled = v3;
    [(VCSessionParticipant *)self syncMicMediaStateFromLegacyState];
    if (state && [(VCSessionParticipant *)self updateStreamGroups:self->_micStreamGroups])
    {
      [VCSessionParticipant dispatchedSetAudioEnabled:];
    }
  }

  [(VCSessionParticipant *)self callDelegateWithBlock:?];
}

- (void)dispatchedSetVideoEnabled:(BOOL)a3
{
  v3 = a3;
  v39 = *MEMORY[0x1E69E9840];
  if (self->_videoEnabled == a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoEnabled = self->_videoEnabled;
        *buf = 136315906;
        v32 = v5;
        v33 = 2080;
        v34 = "[VCSessionParticipant dispatchedSetVideoEnabled:]";
        v35 = 1024;
        v36 = 385;
        v37 = 1024;
        v38 = videoEnabled;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Participant video already set to enabled[%d]", buf, 0x22u);
      }
    }

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __50__VCSessionParticipant_dispatchedSetVideoEnabled___block_invoke;
    v28 = &unk_1E85F6758;
    v29 = self;
    LOBYTE(v30) = v3;
  }

  else
  {
    if (self->_videoEnabled)
    {
      self->_videoPaused = 0;
      [(VCSessionParticipant *)self syncCameraMediaStateFromLegacyState];
      self->_videoPausedToStart = 0;
    }

    state = self->_state;
    if (state == 1)
    {
      if (!v3)
      {
        self->_videoPausedToStart = self->_videoPaused;
      }

      v10 = [(VCSessionParticipant *)self applyVideoEnabledSetting:v3];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __50__VCSessionParticipant_dispatchedSetVideoEnabled___block_invoke_3;
      v14 = &unk_1E85F9FF0;
      LOBYTE(v17) = v3;
      v15 = self;
      v16 = v10;
    }

    else
    {
      if (state)
      {
        return;
      }

      v9 = [(VCSessionParticipant *)self applyVideoEnabledSetting:v3];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __50__VCSessionParticipant_dispatchedSetVideoEnabled___block_invoke_2;
      v21 = &unk_1E85F9FF0;
      LOBYTE(v24) = v3;
      v22 = self;
      v23 = v9;
    }
  }

  [(VCSessionParticipant *)self callDelegateWithBlock:v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30];
}

- (void)dispatchedSetScreenEnabled:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = [-[VCSessionParticipant screenGroup](self "screenGroup")];
        state = self->_state;
        *buf = 136316162;
        v23 = v6;
        v24 = 2080;
        v25 = "[VCSessionParticipant dispatchedSetScreenEnabled:]";
        v26 = 1024;
        v27 = 423;
        v28 = 2112;
        v29 = v8;
        v30 = 1024;
        LODWORD(v31) = state;
        v10 = " [%s] %s:%d screenStream[%@] state=%d";
        v11 = v7;
        v12 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = [-[VCSessionParticipant screenGroup](self "screenGroup")];
        v16 = self->_state;
        *buf = 136316674;
        v23 = v13;
        v24 = 2080;
        v25 = "[VCSessionParticipant dispatchedSetScreenEnabled:]";
        v26 = 1024;
        v27 = 423;
        v28 = 2112;
        v29 = v5;
        v30 = 2048;
        v31 = self;
        v32 = 2112;
        v33 = v15;
        v34 = 1024;
        v35 = v16;
        v10 = " [%s] %s:%d %@(%p) screenStream[%@] state=%d";
        v11 = v14;
        v12 = 64;
        goto LABEL_11;
      }
    }
  }

  if (self->_screenEnabled == v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        screenEnabled = self->_screenEnabled;
        *buf = 136315906;
        v23 = v17;
        v24 = 2080;
        v25 = "[VCSessionParticipant dispatchedSetScreenEnabled:]";
        v26 = 1024;
        v27 = 425;
        v28 = 1024;
        LODWORD(v29) = screenEnabled;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Participant screen video already set to enabled[%d]", buf, 0x22u);
      }
    }
  }

  else
  {
    v20 = self->_state;
    if (v20 == 1)
    {
      if (v3)
      {
        v21 = [(VCSessionParticipant *)self startScreenGroup];
      }

      else
      {
        v21 = [(VCSessionParticipant *)self stopScreenGroup];
      }

      if (v21)
      {
        goto LABEL_25;
      }
    }

    else if (v20)
    {
      return;
    }

    [(VCSessionParticipant *)self applyScreenEnabledSetting:v3];
  }

LABEL_25:
  [(VCSessionParticipant *)self callDelegateWithBlock:?];
}

- (void)dispatchedSetAudioPaused:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (self->_audioEnabled)
  {
    if (self->_audioPaused == a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          audioPaused = self->_audioPaused;
          buf[0] = 136315906;
          *&buf[1] = v5;
          v9 = 2080;
          v10 = "[VCSessionParticipant dispatchedSetAudioPaused:]";
          v11 = 1024;
          v12 = 468;
          v13 = 1024;
          v14 = audioPaused;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Participant audio already set to paused[%d]", buf, 0x22u);
        }
      }
    }

    else if (self->_state)
    {
      if (self->_audioPausedToStart)
      {
        if (a3)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCSessionParticipant dispatchedSetAudioPaused:];
            }
          }
        }

        else if ([(VCSessionParticipant *)self startMicStreamGroups])
        {
          [VCSessionParticipant dispatchedSetAudioPaused:];
        }

        else
        {
          self->_audioPausedToStart = 0;
        }
      }

      else if ([(VCSessionParticipant *)self setAudioStreamGroupsPaused:a3])
      {
        [VCSessionParticipant dispatchedSetAudioPaused:];
      }

      else if ([(VCSessionParticipant *)self pauseAudioStreams:v3])
      {
        [VCSessionParticipant dispatchedSetAudioPaused:];
      }

      else
      {
        self->_audioPaused = v3;
        [(VCSessionParticipant *)self syncMicMediaStateFromLegacyState];
      }
    }

    else
    {
      self->_audioPaused = a3;
      [(VCSessionParticipant *)self syncMicMediaStateFromLegacyState];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipant dispatchedSetAudioPaused:];
      }
    }

    +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 9, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionParticipant.m", 460]);
  }

  [(VCSessionParticipant *)self callDelegateWithBlock:?];
}

- (void)dispatchedSetVideoPaused:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if (self->_videoEnabled)
  {
    if (self->_videoPaused == a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          videoPaused = self->_videoPaused;
          *buf = 136315906;
          v17 = v5;
          v18 = 2080;
          v19 = "[VCSessionParticipant dispatchedSetVideoPaused:]";
          v20 = 1024;
          v21 = 522;
          v22 = 1024;
          v23 = videoPaused;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Participant video already set to paused[%d]", buf, 0x22u);
        }
      }

      goto LABEL_31;
    }

    if (!self->_state)
    {
      self->_videoPaused = a3;
      [(VCSessionParticipant *)self syncCameraMediaStateFromLegacyState];
      [(VCSessionParticipant *)self updateAudioSpectrumState];
      goto LABEL_31;
    }

    if (self->_videoPausedToStart)
    {
      if (a3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionParticipant dispatchedSetVideoPaused:];
          }
        }

        goto LABEL_31;
      }

      v12 = [(VCSessionParticipant *)self startVideo];
      self->_videoPausedToStart = 0;
      if (v12)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_31;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 136316162;
        v17 = v13;
        v18 = 2080;
        v19 = "[VCSessionParticipant dispatchedSetVideoPaused:]";
        v20 = 1024;
        v21 = 550;
        v22 = 1024;
        v23 = v3;
        v24 = 2112;
        v25 = v12;
        v11 = " [%s] %s:%d Failed to startVideo for videoPausedToStart paused=%d error=%@ ";
        goto LABEL_27;
      }

      v14 = self;
      v15 = 0;
    }

    else
    {
      v8 = [(VCSessionParticipant *)self pauseVideo:a3];
      if (v8)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_31;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 136316162;
        v17 = v9;
        v18 = 2080;
        v19 = "[VCSessionParticipant dispatchedSetVideoPaused:]";
        v20 = 1024;
        v21 = 560;
        v22 = 1024;
        v23 = v3;
        v24 = 2112;
        v25 = v8;
        v11 = " [%s] %s:%d paused=%d error=%@ ";
LABEL_27:
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x2Cu);
        goto LABEL_31;
      }

      v14 = self;
      v15 = v3;
    }

    [(VCSessionParticipant *)v14 updateVideoPaused:v15];
    goto LABEL_31;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipant dispatchedSetVideoPaused:];
    }
  }

  +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 9, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionParticipant.m", 514]);
LABEL_31:
  [(VCSessionParticipant *)self callDelegateWithBlock:?];
}

uint64_t __49__VCSessionParticipant_dispatchedSetVideoPaused___block_invoke_47(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcSessionParticipant:v3 videoPaused:v4 didSucceed:1 error:0];
}

- (void)dispatchedSetMediaState:(unsigned int)a3 forMediaType:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v65 = *MEMORY[0x1E69E9840];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_mediaTypeSettingsDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a4]);
  if (!v7)
  {
    v14 = +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 12, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionParticipant.m", 573]);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_16;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 136316162;
      v50 = v20;
      v51 = 2080;
      v52 = "[VCSessionParticipant dispatchedSetMediaState:forMediaType:]";
      v53 = 1024;
      v54 = 574;
      v55 = 2112;
      v56 = VCSessionMediaType_Name(v4);
      v57 = 2112;
      v58 = VCSessionMediaState_Name(v5);
      v22 = " [%s] %s:%d mediaTypeSettings is missing for mediaType=%@ mediaState=%@";
      v23 = v21;
      v24 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_16;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 136316674;
      v50 = v25;
      v51 = 2080;
      v52 = "[VCSessionParticipant dispatchedSetMediaState:forMediaType:]";
      v53 = 1024;
      v54 = 574;
      v55 = 2112;
      v56 = v15;
      v57 = 2048;
      v58 = self;
      v59 = 2112;
      v60 = VCSessionMediaType_Name(v4);
      v61 = 2112;
      v62 = VCSessionMediaState_Name(v5);
      v22 = " [%s] %s:%d %@(%p) mediaTypeSettings is missing for mediaType=%@ mediaState=%@";
      v23 = v26;
      v24 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 mediaState];
  if (v9 == v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_49;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      *buf = 136316162;
      v50 = v30;
      v51 = 2080;
      v52 = "[VCSessionParticipant dispatchedSetMediaState:forMediaType:]";
      v53 = 1024;
      v54 = 577;
      v55 = 2112;
      v56 = VCSessionMediaType_Name(v4);
      v57 = 2112;
      v58 = VCSessionMediaState_Name(v5);
      v32 = " [%s] %s:%d mediaType=%@ already set to mediaState=%@";
      v33 = v31;
      v34 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_49;
      }

      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      *buf = 136316674;
      v50 = v41;
      v51 = 2080;
      v52 = "[VCSessionParticipant dispatchedSetMediaState:forMediaType:]";
      v53 = 1024;
      v54 = 577;
      v55 = 2112;
      v56 = v27;
      v57 = 2048;
      v58 = self;
      v59 = 2112;
      v60 = VCSessionMediaType_Name(v4);
      v61 = 2112;
      v62 = VCSessionMediaState_Name(v5);
      v32 = " [%s] %s:%d %@(%p) mediaType=%@ already set to mediaState=%@";
      v33 = v42;
      v34 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
LABEL_49:
    v14 = 0;
    goto LABEL_16;
  }

  v10 = v9;
  [v8 setMediaState:v5];
  v11 = [v8 mediaType];
  if (v11 == 2)
  {
    p_screenEnabled = &self->_screenEnabled;
    v18 = self;
    v17 = 0;
  }

  else
  {
    if (v11 == 1)
    {
      v12 = 374;
      v13 = 377;
    }

    else
    {
      if (v11)
      {
        goto LABEL_14;
      }

      v12 = 373;
      v13 = 376;
    }

    p_screenEnabled = self + v12;
    v17 = self + v13;
    v18 = self;
  }

  [(VCSessionParticipant *)v18 syncLegacyWithEnabled:p_screenEnabled paused:v17 fromState:v8];
LABEL_14:
  v19 = [(VCSessionParticipant *)self applyMediaState:v5 forMediaType:v4];
  if (!v19)
  {
    v14 = [(VCSessionParticipant *)self completeMediaStateChange];
    if (!v14)
    {
      goto LABEL_16;
    }

    [v8 setMediaState:v10];
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v45 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316930;
          v50 = v45;
          v51 = 2080;
          v52 = "[VCSessionParticipant dispatchedSetMediaState:forMediaType:]";
          v53 = 1024;
          v54 = 598;
          v55 = 2112;
          v56 = v29;
          v57 = 2048;
          v58 = self;
          v59 = 2112;
          v60 = VCSessionMediaType_Name(v4);
          v61 = 2112;
          v62 = VCSessionMediaState_Name(v5);
          v63 = 2112;
          v64 = v14;
          v37 = " [%s] %s:%d %@(%p) Failed to complete setting the mediaState=%@ for mediaType=%@. error=%@";
          goto LABEL_58;
        }
      }

      goto LABEL_16;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_16;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316418;
    v50 = v38;
    v51 = 2080;
    v52 = "[VCSessionParticipant dispatchedSetMediaState:forMediaType:]";
    v53 = 1024;
    v54 = 598;
    v55 = 2112;
    v56 = VCSessionMediaType_Name(v4);
    v57 = 2112;
    v58 = VCSessionMediaState_Name(v5);
    v59 = 2112;
    v60 = v14;
    v37 = " [%s] %s:%d Failed to complete setting the mediaState=%@ for mediaType=%@. error=%@";
LABEL_43:
    v39 = v36;
    v40 = 58;
LABEL_59:
    _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v37, buf, v40);
    goto LABEL_16;
  }

  v14 = v19;
  [v8 setMediaState:v10];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_16;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316418;
    v50 = v35;
    v51 = 2080;
    v52 = "[VCSessionParticipant dispatchedSetMediaState:forMediaType:]";
    v53 = 1024;
    v54 = 595;
    v55 = 2112;
    v56 = VCSessionMediaType_Name(v4);
    v57 = 2112;
    v58 = VCSessionMediaState_Name(v5);
    v59 = 2112;
    v60 = v14;
    v37 = " [%s] %s:%d Failed to set the mediaState=%@ for mediaType=%@. error=%@";
    goto LABEL_43;
  }

  if (objc_opt_respondsToSelector())
  {
    v28 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
  }

  else
  {
    v28 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v43 = VRTraceErrorLogLevelToCSTR();
    v44 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      v50 = v43;
      v51 = 2080;
      v52 = "[VCSessionParticipant dispatchedSetMediaState:forMediaType:]";
      v53 = 1024;
      v54 = 595;
      v55 = 2112;
      v56 = v28;
      v57 = 2048;
      v58 = self;
      v59 = 2112;
      v60 = VCSessionMediaType_Name(v4);
      v61 = 2112;
      v62 = VCSessionMediaState_Name(v5);
      v63 = 2112;
      v64 = v14;
      v37 = " [%s] %s:%d %@(%p) Failed to set the mediaState=%@ for mediaType=%@. error=%@";
LABEL_58:
      v39 = v44;
      v40 = 78;
      goto LABEL_59;
    }
  }

LABEL_16:
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __61__VCSessionParticipant_dispatchedSetMediaState_forMediaType___block_invoke;
  v46[3] = &unk_1E85FA018;
  v47 = v5;
  v48 = v4;
  v46[4] = self;
  v46[5] = v14;
  [(VCSessionParticipant *)self callDelegateWithBlock:v46];
}

- (void)dispatchSetMediaType:(unsigned int)a3 mixingWithMediaType:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v44 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_participantQueue);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v8 = [(NSDictionary *)[(VCSessionParticipant *)self mediaTypeMixingList] objectForKeyedSubscript:v7];
  v10 = v5 != v4 && v8 == 0;
  if (v8)
  {
    v11 = [v8 integerValue] != v4;
  }

  else
  {
    v11 = 0;
  }

  if (v10 || v11)
  {
    os_unfair_lock_lock(&self->_mediaTypeMixingListLock);
    if (v5 == v4)
    {
      [(NSMutableDictionary *)self->_mediaTypeMixingList setObject:0 forKeyedSubscript:v7];
      os_unfair_lock_unlock(&self->_mediaTypeMixingListLock);
      if (v5 != 2)
      {
        goto LABEL_21;
      }

      v12 = 1937339233;
    }

    else
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_mediaTypeMixingList, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4], v7);
      os_unfair_lock_unlock(&self->_mediaTypeMixingListLock);
      if (v5 != 2 || v4 != 1)
      {
LABEL_21:
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 6)
          {
            goto LABEL_40;
          }

          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          *buf = 136316162;
          v33 = v20;
          v34 = 2080;
          v35 = "[VCSessionParticipant dispatchSetMediaType:mixingWithMediaType:]";
          v36 = 1024;
          v37 = 628;
          v38 = 2112;
          *v39 = VCSessionMediaType_Name(v5);
          *&v39[8] = 2112;
          v40 = VCSessionMediaType_Name(v4);
          v22 = " [%s] %s:%d Setting mediaType=%@ mixingMediaType=%@";
          v23 = v21;
          v24 = 48;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v14 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
          }

          else
          {
            v14 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 6)
          {
            goto LABEL_40;
          }

          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          *buf = 136316674;
          v33 = v27;
          v34 = 2080;
          v35 = "[VCSessionParticipant dispatchSetMediaType:mixingWithMediaType:]";
          v36 = 1024;
          v37 = 628;
          v38 = 2112;
          *v39 = v14;
          *&v39[8] = 2048;
          v40 = self;
          v41 = 2112;
          *v42 = VCSessionMediaType_Name(v5);
          *&v42[8] = 2112;
          v43 = VCSessionMediaType_Name(v4);
          v22 = " [%s] %s:%d %@(%p) Setting mediaType=%@ mixingMediaType=%@";
          v23 = v28;
          v24 = 68;
        }

        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_40:
        [(VCSessionParticipant *)self reportCameraCompositionEnabled:v5 != v4];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __65__VCSessionParticipant_dispatchSetMediaType_mixingWithMediaType___block_invoke;
        v29[3] = &unk_1E85F67F8;
        v29[4] = self;
        v30 = v5;
        v31 = v4;
        [(VCSessionParticipant *)self callDelegateWithBlock:v29];
        return;
      }

      v12 = 1835623282;
    }

    [(VCSessionParticipant *)self setStreamGroup:1935897189 syncSourceStreamGroupID:v12];
    goto LABEL_21;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v33 = v15;
        v34 = 2080;
        v35 = "[VCSessionParticipant dispatchSetMediaType:mixingWithMediaType:]";
        v36 = 1024;
        v37 = 636;
        v38 = 1024;
        *v39 = v5;
        *&v39[4] = 1024;
        *&v39[6] = v4;
        v17 = " [%s] %s:%d mediaType=%d already mixingMediaType=%d";
        v18 = v16;
        v19 = 40;
LABEL_34:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v33 = v25;
        v34 = 2080;
        v35 = "[VCSessionParticipant dispatchSetMediaType:mixingWithMediaType:]";
        v36 = 1024;
        v37 = 636;
        v38 = 2112;
        *v39 = v13;
        *&v39[8] = 2048;
        v40 = self;
        v41 = 1024;
        *v42 = v5;
        *&v42[4] = 1024;
        *&v42[6] = v4;
        v17 = " [%s] %s:%d %@(%p) mediaType=%d already mixingMediaType=%d";
        v18 = v26;
        v19 = 60;
        goto LABEL_34;
      }
    }
  }
}

+ (id)participantInfoWithParticipantData:(id)a3
{
  if (a3)
  {
    return [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:0];
  }

  else
  {
    return 0;
  }
}

+ (id)participantDataWithParticipantInfo:(id)a3
{
  if (a3)
  {
    return [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:0];
  }

  else
  {
    return 0;
  }
}

+ (id)participantDataWithMediaNegotiatorVersion:(int)a3 participantData:(id)a4
{
  if (!a4)
  {
    +[VCSessionParticipant participantDataWithMediaNegotiatorVersion:participantData:];
    return v15;
  }

  v4 = [VCSessionParticipant participantInfoWithParticipantData:a4];
  if (!v4)
  {
    +[VCSessionParticipant participantDataWithMediaNegotiatorVersion:participantData:];
    return v15;
  }

  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
  if (!v6)
  {
    +[VCSessionParticipant participantDataWithMediaNegotiatorVersion:participantData:];
    return v15;
  }

  v7 = v6;
  v8 = [VCSessionMediaNegotiator mediaBlobForVersion:0 negotiationData:v6];
  if (!v8)
  {
    +[VCSessionParticipant participantDataWithMediaNegotiatorVersion:participantData:];
    return v15;
  }

  v9 = v8;
  v10 = [VCSessionMediaNegotiator mediaBlobForVersion:1 negotiationData:v7];
  if (!v10)
  {
    +[VCSessionParticipant participantDataWithMediaNegotiatorVersion:participantData:];
    return v15;
  }

  v11 = v10;
  v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
  if (!v12)
  {
    +[VCSessionParticipant participantDataWithMediaNegotiatorVersion:participantData:];
    return v15;
  }

  v13 = v12;
  [v12 setObject:0 forKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
  [v13 setObject:v9 forKeyedSubscript:@"vcSessionParticipantKeyMediaBlob"];
  [v13 setObject:v11 forKeyedSubscript:@"b2n"];

  return [VCSessionParticipant participantDataWithParticipantInfo:v13];
}

+ (id)streamGroupIDsFromParticipantData:(id)a3
{
  v3 = [VCSessionParticipant participantInfoWithParticipantData:a3];
  if (!v3)
  {
    +[VCSessionParticipant streamGroupIDsFromParticipantData:];
    return v6;
  }

  v4 = [v3 objectForKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
  if (!v4)
  {
    +[VCSessionParticipant streamGroupIDsFromParticipantData:];
    return v6;
  }

  return [VCSessionMediaNegotiator streamGroupIDsWithMediaBlob:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@[%p] idsDestination[%@] idsParticipantID[%llu] participantUUID[%@] state[%s]", NSStringFromClass(v4), self, self->_idsDestination, self->_idsParticipantID, self->_uuid, -[VCSessionParticipant participantStateToString:](self, "participantStateToString:", self->_state)];
}

- (id)generateEncryptionKeyForCipherSuite:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  SRTPMediaKeyLength = VCMediaStreamTransport_GetSRTPMediaKeyLength(a3);
  v5 = VCMediaStreamTransport_GetSRTPSaltLength(a3) + SRTPMediaKeyLength;
  v6 = [MEMORY[0x1E695DF88] dataWithCapacity:v5];
  if (v5 >= 2)
  {
    v7 = 0;
    v8 = v5 >> 1;
    do
    {
      v10 = hwrandom();
      [v6 appendBytes:&v10 length:2];
      ++v7;
    }

    while (v8 > v7);
  }

  return v6;
}

- (void)stopInternal
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCSessionParticipant stopInternal]";
        *&v11[22] = 1024;
        LODWORD(v12) = 769;
        v6 = " [%s] %s:%d Tearing down participant";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
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
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCSessionParticipant stopInternal]";
        *&v11[22] = 1024;
        LODWORD(v12) = 769;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        v13 = self;
        v6 = " [%s] %s:%d %@(%p) Tearing down participant";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCSessionParticipant *)self stopVideoCaptureClient:*v11];
  [(VCSessionParticipant *)self stopStreamGroups];
  [(VCSessionParticipant *)self stopOneToOneStreams];
  [(VCSessionParticipant *)self setState:0];
}

- (id)startAudioIO
{
  v19 = *MEMORY[0x1E69E9840];
  [(VCSessionParticipant *)self onStartAudioIO];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  AUIOGetAUNumber(&v18);
  [(VCAudioIO *)self->_audioIO setFarEndVersionInfo:v17];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      audioIO = self->_audioIO;
      v7 = 136316162;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSessionParticipant startAudioIO]";
      v11 = 1024;
      v12 = 794;
      v13 = 2048;
      v14 = self;
      v15 = 2048;
      v16 = audioIO;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d (%p) starting audioIO=%p", &v7, 0x30u);
    }
  }

  return [(VCAudioIO *)self->_audioIO start];
}

- (id)stopAudioIO
{
  v2 = [(VCAudioIO *)self->_audioIO stop];
  if (v2)
  {
    [VCSessionParticipant stopAudioIO];
  }

  return v2;
}

- (id)startMediaStreams:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      if (![objc_msgSend(v9 "stream")])
      {
        v10 = [objc_msgSend(v9 "stream")];
        if (v10)
        {
          v6 = v10;
        }
      }
    }

    v5 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  }

  while (v5);
  return v6;
}

- (id)stopMicStreamGroups
{
  if (self->_oneToOneModeEnabled)
  {
    return 0;
  }

  else
  {
    return [(VCSessionParticipant *)self stopStreamGroups:self->_micStreamGroups];
  }
}

- (id)startMicStreamGroups
{
  if (self->_oneToOneModeEnabled)
  {
    return 0;
  }

  else
  {
    return [(VCSessionParticipant *)self startStreamGroups:self->_micStreamGroups];
  }
}

- (id)startCameraStreamGroups
{
  if (self->_oneToOneModeEnabled)
  {
    return 0;
  }

  v5 = [(VCSessionParticipant *)self cameraGroups];

  return [(VCSessionParticipant *)self startStreamGroups:v5];
}

- (id)stopStreamGroups:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(a3);
      }

      result = [*(*(&v9 + 1) + 8 * v7) stop];
      if (result)
      {
        break;
      }

      if (v5 == ++v7)
      {
        result = [a3 countByEnumeratingWithState:&v9 objects:v8 count:16];
        v5 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)startStreamGroups:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) start];
        if (v9)
        {
          v10 = v9;
          [(VCSessionParticipant *)self stopStreamGroups:a3];
          return v10;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (id)updateStreamGroups:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v37;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v37 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v9 = *(*(&v36 + 1) + 8 * i);
      v10 = [(VCSessionParticipant *)self updateActiveStateForStreamGroup:v9];
      if (v10)
      {
        v12 = v10;
        [(VCSessionParticipant *)self stopStreamGroups:a3];
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            return 0;
          }

          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          v21 = 136316162;
          v22 = v14;
          v23 = 2080;
          v24 = "[VCSessionParticipant updateStreamGroups:]";
          v25 = 1024;
          v26 = 864;
          v27 = 2080;
          v28 = FourccToCStr([v9 streamGroupID]);
          v29 = 2112;
          v30 = v12;
          v16 = " [%s] %s:%d Failed to update streamgroup=%s, Error=%@";
          v17 = v15;
          v18 = 48;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v13 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
          }

          else
          {
            v13 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            return 0;
          }

          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          v21 = 136316674;
          v22 = v19;
          v23 = 2080;
          v24 = "[VCSessionParticipant updateStreamGroups:]";
          v25 = 1024;
          v26 = 864;
          v27 = 2112;
          v28 = v13;
          v29 = 2048;
          v30 = self;
          v31 = 2080;
          v32 = FourccToCStr([v9 streamGroupID]);
          v33 = 2112;
          v34 = v12;
          v16 = " [%s] %s:%d %@(%p) Failed to update streamgroup=%s, Error=%@";
          v17 = v20;
          v18 = 68;
        }

        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v16, &v21, v18);
        return 0;
      }
    }

    v6 = [a3 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  return 0;
}

- (id)startStreamGroups
{
  v71 = *MEMORY[0x1E69E9840];
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v46)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [(NSMutableDictionary *)self->_streamGroups allValues];
    v3 = [obj countByEnumeratingWithState:&v67 objects:v66 count:16];
    if (!v3)
    {
LABEL_25:
      v27 = 0;
      goto LABEL_36;
    }

    v4 = v3;
    v5 = *v68;
    v6 = MEMORY[0x1E6986650];
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v68 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v67 + 1) + 8 * v7);
      if ([(VCSessionParticipant *)self isStreamGroupActive:v8])
      {
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSessionParticipant-startStreamGroups");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [(VCObject *)self logPrefix];
            v12 = FourccToCStr([v8 streamGroupID]);
            v13 = [v8 streamToken];
            *buf = 136316674;
            v53 = v9;
            v54 = 2080;
            v55 = "[VCSessionParticipant startStreamGroups]";
            v56 = 1024;
            v57 = 915;
            v58 = 2048;
            v59 = self;
            v60 = 2112;
            *v61 = v11;
            v6 = MEMORY[0x1E6986650];
            *&v61[8] = 2080;
            *&v61[10] = v12;
            v62 = 1024;
            v63 = v13;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCSessionParticipant-startStreamGroups (%p) %@ Starting stream group. streamGroupID=%s, streamToken=%u", buf, 0x40u);
          }
        }

        v14 = [v8 start];
        if (v14)
        {
          v27 = v14;
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v34 = VRTraceErrorLogLevelToCSTR();
              v35 = *v6;
              if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
              {
                v36 = FourccToCStr([v8 streamGroupID]);
                v37 = [v8 streamToken];
                *buf = 136316418;
                v53 = v34;
                v54 = 2080;
                v55 = "[VCSessionParticipant startStreamGroups]";
                v56 = 1024;
                v57 = 917;
                v58 = 2080;
                v59 = v36;
                v60 = 1024;
                *v61 = v37;
                *&v61[4] = 2112;
                *&v61[6] = v27;
                v38 = " [%s] %s:%d Failed to start stream group. streamGroupID=%s streamToken=%u error=%@";
                v39 = v35;
                v40 = 54;
LABEL_47:
                _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v33 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
            }

            else
            {
              v33 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v41 = VRTraceErrorLogLevelToCSTR();
              v42 = *v6;
              if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
              {
                v43 = FourccToCStr([v8 streamGroupID]);
                v44 = [v8 streamToken];
                *buf = 136316930;
                v53 = v41;
                v54 = 2080;
                v55 = "[VCSessionParticipant startStreamGroups]";
                v56 = 1024;
                v57 = 917;
                v58 = 2112;
                v59 = v33;
                v60 = 2048;
                *v61 = self;
                *&v61[8] = 2080;
                *&v61[10] = v43;
                v62 = 1024;
                v63 = v44;
                v64 = 2112;
                v65 = v27;
                v38 = " [%s] %s:%d %@(%p) Failed to start stream group. streamGroupID=%s streamToken=%u error=%@";
                v39 = v42;
                v40 = 74;
                goto LABEL_47;
              }
            }
          }

LABEL_29:
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v28 = [v46 countByEnumeratingWithState:&v48 objects:v47 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v49;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v49 != v30)
                {
                  objc_enumerationMutation(v46);
                }

                [*(*(&v48 + 1) + 8 * i) stop];
              }

              v29 = [v46 countByEnumeratingWithState:&v48 objects:v47 count:16];
            }

            while (v29);
          }

          goto LABEL_36;
        }

        [v46 addObject:v8];
      }

      else
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_23;
          }

          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *v6;
          if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          v25 = FourccToCStr([v8 streamGroupID]);
          v26 = [v8 streamToken];
          *buf = 136316162;
          v53 = v23;
          v54 = 2080;
          v55 = "[VCSessionParticipant startStreamGroups]";
          v56 = 1024;
          v57 = 912;
          v58 = 2080;
          v59 = v25;
          v60 = 1024;
          *v61 = v26;
          v20 = v24;
          v21 = " [%s] %s:%d streamGroupID=%s, streamToken=%u is inactive";
          v22 = 44;
        }

        else
        {
          v15 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v15 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_23;
          }

          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *v6;
          if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          v18 = FourccToCStr([v8 streamGroupID]);
          v19 = [v8 streamToken];
          *buf = 136316674;
          v53 = v16;
          v54 = 2080;
          v55 = "[VCSessionParticipant startStreamGroups]";
          v56 = 1024;
          v57 = 912;
          v58 = 2112;
          v59 = v15;
          v60 = 2048;
          *v61 = self;
          *&v61[8] = 2080;
          *&v61[10] = v18;
          v6 = MEMORY[0x1E6986650];
          v62 = 1024;
          v63 = v19;
          v20 = v17;
          v21 = " [%s] %s:%d %@(%p) streamGroupID=%s, streamToken=%u is inactive";
          v22 = 64;
        }

        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
      }

LABEL_23:
      if (v4 == ++v7)
      {
        v4 = [obj countByEnumeratingWithState:&v67 objects:v66 count:16];
        if (v4)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }
    }
  }

  v27 = +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 10, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionParticipant.m", 906]);
  if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
  {
    [VCSessionParticipant startStreamGroups];
    if (v27)
    {
      goto LABEL_29;
    }
  }

  else if (v27)
  {
    goto LABEL_29;
  }

LABEL_36:

  return v27;
}

- (void)stopStreamGroups
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMutableDictionary *)self->_streamGroups allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) stop];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (id)startScreenGroup
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v4;
        *&v13[12] = 2080;
        *&v13[14] = "[VCSessionParticipant startScreenGroup]";
        *&v13[22] = 1024;
        LODWORD(v14) = 942;
        WORD2(v14) = 2112;
        *(&v14 + 6) = [(VCSessionParticipant *)self screenGroup];
        HIWORD(v14) = 2112;
        v15 = [(VCSessionParticipant *)self systemAudioGroup];
        *v16 = 1024;
        *&v16[2] = +[VCHardwareSettings supportsDedicatedSystemAudioStream];
        v6 = " [%s] %s:%d screenStreamGroup=%@, sysaStreamGroup=%@, supportsDedicatedSystemAudioStream=%d";
        v7 = v5;
        v8 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v13, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316930;
        *&v13[4] = v9;
        *&v13[12] = 2080;
        *&v13[14] = "[VCSessionParticipant startScreenGroup]";
        *&v13[22] = 1024;
        LODWORD(v14) = 942;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v3;
        HIWORD(v14) = 2048;
        v15 = self;
        *v16 = 2112;
        *&v16[2] = [(VCSessionParticipant *)self screenGroup];
        *&v16[10] = 2112;
        *&v16[12] = [(VCSessionParticipant *)self systemAudioGroup];
        *&v16[20] = 1024;
        *&v16[22] = +[VCHardwareSettings supportsDedicatedSystemAudioStream];
        v6 = " [%s] %s:%d %@(%p) screenStreamGroup=%@, sysaStreamGroup=%@, supportsDedicatedSystemAudioStream=%d";
        v7 = v10;
        v8 = 74;
        goto LABEL_11;
      }
    }
  }

  if ([-[VCSessionParticipant screenGroup](self screenGroup])
  {
    [VCSessionParticipant startScreenGroup];
LABEL_19:
    v11 = *v13;
    [(VCSessionParticipant *)self stopScreenGroup];
    return v11;
  }

  if (-[VCSessionParticipant systemAudioGroup](self, "systemAudioGroup") && [-[VCSessionParticipant systemAudioGroup](self "systemAudioGroup")])
  {
    [VCSessionParticipant startScreenGroup];
    goto LABEL_19;
  }

  [(VCSessionParticipant *)self startSystemAudioCapture];
  [(VCSessionParticipant *)self swapScreenStreamGroupSyncSourceWithState:2];
  return 0;
}

- (id)stopScreenGroup
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v14 = 136316162;
    *&v14[4] = v4;
    *&v14[12] = 2080;
    *&v14[14] = "[VCSessionParticipant stopScreenGroup]";
    *&v14[22] = 1024;
    LODWORD(v15) = 961;
    WORD2(v15) = 2112;
    *(&v15 + 6) = [(VCSessionParticipant *)self screenGroup];
    HIWORD(v15) = 2112;
    v16 = [(VCSessionParticipant *)self systemAudioGroup];
    v6 = " [%s] %s:%d streamGroup: %@, streamGroup: %@";
    v7 = v5;
    v8 = 48;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
  }

  else
  {
    v3 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 136316674;
      *&v14[4] = v9;
      *&v14[12] = 2080;
      *&v14[14] = "[VCSessionParticipant stopScreenGroup]";
      *&v14[22] = 1024;
      LODWORD(v15) = 961;
      WORD2(v15) = 2112;
      *(&v15 + 6) = v3;
      HIWORD(v15) = 2048;
      v16 = self;
      *v17 = 2112;
      *&v17[2] = [(VCSessionParticipant *)self screenGroup];
      *&v17[10] = 2112;
      *&v17[12] = [(VCSessionParticipant *)self systemAudioGroup];
      v6 = " [%s] %s:%d %@(%p) streamGroup: %@, streamGroup: %@";
      v7 = v10;
      v8 = 68;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v14, v8);
    }
  }

LABEL_12:
  v11 = [-[VCSessionParticipant screenGroup](self screenGroup];
  if ([(VCSessionParticipant *)self systemAudioGroup])
  {
    v12 = [-[VCSessionParticipant systemAudioGroup](self "systemAudioGroup")];
  }

  else
  {
    v12 = 0;
  }

  [(VCSessionParticipant *)self stopSystemAudioCapture];
  if (v11)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

- (id)stopMediaStreams:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      if ([objc_msgSend(v9 "stream")])
      {
        v10 = [objc_msgSend(v9 "stream")];
        if (v10)
        {
          v6 = v10;
        }
      }
    }

    v5 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  }

  while (v5);
  return v6;
}

- (id)stopAudioStreams
{
  v19 = *MEMORY[0x1E69E9840];
  [(VCSessionParticipant *)self stopSystemAudioCapture];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    audioIO = self->_audioIO;
    *v15 = 136315906;
    *&v15[4] = v4;
    *&v15[12] = 2080;
    *&v15[14] = "[VCSessionParticipant stopAudioStreams]";
    *&v15[22] = 1024;
    LODWORD(v16) = 1001;
    WORD2(v16) = 2048;
    *(&v16 + 6) = audioIO;
    v7 = " [%s] %s:%d Stopping audioIO=%p";
    v8 = v5;
    v9 = 38;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
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
      v12 = self->_audioIO;
      *v15 = 136316418;
      *&v15[4] = v10;
      *&v15[12] = 2080;
      *&v15[14] = "[VCSessionParticipant stopAudioStreams]";
      *&v15[22] = 1024;
      LODWORD(v16) = 1001;
      WORD2(v16) = 2112;
      *(&v16 + 6) = v3;
      HIWORD(v16) = 2048;
      v17 = self;
      LOWORD(v18) = 2048;
      *(&v18 + 2) = v12;
      v7 = " [%s] %s:%d %@(%p) Stopping audioIO=%p";
      v8 = v11;
      v9 = 58;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v15, v9);
    }
  }

LABEL_12:
  if ([(VCAudioIO *)self->_audioIO state:*v15]== 2)
  {
    v13 = [(VCAudioIO *)self->_audioIO stop];
  }

  else
  {
    v13 = 0;
  }

  [(VCSessionParticipant *)self stopAudioIOCompletion];
  return v13;
}

- (id)setCameraStreamGroupsPaused:(BOOL)a3
{
  v3 = a3;
  v5 = [(VCSessionParticipant *)self cameraGroups];

  return [(VCSessionParticipant *)self setPaused:v3 onStreamGroups:v5];
}

- (id)setPaused:(BOOL)a3 onStreamGroups:(id)a4
{
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(a4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 state];
        if (v5)
        {
          if (v12 == 1)
          {
            v13 = [v11 pause];
            goto LABEL_12;
          }
        }

        else if (v12 == 2)
        {
          v13 = [v11 resume];
          goto LABEL_12;
        }

        v13 = 0;
LABEL_12:
        if (v13)
        {
          v8 = v13;
        }
      }

      v7 = [a4 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (!v7)
      {
        return v8;
      }
    }
  }

  return 0;
}

- (BOOL)shouldSetPause:(BOOL)a3 onStream:(id)a4
{
  v4 = a3;
  v5 = [a4 state];
  if (v4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  return v5 != v6;
}

- (id)pauseAudioStreams:(BOOL)a3
{
  if (a3)
  {
    [(VCSessionParticipant *)self onPauseAudioStreams];
  }

  else
  {
    [(VCSessionParticipant *)self onDidResumeAudio];
  }

  return 0;
}

+ (void)addCodecModesForPayload:(int)a3 toCodecConfig:(id)a4
{
  switch(a3)
  {
    case 'q':
      v5 = 25;
      v6 = &unk_1F579E370;
      break;
    case 'l':
      v5 = 14;
      v6 = &unk_1F579E340;
      break;
    case 'b':
      v5 = 1;
      v6 = &unk_1F579E358;
      break;
    default:
      return;
  }

  [a4 setSupportedModes:v6];

  [a4 setPreferredMode:v5];
}

- (BOOL)setupAudioStreamConfiguration:(id)a3 audioRules:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v21 = [objc_msgSend(a3 "multiwayConfig")];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [a4 rules];
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v36 + 1) + 8 * v10) payload];
      if (v11 == 20)
      {
        [a3 setupRedWithRxPayload:20 txPayload:20];
      }

      else
      {
        v12 = v11;
        v13 = [[VCAudioStreamCodecConfig alloc] initWithCodecType:[VCPayloadUtils codecTypeForPayload:v11]];
        v14 = v13;
        if (v12 == 101 && self->_isLowLatencyAudio && v21 == 1835623282)
        {
          [(VCAudioStreamCodecConfig *)v13 setPTime:10];
        }

        if (!v14)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
              if (!v16)
              {
                return v16;
              }

              [VCSessionParticipant setupAudioStreamConfiguration:audioRules:];
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v17 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
            }

            else
            {
              v17 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              v16 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
              if (!v16)
              {
                return v16;
              }

              *buf = 136316418;
              v24 = v18;
              v25 = 2080;
              v26 = "[VCSessionParticipant setupAudioStreamConfiguration:audioRules:]";
              v27 = 1024;
              v28 = 1125;
              v29 = 2112;
              v30 = v17;
              v31 = 2048;
              v32 = self;
              v33 = 1024;
              v34 = v12;
              _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate codec config for payload=%d!", buf, 0x36u);
            }
          }

          LOBYTE(v16) = 0;
          return v16;
        }

        [VCSessionParticipant addCodecModesForPayload:v12 toCodecConfig:v14];
        [a3 addCodecConfiguration:v14];
        [a3 setForceEVSWideBand:{-[VCHardwareSettingsEmbedded deviceClass](+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded, "sharedInstance"), "deviceClass") == 6}];
        if ([+[VCDefaults forceEVSWideBand] sharedInstance]
        {
          [a3 setForceEVSWideBand:1];
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v36 objects:v35 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [a3 setAudioRules:a4];
  if ([objc_msgSend(objc_msgSend(a3 "audioRules")])
  {
    if ([objc_msgSend(a3 "codecConfigurations")])
    {
      LOBYTE(v16) = 1;
      return v16;
    }

    [VCSessionParticipant setupAudioStreamConfiguration:audioRules:];
  }

  else
  {
    [VCSessionParticipant setupAudioStreamConfiguration:audioRules:];
  }

  LOBYTE(v16) = buf[0];
  return v16;
}

- (BOOL)isOneToOneTemporalSupportedForSettings:(id)a3 streamDirection:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = [a3 videoRuleCollections];
    v5 = 1;
    return [v4 getVideoRulesForTransport:1 payload:100 encodingType:v5] != 0;
  }

  if (a4 == 2)
  {
    v4 = [a3 videoRuleCollections];
    v5 = 2;
    return [v4 getVideoRulesForTransport:1 payload:100 encodingType:v5] != 0;
  }

  return 0;
}

- (id)newOneToOneVideoStreamMultiwayConfiguration:(unsigned __int8)a3 streamGroupId:(unsigned int)a4 videoSettings:(id)a5 streamDirection:(int64_t)a6
{
  v8 = *&a4;
  v9 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(VCMediaStreamMultiwayConfigVideo);
  if (v11)
  {
    v21 = self;
    v22 = a6;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [objc_msgSend(a5 "videoRuleCollections")];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = [*(*(&v24 + 1) + 8 * i) unsignedIntValue];
          [(VCMediaStreamMultiwayConfigVideo *)v11 addPayload:v18];
          if (!v15)
          {
            v15 = [objc_msgSend(a5 "videoRuleCollections")];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    [(VCMediaStreamMultiwayConfig *)v11 setIsOneToOne:1];
    [(VCMediaStreamMultiwayConfig *)v11 setStreamGroupID:v8];
    -[VCMediaStreamMultiwayConfigVideo setResolution:](v11, "setResolution:", +[VideoUtil videoResolutionForWidth:height:](VideoUtil, "videoResolutionForWidth:height:", [objc_msgSend(v15 objectAtIndexedSubscript:{0), "iWidth"}], objc_msgSend(objc_msgSend(v15, "objectAtIndexedSubscript:", 0), "iHeight")));
    [objc_msgSend(v15 objectAtIndexedSubscript:{0), "fRate"}];
    [(VCMediaStreamMultiwayConfigVideo *)v11 setFramerate:v19];
    [(VCMediaStreamMultiwayConfigVideo *)v11 setKeyFrameInterval:0];
    if (v8 == 1650745716)
    {
      if (VCFeatureFlagManager_PersonaV2Enabled())
      {
        return v11;
      }

      goto LABEL_19;
    }

    if (v8 == 1935897189 && [(VCSessionParticipant *)v21 isOneToOneTemporalSupportedForSettings:a5 streamDirection:v22])
    {
LABEL_19:
      [(VCMediaStreamMultiwayConfigVideo *)v11 setIsTemporalStream:1];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipant newOneToOneVideoStreamMultiwayConfiguration:streamGroupId:videoSettings:streamDirection:];
    }
  }

  return v11;
}

- (BOOL)didNegotiateStreamGroupWithID:(unsigned int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(VCSessionMediaNegotiator *)self->_mediaNegotiator negotiatedStreamGroups];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * v8) groupID] == a3)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (BOOL)supportsLowLatencyAudio
{
  if (+[VCHardwareSettings deviceClass]!= 8)
  {
    return 0;
  }

  if (self->_oneToOneModeEnabled)
  {
    if (([-[VCSessionMediaNegotiator negotiatedResultsForGroupID:](self->_mediaNegotiator negotiatedResultsForGroupID:{1650745716), "isSupported"}] & 1) == 0)
    {
      v3 = [(VCSessionMediaNegotiator *)self->_mediaNegotiator negotiatedResultsForGroupID:1718909044];

      return [v3 isSupported];
    }

    return 1;
  }

  if ([(VCSessionParticipant *)self didNegotiateStreamGroupWithID:1650745716])
  {
    return 1;
  }

  return [(VCSessionParticipant *)self didNegotiateStreamGroupWithID:1718909044];
}

- (id)newOneToOneAudioStreamConfigWithAudioSettings:(id)a3 streamDirection:(int64_t)a4 streamGroupId:(unsigned int)a5 streamSsrc:(unsigned int)a6
{
  v6 = *&a6;
  v63 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(VCSessionParticipantAudioStreamConfig);
  if (v11)
  {
    v12 = v11;
    [(VCMediaStreamConfig *)v11 setDirection:a4];
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(VCMediaStreamConfig *)v12 setDefaultRemoteSSRC:v6];
    }

    [(VCAudioStreamConfig *)v12 setAudioStreamMode:5];
    [(VCAudioStreamConfig *)v12 setIsACC24ForU1Enabled:[(VCAudioRuleCollection *)self->_supportedAudioRules isACC24ForU1Enabled]];
    [(VCAudioStreamConfig *)v12 setIsACC24ForGFTEnabled:[(VCAudioRuleCollection *)self->_supportedAudioRules isACC24ForGFTEnabled]];
    [(VCAudioStreamConfig *)v12 setIsHigherAudioREDCutoverU1Enabled:[(VCAudioRuleCollection *)self->_supportedAudioRules isHigherAudioREDCutoverU1Enabled]];
    [(VCAudioStreamConfig *)v12 setSupportsAdaptation:a5 != 1937339233];
    [(VCAudioStreamConfig *)v12 setOneToOneOperatingMode:[(VCSessionParticipant *)self operatingMode]];
    [(VCAudioStreamConfig *)v12 setBundlingScheme:1];
    v13 = objc_alloc_init(VCMediaStreamMultiwayConfigAudio);
    if (v13)
    {
      v14 = v13;
      v15 = objc_alloc_init(VCMediaStreamRateControlConfig);
      if (v15)
      {
        v16 = v15;
        v44 = a4;
        v17 = [VCAudioRuleCollection alloc];
        v18 = v14;
        v19 = [a3 primaryPayload];
        v20 = [a3 dtxPayload];
        v46 = v16;
        v45 = a5;
        v21 = [a3 redPayload];
        v47 = self;
        v22 = [a3 secondaryPayloads];
        v23 = [a3 allowSwitching];
        v24 = [a3 useSBR];
        LODWORD(v43) = 480;
        v25 = v19;
        v14 = v18;
        v26 = v21;
        v27 = v46;
        v28 = [(VCAudioRuleCollection *)v17 initPrimaryPayload:v25 dtxPayload:v20 redPayload:v26 secondaryPayloads:v22 allowAudioSwitching:v23 sbr:v24 aacBlockSize:v43];
        [(VCMediaStreamMultiwayConfig *)v18 setIsOneToOne:1];
        [(VCMediaStreamMultiwayConfig *)v18 setSsrc:v6];
        [(VCMediaStreamMultiwayConfig *)v18 setStreamGroupID:v45];
        [(VCMediaStreamMultiwayConfigAudio *)v18 setAudioRules:v28];
        [(VCMediaStreamConfig *)v12 setMultiwayConfig:v18];
        [(VCMediaStreamConfig *)v12 setRateControlConfig:v46];
        [(VCAudioStreamConfig *)v12 setExternalIOFormat:[(VCAudioIO *)v47->_audioIO clientFormat]];
        if (v47->_deviceRole == 3)
        {
          v29 = 6;
        }

        else
        {
          v29 = 5;
        }

        [(VCAudioStreamConfig *)v12 setAudioStreamMode:v29];
        [(VCAudioStreamConfig *)v12 setShouldApplyRedAsBoolean:1];
        [(VCMediaStreamConfig *)v12 setRtpTimestampRate:[(VCSessionParticipant *)v47 preferredRTPTimestampRateForGroupID:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)v12 multiwayConfig] streamGroupID]]];
        if (v45 == 1835623282)
        {
          [(VCAudioStreamConfig *)v12 setIsLowLatency:[(VCSessionParticipant *)v47 supportsLowLatencyAudio]];
        }

        if ([(VCSessionParticipant *)v47 setupAudioStreamConfiguration:v12 audioRules:[(VCMediaStreamMultiwayConfigAudio *)v18 audioRules]])
        {
          v49 = 0u;
          v50 = 0u;
          if ([a3 redPayload] == 20)
          {
            v30 = &unk_1F579E388;
          }

          else
          {
            v30 = &unk_1F579E3A0;
          }

          v51 = 0uLL;
          v52 = 0uLL;
          v31 = [v30 countByEnumeratingWithState:&v49 objects:v48 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v50;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v50 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                -[VCAudioStreamConfig addSupportedNumRedundantPayload:](v12, "addSupportedNumRedundantPayload:", [*(*(&v49 + 1) + 8 * i) intValue]);
              }

              v32 = [v30 countByEnumeratingWithState:&v49 objects:v48 count:16];
            }

            while (v32);
          }

          if (-[VCSessionParticipant completeStreamSetup:rtpCipherSuite:](v47, "completeStreamSetup:rtpCipherSuite:", v12, [a3 cipherSuite]))
          {
            if (v44 == 2)
            {
              [(VCMediaStreamConfig *)v12 setRtcpEnabled:1];
              [(VCMediaStreamConfig *)v12 setRtcpSendInterval:5.0];
            }

            v35 = 0;
            goto LABEL_26;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:];
            }

LABEL_60:
            v35 = v12;
            v12 = 0;
            v27 = v46;
            goto LABEL_26;
          }
        }

        else
        {
          if (objc_opt_class() != v47)
          {
            if (objc_opt_respondsToSelector())
            {
              v38 = [(VCSessionParticipant *)v47 performSelector:sel_logPrefix];
            }

            else
            {
              v38 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v41 = VRTraceErrorLogLevelToCSTR();
              v42 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                v54 = v41;
                v55 = 2080;
                v56 = "[VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:]";
                v57 = 1024;
                v58 = 1279;
                v59 = 2112;
                v60 = v38;
                v61 = 2048;
                v62 = v47;
                _os_log_error_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to setup the audio stream config", buf, 0x30u);
              }
            }

            goto LABEL_60;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:];
            }

            goto LABEL_60;
          }
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:];
          }
        }

        v27 = 0;
        v28 = 0;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:];
        }
      }

      v27 = 0;
      v28 = 0;
      v14 = 0;
    }

    v35 = v12;
    v12 = 0;
    goto LABEL_26;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v37 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v37 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v54 = v39;
        v55 = 2080;
        v56 = "[VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:]";
        v57 = 1024;
        v58 = 1233;
        v59 = 2112;
        v60 = v37;
        v61 = 2048;
        v62 = self;
        _os_log_error_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate stream configuration!", buf, 0x30u);
      }
    }
  }

  v35 = 0;
  v27 = 0;
  v12 = 0;
  v28 = 0;
  v14 = 0;
LABEL_26:

  return v12;
}

+ (void)applyVideoNegotiatedSettings:(id)a3 toStreamConfiguration:(id)a4 withFeatureStringDictionary:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [objc_msgSend(a3 "videoRuleCollections")];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        [v6 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"featureStrings"), "objectForKeyedSubscript:", v14), v14}];
        if ([objc_msgSend(a3 "videoRuleCollections")])
        {
          [v7 addObject:v14];
        }

        if ([objc_msgSend(a3 "videoRuleCollections")])
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v11);
  }

  [a4 setupRxPayloads:v8 featureStrings:v6];
  [a4 setupTxPayloads:v7 featureStrings:v6];
}

- (BOOL)rtcpPSFBForFeedbackStoreBagConfig
{
  v2 = [GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-rtcp-psfb-for-loss-feedback" userDefaultKey:@"rtcpPSBFForLossFeedbackEnabled" defaultValue:&unk_1F579C330 isDoubleType:1];
  v3 = arc4random() / 4294967300.0;
  [v2 doubleValue];
  return v3 < v4;
}

- (BOOL)rtcpPSFBForLTRAckStoreBagConfig
{
  v2 = [GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-rtcp-psfb-for-ltr-ack" userDefaultKey:@"rtcpPSBFForLTRAckEnabled" defaultValue:&unk_1F579C330 isDoubleType:1];
  v3 = arc4random() / 4294967300.0;
  [v2 doubleValue];
  return v3 < v4;
}

- (unsigned)mediaControlVersionForStreamGroup:(unsigned int)a3
{
  v26 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a3 <= 1718909043)
  {
    if (a3 != 1650745716)
    {
      if (a3 == 1667329381)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 2;
  }

  if (a3 == 1718909044)
  {
    return result;
  }

  if (a3 == 1935897189)
  {
    return 2;
  }

LABEL_8:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 1;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v14 = 136315906;
    v15 = v7;
    v16 = 2080;
    v17 = "[VCSessionParticipant mediaControlVersionForStreamGroup:]";
    v18 = 1024;
    v19 = 1349;
    v20 = 2080;
    v21 = FourccToCStr(a3);
    v9 = " [%s] %s:%d Media version control for unsupported streamGroupID=%s";
    v10 = v8;
    v11 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 1;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v14 = 136316418;
    v15 = v12;
    v16 = 2080;
    v17 = "[VCSessionParticipant mediaControlVersionForStreamGroup:]";
    v18 = 1024;
    v19 = 1349;
    v20 = 2112;
    v21 = v6;
    v22 = 2048;
    v23 = self;
    v24 = 2080;
    v25 = FourccToCStr(a3);
    v9 = " [%s] %s:%d %@(%p) Media version control for unsupported streamGroupID=%s";
    v10 = v13;
    v11 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
  return 1;
}

- (BOOL)remoteSupportsFullScreenReceive:(id)a3
{
  v3 = [objc_msgSend(a3 "featureStrings")];

  return [v3 containsString:@"XRF"];
}

- (void)configureFullScreenCameraPropertiesOnVideoStreamConfig:(id)a3 videoSettings:(id)a4 streamDirection:(int64_t)a5
{
  if (a5 == 1)
  {
    [a3 setRemoteSupportsFullScreenReceive:{-[VCSessionParticipant remoteSupportsFullScreenReceive:](self, "remoteSupportsFullScreenReceive:", a4)}];
    v8 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
    v9 = [a4 remoteDeviceInitialOrientation];

    [v8 setRemoteDeviceOrientation:v9];
  }

  else if (a5 == 2)
  {
    [a3 setAfbRxFrontCameraEnabled:{objc_msgSend(a4, "afbRxFrontCameraEnabled")}];
    v7 = [a4 afbRxBackCameraEnabled];

    [a3 setAfbRxBackCameraEnabled:v7];
  }
}

- (id)newOneToOneVideoStreamConfigWithStreamDirection:(int64_t)a3 streamGroupId:(unsigned int)a4 streamSsrc:(unsigned int)a5 encodingType:(unsigned __int8)a6 videoSettings:(id)a7
{
  v8 = a6;
  v9 = *&a5;
  v10 = *&a4;
  v44 = *MEMORY[0x1E69E9840];
  v13 = objc_alloc_init(VCSessionParticipantVideoStreamConfig);
  if (!v13)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipant newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v31 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v31 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v34 = 136316162;
          v35 = v32;
          v36 = 2080;
          v37 = "[VCSessionParticipant newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:]";
          v38 = 1024;
          v39 = 1380;
          v40 = 2112;
          v41 = v31;
          v42 = 2048;
          v43 = self;
          _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate one to one video stream configuration!", &v34, 0x30u);
        }
      }
    }

    v18 = 0;
    v29 = 0;
    v16 = 0;
    goto LABEL_35;
  }

  v14 = v13;
  v15 = [(VCSessionParticipant *)self newOneToOneVideoStreamMultiwayConfiguration:v8 streamGroupId:v10 videoSettings:a7 streamDirection:a3];
  if (v15)
  {
    v16 = v15;
    v17 = [(VCSessionParticipant *)self newVideoRateControlConfigWithMediaControlInfoVersion:[(VCSessionParticipant *)self mediaControlVersionForStreamGroup:v10] enableMediaControlInfoGenerator:1 enableFeedbackController:v10 == 1667329381 isOneToOne:1];
    if (v17)
    {
      v18 = v17;
      [(VCMediaStreamConfig *)v14 setMultiwayConfig:v16];
      -[VCVideoStreamConfig setFramerate:](v14, "setFramerate:", [v16 framerate]);
      [(VCMediaStreamConfig *)v14 setDirection:a3];
      [(VCMediaStreamConfig *)v14 setRateControlConfig:v18];
      [(VCVideoStreamConfig *)v14 setType:3];
      -[VCVideoStreamConfig setSourceFramerate:](v14, "setSourceFramerate:", [v16 framerate]);
      [(VCVideoStreamConfig *)v14 setRemoteVideoInitialOrientation:2 * (v10 == 1935897189)];
      [(VCVideoStreamConfig *)v14 setKeyFrameInterval:0];
      [(VCMediaStreamConfig *)v14 setRtpTimestampRate:[(VCSessionParticipant *)self preferredRTPTimestampRateForGroupID:[(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)v14 multiwayConfig] streamGroupID]]];
      [(VCVideoStreamConfig *)v14 setAudioIOSampleRate:self->_preferredIOSampleRate];
      v19 = +[VCHardwareSettings deviceClass];
      v21 = 0.02;
      if (v19 != 8)
      {
        LODWORD(v21) = self->_preferredIOSamplesPerFrame;
        LODWORD(v20) = self->_preferredIOSampleRate;
        v21 = *&v21 / v20;
      }

      [(VCVideoStreamConfig *)v14 setMinPlaybackInterval:v21];
      v22 = v10 == 1650745716 || v10 == 1718909044;
      v23 = 0.0;
      if (v22)
      {
        v23 = 0.02;
      }

      [(VCVideoStreamConfig *)v14 setMinRenderingDelay:v23];
      -[VCVideoStreamConfig setTemporalScalingEnabled:](v14, "setTemporalScalingEnabled:", [v16 isTemporalStream]);
      [(VCMediaStreamConfig *)v14 setCaptureSource:[(VCSessionParticipant *)self captureSourceIDFromStreamGroupID:v10]];
      -[VCVideoStreamConfig setVideoResolution:](v14, "setVideoResolution:", [v16 resolution]);
      if ([(VCVideoStreamConfig *)v14 videoResolution]== 27)
      {
        [(VCSessionParticipant *)self updateOneToOneVideoStreamCustomResolution:v14 videoSettings:a7];
      }

      if (a3 == 2)
      {
        [(VCVideoStreamConfig *)v14 setRxMaxBitrate:[(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)self->_mediaNegotiator negotiatedSettings] maxBandwidthWithArbiterMode:1 connectionType:3]];
        [(VCMediaStreamConfig *)v14 setDefaultRemoteSSRC:v9];
      }

      else
      {
        [(VCSessionParticipant *)self configureOneToOneVideoSendingConfigs:v14 streamGroupID:v10];
        [(VCMediaStreamConfig *)v14 setLocalSSRC:v9];
        [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)v14 multiwayConfig] setSsrc:v9];
      }

      +[VCSessionParticipant applyVideoNegotiatedSettings:toStreamConfiguration:withFeatureStringDictionary:](VCSessionParticipant, "applyVideoNegotiatedSettings:toStreamConfiguration:withFeatureStringDictionary:", a7, v14, [a7 featureStrings]);
      v24 = VCFeatureFlagManager_PersonaV2Enabled();
      if (v10 == 1935897189)
      {
        [(VCMediaStreamConfig *)v14 setIsRTCPForLossFeedbackEnabled:[(VCSessionParticipant *)self rtcpPSFBForFeedbackStoreBagConfig]];
        [(VCMediaStreamConfig *)v14 setRtcpPSFB_LTRAckEnabled:[(VCSessionParticipant *)self rtcpPSFBForLTRAckStoreBagConfig]];
      }

      else
      {
        v25 = v24;
        if (v10 == 1718909044)
        {
          [(VCMediaStreamConfig *)v14 setRtcpPSFB_LTRAckEnabled:[(VCSessionParticipant *)self rtcpPSFBForLTRAckStoreBagConfig]];
          if (v8 == 1)
          {
            [(VCVideoStreamConfig *)v14 setEncoderUsage:4];
            [(VCVideoStreamConfig *)v14 setEncodingMode:0];
            if (v25)
            {
              [(VCVideoStreamConfig *)v14 setPixelFormat:1278226736];
            }
          }
        }

        else if (v10 == 1650745716 && v24)
        {
          [(VCVideoStreamConfig *)v14 setPixelFormat:1717657974];
          if (v8 == 1)
          {
            [(VCVideoStreamConfig *)v14 setEncoderUsage:6];
          }

          [(VCMediaStreamConfig *)v14 setIsRTCPForLossFeedbackEnabled:[(VCSessionParticipant *)self rtcpPSFBForFeedbackStoreBagConfig]];
        }

        else if (v10 == 1667329381)
        {
          -[VCVideoStreamConfig setVideoFrameMetadataSupportedVersion:](v14, "setVideoFrameMetadataSupportedVersion:", [a7 videoFrameMetadataSupportedVersion]);
          [(VCSessionParticipant *)self configureFullScreenCameraPropertiesOnVideoStreamConfig:v14 videoSettings:a7 streamDirection:a3];
        }
      }

      if (-[VCSessionParticipant completeStreamSetup:rtpCipherSuite:](self, "completeStreamSetup:rtpCipherSuite:", v14, [a7 cipherSuite]))
      {
        if (a3 == 2)
        {
          [(VCMediaStreamConfig *)v14 setRtcpEnabled:1];
          [(VCVideoStreamConfig *)v14 setLtrpEnabled:1];
          [(VCMediaStreamConfig *)v14 setRtcpSendInterval:5.0];
          [(VCMediaStreamConfig *)v14 setRtcpTimeOutEnabled:1];
          [(VCVideoStreamConfig *)v14 setDeferredAssemblyEnabled:v10 == 1935897189];
          [(VCVideoStreamConfig *)v14 setLooseAVSyncEnabled:v10 == 1935897189];
LABEL_34:
          [(VCSessionParticipant *)self setFECConfigurationOnStreamConfig:v14 withStreamGroupID:v10];
          v29 = v14;
LABEL_35:
          v14 = 0;
          goto LABEL_36;
        }

        if (a3 != 1)
        {
          goto LABEL_34;
        }

        if (v10 == 1650745716)
        {
          v26 = VCFeatureFlagManager_PersonaV2Enabled();
        }

        else
        {
          v26 = 0;
          v27 = 1;
          if (v10 == 1667329381 || v10 == 1718909044 || v10 == 1935897189)
          {
            goto LABEL_29;
          }
        }

        v27 = v26;
LABEL_29:
        [(VCMediaStreamConfig *)v14 setRtcpEnabled:v27];
        v28 = 1;
        if (v10 != 1667329381 && v10 != 1718909044 && v10 != 1935897189)
        {
          v28 = v26;
        }

        [(VCVideoStreamConfig *)v14 setLtrpEnabled:v28];
        goto LABEL_34;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipant newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:];
        }
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipant newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:];
        }
      }

      v18 = 0;
    }

    v29 = 0;
    goto LABEL_36;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipant newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:];
    }
  }

  v18 = 0;
  v29 = 0;
  v16 = 0;
LABEL_36:

  return v29;
}

- (void)configureOneToOneVideoSendingConfigs:(id)a3 streamGroupID:(unsigned int)a4
{
  if (a4 == 1650745716)
  {
    if (VCFeatureFlagManager_PersonaV2Enabled())
    {
      [a3 setTxMaxBitrate:110000];
    }

    else
    {
      [a3 setTxMinBitrate:90560];
      [a3 setTxMaxBitrate:140640];
      [a3 addTxBitrateTier:&unk_1F579C5E8];
      [a3 addTxBitrateTier:&unk_1F579C600];
    }

    v5 = VCFeatureFlagManager_PersonaV2Enabled();
  }

  else
  {
    v5 = 1;
    [a3 setTxMaxBitrate:{-[VCMediaNegotiatorResults maxBandwidthWithArbiterMode:connectionType:](-[VCSessionMediaNegotiator negotiatedSettings](self->_mediaNegotiator, "negotiatedSettings"), "maxBandwidthWithArbiterMode:connectionType:", 1, 3)}];
  }

  [a3 setUseInBandFEC:v5];
}

- (int64_t)participantMicrophoneToken
{
  v2 = [(NSMutableDictionary *)self->_participantStreamTokens objectForKeyedSubscript:&unk_1F579C618];

  return [v2 integerValue];
}

- (int64_t)participantVideoToken
{
  v2 = [(NSMutableDictionary *)self->_participantStreamTokens objectForKeyedSubscript:&unk_1F579C630];

  return [v2 integerValue];
}

- (id)cameraGroups
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(VCSessionParticipant *)self streamGroupWithID:1667329381];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(VCSessionParticipant *)self streamGroupWithID:1667329399];
  if (v5)
  {
    [v3 addObject:v5];
  }

  return v3;
}

- (id)cameraGroupsExt
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&unk_1F579E3B8 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_1F579E3B8);
        }

        v8 = -[VCSessionParticipant streamGroupWithID:](self, "streamGroupWithID:", [*(*(&v11 + 1) + 8 * v7) intValue]);
        if (v8)
        {
          [v3 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_1F579E3B8 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  return v3;
}

- (int64_t)participantScreenToken
{
  v2 = [(NSMutableDictionary *)self->_participantStreamTokens objectForKeyedSubscript:&unk_1F579C690];

  return [v2 integerValue];
}

- (id)screenGroup
{
  streamGroups = self->_streamGroups;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCSessionParticipant participantScreenToken](self, "participantScreenToken")}];

  return [(NSMutableDictionary *)streamGroups objectForKeyedSubscript:v3];
}

- (id)streamGroupWithID:(unsigned int)a3
{
  v4 = -[NSMutableDictionary objectForKeyedSubscript:](self->_participantStreamTokens, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3]);
  streamGroups = self->_streamGroups;

  return [(NSMutableDictionary *)streamGroups objectForKeyedSubscript:v4];
}

- (int)securityKeyHolderUsageForStreamConfigDirection:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)setupSecurityKeyHolderForStreamConfig:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_securityKeyManager)
  {
    [VCSessionParticipant setupSecurityKeyHolderForStreamConfig:];
    return v8;
  }

  cf = 0;
  if ([objc_msgSend(a3 "multiwayConfig")] == 1667329399 || objc_msgSend(objc_msgSend(a3, "multiwayConfig"), "streamGroupID") == 1835623287)
  {
    v5 = 2;
  }

  else
  {
    v5 = [objc_msgSend(a3 "multiwayConfig")];
  }

  if (VCSecurityKeyHolder_Create(*MEMORY[0x1E695E480], self->_securityKeyManager, -[VCSessionParticipant securityKeyHolderUsageForStreamConfigDirection:](self, "securityKeyHolderUsageForStreamConfigDirection:", [a3 direction]), self->_idsParticipantID, -[VCSessionParticipant isParticipantIDBasedKeyLookupEnabled](self, "isParticipantIDBasedKeyLookupEnabled"), v5, &cf))
  {
    [VCSessionParticipant setupSecurityKeyHolderForStreamConfig:];
    return v8;
  }

  [a3 setSecurityKeyHolder:cf];
  if (cf)
  {
    CFRelease(cf);
  }

  return 1;
}

- (BOOL)completeStreamSetup:(id)a3 rtpCipherSuite:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a3 "multiwayConfig")];
  [objc_msgSend(a3 "multiwayConfig")];
  [objc_msgSend(a3 "multiwayConfig")];
  [a3 setSendMediaKey:{-[VCSessionParticipant generateEncryptionKeyForCipherSuite:](self, "generateEncryptionKeyForCipherSuite:", a4)}];
  [a3 setReceiveMediaKey:{-[VCSessionParticipant generateEncryptionKeyForCipherSuite:](self, "generateEncryptionKeyForCipherSuite:", a4)}];
  v7 = [+[VCDefaults sharedInstance](VCDefaults forceDisableMediaEncryption];
  if (v7 || [a3 sframeCipherSuite])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316162;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCSessionParticipant completeStreamSetup:rtpCipherSuite:]";
        v20 = 1024;
        v21 = 1631;
        v22 = 1024;
        v23 = v7;
        v24 = 1024;
        v25 = [a3 sframeCipherSuite];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disabling SRTP encryption. isEncryptionDisabled=%d, sframeCipherSuite=%d", &v16, 0x28u);
      }
    }

    v10 = a3;
    v11 = 0;
  }

  else
  {
    v10 = a3;
    v11 = a4;
  }

  [v10 setSRTPCipherSuite:v11];
  [a3 setSRTCPCipherSuite:0];
  [a3 setDecryptionTimeOutEnabled:0];
  [a3 setDecryptionTimeOutInterval:self->_decryptionTimeOutInterval];
  [a3 setDecryptionMKMRecoveryInterval:self->_participantMKMRecoveryTimeout];
  v12 = [(VCSessionParticipant *)self setupSecurityKeyHolderForStreamConfig:a3];
  if (v12)
  {
    if (v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315650;
          v17 = v13;
          v18 = 2080;
          v19 = "[VCSessionParticipant completeStreamSetup:rtpCipherSuite:]";
          v20 = 1024;
          v21 = 1646;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disabling SFrame encryption. isEncryptionDisabled=YES", &v16, 0x1Cu);
        }
      }

      [a3 setSframeCipherSuite:0];
    }

    [(VCSessionParticipant *)self setupNetworkAddressesForMediaConfig:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipant completeStreamSetup:rtpCipherSuite:];
    }
  }

  return v12;
}

- (BOOL)updateConfigurationWithDeviceRole:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  participantQueue = self->_participantQueue;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__VCSessionParticipant_updateConfigurationWithDeviceRole___block_invoke;
  v6[3] = &unk_1E85F64A0;
  v7 = a3;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(participantQueue, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __58__VCSessionParticipant_updateConfigurationWithDeviceRole___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 304) == *(a1 + 48))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v3 = *(v2 + 480);
    v4 = [v3 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v28;
LABEL_5:
      v7 = 0;
      while (1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        *(*(*(a1 + 40) + 8) + 24) = [*(*(&v27 + 1) + 8 * v7) setDeviceRole:*(a1 + 48) operatingMode:{objc_msgSend(*(a1 + 32), "operatingMode")}];
        if (*(*(*(a1 + 40) + 8) + 24) != 1)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v27 objects:v26 count:16];
          if (v5)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v8 = [*(a1 + 32) streamGroupWithID:1667330164];
      if (v8 && (*(*(*(a1 + 40) + 8) + 24) = [v8 setDeviceRole:*(a1 + 48) operatingMode:{objc_msgSend(*(a1 + 32), "operatingMode")}], (*(*(*(a1 + 40) + 8) + 24) & 1) == 0))
      {
        __58__VCSessionParticipant_updateConfigurationWithDeviceRole___block_invoke_cold_1();
      }

      else
      {
        v9 = *(a1 + 32);
        v10 = *(v9 + 168);
        if (v10 == 1)
        {
          v11 = [*(v9 + 392) state];
          if (v11 == 2)
          {
            [*(*(a1 + 32) + 392) stop];
          }

          *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) configureAudioIOWithDeviceRole:*(a1 + 48) operatingMode:{objc_msgSend(*(a1 + 32), "operatingMode")}];
          if (v11 == 2)
          {
            [*(*(a1 + 32) + 392) start];
          }
        }

        else if (!v10)
        {
          *(*(*(a1 + 40) + 8) + 24) = [v9 configureAudioIOWithDeviceRole:*(a1 + 48) operatingMode:{objc_msgSend(*(a1 + 32), "operatingMode")}];
        }
      }
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *(*(a1 + 32) + 304) = *(a1 + 48);
    }

    else if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __58__VCSessionParticipant_updateConfigurationWithDeviceRole___block_invoke_cold_2();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 32);
          v16 = 136316162;
          v17 = v13;
          v18 = 2080;
          v19 = "[VCSessionParticipant updateConfigurationWithDeviceRole:]_block_invoke";
          v20 = 1024;
          v21 = 1699;
          v22 = 2112;
          v23 = v12;
          v24 = 2048;
          v25 = v15;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Error configuring audioIO", &v16, 0x30u);
        }
      }
    }
  }
}

- (BOOL)configureOneToOneAudioStreamsWithDeviceRole:(int)a3 streamInfoArray:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (self->_oneToOneModeEnabled || ![a4 count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v48 = v7;
        v49 = 2080;
        v50 = "[VCSessionParticipant configureOneToOneAudioStreamsWithDeviceRole:streamInfoArray:]";
        v51 = 1024;
        v52 = 1716;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d There are no audio streams to configure, bypassing configuration", buf, 0x1Cu);
      }
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = [a4 countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v32)
  {
    if (a3 == 3)
    {
      v9 = 6;
    }

    else
    {
      v9 = 5;
    }

    v31 = *v44;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(a4);
        }

        v33 = v10;
        v11 = *(*(&v43 + 1) + 8 * v10);
        v35 = [v11 stream];
        [v35 setReportingAgent:{-[VCSessionParticipant reportingAgent](self, "reportingAgent")}];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v34 = v11;
        v12 = [v11 streamConfigs];
        v13 = [v12 countByEnumeratingWithState:&v38 objects:v37 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v39;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v39 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v38 + 1) + 8 * i);
              [v17 setAudioStreamMode:v9];
              [v17 setCellularUniqueTag:self->_cellularUniqueTag];
              if ([objc_msgSend(v17 "multiwayConfig")])
              {
                statisticsCollector = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig statisticsCollector];
              }

              else
              {
                statisticsCollector = self->_statisticsCollector;
              }

              [objc_msgSend(v17 "rateControlConfig")];
              if ([objc_msgSend(v17 "multiwayConfig")])
              {
                basebandCongestionDetector = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig basebandCongestionDetector];
              }

              else
              {
                basebandCongestionDetector = self->_basebandCongestionDetector;
              }

              [objc_msgSend(v17 "rateControlConfig")];
              if ([objc_msgSend(v17 "multiwayConfig")])
              {
                v20 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig feedbackController];
              }

              else
              {
                v20 = 0;
              }

              [objc_msgSend(v17 "rateControlConfig")];
              [objc_msgSend(v17 "rateControlConfig")];
              [objc_msgSend(v17 "rateControlConfig")];
              if ([objc_msgSend(v17 "multiwayConfig")])
              {
                v21 = [(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)self->_mediaNegotiator negotiatedSettings] mediaControlInfoVersion];
              }

              else
              {
                v21 = 1;
              }

              [objc_msgSend(v17 "rateControlConfig")];
              [objc_msgSend(v17 "rateControlConfig")];
              if ([objc_msgSend(v17 "multiwayConfig")])
              {
                v22 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig audioMediaControlInfoGenerator];
              }

              else
              {
                v22 = 0;
              }

              [objc_msgSend(v17 "rateControlConfig")];
              [objc_msgSend(v17 "rateControlConfig")];
              if ([objc_msgSend(v17 "multiwayConfig")])
              {
                v23 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig mediaController];
              }

              else
              {
                v23 = 0;
              }

              [objc_msgSend(v17 "rateControlConfig")];
              [objc_msgSend(v17 "rateControlConfig")];
              if ([objc_msgSend(v17 "multiwayConfig")])
              {
                v24 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig mediaQueue];
              }

              else
              {
                v24 = 0xFFFFFFFFLL;
              }

              [objc_msgSend(v17 "rateControlConfig")];
              audioIO = self->_audioIO;
              if (audioIO)
              {
                LODWORD(v26) = [(VCAudioIO *)audioIO clientFormat][40];
                v27 = v26 / *[(VCAudioIO *)self->_audioIO clientFormat];
              }

              else
              {
                v27 = (self->_preferredIOSamplesPerFrame / self->_preferredIOSampleRate);
              }

              [objc_msgSend(v17 "rateControlConfig")];
              [v17 setShouldApplyRedAsBoolean:1];
              [v17 setExternalIOFormat:-[VCAudioIO clientFormat](self->_audioIO, "clientFormat")];
              if (self->_oneToOneModeEnabled)
              {
                v28 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig networkFeedbackController];
              }

              else
              {
                v28 = 0;
              }

              [v17 setNetworkFeedbackController:v28];
            }

            v14 = [v12 countByEnumeratingWithState:&v38 objects:v37 count:16];
          }

          while (v14);
        }

        if (([v35 setStreamConfig:objc_msgSend(v34 withError:{"streamConfigs"), &v36}] & 1) == 0)
        {
          [VCSessionParticipant configureOneToOneAudioStreamsWithDeviceRole:streamInfoArray:];
          return buf[0];
        }

        v10 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [a4 countByEnumeratingWithState:&v43 objects:v42 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }

    return 1;
  }

  return v6;
}

- (id)newVideoRateControlConfigWithMediaControlInfoVersion:(unsigned __int8)a3 enableMediaControlInfoGenerator:(BOOL)a4 enableFeedbackController:(BOOL)a5 isOneToOne:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = objc_alloc_init(VCMediaStreamRateControlConfig);
  v12 = v11;
  if (v11)
  {
    if (v6)
    {
      [(VCMediaStreamRateControlConfig *)v11 setStatisticsCollector:[(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig statisticsCollector]];
      [(VCMediaStreamRateControlConfig *)v12 setBasebandCongestionDetector:[(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig basebandCongestionDetector]];
      v13 = 0;
      if (v7 && v6)
      {
        v13 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig feedbackController];
      }
    }

    else
    {
      [(VCMediaStreamRateControlConfig *)v11 setStatisticsCollector:self->_statisticsCollector];
      [(VCMediaStreamRateControlConfig *)v12 setBasebandCongestionDetector:self->_basebandCongestionDetector];
      v13 = 0;
    }

    [(VCMediaStreamRateControlConfig *)v12 setFeedbackController:v13];
    [(VCMediaStreamRateControlConfig *)v12 setShouldCreateMediaControlInfoGenerator:!v6 & v8];
    [(VCMediaStreamRateControlConfig *)v12 setShouldRegisterMediaControlInfoGeneratorCallbacks:v6];
    if (!v6)
    {
      [(VCMediaStreamRateControlConfig *)v12 setMediaControlInfoVersion:v9];
      [(VCMediaStreamRateControlConfig *)v12 setMediaControlInfoGeneratorType:1];
      v14 = 0;
    }

    else
    {
      [(VCMediaStreamRateControlConfig *)v12 setMediaControlInfoVersion:[(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)self->_mediaNegotiator negotiatedSettings] mediaControlInfoVersion]];
      [(VCMediaStreamRateControlConfig *)v12 setMediaControlInfoGeneratorType:1];
      v14 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig videoMediaControlInfoGenerator];
    }

    [(VCMediaStreamRateControlConfig *)v12 setMediaControlInfoGenerator:v14];
    [(VCMediaStreamRateControlConfig *)v12 setMediaControlInfoGeneratorOptions:0];
    if (v6)
    {
      [(VCMediaStreamRateControlConfig *)v12 setMediaController:[(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig mediaController]];
      v15 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig mediaQueue];
    }

    else
    {
      [(VCMediaStreamRateControlConfig *)v12 setMediaController:0];
      v15 = 0xFFFFFFFFLL;
    }

    [(VCMediaStreamRateControlConfig *)v12 setMediaQueue:v15];
    [(VCMediaStreamRateControlConfig *)v12 setVcMediaQueue:self->_mediaQueue];
  }

  else
  {
    [VCSessionParticipant newVideoRateControlConfigWithMediaControlInfoVersion:enableMediaControlInfoGenerator:enableFeedbackController:isOneToOne:];
  }

  return v12;
}

- (id)newAudioRateControlConfigWithMediaControlInfoVersion:(unsigned __int8)a3 enableFeedbackController:(BOOL)a4 isOneToOne:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(VCMediaStreamRateControlConfig);
  v10 = v9;
  if (v5)
  {
    [(VCMediaStreamRateControlConfig *)v9 setStatisticsCollector:[(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig statisticsCollector]];
    [(VCMediaStreamRateControlConfig *)v10 setBasebandCongestionDetector:[(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig basebandCongestionDetector]];
    v11 = 0;
    if (v6 && v5)
    {
      v11 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig feedbackController];
    }
  }

  else
  {
    [(VCMediaStreamRateControlConfig *)v9 setStatisticsCollector:self->_statisticsCollector];
    [(VCMediaStreamRateControlConfig *)v10 setBasebandCongestionDetector:self->_basebandCongestionDetector];
    v11 = 0;
  }

  [(VCMediaStreamRateControlConfig *)v10 setFeedbackController:v11];
  [(VCMediaStreamRateControlConfig *)v10 setShouldCreateMediaControlInfoGenerator:0];
  [(VCMediaStreamRateControlConfig *)v10 setShouldRegisterMediaControlInfoGeneratorCallbacks:v5];
  if (v5)
  {
    [(VCMediaStreamRateControlConfig *)v10 setMediaControlInfoVersion:[(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)self->_mediaNegotiator negotiatedSettings] mediaControlInfoVersion]];
    [(VCMediaStreamRateControlConfig *)v10 setMediaControlInfoGeneratorType:0];
    v12 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig audioMediaControlInfoGenerator];
  }

  else
  {
    [(VCMediaStreamRateControlConfig *)v10 setMediaControlInfoVersion:v7];
    [(VCMediaStreamRateControlConfig *)v10 setMediaControlInfoGeneratorType:0];
    v12 = 0;
  }

  [(VCMediaStreamRateControlConfig *)v10 setMediaControlInfoGenerator:v12];
  [(VCMediaStreamRateControlConfig *)v10 setMediaControlInfoGeneratorOptions:v5];
  if (v5)
  {
    [(VCMediaStreamRateControlConfig *)v10 setMediaController:[(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig mediaController]];
    [(VCMediaStreamRateControlConfig *)v10 setVcMediaQueue:self->_mediaQueue];
    v13 = [(VCSessionParticipantOneToOneConfig *)self->_oneToOneConfig mediaQueue];
  }

  else
  {
    [(VCMediaStreamRateControlConfig *)v10 setMediaController:0];
    [(VCMediaStreamRateControlConfig *)v10 setVcMediaQueue:self->_mediaQueue];
    v13 = 0xFFFFFFFFLL;
  }

  [(VCMediaStreamRateControlConfig *)v10 setMediaQueue:v13];
  audioIO = self->_audioIO;
  if (audioIO)
  {
    LODWORD(v15) = [(VCAudioIO *)audioIO clientFormat][40];
    v16 = v15 / *[(VCAudioIO *)self->_audioIO clientFormat];
  }

  else
  {
    v16 = (self->_preferredIOSamplesPerFrame / self->_preferredIOSampleRate);
  }

  [(VCMediaStreamRateControlConfig *)v10 setMediaQueueThrottlingInterval:v16];
  return v10;
}

- (BOOL)configureOneToOneVideoStreamsWithDeviceRole:(int)a3 streamInfoArray:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  if ([a4 count])
  {
    *buf = 0;
    v6 = [(VCSessionParticipant *)self newVideoRateControlConfigWithMediaControlInfoVersion:1 enableMediaControlInfoGenerator:1 enableFeedbackController:0 isOneToOne:0];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = [a4 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v23)
    {
      obj = a4;
      v7 = 0;
      v25 = *v37;
      while (2)
      {
        v8 = 0;
        do
        {
          v24 = v7;
          if (*v37 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v8;
          v9 = *(*(&v36 + 1) + 8 * v8);
          v10 = [v9 stream];
          [v10 setReportingAgent:{-[VCSessionParticipant reportingAgent](self, "reportingAgent")}];
          [v10 setExperimentManager:self->_experimentManager];
          v28 = v10;
          [v10 setOperatingMode:6];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v27 = v9;
          v11 = [v9 streamConfigs];
          v12 = [v11 countByEnumeratingWithState:&v31 objects:v30 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v32;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v31 + 1) + 8 * i);
                if ([objc_msgSend(v16 "multiwayConfig")])
                {
                  v17 = -[VCSessionParticipant newVideoRateControlConfigWithMediaControlInfoVersion:enableMediaControlInfoGenerator:enableFeedbackController:isOneToOne:](self, "newVideoRateControlConfigWithMediaControlInfoVersion:enableMediaControlInfoGenerator:enableFeedbackController:isOneToOne:", 1, 1, [objc_msgSend(v16 "multiwayConfig")] == 1667329381, 1);
                  if (!v17)
                  {
                    [VCSessionParticipant configureOneToOneVideoStreamsWithDeviceRole:v24 streamInfoArray:&v29];
                    goto LABEL_25;
                  }
                }

                else
                {
                  v17 = v6;
                }

                [v16 setRateControlConfig:v17];

                if ([objc_msgSend(v16 "multiwayConfig")])
                {
                  networkFeedbackController = self->_networkFeedbackController;
                }

                else
                {
                  networkFeedbackController = 0;
                }

                [v16 setNetworkFeedbackController:networkFeedbackController];
              }

              v13 = [v11 countByEnumeratingWithState:&v31 objects:v30 count:16];
            }

            while (v13);
          }

          if (([v28 setStreamConfig:objc_msgSend(v27 withError:{"streamConfigs"), buf}] & 1) == 0)
          {
            [VCSessionParticipant configureOneToOneVideoStreamsWithDeviceRole:streamInfoArray:];
LABEL_25:
            v7 = v29;
            goto LABEL_31;
          }

          v8 = v26 + 1;
          v7 = 1;
        }

        while (v26 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
        if (v23)
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

LABEL_31:
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v19;
        v41 = 2080;
        v42 = "[VCSessionParticipant configureOneToOneVideoStreamsWithDeviceRole:streamInfoArray:]";
        v43 = 1024;
        v44 = 1799;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d There are no video streams to configure, bypassing configuration", buf, 0x1Cu);
      }
    }

    return 1;
  }

  return v7;
}

- (BOOL)configureOneToOneWithConfig:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136316674;
        *&v15[4] = v6;
        *&v15[12] = 2080;
        *&v15[14] = "[VCSessionParticipant configureOneToOneWithConfig:]";
        *&v15[22] = 1024;
        LODWORD(v16) = 1837;
        WORD2(v16) = 1024;
        *(&v16 + 6) = [a3 deviceRole];
        WORD5(v16) = 1024;
        HIDWORD(v16) = [a3 negotiatedVideoEnabled];
        LOWORD(v17) = 1024;
        *(&v17 + 2) = [a3 negotiatedScreenEnabled];
        HIWORD(v17) = 1024;
        LODWORD(v18) = [a3 operatingMode];
        v8 = " [%s] %s:%d deviceRole=%d, negotiatedVideoEnabled=%d, negotiatedScreenEnabled=%d, operatingMode=%d";
        v9 = v7;
        v10 = 52;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v15, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136317186;
        *&v15[4] = v11;
        *&v15[12] = 2080;
        *&v15[14] = "[VCSessionParticipant configureOneToOneWithConfig:]";
        *&v15[22] = 1024;
        LODWORD(v16) = 1837;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v5;
        HIWORD(v16) = 2048;
        v17 = self;
        LOWORD(v18) = 1024;
        *(&v18 + 2) = [a3 deviceRole];
        HIWORD(v18) = 1024;
        LODWORD(v19) = [a3 negotiatedVideoEnabled];
        WORD2(v19) = 1024;
        *(&v19 + 6) = [a3 negotiatedScreenEnabled];
        WORD5(v19) = 1024;
        HIDWORD(v19) = [a3 operatingMode];
        v8 = " [%s] %s:%d %@(%p) deviceRole=%d, negotiatedVideoEnabled=%d, negotiatedScreenEnabled=%d, operatingMode=%d";
        v9 = v12;
        v10 = 72;
        goto LABEL_11;
      }
    }
  }

  v13 = [(VCAudioIO *)self->_audioIO state:*v15];
  if (v13 == 2)
  {
    [(VCAudioIO *)self->_audioIO stop];
  }

  if (!-[VCSessionParticipant configureAudioIOWithDeviceRole:operatingMode:](self, "configureAudioIOWithDeviceRole:operatingMode:", [a3 deviceRole], objc_msgSend(a3, "operatingMode")))
  {
    [VCSessionParticipant configureOneToOneWithConfig:];
    return v15[0];
  }

  if (!-[VCSessionParticipant configureOneToOneAudioStreamsWithDeviceRole:](self, "configureOneToOneAudioStreamsWithDeviceRole:", [a3 deviceRole]))
  {
    [VCSessionParticipant configureOneToOneWithConfig:];
    return v15[0];
  }

  if (v13 == 2)
  {
    [(VCAudioIO *)self->_audioIO start];
  }

  if ([a3 negotiatedVideoEnabled] && !-[VCSessionParticipant configureOneToOneVideoStreamsWithDeviceRole:](self, "configureOneToOneVideoStreamsWithDeviceRole:", objc_msgSend(a3, "deviceRole")))
  {
    [VCSessionParticipant configureOneToOneWithConfig:];
    return v15[0];
  }

  self->_deviceRole = [a3 deviceRole];
  return 1;
}

- (BOOL)configureWithDeviceRole:(int)a3 negotiatedVideoEnabled:(BOOL)a4 negotiatedScreenEnabled:(BOOL)a5 operatingMode:(int)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VCSessionParticipant_configureWithDeviceRole_negotiatedVideoEnabled_negotiatedScreenEnabled_operatingMode___block_invoke;
  block[3] = &unk_1E85FA040;
  block[4] = self;
  block[5] = &v14;
  v12 = a4;
  v13 = a5;
  v10 = a3;
  v11 = a6;
  dispatch_sync(participantQueue, block);
  v7 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __109__VCSessionParticipant_configureWithDeviceRole_negotiatedVideoEnabled_negotiatedScreenEnabled_operatingMode___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) dispatchedConfigureWithDeviceRole:*(a1 + 48) negotiatedVideoEnabled:*(a1 + 56) negotiatedScreenEnabled:*(a1 + 57) operatingMode:*(a1 + 52)];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __109__VCSessionParticipant_configureWithDeviceRole_negotiatedVideoEnabled_negotiatedScreenEnabled_operatingMode___block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v2 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v2 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v5 = *(a1 + 32);
          v6 = 136316162;
          v7 = v3;
          v8 = 2080;
          v9 = "[VCSessionParticipant configureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:]_block_invoke";
          v10 = 1024;
          v11 = 1869;
          v12 = 2112;
          v13 = v2;
          v14 = 2048;
          v15 = v5;
          _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Fail configure participant", &v6, 0x30u);
        }
      }
    }
  }
}

- (BOOL)dispatchedConfigureWithDeviceRole:(int)a3 negotiatedVideoEnabled:(BOOL)a4 negotiatedScreenEnabled:(BOOL)a5 operatingMode:(int)a6
{
  v6 = *&a6;
  v7 = a5;
  v8 = a4;
  v9 = *&a3;
  v49 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_participantQueue);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v34 = v12;
        v35 = 2080;
        v36 = "[VCSessionParticipant dispatchedConfigureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:]";
        v37 = 1024;
        v38 = 1880;
        v39 = 1024;
        *v40 = v9;
        *&v40[4] = 1024;
        *&v40[6] = v8;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = v7;
        HIWORD(v41) = 1024;
        *v42 = v6;
        v14 = " [%s] %s:%d deviceRole=%d, negotiatedVideoEnabled=%d, negotiatedScreenEnabled=%d, operatingMode=%d";
        v15 = v13;
        v16 = 52;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317186;
        v34 = v17;
        v35 = 2080;
        v36 = "[VCSessionParticipant dispatchedConfigureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:]";
        v37 = 1024;
        v38 = 1880;
        v39 = 2112;
        *v40 = v11;
        *&v40[8] = 2048;
        v41 = self;
        *v42 = 1024;
        *&v42[2] = v9;
        v43 = 1024;
        v44 = v8;
        v45 = 1024;
        v46 = v7;
        v47 = 1024;
        v48 = v6;
        v14 = " [%s] %s:%d %@(%p) deviceRole=%d, negotiatedVideoEnabled=%d, negotiatedScreenEnabled=%d, operatingMode=%d";
        v15 = v18;
        v16 = 72;
        goto LABEL_11;
      }
    }
  }

  v19 = objc_alloc_init(VCSessionParticipantOneToOneConfig);
  if (!v19)
  {
    [VCSessionParticipant dispatchedConfigureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:];
    return buf[0];
  }

  v20 = v19;
  [(VCSessionParticipantOneToOneConfig *)v19 setDeviceRole:v9];
  [(VCSessionParticipantOneToOneConfig *)v20 setNegotiatedVideoEnabled:v8];
  [(VCSessionParticipantOneToOneConfig *)v20 setNegotiatedScreenEnabled:v7];
  [(VCSessionParticipantOneToOneConfig *)v20 setOperatingMode:v6];
  v21 = [(VCSessionParticipant *)self configureOneToOneWithConfig:v20];

  if (!v21)
  {
    [VCSessionParticipant dispatchedConfigureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:];
    return buf[0];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  micStreamGroups = self->_micStreamGroups;
  v23 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(micStreamGroups);
        }

        if (([*(*(&v29 + 1) + 8 * i) setDeviceRole:v9 operatingMode:v6] & 1) == 0)
        {
          [VCSessionParticipant dispatchedConfigureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:];
          return buf[0];
        }
      }

      v24 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  result = [(VCSessionParticipant *)self configureMultiwayStreamGroups];
  self->_deviceRole = v9;
  return result;
}

- (BOOL)configureStreamInfosForMultiway:(id)a3 streamGroupID:(unsigned int)a4
{
  v38 = *MEMORY[0x1E69E9840];
  if (a4 == 1718909044)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (a4 == 1937339233)
  {
    v6 = 2;
  }

  if (a4 == 1935897189)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  v36 = 0u;
  v37 = 0u;
  v9 = a4 == 1667329381 || a4 == 1835623282;
  v34 = 0uLL;
  v35 = 0uLL;
  v23 = [a3 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (!v23)
  {
    return 1;
  }

  v24 = *v35;
  do
  {
    v10 = 0;
    do
    {
      if (*v35 != v24)
      {
        objc_enumerationMutation(a3);
      }

      v25 = v10;
      v11 = *(*(&v34 + 1) + 8 * v10);
      [objc_msgSend(v11 "stream")];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = [v11 streamConfigs];
      v12 = [v26 countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v26);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            if (a4 == 1937339233 || a4 == 1835623282)
            {
              v17 = -[VCSessionParticipant newAudioRateControlConfigWithMediaControlInfoVersion:enableFeedbackController:isOneToOne:](self, "newAudioRateControlConfigWithMediaControlInfoVersion:enableFeedbackController:isOneToOne:", v7, v9, [objc_msgSend(*(*(&v29 + 1) + 8 * i) "multiwayConfig")]);
            }

            else
            {
              v17 = -[VCSessionParticipant newVideoRateControlConfigWithMediaControlInfoVersion:enableMediaControlInfoGenerator:enableFeedbackController:isOneToOne:](self, "newVideoRateControlConfigWithMediaControlInfoVersion:enableMediaControlInfoGenerator:enableFeedbackController:isOneToOne:", v7, a4 != 1667329399, v9, [objc_msgSend(*(*(&v29 + 1) + 8 * i) "multiwayConfig")]);
            }

            v18 = v17;
            if (!v17)
            {
              [VCSessionParticipant configureStreamInfosForMultiway:streamGroupID:];
              return v27;
            }

            [v16 setRateControlConfig:v17];

            if ([objc_msgSend(v16 "multiwayConfig")])
            {
              networkFeedbackController = self->_networkFeedbackController;
            }

            else
            {
              networkFeedbackController = 0;
            }

            [v16 setNetworkFeedbackController:networkFeedbackController];
          }

          v13 = [v26 countByEnumeratingWithState:&v29 objects:v28 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v10 = v25 + 1;
    }

    while (v25 + 1 != v23);
    v20 = [a3 countByEnumeratingWithState:&v34 objects:v33 count:16];
    result = 1;
    v23 = v20;
  }

  while (v20);
  return result;
}

- (BOOL)configureMultiwayStreamGroups
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_streamGroups count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(NSMutableDictionary *)self->_streamGroups allValues];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        [v8 setReportingAgent:{-[VCSessionParticipant reportingAgent](self, "reportingAgent")}];
        if (!-[VCSessionParticipant configureStreamInfosForMultiway:streamGroupID:](self, "configureStreamInfosForMultiway:streamGroupID:", [v8 mediaStreamInfoArray], objc_msgSend(v8, "streamGroupID")))
        {
          break;
        }

        if (([v8 configureStreams] & 1) == 0)
        {
          [VCSessionParticipant configureMultiwayStreamGroups];
          return v10;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          return 1;
        }
      }

      [VCSessionParticipant configureMultiwayStreamGroups];
      return v10;
    }
  }

  return 1;
}

- (VCSessionParticipant)initWithConfig:(id)a3 delegate:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VCSessionParticipant;
  v6 = [(VCObject *)&v21 init];
  if (!v6)
  {
    return v6;
  }

  if (![a3 idsDestination])
  {
    [VCSessionParticipant initWithConfig:delegate:];
LABEL_25:

    return 0;
  }

  objc_storeWeak(&v6->_delegate, a4);
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v6->_participantQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSessionParticipant.participantQueue", 0, CustomRootQueue);
  v6->_state = 0;
  v6->_volume = 1.0;
  v6->_audioPosition = 0.0;
  v6->_streamGroups = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6->_micStreamGroups = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6->_videoStreamGroups = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6->_experimentManager = [a3 experimentManager];
  v6->_isLowLatencyAudio = [a3 isLowLatencyAudio];
  v6->_transportSessionID = [a3 transportSessionID];
  v6->_audioMachineLearningCoordinator = [a3 audioMachineLearningCoordinator];
  networkFeedbackController = v6->_networkFeedbackController;
  v9 = [a3 networkFeedbackController];
  v6->_networkFeedbackController = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (networkFeedbackController)
  {
    CFRelease(networkFeedbackController);
  }

  [(VCSessionParticipant *)v6 setupPreferredIOSettings];
  v10 = objc_alloc_init(VCAudioRuleCollectionConfiguration);
  [(VCAudioRuleCollectionConfiguration *)v10 setAllowAudioSwitching:1];
  if (v6->_isLowLatencyAudio)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  [(VCAudioRuleCollectionConfiguration *)v10 setMinBlockSize:v11];
  -[VCAudioRuleCollectionConfiguration setAddACC24:](v10, "setAddACC24:", [a3 isACC24ForU1Enabled]);
  v6->_supportedAudioRules = [[VCAudioRuleCollection alloc] initWithConfiguration:v10];

  if (!v6->_supportedAudioRules)
  {
    [VCSessionParticipant initWithConfig:v6 delegate:?];
    goto LABEL_25;
  }

  -[VCAudioRuleCollection setIsACC24ForU1Enabled:](v6->_supportedAudioRules, "setIsACC24ForU1Enabled:", [a3 isACC24ForU1Enabled]);
  -[VCAudioRuleCollection setIsACC24ForGFTEnabled:](v6->_supportedAudioRules, "setIsACC24ForGFTEnabled:", [a3 isACC24ForGFTEnabled]);
  -[VCAudioRuleCollection setIsHigherAudioREDCutoverU1Enabled:](v6->_supportedAudioRules, "setIsHigherAudioREDCutoverU1Enabled:", [a3 isHigherAudioREDCutoverU1Enabled]);
  v6->_processId = [a3 processId];
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v6->_participantStreamTokens = v12;
  if (!v12)
  {
    [VCSessionParticipant initWithConfig:v6 delegate:?];
    goto LABEL_25;
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](v6->_participantStreamTokens, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:VCUniqueIDGenerator_GenerateID()], &unk_1F579C630);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableDictionary *)v6->_participantStreamTokens objectForKeyedSubscript:&unk_1F579C630];
      *buf = 136316162;
      v23 = v13;
      v24 = 2080;
      v25 = "[VCSessionParticipant initWithConfig:delegate:]";
      v26 = 1024;
      v27 = 1988;
      v28 = 2048;
      v29 = v6;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d (%p) Generated video stream token=%@", buf, 0x30u);
    }
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](v6->_participantStreamTokens, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:VCUniqueIDGenerator_GenerateID()], &unk_1F579C618);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(NSMutableDictionary *)v6->_participantStreamTokens objectForKeyedSubscript:&unk_1F579C618];
      *buf = 136316162;
      v23 = v16;
      v24 = 2080;
      v25 = "[VCSessionParticipant initWithConfig:delegate:]";
      v26 = 1024;
      v27 = 1990;
      v28 = 2048;
      v29 = v6;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d (%p) Generated audio stream token=%@", buf, 0x30u);
    }
  }

  v6->_idsDestination = [a3 idsDestination];
  v6->_sessionUUID = [a3 sessionUUID];
  v6->_mediaTypeSettingsDict = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)v6->_mediaTypeSettingsDict setObject:[VCSessionMediaTypeSettings forKeyedSubscript:"settingsWithMediaType:" settingsWithMediaType:?], &unk_1F579C348];
  v19 = 1;
  [(NSMutableDictionary *)v6->_mediaTypeSettingsDict setObject:[VCSessionMediaTypeSettings forKeyedSubscript:"settingsWithMediaType:" settingsWithMediaType:?], &unk_1F579C360];
  v6->_audioEnabled = 1;
  v6->_videoEnabled = [a3 videoEnabled];
  v6->_videoPaused = [a3 videoPaused];
  [(VCSessionParticipant *)v6 syncMicMediaStateFromLegacyState];
  [(VCSessionParticipant *)v6 syncCameraMediaStateFromLegacyState];
  v6->_participantMKMRecoveryTimeout = +[GKSConnectivitySettings getDecryptionMKMRecoveryInterval];
  v6->_decryptionTimeOutInterval = +[GKSConnectivitySettings getDecryptionTimeoutInterval];
  [(VCSessionParticipant *)v6 updateAudioSpectrumState];
  v6->_securityKeyManager = [a3 securityKeyManager];
  v6->_mediaTypeMixingList = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6->_mediaTypeMixingListLock._os_unfair_lock_opaque = 0;
  v6->_shouldConfigureMicrophoneForThirdPartyCall = [a3 sessionMode] == 3;
  if ([a3 sessionMode] != 3)
  {
    v19 = +[VCHardwareSettings deviceClass]== 8;
  }

  v6->_shouldSynchronizeSystemAudioStartWithAVCScreenCapture = v19;
  return v6;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCSessionParticipant dealloc]";
        v18 = 1024;
        v19 = 2025;
        v20 = 2112;
        p_isa = [(VCSessionParticipant *)self description];
        v6 = " [%s] %s:%d Participant dealloc %@";
        v7 = v5;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v15 = v9;
        v16 = 2080;
        v17 = "[VCSessionParticipant dealloc]";
        v18 = 1024;
        v19 = 2025;
        v20 = 2112;
        p_isa = &v3->isa;
        v22 = 2048;
        v23 = self;
        v24 = 2112;
        v25 = [(VCSessionParticipant *)self description];
        v6 = " [%s] %s:%d %@(%p) Participant dealloc %@";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }

  mediaQueue = self->_mediaQueue;
  if (mediaQueue)
  {
    CFRelease(mediaQueue);
  }

  [(NSMutableDictionary *)self->_mediaTypeMixingList removeAllObjects];
  participantQueue = self->_participantQueue;
  if (participantQueue)
  {
    dispatch_release(participantQueue);
  }

  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_streamDelegate, 0);
  objc_storeWeak(&self->_reportingAgentWeak, 0);
  v13.receiver = self;
  v13.super_class = VCSessionParticipant;
  [(VCObject *)&v13 dealloc];
}

- (BOOL)updateMediaStatesWithConfig:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  if ([a3 mediaStates])
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obja = [objc_msgSend(a3 "mediaStates")];
    v11 = [obja countByEnumeratingWithState:&v81 objects:v80 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v82;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v82 != v13)
          {
            objc_enumerationMutation(obja);
          }

          v15 = *(*(&v81 + 1) + 8 * i);
          v16 = [v15 unsignedIntValue];
          v17 = [(NSMutableDictionary *)self->_mediaTypeSettingsDict objectForKeyedSubscript:v15];
          v18 = [objc_msgSend(objc_msgSend(a3 "mediaStates")];
          if (!v17)
          {
            v19 = +[VCSessionMediaTypeSettings settingsWithMediaType:](VCSessionMediaTypeSettings, "settingsWithMediaType:", [v15 unsignedIntValue]);
            if (!v19)
            {
              if (objc_opt_class() == self)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v43 = VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    [(VCSessionParticipant *)v43 updateMediaStatesWithConfig:v16];
                  }
                }
              }

              else
              {
                if (objc_opt_respondsToSelector())
                {
                  v42 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
                }

                else
                {
                  v42 = &stru_1F570E008;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v44 = VRTraceErrorLogLevelToCSTR();
                  v45 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316418;
                    v69 = v44;
                    v70 = 2080;
                    v71 = "[VCSessionParticipant updateMediaStatesWithConfig:]";
                    v72 = 1024;
                    v73 = 2073;
                    v74 = 2112;
                    v75 = v42;
                    v76 = 2048;
                    v77 = self;
                    v78 = 2112;
                    v79 = VCSessionMediaType_Name(v16);
                    _os_log_error_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate the media type settings for mediaType=%@", buf, 0x3Au);
                  }
                }
              }

              v48 = 0;
              goto LABEL_14;
            }

            v17 = v19;
            [(NSMutableDictionary *)self->_mediaTypeSettingsDict setObject:v19 forKeyedSubscript:v15];
          }

          [(VCSessionMediaTypeSettings *)v17 setMediaState:v18];
        }

        v12 = [obja countByEnumeratingWithState:&v81 objects:v80 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v20 = 1;
  }

  else
  {
    [(VCSessionParticipant *)self updateMediaStatesWithConfig:buf, v5, v6, v7, v8, v9, v10, v46, v47, v49, v51, v53, obj, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9]];
    v20 = buf[0];
  }

  v48 = v20;
LABEL_14:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v50 = [(NSMutableDictionary *)self->_streamGroups allValues];
  v54 = [v50 countByEnumeratingWithState:&v64 objects:v63 count:16];
  if (v54)
  {
    v52 = *v65;
    do
    {
      v21 = 0;
      do
      {
        if (*v65 != v52)
        {
          objc_enumerationMutation(v50);
        }

        objb = v21;
        v22 = *(*(&v64 + 1) + 8 * v21);
        v23 = +[VCSessionParticipant mediaTypesFromStreamGroupID:](VCSessionParticipant, "mediaTypesFromStreamGroupID:", [v22 streamGroupID]);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v59 objects:v58 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v60;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v60 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v59 + 1) + 8 * j);
              v29 = [v28 unsignedIntValue];
              v30 = [(NSMutableDictionary *)self->_mediaTypeSettingsDict objectForKeyedSubscript:v28];
              if (!v30)
              {
                v30 = [VCSessionMediaTypeSettings settingsWithMediaType:v29];
                [(NSMutableDictionary *)self->_mediaTypeSettingsDict setObject:v30 forKeyedSubscript:v28];
              }

              -[VCSessionMediaTypeSettings addStreamGroupID:](v30, "addStreamGroupID:", [v22 streamGroupID]);
            }

            v25 = [v23 countByEnumeratingWithState:&v59 objects:v58 count:16];
          }

          while (v25);
        }

        ++v21;
      }

      while (objb + 1 != v54);
      v54 = [v50 countByEnumeratingWithState:&v64 objects:v63 count:16];
    }

    while (v54);
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        mediaTypeSettingsDict = self->_mediaTypeSettingsDict;
        *buf = 136315906;
        v69 = v32;
        v70 = 2080;
        v71 = "[VCSessionParticipant updateMediaStatesWithConfig:]";
        v72 = 1024;
        v73 = 2091;
        v74 = 2112;
        v75 = mediaTypeSettingsDict;
        v35 = " [%s] %s:%d _mediaTypeSettingsDict=%@";
        v36 = v33;
        v37 = 38;
LABEL_40:
        _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v31 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v31 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_mediaTypeSettingsDict;
        *buf = 136316418;
        v69 = v38;
        v70 = 2080;
        v71 = "[VCSessionParticipant updateMediaStatesWithConfig:]";
        v72 = 1024;
        v73 = 2091;
        v74 = 2112;
        v75 = v31;
        v76 = 2048;
        v77 = self;
        v78 = 2112;
        v79 = v40;
        v35 = " [%s] %s:%d %@(%p) _mediaTypeSettingsDict=%@";
        v36 = v39;
        v37 = 58;
        goto LABEL_40;
      }
    }
  }

  return v48;
}

- (void)setupMediaTypeSettingsWithConfig:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(NSMutableDictionary *)self->_streamGroups allValues];
  v24 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
  if (v24)
  {
    v23 = *v47;
    do
    {
      v4 = 0;
      do
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v5 = *(*(&v46 + 1) + 8 * v4);
        v6 = +[VCSessionParticipant mediaTypesFromStreamGroupID:](VCSessionParticipant, "mediaTypesFromStreamGroupID:", [v5 streamGroupID]);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v26 = v6;
        v7 = [v6 countByEnumeratingWithState:&v41 objects:v40 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v42;
          do
          {
            v10 = 0;
            do
            {
              if (*v42 != v9)
              {
                objc_enumerationMutation(v26);
              }

              v11 = *(*(&v41 + 1) + 8 * v10);
              v12 = [v11 unsignedIntValue];
              v13 = [(NSMutableDictionary *)self->_mediaTypeSettingsDict objectForKeyedSubscript:v11];
              if (!v13)
              {
                v13 = [VCSessionMediaTypeSettings settingsWithMediaType:v12];
                [(NSMutableDictionary *)self->_mediaTypeSettingsDict setObject:v13 forKeyedSubscript:v11];
              }

              -[VCSessionMediaTypeSettings addStreamGroupID:](v13, "addStreamGroupID:", [v5 streamGroupID]);
              v14 = [objc_msgSend(a3 "mediaStates")];
              if (v14)
              {
                videoEnabled = [v14 unsignedIntValue];
              }

              else if (v12)
              {
                if (v12 != 1)
                {
                  goto LABEL_16;
                }

                videoEnabled = self->_videoEnabled;
              }

              else
              {
                videoEnabled = 1;
              }

              [(VCSessionMediaTypeSettings *)v13 setMediaState:videoEnabled];
LABEL_16:
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v16 = VRTraceErrorLogLevelToCSTR();
                v17 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v18 = FourccToCStr([v5 streamGroupID]);
                  v19 = VCSessionMediaType_Name(v12);
                  v20 = VCSessionMediaState_Name([(VCSessionMediaTypeSettings *)v13 mediaState]);
                  *buf = 136316418;
                  v29 = v16;
                  v30 = 2080;
                  v31 = "[VCSessionParticipant setupMediaTypeSettingsWithConfig:]";
                  v32 = 1024;
                  v33 = 2115;
                  v34 = 2080;
                  v35 = v18;
                  v36 = 2112;
                  v37 = v19;
                  v38 = 2112;
                  v39 = v20;
                  _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Adding streamGroupID=%s for mediaType=%@ mediaState=%@", buf, 0x3Au);
                }
              }

              ++v10;
            }

            while (v8 != v10);
            v21 = [v26 countByEnumeratingWithState:&v41 objects:v40 count:16];
            v8 = v21;
          }

          while (v21);
        }

        v4 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
    }

    while (v24);
  }
}

- (void)setupPreferredIOSettings
{
  v3 = 0.02;
  if (self->_isLowLatencyAudio)
  {
    v3 = 0.01;
    v4 = 48000;
  }

  else
  {
    v4 = 24000;
  }

  DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"forceAudioBlockSize", v3);
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceAudioSampleRate", v4);
  self->_preferredIOSampleRate = IntValueForKey;
  self->_preferredIOSamplesPerFrame = (DoubleValueForKey * IntValueForKey);
}

- (unsigned)preferredRTPTimestampRateForGroupID:(unsigned int)a3
{
  result = 48000;
  if (a3 > 1935897188)
  {
    if (a3 == 1935897189)
    {
      return result;
    }

    v4 = 1937339233;
  }

  else
  {
    if (a3 == 1650745716)
    {
      return result;
    }

    v4 = 1718909044;
  }

  if (a3 != v4)
  {
    return 24000;
  }

  return result;
}

- (unsigned)preferredIOSampleRateForGroupID:(unsigned int)a3
{
  v3 = 48000;
  if (a3 != 1935897189 && a3 != 1937339233)
  {
    if (self->_isLowLatencyAudio)
    {
      v3 = 48000;
    }

    else
    {
      v3 = 24000;
    }
  }

  return VCDefaults_GetIntValueForKey(@"forceAudioSampleRate", v3);
}

- (unsigned)preferredIOSamplesPerFrameForGroupID:(unsigned int)a3
{
  v5 = [(VCSessionParticipant *)self preferredIOSampleRateForGroupID:?];
  v6 = 0.02;
  if (a3 != 1935897189 && a3 != 1937339233)
  {
    v6 = 0.02;
    if (self->_isLowLatencyAudio)
    {
      v6 = 0.01;
    }
  }

  return (VCDefaults_GetDoubleValueForKey(@"forceAudioBlockSize", v6) * v5);
}

- (BOOL)setState:(unsigned int)a3
{
  v3 = *&a3;
  v31 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != a3)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v9 = [(VCSessionParticipant *)self participantStateToString:self->_state];
      v17 = 136316162;
      v18 = v7;
      v19 = 2080;
      v20 = "[VCSessionParticipant setState:]";
      v21 = 1024;
      v22 = 2200;
      v23 = 2080;
      v24 = v9;
      v25 = 2080;
      v26 = [(VCSessionParticipant *)self participantStateToString:v3];
      v10 = " [%s] %s:%d Exiting state participant %s. Entering state participant %s.";
      v11 = v8;
      v12 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v15 = [(VCSessionParticipant *)self participantStateToString:self->_state];
      v17 = 136316674;
      v18 = v13;
      v19 = 2080;
      v20 = "[VCSessionParticipant setState:]";
      v21 = 1024;
      v22 = 2200;
      v23 = 2112;
      v24 = v6;
      v25 = 2048;
      v26 = self;
      v27 = 2080;
      v28 = v15;
      v29 = 2080;
      v30 = [(VCSessionParticipant *)self participantStateToString:v3];
      v10 = " [%s] %s:%d %@(%p) Exiting state participant %s. Entering state participant %s.";
      v11 = v14;
      v12 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
LABEL_13:
    self->_state = v3;
  }

  return state != v3;
}

- (char)participantStateToString:(unsigned int)a3
{
  if (a3)
  {
    return "Running";
  }

  else
  {
    return "Stopped";
  }
}

- (void)start
{
  v4[5] = *MEMORY[0x1E69E9840];
  [(VCSessionParticipant *)self participantVideoToken];
  kdebug_trace();
  participantQueue = self->_participantQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__VCSessionParticipant_start__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(participantQueue, v4);
}

- (void)stop
{
  v4[5] = *MEMORY[0x1E69E9840];
  [(VCSessionParticipant *)self participantVideoToken];
  kdebug_trace();
  participantQueue = self->_participantQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__VCSessionParticipant_stop__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(participantQueue, v4);
}

- (void)applyScreenEnabledSetting:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[VCSessionParticipant applyScreenEnabledSetting:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 2247;
        WORD2(v14) = 1024;
        *(&v14 + 6) = v3;
        v8 = " [%s] %s:%d Changing participant screenEnabled to %d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[VCSessionParticipant applyScreenEnabledSetting:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 2247;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        v15 = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = v3;
        v8 = " [%s] %s:%d %@(%p) Changing participant screenEnabled to %d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  self->_screenEnabled = v3;
  [(VCSessionParticipant *)self syncScreenMediaStateFromLegacyState:*v13];
}

- (id)streamGroupsForMediaType:(unsigned int)a3
{
  v3 = *&a3;
  v43 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = -[NSMutableDictionary objectForKeyedSubscript:](self->_mediaTypeSettingsDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [v6 streamGroupIDs];
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v40;
    *&v9 = 136315906;
    v25 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        v14 = [(NSMutableDictionary *)self->_participantStreamTokens objectForKeyedSubscript:v13, v25];
        if (v14)
        {
          [v5 addObject:{-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroups, "objectForKeyedSubscript:", v14)}];
          goto LABEL_8;
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v27 = v21;
              v28 = 2080;
              v29 = "[VCSessionParticipant streamGroupsForMediaType:]";
              v30 = 1024;
              v31 = 2258;
              v32 = 2112;
              v33 = v13;
              v18 = v22;
              v19 = " [%s] %s:%d Stream token not found for streamGroupID=%@";
              v20 = 38;
              goto LABEL_19;
            }
          }
        }

        else
        {
          v15 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v15 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v16 = VRTraceErrorLogLevelToCSTR();
            v17 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v27 = v16;
              v28 = 2080;
              v29 = "[VCSessionParticipant streamGroupsForMediaType:]";
              v30 = 1024;
              v31 = 2258;
              v32 = 2112;
              v33 = v15;
              v34 = 2048;
              v35 = self;
              v36 = 2112;
              v37 = v13;
              v18 = v17;
              v19 = " [%s] %s:%d %@(%p) Stream token not found for streamGroupID=%@";
              v20 = 58;
LABEL_19:
              _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, v19, buf, v20);
            }
          }
        }

LABEL_8:
        ++v12;
      }

      while (v10 != v12);
      v23 = [v7 countByEnumeratingWithState:&v39 objects:v38 count:16];
      v10 = v23;
    }

    while (v23);
  }

  return v5;
}

- (id)streamGroupsForIDs:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E695DFA8] set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v39;
    *&v6 = 136315906;
    v23 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)self->_participantStreamTokens objectForKeyedSubscript:v10, v23];
        if (v11)
        {
          v12 = [(NSMutableDictionary *)self->_streamGroups objectForKeyedSubscript:v11];
          if (v12)
          {
            [v24 addObject:v12];
          }
        }

        else if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v19 = VRTraceErrorLogLevelToCSTR();
            v20 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = v23;
              v26 = v19;
              v27 = 2080;
              v28 = "[VCSessionParticipant streamGroupsForIDs:]";
              v29 = 1024;
              v30 = 2271;
              v31 = 2112;
              v32 = v10;
              v16 = v20;
              v17 = " [%s] %s:%d Stream token not found for streamGroupID=%@";
              v18 = 38;
              goto LABEL_20;
            }
          }
        }

        else
        {
          v13 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v13 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v26 = v14;
              v27 = 2080;
              v28 = "[VCSessionParticipant streamGroupsForIDs:]";
              v29 = 1024;
              v30 = 2271;
              v31 = 2112;
              v32 = v13;
              v33 = 2048;
              v34 = self;
              v35 = 2112;
              v36 = v10;
              v16 = v15;
              v17 = " [%s] %s:%d %@(%p) Stream token not found for streamGroupID=%@";
              v18 = 58;
LABEL_20:
              _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v17, buf, v18);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v21 = [a3 countByEnumeratingWithState:&v38 objects:v37 count:16];
      v7 = v21;
    }

    while (v21);
  }

  return v24;
}

- (id)applyMediaState:(unsigned int)a3 forMediaType:(unsigned int)a4
{
  v4 = *&a4;
  v6 = self;
  v124 = *MEMORY[0x1E69E9840];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_mediaTypeSettingsDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a4]);
  if (!v7)
  {
    v56 = +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 12, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionParticipant.m", 2293]);
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v59 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipant applyMediaState:v59 forMediaType:v4];
        }
      }

      return v56;
    }

    if (objc_opt_respondsToSelector())
    {
      v58 = [(VCSessionParticipant *)v6 performSelector:sel_logPrefix];
    }

    else
    {
      v58 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v56;
    }

    v60 = VRTraceErrorLogLevelToCSTR();
    v61 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v56;
    }

    *buf = 136316418;
    v94 = v60;
    v95 = 2080;
    v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
    v97 = 1024;
    v98 = 2294;
    v99 = 2112;
    v100 = v58;
    v101 = 2048;
    v102 = v6;
    v103 = 2112;
    v104 = VCSessionMediaType_Name(v4);
    v63 = " [%s] %s:%d %@(%p) mediaTypeSettings is missing for mediaType=%@";
    v64 = v61;
LABEL_85:
    v65 = 58;
    goto LABEL_86;
  }

  v8 = v7;
  v82 = a3;
  v9 = [v7 streamGroupIDs];
  v87 = v6;
  v81 = v4;
  if ([(VCSessionParticipant *)v6 isActiveMediaType:v4]&& v6->_state == 1)
  {
    v10 = [MEMORY[0x1E695DFA8] setWithSet:v9];
    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v9, "count")}];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v9, "count")}];
    v11 = [MEMORY[0x1E695DFA8] setWithSet:v9];
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = [(NSMutableDictionary *)v6->_mediaTypeSettingsDict allValues];
    v86 = [obj countByEnumeratingWithState:&v120 objects:v119 count:16];
    if (v86)
    {
      v84 = *v121;
      v85 = v8;
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v121 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v120 + 1) + 8 * i);
          if (v13 != v8)
          {
            v14 = !-[VCSessionParticipant isActiveMediaType:](v87, "isActiveMediaType:", [*(*(&v120 + 1) + 8 * i) mediaType]) || v87->_state != 1;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v15 = [v13 streamGroupIDs];
            v16 = [v15 countByEnumeratingWithState:&v115 objects:v114 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v116;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v116 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v115 + 1) + 8 * j);
                  if (!(v14 | (([v9 containsObject:v20] & 1) == 0)))
                  {
                    [v10 addObject:v20];
                    [v11 removeObject:v20];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v115 objects:v114 count:16];
              }

              while (v17);
            }
          }

          v8 = v85;
        }

        v86 = [obj countByEnumeratingWithState:&v120 objects:v119 count:16];
      }

      while (v86);
      v6 = v87;
    }
  }

  v21 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v10, "count")}];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v22 = [v10 countByEnumeratingWithState:&v110 objects:v109 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v111;
    do
    {
      v25 = 0;
      do
      {
        if (*v111 != v24)
        {
          objc_enumerationMutation(v10);
        }

        v26 = *(*(&v110 + 1) + 8 * v25);
        v27 = [(NSMutableDictionary *)v6->_participantStreamTokens objectForKeyedSubscript:v26];
        if (v27)
        {
          [v21 addObject:{-[NSMutableDictionary objectForKeyedSubscript:](v6->_streamGroups, "objectForKeyedSubscript:", v27)}];
          goto LABEL_33;
        }

        if (objc_opt_class() == v6)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v34 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v94 = v34;
              v95 = 2080;
              v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
              v97 = 1024;
              v98 = 2324;
              v99 = 2112;
              v100 = v26;
              v31 = v35;
              v32 = " [%s] %s:%d Stream token not found for streamGroupID=%@";
              v33 = 38;
              goto LABEL_44;
            }
          }
        }

        else
        {
          v28 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v28 = [(VCSessionParticipant *)v6 performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v29 = VRTraceErrorLogLevelToCSTR();
            v30 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v94 = v29;
              v95 = 2080;
              v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
              v97 = 1024;
              v98 = 2324;
              v99 = 2112;
              v100 = v28;
              v101 = 2048;
              v102 = v87;
              v103 = 2112;
              v104 = v26;
              v31 = v30;
              v32 = " [%s] %s:%d %@(%p) Stream token not found for streamGroupID=%@";
              v33 = 58;
LABEL_44:
              _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
            }
          }
        }

LABEL_33:
        ++v25;
        v6 = v87;
      }

      while (v23 != v25);
      v36 = [v10 countByEnumeratingWithState:&v110 objects:v109 count:16];
      v23 = v36;
    }

    while (v36);
  }

  v37 = [v21 count];
  v38 = v82;
  if (!v37 || (v39 = [(VCSessionParticipant *)v6 updateMediaState:v82 forStreamGroups:v21]) == 0)
  {
    v40 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v11, "count", v38)}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v41 = [v11 countByEnumeratingWithState:&v89 objects:v88 count:16];
    if (!v41)
    {
      goto LABEL_68;
    }

    v42 = v41;
    v43 = *v90;
    while (1)
    {
      v44 = 0;
      do
      {
        if (*v90 != v43)
        {
          objc_enumerationMutation(v11);
        }

        v45 = *(*(&v89 + 1) + 8 * v44);
        v46 = [(NSMutableDictionary *)v6->_participantStreamTokens objectForKeyedSubscript:v45];
        if (v46)
        {
          [v40 addObject:{-[NSMutableDictionary objectForKeyedSubscript:](v6->_streamGroups, "objectForKeyedSubscript:", v46)}];
          goto LABEL_55;
        }

        if (objc_opt_class() == v6)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v53 = VRTraceErrorLogLevelToCSTR();
            v54 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v94 = v53;
              v95 = 2080;
              v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
              v97 = 1024;
              v98 = 2339;
              v99 = 2112;
              v100 = v45;
              v50 = v54;
              v51 = " [%s] %s:%d Stream token not found for streamGroupID=%@";
              v52 = 38;
              goto LABEL_66;
            }
          }
        }

        else
        {
          v47 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v47 = [(VCSessionParticipant *)v6 performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v48 = VRTraceErrorLogLevelToCSTR();
            v49 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v94 = v48;
              v95 = 2080;
              v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
              v97 = 1024;
              v98 = 2339;
              v99 = 2112;
              v100 = v47;
              v101 = 2048;
              v102 = v87;
              v103 = 2112;
              v104 = v45;
              v50 = v49;
              v51 = " [%s] %s:%d %@(%p) Stream token not found for streamGroupID=%@";
              v52 = 58;
LABEL_66:
              _os_log_error_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_ERROR, v51, buf, v52);
            }
          }
        }

LABEL_55:
        ++v44;
        v6 = v87;
      }

      while (v42 != v44);
      v55 = [v11 countByEnumeratingWithState:&v89 objects:v88 count:16];
      v42 = v55;
      if (!v55)
      {
LABEL_68:
        if (![v40 count])
        {
          return 0;
        }

        v56 = [(VCSessionParticipant *)v6 updateMediaState:0 forStreamGroups:v40];
        if (v56)
        {
          if (objc_opt_class() == v6)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v71 = VRTraceErrorLogLevelToCSTR();
              v72 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v73 = VCSessionMediaType_Name(v81);
                *buf = 136316162;
                v94 = v71;
                v95 = 2080;
                v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
                v97 = 1024;
                v98 = 2346;
                v99 = 2112;
                v100 = v73;
                v101 = 2112;
                v102 = v56;
                v63 = " [%s] %s:%d Failed to deactivate stream groups. mediaState=%@ error=%@";
                v64 = v72;
                v65 = 48;
                goto LABEL_86;
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v57 = [(VCSessionParticipant *)v6 performSelector:sel_logPrefix];
            }

            else
            {
              v57 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v78 = VRTraceErrorLogLevelToCSTR();
              v79 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v80 = VCSessionMediaType_Name(v81);
                *buf = 136316674;
                v94 = v78;
                v95 = 2080;
                v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
                v97 = 1024;
                v98 = 2346;
                v99 = 2112;
                v100 = v57;
                v101 = 2048;
                v102 = v87;
                v103 = 2112;
                v104 = v80;
                v105 = 2112;
                v106 = v56;
                v63 = " [%s] %s:%d %@(%p) Failed to deactivate stream groups. mediaState=%@ error=%@";
                v64 = v79;
                v65 = 68;
LABEL_86:
                _os_log_error_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_ERROR, v63, buf, v65);
              }
            }
          }
        }

        return v56;
      }
    }
  }

  v56 = v39;
  if (objc_opt_class() == v6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v56;
    }

    v67 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v56;
    }

    v69 = VCSessionMediaType_Name(v81);
    v70 = VCSessionMediaState_Name(v82);
    *buf = 136316418;
    v94 = v67;
    v95 = 2080;
    v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
    v97 = 1024;
    v98 = 2331;
    v99 = 2112;
    v100 = v69;
    v101 = 2112;
    v102 = v70;
    v103 = 2112;
    v104 = v56;
    v63 = " [%s] %s:%d Failed to activate stream groups. mediaType=%@ mediaState=%@ error=%@";
    v64 = v68;
    goto LABEL_85;
  }

  if (objc_opt_respondsToSelector())
  {
    v66 = [(VCSessionParticipant *)v6 performSelector:sel_logPrefix];
  }

  else
  {
    v66 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v74 = VRTraceErrorLogLevelToCSTR();
    v75 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v76 = VCSessionMediaType_Name(v81);
      v77 = VCSessionMediaState_Name(v82);
      *buf = 136316930;
      v94 = v74;
      v95 = 2080;
      v96 = "[VCSessionParticipant applyMediaState:forMediaType:]";
      v97 = 1024;
      v98 = 2331;
      v99 = 2112;
      v100 = v66;
      v101 = 2048;
      v102 = v87;
      v103 = 2112;
      v104 = v76;
      v105 = 2112;
      v106 = v77;
      v107 = 2112;
      v108 = v56;
      v63 = " [%s] %s:%d %@(%p) Failed to activate stream groups. mediaType=%@ mediaState=%@ error=%@";
      v64 = v75;
      v65 = 78;
      goto LABEL_86;
    }
  }

  return v56;
}

- (void)updateVideoPaused:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[VCSessionParticipant updateVideoPaused:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 2385;
        WORD2(v14) = 1024;
        *(&v14 + 6) = v3;
        v8 = " [%s] %s:%d Changing participant videoPaused to %d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[VCSessionParticipant updateVideoPaused:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 2385;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        v15 = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = v3;
        v8 = " [%s] %s:%d %@(%p) Changing participant videoPaused to %d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  self->_videoPaused = v3;
  [(VCSessionParticipant *)self syncCameraMediaStateFromLegacyState:*v13];
  [(VCSessionParticipant *)self updateAudioSpectrumState];
}

- (NSArray)allParticipantStreamInfo
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_streamGroups allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[NSArray addObjectsFromArray:](v3, "addObjectsFromArray:", [*(*(&v11 + 1) + 8 * v8++) mediaStreamInfoArray]);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setMuted:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__VCSessionParticipant_setMuted___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __33__VCSessionParticipant_setMuted___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 392) setMuted:*(a1 + 40)];
  *(*(a1 + 32) + 372) = *(a1 + 40);
  return result;
}

- (BOOL)setVolume:(float)a3
{
  v3 = a3 <= 1.0 && a3 >= 0.0;
  if (v3)
  {
    self->_volume = a3;
  }

  return v3;
}

- (BOOL)setAudioPosition:(float)a3
{
  v3 = fabsf(a3);
  if (v3 <= 1.0)
  {
    self->_audioPosition = a3;
  }

  return v3 <= 1.0;
}

- (void)setAudioEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCSessionParticipant_setAudioEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)setVideoEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCSessionParticipant_setVideoEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)setScreenEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCSessionParticipant_setScreenEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)setAudioPaused:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCSessionParticipant_setAudioPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)setVideoPaused:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCSessionParticipant_setVideoPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)setMediaState:(unsigned int)a3 forMediaType:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCSessionParticipant_setMediaState_forMediaType___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(participantQueue, block);
}

- (void)setMediaType:(unsigned int)a3 mixingWithMediaType:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCSessionParticipant_setMediaType_mixingWithMediaType___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(participantQueue, block);
}

- (unsigned)streamGroupStateFromStreamGroupID:(unsigned int)a3
{
  v3 = [-[VCSessionParticipant streamGroupWithID:](self streamGroupWithID:{*&a3), "state"}];
  v4 = objc_opt_class();

  return [v4 mediaStreamGroupStateToVCStreamGroupState:v3];
}

+ (unsigned)mediaStreamGroupStateToVCStreamGroupState:(unsigned int)a3
{
  v3 = a3;
  if (a3 >= 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCSessionParticipant mediaStreamGroupStateToVCStreamGroupState:];
      }
    }

    return -1;
  }

  return v3;
}

+ (id)mediaTypesFromStreamGroupID:(unsigned int)a3
{
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = v4;
  v6 = &unk_1F579C360;
  if (a3 > 1835623281)
  {
    if (a3 > 1936290408)
    {
      if (a3 - 1986618417 < 4)
      {
        goto LABEL_24;
      }

      if (a3 == 1936290409)
      {
        v6 = &unk_1F579C6D8;
        goto LABEL_24;
      }

      if (a3 == 1937339233)
      {
        v6 = &unk_1F579C6A8;
        goto LABEL_24;
      }
    }

    else
    {
      if (a3 == 1835623282 || a3 == 1835623287)
      {
        v6 = &unk_1F579C348;
        goto LABEL_24;
      }

      if (a3 == 1935897189)
      {
        v6 = &unk_1F579C378;
        goto LABEL_24;
      }
    }
  }

  else if (a3 <= 1667330163)
  {
    if (a3 == 1650745716)
    {
      [v4 addObject:&unk_1F579C6F0];
      v6 = &unk_1F579C708;
      goto LABEL_24;
    }

    if (a3 == 1667329381 || a3 == 1667329399)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (a3 - 1684108337 < 5)
    {
LABEL_24:
      [v5 addObject:v6];
      return v5;
    }

    if (a3 == 1667330164)
    {
      v6 = &unk_1F579C6C0;
      goto LABEL_24;
    }

    if (a3 == 1718909044)
    {
      v6 = &unk_1F579C6F0;
      goto LABEL_24;
    }
  }

  return v5;
}

- (void)setStatisticsCollector:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  statisticsCollector = self->_statisticsCollector;

  self->_statisticsCollector = a3;
  if (!statisticsCollector)
  {
    [(VCSessionParticipant *)self createRedundancyControllers];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableDictionary *)self->_streamGroups allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
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

        [*(*(&v12 + 1) + 8 * v10++) setStatisticsCollector:self->_statisticsCollector];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v8);
  }
}

- (void)setBasebandCongestionDetector:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];

  self->_basebandCongestionDetector = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = v5;
      v19 = 2080;
      v20 = "[VCSessionParticipant setBasebandCongestionDetector:]";
      v21 = 1024;
      v22 = 2551;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set VCRateControl baseband congestion detector to all audio streams", buf, 0x1Cu);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  micStreamGroups = self->_micStreamGroups;
  v8 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(micStreamGroups);
        }

        [*(*(&v13 + 1) + 8 * i) setBasebandCongestionDetector:self->_basebandCongestionDetector];
      }

      v9 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (void)createRedundancyControllers
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [[VCRedundancyControllerVideo alloc] initWithDelegate:self mode:7 parameters:self->_statisticsCollector, 400];
  self->_videoRedundancyController = v3;
  [(VCRedundancyControllerVideo *)v3 setStatisticsID:self->_idsParticipantID];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCSessionParticipant createRedundancyControllers]";
      v10 = 1024;
      v11 = 2563;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Redundancy controllers are created", &v6, 0x1Cu);
    }
  }
}

- (void)collectCaptionsChannelMetrics:(id *)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  VCMediaChannelMetrics_Reset(a3);
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCSessionParticipant_collectCaptionsChannelMetrics___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

uint64_t __54__VCSessionParticipant_collectCaptionsChannelMetrics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) captionsGroup];
  v3 = *(a1 + 40);

  return [v2 collectAndLogChannelMetrics:v3];
}

- (void)setMediaQueue:(tagVCMediaQueue *)a3
{
  mediaQueue = self->_mediaQueue;
  if (mediaQueue != a3)
  {
    if (mediaQueue)
    {
      CFRelease(mediaQueue);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_mediaQueue = v6;
  }
}

- (void)handleStreamGroupsActiveConnectionChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_streamGroups allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) handleActiveConnectionChange:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (BOOL)setupMediaSyncForStreamGroup:(id)a3
{
  v4 = -[VCSessionParticipant streamGroupWithID:](self, "streamGroupWithID:", [a3 syncGroupID]);
  if (v4)
  {
    if ([v4 addSyncDestination:a3])
    {
      return 1;
    }

    else
    {
      [VCSessionParticipant setupMediaSyncForStreamGroup:];
      return v6;
    }
  }

  else
  {
    [VCSessionParticipant setupMediaSyncForStreamGroup:];
    return v7;
  }
}

- (void)swapScreenStreamGroupSyncSourceWithState:(unsigned int)a3
{
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_participantQueue);
  v5 = [(VCSessionParticipant *)self systemAudioGroup];
  v6 = [(VCSessionParticipant *)self microphoneGroup];
  v7 = [(VCSessionParticipant *)self screenGroup];
  if (a3 == 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *v25 = 136315650;
      *&v25[4] = v15;
      *&v25[12] = 2080;
      *&v25[14] = "[VCSessionParticipant swapScreenStreamGroupSyncSourceWithState:]";
      *&v25[22] = 1024;
      LODWORD(v26) = 2633;
      v17 = " [%s] %s:%d System Audio Stream Group has resumed, swapping sync sources";
      v18 = v16;
      v19 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *v25 = 136316162;
      *&v25[4] = v23;
      *&v25[12] = 2080;
      *&v25[14] = "[VCSessionParticipant swapScreenStreamGroupSyncSourceWithState:]";
      *&v25[22] = 1024;
      LODWORD(v26) = 2633;
      WORD2(v26) = 2112;
      *(&v26 + 6) = v9;
      HIWORD(v26) = 2048;
      v27 = self;
      v17 = " [%s] %s:%d %@(%p) System Audio Stream Group has resumed, swapping sync sources";
      v18 = v24;
      v19 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v25, v19);
LABEL_26:
    v22 = v6;
    v6 = v5;
    goto LABEL_27;
  }

  if (a3 != 2)
  {
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_20;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *v25 = 136315650;
    *&v25[4] = v10;
    *&v25[12] = 2080;
    *&v25[14] = "[VCSessionParticipant swapScreenStreamGroupSyncSourceWithState:]";
    *&v25[22] = 1024;
    LODWORD(v26) = 2626;
    v12 = " [%s] %s:%d System Audio Stream Group has paused, swapping sync sources";
    v13 = v11;
    v14 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_20;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *v25 = 136316162;
    *&v25[4] = v20;
    *&v25[12] = 2080;
    *&v25[14] = "[VCSessionParticipant swapScreenStreamGroupSyncSourceWithState:]";
    *&v25[22] = 1024;
    LODWORD(v26) = 2626;
    WORD2(v26) = 2112;
    *(&v26 + 6) = v8;
    HIWORD(v26) = 2048;
    v27 = self;
    v12 = " [%s] %s:%d %@(%p) System Audio Stream Group has paused, swapping sync sources";
    v13 = v21;
    v14 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v25, v14);
LABEL_20:
  v22 = v5;
LABEL_27:
  [v22 removeSyncDestination:{v7, *v25, *&v25[16], v26, v27}];
  [v6 addSyncDestination:v7];
}

- (void)setMediaRecorder:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCSessionParticipant_setMediaRecorder___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(participantQueue, block);
}

id __41__VCSessionParticipant_setMediaRecorder___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 512) = result;
  return result;
}

- (VCMediaRecorder)mediaRecorder
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__43;
  v10 = __Block_byref_object_dispose__43;
  v11 = 0;
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCSessionParticipant_mediaRecorder__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(participantQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __37__VCSessionParticipant_mediaRecorder__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 512);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)vcMediaStream:(id)a3 requestKeyFrameGenerationWithStreamID:(unsigned __int16)a4 firType:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316162;
      v12 = v8;
      v13 = 2080;
      v14 = "[VCSessionParticipant vcMediaStream:requestKeyFrameGenerationWithStreamID:firType:]";
      v15 = 1024;
      v16 = 2670;
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d requestKeyFrameGenerationWithStreamID:%d FIRType:%d", &v11, 0x28u);
    }
  }

  v10 = MEMORY[0x1E1289F20](&self->_delegate);
  [v10 vcSessionParticipant:self requestKeyFrameGenerationWithStreamID:v6 streamGroupID:0 firType:v5];
  if (v10)
  {
    CFRelease(v10);
  }
}

- (BOOL)handleEncryptionInfoChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_streamGroups allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) handleEncryptionInfoChange:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return 1;
}

- (void)resetDecryptionTimeout
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 2692;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Resetting decryption status", v1, 0x1Cu);
}

- (void)handleActiveConnectionChange:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->_participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCSessionParticipant_handleActiveConnectionChange___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __53__VCSessionParticipant_handleActiveConnectionChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 432) = VCConnection_IsLocalOnWiFiOrWired(*(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 handleStreamGroupsActiveConnectionChange:v3];
}

- (void)sendAudioPowerSpectrumSourceRegistration:(BOOL)a3
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"VCSPUUID", self->_uuid);
  CFDictionaryAddValue(Mutable, @"VCSPAPSReg", [MEMORY[0x1E696AD98] numberWithBool:v3]);
  [(VCSessionParticipant *)self reportingAgent];
  reportingGenericEvent();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (int64_t)negotiatedCipherSuiteForStreamGroupID:(unsigned int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  participantQueue = self->_participantQueue;
  v11 = -1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__VCSessionParticipant_negotiatedCipherSuiteForStreamGroupID___block_invoke;
  v6[3] = &unk_1E85F61A8;
  v6[4] = self;
  v6[5] = &v8;
  v7 = a3;
  dispatch_sync(participantQueue, v6);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __62__VCSessionParticipant_negotiatedCipherSuiteForStreamGroupID___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 416) negotiatedResultsForGroupID:{*(a1 + 48)), "cipherSuite"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipant didUpdateBasebandCodec:];
    }
  }
}

- (void)handleRemoteOneToOneSwitchWithStreamGroup:(id)a3 fromStreamID:(unsigned __int16)a4 toStreamID:(unsigned __int16)a5
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a4 || !a5)
  {
    v6 = a4 || a5 == 0;
    v7 = !v6;
    if ([a3 streamGroupID] == 1835623282)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315906;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCSessionParticipant handleRemoteOneToOneSwitchWithStreamGroup:fromStreamID:toStreamID:]";
          v15 = 1024;
          v16 = 2794;
          v17 = 1024;
          v18 = v7;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Detected remote switch of oneToOne mode %d", &v11, 0x22u);
        }
      }

      v10 = MEMORY[0x1E1289F20](&self->_delegate);
      [v10 vcSessionParticipant:self oneToOneModeDidChange:!v7];
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }
}

- (void)handleSymptomReportForDecryptionError
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeySessionID", self->_sessionUUID);
  CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyParticipantID", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_idsParticipantID]);
  [(VCSessionParticipant *)self reportingAgent];
  reportingSymptom();

  CFRelease(Mutable);
}

- (void)mkiCollisionDetectedForStreamGroup:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSessionParticipant mkiCollisionDetectedForStreamGroup:]";
      v12 = 1024;
      v13 = 2810;
      v14 = 2112;
      v15 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Detected MKI collision for streamGroup=%@", &v8, 0x26u);
    }
  }

  v7 = MEMORY[0x1E1289F20](&self->_delegate);
  [v7 vcSessionParticipantDidDetectMKICollision:self];
  if (v7)
  {
    CFRelease(v7);
  }
}

- (void)streamGroup:(id)a3 didChangeMediaPriority:(unsigned __int8)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v7;
      v14 = 2080;
      v15 = "[VCSessionParticipant streamGroup:didChangeMediaPriority:]";
      v16 = 1024;
      v17 = 2819;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d priority %hhu", &v12, 0x22u);
    }
  }

  v9 = MEMORY[0x1E1289F20](&self->_delegate);
  v10 = [a3 streamGroupID];
  if (v10 > 1835623281)
  {
    if (v10 != 1835623287 && v10 != 1835623282)
    {
      goto LABEL_12;
    }

    v11 = AVCSessionParticipantMediaTypeKeyAudio;
  }

  else
  {
    v11 = &AVCSessionParticipantMediaTypeKeyVideo;
    if (v10 != 1667329381 && v10 != 1667329399)
    {
      goto LABEL_12;
    }
  }

  [v9 vcSessionParticipant:self didChangeMediaPriority:v4 description:*v11];
LABEL_12:
  if (v9)
  {
    CFRelease(v9);
  }
}

- (void)didChangeSendingStreamsForStreamGroup:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSessionParticipant didChangeSendingStreamsForStreamGroup:]";
      v12 = 1024;
      v13 = 2841;
      v14 = 2112;
      v15 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamGroup %@", buf, 0x26u);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__VCSessionParticipant_didChangeSendingStreamsForStreamGroup___block_invoke;
  v7[3] = &unk_1E85F6780;
  v7[4] = self;
  [(VCSessionParticipant *)self callDelegateWithBlock:v7];
}

- (void)didMediaDecryptionTimeOutForStreamGroup:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[VCSessionParticipant didMediaDecryptionTimeOutForStreamGroup:]";
      v15 = 1024;
      v16 = 2848;
      v17 = 2112;
      v18 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamGroup %@", buf, 0x26u);
    }
  }

  [(VCSessionParticipant *)self reportingAgent];
  uuid = self->_uuid;
  v9 = @"VCSPUUID";
  v10 = uuid;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  reportingGenericEvent();
  v8 = MEMORY[0x1E1289F20](&self->_delegate);
  [v8 vcSessionParticipantDidMediaDecryptionTimeOut:self];
  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)streamGroup:(id)a3 didRemoteEnableChange:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      *v9 = 136315906;
      *&v9[4] = v6;
      *&v9[12] = 2080;
      *&v9[14] = "[VCSessionParticipant streamGroup:didRemoteEnableChange:]";
      if (v4)
      {
        v8 = "YES";
      }

      *&v9[22] = 1024;
      v10 = 2856;
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d enabled %s", v9, 0x26u);
    }
  }

  [(VCSessionParticipant *)self updateAudioSpectrumState:*v9];
}

- (void)streamGroup:(id)a3 didRemotePauseChange:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      *v9 = 136315906;
      *&v9[4] = v6;
      *&v9[12] = 2080;
      *&v9[14] = "[VCSessionParticipant streamGroup:didRemotePauseChange:]";
      if (v4)
      {
        v8 = "YES";
      }

      *&v9[22] = 1024;
      v10 = 2861;
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d paused %s", v9, 0x26u);
    }
  }

  [(VCSessionParticipant *)self updateAudioSpectrumState:*v9];
}

- (void)streamGroup:(id)a3 didSwitchFromStreamID:(unsigned __int16)a4 toStreamID:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v24 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6 == v5)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v9;
        v16 = 2080;
        v17 = "[VCSessionParticipant streamGroup:didSwitchFromStreamID:toStreamID:]";
        v18 = 1024;
        v19 = 2867;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fromStreamID & toStreamID are equal, no switch needed", &v14, 0x1Cu);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCSessionParticipant streamGroup:didSwitchFromStreamID:toStreamID:]";
        v18 = 1024;
        v19 = 2870;
        v20 = 1024;
        v21 = v6;
        v22 = 1024;
        v23 = v5;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d switched streamID %hu -> %hu", &v14, 0x28u);
      }
    }

    v13 = MEMORY[0x1E1289F20](&self->_delegate);
    [v13 vcSessionParticipant:self didSwitchFromStreamID:v6 toStreamID:v5];
    if (v13)
    {
      CFRelease(v13);
    }
  }
}

- (void)didChangeReceivingStreamsForStreamGroup:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCSessionParticipant didChangeReceivingStreamsForStreamGroup:]";
      v10 = 1024;
      v11 = 2877;
      v12 = 2112;
      v13 = a3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamGroup %@", &v6, 0x26u);
    }
  }
}

- (void)didChangeActualNetworkBitrateForStreamGroup:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSessionParticipant didChangeActualNetworkBitrateForStreamGroup:]";
      v12 = 1024;
      v13 = 2881;
      v14 = 2112;
      v15 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamGroup %@", buf, 0x26u);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__VCSessionParticipant_didChangeActualNetworkBitrateForStreamGroup___block_invoke;
  v7[3] = &unk_1E85F6848;
  v7[4] = self;
  v7[5] = a3;
  [(VCSessionParticipant *)self callDelegateWithBlock:v7];
}

uint64_t __68__VCSessionParticipant_didChangeActualNetworkBitrateForStreamGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) streamGroupID];

  return [a2 vcSessionParticipant:v3 didChangeActualNetworkBitrateForStreamGroupID:v4];
}

- (void)streamGroup:(id)a3 didRequestRedundancy:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = "NO";
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSessionParticipant streamGroup:didRequestRedundancy:]";
      if (v4)
      {
        v7 = "YES";
      }

      v12 = 1024;
      v13 = 2888;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d requestRedundancy %s", &v8, 0x26u);
    }
  }
}

- (void)streamGroup:(id)a3 requestKeyFrameGenerationWithStreamID:(unsigned __int16)a4 firType:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCSessionParticipant streamGroup:requestKeyFrameGenerationWithStreamID:firType:]";
      v16 = 1024;
      v17 = 2892;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamID %d", &v12, 0x22u);
    }
  }

  v11 = MEMORY[0x1E1289F20](&self->_delegate);
  [v11 vcSessionParticipant:self requestKeyFrameGenerationWithStreamID:v6 streamGroupID:objc_msgSend(a3 firType:{"streamGroupID"), v5}];
  if (v11)
  {
    CFRelease(v11);
  }
}

- (void)didDecryptionTimeOutForMKMRecoveryForStreamGroup:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipant didDecryptionTimeOutForMKMRecoveryForStreamGroup:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCSessionParticipant didDecryptionTimeOutForMKMRecoveryForStreamGroup:]";
        v17 = 1024;
        v18 = 2899;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = a3;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) streamGroup=%@", buf, 0x3Au);
      }
    }
  }

  v8 = micro();
  if (v8 - self->_lastParticipantMKMRecoveryTime > self->_participantMKMRecoveryTimeout)
  {
    self->_lastParticipantMKMRecoveryTime = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__VCSessionParticipant_didDecryptionTimeOutForMKMRecoveryForStreamGroup___block_invoke;
    v12[3] = &unk_1E85F6780;
    v12[4] = self;
    [(VCSessionParticipant *)self callDelegateWithBlock:v12];
    v9 = dispatch_time(0, 5000000000);
    participantQueue = self->_participantQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__VCSessionParticipant_didDecryptionTimeOutForMKMRecoveryForStreamGroup___block_invoke_2;
    v11[3] = &unk_1E85F3778;
    v11[4] = self;
    dispatch_after(v9, participantQueue, v11);
  }
}

- (void)streamGroup:(id)a3 didSuspendStreams:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCSessionParticipant streamGroup:didSuspendStreams:]";
      v12 = 1024;
      v13 = 2915;
      v14 = 2112;
      v15 = a3;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamGroup %@ didSuspendStreams:%d", &v8, 0x2Cu);
    }
  }
}

- (void)streamGroup:(id)a3 remoteMediaStalled:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCSessionParticipant streamGroup:remoteMediaStalled:duration:]";
      v16 = 1024;
      v17 = 2919;
      v18 = 2112;
      v19 = a3;
      v20 = 1024;
      v21 = v6;
      v22 = 2048;
      v23 = a5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamGroup=%@ remoteMediaStalled=%d duration=%f", buf, 0x36u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__VCSessionParticipant_streamGroup_remoteMediaStalled_duration___block_invoke;
  v11[3] = &unk_1E85F67F8;
  v11[4] = self;
  *&v11[5] = a5;
  [(VCSessionParticipant *)self callDelegateWithBlock:v11];
}

- (void)streamGroup:(id)a3 didReceiveFlushRequestWithPayloads:(id)a4
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__VCSessionParticipant_streamGroup_didReceiveFlushRequestWithPayloads___block_invoke;
  v4[3] = &unk_1E85F6780;
  v4[4] = a4;
  [(VCSessionParticipant *)self callDelegateWithBlock:v4];
}

+ (id)participantDataWithParticipantData:(id)a3 isReinit:(BOOL)a4
{
  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return 0;
    }

    goto LABEL_29;
  }

  v4 = a4;
  v5 = a3;
  v6 = [VCSessionParticipant participantInfoWithParticipantData:?];
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return 0;
    }

    goto LABEL_29;
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
  if (v4 && v8)
  {
    return v5;
  }

  if (v8)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return 0;
    }

    goto LABEL_29;
  }

  v9 = [v7 objectForKeyedSubscript:@"vcSessionParticipantKeyMediaBlob"];
  v10 = [v7 objectForKeyedSubscript:@"b2n"];
  v11 = [v7 objectForKeyedSubscript:@"b2w"];
  if (v4)
  {
    if (v9)
    {
      if (v10)
      {
        v12 = [VCSessionMediaNegotiator negotiationDataWithVersion1:v9 version2:v10];
        goto LABEL_20;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return 0;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return 0;
      }
    }

LABEL_29:
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_30:
    _os_log_error_impl(v19, v20, v21, v22, v23, v24);
    return 0;
  }

  v13 = v11;
  if (!v9 && !v10 && !v11)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return 0;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_2();
    v24 = 38;
    goto LABEL_30;
  }

  if (v10)
  {
    v14 = 1;
    v13 = v10;
  }

  else if (v11)
  {
    v14 = 1;
  }

  else
  {
    if (![v7 objectForKeyedSubscript:@"vcSessionParticipantKeyMediaBlob"])
    {
LABEL_25:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return 0;
      }

      goto LABEL_29;
    }

    v14 = 0;
    v13 = v9;
  }

  v12 = [VCSessionMediaNegotiator negotiationDataWithVersion:v14 mediaBlob:v13];
LABEL_20:
  v15 = v12;
  if (!v12)
  {
    goto LABEL_25;
  }

  v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
  if (!v16)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return 0;
    }

    goto LABEL_29;
  }

  v17 = v16;
  [v16 setObject:v15 forKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
  [v17 setObject:0 forKeyedSubscript:@"vcSessionParticipantKeyMediaBlob"];
  [v17 setObject:0 forKeyedSubscript:@"b2n"];
  [v17 setObject:0 forKeyedSubscript:@"b2w"];

  return [VCSessionParticipant participantDataWithParticipantInfo:v17];
}

- (id)updateActiveStateForStreamGroup:(id)a3
{
  OUTLINED_FUNCTION_40_0();
  v27 = v3;
  v28 = v6;
  v26 = *MEMORY[0x1E69E9840];
  if (v4[42] == 1)
  {
    v7 = v5;
    v8 = [v4 isStreamGroupActive:?];
    v9 = [v7 state];
    if (!v8 || v9)
    {
      if (v9)
      {
        v17 = v8;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v23) = 136316418;
            *(&v23 + 4) = v18;
            WORD6(v23) = 2080;
            OUTLINED_FUNCTION_7();
            LODWORD(v24) = 892;
            WORD2(v24) = 2112;
            *(&v24 + 6) = v7;
            HIWORD(v24) = v20;
            LODWORD(v25) = v8;
            WORD2(v25) = v20;
            *(&v25 + 6) = v21;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Ignore start/stop for stream group=%@ isStreamGroupActive=%d isStreamGroupStarted=%d", &v23, 0x32u);
          }
        }
      }

      else
      {
        [v7 stop];
      }
    }

    else
    {
      v10 = [v7 start];
      if (v10)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_40())
          {
            OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_29();
            *(&v24 + 6) = v7;
            HIWORD(v24) = v11;
            *&v25 = v10;
            OUTLINED_FUNCTION_24();
            _os_log_error_impl(v12, v13, v14, v15, v16, 0x30u);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_39_0();
  return result;
}

- (void)updateOneToOneVideoStreamCustomResolution:(id)a3 videoSettings:(id)a4
{
  v6 = [objc_msgSend(a4 "videoRuleCollections")];
  OUTLINED_FUNCTION_35_7();
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [*(8 * i) unsignedIntValue];
        if (!v10)
        {
          v10 = [objc_msgSend(a4 "videoRuleCollections")];
        }
      }

      OUTLINED_FUNCTION_35_7();
      v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  v14 = [OUTLINED_FUNCTION_43_1() iWidth];
  if (+[VideoUtil videoResolutionForWidth:height:](VideoUtil, "videoResolutionForWidth:height:", v14, [OUTLINED_FUNCTION_43_1() iHeight]) == 27)
  {
    [a3 setCustomWidth:{objc_msgSend(OUTLINED_FUNCTION_43_1(), "iWidth")}];
    [a3 setCustomHeight:{objc_msgSend(OUTLINED_FUNCTION_43_1(), "iHeight")}];
  }
}

- (id)updateMediaState:(unsigned int)a3 forStreamGroups:(id)a4
{
  v5 = *&a3;
  v89 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_participantQueue);
  v7 = [a4 count];
  if (!v7)
  {
    v62 = "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionParticipant.m";
    v64 = 2357;
    v7 = +[VCSessionErrorUtils VCSessionParticipantErrorEvent:errorPath:](VCSessionErrorUtils, "VCSessionParticipantErrorEvent:errorPath:", 12, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d"]);
    if (v7)
    {
      v35 = v7;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v35;
        }

        v52 = VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_34())
        {
          return v35;
        }

        LODWORD(buf) = 136315906;
        *(&buf + 4) = v52;
        OUTLINED_FUNCTION_32_8();
        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_31_11();
        *(&v81 + 6) = v35;
        OUTLINED_FUNCTION_5_12();
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v51 = [(VCSessionParticipant *)self performSelector:sel_logPrefix];
        }

        else
        {
          v51 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v35;
        }

        v59 = VRTraceErrorLogLevelToCSTR();
        v60 = *MEMORY[0x1E6986650];
        if (!OUTLINED_FUNCTION_40())
        {
          return v35;
        }

        LODWORD(buf) = 136316418;
        *(&buf + 4) = v59;
        OUTLINED_FUNCTION_32_8();
        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_31_11();
        *(&v81 + 6) = v51;
        HIWORD(v81) = 2048;
        v82 = self;
        *v83 = v61;
        *&v83[2] = v35;
        v53 = &dword_1DB56E000;
        v56 = " [%s] %s:%d %@(%p) Stream groups not found. error=%@";
        p_buf = &buf;
        v54 = v60;
        v55 = OS_LOG_TYPE_ERROR;
        v58 = 58;
      }

      _os_log_error_impl(v53, v54, v55, v56, p_buf, v58);
      return v35;
    }
  }

  if (self->_state == 1)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v15 = OUTLINED_FUNCTION_41_6(v7, v8, v9, v10, v11, v12, v13, v14, v62, v64, v66, v68, v69, v71, v72, v74, v76, a4, buf, *(&buf + 1), v80, v81, *(&v81 + 1), v82, *v83, *&v83[8], *&v83[16], *&v83[24], v84);
    if (v15)
    {
      v17 = v15;
      v18 = *v86;
      v19 = &selRef_isLatencySensitiveModeEnabled;
      *&v16 = 136316674;
      v67 = v16;
      *&v16 = 136317186;
      v70 = v16;
      do
      {
        v20 = 0;
        v77 = v19[456];
        do
        {
          if (*v86 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v85 + 1) + 8 * v20);
          v22 = [(VCSessionParticipant *)self isStreamGroupActive:v21];
          v23 = [(VCSessionParticipant *)v21 state];
          v24 = v23;
          v25 = !v22;
          if (v22 && v5 == 1 && !v23)
          {
            ErrorLogLevelForModule = [(VCSessionParticipant *)v21 start];
            goto LABEL_20;
          }

          if (v5 == 1 || v23 == 0)
          {
            v25 = 0;
          }

          if (v25 == 1)
          {
            ErrorLogLevelForModule = [(VCSessionParticipant *)v21 stop];
LABEL_20:
            v35 = ErrorLogLevelForModule;
            if (ErrorLogLevelForModule)
            {
              return v35;
            }

            goto LABEL_21;
          }

          if (objc_opt_class() == self)
          {
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            if (ErrorLogLevelForModule >= 7)
            {
              v44 = VRTraceErrorLogLevelToCSTR();
              v45 = *MEMORY[0x1E6986650];
              ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
              if (ErrorLogLevelForModule)
              {
                VCSessionMediaState_Name(v5);
                LODWORD(buf) = v67;
                *(&buf + 4) = v44;
                OUTLINED_FUNCTION_32_8();
                OUTLINED_FUNCTION_20_11();
                OUTLINED_FUNCTION_36_7();
                *(&v81 + 6) = v46;
                HIWORD(v81) = v47;
                v82 = v21;
                *v83 = v48;
                *&v83[2] = v22;
                *&v83[6] = v48;
                *&v83[8] = v24 != 0;
                v41 = v45;
                v42 = " [%s] %s:%d Ignore mediaState=%@ for streamGroup=%@ isStreamGroupActive=%d isStreamGroupStarted=%d";
                v43 = 60;
                goto LABEL_32;
              }
            }
          }

          else
          {
            v36 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v36 = [(VCSessionParticipant *)self performSelector:v77];
            }

            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            if (ErrorLogLevelForModule >= 7)
            {
              v75 = VRTraceErrorLogLevelToCSTR();
              v37 = *MEMORY[0x1E6986650];
              ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
              if (ErrorLogLevelForModule)
              {
                VCSessionMediaState_Name(v5);
                LODWORD(buf) = v70;
                *(&buf + 4) = v75;
                OUTLINED_FUNCTION_32_8();
                OUTLINED_FUNCTION_20_11();
                OUTLINED_FUNCTION_36_7();
                *(&v81 + 6) = v36;
                HIWORD(v81) = 2048;
                v82 = self;
                *v83 = v38;
                *&v83[2] = v39;
                *&v83[10] = v38;
                *&v83[12] = v21;
                *&v83[20] = v40;
                *&v83[22] = v22;
                *&v83[26] = v40;
                *&v83[28] = v24 != 0;
                v41 = v37;
                v42 = " [%s] %s:%d %@(%p) Ignore mediaState=%@ for streamGroup=%@ isStreamGroupActive=%d isStreamGroupStarted=%d";
                v43 = 80;
LABEL_32:
                _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, v42, &buf, v43);
              }
            }
          }

LABEL_21:
          ++v20;
        }

        while (v17 != v20);
        v49 = OUTLINED_FUNCTION_41_6(ErrorLogLevelForModule, v27, v28, v29, v30, v31, v32, v33, v63, v65, v67, *(&v67 + 1), v70, *(&v70 + 1), v73, v75, v77, obj, buf, *(&buf + 1), v80, v81, *(&v81 + 1), v82, *v83, *&v83[8], *&v83[16], *&v83[24], v84);
        v17 = v49;
        v19 = &selRef_isLatencySensitiveModeEnabled;
      }

      while (v49);
    }
  }

  return 0;
}

- (BOOL)setupStreamGroupMediaSync
{
  videoStreamGroups = self->_videoStreamGroups;
  OUTLINED_FUNCTION_35_7();
  v4 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (MEMORY[0] != v6)
      {
        objc_enumerationMutation(videoStreamGroups);
      }

      v8 = [(VCSessionParticipant *)self setupMediaSyncForStreamGroup:*(8 * v7)];
      if (!v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        OUTLINED_FUNCTION_35_7();
        v5 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (void)callDelegateWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)callDelegateWithBlock:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedSetAudioEnabled:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)dispatchedSetAudioPaused:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedSetAudioPaused:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
    }
  }

  *v1 = v3;
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedSetAudioPaused:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
    }
  }

  *v1 = v3;
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedSetAudioPaused:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)dispatchedSetAudioPaused:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedSetVideoPaused:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedSetVideoPaused:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

+ (void)participantDataWithMediaNegotiatorVersion:participantData:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)participantDataWithMediaNegotiatorVersion:participantData:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)participantDataWithMediaNegotiatorVersion:participantData:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)participantDataWithMediaNegotiatorVersion:participantData:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)participantDataWithMediaNegotiatorVersion:participantData:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)participantDataWithMediaNegotiatorVersion:participantData:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)streamGroupIDsFromParticipantData:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)streamGroupIDsFromParticipantData:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)stopAudioIO
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)startStreamGroups
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)startScreenGroup
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)setupAudioStreamConfiguration:audioRules:.cold.1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to allocate codec config for payload=%d!", v3, v4, v5, v6);
}

- (void)setupAudioStreamConfiguration:audioRules:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupAudioStreamConfiguration:audioRules:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)newOneToOneVideoStreamMultiwayConfiguration:streamGroupId:videoSettings:streamDirection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupSecurityKeyHolderForStreamConfig:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupSecurityKeyHolderForStreamConfig:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)completeStreamSetup:rtpCipherSuite:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __58__VCSessionParticipant_updateConfigurationWithDeviceRole___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void __58__VCSessionParticipant_updateConfigurationWithDeviceRole___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)configureOneToOneAudioStreamsWithDeviceRole:streamInfoArray:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)newVideoRateControlConfigWithMediaControlInfoVersion:enableMediaControlInfoGenerator:enableFeedbackController:isOneToOne:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)configureOneToOneVideoStreamsWithDeviceRole:(char)a1 streamInfoArray:(_BYTE *)a2 .cold.1(char a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = a1 & 1;
}

- (void)configureOneToOneVideoStreamsWithDeviceRole:streamInfoArray:.cold.2()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)configureOneToOneWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
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

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v6 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)configureOneToOneWithConfig:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)configureOneToOneWithConfig:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

void __109__VCSessionParticipant_configureWithDeviceRole_negotiatedVideoEnabled_negotiatedScreenEnabled_operatingMode___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedConfigureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)dispatchedConfigureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
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

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v6 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)dispatchedConfigureWithDeviceRole:negotiatedVideoEnabled:negotiatedScreenEnabled:operatingMode:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)configureStreamInfosForMultiway:streamGroupID:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
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

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v6 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)configureMultiwayStreamGroups
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr([v0 streamGroupID]);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)initWithConfig:(void *)a1 delegate:.cold.1(void *a1)
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
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(void *)a1 delegate:.cold.2(void *a1)
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
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:delegate:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    [objc_msgSend(v0 "idsDestination")];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v7 = 38;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      [objc_msgSend(v0 "idsDestination")];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_17_0();
      v7 = 58;
      goto LABEL_11;
    }
  }
}

- (void)updateMediaStatesWithConfig:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  VCSessionMediaType_Name(a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, v7);
}

- (void)updateMediaStatesWithConfig:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_40_0();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_11_0();
  a16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == v25)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        a12 = 2066;
        v29 = " [%s] %s:%d Media state data dictionary is nil";
        v30 = v28;
        v31 = 28;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, &a9, v31);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_9_4();
        v29 = " [%s] %s:%d %@(%p) Media state data dictionary is nil";
        v30 = v32;
        v31 = 48;
        goto LABEL_10;
      }
    }
  }

  *v24 = 1;
  OUTLINED_FUNCTION_39_0();
}

- (void)applyMediaState:(uint64_t)a1 forMediaType:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  VCSessionMediaType_Name(a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v2, v3, v4, v5, v6, v7);
}

+ (void)mediaStreamGroupStateToVCStreamGroupState:.cold.1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Unknown media stream group state: %d", v3, v4, v5, v6);
}

- (void)setupMediaSyncForStreamGroup:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr([v0 streamGroupID]);
      FourccToCStr([v0 syncGroupID]);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
    }
  }

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupMediaSyncForStreamGroup:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr([v1 syncGroupID]);
      FourccToCStr([v1 streamGroupID]);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
    }
  }

  *v0 = 1;
  OUTLINED_FUNCTION_39_0();
}

- (void)didUpdateBasebandCodec:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)didDecryptionTimeOutForMKMRecoveryForStreamGroup:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end