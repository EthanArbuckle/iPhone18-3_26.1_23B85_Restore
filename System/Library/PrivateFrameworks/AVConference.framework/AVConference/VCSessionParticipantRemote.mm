@interface VCSessionParticipantRemote
+ (BOOL)isDeviceLargeScreen;
+ (unsigned)maxAudioNetworkBitrateForLocalInterfaceOnWiFi:(BOOL)a3 isLowLatencyAudio:(BOOL)a4;
+ (unsigned)maxBdatQualityIndexForVideoQuality:(unsigned __int8)a3 isLocalOnWiFi:(BOOL)a4;
+ (unsigned)maxCameraQualityIndexForVideoQuality:(unsigned __int8)a3 isLocalOnWiFi:(BOOL)a4 isRedundancyRequested:(BOOL)a5 isSharingEnabled:(BOOL)a6 enableNewTier:(BOOL)a7;
+ (unsigned)maxCameraQualityIndexForVideoQuality:(unsigned __int8)a3 useWiFiTable:(BOOL)a4 isSharingEnabled:(BOOL)a5 enableNewTier:(BOOL)a6;
+ (unsigned)maxCameraQualityIndexWithRedundancyForVideoQuality:(unsigned __int8)a3 useWiFiTable:(BOOL)a4 enableNewTier:(BOOL)a5;
+ (unsigned)maxFtxtQualityIndexForVideoQuality:(unsigned __int8)a3 isLocalOnWiFi:(BOOL)a4 isRedundancyRequested:(BOOL)a5 isSharingEnabled:(BOOL)a6;
+ (unsigned)maxQualityIndexForStreamGroupID:(unsigned int)a3 videoQuality:(unsigned __int8)a4 isLocalOnWiFi:(BOOL)a5 isRedundancyRequested:(BOOL)a6 isSharingEnabled:(BOOL)a7 enableNewTier:(BOOL)a8;
+ (unsigned)maxWebRTCCameraQualityIndexForVideoQuality:(unsigned __int8)a3 isLocalOnWiFi:(BOOL)a4 isSharingEnabled:(BOOL)a5 enableNewTier:(BOOL)a6;
- (BOOL)addOneToOneStreamConfigToMediaStreamInfo:(id)a3 negotiatorStreamGroupConfig:(id)a4;
- (BOOL)configureWithOneToOneParticipantConfig:(id)a3 operatingMode:(int)a4;
- (BOOL)isActiveMediaType:(unsigned int)a3;
- (BOOL)isEnabledMediaType:(unsigned int)a3;
- (BOOL)isMediaTypeExpected:(unsigned int)a3;
- (BOOL)isParticipantDawnburstOrLater;
- (BOOL)isParticipantLuckierOrLater;
- (BOOL)isParticipantPeace:(id)a3;
- (BOOL)isPlaybackSynchronizationGroupMember;
- (BOOL)isStreamGroupActive:(id)a3;
- (BOOL)isVideoExpected;
- (BOOL)processParticipantInfo;
- (BOOL)setShouldEnableMLEnhance:(BOOL)a3 streamWithVideoResolution:(int64_t)a4 videoStreamGroup:(id)a5;
- (BOOL)setupAudioStreamConfiguration:(id)a3 withStreamGroupConfig:(id)a4 streamGroupStreamConfig:(id)a5;
- (BOOL)setupBandwidthAllocationTableForMediaStreamConfigs:(id)a3 streamGroupID:(unsigned int)a4 entryType:(unsigned __int8)a5;
- (BOOL)setupStreamConfigWithCodecs:(id)a3 streamConfig:(id)a4 codecConfigs:(id)a5 featureStringsDict:(id)a6;
- (BOOL)setupStreamGroupWithConfig:(id)a3;
- (BOOL)setupStreamGroups;
- (BOOL)setupVideoStreamConfiguration:(id)a3 withStreamGroupStreamConfig:(id)a4 codecConfigs:(id)a5 multiwayConfig:(id)a6 groupID:(unsigned int)a7;
- (BOOL)shouldDisableMLByDeviceType:(unsigned int)a3;
- (BOOL)shouldDisableMLByUIState:(unsigned int)a3;
- (BOOL)shouldDisableMLEnhanceCommonFactors;
- (BOOL)shouldEnableMLEnhance:(unsigned int)a3;
- (BOOL)shouldEnableMLEnhanceLowTier;
- (BOOL)shouldEnableMLEnhanceMultiway:(unsigned int)a3;
- (BOOL)shouldEnablePacketRetransmissionForStreamGroupID:(unsigned int)a3;
- (BOOL)shouldReportConnectionTimingWithStreamGroup:(id)a3;
- (BOOL)shouldSetupStreamGroupWithID:(unsigned int)a3;
- (BOOL)supportsGFTSwitchToOneToOne;
- (BOOL)supportsIDSParticipantIDBasedKeyIndexMatching;
- (BOOL)supportsNegotiatedCoordinateSystem;
- (NSArray)mediaEntries;
- (NSDictionary)participantSpatialAudioSourceIDs;
- (VCSessionParticipantMediaStreamInfo)cameraStreamInfo;
- (VCSessionParticipantMediaStreamInfo)micStreamInfo;
- (VCSessionParticipantMediaStreamInfo)screenStreamInfo;
- (VCSessionParticipantRemote)initWithConfig:(id)a3 delegate:(id)a4;
- (_VCSessionParticipantCapabilities)capabilities;
- (id)activeDownlinkStreamIDForStreamGroupID:(unsigned int)a3;
- (id)applyVideoEnabledSetting:(BOOL)a3;
- (id)audioGroup;
- (id)checkSubstreams:(id)a3 forLowerQualityIndex:(unsigned int)a4;
- (id)entryForStreamID:(id)a3;
- (id)getMajorVersionNumber;
- (id)newCaptionsStreamGroupWithStreamGroupConfig:(id)a3;
- (id)newMediaStreamConfigWithStreamConfig:(id)a3 streamGroupConfig:(id)a4 maxIDSStreamIDCount:(unsigned int)a5;
- (id)newMediaStreamConfigWithStreamGroupConfig:(id)a3 streamConfig:(id)a4 rateControlConfig:(id)a5 multiwayConfig:(id)a6;
- (id)newMediaStreamInfoWithNegotiationConfig:(id)a3 streamToken:(int64_t)a4;
- (id)newMediaStreamWithNegotiationConfig:(id)a3 streamToken:(int64_t)a4;
- (id)newMultiwayConfigWithStreamGroupStreamConfig:(id)a3 maxIDSStreamIDCount:(unsigned int)a4 groupID:(unsigned int)a5;
- (id)newStreamGroupConfigWithNegotiationConfig:(id)a3;
- (id)newSupportedRemoteMediaTypeStatesDict:(id)a3;
- (id)newVideoStreamGroupWithStreamGroupConfig:(id)a3;
- (id)optedInStreamIDForStreamGroupID:(unsigned int)a3;
- (id)recommendedStreamIDsForSelectedMediaEntries:(id)a3 forceSeamlessTransition:(BOOL)a4;
- (id)screenGroup;
- (id)systemAudioStreamInfo;
- (id)updateActiveStateForStreamGroup:(id)a3;
- (id)updateMediaState:(unsigned int)a3 forStreamGroup:(id)a4;
- (id)videoGroup;
- (int)reportingResolutionForResolution:(int64_t)a3;
- (int)setupSpatialAudioWithMetadata:(void *)a3 spatialMetadataEntryMap:(__CFDictionary *)a4;
- (int)setupSpatialInfoForStreamGroupConfig:(id)a3;
- (int)spatialChannelIndex:(unsigned int *)a3 forMediaType:(unsigned int)a4;
- (int)storeSpatialAudioMetadataEntry:(void *)a3 forMediaType:(unsigned int)a4;
- (int64_t)participantScreenToken;
- (unsigned)actualNetworkBitrateForStreamGroup:(unsigned int)a3;
- (unsigned)actualNetworkBitrateWithAudioBitrates:(id)a3;
- (unsigned)cappedVideoQualityWithShouldLimitCameraQualityForPIP:(BOOL)a3;
- (unsigned)lastDisplayedFrameRTPTimestamp;
- (unsigned)optedInNetworkBitrateForStreamGroup:(unsigned int)a3;
- (unsigned)remoteMediaStateForMediaType:(unsigned int)a3;
- (void)appendOptedInStreamID:(id)a3 toOptInStreamsIDs:(id)a4 targetBandwidthEntry:(id)a5 forceSeamlessTransition:(BOOL)a6;
- (void)appendStreamGroup:(id)a3 maxQualityIndex:(unsigned int)a4 mediaEntries:(id)a5;
- (void)appendStreamGroupsMediaEntries:(id)a3;
- (void)applyPositionalInfoPendingChangesWithShouldReapply:(BOOL)a3;
- (void)cancelAndReleaseFetchTimer;
- (void)cleanupNwActivity;
- (void)cleanupSpatialAudio;
- (void)collectAudioChannelMetrics:(id *)a3;
- (void)collectVideoChannelMetrics:(id *)a3;
- (void)completeAndReleaseNwActivity:(id)a3 withReason:(int)a4;
- (void)createAndResumeFetchTimer;
- (void)createJitterBufferTargetEstimatorSynchronizer:(tagVCJBTargetEstimatorSynchronizer *)a3 syncGroupID:(unsigned int)a4;
- (void)dealloc;
- (void)detectConnectionTimingSource;
- (void)didReceiveFirstFrameForStreamGroup:(id)a3;
- (void)didStopReacting;
- (void)dispatchedReportConnectionTimingWithStreamGroup:(id)a3;
- (void)dispatchedSetPlaybackSynchronizationGroupMember:(BOOL)a3;
- (void)dispatchedSetRemoteAudioEnabled:(BOOL)a3;
- (void)dispatchedSetRemoteAudioPaused:(BOOL)a3;
- (void)dispatchedSetRemoteScreenEnabled:(BOOL)a3;
- (void)dispatchedSetRemoteSystemAudioPaused:(BOOL)a3;
- (void)dispatchedSetRemoteVideoEnabled:(BOOL)a3;
- (void)dispatchedSetRemoteVideoPaused:(BOOL)a3;
- (void)dispatchedSetScreenControlEnabled:(BOOL)a3;
- (void)dispatchedSetVideoReceiverFeedbackDelegate:(id)a3;
- (void)getMajorVersionNumber;
- (void)initializeParticipantType;
- (void)isVideoExpected;
- (void)negotiateAudioRules:(id)a3;
- (void)networkQualityDidDegrade:(BOOL)a3 isLocalNetworkQualityDegraded:(BOOL)a4;
- (void)processParticipantInfo;
- (void)pushEventToNwActivity:(int64_t)a3 started:(BOOL)a4;
- (void)reactionDidStart:(id)a3;
- (void)reconfigureJitterBufferMode:(int)a3;
- (void)redundancyController:(id)a3 redundancyPercentageDidChange:(unsigned int)a4;
- (void)reportCameraCompositionEnabled:(BOOL)a3;
- (void)reportConnectionTiming;
- (void)reportConnectionTimingWithStreamGroupDispatched:(id)a3;
- (void)setActiveStreamIDs:(id)a3;
- (void)setAudioPaused:(BOOL)a3;
- (void)setEnableVADFiltering:(BOOL)a3;
- (void)setForceAudioAsConnectionTimingSource:(BOOL)a3;
- (void)setIsPlaybackSynchronizationGroupMember:(BOOL)a3;
- (void)setLocalCameraCaptureActive:(BOOL)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setMediaRecorder:(id)a3;
- (void)setMediaSuspended:(BOOL)a3 forStreamToken:(id)a4;
- (void)setMuted:(BOOL)a3;
- (void)setOneToOneModeEnabled:(BOOL)a3;
- (void)setProminenceIndex:(unsigned int)a3;
- (void)setRemoteAudioEnabled:(BOOL)a3;
- (void)setRemoteAudioPaused:(BOOL)a3;
- (void)setRemoteMediaStalled:(BOOL)a3;
- (void)setRemoteMediaState:(id)a3 forMediaType:(id)a4;
- (void)setRemoteMediaTypeStates:(id)a3;
- (void)setRemoteScreenEnabled:(BOOL)a3;
- (void)setRemoteSystemAudioPaused:(BOOL)a3;
- (void)setRemoteVideoEnabled:(BOOL)a3;
- (void)setRemoteVideoPaused:(BOOL)a3;
- (void)setScreenControlEnabled:(BOOL)a3;
- (void)setSharingEnabled:(BOOL)a3;
- (void)setShouldEnableFaceZoom:(BOOL)a3;
- (void)setStreamGroup:(unsigned int)a3 syncSourceStreamGroupID:(unsigned int)a4;
- (void)setTransitionToDisabled:(unsigned int)a3;
- (void)setTransitionToEnabled:(unsigned int)a3;
- (void)setTransitionToPaused:(unsigned int)a3;
- (void)setVideoDegraded:(BOOL)a3;
- (void)setVideoPaused:(BOOL)a3;
- (void)setVideoQuality:(unsigned __int8)a3;
- (void)setVideoReceiverFeedbackDelegate:(id)a3;
- (void)setVideoStreamDelegate:(id)a3 delegateFunctions:(const tagVCVideoStreamDelegateRealtimeInstanceVTable *)a4;
- (void)setVisibilityIndex:(unsigned int)a3;
- (void)setupJBTargetSynchronizers;
- (void)setupMediaStreamGroupConfig:(id)a3 withNegotiationConfig:(id)a4;
- (void)setupStreamGroups;
- (void)spatialMetadataEntryForMediaType:(unsigned int)a3;
- (void)start;
- (void)stop;
- (void)updateACC24ExperimentOverrides;
- (void)updateActiveVoiceOnly;
- (void)updateAndHandleVideoMediaStall:(BOOL)a3;
- (void)updateAudioSpectrumState;
- (void)updateCameraUsedForConnectionTiming;
- (void)updateDownlinkBandwithAllocatorClientConfigurations:(id)a3;
- (void)updateOneToOneAudioPositionalInfo:(const tagVCSpatialAudioMetadataPositionalInfo *)a3;
- (void)updatePositionalInfo:(id)a3 shouldReapply:(BOOL)a4;
- (void)updatePositionalInfoWithData:(id)a3 shouldReapply:(BOOL)a4;
- (void)updateRemoteDeviceOrientation:(int)a3;
- (void)updateScreenStreamConfigurationWithStreamGroupResult:(id)a3 multiwayConfig:(id)a4 screenStreamConfig:(id)a5;
- (void)updateShouldEnableFaceZoom;
- (void)updateShouldEnableMLEnhance;
- (void)updateShouldEnableMLEnhanceHighTierMultiway;
- (void)updateShouldEnableMLEnhanceLowTierFRCMultiway;
- (void)updateShouldEnableMLEnhanceLowTierMultiway;
- (void)updateShouldEnableMLEnhanceMiddleTierMultiway;
- (void)updateShouldEnableMLEnhanceOneToOne;
- (void)updateStreamConfigWithMLEnhance:(id)a3;
- (void)updateThermalLevel:(int)a3;
- (void)updateVideoMultiwayConfig:(id)a3 withStreamGroupStreamConfig:(id)a4;
- (void)validateMediaEntries:(id)a3;
@end

@implementation VCSessionParticipantRemote

- (VCSessionParticipantRemote)initWithConfig:(id)a3 delegate:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = VCSessionParticipantRemote;
  v5 = [(VCSessionParticipant *)&v33 initWithConfig:a3 delegate:a4];
  if (v5)
  {
    v5->_perfTimers = objc_alloc_init(MEMORY[0x1E6986620]);
    v5->super._isGKVoiceChat = [a3 isGKVoiceChat];
    v5->super._direction = 2;
    v5->super._idsParticipantID = [a3 idsParticipantID];
    v5->_isJBLatencySensitiveModeEnabled = [a3 isJBLatencySensitiveModeEnabled];
    v5->super._oneToOneModeEnabled = [a3 isOneToOneModeEnabled];
    v5->_isVideoJitterForPlayoutEnabled = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-video-jitter-buffer-for-video-playout" userDefaultKey:@"UseVideoJitterForVideoPlayoutForFaceTime" featureFlagDomain:"AVConference" featureFlagName:"UseVideoJitterForVideoPlayout"];
    v6 = MEMORY[0x1E695E110];
    v5->_shouldDisableMiddleTierMLEnhance = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-middle-tier-ml-enhance-disabled" userDefaultKey:@"mlEnhanceForMiddleQualityTiersDisabled" defaultValue:MEMORY[0x1E695E110] isDoubleType:{0), "BOOLValue"}];
    v5->_isLowTierFRCEnabled = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-low-tier-frc-for-gft" userDefaultKey:@"GFTVideoEnhancer" featureFlagDomain:"AVConference" featureFlagName:"UseFRCForLowTierGFT"];
    v5->_shouldDisableU14xScaler = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-u-plus-one-four-times-ml-scaler-disabled" userDefaultKey:@"forceDisable270pMLEnhance" defaultValue:v6 isDoubleType:{0), "BOOLValue"}];
    v5->_enableMaxCameraBitrateVideoQualityNewTier = [a3 enableMaxCameraBitrateVideoQualityNewTier];
    v5->_isLateKeyFrameDetectionEnabled = [a3 isLateKeyFrameDetectionEnabled];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_jbSynchronizerPerSyncGroupID = v7;
    if (v7)
    {
      v8 = objc_alloc_init(VCPositionalInfo);
      v5->_positionalInfo = v8;
      if (v8)
      {
        v9 = [objc_msgSend(objc_msgSend(a3 "mediaNegotiator")];
        if (v9)
        {
          v10 = v9;
          [(VCSessionParticipantRemote *)v9 setIsCaller:0];
          v5->super._mediaNegotiator = [[VCSessionMediaNegotiator alloc] initWithLocalConfiguration:v10];
          [(VCSessionParticipantRemote *)v5 setupJBTargetSynchronizers];
          v11 = [a3 participantData];
          v5->super._opaqueData = v11;
          if (v11)
          {
            v12 = [VCSessionParticipant participantInfoWithParticipantData:v11];
            v5->super._participantInfo = v12;
            if (v12)
            {
              if ([(VCSessionParticipantRemote *)v5 processParticipantInfo])
              {
                v5->super._negotiatedFECFeaderVersion = [(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)v5->super._mediaNegotiator negotiatedSettings] fecHeaderVersion];
                v5->_mediaTable = [[VCSessionBandwidthAllocationTable alloc] initWithType:2];
                -[VCObject setLogPrefix:](v5->_mediaTable, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"participantID:%@ ", v5->super._uuid]);
                v5->_repairMediaTable = [[VCSessionBandwidthAllocationTable alloc] initWithType:2];
                -[VCObject setLogPrefix:](v5->_repairMediaTable, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"participantID:%@ ", v5->super._uuid]);
                v13 = -[VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:](v5, "setupSpatialAudioWithMetadata:spatialMetadataEntryMap:", [a3 spatialMetadata], objc_msgSend(a3, "spatialMetadataEntryMap"));
                if (v13 < 0)
                {
                  v29 = v13;
                  if (objc_opt_class() == v5)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        [VCSessionParticipantRemote initWithConfig:delegate:];
                      }
                    }
                  }

                  else
                  {
                    if (objc_opt_respondsToSelector())
                    {
                      v30 = [(VCSessionParticipantRemote *)v5 performSelector:sel_logPrefix];
                    }

                    else
                    {
                      v30 = &stru_1F570E008;
                    }

                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      v31 = VRTraceErrorLogLevelToCSTR();
                      v32 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316418;
                        *&buf[4] = v31;
                        v35 = 2080;
                        v36 = "[VCSessionParticipantRemote initWithConfig:delegate:]";
                        v37 = 1024;
                        v38 = 204;
                        v39 = 2112;
                        v40 = v30;
                        v41 = 2048;
                        v42 = v5;
                        v43 = 1024;
                        v44 = v29;
                        _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to setup spatial audio! result=%08x", buf, 0x36u);
                      }
                    }
                  }

                  goto LABEL_41;
                }

                v5->_isServerRTxEnabled = [a3 isServerRTxEnabled];
                v5->_isEnhancedJBAdaptationsEnabled = [a3 isEnhancedJBAdaptationsEnabled];
                v5->_detectInactiveAudioFramesAACELD = [a3 detectInactiveAudioFramesAACELD];
                [(VCSessionParticipantRemote *)v5 updateACC24ExperimentOverrides];
                v5->_outOfProcessCodecsEnabled = [a3 outOfProcessCodecsEnabled];
                -[VCSessionParticipantRemote setProminenceIndex:](v5, "setProminenceIndex:", [a3 prominenceIndex]);
                -[VCSessionParticipantRemote dispatchedSetPlaybackSynchronizationGroupMember:](v5, "dispatchedSetPlaybackSynchronizationGroupMember:", [a3 isPlaybackSynchronizationGroupMember]);
                v5->_capabilities.supportsParticipantIDBasedKeyLookup = [(VCSessionParticipantRemote *)v5 supportsIDSParticipantIDBasedKeyIndexMatching];
                [(TimingCollection *)v5->_perfTimers startTimingForKey:19];
                if ([(VCSessionParticipantRemote *)v5 setupStreamGroups])
                {
                  [(VCSessionParticipantRemote *)v5 initializeParticipantType];
                  v5->_capabilities.controlChannelVersion = [(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)v5->super._mediaNegotiator negotiatedSettings] controlChannelVersion];
                  v5->_capabilities.supportsGFTSwitchToOneToOne = [(VCSessionParticipantRemote *)v5 supportsGFTSwitchToOneToOne];
                  v5->super._audioEnabled = [a3 audioEnabled];
                  v5->super._videoEnabled = [a3 videoEnabled];
                  v5->super._screenEnabled = [a3 screenEnabled];
                  v5->super._audioPaused = [a3 audioPaused];
                  v5->super._videoPaused = [a3 videoPaused];
                  v5->super._isMuted = [a3 audioMuted];
                  [a3 volume];
                  v5->super._volume = v14;
                  [a3 audioPosition];
                  v5->super._audioPosition = v15;
                  v5->_nwActivity = [a3 nwActivity];
                  v5->_remoteVideoEnabled = 1;
                  v5->_remoteAudioEnabled = 1;
                  v5->_remoteScreenEnabledStateChanged = 1;
                  v5->_remoteSystemAudioPaused = 0;
                  v5->_remoteMediaStates = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v5->_thermalLevel = 0;
                  v5->_streamIDMLEnhanceState = objc_alloc_init(MEMORY[0x1E695DF90]);
                  [(VCSessionParticipant *)v5 syncMicMediaStateFromLegacyState];
                  [(VCSessionParticipant *)v5 syncCameraMediaStateFromLegacyState];
                  [(VCSessionParticipant *)v5 syncScreenMediaStateFromLegacyState];
                  [(VCSessionParticipant *)v5 setupMediaTypeSettingsWithConfig:a3];
                  nwActivity = v5->_nwActivity;
                  if (nwActivity)
                  {
                    nw_retain(nwActivity);
                  }

                  [(VCSessionParticipantRemote *)v5 updateDownlinkBandwithAllocatorClientConfigurations:a3];
                  if (![+[VCDefaults forceFECRepairStream] sharedInstance]
                  {
                    goto LABEL_25;
                  }

                  if (objc_opt_class() == v5)
                  {
                    if (VRTraceGetErrorLogLevelForModule() < 5)
                    {
                      goto LABEL_24;
                    }

                    v18 = VRTraceErrorLogLevelToCSTR();
                    v19 = *MEMORY[0x1E6986650];
                    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_24;
                    }

                    *buf = 136315650;
                    *&buf[4] = v18;
                    v35 = 2080;
                    v36 = "[VCSessionParticipantRemote initWithConfig:delegate:]";
                    v37 = 1024;
                    v38 = 255;
                    v20 = "VCSessionParticipantRemote [%s] %s:%d _isRedundancyRequested set to YES by forceFECRepairStream";
                    v21 = v19;
                    v22 = 28;
                  }

                  else
                  {
                    if (objc_opt_respondsToSelector())
                    {
                      v17 = [(VCSessionParticipantRemote *)v5 performSelector:sel_logPrefix];
                    }

                    else
                    {
                      v17 = &stru_1F570E008;
                    }

                    if (VRTraceGetErrorLogLevelForModule() < 5)
                    {
                      goto LABEL_24;
                    }

                    v23 = VRTraceErrorLogLevelToCSTR();
                    v24 = *MEMORY[0x1E6986650];
                    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_24;
                    }

                    *buf = 136316162;
                    *&buf[4] = v23;
                    v35 = 2080;
                    v36 = "[VCSessionParticipantRemote initWithConfig:delegate:]";
                    v37 = 1024;
                    v38 = 255;
                    v39 = 2112;
                    v40 = v17;
                    v41 = 2048;
                    v42 = v5;
                    v20 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) _isRedundancyRequested set to YES by forceFECRepairStream";
                    v21 = v24;
                    v22 = 48;
                  }

                  _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_24:
                  v5->_isRedundancyRequested = 1;
LABEL_25:
                  [(VCSessionParticipantRemote *)v5 updateAudioSpectrumState];
                  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSessionParticipantRemote-initialized");
                  if (VRTraceGetErrorLogLevelForModule() >= 6)
                  {
                    v25 = VRTraceErrorLogLevelToCSTR();
                    v26 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v27 = [(VCSessionParticipant *)v5 description];
                      *buf = 136316162;
                      *&buf[4] = v25;
                      v35 = 2080;
                      v36 = "[VCSessionParticipantRemote initWithConfig:delegate:]";
                      v37 = 1024;
                      v38 = 262;
                      v39 = 2048;
                      v40 = v5;
                      v41 = 2112;
                      v42 = v27;
                      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d @:@ VCSessionParticipantRemote-initialized (%p) Participant init %@", buf, 0x30u);
                    }
                  }

                  goto LABEL_28;
                }

                [VCSessionParticipantRemote initWithConfig:delegate:];
              }

              else
              {
                [VCSessionParticipantRemote initWithConfig:delegate:];
              }
            }

            else
            {
              [VCSessionParticipantRemote initWithConfig:delegate:];
            }
          }

          else
          {
            [VCSessionParticipantRemote initWithConfig:delegate:];
          }
        }

        else
        {
          [VCSessionParticipantRemote initWithConfig:delegate:];
        }
      }

      else
      {
        [VCSessionParticipantRemote initWithConfig:delegate:];
      }
    }

    else
    {
      [VCSessionParticipantRemote initWithConfig:delegate:];
    }

    v10 = *buf;
LABEL_41:

    v10 = v5;
    v5 = 0;
LABEL_28:
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  [(VCSessionParticipantRemote *)self cleanupSpatialAudio];
  [(VCSessionParticipantRemote *)self cleanupNwActivity];

  v3.receiver = self;
  v3.super_class = VCSessionParticipantRemote;
  [(VCSessionParticipant *)&v3 dealloc];
}

- (void)start
{
  block[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCSessionParticipantRemote_start__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(participantQueue, block);
  v6.receiver = self;
  v6.super_class = VCSessionParticipantRemote;
  [(VCSessionParticipant *)&v6 start];
  v4 = self->super._participantQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__VCSessionParticipantRemote_start__block_invoke_2;
  v5[3] = &unk_1E85F3778;
  v5[4] = self;
  dispatch_async(v4, v5);
}

- (void)stop
{
  block[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__VCSessionParticipantRemote_stop__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(participantQueue, block);
  v4.receiver = self;
  v4.super_class = VCSessionParticipantRemote;
  [(VCSessionParticipant *)&v4 stop];
}

- (void)updateACC24ExperimentOverrides
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)[(VCMediaNegotiatorResultsAudio *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedAudioSettings] secondaryPayloads] containsObject:&unk_1F5799A98];
  if ([(VCAudioRuleCollection *)self->super._supportedAudioRules isACC24ForU1Enabled])
  {
    if (self->super._oneToOneModeEnabled && !v3)
    {
      v4 = [(VCExperimentManager *)self->super._experimentManager overrideExperimentGroup:v3 forExperiment:@"enableACC24ForU1"];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316418;
          v11 = v5;
          v12 = 2080;
          v13 = "[VCSessionParticipantRemote updateACC24ExperimentOverrides]";
          v14 = 1024;
          v15 = 314;
          v16 = 2112;
          v17 = @"enableACC24ForU1";
          v18 = 1024;
          v19 = v3;
          v20 = 1024;
          v21 = v4;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d VCExperimentManager U+1 override RTCReporting for experimentName=%@ value=%u result=%d", &v10, 0x32u);
        }
      }
    }
  }

  if ([(VCAudioRuleCollection *)self->super._supportedAudioRules isACC24ForGFTEnabled])
  {
    if (!self->super._oneToOneModeEnabled)
    {
      v7 = [(VCExperimentManager *)self->super._experimentManager overrideExperimentGroup:v3 forExperiment:@"enableACC24ForGFT"];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316418;
          v11 = v8;
          v12 = 2080;
          v13 = "[VCSessionParticipantRemote updateACC24ExperimentOverrides]";
          v14 = 1024;
          v15 = 321;
          v16 = 2112;
          v17 = @"enableACC24ForGFT";
          v18 = 1024;
          v19 = v3;
          v20 = 1024;
          v21 = v7;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d VCExperimentManager GFT override RTCReporting for experimentName=%@ value=%u result=%d", &v10, 0x32u);
        }
      }
    }
  }
}

- (BOOL)isMediaTypeExpected:(unsigned int)a3
{
  v3 = *&a3;
  dispatch_assert_queue_V2(self->super._participantQueue);
  if (v3 > 8)
  {
    goto LABEL_15;
  }

  if (((1 << v3) & 0x170) == 0)
  {
    if (((1 << v3) & 0xC) != 0)
    {
      if (self->super._screenEnabled)
      {
        v9 = 569;
LABEL_17:
        v8 = *(&self->super.super.super.isa + v9);
        return v8 & 1;
      }

      goto LABEL_18;
    }

    if (v3 == 1)
    {
      if (self->super._videoEnabled)
      {
        v9 = 568;
        goto LABEL_17;
      }

LABEL_18:
      v8 = 0;
      return v8 & 1;
    }

LABEL_15:
    if (!v3)
    {
      v9 = 373;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), "mediaState"}];
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_remoteMediaStates objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), "unsignedIntValue"}];
  v8 = v5 == 1 && v6 == 1;
  return v8 & 1;
}

- (void)updateCameraUsedForConnectionTiming
{
  dispatch_assert_queue_V2(self->super._participantQueue);
  v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_remoteMediaStates objectForKeyedSubscript:{&unk_1F5799AB0), "unsignedIntValue"}] == 1;
  v4 = [(VCSessionParticipantRemote *)self isMediaTypeExpected:6];
  self->_useCameraAsConnectionTimingSource = (v3 | v4 | [(VCSessionParticipantRemote *)self isMediaTypeExpected:8]) & 1;
}

- (BOOL)shouldReportConnectionTimingWithStreamGroup:(id)a3
{
  v4 = [a3 streamGroupID];
  v5 = [(VCSessionParticipantRemote *)self shouldUseCameraAsConnectionTimingSource];
  v6 = v4 == 1667329381 || v4 == 1718909044;
  v7 = v4 == 1650745716 || v6;
  if (v5)
  {
    return v7;
  }

  else
  {
    return v4 == 1835623282;
  }
}

- (void)detectConnectionTimingSource
{
  v46 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._participantQueue);
  if (!self->_isConnectionTimingSourceDetected)
  {
    self->_isConnectionTimingSourceDetected = 1;
    [(VCSessionParticipantRemote *)self updateCameraUsedForConnectionTiming];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        idsParticipantID = self->super._idsParticipantID;
        v6 = [(VCSessionParticipantRemote *)self shouldUseCameraAsConnectionTimingSource];
        *buf = 136316162;
        v7 = @"audio";
        v25 = v3;
        v26 = 2080;
        v27 = "[VCSessionParticipantRemote detectConnectionTimingSource]";
        v28 = 1024;
        if (v6)
        {
          v7 = @"video";
        }

        v29 = 385;
        v30 = 2048;
        v31 = idsParticipantID;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Connection timing for participantID=%llu clocked by %@ for this call", buf, 0x30u);
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [(NSMutableDictionary *)self->super._streamGroups allValues];
    v22 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
    if (v22)
    {
      v21 = *v43;
      do
      {
        v8 = 0;
        do
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v8;
          v9 = *(*(&v42 + 1) + 8 * v8);
          v10 = [VCSessionParticipant mediaTypesFromStreamGroupID:[(__CFString *)v9 streamGroupID]];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v37 objects:v36 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v38;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v38 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_remoteMediaStates objectForKeyedSubscript:{*(*(&v37 + 1) + 8 * i)), "unsignedIntValue"}];
                [(__CFString *)v9 setEnabledAtStart:v15 == 1];
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v16 = VRTraceErrorLogLevelToCSTR();
                  v17 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136316418;
                    v18 = @"disabled";
                    if (v15 == 1)
                    {
                      v18 = @"enabled";
                    }

                    v25 = v16;
                    v26 = 2080;
                    v27 = "[VCSessionParticipantRemote detectConnectionTimingSource]";
                    v28 = 1024;
                    v29 = 394;
                    v30 = 2112;
                    v31 = self;
                    v32 = 2112;
                    v33 = v9;
                    v34 = 2112;
                    v35 = v18;
                    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Remote participant=%@ has streamGroup=%@ %@ at start", buf, 0x3Au);
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v37 objects:v36 count:16];
            }

            while (v12);
          }

          if ([(VCSessionParticipantRemote *)self shouldReportConnectionTimingWithStreamGroup:v9])
          {
            [(__CFString *)v9 firstMediaFrameReceivedTime];
            if (v19 != 0.0)
            {
              [(VCSessionParticipantRemote *)self reportConnectionTimingWithStreamGroupDispatched:v9];
            }
          }

          v8 = v23 + 1;
        }

        while (v23 + 1 != v22);
        v22 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
      }

      while (v22);
    }
  }
}

- (void)initializeParticipantType
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->super._participantStreamTokens objectForKeyedSubscript:&unk_1F5799AC8]|| [(NSMutableDictionary *)self->super._participantStreamTokens objectForKeyedSubscript:&unk_1F5799AE0])
  {
    v3 = @"webrtc";
    v4 = 1;
  }

  else
  {
    v3 = @"wolf";
    v4 = 2;
    if (![(VCSessionParticipant *)self didNegotiateStreamGroupWithID:1650745716])
    {
      v13 = [(VCSessionParticipant *)self didNegotiateStreamGroupWithID:1718909044];
      v4 = v13 ? 2 : 0;
      if (!v13)
      {
        v3 = @"native";
      }
    }
  }

  self->_capabilities.participantType = v4;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = v6;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote initializeParticipantType]";
        v18 = 1024;
        v19 = 420;
        v20 = 2112;
        v21 = v3;
        v8 = "VCSessionParticipantRemote [%s] %s:%d remoteParticipantType=%@";
        v9 = v7;
        v10 = 38;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        v14 = 136316418;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote initializeParticipantType]";
        v18 = 1024;
        v19 = 420;
        v20 = 2112;
        v21 = v5;
        v22 = 2048;
        v23 = self;
        v24 = 2112;
        v25 = v3;
        v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) remoteParticipantType=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_14;
      }
    }
  }
}

- (int)setupSpatialAudioWithMetadata:(void *)a3 spatialMetadataEntryMap:(__CFDictionary *)a4
{
  v75 = *MEMORY[0x1E69E9840];
  cf = 0;
  HIDWORD(v41) = 0;
  [(VCSessionParticipantRemote *)self cleanupSpatialAudio];
  v7 = *MEMORY[0x1E695E480];
  if (a3 && a4)
  {
    Count = CFDictionaryGetCount(a4);
    MutableCopy = CFDictionaryCreateMutableCopy(v7, Count + 1, a4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  self->_mediaTypeToSpatialAudioMetadataEntryMap = MutableCopy;
  if (!MutableCopy)
  {
    [VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:];
LABEL_33:
    v17 = *buf;
    goto LABEL_28;
  }

  if (!a3)
  {
    [(VCSessionParticipantRemote *)self setupSpatialAudioWithMetadata:buf spatialMetadataEntryMap:v10, v11, v12, v13, v14, v15, v41, cf, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56];
    goto LABEL_33;
  }

  Entry = VCSpatialAudioMetadata_CreateEntry(v7, a3, &cf);
  if (Entry < 0)
  {
    v17 = Entry;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:];
        }
      }

      goto LABEL_28;
    }

    if (objc_opt_respondsToSelector())
    {
      v33 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v33 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_28;
    }

    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136316418;
    v62 = v36;
    v63 = 2080;
    v64 = "[VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:]";
    v65 = 1024;
    v66 = 441;
    v67 = 2112;
    v68 = v33;
    v69 = 2048;
    v70 = self;
    v71 = 1024;
    LODWORD(v72) = v17;
    v38 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to allocate spatial metadata entry. status=%08x";
