@interface VCSessionParticipantLocal
+ (BOOL)negotiatorCipherSuite:(unsigned int *)a3 fromMediaStreamConfig:(id)a4;
+ (BOOL)updateBandwidthAllocator:(id)a3 activeStream:(id)a4 peerSubscribedStreams:(id)a5 streamGroup:(id)a6;
+ (BOOL)updateUplinkStreamsForPeerSubscribedStreams:(id)a3 streamGroup:(id)a4 uplinkBandwidthAllocator:(id)a5;
- (BOOL)addFeatureListStringsForVideoConfiguration:(id)a3 mediaType:(unsigned __int8)a4;
- (BOOL)addMediaConfigurationsToLocalConfiguration:(id)a3;
- (BOOL)addVideoConfigurationsToLocalConfiguration:(id)a3;
- (BOOL)applyCachedMediaStreams:(id)a3 toMultiwayConfig:(id)a4;
- (BOOL)applyCachedMediaStreamsWithStreamConfigurations:(id)a3 mediaNegotiatorConfig:(id)a4;
- (BOOL)applyCachedStreamGroupMediaStreams:(id)a3 toMultiwayConfig:(id)a4;
- (BOOL)checkSubscribedStreamsConsistency:(id)a3;
- (BOOL)completeStreamSetup:(id)a3 rtpCipherSuite:(int64_t)a4;
- (BOOL)configureAudioIOWithDeviceRole:(int)a3 operatingMode:(int)a4;
- (BOOL)configureMultiwayStreamGroups;
- (BOOL)configureOneToOneAudioStreamsWithDeviceRole:(int)a3;
- (BOOL)configureOneToOneVideoStreamsWithDeviceRole:(int)a3;
- (BOOL)configureWithOneToOneParticipantConfig:(id)a3 shouldConfigureGFTStreams:(BOOL)a4;
- (BOOL)containsStreamWithSSRC:(unsigned int)a3;
- (BOOL)createParticipantInfo;
- (BOOL)enableRedundancy:(BOOL)a3;
- (BOOL)featureListStringsRequiredForMediaType:(unsigned __int8)a3;
- (BOOL)initializeMediaNegotiator;
- (BOOL)initializeOneToOneStreamGroup:(id)a3 forLocalConfig:(id)a4;
- (BOOL)initializeStreamGroupsForLocalConfig:(id)a3;
- (BOOL)isActiveMediaType:(unsigned int)a3;
- (BOOL)isEnabledMediaType:(unsigned int)a3;
- (BOOL)isHighPriorityAudioWithPower:(float)a3 voiceActive:(BOOL)a4;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isOneToOneStreamGroup:(unsigned int)a3;
- (BOOL)isStreamGroupActive:(id)a3;
- (BOOL)nativeParticipantSupportsStreamGroupID:(unsigned int)a3;
- (BOOL)reconfigureAudioIOForMode:(int)a3 error:(id *)a4;
- (BOOL)reconfigureOneToOneAudioStream:(id)a3 error:(id *)a4;
- (BOOL)remoteParticipantsSupportStreamGroupID:(unsigned int)a3;
- (BOOL)setState:(unsigned int)a3;
- (BOOL)setupAudioStreamGroupWithStreamConfigs:(id)a3 negotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5;
- (BOOL)setupAudioStreamsWithStreamConfiguration:(id)a3 streamGroupConfiguration:(id)a4;
- (BOOL)setupAudioStreamsWithStreamConfigurations:(id)a3 mediaNegotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5;
- (BOOL)setupCameraStreamGroupWithStreamConfigs:(id)a3 negotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5;
- (BOOL)setupCaptionsStreamsWithStreamConfiguration:(id)a3 streamGroupConfiguration:(id)a4;
- (BOOL)setupCaptionsStreamsWithStreamConfigurations:(id)a3 mediaNegotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5;
- (BOOL)setupOneToOneVideoStreamWithConfig:(id)a3 streamGroupID:(unsigned int)a4;
- (BOOL)setupStreamGroupMediaSync;
- (BOOL)setupStreamGroupWithStreamGroupConfig:(id)a3 negotiatorConfig:(id)a4;
- (BOOL)setupStreamGroupsWithConfig:(id)a3 negotiatorConfig:(id)a4;
- (BOOL)setupStreamInputsWithConfig:(id)a3;
- (BOOL)setupVideoMediaStreamsWithStreamGroupConfiguration:(id)a3 streamGroupConfig:(id)a4 streamGroupID:(unsigned int)a5 mediaType:(unsigned int)a6;
- (BOOL)setupVideoStreamsWithStreamConfiguration:(id)a3 streamGroupConfiguration:(id)a4;
- (BOOL)setupVideoStreamsWithStreamConfigurations:(id)a3 mediaNegotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5;
- (BOOL)shouldCapStream:(int64_t)a3 cappedBitrate:(unsigned int *)a4;
- (BOOL)shouldEnableUplinkRetransmissionForStreamGroupID:(unsigned int)a3;
- (BOOL)v1FeatureListStringsSupportedForMediaType:(unsigned __int8)a3;
- (BOOL)wolfParticipantSupportsStreamGroupID:(unsigned int)a3;
- (CGSize)captureEncodingSize;
- (VCSessionParticipantLocal)initWithConfig:(id)a3 delegate:(id)a4;
- (_VCSessionParticipantLocalOneToOneSettings)oneToOneSettings;
- (__CFString)activeStreamKeys;
- (id)applyMicReconfigurationForCameraTransition;
- (id)applyVideoEnabledSetting:(BOOL)a3;
- (id)audioRuleCollectionWithAudioStreamConfig:(id)a3;
- (id)copyOnVideoFrameBlock;
- (id)featureListString:(id)a3 removingPayload:(int)a4 andPayload:(int)a5 mediaType:(unsigned __int8)a6;
- (id)feedbackDelegate;
- (id)microphoneOnlyBandwidthTable;
- (id)multiwayAudioStreamNegotiatorConfigForStreamConfig:(id)a3;
- (id)multiwayVideoStreamNegotiatorConfigForStreamConfig:(id)a3 isSubstream:(BOOL)a4;
- (id)newAudioSendGroupConfigWithStreamGroupID:(unsigned int)a3 streamGroupConfiguration:(id)a4;
- (id)newAudioStreamOneToOneConfigurationWithStreamGroupId:(unsigned int)a3;
- (id)newAudioStreamSendGroupWithConfig:(id)a3 streamGroupID:(unsigned int)a4;
- (id)newMediaNegotiatorAudioConfigurationForMediaType:(unsigned int)a3;
- (id)newStreamGroupNegotiationConfigForStreamGroup:(id)a3;
- (id)newStreamInfoWithAudioStreamWithConfiguration:(id)a3 idsDestination:(id)a4 isMultiway:(BOOL)a5 streamGroupID:(unsigned int)a6 streamToken:(int64_t)a7;
- (id)newStreamInfoWithAudioStreamWithConfiguration:(id)a3 streamToken:(int64_t)a4 isMultiway:(BOOL)a5 streamGroupID:(unsigned int)a6;
- (id)newStreamInfoWithVideoStreamWithConfiguration:(id)a3 idsDestination:(id)a4 groupID:(unsigned int)a5;
- (id)newStreamInfoWithVideoStreamWithConfiguration:(id)a3 streamGroupID:(unsigned int)a4 rtpCipherSuite:(int64_t)a5;
- (id)newUplinkBandwidthAllocators;
- (id)newVideoConfigurationForMediaType:(unsigned __int8)a3;
- (id)newVideoSendGroupConfigWithStreamGroupID:(unsigned int)a3 streamGroupConfiguration:(id)a4;
- (id)newVideoStreamOneToOneConfigurationWithStreamGroupId:(unsigned int)a3;
- (id)newVideoStreamWithConfig:(id)a3 groupID:(unsigned int)a4;
- (id)processCachedParticipantData:(id)a3;
- (id)qualityTierTableForStreamToken:(int64_t)a3;
- (id)screenGroup;
- (id)startCameraStreamGroups;
- (id)startMicStreamGroups;
- (id)u1VideoRuleCollectionsForMediaType:(unsigned __int8)a3;
- (id)updateMediaState:(unsigned int)a3 forStreamGroups:(id)a4;
- (id)videoCallMicrophoneBandwidthTable;
- (int)captureSourceIDFromStreamGroupConfig:(id)a3;
- (int)captureSourceIDFromStreamGroupID:(unsigned int)a3;
- (int)currentVideoCaptureFrameRate;
- (int)maxCaptureCameraFrameRate;
- (int)negotiateOneToOne:(id)a3;
- (int)oneToOneAudioStreamRedundancyMode;
- (int)oneToOneVideoStreamRedundancyMode;
- (int64_t)maxCaptureResolution;
- (opaqueCMFormatDescription)getAudioFormatDescriptionForStreamGroupID:(unsigned int)a3;
- (opaqueCMFormatDescription)getCaptionsFormatDescription;
- (tagVCAudioIOConfiguration)audioIOConfigWithDeviceRole:(SEL)a3 operatingMode:(int)a4;
- (tagVCNetworkStreamIdentifiers)generateSSRC:(BOOL)a3 streamID:(BOOL)a4 repairStreamID:(BOOL)a5 v2StreamID:(BOOL)a6;
- (unsigned)calculateUplinkTotalBitrateForMediaStreams:(id)a3;
- (unsigned)currentUplinkTotalBitrate;
- (unsigned)fecHeaderVersion;
- (unsigned)mediaStateForMediaType:(unsigned int)a3;
- (unsigned)oneToOneVideoStreamRedundancyPercentage;
- (unsigned)remainderBitrateSplitForStreamToken:(int64_t)a3;
- (void)addCallInfoBlobToParticipantInfo:(id)a3;
- (void)applyScreenEnabledSetting:(BOOL)a3;
- (void)avConferencePreviewError:(id)a3;
- (void)cameraAvailabilityDidChange:(BOOL)a3;
- (void)captureSource1080pAvailabilityDidChange:(BOOL)a3;
- (void)captureSourceCenterStageEnabledDidChange:(BOOL)a3;
- (void)captureSourceDidSelectUnbinnedCameraFormat;
- (void)captureSourcePortraitBlurEnabledDidChange:(BOOL)a3;
- (void)captureSourcePositionDidChange:(BOOL)a3;
- (void)checkAndReportThermalIncreaseAudioOnly:(int)a3;
- (void)cleanupStreamInputs;
- (void)collectAudioChannelMetrics:(id *)a3;
- (void)collectVideoChannelMetrics:(id *)a3;
- (void)configureMultiwayStreamGroups;
- (void)createParticipantInfo;
- (void)dealloc;
- (void)deregisterForVideoCaptureAndStopProcessingAllMediaRecorderRequests:(BOOL)a3;
- (void)didReceiveCustomReportPacket:(tagRTCPPACKET *)a3 arrivalNTPTime:(tagNTP)a4;
- (void)didReceiveReportPacket:(tagRTCPPACKET *)a3 arrivalNTPTime:(tagNTP)a4;
- (void)didStopReacting;
- (void)dispatchedHandleActiveConnectionChangeForStreamGroups:(id)a3;
- (void)dispatchedSetAudioEnabled:(BOOL)a3;
- (void)dispatchedSetPeerSubscribedStreams:(id)a3;
- (void)dispatchedUpdateUplinkTargetBitrate:(unsigned int)a3 rateChangeCounter:(unsigned int)a4;
- (void)dispatchedUpdateVCMediaQueueSize:(unsigned int)a3;
- (void)endSensitiveContentAnalyzerInterruptionForCameraCapture;
- (void)frameRateIsBeingThrottled:(int)a3 thermalLevelDidChange:(BOOL)a4 powerLevelDidChange:(BOOL)a5;
- (void)generateKeyFrameWithStreamID:(id)a3 streamGroupID:(unsigned int)a4 firType:(int)a5;
- (void)handleActiveConnectionChange:(id)a3;
- (void)initializeMediaNegotiator;
- (void)initializeMultiwayAudioStreamGroup:(id)a3 forLocalConfig:(id)a4;
- (void)initializeMultiwayVideoStreamGroup:(id)a3 forLocalConfig:(id)a4;
- (void)localDeviceOrientationDidChange:(int)a3;
- (void)logDashboardLinks;
- (void)logRemoteParticipantInfo:(id)a3;
- (void)maxCaptureCameraFrameRate;
- (void)newUplinkBandwidthAllocators;
- (void)overrideVideoStreamConfigWithDefaults:(id)a3 streamGroupID:(unsigned int)a4;
- (void)reactionDidStart:(id)a3;
- (void)registerForVideoCapture:(int)a3;
- (void)reportCameraCompositionEnabled:(BOOL)a3;
- (void)reportVideoEnabledStatsWithVideoEnabled:(BOOL)a3;
- (void)resetOneToOneSettings;
- (void)resumeStreamsOnOneToOneModeSwitch;
- (void)serverDidDie;
- (void)setAlwaysHDCaptureScreenEnabled:(BOOL)a3;
- (void)setCellularUniqueTag:(unsigned int)a3;
- (void)setCurrentVideoCaptureFrameRate:(int)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setMediaSuggestion:(VCRateControlMediaSuggestion *)a3;
- (void)setMuted:(BOOL)a3;
- (void)setOneToOneModeEnabled:(BOOL)a3;
- (void)setPeerSubscribedStreams:(id)a3;
- (void)setRemoteParticipants:(id)a3;
- (void)setRetransmissionEnabled:(BOOL)a3;
- (void)setUpCaptions;
- (void)setUplinkBitrateCapCell:(unsigned int)a3;
- (void)setUplinkBitrateCapWifi:(unsigned int)a3;
- (void)setupEncodingModeWithVideoStreamConfig:(id)a3;
- (void)setupOneToOneAudioStreamWithConfig:(id)a3 streamGroupID:(unsigned int)a4;
- (void)setupOneToOneEncryptionInfoWithConfiguration:(id)a3;
- (void)setupSystemAudioCapture;
- (void)sourceFrameRateDidChange:(unsigned int)a3;
- (void)start;
- (void)startMultiwayStreams;
- (void)startSystemAudioCapture;
- (void)startVoiceActivityDetection;
- (void)stop;
- (void)stopSystemAudioCapture;
- (void)stopVideoCaptureClient;
- (void)stopVoiceActivityDetection;
- (void)streamGroup:(id)a3 didChangeState:(unsigned int)a4;
- (void)streamGroup:(id)a3 didRequestRedundancy:(BOOL)a4;
- (void)streamGroup:(id)a3 didSuspendStreams:(BOOL)a4;
- (void)streamGroupNegotiationVideoConfigForStreamGroup:(id)a3 streamConfig:(id)a4 mediaConfig:(id)a5;
- (void)suspendStreamsOnOneToOneModeSwitch;
- (void)thermalLevelDidChange:(int)a3;
- (void)updateActiveVoiceOnly;
- (void)updateAudioPriorityWithSampleBuffer:(opaqueVCAudioBufferList *)a3;
- (void)updateAudioSpectrumState;
- (void)updateCaptureSourceVideoFeatureStatus:(tagVCVideoCaptureFeatureStatus)a3;
- (void)updateMediaSettingsWithConfig:(id)a3;
- (void)updateMediaStreamsForStreamGroup:(id)a3 uplinkBitrateCap:(unsigned int)a4 rateChangeCounter:(unsigned int)a5;
- (void)updateMultiwayBandwithAllocationTable:(id)a3 mediaType:(unsigned int)a4 streamGroupID:(unsigned int)a5 encoderGroupID:(unsigned int)a6 minNetworkBitrate:(unsigned int)a7 maxNetworkBitrate:(unsigned int)a8;
- (void)updateOneToOneBandwidthAllocationTable:(id)a3 mediaType:(unsigned __int8)a4 streamGroupID:(unsigned int)a5;
- (void)updatePayloadTypesWithAudioConfigs:(id)a3;
- (void)updatePayloadTypesWithVideoConfigs:(id)a3;
- (void)updatePeerSubscribedStreams:(id)a3 streamGroup:(id)a4;
- (void)updateRedundancyEnabledForPeerSubscribedStreams:(id)a3;
- (void)updateRemoteDeviceOrientation:(int)a3;
- (void)updateSupportedAudioRules:(id)a3;
- (void)updateTargetBitrateOneToOne:(unsigned int)a3 rateChangeCounter:(unsigned int)a4;
- (void)updateUplinkTargetBitrate:(unsigned int)a3 rateChangeCounter:(unsigned int)a4;
- (void)updateUplinkTargetBitrateForStreamGroups;
- (void)updateVCMediaQueueSize:(unsigned int)a3;
- (void)updateVideoPaused:(BOOL)a3;
- (void)updateWindowState:(int)a3 isLocal:(BOOL)a4 windowRect:(CGRect)a5;
@end

@implementation VCSessionParticipantLocal

- (VCSessionParticipantLocal)initWithConfig:(id)a3 delegate:(id)a4
{
  v112 = *MEMORY[0x1E69E9840];
  v95.receiver = self;
  v95.super_class = VCSessionParticipantLocal;
  v5 = [(VCSessionParticipant *)&v95 initWithConfig:a3 delegate:a4];
  v6 = v5;
  if (v5)
  {
    v5->_videoPriority = 0;
    v7 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-priority-enabled" userDefaultKey:@"enableVideoPriority" defaultValue:MEMORY[0x1E695E118] isDoubleType:{0), "BOOLValue"}];
    v8 = 0;
    if (v7)
    {
      v8 = +[VCHardwareSettings supportsVideoPriority];
    }

    v6->_videoPriorityEnabled = v8;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoPriorityEnabled = v6->_videoPriorityEnabled;
        *buf = 136315906;
        v101 = v9;
        v102 = 2080;
        v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
        v104 = 1024;
        v105 = 245;
        v106 = 1024;
        LODWORD(v107) = videoPriorityEnabled;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _videoPriorityEnabled=%d", buf, 0x22u);
      }
    }

    v6->super._direction = 1;
    v6->_maxSupportedMultiwayVideoResolution = [(VCSessionParticipantLocal *)v6 maxCaptureResolution];
    v6->super._oneToOneModeEnabled = [a3 isOneToOneModeEnabled];
    v6->super._isGKVoiceChat = [a3 isGKVoiceChat];
    v6->_isRetransmissionEnabled = [a3 isUplinkRetransmissionEnabled];
    v6->_p2pEncryptionEnabled = [a3 p2pEncryptionEnabled];
    v12 = [(VCSessionParticipantLocal *)v6 maxCaptureCameraFrameRate];
    v6->_maxSupportedMultiwayCameraFrameRate = v12;
    v6->_currentVideoCaptureFrameRate = v12;
    v13 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    v6->super._uuid = v13;
    -[VCObject setLogPrefix:](v6, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"uuid:%@ (local)", v13]);
    [(VCSessionParticipantLocal *)v6 logDashboardLinks];
    v6->super._creationTime.wide = GetNTPTime();
    v6->_connectionStatsStreamID = [(VCSessionParticipantLocal *)v6 generateIDSStreamID];
    v6->_lastVideoPriority = 0;
    v6->_lastAudioPriority = 0;
    pthread_rwlock_init(&v6->_audioTimestampRWLock, 0);
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6->_generatedStreamIDs = v14;
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6->_generatedSSRCs = v15;
      if (v15)
      {
        v16 = [[VCAudioPowerSpectrumSource alloc] initWithStreamToken:[(VCSessionParticipant *)v6 participantVideoToken] delegate:v6];
        v6->_powerSpectrumSource = v16;
        if (v16)
        {
          [+[VCAudioPowerSpectrumManager sharedInstance](VCAudioPowerSpectrumManager registerAudioPowerMeterSource:"registerAudioPowerMeterSource:", v6->_powerSpectrumSource];
          v6->super._transportSessionID = [(VCSessionParticipant *)v6 participantVideoToken];
          v6->_peerSubscribedStreams = objc_alloc_init(MEMORY[0x1E695DF70]);
          v6->_cachedPeerSubscribedStreams = objc_alloc_init(MEMORY[0x1E695DF70]);
          v6->_localPublishedStreams = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v6->_redundancyEnabledStreamGroups = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v6->_oneToOneSettings.streamInfo = v17;
          if (v17)
          {
            v18 = [(VCSessionParticipantLocal *)v6 newUplinkBandwidthAllocators];
            v6->_uplinkBandwidthAllocators = v18;
            if (v18)
            {
              v6->_uplinkBandwidthAllocator = [(NSArray *)v18 objectAtIndexedSubscript:v6->super._oneToOneModeEnabled];
              [(VCSessionParticipantLocal *)v6 setupSystemAudioCapture];
              v6->_isOneToOneAuthenticationTagEnabled = [a3 isOneToOneAuthenticationTagEnabled];
              v19 = -[VCSessionParticipantLocal processCachedParticipantData:](v6, "processCachedParticipantData:", [a3 participantData]);
              v6->_audioPayloadTypes = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v6->_videoPayloadTypes = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v6->_forceL4SHighDataRate = [a3 forceL4SHighDataRate];
              if (!v6->super._audioMachineLearningCoordinator)
              {
                goto LABEL_25;
              }

              if (objc_opt_class() == v6)
              {
                if (VRTraceGetErrorLogLevelForModule() < 5)
                {
                  goto LABEL_24;
                }

                v21 = VRTraceErrorLogLevelToCSTR();
                v22 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_24;
                }

                *buf = 136315650;
                v101 = v21;
                v102 = 2080;
                v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                v104 = 1024;
                v105 = 301;
                v23 = " [%s] %s:%d Expected _audioMachineLearningCoordinator to be nil for uplink.";
                v24 = v22;
                v25 = 28;
              }

              else
              {
                if (objc_opt_respondsToSelector())
                {
                  v20 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                }

                else
                {
                  v20 = &stru_1F570E008;
                }

                if (VRTraceGetErrorLogLevelForModule() < 5)
                {
                  goto LABEL_24;
                }

                v26 = VRTraceErrorLogLevelToCSTR();
                v27 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_24;
                }

                *buf = 136316162;
                v101 = v26;
                v102 = 2080;
                v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                v104 = 1024;
                v105 = 301;
                v106 = 2112;
                v107 = v20;
                v108 = 2048;
                v109 = v6;
                v23 = " [%s] %s:%d %@(%p) Expected _audioMachineLearningCoordinator to be nil for uplink.";
                v24 = v27;
                v25 = 48;
              }

              _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
LABEL_24:

LABEL_25:
              v6->super._audioMachineLearningCoordinator = [[VCAudioMachineLearningCoordinator alloc] initWithOneToOneEnabled:v6->super._oneToOneModeEnabled isLocal:1 taskIdentifier:@"callrecordingcaptions" reportingAgent:v6->super.super._reportingAgent delegate:0];
              if (objc_opt_class() == v6)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v29 = VRTraceErrorLogLevelToCSTR();
                  v30 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    audioMachineLearningCoordinator = v6->super._audioMachineLearningCoordinator;
                    *buf = 136315906;
                    v101 = v29;
                    v102 = 2080;
                    v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                    v104 = 1024;
                    v105 = 305;
                    v106 = 2048;
                    v107 = audioMachineLearningCoordinator;
                    v32 = " [%s] %s:%d Uplink audioMachineLearningCoordinator=%p";
                    v33 = v30;
                    v34 = 38;
LABEL_35:
                    _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
                  }
                }
              }

              else
              {
                if (objc_opt_respondsToSelector())
                {
                  v28 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
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
                    v37 = v6->super._audioMachineLearningCoordinator;
                    *buf = 136316418;
                    v101 = v35;
                    v102 = 2080;
                    v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                    v104 = 1024;
                    v105 = 305;
                    v106 = 2112;
                    v107 = v28;
                    v108 = 2048;
                    v109 = v6;
                    v110 = 2048;
                    v111 = v37;
                    v32 = " [%s] %s:%d %@(%p) Uplink audioMachineLearningCoordinator=%p";
                    v33 = v36;
                    v34 = 58;
                    goto LABEL_35;
                  }
                }
              }

              [(VCSessionParticipantLocal *)v6 setUpCaptions];
              if ([a3 sessionMode] == 2)
              {
                v38 = [[VCSessionMediaStreamPresenceConfigurationProvider alloc] initWithConfigurationType:1 supportedAudioRules:v6->super._supportedAudioRules streamIDGenerator:v6];
                if (v38)
                {
                  v39 = v38;
                  if ([(VCSessionParticipantLocal *)v6 setupStreamInputsWithConfig:v38])
                  {
                    if ([(VCSessionParticipantLocal *)v6 setupStreamGroupsWithConfig:v39 negotiatorConfig:v19])
                    {
                      v40 = 0;
                      goto LABEL_49;
                    }

                    if (objc_opt_class() == v6)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          [VCSessionParticipantLocal initWithConfig:delegate:];
                        }
                      }

                      goto LABEL_217;
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      v64 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                    }

                    else
                    {
                      v64 = &stru_1F570E008;
                    }

                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      v88 = VRTraceErrorLogLevelToCSTR();
                      v83 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316162;
                        v101 = v88;
                        v102 = 2080;
                        v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                        v104 = 1024;
                        v105 = 319;
                        v106 = 2112;
                        v107 = v64;
                        v108 = 2048;
                        v109 = v6;
                        v84 = " [%s] %s:%d %@(%p) Failed to setup the stream groups";
                        goto LABEL_185;
                      }
                    }
                  }

                  else
                  {
                    if (objc_opt_class() == v6)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          [VCSessionParticipantLocal initWithConfig:delegate:];
                        }
                      }

                      goto LABEL_217;
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      v62 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                    }

                    else
                    {
                      v62 = &stru_1F570E008;
                    }

                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      v82 = VRTraceErrorLogLevelToCSTR();
                      v83 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316162;
                        v101 = v82;
                        v102 = 2080;
                        v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                        v104 = 1024;
                        v105 = 316;
                        v106 = 2112;
                        v107 = v62;
                        v108 = 2048;
                        v109 = v6;
                        v84 = " [%s] %s:%d %@(%p) Failed to setup the stream inputs";
LABEL_185:
                        _os_log_error_impl(&dword_1DB56E000, v83, OS_LOG_TYPE_ERROR, v84, buf, 0x30u);
                      }
                    }
                  }

LABEL_217:
                  v40 = 0;
                  goto LABEL_218;
                }

                if (objc_opt_class() == v6)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      [VCSessionParticipantLocal initWithConfig:delegate:];
                    }
                  }

                  goto LABEL_216;
                }

                if (objc_opt_respondsToSelector())
                {
                  v61 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                }

                else
                {
                  v61 = &stru_1F570E008;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v81 = VRTraceErrorLogLevelToCSTR();
                  v69 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316162;
                    v101 = v81;
                    v102 = 2080;
                    v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                    v104 = 1024;
                    v105 = 313;
                    v106 = 2112;
                    v107 = v61;
                    v108 = 2048;
                    v109 = v6;
                    v70 = " [%s] %s:%d %@(%p) Failed to allocate config provider";
                    goto LABEL_215;
                  }
                }

LABEL_216:
                v39 = 0;
                goto LABEL_217;
              }

              v6->_videoCaptureSource = 3;
              if (VCDefaults_GetBoolValueForKey(@"simulateWebRTCOnlyClient", 0))
              {
                v40 = 0;
              }

              else
              {
                v41 = -[VCSessionMediaStreamConfigurationProvider initWithStreamIDGenerator:sessionMode:supportedAudioRules:]([VCSessionMediaStreamConfigurationProvider alloc], "initWithStreamIDGenerator:sessionMode:supportedAudioRules:", v6, [a3 sessionMode], v6->super._supportedAudioRules);
                if (!v41)
                {
                  if (objc_opt_class() == v6)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        [VCSessionParticipantLocal initWithConfig:delegate:];
                      }
                    }

                    goto LABEL_216;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v78 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v78 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v92 = VRTraceErrorLogLevelToCSTR();
                    v69 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      v101 = v92;
                      v102 = 2080;
                      v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                      v104 = 1024;
                      v105 = 328;
                      v106 = 2112;
                      v107 = v78;
                      v108 = 2048;
                      v109 = v6;
                      v70 = " [%s] %s:%d %@(%p) Failed to allocate config provider";
                      goto LABEL_215;
                    }
                  }

                  goto LABEL_216;
                }

                v40 = v41;
                v42 = [(VCSessionMediaStreamConfigurationProvider *)v41 audioStreamConfigurations];
                v98 = @"streamGroupID";
                v99 = &unk_1F579A1E8;
                if (!-[VCSessionParticipantLocal setupAudioStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:](v6, "setupAudioStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:", v42, v19, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1]))
                {
                  if (objc_opt_class() == v6)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        [VCSessionParticipantLocal initWithConfig:delegate:];
                      }
                    }

                    goto LABEL_228;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v79 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v79 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v93 = VRTraceErrorLogLevelToCSTR();
                    v86 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      v101 = v93;
                      v102 = 2080;
                      v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                      v104 = 1024;
                      v105 = 331;
                      v106 = 2112;
                      v107 = v79;
                      v108 = 2048;
                      v109 = v6;
                      v87 = " [%s] %s:%d %@(%p) Failed to setup audio streams";
                      goto LABEL_227;
                    }
                  }

LABEL_228:
                  v39 = 0;
                  goto LABEL_218;
                }

                v96[0] = @"streamGroupID";
                v96[1] = @"streamGroupSyncGroupID";
                v97[0] = &unk_1F579A200;
                v97[1] = &unk_1F579A1E8;
                if (!-[VCSessionParticipantLocal setupCameraStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:](v6, "setupCameraStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:", -[VCSessionMediaStreamConfigurationProvider videoStreamConfigurations](v40, "videoStreamConfigurations"), v19, [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2]))
                {
                  if (objc_opt_class() == v6)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        [VCSessionParticipantLocal initWithConfig:delegate:];
                      }
                    }

                    goto LABEL_228;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v80 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v80 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v94 = VRTraceErrorLogLevelToCSTR();
                    v86 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      v101 = v94;
                      v102 = 2080;
                      v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                      v104 = 1024;
                      v105 = 336;
                      v106 = 2112;
                      v107 = v80;
                      v108 = 2048;
                      v109 = v6;
                      v87 = " [%s] %s:%d %@(%p) Failed to setup video stream";
                      goto LABEL_227;
                    }
                  }

                  goto LABEL_228;
                }
              }

              v43 = [[VCSessionMediaStreamPresenceConfigurationProvider alloc] initWithConfigurationType:2 supportedAudioRules:v6->super._supportedAudioRules streamIDGenerator:v6];
              if (v43)
              {
                v39 = v43;
                if (![(VCSessionParticipantLocal *)v6 setupStreamInputsWithConfig:v43])
                {
                  if (objc_opt_class() == v6)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        [VCSessionParticipantLocal initWithConfig:delegate:];
                      }
                    }

                    goto LABEL_218;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v65 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v65 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() < 3)
                  {
                    goto LABEL_218;
                  }

                  v89 = VRTraceErrorLogLevelToCSTR();
                  v76 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_218;
                  }

                  *buf = 136316162;
                  v101 = v89;
                  v102 = 2080;
                  v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                  v104 = 1024;
                  v105 = 343;
                  v106 = 2112;
                  v107 = v65;
                  v108 = 2048;
                  v109 = v6;
                  v77 = " [%s] %s:%d %@(%p) Failed to setup the stream inputs";
                  goto LABEL_201;
                }

                if (![(VCSessionParticipantLocal *)v6 setupStreamGroupsWithConfig:v39 negotiatorConfig:v19])
                {
                  if (objc_opt_class() == v6)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        [VCSessionParticipantLocal initWithConfig:delegate:];
                      }
                    }

                    goto LABEL_218;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v66 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v66 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() < 3)
                  {
                    goto LABEL_218;
                  }

                  v90 = VRTraceErrorLogLevelToCSTR();
                  v76 = *MEMORY[0x1E6986650];
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_218;
                  }

                  *buf = 136316162;
                  v101 = v90;
                  v102 = 2080;
                  v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                  v104 = 1024;
                  v105 = 346;
                  v106 = 2112;
                  v107 = v66;
                  v108 = 2048;
                  v109 = v6;
                  v77 = " [%s] %s:%d %@(%p) Failed to setup the stream groups";
                  goto LABEL_201;
                }

LABEL_49:
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v44 = VRTraceErrorLogLevelToCSTR();
                  v45 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    videoPayloadTypes = v6->_videoPayloadTypes;
                    audioPayloadTypes = v6->_audioPayloadTypes;
                    *buf = 136316162;
                    v101 = v44;
                    v102 = 2080;
                    v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                    v104 = 1024;
                    v105 = 348;
                    v106 = 2112;
                    v107 = videoPayloadTypes;
                    v108 = 2112;
                    v109 = audioPayloadTypes;
                    _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d video payload types=%@, audio payload types=%@", buf, 0x30u);
                  }
                }

                [-[NSArray objectAtIndexedSubscript:](v6->_uplinkBandwidthAllocators objectAtIndexedSubscript:{0), "addBandwidthAllocationTableEntry:updateNow:", 0, 1}];
                if ([(VCSessionParticipantLocal *)v6 initializeMediaNegotiator])
                {
                  if (v6->super._participantInfo)
                  {
                    v6->super._callInfoBlob = [[VCCallInfoBlob alloc] initWithData:[(NSDictionary *)v6->super._participantInfo objectForKeyedSubscript:@"vcSessionParticipantKeyCallInfoBlob"]];
                    v6->super._mediaBlobCompressed = [(NSDictionary *)v6->super._participantInfo objectForKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
LABEL_56:
                    [(VCSessionParticipant *)v6 setupMediaTypeSettingsWithConfig:a3];
                    v6->_fecRatio = -1.0;
                    v6->_averageSilenceAudioPower = -120.0;
                    v6->_audioPriorityRampUp = [+[VCDefaults sharedInstance](VCDefaults audioPriorityRampUpSpeed];
                    v6->_audioPriorityDecaySlow = [+[VCDefaults sharedInstance](VCDefaults audioPriorityDecaySlow];
                    v6->_audioPriorityDecayFast = [+[VCDefaults sharedInstance](VCDefaults audioPriorityDecayFast];
                    [+[VCDefaults sharedInstance](VCDefaults audioVoiceDetectionSensitivity];
                    v6->_audioVoiceDetectionSensitivity = v48;
                    v49 = 2.0 / ([+[VCDefaults silenceLevelMovingAveragePeriod]+ 1 sharedInstance];
                    v6->_audioSilencePowerAverageMultiplier = v49;
                    v6->_forcedAudioPriorityValue = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityValue];
                    v6->_forcedAudioPriorityEnabled = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityEnabled];
                    [(VCSessionParticipantLocal *)v6 createOpaqueData];
                    v50 = micro();
                    v6->_initTime = v50;
                    v6->_lastVideoEnabledChangedTime = v50;
                    v6->_presenceProvider = v39;
                    v6->_isHigherAudioREDCutoverU1Enabled = [a3 isHigherAudioREDCutoverU1Enabled];
                    v6->_isLowBandwidthSinglePacketDuplicationEnabled = [a3 isLowBandwidthSinglePacketDuplicationEnabled];
                    v6->_isLateKeyFrameDetectionEnabled = [a3 isLateKeyFrameDetectionEnabled];
                    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSessionParticipantLocal-initialized");
                    if (VRTraceGetErrorLogLevelForModule() >= 6)
                    {
                      v51 = VRTraceErrorLogLevelToCSTR();
                      v52 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v53 = [(VCSessionParticipant *)v6 description];
                        *buf = 136316162;
                        v101 = v51;
                        v102 = 2080;
                        v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                        v104 = 1024;
                        v105 = 388;
                        v106 = 2048;
                        v107 = v6;
                        v108 = 2112;
                        v109 = v53;
                        _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCSessionParticipantLocal-initialized (%p) Participant init %@", buf, 0x30u);
                      }
                    }

                    goto LABEL_59;
                  }

                  if ([(VCSessionParticipantLocal *)v6 createParticipantInfo])
                  {
                    goto LABEL_56;
                  }

                  if (objc_opt_class() == v6)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        [VCSessionParticipantLocal initWithConfig:delegate:];
                      }
                    }

                    goto LABEL_218;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    v67 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                  }

                  else
                  {
                    v67 = &stru_1F570E008;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v91 = VRTraceErrorLogLevelToCSTR();
                    v76 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      v101 = v91;
                      v102 = 2080;
                      v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                      v104 = 1024;
                      v105 = 358;
                      v106 = 2112;
                      v107 = v67;
                      v108 = 2048;
                      v109 = v6;
                      v77 = " [%s] %s:%d %@(%p) Failed to create participant info";
                      goto LABEL_201;
                    }
                  }

LABEL_218:

                  v40 = v39;
                  v39 = v6;
                  v6 = 0;
LABEL_59:

                  return v6;
                }

                if (objc_opt_class() == v6)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      [VCSessionParticipantLocal initWithConfig:delegate:];
                    }
                  }

                  goto LABEL_218;
                }

                if (objc_opt_respondsToSelector())
                {
                  v60 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
                }

                else
                {
                  v60 = &stru_1F570E008;
                }

                if (VRTraceGetErrorLogLevelForModule() < 3)
                {
                  goto LABEL_218;
                }

                v75 = VRTraceErrorLogLevelToCSTR();
                v76 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_218;
                }

                *buf = 136316162;
                v101 = v75;
                v102 = 2080;
                v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                v104 = 1024;
                v105 = 354;
                v106 = 2112;
                v107 = v60;
                v108 = 2048;
                v109 = v6;
                v77 = " [%s] %s:%d %@(%p) Failed to initialize media negotiator";
LABEL_201:
                _os_log_error_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_ERROR, v77, buf, 0x30u);
                goto LABEL_218;
              }

              if (objc_opt_class() == v6)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    [VCSessionParticipantLocal initWithConfig:delegate:];
                  }
                }

                goto LABEL_228;
              }

              if (objc_opt_respondsToSelector())
              {
                v63 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
              }

              else
              {
                v63 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v85 = VRTraceErrorLogLevelToCSTR();
                v86 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  v101 = v85;
                  v102 = 2080;
                  v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
                  v104 = 1024;
                  v105 = 340;
                  v106 = 2112;
                  v107 = v63;
                  v108 = 2048;
                  v109 = v6;
                  v87 = " [%s] %s:%d %@(%p) Failed to allocate config provider";
LABEL_227:
                  _os_log_error_impl(&dword_1DB56E000, v86, OS_LOG_TYPE_ERROR, v87, buf, 0x30u);
                  goto LABEL_228;
                }
              }

              goto LABEL_228;
            }

            if (objc_opt_class() == v6)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [VCSessionParticipantLocal initWithConfig:delegate:];
                }
              }

              goto LABEL_216;
            }

            if (objc_opt_respondsToSelector())
            {
              v59 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
            }

            else
            {
              v59 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_216;
            }

            v74 = VRTraceErrorLogLevelToCSTR();
            v69 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_216;
            }

            *buf = 136316162;
            v101 = v74;
            v102 = 2080;
            v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
            v104 = 1024;
            v105 = 285;
            v106 = 2112;
            v107 = v59;
            v108 = 2048;
            v109 = v6;
            v70 = " [%s] %s:%d %@(%p) Failed to create uplinkBandwidthAllocators";
          }

          else
          {
            if (objc_opt_class() == v6)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [VCSessionParticipantLocal initWithConfig:delegate:];
                }
              }

              goto LABEL_216;
            }

            if (objc_opt_respondsToSelector())
            {
              v58 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
            }

            else
            {
              v58 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_216;
            }

            v73 = VRTraceErrorLogLevelToCSTR();
            v69 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_216;
            }

            *buf = 136316162;
            v101 = v73;
            v102 = 2080;
            v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
            v104 = 1024;
            v105 = 282;
            v106 = 2112;
            v107 = v58;
            v108 = 2048;
            v109 = v6;
            v70 = " [%s] %s:%d %@(%p) Failed to allocate oneToOne streamInfo dictionary";
          }
        }

        else
        {
          if (objc_opt_class() == v6)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCSessionParticipantLocal initWithConfig:delegate:];
              }
            }

            goto LABEL_216;
          }

          if (objc_opt_respondsToSelector())
          {
            v57 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
          }

          else
          {
            v57 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_216;
          }

          v72 = VRTraceErrorLogLevelToCSTR();
          v69 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_216;
          }

          *buf = 136316162;
          v101 = v72;
          v102 = 2080;
          v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
          v104 = 1024;
          v105 = 269;
          v106 = 2112;
          v107 = v57;
          v108 = 2048;
          v109 = v6;
          v70 = " [%s] %s:%d %@(%p) Failed to allocate power spectrum source";
        }
      }

      else
      {
        if (objc_opt_class() == v6)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCSessionParticipantLocal initWithConfig:delegate:];
            }
          }

          goto LABEL_216;
        }

        if (objc_opt_respondsToSelector())
        {
          v56 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
        }

        else
        {
          v56 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_216;
        }

        v71 = VRTraceErrorLogLevelToCSTR();
        v69 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_216;
        }

        *buf = 136316162;
        v101 = v71;
        v102 = 2080;
        v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
        v104 = 1024;
        v105 = 266;
        v106 = 2112;
        v107 = v56;
        v108 = 2048;
        v109 = v6;
        v70 = " [%s] %s:%d %@(%p) Failed to allocate generated SSRC set";
      }
    }

    else
    {
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionParticipantLocal initWithConfig:delegate:];
          }
        }

        goto LABEL_216;
      }

      if (objc_opt_respondsToSelector())
      {
        v55 = [(VCSessionParticipantLocal *)v6 performSelector:sel_logPrefix];
      }

      else
      {
        v55 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_216;
      }

      v68 = VRTraceErrorLogLevelToCSTR();
      v69 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_216;
      }

      *buf = 136316162;
      v101 = v68;
      v102 = 2080;
      v103 = "[VCSessionParticipantLocal initWithConfig:delegate:]";
      v104 = 1024;
      v105 = 264;
      v106 = 2112;
      v107 = v55;
      v108 = 2048;
      v109 = v6;
      v70 = " [%s] %s:%d %@(%p) Failed to allocate generated stream ID set";
    }

LABEL_215:
    _os_log_error_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_ERROR, v70, buf, 0x30u);
    goto LABEL_216;
  }

  return v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCSessionParticipantLocal *)self cleanupStreamInputs];
  v3 = +[VCAudioPowerSpectrumManager sharedInstance];
  -[VCAudioPowerSpectrumManager unregisterAudioPowerSpectrumSourceForStreamToken:](v3, "unregisterAudioPowerSpectrumSourceForStreamToken:", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCAudioPowerSpectrumSource streamToken](self->_powerSpectrumSource, "streamToken")}]);
  [VCPowerManager_DefaultManager() setFeature:16 enable:0];
  [VCPowerManager_DefaultManager() setFeature:8 enable:0];
  [(VCAudioPowerSpectrumSource *)self->_powerSpectrumSource invalidate];

  pthread_rwlock_destroy(&self->_audioTimestampRWLock);
  [(VCRedundancyControllerAudio *)self->_oneToOneSettings.audioRedundancyController unregisterStatistics];

  [(VCAudioMachineLearningCoordinator *)self->super._audioMachineLearningCoordinator invalidate];
  v4.receiver = self;
  v4.super_class = VCSessionParticipantLocal;
  [(VCSessionParticipant *)&v4 dealloc];
}

- (void)logDashboardLinks
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://avc-gft-dashboard.apple.com/multiway/conference/%@", self->super._uuid];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v3;
      v11 = 2080;
      v12 = "[VCSessionParticipantLocal logDashboardLinks]";
      v13 = 1024;
      v14 = 433;
      v15 = 2112;
      v16 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCDashboard Participant DisplayURL=%@", buf, 0x26u);
    }
  }

  v5 = VCGetSerialNumber();
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://avc-gft-dashboard.apple.com/multiway?serial=%@", v5];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v10 = v7;
        v11 = 2080;
        v12 = "[VCSessionParticipantLocal logDashboardLinks]";
        v13 = 1024;
        v14 = 437;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCDashboard Serial DisplayURL=%@", buf, 0x26u);
      }
    }
  }
}

- (id)newUplinkBandwidthAllocators
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  if (!v2)
  {
    [VCSessionParticipantLocal newUplinkBandwidthAllocators];
LABEL_9:

    return 0;
  }

  v3 = objc_alloc_init(VCSessionUplinkBandwidthAllocatorMultiway);
  if (!v3)
  {
    [VCSessionParticipantLocal newUplinkBandwidthAllocators];
    goto LABEL_9;
  }

  v4 = v3;
  v5 = objc_alloc_init(VCSessionUplinkBandwidthAllocatorOneToOne);
  if (!v5)
  {
    [VCSessionParticipantLocal newUplinkBandwidthAllocators];
    goto LABEL_9;
  }

  v6 = v5;
  [v2 addObject:v4];
  [v2 addObject:v6];

  return v2;
}

- (void)updateAudioSpectrumState
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = self->super._videoEnabled && !self->super._videoPaused;
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict objectForKeyedSubscript:{&unk_1F579A218), "mediaState"}];
  v5 = v4;
  presentationState = self->super._presentationState;
  if (self->super._presentationState || v3 || v4 == 1)
  {
    EnableAudioPowerSpectrumReport = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
  }

  else
  {
    EnableAudioPowerSpectrumReport = 1;
  }

  self->_isAudioPowerSpectrumEnabled = EnableAudioPowerSpectrumReport;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_25;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v12 = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
      isAudioPowerSpectrumEnabled = self->_isAudioPowerSpectrumEnabled;
      *buf = 136316930;
      v40 = v9;
      v41 = 2080;
      v42 = "[VCSessionParticipantLocal updateAudioSpectrumState]";
      v43 = 1024;
      v44 = 512;
      v45 = 1024;
      *v46 = v3;
      *&v46[4] = 1024;
      *&v46[6] = v5 == 1;
      LOWORD(v47) = 1024;
      *(&v47 + 2) = presentationState == 0;
      HIWORD(v47) = 1024;
      *v48 = v12;
      *&v48[4] = 1024;
      *v49 = isAudioPowerSpectrumEnabled;
      v14 = " [%s] %s:%d is2DCameraActive=%d is3DCameraActive=%d isForeground=%d testEnabled=%d => spectrumEnabled=%d";
      v15 = v10;
      v16 = 58;
LABEL_21:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      goto LABEL_25;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v32 = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
      v33 = self->_isAudioPowerSpectrumEnabled;
      *buf = 136316930;
      v40 = v9;
      v41 = 2080;
      v42 = "[VCSessionParticipantLocal updateAudioSpectrumState]";
      v43 = 1024;
      v44 = 512;
      v45 = 1024;
      *v46 = v3;
      *&v46[4] = 1024;
      *&v46[6] = v5 == 1;
      LOWORD(v47) = 1024;
      *(&v47 + 2) = presentationState == 0;
      HIWORD(v47) = 1024;
      *v48 = v32;
      *&v48[4] = 1024;
      *v49 = v33;
      v24 = " [%s] %s:%d is2DCameraActive=%d is3DCameraActive=%d isForeground=%d testEnabled=%d => spectrumEnabled=%d";
      v25 = v10;
      v26 = 58;
      goto LABEL_34;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v19 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v20 = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
        v21 = self->_isAudioPowerSpectrumEnabled;
        *buf = 136317442;
        v40 = v17;
        v41 = 2080;
        v42 = "[VCSessionParticipantLocal updateAudioSpectrumState]";
        v43 = 1024;
        v44 = 512;
        v45 = 2112;
        *v46 = v8;
        *&v46[8] = 2048;
        v47 = self;
        *v48 = 1024;
        *&v48[2] = v3;
        *v49 = 1024;
        *&v49[2] = v5 == 1;
        v50 = 1024;
        v51 = presentationState == 0;
        v52 = 1024;
        v53 = v20;
        v54 = 1024;
        v55 = v21;
        v14 = " [%s] %s:%d %@(%p) is2DCameraActive=%d is3DCameraActive=%d isForeground=%d testEnabled=%d => spectrumEnabled=%d";
        v15 = v18;
        v16 = 78;
        goto LABEL_21;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v22 = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
        v23 = self->_isAudioPowerSpectrumEnabled;
        *buf = 136317442;
        v40 = v17;
        v41 = 2080;
        v42 = "[VCSessionParticipantLocal updateAudioSpectrumState]";
        v43 = 1024;
        v44 = 512;
        v45 = 2112;
        *v46 = v8;
        *&v46[8] = 2048;
        v47 = self;
        *v48 = 1024;
        *&v48[2] = v3;
        *v49 = 1024;
        *&v49[2] = v5 == 1;
        v50 = 1024;
        v51 = presentationState == 0;
        v52 = 1024;
        v53 = v22;
        v54 = 1024;
        v55 = v23;
        v24 = " [%s] %s:%d %@(%p) is2DCameraActive=%d is3DCameraActive=%d isForeground=%d testEnabled=%d => spectrumEnabled=%d";
        v25 = v18;
        v26 = 78;
LABEL_34:
        _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, v24, buf, v26);
      }
    }
  }

LABEL_25:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  micStreamGroups = self->super._micStreamGroups;
  v28 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(micStreamGroups);
        }

        [*(*(&v35 + 1) + 8 * i) setPowerSpectrumEnabled:self->_isAudioPowerSpectrumEnabled];
      }

      v29 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v29);
  }
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCSessionParticipantLocal_setLowPowerModeEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __52__VCSessionParticipantLocal_setLowPowerModeEnabled___block_invoke(uint64_t result)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 538) != v2)
  {
    v3 = result;
    *(v1 + 538) = v2;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(result + 32) cameraGroups];
    result = [v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v7++) setLowPowerModeEnabled:*(v3 + 40)];
        }

        while (v5 != v7);
        result = [v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

- (unsigned)mediaStateForMediaType:(unsigned int)a3
{
  v7 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          return self->super._screenEnabled;
        }

        return v7;
      }

      if (self->super._videoEnabled)
      {
        v10 = &OBJC_IVAR___VCSessionParticipant__videoPaused;
        goto LABEL_16;
      }
    }

    else if (self->super._audioEnabled)
    {
      v10 = &OBJC_IVAR___VCSessionParticipant__audioPaused;
LABEL_16:
      v11 = *v10;
      goto LABEL_19;
    }

    return 0;
  }

  if (a3 - 4 >= 3)
  {
    if (a3 == 3)
    {
      if (self->super._screenEnabled)
      {
        v11 = 1056;
LABEL_19:
        if (*(&self->super.super.super.isa + v11))
        {
          return 2;
        }

        else
        {
          return 1;
        }
      }

      return 0;
    }

    if (a3 != 8)
    {
      return v7;
    }
  }

  v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v4, v3, v5}]);

  return [v8 mediaState];
}

- (BOOL)setupAudioStreamGroupWithStreamConfigs:(id)a3 negotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(VCSessionParticipantLocal *)self setupAudioStreamsWithStreamConfigurations:a3 mediaNegotiatorConfig:a4 streamGroupConfiguration:a5];
  if (v7)
  {
    v8 = [(VCSessionParticipant *)self isPersonaCameraEnabled];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    micStreamGroups = self->super._micStreamGroups;
    v10 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(micStreamGroups);
          }

          [*(*(&v16 + 1) + 8 * i) setCurrentDTXEnabled:!self->super._videoEnabled && !v8];
        }

        v11 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v11);
    }

    [(VCSessionParticipantLocal *)self updatePayloadTypesWithAudioConfigs:a3];
  }

  else
  {
    [VCSessionParticipantLocal setupAudioStreamGroupWithStreamConfigs:? negotiatorConfig:? streamGroupConfiguration:?];
  }

  return v7;
}

- (BOOL)setupCameraStreamGroupWithStreamConfigs:(id)a3 negotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5
{
  if ([a3 count])
  {
    if ([(VCSessionParticipantLocal *)self setupVideoStreamsWithStreamConfigurations:a3 mediaNegotiatorConfig:a4 streamGroupConfiguration:a5])
    {
      [(VCSessionParticipantLocal *)self updatePayloadTypesWithVideoConfigs:a3];
      return 1;
    }

    else
    {
      [VCSessionParticipantLocal setupCameraStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:];
      return v10;
    }
  }

  else
  {
    [VCSessionParticipantLocal setupCameraStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:];
    return v11;
  }
}

- (void)setupSystemAudioCapture
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipantLocal *)self getAudioFormatDescriptionForStreamGroupID:1835623282];
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v3);
  *v8 = xmmword_1DBD49BF0;
  memset(&v8[16], 170, 40);
  *v8 = -1;
  deviceRole = self->super._deviceRole;
  v10 = 6;
  processId = self->super._processId;
  transportSessionID = self->super._transportSessionID;
  v12 = processId;
  v6 = *&StreamBasicDescription->mSampleRate;
  v7 = *&StreamBasicDescription->mBytesPerPacket;
  *&v8[40] = *&StreamBasicDescription->mBitsPerChannel;
  *&v8[24] = v7;
  *&v8[8] = v6;
  *&v8[48] = [(VCSessionParticipant *)self preferredIOSamplesPerFrameForGroupID:1835623282];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
  self->_systemAudioCaptureSession = [[VCSystemAudioCaptureSession alloc] initWithConfiguration:v8];
  CFRelease(v3);
}

- (int)captureSourceIDFromStreamGroupID:(unsigned int)a3
{
  result = 4;
  if (a3 > 1835623286)
  {
    if (a3 > 1936290408)
    {
      if (a3 == 1936290409)
      {
        return 7;
      }

      if (a3 == 1937339233)
      {
        return 5;
      }
    }

    else
    {
      if (a3 == 1835623287)
      {
        return result;
      }

      if (a3 == 1935897189)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a3 <= 1667330163)
  {
    if (a3 == 1667329381 || a3 == 1667329399)
    {
      return 3;
    }

    return 0;
  }

  if (a3 == 1667330164)
  {
    return result;
  }

  if (a3 != 1835623282)
  {
    return 0;
  }

  if (self->super._shouldConfigureMicrophoneForThirdPartyCall)
  {
    return 10;
  }

  else
  {
    return 4;
  }
}

- (int)captureSourceIDFromStreamGroupConfig:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKeyedSubscript:@"streamGroupID"];
  if (!v5)
  {
    [VCSessionParticipantLocal captureSourceIDFromStreamGroupConfig:?];
    return v9;
  }

  result = -[VCSessionParticipantLocal captureSourceIDFromStreamGroupID:](self, "captureSourceIDFromStreamGroupID:", [v5 unsignedIntValue]);
  if (result)
  {
    return result;
  }

  v7 = [a3 objectForKeyedSubscript:@"streamInputID"];
  if (!v7)
  {
    [VCSessionParticipantLocal captureSourceIDFromStreamGroupConfig:?];
    return v9;
  }

  v8 = [(NSMutableDictionary *)self->_streamInputIDToCaptureSourceIDMap objectForKeyedSubscript:v7];
  if (!v8)
  {
    [VCSessionParticipantLocal captureSourceIDFromStreamGroupConfig:];
    return v9;
  }

  return [v8 unsignedIntValue];
}

- (BOOL)setupStreamGroupWithStreamGroupConfig:(id)a3 negotiatorConfig:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"streamGroupMediaType", "unsignedIntValue"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"streamGroupID", "unsignedIntValue"}];
  v9 = [(VCSessionParticipantLocal *)self captureSourceIDFromStreamGroupConfig:a3];
  if (!-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8]))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._participantStreamTokens, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:VCUniqueIDGenerator_GenerateID()], objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8));
    if (v7 != 1986618469)
    {
      if (v7 == 1936684398)
      {
        if (-[VCSessionParticipantLocal setupAudioStreamsWithStreamConfigurations:mediaNegotiatorConfig:streamGroupConfiguration:](self, "setupAudioStreamsWithStreamConfigurations:mediaNegotiatorConfig:streamGroupConfiguration:", [a3 objectForKeyedSubscript:@"streamConfigurations"], a4, a3))
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

      if (v7 != 1835365473)
      {
        goto LABEL_12;
      }
    }

    v10 = [a3 objectForKeyedSubscript:@"streamConfigurations"];
    if (v8 == 1667330164)
    {
      if (![(VCSessionParticipantLocal *)self setupCaptionsStreamsWithStreamConfigurations:v10 mediaNegotiatorConfig:a4 streamGroupConfiguration:a3])
      {
        goto LABEL_12;
      }

LABEL_9:
      self->_forceMinBitrate = 0;
      self->_minBitrate = 2000000;
      LOBYTE(v11) = 1;
      return v11;
    }

    if ([(VCSessionParticipantLocal *)self setupVideoStreamsWithStreamConfigurations:v10 mediaNegotiatorConfig:a4 streamGroupConfiguration:a3])
    {
      goto LABEL_9;
    }

LABEL_12:
    [VCSessionParticipantLocal setupStreamGroupWithStreamGroupConfig:negotiatorConfig:];
    LOBYTE(v11) = v16;
    return v11;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v11)
      {
        return v11;
      }

      [VCSessionParticipantLocal setupStreamGroupWithStreamGroupConfig:negotiatorConfig:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v11 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v11)
      {
        return v11;
      }

      v16 = 136316418;
      v17 = v13;
      v18 = 2080;
      v19 = "[VCSessionParticipantLocal setupStreamGroupWithStreamGroupConfig:negotiatorConfig:]";
      v20 = 1024;
      v21 = 658;
      v22 = 2112;
      v23 = v12;
      v24 = 2048;
      v25 = self;
      v26 = 1024;
      v27 = v9;
      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Stream token already assigned for captureSourceID=%d", &v16, 0x36u);
    }
  }

  LOBYTE(v11) = 0;
  return v11;
}

- (BOOL)setupStreamGroupsWithConfig:(id)a3 negotiatorConfig:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a3 streamGroupConfigurations];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *v19;
  v15 = @"streamConfigurations";
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      v12 = [(VCSessionParticipantLocal *)self captureSourceIDFromStreamGroupConfig:v11, v15];
      if (v12 == 3)
      {
        if ([objc_msgSend(v11 objectForKeyedSubscript:{@"streamGroupID", "unsignedIntValue"}] == 1667329381)
        {
          if (!-[VCSessionParticipantLocal setupCameraStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:](self, "setupCameraStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:", [v11 objectForKeyedSubscript:v15], a4, v11))
          {
            goto LABEL_23;
          }

          continue;
        }
      }

      else
      {
        v13 = v12 == 10 || v12 == 4;
        if (v13 && [objc_msgSend(v11 objectForKeyedSubscript:{@"streamGroupID", "unsignedIntValue"}] == 1835623282)
        {
          if (!-[VCSessionParticipantLocal setupAudioStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:](self, "setupAudioStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:", [v11 objectForKeyedSubscript:v15], a4, v11))
          {
            goto LABEL_23;
          }

          continue;
        }
      }

      if (![(VCSessionParticipantLocal *)self setupStreamGroupWithStreamGroupConfig:v11 negotiatorConfig:a4])
      {
LABEL_23:
        [VCSessionParticipantLocal setupStreamGroupsWithConfig:negotiatorConfig:];
        return v16;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_21:
  if ([(VCSessionParticipantLocal *)self setupStreamGroupMediaSync])
  {
    return 1;
  }

  [VCSessionParticipantLocal setupStreamGroupsWithConfig:negotiatorConfig:];
  return v16;
}

- (BOOL)setupStreamInputsWithConfig:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(objc_msgSend(a3, "streamInputConfigurations"), "count")}];
  self->_streamInputIDToCaptureSourceIDMap = v5;
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [a3 streamInputConfigurations];
    v6 = [obj countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
          if (!v10)
          {
            [VCSessionParticipantLocal setupStreamInputsWithConfig:];
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
          -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamInputIDToCaptureSourceIDMap, "setObject:forKeyedSubscript:", v13, [MEMORY[0x1E696AD98] numberWithInteger:v12]);
          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    return 1;
  }

  else
  {
    [VCSessionParticipantLocal setupStreamInputsWithConfig:];
LABEL_12:
    [(VCSessionParticipantLocal *)self cleanupStreamInputs];
    return 0;
  }
}

- (void)cleanupStreamInputs
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->_streamInputIDToCaptureSourceIDMap allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }

  self->_streamInputIDToCaptureSourceIDMap = 0;
}

- (void)start
{
  v22 = *MEMORY[0x1E69E9840];
  if ([+[VCDefaults forceFECRepairStream] sharedInstance]
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_13;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315650;
      v13 = v4;
      v14 = 2080;
      v15 = "[VCSessionParticipantLocal start]";
      v16 = 1024;
      v17 = 772;
      v6 = " [%s] %s:%d _enableRedundancy set to YES by forceFECRepairStream";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136316162;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCSessionParticipantLocal start]";
      v16 = 1024;
      v17 = 772;
      v18 = 2112;
      v19 = v3;
      v20 = 2048;
      v21 = self;
      v6 = " [%s] %s:%d %@(%p) _enableRedundancy set to YES by forceFECRepairStream";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_13:
    [(VCSessionParticipantLocal *)self enableRedundancy:1];
  }

  [(VCSessionParticipantLocal *)self startVoiceActivityDetection];
  self->_lastSentAudioHostTime = NAN;
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  v11.receiver = self;
  v11.super_class = VCSessionParticipantLocal;
  [(VCSessionParticipant *)&v11 start];
}

- (void)stop
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCSessionParticipantLocal;
  [(VCSessionParticipant *)&v3 stop];
  [(VCSessionParticipantLocal *)self reportVideoEnabledStatsWithVideoEnabled:self->super._videoEnabled];
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
}

- (int64_t)maxCaptureResolution
{
  if (+[VCHardwareSettings supportsMultiway1080pStream])
  {
    return 20;
  }

  if (+[VCHardwareSettings supportsMultiway720pStream])
  {
    return 16;
  }

  return 11;
}

- (void)dispatchedSetAudioEnabled:(BOOL)a3
{
  v3 = a3;
  v8[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._participantQueue);
  if (self->super._state == 1 && self->super._audioEnabled != v3)
  {
    v6 = [(VCAudioIO *)self->super._audioIO state];
    if (v3)
    {
      if (!v6)
      {
        [(VCAudioIO *)self->super._audioIO start];
      }
    }

    else if (v6)
    {
      [(VCAudioIO *)self->super._audioIO stop];
    }

    v7.receiver = self;
    v5 = &v7;
  }

  else
  {
    v8[0] = self;
    v5 = v8;
  }

  v5->super_class = VCSessionParticipantLocal;
  [(objc_super *)v5 dispatchedSetAudioEnabled:v3];
}

- (int)maxCaptureCameraFrameRate
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->super._oneToOneModeEnabled)
  {
    if ([objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_oneToOneSettings.streamInfo objectForKeyedSubscript:{&unk_1F579A200), "streamConfigs"), "count"}])
    {
      v3 = [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_oneToOneSettings.streamInfo objectForKeyedSubscript:{&unk_1F579A200), "streamConfigs"), "objectAtIndexedSubscript:", 0), "framerate"}];
      goto LABEL_7;
    }

    v3 = +[VCHardwareSettings maxOneToOneFramerateSupported];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136315906;
          v25 = v17;
          v26 = 2080;
          v27 = "[VCSessionParticipantLocal maxCaptureCameraFrameRate]";
          v28 = 1024;
          v29 = 832;
          v30 = 1024;
          LODWORD(v31) = v3;
          v19 = " [%s] %s:%d no oneToOneSettings video config found, use default maxFrameRate=%d";
          v20 = v18;
          v21 = 34;
LABEL_35:
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v24, v21);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136316418;
          v25 = v22;
          v26 = 2080;
          v27 = "[VCSessionParticipantLocal maxCaptureCameraFrameRate]";
          v28 = 1024;
          v29 = 832;
          v30 = 2112;
          v31 = v15;
          v32 = 2048;
          v33 = self;
          v34 = 1024;
          v35 = v3;
          v19 = " [%s] %s:%d %@(%p) no oneToOneSettings video config found, use default maxFrameRate=%d";
          v20 = v23;
          v21 = 54;
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    v4 = +[VCHardwareSettings maxMultiwayFramerateSupported];
    if (v4 >= 0x1E)
    {
      v3 = 30;
    }

    else
    {
      v3 = v4;
    }
  }

LABEL_7:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136315906;
          v25 = v6;
          v26 = 2080;
          v27 = "[VCSessionParticipantLocal maxCaptureCameraFrameRate]";
          v28 = 1024;
          v29 = 837;
          v30 = 1024;
          LODWORD(v31) = v3;
          v9 = " [%s] %s:%d maxFrameRate=%d";
          v10 = v7;
          v11 = 34;
LABEL_19:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v24, v11);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [VCSessionParticipantLocal maxCaptureCameraFrameRate];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136316418;
          v25 = v12;
          v26 = 2080;
          v27 = "[VCSessionParticipantLocal maxCaptureCameraFrameRate]";
          v28 = 1024;
          v29 = 837;
          v30 = 2112;
          v31 = v5;
          v32 = 2048;
          v33 = self;
          v34 = 1024;
          v35 = v3;
          v9 = " [%s] %s:%d %@(%p) maxFrameRate=%d";
          v10 = v13;
          v11 = 54;
          goto LABEL_19;
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v24 = 136316418;
        v25 = v12;
        v26 = 2080;
        v27 = "[VCSessionParticipantLocal maxCaptureCameraFrameRate]";
        v28 = 1024;
        v29 = 837;
        v30 = 2112;
        v31 = v5;
        v32 = 2048;
        v33 = self;
        v34 = 1024;
        v35 = v3;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) maxFrameRate=%d", &v24, 0x36u);
      }
    }
  }

  return v3;
}

- (void)setUplinkBitrateCapCell:(unsigned int)a3
{
  minBitrate = *&a3;
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v6;
        v25 = 2080;
        v26 = "[VCSessionParticipantLocal setUplinkBitrateCapCell:]";
        v27 = 1024;
        v28 = 842;
        v29 = 1024;
        LODWORD(v30) = minBitrate;
        v8 = " [%s] %s:%d Setting uplink bit rate cap cell is %d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v24 = v11;
        v25 = 2080;
        v26 = "[VCSessionParticipantLocal setUplinkBitrateCapCell:]";
        v27 = 1024;
        v28 = 842;
        v29 = 2112;
        v30 = v5;
        v31 = 2048;
        v32 = self;
        v33 = 1024;
        v34 = minBitrate;
        v8 = " [%s] %s:%d %@(%p) Setting uplink bit rate cap cell is %d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  if (self->_forceMinBitrate)
  {
    minBitrate = self->_minBitrate;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * i) updateUplinkBitrateCapCell:minBitrate activeStreamIDs:{-[VCSessionUplinkBandwidthAllocator streamIDsForStreamToken:targetBitrateCap:](self->_uplinkBandwidthAllocator, "streamIDsForStreamToken:targetBitrateCap:", objc_msgSend(*(*(&v19 + 1) + 8 * i), "streamToken"), minBitrate)}];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v15);
  }

  self->_uplinkBitrateCapCell = minBitrate;
}

- (void)setUplinkBitrateCapWifi:(unsigned int)a3
{
  v3 = *&a3;
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v6;
        v25 = 2080;
        v26 = "[VCSessionParticipantLocal setUplinkBitrateCapWifi:]";
        v27 = 1024;
        v28 = 855;
        v29 = 1024;
        LODWORD(v30) = v3;
        v8 = " [%s] %s:%d Setting uplink bit rate cap wifi is %d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v24 = v11;
        v25 = 2080;
        v26 = "[VCSessionParticipantLocal setUplinkBitrateCapWifi:]";
        v27 = 1024;
        v28 = 855;
        v29 = 2112;
        v30 = v5;
        v31 = 2048;
        v32 = self;
        v33 = 1024;
        v34 = v3;
        v8 = " [%s] %s:%d %@(%p) Setting uplink bit rate cap wifi is %d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  if (self->_forceMinBitrate)
  {
    self->_uplinkBitrateCapWifi = self->_minBitrate;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * i) updateUplinkBitrateCapWifi:v3 activeStreamIDs:{-[VCSessionUplinkBandwidthAllocator streamIDsForStreamToken:targetBitrateCap:](self->_uplinkBandwidthAllocator, "streamIDsForStreamToken:targetBitrateCap:", objc_msgSend(*(*(&v19 + 1) + 8 * i), "streamToken"), v3)}];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v15);
  }

  self->_uplinkBitrateCapWifi = v3;
}

- (BOOL)reconfigureOneToOneAudioStream:(id)a3 error:(id *)a4
{
  v78[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = "[VCSessionParticipantLocal reconfigureOneToOneAudioStream:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 872;
        v10 = " [%s] %s:%d Updating videoEnabled on the oneToOne audio stream";
        v11 = v9;
        v12 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "[VCSessionParticipantLocal reconfigureOneToOneAudioStream:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 872;
        *&buf[28] = 2112;
        *&buf[30] = v7;
        *&buf[38] = 2048;
        *&buf[40] = self;
        v10 = " [%s] %s:%d %@(%p) Updating videoEnabled on the oneToOne audio stream";
        v11 = v14;
        v12 = 48;
        goto LABEL_11;
      }
    }
  }

  v15 = [(VCSessionParticipant *)self operatingMode];
  v16 = [a3 defaultStreamConfig];
  if (v15 == [v16 oneToOneOperatingMode])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 1;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v25 = [(VCSessionParticipant *)self dispatchedIsAnyCameraMediaTypeEnabled];
      *buf = 136316162;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = "[VCSessionParticipantLocal reconfigureOneToOneAudioStream:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 876;
      *&buf[28] = 1024;
      *&buf[30] = v15;
      *&buf[34] = 1024;
      *&buf[36] = v25;
      v26 = " [%s] %s:%d OneToOne Audio Stream is already configured in mode %d for cameraEnabled=%{BOOL}d";
      v27 = v24;
      v28 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 1;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v31 = [(VCSessionParticipant *)self dispatchedIsAnyCameraMediaTypeEnabled];
      *buf = 136316674;
      *&buf[4] = v29;
      *&buf[12] = 2080;
      *&buf[14] = "[VCSessionParticipantLocal reconfigureOneToOneAudioStream:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 876;
      *&buf[28] = 2112;
      *&buf[30] = v17;
      *&buf[38] = 2048;
      *&buf[40] = self;
      LOWORD(v66) = 1024;
      *(&v66 + 2) = v15;
      WORD3(v66) = 1024;
      DWORD2(v66) = v31;
      v26 = " [%s] %s:%d %@(%p) OneToOne Audio Stream is already configured in mode %d for cameraEnabled=%{BOOL}d";
      v27 = v30;
      v28 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    return 1;
  }

  if (self->super._audioEnabled && !self->super._audioPaused && [a3 state] == 2)
  {
    [a3 stop];
    [(VCAudioIO *)self->super._audioIO stop];
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  [v16 setOneToOneOperatingMode:v15];
  v78[0] = v16;
  v19 = [a3 setStreamConfig:objc_msgSend(MEMORY[0x1E695DEC8] withError:{"arrayWithObjects:count:", v78, 1), a4}];
  if (!*a4 && v19)
  {
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v76 = v20;
    v77 = v20;
    v74 = v20;
    v75 = v20;
    v72 = v20;
    v73 = v20;
    v70 = v20;
    v71 = v20;
    v68 = v20;
    v69 = v20;
    v66 = v20;
    v67 = v20;
    *&buf[16] = v20;
    *&buf[32] = v20;
    *buf = v20;
    [(VCSessionParticipantLocal *)self audioIOConfigWithDeviceRole:self->super._deviceRole operatingMode:v15];
    v21 = [(VCAudioIO *)self->super._audioIO reconfigureWithConfig:buf];
    if (v21)
    {
      if (v18)
      {
        [a3 start];
        [(VCAudioIO *)self->super._audioIO start];
      }

      return v21;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_57;
      }

      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      audioIO = self->super._audioIO;
      deviceRole = self->super._deviceRole;
      *v48 = 136316674;
      v49 = v35;
      v50 = 2080;
      v51 = "[VCSessionParticipantLocal reconfigureOneToOneAudioStream:error:]";
      v52 = 1024;
      v53 = 891;
      v54 = 2048;
      v55 = audioIO;
      v56 = 1024;
      *v57 = v15;
      *&v57[4] = 1024;
      *&v57[6] = deviceRole;
      LOWORD(v58) = 1024;
      *(&v58 + 2) = buf[20];
      v39 = " [%s] %s:%d Failed to reconfigure: audioIO=%p operatingMode=%d deviceRole=%d direction=%d";
      v40 = v36;
      v41 = 56;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v32 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v32 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_57;
      }

      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      v44 = self->super._audioIO;
      v45 = self->super._deviceRole;
      *v48 = 136317186;
      v49 = v42;
      v50 = 2080;
      v51 = "[VCSessionParticipantLocal reconfigureOneToOneAudioStream:error:]";
      v52 = 1024;
      v53 = 891;
      v54 = 2112;
      v55 = v32;
      v56 = 2048;
      *v57 = self;
      *&v57[8] = 2048;
      v58 = v44;
      v59 = 1024;
      v60 = v15;
      v61 = 1024;
      v62 = v45;
      v63 = 1024;
      v64 = buf[20];
      v39 = " [%s] %s:%d %@(%p) Failed to reconfigure: audioIO=%p operatingMode=%d deviceRole=%d direction=%d";
      v40 = v43;
      v41 = 76;
    }

    _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, v39, v48, v41);
LABEL_57:
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@. Unable to reconfigure _audioIO=%p in _state=%d", -[VCObject logPrefix](self, "logPrefix"), self->super._audioIO, self->super._state];
    *a4 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:v46];
    return v21;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal reconfigureOneToOneAudioStream:error:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v33;
        *&buf[12] = 2080;
        *&buf[14] = "[VCSessionParticipantLocal reconfigureOneToOneAudioStream:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 901;
        *&buf[28] = 2112;
        *&buf[30] = v22;
        *&buf[38] = 2048;
        *&buf[40] = self;
        _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) OneToOne Audio Stream was unable to be reconfigured", buf, 0x30u);
      }
    }
  }

  return 0;
}

- (BOOL)reconfigureAudioIOForMode:(int)a3 error:(id *)a4
{
  v5 = *&a3;
  v72 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = "[VCSessionParticipantLocal reconfigureAudioIOForMode:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 908;
        *&buf[28] = 1024;
        *&buf[30] = v5;
        v10 = " [%s] %s:%d Updating videoEnabled on the local participant audioIO with newMode=%d";
        v11 = v9;
        v12 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "[VCSessionParticipantLocal reconfigureAudioIOForMode:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 908;
        *&buf[28] = 2112;
        *&buf[30] = v7;
        *&buf[38] = 2048;
        *&buf[40] = self;
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v5;
        v10 = " [%s] %s:%d %@(%p) Updating videoEnabled on the local participant audioIO with newMode=%d";
        v11 = v14;
        v12 = 54;
        goto LABEL_11;
      }
    }
  }

  if ([(VCAudioIO *)self->super._audioIO operatingMode]== v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 1;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v22 = [(VCSessionParticipant *)self dispatchedIsAnyCameraMediaTypeEnabled];
      *buf = 136316162;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = "[VCSessionParticipantLocal reconfigureAudioIOForMode:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 911;
      *&buf[28] = 1024;
      *&buf[30] = v5;
      *&buf[34] = 1024;
      *&buf[36] = v22;
      v23 = " [%s] %s:%d OneToOne Audio Stream is already configured in mode %d for cameraEnabled=%{BOOL}d";
      v24 = v21;
      v25 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        return 1;
      }

      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v28 = [(VCSessionParticipant *)self dispatchedIsAnyCameraMediaTypeEnabled];
      *buf = 136316674;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = "[VCSessionParticipantLocal reconfigureAudioIOForMode:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 911;
      *&buf[28] = 2112;
      *&buf[30] = v15;
      *&buf[38] = 2048;
      *&buf[40] = self;
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v5;
      WORD3(v60) = 1024;
      DWORD2(v60) = v28;
      v23 = " [%s] %s:%d %@(%p) OneToOne Audio Stream is already configured in mode %d for cameraEnabled=%{BOOL}d";
      v24 = v27;
      v25 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    return 1;
  }

  v16 = [(VCAudioIO *)self->super._audioIO state];
  if (v16 == 2)
  {
    [(VCAudioIO *)self->super._audioIO stop];
  }

  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70 = v17;
  v71 = v17;
  v68 = v17;
  v69 = v17;
  v66 = v17;
  v67 = v17;
  v64 = v17;
  v65 = v17;
  v62 = v17;
  v63 = v17;
  v60 = v17;
  v61 = v17;
  *&buf[16] = v17;
  *&buf[32] = v17;
  *buf = v17;
  [(VCSessionParticipantLocal *)self audioIOConfigWithDeviceRole:self->super._deviceRole operatingMode:v5];
  v18 = [(VCAudioIO *)self->super._audioIO reconfigureWithConfig:buf];
  if (v18)
  {
    if (v16 == 2)
    {
      [(VCAudioIO *)self->super._audioIO start];
    }

    return v18;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIO = self->super._audioIO;
        deviceRole = self->super._deviceRole;
        *v42 = 136316674;
        v43 = v29;
        v44 = 2080;
        v45 = "[VCSessionParticipantLocal reconfigureAudioIOForMode:error:]";
        v46 = 1024;
        v47 = 923;
        v48 = 2048;
        v49 = audioIO;
        v50 = 1024;
        *v51 = v5;
        *&v51[4] = 1024;
        *&v51[6] = deviceRole;
        LOWORD(v52) = 1024;
        *(&v52 + 2) = buf[20];
        v33 = " [%s] %s:%d Failed to reconfigure: audioIO=%p operatingMode=%d deviceRole=%d direction=%d";
        v34 = v30;
        v35 = 56;
LABEL_40:
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, v42, v35);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v38 = self->super._audioIO;
        v39 = self->super._deviceRole;
        *v42 = 136317186;
        v43 = v36;
        v44 = 2080;
        v45 = "[VCSessionParticipantLocal reconfigureAudioIOForMode:error:]";
        v46 = 1024;
        v47 = 923;
        v48 = 2112;
        v49 = v19;
        v50 = 2048;
        *v51 = self;
        *&v51[8] = 2048;
        v52 = v38;
        v53 = 1024;
        v54 = v5;
        v55 = 1024;
        v56 = v39;
        v57 = 1024;
        v58 = buf[20];
        v33 = " [%s] %s:%d %@(%p) Failed to reconfigure: audioIO=%p operatingMode=%d deviceRole=%d direction=%d";
        v34 = v37;
        v35 = 76;
        goto LABEL_40;
      }
    }
  }

  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@. Unable to reconfigure _audioIO=%p in _state=%d", -[VCObject logPrefix](self, "logPrefix"), self->super._audioIO, self->super._state];
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:v40];
  }

  return v18;
}

- (id)startMicStreamGroups
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->super._micStreamGroups mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  micStreamGroups = self->super._micStreamGroups;
  v5 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v13 objects:v12 count:16];
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
          objc_enumerationMutation(micStreamGroups);
        }

        if (self->super._oneToOneModeEnabled)
        {
          v9 = *(*(&v13 + 1) + 8 * i);
          if (!-[VCSessionParticipantLocal isOneToOneStreamGroup:](self, "isOneToOneStreamGroup:", [v9 streamGroupID]))
          {
            [v3 removeObject:v9];
          }
        }
      }

      v6 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  v10 = [(VCSessionParticipant *)self startStreamGroups:v3];

  return v10;
}

- (id)startCameraStreamGroups
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipant *)self cameraGroups];
  v4 = [v3 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        if (self->super._oneToOneModeEnabled)
        {
          v9 = *(*(&v13 + 1) + 8 * i);
          if (!-[VCSessionParticipantLocal isOneToOneStreamGroup:](self, "isOneToOneStreamGroup:", [v9 streamGroupID]))
          {
            [v4 removeObject:v9];
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  v10 = [(VCSessionParticipant *)self startStreamGroups:v4];

  return v10;
}

- (id)applyVideoEnabledSetting:(BOOL)a3
{
  v3 = a3;
  v34 = *MEMORY[0x1E69E9840];
  self->super._videoEnabled = a3;
  [(VCSessionParticipant *)self syncCameraMediaStateFromLegacyState];
  v5 = [(VCSessionParticipant *)self updateStreamGroups:[(VCSessionParticipant *)self cameraGroups]];
  if (v5)
  {
    [(VCSessionParticipantLocal *)v3 applyVideoEnabledSetting:v5, v25];
    return *v25;
  }

  v6 = [(VCSessionParticipantLocal *)self applyMicReconfigurationForCameraTransition];
  if (!v6)
  {
    if (self->super._state == 1)
    {
      if (v3)
      {
        [(VCSessionParticipantLocal *)self registerForVideoCapture:self->_currentVideoCaptureFrameRate];
      }

      else
      {
        [(VCSessionParticipantLocal *)self deregisterForVideoCapture];
      }
    }

    [(VCSessionParticipantLocal *)self updateUplinkTargetBitrateForStreamGroups];
    [(VCSessionParticipantLocal *)self reportVideoEnabledStatsWithVideoEnabled:v3 ^ 1];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 0;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *v25 = 136316162;
      *&v25[4] = v8;
      v26 = 2080;
      v27 = "[VCSessionParticipantLocal applyVideoEnabledSetting:]";
      v28 = 1024;
      v29 = 996;
      v30 = 2112;
      *v31 = [(VCSessionParticipant *)self description];
      *&v31[8] = 1024;
      *&v31[10] = v3;
      v10 = " [%s] %s:%d %@ videoEnabled[%d]";
      v11 = v9;
      v12 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 0;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *v25 = 136316674;
      *&v25[4] = v13;
      v26 = 2080;
      v27 = "[VCSessionParticipantLocal applyVideoEnabledSetting:]";
      v28 = 1024;
      v29 = 996;
      v30 = 2112;
      *v31 = v7;
      *&v31[8] = 2048;
      *&v31[10] = self;
      v32 = 2112;
      *v33 = [(VCSessionParticipant *)self description];
      *&v33[8] = 1024;
      *&v33[10] = v3;
      v10 = " [%s] %s:%d %@(%p) %@ videoEnabled[%d]";
      v11 = v14;
      v12 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v25, v12);
    return 0;
  }

  v15 = v6;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v25 = 136316162;
        *&v25[4] = v18;
        v26 = 2080;
        v27 = "[VCSessionParticipantLocal applyVideoEnabledSetting:]";
        v28 = 1024;
        v29 = 981;
        v30 = 1024;
        *v31 = v3;
        *&v31[4] = 2112;
        *&v31[6] = v15;
        v20 = " [%s] %s:%d Failed to apply audio reconfigure for videoEnabled=%d error=%@";
        v21 = v19;
        v22 = 44;
LABEL_31:
        _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, v20, v25, v22);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v25 = 136316674;
        *&v25[4] = v23;
        v26 = 2080;
        v27 = "[VCSessionParticipantLocal applyVideoEnabledSetting:]";
        v28 = 1024;
        v29 = 981;
        v30 = 2112;
        *v31 = v17;
        *&v31[8] = 2048;
        *&v31[10] = self;
        v32 = 1024;
        *v33 = v3;
        *&v33[4] = 2112;
        *&v33[6] = v15;
        v20 = " [%s] %s:%d %@(%p) Failed to apply audio reconfigure for videoEnabled=%d error=%@";
        v21 = v24;
        v22 = 64;
        goto LABEL_31;
      }
    }
  }

  return v15;
}

- (void)applyScreenEnabledSetting:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  self->super._screenEnabled = a3;
  [(VCSessionParticipant *)self syncScreenMediaStateFromLegacyState];
  [(VCSessionParticipantLocal *)self updateUplinkTargetBitrateForStreamGroups];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316162;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCSessionParticipantLocal applyScreenEnabledSetting:]";
        v17 = 1024;
        v18 = 1005;
        v19 = 2112;
        p_isa = [(VCSessionParticipant *)self description];
        v21 = 1024;
        LODWORD(v22) = v3;
        v8 = " [%s] %s:%d %@ screenEnabled[%d]";
        v9 = v7;
        v10 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
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
        v13 = 136316674;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCSessionParticipantLocal applyScreenEnabledSetting:]";
        v17 = 1024;
        v18 = 1005;
        v19 = 2112;
        p_isa = &v5->isa;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = [(VCSessionParticipant *)self description];
        v25 = 1024;
        v26 = v3;
        v8 = " [%s] %s:%d %@(%p) %@ screenEnabled[%d]";
        v9 = v12;
        v10 = 64;
        goto LABEL_11;
      }
    }
  }
}

- (void)updateVideoPaused:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v13 = 136315906;
    *&v13[4] = v6;
    *&v13[12] = 2080;
    *&v13[14] = "[VCSessionParticipantLocal updateVideoPaused:]";
    *&v13[22] = 1024;
    LODWORD(v14) = 1009;
    WORD2(v14) = 1024;
    *(&v14 + 6) = v3;
    v8 = " [%s] %s:%d Changing participant videoPaused to %d";
    v9 = v7;
    v10 = 34;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
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
      *&v13[14] = "[VCSessionParticipantLocal updateVideoPaused:]";
      *&v13[22] = 1024;
      LODWORD(v14) = 1009;
      WORD2(v14) = 2112;
      *(&v14 + 6) = v5;
      HIWORD(v14) = 2048;
      v15 = self;
      LOWORD(v16) = 1024;
      *(&v16 + 2) = v3;
      v8 = " [%s] %s:%d %@(%p) Changing participant videoPaused to %d";
      v9 = v12;
      v10 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
    }
  }

LABEL_12:
  self->super._videoPaused = v3;
  [(VCSessionParticipant *)self syncCameraMediaStateFromLegacyState:*v13];
  [(VCSessionParticipantLocal *)self updateUplinkTargetBitrateForStreamGroups];
  if (v3)
  {
    [(VCSessionParticipantLocal *)self deregisterForVideoCapture];
  }

  else
  {
    [(VCSessionParticipantLocal *)self registerForVideoCapture:self->_currentVideoCaptureFrameRate];
    [(VCSessionParticipantLocal *)self endSensitiveContentAnalyzerInterruptionForCameraCapture];
  }

  [(VCSessionParticipantLocal *)self updateAudioSpectrumState];
}

- (void)updateActiveVoiceOnly
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  micStreamGroups = self->super._micStreamGroups;
  v4 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(micStreamGroups);
        }

        [*(*(&v9 + 1) + 8 * i) setVADFilteringEnabled:self->_enableVADFiltering];
      }

      v5 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (id)updateMediaState:(unsigned int)a3 forStreamGroups:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionParticipantLocal;
  v5 = [(VCSessionParticipant *)&v7 updateMediaState:*&a3 forStreamGroups:a4];
  if (!v5)
  {
    [(VCSessionParticipantLocal *)self dispatchedUpdateUplinkTargetBitrate:self->_currentUplinkTargetBitrate rateChangeCounter:self->_currentRateChangeCounter];
  }

  return v5;
}

- (int)currentVideoCaptureFrameRate
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCSessionParticipantLocal_currentVideoCaptureFrameRate__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(participantQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCurrentVideoCaptureFrameRate:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VCSessionParticipantLocal_setCurrentVideoCaptureFrameRate___block_invoke;
  block[3] = &unk_1E85F38B8;
  v5 = a3;
  block[4] = self;
  dispatch_async(participantQueue, block);
}

void __61__VCSessionParticipantLocal_setCurrentVideoCaptureFrameRate___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == *(v3 + 952))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 952);
        LODWORD(v6) = *(v6 + 956);
        v8 = *(a1 + 40);
        v26 = 136316418;
        v27 = v4;
        v28 = 2080;
        v29 = "[VCSessionParticipantLocal setCurrentVideoCaptureFrameRate:]_block_invoke";
        v30 = 1024;
        v31 = 1054;
        v32 = 1024;
        v33 = v7;
        v34 = 1024;
        v35 = v6;
        v36 = 1024;
        v37 = v8;
        v9 = " [%s] %s:%d Ignoring the change of video captureFrameRate. currentVideoCaptureFrameRate %d maxSupportedMultiwayFrameRate %d framerate %d";
        v10 = v5;
        v11 = 46;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v26, v11);
      }
    }
  }

  else
  {
    v12 = *(v3 + 956);
    if (v2 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v2;
    }

    *(v3 + 952) = v13;
    v14 = [*(a1 + 32) isEnabledMediaType:1];
    v15 = *(a1 + 32);
    if (v15[42] == 1 && v14 != 0)
    {
      [v15 deregisterForVideoCaptureAndStopProcessingAllMediaRecorderRequests:0];
      [*(a1 + 32) registerForVideoCapture:v13];
      v15 = *(a1 + 32);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [v15 cameraGroups];
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v42;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v41 + 1) + 8 * i) setCaptureFrameRate:v13];
        }

        v19 = [v17 countByEnumeratingWithState:&v41 objects:v40 count:16];
      }

      while (v19);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        v25 = *(v24 + 956);
        LODWORD(v24) = *(v24 + 168);
        v26 = 136316674;
        v27 = v22;
        v28 = 2080;
        v29 = "[VCSessionParticipantLocal setCurrentVideoCaptureFrameRate:]_block_invoke";
        v30 = 1024;
        v31 = 1067;
        v32 = 1024;
        v33 = v13;
        v34 = 1024;
        v35 = v25;
        v36 = 1024;
        v37 = v24;
        v38 = 1024;
        v39 = v14;
        v9 = " [%s] %s:%d Setting local capture rate, currentVideoCaptureFrameRate=%d fps, maxSupportedMultiwayCameraFrameRate=%d fps state=%d cameraMediaTypeEnabled=%{BOOL}d";
        v10 = v23;
        v11 = 52;
        goto LABEL_23;
      }
    }
  }
}

- (CGSize)captureEncodingSize
{
  v3 = [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_oneToOneSettings.streamInfo objectForKeyedSubscript:{&unk_1F579A200), "streamConfigs"), "firstObject"}];
  if (!self->super._oneToOneModeEnabled || v3 == 0)
  {
    maxSupportedMultiwayVideoResolution = self->_maxSupportedMultiwayVideoResolution;

    [VideoUtil sizeForVideoResolution:maxSupportedMultiwayVideoResolution];
  }

  else
  {
    v8 = [v3 videoResolution];
    lowPowerModeEnabled = self->super._lowPowerModeEnabled;

    [VideoUtil maxCaptureEncodingResolutionForStreamConfigResolution:v8 lowPowerModeEnabled:lowPowerModeEnabled];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)registerForVideoCapture:(int)a3
{
  v78[4] = *MEMORY[0x1E69E9840];
  if (self->_videoCaptureSource != 3)
  {
    return;
  }

  currentVideoCaptureFrameRate = *&a3;
  if (self->super._videoEnabled && !self->super._videoPaused)
  {
    [(VCSessionParticipantLocal *)self captureEncodingSize];
    v15 = v13;
    v16 = v14;
    if (self->super._sharingEnabled)
    {
      currentVideoCaptureFrameRate = self->_currentVideoCaptureFrameRate;
    }

    if (self->super._oneToOneModeEnabled && self->super._lowPowerModeEnabled)
    {
      currentVideoCaptureFrameRate = self->_currentVideoCaptureFrameRate;
    }

    v17 = v13;
    v18 = v14;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 136316418;
          *&v75[4] = v24;
          *&v75[12] = 2080;
          *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
          *&v75[22] = 1024;
          *v76 = 1095;
          *&v76[4] = 1024;
          *&v76[6] = v17;
          *&v76[10] = 1024;
          *&v76[12] = v18;
          *&v76[16] = 1024;
          *&v76[18] = currentVideoCaptureFrameRate;
          v26 = " [%s] %s:%d encodeSize=%dx%d, videoCaptureFrameRate=%d";
          v27 = v25;
          v28 = 46;
LABEL_30:
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, v75, v28);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 136316930;
          *&v75[4] = v29;
          *&v75[12] = 2080;
          *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
          *&v75[22] = 1024;
          *v76 = 1095;
          *&v76[4] = 2112;
          *&v76[6] = v19;
          *&v76[14] = 2048;
          *&v76[16] = self;
          *&v76[24] = 1024;
          *&v76[26] = v17;
          *&v76[30] = 1024;
          *&v76[32] = v18;
          *&v76[36] = 1024;
          *&v76[38] = currentVideoCaptureFrameRate;
          v26 = " [%s] %s:%d %@(%p) encodeSize=%dx%d, videoCaptureFrameRate=%d";
          v27 = v30;
          v28 = 66;
          goto LABEL_30;
        }
      }
    }

    if (![+[VCDefaults forceHWI:*v75] sharedInstance]
    {
      goto LABEL_43;
    }

    v17 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
    v18 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
    currentVideoCaptureFrameRate = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 136316418;
          *&v75[4] = v32;
          *&v75[12] = 2080;
          *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
          *&v75[22] = 1024;
          *v76 = 1101;
          *&v76[4] = 1024;
          *&v76[6] = v17;
          *&v76[10] = 1024;
          *&v76[12] = v18;
          *&v76[16] = 1024;
          *&v76[18] = currentVideoCaptureFrameRate;
          v34 = " [%s] %s:%d forcing capture settings %dx%d@%d fps";
          v35 = v33;
          v36 = 46;
LABEL_42:
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v34, v75, v36);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v31 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v31 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v75 = 136316930;
          *&v75[4] = v37;
          *&v75[12] = 2080;
          *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
          *&v75[22] = 1024;
          *v76 = 1101;
          *&v76[4] = 2112;
          *&v76[6] = v31;
          *&v76[14] = 2048;
          *&v76[16] = self;
          *&v76[24] = 1024;
          *&v76[26] = v17;
          *&v76[30] = 1024;
          *&v76[32] = v18;
          *&v76[36] = 1024;
          *&v76[38] = currentVideoCaptureFrameRate;
          v34 = " [%s] %s:%d %@(%p) forcing capture settings %dx%d@%d fps";
          v35 = v38;
          v36 = 66;
          goto LABEL_42;
        }
      }
    }

LABEL_43:
    self->_currentVideoCaptureFrameRate = currentVideoCaptureFrameRate;

    v39 = [VCVideoRule alloc];
    v40 = currentVideoCaptureFrameRate;
    *&v41 = currentVideoCaptureFrameRate;
    self->_videoRule = [(VCVideoRule *)v39 initWithFrameWidth:v17 frameHeight:v18 frameRate:v41];
    if (![+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")])
    {
      if ([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")])
      {
        v43 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
        [(VCSessionParticipant *)self reportingAgent];
        reportingGenericEvent();
        if (v43)
        {
          CFRelease(v43);
        }
      }

      else
      {
        [(VCSessionParticipant *)self reportingAgent];
        v78[0] = &unk_1F579A230;
        v77[0] = @"SymptomReporterOptionalKeyCaptureSource";
        v77[1] = @"SymptomReporterOptionalKeyCaptureWidth";
        v78[1] = [MEMORY[0x1E696AD98] numberWithInt:v17];
        v77[2] = @"SymptomReporterOptionalKeyCaptureHeight";
        v78[2] = [MEMORY[0x1E696AD98] numberWithInt:v18];
        v77[3] = @"SymptomReporterOptionalKeyCaptureFrameRate";
        v78[3] = [MEMORY[0x1E696AD98] numberWithInt:currentVideoCaptureFrameRate];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:4];
        reportingSymptom();
      }

LABEL_60:
      if ([(VCSessionParticipant *)self operatingMode:*v75]== 6)
      {
        v57 = objc_alloc_init(VideoAttributes);
        [(VideoAttributes *)v57 setOrientation:0];
        [(VideoAttributes *)v57 setRatio:v15, v16];
        VCMediaRecorder_UpdateTargetScreenAttributes(self->super._mediaRecorder, v57);
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_73;
        }

        v60 = VRTraceErrorLogLevelToCSTR();
        v61 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_73;
        }

        v62 = [(VCSessionParticipant *)self operatingMode];
        [(VideoAttributes *)[(VCMediaRecorder *)self->super._mediaRecorder targetScreenAttributes] ratio];
        v64 = v63;
        [(VideoAttributes *)[(VCMediaRecorder *)self->super._mediaRecorder targetScreenAttributes] ratio];
        *v75 = 136316930;
        *&v75[4] = v60;
        *&v75[12] = 2080;
        *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
        *&v75[22] = 1024;
        *v76 = 1147;
        *&v76[4] = 1024;
        *&v76[6] = v62;
        *&v76[10] = 2048;
        *&v76[12] = v15;
        *&v76[20] = 2048;
        *&v76[22] = v16;
        *&v76[30] = 2048;
        *&v76[32] = v64;
        *&v76[40] = 2048;
        *&v76[42] = v65;
        v66 = " [%s] %s:%d operatingMode=%d, encodingSize=%3fx%3f, _mediaRecorder.targetScreenAttributes=%3fx%3f";
        v67 = v61;
        v68 = 74;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v58 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
        }

        else
        {
          v58 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_73;
        }

        v69 = VRTraceErrorLogLevelToCSTR();
        v70 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_73;
        }

        v71 = [(VCSessionParticipant *)self operatingMode];
        [(VideoAttributes *)[(VCMediaRecorder *)self->super._mediaRecorder targetScreenAttributes] ratio];
        v73 = v72;
        [(VideoAttributes *)[(VCMediaRecorder *)self->super._mediaRecorder targetScreenAttributes] ratio];
        *v75 = 136317442;
        *&v75[4] = v69;
        *&v75[12] = 2080;
        *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
        *&v75[22] = 1024;
        *v76 = 1147;
        *&v76[4] = 2112;
        *&v76[6] = v58;
        *&v76[14] = 2048;
        *&v76[16] = self;
        *&v76[24] = 1024;
        *&v76[26] = v71;
        *&v76[30] = 2048;
        *&v76[32] = v15;
        *&v76[40] = 2048;
        *&v76[42] = v16;
        *&v76[50] = 2048;
        *&v76[52] = v73;
        *&v76[60] = 2048;
        *&v76[62] = v74;
        v66 = " [%s] %s:%d %@(%p) operatingMode=%d, encodingSize=%3fx%3f, _mediaRecorder.targetScreenAttributes=%3fx%3f";
        v67 = v70;
        v68 = 94;
      }

      _os_log_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEFAULT, v66, v75, v68);
LABEL_73:
      *&v59 = v40;
      [(VCMediaRecorder *)self->super._mediaRecorder setFrameRate:v59, *v75, *&v75[8], *v76, *&v76[16], *&v76[24], *&v76[32], *&v76[48], *&v76[64]];
      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_59;
      }

      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *v75 = 136316162;
      *&v75[4] = v44;
      *&v75[12] = 2080;
      *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
      *&v75[22] = 1024;
      *v76 = 1109;
      *&v76[4] = 2112;
      *&v76[6] = v47;
      *&v76[14] = 2048;
      *&v76[16] = self;
      v48 = " [%s] %s:%d %@ %p already registered for capture";
      v49 = v45;
      v50 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v42 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v42 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_59;
      }

      v51 = VRTraceErrorLogLevelToCSTR();
      v52 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *v75 = 136316674;
      *&v75[4] = v51;
      *&v75[12] = 2080;
      *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
      *&v75[22] = 1024;
      *v76 = 1109;
      *&v76[4] = 2112;
      *&v76[6] = v42;
      *&v76[14] = 2048;
      *&v76[16] = self;
      *&v76[24] = 2112;
      *&v76[26] = v54;
      *&v76[34] = 2048;
      *&v76[36] = self;
      v48 = " [%s] %s:%d %@(%p) %@ %p already registered for capture";
      v49 = v52;
      v50 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, v48, v75, v50);
LABEL_59:
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer VCVideoCaptureServerSingleton];
    v55 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
    *&v56 = currentVideoCaptureFrameRate;
    [v55 updateCaptureRuleForClient:self width:v17 height:v18 frameRate:v56];
    goto LABEL_60;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoEnabled = self->super._videoEnabled;
        videoPaused = self->super._videoPaused;
        *v75 = 136316418;
        *&v75[4] = v6;
        *&v75[12] = 2080;
        *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
        *&v75[22] = 1024;
        *v76 = 1084;
        *&v76[4] = 1024;
        *&v76[6] = videoEnabled;
        *&v76[10] = 1024;
        *&v76[12] = videoPaused;
        *&v76[16] = 1024;
        *&v76[18] = currentVideoCaptureFrameRate;
        v10 = " [%s] %s:%d Cannot register due to videoEnabled=%d videoPaused=%d (caching frame rate=%d)";
        v11 = v7;
        v12 = 46;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v75, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->super._videoEnabled;
        v23 = self->super._videoPaused;
        *v75 = 136316930;
        *&v75[4] = v20;
        *&v75[12] = 2080;
        *&v75[14] = "[VCSessionParticipantLocal registerForVideoCapture:]";
        *&v75[22] = 1024;
        *v76 = 1084;
        *&v76[4] = 2112;
        *&v76[6] = v5;
        *&v76[14] = 2048;
        *&v76[16] = self;
        *&v76[24] = 1024;
        *&v76[26] = v22;
        *&v76[30] = 1024;
        *&v76[32] = v23;
        *&v76[36] = 1024;
        *&v76[38] = currentVideoCaptureFrameRate;
        v10 = " [%s] %s:%d %@(%p) Cannot register due to videoEnabled=%d videoPaused=%d (caching frame rate=%d)";
        v11 = v21;
        v12 = 66;
        goto LABEL_22;
      }
    }
  }
}

- (void)deregisterForVideoCaptureAndStopProcessingAllMediaRecorderRequests:(BOOL)a3
{
  if (self->_videoCaptureSource == 3)
  {
    v3 = a3;
    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    VCMediaRecorder_ClearHistoryBuffer(self->super._mediaRecorder);
    if (v3)
    {
      mediaRecorder = self->super._mediaRecorder;

      VCMediaRecorder_StopProcessingAllRequests(mediaRecorder);
    }
  }
}

- (void)endSensitiveContentAnalyzerInterruptionForCameraCapture
{
  v2 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];

  [v2 endSensitiveContentAnalyzerInterruption];
}

- (void)resetOneToOneSettings
{
  p_oneToOneSettings = &self->_oneToOneSettings;
  [(NSMutableDictionary *)self->_oneToOneSettings.streamInfo removeAllObjects];
  p_oneToOneSettings->endToEndConnectionReceived = 0;
}

- (void)suspendStreamsOnOneToOneModeSwitch
{
  v3[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__VCSessionParticipantLocal_suspendStreamsOnOneToOneModeSwitch__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(participantQueue, v3);
}

void __63__VCSessionParticipantLocal_suspendStreamsOnOneToOneModeSwitch__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[42] == 1)
  {
    [v2 deregisterForVideoCapture];
    if ([*(a1 + 32) stopMultiwayStreams])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __63__VCSessionParticipantLocal_suspendStreamsOnOneToOneModeSwitch__block_invoke_cold_1();
        }
      }
    }

    else
    {
      v3 = *(a1 + 32);
      if (*(v3 + 408) == 1)
      {
        [v3 resetOneToOneSettings];
        v3 = *(a1 + 32);
      }

      *(v3 + 592) = 0;
      *(*(a1 + 32) + 596) = 0;
      *(*(a1 + 32) + 168) = 0;
    }
  }
}

- (void)resumeStreamsOnOneToOneModeSwitch
{
  v3[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__VCSessionParticipantLocal_resumeStreamsOnOneToOneModeSwitch__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(participantQueue, v3);
}

uint64_t __62__VCSessionParticipantLocal_resumeStreamsOnOneToOneModeSwitch__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*(result + 168))
  {
    if (*(result + 408) == 1)
    {
      v3 = [objc_msgSend(objc_msgSend(objc_msgSend(*(result + 992) objectForKeyedSubscript:{&unk_1F579A200), "streamConfigs"), "objectAtIndexedSubscript:", 0), "framerate"}];
    }

    else
    {
      v3 = [result maxCaptureCameraFrameRate];
    }

    [*(a1 + 32) startMultiwayStreams];
    *(*(a1 + 32) + 956) = v3;
    result = [*(a1 + 32) registerForVideoCapture:v3];
    *(*(a1 + 32) + 379) = *(*(a1 + 32) + 377);
    *(*(a1 + 32) + 378) = *(*(a1 + 32) + 376);
  }

  return result;
}

- (void)setRemoteParticipants:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCSessionParticipantLocal_setRemoteParticipants___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

void __51__VCSessionParticipantLocal_setRemoteParticipants___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 136315650;
        *&v16[4] = v3;
        *&v16[12] = 2080;
        *&v16[14] = "[VCSessionParticipantLocal setRemoteParticipants:]_block_invoke";
        *&v16[22] = 1024;
        LODWORD(v17) = 1228;
        v5 = " [%s] %s:%d ";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, v16, v7);
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

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *v16 = 136316162;
        *&v16[4] = v8;
        *&v16[12] = 2080;
        *&v16[14] = "[VCSessionParticipantLocal setRemoteParticipants:]_block_invoke";
        *&v16[22] = 1024;
        LODWORD(v17) = 1228;
        WORD2(v17) = 2112;
        *(&v17 + 6) = v2;
        HIWORD(v17) = 2048;
        v18 = v10;
        v5 = " [%s] %s:%d %@(%p) ";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  *(*(a1 + 32) + 379) = *(*(a1 + 32) + 377);
  *(*(a1 + 32) + 378) = *(*(a1 + 32) + 376);

  *(*(a1 + 32) + 1096) = [*(a1 + 40) copy];
  *(*(a1 + 32) + 1104) = [*(*(a1 + 32) + 1096) count] > 1;
  v11 = [*(a1 + 32) streamGroupWithID:{1835623282, *v16, *&v16[16], v17, v18}];
  v12 = *(*(a1 + 32) + 1104);
  [v11 updateVoiceActivityEnabled:v12 isMediaPriorityEnabled:v12];
  v13 = [*(a1 + 32) streamGroupWithID:1835623287];
  v14 = *(*(a1 + 32) + 1104);
  [v13 updateVoiceActivityEnabled:v14 isMediaPriorityEnabled:v14];
  if ([*(a1 + 32) updateStreamGroups:{objc_msgSend(*(*(a1 + 32) + 472), "allValues")}])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __51__VCSessionParticipantLocal_setRemoteParticipants___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15[148])
    {
      [v15 updateUplinkTargetBitrateForStreamGroups];
    }
  }
}

- (void)startMultiwayStreams
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setOneToOneModeEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCSessionParticipantLocal_setOneToOneModeEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  v5 = a3;
  block[4] = self;
  dispatch_sync(participantQueue, block);
}

void __52__VCSessionParticipantLocal_setOneToOneModeEnabled___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == *(v2 + 408))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v3;
        v14 = 2080;
        v15 = "[VCSessionParticipantLocal setOneToOneModeEnabled:]_block_invoke";
        v16 = 1024;
        v17 = 1287;
        v5 = " [%s] %s:%d We are already in the correct OneToOne mode";
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, v5, &v12, 0x1Cu);
      }
    }
  }

  else
  {
    *(v2 + 408) = v1;
    *(*(a1 + 32) + 576) = [*(*(a1 + 32) + 568) objectAtIndexedSubscript:*(*(a1 + 32) + 408)];
    [*(*(a1 + 32) + 528) setOneToOneModeEnabled:*(a1 + 40)];
    v7 = *(a1 + 40);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v7 == 1)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315650;
          v13 = v9;
          v14 = 2080;
          v15 = "[VCSessionParticipantLocal setOneToOneModeEnabled:]_block_invoke";
          v16 = 1024;
          v17 = 1298;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Switching into oneToOne mode", &v12, 0x1Cu);
        }
      }

      *(*(a1 + 32) + 592) = *(*(a1 + 32) + 1008);
      *(*(a1 + 32) + 596) = *(*(a1 + 32) + 1012);
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v11;
        v14 = 2080;
        v15 = "[VCSessionParticipantLocal setOneToOneModeEnabled:]_block_invoke";
        v16 = 1024;
        v17 = 1304;
        v5 = " [%s] %s:%d Switching out of oneToOne mode";
        goto LABEL_13;
      }
    }
  }
}

- (BOOL)isOneToOneModeEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCSessionParticipantLocal_isOneToOneModeEnabled__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(participantQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stopVideoCaptureClient
{
  if (self->super._videoEnabled)
  {
    [(VCSessionParticipantLocal *)self deregisterForVideoCapture];
  }
}

- (BOOL)setState:(unsigned int)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCSessionParticipantLocal;
  v5 = [(VCSessionParticipant *)&v8 setState:?];
  v6 = v5;
  if (a3 == 1 && v5)
  {
    if (self->_currentUplinkTargetBitrate)
    {
      [(VCSessionParticipantLocal *)self updateUplinkTargetBitrateForStreamGroups];
    }

    if (self->super._videoEnabled)
    {
      [(VCSessionParticipantLocal *)self registerForVideoCapture:self->_currentVideoCaptureFrameRate];
    }
  }

  return v6;
}

- (void)startSystemAudioCapture
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCSessionParticipantLocal startSystemAudioCapture]";
        *&v11[22] = 1024;
        LODWORD(v12) = 1348;
        v6 = " [%s] %s:%d ";
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
      v3 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
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
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCSessionParticipantLocal startSystemAudioCapture]";
        *&v11[22] = 1024;
        LODWORD(v12) = 1348;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        v13 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VCSystemAudioCaptureSession *)self->_systemAudioCaptureSession start:*v11];
  self->_isMixingSystemAudio = 1;
}

- (void)stopSystemAudioCapture
{
  v24 = *MEMORY[0x1E69E9840];
  isMixingSystemAudio = self->_isMixingSystemAudio;
  v4 = objc_opt_class();
  if (isMixingSystemAudio)
  {
    if (v4 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_19;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *v21 = 136315650;
      *&v21[4] = v7;
      *&v21[12] = 2080;
      *&v21[14] = "[VCSessionParticipantLocal stopSystemAudioCapture]";
      *&v21[22] = 1024;
      LODWORD(v22) = 1355;
      v9 = " [%s] %s:%d stopping";
      v10 = v8;
      v11 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_19;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *v21 = 136316162;
      *&v21[4] = v17;
      *&v21[12] = 2080;
      *&v21[14] = "[VCSessionParticipantLocal stopSystemAudioCapture]";
      *&v21[22] = 1024;
      LODWORD(v22) = 1355;
      WORD2(v22) = 2112;
      *(&v22 + 6) = v5;
      HIWORD(v22) = 2048;
      v23 = self;
      v9 = " [%s] %s:%d %@(%p) stopping";
      v10 = v18;
      v11 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v21, v11);
LABEL_19:
    [(VCSystemAudioCaptureSession *)self->_systemAudioCaptureSession stop:*v21];
    goto LABEL_25;
  }

  if (v4 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136315650;
        *&v21[4] = v12;
        *&v21[12] = 2080;
        *&v21[14] = "[VCSessionParticipantLocal stopSystemAudioCapture]";
        *&v21[22] = 1024;
        LODWORD(v22) = 1358;
        v14 = " [%s] %s:%d ignore";
        v15 = v13;
        v16 = 28;
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v21, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136316162;
        *&v21[4] = v19;
        *&v21[12] = 2080;
        *&v21[14] = "[VCSessionParticipantLocal stopSystemAudioCapture]";
        *&v21[22] = 1024;
        LODWORD(v22) = 1358;
        WORD2(v22) = 2112;
        *(&v22 + 6) = v6;
        HIWORD(v22) = 2048;
        v23 = self;
        v14 = " [%s] %s:%d %@(%p) ignore";
        v15 = v20;
        v16 = 48;
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  self->_isMixingSystemAudio = 0;
}

- (void)collectVideoChannelMetrics:(id *)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  VCMediaChannelMetrics_Reset(a3);
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCSessionParticipantLocal_collectVideoChannelMetrics___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

uint64_t __56__VCSessionParticipantLocal_collectVideoChannelMetrics___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 488);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
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

        [*(*(&v8 + 1) + 8 * v6++) collectAndLogChannelMetrics:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)collectAudioChannelMetrics:(id *)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  VCMediaChannelMetrics_Reset(a3);
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCSessionParticipantLocal_collectAudioChannelMetrics___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

uint64_t __56__VCSessionParticipantLocal_collectAudioChannelMetrics___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 480);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * i) collectAndLogChannelMetrics:*(a1 + 40)];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  [objc_msgSend(*(a1 + 32) "systemAudioGroup")];
  return [objc_msgSend(*(a1 + 32) streamGroupWithID:{1936290409), "collectAndLogChannelMetrics:", *(a1 + 40)}];
}

- (__CFString)activeStreamKeys
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:{objc_msgSend(*(*(&v12 + 1) + 8 * v8++), "activeStreamKeys")}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  v9 = [v3 componentsJoinedByString:{@", "}];

  return v9;
}

- (unsigned)calculateUplinkTotalBitrateForMediaStreams:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v16;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(a3);
      }

      enableRedundancy = self->_enableRedundancy;
      v11 = [objc_msgSend(*(*(&v15 + 1) + 8 * i) "defaultStreamConfig")];
      if (enableRedundancy)
      {
        v12 = [v11 repairedMaxNetworkBitrate];
      }

      else
      {
        v12 = [v11 maxNetworkBitrate];
      }

      v7 += v12;
    }

    v6 = [a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
  }

  while (v6);
  return v7;
}

- (id)applyMicReconfigurationForCameraTransition
{
  v53 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._participantQueue);
  v33 = 0;
  v3 = [(VCSessionParticipant *)self dispatchedIsAnyCameraMediaTypeEnabled];
  v4 = [(VCSessionParticipant *)self operatingMode];
  if (self->super._oneToOneModeEnabled)
  {
    if (self->super._audioIO)
    {
      v5 = [(VCSessionParticipantLocal *)self reconfigureAudioIOForMode:v4 error:&v33];
      if (v33 || !v5)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_14;
          }

          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          *buf = 136316162;
          v35 = v7;
          v36 = 2080;
          v37 = "[VCSessionParticipantLocal applyMicReconfigurationForCameraTransition]";
          v38 = 1024;
          v39 = 1424;
          v40 = 1024;
          *v41 = v3;
          *&v41[4] = 1024;
          *&v41[6] = v4;
          v9 = " [%s] %s:%d Failed to update videoEnabled=%d on the audio stream with operatingMode=%d - stopping call";
          v10 = v8;
          v11 = 40;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v6 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
          }

          else
          {
            v6 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_14;
          }

          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          *buf = 136316674;
          v35 = v12;
          v36 = 2080;
          v37 = "[VCSessionParticipantLocal applyMicReconfigurationForCameraTransition]";
          v38 = 1024;
          v39 = 1424;
          v40 = 2112;
          *v41 = v6;
          *&v41[8] = 2048;
          *&v41[10] = self;
          *&v41[18] = 1024;
          *v42 = v3;
          *&v42[4] = 1024;
          LODWORD(v43) = v4;
          v9 = " [%s] %s:%d %@(%p) Failed to update videoEnabled=%d on the audio stream with operatingMode=%d - stopping call";
          v10 = v13;
          v11 = 60;
        }

        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
LABEL_14:
        [(VCSessionParticipantLocal *)self stop];
      }
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  micStreamGroups = self->super._micStreamGroups;
  v15 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(micStreamGroups);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        [v19 setCurrentDTXEnabled:!v3];
        [v19 setDeviceRole:self->super._deviceRole operatingMode:v4];
      }

      v16 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v16);
  }

  [(VCSessionParticipantLocal *)self updateAudioSpectrumState];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = [VCStringUtils cStringFromOperatingMode:v4];
        oneToOneModeEnabled = self->super._oneToOneModeEnabled;
        *buf = 136316674;
        v35 = v21;
        v36 = 2080;
        v37 = "[VCSessionParticipantLocal applyMicReconfigurationForCameraTransition]";
        v38 = 1024;
        v39 = 1436;
        v40 = 1024;
        *v41 = v3;
        *&v41[4] = 2080;
        *&v41[6] = v23;
        *&v41[14] = 1024;
        *&v41[16] = v4;
        *v42 = 1024;
        *&v42[2] = oneToOneModeEnabled;
        v25 = " [%s] %s:%d isAnyCameraMediaTypeEnabled=%{BOOL}d operatingMode=%s [%u] oneToOneModeEnabled=%{BOOL}d";
        v26 = v22;
        v27 = 56;
LABEL_32:
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v30 = [VCStringUtils cStringFromOperatingMode:v4];
        v31 = self->super._oneToOneModeEnabled;
        *buf = 136317186;
        v35 = v28;
        v36 = 2080;
        v37 = "[VCSessionParticipantLocal applyMicReconfigurationForCameraTransition]";
        v38 = 1024;
        v39 = 1436;
        v40 = 2112;
        *v41 = v20;
        *&v41[8] = 2048;
        *&v41[10] = self;
        *&v41[18] = 1024;
        *v42 = v3;
        *&v42[4] = 2080;
        v43 = v30;
        v44 = 1024;
        v45 = v4;
        v46 = 1024;
        v47 = v31;
        v25 = " [%s] %s:%d %@(%p) isAnyCameraMediaTypeEnabled=%{BOOL}d operatingMode=%s [%u] oneToOneModeEnabled=%{BOOL}d";
        v26 = v29;
        v27 = 76;
        goto LABEL_32;
      }
    }
  }

  return v33;
}

- (void)updateMediaSettingsWithConfig:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VCSessionParticipantLocal_updateMediaSettingsWithConfig___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

uint64_t __59__VCSessionParticipantLocal_updateMediaSettingsWithConfig___block_invoke(uint64_t result)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(*(result + 32) + 168))
  {
    v1 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v1 + 40);
        *buf = 136315906;
        v21 = v2;
        v22 = 2080;
        v23 = "[VCSessionParticipantLocal updateMediaSettingsWithConfig:]_block_invoke";
        v24 = 1024;
        v25 = 1443;
        v26 = 2112;
        v27 = v4;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updating local media settings with config :%@", buf, 0x26u);
      }
    }

    *(*(v1 + 32) + 373) = [*(v1 + 40) audioEnabled];
    *(*(v1 + 32) + 376) = [*(v1 + 40) audioPaused];
    [*(v1 + 32) syncMicMediaStateFromLegacyState];
    v5 = [*(v1 + 40) videoEnabled];
    v6 = *(v1 + 32);
    if (v6[374] == v5)
    {
      v7 = [*(v1 + 32) dispatchedIsAnyCameraMediaTypeEnabled];
      v8 = v7 ^ +[VCSessionParticipantLocal isCameraEnabledWithMediaStates:](VCSessionParticipantLocal, "isCameraEnabledWithMediaStates:", [*(v1 + 40) mediaStates]);
    }

    else
    {
      [v6 applyVideoEnabledSetting:{objc_msgSend(*(v1 + 40), "videoEnabled")}];
      v8 = 0;
    }

    v9 = [*(v1 + 40) screenEnabled];
    v10 = *(v1 + 32);
    if (v10[375] != v9)
    {
      [v10 applyScreenEnabledSetting:{objc_msgSend(*(v1 + 40), "screenEnabled")}];
    }

    *(*(v1 + 32) + 377) = [*(v1 + 40) videoPaused];
    [*(v1 + 32) syncCameraMediaStateFromLegacyState];
    [*(v1 + 40) volume];
    [*(v1 + 32) setVolume:?];
    [*(v1 + 32) setMuted:{objc_msgSend(*(v1 + 40), "audioMuted")}];
    [*(v1 + 32) updateMediaStatesWithConfig:*(v1 + 40)];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = *(*(v1 + 32) + 480);
    result = [v11 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (result)
    {
      v12 = result;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v14++) updateOperatingMode:{objc_msgSend(*(v1 + 32), "operatingMode")}];
        }

        while (v12 != v14);
        result = [v11 countByEnumeratingWithState:&v16 objects:v15 count:16];
        v12 = result;
      }

      while (result);
    }

    if (v8)
    {
      return [*(v1 + 32) applyMicReconfigurationForCameraTransition];
    }
  }

  return result;
}

- (tagVCAudioIOConfiguration)audioIOConfigWithDeviceRole:(SEL)a3 operatingMode:(int)a4
{
  v9 = [VCAudioStream audioIODirectionWithMediaStreamDirection:self->super._direction];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&retstr->var4 = v10;
  *&retstr->var8 = v10;
  *&retstr->var12 = v10;
  *&retstr->var14 = v10;
  *&retstr->var16 = v10;
  *&retstr->var19.delegate = v10;
  *&retstr->var20.clientContext = v10;
  *&retstr->var20.audioMachineLearningCoordinator = v10;
  *&retstr->var21 = v10;
  *&retstr->var24 = v10;
  *&retstr->var26 = v10;
  retstr->var0 = self->super._transportSessionID;
  retstr->var1 = 0;
  retstr->var2 = a5;
  retstr->var3 = a4;
  if (self->super._shouldConfigureMicrophoneForThirdPartyCall)
  {
    v11 = 6;
  }

  else
  {
    v11 = 0;
  }

  retstr->var4 = v11;
  retstr->var5 = v9;
  processId = self->super._processId;
  retstr->var6 = 0;
  preferredIOSampleRate = self->super._preferredIOSampleRate;
  retstr->var7 = self;
  retstr->var8 = processId;
  retstr->var9 = preferredIOSampleRate;
  retstr->var10 = self->super._preferredIOSamplesPerFrame;
  retstr->var11 = 0;
  retstr->var12 = 0;
  retstr->var13 = 1;
  retstr->var14 = 0;
  retstr->var15 = 0;
  *&retstr->var17 = 0;
  retstr->var16 = 0;
  *&retstr->var19.delegate = 0u;
  *&retstr->var19.clientContext = v10;
  *&retstr->var19.clientContext = 0u;
  *&retstr->var19.audioMachineLearningCoordinator = v10;
  *&retstr->var19.audioMachineLearningCoordinator = 0u;
  *&retstr->var20.delegate = v10;
  retstr->var20.delegate = 0;
  retstr->var20.clientCallback = _VCSessionParticipantLocal_ProcessAudioSamples;
  retstr->var20.clientContext = self;
  *&retstr->var20.captionsToken = 0u;
  *&retstr->var20.injector = 0u;
  *&retstr->var22 = 0;
  retstr->var24 = 0;
  retstr->var25 = 0;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
  retstr->var26 = result;
  retstr->var27 = 0;
  return result;
}

- (BOOL)configureAudioIOWithDeviceRole:(int)a3 operatingMode:(int)a4
{
  v75 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v7;
  v56 = v7;
  v53 = v7;
  v54 = v7;
  v51 = v7;
  v52 = v7;
  v49 = v7;
  v50 = v7;
  v47 = v7;
  v48 = v7;
  v45 = v7;
  v46 = v7;
  v43 = v7;
  v44 = v7;
  v42 = v7;
  if (self)
  {
    [(VCSessionParticipantLocal *)self audioIOConfigWithDeviceRole:*&a3 operatingMode:*&a4, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56];
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
  }

  audioIO = self->super._audioIO;
  if (audioIO)
  {
    if (![(VCAudioIO *)audioIO reconfigureWithConfig:&v42])
    {
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_44;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        v34 = self->super._audioIO;
        *buf = 136317186;
        v58 = v32;
        v59 = 2080;
        v60 = "[VCSessionParticipantLocal configureAudioIOWithDeviceRole:operatingMode:]";
        v61 = 1024;
        v62 = 1510;
        v63 = 2112;
        v64 = v9;
        v65 = 2048;
        *v66 = self;
        *&v66[8] = 2048;
        v67 = v34;
        *v68 = 1024;
        *&v68[2] = a4;
        v69 = 1024;
        v70 = a3;
        v71 = 1024;
        v72 = BYTE4(v43);
        v30 = " [%s] %s:%d %@(%p) Failed to reconfigure: audioIO=%p operatingMode=%d deviceRole=%d direction=%d";
        v31 = v33;
        goto LABEL_42;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_44;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v29 = self->super._audioIO;
      *buf = 136316674;
      v58 = v27;
      v59 = 2080;
      v60 = "[VCSessionParticipantLocal configureAudioIOWithDeviceRole:operatingMode:]";
      v61 = 1024;
      v62 = 1510;
      v63 = 2048;
      v64 = v29;
      v65 = 1024;
      *v66 = a4;
      *&v66[4] = 1024;
      *&v66[6] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = BYTE4(v43);
      v30 = " [%s] %s:%d Failed to reconfigure: audioIO=%p operatingMode=%d deviceRole=%d direction=%d";
      v31 = v28;
      goto LABEL_37;
    }
  }

  else
  {
    v10 = [[VCAudioIO alloc] initWithConfiguration:&v42];
    self->super._audioIO = v10;
    if (!v10)
    {
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v26 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
        }

        else
        {
          v26 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_44;
        }

        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        v41 = self->super._audioIO;
        *buf = 136317186;
        v58 = v39;
        v59 = 2080;
        v60 = "[VCSessionParticipantLocal configureAudioIOWithDeviceRole:operatingMode:]";
        v61 = 1024;
        v62 = 1505;
        v63 = 2112;
        v64 = v26;
        v65 = 2048;
        *v66 = self;
        *&v66[8] = 2048;
        v67 = v41;
        *v68 = 1024;
        *&v68[2] = 6;
        v69 = 1024;
        v70 = a3;
        v71 = 1024;
        v72 = BYTE4(v43);
        v30 = " [%s] %s:%d %@(%p) Failed created audioIO=%p operatingMode:%d deviceRole:%d direction:%d";
        v31 = v40;
LABEL_42:
        v38 = 76;
        goto LABEL_43;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_44;
      }

      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v37 = self->super._audioIO;
      *buf = 136316674;
      v58 = v35;
      v59 = 2080;
      v60 = "[VCSessionParticipantLocal configureAudioIOWithDeviceRole:operatingMode:]";
      v61 = 1024;
      v62 = 1505;
      v63 = 2048;
      v64 = v37;
      v65 = 1024;
      *v66 = 6;
      *&v66[4] = 1024;
      *&v66[6] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = BYTE4(v43);
      v30 = " [%s] %s:%d Failed created audioIO=%p operatingMode:%d deviceRole:%d direction:%d";
      v31 = v36;
LABEL_37:
      v38 = 56;
LABEL_43:
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v38);
LABEL_44:

      result = 0;
      self->super._audioIO = 0;
      return result;
    }

    [(VCAudioIO *)v10 setIsGKVoiceChat:self->super._isGKVoiceChat];
    [(VCAudioIO *)self->super._audioIO setMuted:[(VCSessionParticipant *)self isMuted]];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v14 = self->super._audioIO;
    v15 = BYTE4(v43);
    v16 = [(VCSessionParticipant *)self isMuted];
    *buf = 136316930;
    v58 = v12;
    v59 = 2080;
    v60 = "[VCSessionParticipantLocal configureAudioIOWithDeviceRole:operatingMode:]";
    v61 = 1024;
    v62 = 1512;
    v63 = 2048;
    v64 = v14;
    v65 = 1024;
    *v66 = a4;
    *&v66[4] = 1024;
    *&v66[6] = a3;
    LOWORD(v67) = 1024;
    *(&v67 + 2) = v15;
    HIWORD(v67) = 1024;
    *v68 = v16;
    v17 = " [%s] %s:%d configured audioIO=%p operatingMode=%d deviceRole=%d direction=%d isMuted=%d";
    v18 = v13;
    v19 = 62;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v22 = self->super._audioIO;
    v23 = BYTE4(v43);
    v24 = [(VCSessionParticipant *)self isMuted];
    *buf = 136317442;
    v58 = v20;
    v59 = 2080;
    v60 = "[VCSessionParticipantLocal configureAudioIOWithDeviceRole:operatingMode:]";
    v61 = 1024;
    v62 = 1512;
    v63 = 2112;
    v64 = v11;
    v65 = 2048;
    *v66 = self;
    *&v66[8] = 2048;
    v67 = v22;
    *v68 = 1024;
    *&v68[2] = a4;
    v69 = 1024;
    v70 = a3;
    v71 = 1024;
    v72 = v23;
    v73 = 1024;
    v74 = v24;
    v17 = " [%s] %s:%d %@(%p) configured audioIO=%p operatingMode=%d deviceRole=%d direction=%d isMuted=%d";
    v18 = v21;
    v19 = 82;
  }

  _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
  return 1;
}

- (void)setMediaSuggestion:(VCRateControlMediaSuggestion *)a3
{
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_oneToOneSettings.streamInfo objectForKeyedSubscript:{&unk_1F579A200), "stream"}];

  [v4 setMediaSuggestion:a3];
}

- (unsigned)currentUplinkTotalBitrate
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v5 += [*(*(&v10 + 1) + 8 * i) currentUplinkTotalBitrate];
    }

    v4 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  }

  while (v4);
  return v5;
}

- (void)setCellularUniqueTag:(unsigned int)a3
{
  v3 = *&a3;
  v14 = *MEMORY[0x1E69E9840];
  self->super._cellularUniqueTag = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  micStreamGroups = self->super._micStreamGroups;
  v5 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(micStreamGroups);
        }

        [*(*(&v10 + 1) + 8 * i) setCellularUniqueTag:v3];
      }

      v6 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (BOOL)isActiveMediaType:(unsigned int)a3
{
  screenEnabled = 1;
  if (a3 > 8)
  {
    goto LABEL_9;
  }

  if (((1 << a3) & 0x170) == 0)
  {
    if (((1 << a3) & 0xC) != 0)
    {
      screenEnabled = self->super._screenEnabled;
      return screenEnabled & 1;
    }

    if (a3 == 1)
    {
      if (self->super._videoEnabled)
      {
        v4 = &OBJC_IVAR___VCSessionParticipant__videoPaused;
LABEL_12:
        screenEnabled = *(&self->super.super.super.isa + *v4) ^ 1;
        return screenEnabled & 1;
      }

      goto LABEL_13;
    }

LABEL_9:
    if (a3)
    {
      return screenEnabled & 1;
    }

    if (self->super._audioEnabled)
    {
      v4 = &OBJC_IVAR___VCSessionParticipant__audioPaused;
      goto LABEL_12;
    }

LABEL_13:
    screenEnabled = 0;
    return screenEnabled & 1;
  }

  screenEnabled = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:")), "mediaState"}] == 1;
  return screenEnabled & 1;
}

- (BOOL)isEnabledMediaType:(unsigned int)a3
{
  if (a3 > 8)
  {
    goto LABEL_8;
  }

  if (((1 << a3) & 0x170) == 0)
  {
    if (((1 << a3) & 0xC) != 0)
    {
      v4 = &OBJC_IVAR___VCSessionParticipant__screenEnabled;
LABEL_10:
      v3 = *(&self->super.super.super.isa + *v4);
      return v3 & 1;
    }

    if (a3 == 1)
    {
      v4 = &OBJC_IVAR___VCSessionParticipant__videoEnabled;
      goto LABEL_10;
    }

LABEL_8:
    if (a3)
    {
      v3 = 0;
      return v3 & 1;
    }

    v4 = &OBJC_IVAR___VCSessionParticipant__audioEnabled;
    goto LABEL_10;
  }

  v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:")), "mediaState"}] != 0;
  return v3 & 1;
}

- (BOOL)nativeParticipantSupportsStreamGroupID:(unsigned int)a3
{
  result = 1;
  if (a3 <= 1835623281)
  {
    if (a3 == 1667329381)
    {
      return result;
    }

    v4 = 1667330164;
    goto LABEL_7;
  }

  if (a3 != 1835623282 && a3 != 1935897189)
  {
    v4 = 1937339233;
LABEL_7:
    if (a3 != v4)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)wolfParticipantSupportsStreamGroupID:(unsigned int)a3
{
  result = 1;
  if (a3 > 1835623281)
  {
    if (a3 != 1835623282 && a3 != 1935897189)
    {
      v4 = 1937339233;
LABEL_8:
      if (a3 != v4)
      {
        return 0;
      }
    }
  }

  else if (a3 != 1650745716 && a3 != 1667329381)
  {
    v4 = 1718909044;
    goto LABEL_8;
  }

  return result;
}

- (BOOL)remoteParticipantsSupportStreamGroupID:(unsigned int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 - 1684108337 < 5 || a3 - 1986618417 < 4 || a3 == 1936290409)
  {
LABEL_9:
    LOBYTE(v8) = 1;
  }

  else
  {
    v5 = *&a3;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    remoteParticipants = self->_remoteParticipants;
    v8 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(remoteParticipants);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) capabilities];
          if (HIDWORD(v12) == 2)
          {
            if ([(VCSessionParticipantLocal *)self wolfParticipantSupportsStreamGroupID:v5])
            {
              goto LABEL_9;
            }
          }

          else if (HIDWORD(v12) == 1)
          {
            if ([(VCSessionParticipantLocal *)self webParticipantSupportsStreamGroupID:v5])
            {
              goto LABEL_9;
            }
          }

          else if (!HIDWORD(v12) && [(VCSessionParticipantLocal *)self nativeParticipantSupportsStreamGroupID:v5])
          {
            goto LABEL_9;
          }
        }

        v9 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v15 objects:v14 count:16];
        LOBYTE(v8) = 0;
      }

      while (v9);
    }
  }

  return v8;
}

- (BOOL)isOneToOneStreamGroup:(unsigned int)a3
{
  result = 1;
  if (a3 > 1718909043)
  {
    if (a3 > 1936290408)
    {
      if (a3 - 1986618417 < 4 || a3 == 1936290409)
      {
        return 0;
      }

      v8 = 1937339233;
    }

    else
    {
      if (a3 == 1718909044)
      {
LABEL_16:
        v9 = [(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedResultsForGroupID:v3];

        return [v9 isSupported];
      }

      if (a3 == 1835623287)
      {
        return 0;
      }

      v8 = 1935897189;
    }

    if (a3 == v8)
    {
      oneToOneConfig = self->super._oneToOneConfig;

      return [(VCSessionParticipantOneToOneConfig *)oneToOneConfig negotiatedScreenEnabled];
    }

    return result;
  }

  if (a3 > 1667330163)
  {
    if (a3 - 1684108337 < 5)
    {
      return 0;
    }

    v7 = 28788;
LABEL_12:
    if (a3 != (v7 | 0x63610000))
    {
      return result;
    }

    return 0;
  }

  if (a3 == 1650745716)
  {
    goto LABEL_16;
  }

  if (a3 != 1667329381)
  {
    v7 = 28023;
    goto LABEL_12;
  }

  v11 = self->super._oneToOneConfig;

  return [(VCSessionParticipantOneToOneConfig *)v11 negotiatedVideoEnabled];
}

- (BOOL)isStreamGroupActive:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->super._oneToOneModeEnabled || (LODWORD(v5) = -[VCSessionParticipantLocal isOneToOneStreamGroup:](self, "isOneToOneStreamGroup:", [a3 streamGroupID]), v5))
  {
    v6 = [a3 streamGroupID];
    v7 = [VCSessionParticipant mediaTypesFromStreamGroupID:v6];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v5)
    {
      v8 = v5;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if (-[VCSessionParticipantLocal isActiveMediaType:](self, "isActiveMediaType:", [*(*(&v13 + 1) + 8 * i) unsignedIntValue]))
          {
            LOBYTE(v5) = [(VCSessionParticipantLocal *)self remoteParticipantsSupportStreamGroupID:v6];
            return v5;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
        LOBYTE(v5) = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return v5;
}

- (void)setAlwaysHDCaptureScreenEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VCSessionParticipantLocal_setAlwaysHDCaptureScreenEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  v5 = a3;
  block[4] = self;
  dispatch_sync(participantQueue, block);
}

void __61__VCSessionParticipantLocal_setAlwaysHDCaptureScreenEnabled___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v7 = 136315906;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCSessionParticipantLocal setAlwaysHDCaptureScreenEnabled:]_block_invoke";
      v11 = 1024;
      v12 = 1714;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d alwaysHDCaptureScreenEnabled=%d", &v7, 0x22u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (*(v5 + 1152) != v6)
  {
    *(v5 + 1152) = v6;
    [objc_msgSend(*(a1 + 32) "screenGroup")];
  }
}

- (BOOL)applyCachedMediaStreams:(id)a3 toMultiwayConfig:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [a4 qualityIndex];
        if (v11 == [v10 qualityIndex])
        {
          v12 = [a4 hasRepairedStreamID];
          if (v12 == [v10 hasRepairedStreamID])
          {
            [a4 setSsrc:{objc_msgSend(v10, "ssrc")}];
            [a4 setIdsStreamID:{objc_msgSend(v10, "streamID")}];
            if ([a4 hasV2StreamID])
            {
              [a4 setV2StreamID:{objc_msgSend(v10, "v2StreamID")}];
            }

            if ([a4 hasRepairedStreamID])
            {
              [a4 setRepairedStreamID:{objc_msgSend(v10, "repairedStreamID")}];
            }

            LOBYTE(v6) = 1;
            return v6;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (BOOL)applyCachedStreamGroupMediaStreams:(id)a3 toMultiwayConfig:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v19 = 0;
  v20 = *v28;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v28 != v20)
      {
        objc_enumerationMutation(a3);
      }

      v8 = *(*(&v27 + 1) + 8 * i);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = [v8 streamConfigs];
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        while (2)
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * j);
            v15 = [a4 qualityIndex];
            if (v15 == [v14 qualityIndex])
            {
              v16 = [a4 hasRepairedStreamID];
              if (v16 != ([v14 repairedStreamID] == 0))
              {
                [a4 setSsrc:{objc_msgSend(v14, "ssrc")}];
                [a4 setIdsStreamID:{objc_msgSend(v14, "streamID")}];
                if ([a4 hasV2StreamID])
                {
                  [a4 setV2StreamID:{objc_msgSend(v14, "v2StreamID")}];
                }

                if ([v8 mediaType] == 1986618469)
                {
                  [a4 setParentStreamID:{objc_msgSend(v14, "parentStreamID")}];
                }

                if ([a4 hasRepairedStreamID])
                {
                  [a4 setRepairedStreamID:{objc_msgSend(v14, "repairedStreamID")}];
                }

                v19 = 1;
                goto LABEL_23;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v21 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
      ;
    }

    v6 = [a3 countByEnumeratingWithState:&v27 objects:v26 count:16];
  }

  while (v6);
  return v19;
}

- (BOOL)setupVideoStreamsWithStreamConfigurations:(id)a3 mediaNegotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5
{
  v8 = [(VCSessionParticipantLocal *)self applyCachedMediaStreamsWithStreamConfigurations:a3 mediaNegotiatorConfig:a4];
  if (v8)
  {

    LOBYTE(v8) = [(VCSessionParticipantLocal *)self setupVideoStreamsWithStreamConfiguration:a3 streamGroupConfiguration:a5];
  }

  return v8;
}

- (BOOL)setupCaptionsStreamsWithStreamConfigurations:(id)a3 mediaNegotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5
{
  v8 = [(VCSessionParticipantLocal *)self applyCachedMediaStreamsWithStreamConfigurations:a3 mediaNegotiatorConfig:a4];
  if (v8)
  {

    LOBYTE(v8) = [(VCSessionParticipantLocal *)self setupCaptionsStreamsWithStreamConfiguration:a3 streamGroupConfiguration:a5];
  }

  return v8;
}

- (BOOL)applyCachedMediaStreamsWithStreamConfigurations:(id)a3 mediaNegotiatorConfig:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a4 || (v38 = 0u, v39 = 0u, v36 = 0u, v37 = 0u, (v7 = [a3 countByEnumeratingWithState:&v36 objects:v35 count:16]) == 0))
  {
    LOBYTE(v17) = 1;
    return v17;
  }

  v8 = v7;
  v9 = *v37;
  v24 = *v37;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v37 != v9)
    {
      objc_enumerationMutation(a3);
    }

    v11 = *(*(&v36 + 1) + 8 * v10);
    if (!-[VCSessionParticipantLocal applyCachedMediaStreams:toMultiwayConfig:](self, "applyCachedMediaStreams:toMultiwayConfig:", [a4 multiwayVideoStreams], objc_msgSend(v11, "multiwayConfig")))
    {
      break;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [objc_msgSend(v11 "multiwayConfig")];
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
LABEL_10:
      v16 = 0;
      while (1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = -[VCSessionParticipantLocal applyCachedMediaStreams:toMultiwayConfig:](self, "applyCachedMediaStreams:toMultiwayConfig:", [a4 multiwayVideoStreams], *(*(&v31 + 1) + 8 * v16));
        if (!v17)
        {
          return v17;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v31 objects:v30 count:16];
          if (v14)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

LABEL_26:
    ++v10;
    v9 = v24;
    if (v10 == v8)
    {
      v8 = [a3 countByEnumeratingWithState:&v36 objects:v35 count:16];
      LOBYTE(v17) = 1;
      if (v8)
      {
        goto LABEL_4;
      }

      return v17;
    }
  }

  if (-[VCSessionParticipantLocal applyCachedStreamGroupMediaStreams:toMultiwayConfig:](self, "applyCachedStreamGroupMediaStreams:toMultiwayConfig:", [a4 streamGroupConfigs], objc_msgSend(v11, "multiwayConfig")))
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [objc_msgSend(v11 "multiwayConfig")];
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
LABEL_20:
      v22 = 0;
      while (1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v17 = -[VCSessionParticipantLocal applyCachedStreamGroupMediaStreams:toMultiwayConfig:](self, "applyCachedStreamGroupMediaStreams:toMultiwayConfig:", [a4 streamGroupConfigs], *(*(&v26 + 1) + 8 * v22));
        if (!v17)
        {
          return v17;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v26 objects:v25 count:16];
          if (v20)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }
      }
    }

    goto LABEL_26;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v17 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v17)
    {
      return v17;
    }

    [VCSessionParticipantLocal applyCachedMediaStreamsWithStreamConfigurations:mediaNegotiatorConfig:];
  }

  LOBYTE(v17) = 0;
  return v17;
}

- (BOOL)setupAudioStreamsWithStreamConfigurations:(id)a3 mediaNegotiatorConfig:(id)a4 streamGroupConfiguration:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v14)
      {
        return v14;
      }

      [VCSessionParticipantLocal setupAudioStreamsWithStreamConfigurations:mediaNegotiatorConfig:streamGroupConfiguration:];
    }

LABEL_19:
    LOBYTE(v14) = 0;
    return v14;
  }

  if (a4 && (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, (v9 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16]) != 0))
  {
    v10 = v9;
    v11 = *v18;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(a3);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      if (!-[VCSessionParticipantLocal applyCachedMediaStreams:toMultiwayConfig:](self, "applyCachedMediaStreams:toMultiwayConfig:", [a4 multiwayAudioStreams], objc_msgSend(v13, "multiwayConfig")) && !-[VCSessionParticipantLocal applyCachedStreamGroupMediaStreams:toMultiwayConfig:](self, "applyCachedStreamGroupMediaStreams:toMultiwayConfig:", objc_msgSend(a4, "streamGroupConfigs"), objc_msgSend(v13, "multiwayConfig")))
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_19;
    }

    VRTraceErrorLogLevelToCSTR();
    v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [VCSessionParticipantLocal setupAudioStreamsWithStreamConfigurations:mediaNegotiatorConfig:streamGroupConfiguration:];
      goto LABEL_19;
    }
  }

  else
  {
LABEL_12:
    LOBYTE(v14) = [(VCSessionParticipantLocal *)self setupAudioStreamsWithStreamConfiguration:a3 streamGroupConfiguration:a5];
  }

  return v14;
}

- (id)newVideoSendGroupConfigWithStreamGroupID:(unsigned int)a3 streamGroupConfiguration:(id)a4
{
  v5 = *&a3;
  v7 = objc_alloc_init(VCVideoStreamSendGroupConfig);
  if (!v7)
  {
    [VCSessionParticipantLocal newVideoSendGroupConfigWithStreamGroupID:streamGroupConfiguration:];
LABEL_21:

    return 0;
  }

  v8 = [(VCSessionParticipantLocal *)self captureSourceIDFromStreamGroupConfig:a4];
  v9 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  if (!v9)
  {
    [VCSessionParticipantLocal newVideoSendGroupConfigWithStreamGroupID:v5 streamGroupConfiguration:?];
    goto LABEL_21;
  }

  v10 = v9;
  [(VCMediaStreamGroupConfig *)v7 setStreamGroupID:v5];
  [(VCMediaStreamGroupConfig *)v7 setMediaType:CMFormatDescriptionGetMediaType(v10)];
  [(VCMediaStreamGroupConfig *)v7 setMediaSubtype:CMFormatDescriptionGetMediaSubType(v10)];
  CFRelease(v10);
  -[VCMediaStreamGroupConfig setStreamToken:](v7, "setStreamToken:", [-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5)), "unsignedIntValue"}]);
  [(VCMediaStreamGroupConfig *)v7 setDelegate:self];
  [(VCMediaStreamGroupConfig *)v7 setDelegateQueue:self->super._participantQueue];
  [(VCMediaStreamGroupConfig *)v7 setParticipantUUID:self->super._uuid];
  [(VCVideoStreamSendGroupConfig *)v7 setCaptureSource:v8];
  [(VCMediaStreamGroupConfig *)v7 setIdsParticipantID:self->super._idsParticipantID];
  [(VCMediaStreamGroupConfig *)v7 setSessionUUID:self->super._sessionUUID];
  [(VCMediaStreamSendGroupConfig *)v7 setShouldSynchronizeWithSourceRTPTimestamps:v5 != 1667329399];
  if ([a4 objectForKeyedSubscript:@"streamGroupSyncGroupID"])
  {
    -[VCMediaStreamGroupConfig setSyncGroupID:](v7, "setSyncGroupID:", [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupSyncGroupID", "unsignedIntValue"}]);
  }

  [(VCMediaStreamGroupConfig *)v7 setNetworkFeedbackController:self->super._networkFeedbackController];
  [(VCMediaStreamGroupConfig *)v7 setExperimentManager:self->super._experimentManager];
  if ([a4 objectForKeyedSubscript:@"streamGroupMode"])
  {
    v11 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupMode", "unsignedIntValue"}];
  }

  else
  {
    v11 = 0;
  }

  [(VCMediaStreamSendGroupConfig *)v7 setStreamGroupMode:v11];
  if ([a4 objectForKeyedSubscript:@"streamGroupRedundancyMode"])
  {
    v12 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupRedundancyMode", "unsignedIntValue"}];
  }

  else
  {
    v12 = 6;
  }

  [(VCMediaStreamSendGroupConfig *)v7 setRedundancyMode:v12];
  if ([a4 objectForKeyedSubscript:@"streamGroupRedundancyPercent"])
  {
    v13 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupRedundancyPercent", "unsignedIntValue"}];
  }

  else
  {
    v13 = 100;
  }

  [(VCMediaStreamSendGroupConfig *)v7 setRedundancyPercentage:v13];
  if ([a4 objectForKeyedSubscript:@"streamGroupRedundancyControllerEnabled"])
  {
    v14 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupRedundancyControllerEnabled", "BOOLValue"}];
  }

  else
  {
    v14 = 0;
  }

  [(VCMediaStreamSendGroupConfig *)v7 setStreamGroupRedundancyControlEnabled:v14];
  [(VCMediaStreamSendGroupConfig *)v7 setStatisticsCollector:self->super._statisticsCollector];
  [(VCVideoStreamSendGroupConfig *)v7 setShouldSynchronizeSystemAudioStartWithAVCScreenCapture:self->super._shouldSynchronizeSystemAudioStartWithAVCScreenCapture];
  return v7;
}

- (id)newAudioSendGroupConfigWithStreamGroupID:(unsigned int)a3 streamGroupConfiguration:(id)a4
{
  v5 = *&a3;
  v7 = objc_alloc_init(VCAudioStreamSendGroupConfig);
  if (!v7)
  {
    [VCSessionParticipantLocal newAudioSendGroupConfigWithStreamGroupID:streamGroupConfiguration:];
LABEL_31:

    return 0;
  }

  v8 = [(VCSessionParticipantLocal *)self captureSourceIDFromStreamGroupConfig:a4];
  if (v5 == 1667330164)
  {
    v9 = [(VCSessionParticipantLocal *)self getCaptionsFormatDescription];
  }

  else
  {
    v9 = [(VCSessionParticipantLocal *)self getAudioFormatDescriptionForStreamGroupID:v5];
  }

  v10 = v9;
  if (!v9)
  {
    [VCSessionParticipantLocal newAudioSendGroupConfigWithStreamGroupID:v5 streamGroupConfiguration:?];
    goto LABEL_31;
  }

  [(VCMediaStreamGroupConfig *)v7 setMediaType:CMFormatDescriptionGetMediaType(v9)];
  [(VCMediaStreamGroupConfig *)v7 setMediaSubtype:CMFormatDescriptionGetMediaSubType(v10)];
  CFRelease(v10);
  [(VCMediaStreamGroupConfig *)v7 setStreamGroupID:v5];
  -[VCMediaStreamGroupConfig setStreamToken:](v7, "setStreamToken:", [-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5)), "unsignedIntValue"}]);
  [(VCMediaStreamGroupConfig *)v7 setDelegate:self];
  [(VCMediaStreamGroupConfig *)v7 setDelegateQueue:self->super._participantQueue];
  [(VCMediaStreamGroupConfig *)v7 setParticipantUUID:self->super._uuid];
  [(VCMediaStreamGroupConfig *)v7 setIdsParticipantID:self->super._idsParticipantID];
  [(VCMediaStreamSendGroupConfig *)v7 setShouldSynchronizeWithSourceRTPTimestamps:v5 == 1937339233];
  [(VCMediaStreamGroupConfig *)v7 setSessionUUID:self->super._sessionUUID];
  if ([a4 objectForKeyedSubscript:@"streamGroupSyncGroupID"])
  {
    v11 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupSyncGroupID", "unsignedIntValue"}];
LABEL_9:
    [(VCMediaStreamGroupConfig *)v7 setSyncGroupID:v11];
    goto LABEL_10;
  }

  v12 = [(VCMediaStreamGroupConfig *)v7 mediaType];
  v11 = 1835623282;
  if (v12 != 1936684398)
  {
    goto LABEL_9;
  }

LABEL_10:
  [(VCMediaStreamGroupConfig *)v7 setCaptureSource:v8];
  if (v5 == 1835623282)
  {
    [(VCAudioStreamSendGroupConfig *)v7 setSystemAudioCaptureSession:self->_systemAudioCaptureSession];
  }

  [(VCMediaStreamGroupConfig *)v7 setNetworkFeedbackController:self->super._networkFeedbackController];
  [(VCMediaStreamGroupConfig *)v7 setExperimentManager:self->super._experimentManager];
  if ([a4 objectForKeyedSubscript:@"streamGroupMode"])
  {
    v13 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupMode", "unsignedIntValue"}];
  }

  else
  {
    v13 = 0;
  }

  [(VCMediaStreamSendGroupConfig *)v7 setStreamGroupMode:v13];
  if ((!self->_isVCMediaQueueScheduledForServerBasedStreams || [(VCMediaStreamSendGroupConfig *)v7 streamGroupMode]== 1) && (v5 == 1835623287 || v5 == 1835623282))
  {
    [(VCAudioStreamSendGroupConfig *)v7 setShouldScheduleMediaQueue:1];
    if (![(VCMediaStreamSendGroupConfig *)v7 streamGroupMode])
    {
      self->_isVCMediaQueueScheduledForServerBasedStreams = 1;
    }
  }

  if ([a4 objectForKeyedSubscript:@"streamGroupRedundancyMode"])
  {
    v14 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupRedundancyMode", "unsignedIntValue"}];
  }

  else
  {
    v14 = 4;
  }

  [(VCMediaStreamSendGroupConfig *)v7 setRedundancyMode:v14];
  if ([a4 objectForKeyedSubscript:@"streamGroupRedundancyControllerEnabled"])
  {
    v15 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupRedundancyControllerEnabled", "BOOLValue"}];
  }

  else
  {
    v15 = 1;
  }

  [(VCMediaStreamSendGroupConfig *)v7 setStreamGroupRedundancyControlEnabled:v15];
  [(VCMediaStreamSendGroupConfig *)v7 setStatisticsCollector:self->super._statisticsCollector];
  v16 = [(VCAudioStreamSendGroupConfig *)v7 audioStreamGroupConfig];
  [(VCAudioStreamGroupCommonConfig *)v16 setAudioSessionID:self->super._transportSessionID];
  [(VCAudioStreamGroupCommonConfig *)v16 setIsMuted:self->super._isMuted];
  [(VCAudioStreamGroupCommonConfig *)v16 setProcessID:self->super._processId];
  [(VCAudioStreamGroupCommonConfig *)v16 setPreferredIOSampleRate:[(VCSessionParticipant *)self preferredIOSampleRateForGroupID:v5]];
  [(VCAudioStreamGroupCommonConfig *)v16 setPreferredIOSamplesPerFrame:[(VCSessionParticipant *)self preferredIOSamplesPerFrameForGroupID:v5]];
  [(VCAudioStreamGroupCommonConfig *)v16 setIsGKVoiceChat:self->super._isGKVoiceChat];
  [(VCAudioStreamGroupCommonConfig *)v16 setPowerSpectrumStreamToken:[(VCMediaStreamGroupConfig *)v7 streamToken]];
  return v7;
}

- (opaqueCMFormatDescription)getAudioFormatDescriptionForStreamGroupID:(unsigned int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&asbd.mFormatID = v3;
  *&asbd.mBytesPerFrame = v3;
  formatDescriptionOut = 0xAAAAAAAAAAAAAAAALL;
  asbd.mSampleRate = NAN;
  Format_Float(&asbd, 1, [(VCSessionParticipant *)self preferredIOSampleRateForGroupID:*&a3]);
  CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
  return formatDescriptionOut;
}

- (opaqueCMFormatDescription)getCaptionsFormatDescription
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x6D657461u, 0x63617074u, 0, v3);
  return v3[0];
}

- (BOOL)setupVideoStreamsWithStreamConfiguration:(id)a3 streamGroupConfiguration:(id)a4
{
  v7 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupID", "unsignedIntValue"}];
  v8 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupMediaType", "unsignedIntValue"}];
  v9 = [(VCSessionParticipantLocal *)self newVideoSendGroupConfigWithStreamGroupID:v7 streamGroupConfiguration:a4];
  if (v9)
  {
    [(VCSessionParticipantLocal *)self setupVideoMediaStreamsWithStreamGroupConfiguration:a3 streamGroupConfig:v9 streamGroupID:v7 mediaType:v8];
    v10 = [[VCVideoStreamSendGroup alloc] initWithConfig:v9];
    if (v10)
    {
      v11 = v10;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._streamGroups, "setObject:forKeyedSubscript:", v10, [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStreamGroup streamToken](v10, "streamToken")}]);
      [(NSMutableArray *)self->super._videoStreamGroups addObject:v11];

      v12 = 1;
    }

    else
    {
      [VCSessionParticipantLocal setupVideoStreamsWithStreamConfiguration:streamGroupConfiguration:];
      v12 = v14;
    }
  }

  else
  {
    [VCSessionParticipantLocal setupVideoStreamsWithStreamConfiguration:streamGroupConfiguration:];
    v12 = v15;
  }

  return v12;
}

- (BOOL)setupCaptionsStreamsWithStreamConfiguration:(id)a3 streamGroupConfiguration:(id)a4
{
  v7 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupID", "unsignedIntValue"}];
  v8 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupMediaType", "unsignedIntValue"}];
  v9 = [(VCSessionParticipantLocal *)self newAudioSendGroupConfigWithStreamGroupID:v7 streamGroupConfiguration:a4];
  if (v9)
  {
    [(VCSessionParticipantLocal *)self setupVideoMediaStreamsWithStreamGroupConfiguration:a3 streamGroupConfig:v9 streamGroupID:v7 mediaType:v8];
    v10 = [[VCCaptionsStreamSendGroup alloc] initWithConfig:v9];
    if (v10)
    {
      v11 = v10;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._streamGroups, "setObject:forKeyedSubscript:", v10, [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStreamGroup streamToken](v10, "streamToken")}]);

      v12 = 1;
    }

    else
    {
      [VCSessionParticipantLocal setupCaptionsStreamsWithStreamConfiguration:streamGroupConfiguration:];
      v12 = v14;
    }
  }

  else
  {
    [VCSessionParticipantLocal setupCaptionsStreamsWithStreamConfiguration:streamGroupConfiguration:];
    v12 = v15;
  }

  return v12;
}

- (BOOL)setupVideoMediaStreamsWithStreamGroupConfiguration:(id)a3 streamGroupConfig:(id)a4 streamGroupID:(unsigned int)a5 mediaType:(unsigned int)a6
{
  v82 = *MEMORY[0x1E69E9840];
  v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a3 count] < 1)
  {
    v10 = 0;
LABEL_30:
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v32 = [a4 mediaStreamInfoArray];
    v33 = [v32 countByEnumeratingWithState:&v59 objects:v58 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = v10;
      v36 = *v60;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(v32);
          }

          [objc_msgSend(objc_msgSend(*(*(&v59 + 1) + 8 * i) "streamConfigs")];
        }

        v34 = [v32 countByEnumeratingWithState:&v59 objects:v58 count:16];
      }

      while (v34);
      v10 = v35;
    }

    goto LABEL_38;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = [objc_msgSend(a3 objectAtIndexedSubscript:{v9), "multiwayConfig"}];
    if (![v12 isTemporalStream] || !objc_msgSend(v12, "parentStreamID"))
    {
      break;
    }

    if ([v12 isTemporalStream])
    {
      if (![v56 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(v12, "parentStreamID"))}])
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCSessionParticipantLocal setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:];
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v44 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
          }

          else
          {
            v44 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v45 = VRTraceErrorLogLevelToCSTR();
            v46 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v47 = [v12 idsStreamID];
              *buf = 136316418;
              v64 = v45;
              v65 = 2080;
              v66 = "[VCSessionParticipantLocal setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:]";
              v67 = 1024;
              v68 = 2084;
              v69 = 2112;
              v70 = v44;
              v71 = 2048;
              *v72 = self;
              *&v72[8] = 1024;
              LODWORD(v73) = v47;
              v42 = " [%s] %s:%d %@(%p) Base temporal layer hasn't been configured for streamID=%d";
              v43 = v46;
              goto LABEL_49;
            }
          }
        }

        goto LABEL_38;
      }

      if (!-[VCSessionParticipantLocal completeStreamSetup:rtpCipherSuite:](self, "completeStreamSetup:rtpCipherSuite:", [a3 objectAtIndexedSubscript:v9], 3))
      {
        [VCSessionParticipantLocal setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:];
        v10 = buf[0];
        goto LABEL_38;
      }

      -[VCSessionParticipantLocal setupEncodingModeWithVideoStreamConfig:](self, "setupEncodingModeWithVideoStreamConfig:", [a3 objectAtIndexedSubscript:v9]);
      v13 = [v56 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(v12, "parentStreamID"))}];
      [v13 addStreamConfig:{objc_msgSend(a3, "objectAtIndexedSubscript:", v9)}];
      v14 = [v56 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(v12, "parentStreamID"))}];
      [v56 setObject:v14 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(v12, "idsStreamID"))}];
      v15 = [objc_msgSend(v13 "streamConfigs")];
      if (!v15)
      {
        goto LABEL_28;
      }

      v16 = v15;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_28;
        }

        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v54 = FourccToCStr(a5);
        v52 = [objc_msgSend(v16 "multiwayConfig")];
        v50 = [objc_msgSend(v16 "multiwayConfig")];
        v29 = [objc_msgSend(v16 "multiwayConfig")];
        v30 = [v12 idsStreamID];
        v31 = [v12 maxNetworkBitrate];
        *buf = 136317186;
        v64 = v27;
        v65 = 2080;
        v66 = "[VCSessionParticipantLocal setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:]";
        v67 = 1024;
        v68 = 2096;
        v69 = 2080;
        v70 = v54;
        v71 = 1024;
        *v72 = v52;
        *&v72[4] = 1024;
        *&v72[6] = v50;
        LOWORD(v73) = 1024;
        *(&v73 + 2) = v29;
        HIWORD(v73) = 1024;
        *v74 = v30;
        *&v74[4] = 1024;
        *v75 = v31;
        v22 = v28;
        v23 = " [%s] %s:%d temporalStream configured streamGroupID=%s baseStreamId=%d repairStreamId=%d maxNetworkBitrate=%d temporalID=%d maxNetworkBitrate=%d";
        v24 = 68;
      }

      else
      {
        v17 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v17 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_28;
        }

        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v53 = FourccToCStr(a5);
        v51 = [objc_msgSend(v16 "multiwayConfig")];
        v49 = [objc_msgSend(v16 "multiwayConfig")];
        v48 = [objc_msgSend(v16 "multiwayConfig")];
        v20 = [v12 idsStreamID];
        v21 = [v12 maxNetworkBitrate];
        *buf = 136317698;
        v64 = v18;
        v65 = 2080;
        v66 = "[VCSessionParticipantLocal setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:]";
        v67 = 1024;
        v68 = 2096;
        v69 = 2112;
        v70 = v17;
        v71 = 2048;
        *v72 = self;
        *&v72[8] = 2080;
        v73 = v53;
        *v74 = 1024;
        *&v74[2] = v51;
        *v75 = 1024;
        *&v75[2] = v49;
        v76 = 1024;
        v77 = v48;
        v78 = 1024;
        v79 = v20;
        v80 = 1024;
        v81 = v21;
        v22 = v19;
        v23 = " [%s] %s:%d %@(%p) temporalStream configured streamGroupID=%s baseStreamId=%d repairStreamId=%d maxNetworkBitrate=%d temporalID=%d maxNetworkBitrate=%d";
        v24 = 88;
      }

      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
LABEL_28:
      v10 = 1;
    }

LABEL_17:
    if (![v12 parentStreamID])
    {
      ++v11;
    }

    if (([v12 isOneToOne] & 1) == 0)
    {
      [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v9), "multiwayConfig"), "maxNetworkBitrate"}];
      -[VCSessionParticipantLocal updateMultiwayBandwithAllocationTable:mediaType:streamGroupID:encoderGroupID:minNetworkBitrate:maxNetworkBitrate:](self, "updateMultiwayBandwithAllocationTable:mediaType:streamGroupID:encoderGroupID:minNetworkBitrate:maxNetworkBitrate:", [a3 objectAtIndexedSubscript:v9], a6);
    }

    if (++v9 >= [a3 count])
    {
      goto LABEL_30;
    }
  }

  v25 = -[VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:streamGroupID:rtpCipherSuite:](self, "newStreamInfoWithVideoStreamWithConfiguration:streamGroupID:rtpCipherSuite:", [a3 objectAtIndexedSubscript:v9], a5, 3);
  if (v25)
  {
    v26 = v25;
    [a4 addMediaStreamInfo:v25];
    [v56 setObject:v26 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(v12, "idsStreamID"))}];

    goto LABEL_17;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v39 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v39 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v64 = v40;
        v65 = 2080;
        v66 = "[VCSessionParticipantLocal setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:]";
        v67 = 1024;
        v68 = 2077;
        v69 = 2112;
        v70 = v39;
        v71 = 2048;
        *v72 = self;
        *&v72[8] = 1024;
        LODWORD(v73) = v9;
        v42 = " [%s] %s:%d %@(%p) Failed to set up video stream %d";
        v43 = v41;
LABEL_49:
        _os_log_error_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_ERROR, v42, buf, 0x36u);
      }
    }
  }

LABEL_38:

  return v10 & 1;
}

- (BOOL)setupAudioStreamsWithStreamConfiguration:(id)a3 streamGroupConfiguration:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupID", "unsignedIntValue"}];
  v8 = [(VCSessionParticipantLocal *)self newAudioSendGroupConfigWithStreamGroupID:v7 streamGroupConfiguration:a4];
  if (!v8)
  {
    [VCSessionParticipantLocal setupAudioStreamsWithStreamConfiguration:streamGroupConfiguration:];
    goto LABEL_25;
  }

  v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)), "unsignedIntValue"}];
  if ([a3 count] < 1)
  {
LABEL_6:
    v13 = [(VCSessionParticipantLocal *)self newAudioStreamSendGroupWithConfig:v8 streamGroupID:v7];
    if (v13)
    {
      v14 = v13;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._streamGroups, "setObject:forKeyedSubscript:", v13, [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "streamToken")}]);
      if (v7 == 1835623287 || v7 == 1835623282)
      {
        [(NSMutableArray *)self->super._micStreamGroups addObject:v14];
        [v14 setVADFilteringEnabled:self->_enableVADFiltering];
        [(VCSessionParticipantLocal *)self updateAudioSpectrumState];
      }

      v15 = 1;
      goto LABEL_11;
    }

    [VCSessionParticipantLocal setupAudioStreamsWithStreamConfiguration:streamGroupConfiguration:];
LABEL_25:
    v15 = v20;
    goto LABEL_11;
  }

  v10 = 0;
  while (1)
  {
    v11 = -[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:streamToken:isMultiway:streamGroupID:](self, "newStreamInfoWithAudioStreamWithConfiguration:streamToken:isMultiway:streamGroupID:", [a3 objectAtIndexedSubscript:v10], v9, 1, v7);
    if (!v11)
    {
      break;
    }

    v12 = v11;
    [v8 addMediaStreamInfo:v11];

    if (++v10 >= [a3 count])
    {
      goto LABEL_6;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal setupAudioStreamsWithStreamConfiguration:streamGroupConfiguration:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v20 = 136316418;
        v21 = v18;
        v22 = 2080;
        v23 = "[VCSessionParticipantLocal setupAudioStreamsWithStreamConfiguration:streamGroupConfiguration:]";
        v24 = 1024;
        v25 = 2132;
        v26 = 2112;
        v27 = v17;
        v28 = 2048;
        v29 = self;
        v30 = 1024;
        v31 = v10;
        _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to set up audio stream %d", &v20, 0x36u);
      }
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)newAudioStreamSendGroupWithConfig:(id)a3 streamGroupID:(unsigned int)a4
{
  v5 = off_1E85F1F48;
  if (a4 != 1667330164)
  {
    v5 = off_1E85F1F38;
  }

  v6 = objc_alloc(*v5);

  return [v6 initWithConfig:a3];
}

- (id)newStreamInfoWithVideoStreamWithConfiguration:(id)a3 streamGroupID:(unsigned int)a4 rtpCipherSuite:(int64_t)a5
{
  v5 = *&a4;
  v24 = *MEMORY[0x1E69E9840];
  if ([(VCSessionParticipantLocal *)self completeStreamSetup:a3 rtpCipherSuite:a5])
  {
    result = [(VCSessionParticipantLocal *)self newStreamInfoWithVideoStreamWithConfiguration:a3 idsDestination:self->super._idsDestination groupID:v5];
    if (result)
    {
      return result;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:streamGroupID:rtpCipherSuite:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
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
          v12 = 136316418;
          v13 = v10;
          v14 = 2080;
          v15 = "[VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:streamGroupID:rtpCipherSuite:]";
          v16 = 1024;
          v17 = 2179;
          v18 = 2112;
          v19 = v9;
          v20 = 2048;
          v21 = self;
          v22 = 2080;
          v23 = FourccToCStr(v5);
          _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to setup video stream for streamGroupId=%s", &v12, 0x3Au);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:streamGroupID:rtpCipherSuite:];
    }
  }

  return 0;
}

- (void)updateMultiwayBandwithAllocationTable:(id)a3 mediaType:(unsigned int)a4 streamGroupID:(unsigned int)a5 encoderGroupID:(unsigned int)a6 minNetworkBitrate:(unsigned int)a7 maxNetworkBitrate:(unsigned int)a8
{
  v55 = *MEMORY[0x1E69E9840];
  if (a4 == 1986618469)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v38 = v8;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [objc_msgSend(a3 "multiwayConfig")];
  v39 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
  v9 = 0;
  v10 = 0;
  if (v39)
  {
    v34 = *v52;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v47 = [VCSessionBandwidthAllocationTableEntry alloc];
        v45 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", a5)), "unsignedIntValue"}];
        v44 = [v12 maxNetworkBitrate] - v9;
        v43 = [v12 maxNetworkBitrate] - v9;
        v41 = [v12 maxMediaBitrate];
        v40 = [v12 qualityIndex];
        v13 = [objc_msgSend(a3 "multiwayConfig")];
        v14 = [objc_msgSend(a3 "multiwayConfig")];
        v15 = [objc_msgSend(a3 "multiwayConfig")];
        v16 = [v12 repairedMaxNetworkBitrate] - v10;
        v17 = [objc_msgSend(a3 "multiwayConfig")] ^ 1;
        v18 = [objc_msgSend(a3 "multiwayConfig")];
        LODWORD(v30) = [objc_msgSend(a3 "multiwayConfig")];
        BYTE5(v29) = v18;
        BYTE4(v29) = v17;
        HIDWORD(v28) = v15;
        LODWORD(v29) = v16;
        LOBYTE(v28) = v14;
        v19 = [VCSessionBandwidthAllocationTableEntry initWithClient:v47 type:"initWithClient:type:streamToken:minNetworkBitrate:maxNetworkBitrate:mediaBitrate:qualityIndex:streamID:hasRepairStreamID:repairStreamID:repairMaxNetworkBitrate:subscribedTo:startOnDemand:streamGroupID:encoderGroupID:v2StreamID:" streamToken:0 minNetworkBitrate:v38 maxNetworkBitrate:v45 mediaBitrate:v44 qualityIndex:v43 streamID:v41 hasRepairStreamID:__PAIR64__(v13 repairStreamID:v40) repairMaxNetworkBitrate:v28 subscribedTo:v29 startOnDemand:__PAIR64__(a6 streamGroupID:a5) encoderGroupID:v30 v2StreamID:?];
        [-[NSArray objectAtIndexedSubscript:](self->_uplinkBandwidthAllocators objectAtIndexedSubscript:{0), "addBandwidthAllocationTableEntry:updateNow:", v19, 0}];

        v9 = [v12 maxNetworkBitrate];
        v10 = [v12 repairedMaxNetworkBitrate];
      }

      v39 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
    }

    while (v39);
  }

  v48 = [VCSessionBandwidthAllocationTableEntry alloc];
  v46 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", a5)), "unsignedIntValue"}];
  v42 = [objc_msgSend(a3 "multiwayConfig")];
  v20 = [objc_msgSend(a3 "multiwayConfig")];
  v21 = [objc_msgSend(a3 "multiwayConfig")];
  v22 = [objc_msgSend(a3 "multiwayConfig")];
  v23 = [objc_msgSend(a3 "multiwayConfig")];
  v24 = [objc_msgSend(a3 "multiwayConfig")] - v10;
  v25 = [objc_msgSend(a3 "multiwayConfig")] ^ 1;
  v26 = [objc_msgSend(a3 "multiwayConfig")];
  LODWORD(v30) = [objc_msgSend(a3 "multiwayConfig")];
  BYTE5(v29) = v26;
  BYTE4(v29) = v25;
  HIDWORD(v28) = v23;
  LODWORD(v29) = v24;
  LOBYTE(v28) = v22;
  v27 = [VCSessionBandwidthAllocationTableEntry initWithClient:v48 type:"initWithClient:type:streamToken:minNetworkBitrate:maxNetworkBitrate:mediaBitrate:qualityIndex:streamID:hasRepairStreamID:repairStreamID:repairMaxNetworkBitrate:subscribedTo:startOnDemand:streamGroupID:encoderGroupID:v2StreamID:" streamToken:0 minNetworkBitrate:v38 maxNetworkBitrate:v46 mediaBitrate:a7 - v9 qualityIndex:a8 - v9 streamID:v42 hasRepairStreamID:__PAIR64__(v21 repairStreamID:v20) repairMaxNetworkBitrate:v28 subscribedTo:v29 startOnDemand:__PAIR64__(a6 streamGroupID:a5) encoderGroupID:v30 v2StreamID:?];
  [-[NSArray objectAtIndexedSubscript:](self->_uplinkBandwidthAllocators objectAtIndexedSubscript:{0), "addBandwidthAllocationTableEntry:updateNow:", v27, 0}];
}

- (id)newStreamInfoWithAudioStreamWithConfiguration:(id)a3 streamToken:(int64_t)a4 isMultiway:(BOOL)a5 streamGroupID:(unsigned int)a6
{
  v6 = *&a6;
  v7 = a5;
  v41 = *MEMORY[0x1E69E9840];
  if (![(VCSessionParticipantLocal *)self completeStreamSetup:a3 rtpCipherSuite:3])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:streamToken:isMultiway:streamGroupID:];
      }
    }

    return 0;
  }

  v11 = [(VCSessionParticipantLocal *)self newStreamInfoWithAudioStreamWithConfiguration:a3 idsDestination:self->super._idsDestination isMultiway:v7 streamGroupID:v6 streamToken:a4];
  if (!v11)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:streamToken:isMultiway:streamGroupID:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v32 = v21;
          v33 = 2080;
          v34 = "[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:streamToken:isMultiway:streamGroupID:]";
          v35 = 1024;
          v36 = 2257;
          v37 = 2112;
          v38 = v20;
          v39 = 2048;
          v40 = self;
          _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to setup audio stream", buf, 0x30u);
        }
      }
    }

    return 0;
  }

  v12 = v11;
  if (([objc_msgSend(a3 "multiwayConfig")] & 1) == 0)
  {
    v30 = [VCSessionBandwidthAllocationTableEntry alloc];
    v29 = [objc_msgSend(a3 "multiwayConfig")];
    v28 = [objc_msgSend(a3 "multiwayConfig")];
    v27 = [objc_msgSend(a3 "multiwayConfig")];
    v26 = [objc_msgSend(a3 "multiwayConfig")];
    HIDWORD(v25) = [objc_msgSend(a3 "multiwayConfig")];
    v13 = [objc_msgSend(a3 "multiwayConfig")];
    v14 = [objc_msgSend(a3 "multiwayConfig")];
    v15 = [objc_msgSend(a3 "multiwayConfig")];
    v16 = [objc_msgSend(a3 "multiwayConfig")] ^ 1;
    v17 = [objc_msgSend(a3 "multiwayConfig")];
    LODWORD(v25) = [objc_msgSend(a3 "multiwayConfig")];
    BYTE5(v24) = v17;
    BYTE4(v24) = v16;
    HIDWORD(v23) = v14;
    LODWORD(v24) = v15;
    LOBYTE(v23) = v13;
    v18 = [VCSessionBandwidthAllocationTableEntry initWithClient:v30 type:"initWithClient:type:streamToken:minNetworkBitrate:maxNetworkBitrate:mediaBitrate:qualityIndex:streamID:hasRepairStreamID:repairStreamID:repairMaxNetworkBitrate:subscribedTo:startOnDemand:streamGroupID:encoderGroupID:v2StreamID:" streamToken:0 minNetworkBitrate:1 maxNetworkBitrate:a4 mediaBitrate:v29 qualityIndex:v28 streamID:v27 hasRepairStreamID:__PAIR64__(HIDWORD(v25) repairStreamID:v26) repairMaxNetworkBitrate:v23 subscribedTo:v24 startOnDemand:v6 streamGroupID:v25 encoderGroupID:? v2StreamID:?];
    [-[NSArray objectAtIndexedSubscript:](self->_uplinkBandwidthAllocators objectAtIndexedSubscript:{0), "addBandwidthAllocationTableEntry:updateNow:", v18, 0}];
  }

  return v12;
}

- (BOOL)completeStreamSetup:(id)a3 rtpCipherSuite:(int64_t)a4
{
  v9 = *MEMORY[0x1E69E9840];
  [a3 setCName:{-[VCSessionParticipant uuid](self, "uuid")}];
  v8.receiver = self;
  v8.super_class = VCSessionParticipantLocal;
  return [(VCSessionParticipant *)&v8 completeStreamSetup:a3 rtpCipherSuite:a4];
}

- (id)multiwayAudioStreamNegotiatorConfigForStreamConfig:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(VCMediaNegotiatorMultiwayAudioStream);
  -[VCMediaNegotiatorMultiwayMediaStream setSsrc:](v4, "setSsrc:", [a3 ssrc]);
  -[VCMediaNegotiatorMultiwayMediaStream setMaxNetworkBitrate:](v4, "setMaxNetworkBitrate:", [a3 maxNetworkBitrate]);
  -[VCMediaNegotiatorMultiwayMediaStream setMaxMediaBitrate:](v4, "setMaxMediaBitrate:", [a3 maxMediaBitrate]);
  [a3 maxPacketsPerSecond];
  [(VCMediaNegotiatorMultiwayMediaStream *)v4 setMaxPacketsPerSecond:v5];
  -[VCMediaNegotiatorMultiwayMediaStream setStreamID:](v4, "setStreamID:", [a3 idsStreamID]);
  -[VCMediaNegotiatorMultiwayMediaStream setV2StreamID:](v4, "setV2StreamID:", [a3 v2StreamID]);
  -[VCMediaNegotiatorMultiwayMediaStream setHasV2StreamID:](v4, "setHasV2StreamID:", [a3 hasV2StreamID]);
  -[VCMediaNegotiatorMultiwayMediaStream setQualityIndex:](v4, "setQualityIndex:", [a3 qualityIndex]);
  -[VCMediaNegotiatorMultiwayMediaStream setHasRepairedStreamID:](v4, "setHasRepairedStreamID:", [a3 hasRepairedStreamID]);
  -[VCMediaNegotiatorMultiwayMediaStream setRepairedStreamID:](v4, "setRepairedStreamID:", [a3 repairedStreamID]);
  -[VCMediaNegotiatorMultiwayMediaStream setRepairedMaxNetworkBitrate:](v4, "setRepairedMaxNetworkBitrate:", [a3 repairedMaxNetworkBitrate]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [objc_msgSend(a3 "audioRules")];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 payload] != 113 || objc_msgSend(a3, "enableACC24ForGFT"))
        {
          -[VCMediaNegotiatorMultiwayAudioStream addPayload:](v4, "addPayload:", [v11 payload]);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)multiwayVideoStreamNegotiatorConfigForStreamConfig:(id)a3 isSubstream:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(VCMediaNegotiatorMultiwayVideoStream);
  -[VCMediaNegotiatorMultiwayMediaStream setSsrc:](v6, "setSsrc:", [a3 ssrc]);
  -[VCMediaNegotiatorMultiwayMediaStream setMaxNetworkBitrate:](v6, "setMaxNetworkBitrate:", [a3 maxNetworkBitrate]);
  -[VCMediaNegotiatorMultiwayMediaStream setMaxMediaBitrate:](v6, "setMaxMediaBitrate:", [a3 maxMediaBitrate]);
  [a3 maxPacketsPerSecond];
  [(VCMediaNegotiatorMultiwayMediaStream *)v6 setMaxPacketsPerSecond:v7];
  [(VCMediaNegotiatorMultiwayMediaStream *)v6 setIsSubstream:v4];
  -[VCMediaNegotiatorMultiwayMediaStream setStreamID:](v6, "setStreamID:", [a3 idsStreamID]);
  -[VCMediaNegotiatorMultiwayMediaStream setQualityIndex:](v6, "setQualityIndex:", [a3 qualityIndex]);
  +[VideoUtil sizeForVideoResolution:](VideoUtil, "sizeForVideoResolution:", [a3 resolution]);
  [(VCMediaNegotiatorMultiwayVideoStream *)v6 setSize:?];
  -[VCMediaNegotiatorMultiwayVideoStream setFrameRate:](v6, "setFrameRate:", [a3 framerate]);
  -[VCMediaNegotiatorMultiwayVideoStream setKeyFrameInterval:](v6, "setKeyFrameInterval:", [a3 keyFrameInterval]);
  -[VCMediaNegotiatorMultiwayMediaStream setHasRepairedStreamID:](v6, "setHasRepairedStreamID:", [a3 hasRepairedStreamID]);
  -[VCMediaNegotiatorMultiwayMediaStream setRepairedStreamID:](v6, "setRepairedStreamID:", [a3 repairedStreamID]);
  -[VCMediaNegotiatorMultiwayMediaStream setRepairedMaxNetworkBitrate:](v6, "setRepairedMaxNetworkBitrate:", [a3 repairedMaxNetworkBitrate]);
  memset(v10, 0, sizeof(v10));
  if ([objc_msgSend(a3 "payloads")])
  {
    -[VCMediaNegotiatorMultiwayVideoStream setPayload:](v6, "setPayload:", [**(&v10[0] + 1) unsignedIntValue]);
  }

  return v6;
}

- (id)newMediaNegotiatorAudioConfigurationForMediaType:(unsigned int)a3
{
  v3 = *&a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = [+[VCDefaults sharedInstance](VCDefaults useSBR];
  v6 = [+[VCDefaults sharedInstance](VCDefaults audioRecordingEnabled];
  v13 = 0;
  v7 = [(VCAudioRuleCollection *)self->super._supportedAudioRules copy];
  if (v3)
  {
    if (v3 != 3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newMediaNegotiatorAudioConfigurationForMediaType:];
        }
      }

      goto LABEL_9;
    }

    v8 = [[VCAudioRule alloc] initWithPayload:101 isSecondary:0 sbr:0 samplesPerBlock:480];
    [v7 clearAudioRules];
    [v7 addAudioRule:v8];
  }

  AUIOGetAUNumber(&v13);
  v9 = [VCMediaNegotiatorAudioConfiguration alloc];
  v10 = [(VCSessionParticipantLocal *)self generateSSRC];
  v11 = [(VCMediaNegotiatorAudioConfiguration *)v9 initWithAllowAudioRecording:v6 ssrc:v10 audioUnitNumber:v13 audioRuleCollection:v7];
  [(VCMediaNegotiatorAudioConfiguration *)v11 setUseSBR:v5];
  if (!v11)
  {
    [VCSessionParticipantLocal newMediaNegotiatorAudioConfigurationForMediaType:v3];
LABEL_9:

    v7 = 0;
    v11 = 0;
  }

  return v11;
}

- (BOOL)featureListStringsRequiredForMediaType:(unsigned __int8)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3 - 2;
  if (a3 - 2) < 5 && ((0x1Bu >> v5))
  {
    v6 = 0xFu >> v5;
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal featureListStringsRequiredForMediaType:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = 136316418;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCSessionParticipantLocal featureListStringsRequiredForMediaType:]";
          v15 = 1024;
          v16 = 2401;
          v17 = 2112;
          v18 = v7;
          v19 = 2048;
          v20 = self;
          v21 = 1024;
          v22 = v3;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected mediaType=%hhu", &v11, 0x36u);
        }
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (BOOL)v1FeatureListStringsSupportedForMediaType:(unsigned __int8)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3 - 2;
  if (a3 - 2) < 5 && ((0x1Bu >> v5))
  {
    v6 = 7u >> v5;
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal v1FeatureListStringsSupportedForMediaType:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = 136316418;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCSessionParticipantLocal v1FeatureListStringsSupportedForMediaType:]";
          v15 = 1024;
          v16 = 2423;
          v17 = 2112;
          v18 = v7;
          v19 = 2048;
          v20 = self;
          v21 = 1024;
          v22 = v3;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected mediaType=%hhu", &v11, 0x36u);
        }
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (id)u1VideoRuleCollectionsForMediaType:(unsigned __int8)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v5 = VCVideoRuleCollectionsFaceTexture;
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_8;
      }

      v5 = VCVideoRuleCollectionsBodyData;
    }

    v9 = [(__objc2_class *)v5 newU1VideoRuleCollections];

    return v9;
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        return 0;
      }

LABEL_8:
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionParticipantLocal u1VideoRuleCollectionsForMediaType:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v12 = 136316418;
            v13 = v10;
            v14 = 2080;
            v15 = "[VCSessionParticipantLocal u1VideoRuleCollectionsForMediaType:]";
            v16 = 1024;
            v17 = 2449;
            v18 = 2112;
            v19 = v6;
            v20 = 2048;
            v21 = self;
            v22 = 1024;
            v23 = v3;
            _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected mediaType=%hhu", &v12, 0x36u);
          }
        }
      }

      return 0;
    }

    v7 = +[VCVideoRuleCollectionsCamera sharedInstance];

    return [(VCVideoRuleCollections *)v7 videoRulesCollectionsByRemovingPayload:126 andPayload:128 removeCellular:0];
  }
}

- (BOOL)addFeatureListStringsForVideoConfiguration:(id)a3 mediaType:(unsigned __int8)a4
{
  v4 = a4;
  v41 = *MEMORY[0x1E69E9840];
  if (![VCMediaNegotiatorBase featureListStringsRequiredForMediaType:a4])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v25 = 136315906;
      v26 = v13;
      v27 = 2080;
      v28 = "[VCSessionParticipantLocal addFeatureListStringsForVideoConfiguration:mediaType:]";
      v29 = 1024;
      v30 = 2456;
      v31 = 1024;
      LODWORD(v32) = v4;
      v15 = " [%s] %s:%d [FLS] Skipping generation as it is NOT required for mediaType=%hhu";
      v16 = v14;
      v17 = 34;
      goto LABEL_27;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v25 = 136316418;
    v26 = v20;
    v27 = 2080;
    v28 = "[VCSessionParticipantLocal addFeatureListStringsForVideoConfiguration:mediaType:]";
    v29 = 1024;
    v30 = 2456;
    v31 = 2112;
    v32 = v12;
    v33 = 2048;
    v34 = self;
    v35 = 1024;
    LODWORD(v36) = v4;
    v15 = " [%s] %s:%d %@(%p) [FLS] Skipping generation as it is NOT required for mediaType=%hhu";
    v16 = v21;
    goto LABEL_22;
  }

  v7 = [VCVideoFeatureListStringHelper newLocalFeaturesStringFixedPositionWithType:[VCMediaNegotiatorBase featureListStringTypeForMediaType:v4]];
  if (!v7)
  {
    [VCSessionParticipantLocal addFeatureListStringsForVideoConfiguration:mediaType:];
    return v25;
  }

  v8 = v7;
  [a3 setVideoFeatureStringsFixedPosition:{-[VCSessionParticipantLocal featureListString:removingPayload:andPayload:mediaType:](self, "featureListString:removingPayload:andPayload:mediaType:", v7, 126, 128, v4)}];

  if ([VCMediaNegotiatorBase v1FeatureListStringsSupportedForMediaType:v4])
  {
    v9 = [VCVideoFeatureListStringHelper newFeatureListStringsDictForGroupID:VCMediaNegotiatorMediaType_StreamGroupIDFromMediaType(v4) isOneToOne:1];
    if (v9)
    {
      v10 = v9;
      [a3 setVideoFeatureStrings:{-[VCSessionParticipantLocal featureListString:removingPayload:andPayload:mediaType:](self, "featureListString:removingPayload:andPayload:mediaType:", v9, 126, 128, v4)}];

      goto LABEL_6;
    }

    [VCSessionParticipantLocal addFeatureListStringsForVideoConfiguration:mediaType:];
    return v25;
  }

LABEL_6:
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 1;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v25 = 136316930;
    v26 = v22;
    v27 = 2080;
    v28 = "[VCSessionParticipantLocal addFeatureListStringsForVideoConfiguration:mediaType:]";
    v29 = 1024;
    v30 = 2476;
    v31 = 2112;
    v32 = v11;
    v33 = 2048;
    v34 = self;
    v35 = 2112;
    v36 = [a3 videoFeatureStrings];
    v37 = 2112;
    v38 = [a3 videoFeatureStringsFixedPosition];
    v39 = 1024;
    v40 = v4;
    v15 = " [%s] %s:%d %@(%p) [FLS] init videoFeatureStrings=%@, videoFeatureStringsFixedPosition=%@, mediaType=%hhu";
    v16 = v23;
    v17 = 74;
    goto LABEL_27;
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    return 1;
  }

  v18 = VRTraceErrorLogLevelToCSTR();
  v19 = *MEMORY[0x1E6986650];
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
  {
    return 1;
  }

  v25 = 136316418;
  v26 = v18;
  v27 = 2080;
  v28 = "[VCSessionParticipantLocal addFeatureListStringsForVideoConfiguration:mediaType:]";
  v29 = 1024;
  v30 = 2476;
  v31 = 2112;
  v32 = [a3 videoFeatureStrings];
  v33 = 2112;
  v34 = [a3 videoFeatureStringsFixedPosition];
  v35 = 1024;
  LODWORD(v36) = v4;
  v15 = " [%s] %s:%d [FLS] init videoFeatureStrings=%@, videoFeatureStringsFixedPosition=%@, mediaType=%hhu";
  v16 = v19;
LABEL_22:
  v17 = 54;
LABEL_27:
  _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v25, v17);
  return 1;
}

- (id)newVideoConfigurationForMediaType:(unsigned __int8)a3
{
  v3 = a3;
  v5 = objc_alloc_init(VCMediaNegotiatorVideoConfiguration);
  if (!v5)
  {
    [VCSessionParticipantLocal newVideoConfigurationForMediaType:];
LABEL_6:

    return 0;
  }

  [(VCMediaNegotiatorCommonConfiguration *)v5 setSsrc:[(VCSessionParticipantLocal *)self generateSSRC]];
  [(VCMediaNegotiatorVideoConfiguration *)v5 setVideoRuleCollections:[(VCSessionParticipantLocal *)self u1VideoRuleCollectionsForMediaType:v3]];
  if (![(VCSessionParticipantLocal *)self addFeatureListStringsForVideoConfiguration:v5 mediaType:v3])
  {
    [VCSessionParticipantLocal newVideoConfigurationForMediaType:];
    goto LABEL_6;
  }

  return v5;
}

- (void)streamGroupNegotiationVideoConfigForStreamGroup:(id)a3 streamConfig:(id)a4 mediaConfig:(id)a5
{
  v8 = [a5 multiwayConfig];
  if ([a3 mediaType] == 1986618469)
  {
    if ([a3 streamGroupID] == 1935897189)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    [a4 setCoordinateSystem:v9];
    if ([a5 videoResolution] == 27)
    {
      v10 = [a5 customWidth];
      v11 = [a5 customHeight];
    }

    else
    {
      +[VideoUtil sizeForVideoResolution:](VideoUtil, "sizeForVideoResolution:", [a5 videoResolution]);
      v10 = v12;
    }

    [a4 setResolution:{v10, v11}];
    [a4 setFramerate:{objc_msgSend(a5, "framerate")}];
    [a4 setKeyFrameInterval:{objc_msgSend(a5, "keyFrameInterval")}];
    [a4 setIsSubStream:{objc_msgSend(v8, "isSubStream")}];
  }

  else
  {
    if ([a3 mediaType] != 1835365473)
    {
      return;
    }

    [a4 setFramerate:{objc_msgSend(a5, "framerate")}];
  }

  [a4 setIsTemporalStream:{objc_msgSend(v8, "isTemporalStream")}];
  v13 = [v8 parentStreamID];

  [a4 setParentStreamID:v13];
}

+ (BOOL)negotiatorCipherSuite:(unsigned int *)a3 fromMediaStreamConfig:(id)a4
{
  v6 = [a4 sframeCipherSuite];
  if (v6 == 2)
  {
    v7 = 2;
LABEL_7:
    *a3 = v7;
LABEL_8:
    LOBYTE(v6) = 1;
    return v6;
  }

  if (v6 == 1)
  {
    *a3 = 1;
    return v6;
  }

  if ([a4 SRTPCipherSuite] == 3)
  {
    v7 = 3;
    goto LABEL_7;
  }

  if (-[VCDefaults forceDisableMediaEncryption](+[VCDefaults sharedInstance](VCDefaults, "sharedInstance"), "forceDisableMediaEncryption") && ![a4 SRTPCipherSuite])
  {
    *a3 = 0;
    goto LABEL_8;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    +[VCSessionParticipantLocal negotiatorCipherSuite:fromMediaStreamConfig:];
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (id)newStreamGroupNegotiationConfigForStreamGroup:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = -[VCMediaNegotiatorStreamGroupConfiguration initWithGroupID:mediaType:subtype:syncGroupID:]([VCMediaNegotiatorStreamGroupConfiguration alloc], "initWithGroupID:mediaType:subtype:syncGroupID:", [a3 streamGroupID], objc_msgSend(a3, "mediaType"), objc_msgSend(a3, "mediaSubtype"), objc_msgSend(a3, "syncGroupID"));
  if (v4)
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = [a3 mediaStreamInfoArray];
    v42 = [obj countByEnumeratingWithState:&v77 objects:v76 count:16];
    if (v42)
    {
      v5 = VCMediaStreamSendGroup;
      v6 = *v78;
      p_vtable = VCVideoTransmitterDefault.vtable;
      v45 = a3;
      v41 = *v78;
      do
      {
        v8 = 0;
        do
        {
          if (*v78 != v6)
          {
            v9 = v8;
            objc_enumerationMutation(obj);
            v8 = v9;
          }

          v44 = v8;
          v10 = *(*(&v77 + 1) + 8 * v8);
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v46 = [v10 streamConfigs];
          v50 = [v46 countByEnumeratingWithState:&v72 objects:v71 count:16];
          if (v50)
          {
            v49 = *v73;
            do
            {
              v11 = 0;
              do
              {
                if (*v73 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v12 = *(*(&v72 + 1) + 8 * v11);
                v13 = objc_alloc_init(&v5[17]);
                v52 = 0;
                if (!v13)
                {
                  [VCSessionParticipantLocal newStreamGroupNegotiationConfigForStreamGroup:];
                  goto LABEL_54;
                }

                v14 = v13;
                if (([p_vtable + 272 negotiatorCipherSuite:&v52 fromMediaStreamConfig:v12] & 1) == 0)
                {
                  [(VCSessionParticipantLocal *)v14 newStreamGroupNegotiationConfigForStreamGroup:a3];
                  goto LABEL_54;
                }

                v15 = [v12 multiwayConfig];
                v51 = v11;
                if (([v15 negotiationProtocolMask] & 2) != 0)
                {
                  [v14 setSsrc:{objc_msgSend(v15, "ssrc")}];
                  [v14 setStreamID:{objc_msgSend(v15, "idsStreamID")}];
                  [v14 setV2StreamID:{objc_msgSend(v15, "v2StreamID")}];
                  [v14 setQualityIndex:{objc_msgSend(v15, "qualityIndex")}];
                  [v14 setMaxNetworkBitrate:{objc_msgSend(v15, "maxNetworkBitrate")}];
                  [v14 setMaxMediaBitrate:{objc_msgSend(v15, "maxMediaBitrate")}];
                  [v15 maxPacketsPerSecond];
                  [v14 setMaxPacketsPerSecond:v20];
                  [v14 setRepairedStreamID:{objc_msgSend(v15, "repairedStreamID")}];
                  [v14 setRepairedMaxNetworkBitrate:{objc_msgSend(v15, "repairedMaxNetworkBitrate")}];
                  [v14 setRtpTimestampRate:{objc_msgSend(v12, "rtpTimestampRate")}];
                  v48 = v15;
                  if ([a3 mediaType] == 1986618469 || objc_msgSend(a3, "mediaType") == 1835365473)
                  {
                    [(VCSessionParticipantLocal *)self streamGroupNegotiationVideoConfigForStreamGroup:a3 streamConfig:v14 mediaConfig:v12];
                    v21 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
                    if (!v21)
                    {
                      [VCSessionParticipantLocal newStreamGroupNegotiationConfigForStreamGroup:v14];
                      goto LABEL_54;
                    }

                    v22 = v21;
                    v23 = [objc_msgSend(v12 "txPayloadMap")];
                    if ([v23 count] != 1)
                    {
                      [(VCSessionParticipantLocal *)v14 newStreamGroupNegotiationConfigForStreamGroup:v22, v23];
                      goto LABEL_54;
                    }

                    -[VCMediaNegotiatorStreamGroupCodecConfiguration setCodecType:](v22, "setCodecType:", +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", [objc_msgSend(v23 objectAtIndexedSubscript:{0), "unsignedIntValue"}]));
                    v24 = [objc_msgSend(v12 "txPayloadMap")];
                    if ([v24 count] != 1)
                    {
                      [(VCSessionParticipantLocal *)v14 newStreamGroupNegotiationConfigForStreamGroup:v22, v24];
                      goto LABEL_54;
                    }

                    -[VCMediaNegotiatorStreamGroupCodecConfiguration setRtpPayload:](v22, "setRtpPayload:", [objc_msgSend(v24 objectAtIndexedSubscript:{0), "unsignedIntValue"}]);
                    if ([v12 profileLevel])
                    {
                      -[VCMediaNegotiatorStreamGroupCodecConfiguration setProfileLevelId:](v22, "setProfileLevelId:", +[VCVideoStreamConfig profileLevelIdForString:](VCVideoStreamConfig, "profileLevelIdForString:", [v12 profileLevel]));
                    }

                    -[VCMediaNegotiatorStreamGroupCodecConfiguration setRtcpSREnabled:](v22, "setRtcpSREnabled:", [v12 isRTCPEnabled]);
                    -[VCMediaNegotiatorStreamGroupCodecConfiguration setRtcpPSFB_FIREnabled:](v22, "setRtcpPSFB_FIREnabled:", [v12 rtcpPSFB_FIREnabled]);
                    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v22 setH264PacketizationMode:1];
                    [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v22 setCipherSuite:v52];
                    -[VCMediaNegotiatorStreamGroupCodecConfiguration setEncoderUsage:](v22, "setEncoderUsage:", [v12 encoderUsage]);
                    [(VCMediaNegotiatorStreamGroupConfiguration *)v4 addCodecConfig:v22];
                    [v14 addCodec:{-[VCMediaNegotiatorStreamGroupConfiguration indexOfCodecConfig:](v4, "indexOfCodecConfig:", v22)}];
                  }

                  else if ([a3 mediaType] == 1936684398)
                  {
                    [v14 setAudioChannelCount:{objc_msgSend(v12, "channelCount")}];
                    if ([v12 codecConfigurations])
                    {
                      v56 = 0uLL;
                      v57 = 0uLL;
                      v54 = 0uLL;
                      v55 = 0uLL;
                      v25 = [v12 codecConfigurations];
                      v26 = [v25 countByEnumeratingWithState:&v54 objects:v53 count:16];
                      if (v26)
                      {
                        v27 = v26;
                        v28 = *v55;
                        while (2)
                        {
                          for (i = 0; i != v27; ++i)
                          {
                            if (*v55 != v28)
                            {
                              objc_enumerationMutation(v25);
                            }

                            v30 = [objc_msgSend(v12 "codecConfigurations")];
                            v31 = objc_alloc_init(VCMediaNegotiatorStreamGroupCodecConfiguration);
                            if (!v31)
                            {
                              [VCSessionParticipantLocal newStreamGroupNegotiationConfigForStreamGroup:v14];
                              goto LABEL_54;
                            }

                            v32 = v31;
                            -[VCMediaNegotiatorStreamGroupCodecConfiguration setCodecType:](v31, "setCodecType:", [v30 codecType]);
                            -[VCMediaNegotiatorStreamGroupCodecConfiguration setRtpPayload:](v32, "setRtpPayload:", [v30 networkPayload]);
                            -[VCMediaNegotiatorStreamGroupCodecConfiguration setPTime:](v32, "setPTime:", [v30 pTime]);
                            -[VCMediaNegotiatorStreamGroupCodecConfiguration setUseInBandFEC:](v32, "setUseInBandFEC:", [v30 isOpusInBandFecEnabled]);
                            -[VCMediaNegotiatorStreamGroupCodecConfiguration setRtcpSREnabled:](v32, "setRtcpSREnabled:", [v12 isRTCPEnabled]);
                            [(VCMediaNegotiatorStreamGroupCodecConfiguration *)v32 setCipherSuite:v52];
                            [(VCMediaNegotiatorStreamGroupConfiguration *)v4 addCodecConfig:v32];
                            [v14 addCodec:{-[VCMediaNegotiatorStreamGroupConfiguration indexOfCodecConfig:](v4, "indexOfCodecConfig:", v32)}];
                          }

                          v27 = [v25 countByEnumeratingWithState:&v54 objects:v53 count:16];
                          a3 = v45;
                          if (v27)
                          {
                            continue;
                          }

                          break;
                        }
                      }
                    }

                    else
                    {
                      v61 = 0uLL;
                      v62 = 0uLL;
                      v59 = 0uLL;
                      v60 = 0uLL;
                      v33 = [objc_msgSend(v12 "txPayloadMap")];
                      v34 = [v33 countByEnumeratingWithState:&v59 objects:v58 count:16];
                      if (v34)
                      {
                        v35 = v34;
                        v36 = *v60;
                        do
                        {
                          for (j = 0; j != v35; ++j)
                          {
                            if (*v60 != v36)
                            {
                              objc_enumerationMutation(v33);
                            }

                            [v14 addPayload:{objc_msgSend(*(*(&v59 + 1) + 8 * j), "unsignedIntValue")}];
                          }

                          v35 = [v33 countByEnumeratingWithState:&v59 objects:v58 count:16];
                        }

                        while (v35);
                      }
                    }
                  }

                  [(VCMediaNegotiatorStreamGroupConfiguration *)v4 addStreamConfig:v14];

                  -[NSMutableSet addObjectsFromArray:](self->_localPublishedStreams, "addObjectsFromArray:", [v48 streamIds]);
                  v5 = VCMediaStreamSendGroup;
                  p_vtable = (VCVideoTransmitterDefault + 24);
                }

                else
                {
                  v16 = v15;
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v17 = VRTraceErrorLogLevelToCSTR();
                    v18 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v19 = [v16 qualityIndex];
                      *buf = 136315906;
                      v64 = v17;
                      v65 = 2080;
                      v66 = "[VCSessionParticipantLocal newStreamGroupNegotiationConfigForStreamGroup:]";
                      v67 = 1024;
                      v68 = 2571;
                      v69 = 1024;
                      v70 = v19;
                      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping stream = %d", buf, 0x22u);
                    }
                  }
                }

                v11 = v51 + 1;
              }

              while (v51 + 1 != v50);
              v38 = [v46 countByEnumeratingWithState:&v72 objects:v71 count:16];
              v50 = v38;
            }

            while (v38);
          }

          v8 = v44 + 1;
          v6 = v41;
        }

        while (v44 + 1 != v42);
        v39 = [obj countByEnumeratingWithState:&v77 objects:v76 count:16];
        v6 = v41;
        v42 = v39;
      }

      while (v39);
    }
  }

  else
  {
    [VCSessionParticipantLocal newStreamGroupNegotiationConfigForStreamGroup:];
LABEL_54:

    return 0;
  }

  return v4;
}

- (void)initializeMultiwayAudioStreamGroup:(id)a3 forLocalConfig:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 mediaStreamInfoArray];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_msgSend(objc_msgSend(*(*(&v13 + 1) + 8 * v10) "streamConfigs")];
        [v11 setEnableACC24ForGFT:{objc_msgSend(a4, "enableACC24ForGFT")}];
        if ([v11 negotiationProtocolMask])
        {
          [a4 addMultiwayAudioStream:{-[VCSessionParticipantLocal multiwayAudioStreamNegotiatorConfigForStreamConfig:](self, "multiwayAudioStreamNegotiatorConfigForStreamConfig:", v11)}];
        }

        -[NSMutableSet addObjectsFromArray:](self->_localPublishedStreams, "addObjectsFromArray:", [v11 streamIds]);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }
}

- (void)initializeMultiwayVideoStreamGroup:(id)a3 forLocalConfig:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 mediaStreamInfoArray];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_msgSend(objc_msgSend(*(*(&v13 + 1) + 8 * v10) "streamConfigs")];
        if ([v11 negotiationProtocolMask])
        {
          [a4 addMultiwayVideoStream:{-[VCSessionParticipantLocal multiwayVideoStreamNegotiatorConfigForStreamConfig:isSubstream:](self, "multiwayVideoStreamNegotiatorConfigForStreamConfig:isSubstream:", v11, 0)}];
          -[NSMutableSet addObjectsFromArray:](self->_localPublishedStreams, "addObjectsFromArray:", [v11 streamIds]);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }
}

- (BOOL)initializeStreamGroupsForLocalConfig:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 streamGroupID] == 1667329381)
        {
          [(VCSessionParticipantLocal *)self initializeMultiwayVideoStreamGroup:v10 forLocalConfig:a3];
        }

        else if ([v10 streamGroupID] == 1835623282)
        {
          [(VCSessionParticipantLocal *)self initializeMultiwayAudioStreamGroup:v10 forLocalConfig:a3];
        }

        if (![(VCSessionParticipantLocal *)self initializeOneToOneStreamGroup:v10 forLocalConfig:a3])
        {
          [(VCSessionParticipantLocal *)v10 initializeStreamGroupsForLocalConfig:&v15];
          v11 = v14;
          v12 = v15;
          return v11 | v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  return v11 | v12;
}

- (BOOL)initializeOneToOneStreamGroup:(id)a3 forLocalConfig:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [(VCSessionParticipantLocal *)self newStreamGroupNegotiationConfigForStreamGroup:?];
  if (!v6)
  {
    [VCSessionParticipantLocal initializeOneToOneStreamGroup:forLocalConfig:];
    v10 = v17;
    goto LABEL_18;
  }

  v7 = -[VCMediaNegotiatorStreamGroupU1Configuration initStreamGroupU1ConfigForGroupId:withLocalConfig:]([VCMediaNegotiatorStreamGroupU1Configuration alloc], "initStreamGroupU1ConfigForGroupId:withLocalConfig:", [a3 streamGroupID], a4);
  if (v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315906;
        v18 = v8;
        v19 = 2080;
        v20 = "[VCSessionParticipantLocal initializeOneToOneStreamGroup:forLocalConfig:]";
        v21 = 1024;
        v22 = 2715;
        v23 = 2080;
        v24 = FourccToCStr([v6 groupID]);
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully created stream group U1 config for groupID=%s", &v17, 0x26u);
      }
    }

    [v6 setU1Config:v7];
  }

  else
  {
    v11 = +[VCMediaNegotiatorBase isU1StreamGroup:](VCMediaNegotiatorBase, "isU1StreamGroup:", [v6 groupID]);
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 5;
    }

    if (v12 > VRTraceGetErrorLogLevelForModule())
    {
      v10 = !v11;
      goto LABEL_17;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    v15 = *MEMORY[0x1E6986650];
    if (v11)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal initializeOneToOneStreamGroup:forLocalConfig:];
      }

      v10 = 0;
      goto LABEL_17;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = v13;
      v19 = 2080;
      v20 = "[VCSessionParticipantLocal initializeOneToOneStreamGroup:forLocalConfig:]";
      v21 = 1024;
      v22 = 2722;
      v23 = 2080;
      v24 = FourccToCStr([v6 groupID]);
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to create stream group U1 config for groupID=%s", &v17, 0x26u);
    }
  }

  v10 = 1;
LABEL_17:
  [a4 addStreamGroupConfig:v6];

LABEL_18:
  return v10;
}

- (id)featureListString:(id)a3 removingPayload:(int)a4 andPayload:(int)a5 mediaType:(unsigned __int8)a6
{
  result = a3;
  if (a6 == 2)
  {
    v8 = *&a5;
    v9 = *&a4;
    v10 = [a3 mutableCopy];
    [v10 setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v9)}];
    [v10 setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8)}];

    return v10;
  }

  return result;
}

- (BOOL)addVideoConfigurationsToLocalConfiguration:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v16 = 100991746;
  v5 = 2;
  v6 = [(VCSessionParticipantLocal *)self newVideoConfigurationForMediaType:2];
  if (v6)
  {
    v7 = v6;
    v8 = &v16 + 1;
    v9 = 1;
    while (1)
    {
      [a3 setMediaConfiguration:v7 forMediaType:v5];

      if (v9 == -2)
      {
        return 1;
      }

      v10 = *v8++;
      v5 = v10;
      v7 = [(VCSessionParticipantLocal *)self newVideoConfigurationForMediaType:v10];
      --v9;
      if (!v7)
      {
        v11 = -v9 > 2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v11 = 0;
LABEL_9:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal addVideoConfigurationsToLocalConfiguration:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v18 = v14;
          v19 = 2080;
          v20 = "[VCSessionParticipantLocal addVideoConfigurationsToLocalConfiguration:]";
          v21 = 1024;
          v22 = 2753;
          v23 = 2112;
          v24 = v13;
          v25 = 2048;
          v26 = self;
          v27 = 1024;
          v28 = v5;
          _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create videoConfiguration for mediaType=%hhu", buf, 0x36u);
        }
      }
    }
  }

  return v11;
}

- (BOOL)addMediaConfigurationsToLocalConfiguration:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(VCSessionParticipantLocal *)self newMediaNegotiatorAudioConfigurationForMediaType:0];
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal addMediaConfigurationsToLocalConfiguration:];
        }
      }

      goto LABEL_30;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_30;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v19 = 136316162;
    v20 = v13;
    v21 = 2080;
    v22 = "[VCSessionParticipantLocal addMediaConfigurationsToLocalConfiguration:]";
    v23 = 1024;
    v24 = 2769;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = self;
    v15 = " [%s] %s:%d %@(%p) Failed to create microphoneConfiguration";
    goto LABEL_37;
  }

  v6 = [(VCSessionParticipantLocal *)self newMediaNegotiatorAudioConfigurationForMediaType:3];
  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal addMediaConfigurationsToLocalConfiguration:];
        }
      }

      goto LABEL_30;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v16 = VRTraceErrorLogLevelToCSTR(), v14 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_30:
      v7 = 0;
LABEL_31:
      v8 = 0;
      goto LABEL_4;
    }

    v19 = 136316162;
    v20 = v16;
    v21 = 2080;
    v22 = "[VCSessionParticipantLocal addMediaConfigurationsToLocalConfiguration:]";
    v23 = 1024;
    v24 = 2773;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = self;
    v15 = " [%s] %s:%d %@(%p) Failed to create systemAudioConfiguration";
LABEL_37:
    _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v15, &v19, 0x30u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = 1;
  [a3 setMediaConfiguration:v5 forMediaType:1];
  [a3 setMediaConfiguration:v7 forMediaType:4];
  if (![(VCSessionParticipantLocal *)self addVideoConfigurationsToLocalConfiguration:a3])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal addMediaConfigurationsToLocalConfiguration:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v19 = 136316162;
          v20 = v17;
          v21 = 2080;
          v22 = "[VCSessionParticipantLocal addMediaConfigurationsToLocalConfiguration:]";
          v23 = 1024;
          v24 = 2780;
          v25 = 2112;
          v26 = v12;
          v27 = 2048;
          v28 = self;
          _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to add U+1 video configurations to local settings", &v19, 0x30u);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_4:

  return v8;
}

- (BOOL)initializeMediaNegotiator
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [[VCBitrateArbiter alloc] initWithDeviceRole:0 callLogFile:0];
  if (!v3)
  {
    [(VCSessionParticipantLocal *)buf initializeMediaNegotiator];
LABEL_20:
    v5 = *buf;
    v15 = v20;
    goto LABEL_17;
  }

  v4 = [[VCMediaNegotiatorLocalConfiguration alloc] initWithBitrateArbiter:v3];
  if (!v4)
  {
    [(VCSessionParticipantLocal *)buf initializeMediaNegotiator];
    goto LABEL_20;
  }

  v5 = v4;
  [(VCMediaNegotiatorLocalConfiguration *)v4 setPreferredAudioCodec:104];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setAllowRTCPFB:0];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setIsCaller:1];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setCallLogFile:0];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setBasebandCodec:0];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setBasebandCodecSampleRate:0];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setCreationTime:self->super._creationTime.wide];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setOneToOneAuthTagEnabled:self->_isOneToOneAuthenticationTagEnabled];
  if ([+[VCDefaults supportsOneToOneMode]&& ![VCDefaults BOOLeanValueForKey:@"simulateWebRTCOnlyClient" defaultValue:0] sharedInstance]
  {
    [(VCMediaNegotiatorLocalConfiguration *)v5 setOneToOneModeSupported:1];
    [(VCMediaNegotiatorLocalConfiguration *)v5 setMediaControlInfoVersion:2];
  }

  [(VCMediaNegotiatorLocalConfiguration *)v5 setEnableACC24ForU1:[(VCAudioRuleCollection *)self->super._supportedAudioRules isACC24ForU1Enabled]];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setEnableACC24ForGFT:[(VCAudioRuleCollection *)self->super._supportedAudioRules isACC24ForGFTEnabled]];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setVideoFrameMetadataSupportedVersion:1];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setFrontCameraFullScreenSupported:+[VCHardwareSettings supportsFrontCameraFullBleedCapture]];
  [(VCMediaNegotiatorLocalConfiguration *)v5 setBackCameraFullScreenSupported:+[VCHardwareSettings supportsBackCameraFullBleedCapture]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v6;
      v22 = 2080;
      v23 = "[VCSessionParticipantLocal initializeMediaNegotiator]";
      v24 = 1024;
      v25 = 2819;
      v26 = 1024;
      *v27 = [(VCMediaNegotiatorLocalConfiguration *)v5 frontCameraFullScreenSupported];
      *&v27[4] = 1024;
      *&v27[6] = [(VCMediaNegotiatorLocalConfiguration *)v5 backCameraFullScreenSupported];
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [RDAR] frontCameraFullScreenSupported=%d backCameraFullScreenSupported=%d", buf, 0x28u);
    }
  }

  [(VCMediaNegotiatorLocalConfiguration *)v5 setFecHeaderVersion:[(VCSessionParticipantLocal *)self fecHeaderVersion]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(VCMediaNegotiatorLocalConfiguration *)v5 fecHeaderVersion];
      *buf = 136315906;
      *&buf[4] = v8;
      v22 = 2080;
      v23 = "[VCSessionParticipantLocal initializeMediaNegotiator]";
      v24 = 1024;
      v25 = 2822;
      v26 = 1024;
      *v27 = v10;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: Using fecHeaderVersion=%d", buf, 0x22u);
    }
  }

  [(VCMediaNegotiatorLocalConfiguration *)v5 setRtxVersion:self->_p2pEncryptionEnabled];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(VCMediaNegotiatorLocalConfiguration *)v5 rtxVersion];
      *buf = 136315906;
      *&buf[4] = v11;
      v22 = 2080;
      v23 = "[VCSessionParticipantLocal initializeMediaNegotiator]";
      v24 = 1024;
      v25 = 2825;
      v26 = 1024;
      *v27 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: Local rtxVersion=%d", buf, 0x22u);
    }
  }

  [(VCSessionParticipantLocal *)self addMediaConfigurationsToLocalConfiguration:v5];
  if ([(VCSessionParticipantLocal *)self initializeStreamGroupsForLocalConfig:v5])
  {
    -[VCMediaNegotiatorLocalConfiguration setMediaRecorderVideoCodecs:](v5, "setMediaRecorderVideoCodecs:", [+[VCVideoRuleCollectionsMediaRecorder sharedInstance](VCVideoRuleCollectionsMediaRecorder mediaRecorderVideoCodecs]);
    -[VCMediaNegotiatorLocalConfiguration setMediaRecorderImageTypes:](v5, "setMediaRecorderImageTypes:", [+[VCVideoRuleCollectionsMediaRecorder sharedInstance](VCVideoRuleCollectionsMediaRecorder mediaRecorderImageTypes]);

    v14 = objc_alloc_init(VCSwitchManager);
    self->_oneToOneSettings.switchManager = v14;
    [(VCSwitchManager *)v14 initializeLocalSwitches];
    [(VCMediaNegotiatorLocalConfiguration *)v5 setFaceTimeSwitches:[(VCSwitchManager *)self->_oneToOneSettings.switchManager localSwitches]];
    self->super._mediaNegotiator = [[VCSessionMediaNegotiator alloc] initWithLocalConfiguration:v5];
    v15 = 1;
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal initializeMediaNegotiator];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = v18;
          v22 = 2080;
          v23 = "[VCSessionParticipantLocal initializeMediaNegotiator]";
          v24 = 1024;
          v25 = 2829;
          v26 = 2112;
          *v27 = v17;
          *&v27[8] = 2048;
          v28 = self;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to initialize stream groups for local configuration", buf, 0x30u);
        }
      }
    }

    v15 = 0;
  }

LABEL_17:

  return v15;
}

- (void)updatePayloadTypesWithVideoConfigs:(id)a3
{
  if ([a3 count] >= 1)
  {
    v5 = 0;
    do
    {
      -[NSMutableSet addObjectsFromArray:](self->_videoPayloadTypes, "addObjectsFromArray:", [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v5++), "txPayloadMap"), "allKeys"}]);
    }

    while (v5 < [a3 count]);
  }
}

- (void)updatePayloadTypesWithAudioConfigs:(id)a3
{
  if ([a3 count] >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [a3 objectAtIndexedSubscript:v5];
      -[NSMutableSet addObjectsFromArray:](self->_audioPayloadTypes, "addObjectsFromArray:", [objc_msgSend(v6 "txPayloadMap")]);
      -[NSMutableSet addObjectsFromArray:](self->_audioPayloadTypes, "addObjectsFromArray:", [objc_msgSend(objc_msgSend(v6 "multiwayConfig")]);
      ++v5;
    }

    while (v5 < [a3 count]);
  }
}

- (unsigned)oneToOneVideoStreamRedundancyPercentage
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [(VCSwitchManager *)self->_oneToOneSettings.switchManager isSwitchEnabled:4];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = v5;
      v17 = 2080;
      v18 = "[VCSessionParticipantLocal oneToOneVideoStreamRedundancyPercentage]";
      v19 = 1024;
      v20 = 2867;
      v21 = 1024;
      v22 = v2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch highFecEnabled %d", &v15, 0x22u);
    }
  }

  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-redundancy-percentage-max" userDefaultKey:@"videoRedundancyPercentageMax" defaultValue:&unk_1F579A278 isDoubleType:{1), "doubleValue"}];
  v8 = v7;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = v9;
      v17 = 2080;
      v18 = "[VCSessionParticipantLocal oneToOneVideoStreamRedundancyPercentage]";
      v19 = 1024;
      v20 = 2869;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d currentRedundancyPercentage before abTestSwitch %d", &v15, 0x22u);
    }
  }

  if (v2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 100;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCSessionParticipantLocal oneToOneVideoStreamRedundancyPercentage]";
      v19 = 1024;
      v20 = 2871;
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d maxAllowedRedundancyPercentage after abTestSwitch %d", &v15, 0x22u);
    }
  }

  return v11;
}

- (int)oneToOneVideoStreamRedundancyMode
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(VCSwitchManager *)self->_oneToOneSettings.switchManager isSwitchEnabled:16];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCSessionParticipantLocal oneToOneVideoStreamRedundancyMode]";
      v11 = 1024;
      v12 = 2878;
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch vplrFecEnabled %d", &v7, 0x22u);
    }
  }

  if ([(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedSettings] mediaControlInfoVersion]> 1 && v3)
  {
    return 6;
  }

  else
  {
    return 5;
  }
}

- (int)oneToOneAudioStreamRedundancyMode
{
  if ([(VCMediaNegotiatorResultsAudio *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedAudioSettings] redPayload]!= 20)
  {
    return 1;
  }

  if (self->_isHigherAudioREDCutoverU1Enabled)
  {
    return 3;
  }

  return 2;
}

- (int)negotiateOneToOne:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(VCMediaNegotiatorLocalConfiguration *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator localSettings] copy];
  v6 = v5;
  if (!v5)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      v11 = -2143813630;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_45;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v27 = 136316162;
      v28 = v18;
      v29 = 2080;
      v30 = "[VCSessionParticipantLocal negotiateOneToOne:]";
      v31 = 1024;
      v32 = 2898;
      v33 = 2112;
      v34 = v13;
      v35 = 2048;
      v36 = self;
      v20 = " [%s] %s:%d %@(%p) Failed to copy the local configuration";
LABEL_60:
      _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v20, &v27, 0x30u);
      goto LABEL_61;
    }

    v11 = -2143813630;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal negotiateOneToOne:];
LABEL_61:
        v8 = 0;
        v11 = -2143813630;
        goto LABEL_7;
      }
    }

LABEL_45:
    v8 = 0;
    goto LABEL_7;
  }

  [v5 setIsCaller:0];
  v7 = [[VCSessionMediaNegotiator alloc] initWithLocalConfiguration:v6];
  if (!v7)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      v11 = -2143813630;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_45;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v27 = 136316162;
      v28 = v21;
      v29 = 2080;
      v30 = "[VCSessionParticipantLocal negotiateOneToOne:]";
      v31 = 1024;
      v32 = 2902;
      v33 = 2112;
      v34 = v14;
      v35 = 2048;
      v36 = self;
      v20 = " [%s] %s:%d %@(%p) Failed to reinitialize the 1:1 media negotiator";
      goto LABEL_60;
    }

    v11 = -2143813630;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal negotiateOneToOne:];
        v8 = 0;
        v11 = -2143813630;
        goto LABEL_7;
      }
    }

    goto LABEL_45;
  }

  v8 = v7;
  v9 = +[VCSessionParticipant participantInfoWithParticipantData:](VCSessionParticipant, "participantInfoWithParticipantData:", [a3 opaqueData]);
  [(VCSessionParticipantLocal *)self logRemoteParticipantInfo:v9];
  v10 = [v9 objectForKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
  if (!v10)
  {
    if (objc_opt_class() == self)
    {
      v11 = -2143813631;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal negotiateOneToOne:];
        }
      }

      goto LABEL_7;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    v11 = -2143813631;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_7;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v27 = 136316162;
    v28 = v22;
    v29 = 2080;
    v30 = "[VCSessionParticipantLocal negotiateOneToOne:]";
    v31 = 1024;
    v32 = 2908;
    v33 = 2112;
    v34 = v15;
    v35 = 2048;
    v36 = self;
    v24 = " [%s] %s:%d %@(%p) Failed to extract media blob from remote participant info";
LABEL_58:
    _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v24, &v27, 0x30u);
    goto LABEL_7;
  }

  if (![(VCSessionMediaNegotiator *)v8 processRemoteNegotiationData:v10])
  {
    v11 = -2143813631;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal negotiateOneToOne:];
        }
      }

      goto LABEL_7;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_7;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v27 = 136316162;
    v28 = v25;
    v29 = 2080;
    v30 = "[VCSessionParticipantLocal negotiateOneToOne:]";
    v31 = 1024;
    v32 = 2911;
    v33 = 2112;
    v34 = v16;
    v35 = 2048;
    v36 = self;
    v24 = " [%s] %s:%d %@(%p) Failed to negotiate one to one settings with remote media blob";
    goto LABEL_58;
  }

  if ([(VCMediaNegotiatorResultsFaceTimeSettings *)[(VCSessionMediaNegotiator *)v8 negotiatedFaceTimeSettings] oneToOneModeSupported])
  {

    v11 = 0;
    self->super._mediaNegotiator = v8;
    goto LABEL_7;
  }

  v11 = -2143813631;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal negotiateOneToOne:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v27 = 136316162;
        v28 = v26;
        v29 = 2080;
        v30 = "[VCSessionParticipantLocal negotiateOneToOne:]";
        v31 = 1024;
        v32 = 2912;
        v33 = 2112;
        v34 = v17;
        v35 = 2048;
        v36 = self;
        v24 = " [%s] %s:%d %@(%p) Failed to negotiate with devices that does not support one to one";
        goto LABEL_58;
      }
    }
  }

LABEL_7:

  return v11;
}

- (void)logRemoteParticipantInfo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = -[VCCallInfoBlob initWithData:]([VCCallInfoBlob alloc], "initWithData:", [a3 objectForKeyedSubscript:@"vcSessionParticipantKeyCallInfoBlob"]);
  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if ([-[VCCallInfoBlob formattedText](v3 "formattedText")])
        {
          v6 = [objc_msgSend(objc_msgSend(-[VCCallInfoBlob formattedText](v3 "formattedText")];
        }

        else
        {
          v6 = "<nil>";
        }

        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCSessionParticipantLocal logRemoteParticipantInfo:]";
        v11 = 1024;
        v12 = 2928;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote callInfoBlob = %s", &v7, 0x26u);
      }
    }
  }
}

- (void)overrideVideoStreamConfigWithDefaults:(id)a3 streamGroupID:(unsigned int)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4 == 1667329381)
  {
    if ([+[VCDefaults forceHWI] sharedInstance]
    {
      [a3 setVideoResolution:27];
      [a3 setCustomWidth:{-[VCDefaults forceEncodeWidth](+[VCDefaults sharedInstance](VCDefaults, "sharedInstance"), "forceEncodeWidth")}];
      [a3 setCustomHeight:{-[VCDefaults forceEncodeHeight](+[VCDefaults sharedInstance](VCDefaults, "sharedInstance"), "forceEncodeHeight")}];
      [a3 setFramerate:{-[VCDefaults forceFramerate](+[VCDefaults sharedInstance](VCDefaults, "sharedInstance"), "forceFramerate")}];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136316418;
          v8 = v5;
          v9 = 2080;
          v10 = "[VCSessionParticipantLocal overrideVideoStreamConfigWithDefaults:streamGroupID:]";
          v11 = 1024;
          v12 = 2940;
          v13 = 2048;
          v14 = [a3 customWidth];
          v15 = 2048;
          v16 = [a3 customHeight];
          v17 = 2048;
          v18 = [a3 framerate];
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d forcing oneToOneVideoConfig settings width=%lu, height=%lu, framerate=%lufps", &v7, 0x3Au);
        }
      }
    }
  }
}

- (BOOL)setupOneToOneVideoStreamWithConfig:(id)a3 streamGroupID:(unsigned int)a4
{
  v4 = *&a4;
  v41 = *MEMORY[0x1E69E9840];
  v7 = [(VCSessionParticipantLocal *)self newVideoStreamOneToOneConfigurationWithStreamGroupId:*&a4];
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal setupOneToOneVideoStreamWithConfig:streamGroupID:];
        }
      }

      goto LABEL_46;
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_46;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v29 = 136316418;
    v30 = v25;
    v31 = 2080;
    v32 = "[VCSessionParticipantLocal setupOneToOneVideoStreamWithConfig:streamGroupID:]";
    v33 = 1024;
    v34 = 2951;
    v35 = 2112;
    v36 = v23;
    v37 = 2048;
    v38 = self;
    v39 = 2080;
    v40 = FourccToCStr(v4);
    v27 = " [%s] %s:%d %@(%p) Error setting up the config for one-to-one mode for streamGroupId=%s";
    goto LABEL_48;
  }

  [objc_msgSend(v7 "multiwayConfig")];
  [v7 setTxMaxBitrate:{1000 * -[VCSessionMediaNegotiator remoteMaxBandwidthForArbiterMode:connectionType:](self->super._mediaNegotiator, "remoteMaxBandwidthForArbiterMode:connectionType:", 1, 3)}];
  [v7 setVideoResolution:{objc_msgSend(objc_msgSend(v7, "multiwayConfig"), "resolution")}];
  if (v4 == 1935897189)
  {
    [v7 setPixelFormat:875704422];
  }

  [(VCSessionParticipantLocal *)self overrideVideoStreamConfigWithDefaults:v7 streamGroupID:v4];
  v8 = [(VCSessionParticipantLocal *)self newStreamInfoWithVideoStreamWithConfiguration:v7 streamGroupID:v4 rtpCipherSuite:[(VCMediaNegotiatorResultsVideo *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedVideoSettings] cipherSuite]];
  if (!v8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal setupOneToOneVideoStreamWithConfig:streamGroupID:];
        }
      }

      goto LABEL_46;
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v24 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v28 = VRTraceErrorLogLevelToCSTR(), v26 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_46:
      v12 = 0;
      v14 = 0;
      v9 = 0;
LABEL_21:
      v19 = 0;
      goto LABEL_22;
    }

    v29 = 136316418;
    v30 = v28;
    v31 = 2080;
    v32 = "[VCSessionParticipantLocal setupOneToOneVideoStreamWithConfig:streamGroupID:]";
    v33 = 1024;
    v34 = 2962;
    v35 = 2112;
    v36 = v24;
    v37 = 2048;
    v38 = self;
    v39 = 2080;
    v40 = FourccToCStr(v4);
    v27 = " [%s] %s:%d %@(%p) Failed to set up video stream for streamGroupId=%s";
LABEL_48:
    _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, v27, &v29, 0x3Au);
    goto LABEL_46;
  }

  v9 = v8;
  -[NSMutableDictionary setObject:forKey:](self->_oneToOneSettings.streamInfo, "setObject:forKey:", v8, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VCSessionParticipantLocal *)self updateOneToOneBandwidthAllocationTable:v9 mediaType:2 streamGroupID:v4];
  v10 = [(VCSessionParticipantLocal *)self oneToOneVideoStreamRedundancyMode];
  v11 = [(VCSessionParticipantLocal *)self oneToOneVideoStreamRedundancyPercentage];
  v12 = [-[VCSessionMediaStreamPresenceConfigurationProvider defaultEndToEndStreamGroupConfigurationForStreamGroup:](self->_presenceProvider defaultEndToEndStreamGroupConfigurationForStreamGroup:{v4), "mutableCopy"}];
  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v10), @"streamGroupRedundancyMode"}];
  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v11), @"streamGroupRedundancyPercent"}];
  v13 = [(VCSessionParticipantLocal *)self newVideoSendGroupConfigWithStreamGroupID:v4 streamGroupConfiguration:v12];
  if (!v13)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal setupOneToOneVideoStreamWithConfig:streamGroupID:];
      }
    }

    v14 = 0;
    goto LABEL_21;
  }

  v14 = v13;
  v15 = v4 == 1650745716 && VCFeatureFlagManager_PersonaV2Enabled();
  if (v4 != 1935897189 && !v15)
  {
    [(VCSessionParticipant *)v14 setStatisticsCollector:[(VCSessionParticipantOneToOneConfig *)self->super._oneToOneConfig statisticsCollector]];
    goto LABEL_17;
  }

  [objc_msgSend(objc_msgSend(v9 "streamConfigs")];
  [objc_msgSend(objc_msgSend(v9 "streamConfigs")];
  [objc_msgSend(objc_msgSend(v9 "streamConfigs")];
  if (v4 == 1935897189)
  {
    v16 = [objc_msgSend(v9 "streamConfigs")];
    v17 = 9;
  }

  else
  {
    if (v4 != 1650745716)
    {
      goto LABEL_17;
    }

    v16 = [objc_msgSend(v9 "streamConfigs")];
    v17 = 10;
  }

  [v16 setRedundancyControllerMode:v17];
LABEL_17:
  [objc_msgSend(objc_msgSend(v9 "streamConfigs")];
  [(VCSessionParticipantLocal *)v14 addMediaStreamInfo:v9];
  v18 = [(VCSessionParticipant *)self streamGroupWithID:v4];
  v19 = 1;
  if (([(__CFString *)v18 updateConfig:v14 forMode:1]& 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v29 = 136316162;
        v30 = v20;
        v31 = 2080;
        v32 = "[VCSessionParticipantLocal setupOneToOneVideoStreamWithConfig:streamGroupID:]";
        v33 = 1024;
        v34 = 3000;
        v35 = 2112;
        v36 = v18;
        v37 = 2112;
        v38 = v14;
        _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to update config for stream group=%@ configuration=%@", &v29, 0x30u);
      }
    }

    goto LABEL_21;
  }

LABEL_22:

  return v19;
}

- (void)setupOneToOneAudioStreamWithConfig:(id)a3 streamGroupID:(unsigned int)a4
{
  v4 = *&a4;
  v40 = *MEMORY[0x1E69E9840];
  v7 = [(VCSessionParticipantLocal *)self newAudioStreamOneToOneConfigurationWithStreamGroupId:*&a4];
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal setupOneToOneAudioStreamWithConfig:streamGroupID:];
        }
      }

      goto LABEL_36;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_36;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316418;
    *&buf[4] = v22;
    v30 = 2080;
    v31 = "[VCSessionParticipantLocal setupOneToOneAudioStreamWithConfig:streamGroupID:]";
    v32 = 1024;
    v33 = 3017;
    v34 = 2112;
    v35 = v20;
    v36 = 2048;
    v37 = self;
    v38 = 2080;
    v39 = FourccToCStr(v4);
    v24 = " [%s] %s:%d %@(%p) Error setting up the audio config for one-to-one mode for streamGroupId=%s";
    goto LABEL_38;
  }

  networkFeedbackController = self->super._networkFeedbackController;
  v9 = [a3 networkFeedbackController];
  self->super._networkFeedbackController = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (networkFeedbackController)
  {
    CFRelease(networkFeedbackController);
  }

  [objc_msgSend(v7 "multiwayConfig")];
  [v7 setUseWifiTiers:{objc_msgSend(a3, "initUsingWifiTiers")}];
  v10 = -[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:](self, "newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:", v7, self->super._idsDestination, 0, v4, [-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v4)), "unsignedIntValue"}]);
  if (!v10)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal setupOneToOneAudioStreamWithConfig:streamGroupID:];
        }
      }

      goto LABEL_36;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v25 = VRTraceErrorLogLevelToCSTR(), v23 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_36:
      v16 = 0;
      v11 = 0;
      goto LABEL_15;
    }

    *buf = 136316418;
    *&buf[4] = v25;
    v30 = 2080;
    v31 = "[VCSessionParticipantLocal setupOneToOneAudioStreamWithConfig:streamGroupID:]";
    v32 = 1024;
    v33 = 3027;
    v34 = 2112;
    v35 = v21;
    v36 = 2048;
    v37 = self;
    v38 = 2080;
    v39 = FourccToCStr(v4);
    v24 = " [%s] %s:%d %@(%p) Error setting up the audio stream for one-to-one mode for streamGroupId=%s";
LABEL_38:
    _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x3Au);
    goto LABEL_36;
  }

  v11 = v10;
  [(VCSessionParticipantLocal *)self updateOneToOneBandwidthAllocationTable:v10 mediaType:1 streamGroupID:v4];
  v12 = [(VCSessionParticipantLocal *)self oneToOneAudioStreamRedundancyMode];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v13;
      v30 = 2080;
      v31 = "[VCSessionParticipantLocal setupOneToOneAudioStreamWithConfig:streamGroupID:]";
      v32 = 1024;
      v33 = 3032;
      v34 = 1024;
      LODWORD(v35) = v12;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio Redundancy Mode=%u", buf, 0x22u);
    }
  }

  v27[0] = @"streamGroupID";
  v28[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v28[1] = &unk_1F579A260;
  v27[1] = @"streamGroupMode";
  v27[2] = @"streamGroupRedundancyMode";
  v28[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  v15 = -[VCSessionParticipantLocal newAudioSendGroupConfigWithStreamGroupID:streamGroupConfiguration:](self, "newAudioSendGroupConfigWithStreamGroupID:streamGroupConfiguration:", v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3]);
  if (v15)
  {
    v16 = v15;
    [(VCSessionParticipant *)v15 setStatisticsCollector:[(VCSessionParticipantOneToOneConfig *)self->super._oneToOneConfig statisticsCollector]];
    [(VCSessionParticipantLocal *)v16 addMediaStreamInfo:v11];
    v17 = [(VCSessionParticipant *)self streamGroupWithID:v4];
    if (([(__CFString *)v17 updateConfig:v16 forMode:1]& 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v18;
        v30 = 2080;
        v31 = "[VCSessionParticipantLocal setupOneToOneAudioStreamWithConfig:streamGroupID:]";
        v32 = 1024;
        v33 = 3047;
        v34 = 2112;
        v35 = v17;
        v36 = 2112;
        v37 = v16;
        _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to update config for stream group=%@ configuration=%@", buf, 0x30u);
      }
    }
  }

  else
  {
    [(VCSessionParticipantLocal *)v4 setupOneToOneAudioStreamWithConfig:v11 streamGroupID:&v26, buf];
    v16 = v26;
    v11 = *buf;
  }

LABEL_15:
}

- (BOOL)configureMultiwayStreamGroups
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      [v8 setReportingAgent:{-[VCSessionParticipant reportingAgent](self, "reportingAgent")}];
      v9 = [v8 streamGroupConfigForMode:0];
      if (v9)
      {
        v10 = v9;
        if (!-[VCSessionParticipant configureStreamInfosForMultiway:streamGroupID:](self, "configureStreamInfosForMultiway:streamGroupID:", [v9 mediaStreamInfoArray], objc_msgSend(v8, "streamGroupID")))
        {
          [VCSessionParticipantLocal configureMultiwayStreamGroups];
          return v12;
        }

        if (([v8 updateConfig:v10 forMode:0] & 1) == 0)
        {
          [VCSessionParticipantLocal configureMultiwayStreamGroups];
          return v12;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  return 1;
}

- (BOOL)configureWithOneToOneParticipantConfig:(id)a3 shouldConfigureGFTStreams:(BOOL)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__VCSessionParticipantLocal_configureWithOneToOneParticipantConfig_shouldConfigureGFTStreams___block_invoke;
  block[3] = &unk_1E85F6820;
  block[4] = a3;
  block[5] = self;
  v8 = a4;
  block[6] = &v9;
  dispatch_sync(participantQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __94__VCSessionParticipantLocal_configureWithOneToOneParticipantConfig_shouldConfigureGFTStreams___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[VCStringUtils cStringFromOperatingMode:](VCStringUtils, "cStringFromOperatingMode:", [*(a1 + 32) operatingMode]);
      *v32 = 136315906;
      *&v32[4] = v2;
      *&v32[12] = 2080;
      *&v32[14] = "[VCSessionParticipantLocal configureWithOneToOneParticipantConfig:shouldConfigureGFTStreams:]_block_invoke";
      *&v32[22] = 1024;
      LODWORD(v33) = 3081;
      WORD2(v33) = 2080;
      *(&v33 + 6) = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting one-to-one remote participant data for operatingMode=%s", v32, 0x26u);
    }
  }

  v5 = (a1 + 40);
  [*(a1 + 40) setOneToOneConfig:*(a1 + 32)];
  [*(a1 + 40) setupOneToOneAudioStreamWithConfig:*(a1 + 32) streamGroupID:1835623282];
  if ([*(a1 + 32) negotiatedVideoEnabled])
  {
    [*(a1 + 40) setupOneToOneVideoStreamWithConfig:*(a1 + 32) streamGroupID:1667329381];
  }

  if ([*(a1 + 32) negotiatedScreenEnabled])
  {
    if (objc_opt_class() == *v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *v32 = 136315650;
      *&v32[4] = v7;
      *&v32[12] = 2080;
      *&v32[14] = "[VCSessionParticipantLocal configureWithOneToOneParticipantConfig:shouldConfigureGFTStreams:]_block_invoke";
      *&v32[22] = 1024;
      LODWORD(v33) = 3093;
      v9 = " [%s] %s:%d Configuring U+1 screen and system audio streams";
      v10 = v8;
      v11 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*v5 performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = *v5;
      *v32 = 136316162;
      *&v32[4] = v12;
      *&v32[12] = 2080;
      *&v32[14] = "[VCSessionParticipantLocal configureWithOneToOneParticipantConfig:shouldConfigureGFTStreams:]_block_invoke";
      *&v32[22] = 1024;
      LODWORD(v33) = 3093;
      WORD2(v33) = 2112;
      *(&v33 + 6) = v6;
      HIWORD(v33) = 2048;
      v34 = v14;
      v9 = " [%s] %s:%d %@(%p) Configuring U+1 screen and system audio streams";
      v10 = v13;
      v11 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v32, v11);
LABEL_18:
    [*(a1 + 40) setupOneToOneVideoStreamWithConfig:*(a1 + 32) streamGroupID:{1935897189, *v32, *&v32[16], v33, v34}];
    [*(a1 + 40) setupOneToOneAudioStreamWithConfig:*(a1 + 32) streamGroupID:1937339233];
  }

  if ([objc_msgSend(*(*v5 + 52) negotiatedResultsForGroupID:{1718909044), "isSupported"}])
  {
    [*(a1 + 40) setupOneToOneVideoStreamWithConfig:*(a1 + 32) streamGroupID:1718909044];
  }

  if ([objc_msgSend(*(*v5 + 52) negotiatedResultsForGroupID:{1650745716), "isSupported"}])
  {
    [*(a1 + 40) setupOneToOneVideoStreamWithConfig:*(a1 + 32) streamGroupID:1650745716];
  }

  if (objc_opt_class() == *v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 32) operatingMode];
        v19 = *(a1 + 56);
        *v32 = 136316162;
        *&v32[4] = v16;
        *&v32[12] = 2080;
        *&v32[14] = "[VCSessionParticipantLocal configureWithOneToOneParticipantConfig:shouldConfigureGFTStreams:]_block_invoke";
        *&v32[22] = 1024;
        LODWORD(v33) = 3107;
        WORD2(v33) = 1024;
        *(&v33 + 6) = v18;
        WORD5(v33) = 1024;
        HIDWORD(v33) = v19;
        v20 = " [%s] %s:%d Calling configureWithDeviceRole with AVC operatingMode=%d shouldConfigureGFTStreams=%d";
        v21 = v17;
        v22 = 40;
LABEL_33:
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, v32, v22);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [*v5 performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 40);
        v26 = [*(a1 + 32) operatingMode];
        v27 = *(a1 + 56);
        *v32 = 136316674;
        *&v32[4] = v23;
        *&v32[12] = 2080;
        *&v32[14] = "[VCSessionParticipantLocal configureWithOneToOneParticipantConfig:shouldConfigureGFTStreams:]_block_invoke";
        *&v32[22] = 1024;
        LODWORD(v33) = 3107;
        WORD2(v33) = 2112;
        *(&v33 + 6) = v15;
        HIWORD(v33) = 2048;
        v34 = v25;
        LOWORD(v35) = 1024;
        *(&v35 + 2) = v26;
        HIWORD(v35) = 1024;
        LODWORD(v36) = v27;
        v20 = " [%s] %s:%d %@(%p) Calling configureWithDeviceRole with AVC operatingMode=%d shouldConfigureGFTStreams=%d";
        v21 = v24;
        v22 = 60;
        goto LABEL_33;
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    if (([*(a1 + 40) dispatchedConfigureWithDeviceRole:objc_msgSend(*(a1 + 32) negotiatedVideoEnabled:"deviceRole") negotiatedScreenEnabled:objc_msgSend(*(a1 + 32) operatingMode:{"negotiatedVideoEnabled"), objc_msgSend(*(a1 + 32), "negotiatedScreenEnabled"), objc_msgSend(*(a1 + 32), "operatingMode")}] & 1) == 0)
    {
      __94__VCSessionParticipantLocal_configureWithOneToOneParticipantConfig_shouldConfigureGFTStreams___block_invoke_cold_2((a1 + 40));
      return;
    }
  }

  else if (([*(a1 + 40) configureOneToOneWithConfig:*(a1 + 32)] & 1) == 0)
  {
    __94__VCSessionParticipantLocal_configureWithOneToOneParticipantConfig_shouldConfigureGFTStreams___block_invoke_cold_1((a1 + 40));
    return;
  }

  [*(a1 + 40) setupOneToOneEncryptionInfoWithConfiguration:{*(a1 + 32), *v32, *&v32[8], v33, v34, v35, v36}];
  v28 = [objc_msgSend(objc_msgSend(objc_msgSend(*(*(a1 + 40) + 992) objectForKeyedSubscript:{&unk_1F579A200), "streamConfigs"), "objectAtIndexedSubscript:", 0), "framerate"}];
  *(*(a1 + 40) + 956) = *(*(a1 + 40) + 952);
  v29 = *(a1 + 40);
  if ((*(v29 + 409) & 1) != 0 || (v30 = v28, *(v29 + 538) == 1))
  {
    v30 = *(v29 + 952);
  }

  *(v29 + 952) = v30;
  *(*v5 + 239) = v28;
  v31 = *v5;
  if (*(*v5 + 408) == 1 && *(v31 + 374) == 1 && (*(v31 + 377) & 1) == 0 && v31[42] == 1)
  {
    [v31 registerForVideoCapture:v31[238]];
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

- (BOOL)configureOneToOneVideoStreamsWithDeviceRole:(int)a3
{
  v3 = *&a3;
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  videoStreamGroups = self->super._videoStreamGroups;
  v6 = [(NSMutableArray *)videoStreamGroups countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v6)
  {
    v8 = 0;
    return v8 & 1;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v18;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(videoStreamGroups);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      if (-[VCSessionParticipantLocal isOneToOneStreamGroup:](self, "isOneToOneStreamGroup:", [v11 streamGroupID]))
      {
        v12 = [v11 streamGroupConfigForMode:1];
        if (v12)
        {
          v13 = v12;
          if (-[VCSessionParticipant configureOneToOneVideoStreamsWithDeviceRole:streamInfoArray:](self, "configureOneToOneVideoStreamsWithDeviceRole:streamInfoArray:", v3, [v12 mediaStreamInfoArray]))
          {
            v8 = 1;
            if ([v11 updateConfig:v13 forMode:1])
            {
              continue;
            }

            [VCSessionParticipantLocal configureOneToOneVideoStreamsWithDeviceRole:];
          }

          else
          {
            [VCSessionParticipantLocal configureOneToOneVideoStreamsWithDeviceRole:];
          }
        }

        else
        {
          [(VCSessionParticipantLocal *)v11 configureOneToOneVideoStreamsWithDeviceRole:&v15];
        }

        v8 = v15;
        return v8 & 1;
      }
    }

    v7 = [(NSMutableArray *)videoStreamGroups countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  return v8 & 1;
}

- (BOOL)configureOneToOneAudioStreamsWithDeviceRole:(int)a3
{
  v3 = *&a3;
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->super._micStreamGroups];
  v6 = [(VCSessionParticipant *)self systemAudioGroup];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      if (-[VCSessionParticipantLocal isOneToOneStreamGroup:](self, "isOneToOneStreamGroup:", [v11 streamGroupID]) && objc_msgSend(v11, "streamGroupConfigForMode:", 1))
      {
        v12 = [v11 streamGroupConfigForMode:1];
        if (!-[VCSessionParticipant configureOneToOneAudioStreamsWithDeviceRole:streamInfoArray:](self, "configureOneToOneAudioStreamsWithDeviceRole:streamInfoArray:", v3, [v12 mediaStreamInfoArray]))
        {
          [VCSessionParticipantLocal configureOneToOneAudioStreamsWithDeviceRole:];
          return v14;
        }

        if (([v11 updateConfig:v12 forMode:1] & 1) == 0)
        {
          [VCSessionParticipantLocal configureOneToOneAudioStreamsWithDeviceRole:];
          return v14;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        return 1;
      }
    }
  }

  return 1;
}

- (void)setupOneToOneEncryptionInfoWithConfiguration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(VCSecurityKeyManager *)self->super._securityKeyManager latestSendKeyMaterialWithSecurityKeyMode:1];
  v6 = [objc_msgSend(v5 objectForKeyedSubscript:{@"SecurityLocallyGenerated", "BOOLValue"}];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCSessionParticipantLocal setupOneToOneEncryptionInfoWithConfiguration:]";
        v15 = 1024;
        v16 = 3215;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Already received Key material, updating oneToOne streams with the cached key material", &v11, 0x1Cu);
      }
    }

    p_oneToOneSettings = &self->_oneToOneSettings;
    [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](p_oneToOneSettings->streamInfo objectForKeyedSubscript:{&unk_1F579A1E8), "stream"), "handleEncryptionInfoChange:", v5}];
    if ([a3 negotiatedVideoEnabled])
    {
      [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](p_oneToOneSettings->streamInfo objectForKeyedSubscript:{&unk_1F579A200), "stream"), "handleEncryptionInfoChange:", v5}];
    }

    if ([a3 negotiatedScreenEnabled])
    {
      [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](p_oneToOneSettings->streamInfo objectForKeyedSubscript:{&unk_1F579A290), "stream"), "handleEncryptionInfoChange:", v5}];
    }
  }
}

- (id)newAudioStreamOneToOneConfigurationWithStreamGroupId:(unsigned int)a3
{
  v3 = *&a3;
  v22 = *MEMORY[0x1E69E9840];
  v5 = -[VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:](self, "newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:", -[VCSessionMediaNegotiator negotiatedResultsForGroupID:](self->super._mediaNegotiator, "negotiatedResultsForGroupID:", v3), 1, v3, [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](-[VCSessionMediaNegotiator localSettings](self->super._mediaNegotiator "localSettings")]);
  if (v3 == 1835623282)
  {
    [v5 setIsLowLatency:{-[VCSessionParticipant supportsLowLatencyAudio](self, "supportsLowLatencyAudio")}];
  }

  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newAudioStreamOneToOneConfigurationWithStreamGroupId:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v10 = 136316418;
          v11 = v8;
          v12 = 2080;
          v13 = "[VCSessionParticipantLocal newAudioStreamOneToOneConfigurationWithStreamGroupId:]";
          v14 = 1024;
          v15 = 3240;
          v16 = 2112;
          v17 = v7;
          v18 = 2048;
          v19 = self;
          v20 = 2080;
          v21 = FourccToCStr(v3);
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create one to one audio stream config for streamGroupId=%s", &v10, 0x3Au);
        }
      }
    }
  }

  return v5;
}

- (id)newVideoStreamOneToOneConfigurationWithStreamGroupId:(unsigned int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = -[VCSessionParticipant newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:](self, "newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:", 1, *&a3, [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](-[VCSessionMediaNegotiator localSettings](self->super._mediaNegotiator "localSettings")], 1, -[VCSessionMediaNegotiator negotiatedResultsForGroupID:](self->super._mediaNegotiator, "negotiatedResultsForGroupID:", *&a3));
  if (!v4)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newVideoStreamOneToOneConfigurationWithStreamGroupId:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v9 = 136316162;
          v10 = v7;
          v11 = 2080;
          v12 = "[VCSessionParticipantLocal newVideoStreamOneToOneConfigurationWithStreamGroupId:]";
          v13 = 1024;
          v14 = 3251;
          v15 = 2112;
          v16 = v6;
          v17 = 2048;
          v18 = self;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create one to one video stream config", &v9, 0x30u);
        }
      }
    }
  }

  return v4;
}

- (id)screenGroup
{
  streamGroups = self->super._streamGroups;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCSessionParticipant participantScreenToken](self, "participantScreenToken")}];

  return [(NSMutableDictionary *)streamGroups objectForKeyedSubscript:v3];
}

- (void)updateSupportedAudioRules:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_oneToOneSettings.streamInfo objectForKeyedSubscript:{&unk_1F579A1E8), "streamConfigs"}];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(objc_msgSend(v9, "audioRules"), "rules")}];
        [v10 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(a3, "rules"))}];
        if ([v10 count])
        {
          v11 = objc_alloc_init(VCAudioRuleCollection);
          -[VCAudioRuleCollection addAudioRules:](v11, "addAudioRules:", [v10 allObjects]);
          [v9 setAudioRulesNegotiated:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }
}

- (BOOL)containsStreamWithSSRC:(unsigned int)a3
{
  v3 = *&a3;
  v16 = *MEMORY[0x1E69E9840];
  if ((-[NSMutableSet containsObject:](self->_generatedSSRCs, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]) & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSMutableDictionary *)self->super._streamGroups allValues];
    v5 = [v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (!v5)
    {
      return v5;
    }

    v7 = v5;
    v8 = *v13;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v12 + 1) + 8 * v9) containsStreamWithSSRC:v3])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
        LOBYTE(v5) = 0;
        if (v7)
        {
          goto LABEL_6;
        }

        return v5;
      }
    }
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (void)updateWindowState:(int)a3 isLocal:(BOOL)a4 windowRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  v10 = *&a3;
  v30 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    self->super._presentationState = a3;
    [VCPowerManager_DefaultManager() setFeature:16 enable:a3 == 1];
    [(VCSessionParticipant *)self reportingAgent];
    reportingPIPEnabled();
    goto LABEL_20;
  }

  isRemotePresentationLarge = self->_isRemotePresentationLarge;
  remotePresentationState = self->_remotePresentationState;
  self->_remotePresentationState = a3;
  v14 = [(VCSessionParticipantLocal *)self isRemotePresentationLarge:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  self->_isRemotePresentationLarge = v14;
  v15 = remotePresentationState == v10 && isRemotePresentationLarge == v14;
  if (!v15 && self->super._oneToOneModeEnabled)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_19;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v19 = self->_isRemotePresentationLarge;
      *v26 = 136316674;
      *&v26[4] = v17;
      *&v26[12] = 2080;
      *&v26[14] = "[VCSessionParticipantLocal updateWindowState:isLocal:windowRect:]";
      *&v26[22] = 1024;
      *v27 = 3317;
      *&v27[4] = 1024;
      *&v27[6] = v19;
      *&v27[10] = 2048;
      *&v27[12] = width;
      *&v27[20] = 2048;
      *&v27[22] = height;
      *&v27[30] = 1024;
      LODWORD(v28) = v10;
      v20 = " [%s] %s:%d Recalculating bandwidth allocation _isRemotePresentationLarge=%u width=%f height=%f, presentationState=%u";
      v21 = v18;
      v22 = 60;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_19;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v25 = self->_isRemotePresentationLarge;
      *v26 = 136317186;
      *&v26[4] = v23;
      *&v26[12] = 2080;
      *&v26[14] = "[VCSessionParticipantLocal updateWindowState:isLocal:windowRect:]";
      *&v26[22] = 1024;
      *v27 = 3317;
      *&v27[4] = 2112;
      *&v27[6] = v16;
      *&v27[14] = 2048;
      *&v27[16] = self;
      *&v27[24] = 1024;
      *&v27[26] = v25;
      *&v27[30] = 2048;
      v28 = width;
      LOWORD(v29) = 2048;
      *(&v29 + 2) = height;
      WORD5(v29) = 1024;
      HIDWORD(v29) = v10;
      v20 = " [%s] %s:%d %@(%p) Recalculating bandwidth allocation _isRemotePresentationLarge=%u width=%f height=%f, presentationState=%u";
      v21 = v24;
      v22 = 80;
    }

    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, v26, v22);
LABEL_19:
    [(VCSessionUplinkBandwidthAllocator *)self->_uplinkBandwidthAllocator addBandwidthAllocationTableEntry:0 updateNow:1, *v26, *&v26[16], *v27, *&v27[16], *&v28, v29];
    [(VCSessionParticipantLocal *)self updateUplinkTargetBitrateForStreamGroups];
  }

LABEL_20:
  [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_oneToOneSettings.streamInfo objectForKeyedSubscript:{&unk_1F579A200), "stream"), "updateWindowState:isLocal:windowRect:", v10, v9, x, y, width, height}];
  [(VCSessionParticipantLocal *)self updateAudioSpectrumState];
}

- (void)localDeviceOrientationDidChange:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VCSessionParticipantLocal_localDeviceOrientationDidChange___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __61__VCSessionParticipantLocal_localDeviceOrientationDidChange___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__VCSessionParticipantLocal_localDeviceOrientationDidChange___block_invoke_2;
  v3[3] = &unk_1E85F7B88;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 callDelegateWithBlock:v3];
}

- (void)updateRemoteDeviceOrientation:(int)a3
{
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];

  VCVideoCaptureServer_UpdateRemoteScreenAttributes(a3, 1);
}

- (id)audioRuleCollectionWithAudioStreamConfig:(id)a3
{
  v4 = self;
  v67 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](-[VCAudioRuleCollection rules](self->super._supportedAudioRules, "rules"), "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [objc_msgSend(a3 "codecConfigurations")];
  v37 = [obj countByEnumeratingWithState:&v63 objects:v62 count:16];
  if (v37)
  {
    v36 = *v64;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v64 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v35 = [*(*(&v63 + 1) + 8 * v6) integerValue];
      v7 = [VCPayloadUtils payloadForCodecType:?];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v8 = [(VCAudioRuleCollection *)v4->super._supportedAudioRules rules];
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v58 objects:v57 count:16];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = v4;
      v12 = 0;
      v13 = *v59;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v59 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v58 + 1) + 8 * i);
          if ([v15 payload] == v7)
          {
            [v5 setObject:v15 atIndexedSubscript:{objc_msgSend(v5, "count")}];
            v12 = 1;
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v58 objects:v57 count:16];
      }

      while (v10);
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        break;
      }

      if (++v6 == v37)
      {
        v37 = [obj countByEnumeratingWithState:&v63 objects:v62 count:16];
        if (v37)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    if (objc_opt_class() == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_35;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v25 = [(VCAudioRuleCollection *)v4->super._supportedAudioRules rules];
      v26 = [(VCAudioRuleCollection *)v4->super._supportedAudioRules secondaryPayloads];
      *buf = 136316674;
      v44 = v23;
      v45 = 2080;
      v46 = "[VCSessionParticipantLocal audioRuleCollectionWithAudioStreamConfig:]";
      v47 = 1024;
      v48 = 3356;
      v49 = 1024;
      *v50 = v7;
      *&v50[4] = 1024;
      *&v50[6] = v35;
      *v51 = 2112;
      *&v51[2] = v25;
      *v52 = 2112;
      *&v52[2] = v26;
      v27 = " [%s] %s:%d Missing payload:%d (codecType:%d). Supported rules:%@ secondary:%@";
      v28 = v24;
      v29 = 60;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [(VCSessionParticipantLocal *)v4 performSelector:sel_logPrefix];
      }

      else
      {
        v22 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_35;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v32 = [(VCAudioRuleCollection *)v4->super._supportedAudioRules rules];
      v33 = [(VCAudioRuleCollection *)v4->super._supportedAudioRules secondaryPayloads];
      *buf = 136317186;
      v44 = v30;
      v45 = 2080;
      v46 = "[VCSessionParticipantLocal audioRuleCollectionWithAudioStreamConfig:]";
      v47 = 1024;
      v48 = 3356;
      v49 = 2112;
      *v50 = v22;
      *&v50[8] = 2048;
      *v51 = v4;
      *&v51[8] = 1024;
      *v52 = v7;
      *&v52[4] = 1024;
      *&v52[6] = v35;
      v53 = 2112;
      v54 = v32;
      v55 = 2112;
      v56 = v33;
      v27 = " [%s] %s:%d %@(%p) Missing payload:%d (codecType:%d). Supported rules:%@ secondary:%@";
      v28 = v31;
      v29 = 80;
    }

    _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_35:

    return 0;
  }

LABEL_18:
  v16 = objc_alloc_init(VCAudioRuleCollection);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = [v5 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v5);
        }

        [(VCAudioRuleCollection *)v16 addAudioRule:*(*(&v39 + 1) + 8 * j)];
      }

      v18 = [v5 countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v18);
  }

  return v16;
}

- (void)addCallInfoBlobToParticipantInfo:(id)a3
{
  v32[3] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(VCCallInfoBlob);
  self->super._callInfoBlob = v5;
  [(VCCallInfoBlob *)v5 setCallID:self->super._transportSessionID];
  [(VCCallInfoBlob *)self->super._callInfoBlob setClientVersion:+[VCCallInfo getVCCurrentVersion]];
  memset(v32, 170, 20);
  VCGetDeviceModelString(v32, 0x14uLL);
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v32 encoding:1];
  [(VCCallInfoBlob *)self->super._callInfoBlob setDeviceType:v6];
  memset(v31, 170, 20);
  VCGetSystemBuildVersionString(v31, 20);
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v31 encoding:1];
  [(VCCallInfoBlob *)self->super._callInfoBlob setOsVersion:v7];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:"2175.14.1.1" encoding:1];
  [(VCCallInfoBlob *)self->super._callInfoBlob setFrameworkVersion:v8];
  [a3 setObject:-[VCCallInfoBlob data](self->super._callInfoBlob forKeyedSubscript:{"data"), @"vcSessionParticipantKeyCallInfoBlob"}];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = [-[VCCallInfoBlob formattedText](self->super._callInfoBlob "formattedText")];
        v19 = 136315906;
        v20 = v10;
        v21 = 2080;
        v22 = "[VCSessionParticipantLocal addCallInfoBlobToParticipantInfo:]";
        v23 = 1024;
        v24 = 3395;
        v25 = 2112;
        v26 = v12;
        v13 = " [%s] %s:%d Local Participant callInfoBlob = %@";
        v14 = v11;
        v15 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = [-[VCCallInfoBlob formattedText](self->super._callInfoBlob "formattedText")];
        v19 = 136316418;
        v20 = v16;
        v21 = 2080;
        v22 = "[VCSessionParticipantLocal addCallInfoBlobToParticipantInfo:]";
        v23 = 1024;
        v24 = 3395;
        v25 = 2112;
        v26 = v9;
        v27 = 2048;
        v28 = self;
        v29 = 2112;
        v30 = v18;
        v13 = " [%s] %s:%d %@(%p) Local Participant callInfoBlob = %@";
        v14 = v17;
        v15 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (BOOL)createParticipantInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v4 = [(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiationData];
    self->super._mediaBlobCompressed = v4;
    if (v4)
    {
      [v3 setObject:self->super._uuid forKeyedSubscript:@"vcSessionParticipantKeyUUID"];
      [v3 setObject:self->super._mediaBlobCompressed forKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
      [(VCSessionParticipantLocal *)self addCallInfoBlobToParticipantInfo:v3];
      self->super._participantInfo = v3;
    }

    else
    {
      [(VCSessionParticipantLocal *)self createParticipantInfo];
    }
  }

  else
  {
    [(VCSessionParticipantLocal *)self createParticipantInfo];
  }

  return self->super._participantInfo != 0;
}

- (void)setMuted:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCSessionParticipantLocal_setMuted___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __38__VCSessionParticipantLocal_setMuted___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 372) = *(a1 + 40);
  [*(*(a1 + 32) + 392) setMuted:*(*(a1 + 32) + 372)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 480);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
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

        [*(*(&v8 + 1) + 8 * v6++) setMuted:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)isHighPriorityAudioWithPower:(float)a3 voiceActive:(BOOL)a4
{
  if (!a4)
  {
    if (a3 != -120.0)
    {
      v4 = 0;
      self->_averageSilenceAudioPower = self->_averageSilenceAudioPower + ((a3 - self->_averageSilenceAudioPower) * self->_audioSilencePowerAverageMultiplier);
      return v4;
    }

    return 0;
  }

  return (self->_averageSilenceAudioPower + self->_audioVoiceDetectionSensitivity) < a3;
}

- (void)startVoiceActivityDetection
{
  v3 = VCVoiceDetector_Create(0);
  self->_voiceDetector = v3;
  v4 = [(VCAudioIO *)self->super._audioIO clientFormat];

  VCVoiceDetector_Start(v3, v4);
}

- (void)stopVoiceActivityDetection
{
  VCVoiceDetector_Stop(self->_voiceDetector);

  VCVoiceDetector_Destroy(&self->_voiceDetector);
}

- (void)updateAudioPriorityWithSampleBuffer:(opaqueVCAudioBufferList *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  Priority = VCAudioBufferList_GetPriority(a3);
  if (!self->_forcedAudioPriorityEnabled)
  {
    goto LABEL_6;
  }

  v6 = micro();
  if (v6 - self->_forcedAudioPriorityLastUpdateTime > 1.0)
  {
    self->_forcedAudioPriorityValue = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityValue];
    self->_forcedAudioPriorityLastUpdateTime = v6;
  }

  forcedAudioPriorityValue = self->_forcedAudioPriorityValue;
  if (self->_forcedAudioPriorityValue)
  {
    VCAudioBufferList_SetPriority(a3, self->_forcedAudioPriorityValue);
    Priority = forcedAudioPriorityValue;
  }

  else
  {
LABEL_6:
    if (!Priority)
    {
      if (self->super._oneToOneModeEnabled)
      {
        Priority = 0;
      }

      else
      {
        Priority = VCVoiceDetector_ProcessSampleBuffer(self->_voiceDetector, a3, self->super._isMuted);
      }
    }
  }

  if (Priority != self->_lastAudioPriority)
  {
    self->_lastAudioPriority = Priority;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__VCSessionParticipantLocal_updateAudioPriorityWithSampleBuffer___block_invoke;
    v8[3] = &unk_1E85F6758;
    v8[4] = self;
    v9 = Priority;
    [(VCSessionParticipant *)self callDelegateWithBlock:v8];
  }
}

- (id)newStreamInfoWithVideoStreamWithConfiguration:(id)a3 idsDestination:(id)a4 groupID:(unsigned int)a5
{
  v5 = *&a5;
  v57 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:];
        }
      }

      goto LABEL_60;
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_60;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 136316418;
    v41 = v27;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:]";
    v44 = 1024;
    v45 = 3531;
    v46 = 2112;
    v47 = v23;
    v48 = 2048;
    v49 = self;
    v50 = 2080;
    *v51 = FourccToCStr(v5);
    v29 = " [%s] %s:%d %@(%p) Video stream config is missing for streamGroupID=%s!";
    v30 = v28;
    v31 = 58;
    goto LABEL_70;
  }

  if (![a3 rtpTimestampRate])
  {
    [a3 setRtpTimestampRate:{-[VCSessionParticipant preferredIOSampleRateForGroupID:](self, "preferredIOSampleRateForGroupID:", v5)}];
  }

  if ([(VCSessionParticipantLocal *)self shouldEnableUplinkRetransmissionForStreamGroupID:v5])
  {
    isRetransmissionEnabled = self->_isRetransmissionEnabled;
  }

  else
  {
    isRetransmissionEnabled = 0;
  }

  [a3 setIsUplinkRetransmissionEnabled:isRetransmissionEnabled];
  if (self->_isRetransmissionEnabled && ([objc_msgSend(a3 "multiwayConfig")] & 1) == 0)
  {
    [a3 setLtrpEnabled:1];
    [a3 setRtcpEnabled:1];
  }

  [(VCSessionParticipant *)self setFECConfigurationOnStreamConfig:a3 withStreamGroupID:v5];
  [a3 setIsLowBandwidthSinglePacketDuplicationEnabled:self->_isLowBandwidthSinglePacketDuplicationEnabled];
  [a3 setIsLateKeyFrameDetectionEnabled:self->_isLateKeyFrameDetectionEnabled];
  if ([objc_msgSend(a3 "multiwayConfig")])
  {
    forceL4SHighDataRate = self->_forceL4SHighDataRate;
  }

  else
  {
    forceL4SHighDataRate = 0;
  }

  [a3 setForceL4SHighDataRate:forceL4SHighDataRate];
  v10 = [(VCSessionParticipantLocal *)self newVideoStreamWithConfig:a3 groupID:v5];
  v11 = objc_opt_class();
  if (!v10)
  {
    if (v11 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:];
        }
      }

      goto LABEL_60;
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v24 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v32 = VRTraceErrorLogLevelToCSTR(), v33 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_60:
      v21 = 0;
      v10 = 0;
      goto LABEL_28;
    }

    *buf = 136316162;
    v41 = v32;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:]";
    v44 = 1024;
    v45 = 3547;
    v46 = 2112;
    v47 = v24;
    v48 = 2048;
    v49 = self;
    v29 = " [%s] %s:%d %@(%p) Failed to allocate video stream!";
    v30 = v33;
    v31 = 48;
LABEL_70:
    _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
    goto LABEL_60;
  }

  if (v11 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v41 = v13;
        v42 = 2080;
        v43 = "[VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:]";
        v44 = 1024;
        v45 = 3548;
        v46 = 2048;
        v47 = v10;
        v48 = 2080;
        v49 = FourccToCStr(v5);
        v50 = 1024;
        *v51 = [objc_msgSend(a3 "multiwayConfig")];
        *&v51[4] = 1024;
        *&v51[6] = [objc_msgSend(a3 "multiwayConfig")];
        v15 = " [%s] %s:%d video stream successfully created: %p! streamGroupID=%s streamId=%d repairStreamId=%d";
        v16 = v14;
        v17 = 60;
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317186;
        v41 = v18;
        v42 = 2080;
        v43 = "[VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:]";
        v44 = 1024;
        v45 = 3548;
        v46 = 2112;
        v47 = v12;
        v48 = 2048;
        v49 = self;
        v50 = 2048;
        *v51 = v10;
        *&v51[8] = 2080;
        v52 = FourccToCStr(v5);
        v53 = 1024;
        v54 = [objc_msgSend(a3 "multiwayConfig")];
        v55 = 1024;
        v56 = [objc_msgSend(a3 "multiwayConfig")];
        v15 = " [%s] %s:%d %@(%p) video stream successfully created: %p! streamGroupID=%s streamId=%d repairStreamId=%d";
        v16 = v19;
        v17 = 80;
        goto LABEL_24;
      }
    }
  }

  [(__CFString *)v10 setReportingAgent:[(VCSessionParticipant *)self reportingAgent]];
  [(__CFString *)v10 setExperimentManager:self->super._experimentManager];
  [(__CFString *)v10 setDelegate:self];
  -[__CFString setLogPrefix:](v10, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"participantID:%@ streamGroupId=%s", self->super._uuid, FourccToCStr(v5)]);
  [(VCSessionParticipantLocal *)self setupEncodingModeWithVideoStreamConfig:a3];
  if (![(VCSessionParticipantLocal *)self setupStreamRTP:v10])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:];
        }
      }

      goto LABEL_68;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_68;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_68;
    }

    v36 = FourccToCStr(v5);
    *buf = 136316418;
    v41 = v34;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:]";
    v44 = 1024;
    v45 = 3557;
    v46 = 2112;
    v47 = v25;
    v48 = 2048;
    v49 = self;
    v50 = 2080;
    *v51 = v36;
    v37 = " [%s] %s:%d %@(%p) invalid capabilies dictionary for streamGroupID=%s!";
    goto LABEL_72;
  }

  v20 = objc_alloc_init(VCSessionParticipantMediaStreamInfo);
  if (!v20)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:];
        }
      }

      goto LABEL_68;
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v38 = VRTraceErrorLogLevelToCSTR(), v35 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_68:
      v21 = 0;
      goto LABEL_28;
    }

    v39 = FourccToCStr(v5);
    *buf = 136316418;
    v41 = v38;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:]";
    v44 = 1024;
    v45 = 3560;
    v46 = 2112;
    v47 = v26;
    v48 = 2048;
    v49 = self;
    v50 = 2080;
    *v51 = v39;
    v37 = " [%s] %s:%d %@(%p) Failed to allocate participant video stream info for streamGroupID=%s";
LABEL_72:
    _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, v37, buf, 0x3Au);
    goto LABEL_68;
  }

  v21 = v20;
  [(VCSessionParticipantMediaStreamInfo *)v20 setStream:v10];
  [(VCSessionParticipantMediaStreamInfo *)v21 addStreamConfig:a3];
LABEL_28:

  return v21;
}

- (BOOL)shouldEnableUplinkRetransmissionForStreamGroupID:(unsigned int)a3
{
  result = 1;
  if (a3 <= 1835623286)
  {
    if (a3 > 1684108336)
    {
      if (a3 - 1684108337 >= 5)
      {
        v4 = 1835623282;
        goto LABEL_13;
      }

      return 0;
    }

    if (a3 == 1667329399)
    {
      return 0;
    }

    v4 = 1667330164;
LABEL_13:
    if (a3 != v4)
    {
      return result;
    }

    return 0;
  }

  if (a3 <= 1986618416)
  {
    if (a3 == 1835623287 || a3 == 1936290409)
    {
      return 0;
    }

    v4 = 1937339233;
    goto LABEL_13;
  }

  if (a3 - 1986618417 <= 3)
  {
    return 0;
  }

  return result;
}

- (id)newVideoStreamWithConfig:(id)a3 groupID:(unsigned int)a4
{
  if (a4 == 1667330164)
  {
    v6 = [VCCaptionsStream alloc];
    transportSessionID = self->super._transportSessionID;
    idsParticipantID = self->super._idsParticipantID;
    v9 = [objc_msgSend(a3 "multiwayConfig")];
    v10 = [(VCSessionParticipant *)self participantVideoToken];

    return [(VCCaptionsStream *)v6 initWithTransportSessionID:transportSessionID idsParticipantID:idsParticipantID ssrc:v9 streamToken:v10];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
    v13 = [VCVideoStream alloc];
    v14 = self->super._transportSessionID;
    v15 = self->super._idsParticipantID;
    v16 = [objc_msgSend(a3 "multiwayConfig")];
    v17 = [(VCSessionParticipant *)self participantVideoToken];

    return [(VCVideoStream *)v13 initWithTransportSessionID:v14 idsParticipantID:v15 ssrc:v16 streamToken:v17 logPrefix:v12];
  }
}

- (id)newStreamInfoWithAudioStreamWithConfiguration:(id)a3 idsDestination:(id)a4 isMultiway:(BOOL)a5 streamGroupID:(unsigned int)a6 streamToken:(int64_t)a7
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:];
        }
      }

      goto LABEL_64;
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_64;
    }

    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136316162;
    v41 = v31;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:]";
    v44 = 1024;
    v45 = 3616;
    v46 = 2112;
    v47 = v26;
    v48 = 2048;
    v49 = self;
    v33 = " [%s] %s:%d %@(%p) Audio stream config is missing!";
    goto LABEL_83;
  }

  v9 = *&a6;
  if (![a3 rtpTimestampRate])
  {
    [a3 setRtpTimestampRate:{-[VCSessionParticipant preferredIOSampleRateForGroupID:](self, "preferredIOSampleRateForGroupID:", v9)}];
  }

  v12 = -[VCAudioStream initWithClientPid:ssrc:transportSessionID:streamToken:experimentManager:logPrefix:]([VCAudioStream alloc], "initWithClientPid:ssrc:transportSessionID:streamToken:experimentManager:logPrefix:", self->super._processId, [objc_msgSend(a3 "multiwayConfig")], self->super._transportSessionID, a7, self->super._experimentManager, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"parent=%p", self));
  v13 = objc_opt_class();
  if (!v12)
  {
    if (v13 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:];
        }
      }

      goto LABEL_64;
    }

    if (objc_opt_respondsToSelector())
    {
      v27 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v27 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v34 = VRTraceErrorLogLevelToCSTR(), v32 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_64:
      v24 = 0;
      v12 = 0;
      goto LABEL_29;
    }

    *buf = 136316162;
    v41 = v34;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:]";
    v44 = 1024;
    v45 = 3629;
    v46 = 2112;
    v47 = v27;
    v48 = 2048;
    v49 = self;
    v33 = " [%s] %s:%d %@(%p) Failed to allocate audio stream!";
LABEL_83:
    _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x30u);
    goto LABEL_64;
  }

  if (v13 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316674;
    v41 = v15;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:]";
    v44 = 1024;
    v45 = 3630;
    v46 = 2048;
    v47 = v12;
    v48 = 2080;
    v49 = FourccToCStr(v9);
    v50 = 1024;
    *v51 = [objc_msgSend(a3 "multiwayConfig")];
    *&v51[4] = 1024;
    *&v51[6] = [objc_msgSend(a3 "multiwayConfig")];
    v17 = " [%s] %s:%d audio stream successfully created: %p! streamGroupID=%s streamId=%d v2StreamID=%d";
    v18 = v16;
    v19 = 60;
    goto LABEL_15;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
  }

  else
  {
    v14 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317186;
      v41 = v20;
      v42 = 2080;
      v43 = "[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:]";
      v44 = 1024;
      v45 = 3630;
      v46 = 2112;
      v47 = v14;
      v48 = 2048;
      v49 = self;
      v50 = 2048;
      *v51 = v12;
      *&v51[8] = 2080;
      v52 = FourccToCStr(v9);
      v53 = 1024;
      v54 = [objc_msgSend(a3 "multiwayConfig")];
      v55 = 1024;
      v56 = [objc_msgSend(a3 "multiwayConfig")];
      v17 = " [%s] %s:%d %@(%p) audio stream successfully created: %p! streamGroupID=%s streamId=%d v2StreamID=%d";
      v18 = v21;
      v19 = 80;
LABEL_15:
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }
  }

LABEL_16:
  -[VCObject setLogPrefix:](v12, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"participantID:%@ ", self->super._uuid]);
  if ([objc_msgSend(a3 "multiwayConfig")])
  {
    v22 = [a3 networkFeedbackController];
  }

  else
  {
    v22 = 0;
  }

  [(VCMediaStream *)v12 setNetworkFeedbackController:v22];
  if (![(VCSessionParticipantLocal *)self setupStreamRTP:v12])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:];
        }
      }

      goto LABEL_81;
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v28 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_81;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

    *buf = 136316162;
    v41 = v35;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:]";
    v44 = 1024;
    v45 = 3636;
    v46 = 2112;
    v47 = v28;
    v48 = 2048;
    v49 = self;
    v37 = " [%s] %s:%d %@(%p) invalid capabilies dictionary!";
    goto LABEL_80;
  }

  v23 = objc_alloc_init(VCSessionParticipantMediaStreamInfo);
  if (!v23)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:];
        }
      }

      goto LABEL_81;
    }

    if (objc_opt_respondsToSelector())
    {
      v29 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v29 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_81;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

    *buf = 136316162;
    v41 = v38;
    v42 = 2080;
    v43 = "[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:]";
    v44 = 1024;
    v45 = 3639;
    v46 = 2112;
    v47 = v29;
    v48 = 2048;
    v49 = self;
    v37 = " [%s] %s:%d %@(%p) Failed to allocate participant audio stream info";
LABEL_80:
    _os_log_error_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_ERROR, v37, buf, 0x30u);
    goto LABEL_81;
  }

  v24 = v23;
  if (v9 != 1937339233 && !a5)
  {
    [a3 setAudioRules:{-[VCSessionParticipantLocal audioRuleCollectionWithAudioStreamConfig:](self, "audioRuleCollectionWithAudioStreamConfig:", a3)}];
    if (![objc_msgSend(objc_msgSend(a3 "audioRules")])
    {

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:];
          }
        }

        goto LABEL_81;
      }

      if (objc_opt_respondsToSelector())
      {
        v30 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v41 = v39;
          v42 = 2080;
          v43 = "[VCSessionParticipantLocal newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:]";
          v44 = 1024;
          v45 = 3643;
          v46 = 2112;
          v47 = v30;
          v48 = 2048;
          v49 = self;
          v37 = " [%s] %s:%d %@(%p) Failed to initialize audio rule collection!";
          goto LABEL_80;
        }
      }

LABEL_81:
      v24 = 0;
      goto LABEL_29;
    }
  }

  [a3 setForceEVSWideBand:{-[VCHardwareSettingsEmbedded deviceClass](+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded, "sharedInstance"), "deviceClass") == 6}];
  if ([+[VCDefaults forceEVSWideBand] sharedInstance]
  {
    [a3 setForceEVSWideBand:1];
  }

  [(VCSessionParticipantMediaStreamInfo *)v24 setStream:v12];
  [(VCSessionParticipantMediaStreamInfo *)v24 addStreamConfig:a3];
  if (!a5 && [objc_msgSend(a3 "multiwayConfig")])
  {
    -[NSMutableDictionary setObject:forKey:](self->_oneToOneSettings.streamInfo, "setObject:forKey:", v24, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9]);
  }

LABEL_29:

  return v24;
}

- (void)setupEncodingModeWithVideoStreamConfig:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  [a3 setEncodingMode:0];
  [a3 setVideoPriorityPointer:&self->_videoPriority];
  if (self->_videoPriorityEnabled)
  {
    if ([objc_msgSend(a3 "multiwayConfig")] == 20000)
    {
      [a3 setEncodingMode:1];
    }
  }

  else
  {
    atomic_store(0, &self->_videoPriority);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      videoPriorityEnabled = self->_videoPriorityEnabled;
      v8 = 136316418;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSessionParticipantLocal setupEncodingModeWithVideoStreamConfig:]";
      v12 = 1024;
      v13 = 3674;
      v14 = 1024;
      v15 = videoPriorityEnabled;
      v16 = 1024;
      v17 = [objc_msgSend(a3 "multiwayConfig")];
      v18 = 1024;
      v19 = [a3 encodingMode];
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _videoPriorityEnabled=%d, maxMediaBitrate=%u, encodingMode=%d", &v8, 0x2Eu);
    }
  }
}

- (void)generateKeyFrameWithStreamID:(id)a3 streamGroupID:(unsigned int)a4 firType:(int)a5
{
  v5 = *&a5;
  v21 = *MEMORY[0x1E69E9840];
  v9 = [(VCSessionParticipant *)self streamGroupWithID:*&a4];
  if (a4 && (v10 = v9) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    [v10 generateKeyFrameWithStreamID:a3 firType:v5];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    videoStreamGroups = self->super._videoStreamGroups;
    v12 = [(NSMutableArray *)videoStreamGroups countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
LABEL_9:
      v15 = 0;
      while (1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(videoStreamGroups);
        }

        if ([*(*(&v17 + 1) + 8 * v15) generateKeyFrameWithStreamID:a3 firType:v5])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [(NSMutableArray *)videoStreamGroups countByEnumeratingWithState:&v17 objects:v16 count:16];
          if (v13)
          {
            goto LABEL_9;
          }

          return;
        }
      }
    }
  }
}

- (BOOL)checkSubscribedStreamsConsistency:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        BoolValueForKey = VCDefaults_GetBoolValueForKey(@"simulateStreamFracture", 0);
        if ([(NSMutableSet *)self->_localPublishedStreams containsObject:v9])
        {
          v11 = !BoolValueForKey;
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCSessionParticipantLocal checkSubscribedStreamsConsistency:];
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v13 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
            }

            else
            {
              v13 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v14 = VRTraceErrorLogLevelToCSTR();
              v15 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                v19 = v14;
                v20 = 2080;
                v21 = "[VCSessionParticipantLocal checkSubscribedStreamsConsistency:]";
                v22 = 1024;
                v23 = 3695;
                v24 = 2112;
                v25 = v13;
                v26 = 2048;
                v27 = self;
                v28 = 2112;
                v29 = v9;
                _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) MEDIA FRACTURE SITUATION! peer asking for unknown stream:%@", buf, 0x3Au);
              }
            }
          }

          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __63__VCSessionParticipantLocal_checkSubscribedStreamsConsistency___block_invoke;
          v17[3] = &unk_1E85F6780;
          v17[4] = self;
          [(VCSessionParticipant *)self callDelegateWithBlock:v17];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionaryAddValue(Mutable, @"VCSErrorDetected", &unk_1F579A2A8);
          [(VCSessionParticipant *)self reportingAgent];
          reportingGenericEvent();
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return 0;
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t __63__VCSessionParticipantLocal_checkSubscribedStreamsConsistency___block_invoke(uint64_t a1, void *a2)
{
  v4 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 13, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSessionParticipantLocal.m", 3697], 0);
  v5 = *(a1 + 32);

  return [a2 vcSessionParticipant:v5 didDetectError:v4];
}

- (void)dispatchedSetPeerSubscribedStreams:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [(VCSessionParticipantLocal *)self checkSubscribedStreamsConsistency:?];
  [(VCSessionParticipantLocal *)self updateRedundancyEnabledForPeerSubscribedStreams:a3];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(VCSessionParticipantLocal *)self updatePeerSubscribedStreams:a3 streamGroup:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  [(VCSessionParticipantLocal *)self dispatchedUpdateUplinkTargetBitrate:self->_currentUplinkTargetBitrate rateChangeCounter:self->_currentRateChangeCounter];
}

- (void)setPeerSubscribedStreams:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCSessionParticipantLocal_setPeerSubscribedStreams___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __54__VCSessionParticipantLocal_setPeerSubscribedStreams___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v3 = *(a1 + 40);
      v4 = v3 ? [objc_msgSend(v3 "description")] : "<nil>";
      asprintf(&__str, "%s", v4);
      if (__str)
      {
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
              v46 = v15;
              v47 = 2080;
              v48 = "[VCSessionParticipantLocal setPeerSubscribedStreams:]_block_invoke";
              v49 = 1024;
              v50 = 3725;
              v51 = 2080;
              v52 = "peerSubscribedStreams=";
              v53 = 2080;
              v54 = v13;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v13 = strtok_r(0, "\n", &__lasts);
        }

        while (v13);
        goto LABEL_26;
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

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v5 = [(__CFString *)v2 UTF8String];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = v6 ? [objc_msgSend(v6 "description")] : "<nil>";
      asprintf(&__str, "%s(%p) %s", v5, v7, v8);
      if (__str)
      {
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
              v46 = v11;
              v47 = 2080;
              v48 = "[VCSessionParticipantLocal setPeerSubscribedStreams:]_block_invoke";
              v49 = 1024;
              v50 = 3725;
              v51 = 2080;
              v52 = "peerSubscribedStreams=";
              v53 = 2080;
              v54 = v9;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v9 = strtok_r(0, "\n", &__lasts);
        }

        while (v9);
LABEL_26:
        free(__str);
      }
    }
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v18 = *(*(a1 + 32) + 848);
      v19 = v18 ? [objc_msgSend(v18 "description")] : "<nil>";
      asprintf(&__str, "%s", v19);
      if (__str)
      {
        __lasts = 0;
        v28 = strtok_r(__str, "\n", &__lasts);
        v29 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *v29;
            if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v46 = v30;
              v47 = 2080;
              v48 = "[VCSessionParticipantLocal setPeerSubscribedStreams:]_block_invoke";
              v49 = 1024;
              v50 = 3726;
              v51 = 2080;
              v52 = "localPublishedStreams=";
              v53 = 2080;
              v54 = v28;
              _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v28 = strtok_r(0, "\n", &__lasts);
        }

        while (v28);
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v20 = [(__CFString *)v17 UTF8String];
      v21 = *(a1 + 32);
      v22 = v21[106];
      v23 = v22 ? [objc_msgSend(v22 "description")] : "<nil>";
      asprintf(&__str, "%s(%p) %s", v20, v21, v23);
      if (__str)
      {
        __lasts = 0;
        v24 = strtok_r(__str, "\n", &__lasts);
        v25 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *v25;
            if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v46 = v26;
              v47 = 2080;
              v48 = "[VCSessionParticipantLocal setPeerSubscribedStreams:]_block_invoke";
              v49 = 1024;
              v50 = 3726;
              v51 = 2080;
              v52 = "localPublishedStreams=";
              v53 = 2080;
              v54 = v24;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v24 = strtok_r(0, "\n", &__lasts);
        }

        while (v24);
LABEL_52:
        free(__str);
      }
    }
  }

  v32 = *(a1 + 32);
  if (v32[408] != 1)
  {
    return [v32 dispatchedSetPeerSubscribedStreams:*(a1 + 40)];
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_66;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_66;
    }

    *buf = 136315650;
    v46 = v35;
    v47 = 2080;
    v48 = "[VCSessionParticipantLocal setPeerSubscribedStreams:]_block_invoke";
    v49 = 1024;
    v50 = 3729;
    v37 = " [%s] %s:%d Peer subscribed streams update occurred while in OneToOne mode. Ignoring subscribed streams update now. Will re-apply subscribedStreams after switching to multiwayMode";
    v38 = v36;
    v39 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v33 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v33 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_66;
    }

    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_66;
    }

    v42 = *(a1 + 32);
    *buf = 136316162;
    v46 = v40;
    v47 = 2080;
    v48 = "[VCSessionParticipantLocal setPeerSubscribedStreams:]_block_invoke";
    v49 = 1024;
    v50 = 3729;
    v51 = 2112;
    v52 = v33;
    v53 = 2048;
    v54 = v42;
    v37 = " [%s] %s:%d %@(%p) Peer subscribed streams update occurred while in OneToOne mode. Ignoring subscribed streams update now. Will re-apply subscribedStreams after switching to multiwayMode";
    v38 = v41;
    v39 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
LABEL_66:
  [*(*(a1 + 32) + 1144) removeAllObjects];
  return [*(*(a1 + 32) + 1144) addObjectsFromArray:*(a1 + 40)];
}

- (void)updateRedundancyEnabledForPeerSubscribedStreams:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (![+[VCDefaults forceFECRepairStream] sharedInstance]
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSMutableDictionary *)self->super._streamGroups allValues];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (!v7)
    {
      v5 = 0;
      goto LABEL_3;
    }

    v8 = v7;
    v9 = *v14;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [MEMORY[0x1E695DFD8] setWithArray:{-[VCSessionUplinkBandwidthAllocator repairStreamIDsForStreamToken:](self->_uplinkBandwidthAllocator, "repairStreamIDsForStreamToken:", objc_msgSend(*(*(&v13 + 1) + 8 * v10), "streamToken"))}];
      if ([objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{a3), "intersectsSet:", v11}])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
        v5 = 0;
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_3;
      }
    }
  }

  v5 = 1;
LABEL_3:
  [(VCSessionParticipantLocal *)self enableRedundancy:v5];
}

- (void)updatePeerSubscribedStreams:(id)a3 streamGroup:(id)a4
{
  v7 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(objc_msgSend(a4, "streamIDToMediaStreamMap"), "allKeys")}];
  [v7 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", a3)}];
  v8 = [objc_msgSend(v7 "allObjects")];
  v9 = [VCSessionParticipantLocal updateUplinkStreamsForPeerSubscribedStreams:v8 streamGroup:a4 uplinkBandwidthAllocator:self->_uplinkBandwidthAllocator];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:{-[VCSessionUplinkBandwidthAllocator repairStreamIDsForStreamToken:](self->_uplinkBandwidthAllocator, "repairStreamIDsForStreamToken:", objc_msgSend(a4, "streamToken"))}];
  LOBYTE(v10) = [a4 updatePeerSubscribedStreams:v8 containsRepairStreams:{objc_msgSend(objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v8), "intersectsSet:", v10)}];

  if ((v10 & 1) != 0 || v9)
  {
    currentUplinkTargetBitrate = self->_currentUplinkTargetBitrate;
    currentRateChangeCounter = self->_currentRateChangeCounter;

    [(VCSessionParticipantLocal *)self updateMediaStreamsForStreamGroup:a4 uplinkBitrateCap:currentUplinkTargetBitrate rateChangeCounter:currentRateChangeCounter];
  }
}

+ (BOOL)updateBandwidthAllocator:(id)a3 activeStream:(id)a4 peerSubscribedStreams:(id)a5 streamGroup:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = [a4 multiwayConfig];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = [v11 streamIds];
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (!v13)
  {
    return v13;
  }

  v14 = v13;
  v31 = a1;
  v32 = v11;
  v33 = a3;
  LOBYTE(a1) = 0;
  LOBYTE(v15) = 0;
  v16 = *v50;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v50 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v49 + 1) + 8 * i);
      if (v15)
      {
        v15 = 1;
        if ((a1 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v15 = [objc_msgSend(a6 "peerSubscribedStreams")];
        if ((a1 & 1) == 0)
        {
LABEL_8:
          a1 = [a6 shouldSubscribeToStreamID:v18 peerSubscribedStreams:a5];
          goto LABEL_11;
        }
      }

      a1 = 1;
LABEL_11:
      if (v15 & a1)
      {
        goto LABEL_18;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  if (v15 == a1)
  {
LABEL_18:
    LOBYTE(v13) = 0;
    return v13;
  }

  if (objc_opt_class() == v31)
  {
    v19 = v33;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v23 = "subscribed to";
        }

        else
        {
          v23 = "unsubscribed from";
        }

        *buf = 136316162;
        v35 = v21;
        v36 = 2080;
        v37 = "+[VCSessionParticipantLocal updateBandwidthAllocator:activeStream:peerSubscribedStreams:streamGroup:]";
        v38 = 1024;
        v39 = 3798;
        v40 = 2080;
        v41 = v23;
        v42 = 2112;
        v43 = [a6 streamDescriptionForMediaStreamConfig:a4];
        v24 = " [%s] %s:%d Remote %s %@";
        v25 = v22;
        v26 = 48;
LABEL_33:
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
      }
    }
  }

  else
  {
    v19 = v33;
    if (objc_opt_respondsToSelector())
    {
      v20 = [v31 performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v29 = "subscribed to";
        }

        else
        {
          v29 = "unsubscribed from";
        }

        *buf = 136316674;
        v35 = v27;
        v36 = 2080;
        v37 = "+[VCSessionParticipantLocal updateBandwidthAllocator:activeStream:peerSubscribedStreams:streamGroup:]";
        v38 = 1024;
        v39 = 3798;
        v40 = 2112;
        v41 = v20;
        v42 = 2048;
        v43 = v31;
        v44 = 2080;
        v45 = v29;
        v46 = 2112;
        v47 = [a6 streamDescriptionForMediaStreamConfig:a4];
        v24 = " [%s] %s:%d %@(%p) Remote %s %@";
        v25 = v28;
        v26 = 68;
        goto LABEL_33;
      }
    }
  }

  LOBYTE(v13) = [v19 peerSubscription:a1 streamID:{objc_msgSend(v32, "idsStreamID")}];
  return v13;
}

+ (BOOL)updateUplinkStreamsForPeerSubscribedStreams:(id)a3 streamGroup:(id)a4 uplinkBandwidthAllocator:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [a4 mediaStreamInfoArray];
  v20 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
  v8 = 0;
  if (v20)
  {
    v19 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v9;
        v10 = *(*(&v28 + 1) + 8 * v9);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = [v10 streamConfigs];
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v23 + 1) + 8 * i);
              if ([objc_msgSend(v16 "multiwayConfig")])
              {
                v8 |= [VCSessionParticipantLocal updateBandwidthAllocator:a5 activeStream:v16 peerSubscribedStreams:a3 streamGroup:a4];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v23 objects:v22 count:16];
          }

          while (v13);
        }

        v9 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v20);
  }

  return v8 & 1;
}

- (BOOL)enableRedundancy:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  enableRedundancy = self->_enableRedundancy;
  if (enableRedundancy != a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v20 = v6;
        v21 = 2080;
        v22 = "[VCSessionParticipantLocal enableRedundancy:]";
        v23 = 1024;
        v24 = 3828;
        v25 = 1024;
        v26 = v3;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sender side redundancy changed to[%d]", buf, 0x22u);
      }
    }

    self->_enableRedundancy = v3;
    [(VCSessionUplinkBandwidthAllocator *)self->_uplinkBandwidthAllocator setRedundancyEnabled:v3];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(NSMutableDictionary *)self->super._streamGroups allValues];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * v12++) enableRedundancy:v3];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v10);
    }
  }

  return enableRedundancy != v3;
}

- (void)setRetransmissionEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCSessionParticipantLocal_setRetransmissionEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __54__VCSessionParticipantLocal_setRetransmissionEnabled___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 472) allValues];
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([*(a1 + 32) shouldEnableUplinkRetransmissionForStreamGroupID:{objc_msgSend(v7, "streamGroupID")}])
        {
          [v7 setRetransmissionEnabled:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  *(*(a1 + 32) + 1105) = *(a1 + 40);
  return result;
}

- (unsigned)fecHeaderVersion
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[VCHardwareSettings deviceClass];
  v4 = +[VCHardwareSettings isAppleSilicon];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = !v4;
  }

  if (v5)
  {
    return 1;
  }

  v6 = VCFeatureFlagManager_EnableFrameBasedFEC();
  experimentManager = self->super._experimentManager;
  if (experimentManager)
  {
    v8 = !v6;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v13 = 0;
    if ([(VCExperimentManager *)experimentManager experimentGroup:&v13 forExperiment:@"enableFrameBasedFEC"]< 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = v13 != 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v15 = v9;
          v16 = 2080;
          v17 = "[VCSessionParticipantLocal fecHeaderVersion]";
          v18 = 1024;
          v19 = 3862;
          v20 = 1024;
          v21 = v13;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCFeatureExperimentSetting: Found experiment group. fecFrameBasedExperimentGroup=%d", buf, 0x22u);
        }
      }
    }
  }

  if (v6)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)setUpCaptions
{
  v3[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__VCSessionParticipantLocal_setUpCaptions__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(participantQueue, v3);
}

uint64_t __42__VCSessionParticipantLocal_setUpCaptions__block_invoke(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 528))
  {
    v1 = result;
    *(*(result + 32) + 1136) = VCUniqueIDGenerator_GenerateID();
    [*(*(v1 + 32) + 216) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", *(*(v1 + 32) + 1136)), &unk_1F579A2C0}];
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v2 = *(v1 + 32);
    v3 = *(v2 + 1136);
    return [*(*(v1 + 32) + 528) registerStreamWithConfig:{&v3, Format_Float(v4, 1, *(v2 + 400))}];
  }

  return result;
}

- (void)updateUplinkTargetBitrate:(unsigned int)a3 rateChangeCounter:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__VCSessionParticipantLocal_updateUplinkTargetBitrate_rateChangeCounter___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(participantQueue, block);
}

uint64_t __73__VCSessionParticipantLocal_updateUplinkTargetBitrate_rateChangeCounter___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_18;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 592);
    if (*(v5 + 1032) == 1)
    {
      v7 = (v5 + 1036);
    }

    else
    {
      v7 = (a1 + 40);
    }

    v17 = *v7;
    *v21 = 136316162;
    *&v21[4] = v3;
    *&v21[12] = 2080;
    *&v21[14] = "[VCSessionParticipantLocal updateUplinkTargetBitrate:rateChangeCounter:]_block_invoke";
    *&v21[22] = 1024;
    LODWORD(v22) = 3906;
    WORD2(v22) = 1024;
    *(&v22 + 6) = v6;
    WORD5(v22) = 1024;
    HIDWORD(v22) = v17;
    v14 = " [%s] %s:%d Uplink TargetBitrate changed from %u to %u";
    v15 = v4;
    v16 = 40;
    goto LABEL_17;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 592);
      if (*(v10 + 1032) == 1)
      {
        v12 = (v10 + 1036);
      }

      else
      {
        v12 = (a1 + 40);
      }

      v13 = *v12;
      *v21 = 136316674;
      *&v21[4] = v8;
      *&v21[12] = 2080;
      *&v21[14] = "[VCSessionParticipantLocal updateUplinkTargetBitrate:rateChangeCounter:]_block_invoke";
      *&v21[22] = 1024;
      LODWORD(v22) = 3906;
      WORD2(v22) = 2112;
      *(&v22 + 6) = v2;
      HIWORD(v22) = 2048;
      v23 = v10;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v11;
      HIWORD(v24) = 1024;
      LODWORD(v25) = v13;
      v14 = " [%s] %s:%d %@(%p) Uplink TargetBitrate changed from %u to %u";
      v15 = v9;
      v16 = 60;
LABEL_17:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v21, v16);
    }
  }

LABEL_18:
  v18 = *(a1 + 32);
  if (*(v18 + 1032) == 1)
  {
    v19 = (v18 + 1036);
  }

  else
  {
    v19 = (a1 + 40);
  }

  *(v18 + 592) = *v19;
  *(*(a1 + 32) + 596) = *(a1 + 44);
  return [*(a1 + 32) dispatchedUpdateUplinkTargetBitrate:*(a1 + 40) rateChangeCounter:{*v21, *&v21[16], v22, v23, v24, v25}];
}

- (void)updateUplinkTargetBitrateForStreamGroups
{
  v3[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__VCSessionParticipantLocal_updateUplinkTargetBitrateForStreamGroups__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(participantQueue, v3);
}

uint64_t __69__VCSessionParticipantLocal_updateUplinkTargetBitrateForStreamGroups__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 592);
        *v14 = 136315906;
        *&v14[4] = v3;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantLocal updateUplinkTargetBitrateForStreamGroups]_block_invoke";
        *&v14[22] = 1024;
        LODWORD(v15) = 3915;
        WORD2(v15) = 1024;
        *(&v15 + 6) = v5;
        v6 = " [%s] %s:%d Uplink TargetBitrate set to %u";
        v7 = v4;
        v8 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v14, v8);
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

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(v11 + 592);
        *v14 = 136316418;
        *&v14[4] = v9;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantLocal updateUplinkTargetBitrateForStreamGroups]_block_invoke";
        *&v14[22] = 1024;
        LODWORD(v15) = 3915;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v2;
        HIWORD(v15) = 2048;
        v16 = v11;
        LOWORD(v17) = 1024;
        *(&v17 + 2) = v12;
        v6 = " [%s] %s:%d %@(%p) Uplink TargetBitrate set to %u";
        v7 = v10;
        v8 = 54;
        goto LABEL_11;
      }
    }
  }

  return [*(a1 + 32) dispatchedUpdateUplinkTargetBitrate:*(*(a1 + 32) + 592) rateChangeCounter:{*(*(a1 + 32) + 596), *v14, *&v14[16], v15, v16, v17, v18}];
}

- (void)dispatchedUpdateUplinkTargetBitrate:(unsigned int)a3 rateChangeCounter:(unsigned int)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->super._state == 1)
  {
    v4 = *&a4;
    v5 = *&a3;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(NSMutableDictionary *)self->super._streamGroups allValues];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          [v12 setCurrentUplinkTargetBitrate:v5];
          [(VCSessionParticipantLocal *)self updateMediaStreamsForStreamGroup:v12 uplinkBitrateCap:v5 rateChangeCounter:v4];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }
  }
}

- (void)updateTargetBitrateOneToOne:(unsigned int)a3 rateChangeCounter:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__VCSessionParticipantLocal_updateTargetBitrateOneToOne_rateChangeCounter___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(participantQueue, block);
}

uint64_t __75__VCSessionParticipantLocal_updateTargetBitrateOneToOne_rateChangeCounter___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = v5 + 976;
        LODWORD(v5) = *(v5 + 168);
        LODWORD(v6) = *(v6 + 32);
        v7 = *(a1 + 40);
        v8 = *(a1 + 44);
        *v20 = 136316674;
        *&v20[4] = v3;
        *&v20[12] = 2080;
        *&v20[14] = "[VCSessionParticipantLocal updateTargetBitrateOneToOne:rateChangeCounter:]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 3932;
        WORD2(v21) = 1024;
        *(&v21 + 6) = v6;
        WORD5(v21) = 1024;
        HIDWORD(v21) = v7;
        LOWORD(v22) = 1024;
        *(&v22 + 2) = v5;
        HIWORD(v22) = 1024;
        LODWORD(v23) = v8;
        v9 = " [%s] %s:%d OneToOne TargetBitrate changed from %u to %u (state=%u, rateChangeCounter=%u)";
        v10 = v4;
        v11 = 52;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v20, v11);
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

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(v14 + 168);
        v16 = *(v14 + 1008);
        v17 = *(a1 + 40);
        v18 = *(a1 + 44);
        *v20 = 136317186;
        *&v20[4] = v12;
        *&v20[12] = 2080;
        *&v20[14] = "[VCSessionParticipantLocal updateTargetBitrateOneToOne:rateChangeCounter:]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 3932;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v2;
        HIWORD(v21) = 2048;
        v22 = v14;
        LOWORD(v23) = 1024;
        *(&v23 + 2) = v16;
        HIWORD(v23) = 1024;
        LODWORD(v24) = v17;
        WORD2(v24) = 1024;
        *(&v24 + 6) = v15;
        WORD5(v24) = 1024;
        HIDWORD(v24) = v18;
        v9 = " [%s] %s:%d %@(%p) OneToOne TargetBitrate changed from %u to %u (state=%u, rateChangeCounter=%u)";
        v10 = v13;
        v11 = 72;
        goto LABEL_11;
      }
    }
  }

  *(*(a1 + 32) + 1008) = *(a1 + 40);
  *(*(a1 + 32) + 1012) = *(a1 + 44);
  *(*(a1 + 32) + 592) = *(a1 + 40);
  *(*(a1 + 32) + 596) = *(a1 + 44);
  return [*(a1 + 32) dispatchedUpdateUplinkTargetBitrate:*(a1 + 40) rateChangeCounter:{*v20, *&v20[16], v21, v22, v23, v24, v25}];
}

- (void)updateVCMediaQueueSize:(unsigned int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCSessionParticipantLocal_updateVCMediaQueueSize___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)dispatchedUpdateVCMediaQueueSize:(unsigned int)a3
{
  v41 = *MEMORY[0x1E69E9840];
  if (self->super._state == 1)
  {
    v4 = *&a3;
    if (self->_currentVCMediaQueueSize == a3)
    {
      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          currentVCMediaQueueSize = self->_currentVCMediaQueueSize;
          *buf = 136316162;
          v29 = v9;
          v30 = 2080;
          v31 = "[VCSessionParticipantLocal dispatchedUpdateVCMediaQueueSize:]";
          v32 = 1024;
          v33 = 3954;
          v34 = 1024;
          *v35 = currentVCMediaQueueSize;
          *&v35[4] = 1024;
          *&v35[6] = v4;
          v12 = " [%s] %s:%d VCMediaQueue size changed from old=%ums to new=%ums";
          v13 = v10;
          v14 = 40;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = self->_currentVCMediaQueueSize;
          *buf = 136316674;
          v29 = v15;
          v30 = 2080;
          v31 = "[VCSessionParticipantLocal dispatchedUpdateVCMediaQueueSize:]";
          v32 = 1024;
          v33 = 3954;
          v34 = 2112;
          *v35 = v5;
          *&v35[8] = 2048;
          v36 = self;
          v37 = 1024;
          v38 = v17;
          v39 = 1024;
          v40 = v4;
          v12 = " [%s] %s:%d %@(%p) VCMediaQueue size changed from old=%ums to new=%ums";
          v13 = v16;
          v14 = 60;
          goto LABEL_23;
        }
      }
    }

    self->_currentVCMediaQueueSize = v4;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    videoStreamGroups = self->super._videoStreamGroups;
    v19 = [(NSMutableArray *)videoStreamGroups countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(videoStreamGroups);
          }

          [*(*(&v24 + 1) + 8 * i) setMediaQueueSize:v4];
        }

        v20 = [(NSMutableArray *)videoStreamGroups countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v20);
    }

    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantLocal dispatchedUpdateVCMediaQueueSize:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v29 = v7;
        v30 = 2080;
        v31 = "[VCSessionParticipantLocal dispatchedUpdateVCMediaQueueSize:]";
        v32 = 1024;
        v33 = 3950;
        v34 = 2112;
        *v35 = v6;
        *&v35[8] = 2048;
        v36 = self;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) VCMediaQueue size should only be updated when participant is running", buf, 0x30u);
      }
    }
  }
}

- (tagVCNetworkStreamIdentifiers)generateSSRC:(BOOL)a3 streamID:(BOOL)a4 repairStreamID:(BOOL)a5 v2StreamID:(BOOL)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_1DBF04739;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = -1431655766;
  participantQueue = self->super._participantQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__VCSessionParticipantLocal_generateSSRC_streamID_repairStreamID_v2StreamID___block_invoke;
  v11[3] = &unk_1E85F61A8;
  v12 = a3;
  v11[4] = self;
  v11[5] = &v16;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  dispatch_sync(participantQueue, v11);
  v7 = v17[4];
  v8 = *(v17 + 10);
  _Block_object_dispose(&v16, 8);
  v9 = v7;
  v10 = v8;
  result.var0 = v9;
  result.var1 = WORD2(v9);
  result.var2 = HIWORD(v9);
  result.var3 = v10;
  return result;
}

uint64_t __77__VCSessionParticipantLocal_generateSSRC_streamID_repairStreamID_v2StreamID___block_invoke(uint64_t a1)
{
  do
  {
    result = RTPGenerateSSRC();
    *(*(*(a1 + 40) + 8) + 32) = result;
    *(*(*(a1 + 40) + 8) + 36) = *(*(*(a1 + 40) + 8) + 32);
    *(*(*(a1 + 40) + 8) + 38) = *(*(*(a1 + 40) + 8) + 36) + 1;
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 36);
    if (v4 < 0xFF9Bu)
    {
      v5 = 100;
    }

    else
    {
      v5 = 101;
    }

    *(v3 + 40) = v5 + v4;
    if (*(a1 + 48) == 1)
    {
      result = [*(a1 + 32) containsStreamWithSSRC:*(*(*(a1 + 40) + 8) + 32)];
      v6 = (result & 1) != 0 || *(*(*(a1 + 40) + 8) + 32) < 0x40u;
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 49) == 1)
    {
      result = [*(*(a1 + 32) + 1072) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *(*(*(a1 + 40) + 8) + 36))}];
      v7 = (result & 1) != 0 || *(*(*(a1 + 40) + 8) + 36) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (*(a1 + 50) == 1)
    {
      result = [*(*(a1 + 32) + 1072) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *(*(*(a1 + 40) + 8) + 38))}];
      v8 = (result & 1) != 0 || *(*(*(a1 + 40) + 8) + 38) == 0;
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 51) == 1)
    {
      result = [*(*(a1 + 32) + 1072) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *(*(*(a1 + 40) + 8) + 40))}];
      v9 = (result & 1) != 0 || *(*(*(a1 + 40) + 8) + 40) == 0;
    }

    else
    {
      v9 = 0;
    }
  }

  while (v6 || v7 || v8 || v9);
  if (*(a1 + 49) == 1)
  {
    result = [*(*(a1 + 32) + 1072) addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *(*(*(a1 + 40) + 8) + 36))}];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 36) = 0;
  }

  if (*(a1 + 50) == 1)
  {
    result = [*(*(a1 + 32) + 1072) addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *(*(*(a1 + 40) + 8) + 38))}];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 38) = 0;
  }

  if (*(a1 + 51) == 1)
  {
    result = [*(*(a1 + 32) + 1072) addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *(*(*(a1 + 40) + 8) + 40))}];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  if (*(a1 + 48) == 1)
  {
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 1080);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(v10 + 8) + 32)];

    return [v11 addObject:v12];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 32) = 0;
  }

  return result;
}

- (void)sourceFrameRateDidChange:(unsigned int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315906;
        *&v14[4] = v7;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantLocal sourceFrameRateDidChange:]";
        *&v14[22] = 1024;
        LODWORD(v15) = 4054;
        WORD2(v15) = 1024;
        *(&v15 + 6) = a3;
        v9 = " [%s] %s:%d frameRate=%u";
        v10 = v8;
        v11 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v14, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136316418;
        *&v14[4] = v12;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantLocal sourceFrameRateDidChange:]";
        *&v14[22] = 1024;
        LODWORD(v15) = 4054;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v5;
        HIWORD(v15) = 2048;
        v16 = self;
        LOWORD(v17) = 1024;
        *(&v17 + 2) = a3;
        v9 = " [%s] %s:%d %@(%p) frameRate=%u";
        v10 = v13;
        v11 = 54;
        goto LABEL_11;
      }
    }
  }

  *&v6 = a3;
  [(VCMediaRecorder *)self->super._mediaRecorder setFrameRate:v6, *v14, *&v14[16], v15, v16, v17, v18];
}

- (id)copyOnVideoFrameBlock
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VCSessionParticipantLocal_copyOnVideoFrameBlock__block_invoke;
  v3[3] = &unk_1E85F7BB0;
  v3[4] = self;
  return _Block_copy(v3);
}

- (void)avConferencePreviewError:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCSessionParticipantLocal avConferencePreviewError:]";
        v17 = 1024;
        v18 = 4067;
        v19 = 2112;
        v20 = a3;
        v8 = " [%s] %s:%d avConferencePreviewError %@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
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
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCSessionParticipantLocal avConferencePreviewError:]";
        v17 = 1024;
        v18 = 4067;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = a3;
        v8 = " [%s] %s:%d %@(%p) avConferencePreviewError %@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)thermalLevelDidChange:(int)a3
{
  v3 = *&a3;
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v6;
        v25 = 2080;
        v26 = "[VCSessionParticipantLocal thermalLevelDidChange:]";
        v27 = 1024;
        v28 = 4075;
        v29 = 1024;
        LODWORD(v30) = v3;
        v8 = " [%s] %s:%d thermalLevelDidChange %u";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v24 = v11;
        v25 = 2080;
        v26 = "[VCSessionParticipantLocal thermalLevelDidChange:]";
        v27 = 1024;
        v28 = 4075;
        v29 = 2112;
        v30 = v5;
        v31 = 2048;
        v32 = self;
        v33 = 1024;
        v34 = v3;
        v8 = " [%s] %s:%d %@(%p) thermalLevelDidChange %u";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  [(VCSessionParticipant *)self reportingAgent];
  micro();
  reportingThermal();
  [(VCSessionParticipantLocal *)self checkAndReportThermalIncreaseAudioOnly:v3];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  remoteParticipants = self->_remoteParticipants;
  v14 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        [*(*(&v19 + 1) + 8 * i) updateThermalLevel:v3];
      }

      v15 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v15);
  }
}

- (void)cameraAvailabilityDidChange:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v15 = 136315906;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCSessionParticipantLocal cameraAvailabilityDidChange:]";
      v19 = 1024;
      v20 = 4084;
      v21 = 1024;
      LODWORD(v22) = v3;
      v9 = " [%s] %s:%d cameraAvailabilityDidChange=%d ignored";
      v10 = v7;
      v11 = 34;
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      return;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [VCSessionParticipantLocal cameraAvailabilityDidChange:v6];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantLocal *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCSessionParticipantLocal cameraAvailabilityDidChange:]";
        v19 = 1024;
        v20 = 4084;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = self;
        v25 = 1024;
        v26 = v3;
        v9 = " [%s] %s:%d %@(%p) cameraAvailabilityDidChange=%d ignored";
        v10 = v13;
        v11 = 54;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCSessionParticipantLocal cameraAvailabilityDidChange:]";
        v19 = 1024;
        v20 = 4084;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = self;
        v25 = 1024;
        v26 = v3;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d %@(%p) cameraAvailabilityDidChange=%d ignored", &v15, 0x36u);
      }
    }
  }
}

- (void)captureSourcePositionDidChange:(BOOL)a3
{
  [(VCSessionParticipant *)self reportingAgent];

  reportingGenericEvent();
}

- (void)captureSourceCenterStageEnabledDidChange:(BOOL)a3
{
  [(VCSessionParticipant *)self reportingAgent];

  reportingGenericEvent();
}

- (void)captureSourcePortraitBlurEnabledDidChange:(BOOL)a3
{
  [(VCSessionParticipant *)self reportingAgent];

  reportingGenericEvent();
}

- (void)updateCaptureSourceVideoFeatureStatus:(tagVCVideoCaptureFeatureStatus)a3
{
  v3 = *&a3.var0;
  v6[6] = *MEMORY[0x1E69E9840];
  v5[0] = @"VideoEyeContact";
  v6[0] = [MEMORY[0x1E696AD98] numberWithChar:a3.var0];
  v5[1] = @"PMFENB";
  v6[1] = [MEMORY[0x1E696AD98] numberWithChar:((v3 << 8) >> 24)];
  v5[2] = @"SLFENB";
  v6[2] = [MEMORY[0x1E696AD98] numberWithChar:(v3 >> 24)];
  v5[3] = @"CSFENB";
  v6[3] = [MEMORY[0x1E696AD98] numberWithChar:(v3 >> 8)];
  v5[4] = @"REFENB";
  v6[4] = [MEMORY[0x1E696AD98] numberWithChar:v3 << 24 >> 56];
  v5[5] = @"BGRFENB";
  v6[5] = [MEMORY[0x1E696AD98] numberWithChar:v3 << 16 >> 56];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  [(VCSessionParticipant *)self reportingAgent];
  reportingGenericEvent();
}

- (void)frameRateIsBeingThrottled:(int)a3 thermalLevelDidChange:(BOOL)a4 powerLevelDidChange:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = *&a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"VCSPUUID", self->super._uuid);
  CFDictionaryAddValue(Mutable, @"VCSPFR", [MEMORY[0x1E696AD98] numberWithInt:v7]);
  CFDictionaryAddValue(Mutable, @"VCSPTLC", [MEMORY[0x1E696AD98] numberWithBool:v6]);
  CFDictionaryAddValue(Mutable, @"VCSPPLC", [MEMORY[0x1E696AD98] numberWithBool:v5]);
  [(VCSessionParticipant *)self reportingAgent];
  reportingGenericEvent();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (void)captureSource1080pAvailabilityDidChange:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VCSessionParticipantLocal_captureSource1080pAvailabilityDidChange___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)captureSourceDidSelectUnbinnedCameraFormat
{
  v3[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__VCSessionParticipantLocal_captureSourceDidSelectUnbinnedCameraFormat__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(participantQueue, v3);
}

uint64_t __71__VCSessionParticipantLocal_captureSourceDidSelectUnbinnedCameraFormat__block_invoke(uint64_t a1)
{
  [*(a1 + 32) reportingAgent];

  return reportingSymptom();
}

- (void)reactionDidStart:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCSessionParticipantLocal_reactionDidStart___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __46__VCSessionParticipantLocal_reactionDidStart___block_invoke(uint64_t a1)
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__VCSessionParticipantLocal_reactionDidStart___block_invoke_2;
  v2[3] = &unk_1E85F6848;
  return [*(a1 + 32) callDelegateWithBlock:v2];
}

- (void)didStopReacting
{
  v3[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__VCSessionParticipantLocal_didStopReacting__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(participantQueue, v3);
}

uint64_t __44__VCSessionParticipantLocal_didStopReacting__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__VCSessionParticipantLocal_didStopReacting__block_invoke_2;
  v3[3] = &unk_1E85F6780;
  v3[4] = v1;
  return [v1 callDelegateWithBlock:v3];
}

- (void)reportVideoEnabledStatsWithVideoEnabled:(BOOL)a3
{
  v3 = a3;
  v9[3] = *MEMORY[0x1E69E9840];
  v5 = micro();
  lastVideoEnabledChangedTime = self->_lastVideoEnabledChangedTime;
  v8[0] = @"VCSPUUID";
  uuid = self->super._uuid;
  if (!uuid)
  {
    uuid = [MEMORY[0x1E695DFB0] null];
  }

  v9[0] = uuid;
  v8[1] = @"VIDSTATE";
  v9[1] = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v8[2] = @"VIDDRTN";
  v9[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v5 - lastVideoEnabledChangedTime)];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [(VCSessionParticipant *)self reportingAgent];
  reportingGenericEvent();
  self->_lastVideoEnabledChangedTime = v5;
}

- (void)dispatchedHandleActiveConnectionChangeForStreamGroups:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v13 count:16];
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
        v10 = [v9 streamToken];
        v11 = self->super._oneToOneModeEnabled || [v9 streamGroupID] == 1935897189;
        [v9 setActiveConnection:a3 uplinkBitrateCap:self->_currentUplinkTargetBitrate activeMediaStreamIDs:-[VCSessionUplinkBandwidthAllocator streamIDsForStreamToken:targetBitrate:](self->_uplinkBandwidthAllocator mediaBitrates:"streamIDsForStreamToken:targetBitrate:" rateChangeCounter:{v10, self->_currentUplinkTargetBitrate), -[VCSessionUplinkBandwidthAllocator targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:](self->_uplinkBandwidthAllocator, "targetBitratesForStreamToken:targetNetworkBitrate:preferNetworkBitrates:", v10, self->_currentUplinkTargetBitrate, v11), self->_currentRateChangeCounter}];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }

  [(VCSessionParticipantLocal *)self dispatchedUpdateUplinkTargetBitrate:self->_currentUplinkTargetBitrate rateChangeCounter:self->_currentRateChangeCounter];
}

- (void)updateMediaStreamsForStreamGroup:(id)a3 uplinkBitrateCap:(unsigned int)a4 rateChangeCounter:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v9 = [a3 streamToken];
  v10 = self->super._oneToOneModeEnabled || [a3 streamGroupID] == 1935897189;
  [a3 updateUplinkBitrateCapCell:self->_uplinkBitrateCapCell activeStreamIDs:{-[VCSessionUplinkBandwidthAllocator streamIDsForStreamToken:targetBitrateCap:](self->_uplinkBandwidthAllocator, "streamIDsForStreamToken:targetBitrateCap:", v9, self->_uplinkBitrateCapCell)}];
  [a3 updateUplinkBitrateCapWifi:self->_uplinkBitrateCapWifi activeStreamIDs:{-[VCSessionUplinkBandwidthAllocator streamIDsForStreamToken:targetBitrateCap:](self->_uplinkBandwidthAllocator, "streamIDsForStreamToken:targetBitrateCap:", v9, self->_uplinkBitrateCapWifi)}];
  v11 = [(VCSessionUplinkBandwidthAllocator *)self->_uplinkBandwidthAllocator targetBitratesForStreamToken:v9 targetNetworkBitrate:v6 preferNetworkBitrates:v10];
  v12 = [(VCSessionUplinkBandwidthAllocator *)self->_uplinkBandwidthAllocator streamIDsForStreamToken:v9 targetBitrate:v6];

  [a3 updateActiveMediaStreamIDs:v12 withTargetBitrate:v6 mediaBitrates:v11 rateChangeCounter:v5];
}

- (void)serverDidDie
{
  v2 = [(VCSessionParticipant *)self delegate];

  [(VCSessionParticipantDelegate *)v2 serverDidDie];
}

- (void)handleActiveConnectionChange:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCSessionParticipantLocal_handleActiveConnectionChange___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __58__VCSessionParticipantLocal_handleActiveConnectionChange___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSessionParticipantLocal-handleActiveConnectionChange");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [(__CFString *)v4 logPrefix];
      v6 = [*(a1 + 40) uplinkBitrateCap];
      v27 = 136316418;
      v28 = v2;
      v29 = 2080;
      v30 = "[VCSessionParticipantLocal handleActiveConnectionChange:]_block_invoke";
      v31 = 1024;
      v32 = 4284;
      v33 = 2048;
      v34 = v4;
      v35 = 2112;
      v36 = v5;
      v37 = 1024;
      v38 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCSessionParticipantLocal-handleActiveConnectionChange (%p) %@ Active connection changed with new connection uplinkBitrateCap %d", &v27, 0x36u);
    }
  }

  v7 = VCPowerManager_DefaultManager();
  [v7 setFeature:8 enable:VCConnection_IsLocalOnCellular(*(a1 + 40))];
  *(*(a1 + 32) + 432) = VCConnection_IsLocalOnWiFiOrWired(*(a1 + 40));
  IsEndToEndLink = VCConnection_IsEndToEndLink(*(a1 + 40));
  v9 = *(a1 + 32);
  if (IsEndToEndLink)
  {
    if (([v9 dispatchedIsAnyCameraMediaTypeEnabled] & 1) != 0 || *(*(a1 + 32) + 375) == 1)
    {
      v10 = [*(a1 + 40) uplinkBitrateCapOneToOne];
    }

    else
    {
      v10 = [*(a1 + 40) uplinkAudioBitrateCapOneToOne];
    }

    v12 = v10;
    v13 = *(a1 + 32);
    if (*(v13 + 1032) == 1)
    {
      v12 = *(v13 + 1036);
    }

    if (v12 < *(v13 + 1008))
    {
      *(v13 + 1008) = v12;
      *(*(a1 + 32) + 592) = v12;
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_28;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v27 = 136315906;
      v28 = v15;
      v29 = 2080;
      v30 = "[VCSessionParticipantLocal handleActiveConnectionChange:]_block_invoke";
      v31 = 1024;
      v32 = 4297;
      v33 = 1024;
      LODWORD(v34) = v12;
      v17 = " [%s] %s:%d Active connection changed with new connection oneToOneUplinkBitrateCap %d";
      v18 = v16;
      v19 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_28;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v22 = *(a1 + 32);
      v27 = 136316418;
      v28 = v20;
      v29 = 2080;
      v30 = "[VCSessionParticipantLocal handleActiveConnectionChange:]_block_invoke";
      v31 = 1024;
      v32 = 4297;
      v33 = 2112;
      v34 = v14;
      v35 = 2048;
      v36 = v22;
      v37 = 1024;
      v38 = v12;
      v17 = " [%s] %s:%d %@(%p) Active connection changed with new connection oneToOneUplinkBitrateCap %d";
      v18 = v21;
      v19 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v27, v19);
LABEL_28:
    *(*(a1 + 32) + 1016) = 1;
    goto LABEL_29;
  }

  if (*(v9 + 1032) == 1)
  {
    v11 = *(v9 + 1036);
  }

  else
  {
    v11 = [*(a1 + 40) uplinkBitrateCap];
    v9 = *(a1 + 32);
  }

  *(v9 + 592) = v11;
LABEL_29:
  *(*(a1 + 32) + 592) = VCDefaults_GetIntValueForKey(@"forcedTxRate", *(*(a1 + 32) + 592));
  [*(a1 + 32) dispatchedHandleActiveConnectionChangeForStreamGroups:*(a1 + 40)];
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(*(a1 + 40));
  v24 = *(*(a1 + 32) + 424);
  if (IsLocalOnCellular)
  {
    v25 = [*(a1 + 40) connectionMTU];
  }

  else
  {
    v25 = 1280;
  }

  return VCMediaQueue_SetMTUBytes(v24, v25);
}

- (void)didReceiveReportPacket:(tagRTCPPACKET *)a3 arrivalNTPTime:(tagNTP)a4
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipantLocal didReceiveReportPacket:arrivalNTPTime:];
    }
  }
}

- (void)didReceiveCustomReportPacket:(tagRTCPPACKET *)a3 arrivalNTPTime:(tagNTP)a4
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipantLocal didReceiveCustomReportPacket:arrivalNTPTime:];
    }
  }
}

- (void)streamGroup:(id)a3 didSuspendStreams:(BOOL)a4
{
  v4 = a4;
  v42 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      isMixingSystemAudio = self->_isMixingSystemAudio;
      *buf = 136316418;
      v31 = v7;
      v32 = 2080;
      v33 = "[VCSessionParticipantLocal streamGroup:didSuspendStreams:]";
      v34 = 1024;
      v35 = 4329;
      v36 = 2112;
      v37 = a3;
      v38 = 1024;
      v39 = v4;
      v40 = 1024;
      v41 = isMixingSystemAudio;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamGroup=%@ didSuspendStreams=%d isMixingSystemAudio=%d", buf, 0x32u);
    }
  }

  if (self->super._state == 1)
  {
    if ([a3 streamGroupID] == 1937339233 && self->super._screenEnabled)
    {
      v10 = [objc_opt_class() mediaTypesFromStreamGroupID:{objc_msgSend(a3, "streamGroupID")}];
      if ([v10 count] == 1)
      {
        v11 = [objc_msgSend(v10 "anyObject")];
        if (v4)
        {
          if (!self->_isMixingSystemAudio)
          {
            [(VCSessionParticipantLocal *)self startSystemAudioCapture];
            [(VCSessionParticipant *)self swapScreenStreamGroupSyncSourceWithState:2];
            v24 = MEMORY[0x1E69E9820];
            v25 = 3221225472;
            v26 = __59__VCSessionParticipantLocal_streamGroup_didSuspendStreams___block_invoke;
            v27 = &unk_1E85F7B88;
            v28 = self;
            LODWORD(v29) = v11;
            v12 = &v24;
LABEL_20:
            [(VCSessionParticipant *)self callDelegateWithBlock:v12, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29];
          }
        }

        else if (self->_isMixingSystemAudio)
        {
          [(VCSessionParticipantLocal *)self stopSystemAudioCapture];
          [(VCSessionParticipant *)self swapScreenStreamGroupSyncSourceWithState:1];
          v18 = MEMORY[0x1E69E9820];
          v19 = 3221225472;
          v20 = __59__VCSessionParticipantLocal_streamGroup_didSuspendStreams___block_invoke_2;
          v21 = &unk_1E85F7B88;
          v22 = self;
          LODWORD(v23) = v11;
          v12 = &v18;
          goto LABEL_20;
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v17 = self->_isMixingSystemAudio;
          *buf = 136316418;
          v31 = v15;
          v32 = 2080;
          v33 = "[VCSessionParticipantLocal streamGroup:didSuspendStreams:]";
          v34 = 1024;
          v35 = 4337;
          v36 = 2112;
          v37 = a3;
          v38 = 1024;
          v39 = v4;
          v40 = 1024;
          v41 = v17;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unexpected number of mediaTypes for streamGroup=%@ didSuspendStreams=%d isMixingSystemAudio=%d", buf, 0x32u);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = v13;
      v32 = 2080;
      v33 = "[VCSessionParticipantLocal streamGroup:didSuspendStreams:]";
      v34 = 1024;
      v35 = 4331;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Participant is not running, ignoring delegate callback.", buf, 0x1Cu);
    }
  }
}

- (void)streamGroup:(id)a3 didChangeState:(unsigned int)a4
{
  uplinkBandwidthAllocator = self->_uplinkBandwidthAllocator;
  v6 = [a3 streamToken];

  [(VCSessionUplinkBandwidthAllocator *)uplinkBandwidthAllocator streamToken:v6 enabled:a4 == 1];
}

- (void)streamGroup:(id)a3 didRequestRedundancy:(BOOL)a4
{
  v7 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__VCSessionParticipantLocal_streamGroup_didRequestRedundancy___block_invoke;
  v5[3] = &unk_1E85F37C8;
  v5[4] = self;
  v5[5] = a3;
  v6 = a4;
  dispatch_async(participantQueue, v5);
}

uint64_t __62__VCSessionParticipantLocal_streamGroup_didRequestRedundancy___block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 408) == 1)
  {
    v1 = result;
    v2 = [*(result + 40) streamGroupID];
    [*(v1 + 32) enableRedundancy:*(v1 + 48)];
    if ([*(*(v1 + 32) + 832) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v2)}])
    {
      if ((*(v1 + 48) & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v3 = VRTraceErrorLogLevelToCSTR();
          v4 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v7 = 136315906;
            v8 = v3;
            v9 = 2080;
            v10 = "[VCSessionParticipantLocal streamGroup:didRequestRedundancy:]_block_invoke";
            v11 = 1024;
            v12 = 4368;
            v13 = 2080;
            v14 = FourccToCStr(v2);
            _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Dismissing redundancy for streamGroupID=%s", &v7, 0x26u);
          }
        }

        [*(*(v1 + 32) + 832) removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v2)}];
        return [*(v1 + 32) dispatchedUpdateUplinkTargetBitrate:*(*(v1 + 32) + 592) rateChangeCounter:*(*(v1 + 32) + 596)];
      }
    }

    else if ((*(v1 + 48) & 1) == 0)
    {
      return [*(v1 + 32) dispatchedUpdateUplinkTargetBitrate:*(*(v1 + 32) + 592) rateChangeCounter:*(*(v1 + 32) + 596)];
    }

    if (([*(*(v1 + 32) + 832) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v2)}] & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315906;
          v8 = v5;
          v9 = 2080;
          v10 = "[VCSessionParticipantLocal streamGroup:didRequestRedundancy:]_block_invoke";
          v11 = 1024;
          v12 = 4371;
          v13 = 2080;
          v14 = FourccToCStr(v2);
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Requested redundancy for streamGroupID=%s", &v7, 0x26u);
        }
      }

      [*(*(v1 + 32) + 832) addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v2)}];
    }

    return [*(v1 + 32) dispatchedUpdateUplinkTargetBitrate:*(*(v1 + 32) + 592) rateChangeCounter:*(*(v1 + 32) + 596)];
  }

  return result;
}

- (void)reportCameraCompositionEnabled:(BOOL)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"VCSPUUID";
  v5[0] = self->super._uuid;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(VCSessionParticipant *)self reportingAgent];
  reportingGenericEvent();
}

- (void)checkAndReportThermalIncreaseAudioOnly:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCSessionParticipantLocal_checkAndReportThermalIncreaseAudioOnly___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __68__VCSessionParticipantLocal_checkAndReportThermalIncreaseAudioOnly___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) dispatchedIsAnyCameraMediaTypeEnabled];
  if ((result & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(*(a1 + 32) + 1096);
    result = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v11;
LABEL_5:
      v6 = 0;
      while (1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        result = [*(*(&v10 + 1) + 8 * v6) isAnyCameraMediaTypeEnabled];
        if (result)
        {
          break;
        }

        if (v4 == ++v6)
        {
          result = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
          v4 = result;
          if (result)
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
      if (*(a1 + 40))
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:@"SymptomReporterOptionalKeyThermalPressureLevel"];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
        [*(a1 + 32) reportingAgent];
        return reportingSymptom();
      }
    }
  }

  return result;
}

- (id)qualityTierTableForStreamToken:(int64_t)a3
{
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._streamGroups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)), "streamGroupID"}];
  if (self->_remotePresentationState)
  {
    isRemotePresentationLarge = 0;
  }

  else
  {
    isRemotePresentationLarge = self->_isRemotePresentationLarge;
  }

  if (self->_enableRedundancy)
  {
    v6 = -[NSMutableSet containsObject:](self->_redundancyEnabledStreamGroups, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  }

  else
  {
    v6 = 0;
  }

  return [VCSessionMediaStreamPresenceConfigurationProvider oneToOneTierTableForStreamGroupID:v4 splitType:isRemotePresentationLarge redundancyEnabled:v6];
}

- (BOOL)shouldCapStream:(int64_t)a3 cappedBitrate:(unsigned int *)a4
{
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._streamGroups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)), "streamGroupID"}];
  if (self->_remotePresentationState)
  {
    v7 = v6 == 1667329381;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (a4)
    {
      v10 = 432400;
LABEL_14:
      *a4 = v10;
    }
  }

  else
  {
    if (!self->super._sharingEnabled || v6 != 1835623282)
    {
      return 0;
    }

    if (a4)
    {
      v10 = 130000;
      goto LABEL_14;
    }
  }

  return 1;
}

- (unsigned)remainderBitrateSplitForStreamToken:(int64_t)a3
{
  dispatch_assert_queue_V2(self->super._participantQueue);
  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._streamGroups objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)), "streamGroupID"}];
  if (self->_remotePresentationState)
  {
    isRemotePresentationLarge = 0;
  }

  else
  {
    isRemotePresentationLarge = self->_isRemotePresentationLarge;
  }

  return [VCSessionMediaStreamPresenceConfigurationProvider remainingBitrateSplitQualityIndexForStreamGroup:v5 splitType:isRemotePresentationLarge];
}

- (id)microphoneOnlyBandwidthTable
{
  dispatch_assert_queue_V2(self->super._participantQueue);
  if ([(VCSessionParticipant *)self supportsLowLatencyAudio])
  {

    return VCSessionLowLatencyMicrophoneOnlyBandwidthTable();
  }

  else
  {

    return VCSessionMicrophoneOnlyBandwidthTable();
  }
}

- (id)videoCallMicrophoneBandwidthTable
{
  dispatch_assert_queue_V2(self->super._participantQueue);
  if ([(VCSessionParticipant *)self supportsLowLatencyAudio])
  {

    return VCSessionLowLatencyVideoCallMicrophoneBandwidthTable();
  }

  else
  {

    return VCSessionVideoCallMicrophoneBandwidthTable();
  }
}

- (id)feedbackDelegate
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCSessionParticipantLocal_feedbackDelegate__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(participantQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__VCSessionParticipantLocal_feedbackDelegate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isVideoEnabled];
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [v3 oneToOneSettings];
      v3 = v5;
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
      v4 = 0u;
    }

    result = [objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{&unk_1F579A200, v4, v5, v6), "stream"), "getVideoReceiverFeedbackDelegate"}];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (_VCSessionParticipantLocalOneToOneSettings)oneToOneSettings
{
  v3 = *&self[20].targetBitrate;
  *&retstr->audioRedundancyController = *&self[20].streamInfo;
  *&retstr->streamInfo = v3;
  *&retstr->targetBitrate = *&self[21].audioRedundancyController;
  return self;
}

- (id)processCachedParticipantData:(id)a3
{
  OUTLINED_FUNCTION_40_0();
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v3;
  v6 = [VCSessionParticipant participantInfoWithParticipantData:?];
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_16;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_16;
    }

LABEL_21:
    OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_16_0();
    _os_log_error_impl(v19, v20, v21, v22, v23, v24);
LABEL_16:
    v11 = 0;
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_16;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v9 = v8;
  v10 = objc_alloc_init(VCMediaNegotiatorLocalConfiguration);
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_16;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v11 = v10;
  -[VCMediaNegotiatorLocalConfiguration setEnableACC24ForU1:](v10, "setEnableACC24ForU1:", [*(v5 + 296) isACC24ForU1Enabled]);
  -[VCMediaNegotiatorLocalConfiguration setEnableACC24ForGFT:](v11, "setEnableACC24ForGFT:", [*(v5 + 296) isACC24ForGFTEnabled]);
  if ([VCSessionMediaNegotiator initializeLocalConfiguration:v11 negotiationData:v9 deviceRole:0 preferredAudioPayload:104])
  {
    *(v5 + 1121) = [(VCMediaNegotiatorLocalConfiguration *)v11 isOneToOneAuthTagEnabled];

    *(v5 + 224) = [objc_msgSend(v7 objectForKeyedSubscript:{@"vcSessionParticipantKeyUUID", "copy"}];
    [v5 setLogPrefix:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"uuid:%@ "}];
    *(v5 + 280) = v7;
    v11;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v13, v14, v15, v16, v17, v18);
    }
  }

LABEL_7:

  OUTLINED_FUNCTION_39_0();
  return result;
}

- (BOOL)setupStreamGroupMediaSync
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCSessionParticipantLocal;
  v3 = [(VCSessionParticipant *)&v5 setupStreamGroupMediaSync];
  if (v3)
  {
    LOBYTE(v3) = [(VCSessionParticipant *)self setupMediaSyncForStreamGroup:[(VCSessionParticipant *)self systemAudioGroup]];
  }

  return v3;
}

- (void)updateOneToOneBandwidthAllocationTable:(id)a3 mediaType:(unsigned __int8)a4 streamGroupID:(unsigned int)a5
{
  v5 = *&a5;
  v6 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [a3 streamConfigs];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(v13 "multiwayConfig")])
        {
          if (v13)
          {
            v14 = [v13 multiwayConfig];
            v15 = [VCSessionBandwidthAllocationTableEntry alloc];
            v16 = -[VCSessionBandwidthAllocationTableEntry initWithClient:type:streamToken:streamID:streamGroupID:](v15, "initWithClient:type:streamToken:streamID:streamGroupID:", self, v6, [-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5)), "unsignedIntValue"}], objc_msgSend(v14, "idsStreamID"), v5);
            [-[NSArray objectAtIndexedSubscript:](self->_uplinkBandwidthAllocators objectAtIndexedSubscript:{1), "addBandwidthAllocationTableEntry:updateNow:", v16, 0}];
          }

          return;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }
}

- (void)initWithConfig:delegate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.12()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.13()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.14()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.15()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithConfig:delegate:.cold.16()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newUplinkBandwidthAllocators
{
  OUTLINED_FUNCTION_40_0();
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioStreamGroupWithStreamConfigs:(void *)a1 negotiatorConfig:streamGroupConfiguration:.cold.1(void *a1)
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
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)setupCameraStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:.cold.1()
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupCameraStreamGroupWithStreamConfigs:negotiatorConfig:streamGroupConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 1;
  OUTLINED_FUNCTION_39_0();
}

- (void)captureSourceIDFromStreamGroupConfig:.cold.1()
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
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  *v0 = 0;
}

- (void)captureSourceIDFromStreamGroupConfig:(_DWORD *)a1 .cold.2(_DWORD *a1)
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

- (void)captureSourceIDFromStreamGroupConfig:(_DWORD *)a1 .cold.3(_DWORD *a1)
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

- (void)setupStreamGroupWithStreamGroupConfig:negotiatorConfig:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupStreamGroupWithStreamGroupConfig:negotiatorConfig:.cold.2()
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupStreamGroupsWithConfig:negotiatorConfig:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupStreamGroupsWithConfig:negotiatorConfig:.cold.2()
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

- (void)setupStreamInputsWithConfig:.cold.1()
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

- (void)setupStreamInputsWithConfig:.cold.2()
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

- (void)maxCaptureCameraFrameRate
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v0, v1, " [%s] %s:%d maxFrameRate=%d", v2, v3, v4, v5);
}

- (void)reconfigureOneToOneAudioStream:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)applyVideoEnabledSetting:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }

  *a3 = a2;
}

void __63__VCSessionParticipantLocal_suspendStreamsOnOneToOneModeSwitch__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __51__VCSessionParticipantLocal_setRemoteParticipants___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)applyCachedMediaStreamsWithStreamConfigurations:mediaNegotiatorConfig:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioStreamsWithStreamConfigurations:mediaNegotiatorConfig:streamGroupConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioStreamsWithStreamConfigurations:mediaNegotiatorConfig:streamGroupConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newVideoSendGroupConfigWithStreamGroupID:(int)a1 streamGroupConfiguration:.cold.1(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }
}

- (void)newVideoSendGroupConfigWithStreamGroupID:streamGroupConfiguration:.cold.2()
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

- (void)newAudioSendGroupConfigWithStreamGroupID:(int)a1 streamGroupConfiguration:.cold.1(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }
}

- (void)newAudioSendGroupConfigWithStreamGroupID:streamGroupConfiguration:.cold.2()
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

- (void)setupVideoStreamsWithStreamConfiguration:streamGroupConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24();
    v11 = 28;
LABEL_11:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v1 = v3 & 1;
  OUTLINED_FUNCTION_39_0();
}

- (void)setupVideoStreamsWithStreamConfiguration:streamGroupConfiguration:.cold.2()
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

- (void)setupCaptionsStreamsWithStreamConfiguration:streamGroupConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24();
    v11 = 28;
LABEL_11:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v1 = v3 & 1;
  OUTLINED_FUNCTION_39_0();
}

- (void)setupCaptionsStreamsWithStreamConfiguration:streamGroupConfiguration:.cold.2()
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

- (void)setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:.cold.1()
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

- (void)setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  [v0 idsStreamID];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

- (void)setupVideoMediaStreamsWithStreamGroupConfiguration:streamGroupConfig:streamGroupID:mediaType:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupAudioStreamsWithStreamConfiguration:streamGroupConfiguration:.cold.1()
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioStreamsWithStreamConfiguration:streamGroupConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupAudioStreamsWithStreamConfiguration:streamGroupConfiguration:.cold.3()
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

- (void)newStreamInfoWithVideoStreamWithConfiguration:streamGroupID:rtpCipherSuite:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newStreamInfoWithVideoStreamWithConfiguration:streamGroupID:rtpCipherSuite:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newStreamInfoWithAudioStreamWithConfiguration:streamToken:isMultiway:streamGroupID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newStreamInfoWithAudioStreamWithConfiguration:streamToken:isMultiway:streamGroupID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newMediaNegotiatorAudioConfigurationForMediaType:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      VCSessionMediaType_Name(a1);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

- (void)newMediaNegotiatorAudioConfigurationForMediaType:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  VCSessionMediaType_Name(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)featureListStringsRequiredForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)v1FeatureListStringsSupportedForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)u1VideoRuleCollectionsForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)addFeatureListStringsForVideoConfiguration:mediaType:.cold.1()
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)addFeatureListStringsForVideoConfiguration:mediaType:.cold.2()
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)newVideoConfigurationForMediaType:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
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

    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_2();
    v6 = 34;
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
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_31_9();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_39_0();
}

- (void)newVideoConfigurationForMediaType:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
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

    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_2();
    v6 = 34;
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
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_31_9();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_39_0();
}

+ (void)negotiatorCipherSuite:fromMediaStreamConfig:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [v0 SRTPCipherSuite];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)newStreamGroupNegotiationConfigForStreamGroup:(void *)a1 .cold.1(void *a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr([a2 streamGroupID]);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }
}

- (void)newStreamGroupNegotiationConfigForStreamGroup:(void *)a1 .cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }
}

- (void)newStreamGroupNegotiationConfigForStreamGroup:(void *)a3 .cold.3(void *a1, void *a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a3 count];
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_34_5();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
    }
  }
}

- (void)newStreamGroupNegotiationConfigForStreamGroup:(void *)a3 .cold.4(void *a1, void *a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      [a3 count];
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_34_5();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
    }
  }
}

- (void)newStreamGroupNegotiationConfigForStreamGroup:(void *)a1 .cold.5(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }
}

- (void)newStreamGroupNegotiationConfigForStreamGroup:.cold.6()
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

- (void)newStreamGroupNegotiationConfigForStreamGroup:.cold.7()
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

- (void)initializeStreamGroupsForLocalConfig:(_BYTE *)a3 .cold.1(void *a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      FourccToCStr([a1 streamGroupID]);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
    }
  }

  *a3 = 0;
  OUTLINED_FUNCTION_18();
}

- (void)initializeOneToOneStreamGroup:forLocalConfig:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  FourccToCStr([v0 groupID]);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)initializeOneToOneStreamGroup:forLocalConfig:.cold.2()
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

- (void)addVideoConfigurationsToLocalConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)addMediaConfigurationsToLocalConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)addMediaConfigurationsToLocalConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)addMediaConfigurationsToLocalConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initializeMediaNegotiator
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

  *a2 = 0;
  *a1 = 0;
}

- (void)negotiateOneToOne:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)negotiateOneToOne:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)negotiateOneToOne:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)negotiateOneToOne:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)negotiateOneToOne:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupOneToOneVideoStreamWithConfig:streamGroupID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupOneToOneVideoStreamWithConfig:streamGroupID:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)setupOneToOneVideoStreamWithConfig:streamGroupID:.cold.3()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)setupOneToOneAudioStreamWithConfig:(void *)a3 streamGroupID:(void *)a4 .cold.1(int a1, uint64_t a2, void *a3, void *a4)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0x26u);
    }
  }

  *a4 = a2;
  *a3 = 0;
}

- (void)setupOneToOneAudioStreamWithConfig:streamGroupID:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)setupOneToOneAudioStreamWithConfig:streamGroupID:.cold.3()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
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
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void __94__VCSessionParticipantLocal_configureWithOneToOneParticipantConfig_shouldConfigureGFTStreams___block_invoke_cold_1(id *a1)
{
  if (objc_opt_class() == *a1)
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
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [*a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

void __94__VCSessionParticipantLocal_configureWithOneToOneParticipantConfig_shouldConfigureGFTStreams___block_invoke_cold_2(id *a1)
{
  if (objc_opt_class() == *a1)
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
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [*a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)configureOneToOneVideoStreamsWithDeviceRole:.cold.1()
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
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)configureOneToOneVideoStreamsWithDeviceRole:.cold.2()
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
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)configureOneToOneVideoStreamsWithDeviceRole:(_BYTE *)a3 .cold.3(void *a1, char a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      FourccToCStr([a1 streamGroupID]);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x26u);
    }
  }

  *a3 = a2 & 1;
}

- (void)configureOneToOneAudioStreamsWithDeviceRole:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [v0 streamGroupID];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)configureOneToOneAudioStreamsWithDeviceRole:.cold.2()
{
  OUTLINED_FUNCTION_32();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [v0 streamGroupID];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)newAudioStreamOneToOneConfigurationWithStreamGroupId:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newVideoStreamOneToOneConfigurationWithStreamGroupId:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)createParticipantInfo
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
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newStreamInfoWithVideoStreamWithConfiguration:idsDestination:groupID:.cold.4()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newStreamInfoWithAudioStreamWithConfiguration:idsDestination:isMultiway:streamGroupID:streamToken:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)checkSubscribedStreamsConsistency:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)dispatchedUpdateVCMediaQueueSize:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)cameraAvailabilityDidChange:(uint64_t)a1 .cold.1(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2080;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v1, v2, " [%s] %s:%d cameraAvailabilityDidChange=%d ignored", v3, *(&v3 + 1), v4, v5);
}

- (void)didReceiveReportPacket:arrivalNTPTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)didReceiveCustomReportPacket:arrivalNTPTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end