LABEL_64:
    _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0x36u);
    goto LABEL_28;
  }

  v17 = VCSpatialAudioMetadata_ChannelIndex(cf, &v41 + 1);
  v18 = objc_opt_class();
  if (v17 < 0)
  {
    if (v18 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:];
        }
      }

      goto LABEL_28;
    }

    if (objc_opt_respondsToSelector())
    {
      v34 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v34 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_28;
    }

    v39 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136316418;
    v62 = v39;
    v63 = 2080;
    v64 = "[VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:]";
    v65 = 1024;
    v66 = 444;
    v67 = 2112;
    v68 = v34;
    v69 = 2048;
    v70 = self;
    v71 = 1024;
    LODWORD(v72) = v17;
    v38 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to retrieve the channel index. status=%08x";
    goto LABEL_64;
  }

  if (v18 == self)
  {
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

    *buf = 136316162;
    v62 = v20;
    v63 = 2080;
    v64 = "[VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:]";
    v65 = 1024;
    v66 = 445;
    v67 = 2048;
    v68 = cf;
    v69 = 1024;
    LODWORD(v70) = HIDWORD(v41);
    v22 = "VCSessionParticipantRemote [%s] %s:%d created entry=%p with channelIndex=%u";
    v23 = v21;
    v24 = 44;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_20;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 136316674;
    v62 = v25;
    v63 = 2080;
    v64 = "[VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:]";
    v65 = 1024;
    v66 = 445;
    v67 = 2112;
    v68 = v19;
    v69 = 2048;
    v70 = self;
    v71 = 2048;
    v72 = cf;
    v73 = 1024;
    v74 = HIDWORD(v41);
    v22 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) created entry=%p with channelIndex=%u";
    v23 = v26;
    v24 = 64;
  }

  _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_20:
  v17 = [(VCSessionParticipantRemote *)self storeSpatialAudioMetadataEntry:cf forMediaType:0];
  if ((v17 & 0x80000000) == 0)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    micStreamGroups = self->super._micStreamGroups;
    v28 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v57 objects:&v43 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v58;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(micStreamGroups);
          }

          [*(*(&v57 + 1) + 8 * i) setAudioChannelIndex:HIDWORD(v41)];
        }

        v29 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v57 objects:&v43 count:16];
      }

      while (v29);
    }

    goto LABEL_28;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v35 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v35 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_28;
    }

    v40 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136316418;
    v62 = v40;
    v63 = 2080;
    v64 = "[VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:]";
    v65 = 1024;
    v66 = 448;
    v67 = 2112;
    v68 = v35;
    v69 = 2048;
    v70 = self;
    v71 = 1024;
    LODWORD(v72) = v17;
    v38 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to store metadata entry for VCSessionMediaTypeMicrophone. status=%08x";
    goto LABEL_64;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSessionParticipantRemote setupSpatialAudioWithMetadata:spatialMetadataEntryMap:];
    }
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

- (void)cleanupSpatialAudio
{
  mediaTypeToSpatialAudioMetadataEntryMap = self->_mediaTypeToSpatialAudioMetadataEntryMap;
  if (mediaTypeToSpatialAudioMetadataEntryMap)
  {
    CFRelease(mediaTypeToSpatialAudioMetadataEntryMap);
    self->_mediaTypeToSpatialAudioMetadataEntryMap = 0;
  }
}

- (int)storeSpatialAudioMetadataEntry:(void *)a3 forMediaType:(unsigned int)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v9);
  if (v6)
  {
    v7 = v6;
    CFDictionaryAddValue(self->_mediaTypeToSpatialAudioMetadataEntryMap, v6, a3);
    CFRelease(v7);
    return 0;
  }

  else
  {
    [VCSessionParticipantRemote storeSpatialAudioMetadataEntry:forMediaType:];
    return v9[1];
  }
}

- (NSDictionary)participantSpatialAudioSourceIDs
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = &unk_1F5799AF8;
  v4[0] = [(NSMutableDictionary *)self->super._participantStreamTokens objectForKeyedSubscript:&unk_1F5799B10];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
}

- (void)setAudioPaused:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCSessionParticipantRemote_setAudioPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __45__VCSessionParticipantRemote_setAudioPaused___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 376) = *(a1 + 40);
  [*(a1 + 32) syncMicMediaStateFromLegacyState];
  [*(a1 + 32) updateActiveStateForStreamGroup:{objc_msgSend(*(a1 + 32), "audioGroup")}];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 376);
        *buf = 136315906;
        v18 = v3;
        v19 = 2080;
        v20 = "[VCSessionParticipantRemote setAudioPaused:]_block_invoke";
        v21 = 1024;
        v22 = 501;
        v23 = 1024;
        LODWORD(v24) = v5;
        v6 = "VCSessionParticipantRemote [%s] %s:%d setAudioPaused=%d";
        v7 = v4;
        v8 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
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
        v12 = *(v11 + 376);
        *buf = 136316418;
        v18 = v9;
        v19 = 2080;
        v20 = "[VCSessionParticipantRemote setAudioPaused:]_block_invoke";
        v21 = 1024;
        v22 = 501;
        v23 = 2112;
        v24 = v2;
        v25 = 2048;
        v26 = v11;
        v27 = 1024;
        v28 = v12;
        v6 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) setAudioPaused=%d";
        v7 = v10;
        v8 = 54;
        goto LABEL_11;
      }
    }
  }

  v13 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__VCSessionParticipantRemote_setAudioPaused___block_invoke_72;
  v15[3] = &unk_1E85F6758;
  v15[4] = v13;
  v16 = *(a1 + 40);
  return [v13 callDelegateWithBlock:v15];
}

- (void)dispatchedSetRemoteAudioPaused:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if (self->_remoteAudioPaused != a3)
  {
    self->_remoteAudioPaused = a3;
    [(VCSessionParticipantRemote *)self updateActiveStateForStreamGroup:[(VCSessionParticipantRemote *)self audioGroup]];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      remoteAudioPaused = self->_remoteAudioPaused;
      *buf = 136315906;
      v25 = v12;
      v26 = 2080;
      v27 = "[VCSessionParticipantRemote dispatchedSetRemoteAudioPaused:]";
      v28 = 1024;
      v29 = 512;
      v30 = 1024;
      LODWORD(v31) = remoteAudioPaused;
      v15 = "VCSessionParticipantRemote [%s] %s:%d setRemoteAudioPaused=%d";
      v16 = v13;
      v17 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v22 = self->_remoteAudioPaused;
      *buf = 136316418;
      v25 = v20;
      v26 = 2080;
      v27 = "[VCSessionParticipantRemote dispatchedSetRemoteAudioPaused:]";
      v28 = 1024;
      v29 = 512;
      v30 = 2112;
      v31 = v6;
      v32 = 2048;
      v33 = self;
      v34 = 1024;
      v35 = v22;
      v15 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) setRemoteAudioPaused=%d";
      v16 = v21;
      v17 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_24:
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __61__VCSessionParticipantRemote_dispatchedSetRemoteAudioPaused___block_invoke;
    v23[3] = &unk_1E85F6780;
    v23[4] = self;
    [(VCSessionParticipant *)self callDelegateWithBlock:v23];
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v25 = v7;
        v26 = 2080;
        v27 = "[VCSessionParticipantRemote dispatchedSetRemoteAudioPaused:]";
        v28 = 1024;
        v29 = 517;
        v30 = 1024;
        LODWORD(v31) = v3;
        v9 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setRemoteAudioPaused=%d";
        v10 = v8;
        v11 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v25 = v18;
        v26 = 2080;
        v27 = "[VCSessionParticipantRemote dispatchedSetRemoteAudioPaused:]";
        v28 = 1024;
        v29 = 517;
        v30 = 2112;
        v31 = v5;
        v32 = 2048;
        v33 = self;
        v34 = 1024;
        v35 = v3;
        v9 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setRemoteAudioPaused=%d";
        v10 = v19;
        v11 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)setRemoteAudioPaused:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCSessionParticipantRemote_setRemoteAudioPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)dispatchedSetRemoteAudioEnabled:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if (self->_remoteAudioEnabled != a3)
  {
    self->_remoteAudioEnabled = a3;
    [(VCSessionParticipantRemote *)self updateActiveStateForStreamGroup:[(VCSessionParticipantRemote *)self audioGroup]];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      remoteAudioEnabled = self->_remoteAudioEnabled;
      *buf = 136315906;
      v25 = v12;
      v26 = 2080;
      v27 = "[VCSessionParticipantRemote dispatchedSetRemoteAudioEnabled:]";
      v28 = 1024;
      v29 = 531;
      v30 = 1024;
      LODWORD(v31) = remoteAudioEnabled;
      v15 = "VCSessionParticipantRemote [%s] %s:%d setRemoteAudioEnabled=%d";
      v16 = v13;
      v17 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v22 = self->_remoteAudioEnabled;
      *buf = 136316418;
      v25 = v20;
      v26 = 2080;
      v27 = "[VCSessionParticipantRemote dispatchedSetRemoteAudioEnabled:]";
      v28 = 1024;
      v29 = 531;
      v30 = 2112;
      v31 = v6;
      v32 = 2048;
      v33 = self;
      v34 = 1024;
      v35 = v22;
      v15 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) setRemoteAudioEnabled=%d";
      v16 = v21;
      v17 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_24:
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__VCSessionParticipantRemote_dispatchedSetRemoteAudioEnabled___block_invoke;
    v23[3] = &unk_1E85F6780;
    v23[4] = self;
    [(VCSessionParticipant *)self callDelegateWithBlock:v23];
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v25 = v7;
        v26 = 2080;
        v27 = "[VCSessionParticipantRemote dispatchedSetRemoteAudioEnabled:]";
        v28 = 1024;
        v29 = 536;
        v30 = 1024;
        LODWORD(v31) = v3;
        v9 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setRemoteAudioEnabled:%d";
        v10 = v8;
        v11 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v25 = v18;
        v26 = 2080;
        v27 = "[VCSessionParticipantRemote dispatchedSetRemoteAudioEnabled:]";
        v28 = 1024;
        v29 = 536;
        v30 = 2112;
        v31 = v5;
        v32 = 2048;
        v33 = self;
        v34 = 1024;
        v35 = v3;
        v9 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setRemoteAudioEnabled:%d";
        v10 = v19;
        v11 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)setRemoteAudioEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCSessionParticipantRemote_setRemoteAudioEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (id)updateActiveStateForStreamGroup:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCSessionParticipantRemote;
  v5 = [(VCSessionParticipant *)&v7 updateActiveStateForStreamGroup:?];
  if ([a3 streamGroupID] == 1667329381)
  {
    [(VCSessionParticipantRemote *)self updateShouldEnableMLEnhance];
  }

  return v5;
}

- (void)setEnableVADFiltering:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCSessionParticipantRemote_setEnableVADFiltering___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
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

- (void)setLocalCameraCaptureActive:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCSessionParticipantRemote_setLocalCameraCaptureActive___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __58__VCSessionParticipantRemote_setLocalCameraCaptureActive___block_invoke(uint64_t a1)
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
        v5 = *(a1 + 40);
        *v14 = 136315906;
        *&v14[4] = v3;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantRemote setLocalCameraCaptureActive:]_block_invoke";
        *&v14[22] = 1024;
        LODWORD(v15) = 572;
        WORD2(v15) = 1024;
        *(&v15 + 6) = v5;
        v6 = "VCSessionParticipantRemote [%s] %s:%d localCameraCaptureActive=%d";
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
        v12 = *(a1 + 40);
        *v14 = 136316418;
        *&v14[4] = v9;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantRemote setLocalCameraCaptureActive:]_block_invoke";
        *&v14[22] = 1024;
        LODWORD(v15) = 572;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v2;
        HIWORD(v15) = 2048;
        v16 = v11;
        LOWORD(v17) = 1024;
        *(&v17 + 2) = v12;
        v6 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) localCameraCaptureActive=%d";
        v7 = v10;
        v8 = 54;
        goto LABEL_11;
      }
    }
  }

  return [objc_msgSend(objc_msgSend(*(a1 + 32) cameraStreamInfo];
}

- (void)setVideoPaused:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCSessionParticipantRemote_setVideoPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __45__VCSessionParticipantRemote_setVideoPaused___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 377) = *(a1 + 40);
  [*(a1 + 32) syncCameraMediaStateFromLegacyState];
  [*(a1 + 32) updateAudioSpectrumState];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) cameraGroups];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        [*(a1 + 32) updateActiveStateForStreamGroup:v7];
        if ((*(a1 + 40) & 1) == 0)
        {
          [v7 endSensitiveContentAnalyzerInterruption];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__VCSessionParticipantRemote_setVideoPaused___block_invoke_2;
  v10[3] = &unk_1E85F6758;
  v10[4] = v8;
  v11 = *(a1 + 40);
  return [v8 callDelegateWithBlock:v10];
}

- (void)reconfigureJitterBufferMode:(int)a3
{
  v3 = *&a3;
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._participantQueue);
  if (self->_isJBLatencySensitiveModeEnabled && self->super._oneToOneModeEnabled)
  {
    [(VCMediaStream *)[(VCSessionParticipantMediaStreamInfo *)[(VCSessionParticipantRemote *)self micStreamInfo] stream] setJitterBufferMode:v3];
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
          v16 = "[VCSessionParticipantRemote reconfigureJitterBufferMode:]";
          v17 = 1024;
          v18 = 600;
          v19 = 1024;
          LODWORD(v20) = v3;
          v8 = "VCSessionParticipantRemote [%s] %s:%d Reconfiguring the jitter buffer to jitterBufferMode=%d";
          v9 = v7;
          v10 = 34;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
          v16 = "[VCSessionParticipantRemote reconfigureJitterBufferMode:]";
          v17 = 1024;
          v18 = 600;
          v19 = 2112;
          v20 = v5;
          v21 = 2048;
          v22 = self;
          v23 = 1024;
          v24 = v3;
          v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Reconfiguring the jitter buffer to jitterBufferMode=%d";
          v9 = v12;
          v10 = 54;
          goto LABEL_13;
        }
      }
    }
  }
}

- (void)dispatchedSetRemoteVideoEnabled:(BOOL)a3
{
  v3 = a3;
  v47 = *MEMORY[0x1E69E9840];
  remoteVideoEnabled = self->_remoteVideoEnabled;
  v6 = objc_opt_class();
  if (remoteVideoEnabled != v3)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v36 = v14;
          v37 = 2080;
          v38 = "[VCSessionParticipantRemote dispatchedSetRemoteVideoEnabled:]";
          v39 = 1024;
          v40 = 606;
          v41 = 1024;
          LODWORD(v42) = v3;
          v16 = "VCSessionParticipantRemote [%s] %s:%d setRemoteVideoEnabled:%d";
          v17 = v15;
          v18 = 34;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v36 = v21;
          v37 = 2080;
          v38 = "[VCSessionParticipantRemote dispatchedSetRemoteVideoEnabled:]";
          v39 = 1024;
          v40 = 606;
          v41 = 2112;
          v42 = v8;
          v43 = 2048;
          v44 = self;
          v45 = 1024;
          v46 = v3;
          v16 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) setRemoteVideoEnabled:%d";
          v17 = v22;
          v18 = 54;
          goto LABEL_23;
        }
      }
    }

    self->_remoteVideoEnabled = v3;
    [(VCSessionParticipantRemote *)self updateAndHandleVideoMediaStall:self->_isRemoteMediaStalled];
    [(VCSessionParticipantRemote *)self updateAudioSpectrumState];
    [(VCSessionParticipantRemote *)self reconfigureJitterBufferMode:v3 ^ 1u];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [(VCSessionParticipant *)self cameraGroups];
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v31 + 1) + 8 * i);
          [v28 setRemoteVideoEnabled:self->_remoteVideoEnabled];
          [(VCSessionParticipantRemote *)self updateActiveStateForStreamGroup:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v25);
    }

    goto LABEL_31;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v36 = v9;
        v37 = 2080;
        v38 = "[VCSessionParticipantRemote dispatchedSetRemoteVideoEnabled:]";
        v39 = 1024;
        v40 = 617;
        v41 = 1024;
        LODWORD(v42) = v3;
        v11 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setRemoteVideoEnabled:%d";
        v12 = v10;
        v13 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v36 = v19;
        v37 = 2080;
        v38 = "[VCSessionParticipantRemote dispatchedSetRemoteVideoEnabled:]";
        v39 = 1024;
        v40 = 617;
        v41 = 2112;
        v42 = v7;
        v43 = 2048;
        v44 = self;
        v45 = 1024;
        v46 = v3;
        v11 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setRemoteVideoEnabled:%d";
        v12 = v20;
        v13 = 54;
        goto LABEL_18;
      }
    }
  }

LABEL_31:
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __62__VCSessionParticipantRemote_dispatchedSetRemoteVideoEnabled___block_invoke;
  v29[3] = &unk_1E85F6780;
  v29[4] = self;
  [(VCSessionParticipant *)self callDelegateWithBlock:v29];
}

- (void)setRemoteVideoEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCSessionParticipantRemote_setRemoteVideoEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)dispatchedSetRemoteScreenEnabled:(BOOL)a3
{
  v3 = a3;
  v51 = *MEMORY[0x1E69E9840];
  remoteScreenEnabled = self->_remoteScreenEnabled;
  v6 = objc_opt_class();
  if (remoteScreenEnabled != v3)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_24;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136315906;
      v39 = v14;
      v40 = 2080;
      v41 = "[VCSessionParticipantRemote dispatchedSetRemoteScreenEnabled:]";
      v42 = 1024;
      v43 = 632;
      v44 = 1024;
      *v45 = v3;
      v16 = "VCSessionParticipantRemote [%s] %s:%d setRemoteScreenEnabled:%d";
      v17 = v15;
      v18 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6 || (v21 = VRTraceErrorLogLevelToCSTR(), v22 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_24:
        self->_remoteScreenEnabled = v3;
        v23 = [(VCSessionParticipantRemote *)self screenGroup];
        [v23 setRemoteVideoEnabled:self->_remoteScreenEnabled];
        if (self->_remoteScreenEnabled)
        {
          [v23 start];
          [-[VCSessionParticipant systemAudioGroup](self "systemAudioGroup")];
          v24 = 0;
        }

        else
        {
          [v23 stop];
          [-[VCSessionParticipant systemAudioGroup](self "systemAudioGroup")];
          v24 = 1;
        }

        self->_remoteSystemAudioPaused = v24;
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_38;
          }

          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          v28 = [v23 state];
          remoteSystemAudioPaused = self->_remoteSystemAudioPaused;
          *buf = 136316162;
          v39 = v26;
          v40 = 2080;
          v41 = "[VCSessionParticipantRemote dispatchedSetRemoteScreenEnabled:]";
          v42 = 1024;
          v43 = 646;
          v44 = 1024;
          *v45 = v28;
          *&v45[4] = 1024;
          *&v45[6] = remoteSystemAudioPaused;
          v30 = "VCSessionParticipantRemote [%s] %s:%d Screen state=%d changed, remoteSystemAudioPaused:%d";
          v31 = v27;
          v32 = 40;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v25 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
          }

          else
          {
            v25 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_38;
          }

          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          v35 = [v23 state];
          v36 = self->_remoteSystemAudioPaused;
          *buf = 136316674;
          v39 = v33;
          v40 = 2080;
          v41 = "[VCSessionParticipantRemote dispatchedSetRemoteScreenEnabled:]";
          v42 = 1024;
          v43 = 646;
          v44 = 2112;
          *v45 = v25;
          *&v45[8] = 2048;
          v46 = self;
          v47 = 1024;
          v48 = v35;
          v49 = 1024;
          v50 = v36;
          v30 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Screen state=%d changed, remoteSystemAudioPaused:%d";
          v31 = v34;
          v32 = 60;
        }

        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_38:
        self->_remoteScreenEnabledStateChanged = 1;
        goto LABEL_39;
      }

      *buf = 136316418;
      v39 = v21;
      v40 = 2080;
      v41 = "[VCSessionParticipantRemote dispatchedSetRemoteScreenEnabled:]";
      v42 = 1024;
      v43 = 632;
      v44 = 2112;
      *v45 = v8;
      *&v45[8] = 2048;
      v46 = self;
      v47 = 1024;
      v48 = v3;
      v16 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) setRemoteScreenEnabled:%d";
      v17 = v22;
      v18 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_24;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_39;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    *buf = 136315906;
    v39 = v9;
    v40 = 2080;
    v41 = "[VCSessionParticipantRemote dispatchedSetRemoteScreenEnabled:]";
    v42 = 1024;
    v43 = 649;
    v44 = 1024;
    *v45 = v3;
    v11 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setRemoteScreenEnabled:%d";
    v12 = v10;
    v13 = 34;
    goto LABEL_18;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v39 = v19;
      v40 = 2080;
      v41 = "[VCSessionParticipantRemote dispatchedSetRemoteScreenEnabled:]";
      v42 = 1024;
      v43 = 649;
      v44 = 2112;
      *v45 = v7;
      *&v45[8] = 2048;
      v46 = self;
      v47 = 1024;
      v48 = v3;
      v11 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setRemoteScreenEnabled:%d";
      v12 = v20;
      v13 = 54;
LABEL_18:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

LABEL_39:
  if (self->_remoteScreenEnabledStateChanged)
  {
    self->_remoteScreenEnabledStateChanged = 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __63__VCSessionParticipantRemote_dispatchedSetRemoteScreenEnabled___block_invoke;
    v37[3] = &unk_1E85F6780;
    v37[4] = self;
    [(VCSessionParticipant *)self callDelegateWithBlock:v37];
  }
}

- (void)dispatchedSetScreenControlEnabled:(BOOL)a3
{
  v3 = a3;
  v42 = *MEMORY[0x1E69E9840];
  if (self->_screenControlEnabled != a3)
  {
    v6 = [VCDefaults BOOLeanValueForKey:@"forceScreenControlJitterBufferModeFixed" defaultValue:0];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6 || (v13 = VRTraceErrorLogLevelToCSTR(), v14 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_24:
        self->_screenControlEnabled = v3;
        v27 = @"VCSPUUID";
        uuid = self->super._uuid;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&uuid forKeys:&v27 count:1];
        [(VCSessionParticipant *)self reportingAgent];
        reportingGenericEvent();
        v22 = [-[VCSessionParticipantRemote systemAudioStreamInfo](self "systemAudioStreamInfo")];
        v23 = [(VCSessionParticipantMediaStreamInfo *)[(VCSessionParticipantRemote *)self screenStreamInfo] stream];
        if (v6)
        {
          v24 = 3;
        }

        else
        {
          v24 = 1;
        }

        if (self->_screenControlEnabled)
        {
          v25 = v24;
        }

        else
        {
          v25 = 2;
        }

        [v22 setJitterBufferMode:?];
        [(VCMediaStream *)v23 setJitterBufferMode:v25];
        v26 = [(NSArray *)[(VCSessionParticipantMediaStreamInfo *)[(VCSessionParticipantRemote *)self screenStreamInfo] streamConfigs] firstObject];
        if ([v26 looseAVSyncEnabled])
        {
          [(VCMediaStream *)v23 setLooseAVSyncEnabled:!v3];
        }

        if ([v26 deferredAssemblyEnabled])
        {
          [(VCMediaStream *)v23 setDeferredAssemblyEnabled:!v3];
        }

        VCJBTargetEstimatorSynchronizer_SetPolicy([v26 jbTargetEstimatorSynchronizer], !v3);
        return;
      }

      *buf = 136316162;
      v30 = v13;
      v31 = 2080;
      v32 = "[VCSessionParticipantRemote dispatchedSetScreenControlEnabled:]";
      v33 = 1024;
      v34 = 662;
      v35 = 1024;
      *v36 = v3;
      *&v36[4] = 1024;
      *&v36[6] = v6;
      v15 = "VCSessionParticipantRemote [%s] %s:%d setScreenControlEnabled=%d forceScreenControlJitterBufferModeFixed=%d";
      v16 = v14;
      v17 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_24;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136316674;
      v30 = v20;
      v31 = 2080;
      v32 = "[VCSessionParticipantRemote dispatchedSetScreenControlEnabled:]";
      v33 = 1024;
      v34 = 662;
      v35 = 2112;
      *v36 = v7;
      *&v36[8] = 2048;
      v37 = self;
      v38 = 1024;
      v39 = v3;
      v40 = 1024;
      v41 = v6;
      v15 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) setScreenControlEnabled=%d forceScreenControlJitterBufferModeFixed=%d";
      v16 = v21;
      v17 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    goto LABEL_24;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v30 = v8;
        v31 = 2080;
        v32 = "[VCSessionParticipantRemote dispatchedSetScreenControlEnabled:]";
        v33 = 1024;
        v34 = 687;
        v35 = 1024;
        *v36 = v3;
        v10 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setScreenControlEnabled:%d";
        v11 = v9;
        v12 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v30 = v18;
        v31 = 2080;
        v32 = "[VCSessionParticipantRemote dispatchedSetScreenControlEnabled:]";
        v33 = 1024;
        v34 = 687;
        v35 = 2112;
        *v36 = v5;
        *&v36[8] = 2048;
        v37 = self;
        v38 = 1024;
        v39 = v3;
        v10 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setScreenControlEnabled:%d";
        v11 = v19;
        v12 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)setScreenControlEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCSessionParticipantRemote_setScreenControlEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)setRemoteScreenEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCSessionParticipantRemote_setRemoteScreenEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)dispatchedSetRemoteSystemAudioPaused:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCSessionParticipantRemote_dispatchedSetRemoteSystemAudioPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  v5 = a3;
  block[4] = self;
  dispatch_async(participantQueue, block);
}

void __67__VCSessionParticipantRemote_dispatchedSetRemoteSystemAudioPaused___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 571);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  if (v2 != v3)
  {
    if (v4 == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_24;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v16 = *(a1 + 40);
      v29 = 136315906;
      v30 = v14;
      v31 = 2080;
      v32 = "[VCSessionParticipantRemote dispatchedSetRemoteSystemAudioPaused:]_block_invoke";
      v33 = 1024;
      v34 = 706;
      v35 = 1024;
      LODWORD(v36) = v16;
      v17 = "VCSessionParticipantRemote [%s] %s:%d setRemoteSystemAudioPaused:%d";
      v18 = v15;
      v19 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_24;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v29 = 136316418;
      v30 = v24;
      v31 = 2080;
      v32 = "[VCSessionParticipantRemote dispatchedSetRemoteSystemAudioPaused:]_block_invoke";
      v33 = 1024;
      v34 = 706;
      v35 = 2112;
      v36 = v7;
      v37 = 2048;
      v38 = v26;
      v39 = 1024;
      v40 = v27;
      v17 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) setRemoteSystemAudioPaused:%d";
      v18 = v25;
      v19 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v29, v19);
LABEL_24:
    *(*(a1 + 32) + 571) = *(a1 + 40);
    v28 = *(a1 + 32);
    if (v28[571] == 1)
    {
      [objc_msgSend(v28 "systemAudioGroup")];
      [*(a1 + 32) swapScreenStreamGroupSyncSourceWithState:2];
    }

    else
    {
      [v28 swapScreenStreamGroupSyncSourceWithState:1];
      [objc_msgSend(*(a1 + 32) "systemAudioGroup")];
    }

    return;
  }

  if (v4 == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v29 = 136315906;
        v30 = v8;
        v31 = 2080;
        v32 = "[VCSessionParticipantRemote dispatchedSetRemoteSystemAudioPaused:]_block_invoke";
        v33 = 1024;
        v34 = 716;
        v35 = 1024;
        LODWORD(v36) = v10;
        v11 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setRemoteSystemAudioPaused:%d";
        v12 = v9;
        v13 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v29, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        v29 = 136316418;
        v30 = v20;
        v31 = 2080;
        v32 = "[VCSessionParticipantRemote dispatchedSetRemoteSystemAudioPaused:]_block_invoke";
        v33 = 1024;
        v34 = 716;
        v35 = 2112;
        v36 = v6;
        v37 = 2048;
        v38 = v22;
        v39 = 1024;
        v40 = v23;
        v11 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setRemoteSystemAudioPaused:%d";
        v12 = v21;
        v13 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)setRemoteSystemAudioPaused:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCSessionParticipantRemote_setRemoteSystemAudioPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)setTransitionToEnabled:(unsigned int)a3
{
  v3 = *&a3;
  v21 = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [(VCSessionParticipantRemote *)self dispatchedSetRemoteVideoEnabled:1];

        [(VCSessionParticipantRemote *)self dispatchedSetRemoteVideoPaused:0];
      }

      else if (a3 == 2)
      {

        [(VCSessionParticipantRemote *)self dispatchedSetRemoteScreenEnabled:1];
      }
    }

    else
    {
      [(VCSessionParticipantRemote *)self dispatchedSetRemoteAudioEnabled:1];

      [(VCSessionParticipantRemote *)self dispatchedSetRemoteAudioPaused:0];
    }

    return;
  }

  if (a3 - 4 < 3)
  {
    goto LABEL_11;
  }

  if (a3 != 3)
  {
    if (a3 != 8)
    {
      return;
    }

LABEL_11:
    if ([(VCSessionParticipant *)self updateMediaState:1 forStreamGroups:[(VCSessionParticipant *)self streamGroupsForMediaType:*&a3]])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionParticipantRemote setTransitionToEnabled:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v9 = 136316418;
            v10 = v7;
            v11 = 2080;
            v12 = "[VCSessionParticipantRemote setTransitionToEnabled:]";
            v13 = 1024;
            v14 = 751;
            v15 = 2112;
            v16 = v5;
            v17 = 2048;
            v18 = self;
            v19 = 2112;
            v20 = VCSessionMediaType_Name(v3);
            _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to update mediaState=enabled for mediaType=%@", &v9, 0x3Au);
          }
        }
      }
    }

    return;
  }

  [(VCSessionParticipant *)self swapScreenStreamGroupSyncSourceWithState:1];
  v6 = [(VCSessionParticipant *)self streamGroupWithID:1937339233];

  [v6 resume];
}

- (void)setTransitionToPaused:(unsigned int)a3
{
  v3 = *&a3;
  v20 = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (!self->_remoteVideoEnabled)
        {
          [(VCSessionParticipantRemote *)self dispatchedSetRemoteVideoEnabled:1];
        }

        [(VCSessionParticipantRemote *)self dispatchedSetRemoteVideoPaused:1];
      }

      else if (a3 == 2 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote setTransitionToPaused:];
        }
      }
    }

    else
    {

      [(VCSessionParticipantRemote *)self dispatchedSetRemoteAudioPaused:1];
    }

    return;
  }

  if (a3 - 4 < 3)
  {
    goto LABEL_11;
  }

  if (a3 != 3)
  {
    if (a3 != 8)
    {
      return;
    }

LABEL_11:
    if ([(VCSessionParticipant *)self updateMediaState:2 forStreamGroups:[(VCSessionParticipant *)self streamGroupsForMediaType:*&a3]])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionParticipantRemote setTransitionToPaused:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
            v8 = 136316418;
            v9 = v6;
            v10 = 2080;
            v11 = "[VCSessionParticipantRemote setTransitionToPaused:]";
            v12 = 1024;
            v13 = 784;
            v14 = 2112;
            v15 = v5;
            v16 = 2048;
            v17 = self;
            v18 = 2112;
            v19 = VCSessionMediaType_Name(v3);
            _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to update mediaState=paused for mediaType=%@", &v8, 0x3Au);
          }
        }
      }
    }

    return;
  }

  [-[VCSessionParticipant streamGroupWithID:](self streamGroupWithID:{1937339233), "pause"}];

  [(VCSessionParticipant *)self swapScreenStreamGroupSyncSourceWithState:2];
}

- (void)setTransitionToDisabled:(unsigned int)a3
{
  v3 = *&a3;
  v20 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (a3)
    {
      if (a3 == 1)
      {

        [(VCSessionParticipantRemote *)self dispatchedSetRemoteVideoEnabled:0];
      }

      else if (a3 == 2)
      {

        [(VCSessionParticipantRemote *)self dispatchedSetRemoteScreenEnabled:0];
      }
    }

    else
    {

      [(VCSessionParticipantRemote *)self dispatchedSetRemoteAudioEnabled:0];
    }
  }

  else if ((a3 - 4 < 3 || a3 == 8) && [(VCSessionParticipant *)self updateMediaState:0 forStreamGroups:[(VCSessionParticipant *)self streamGroupsForMediaType:*&a3]])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote setTransitionToDisabled:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
          v8 = 136316418;
          v9 = v6;
          v10 = 2080;
          v11 = "[VCSessionParticipantRemote setTransitionToDisabled:]";
          v12 = 1024;
          v13 = 809;
          v14 = 2112;
          v15 = v5;
          v16 = 2048;
          v17 = self;
          v18 = 2112;
          v19 = VCSessionMediaType_Name(v3);
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to update mediaState=disabled for mediaType=%@", &v8, 0x3Au);
        }
      }
    }
  }
}

- (id)updateMediaState:(unsigned int)a3 forStreamGroup:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = -[VCSessionParticipant updateMediaState:forStreamGroups:](self, "updateMediaState:forStreamGroups:", *&a3, [MEMORY[0x1E695DFD8] setWithObject:a4]);
  if (v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote updateMediaState:forStreamGroup:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
          v14 = "[VCSessionParticipantRemote updateMediaState:forStreamGroup:]";
          v15 = 1024;
          v16 = 821;
          v17 = 2112;
          v18 = v7;
          v19 = 2048;
          v20 = self;
          v21 = 2112;
          v22 = VCSessionMediaType_Name([a4 mediaType]);
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to update mediaState=disabled for mediaType=%@", &v11, 0x3Au);
        }
      }
    }
  }

  return v6;
}

- (void)setRemoteMediaState:(id)a3 forMediaType:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = [a4 unsignedIntValue];
  v8 = [a3 unsignedIntValue];
  v9 = [(NSMutableDictionary *)self->_remoteMediaStates objectForKeyedSubscript:a4];
  if (!v9 || [a3 isEqualToNumber:v9])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_17;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v14 = VCSessionMediaState_Name(v8);
      v15 = VCSessionMediaType_Name(v7);
      remoteMediaStates = self->_remoteMediaStates;
      *v32 = 136316418;
      *&v32[4] = v12;
      *&v32[12] = 2080;
      *&v32[14] = "[VCSessionParticipantRemote setRemoteMediaState:forMediaType:]";
      *&v32[22] = 1024;
      LODWORD(v33) = 831;
      WORD2(v33) = 2112;
      *(&v33 + 6) = v14;
      HIWORD(v33) = 2112;
      v34 = v15;
      *v35 = 2112;
      *&v35[2] = remoteMediaStates;
      v17 = "VCSessionParticipantRemote [%s] %s:%d Setting remote mediaState=%@ for mediaType=%@ _remoteMediaStates=%@";
      v18 = v13;
      v19 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_17;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v22 = VCSessionMediaState_Name(v8);
      v23 = VCSessionMediaType_Name(v7);
      v24 = self->_remoteMediaStates;
      *v32 = 136316930;
      *&v32[4] = v20;
      *&v32[12] = 2080;
      *&v32[14] = "[VCSessionParticipantRemote setRemoteMediaState:forMediaType:]";
      *&v32[22] = 1024;
      LODWORD(v33) = 831;
      WORD2(v33) = 2112;
      *(&v33 + 6) = v10;
      HIWORD(v33) = 2048;
      v34 = self;
      *v35 = 2112;
      *&v35[2] = v22;
      *&v35[10] = 2112;
      *&v35[12] = v23;
      *&v35[20] = 2112;
      *&v35[22] = v24;
      v17 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Setting remote mediaState=%@ for mediaType=%@ _remoteMediaStates=%@";
      v18 = v21;
      v19 = 78;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v32, v19);
LABEL_17:
    [(NSMutableDictionary *)self->_remoteMediaStates setObject:a3 forKeyedSubscript:a4, *v32, *&v32[16], v33, v34, *v35, *&v35[16]];
    [-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict objectForKeyedSubscript:{a4), "setRemoteMediaState:", objc_msgSend(a3, "unsignedIntValue")}];
    if (v8)
    {
      if (v8 == 2)
      {
        [(VCSessionParticipantRemote *)self setTransitionToPaused:v7];
      }

      else if (v8 == 1)
      {
        [(VCSessionParticipantRemote *)self setTransitionToEnabled:v7];
      }
    }

    else
    {
      [(VCSessionParticipantRemote *)self setTransitionToDisabled:v7];
    }

    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136316162;
        *&v32[4] = v25;
        *&v32[12] = 2080;
        *&v32[14] = "[VCSessionParticipantRemote setRemoteMediaState:forMediaType:]";
        *&v32[22] = 1024;
        LODWORD(v33) = 847;
        WORD2(v33) = 2112;
        *(&v33 + 6) = VCSessionMediaState_Name(v8);
        HIWORD(v33) = 2112;
        v34 = VCSessionMediaType_Name(v7);
        v27 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setRemoteState=%@ forMediaType=%@";
        v28 = v26;
        v29 = 48;
LABEL_30:
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, v32, v29);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136316674;
        *&v32[4] = v30;
        *&v32[12] = 2080;
        *&v32[14] = "[VCSessionParticipantRemote setRemoteMediaState:forMediaType:]";
        *&v32[22] = 1024;
        LODWORD(v33) = 847;
        WORD2(v33) = 2112;
        *(&v33 + 6) = v11;
        HIWORD(v33) = 2048;
        v34 = self;
        *v35 = 2112;
        *&v35[2] = VCSessionMediaState_Name(v8);
        *&v35[10] = 2112;
        *&v35[12] = VCSessionMediaType_Name(v7);
        v27 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setRemoteState=%@ forMediaType=%@";
        v28 = v31;
        v29 = 68;
        goto LABEL_30;
      }
    }
  }
}

- (id)newSupportedRemoteMediaTypeStatesDict:(id)a3
{
  v7[7] = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__VCSessionParticipantRemote_newSupportedRemoteMediaTypeStatesDict___block_invoke;
  v7[3] = &unk_1E85F67A8;
  v7[4] = self;
  v7[5] = v5;
  v7[6] = a3;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
  return v5;
}

void __68__VCSessionParticipantRemote_newSupportedRemoteMediaTypeStatesDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 384) objectForKeyedSubscript:a2])
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:a2];
    v7 = *(a1 + 40);

    [v7 setObject:v6 forKeyedSubscript:a2];
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = 136316162;
    v18 = v9;
    v19 = 2080;
    v20 = "[VCSessionParticipantRemote newSupportedRemoteMediaTypeStatesDict:]_block_invoke";
    v21 = 1024;
    v22 = 859;
    v23 = 2112;
    v24 = VCSessionMediaType_Name([a2 unsignedIntValue]);
    v25 = 2112;
    v26 = VCSessionMediaState_Name([a3 unsignedIntValue]);
    v11 = "VCSessionParticipantRemote [%s] %s:%d mediaType=%@ not supported. Ignore set remote mediaState=%@";
    v12 = v10;
    v13 = 48;
LABEL_15:
    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = 136316674;
      v18 = v14;
      v19 = 2080;
      v20 = "[VCSessionParticipantRemote newSupportedRemoteMediaTypeStatesDict:]_block_invoke";
      v21 = 1024;
      v22 = 859;
      v23 = 2112;
      v24 = v8;
      v25 = 2048;
      v26 = v16;
      v27 = 2112;
      v28 = VCSessionMediaType_Name([a2 unsignedIntValue]);
      v29 = 2112;
      v30 = VCSessionMediaState_Name([a3 unsignedIntValue]);
      v11 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) mediaType=%@ not supported. Ignore set remote mediaState=%@";
      v12 = v15;
      v13 = 68;
      goto LABEL_15;
    }
  }
}

- (void)setRemoteMediaTypeStates:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCSessionParticipantRemote_setRemoteMediaTypeStates___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(participantQueue, block);
}

void __55__VCSessionParticipantRemote_setRemoteMediaTypeStates___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cancelAndReleaseFetchTimer];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v3 = [*(a1 + 32) newSupportedRemoteMediaTypeStatesDict:*(a1 + 40)];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__VCSessionParticipantRemote_setRemoteMediaTypeStates___block_invoke_2;
  v23[3] = &unk_1E85F67D0;
  v23[4] = *(a1 + 32);
  v23[5] = v2;
  v19 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v23];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) setRemoteMediaState:objc_msgSend(v3 forMediaType:{"objectForKeyedSubscript:", *(*(&v30 + 1) + 8 * i)), *(*(&v30 + 1) + 8 * i)}];
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) updateAudioSpectrumState];
  [*(a1 + 32) detectConnectionTimingSource];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v19 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * j);
        v15 = [v14 unsignedIntValue];
        v16 = [objc_msgSend(v19 objectForKeyedSubscript:{v14), "unsignedIntValue"}];
        v17 = *(a1 + 32);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __55__VCSessionParticipantRemote_setRemoteMediaTypeStates___block_invoke_3;
        v20[3] = &unk_1E85F67F8;
        v20[4] = v17;
        v21 = v16;
        v22 = v15;
        [v17 callDelegateWithBlock:v20];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v11);
  }
}

uint64_t __55__VCSessionParticipantRemote_setRemoteMediaTypeStates___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 744) objectForKeyedSubscript:a2];
  if (!v6 || (result = [v6 isEqualToNumber:a3], (result & 1) == 0))
  {
    [*(*(a1 + 32) + 744) setObject:a3 forKeyedSubscript:a2];
    v8 = *(a1 + 40);

    return [v8 setObject:a3 forKeyedSubscript:a2];
  }

  return result;
}

- (unsigned)remoteMediaStateForMediaType:(unsigned int)a3
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_remoteMediaStates, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3]);

  return [v3 unsignedIntValue];
}

- (void)dispatchedSetRemoteVideoPaused:(BOOL)a3
{
  v3 = a3;
  v47 = *MEMORY[0x1E69E9840];
  remoteVideoPaused = self->_remoteVideoPaused;
  v6 = objc_opt_class();
  if (remoteVideoPaused != v3)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136315906;
      v36 = v14;
      v37 = 2080;
      v38 = "[VCSessionParticipantRemote dispatchedSetRemoteVideoPaused:]";
      v39 = 1024;
      v40 = 907;
      v41 = 1024;
      LODWORD(v42) = v3;
      v16 = "VCSessionParticipantRemote [%s] %s:%d setRemoteVideoPaused=%d";
      v17 = v15;
      v18 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 136316418;
      v36 = v21;
      v37 = 2080;
      v38 = "[VCSessionParticipantRemote dispatchedSetRemoteVideoPaused:]";
      v39 = 1024;
      v40 = 907;
      v41 = 2112;
      v42 = v8;
      v43 = 2048;
      v44 = self;
      v45 = 1024;
      v46 = v3;
      v16 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) setRemoteVideoPaused=%d";
      v17 = v22;
      v18 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_24:
    self->_remoteVideoPaused = v3;
    [(VCSessionParticipantRemote *)self updateAndHandleVideoMediaStall:self->_isRemoteMediaStalled];
    [(VCSessionParticipantRemote *)self updateAudioSpectrumState];
    if (self->_remoteVideoEnabled)
    {
      [(VCSessionParticipantRemote *)self reconfigureJitterBufferMode:self->_remoteVideoPaused];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [(VCSessionParticipant *)self cameraGroups];
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v31 + 1) + 8 * i);
          [v28 setRemoteVideoPaused:self->_remoteVideoPaused];
          [(VCSessionParticipantRemote *)self updateActiveStateForStreamGroup:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v25);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __61__VCSessionParticipantRemote_dispatchedSetRemoteVideoPaused___block_invoke;
    v29[3] = &unk_1E85F6780;
    v29[4] = self;
    [(VCSessionParticipant *)self callDelegateWithBlock:v29];
    return;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v36 = v9;
        v37 = 2080;
        v38 = "[VCSessionParticipantRemote dispatchedSetRemoteVideoPaused:]";
        v39 = 1024;
        v40 = 923;
        v41 = 1024;
        LODWORD(v42) = v3;
        v11 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setRemoteVideoPaused=%d";
        v12 = v10;
        v13 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v36 = v19;
        v37 = 2080;
        v38 = "[VCSessionParticipantRemote dispatchedSetRemoteVideoPaused:]";
        v39 = 1024;
        v40 = 923;
        v41 = 2112;
        v42 = v7;
        v43 = 2048;
        v44 = self;
        v45 = 1024;
        v46 = v3;
        v11 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setRemoteVideoPaused=%d";
        v12 = v20;
        v13 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)setRemoteVideoPaused:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCSessionParticipantRemote_setRemoteVideoPaused___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (id)applyVideoEnabledSetting:(BOOL)a3
{
  v3 = a3;
  v37 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        v27 = 2080;
        v28 = "[VCSessionParticipantRemote applyVideoEnabledSetting:]";
        v29 = 1024;
        v30 = 936;
        v31 = 1024;
        LODWORD(v32) = v3;
        v8 = "VCSessionParticipantRemote [%s] %s:%d Changing participant videoEnabled to %d";
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
      v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        *&buf[4] = v11;
        v27 = 2080;
        v28 = "[VCSessionParticipantRemote applyVideoEnabledSetting:]";
        v29 = 1024;
        v30 = 936;
        v31 = 2112;
        v32 = v5;
        v33 = 2048;
        v34 = self;
        v35 = 1024;
        v36 = v3;
        v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Changing participant videoEnabled to %d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  videoEnabled = self->super._videoEnabled;
  self->super._videoEnabled = v3;
  [(VCSessionParticipant *)self syncCameraMediaStateFromLegacyState];
  [(VCSessionParticipantRemote *)self updateAudioSpectrumState];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [(VCSessionParticipant *)self cameraGroups];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [(VCSessionParticipantRemote *)self updateActiveStateForStreamGroup:*(*(&v22 + 1) + 8 * i)];
        if (v19)
        {
          [(VCSessionParticipantRemote *)v3 applyVideoEnabledSetting:v19, buf];
          return *buf;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (videoEnabled != v3 && self->super._oneToOneModeEnabled)
  {
    [-[VCSessionParticipant microphoneGroup](self "microphoneGroup")];
  }

  return 0;
}

- (void)updateDownlinkBandwithAllocatorClientConfigurations:(id)a3
{
  -[VCSessionParticipantRemote setVideoQuality:](self, "setVideoQuality:", [a3 videoQuality]);
  -[VCSessionParticipantRemote setVisibilityIndex:](self, "setVisibilityIndex:", [a3 visibilityIndex]);

  [(VCSessionParticipantRemote *)self updateAudioSpectrumState];
}

- (void)setVideoQuality:(unsigned __int8)a3
{
  v3 = a3;
  v17[1] = *MEMORY[0x1E69E9840];
  videoQuality = self->_videoQuality;
  if (a3 != 10 && videoQuality == 10 || a3 == 10 && videoQuality != 10)
  {
    [(VCSessionParticipant *)self reportingAgent];
    v16 = @"VCSPUUID";
    v17[0] = self->super._uuid;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    reportingGenericEvent();
  }

  self->_videoQuality = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(VCSessionParticipant *)self cameraGroupsExt];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) setVideoQuality:v3];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v8);
  }

  [(VCSessionParticipant *)self participantVideoToken];
  kdebug_trace();
  [(VCSessionParticipantRemote *)self updateShouldEnableFaceZoom];
  [(VCSessionParticipantRemote *)self updateShouldEnableMLEnhance];
}

- (void)setVisibilityIndex:(unsigned int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCSessionParticipantRemote_setVisibilityIndex___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __49__VCSessionParticipantRemote_setVisibilityIndex___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 576) = [VCDefaults integerValueForKey:@"forceVisibilityIndex" defaultValue:*(a1 + 40)];
  [*(a1 + 32) participantVideoToken];
  kdebug_trace();
  [*(a1 + 32) updateAndHandleVideoMediaStall:*(*(a1 + 32) + 602)];
  [*(a1 + 32) updateAudioSpectrumState];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) cameraGroupsExt];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 setVisibilityIndex:*(a1 + 40)];
        [*(a1 + 32) updateActiveStateForStreamGroup:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) updateShouldEnableFaceZoom];
  return [*(a1 + 32) updateShouldEnableMLEnhance];
}

- (void)setProminenceIndex:(unsigned int)a3
{
  self->_prominenceIndex = [VCDefaults integerValueForKey:@"forceProminenceIndex" defaultValue:a3];
  [(VCSessionParticipant *)self participantVideoToken];

  kdebug_trace();
}

- (void)applyPositionalInfoPendingChangesWithShouldReapply:(BOOL)a3
{
  v3 = a3;
  [(VCSessionParticipantRemote *)self updateShouldEnableMLEnhance];
  if ([(VCPositionalInfo *)self->_positionalInfo hasPendingChanges]|| v3)
  {
    v5 = [(VCSessionParticipantRemote *)self spatialMetadataEntryForMediaType:0];
    v6 = [(VCPositionalInfo *)self->_positionalInfo metadataPositionalInfo];

    VCSpatialAudioMetadata_UpdatePositionalInfo(v5, v6);
  }
}

- (void)updatePositionalInfo:(id)a3 shouldReapply:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 && (v6 = self->_positionalInfo) != 0)
  {
    v7 = a4;
    [(VCPositionalInfo *)v6 applyPositionalInfo:a3];

    [(VCSessionParticipantRemote *)self applyPositionalInfoPendingChangesWithShouldReapply:v7];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      positionalInfo = self->_positionalInfo;
      v11 = 136316162;
      v12 = v8;
      v13 = 2080;
      v14 = "[VCSessionParticipantRemote updatePositionalInfo:shouldReapply:]";
      v15 = 1024;
      v16 = 1005;
      v17 = 2048;
      v18 = a3;
      v19 = 2048;
      v20 = positionalInfo;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d [AVC SPATIAL AUDIO] Positional info not available: positionalInfo=%p _positionalInfo=%p", &v11, 0x30u);
    }
  }
}

- (void)updatePositionalInfoWithData:(id)a3 shouldReapply:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 && (v6 = self->_positionalInfo) != 0)
  {
    v7 = a4;
    [(VCPositionalInfo *)v6 unserialize:a3];

    [(VCSessionParticipantRemote *)self applyPositionalInfoPendingChangesWithShouldReapply:v7];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      positionalInfo = self->_positionalInfo;
      v11 = 136316162;
      v12 = v8;
      v13 = 2080;
      v14 = "[VCSessionParticipantRemote updatePositionalInfoWithData:shouldReapply:]";
      v15 = 1024;
      v16 = 1014;
      v17 = 2048;
      v18 = a3;
      v19 = 2048;
      v20 = positionalInfo;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d [AVC SPATIAL AUDIO] Positional info not available: positionalInfo=%p _positionalInfo=%p", &v11, 0x30u);
    }
  }
}

- (void)updateOneToOneAudioPositionalInfo:(const tagVCSpatialAudioMetadataPositionalInfo *)a3
{
  v4 = [(VCSessionParticipantRemote *)self spatialMetadataEntryForMediaType:0];

  VCSpatialAudioMetadata_UpdatePositionalInfo(v4, a3);
}

- (BOOL)processParticipantInfo
{
  v38 = *MEMORY[0x1E69E9840];
  if (![(NSDictionary *)self->super._participantInfo objectForKeyedSubscript:@"vcSessionParticipantKeyUUID"])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote processParticipantInfo];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v27 = v18;
          v28 = 2080;
          v29 = "[VCSessionParticipantRemote processParticipantInfo]";
          v30 = 1024;
          v31 = 1037;
          v32 = 2112;
          v33 = v13;
          v34 = 2048;
          v35 = self;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Missing participant UUID", buf, 0x30u);
        }
      }
    }

    v7 = 0;
    v3 = 0;
    goto LABEL_64;
  }

  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._participantInfo objectForKeyedSubscript:{@"vcSessionParticipantKeyUUID", "copy"}];
  v4 = v3;
  self->super._uuid = v4;
  -[VCObject setLogPrefix:](self, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"uuid:%@ (remote)", v4]);
  if (![(NSDictionary *)self->super._participantInfo objectForKeyedSubscript:@"vcSessionParticipantKeyCallInfoBlob"])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote processParticipantInfo];
        }
      }

      goto LABEL_63;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_63;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    *buf = 136316162;
    v27 = v20;
    v28 = 2080;
    v29 = "[VCSessionParticipantRemote processParticipantInfo]";
    v30 = 1024;
    v31 = 1042;
    v32 = 2112;
    v33 = v14;
    v34 = 2048;
    v35 = self;
    v22 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Missing callInfo blob";
    goto LABEL_62;
  }

  v5 = [(NSDictionary *)self->super._participantInfo objectForKeyedSubscript:@"vcSessionParticipantKeyMediaNegotiationData"];
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote processParticipantInfo];
        }
      }

      goto LABEL_63;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_63;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    *buf = 136316162;
    v27 = v23;
    v28 = 2080;
    v29 = "[VCSessionParticipantRemote processParticipantInfo]";
    v30 = 1024;
    v31 = 1045;
    v32 = 2112;
    v33 = v15;
    v34 = 2048;
    v35 = self;
    v22 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to retrieve the negotiation data";
    goto LABEL_62;
  }

  if (![(VCSessionMediaNegotiator *)self->super._mediaNegotiator processRemoteNegotiationData:v5])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote processParticipantInfo];
        }
      }

      goto LABEL_63;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_63;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    *buf = 136316162;
    v27 = v24;
    v28 = 2080;
    v29 = "[VCSessionParticipantRemote processParticipantInfo]";
    v30 = 1024;
    v31 = 1048;
    v32 = 2112;
    v33 = v16;
    v34 = 2048;
    v35 = self;
    v22 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Media negotiation failed";
LABEL_62:
    _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x30u);
    goto LABEL_63;
  }

  v6 = [[VCCallInfoBlob alloc] initWithData:[(NSDictionary *)self->super._participantInfo objectForKeyedSubscript:@"vcSessionParticipantKeyCallInfoBlob"]];
  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote processParticipantInfo];
        }
      }

      goto LABEL_63;
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v27 = v25;
        v28 = 2080;
        v29 = "[VCSessionParticipantRemote processParticipantInfo]";
        v30 = 1024;
        v31 = 1051;
        v32 = 2112;
        v33 = v17;
        v34 = 2048;
        v35 = self;
        v22 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to allocate callInfo blob";
        goto LABEL_62;
      }
    }

LABEL_63:
    v7 = 0;
LABEL_64:
    v11 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSessionParticipantRemote-info");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      uuid = self->super._uuid;
      *buf = 136316418;
      v27 = v8;
      v28 = 2080;
      v29 = "[VCSessionParticipantRemote processParticipantInfo]";
      v30 = 1024;
      v31 = 1053;
      v32 = 2048;
      v33 = self;
      v34 = 2112;
      v35 = uuid;
      v36 = 2112;
      v37 = [(VCCallInfoBlob *)v7 stringForCheckpoint];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d @:@ VCSessionParticipantRemote-info (%p) uuid=%@, %@", buf, 0x3Au);
    }
  }

  self->super._callInfoBlob = v7;
  self->_capabilities.isPeace = [(VCSessionParticipantRemote *)self isParticipantPeace:v7];
  self->_capabilities.isDawnburstOrLater = [(VCSessionParticipantRemote *)self isParticipantDawnburstOrLater];
  self->_capabilities.isLuckierOrLater = [(VCSessionParticipantRemote *)self isParticipantLuckierOrLater];
  self->_receivedFirstFrame = [(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedSettings] remoteBlobVersion]> 1;
  self->super._creationTime.wide = [(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedSettings] remoteBlobCreationTime];
  v11 = 1;
LABEL_10:

  return v11;
}

- (id)getMajorVersionNumber
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)[(VCCallInfoBlob *)self->super._callInfoBlob frameworkVersion] componentsSeparatedByString:@"."];
  if (!v3 || (v4 = v3, ![(NSArray *)v3 count]))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote getMajorVersionNumber];
        }
      }

      goto LABEL_45;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_45;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v23 = 136316162;
    v24 = v16;
    v25 = 2080;
    v26 = "[VCSessionParticipantRemote getMajorVersionNumber]";
    v27 = 1024;
    v28 = 1077;
    v29 = 2112;
    v30 = v12;
    v31 = 2048;
    v32 = self;
    v18 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to parse version string";
    goto LABEL_44;
  }

  v5 = [(NSArray *)v4 objectAtIndexedSubscript:0];
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote getMajorVersionNumber];
        }
      }

      goto LABEL_45;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_45;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v23 = 136316162;
    v24 = v19;
    v25 = 2080;
    v26 = "[VCSessionParticipantRemote getMajorVersionNumber]";
    v27 = 1024;
    v28 = 1079;
    v29 = 2112;
    v30 = v13;
    v31 = 2048;
    v32 = self;
    v18 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to get substring";
LABEL_44:
    _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v18, &v23, 0x30u);
    goto LABEL_45;
  }

  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote getMajorVersionNumber];
        }
      }

      goto LABEL_45;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v23 = 136316162;
        v24 = v20;
        v25 = 2080;
        v26 = "[VCSessionParticipantRemote getMajorVersionNumber]";
        v27 = 1024;
        v28 = 1081;
        v29 = 2112;
        v30 = v14;
        v31 = 2048;
        v32 = self;
        v18 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to allocate formatter";
        goto LABEL_44;
      }
    }

LABEL_45:
    v8 = 0;
    v10 = &unk_1F5799B28;
    goto LABEL_7;
  }

  v8 = v7;
  [v7 setNumberStyle:1];
  v9 = [v8 numberFromString:v6];
  if (v9)
  {
    v10 = v9;
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
          [VCSessionParticipantRemote getMajorVersionNumber];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v23 = 136316162;
          v24 = v21;
          v25 = 2080;
          v26 = "[VCSessionParticipantRemote getMajorVersionNumber]";
          v27 = 1024;
          v28 = 1084;
          v29 = 2112;
          v30 = v15;
          v31 = 2048;
          v32 = self;
          _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to get number from string", &v23, 0x30u);
        }
      }
    }

    v10 = 0;
  }

LABEL_7:

  return v10;
}

- (BOOL)supportsNegotiatedCoordinateSystem
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(VCCallInfoBlob *)self->super._callInfoBlob frameworkVersion];
  v4 = [(VCSessionParticipantRemote *)self getMajorVersionNumber];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136316162;
        *&v14[4] = v6;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantRemote supportsNegotiatedCoordinateSystem]";
        *&v14[22] = 1024;
        *v15 = 1093;
        *&v15[4] = 1024;
        *&v15[6] = [v4 intValue] > 1884;
        *&v15[10] = 2080;
        *&v15[12] = [(NSString *)v3 UTF8String];
        v8 = "VCSessionParticipantRemote [%s] %s:%d supportsNonZeroRegionOfInterestOrigin=%d remoteFrameworkVersion=%s";
        v9 = v7;
        v10 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v14, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        *v14 = 136316674;
        *&v14[4] = v11;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantRemote supportsNegotiatedCoordinateSystem]";
        *&v14[22] = 1024;
        *v15 = 1093;
        *&v15[4] = 2112;
        *&v15[6] = v5;
        *&v15[14] = 2048;
        *&v15[16] = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = [v4 intValue] > 1884;
        HIWORD(v16) = 2080;
        v17 = [(NSString *)v3 UTF8String];
        v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) supportsNonZeroRegionOfInterestOrigin=%d remoteFrameworkVersion=%s";
        v9 = v12;
        v10 = 64;
        goto LABEL_11;
      }
    }
  }

  return [v4 intValue] > 1884;
}

- (BOOL)supportsGFTSwitchToOneToOne
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_capabilities.participantType != 1)
  {
    v4 = [(VCCallInfoBlob *)self->super._callInfoBlob frameworkVersion];
    v5 = [(VCSessionParticipantRemote *)self getMajorVersionNumber];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_25;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *v23 = 136316162;
      *&v23[4] = v13;
      *&v23[12] = 2080;
      *&v23[14] = "[VCSessionParticipantRemote supportsGFTSwitchToOneToOne]";
      *&v23[22] = 1024;
      *v24 = 1105;
      *&v24[4] = 1024;
      *&v24[6] = [v5 intValue] > 1849;
      *&v24[10] = 2080;
      *&v24[12] = [(NSString *)v4 UTF8String];
      v15 = "VCSessionParticipantRemote [%s] %s:%d supportsGFTSwitchToOneToOne:[%d] remoteFrameworkVersion:[%s] ";
      v16 = v14;
      v17 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_25;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *v23 = 136316674;
      *&v23[4] = v20;
      *&v23[12] = 2080;
      *&v23[14] = "[VCSessionParticipantRemote supportsGFTSwitchToOneToOne]";
      *&v23[22] = 1024;
      *v24 = 1105;
      *&v24[4] = 2112;
      *&v24[6] = v6;
      *&v24[14] = 2048;
      *&v24[16] = self;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = [v5 intValue] > 1849;
      HIWORD(v25) = 2080;
      v26 = [(NSString *)v4 UTF8String];
      v15 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) supportsGFTSwitchToOneToOne:[%d] remoteFrameworkVersion:[%s] ";
      v16 = v21;
      v17 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, v23, v17);
LABEL_25:
    LOBYTE(v9) = [v5 intValue] > 1849;
    return v9;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
LABEL_19:
      LOBYTE(v9) = 0;
      return v9;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      *v23 = 136315650;
      *&v23[4] = v7;
      *&v23[12] = 2080;
      *&v23[14] = "[VCSessionParticipantRemote supportsGFTSwitchToOneToOne]";
      *&v23[22] = 1024;
      *v24 = 1099;
      v10 = "VCSessionParticipantRemote [%s] %s:%d Web participants do not support switching from GFT to OneToOne";
      v11 = v8;
      v12 = 28;
LABEL_18:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v23, v12);
      goto LABEL_19;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_19;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      *v23 = 136316162;
      *&v23[4] = v18;
      *&v23[12] = 2080;
      *&v23[14] = "[VCSessionParticipantRemote supportsGFTSwitchToOneToOne]";
      *&v23[22] = 1024;
      *v24 = 1099;
      *&v24[4] = 2112;
      *&v24[6] = v3;
      *&v24[14] = 2048;
      *&v24[16] = self;
      v10 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Web participants do not support switching from GFT to OneToOne";
      v11 = v19;
      v12 = 48;
      goto LABEL_18;
    }
  }

  return v9;
}

- (BOOL)supportsIDSParticipantIDBasedKeyIndexMatching
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_capabilities.participantType == 1 || !VCFeatureFlagManager_UseShortMKI())
  {
    return 0;
  }

  v3 = [(VCCallInfoBlob *)self->super._callInfoBlob frameworkVersion];
  v4 = [-[VCSessionParticipantRemote getMajorVersionNumber](self "getMajorVersionNumber")];
  v5 = v4 > 2044;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316162;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCSessionParticipantRemote supportsIDSParticipantIDBasedKeyIndexMatching]";
        v19 = 1024;
        v20 = 1123;
        v21 = 1024;
        *v22 = v4 > 2044;
        *&v22[4] = 2080;
        *&v22[6] = [(NSString *)v3 UTF8String];
        v10 = "VCSessionParticipantRemote [%s] %s:%d supportsIDSParticipantIDBasedKeyIndexMatching=%d remoteFrameworkVersion=%s";
        v11 = v9;
        v12 = 44;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        v15 = 136316674;
        v16 = v13;
        v17 = 2080;
        v18 = "[VCSessionParticipantRemote supportsIDSParticipantIDBasedKeyIndexMatching]";
        v19 = 1024;
        v20 = 1123;
        v21 = 2112;
        *v22 = v6;
        *&v22[8] = 2048;
        *&v22[10] = self;
        v23 = 1024;
        v24 = v4 > 2044;
        v25 = 2080;
        v26 = [(NSString *)v3 UTF8String];
        v10 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) supportsIDSParticipantIDBasedKeyIndexMatching=%d remoteFrameworkVersion=%s";
        v11 = v14;
        v12 = 64;
        goto LABEL_15;
      }
    }
  }

  return v5;
}

- (BOOL)isParticipantPeace:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a3 osVersion];
  v5 = [objc_msgSend(MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^16" options:1 error:{0), "numberOfMatchesInString:options:range:", v4, 4, 0, objc_msgSend(v4, "length")}];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316162;
        v16 = v7;
        v17 = 2080;
        v18 = "[VCSessionParticipantRemote isParticipantPeace:]";
        v19 = 1024;
        v20 = 1132;
        v21 = 1024;
        *v22 = v5 != 0;
        *&v22[4] = 2048;
        *&v22[6] = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d isParticipantPeace:[%d] numMatchesVersion:[%lu]";
        v10 = v8;
        v11 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316674;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCSessionParticipantRemote isParticipantPeace:]";
        v19 = 1024;
        v20 = 1132;
        v21 = 2112;
        *v22 = v6;
        *&v22[8] = 2048;
        *&v22[10] = self;
        v23 = 1024;
        v24 = v5 != 0;
        v25 = 2048;
        v26 = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) isParticipantPeace:[%d] numMatchesVersion:[%lu]";
        v10 = v13;
        v11 = 64;
        goto LABEL_11;
      }
    }
  }

  return v5 != 0;
}

- (BOOL)isParticipantDawnburstOrLater
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipantRemote *)self getMajorVersionNumber];
  v4 = [v3 intValue];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v6;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote isParticipantDawnburstOrLater]";
        v18 = 1024;
        v19 = 1140;
        v20 = 1024;
        *v21 = v4 > 1964;
        *&v21[4] = 2112;
        *&v21[6] = v3;
        v8 = "VCSessionParticipantRemote [%s] %s:%d isDawnburstOrLater=%d for majorVersionNumber=%@";
        v9 = v7;
        v10 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        v14 = 136316674;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote isParticipantDawnburstOrLater]";
        v18 = 1024;
        v19 = 1140;
        v20 = 2112;
        *v21 = v5;
        *&v21[8] = 2048;
        *&v21[10] = self;
        v22 = 1024;
        v23 = v4 > 1964;
        v24 = 2112;
        v25 = v3;
        v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) isDawnburstOrLater=%d for majorVersionNumber=%@";
        v9 = v12;
        v10 = 64;
        goto LABEL_11;
      }
    }
  }

  return v4 > 1964;
}

- (BOOL)isParticipantLuckierOrLater
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipantRemote *)self getMajorVersionNumber];
  v4 = [v3 intValue];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v6;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote isParticipantLuckierOrLater]";
        v18 = 1024;
        v19 = 1147;
        v20 = 1024;
        *v21 = v4 > 2144;
        *&v21[4] = 2112;
        *&v21[6] = v3;
        v8 = "VCSessionParticipantRemote [%s] %s:%d isParticipantLuckierOrLater=%d for majorVersionNumber=%@";
        v9 = v7;
        v10 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        v14 = 136316674;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote isParticipantLuckierOrLater]";
        v18 = 1024;
        v19 = 1147;
        v20 = 2112;
        *v21 = v5;
        *&v21[8] = 2048;
        *&v21[10] = self;
        v22 = 1024;
        v23 = v4 > 2144;
        v24 = 2112;
        v25 = v3;
        v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) isParticipantLuckierOrLater=%d for majorVersionNumber=%@";
        v9 = v12;
        v10 = 64;
        goto LABEL_11;
      }
    }
  }

  return v4 > 2144;
}

- (void)completeAndReleaseNwActivity:(id)a3 withReason:(int)a4
{
  nw_activity_complete_with_reason();

  nw_release(a3);
}

- (void)cleanupNwActivity
{
  participantMediaStallNwActivity = self->_participantMediaStallNwActivity;
  if (participantMediaStallNwActivity)
  {
    [(VCSessionParticipantRemote *)self completeAndReleaseNwActivity:self->_participantMediaStallNwActivity withReason:3];
  }

  participantPoorConnectionNwActivity = self->_participantPoorConnectionNwActivity;
  if (participantPoorConnectionNwActivity)
  {
    [(VCSessionParticipantRemote *)self completeAndReleaseNwActivity:participantPoorConnectionNwActivity withReason:3];
    if (!self->_nwActivity)
    {
      return;
    }
  }

  else
  {
    if (!self->_nwActivity)
    {
      return;
    }

    if (!participantMediaStallNwActivity)
    {
      v5 = self;
      goto LABEL_9;
    }
  }

  v5 = self;
LABEL_9:

  [VCSessionParticipantRemote completeAndReleaseNwActivity:v5 withReason:"completeAndReleaseNwActivity:withReason:"];
}

- (BOOL)isActiveMediaType:(unsigned int)a3
{
  v3 = *&a3;
  result = 1;
  if (a3 > 8)
  {
    goto LABEL_18;
  }

  if (((1 << a3) & 0x170) != 0)
  {
    v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *&a3)), "mediaState"}];
    v7 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_remoteMediaStates objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), "unsignedIntValue"}];
    return v6 == 1 && v7 == 1;
  }

  if (((1 << a3) & 0xC) != 0)
  {

    return [(VCSessionParticipantRemote *)self isScreenActive];
  }

  if (a3 == 1)
  {

    return [(VCSessionParticipantRemote *)self isVideoExpected];
  }

  else
  {
LABEL_18:
    if (!a3)
    {

      return [(VCSessionParticipantRemote *)self isAudioActive];
    }
  }

  return result;
}

- (BOOL)isEnabledMediaType:(unsigned int)a3
{
  v3 = *&a3;
  if (a3 > 8)
  {
    goto LABEL_15;
  }

  if (((1 << a3) & 0x170) == 0)
  {
    if (((1 << a3) & 0xC) != 0)
    {
      if (self->super._screenEnabled)
      {
        v9 = 569;
LABEL_17:
        v8 = *(&self->super.super.super.isa + v9);
        return v8 & 1;
      }

      goto LABEL_18;
    }

    if (a3 == 1)
    {
      if (self->super._videoEnabled)
      {
        v9 = 568;
        goto LABEL_17;
      }

LABEL_18:
      v8 = 0;
      return v8 & 1;
    }

LABEL_15:
    if (!a3)
    {
      v9 = 373;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *&a3)), "mediaState"}];
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_remoteMediaStates objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), "unsignedIntValue"}];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return v8 & 1;
}

- (BOOL)isStreamGroupActive:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = +[VCSessionParticipant mediaTypesFromStreamGroupID:](VCSessionParticipant, "mediaTypesFromStreamGroupID:", [a3 streamGroupID]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
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

        if (-[VCSessionParticipantRemote isActiveMediaType:](self, "isActiveMediaType:", [*(*(&v11 + 1) + 8 * v8) unsignedIntValue]))
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
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

- (BOOL)setupAudioStreamConfiguration:(id)a3 withStreamGroupConfig:(id)a4 streamGroupStreamConfig:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  if ([a4 groupID] == 1835623282 || objc_msgSend(a4, "groupID") == 1937339233 || objc_msgSend(objc_msgSend(a5, "payloads"), "containsObject:", &unk_1F5799B40))
  {
    [a3 setupRedWithRxPayload:20 txPayload:20];
  }

  v21 = a4;
  v8 = [objc_msgSend(a4 "codecConfigs")];
  v9 = [v8 count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = a5;
  obj = [a5 codecs];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([v14 intValue] >= v9)
        {
          [VCSessionParticipantRemote setupAudioStreamConfiguration:withStreamGroupConfig:streamGroupStreamConfig:];
          return v24;
        }

        v15 = [v8 objectAtIndexedSubscript:{objc_msgSend(v14, "intValue")}];
        v16 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [v15 codecType]);
        v17 = -[VCAudioStreamCodecConfig initWithCodecType:]([VCAudioStreamCodecConfig alloc], "initWithCodecType:", [v15 codecType]);
        -[VCAudioStreamCodecConfig setNetworkPayload:](v17, "setNetworkPayload:", [v15 rtpPayload]);
        -[VCAudioStreamCodecConfig setPTime:](v17, "setPTime:", [v15 pTime]);
        -[VCAudioStreamCodecConfig setIsOpusInBandFecEnabled:](v17, "setIsOpusInBandFecEnabled:", [v15 useInBandFEC]);
        [a3 setRtcpEnabled:{objc_msgSend(v15, "rtcpSREnabled")}];
        if ([a3 isRTCPEnabled])
        {
          [a3 setRtcpSendInterval:0.0];
          [a3 setRtcpTimeOutEnabled:1];
          [a3 setRtcpTimeOutInterval:30.0];
        }

        [VCSessionParticipant addCodecModesForPayload:v16 toCodecConfig:v17];
        [a3 addCodecConfiguration:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if ([objc_msgSend(a3 "codecConfigurations")])
  {
    [a3 setChannelCount:{objc_msgSend(v20, "audioChannelCount")}];
    if ([a3 jitterBufferMode] != 3)
    {
      [a3 setJitterBufferMode:1];
    }

    if ([v21 groupID] == 1835623287 || objc_msgSend(v21, "groupID") == 1936290409)
    {
      v18 = 0;
    }

    else if ([v21 groupID] == 1937339233)
    {
      [a3 setJitterBufferMode:0];
      v18 = 1;
      [a3 setExternalSampleReblockingEnabled:1];
    }

    else
    {
      v18 = 1;
    }

    [a3 setBundlingScheme:v18];
    if ([v21 groupID] == 1835623282)
    {
      [a3 setIsLowLatency:{-[VCSessionParticipant supportsLowLatencyAudio](self, "supportsLowLatencyAudio")}];
    }

    if ([v21 groupID] == 1835623282)
    {
      [a3 setOutOfProcessCodecsEnabled:self->_outOfProcessCodecsEnabled];
    }

    [a3 setIsEnhancedJBAdaptationsEnabled:self->_isEnhancedJBAdaptationsEnabled];
    [a3 setDetectInactiveAudioFramesAACELD:self->_detectInactiveAudioFramesAACELD];
    return 1;
  }

  else
  {
    [VCSessionParticipantRemote setupAudioStreamConfiguration:? withStreamGroupConfig:? streamGroupStreamConfig:?];
    return v24;
  }
}

- (id)checkSubstreams:(id)a3 forLowerQualityIndex:(unsigned int)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(a3);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      if ([v11 qualityIndex] < a4)
      {
        a4 = [v11 qualityIndex];
        v8 = v11;
      }
    }

    v7 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v7);
  return v8;
}

- (BOOL)setupBandwidthAllocationTableForMediaStreamConfigs:(id)a3 streamGroupID:(unsigned int)a4 entryType:(unsigned __int8)a5
{
  v5 = a5;
  v109 = *MEMORY[0x1E69E9840];
  v7 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *&a4)), "unsignedIntValue"}];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v105 objects:v104 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v106;
    v11 = -1;
    v76 = -1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v106 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v105 + 1) + 8 * i);
        if (([objc_msgSend(v13 "multiwayConfig")] & 1) == 0)
        {
          if ([objc_msgSend(v13 "multiwayConfig")] < v76)
          {
            v76 = [objc_msgSend(v13 "multiwayConfig")];
            v11 = [objc_msgSend(v13 "multiwayConfig")];
          }

          if (v5 == 2)
          {
            v14 = -[VCSessionParticipantRemote checkSubstreams:forLowerQualityIndex:](self, "checkSubstreams:forLowerQualityIndex:", [objc_msgSend(v13 "multiwayConfig")], v76);
            if (v14)
            {
              v15 = v14;
              v76 = [v14 idsStreamID];
              v11 = [v15 qualityIndex];
            }
          }
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v105 objects:v104 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = -1;
    v76 = -1;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_27;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 136316418;
    v90 = v17;
    v91 = 2080;
    v92 = "[VCSessionParticipantRemote setupBandwidthAllocationTableForMediaStreamConfigs:streamGroupID:entryType:]";
    v93 = 1024;
    v94 = 1347;
    v95 = 2080;
    v96 = FourccToCStr(a4);
    v97 = 1024;
    *v98 = v76;
    *&v98[4] = 1024;
    *&v98[6] = v11;
    v19 = "VCSessionParticipantRemote [%s] %s:%d StreamGroupID=%s Lowest qualityIndex=%d streamID=%d";
    v20 = v18;
    v21 = 50;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_27;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 136316930;
    v90 = v22;
    v91 = 2080;
    v92 = "[VCSessionParticipantRemote setupBandwidthAllocationTableForMediaStreamConfigs:streamGroupID:entryType:]";
    v93 = 1024;
    v94 = 1347;
    v95 = 2112;
    v96 = v16;
    v97 = 2048;
    *v98 = self;
    *&v98[8] = 2080;
    v99 = FourccToCStr(a4);
    v100 = 1024;
    v101 = v76;
    v102 = 1024;
    v103 = v11;
    v19 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) StreamGroupID=%s Lowest qualityIndex=%d streamID=%d";
    v20 = v23;
    v21 = 70;
  }

  _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_27:
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v24 = [a3 countByEnumeratingWithState:&v85 objects:v84 count:16];
  if (!v24)
  {
LABEL_49:
    LOBYTE(v61) = 1;
    return v61;
  }

  v25 = v24;
  v77 = v7;
  v26 = *v86;
  v70 = v5;
  v68 = *v86;
  v69 = a3;
LABEL_29:
  v27 = 0;
  v71 = v25;
  while (1)
  {
    if (*v86 != v26)
    {
      objc_enumerationMutation(a3);
    }

    v28 = *(*(&v85 + 1) + 8 * v27);
    if ([objc_msgSend(v28 "multiwayConfig")])
    {
      goto LABEL_47;
    }

    v29 = [VCSessionBandwidthAllocationTableEntry alloc];
    v30 = [objc_msgSend(v28 "multiwayConfig")];
    v31 = [objc_msgSend(v28 "multiwayConfig")];
    v32 = [objc_msgSend(v28 "multiwayConfig")];
    v33 = [objc_msgSend(v28 "multiwayConfig")];
    LODWORD(v67) = [objc_msgSend(v28 "multiwayConfig")];
    v34 = [(VCSessionBandwidthAllocationTableEntry *)v29 initWithClient:self type:v5 streamToken:v77 networkBitrate:v30 mediaBitrate:v31 qualityIndex:v32 streamID:__PAIR64__(a4 streamGroupID:v33) v2StreamID:v67];
    if (!v34)
    {
      break;
    }

    v35 = v34;
    v72 = v27;
    -[VCSessionBandwidthAllocationTableEntry setIsLowestQuality:](v34, "setIsLowestQuality:", [objc_msgSend(v28 "multiwayConfig")] == v76);
    v73 = v35;
    [(VCSessionBandwidthAllocationTable *)self->_mediaTable addBandwidthAllocationTableEntry:v35];
    if ([objc_msgSend(v28 "multiwayConfig")])
    {
      v36 = [VCSessionBandwidthAllocationTableEntry alloc];
      v37 = [objc_msgSend(v28 "multiwayConfig")];
      v38 = [objc_msgSend(v28 "multiwayConfig")];
      v39 = [objc_msgSend(v28 "multiwayConfig")];
      v40 = [objc_msgSend(v28 "multiwayConfig")];
      LODWORD(v67) = [objc_msgSend(v28 "multiwayConfig")];
      v41 = [(VCSessionBandwidthAllocationTableEntry *)v36 initWithClient:self type:v5 streamToken:v77 networkBitrate:v37 mediaBitrate:v38 qualityIndex:v39 streamID:__PAIR64__(a4 streamGroupID:v40) v2StreamID:v67];
      [(VCSessionBandwidthAllocationTableEntry *)v41 setIsLowestQuality:[(VCSessionBandwidthAllocationTableEntry *)v73 isLowestQuality]];
      [(VCSessionBandwidthAllocationTable *)self->_repairMediaTable addBandwidthAllocationTableEntry:v41];
    }

    if (v5 == 2)
    {
      v42 = [v28 multiwayConfig];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      obj = [v42 subStreamConfigs];
      v43 = [obj countByEnumeratingWithState:&v80 objects:v79 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v81;
        do
        {
          v46 = 0;
          v47 = self;
          do
          {
            if (*v81 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v80 + 1) + 8 * v46);
            v49 = [VCSessionBandwidthAllocationTableEntry alloc];
            v50 = [v48 maxNetworkBitrate];
            v51 = [v48 maxMediaBitrate];
            v52 = [v48 qualityIndex];
            v53 = [v48 idsStreamID];
            LODWORD(v67) = [v48 v2StreamID];
            v54 = [(VCSessionBandwidthAllocationTableEntry *)v49 initWithClient:v47 type:2 streamToken:v77 networkBitrate:v50 mediaBitrate:v51 qualityIndex:v52 streamID:__PAIR64__(a4 streamGroupID:v53) v2StreamID:v67];
            -[VCSessionBandwidthAllocationTableEntry setIsLowestQuality:](v54, "setIsLowestQuality:", [v48 qualityIndex] == v76);
            [(VCSessionBandwidthAllocationTable *)v47->_mediaTable addBandwidthAllocationTableEntry:v54];
            if ([v48 hasRepairedStreamID])
            {
              v55 = [VCSessionBandwidthAllocationTableEntry alloc];
              v56 = [v48 repairedMaxNetworkBitrate];
              v57 = [v48 maxMediaBitrate];
              v58 = [v48 qualityIndex];
              v59 = [v48 repairedStreamID];
              LODWORD(v67) = [v48 v2StreamID];
              v66 = __PAIR64__(a4, v59);
              v47 = self;
              v60 = [(VCSessionBandwidthAllocationTableEntry *)v55 initWithClient:self type:2 streamToken:v77 networkBitrate:v56 mediaBitrate:v57 qualityIndex:v58 streamID:v66 streamGroupID:v67 v2StreamID:?];
              [(VCSessionBandwidthAllocationTableEntry *)v60 setIsLowestQuality:[(VCSessionBandwidthAllocationTableEntry *)v54 isLowestQuality]];
              [(VCSessionBandwidthAllocationTable *)self->_repairMediaTable addBandwidthAllocationTableEntry:v60];
            }

            ++v46;
          }

          while (v44 != v46);
          v44 = [obj countByEnumeratingWithState:&v80 objects:v79 count:16];
        }

        while (v44);
      }
    }

    v5 = v70;
    v26 = v68;
    a3 = v69;
    v25 = v71;
    v27 = v72;
LABEL_47:
    if (++v27 == v25)
    {
      v25 = [a3 countByEnumeratingWithState:&v85 objects:v84 count:16];
      if (v25)
      {
        goto LABEL_29;
      }

      goto LABEL_49;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v61 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v61)
      {
        return v61;
      }

      [VCSessionParticipantRemote setupBandwidthAllocationTableForMediaStreamConfigs:streamGroupID:entryType:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v62 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v62 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v63 = VRTraceErrorLogLevelToCSTR();
      v64 = *MEMORY[0x1E6986650];
      v61 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v61)
      {
        return v61;
      }

      *buf = 136316162;
      v90 = v63;
      v91 = 2080;
      v92 = "[VCSessionParticipantRemote setupBandwidthAllocationTableForMediaStreamConfigs:streamGroupID:entryType:]";
      v93 = 1024;
      v94 = 1364;
      v95 = 2112;
      v96 = v62;
      v97 = 2048;
      *v98 = self;
      _os_log_error_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to allocate allocator entry!", buf, 0x30u);
    }
  }

  LOBYTE(v61) = 0;
  return v61;
}

- (id)entryForStreamID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  result = [(VCSessionBandwidthAllocationTable *)self->_mediaTable entryForStreamID:?];
  if (!result)
  {
    result = [(VCSessionBandwidthAllocationTable *)self->_repairMediaTable entryForStreamID:a3];
    if (!result)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionParticipantRemote entryForStreamID:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
            v9 = 136316418;
            v10 = v7;
            v11 = 2080;
            v12 = "[VCSessionParticipantRemote entryForStreamID:]";
            v13 = 1024;
            v14 = 1436;
            v15 = 2112;
            v16 = v6;
            v17 = 2048;
            v18 = self;
            v19 = 2112;
            v20 = a3;
            _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) No media entry found for stream ID: %@", &v9, 0x3Au);
          }
        }
      }

      return 0;
    }
  }

  return result;
}

- (void)setMuted:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCSessionParticipantRemote_setMuted___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __39__VCSessionParticipantRemote_setMuted___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 372) = *(a1 + 40);
  v2 = [*(a1 + 32) microphoneGroup];
  v3 = *(*(a1 + 32) + 372);

  return [v2 setMuted:v3];
}

- (void)setActiveStreamIDs:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCSessionParticipantRemote_setActiveStreamIDs___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = a3;
  block[5] = self;
  dispatch_async(participantQueue, block);
}

uint64_t __49__VCSessionParticipantRemote_setActiveStreamIDs___block_invoke(uint64_t a1)
{
  v1 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 32)];
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F579D050];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(*(v1 + 40) + 472) allValues];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v13 = v1;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(objc_msgSend(v9, "streamIDToMediaStreamMap", v13), "allKeys")}];
        [v10 intersectSet:v2];
        [v2 minusSet:v10];
        [v9 setActiveStreamIDs:v10];
        if ([v3 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v9, "streamGroupID"))}])
        {
          v6 |= [v10 count] != 0;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v5);
    v11 = v6 ^ 1;
    v1 = v13;
  }

  else
  {
    v11 = 1;
  }

  return [*(v1 + 40) setForceAudioAsConnectionTimingSource:v11 & 1];
}

- (void)appendOptedInStreamID:(id)a3 toOptInStreamsIDs:(id)a4 targetBandwidthEntry:(id)a5 forceSeamlessTransition:(BOOL)a6
{
  v39 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a6;
    if (([a4 containsObject:?] & 1) == 0)
    {
      v11 = [a5 maxNetworkBitrate];
      v12 = [-[VCSessionParticipantRemote entryForStreamID:](self entryForStreamID:{a3), "maxNetworkBitrate"}];
      v13 = v12;
      if (v6 || v11 > v12)
      {
        [a4 addObject:a3];
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v22 = 136316674;
              v23 = v15;
              v24 = 2080;
              v25 = "[VCSessionParticipantRemote appendOptedInStreamID:toOptInStreamsIDs:targetBandwidthEntry:forceSeamlessTransition:]";
              v26 = 1024;
              v27 = 1530;
              v28 = 2112;
              v29 = [(VCSessionParticipantRemote *)self optedInVideoStreamID];
              v30 = 1024;
              *v31 = v6;
              *&v31[4] = 1024;
              *&v31[6] = v13;
              LOWORD(v32) = 1024;
              *(&v32 + 2) = v11;
              v17 = "VCSessionParticipantRemote [%s] %s:%d Adding currently optedInVideoStreamID:%@ to allow seamless video stream transition. Force=%d, Bitrate %d -> %d";
              v18 = v16;
              v19 = 56;
LABEL_15:
              _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v14 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
              v22 = 136317186;
              v23 = v20;
              v24 = 2080;
              v25 = "[VCSessionParticipantRemote appendOptedInStreamID:toOptInStreamsIDs:targetBandwidthEntry:forceSeamlessTransition:]";
              v26 = 1024;
              v27 = 1530;
              v28 = 2112;
              v29 = v14;
              v30 = 2048;
              *v31 = self;
              *&v31[8] = 2112;
              v32 = [(VCSessionParticipantRemote *)self optedInVideoStreamID];
              v33 = 1024;
              v34 = v6;
              v35 = 1024;
              v36 = v13;
              v37 = 1024;
              v38 = v11;
              v17 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Adding currently optedInVideoStreamID:%@ to allow seamless video stream transition. Force=%d, Bitrate %d -> %d";
              v18 = v21;
              v19 = 76;
              goto LABEL_15;
            }
          }
        }
      }
    }
  }
}

- (id)recommendedStreamIDsForSelectedMediaEntries:(id)a3 forceSeamlessTransition:(BOOL)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = [MEMORY[0x1E695DF70] array];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCSessionParticipantRemote_recommendedStreamIDsForSelectedMediaEntries_forceSeamlessTransition___block_invoke;
  block[3] = &unk_1E85F6820;
  block[4] = a3;
  block[5] = self;
  block[6] = &v12;
  v11 = a4;
  dispatch_sync(participantQueue, block);
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v8;
}

void __98__VCSessionParticipantRemote_recommendedStreamIDsForSelectedMediaEntries_forceSeamlessTransition___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v42;
    *&v4 = 136316162;
    v26 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = [*(a1 + 40) streamGroupWithID:{objc_msgSend(v8, "streamGroupID", v26)}];
        if (v9)
        {
          v10 = v9;
          if ([*(a1 + 40) isStreamGroupActive:v9])
          {
            v11 = [v8 v2StreamID] ? objc_msgSend(v8, "v2StreamID") : objc_msgSend(v8, "streamID");
            [*(*(*(a1 + 48) + 8) + 40) addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
            if ([*(a1 + 40) isSeamlessTransitionSupportedForStreamGroup:v10])
            {
              [*(a1 + 40) appendOptedInStreamID:objc_msgSend(v10 toOptInStreamsIDs:"optedInStreamID") targetBandwidthEntry:*(*(*(a1 + 48) + 8) + 40) forceSeamlessTransition:{v8, *(a1 + 56)}];
            }
          }
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v27 = FourccToCStr([v8 streamGroupID]);
            v14 = [v8 streamGroupID];
            *buf = v26;
            v29 = v12;
            v30 = 2080;
            v31 = "[VCSessionParticipantRemote recommendedStreamIDsForSelectedMediaEntries:forceSeamlessTransition:]_block_invoke";
            v32 = 1024;
            v33 = 1540;
            v34 = 2080;
            v35 = v27;
            v36 = 1024;
            LODWORD(v37) = v14;
            _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d Stream group '%s' (%d) doesn't exist!", buf, 0x2Cu);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v5);
  }

  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 136315906;
        v29 = v16;
        v30 = 2080;
        v31 = "[VCSessionParticipantRemote recommendedStreamIDsForSelectedMediaEntries:forceSeamlessTransition:]_block_invoke";
        v32 = 1024;
        v33 = 1552;
        v34 = 2112;
        v35 = v18;
        v19 = "VCSessionParticipantRemote [%s] %s:%d %@";
        v20 = v17;
        v21 = 38;
LABEL_28:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [*(a1 + 40) performSelector:sel_logPrefix];
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
        v24 = *(a1 + 40);
        v25 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 136316418;
        v29 = v22;
        v30 = 2080;
        v31 = "[VCSessionParticipantRemote recommendedStreamIDsForSelectedMediaEntries:forceSeamlessTransition:]_block_invoke";
        v32 = 1024;
        v33 = 1552;
        v34 = 2112;
        v35 = v15;
        v36 = 2048;
        v37 = v24;
        v38 = 2112;
        v39 = v25;
        v19 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) %@";
        v20 = v23;
        v21 = 58;
        goto LABEL_28;
      }
    }
  }
}

- (void)negotiateAudioRules:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCSessionParticipantRemote_negotiateAudioRules___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

void __50__VCSessionParticipantRemote_negotiateAudioRules___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(*(*(a1 + 32) + 296), "rules")}];
  [v2 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(*(a1 + 40), "rules"))}];
  if ([v2 count])
  {
    [*(a1 + 40) clearAudioRules];
    v3 = *(a1 + 40);
    v4 = [v2 allObjects];

    [v3 addAudioRules:v4];
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v8 = [*(a1 + 40) rules];
    v9 = [*(*(a1 + 32) + 296) rules];
    v18 = 136316162;
    v19 = v6;
    v20 = 2080;
    v21 = "[VCSessionParticipantRemote negotiateAudioRules:]_block_invoke";
    v22 = 1024;
    v23 = 1564;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v10 = "VCSessionParticipantRemote [%s] %s:%d No compatible stream configuration! localAudioRules=%@ supportedAudioRules=%@";
    v11 = v7;
    v12 = 48;
LABEL_16:
    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, &v18, v12);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) rules];
      v17 = [*(*(a1 + 32) + 296) rules];
      v18 = 136316674;
      v19 = v13;
      v20 = 2080;
      v21 = "[VCSessionParticipantRemote negotiateAudioRules:]_block_invoke";
      v22 = 1024;
      v23 = 1564;
      v24 = 2112;
      v25 = v5;
      v26 = 2048;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v10 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) No compatible stream configuration! localAudioRules=%@ supportedAudioRules=%@";
      v11 = v14;
      v12 = 68;
      goto LABEL_16;
    }
  }
}

- (void)updateAudioSpectrumState
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = self->super._videoEnabled && self->_remoteVideoEnabled && !self->super._videoPaused;
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict objectForKeyedSubscript:{&unk_1F5799BA0), "mediaState"}] == 1 && objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->super._mediaTypeSettingsDict, "objectForKeyedSubscript:", &unk_1F5799BA0), "remoteMediaState") == 1;
  visibilityIndex = self->_visibilityIndex;
  if (visibilityIndex != 0 || v3 || v4)
  {
    EnableAudioPowerSpectrumReport = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
  }

  else
  {
    EnableAudioPowerSpectrumReport = 1;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_28;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 136316930;
      v31 = v8;
      v32 = 2080;
      v33 = "[VCSessionParticipantRemote updateAudioSpectrumState]";
      v34 = 1024;
      v35 = 1585;
      v36 = 1024;
      *v37 = v3;
      *&v37[4] = 1024;
      *&v37[6] = v4;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = visibilityIndex == 0;
      HIWORD(v38) = 1024;
      *v39 = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
      *&v39[4] = 1024;
      *v40 = EnableAudioPowerSpectrumReport;
      v11 = "VCSessionParticipantRemote [%s] %s:%d is2DCameraActive=%d is3DCameraActive=%d isVisible=%d testEnabled=%d => spectrumEnabled=%d";
      v12 = v9;
      v13 = 58;
LABEL_24:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      goto LABEL_28;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316930;
      v31 = v8;
      v32 = 2080;
      v33 = "[VCSessionParticipantRemote updateAudioSpectrumState]";
      v34 = 1024;
      v35 = 1585;
      v36 = 1024;
      *v37 = v3;
      *&v37[4] = 1024;
      *&v37[6] = v4;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = visibilityIndex == 0;
      HIWORD(v38) = 1024;
      *v39 = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
      *&v39[4] = 1024;
      *v40 = EnableAudioPowerSpectrumReport;
      v17 = "VCSessionParticipantRemote [%s] %s:%d is2DCameraActive=%d is3DCameraActive=%d isVisible=%d testEnabled=%d => spectrumEnabled=%d";
      v18 = v9;
      v19 = 58;
      goto LABEL_37;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *buf = 136317442;
        v31 = v14;
        v32 = 2080;
        v33 = "[VCSessionParticipantRemote updateAudioSpectrumState]";
        v34 = 1024;
        v35 = 1585;
        v36 = 2112;
        *v37 = v7;
        *&v37[8] = 2048;
        v38 = self;
        *v39 = 1024;
        *&v39[2] = v3;
        *v40 = 1024;
        *&v40[2] = v4;
        v41 = 1024;
        v42 = visibilityIndex == 0;
        v43 = 1024;
        v44 = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
        v45 = 1024;
        v46 = EnableAudioPowerSpectrumReport;
        v11 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) is2DCameraActive=%d is3DCameraActive=%d isVisible=%d testEnabled=%d => spectrumEnabled=%d";
        v12 = v15;
        v13 = 78;
        goto LABEL_24;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136317442;
        v31 = v14;
        v32 = 2080;
        v33 = "[VCSessionParticipantRemote updateAudioSpectrumState]";
        v34 = 1024;
        v35 = 1585;
        v36 = 2112;
        *v37 = v7;
        *&v37[8] = 2048;
        v38 = self;
        *v39 = 1024;
        *&v39[2] = v3;
        *v40 = 1024;
        *&v40[2] = v4;
        v41 = 1024;
        v42 = visibilityIndex == 0;
        v43 = 1024;
        v44 = VCTestMonitorManager_GetEnableAudioPowerSpectrumReport();
        v45 = 1024;
        v46 = EnableAudioPowerSpectrumReport;
        v17 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) is2DCameraActive=%d is3DCameraActive=%d isVisible=%d testEnabled=%d => spectrumEnabled=%d";
        v18 = v15;
        v19 = 78;
LABEL_37:
        _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
      }
    }
  }

LABEL_28:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  micStreamGroups = self->super._micStreamGroups;
  v21 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(micStreamGroups);
        }

        [*(*(&v26 + 1) + 8 * i) setPowerSpectrumEnabled:EnableAudioPowerSpectrumReport];
      }

      v22 = [(NSMutableArray *)micStreamGroups countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v22);
  }
}

- (VCSessionParticipantMediaStreamInfo)micStreamInfo
{
  v2 = [-[VCSessionParticipant microphoneGroup](self "microphoneGroup")];

  return [v2 firstObject];
}

- (VCSessionParticipantMediaStreamInfo)cameraStreamInfo
{
  v2 = [-[VCSessionParticipantRemote videoGroup](self "videoGroup")];

  return [v2 firstObject];
}

- (VCSessionParticipantMediaStreamInfo)screenStreamInfo
{
  result = [(VCSessionParticipantRemote *)self screenGroup];
  if (result)
  {
    v4 = [-[VCSessionParticipantRemote screenGroup](self "screenGroup")];

    return [v4 firstObject];
  }

  return result;
}

- (id)systemAudioStreamInfo
{
  v2 = [-[VCSessionParticipant systemAudioGroup](self "systemAudioGroup")];

  return [v2 firstObject];
}

- (int64_t)participantScreenToken
{
  v2 = [(NSMutableDictionary *)self->super._participantStreamTokens objectForKeyedSubscript:&unk_1F5799BB8];

  return [v2 integerValue];
}

- (id)screenGroup
{
  streamGroups = self->super._streamGroups;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCSessionParticipantRemote participantScreenToken](self, "participantScreenToken")}];

  return [(NSMutableDictionary *)streamGroups objectForKeyedSubscript:v3];
}

- (id)videoGroup
{
  streamGroups = self->super._streamGroups;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCSessionParticipant participantVideoToken](self, "participantVideoToken")}];

  return [(NSMutableDictionary *)streamGroups objectForKeyedSubscript:v3];
}

- (id)audioGroup
{
  streamGroups = self->super._streamGroups;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCSessionParticipant participantMicrophoneToken](self, "participantMicrophoneToken")}];

  return [(NSMutableDictionary *)streamGroups objectForKeyedSubscript:v3];
}

- (_VCSessionParticipantCapabilities)capabilities
{
  p_capabilities = &self->_capabilities;
  v3 = *&self->_capabilities.isPeace;
  v4 = *&p_capabilities->controlChannelVersion;
  result.controlChannelVersion = v4;
  result.supportsGFTSwitchToOneToOne = BYTE4(v4);
  result.supportsParticipantIDBasedKeyLookup = BYTE5(v4);
  result.isDawnburstOrLater = BYTE6(v4);
  result.isLuckierOrLater = HIBYTE(v4);
  result.isPeace = v3;
  result.participantType = HIDWORD(v3);
  return result;
}

- (unsigned)lastDisplayedFrameRTPTimestamp
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCSessionParticipantRemote_lastDisplayedFrameRTPTimestamp__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(participantQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __60__VCSessionParticipantRemote_lastDisplayedFrameRTPTimestamp__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "cameraGroups")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)configureWithOneToOneParticipantConfig:(id)a3 operatingMode:(int)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__VCSessionParticipantRemote_configureWithOneToOneParticipantConfig_operatingMode___block_invoke;
  block[3] = &unk_1E85F6180;
  block[4] = self;
  block[5] = a3;
  block[6] = &v9;
  v8 = a4;
  dispatch_sync(participantQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __83__VCSessionParticipantRemote_configureWithOneToOneParticipantConfig_operatingMode___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setOneToOneConfig:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) dispatchedConfigureWithDeviceRole:objc_msgSend(*(a1 + 40) negotiatedVideoEnabled:"deviceRole") negotiatedScreenEnabled:objc_msgSend(*(a1 + 40) operatingMode:{"negotiatedVideoEnabled"), objc_msgSend(*(a1 + 40), "negotiatedScreenEnabled"), *(a1 + 56)}];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __83__VCSessionParticipantRemote_configureWithOneToOneParticipantConfig_operatingMode___block_invoke_cold_1();
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
          v9 = "[VCSessionParticipantRemote configureWithOneToOneParticipantConfig:operatingMode:]_block_invoke";
          v10 = 1024;
          v11 = 1650;
          v12 = 2112;
          v13 = v2;
          v14 = 2048;
          v15 = v5;
          _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Fail configure participant", &v6, 0x30u);
        }
      }
    }
  }
}

- (void)dispatchedSetVideoReceiverFeedbackDelegate:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [-[VCSessionParticipantRemote videoGroup](self "videoGroup")];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 stream];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [v9 streamConfigs];
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([objc_msgSend(*(*(&v17 + 1) + 8 * j) "multiwayConfig")])
              {
                [v10 setVideoReceiverFeedbackDelegate:a3];
                goto LABEL_16;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v17 objects:v16 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
        ;
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)setVideoReceiverFeedbackDelegate:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VCSessionParticipantRemote_setVideoReceiverFeedbackDelegate___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

- (void)setVideoStreamDelegate:(id)a3 delegateFunctions:(const tagVCVideoStreamDelegateRealtimeInstanceVTable *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    participantQueue = self->super._participantQueue;
    remoteScreenAttributesDidChange = a4->remoteScreenAttributesDidChange;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__VCSessionParticipantRemote_setVideoStreamDelegate_delegateFunctions___block_invoke;
    block[3] = &unk_1E85F50D8;
    block[4] = self;
    block[5] = a3;
    block[6] = remoteScreenAttributesDidChange;
    dispatch_async(participantQueue, block);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCSessionParticipantRemote setVideoStreamDelegate:delegateFunctions:]";
        v20 = 1024;
        v21 = 1676;
        v10 = "VCSessionParticipantRemote [%s] %s:%d videoStreamDelegateFunctions is NULL";
        v11 = v9;
        v12 = 28;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        v17 = v13;
        v18 = 2080;
        v19 = "[VCSessionParticipantRemote setVideoStreamDelegate:delegateFunctions:]";
        v20 = 1024;
        v21 = 1676;
        v22 = 2112;
        v23 = v7;
        v24 = 2048;
        v25 = self;
        v10 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) videoStreamDelegateFunctions is NULL";
        v11 = v14;
        v12 = 48;
        goto LABEL_14;
      }
    }
  }
}

uint64_t __71__VCSessionParticipantRemote_setVideoStreamDelegate_delegateFunctions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) videoGroup];
  v3 = *(a1 + 40);

  return [v2 setVideoStreamDelegate:v3 delegateFunctions:a1 + 48];
}

- (unsigned)actualNetworkBitrateWithAudioBitrates:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(VCSessionParticipantRemote *)self actualNetworkBitrateForStreamGroup:1835623282];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 += -[VCSessionParticipantRemote actualNetworkBitrateForStreamGroup:](self, "actualNetworkBitrateForStreamGroup:", [*(*(&v14 + 1) + 8 * i) streamGroupID]);
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [a3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5)}];
  return v9;
}

- (void)updateThermalLevel:(int)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCSessionParticipantRemote_updateThermalLevel___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __49__VCSessionParticipantRemote_updateThermalLevel___block_invoke(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 672) != v2)
  {
    v3 = result;
    *(v1 + 672) = v2;
    if (objc_opt_class() == *(result + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(v3 + 32) updateShouldEnableMLEnhance];
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(v3 + 32) updateShouldEnableMLEnhance];
      }

      v7 = *(v3 + 40);
      *v15 = 136315906;
      *&v15[4] = v5;
      *&v15[12] = 2080;
      *&v15[14] = "[VCSessionParticipantRemote updateThermalLevel:]_block_invoke";
      *&v15[22] = 1024;
      LODWORD(v16) = 1716;
      WORD2(v16) = 1024;
      *(&v16 + 6) = v7;
      v8 = "VCSessionParticipantRemote [%s] %s:%d New thermal level %d";
      v9 = v6;
      v10 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(v3 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [*(v3 + 32) updateShouldEnableMLEnhance];
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(v3 + 32) updateShouldEnableMLEnhance];
      }

      v13 = *(v3 + 32);
      v14 = *(v3 + 40);
      *v15 = 136316418;
      *&v15[4] = v11;
      *&v15[12] = 2080;
      *&v15[14] = "[VCSessionParticipantRemote updateThermalLevel:]_block_invoke";
      *&v15[22] = 1024;
      LODWORD(v16) = 1716;
      WORD2(v16) = 2112;
      *(&v16 + 6) = v4;
      HIWORD(v16) = 2048;
      v17 = v13;
      LOWORD(v18) = 1024;
      *(&v18 + 2) = v14;
      v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) New thermal level %d";
      v9 = v12;
      v10 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v15, v10);
    return [*(v3 + 32) updateShouldEnableMLEnhance];
  }

  return result;
}

- (void)setMediaRecorder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCSessionParticipantRemote;
  [(VCSessionParticipant *)&v6 setMediaRecorder:a3];
  participantQueue = self->super._participantQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__VCSessionParticipantRemote_setMediaRecorder___block_invoke;
  v5[3] = &unk_1E85F3778;
  v5[4] = self;
  dispatch_async(participantQueue, v5);
}

uint64_t __47__VCSessionParticipantRemote_setMediaRecorder___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 480);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 streamGroupID] == 1835623282)
        {
          return [v7 setMediaRecorder:*(*(a1 + 32) + 512)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)setStreamGroup:(unsigned int)a3 syncSourceStreamGroupID:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v37 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._participantQueue);
  v7 = [(VCSessionParticipant *)self systemAudioGroup];
  v8 = [(VCSessionParticipant *)self streamGroupWithID:v4];
  v9 = [(VCSessionParticipant *)self streamGroupWithID:v5];
  v10 = [-[VCSessionParticipantRemote systemAudioStreamInfo](self "systemAudioStreamInfo")];
  v11 = objc_opt_class();
  if (v4 == 1937339233)
  {
    if (v11 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_32;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *v33 = 136315906;
      *&v33[4] = v20;
      *&v33[12] = 2080;
      *&v33[14] = "[VCSessionParticipantRemote setStreamGroup:syncSourceStreamGroupID:]";
      *&v33[22] = 1024;
      LODWORD(v34) = 1750;
      WORD2(v34) = 2080;
      *(&v34 + 6) = FourccToCStr(v5);
      v22 = "VCSessionParticipantRemote [%s] %s:%d Camera Composition has stopped. Removing stream group with streamGroupID=%s as a sync source";
      v23 = v21;
      v24 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_32;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *v33 = 136316418;
      *&v33[4] = v29;
      *&v33[12] = 2080;
      *&v33[14] = "[VCSessionParticipantRemote setStreamGroup:syncSourceStreamGroupID:]";
      *&v33[22] = 1024;
      LODWORD(v34) = 1750;
      WORD2(v34) = 2112;
      *(&v34 + 6) = v13;
      HIWORD(v34) = 2048;
      v35 = self;
      LOWORD(v36) = 2080;
      *(&v36 + 2) = FourccToCStr(v5);
      v22 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Camera Composition has stopped. Removing stream group with streamGroupID=%s as a sync source";
      v23 = v30;
      v24 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, v33, v24);
LABEL_32:
    [v8 removeSyncDestination:{v9, *v33, *&v33[8], v34, v35, v36}];
    [v7 addSyncDestination:v9];
    v27 = v10;
    v28 = 0;
    goto LABEL_33;
  }

  if (v4 == 1835623282)
  {
    if (v11 == self)
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

      *v33 = 136315906;
      *&v33[4] = v15;
      *&v33[12] = 2080;
      *&v33[14] = "[VCSessionParticipantRemote setStreamGroup:syncSourceStreamGroupID:]";
      *&v33[22] = 1024;
      LODWORD(v34) = 1743;
      WORD2(v34) = 2080;
      *(&v34 + 6) = FourccToCStr(v5);
      v17 = "VCSessionParticipantRemote [%s] %s:%d Camera Composition has resumed. Adding stream group with streamGroupID=%s as a sync source";
      v18 = v16;
      v19 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *v33 = 136316418;
      *&v33[4] = v25;
      *&v33[12] = 2080;
      *&v33[14] = "[VCSessionParticipantRemote setStreamGroup:syncSourceStreamGroupID:]";
      *&v33[22] = 1024;
      LODWORD(v34) = 1743;
      WORD2(v34) = 2112;
      *(&v34 + 6) = v12;
      HIWORD(v34) = 2048;
      v35 = self;
      LOWORD(v36) = 2080;
      *(&v36 + 2) = FourccToCStr(v5);
      v17 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Camera Composition has resumed. Adding stream group with streamGroupID=%s as a sync source";
      v18 = v26;
      v19 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v33, v19);
LABEL_26:
    [v7 removeSyncDestination:{v9, *v33, *&v33[16], v34, v35, v36}];
    [v8 addSyncDestination:v9];
    v27 = v10;
    v28 = 1;
LABEL_33:
    [v27 setJitterBufferMode:v28];
    return;
  }

  if (v11 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantRemote setStreamGroup:syncSourceStreamGroupID:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v33 = 136316418;
        *&v33[4] = v31;
        *&v33[12] = 2080;
        *&v33[14] = "[VCSessionParticipantRemote setStreamGroup:syncSourceStreamGroupID:]";
        *&v33[22] = 1024;
        LODWORD(v34) = 1757;
        WORD2(v34) = 2112;
        *(&v34 + 6) = v14;
        HIWORD(v34) = 2048;
        v35 = self;
        LOWORD(v36) = 2080;
        *(&v36 + 2) = FourccToCStr(v5);
        _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Unable to sync the screen stream group with streamGroupID=%s", v33, 0x3Au);
      }
    }
  }
}

- (void)reactionDidStart:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCSessionParticipantRemote_reactionDidStart___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __47__VCSessionParticipantRemote_reactionDidStart___block_invoke(uint64_t a1)
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__VCSessionParticipantRemote_reactionDidStart___block_invoke_2;
  v2[3] = &unk_1E85F6848;
  return [*(a1 + 32) callDelegateWithBlock:v2];
}

- (void)didStopReacting
{
  v3[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__VCSessionParticipantRemote_didStopReacting__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(participantQueue, v3);
}

uint64_t __45__VCSessionParticipantRemote_didStopReacting__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__VCSessionParticipantRemote_didStopReacting__block_invoke_2;
  v3[3] = &unk_1E85F6780;
  v3[4] = v1;
  return [v1 callDelegateWithBlock:v3];
}

- (BOOL)isPlaybackSynchronizationGroupMember
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VCSessionParticipantRemote_isPlaybackSynchronizationGroupMember__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(participantQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dispatchedSetPlaybackSynchronizationGroupMember:(BOOL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_isPlaybackSynchronizationGroupMember != a3)
  {
    v3 = a3;
    self->_isPlaybackSynchronizationGroupMember = a3;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315906;
          v14 = v6;
          v15 = 2080;
          v16 = "[VCSessionParticipantRemote dispatchedSetPlaybackSynchronizationGroupMember:]";
          v17 = 1024;
          v18 = 1792;
          v19 = 1024;
          LODWORD(v20) = v3;
          v8 = "VCSessionParticipantRemote [%s] %s:%d isPlaybackSynchronizationGroupMember=%d";
          v9 = v7;
          v10 = 34;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
          v13 = 136316418;
          v14 = v11;
          v15 = 2080;
          v16 = "[VCSessionParticipantRemote dispatchedSetPlaybackSynchronizationGroupMember:]";
          v17 = 1024;
          v18 = 1792;
          v19 = 2112;
          v20 = v5;
          v21 = 2048;
          v22 = self;
          v23 = 1024;
          v24 = v3;
          v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) isPlaybackSynchronizationGroupMember=%d";
          v9 = v12;
          v10 = 54;
          goto LABEL_12;
        }
      }
    }
  }
}

- (void)setIsPlaybackSynchronizationGroupMember:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCSessionParticipantRemote_setIsPlaybackSynchronizationGroupMember___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (id)optedInStreamIDForStreamGroupID:(unsigned int)a3
{
  v3 = [(VCSessionParticipant *)self streamGroupWithID:*&a3];

  return [v3 optedInStreamID];
}

- (id)activeDownlinkStreamIDForStreamGroupID:(unsigned int)a3
{
  v3 = [(VCSessionParticipant *)self streamGroupWithID:*&a3];

  return [v3 activeStreamID];
}

- (unsigned)actualNetworkBitrateForStreamGroup:(unsigned int)a3
{
  v4 = [(VCSessionParticipantRemote *)self optedInStreamIDForStreamGroupID:*&a3];
  if (v4)
  {
    v5 = [(VCSessionParticipantRemote *)self entryForStreamID:v4];

    LODWORD(v4) = [v5 actualNetworkBitrate];
  }

  return v4;
}

- (unsigned)optedInNetworkBitrateForStreamGroup:(unsigned int)a3
{
  v4 = [(VCSessionParticipantRemote *)self optedInStreamIDForStreamGroupID:*&a3];
  if (v4)
  {
    v5 = [(VCSessionParticipantRemote *)self entryForStreamID:v4];

    LODWORD(v4) = [v5 maxNetworkBitrate];
  }

  return v4;
}

- (void)reportConnectionTiming
{
  v3[5] = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__VCSessionParticipantRemote_reportConnectionTiming__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(participantQueue, v3);
}

- (void)dispatchedReportConnectionTimingWithStreamGroup:(id)a3
{
  v34[3] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._participantQueue);
  if (a3)
  {
    v5 = [a3 streamGroupID];
  }

  else if ([(VCSessionParticipantRemote *)self shouldUseCameraAsConnectionTimingSource])
  {
    v5 = 1667329381;
  }

  else
  {
    v5 = 1835623282;
  }

  v6 = reportingStreamGroupFromStreamGroupID();
  v33[0] = @"VCSPIDSID";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->super._idsParticipantID];
  uuid = self->super._uuid;
  v34[0] = v7;
  v34[1] = uuid;
  v33[1] = @"VCSPUUID";
  v33[2] = @"VCMSStreamGroup";
  v34[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  perfTimers = self->_perfTimers;
  v10 = [(VCSessionParticipant *)self reportingAgent];
  VCPerfTimingUtilsReport(perfTimers, v10, v11);
  v12 = micro();
  [(TimingCollection *)self->_perfTimers setStartTime:19 forKey:?];
  [(TimingCollection *)self->_perfTimers setStopTime:19 forKey:v12];
  [(TimingCollection *)self->_perfTimers setStartTime:23 forKey:v12];
  [(TimingCollection *)self->_perfTimers setStopTime:23 forKey:v12];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      idsParticipantID = self->super._idsParticipantID;
      [(TimingCollection *)self->_perfTimers totalTimeForKey:19];
      v17 = v16;
      [(TimingCollection *)self->_perfTimers totalTimeForKey:23];
      v19 = 136316674;
      v20 = v13;
      v21 = 2080;
      v22 = "[VCSessionParticipantRemote dispatchedReportConnectionTimingWithStreamGroup:]";
      v23 = 1024;
      v24 = 1851;
      v25 = 2048;
      v26 = idsParticipantID;
      v27 = 2048;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      v31 = 2080;
      v32 = FourccToCStr(v5);
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Remote participantID=%llu V2 connection timing=%f, connection timing started=%f clocked by '%s' streamGroup", &v19, 0x44u);
    }
  }
}

- (void)reportConnectionTimingWithStreamGroupDispatched:(id)a3
{
  dispatch_assert_queue_V2(self->super._participantQueue);
  if ([(VCSessionParticipantRemote *)self shouldReportConnectionTimingWithStreamGroup:a3]&& !self->_isConnectionTimingReported)
  {
    self->_isConnectionTimingReported = 1;
    perfTimers = self->_perfTimers;
    [a3 firstMediaFrameReceivedTime];
    [(TimingCollection *)perfTimers setStopTime:19 forKey:?];
    v6 = self->_perfTimers;
    [a3 firstMediaFrameReceivedTime];
    [(TimingCollection *)v6 setStopTime:23 forKey:?];
    [a3 setFirstMediaFrameReceivedTime:0.0];

    [(VCSessionParticipantRemote *)self dispatchedReportConnectionTimingWithStreamGroup:a3];
  }
}

- (void)didReceiveFirstFrameForStreamGroup:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if ([a3 streamGroupID] == 1667329381 && self->_capabilities.controlChannelVersion == 1 && !self->_receivedFirstFrame)
  {
    self->_receivedFirstFrame = 1;
    [(VCSessionParticipantRemote *)self setRemoteVideoEnabled:1];
  }

  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VCSessionParticipantRemote_didReceiveFirstFrameForStreamGroup___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(participantQueue, block);
}

_BYTE *__65__VCSessionParticipantRemote_didReceiveFirstFrameForStreamGroup___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[775] == 1)
  {
    return [result reportConnectionTimingWithStreamGroupDispatched:*(a1 + 40)];
  }

  return result;
}

- (void)redundancyController:(id)a3 redundancyPercentageDidChange:(unsigned int)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (![+[VCDefaults forceFECRepairStream] sharedInstance]
  {
    participantQueue = self->super._participantQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__VCSessionParticipantRemote_redundancyController_redundancyPercentageDidChange___block_invoke;
    v8[3] = &unk_1E85F3890;
    v8[4] = a3;
    v8[5] = self;
    v9 = a4;
    dispatch_async(participantQueue, v8);
  }
}

void __81__VCSessionParticipantRemote_redundancyController_redundancyPercentageDidChange___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != *(*(a1 + 40) + 440))
  {
    return;
  }

  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        *buf = 136315906;
        v32 = v3;
        v33 = 2080;
        v34 = "[VCSessionParticipantRemote redundancyController:redundancyPercentageDidChange:]_block_invoke";
        v35 = 1024;
        v36 = 1896;
        v37 = 1024;
        LODWORD(v38) = v5;
        v6 = "VCSessionParticipantRemote [%s] %s:%d New redundancy percentage %d";
        v7 = v4;
        v8 = 34;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 40) performSelector:sel_logPrefix];
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
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        *buf = 136316418;
        v32 = v9;
        v33 = 2080;
        v34 = "[VCSessionParticipantRemote redundancyController:redundancyPercentageDidChange:]_block_invoke";
        v35 = 1024;
        v36 = 1896;
        v37 = 2112;
        v38 = v2;
        v39 = 2048;
        v40 = v11;
        v41 = 1024;
        v42 = v12;
        v6 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) New redundancy percentage %d";
        v7 = v10;
        v8 = 54;
        goto LABEL_13;
      }
    }
  }

  v13 = *(a1 + 40);
  if (*(a1 + 48))
  {
    if (*(v13 + 601))
    {
      return;
    }

    *(v13 + 601) = 1;
    v14 = *(a1 + 40);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __81__VCSessionParticipantRemote_redundancyController_redundancyPercentageDidChange___block_invoke_131;
    v29[3] = &unk_1E85F6780;
    v29[4] = v14;
    [v14 callDelegateWithBlock:v29];
    if (objc_opt_class() != *(a1 + 40))
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 40);
          *buf = 136316162;
          v32 = v21;
          v33 = 2080;
          v34 = "[VCSessionParticipantRemote redundancyController:redundancyPercentageDidChange:]_block_invoke";
          v35 = 1024;
          v36 = 1911;
          v37 = 2112;
          v38 = v15;
          v39 = 2048;
          v40 = v23;
          v20 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Requesting video redundancy";
LABEL_38:
          v25 = v22;
          v26 = 48;
          goto LABEL_39;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315650;
    v32 = v18;
    v33 = 2080;
    v34 = "[VCSessionParticipantRemote redundancyController:redundancyPercentageDidChange:]_block_invoke_2";
    v35 = 1024;
    v36 = 1911;
    v20 = "VCSessionParticipantRemote [%s] %s:%d Requesting video redundancy";
LABEL_33:
    v25 = v19;
    v26 = 28;
LABEL_39:
    _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v20, buf, v26);
    return;
  }

  if (!*(v13 + 601))
  {
    return;
  }

  *(v13 + 601) = 0;
  v16 = *(a1 + 40);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __81__VCSessionParticipantRemote_redundancyController_redundancyPercentageDidChange___block_invoke_129;
  v30[3] = &unk_1E85F6780;
  v30[4] = v16;
  [v16 callDelegateWithBlock:v30];
  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315650;
    v32 = v24;
    v33 = 2080;
    v34 = "[VCSessionParticipantRemote redundancyController:redundancyPercentageDidChange:]_block_invoke_2";
    v35 = 1024;
    v36 = 1904;
    v20 = "VCSessionParticipantRemote [%s] %s:%d Dismissing video redundancy";
    goto LABEL_33;
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [*(a1 + 40) performSelector:sel_logPrefix];
  }

  else
  {
    v17 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 40);
      *buf = 136316162;
      v32 = v27;
      v33 = 2080;
      v34 = "[VCSessionParticipantRemote redundancyController:redundancyPercentageDidChange:]_block_invoke";
      v35 = 1024;
      v36 = 1904;
      v37 = 2112;
      v38 = v17;
      v39 = 2048;
      v40 = v28;
      v20 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Dismissing video redundancy";
      goto LABEL_38;
    }
  }
}

- (void)collectVideoChannelMetrics:(id *)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  VCMediaChannelMetrics_Reset(a3);
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCSessionParticipantRemote_collectVideoChannelMetrics___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

uint64_t __57__VCSessionParticipantRemote_collectVideoChannelMetrics___block_invoke(uint64_t a1)
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
  block[2] = __57__VCSessionParticipantRemote_collectAudioChannelMetrics___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(participantQueue, block);
}

uint64_t __57__VCSessionParticipantRemote_collectAudioChannelMetrics___block_invoke(uint64_t a1)
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

- (void)pushEventToNwActivity:(int64_t)a3 started:(BOOL)a4
{
  v5 = a3;
  v35 = *MEMORY[0x1E69E9840];
  if (a3 == 8)
  {
    v7 = &OBJC_IVAR___VCSessionParticipantRemote__participantPoorConnectionNwActivity;
  }

  else
  {
    if (a3 != 9)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          return;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        v13 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [VCSessionParticipantRemote pushEventToNwActivity:started:];
          }

          return;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v23 = 136315906;
        v24 = v11;
        v25 = 2080;
        v26 = "[VCSessionParticipantRemote pushEventToNwActivity:started:]";
        v27 = 1024;
        v28 = 1955;
        v29 = 1024;
        LODWORD(v30) = v5;
        v14 = "VCSessionParticipantRemote [%s] %s:%d Invalid NW activity label:%d";
        v15 = v12;
        v16 = 34;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 8)
        {
          return;
        }

        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        v19 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v23 = 136316418;
            v24 = v17;
            v25 = 2080;
            v26 = "[VCSessionParticipantRemote pushEventToNwActivity:started:]";
            v27 = 1024;
            v28 = 1955;
            v29 = 2112;
            v30 = v9;
            v31 = 2048;
            v32 = self;
            v33 = 1024;
            v34 = v5;
            _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Invalid NW activity label:%d", &v23, 0x36u);
          }

          return;
        }

        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v23 = 136316418;
        v24 = v17;
        v25 = 2080;
        v26 = "[VCSessionParticipantRemote pushEventToNwActivity:started:]";
        v27 = 1024;
        v28 = 1955;
        v29 = 2112;
        v30 = v9;
        v31 = 2048;
        v32 = self;
        v33 = 1024;
        v34 = v5;
        v14 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Invalid NW activity label:%d";
        v15 = v18;
        v16 = 54;
      }

      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v23, v16);
      return;
    }

    v7 = &OBJC_IVAR___VCSessionParticipantRemote__participantMediaStallNwActivity;
  }

  v8 = *v7;
  if (*(&self->super.super.super.isa + v8))
  {
    if (a4)
    {
      return;
    }

LABEL_15:
    nw_activity_complete_with_reason();
    nw_release(*(&self->super.super.super.isa + v8));
    *(&self->super.super.super.isa + v8) = 0;
    return;
  }

  v10 = nw_activity_create();
  *(&self->super.super.super.isa + v8) = v10;
  if (v10)
  {
    if (self->_nwActivity)
    {
      nw_activity_set_parent_activity();
    }

    nw_activity_activate();
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantRemote pushEventToNwActivity:started:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        v23 = 136316162;
        v24 = v21;
        v25 = 2080;
        v26 = "[VCSessionParticipantRemote pushEventToNwActivity:started:]";
        v27 = 1024;
        v28 = 1961;
        v29 = 2112;
        v30 = v20;
        v31 = 2048;
        v32 = self;
        _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to create event nwActivity", &v23, 0x30u);
      }
    }
  }
}

- (void)setVideoDegraded:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x1E69E9840];
  isVideoDegraded = self->_isVideoDegraded;
  v6 = objc_opt_class();
  if (isVideoDegraded != v3)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *v26 = 136315906;
      *&v26[4] = v15;
      *&v26[12] = 2080;
      *&v26[14] = "[VCSessionParticipantRemote setVideoDegraded:]";
      *&v26[22] = 1024;
      LODWORD(v27) = 1982;
      WORD2(v27) = 1024;
      *(&v27 + 6) = v3;
      v17 = "VCSessionParticipantRemote [%s] %s:%d videoDegraded=%d";
      v18 = v16;
      v19 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_24;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *v26 = 136316418;
      *&v26[4] = v23;
      *&v26[12] = 2080;
      *&v26[14] = "[VCSessionParticipantRemote setVideoDegraded:]";
      *&v26[22] = 1024;
      LODWORD(v27) = 1982;
      WORD2(v27) = 2112;
      *(&v27 + 6) = v8;
      HIWORD(v27) = 2048;
      v28 = self;
      LOWORD(v29) = 1024;
      *(&v29 + 2) = v3;
      v17 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) videoDegraded=%d";
      v18 = v24;
      v19 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v26, v19);
LABEL_24:
    v25 = [(VCMediaStream *)[(VCSessionParticipantMediaStreamInfo *)[(VCSessionParticipantRemote *)self cameraStreamInfo:*v26] stream] streamToken];
    if (![+[VCDefaults forceDisableVideoDegraded] sharedInstance]
    {
      [VCRemoteVideoManager_DefaultManager() remoteVideoDidDegrade:v3 streamToken:v25];
    }

    self->_isVideoDegraded = v3;
    [(VCSessionParticipant *)self participantVideoToken];
    kdebug_trace();
    [(VCSessionParticipantRemote *)self pushEventToNwActivity:8 started:v3];
    return;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_isVideoDegraded;
        *v26 = 136315906;
        *&v26[4] = v9;
        *&v26[12] = 2080;
        *&v26[14] = "[VCSessionParticipantRemote setVideoDegraded:]";
        *&v26[22] = 1024;
        LODWORD(v27) = 1978;
        WORD2(v27) = 1024;
        *(&v27 + 6) = v11;
        v12 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setVideoDegraded=%d with same value";
        v13 = v10;
        v14 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v26, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_isVideoDegraded;
        *v26 = 136316418;
        *&v26[4] = v20;
        *&v26[12] = 2080;
        *&v26[14] = "[VCSessionParticipantRemote setVideoDegraded:]";
        *&v26[22] = 1024;
        LODWORD(v27) = 1978;
        WORD2(v27) = 2112;
        *(&v27 + 6) = v7;
        HIWORD(v27) = 2048;
        v28 = self;
        LOWORD(v29) = 1024;
        *(&v29 + 2) = v22;
        v12 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setVideoDegraded=%d with same value";
        v13 = v21;
        v14 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)networkQualityDidDegrade:(BOOL)a3 isLocalNetworkQualityDegraded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(VCMediaStream *)[(VCSessionParticipantMediaStreamInfo *)[(VCSessionParticipantRemote *)self cameraStreamInfo] stream] streamToken];
  v7 = VCRemoteVideoManager_DefaultManager();

  [v7 networkQualityDidDegrade:v5 isLocalNetworkQualityDegraded:v4 streamToken:v6];
}

- (void)setRemoteMediaStalled:(BOOL)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_isRemoteMediaStalled == a3)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          isRemoteMediaStalled = self->_isRemoteMediaStalled;
          v14 = 136315906;
          v15 = v5;
          v16 = 2080;
          v17 = "[VCSessionParticipantRemote setRemoteMediaStalled:]";
          v18 = 1024;
          v19 = 2000;
          v20 = 1024;
          LODWORD(v21) = isRemoteMediaStalled;
          v8 = "VCSessionParticipantRemote [%s] %s:%d Ignoring setRemoteMediaStalled=%d with same value";
          v9 = v6;
          v10 = 34;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->_isRemoteMediaStalled;
          v14 = 136316418;
          v15 = v11;
          v16 = 2080;
          v17 = "[VCSessionParticipantRemote setRemoteMediaStalled:]";
          v18 = 1024;
          v19 = 2000;
          v20 = 2112;
          v21 = v4;
          v22 = 2048;
          v23 = self;
          v24 = 1024;
          v25 = v13;
          v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Ignoring setRemoteMediaStalled=%d with same value";
          v9 = v12;
          v10 = 54;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    self->_isRemoteMediaStalled = a3;

    [(VCSessionParticipantRemote *)self pushEventToNwActivity:9 started:a3];
  }
}

+ (BOOL)isDeviceLargeScreen
{
  v2 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v2 isDeviceLargeScreen];
}

+ (unsigned)maxAudioNetworkBitrateForLocalInterfaceOnWiFi:(BOOL)a3 isLowLatencyAudio:(BOOL)a4
{
  v4 = a3;
  result = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded maxNetworkBitrateMultiwayAudioOnWifi:"maxNetworkBitrateMultiwayAudioOnWifi:isLowLatencyAudio:" isLowLatencyAudio:a3, a4];
  if (v4)
  {
    v6 = 165600;
  }

  else
  {
    v6 = 55000;
  }

  if (result >= v6)
  {
    return v6;
  }

  return result;
}

+ (unsigned)maxCameraQualityIndexWithRedundancyForVideoQuality:(unsigned __int8)a3 useWiFiTable:(BOOL)a4 enableNewTier:(BOOL)a5
{
  v5 = a4;
  if (a3 == 10)
  {
    if (a4)
    {
      return 425;
    }

    else
    {
      return 250;
    }
  }

  else if (a3 == 5)
  {
    v7 = a5;
    v8 = [a1 isDeviceLargeScreen];
    if (v5 || v7)
    {
      v9 = 250;
    }

    else
    {
      v9 = 125;
    }

    if (v5)
    {
      v10 = 425;
    }

    else
    {
      v10 = 250;
    }

    if (v8)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    return 62;
  }
}

+ (unsigned)maxCameraQualityIndexForVideoQuality:(unsigned __int8)a3 useWiFiTable:(BOOL)a4 isSharingEnabled:(BOOL)a5 enableNewTier:(BOOL)a6
{
  v6 = a5;
  v7 = a4;
  if (a3 == 10)
  {
    if (a4)
    {
      v8 = 1800;
    }

    else
    {
      v8 = 250;
    }
  }

  else if (a3 == 5)
  {
    v9 = a6;
    v10 = [a1 isDeviceLargeScreen];
    if (v7 || v9)
    {
      v8 = 250;
    }

    else
    {
      v8 = 125;
    }

    if (v7)
    {
      v11 = 1000;
    }

    else
    {
      v11 = 250;
    }

    if (v10)
    {
      v8 = v11;
    }
  }

  else if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 62;
  }

  if (v8 >= 0x1A9)
  {
    v12 = 425;
  }

  else
  {
    v12 = v8;
  }

  if (v6)
  {
    return v12;
  }

  else
  {
    return v8;
  }
}

+ (unsigned)maxWebRTCCameraQualityIndexForVideoQuality:(unsigned __int8)a3 isLocalOnWiFi:(BOOL)a4 isSharingEnabled:(BOOL)a5 enableNewTier:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v11 = a5 && +[VCHardwareSettings limitCameraDownlinkBitrateDuringSharing];
  v12 = v8 && !v11;
  if (v9 == 10)
  {
    if (v12)
    {
      v13 = 1250;
    }

    else
    {
      v13 = 400;
    }
  }

  else if (v9 == 5)
  {
    v14 = [a1 isDeviceLargeScreen];
    if (v12 | v6)
    {
      v15 = 400;
    }

    else
    {
      v15 = 93;
    }

    if (v12)
    {
      v16 = 1250;
    }

    else
    {
      v16 = 400;
    }

    if (v14)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15;
    }
  }

  else if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = 93;
  }

  if (objc_opt_class() != a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return v13;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    v26 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136317954;
        v32 = v24;
        v33 = 2080;
        v34 = "+[VCSessionParticipantRemote maxWebRTCCameraQualityIndexForVideoQuality:isLocalOnWiFi:isSharingEnabled:enableNewTier:]";
        v35 = 1024;
        v36 = 2114;
        v37 = 2112;
        *v38 = v17;
        *&v38[8] = 2048;
        v39 = a1;
        *v40 = 1024;
        *&v40[2] = v9;
        *v41 = 1024;
        *&v41[2] = v8;
        *v42 = 1024;
        *&v42[2] = [a1 isDeviceLargeScreen];
        *v43 = 1024;
        *&v43[2] = v7;
        v44 = 1024;
        v45 = v11;
        v46 = 1024;
        v47 = v13;
        v48 = 1024;
        v49 = v6;
        v21 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) videoQuality=%d isLocalOnWiFi=%d isDeviceLargeScreen=%d isSharingEnabled=%d, shouldLimitCameraQualityForSharing=%d, maxQualityIndex=%d, enableNewTier=%d";
        v22 = v25;
        v23 = 90;
        goto LABEL_33;
      }

      return v13;
    }

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      return v13;
    }

    v31 = 136317954;
    v32 = v24;
    v33 = 2080;
    v34 = "+[VCSessionParticipantRemote maxWebRTCCameraQualityIndexForVideoQuality:isLocalOnWiFi:isSharingEnabled:enableNewTier:]";
    v35 = 1024;
    v36 = 2114;
    v37 = 2112;
    *v38 = v17;
    *&v38[8] = 2048;
    v39 = a1;
    *v40 = 1024;
    *&v40[2] = v9;
    *v41 = 1024;
    *&v41[2] = v8;
    *v42 = 1024;
    *&v42[2] = [a1 isDeviceLargeScreen];
    *v43 = 1024;
    *&v43[2] = v7;
    v44 = 1024;
    v45 = v11;
    v46 = 1024;
    v47 = v13;
    v48 = 1024;
    v49 = v6;
    v27 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) videoQuality=%d isLocalOnWiFi=%d isDeviceLargeScreen=%d isSharingEnabled=%d, shouldLimitCameraQualityForSharing=%d, maxQualityIndex=%d, enableNewTier=%d";
    v28 = v25;
    v29 = 90;
LABEL_39:
    _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, v27, &v31, v29);
    return v13;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return v13;
  }

  v18 = VRTraceErrorLogLevelToCSTR();
  v19 = *MEMORY[0x1E6986650];
  v20 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      return v13;
    }

    v31 = 136317442;
    v32 = v18;
    v33 = 2080;
    v34 = "+[VCSessionParticipantRemote maxWebRTCCameraQualityIndexForVideoQuality:isLocalOnWiFi:isSharingEnabled:enableNewTier:]";
    v35 = 1024;
    v36 = 2114;
    v37 = 1024;
    *v38 = v9;
    *&v38[4] = 1024;
    *&v38[6] = v8;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = [a1 isDeviceLargeScreen];
    HIWORD(v39) = 1024;
    *v40 = v7;
    *&v40[4] = 1024;
    *v41 = v11;
    *&v41[4] = 1024;
    *v42 = v13;
    *&v42[4] = 1024;
    *v43 = v6;
    v27 = "VCSessionParticipantRemote [%s] %s:%d videoQuality=%d isLocalOnWiFi=%d isDeviceLargeScreen=%d isSharingEnabled=%d, shouldLimitCameraQualityForSharing=%d, maxQualityIndex=%d, enableNewTier=%d";
    v28 = v19;
    v29 = 70;
    goto LABEL_39;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136317442;
    v32 = v18;
    v33 = 2080;
    v34 = "+[VCSessionParticipantRemote maxWebRTCCameraQualityIndexForVideoQuality:isLocalOnWiFi:isSharingEnabled:enableNewTier:]";
    v35 = 1024;
    v36 = 2114;
    v37 = 1024;
    *v38 = v9;
    *&v38[4] = 1024;
    *&v38[6] = v8;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = [a1 isDeviceLargeScreen];
    HIWORD(v39) = 1024;
    *v40 = v7;
    *&v40[4] = 1024;
    *v41 = v11;
    *&v41[4] = 1024;
    *v42 = v13;
    *&v42[4] = 1024;
    *v43 = v6;
    v21 = "VCSessionParticipantRemote [%s] %s:%d videoQuality=%d isLocalOnWiFi=%d isDeviceLargeScreen=%d isSharingEnabled=%d, shouldLimitCameraQualityForSharing=%d, maxQualityIndex=%d, enableNewTier=%d";
    v22 = v19;
    v23 = 70;
LABEL_33:
    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, &v31, v23);
  }

  return v13;
}

+ (unsigned)maxCameraQualityIndexForVideoQuality:(unsigned __int8)a3 isLocalOnWiFi:(BOOL)a4 isRedundancyRequested:(BOOL)a5 isSharingEnabled:(BOOL)a6 enableNewTier:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v51 = *MEMORY[0x1E69E9840];
  v13 = a6 && +[VCHardwareSettings limitCameraDownlinkBitrateDuringSharing];
  v14 = v10 && !v13;
  if (v9)
  {
    v15 = [a1 maxCameraQualityIndexWithRedundancyForVideoQuality:v11 useWiFiTable:v14 enableNewTier:v7];
  }

  else
  {
    v15 = [a1 maxCameraQualityIndexForVideoQuality:v11 useWiFiTable:v14 isSharingEnabled:v8 enableNewTier:v7];
  }

  v16 = v15;
  if (objc_opt_class() != a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return v16;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    log = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136318210;
        v32 = v24;
        v33 = 2080;
        v34 = "+[VCSessionParticipantRemote maxCameraQualityIndexForVideoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:]";
        v35 = 1024;
        v36 = 2129;
        v37 = 2112;
        *v38 = v17;
        *&v38[8] = 2048;
        v39 = a1;
        *v40 = 1024;
        *&v40[2] = v11;
        *v41 = 1024;
        *&v41[2] = v9;
        *v42 = 1024;
        *&v42[2] = v10;
        *v43 = 1024;
        *&v43[2] = [a1 isDeviceLargeScreen];
        *v44 = 1024;
        *&v44[2] = v8;
        v45 = 1024;
        v46 = v13;
        v47 = 1024;
        v48 = v16;
        v49 = 1024;
        v50 = v7;
        v21 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) videoQuality=%d isRedundancyRequested=%d isLocalOnWiFi=%d isDeviceLargeScreen=%d isSharingEnabled=%d, shouldLimitCameraQualityForSharing=%d, maxQualityIndex=%d, enableNewTier=%d";
        v22 = log;
        v23 = 96;
        goto LABEL_19;
      }

      return v16;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      return v16;
    }

    *buf = 136318210;
    v32 = v24;
    v33 = 2080;
    v34 = "+[VCSessionParticipantRemote maxCameraQualityIndexForVideoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:]";
    v35 = 1024;
    v36 = 2129;
    v37 = 2112;
    *v38 = v17;
    *&v38[8] = 2048;
    v39 = a1;
    *v40 = 1024;
    *&v40[2] = v11;
    *v41 = 1024;
    *&v41[2] = v9;
    *v42 = 1024;
    *&v42[2] = v10;
    *v43 = 1024;
    *&v43[2] = [a1 isDeviceLargeScreen];
    *v44 = 1024;
    *&v44[2] = v8;
    v45 = 1024;
    v46 = v13;
    v47 = 1024;
    v48 = v16;
    v49 = 1024;
    v50 = v7;
    v26 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) videoQuality=%d isRedundancyRequested=%d isLocalOnWiFi=%d isDeviceLargeScreen=%d isSharingEnabled=%d, shouldLimitCameraQualityForSharing=%d, maxQualityIndex=%d, enableNewTier=%d";
    v27 = log;
    v28 = 96;
LABEL_25:
    _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
    return v16;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return v16;
  }

  v18 = VRTraceErrorLogLevelToCSTR();
  v19 = *MEMORY[0x1E6986650];
  v20 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      return v16;
    }

    *buf = 136317698;
    v32 = v18;
    v33 = 2080;
    v34 = "+[VCSessionParticipantRemote maxCameraQualityIndexForVideoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:]";
    v35 = 1024;
    v36 = 2129;
    v37 = 1024;
    *v38 = v11;
    *&v38[4] = 1024;
    *&v38[6] = v9;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = v10;
    HIWORD(v39) = 1024;
    *v40 = [a1 isDeviceLargeScreen];
    *&v40[4] = 1024;
    *v41 = v8;
    *&v41[4] = 1024;
    *v42 = v13;
    *&v42[4] = 1024;
    *v43 = v16;
    *&v43[4] = 1024;
    *v44 = v7;
    v26 = "VCSessionParticipantRemote [%s] %s:%d videoQuality=%d isRedundancyRequested=%d isLocalOnWiFi=%d isDeviceLargeScreen=%d isSharingEnabled=%d, shouldLimitCameraQualityForSharing=%d, maxQualityIndex=%d, enableNewTier=%d";
    v27 = v19;
    v28 = 76;
    goto LABEL_25;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136317698;
    v32 = v18;
    v33 = 2080;
    v34 = "+[VCSessionParticipantRemote maxCameraQualityIndexForVideoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:]";
    v35 = 1024;
    v36 = 2129;
    v37 = 1024;
    *v38 = v11;
    *&v38[4] = 1024;
    *&v38[6] = v9;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = v10;
    HIWORD(v39) = 1024;
    *v40 = [a1 isDeviceLargeScreen];
    *&v40[4] = 1024;
    *v41 = v8;
    *&v41[4] = 1024;
    *v42 = v13;
    *&v42[4] = 1024;
    *v43 = v16;
    *&v43[4] = 1024;
    *v44 = v7;
    v21 = "VCSessionParticipantRemote [%s] %s:%d videoQuality=%d isRedundancyRequested=%d isLocalOnWiFi=%d isDeviceLargeScreen=%d isSharingEnabled=%d, shouldLimitCameraQualityForSharing=%d, maxQualityIndex=%d, enableNewTier=%d";
    v22 = v19;
    v23 = 76;
LABEL_19:
    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
  }

  return v16;
}

+ (unsigned)maxFtxtQualityIndexForVideoQuality:(unsigned __int8)a3 isLocalOnWiFi:(BOOL)a4 isRedundancyRequested:(BOOL)a5 isSharingEnabled:(BOOL)a6
{
  if (a3 == 10)
  {
    v8 = a6;
    v9 = VCFeatureFlagManager_PersonaV2Enabled();
    if (v8)
    {
      v10 = 135;
    }

    else
    {
      v10 = 275;
    }

    if (v8)
    {
      v11 = 135;
    }

    else
    {
      v11 = 1600;
    }

    if (v9)
    {
      return v11;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = 96;
    }

    if (a3 == 5)
    {
      return 135;
    }

    else
    {
      return v6;
    }
  }
}

+ (unsigned)maxBdatQualityIndexForVideoQuality:(unsigned __int8)a3 isLocalOnWiFi:(BOOL)a4
{
  if (a3 == 10 || a3 == 5)
  {
    return 140;
  }

  if (a3)
  {
    return 0;
  }

  return 98;
}

+ (unsigned)maxQualityIndexForStreamGroupID:(unsigned int)a3 videoQuality:(unsigned __int8)a4 isLocalOnWiFi:(BOOL)a5 isRedundancyRequested:(BOOL)a6 isSharingEnabled:(BOOL)a7 enableNewTier:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v27 = *MEMORY[0x1E69E9840];
  IntValueForKey = VCDefaults_GetIntValueForKey(@"GFTMaxVideoQualityIndex", 0xFFFFFFFFLL);
  if (IntValueForKey != -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315906;
        v20 = v16;
        v21 = 2080;
        v22 = "+[VCSessionParticipantRemote maxQualityIndexForStreamGroupID:videoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:]";
        v23 = 1024;
        v24 = 2171;
        v25 = 1024;
        v26 = IntValueForKey;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Forced max quality index is=%d", &v19, 0x22u);
      }
    }

    return IntValueForKey;
  }

  if (a3 > 1667329398)
  {
    if (a3 == 1667329399)
    {

      return [a1 maxWebRTCCameraQualityIndexForVideoQuality:v12 isLocalOnWiFi:v11 isSharingEnabled:v9 enableNewTier:v8];
    }

    else
    {
      if (a3 != 1718909044)
      {
        return IntValueForKey;
      }

      return [a1 maxFtxtQualityIndexForVideoQuality:v12 isLocalOnWiFi:v11 isRedundancyRequested:v10 isSharingEnabled:v9];
    }
  }

  else
  {
    if (a3 != 1650745716)
    {
      if (a3 == 1667329381)
      {

        return [a1 maxCameraQualityIndexForVideoQuality:v12 isLocalOnWiFi:v11 isRedundancyRequested:v10 isSharingEnabled:v9 enableNewTier:v8];
      }

      return IntValueForKey;
    }

    return [a1 maxBdatQualityIndexForVideoQuality:v12 isLocalOnWiFi:v11];
  }
}

- (void)appendStreamGroup:(id)a3 maxQualityIndex:(unsigned int)a4 mediaEntries:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_isRedundancyRequested && ([a3 hasRepairedStreams] & 1) != 0)
  {
    v9 = &OBJC_IVAR___VCSessionParticipantRemote__repairMediaTable;
  }

  else
  {
    v9 = &OBJC_IVAR___VCSessionParticipantRemote__mediaTable;
  }

  v10 = [*(&self->super.super.super.isa + *v9) tableEntriesForStreamToken:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->super._participantStreamTokens, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID"))), "unsignedIntValue")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([v15 qualityIndex] <= a4)
        {
          [a5 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v12);
  }
}

- (void)appendStreamGroupsMediaEntries:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = [(NSMutableDictionary *)self->super._streamGroups allValues];
  v5 = [v4 countByEnumeratingWithState:&v55 objects:v54 count:16];
  if (!v5)
  {
    v30 = 0;
    v31 = 0;
    v34 = 0;
    v7 = 0;
    goto LABEL_39;
  }

  v6 = v5;
  v30 = 0;
  v31 = 0;
  v34 = 0;
  v7 = 0;
  v8 = *v56;
  v35 = *v56;
  do
  {
    v9 = 0;
    do
    {
      if (*v56 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v55 + 1) + 8 * v9);
      if ([(VCSessionParticipantRemote *)self isStreamGroupActive:v10])
      {
        if ([v10 streamGroupID] == 1667329381 || objc_msgSend(v10, "streamGroupID") == 1667329399)
        {
          if (![(VCSessionParticipantRemote *)self isVisible])
          {
            goto LABEL_25;
          }

          v11 = v4;
          v12 = v7;
          if ([(VCSessionParticipantRemote *)self prominenceIndex])
          {
            v13 = [(VCSessionParticipant *)self presentationState]== 1;
          }

          else
          {
            v13 = 0;
          }

          v15 = [(VCSessionParticipant *)self isLocalOnWiFi]& !v13;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v16 = VRTraceErrorLogLevelToCSTR();
            v17 = *MEMORY[0x1E6986650];
            v18 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                sharingEnabled = self->super._sharingEnabled;
                v19 = [(VCSessionParticipant *)self isLocalOnWiFi];
                *buf = 136316674;
                v38 = v16;
                v39 = 2080;
                v40 = "[VCSessionParticipantRemote appendStreamGroupsMediaEntries:]";
                v41 = 1024;
                v42 = 2232;
                v43 = 1024;
                *v44 = sharingEnabled;
                *&v44[4] = 1024;
                *&v44[6] = v19;
                LOWORD(v45) = 1024;
                *(&v45 + 2) = v15;
                HIWORD(v45) = 1024;
                *v46 = v13;
                _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d _sharingEnabled=%d, self.isLocalOnWiFi=%d, shouldUseWifiQuality=%d, shouldLimitCameraQualityForPIP=%d", buf, 0x34u);
              }
            }

            else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v33 = self->super._sharingEnabled;
              v20 = [(VCSessionParticipant *)self isLocalOnWiFi];
              *buf = 136316674;
              v38 = v16;
              v39 = 2080;
              v40 = "[VCSessionParticipantRemote appendStreamGroupsMediaEntries:]";
              v41 = 1024;
              v42 = 2232;
              v43 = 1024;
              *v44 = v33;
              *&v44[4] = 1024;
              *&v44[6] = v20;
              LOWORD(v45) = 1024;
              *(&v45 + 2) = v15;
              HIWORD(v45) = 1024;
              *v46 = v13;
              _os_log_debug_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEBUG, "VCSessionParticipantRemote [%s] %s:%d _sharingEnabled=%d, self.isLocalOnWiFi=%d, shouldUseWifiQuality=%d, shouldLimitCameraQualityForPIP=%d", buf, 0x34u);
            }
          }

          v14 = +[VCSessionParticipantRemote maxQualityIndexForStreamGroupID:videoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:](VCSessionParticipantRemote, "maxQualityIndexForStreamGroupID:videoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:", [v10 streamGroupID], -[VCSessionParticipantRemote cappedVideoQualityWithShouldLimitCameraQualityForPIP:](self, "cappedVideoQualityWithShouldLimitCameraQualityForPIP:", v13), v15, self->_isRedundancyRequested, self->super._sharingEnabled, self->_enableMaxCameraBitrateVideoQualityNewTier);
          v7 = v12 + 1;
          v4 = v11;
          v8 = v35;
          goto LABEL_24;
        }

        if ([v10 streamGroupID] == 1835623282 || objc_msgSend(v10, "streamGroupID") == 1835623287)
        {
          ++v34;
          goto LABEL_15;
        }

        if ([v10 streamGroupID] == 1935897189)
        {
          ++v31;
          goto LABEL_15;
        }

        if ([v10 streamGroupID] == 1937339233)
        {
          ++HIDWORD(v30);
          goto LABEL_15;
        }

        if ([v10 streamGroupID] == 1667330164)
        {
          LODWORD(v30) = v30 + 1;
          goto LABEL_15;
        }

        if ([v10 streamGroupID] == 1718909044 || objc_msgSend(v10, "streamGroupID") == 1650745716)
        {
          v8 = v35;
          v14 = +[VCSessionParticipantRemote maxQualityIndexForStreamGroupID:videoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:](VCSessionParticipantRemote, "maxQualityIndexForStreamGroupID:videoQuality:isLocalOnWiFi:isRedundancyRequested:isSharingEnabled:enableNewTier:", [v10 streamGroupID], -[VCSessionParticipantRemote videoQuality](self, "videoQuality"), -[VCSessionParticipant isLocalOnWiFi](self, "isLocalOnWiFi"), self->_isRedundancyRequested, self->super._sharingEnabled, self->_enableMaxCameraBitrateVideoQualityNewTier);
        }

        else
        {
LABEL_15:
          v14 = 0xFFFFFFFFLL;
        }

LABEL_24:
        [(VCSessionParticipantRemote *)self appendStreamGroup:v10 maxQualityIndex:v14 mediaEntries:a3];
      }

LABEL_25:
      ++v9;
    }

    while (v6 != v9);
    v21 = [v4 countByEnumeratingWithState:&v55 objects:v54 count:16];
    v6 = v21;
  }

  while (v21);
LABEL_39:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316930;
        v38 = v23;
        v39 = 2080;
        v40 = "[VCSessionParticipantRemote appendStreamGroupsMediaEntries:]";
        v41 = 1024;
        v42 = 2250;
        v43 = 1024;
        *v44 = v7;
        *&v44[4] = 1024;
        *&v44[6] = v34;
        LOWORD(v45) = 1024;
        *(&v45 + 2) = v31;
        HIWORD(v45) = 1024;
        *v46 = HIDWORD(v30);
        *&v46[4] = 1024;
        *v47 = v30;
        v25 = "VCSessionParticipantRemote [%s] %s:%d appendStreamGroupsMediaEntries, count of streamGroups are cameraStreamGroupCount=%d, micrStreamGroupCount=%d, screenStreamGroupCount=%d, systemAudioStreamGroupCount=%d, captionsStreamGroupCount=%d ";
        v26 = v24;
        v27 = 58;
        goto LABEL_49;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317442;
        v38 = v28;
        v39 = 2080;
        v40 = "[VCSessionParticipantRemote appendStreamGroupsMediaEntries:]";
        v41 = 1024;
        v42 = 2250;
        v43 = 2112;
        *v44 = v22;
        *&v44[8] = 2048;
        v45 = self;
        *v46 = 1024;
        *&v46[2] = v7;
        *v47 = 1024;
        *&v47[2] = v34;
        v48 = 1024;
        v49 = v31;
        v50 = 1024;
        v51 = HIDWORD(v30);
        v52 = 1024;
        v53 = v30;
        v25 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) appendStreamGroupsMediaEntries, count of streamGroups are cameraStreamGroupCount=%d, micrStreamGroupCount=%d, screenStreamGroupCount=%d, systemAudioStreamGroupCount=%d, captionsStreamGroupCount=%d ";
        v26 = v29;
        v27 = 78;
LABEL_49:
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }
  }
}

- (NSArray)mediaEntries
{
  v55 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__9;
  v34 = __Block_byref_object_dispose__9;
  v35 = [MEMORY[0x1E695DF70] array];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCSessionParticipantRemote_mediaEntries__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v30;
  dispatch_sync(participantQueue, block);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v4 = v31[5];
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v5)
  {
    v6 = *v52;
    do
    {
      v7 = 0;
      do
      {
        if (*v52 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v51 + 1) + 8 * v7);
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 8)
          {
            goto LABEL_21;
          }

          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          v19 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            uuid = self->super._uuid;
            *buf = 136316162;
            v37 = v17;
            v38 = 2080;
            v39 = "[VCSessionParticipantRemote mediaEntries]";
            v40 = 1024;
            v41 = 2285;
            v42 = 2112;
            v43 = uuid;
            v44 = 2112;
            v45 = v8;
            v14 = v18;
            v15 = "VCSessionParticipantRemote [%s] %s:%d mediaEntries %@: %@";
            v16 = 48;
            goto LABEL_17;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v25 = self->super._uuid;
            *buf = 136316162;
            v37 = v17;
            v38 = 2080;
            v39 = "[VCSessionParticipantRemote mediaEntries]";
            v40 = 1024;
            v41 = 2285;
            v42 = 2112;
            v43 = v25;
            v44 = 2112;
            v45 = v8;
            v22 = v18;
            v23 = "VCSessionParticipantRemote [%s] %s:%d mediaEntries %@: %@";
            v24 = 48;
            goto LABEL_24;
          }
        }

        else
        {
          v9 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v9 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *MEMORY[0x1E6986650];
            v12 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              v13 = self->super._uuid;
              *buf = 136316674;
              v37 = v10;
              v38 = 2080;
              v39 = "[VCSessionParticipantRemote mediaEntries]";
              v40 = 1024;
              v41 = 2285;
              v42 = 2112;
              v43 = v9;
              v44 = 2048;
              v45 = self;
              v46 = 2112;
              v47 = v13;
              v48 = 2112;
              v49 = v8;
              v14 = v11;
              v15 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) mediaEntries %@: %@";
              v16 = 68;
LABEL_17:
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
              goto LABEL_21;
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v21 = self->super._uuid;
              *buf = 136316674;
              v37 = v10;
              v38 = 2080;
              v39 = "[VCSessionParticipantRemote mediaEntries]";
              v40 = 1024;
              v41 = 2285;
              v42 = 2112;
              v43 = v9;
              v44 = 2048;
              v45 = self;
              v46 = 2112;
              v47 = v21;
              v48 = 2112;
              v49 = v8;
              v22 = v11;
              v23 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) mediaEntries %@: %@";
              v24 = 68;
LABEL_24:
              _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, v23, buf, v24);
            }
          }
        }

LABEL_21:
        ++v7;
      }

      while (v5 != v7);
      v26 = [v4 countByEnumeratingWithState:&v51 objects:v50 count:16];
      v5 = v26;
    }

    while (v26);
  }

  v27 = v31[5];
  _Block_object_dispose(&v30, 8);
  return v27;
}

uint64_t __42__VCSessionParticipantRemote_mediaEntries__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendStreamGroupsMediaEntries:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 validateMediaEntries:v3];
}

- (void)setMediaSuspended:(BOOL)a3 forStreamToken:(id)a4
{
  v5 = a3;
  v6 = VCRemoteVideoManager_DefaultManager();
  v7 = [a4 unsignedIntValue];

  [v6 remoteVideoDidSuspend:v5 streamToken:v7];
}

- (BOOL)isVideoExpected
{
  v43 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          videoEnabled = self->super._videoEnabled;
          remoteVideoEnabled = self->_remoteVideoEnabled;
          videoPaused = self->super._videoPaused;
          remoteVideoPaused = self->_remoteVideoPaused;
          v26 = 136316930;
          v27 = v4;
          v28 = 2080;
          v29 = "[VCSessionParticipantRemote isVideoExpected]";
          v30 = 1024;
          v31 = 2299;
          v32 = 1024;
          *v33 = videoEnabled;
          *&v33[4] = 1024;
          *&v33[6] = remoteVideoEnabled;
          LOWORD(v34) = 1024;
          *(&v34 + 2) = videoPaused;
          HIWORD(v34) = 1024;
          *v35 = remoteVideoPaused;
          *&v35[4] = 1024;
          *v36 = [(VCSessionParticipantRemote *)self isVisible];
          v11 = "VCSessionParticipantRemote [%s] %s:%d videoEnabled:%d remoteVideoEnabled:%d videoPaused:%d remoteVideoPaused:%d isVisible:%d";
          v12 = v5;
          v13 = 58;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v26, v13);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [VCSessionParticipantRemote isVideoExpected];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return self->super._videoEnabled && self->_remoteVideoEnabled && !self->super._videoPaused && !self->_remoteVideoPaused && [(VCSessionParticipantRemote *)self isVisible];
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->super._videoEnabled;
        v18 = self->_remoteVideoEnabled;
        v19 = self->super._videoPaused;
        v20 = self->_remoteVideoPaused;
        v26 = 136317442;
        v27 = v14;
        v28 = 2080;
        v29 = "[VCSessionParticipantRemote isVideoExpected]";
        v30 = 1024;
        v31 = 2299;
        v32 = 2112;
        *v33 = v3;
        *&v33[8] = 2048;
        v34 = self;
        *v35 = 1024;
        *&v35[2] = v17;
        *v36 = 1024;
        *&v36[2] = v18;
        v37 = 1024;
        v38 = v19;
        v39 = 1024;
        v40 = v20;
        v41 = 1024;
        v42 = [(VCSessionParticipantRemote *)self isVisible];
        v11 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) videoEnabled:%d remoteVideoEnabled:%d videoPaused:%d remoteVideoPaused:%d isVisible:%d";
        v12 = v15;
        v13 = 78;
        goto LABEL_13;
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = self->super._videoEnabled;
      v22 = self->_remoteVideoEnabled;
      v23 = self->super._videoPaused;
      v24 = self->_remoteVideoPaused;
      v26 = 136317442;
      v27 = v14;
      v28 = 2080;
      v29 = "[VCSessionParticipantRemote isVideoExpected]";
      v30 = 1024;
      v31 = 2299;
      v32 = 2112;
      *v33 = v3;
      *&v33[8] = 2048;
      v34 = self;
      *v35 = 1024;
      *&v35[2] = v21;
      *v36 = 1024;
      *&v36[2] = v22;
      v37 = 1024;
      v38 = v23;
      v39 = 1024;
      v40 = v24;
      v41 = 1024;
      v42 = [(VCSessionParticipantRemote *)self isVisible];
      _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, "VCSessionParticipantRemote [%s] %s:%d %@(%p) videoEnabled:%d remoteVideoEnabled:%d videoPaused:%d remoteVideoPaused:%d isVisible:%d", &v26, 0x4Eu);
    }
  }

  return self->super._videoEnabled && self->_remoteVideoEnabled && !self->super._videoPaused && !self->_remoteVideoPaused && [(VCSessionParticipantRemote *)self isVisible];
}

- (void)updateScreenStreamConfigurationWithStreamGroupResult:(id)a3 multiwayConfig:(id)a4 screenStreamConfig:(id)a5
{
  [a3 resolution];
  v10 = v9;
  [a3 resolution];
  v12 = [VideoUtil videoResolutionForWidth:v10 height:v11];
  [a4 setResolution:v12];
  [a5 setVideoResolution:v12];
  v13 = 1;
  [a5 setCaptureSource:1];
  v14 = [a3 framerate];
  LODWORD(v10) = v14;
  [a4 setFramerate:v14];
  [a5 setFramerate:v10];
  [a5 setRemoteVideoInitialOrientation:2];
  v15 = [a3 keyFrameInterval];
  [a4 setKeyFrameInterval:v15];
  [a5 setKeyFrameInterval:v15];
  [a5 setLtrpEnabled:0];
  if ([a3 coordinateSystem] == 1)
  {
    v13 = [(VCSessionParticipantRemote *)self supportsNegotiatedCoordinateSystem]^ 1;
  }

  [a5 setForceZeroRegionOfInterestOrigin:v13];
  [a5 setDeferredAssemblyEnabled:1];
  [a5 setLooseAVSyncEnabled:1];
  v16 = +[VCVideoFeatureListStringHelper newFeatureListStringsDictForGroupID:isOneToOne:](VCVideoFeatureListStringHelper, "newFeatureListStringsDictForGroupID:isOneToOne:", 1935897189, [a4 isOneToOne]);
  [a5 setupTxPayloads:objc_msgSend(objc_msgSend(a4 featureStrings:{"payloads"), "allObjects"), v16}];
  [a5 setupRxPayloads:objc_msgSend(objc_msgSend(a4 featureStrings:{"payloads"), "allObjects"), v16}];
}

- (void)updateVideoMultiwayConfig:(id)a3 withStreamGroupStreamConfig:(id)a4
{
  [a3 setIsTemporalStream:{objc_msgSend(a4, "isTemporalStream")}];
  if ([a3 isTemporalStream])
  {
    [a3 setParentStreamID:{objc_msgSend(a4, "parentStreamID")}];
  }

  [a3 setIsSubStream:{objc_msgSend(a4, "isSubStream")}];
  [a4 resolution];
  if (v6 == 0.0 && ([a4 resolution], v7 == 0.0))
  {
    v8 = 11;
  }

  else
  {
    [a4 resolution];
    v10 = v9;
    [a4 resolution];
    v8 = [VideoUtil videoResolutionForWidth:v10 height:v11];
  }

  [a3 setResolution:v8];
  if ([a4 framerate])
  {
    v12 = [a4 framerate];
  }

  else
  {
    v12 = 30;
  }

  [a3 setFramerate:v12];
  v13 = [a4 keyFrameInterval];

  [a3 setKeyFrameInterval:v13];
}

- (id)newMultiwayConfigWithStreamGroupStreamConfig:(id)a3 maxIDSStreamIDCount:(unsigned int)a4 groupID:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  if (a5 <= 1936290408)
  {
    if (a5 != 1835623282)
    {
      v9 = 1835623287;
      goto LABEL_6;
    }

LABEL_7:
    v10 = objc_alloc_init(VCMediaStreamMultiwayConfigAudio);
    [(VCMediaStreamMultiwayConfig *)v10 setShouldIgnoreRTPHeaderExtensions:1];
    goto LABEL_8;
  }

  if (a5 == 1936290409)
  {
    goto LABEL_7;
  }

  v9 = 1937339233;
LABEL_6:
  if (a5 == v9)
  {
    goto LABEL_7;
  }

  v13 = objc_alloc_init(VCMediaStreamMultiwayConfigVideo);
  if (!v13)
  {
    [VCSessionParticipantRemote newMultiwayConfigWithStreamGroupStreamConfig:maxIDSStreamIDCount:groupID:];
    return v14;
  }

  v10 = v13;
  [(VCSessionParticipantRemote *)self updateVideoMultiwayConfig:v13 withStreamGroupStreamConfig:a3];
LABEL_8:
  [(VCMediaStreamMultiwayConfig *)v10 setStreamGroupID:v5];
  -[VCMediaStreamMultiwayConfig setSsrc:](v10, "setSsrc:", [a3 ssrc]);
  -[VCMediaStreamMultiwayConfig setMaxNetworkBitrate:](v10, "setMaxNetworkBitrate:", [a3 maxNetworkBitrate]);
  -[VCMediaStreamMultiwayConfig setMaxMediaBitrate:](v10, "setMaxMediaBitrate:", [a3 maxMediaBitrate]);
  *&v11 = [a3 maxPacketsPerSecond];
  [(VCMediaStreamMultiwayConfig *)v10 setMaxPacketsPerSecond:v11];
  -[VCMediaStreamMultiwayConfig setIdsStreamID:](v10, "setIdsStreamID:", [a3 streamID]);
  if ([a3 repairedStreamID])
  {
    -[VCMediaStreamMultiwayConfig setRepairedStreamID:](v10, "setRepairedStreamID:", [a3 repairedStreamID]);
    -[VCMediaStreamMultiwayConfig setRepairedMaxNetworkBitrate:](v10, "setRepairedMaxNetworkBitrate:", [a3 repairedMaxNetworkBitrate]);
  }

  -[VCMediaStreamMultiwayConfig setQualityIndex:](v10, "setQualityIndex:", [a3 qualityIndex]);
  [(VCMediaStreamMultiwayConfig *)v10 setMaxIDSStreamIdCount:v6];
  [(VCMediaStreamMultiwayConfig *)v10 setStartOnDemand:0];
  -[VCMediaStreamMultiwayConfig setV2StreamID:](v10, "setV2StreamID:", [a3 v2StreamID]);
  return v10;
}

- (BOOL)setupVideoStreamConfiguration:(id)a3 withStreamGroupStreamConfig:(id)a4 codecConfigs:(id)a5 multiwayConfig:(id)a6 groupID:(unsigned int)a7
{
  v7 = *&a7;
  v37 = *MEMORY[0x1E69E9840];
  v13 = +[VCVideoFeatureListStringHelper newFeatureListStringsDictForGroupID:isOneToOne:](VCVideoFeatureListStringHelper, "newFeatureListStringsDictForGroupID:isOneToOne:", *&a7, [a6 isOneToOne]);
  v14 = v13;
  if (!v13)
  {
    [VCSessionParticipantRemote setupVideoStreamConfiguration:withStreamGroupStreamConfig:codecConfigs:multiwayConfig:groupID:];
LABEL_31:
    v27 = v31;
    goto LABEL_28;
  }

  v29 = a5;
  v30 = v13;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = [a4 payloads];
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [a6 addPayload:{objc_msgSend(*(*(&v33 + 1) + 8 * i), "unsignedIntValue")}];
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v17);
  }

  [a3 setRxMinBitrate:{objc_msgSend(a4, "maxNetworkBitrate")}];
  [a3 setRxMaxBitrate:{objc_msgSend(a4, "maxNetworkBitrate")}];
  [a3 setTxMinBitrate:{objc_msgSend(a4, "maxNetworkBitrate")}];
  [a3 setTxMaxBitrate:{objc_msgSend(a4, "maxNetworkBitrate")}];
  [a3 setKeyFrameInterval:{objc_msgSend(a6, "keyFrameInterval")}];
  v20 = +[VCHardwareSettings deviceClass];
  v21 = 0.02;
  if (v20 != 8)
  {
    v22 = [(VCSessionParticipant *)self preferredIOSamplesPerFrameForGroupID:v7, 0.02];
    v21 = v22 / [(VCSessionParticipant *)self preferredIOSampleRateForGroupID:v7];
  }

  [a3 setMinPlaybackInterval:v21];
  v23 = v7 == 1650745716 || v7 == 1718909044;
  v24 = 0.0;
  if (v23)
  {
    v24 = 0.02;
  }

  [a3 setMinRenderingDelay:v24];
  v14 = v30;
  if (!-[VCSessionParticipantRemote setupStreamConfigWithCodecs:streamConfig:codecConfigs:featureStringsDict:](self, "setupStreamConfigWithCodecs:streamConfig:codecConfigs:featureStringsDict:", [a4 codecs], a3, v29, v30))
  {
    [VCSessionParticipantRemote setupVideoStreamConfiguration:withStreamGroupStreamConfig:codecConfigs:multiwayConfig:groupID:];
    goto LABEL_31;
  }

  [a3 setType:3];
  [a3 setVideoResolution:{objc_msgSend(a6, "resolution")}];
  [a3 setRemoteVideoInitialOrientation:0];
  [a3 setFramerate:{objc_msgSend(a6, "framerate")}];
  [a3 setSourceFramerate:30];
  v25 = [(VCSessionParticipantRemote *)self shouldEnablePacketRetransmissionForStreamGroupID:v7];
  isServerRTxEnabled = 0;
  if (v25)
  {
    isServerRTxEnabled = self->_isServerRTxEnabled;
  }

  [a3 setIsServerPacketRetransmissionEnabled:isServerRTxEnabled];
  [a3 setIsLateKeyFrameDetectionEnabled:self->_isLateKeyFrameDetectionEnabled];
  if (v7 == 1667329399)
  {
    [a3 setIsVariableSliceModeEnabled:1];
    [a3 setCvoExtensionID:1];
    [a3 setUseVideoJitterForVideoPlayout:0];
  }

  else
  {
    if (v7 != 1935897189)
    {
      if (v7 == 1718909044)
      {
        [a3 setIsVariableSliceModeEnabled:1];
      }

      else if (v7 != 1650745716)
      {
        goto LABEL_27;
      }

      [a3 setMediaStallTimeout:2.0];
      [a3 setMediaStallReportRepeatInterval:1.0];
      goto LABEL_27;
    }

    [(VCSessionParticipantRemote *)self updateScreenStreamConfigurationWithStreamGroupResult:a4 multiwayConfig:a6 screenStreamConfig:a3];
  }

LABEL_27:
  [(VCSessionParticipant *)self setFECConfigurationOnStreamConfig:a3 withStreamGroupID:v7];
  v27 = 1;
LABEL_28:

  return v27;
}

- (id)newMediaStreamConfigWithStreamGroupConfig:(id)a3 streamConfig:(id)a4 rateControlConfig:(id)a5 multiwayConfig:(id)a6
{
  v11 = [a3 groupID];
  v12 = v11;
  if (v11 <= 1936290408)
  {
    if (v11 != 1835623282)
    {
      v13 = 1835623287;
      goto LABEL_6;
    }

LABEL_7:
    v14 = objc_alloc_init(VCSessionParticipantAudioStreamConfig);
    if (!v14)
    {
      [VCSessionParticipantRemote newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:];
      goto LABEL_25;
    }

    v15 = v14;
    if (![(VCSessionParticipantRemote *)self setupAudioStreamConfiguration:v14 withStreamGroupConfig:a3 streamGroupStreamConfig:a4])
    {
      [VCSessionParticipantRemote newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:];
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  if (v11 == 1936290409)
  {
    goto LABEL_7;
  }

  v13 = 1937339233;
LABEL_6:
  if (v11 == v13)
  {
    goto LABEL_7;
  }

  v18 = objc_alloc_init(VCSessionParticipantVideoStreamConfig);
  if (!v18)
  {
    [VCSessionParticipantRemote newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:];
    goto LABEL_25;
  }

  v15 = v18;
  if (!-[VCSessionParticipantRemote setupVideoStreamConfiguration:withStreamGroupStreamConfig:codecConfigs:multiwayConfig:groupID:](self, "setupVideoStreamConfiguration:withStreamGroupStreamConfig:codecConfigs:multiwayConfig:groupID:", v18, a4, [objc_msgSend(a3 "codecConfigs")], a6, v12))
  {
    [VCSessionParticipantRemote newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:];
LABEL_25:

    return 0;
  }

LABEL_9:
  [v15 setMultiwayConfig:a6];
  [v15 setDirection:2];
  [v15 setRateControlConfig:a5];
  [v15 setDefaultRemoteSSRC:{objc_msgSend(a4, "ssrc")}];
  if (v12 == 1667329399 || v12 == 1667329381)
  {
    [(VCSessionParticipantRemote *)self updateStreamConfigWithMLEnhance:v15];
  }

  v16 = [a4 rtpTimestampRate];
  if (!v16)
  {
    v16 = [(VCSessionParticipant *)self preferredIOSampleRateForGroupID:v12];
  }

  [v15 setRtpTimestampRate:v16];
  if (([a4 applyCipherSuiteOnMediaStreamConfig:v15 codecConfigs:{objc_msgSend(a3, "codecConfigs")}] & 1) == 0)
  {
    [VCSessionParticipantRemote newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:];
    goto LABEL_25;
  }

  if (![(VCSessionParticipant *)self completeStreamSetup:v15 rtpCipherSuite:3])
  {
    [VCSessionParticipantRemote newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:];
    goto LABEL_25;
  }

  return v15;
}

- (BOOL)setupStreamConfigWithCodecs:(id)a3 streamConfig:(id)a4 codecConfigs:(id)a5 featureStringsDict:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  *v26 = [a5 count];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v24 = *v35;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if ([v13 intValue] >= *v26)
        {
          [(VCSessionParticipantRemote *)v13 setupStreamConfigWithCodecs:v11 & 1 streamConfig:&v26[8] codecConfigs:v14 featureStringsDict:v15, v16, v17, a3, SHIDWORD(a3), v24, SWORD2(v24), a5, *v26, *&v26[16], *&v28[2], v29, *(&v29 + 1), v30, v31, v32, v33[0], v33[1], v33[2], v33[3]];
          v11 = v26[8];
          return v11 & 1;
        }

        v18 = [a5 objectAtIndexedSubscript:{objc_msgSend(v13, "intValue")}];
        v19 = +[VCPayloadUtils payloadForCodecType:](VCPayloadUtils, "payloadForCodecType:", [v18 codecType]);
        v20 = [v18 rtpPayload];
        [a4 addTxPayloadType:v19 networkPayload:v20];
        [a4 addRxPayloadType:v19 networkPayload:v20];
        if ([v18 profileLevelId])
        {
          [a4 setProfileLevel:{+[VCVideoStreamConfig profileLevelStringForId:](VCVideoStreamConfig, "profileLevelStringForId:", objc_msgSend(v18, "profileLevelId"))}];
          if (![a4 profileLevel])
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v21 = VRTraceErrorLogLevelToCSTR();
              v22 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *&v26[8] = 136316418;
                *&v26[12] = v21;
                v27 = 2080;
                *v28 = "[VCSessionParticipantRemote setupStreamConfigWithCodecs:streamConfig:codecConfigs:featureStringsDict:]";
                *&v28[8] = 1024;
                LODWORD(v29) = 2510;
                WORD2(v29) = 2048;
                *(&v29 + 6) = [v18 profileLevelId];
                HIWORD(v29) = 2112;
                v30 = v13;
                LOWORD(v31) = 1024;
                *(&v31 + 2) = *v26;
                _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d Could not retrieve a valid profileLevel string from profileLevelId=%lu with codecIndex=%@ codecConfigCount=%d", &v26[8], 0x36u);
              }
            }

            return v11 & 1;
          }
        }

        [a4 setRtcpEnabled:{objc_msgSend(v18, "rtcpSREnabled")}];
        [a4 setRtcpPSFB_FIREnabled:{objc_msgSend(v18, "rtcpPSFB_FIREnabled")}];
        if ([a4 isRTCPEnabled])
        {
          [a4 setRtcpSendInterval:0.0];
          [a4 setRtcpTimeOutEnabled:1];
          [a4 setRtcpTimeOutInterval:30.0];
        }

        [a4 addTxCodecFeatureListString:objc_msgSend(a6 codecType:{"objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v19)), objc_msgSend(v18, "codecType")}];
        [a4 addRxCodecFeatureListString:objc_msgSend(a6 codecType:{"objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v19)), objc_msgSend(v18, "codecType")}];
        v11 = 1;
      }

      v10 = [a3 countByEnumeratingWithState:&v34 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)newMediaStreamConfigWithStreamConfig:(id)a3 streamGroupConfig:(id)a4 maxIDSStreamIDCount:(unsigned int)a5
{
  v5 = *&a5;
  v9 = objc_alloc_init(VCMediaStreamRateControlConfig);
  if (!v9)
  {
    [VCSessionParticipantRemote newMediaStreamConfigWithStreamConfig:streamGroupConfig:maxIDSStreamIDCount:];
LABEL_9:
    v11 = v15;
    v13 = 0;
    goto LABEL_5;
  }

  v10 = -[VCSessionParticipantRemote newMultiwayConfigWithStreamGroupStreamConfig:maxIDSStreamIDCount:groupID:](self, "newMultiwayConfigWithStreamGroupStreamConfig:maxIDSStreamIDCount:groupID:", a3, v5, [a4 groupID]);
  if (!v10)
  {
    [VCSessionParticipantRemote newMediaStreamConfigWithStreamConfig:streamGroupConfig:maxIDSStreamIDCount:];
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [(VCSessionParticipantRemote *)self newMediaStreamConfigWithStreamGroupConfig:a4 streamConfig:a3 rateControlConfig:v9 multiwayConfig:v10];
  if (!v12)
  {
    [VCSessionParticipantRemote newMediaStreamConfigWithStreamConfig:streamGroupConfig:maxIDSStreamIDCount:];
    goto LABEL_9;
  }

  v13 = v12;
LABEL_5:

  return v13;
}

- (id)newMediaStreamInfoWithNegotiationConfig:(id)a3 streamToken:(int64_t)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(VCSessionParticipantMediaStreamInfo);
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:];
        }
      }

      goto LABEL_38;
    }

    if (objc_opt_respondsToSelector())
    {
      v32 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v32 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v46 = v35;
        v47 = 2080;
        v48 = "[VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:]";
        v49 = 1024;
        v50 = 2561;
        v51 = 2112;
        v52 = v32;
        v53 = 2048;
        v54 = self;
        v29 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to create media stream info";
LABEL_41:
        _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x30u);
      }
    }

LABEL_38:
    v24 = 0;
    v23 = 0;
    goto LABEL_39;
  }

  v39 = a4;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [a3 streamConfigs];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v42;
LABEL_4:
    v13 = 0;
    v14 = -v11;
    while (1)
    {
      if (*v42 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v41 + 1) + 8 * v13);
      v16 = v14 + [objc_msgSend(a3 "streamConfigs")];
      if ([v15 v2StreamID])
      {
        v16 = (2 * v16);
        if (v16 >= 0xD)
        {
          break;
        }
      }

      v17 = [(VCSessionParticipantRemote *)self newMediaStreamConfigWithStreamConfig:v15 streamGroupConfig:a3 maxIDSStreamIDCount:v16];
      if (!v17)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:];
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v25 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
          }

          else
          {
            v25 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v46 = v27;
              v47 = 2080;
              v48 = "[VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:]";
              v49 = 1024;
              v50 = 2571;
              v51 = 2112;
              v52 = v25;
              v53 = 2048;
              v54 = self;
              v29 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to create media stream config";
              goto LABEL_41;
            }
          }
        }

        goto LABEL_38;
      }

      v18 = v17;
      [(VCSessionParticipantMediaStreamInfo *)v7 addStreamConfig:v17];

      ++v13;
      --v14;
      if (v10 == v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v41 objects:v40 count:16];
        v11 = -v14;
        if (v10)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v26 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v46 = v30;
          v47 = 2080;
          v48 = "[VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:]";
          v49 = 1024;
          v50 = 2568;
          v51 = 2112;
          v52 = v26;
          v53 = 2048;
          v54 = self;
          v29 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) maxIDSStreamIDCount is beyond max allowed";
          goto LABEL_41;
        }
      }
    }

    goto LABEL_38;
  }

LABEL_12:
  if (![(VCSessionParticipantRemote *)self addOneToOneStreamConfigToMediaStreamInfo:v7 negotiatorStreamGroupConfig:a3]&& VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v21 = FourccToCStr([a3 groupID]);
      *buf = 136315906;
      v46 = v19;
      v47 = 2080;
      v48 = "[VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:]";
      v49 = 1024;
      v50 = 2579;
      v51 = 2080;
      v52 = v21;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Failed to add one to one groupID=%s stream configuration to media stream info", buf, 0x26u);
    }
  }

  v22 = [(VCSessionParticipantRemote *)self newMediaStreamWithNegotiationConfig:a3 streamToken:v39];
  if (!v22)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:];
        }
      }

      goto LABEL_38;
    }

    if (objc_opt_respondsToSelector())
    {
      v33 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v33 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v46 = v36;
        v47 = 2080;
        v48 = "[VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:]";
        v49 = 1024;
        v50 = 2584;
        v51 = 2112;
        v52 = v33;
        v53 = 2048;
        v54 = self;
        v29 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to create media stream";
        goto LABEL_41;
      }
    }

    goto LABEL_38;
  }

  v23 = v22;
  [v22 setLogPrefix:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"participantID:%@ streamToken:%d", self->super._uuid, v39)}];
  if ([(VCSessionParticipantRemote *)self setupStreamRTP:v23])
  {
    [(VCSessionParticipantMediaStreamInfo *)v7 setStream:v23];
    v24 = v7;
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
          [VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v34 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v34 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v46 = v37;
          v47 = 2080;
          v48 = "[VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:]";
          v49 = 1024;
          v50 = 2588;
          v51 = 2112;
          v52 = v34;
          v53 = 2048;
          v54 = self;
          _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) invalid capabilies dictionary for media stream!", buf, 0x30u);
        }
      }
    }

    v24 = 0;
  }

LABEL_39:

  return v24;
}

- (void)setupMediaStreamGroupConfig:(id)a3 withNegotiationConfig:(id)a4
{
  [a3 setStreamGroupID:{objc_msgSend(a4, "groupID")}];
  [a3 setSyncGroupID:{objc_msgSend(a4, "syncGroupID")}];
  if ([a4 groupID] == 1667329381 || objc_msgSend(a4, "groupID") == 1667329399)
  {
    participantStreamTokens = self->super._participantStreamTokens;
    v8 = &unk_1F5799B58;
LABEL_4:
    ID = [-[NSMutableDictionary objectForKeyedSubscript:](participantStreamTokens objectForKeyedSubscript:{v8), "integerValue"}];
    goto LABEL_5;
  }

  if ([a4 groupID] == 1835623282 || objc_msgSend(a4, "groupID") == 1835623287)
  {
    participantStreamTokens = self->super._participantStreamTokens;
    v8 = &unk_1F5799B10;
    goto LABEL_4;
  }

  ID = VCUniqueIDGenerator_GenerateID();
LABEL_5:
  [a3 setStreamToken:ID];
  [a3 setMediaType:{objc_msgSend(a4, "mediaType")}];
  [a3 setMediaSubtype:{objc_msgSend(a4, "mediaSubtype")}];
  [a3 setDelegate:self];
  [a3 setDelegateQueue:self->super._participantQueue];
  [a3 setParticipantUUID:self->super._uuid];
  [a3 setIdsParticipantID:self->super._idsParticipantID];
  [a3 setJbTargetEstimatorSynchronizer:{-[NSMutableDictionary objectForKeyedSubscript:](self->_jbSynchronizerPerSyncGroupID, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "streamGroupID")))}];
  [a3 setNetworkFeedbackController:self->super._networkFeedbackController];
  [a3 setExperimentManager:self->super._experimentManager];
  sessionUUID = self->super._sessionUUID;

  [a3 setSessionUUID:sessionUUID];
}

- (int)spatialChannelIndex:(unsigned int *)a3 forMediaType:(unsigned int)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v7 = [(VCSessionParticipantRemote *)self spatialMetadataEntryForMediaType:*&a4];
  if (a3 && v7)
  {
    v8 = VCSpatialAudioMetadata_ChannelIndex(v7, &v18);
    if (v8 < 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_8;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        *buf = 136316162;
        v20 = v11;
        v21 = 2080;
        v22 = "[VCSessionParticipantRemote spatialChannelIndex:forMediaType:]";
        v23 = 1024;
        v24 = 2630;
        v25 = 1024;
        *v26 = a4;
        *&v26[4] = 1024;
        *&v26[6] = v8;
        v13 = "VCSessionParticipantRemote [%s] %s:%d Failed to retrieve channel index for mediaType=%d. status=%08x";
        v14 = v12;
        v15 = 40;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_8;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        *buf = 136316674;
        v20 = v16;
        v21 = 2080;
        v22 = "[VCSessionParticipantRemote spatialChannelIndex:forMediaType:]";
        v23 = 1024;
        v24 = 2630;
        v25 = 2112;
        *v26 = v9;
        *&v26[8] = 2048;
        v27 = self;
        v28 = 1024;
        v29 = a4;
        v30 = 1024;
        v31 = v8;
        v13 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to retrieve channel index for mediaType=%d. status=%08x";
        v14 = v17;
        v15 = 60;
      }

      _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }

LABEL_8:
    *a3 = v18;
    return v8;
  }

  v8 = 0;
  if (a3)
  {
    goto LABEL_8;
  }

  return v8;
}

- (int)setupSpatialInfoForStreamGroupConfig:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v5 = [a3 audioStreamGroupConfig];
  v6 = +[VCSessionParticipant mediaTypesFromStreamGroupID:](VCSessionParticipant, "mediaTypesFromStreamGroupID:", [a3 streamGroupID]);
  if ([v6 count] == 1)
  {
    v7 = [objc_msgSend(v6 "anyObject")];
    v8 = [(VCSessionParticipantRemote *)self spatialChannelIndex:&v21 forMediaType:v7];
    if ((v8 & 0x80000000) == 0)
    {
      [v5 setSpatialAudioSourceID:{objc_msgSend(a3, "streamToken")}];
      [v5 setAudioChannelIndex:v21];
      goto LABEL_4;
    }

    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_4;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      *buf = 136316674;
      v23 = v19;
      v24 = 2080;
      v25 = "[VCSessionParticipantRemote setupSpatialInfoForStreamGroupConfig:]";
      v26 = 1024;
      v27 = 2650;
      v28 = 2112;
      *v29 = v11;
      *&v29[8] = 2048;
      v30 = self;
      v31 = 1024;
      *v32 = v7;
      *&v32[4] = 1024;
      *&v32[6] = v8;
      v14 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to retrieve spatial information for mediaType=%d. status=%08x";
      v15 = v20;
      v16 = 60;
      goto LABEL_29;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v23 = v12;
        v24 = 2080;
        v25 = "[VCSessionParticipantRemote setupSpatialInfoForStreamGroupConfig:]";
        v26 = 1024;
        v27 = 2650;
        v28 = 1024;
        *v29 = v7;
        *&v29[4] = 1024;
        *&v29[6] = v8;
        v14 = "VCSessionParticipantRemote [%s] %s:%d Failed to retrieve spatial information for mediaType=%d. status=%08x";
        v15 = v13;
        v16 = 40;
LABEL_29:
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }
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
          [VCSessionParticipantRemote setupSpatialInfoForStreamGroupConfig:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v23 = v17;
          v24 = 2080;
          v25 = "[VCSessionParticipantRemote setupSpatialInfoForStreamGroupConfig:]";
          v26 = 1024;
          v27 = 2646;
          v28 = 2112;
          *v29 = v10;
          *&v29[8] = 2048;
          v30 = self;
          v31 = 2048;
          *v32 = [v6 count];
          *&v32[8] = 1024;
          v33 = 0;
          _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Unexpected number of media types. Count=%lu. status=%08x", buf, 0x40u);
        }
      }
    }

    v8 = 0;
  }

LABEL_4:
  if (+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") == 8 && [a3 streamGroupID] == 1937339233)
  {
    [v5 setAudioChannelIndex:0];
    return 0;
  }

  return v8;
}

- (id)newStreamGroupConfigWithNegotiationConfig:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if ([a3 mediaType] == 1936684398)
  {
    v5 = objc_alloc_init(VCAudioStreamReceiveGroupConfig);
    if (!v5)
    {
      [VCSessionParticipantRemote newStreamGroupConfigWithNegotiationConfig:];
      goto LABEL_21;
    }

    v6 = v5;
    v7 = [(VCAudioStreamReceiveGroupConfig *)v5 audioStreamGroupConfig];
    [(VCAudioStreamGroupCommonConfig *)v7 setAudioSessionID:self->super._transportSessionID];
    -[VCAudioStreamGroupCommonConfig setPreferredIOSampleRate:](v7, "setPreferredIOSampleRate:", -[VCSessionParticipant preferredIOSampleRateForGroupID:](self, "preferredIOSampleRateForGroupID:", [a3 groupID]));
    -[VCAudioStreamGroupCommonConfig setPreferredIOSamplesPerFrame:](v7, "setPreferredIOSamplesPerFrame:", -[VCSessionParticipant preferredIOSamplesPerFrameForGroupID:](self, "preferredIOSamplesPerFrameForGroupID:", [a3 groupID]));
    [(VCAudioStreamGroupCommonConfig *)v7 setIsGKVoiceChat:self->super._isGKVoiceChat];
    [(VCAudioStreamGroupCommonConfig *)v7 setProcessID:self->super._processId];
    if ([a3 groupID] == 1937339233)
    {
      v8 = v6;
      v9 = 5;
    }

    else
    {
      if ([a3 groupID] != 1936290409)
      {
        if (self->super._shouldConfigureMicrophoneForThirdPartyCall)
        {
          v11 = 5;
        }

        else
        {
          v11 = 4;
        }

        [v6 setCaptureSource:v11];
        [(VCAudioStreamGroupCommonConfig *)v7 setPowerSpectrumStreamToken:[(VCSessionParticipant *)self participantVideoToken]];
        [(VCAudioStreamGroupCommonConfig *)v7 setAudioMachineLearningCoordinator:self->super._audioMachineLearningCoordinator];
LABEL_14:
        [(VCSessionParticipantRemote *)self setupMediaStreamGroupConfig:v6 withNegotiationConfig:a3];
        v12 = [(VCSessionParticipantRemote *)self setupSpatialInfoForStreamGroupConfig:v6];
        if (v12 < 0)
        {
          v16 = v12;
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCSessionParticipantRemote newStreamGroupConfigWithNegotiationConfig:];
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v17 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
                *v20 = 136316418;
                *&v20[4] = v18;
                v21 = 2080;
                v22 = "[VCSessionParticipantRemote newStreamGroupConfigWithNegotiationConfig:]";
                v23 = 1024;
                v24 = 2704;
                v25 = 2112;
                v26 = v17;
                v27 = 2048;
                v28 = self;
                v29 = 1024;
                v30 = v16;
                _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed configure stream group config spatial info. status=%08x", v20, 0x36u);
              }
            }
          }

          goto LABEL_22;
        }

        goto LABEL_15;
      }

      v8 = v6;
      v9 = 7;
    }

    [v8 setCaptureSource:v9];
    goto LABEL_14;
  }

  v10 = objc_alloc_init(VCVideoStreamReceiveGroupConfig);
  if (!v10)
  {
    [VCSessionParticipantRemote newStreamGroupConfigWithNegotiationConfig:];
    goto LABEL_21;
  }

  v6 = v10;
  [(VCSessionParticipantRemote *)self setupMediaStreamGroupConfig:v10 withNegotiationConfig:a3];
LABEL_15:
  v13 = -[VCSessionParticipantRemote newMediaStreamInfoWithNegotiationConfig:streamToken:](self, "newMediaStreamInfoWithNegotiationConfig:streamToken:", a3, [v6 streamToken]);
  if (!v13)
  {
    [VCSessionParticipantRemote newStreamGroupConfigWithNegotiationConfig:];
LABEL_21:
    v6 = *v20;
LABEL_22:

    return 0;
  }

  v14 = v13;
  [v6 addMediaStreamInfo:v13];

  return v6;
}

- (id)newMediaStreamWithNegotiationConfig:(id)a3 streamToken:(int64_t)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
  if ([a3 mediaType] == 1936684398)
  {
    v8 = [[VCAudioStream alloc] initWithClientPid:self->super._processId ssrc:0 transportSessionID:self->super._transportSessionID streamToken:a4 experimentManager:self->super._experimentManager logPrefix:v7];
    [(VCMediaStream *)v8 setNetworkFeedbackController:self->super._networkFeedbackController];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return v8;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return v8;
      }

      *buf = 136316162;
      v22 = v14;
      v23 = 2080;
      v24 = "[VCSessionParticipantRemote newMediaStreamWithNegotiationConfig:streamToken:]";
      v25 = 1024;
      v26 = 2726;
      v27 = 2048;
      v28 = v8;
      v29 = 2080;
      v30 = FourccToCStr([a3 groupID]);
      v16 = "VCSessionParticipantRemote [%s] %s:%d audio stream successfully created: %p! streamGroupID=%s";
      v17 = v15;
      v18 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return v8;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return v8;
      }

      *buf = 136316674;
      v22 = v19;
      v23 = 2080;
      v24 = "[VCSessionParticipantRemote newMediaStreamWithNegotiationConfig:streamToken:]";
      v25 = 1024;
      v26 = 2726;
      v27 = 2112;
      v28 = v9;
      v29 = 2048;
      v30 = self;
      v31 = 2048;
      v32 = v8;
      v33 = 2080;
      v34 = FourccToCStr([a3 groupID]);
      v16 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) audio stream successfully created: %p! streamGroupID=%s";
      v17 = v20;
      v18 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    return v8;
  }

  if ([a3 groupID] != 1667330164)
  {
    v8 = [[VCVideoStream alloc] initWithTransportSessionID:self->super._transportSessionID idsParticipantID:self->super._idsParticipantID ssrc:0 streamToken:a4 logPrefix:v7];
    [(VCMediaStream *)v8 setNetworkFeedbackController:self->super._networkFeedbackController];
    return v8;
  }

  v10 = [VCCaptionsStream alloc];
  transportSessionID = self->super._transportSessionID;
  idsParticipantID = self->super._idsParticipantID;

  return [(VCCaptionsStream *)v10 initWithTransportSessionID:transportSessionID idsParticipantID:idsParticipantID ssrc:0 streamToken:a4];
}

- (BOOL)addOneToOneStreamConfigToMediaStreamInfo:(id)a3 negotiatorStreamGroupConfig:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v7;
      v28 = 2080;
      v29 = "[VCSessionParticipantRemote addOneToOneStreamConfigToMediaStreamInfo:negotiatorStreamGroupConfig:]";
      v30 = 1024;
      v31 = 2741;
      v32 = 2080;
      v33 = FourccToCStr([a4 groupID]);
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Add one to one stream config to media stream info for groupID=%s", buf, 0x26u);
    }
  }

  if (![(VCMediaNegotiatorResultsFaceTimeSettings *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedFaceTimeSettings] oneToOneModeSupported])
  {
    [(VCSessionParticipantRemote *)&self->super._mediaNegotiator addOneToOneStreamConfigToMediaStreamInfo:buf negotiatorStreamGroupConfig:&v26];
    goto LABEL_42;
  }

  if ([a4 mediaType] == 1986618469 || objc_msgSend(a4, "mediaType") == 1835365473)
  {
    v9 = -[VCSessionMediaNegotiator negotiatedResultsForGroupID:](self->super._mediaNegotiator, "negotiatedResultsForGroupID:", [a4 groupID]);
    if (v9)
    {
      v10 = v9;
      if ([v9 isSupported])
      {
        v11 = -[VCSessionParticipant newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:](self, "newOneToOneVideoStreamConfigWithStreamDirection:streamGroupId:streamSsrc:encodingType:videoSettings:", 2, [a4 groupID], objc_msgSend(v10, "remoteSSRC"), 2, v10);
        goto LABEL_10;
      }
    }

    [(VCSessionParticipantRemote *)a4 addOneToOneStreamConfigToMediaStreamInfo:buf negotiatorStreamGroupConfig:&v26];
LABEL_42:
    v11 = *buf;
    v16 = v26;
    goto LABEL_22;
  }

  if ([a4 mediaType] == 1936684398)
  {
    v18 = [a4 groupID];
    v19 = [(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedResultsForGroupID:v18];
    if (!v19)
    {
      v16 = v18 == 1937339233;
      if (v18 == 1937339233)
      {
        v21 = 7;
      }

      else
      {
        v21 = 3;
      }

      if (v21 > VRTraceGetErrorLogLevelForModule())
      {
        v11 = 0;
        goto LABEL_22;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      v24 = *MEMORY[0x1E6986650];
      if (v18 == 1937339233)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = FourccToCStr(1937339233);
          *buf = 136315906;
          *&buf[4] = v22;
          v28 = 2080;
          v29 = "[VCSessionParticipantRemote addOneToOneStreamConfigToMediaStreamInfo:negotiatorStreamGroupConfig:]";
          v30 = 1024;
          v31 = 2755;
          v32 = 2080;
          v33 = v25;
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d One to one audio streams not supported for groupID=%s", buf, 0x26u);
        }

        v11 = 0;
        goto LABEL_17;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantRemote addOneToOneStreamConfigToMediaStreamInfo:negotiatorStreamGroupConfig:];
      }

LABEL_21:
      v11 = 0;
      v16 = 0;
      goto LABEL_22;
    }

    v20 = -[VCSessionParticipant newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:](self, "newOneToOneAudioStreamConfigWithAudioSettings:streamDirection:streamGroupId:streamSsrc:", v19, 2, [a4 groupID], objc_msgSend(v19, "remoteSSRC"));
    v11 = v20;
    if (v18 == 1835623282)
    {
      [v20 setOutOfProcessCodecsEnabled:self->_outOfProcessCodecsEnabled];
    }

    [v11 setIsEnhancedJBAdaptationsEnabled:self->_isEnhancedJBAdaptationsEnabled];
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  if ([a4 groupID] == 1667329381)
  {
    [(VCSessionParticipantRemote *)self updateStreamConfigWithMLEnhance:v11];
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v11)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantRemote addOneToOneStreamConfigToMediaStreamInfo:negotiatorStreamGroupConfig:];
      }
    }

    goto LABEL_21;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = FourccToCStr([a4 groupID]);
      *buf = 136315906;
      *&buf[4] = v13;
      v28 = 2080;
      v29 = "[VCSessionParticipantRemote addOneToOneStreamConfigToMediaStreamInfo:negotiatorStreamGroupConfig:]";
      v30 = 1024;
      v31 = 2769;
      v32 = 2080;
      v33 = v15;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Added one to one stream config to %s streamGroup", buf, 0x26u);
    }
  }

  [a3 addStreamConfig:v11];
LABEL_17:
  v16 = 1;
LABEL_22:

  return v16;
}

- (id)newVideoStreamGroupWithStreamGroupConfig:(id)a3
{
  [a3 setJbTargetEstimatorSynchronizer:{-[NSMutableDictionary objectForKeyedSubscript:](self->_jbSynchronizerPerSyncGroupID, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "syncGroupID")))}];
  [a3 setNetworkFeedbackController:self->super._networkFeedbackController];
  [a3 setExperimentManager:self->super._experimentManager];
  v5 = [[VCVideoStreamReceiveGroup alloc] initWithConfig:a3];
  if (v5)
  {
    [(NSMutableArray *)self->super._videoStreamGroups addObject:v5];
  }

  else
  {
    [VCSessionParticipantRemote newVideoStreamGroupWithStreamGroupConfig:?];
  }

  return v5;
}

- (id)newCaptionsStreamGroupWithStreamGroupConfig:(id)a3
{
  [a3 setJbTargetEstimatorSynchronizer:{-[NSMutableDictionary objectForKeyedSubscript:](self->_jbSynchronizerPerSyncGroupID, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "syncGroupID")))}];
  v5 = [(VCVideoStreamReceiveGroup *)[VCCaptionsStreamReceiveGroup alloc] initWithConfig:a3];
  if (!v5)
  {
    [VCSessionParticipantRemote newCaptionsStreamGroupWithStreamGroupConfig:?];
  }

  return v5;
}

- (BOOL)shouldEnablePacketRetransmissionForStreamGroupID:(unsigned int)a3
{
  result = 1;
  if (a3 <= 1667329398)
  {
    if (a3 == 1650745716)
    {
      return result;
    }

    v4 = 1667329381;
    goto LABEL_7;
  }

  if (a3 != 1667329399 && a3 != 1718909044)
  {
    v4 = 1935897189;
LABEL_7:
    if (a3 != v4)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)shouldSetupStreamGroupWithID:(unsigned int)a3
{
  v22 = *MEMORY[0x1E69E9840];
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"simulateWebRTCOnlyClient", 0);
  v6 = BoolValueForKey;
  if (a3 > 1835623286)
  {
    if (a3 != 1835623287)
    {
      if (a3 == 1935897189 || a3 == 1937339233)
      {
        v7 = +[VCHardwareSettings deviceClass]== 6;
LABEL_10:
        if (v7 || v6)
        {
          goto LABEL_11;
        }

LABEL_20:
        LOBYTE(v10) = 1;
        return v10;
      }

LABEL_16:
      if (!BoolValueForKey)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    v11 = self;
    v12 = 1835623282;
  }

  else
  {
    if (a3 == 1650745716)
    {
LABEL_5:
      v7 = +[VCHardwareSettings deviceClass]!= 8;
      goto LABEL_10;
    }

    if (a3 != 1667329399)
    {
      if (a3 == 1718909044)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }

    v11 = self;
    v12 = 1667329381;
  }

  if (v6 | ![(VCSessionParticipant *)v11 didNegotiateStreamGroupWithID:v12])
  {
    goto LABEL_20;
  }

LABEL_11:
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
LABEL_14:
    LOBYTE(v10) = 0;
    return v10;
  }

  v8 = VRTraceErrorLogLevelToCSTR();
  v9 = *MEMORY[0x1E6986650];
  v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v14 = 136315906;
    v15 = v8;
    v16 = 2080;
    v17 = "[VCSessionParticipantRemote shouldSetupStreamGroupWithID:]";
    v18 = 1024;
    v19 = 2889;
    v20 = 2080;
    v21 = FourccToCStr(a3);
    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Skipping streamGroupID=%s", &v14, 0x26u);
    goto LABEL_14;
  }

  return v10;
}

- (void)createJitterBufferTargetEstimatorSynchronizer:(tagVCJBTargetEstimatorSynchronizer *)a3 syncGroupID:(unsigned int)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  memset(&v25[4], 0, 192);
  *v25 = 1;
  CStringPtr = CFStringGetCStringPtr(self->super._sessionUUID, 0x8000100u);
  v8 = CFStringGetCStringPtr(self->super._uuid, 0x8000100u);
  v9 = FourccToCStr(a4);
  snprintf(&v25[4], 0xC8uLL, "session_%s-participant_%s-groupid_%s", CStringPtr, v8, v9);
  if ((VCJBTargetEstimatorSynchronizer_Create(*MEMORY[0x1E695E480], a3, v25) & 0x80000000) != 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionParticipantRemote createJitterBufferTargetEstimatorSynchronizer:syncGroupID:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
          *buf = 136316418;
          v14 = v11;
          v15 = 2080;
          v16 = "[VCSessionParticipantRemote createJitterBufferTargetEstimatorSynchronizer:syncGroupID:]";
          v17 = 1024;
          v18 = 2902;
          v19 = 2112;
          v20 = v10;
          v21 = 2048;
          v22 = self;
          v23 = 2048;
          v24 = self;
          _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to create Jitter Buffer Target Synchronizer remoteParticipant=%p", buf, 0x3Au);
        }
      }
    }
  }
}

- (void)setupJBTargetSynchronizers
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedStreamGroups];
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v38;
    *&v4 = 136316162;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        if (([v8 groupID] == 1935897189 || self->_isVideoJitterForPlayoutEnabled) && !-[NSMutableDictionary objectForKey:](self->_jbSynchronizerPerSyncGroupID, "objectForKey:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v8, "syncGroupID"))))
        {
          cf = 0;
          -[VCSessionParticipantRemote createJitterBufferTargetEstimatorSynchronizer:syncGroupID:](self, "createJitterBufferTargetEstimatorSynchronizer:syncGroupID:", &cf, [v8 syncGroupID]);
          -[NSMutableDictionary setObject:forKeyedSubscript:](self->_jbSynchronizerPerSyncGroupID, "setObject:forKeyedSubscript:", cf, [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "syncGroupID")}]);
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "syncGroupID")}];
                *buf = v19;
                v23 = v16;
                v24 = 2080;
                v25 = "[VCSessionParticipantRemote setupJBTargetSynchronizers]";
                v26 = 1024;
                v27 = 2914;
                v28 = 2112;
                v29 = v18;
                v30 = 2048;
                v31 = cf;
                v13 = v17;
                v14 = "VCSessionParticipantRemote [%s] %s:%d New Target Synchronizer syncGroupID=%@ jbTargetEstimatorSynchronizer=%p";
                v15 = 48;
LABEL_18:
                _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
              }
            }
          }

          else
          {
            v9 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v9 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v10 = VRTraceErrorLogLevelToCSTR();
              v11 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "syncGroupID")}];
                *buf = 136316674;
                v23 = v10;
                v24 = 2080;
                v25 = "[VCSessionParticipantRemote setupJBTargetSynchronizers]";
                v26 = 1024;
                v27 = 2914;
                v28 = 2112;
                v29 = v9;
                v30 = 2048;
                v31 = self;
                v32 = 2112;
                v33 = v12;
                v34 = 2048;
                v35 = cf;
                v13 = v11;
                v14 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) New Target Synchronizer syncGroupID=%@ jbTargetEstimatorSynchronizer=%p";
                v15 = 68;
                goto LABEL_18;
              }
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          continue;
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v5);
  }
}

- (BOOL)setupStreamGroups
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)[(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedStreamGroups] count])
  {
    [(VCSessionParticipantRemote *)self setupJBTargetSynchronizers];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v3 = [(VCSessionMediaNegotiator *)self->super._mediaNegotiator negotiatedStreamGroups];
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v36;
      *&v5 = 136315650;
      v21 = v5;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v35 + 1) + 8 * v8);
          if ([v9 groupID] == 1936290409 && !+[VCHardwareSettings isSiriVoicePlayoutSupported](VCHardwareSettings, "isSiriVoicePlayoutSupported"))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v10 = VRTraceErrorLogLevelToCSTR();
              v11 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v21;
                v23 = v10;
                v24 = 2080;
                v25 = "[VCSessionParticipantRemote setupStreamGroups]";
                v26 = 1024;
                v27 = 2933;
                _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d Siri config was negotiated, but device does not support playout", buf, 0x1Cu);
              }
            }
          }

          else if (![(VCSessionParticipantRemote *)self setupStreamGroupWithConfig:v9])
          {
            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
                if (!v13)
                {
                  return v13;
                }

                [VCSessionParticipantRemote setupStreamGroups];
              }
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v16 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
              }

              else
              {
                v16 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v17 = VRTraceErrorLogLevelToCSTR();
                v18 = *MEMORY[0x1E6986650];
                v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
                if (!v13)
                {
                  return v13;
                }

                v19 = FourccToCStr([v9 groupID]);
                *buf = 136316418;
                v23 = v17;
                v24 = 2080;
                v25 = "[VCSessionParticipantRemote setupStreamGroups]";
                v26 = 1024;
                v27 = 2937;
                v28 = 2112;
                v29 = v16;
                v30 = 2048;
                v31 = self;
                v32 = 2080;
                v33 = v19;
                _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to setup stream group=%s", buf, 0x3Au);
              }
            }

            LOBYTE(v13) = 0;
            return v13;
          }

          ++v8;
        }

        while (v6 != v8);
        v12 = [(NSArray *)v3 countByEnumeratingWithState:&v35 objects:v34 count:16];
        v6 = v12;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v13) = [(VCSessionParticipant *)self setupStreamGroupMediaSync];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v23 = v14;
        v24 = 2080;
        v25 = "[VCSessionParticipantRemote setupStreamGroups]";
        v26 = 1024;
        v27 = 2925;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCSessionParticipantRemote [%s] %s:%d There are no negotiated stream groups", buf, 0x1Cu);
      }
    }

    LOBYTE(v13) = 1;
  }

  return v13;
}

- (void)updateShouldEnableFaceZoom
{
  v23 = *MEMORY[0x1E69E9840];
  if ([+[VCDefaults forceDisableFaceZoom] sharedInstance]
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315650;
          v14 = v6;
          v15 = 2080;
          v16 = "[VCSessionParticipantRemote updateShouldEnableFaceZoom]";
          v17 = 1024;
          v18 = 2947;
          v8 = "VCSessionParticipantRemote [%s] %s:%d FaceZoom is disabled.";
          v9 = v7;
          v10 = 28;
LABEL_19:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136316162;
          v14 = v11;
          v15 = 2080;
          v16 = "[VCSessionParticipantRemote updateShouldEnableFaceZoom]";
          v17 = 1024;
          v18 = 2947;
          v19 = 2112;
          v20 = v3;
          v21 = 2048;
          v22 = self;
          v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) FaceZoom is disabled.";
          v9 = v12;
          v10 = 48;
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    if (self->_videoQuality || ![(VCSessionParticipantRemote *)self isVisible])
    {
      v4 = self;
      v5 = 0;
    }

    else
    {
      v4 = self;
      v5 = 1;
    }

    [(VCSessionParticipantRemote *)v4 setShouldEnableFaceZoom:v5];
  }
}

- (void)setShouldEnableFaceZoom:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [-[VCSessionParticipantRemote videoGroup](self "videoGroup")];
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

        [objc_msgSend(*(*(&v10 + 1) + 8 * v8++) "stream")];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)setSharingEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCSessionParticipantRemote_setSharingEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCSessionParticipantRemote_setLowPowerModeEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(participantQueue, block);
}

uint64_t __53__VCSessionParticipantRemote_setLowPowerModeEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 538) != v2)
  {
    *(v1 + 538) = v2;
    return [*(result + 32) updateShouldEnableMLEnhance];
  }

  return result;
}

- (void)updateStreamConfigWithMLEnhance:(id)a3
{
  if ([objc_msgSend(a3 "multiwayConfig")])
  {
    [a3 setShouldEnableMLEnhance:{-[VCSessionParticipantRemote shouldEnableMLEnhance:](self, "shouldEnableMLEnhance:", 1)}];
    [a3 setSupportedMLEnhanceTypes:1];
    if (self->_shouldDisableU14xScaler)
    {
      return;
    }

    v7 = [a3 supportedMLEnhanceTypes] | 4;
    goto LABEL_13;
  }

  if (![a3 videoResolution])
  {
    v5 = self;
    v6 = 2;
    goto LABEL_12;
  }

  if ([a3 videoResolution] == 16)
  {
    v5 = self;
    v6 = 5;
LABEL_12:
    [a3 setShouldEnableMLEnhance:{-[VCSessionParticipantRemote shouldEnableMLEnhance:](v5, "shouldEnableMLEnhance:", v6)}];
    v7 = 1;
    goto LABEL_13;
  }

  if ([a3 videoResolution] == 8 || objc_msgSend(a3, "videoResolution") == 11)
  {
    v5 = self;
    v6 = 4;
    goto LABEL_12;
  }

  if ([a3 videoResolution] != 3 && objc_msgSend(a3, "videoResolution") != 4)
  {
    return;
  }

  [a3 setShouldEnableMLEnhance:{-[VCSessionParticipantRemote shouldEnableMLEnhance:](self, "shouldEnableMLEnhance:", 3)}];
  v7 = 2;
LABEL_13:

  [a3 setSupportedMLEnhanceTypes:v7];
}

- (void)updateShouldEnableMLEnhance
{
  v21 = *MEMORY[0x1E69E9840];
  if ([VCDefaults BOOLeanValueForKey:@"forceDisableMLEnhance" defaultValue:0])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v4;
          v13 = 2080;
          v14 = "[VCSessionParticipantRemote updateShouldEnableMLEnhance]";
          v15 = 1024;
          v16 = 3003;
          v6 = "VCSessionParticipantRemote [%s] %s:%d ML Enhance is disabled by default.";
          v7 = v5;
          v8 = 28;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
          v11 = 136316162;
          v12 = v9;
          v13 = 2080;
          v14 = "[VCSessionParticipantRemote updateShouldEnableMLEnhance]";
          v15 = 1024;
          v16 = 3003;
          v17 = 2112;
          v18 = v3;
          v19 = 2048;
          v20 = self;
          v6 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) ML Enhance is disabled by default.";
          v7 = v10;
          v8 = 48;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    [(VCSessionParticipantRemote *)self updateShouldEnableMLEnhanceLowTierMultiway];
    [(VCSessionParticipantRemote *)self updateShouldEnableMLEnhanceLowTierFRCMultiway];
    [(VCSessionParticipantRemote *)self updateShouldEnableMLEnhanceMiddleTierMultiway];
    [(VCSessionParticipantRemote *)self updateShouldEnableMLEnhanceHighTierMultiway];

    [(VCSessionParticipantRemote *)self updateShouldEnableMLEnhanceOneToOne];
  }
}

- (BOOL)shouldEnableMLEnhance:(unsigned int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v24 = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        LOBYTE(v4) = ![(VCSessionParticipantRemote *)self shouldDisableMLEnhanceCommonFactors];
      }

      else if (a3 == 2)
      {

        return [(VCSessionParticipantRemote *)self shouldEnableMLEnhanceLowTier];
      }

      return v4 & 1;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_31;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v14 = 136315650;
      v15 = v7;
      v16 = 2080;
      v17 = "[VCSessionParticipantRemote shouldEnableMLEnhance:]";
      v18 = 1024;
      v19 = 3027;
      v9 = "VCSessionParticipantRemote [%s] %s:%d Invalid ML Tier checked for enhance enabled";
      v10 = v8;
      v11 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_31;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v14 = 136316162;
      v15 = v12;
      v16 = 2080;
      v17 = "[VCSessionParticipantRemote shouldEnableMLEnhance:]";
      v18 = 1024;
      v19 = 3027;
      v20 = 2112;
      v21 = v6;
      v22 = 2048;
      v23 = self;
      v9 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Invalid ML Tier checked for enhance enabled";
      v10 = v13;
      v11 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    goto LABEL_31;
  }

  if (a3 == 3)
  {
    if ([(VCSessionParticipantRemote *)self shouldEnableMLEnhanceMultiway:?])
    {
      LOBYTE(v4) = self->_isLowTierFRCEnabled;
      return v4 & 1;
    }

    goto LABEL_31;
  }

  if (a3 == 4)
  {
    if ([(VCSessionParticipantRemote *)self shouldEnableMLEnhanceMultiway:?])
    {
      LOBYTE(v4) = !self->_shouldDisableMiddleTierMLEnhance;
      return v4 & 1;
    }

    goto LABEL_31;
  }

  if (a3 != 5)
  {
    return v4 & 1;
  }

  if (![(VCSessionParticipantRemote *)self shouldEnableMLEnhanceMultiway:?])
  {
LABEL_31:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  return VCDefaults_GetBoolValueForKey(@"mlEnhanceForHighQualityTierEnabled", 1);
}

- (BOOL)shouldEnableMLEnhanceLowTier
{
  thermalLevel = self->_thermalLevel;
  v4 = self->super._sharingEnabled && +[VCHardwareSettings disableMLScalarDuringSharing];
  v5 = [(VCSessionParticipant *)self presentationState];
  v6 = (+[VCHardwareSettings deviceClass]- 1) > 1 || [(VCPositionalInfo *)self->_positionalInfo isInCanvas];
  v7 = +[VCHardwareSettings isDeviceLargeScreen];
  return thermalLevel <= 0x14 && !v4 && v6 && (v7 || v5 != 1);
}

- (BOOL)shouldEnableMLEnhanceMultiway:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(VCSessionParticipantRemote *)self shouldDisableMLEnhanceCommonFactors];
  v6 = [(VCSessionParticipantRemote *)self shouldDisableMLByDeviceType:v3];
  return (((v5 || v6) | [(VCSessionParticipantRemote *)self shouldDisableMLByUIState:v3]) & 1) == 0;
}

- (BOOL)shouldDisableMLEnhanceCommonFactors
{
  thermalLevel = self->_thermalLevel;
  v4 = self->super._sharingEnabled && +[VCHardwareSettings disableMLScalarDuringSharing];
  v5 = [(VCSessionParticipant *)self presentationState];
  if (thermalLevel > 0x14)
  {
    return 1;
  }

  if (v5 == 1)
  {
    return 1;
  }

  return v4;
}

- (BOOL)shouldDisableMLByDeviceType:(unsigned int)a3
{
  v4 = +[VCHardwareSettings deviceClass];
  v5 = v4;
  if (a3 - 3 < 2)
  {
    if (v4 != 4)
    {
      if (+[VCHardwareSettings isAppleSilicon])
      {
        if (v5 < 4)
        {
          v6 = 4u >> (v5 & 0xF);
          return v6 & 1;
        }

LABEL_17:
        LOBYTE(v6) = 1;
        return v6 & 1;
      }

      if (v5 != 1)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (a3 != 5 || v4 == 4)
  {
    goto LABEL_16;
  }

  if (!+[VCHardwareSettings isAppleSilicon])
  {
    goto LABEL_17;
  }

  LOBYTE(v6) = v5 != 3 && v5 != 0;
  return v6 & 1;
}

- (BOOL)shouldDisableMLByUIState:(unsigned int)a3
{
  v5 = +[VCHardwareSettings deviceClass];
  if (a3 - 3 > 2)
  {
    return 0;
  }

  v6 = v5 == 4 && [(VCSessionParticipant *)self presentationState]== 3;
  prominenceIndex = self->_prominenceIndex;
  return prominenceIndex >= +[VCHardwareSettings maxHighTierMLEnhanceParticipants]|| v6;
}

- (void)updateShouldEnableMLEnhanceLowTierMultiway
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipantRemote *)self shouldEnableMLEnhance:2];
  v4 = [(VCSessionParticipantRemote *)self videoGroup];
  v5 = [(VCSessionParticipantRemote *)self setShouldEnableMLEnhance:v3 streamWithVideoResolution:0 videoStreamGroup:v4];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316418;
        v15 = v7;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceLowTierMultiway]";
        v18 = 1024;
        v19 = 3122;
        v20 = 1024;
        *v21 = v3;
        *&v21[4] = 2048;
        *&v21[6] = [v4 streamToken];
        *&v21[14] = 1024;
        *&v21[16] = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d ML Enhance for low tier (96x96) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v10 = v8;
        v11 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316930;
        v15 = v12;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceLowTierMultiway]";
        v18 = 1024;
        v19 = 3122;
        v20 = 2112;
        *v21 = v6;
        *&v21[8] = 2048;
        *&v21[10] = self;
        *&v21[18] = 1024;
        v22 = v3;
        v23 = 2048;
        v24 = [v4 streamToken];
        v25 = 1024;
        v26 = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) ML Enhance for low tier (96x96) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v10 = v13;
        v11 = 70;
        goto LABEL_11;
      }
    }
  }
}

- (void)updateShouldEnableMLEnhanceLowTierFRCMultiway
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipantRemote *)self shouldEnableMLEnhance:3];
  v4 = [(VCSessionParticipantRemote *)self videoGroup];
  v5 = [(VCSessionParticipantRemote *)self setShouldEnableMLEnhance:v3 streamWithVideoResolution:3 videoStreamGroup:v4];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136316418;
        *&v25[4] = v7;
        *&v25[12] = 2080;
        *&v25[14] = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceLowTierFRCMultiway]";
        *&v25[22] = 1024;
        *v26 = 3131;
        *&v26[4] = 1024;
        *&v26[6] = v3;
        *&v26[10] = 2048;
        *&v26[12] = [v4 streamToken];
        *&v26[20] = 1024;
        *&v26[22] = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d ML Enhance for Low tier FRC (192x129) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v10 = v8;
        v11 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v25, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136316930;
        *&v25[4] = v12;
        *&v25[12] = 2080;
        *&v25[14] = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceLowTierFRCMultiway]";
        *&v25[22] = 1024;
        *v26 = 3131;
        *&v26[4] = 2112;
        *&v26[6] = v6;
        *&v26[14] = 2048;
        *&v26[16] = self;
        *&v26[24] = 1024;
        *&v26[26] = v3;
        *&v26[30] = 2048;
        v27 = [v4 streamToken];
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) ML Enhance for Low tier FRC (192x129) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v10 = v13;
        v11 = 70;
        goto LABEL_11;
      }
    }
  }

  v14 = [(VCSessionParticipantRemote *)self setShouldEnableMLEnhance:v3 streamWithVideoResolution:4 videoStreamGroup:v4, *v25, *&v25[16], *v26, *&v26[16], v27, v28];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 streamToken];
        *v25 = 136316418;
        *&v25[4] = v16;
        *&v25[12] = 2080;
        *&v25[14] = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceLowTierFRCMultiway]";
        *&v25[22] = 1024;
        *v26 = 3135;
        *&v26[4] = 1024;
        *&v26[6] = v3;
        *&v26[10] = 2048;
        *&v26[12] = v18;
        *&v26[20] = 1024;
        *&v26[22] = v14;
        v19 = "VCSessionParticipantRemote [%s] %s:%d ML Enhance for Low tier FRC (240x240) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v20 = v17;
        v21 = 50;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v25, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        v24 = [v4 streamToken];
        *v25 = 136316930;
        *&v25[4] = v22;
        *&v25[12] = 2080;
        *&v25[14] = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceLowTierFRCMultiway]";
        *&v25[22] = 1024;
        *v26 = 3135;
        *&v26[4] = 2112;
        *&v26[6] = v15;
        *&v26[14] = 2048;
        *&v26[16] = self;
        *&v26[24] = 1024;
        *&v26[26] = v3;
        *&v26[30] = 2048;
        v27 = v24;
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v14;
        v19 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) ML Enhance for Low tier FRC (240x240) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v20 = v23;
        v21 = 70;
        goto LABEL_22;
      }
    }
  }
}

- (void)updateShouldEnableMLEnhanceMiddleTierMultiway
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipantRemote *)self shouldEnableMLEnhance:4];
  v4 = [(VCSessionParticipantRemote *)self videoGroup];
  v5 = [(VCSessionParticipantRemote *)self setShouldEnableMLEnhance:v3 streamWithVideoResolution:8 videoStreamGroup:v4];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136316418;
        *&v25[4] = v7;
        *&v25[12] = 2080;
        *&v25[14] = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceMiddleTierMultiway]";
        *&v25[22] = 1024;
        *v26 = 3144;
        *&v26[4] = 1024;
        *&v26[6] = v3;
        *&v26[10] = 2048;
        *&v26[12] = [v4 streamToken];
        *&v26[20] = 1024;
        *&v26[22] = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d ML Enhance for Middle tier (320x320) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v10 = v8;
        v11 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v25, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 136316930;
        *&v25[4] = v12;
        *&v25[12] = 2080;
        *&v25[14] = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceMiddleTierMultiway]";
        *&v25[22] = 1024;
        *v26 = 3144;
        *&v26[4] = 2112;
        *&v26[6] = v6;
        *&v26[14] = 2048;
        *&v26[16] = self;
        *&v26[24] = 1024;
        *&v26[26] = v3;
        *&v26[30] = 2048;
        v27 = [v4 streamToken];
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) ML Enhance for Middle tier (320x320) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v10 = v13;
        v11 = 70;
        goto LABEL_11;
      }
    }
  }

  v14 = [(VCSessionParticipantRemote *)self setShouldEnableMLEnhance:v3 streamWithVideoResolution:11 videoStreamGroup:v4, *v25, *&v25[16], *v26, *&v26[16], v27, v28];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 streamToken];
        *v25 = 136316418;
        *&v25[4] = v16;
        *&v25[12] = 2080;
        *&v25[14] = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceMiddleTierMultiway]";
        *&v25[22] = 1024;
        *v26 = 3148;
        *&v26[4] = 1024;
        *&v26[6] = v3;
        *&v26[10] = 2048;
        *&v26[12] = v18;
        *&v26[20] = 1024;
        *&v26[22] = v14;
        v19 = "VCSessionParticipantRemote [%s] %s:%d ML Enhance for Middle tier (480x480) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v20 = v17;
        v21 = 50;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, v25, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
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
        v24 = [v4 streamToken];
        *v25 = 136316930;
        *&v25[4] = v22;
        *&v25[12] = 2080;
        *&v25[14] = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceMiddleTierMultiway]";
        *&v25[22] = 1024;
        *v26 = 3148;
        *&v26[4] = 2112;
        *&v26[6] = v15;
        *&v26[14] = 2048;
        *&v26[16] = self;
        *&v26[24] = 1024;
        *&v26[26] = v3;
        *&v26[30] = 2048;
        v27 = v24;
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v14;
        v19 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) ML Enhance for Middle tier (480x480) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v20 = v23;
        v21 = 70;
        goto LABEL_22;
      }
    }
  }
}

- (void)updateShouldEnableMLEnhanceHighTierMultiway
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipantRemote *)self shouldEnableMLEnhance:5];
  v4 = [(VCSessionParticipantRemote *)self videoGroup];
  v5 = [(VCSessionParticipantRemote *)self setShouldEnableMLEnhance:v3 streamWithVideoResolution:16 videoStreamGroup:v4];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316418;
        v15 = v7;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceHighTierMultiway]";
        v18 = 1024;
        v19 = 3157;
        v20 = 1024;
        *v21 = v3;
        *&v21[4] = 2048;
        *&v21[6] = [v4 streamToken];
        *&v21[14] = 1024;
        *&v21[16] = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d ML Enhance for high tier (720x720) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v10 = v8;
        v11 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316930;
        v15 = v12;
        v16 = 2080;
        v17 = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceHighTierMultiway]";
        v18 = 1024;
        v19 = 3157;
        v20 = 2112;
        *v21 = v6;
        *&v21[8] = 2048;
        *&v21[10] = self;
        *&v21[18] = 1024;
        v22 = v3;
        v23 = 2048;
        v24 = [v4 streamToken];
        v25 = 1024;
        v26 = v5;
        v9 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) ML Enhance for high tier (720x720) shouldEnableMLEnhance=%d streamToken=%ld update didSucceed=%d";
        v10 = v13;
        v11 = 70;
        goto LABEL_11;
      }
    }
  }
}

- (BOOL)setShouldEnableMLEnhance:(BOOL)a3 streamWithVideoResolution:(int64_t)a4 videoStreamGroup:(id)a5
{
  v24 = a3;
  v35 = *MEMORY[0x1E69E9840];
  [(VCSessionParticipantRemote *)self reportingResolutionForResolution:a4];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [a5 mediaStreamInfoArray];
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v22 = *v32;
    v23 = a5;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = [v13 streamConfigs];
        v15 = [v14 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v27;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v27 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v26 + 1) + 8 * j);
              if ([v19 videoResolution] == a4)
              {
                [v23 setShouldEnableMLEnhance:v24 streamID:{objc_msgSend(objc_msgSend(v19, "multiwayConfig"), "idsStreamID")}];
                if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_streamIDMLEnhanceState objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(objc_msgSend(v19, "multiwayConfig"), "idsStreamID"))), "BOOLValue"}] != v24)
                {
                  [(VCSessionParticipant *)self reportingAgent];
                  reportingMLEnhance();
                  v20 = [MEMORY[0x1E696AD98] numberWithBool:v24];
                  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamIDMLEnhanceState, "setObject:forKeyedSubscript:", v20, [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(objc_msgSend(v19, "multiwayConfig"), "idsStreamID")}]);
                }

                LOBYTE(v9) = 1;
                return v9;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v26 objects:v25 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v11 = v22;
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v30 count:16];
      LOBYTE(v9) = 0;
    }

    while (v10);
  }

  return v9;
}

- (void)updateShouldEnableMLEnhanceOneToOne
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(VCSessionParticipantRemote *)self shouldEnableMLEnhance:1];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v29 = [(VCSessionParticipantRemote *)self videoGroup];
  obj = [v29 mediaStreamInfoArray];
  v4 = [obj countByEnumeratingWithState:&v48 objects:v47 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v49;
    *&v5 = 136316162;
    v27 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v10 = [v9 streamConfigs];
        v11 = [v10 countByEnumeratingWithState:&v43 objects:v42 count:16];
        if (!v11)
        {
          continue;
        }

        v12 = v11;
        v13 = *v44;
        while (2)
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v44 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v43 + 1) + 8 * j);
            if ([objc_msgSend(v15 "multiwayConfig")])
            {
              [v29 setShouldEnableMLEnhance:v3 streamID:{objc_msgSend(objc_msgSend(v15, "multiwayConfig"), "idsStreamID")}];
              if (objc_opt_class() == self)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v23 = VRTraceErrorLogLevelToCSTR();
                  v24 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v25 = FourccToCStr([v29 streamGroupID]);
                    *buf = v27;
                    v31 = v23;
                    v32 = 2080;
                    v33 = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceOneToOne]";
                    v34 = 1024;
                    v35 = 3189;
                    v36 = 1024;
                    *v37 = v3;
                    *&v37[4] = 2080;
                    *&v37[6] = v25;
                    v20 = v24;
                    v21 = "VCSessionParticipantRemote [%s] %s:%d ML Enhance updated for OneToOne shouldEnableMLEnhance=%d streamGroupID=%s";
                    v22 = 44;
LABEL_24:
                    _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
                  }
                }
              }

              else
              {
                v16 = &stru_1F570E008;
                if (objc_opt_respondsToSelector())
                {
                  v16 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
                }

                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v17 = VRTraceErrorLogLevelToCSTR();
                  v18 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = FourccToCStr([v29 streamGroupID]);
                    *buf = 136316674;
                    v31 = v17;
                    v32 = 2080;
                    v33 = "[VCSessionParticipantRemote updateShouldEnableMLEnhanceOneToOne]";
                    v34 = 1024;
                    v35 = 3189;
                    v36 = 2112;
                    *v37 = v16;
                    *&v37[8] = 2048;
                    *&v37[10] = self;
                    v38 = 1024;
                    v39 = v3;
                    v40 = 2080;
                    v41 = v19;
                    v20 = v18;
                    v21 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) ML Enhance updated for OneToOne shouldEnableMLEnhance=%d streamGroupID=%s";
                    v22 = 64;
                    goto LABEL_24;
                  }
                }
              }

              if (v3 != [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamIDMLEnhanceState objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", objc_msgSend(objc_msgSend(v15, "multiwayConfig"), "idsStreamID"))), "BOOLValue"}])
              {
                [(VCSessionParticipant *)self reportingAgent];
                reportingMLEnhance();
                v26 = [MEMORY[0x1E696AD98] numberWithBool:v3];
                -[NSMutableDictionary setObject:forKeyedSubscript:](self->_streamIDMLEnhanceState, "setObject:forKeyedSubscript:", v26, [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(objc_msgSend(v15, "multiwayConfig"), "idsStreamID")}]);
              }

              goto LABEL_27;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v43 objects:v42 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

LABEL_27:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v48 objects:v47 count:16];
    }

    while (v6);
  }
}

- (void)setOneToOneModeEnabled:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCSessionParticipantRemote_setOneToOneModeEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  v5 = a3;
  block[4] = self;
  dispatch_sync(participantQueue, block);
}

void __53__VCSessionParticipantRemote_setOneToOneModeEnabled___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == *(v3 + 408))
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v16 = v6;
          v17 = 2080;
          v18 = "[VCSessionParticipantRemote setOneToOneModeEnabled:]_block_invoke";
          v19 = 1024;
          v20 = 3207;
          v8 = "VCSessionParticipantRemote [%s] %s:%d We are already in the correct OneToOne mode";
          v9 = v7;
          v10 = 28;
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          *buf = 136316162;
          v16 = v11;
          v17 = 2080;
          v18 = "[VCSessionParticipantRemote setOneToOneModeEnabled:]_block_invoke";
          v19 = 1024;
          v20 = 3207;
          v21 = 2112;
          v22 = v4;
          v23 = 2048;
          v24 = v13;
          v8 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) We are already in the correct OneToOne mode";
          v9 = v12;
          v10 = 48;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    *(v3 + 408) = v2;
    v5 = *(a1 + 32);
    if (v5[408] == 1)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __53__VCSessionParticipantRemote_setOneToOneModeEnabled___block_invoke_179;
      v14[3] = &unk_1E85F6780;
      v14[4] = v5;
      [v5 callDelegateWithBlock:v14];
    }
  }
}

- (void)createAndResumeFetchTimer
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

uint64_t __55__VCSessionParticipantRemote_createAndResumeFetchTimer__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__VCSessionParticipantRemote_createAndResumeFetchTimer__block_invoke_2;
  v3[3] = &unk_1E85F6780;
  v3[4] = v1;
  return [v1 callDelegateWithBlock:v3];
}

uint64_t __55__VCSessionParticipantRemote_createAndResumeFetchTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315650;
        *&v14[4] = v5;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantRemote createAndResumeFetchTimer]_block_invoke_2";
        *&v14[22] = 1024;
        LODWORD(v15) = 3230;
        v7 = "VCSessionParticipantRemote [%s] %s:%d Fetching stream group state update";
        v8 = v6;
        v9 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v14, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *v14 = 136316162;
        *&v14[4] = v10;
        *&v14[12] = 2080;
        *&v14[14] = "[VCSessionParticipantRemote createAndResumeFetchTimer]_block_invoke";
        *&v14[22] = 1024;
        LODWORD(v15) = 3230;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v4;
        HIWORD(v15) = 2048;
        v16 = v12;
        v7 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Fetching stream group state update";
        v8 = v11;
        v9 = 48;
        goto LABEL_11;
      }
    }
  }

  return [a2 vcSessionParticipantFetchStreamGroupState:{*(a1 + 32), *v14, *&v14[16], v15, v16}];
}

void __55__VCSessionParticipantRemote_createAndResumeFetchTimer__block_invoke_181(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 760);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 760) = 0;
  }
}

- (void)cancelAndReleaseFetchTimer
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_remoteStreamGroupStateUpdateTimer)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = 136315650;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCSessionParticipantRemote cancelAndReleaseFetchTimer]";
      v15 = 1024;
      v16 = 3245;
      v6 = "VCSessionParticipantRemote [%s] %s:%d Cancel stream group state update timer";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = 136316162;
      v12 = v9;
      v13 = 2080;
      v14 = "[VCSessionParticipantRemote cancelAndReleaseFetchTimer]";
      v15 = 1024;
      v16 = 3245;
      v17 = 2112;
      v18 = v3;
      v19 = 2048;
      v20 = self;
      v6 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Cancel stream group state update timer";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
LABEL_13:
    dispatch_source_cancel(self->_remoteStreamGroupStateUpdateTimer);
  }
}

- (void)updateAndHandleVideoMediaStall:(BOOL)a3
{
  isVideoExpected = self->_isVideoExpected;
  if (isVideoExpected != [(VCSessionParticipantRemote *)self isVideoExpected])
  {
    self->_isVideoExpected = [(VCSessionParticipantRemote *)self isVideoExpected];
    self->_lastVideoExpectationSwitch = micro();
  }

  if (!a3 && self->_isRemoteMediaStalled && !self->_isVideoExpected)
  {
    [(VCSessionParticipantRemote *)self setVideoDegraded:0];

    [(VCSessionParticipantRemote *)self setRemoteMediaStalled:0];
  }
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

- (int)reportingResolutionForResolution:(int64_t)a3
{
  if (a3 < 0x1C)
  {
    if (a3 == 27)
    {
      return 35;
    }

    else
    {
      return a3;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionParticipantRemote reportingResolutionForResolution:];
      }
    }

    return 35;
  }
}

- (void)updateRemoteDeviceOrientation:(int)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"ORTNRemote";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCVideoAttributeOrientationToAggregatorOrientation(a3)];
  v10[1] = @"VCSPUUID";
  uuid = self->super._uuid;
  v11[0] = v5;
  v11[1] = uuid;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(VCSessionParticipant *)self reportingAgent];
  reportingGenericEvent();
  participantQueue = self->super._participantQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCSessionParticipantRemote_updateRemoteDeviceOrientation___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  v9 = a3;
  dispatch_async(participantQueue, block);
}

void __60__VCSessionParticipantRemote_updateRemoteDeviceOrientation___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 40);
    *buf = 136315906;
    v18 = v3;
    v19 = 2080;
    v20 = "[VCSessionParticipantRemote updateRemoteDeviceOrientation:]_block_invoke";
    v21 = 1024;
    v22 = 3320;
    v23 = 1024;
    LODWORD(v24) = v5;
    v6 = "VCSessionParticipantRemote [%s] %s:%d Received Device Orientation=%u";
    v7 = v4;
    v8 = 34;
    goto LABEL_11;
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
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 136316418;
      v18 = v9;
      v19 = 2080;
      v20 = "[VCSessionParticipantRemote updateRemoteDeviceOrientation:]_block_invoke";
      v21 = 1024;
      v22 = 3320;
      v23 = 2112;
      v24 = v2;
      v25 = 2048;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      v6 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Received Device Orientation=%u";
      v7 = v10;
      v8 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  if (v13 != *(v14 + 780))
  {
    *(v14 + 780) = v13;
    v15 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__VCSessionParticipantRemote_updateRemoteDeviceOrientation___block_invoke_185;
    v16[3] = &unk_1E85F6780;
    v16[4] = v15;
    [v15 callDelegateWithBlock:v16];
  }
}

- (void)spatialMetadataEntryForMediaType:(unsigned int)a3
{
  v25 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  if (!self->_mediaTypeToSpatialAudioMetadataEntryMap)
  {
    return 0;
  }

  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!v4)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return 0;
      }

      *buf = 136315650;
      v20 = v9;
      OUTLINED_FUNCTION_36_4();
      OUTLINED_FUNCTION_16_0();
    }

    else
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        v8 = OUTLINED_FUNCTION_6_1();
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!OUTLINED_FUNCTION_40())
      {
        return 0;
      }

      *buf = 136316162;
      v20 = v16;
      OUTLINED_FUNCTION_36_4();
      v21 = 2112;
      v22 = v8;
      v23 = 2048;
      v24 = self;
      v10 = &dword_1DB56E000;
      v13 = "VCSessionParticipantRemote [%s] %s:%d %@(%p) Failed to allocate media type key";
      v14 = buf;
      v11 = v17;
      v12 = OS_LOG_TYPE_ERROR;
      v15 = 48;
    }

    _os_log_error_impl(v10, v11, v12, v13, v14, v15);
    return 0;
  }

  v5 = v4;
  Value = CFDictionaryGetValue(self->_mediaTypeToSpatialAudioMetadataEntryMap, v4);
  CFRelease(v5);
  return Value;
}

- (void)setForceAudioAsConnectionTimingSource:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->super._participantQueue);
  if (self->_forceAudioAsConnectionTimingSource != v3)
  {
    self->_forceAudioAsConnectionTimingSource = v3;
    if (!self->_isConnectionTimingReported && self->_isConnectionTimingSourceDetected)
    {
      self->_isConnectionTimingSourceDetected = 0;

      [(VCSessionParticipantRemote *)self detectConnectionTimingSource];
    }
  }
}

- (unsigned)cappedVideoQualityWithShouldLimitCameraQualityForPIP:(BOOL)a3
{
  v3 = a3;
  v5 = [(VCSessionParticipantRemote *)self videoQuality];
  if (v3)
  {
    v6 = [(VCSessionParticipantRemote *)self videoQuality];
    if (v6 >= 5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = v5;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(VCSessionParticipantRemote *)self videoQuality];
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_23();
        v13 = 40;
LABEL_14:
        _os_log_impl(v8, v9, v10, v11, v12, v13);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(VCSessionParticipantRemote *)self videoQuality];
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9_9();
        OUTLINED_FUNCTION_14_4();
        v10 = OS_LOG_TYPE_DEFAULT;
        v13 = 60;
        goto LABEL_14;
      }
    }
  }

  return v7;
}

- (void)validateMediaEntries:(id)a3
{
  v5 = [(VCSessionParticipantRemote *)self isAudioActive];
  if (!v5)
  {
    return;
  }

  v13 = OUTLINED_FUNCTION_48(v5, v6, v7, v8, v9, v10, v11, v12, v37, v39);
  if (!v13)
  {
LABEL_11:
    [(VCSessionBandwidthAllocationTable *)self->_mediaTable tableEntriesForStreamToken:[(VCSessionParticipant *)self participantMicrophoneToken]];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 2)
      {
        goto LABEL_26;
      }

      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (OUTLINED_FUNCTION_31())
        {
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_8_4();
LABEL_22:
          _os_log_error_impl(v26, v27, v28, v29, v30, v31);
        }

LABEL_26:
        VCTerminateProcess(@"Missing audio entries", @"VCSessionParticipantRemote", [(VCSessionParticipant *)self reportingAgent]);
        return;
      }

      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_4();
      v36 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 2)
      {
        goto LABEL_26;
      }

      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (OUTLINED_FUNCTION_31())
        {
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_17_0();
          v31 = 68;
          goto LABEL_22;
        }

        goto LABEL_26;
      }

      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_14_4();
      v36 = 68;
    }

    _os_log_fault_impl(v32, v33, OS_LOG_TYPE_FAULT, v34, v35, v36);
    goto LABEL_26;
  }

  v14 = v13;
  v15 = MEMORY[0];
LABEL_4:
  v16 = 0;
  while (1)
  {
    if (MEMORY[0] != v15)
    {
      objc_enumerationMutation(a3);
    }

    v17 = *(8 * v16);
    if ([v17 streamGroupID] == 1835623282)
    {
      break;
    }

    v18 = [v17 streamGroupID];
    if (v18 == 1835623287)
    {
      break;
    }

    if (v14 == ++v16)
    {
      v14 = OUTLINED_FUNCTION_48(v18, v19, v20, v21, v22, v23, v24, v25, v38, v40);
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }
}

- (BOOL)setupStreamGroupWithConfig:(id)a3
{
  if (!-[VCSessionParticipantRemote shouldSetupStreamGroupWithID:](self, "shouldSetupStreamGroupWithID:", [a3 groupID]))
  {
    v9 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = [a3 mediaType];
  v6 = [(VCSessionParticipantRemote *)self newStreamGroupConfigWithNegotiationConfig:a3];
  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_36;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      v19 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_36;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v19 = 48;
    }

    _os_log_error_impl(v14, v15, v16, v17, v18, v19);
LABEL_36:
    v9 = 0;
    v7 = 0;
    goto LABEL_64;
  }

  v7 = v6;
  if (v5 != 1936684398)
  {
    if ([v6 streamGroupID] == 1667330164)
    {
      v10 = [(VCSessionParticipantRemote *)self newCaptionsStreamGroupWithStreamGroupConfig:v7];
      if (!v10)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_63;
          }

          VRTraceErrorLogLevelToCSTR();
          if (!OUTLINED_FUNCTION_28())
          {
            goto LABEL_63;
          }

          goto LABEL_55;
        }

        if (OUTLINED_FUNCTION_38_0())
        {
          OUTLINED_FUNCTION_37_0();
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_63;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31())
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }
    }

    else
    {
      v10 = [(VCSessionParticipantRemote *)self newVideoStreamGroupWithStreamGroupConfig:v7];
      if (!v10)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_63;
          }

          VRTraceErrorLogLevelToCSTR();
          if (!OUTLINED_FUNCTION_28())
          {
            goto LABEL_63;
          }

          goto LABEL_55;
        }

        if (OUTLINED_FUNCTION_38_0())
        {
          OUTLINED_FUNCTION_37_0();
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_63;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31())
        {
          goto LABEL_63;
        }

LABEL_61:
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_8_4();
        goto LABEL_62;
      }
    }

    v9 = v10;
    goto LABEL_15;
  }

  [v6 setJbTargetEstimatorSynchronizer:{-[NSMutableDictionary objectForKeyedSubscript:](self->_jbSynchronizerPerSyncGroupID, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v6, "streamGroupID")))}];
  [v7 setNetworkFeedbackController:self->super._networkFeedbackController];
  [v7 setExperimentManager:self->super._experimentManager];
  v8 = [[VCAudioStreamReceiveGroup alloc] initWithConfig:v7];
  if (!v8)
  {
    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_38_0())
      {
        OUTLINED_FUNCTION_37_0();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_63;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_63;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_63;
    }

LABEL_55:
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_62:
    _os_log_error_impl(v26, v27, v28, v29, v30, v31);
LABEL_63:
    v9 = 0;
    goto LABEL_64;
  }

  v9 = v8;
  if ([a3 groupID] == 1835623282 || objc_msgSend(a3, "groupID") == 1835623287)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._participantStreamTokens, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStreamGroup streamToken](v9, "streamToken")}], &unk_1F5799BD0);
    [(NSMutableArray *)self->super._micStreamGroups addObject:v9];
    [(VCAudioStreamReceiveGroup *)v9 setVADFilteringEnabled:self->_enableVADFiltering];
  }

LABEL_15:
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._streamGroups, "setObject:forKeyedSubscript:", v9, [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStreamGroup streamToken](v9, "streamToken")}]);
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStreamGroup streamToken](v9, "streamToken")}];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._participantStreamTokens, "setObject:forKeyedSubscript:", v11, [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCMediaStreamGroup streamGroupID](v9, "streamGroupID")}]);
  if (!-[VCSessionParticipantRemote setupBandwidthAllocationTableForMediaStreamConfigs:streamGroupID:entryType:](self, "setupBandwidthAllocationTableForMediaStreamConfigs:streamGroupID:entryType:", [objc_msgSend(objc_msgSend(v7 "mediaStreamInfoArray")], -[VCMediaStreamGroup streamGroupID](v9, "streamGroupID"), +[VCSessionBandwidthAllocationTableEntry entryTypeForMediaType:](VCSessionBandwidthAllocationTableEntry, "entryTypeForMediaType:", -[VCMediaStreamGroup mediaType](v9, "mediaType"))))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_64;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(VCSessionParticipantRemote *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_64;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31_3())
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_3_9();
    }

    _os_log_error_impl(v20, v21, v22, v23, v24, v25);
LABEL_64:
    v12 = 0;
    goto LABEL_17;
  }

LABEL_16:
  v12 = 1;
LABEL_17:

  return v12;
}

- (void)initWithConfig:delegate:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_39_0();
}

- (void)initWithConfig:delegate:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_39_0();
}

- (void)initWithConfig:delegate:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)initWithConfig:delegate:.cold.4()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_39_0();
}

- (void)initWithConfig:delegate:.cold.5()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_39_0();
}

- (void)initWithConfig:delegate:.cold.6()
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
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)initWithConfig:delegate:.cold.7()
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
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)initWithConfig:delegate:.cold.8()
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
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupSpatialAudioWithMetadata:(uint64_t)a3 spatialMetadataEntryMap:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_40_0();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_11_0();
  a16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == v25)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        a12 = 438;
        v29 = &dword_1DB56E000;
        v30 = "VCSessionParticipantRemote [%s] %s:%d spatialMetadata is NULL";
        v31 = &a9;
        v32 = v28;
        v33 = 28;
LABEL_10:
        _os_log_impl(v29, v32, OS_LOG_TYPE_DEFAULT, v30, v31, v33);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_14_4();
        v33 = 48;
        goto LABEL_10;
      }
    }
  }

  *v24 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)setupSpatialAudioWithMetadata:spatialMetadataEntryMap:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupSpatialAudioWithMetadata:spatialMetadataEntryMap:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupSpatialAudioWithMetadata:spatialMetadataEntryMap:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupSpatialAudioWithMetadata:spatialMetadataEntryMap:.cold.5()
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
  *v0 = -2143420414;
  OUTLINED_FUNCTION_39_0();
}

- (void)storeSpatialAudioMetadataEntry:forMediaType:.cold.1()
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
  *v0 = -2143420414;
  OUTLINED_FUNCTION_39_0();
}

- (void)setTransitionToEnabled:.cold.1()
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

- (void)setTransitionToPaused:.cold.1()
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

- (void)setTransitionToPaused:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setTransitionToDisabled:.cold.1()
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

- (void)updateMediaState:forStreamGroup:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = [OUTLINED_FUNCTION_42_1(v0 *MEMORY[0x1E69E9840])];
  VCSessionMediaType_Name(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)applyVideoEnabledSetting:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }

  *a3 = a2;
}

- (void)processParticipantInfo
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)getMajorVersionNumber
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioStreamConfiguration:withStreamGroupConfig:streamGroupStreamConfig:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }

  *v1 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioStreamConfiguration:(_BYTE *)a1 withStreamGroupConfig:streamGroupStreamConfig:.cold.2(_BYTE *a1)
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

- (void)setupBandwidthAllocationTableForMediaStreamConfigs:streamGroupID:entryType:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)entryForStreamID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __83__VCSessionParticipantRemote_configureWithOneToOneParticipantConfig_operatingMode___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setStreamGroup:syncSourceStreamGroupID:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)pushEventToNwActivity:started:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)pushEventToNwActivity:started:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v5 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCSessionParticipantRemote [%s] %s:%d Invalid NW activity label:%d", v3, 0x22u);
}

- (void)isVideoExpected
{
  OUTLINED_FUNCTION_14_5();
  v18 = *MEMORY[0x1E69E9840];
  v2 = v1[374];
  v3 = v1[568];
  v4 = v1[377];
  v5 = v1[570];
  [v1 isVisible];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  v9 = v2;
  v10 = v6;
  v11 = v3;
  v12 = v6;
  v13 = v4;
  v14 = v6;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "VCSessionParticipantRemote [%s] %s:%d videoEnabled:%d remoteVideoEnabled:%d videoPaused:%d remoteVideoPaused:%d isVisible:%d", v8, 0x3Au);
}

- (void)newMultiwayConfigWithStreamGroupStreamConfig:maxIDSStreamIDCount:groupID:.cold.1()
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

- (void)setupVideoStreamConfiguration:withStreamGroupStreamConfig:codecConfigs:multiwayConfig:groupID:.cold.1()
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

- (void)setupVideoStreamConfiguration:withStreamGroupStreamConfig:codecConfigs:multiwayConfig:groupID:.cold.2()
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

- (void)newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_39_0();
}

- (void)newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:.cold.2()
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
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_39_0();
}

- (void)newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_7();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *v0 = v1;
}

- (void)newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_7();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *v0 = v1;
}

- (void)newMediaStreamConfigWithStreamGroupConfig:streamConfig:rateControlConfig:multiwayConfig:.cold.6()
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
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupStreamConfigWithCodecs:(uint64_t)a3 streamConfig:(uint64_t)a4 codecConfigs:(uint64_t)a5 featureStringsDict:(uint64_t)a6 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, int a10, int a11, __int16 a12, uint64_t a13, __int128 a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_40_0();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  a17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      a12 = v36;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_9();
      *(&a14 + 6) = v34;
      HIWORD(a14) = v37;
      a15 = v32;
      _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, "VCSessionParticipantRemote [%s] %s:%d codecIndex=%@ out of bounds, codecConfigCount=%d", &a9, 0x2Cu);
    }
  }

  *v28 = v30 & 1;
  OUTLINED_FUNCTION_39_0();
}

- (void)newMediaStreamConfigWithStreamConfig:streamGroupConfig:maxIDSStreamIDCount:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_39_0();
}

- (void)newMediaStreamConfigWithStreamConfig:streamGroupConfig:maxIDSStreamIDCount:.cold.2()
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

- (void)newMediaStreamConfigWithStreamConfig:streamGroupConfig:maxIDSStreamIDCount:.cold.3()
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

- (void)newMediaStreamInfoWithNegotiationConfig:streamToken:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newMediaStreamInfoWithNegotiationConfig:streamToken:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newMediaStreamInfoWithNegotiationConfig:streamToken:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newMediaStreamInfoWithNegotiationConfig:streamToken:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newMediaStreamInfoWithNegotiationConfig:streamToken:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupSpatialInfoForStreamGroupConfig:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [OUTLINED_FUNCTION_42_1(v0 *MEMORY[0x1E69E9840])];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
}

- (void)newStreamGroupConfigWithNegotiationConfig:.cold.1()
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
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)newStreamGroupConfigWithNegotiationConfig:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_41_3())
  {
    OUTLINED_FUNCTION_34_2();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31_3())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_39_0();
}

- (void)newStreamGroupConfigWithNegotiationConfig:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)newStreamGroupConfigWithNegotiationConfig:.cold.4()
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
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)addOneToOneStreamConfigToMediaStreamInfo:(_BYTE *)a3 negotiatorStreamGroupConfig:.cold.1(id *a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      [objc_msgSend(*a1 "negotiatedFaceTimeSettings")];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }

  *a3 = 1;
  OUTLINED_FUNCTION_20();
}

- (void)addOneToOneStreamConfigToMediaStreamInfo:negotiatorStreamGroupConfig:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_42_1(v0, *MEMORY[0x1E69E9840]);
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)addOneToOneStreamConfigToMediaStreamInfo:negotiatorStreamGroupConfig:.cold.3()
{
  OUTLINED_FUNCTION_14_5();
  v1 = [OUTLINED_FUNCTION_42_1(v0 *MEMORY[0x1E69E9840])];
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)addOneToOneStreamConfigToMediaStreamInfo:(_BYTE *)a3 negotiatorStreamGroupConfig:.cold.4(void *a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      FourccToCStr([a1 groupID]);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v5, v6, v7, v8, v9, 0x26u);
    }
  }

  *a3 = 1;
  OUTLINED_FUNCTION_20();
}

- (void)newVideoStreamGroupWithStreamGroupConfig:(uint64_t)a1 .cold.1(uint64_t a1)
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)newCaptionsStreamGroupWithStreamGroupConfig:(uint64_t)a1 .cold.1(uint64_t a1)
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)createJitterBufferTargetEstimatorSynchronizer:syncGroupID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupStreamGroups
{
  OUTLINED_FUNCTION_14_5();
  v1 = [OUTLINED_FUNCTION_42_1(v0 *MEMORY[0x1E69E9840])];
  FourccToCStr(v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)reportingResolutionForResolution:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end