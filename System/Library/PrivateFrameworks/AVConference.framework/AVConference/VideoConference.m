@interface VideoConference
- (AudioStreamBasicDescription)audioIOFormat;
- (BOOL)conferenceMatchesSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3;
- (BOOL)deregisterForVideoFramesWithDeviceRole:(int)a3;
- (BOOL)getIsAudioPaused:(BOOL *)a3 callID:(unsigned int)a4 error:(id *)a5;
- (BOOL)getIsVideoPaused:(BOOL *)a3 callID:(unsigned int)a4 error:(id *)a5;
- (BOOL)hasSessionWaitingForSIPInvite;
- (BOOL)initiateResolutionChangeToWidth:(int)a3 height:(int)a4 rate:(int)a5;
- (BOOL)isSpeakerPhoneEnabled;
- (BOOL)matchesCallID:(unsigned int)a3;
- (BOOL)matchesOpenSessionForParticipantID:(id)a3;
- (BOOL)matchesParticipantID:(id)a3;
- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)a3 frameTime:(id *)a4 attribute:(id *)a5;
- (BOOL)recvSamplesForSession:(id)a3 sampleBuffer:(opaqueVCAudioBufferList *)a4;
- (BOOL)registerForVideoFramesWithDeviceRole:(int)a3 captureRule:(id)a4 isUnpausing:(BOOL)a5;
- (BOOL)session:(id)a3 didStopVideoIO:(BOOL)a4 error:(id *)a5;
- (BOOL)session:(id)a3 receivedRemoteFrame:(__CVBuffer *)a4 atTime:(id *)a5 withScreenAttributes:(id)a6 videoAttributes:(id)a7 isFirstFrame:(BOOL)a8 isVideoPaused:(BOOL)a9;
- (BOOL)session:(id)a3 startVideoReceive:(id *)a4;
- (BOOL)session:(id)a3 startVideoSend:(id *)a4 captureRuleWifi:(id)a5 captureRuleCell:(id)a6 interface:(int)a7 isUnpausing:(BOOL)a8;
- (BOOL)session:(id)a3 stopVideoReceive:(id *)a4 isPausing:(BOOL)a5;
- (BOOL)setActive:(BOOL)a3;
- (BOOL)setPauseAudio:(BOOL)a3;
- (BOOL)setPauseAudio:(BOOL)a3 callID:(unsigned int)a4 error:(id *)a5;
- (BOOL)setPauseVideo:(BOOL)a3;
- (BOOL)setPauseVideo:(BOOL)a3 callID:(unsigned int)a4 error:(id *)a5;
- (BOOL)shouldReinitializeCallWithDuration:(double)a3 forCallID:(unsigned int)a4;
- (BOOL)shouldSendAudioForCallID:(unsigned int)a3;
- (BOOL)startConnectionWithParticipantID:(id)a3 callID:(unsigned int)a4 usingInviteData:(id)a5 isCaller:(BOOL)a6 capabilities:(id)a7 idsSocket:(int)a8 destination:(id)a9 error:(id *)a10;
- (BOOL)startConnectionWithParticipantID:(id)a3 callID:(unsigned int)a4 usingInviteData:(id)a5 isCaller:(BOOL)a6 relayResponseDict:(id)a7 didOriginateRelayRequest:(BOOL)a8 capabilities:(id)a9 idsSocket:(int)a10 destination:(id)a11 error:(id *)a12;
- (BOOL)stopVideoSend:(BOOL)a3 error:(id *)a4;
- (BOOL)updateSpeaking:(unsigned int)a3 timeStamp:(unsigned int)a4;
- (CGSize)remoteFrameSizeForCallID:(unsigned int)a3;
- (VideoConference)initWithClientPid:(int)a3;
- (double)localBitrateForCallID:(unsigned int)a3;
- (double)localFramerateForCallID:(unsigned int)a3;
- (double)localPacketLossRateForCallID:(unsigned int)a3;
- (double)networkQualityForCallID:(unsigned int)a3;
- (double)packetLossRateForCallID:(unsigned int)a3;
- (double)remoteBitrateForCallID:(unsigned int)a3;
- (double)remoteFramerateForCallID:(unsigned int)a3;
- (double)remotePacketLossRateForCallID:(unsigned int)a3;
- (double)roundTripTimeForCallID:(unsigned int)a3;
- (float)powerIntToFloat:(unsigned __int8)a3;
- (id)callMetadataForCallID:(unsigned int)a3;
- (id)connectionBlobForParticipantID:(id)a3 callID:(unsigned int *)a4 error:(id *)a5;
- (id)inviteDataForParticipantID:(id)a3 callID:(unsigned int *)a4 remoteInviteData:(id)a5 nonCellularCandidateTimeout:(double)a6 error:(id *)a7;
- (id)loopbackSessionWaitingForSIPInvite;
- (id)newSessionWithDeviceRole:(int)a3 reportingHierarchyToken:(id)a4;
- (id)openSessionForParticipant:(id)a3;
- (id)sessionForIncomingParticipantID:(id)a3;
- (id)sessionForParticipantID:(id)a3;
- (id)sessionForSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3;
- (id)statsForCallID:(unsigned int)a3;
- (int)conferenceOperatingMode;
- (int)natType;
- (int)natTypeForCallSessions:(const char *)a3;
- (int)pullDecodedAsFocus:(opaqueVCAudioBufferList *)a3;
- (int)pullDecodedAsFocusClient:(opaqueVCAudioBufferList *)a3;
- (int)pullDecodedMeshMode:(opaqueVCAudioBufferList *)a3;
- (int)setupSpatialAudioWithCallID:(unsigned int)a3;
- (int)sipCallbackNotification:(int)a3 callID:(unsigned int)a4 msgIn:(const char *)a5 msgOut:(char *)a6 optional:(void *)a7 confIndex:(int *)a8;
- (int)stateForCallID:(unsigned int)a3;
- (unsigned)calculateTalkingMaskAtTimeStamp:(unsigned int)a3;
- (unsigned)callIDForOpenSessionWithParticipantID:(id)a3;
- (unsigned)initializeNewCallWithDeviceRole:(int)a3 reportingHierarchyToken:(id)a4;
- (unsigned)momentsCapabilitiesWithNegotiationBlobMomentsSettings_Capabilities:(int)a3;
- (unsigned)powerFloatToInt:(float)a3;
- (unsigned)pruneQuietestPeers:(unsigned int)a3 talking:(unsigned int)a4 mask:(unsigned int)a5 meters:(char *)a6;
- (void)NATTypeDictionaryUpdated:(id)a3;
- (void)avConferencePreviewError:(id)a3;
- (void)avConferenceScreenCaptureError:(id)a3;
- (void)calculateMixingArrays:(unsigned int *)a3 talkingMask:(unsigned int)a4;
- (void)cameraAvailabilityDidChange:(BOOL)a3;
- (void)cancelCallID:(unsigned int)a3;
- (void)cancelCallID:(unsigned int)a3 error:(id)a4;
- (void)captureAsFocus:(opaqueVCAudioBufferList *)a3;
- (void)captureAsFocusClient:(opaqueVCAudioBufferList *)a3;
- (void)captureMeshMode:(opaqueVCAudioBufferList *)a3;
- (void)cleanUpAudioMachineLearningCoordinator;
- (void)cleanUpMediaRecorder;
- (void)cleanupProc:(id)a3;
- (void)cleanupQueues;
- (void)cleanupSession:(id)a3 didRemoteCancel:(BOOL)a4;
- (void)cleanupSession:(id)a3 withDelay:(unint64_t)a4;
- (void)cleanupSpatialAudioForCallID:(unsigned int)a3;
- (void)dealloc;
- (void)defaultCleanupSession:(id)a3;
- (void)didResumeAudioIO:(id)a3;
- (void)didSuspendAudioIO:(id)a3;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3;
- (void)handleCellTechChange:(int)a3 cellularMaxPktLen:(unsigned __int16)a4;
- (void)markUnfinishedSessions;
- (void)mediaRecorder:(id)a3 shouldProcessRequest:(id)a4 recipientID:(id)a5;
- (void)notifyDelegateOfLocalVariablesChange;
- (void)processRelayRequestResponse:(unsigned int)a3 responseDict:(id)a4 didOriginateRequest:(BOOL)a5;
- (void)processRelayUpdate:(unsigned int)a3 updateDict:(id)a4 didOriginateRequest:(BOOL)a5;
- (void)processRemoteIPChange:(id)a3 callID:(unsigned int)a4;
- (void)pullAudioSamples:(opaqueVCAudioBufferList *)a3;
- (void)pushAudioSamples:(opaqueVCAudioBufferList *)a3;
- (void)remoteAudioDidPause:(BOOL)a3 callID:(unsigned int)a4;
- (void)remoteCancelledCallID:(unsigned int)a3;
- (void)remoteVideoDidPause:(BOOL)a3 callID:(unsigned int)a4;
- (void)sendARPLData:(id)a3 toCallID:(unsigned int)a4;
- (void)sendData:(id)a3 toCallID:(unsigned int)a4 encrypted:(BOOL)a5;
- (void)serverDidDie;
- (void)session:(id)a3 cancelRelayRequest:(id)a4;
- (void)session:(id)a3 changeVideoRulesToCaptureRule:(id)a4 encodeRule:(id)a5 featureListString:(id)a6;
- (void)session:(id)a3 cleanUpWithDelay:(int64_t)a4 error:(id)a5;
- (void)session:(id)a3 connectionDidChangeWithLocalInterfaceType:(id)a4 remoteInterfaceType:(id)a5 callID:(unsigned int)a6;
- (void)session:(id)a3 didChangeRemoteScreenAttributes:(id)a4;
- (void)session:(id)a3 didChangeVideoRule:(id)a4;
- (void)session:(id)a3 didPauseAudio:(BOOL)a4 error:(id)a5;
- (void)session:(id)a3 didPauseVideo:(BOOL)a4 error:(id)a5;
- (void)session:(id)a3 didReceiveARPLData:(id)a4 fromCallID:(unsigned int)a5;
- (void)session:(id)a3 didReceiveData:(id)a4 messageType:(unsigned int)a5 withCallID:(unsigned int)a6;
- (void)session:(id)a3 didStart:(BOOL)a4 connectionType:(unsigned int)a5 localInterfaceType:(id)a6 remoteInterfaceType:(id)a7 error:(id)a8;
- (void)session:(id)a3 didStopWithError:(id)a4;
- (void)session:(id)a3 initiateRelayRequest:(id)a4;
- (void)session:(id)a3 isSendingAudio:(BOOL)a4 error:(id)a5;
- (void)session:(id)a3 localAudioEnabled:(BOOL)a4 withCallID:(unsigned int)a5 error:(id)a6;
- (void)session:(id)a3 localIPChange:(id)a4 withCallID:(unsigned int)a5;
- (void)session:(id)a3 packMeters:(char *)a4 withLength:(char *)a5;
- (void)session:(id)a3 receivedNoPacketsForSeconds:(double)a4;
- (void)session:(id)a3 remoteAudioEnabled:(BOOL)a4 withCallID:(unsigned int)a5;
- (void)session:(id)a3 remoteCallingModeChanged:(unsigned int)a4 withCallID:(unsigned int)a5;
- (void)session:(id)a3 remoteMediaStalled:(BOOL)a4;
- (void)session:(id)a3 sendRelayResponse:(id)a4;
- (void)session:(id)a3 setMomentsCapabilities:(unsigned int)a4 imageType:(int)a5 videoCodec:(int)a6;
- (void)session:(id)a3 startAudioWithFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)a4 internalFrameFormat:(const tagVCAudioFrameFormat *)a5 completionHandler:(id)a6;
- (void)session:(id)a3 stopAudioWithCompletionHandler:(id)a4;
- (void)session:(id)a3 withCallID:(unsigned int)a4 networkHint:(BOOL)a5;
- (void)session:(id)a3 withCallID:(unsigned int)a4 videoIsDegraded:(BOOL)a5 isRemote:(BOOL)a6;
- (void)setBWEOptions:(BOOL)a3 UseNewBWEMode:(BOOL)a4 FakeLargeFrameMode:(BOOL)a5 ProbingSenderLog:(BOOL)a6;
- (void)setCallReport:(unsigned int)a3 withReport:(id)a4;
- (void)setChatMode:(int)a3;
- (void)setConferenceOperatingMode:(int)a3;
- (void)setConferenceState:(unsigned int)a3 forCallID:(unsigned int)a4;
- (void)setConferenceVisualRectangle:(CGRect)a3 forCallID:(unsigned int)a4;
- (void)setConferenceVolume:(float)a3;
- (void)setCurrentFocus:(id)a3;
- (void)setEnableSpeakerPhone:(BOOL)a3;
- (void)setHasMic:(BOOL)a3;
- (void)setInputFrequencyMeteringEnabled:(BOOL)a3;
- (void)setIsFocus:(BOOL)a3;
- (void)setIsGKVoiceChat:(BOOL)a3;
- (void)setMicrophoneMuted:(BOOL)a3;
- (void)setOutputFrequencyMeteringEnabled:(BOOL)a3;
- (void)setPacketsPerBundle:(int)a3;
- (void)setPeerCN:(id)a3 callID:(unsigned int)a4;
- (void)setPeerProtocolVersion:(unsigned int)a3 forCallID:(unsigned int)a4;
- (void)setPeerReportingID:(id)a3 sessionID:(id)a4 callID:(unsigned int)a5;
- (void)setQualityDelegate:(id)a3;
- (void)setRequiresWifi:(BOOL)a3;
- (void)setSendAudio:(BOOL)a3 forCallID:(unsigned int)a4;
- (void)setSessionID:(id)a3 callID:(unsigned int)a4;
- (void)setUpAudioIO:(int)a3 callID:(unsigned int)a4;
- (void)setUseViceroyBlobFormat:(BOOL)a3;
- (void)setupNATObserver;
- (void)shouldSendBlackFrame:(BOOL)a3 callID:(id)a4;
- (void)stopAllCalls:(id)a3;
- (void)stopCallID:(unsigned int)a3;
- (void)stopCallID:(unsigned int)a3 didRemoteCancel:(BOOL)a4 error:(id)a5;
- (void)thermalLevelDidChange:(int)a3;
- (void)threadSafeCleanupSession:(id)a3;
- (void)triggerInterfaceChange;
- (void)updateAudioTimestampsForSession:(id)a3 withNewSampleTime:(unsigned int)a4 hostTime:(double)a5 numSamples:(int)a6;
- (void)updateCapabilities:(id)a3 forCallID:(unsigned int)a4;
- (void)updateCapabilities:(id)a3 forSession:(id)a4;
- (void)updateMeter:(unsigned __int8)a3 forParticipant:(id)a4 atIndex:(unsigned int)a5;
- (void)updateMeters:(unsigned __int16)a3;
- (void)updateRelayedCallType:(unsigned __int8)a3 forCallID:(unsigned int)a4;
- (void)updatedConnectedPeers:(id)a3;
- (void)updatedMutedPeers:(id)a3 forParticipantID:(id)a4;
- (void)vcAudioPowerLevelMonitor:(id)a3 isAudioBelowThreshold:(BOOL)a4;
- (void)warmupForCall;
@end

@implementation VideoConference

- (VideoConference)initWithClientPid:(int)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v25 = v6;
        v26 = 2080;
        v27 = "[VideoConference initWithClientPid:]";
        v28 = 1024;
        v29 = 290;
        v8 = "VideoConference [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VideoConference *)self performSelector:sel_logPrefix];
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
        *buf = 136316162;
        v25 = v11;
        v26 = 2080;
        v27 = "[VideoConference initWithClientPid:]";
        v28 = 1024;
        v29 = 290;
        v30 = 2112;
        v31 = v5;
        v32 = 2048;
        v33 = self;
        v8 = "VideoConference [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  v23.receiver = self;
  v23.super_class = VideoConference;
  v13 = [(VCObject *)&v23 init];
  *(v13 + 42) = a3;
  v13[741] = 0;
  *(v13 + 28) = +[VideoConferenceManager defaultVideoConferenceManager];
  pthread_rwlock_init((v13 + 232), 0);
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  *(v13 + 54) = v14;
  *(v13 + 55) = [v14 allValues];
  *(v13 + 56) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(v13 + 55), "count")}];
  [*(v13 + 28) addVideoConference:v13];
  [*(v13 + 28) setActiveConference:v13];
  *(v13 + 66) = 0;
  *(v13 + 67) = 0;
  *(v13 + 68) = 0;
  *(v13 + 145) = 0;
  *(v13 + 144) = 0;
  *(v13 + 73) = objc_alloc_init(VCVideoRule);
  *(v13 + 74) = objc_alloc_init(CameraConferenceSynchronizer);
  *(v13 + 75) = 0;
  *(v13 + 184) = 0;
  pthread_mutex_init((v13 + 608), 0);
  pthread_mutex_init((v13 + 672), 0);
  v13[740] = 0;
  *(v13 + 186) = 2;
  v13[748] = 0;
  v13[893] = 0;
  *(v13 + 94) = 0;
  *(v13 + 95) = 0;
  v13[892] = 1;
  *(v13 + 97) = 0;
  *(v13 + 796) = 0;
  *(v13 + 804) = 0;
  *(v13 + 198) = -1;
  *(v13 + 208) = 1008981770;
  *(v13 + 209) = 0;
  v13[840] = 0;
  *(v13 + 211) = 0;
  *(v13 + 212) = 1;
  v13[768] = 1;
  *(v13 + 193) = 1065353216;
  v15 = MEMORY[0x1E6960C70];
  *(v13 + 852) = *MEMORY[0x1E6960C70];
  *(v13 + 868) = *(v15 + 16);
  *(v13 + 220) = 104;
  *(v13 + 221) = 0;
  v13[894] = 0;
  v13[877] = 1;
  *(v13 + 258) = 0;
  *(v13 + 121) = -1024458752;
  *(v13 + 120) = -1024458752;
  *(v13 + 61) = VCUniqueIDGenerator_GenerateID();
  *(v13 + 63) = [[VCAudioPowerSpectrumSource alloc] initWithStreamToken:*(v13 + 61) delegate:0];
  [+[VCAudioPowerSpectrumManager sharedInstance](VCAudioPowerSpectrumManager registerAudioPowerMeterSource:"registerAudioPowerMeterSource:", *(v13 + 63)];
  *(v13 + 62) = VCUniqueIDGenerator_GenerateID();
  *(v13 + 64) = [[VCAudioPowerSpectrumSource alloc] initWithStreamToken:*(v13 + 62) delegate:0];
  [+[VCAudioPowerSpectrumManager sharedInstance](VCAudioPowerSpectrumManager registerAudioPowerMeterSource:"registerAudioPowerMeterSource:", *(v13 + 64)];
  buf[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disableAudio", @"com.apple.VideoConference", buf);
  keyExistsAndHasValidFormat = 0;
  v17 = CFPreferencesGetAppBooleanValue(@"disableFacetimeTimeout", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (!buf[0] || (v18 = 0, !AppBooleanValue))
  {
    if (v17)
    {
      v19 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v19 = 1;
    }

    v18 = v19;
  }

  v13[895] = v18;
  v13[876] = 0;
  v13[896] = 0;
  v13[897] = 1;
  if ((v13[893] & 1) == 0 && *MEMORY[0x1E6986638] <= 6)
  {
    VRTraceSetErrorLogLevel();
  }

  pthread_mutex_init((v13 + 912), 0);
  *(v13 + 113) = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"summaryType", &unk_1F5799FD8, @"carrierType", &unk_1F5799FD8, @"nonCarrierType", 0}];
  v13[1009] = 0;
  v13[1010] = 0;
  v13[1011] = 0;
  v13[1012] = 0;
  v13[1013] = 0;
  v13[1014] = 1;
  v13[1015] = 1;
  *(v13 + 259) = 0;
  *(v13 + 260) = 0;
  v20 = objc_alloc_init(VCAudioPowerLevelMonitor);
  *(v13 + 123) = v20;
  [(VCAudioPowerLevelMonitor *)v20 setDelegate:v13];
  *(v13 + 254) = 0;
  *(v13 + 128) = dispatch_queue_create("com.apple.VideoConference.Notification", 0);
  *(v13 + 132) = 0;
  *(v13 + 266) = 0;
  *(v13 + 134) = 0;
  return v13;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VideoConference *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    v17 = v9;
    v18 = 2080;
    v19 = "[VideoConference dealloc]";
    v20 = 1024;
    v21 = 414;
    v22 = 2112;
    v23 = v3;
    v24 = 2048;
    v25 = self;
    v6 = "VideoConference [%s] %s:%d %@(%p) ";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = v4;
      v18 = 2080;
      v19 = "[VideoConference dealloc]";
      v20 = 1024;
      v21 = 414;
      v6 = "VideoConference [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  [(VideoConference *)self cleanupQueues];
  [(VideoConference *)self cleanUpMediaRecorder];
  [(VideoConference *)self cleanUpAudioMachineLearningCoordinator];

  self->mutedPeers = 0;
  self->connectedPeers = 0;

  self->currentFocus = 0;
  self->_startedSessions = 0;

  self->_sessionDict = 0;
  self->_sessionArray = 0;

  self->natTypeDictionary = 0;
  VCFFTMeter_Destroy(&self->_inputFFTMeter);
  VCFFTMeter_Destroy(&self->_outputFFTMeter);

  self->_remoteAudioPowerLevelMonitor = 0;
  v11 = +[VCAudioPowerSpectrumManager sharedInstance];
  -[VCAudioPowerSpectrumManager unregisterAudioPowerSpectrumSourceForStreamToken:](v11, "unregisterAudioPowerSpectrumSourceForStreamToken:", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCAudioPowerSpectrumSource streamToken](self->_inputAudioPowerSpectrumSource, "streamToken")}]);
  v12 = +[VCAudioPowerSpectrumManager sharedInstance];
  -[VCAudioPowerSpectrumManager unregisterAudioPowerSpectrumSourceForStreamToken:](v12, "unregisterAudioPowerSpectrumSourceForStreamToken:", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCAudioPowerSpectrumSource streamToken](self->_outputAudioPowerSpectrumSource, "streamToken")}]);
  [(VCAudioPowerSpectrumSource *)self->_inputAudioPowerSpectrumSource invalidate];

  [(VCAudioPowerSpectrumSource *)self->_outputAudioPowerSpectrumSource invalidate];
  pthread_mutex_destroy(&self->natMutex);

  objc_sync_enter(self);
  [(GKNATObserver *)self->natObserver setDelegate:0];

  self->natObserver = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = v13;
      v18 = 2080;
      v19 = "[VideoConference dealloc]";
      v20 = 1024;
      v21 = 451;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d Tearing down the natObserver.", buf, 0x1Cu);
    }
  }

  objc_sync_exit(self);

  self->synchronizer = 0;
  self->conferenceCaptureRule = 0;
  pthread_mutex_destroy(&self->xRemoteLayer);
  pthread_mutex_destroy(&self->xAudioTS);
  pthread_rwlock_destroy(&self->stateLock);
  dispatch_release(self->delegateNotificationQueue);
  objc_storeWeak(&self->delegate, 0);
  v15.receiver = self;
  v15.super_class = VideoConference;
  [(VCObject *)&v15 dealloc];
}

- (unsigned)initializeNewCallWithDeviceRole:(int)a3 reportingHierarchyToken:(id)a4
{
  v5 = *&a3;
  v10[5] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__VideoConference_initializeNewCallWithDeviceRole_reportingHierarchyToken___block_invoke;
  v10[3] = &unk_1E85F3778;
  v10[4] = self;
  dispatch_async(global_queue, v10);
  self->_deviceRole = v5;
  v8 = [(VideoConference *)self newSessionWithDeviceRole:v5 reportingHierarchyToken:a4];
  self->frontQueue = [VCRemoteVideoManager_DefaultManager() newQueueForStreamToken:objc_msgSend(v8 videoMode:{"callID"), 0}];
  self->backQueue = [VCRemoteVideoManager_DefaultManager() newQueueForStreamToken:objc_msgSend(v8 videoMode:{"callID"), 1}];
  self->screenQueue = [VCRemoteVideoManager_DefaultManager() newQueueForStreamToken:objc_msgSend(v8 videoMode:{"callID"), 2}];
  LODWORD(self) = [v8 callID];

  return self;
}

- (id)newSessionWithDeviceRole:(int)a3 reportingHierarchyToken:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [[VCCallSession alloc] initWithDeviceRole:*&a3 transportType:self->_transportType isGKVoiceChat:BYTE1(self->downstreamBandwidth) reportingHierarchyToken:a4];
  v7 = v6;
  if (!a3)
  {
    [(VCCallSession *)v6 setPreferredAudioCodec:*&self->disableVAD];
  }

  [(VCCallSession *)v7 setDelegate:self];
  [(VCCallSession *)v7 setPacketsPerBundle:self->packetsPerBundle];
  [(VCCallSession *)v7 setUseCompressedConnectionData:self->isGKVoiceChat];
  [(VCCallSession *)v7 setRequiresWifi:BYTE5(self->recvRTPTimeStamp.epoch)];
  [(VCCallSession *)v7 setNatType:[(VideoConference *)self natTypeForCallSessions:"newSession"]];
  [(VCCallSession *)v7 setQualityDelegate:self->qualityDelegate];
  [(VCCallSession *)v7 setShouldTimeoutPackets:HIBYTE(self->downstreamBandwidth)];
  if (self->conferenceOperatingMode)
  {
    [(VCCallSession *)v7 setOperatingMode:?];
  }

  if ((self->downstreamBandwidth & 0x100) == 0)
  {
    [(VCCallSession *)v7 setupBitrateNegotiation];
  }

  self->_audioMachineLearningCoordinator = [[VCAudioMachineLearningCoordinator alloc] initWithOneToOneEnabled:1 isLocal:0 taskIdentifier:@"callscreeningcaptions" reportingAgent:[(VCCallSession *)v7 reportingAgent] delegate:0];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = v10;
      v19 = 2080;
      v20 = "[VideoConference newSessionWithDeviceRole:reportingHierarchyToken:]";
      v21 = 1024;
      v22 = 524;
      v23 = 1024;
      LODWORD(v24) = [(VCCallSession *)v7 requiresWifi];
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d session.requiresWifi = %d", &v17, 0x22u);
    }
  }

  [(VideoConference *)self wrlock];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sessionDict, "setObject:forKeyedSubscript:", v7, [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCCallSession callID](v7, "callID")}]);

  self->_sessionArray = [(NSMutableDictionary *)self->_sessionDict allValues];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      sessionArray = self->_sessionArray;
      if (sessionArray)
      {
        v15 = [(NSString *)[(NSArray *)sessionArray description] UTF8String];
      }

      else
      {
        v15 = "<nil>";
      }

      v17 = 136315906;
      v18 = v12;
      v19 = 2080;
      v20 = "[VideoConference newSessionWithDeviceRole:reportingHierarchyToken:]";
      v21 = 1024;
      v22 = 530;
      v23 = 2080;
      v24 = v15;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d New session array = %s", &v17, 0x26u);
    }
  }

  [(VideoConference *)self unlock];
  return v7;
}

- (void)sendARPLData:(id)a3 toCallID:(unsigned int)a4
{
  v4 = *&a4;
  v20 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];
  if (!v7 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "[VideoConference sendARPLData:toCallID:]";
      v16 = 1024;
      v17 = 547;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d >>>>> ERROR: VCCallSession is nil (in VideoConference) <<<<<", &v12, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v10;
      v14 = 2080;
      v15 = "[VideoConference sendARPLData:toCallID:]";
      v16 = 1024;
      v17 = 550;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d >>>>> Relaying outgoing ARPL data from VideoConferenceManager to VCCallsession with callID=%d (in VideoConference) <<<<<", &v12, 0x22u);
    }
  }

  [v7 sendARPLData:a3 toCallID:v4];
}

- (void)sendData:(id)a3 toCallID:(unsigned int)a4 encrypted:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  [(VideoConference *)self rdlock];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6]);
  [(VideoConference *)self unlock];

  [v9 sendData:a3 messageType:1 encrypted:v5];
}

- (void)warmupForCall
{
  v15 = *MEMORY[0x1E69E9840];
  if (warmupForCall_sDispatchOnceVPInit != -1)
  {
    [VideoConference warmupForCall];
  }

  objc_sync_enter(self);
  if (!self->_isWarmedUp)
  {
    self->_isWarmedUp = 1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, &__block_literal_global_44);
    if (([+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")] & 1) == 0)
    {
      if ((self->downstreamBandwidth & 0x100) == 0)
      {
        if (self->_transportType == 1)
        {
          [VCServerBag clearBagWithRefreshIntervalInSeconds:86400];
        }

        +[VCServerBag pullStoreBagKeys];
      }

      if (!self->_transportType)
      {
        [(VideoConference *)self setupNATObserver];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v4 = VRTraceErrorLogLevelToCSTR();
          v5 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v6 = BYTE5(self->recvRTPTimeStamp.epoch);
            v7 = 136315906;
            v8 = v4;
            v9 = 2080;
            v10 = "[VideoConference warmupForCall]";
            v11 = 1024;
            v12 = 601;
            v13 = 1024;
            v14 = v6;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d warmupForCall: Setting up the natObserver. (requiresWifi: %d)", &v7, 0x22u);
          }
        }
      }
    }
  }

  objc_sync_exit(self);
}

uint64_t __32__VideoConference_warmupForCall__block_invoke_2()
{
  CFPreferencesAppSynchronize(@"com.apple.VideoConference");
  CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]);
  VRTraceReset();

  return VRTracePrintLoggingInfo();
}

- (void)setupNATObserver
{
  v7[3] = *MEMORY[0x1E69E9840];
  v5 = 0;
  if ([VCServerBag verifyRequiredKeys:&v5]&& setupNATObserver_onceToken != -1)
  {
    [VideoConference setupNATObserver];
  }

  v3 = objc_autoreleasePoolPush();
  v6[0] = @"checkTCPSSL";
  v6[1] = @"favorNonCar";
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E118];
  v6[2] = @"addCarrier";
  v7[2] = MEMORY[0x1E695E118];
  v4 = -[GKNATObserver initWithOptions:]([GKNATObserver alloc], "initWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3]);
  self->natObserver = v4;
  [(GKNATObserver *)v4 setDelegate:self];
  objc_autoreleasePoolPop(v3);
}

void __35__VideoConference_setupNATObserver__block_invoke()
{
  if (GetSNATMAPServer() && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __35__VideoConference_setupNATObserver__block_invoke_cold_1();
    }
  }
}

- (void)setIsGKVoiceChat:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  BYTE1(self->downstreamBandwidth) = a3;
  [+[VCAudioManager sharedVoiceChatInstance](VCAudioManager "sharedVoiceChatInstance")];
  [(VCAudioIO *)self->_audioIO setIsGKVoiceChat:v3];
  [(VideoConference *)self rdlock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  sessionArray = self->_sessionArray;
  v6 = [(NSArray *)sessionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(sessionArray);
        }

        [*(*(&v11 + 1) + 8 * i) setIsGKVoiceChat:BYTE1(self->downstreamBandwidth)];
      }

      v7 = [(NSArray *)sessionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  [(VideoConference *)self unlock];
}

- (int)natType
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(VideoConference *)self natTypeForCallSessions:"natType"];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = BYTE5(self->recvRTPTimeStamp.epoch);
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VideoConference natType]";
      v12 = 1024;
      v13 = 647;
      v14 = 1024;
      v15 = v3;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d Getting natType: %d [requiresWifi: %d]", &v8, 0x28u);
    }
  }

  return v3;
}

- (double)packetLossRateForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  [(VideoConference *)self unlock];

  [v5 packetLossRate];
  return result;
}

- (double)networkQualityForCallID:(unsigned int)a3
{
  mostRecentStartedCall = *&a3;
  if (!a3)
  {
    mostRecentStartedCall = self->mostRecentStartedCall;
  }

  [(VideoConference *)self rdlock];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", mostRecentStartedCall)), "networkQuality"}];
  v6 = v5;
  [(VideoConference *)self unlock];
  return v6;
}

- (void)setChatMode:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self wrlock];
  self->chatMode = a3;
  if (a3 == 2)
  {
    LOBYTE(self->downstreamBandwidth) = 0;
  }

  else if (!a3)
  {
    BYTE4(self->recvRTPTimeStamp.epoch) = 0;
    LOBYTE(self->downstreamBandwidth) = 1;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    sessionArray = self->_sessionArray;
    v6 = [(NSArray *)sessionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(sessionArray);
          }

          [*(*(&v11 + 1) + 8 * i) setUseRateControl:1];
        }

        v7 = [(NSArray *)sessionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }
  }

  [(VideoConference *)self unlock];
}

- (void)setIsFocus:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self wrlock];
  if (v3 && !self->isFocus)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    sessionArray = self->_sessionArray;
    v6 = [(NSArray *)sessionArray countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(sessionArray);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (([v10 isEqual:self->currentFocusSession] & 1) == 0)
          {
            VCAudioReceiver_DiscardQueueExcess([v10 audioReceiver]);
          }
        }

        v7 = [(NSArray *)sessionArray countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v7);
    }
  }

  self->isFocus = v3;
  [(VideoConference *)self unlock];
}

- (void)setInputFrequencyMeteringEnabled:(BOOL)a3
{
  if (self->inputFrequencyMeteringEnabled != a3)
  {
    if (a3)
    {
      self->_inputFFTMeter = VCFFTMeter_Create();
    }

    else
    {
      VCFFTMeter_Destroy(&self->_inputFFTMeter);
    }

    self->inputFrequencyMeteringEnabled = a3;
  }
}

- (void)setOutputFrequencyMeteringEnabled:(BOOL)a3
{
  if (self->outputFrequencyMeteringEnabled != a3)
  {
    if (a3)
    {
      self->_outputFFTMeter = VCFFTMeter_Create();
    }

    else
    {
      VCFFTMeter_Destroy(&self->_outputFFTMeter);
    }

    self->outputFrequencyMeteringEnabled = a3;
  }
}

- (void)cleanupQueues
{
  pthread_mutex_lock(&self->xRemoteLayer);

  self->frontQueue = 0;
  self->backQueue = 0;

  self->screenQueue = 0;

  pthread_mutex_unlock(&self->xRemoteLayer);
}

- (id)connectionBlobForParticipantID:(id)a3 callID:(unsigned int *)a4 error:(id *)a5
{
  v5 = [(VideoConference *)self inviteDataForParticipantID:a3 callID:a4 remoteInviteData:0 nonCellularCandidateTimeout:a5 error:0.0];

  return [v5 objectForKeyedSubscript:@"InviteDataConnectionBlob"];
}

- (id)inviteDataForParticipantID:(id)a3 callID:(unsigned int *)a4 remoteInviteData:(id)a5 nonCellularCandidateTimeout:(double)a6 error:(id *)a7
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  v13 = *a4;
  v14 = [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v15;
      v39 = 2080;
      v40 = "[VideoConference inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:]";
      v41 = 1024;
      v42 = 960;
      v43 = 1024;
      *v44 = v14;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d inviteDataForParticipantID skipReachingServers:%d", buf, 0x22u);
    }
  }

  if ((v14 & 1) != 0 || (self->downstreamBandwidth & 0x100) != 0)
  {
    [VCServerBag verifyRequiredVoiceChatKeys:0];
  }

  else
  {
    +[VCServerBag pullStoreBagKeys];
    *buf = 0;
    if (![VCServerBag verifyRequiredKeys:buf]&& VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VideoConference inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:];
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *a4;
      *buf = 136315906;
      *&buf[4] = v17;
      v39 = 2080;
      v40 = "[VideoConference inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:]";
      v41 = 1024;
      v42 = 975;
      v43 = 1024;
      *v44 = v19;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d inviteDataForParticipantID:callID %d", buf, 0x22u);
    }
  }

  if (*a4)
  {
    [(VideoConference *)self rdlock];
    v20 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a4]);
    [(VideoConference *)self unlock];
    [v20 setRequiresWifi:BYTE5(self->recvRTPTimeStamp.epoch)];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = BYTE5(self->recvRTPTimeStamp.epoch);
        *buf = 136315906;
        *&buf[4] = v21;
        v39 = 2080;
        v40 = "[VideoConference inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:]";
        v41 = 1024;
        v42 = 993;
        v43 = 1024;
        *v44 = v23;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d inviteDataForParticipantID: session.requiresWifi = %d", buf, 0x22u);
      }
    }

    if (v14)
    {
      v24 = 0;
    }

    else
    {
      v24 = [(VideoConference *)self natTypeForCallSessions:"connectionBlobForParticipantID"];
    }

    [v20 setNatType:v24];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v20 callID];
        *buf = 136316162;
        *&buf[4] = v27;
        v39 = 2080;
        v40 = "[VideoConference inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:]";
        v41 = 1024;
        v42 = 1001;
        v43 = 1024;
        *v44 = v24;
        *&v44[4] = 1024;
        *&v44[6] = v29;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d inviteDataForParticipantID: Setting natType %d for callID %d", buf, 0x28u);
      }
    }
  }

  else
  {
    v20 = [(VideoConference *)self newSessionWithDeviceRole:0 reportingHierarchyToken:0];
    *a4 = [v20 callID];
    v26 = v20;
  }

  v25 = [v20 inviteDataForParticipantID:a3 callID:a4 remoteInviteData:a5 nonCellularCandidateTimeout:a7 error:a6];
  if (v13 != *a4 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = v30;
      v39 = 2080;
      v40 = "[VideoConference inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:]";
      v41 = 1024;
      v42 = 1011;
      v43 = 2048;
      *v44 = self;
      *&v44[8] = 2048;
      v45 = a4;
      v46 = 1024;
      v47 = v13;
      _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, "VideoConference [%s] %s:%d VideoConference: CALLID MISMATCH %p client callID %ld internal callID %u", buf, 0x36u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v25)
      {
        v34 = [objc_msgSend(v25 "description")];
      }

      else
      {
        v34 = "<nil>";
      }

      *buf = 136315906;
      *&buf[4] = v32;
      v39 = 2080;
      v40 = "[VideoConference inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:]";
      v41 = 1024;
      v42 = 1014;
      v43 = 2080;
      *v44 = v34;
      _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d Returning invite data: %s", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v35;
      v39 = 2080;
      v40 = "[VideoConference inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:]";
      v41 = 1024;
      v42 = 1016;
      _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d connection-data-returned", buf, 0x1Cu);
    }
  }

  return v25;
}

- (int)natTypeForCallSessions:(const char *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->natMutex);
  if ([(NSDictionary *)self->natTypeDictionary objectForKeyedSubscript:@"summaryType"])
  {
    v5 = [-[NSDictionary objectForKeyedSubscript:](self->natTypeDictionary objectForKeyedSubscript:{@"summaryType", "unsignedLongValue"}];
  }

  else
  {
    v5 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      natTypeDictionary = self->natTypeDictionary;
      if (natTypeDictionary)
      {
        v9 = [(NSString *)[(NSDictionary *)natTypeDictionary description] UTF8String];
      }

      else
      {
        v9 = "<nil>";
      }

      v11 = 136316418;
      v12 = v6;
      v13 = 2080;
      v14 = "[VideoConference natTypeForCallSessions:]";
      v15 = 1024;
      v16 = 1033;
      v17 = 2080;
      v18 = a3;
      v19 = 2080;
      v20 = v9;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d natTypeForCallSessions(%s): natTypeDictionary %s. natType is %d.", &v11, 0x36u);
    }
  }

  pthread_mutex_unlock(&self->natMutex);
  return v5;
}

- (void)notifyDelegateOfLocalVariablesChange
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__VideoConference_notifyDelegateOfLocalVariablesChange__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateNotificationQueue, v3);
}

uint64_t __55__VideoConference_notifyDelegateOfLocalVariablesChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];

    return [v3 videoConference:? didChangeLocalVariablesForCallID:?];
  }

  return result;
}

- (void)setRequiresWifi:(BOOL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"requiresNoWifi", @"com.apple.VideoConference", &keyExistsAndHasValidFormat))
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 && a3;
  BYTE5(self->recvRTPTimeStamp.epoch) = v6;
  [(VideoConference *)self notifyDelegateOfLocalVariablesChange];
}

- (id)callMetadataForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  [(VideoConference *)self unlock];

  return [v5 callMetadata];
}

- (void)processRemoteIPChange:(id)a3 callID:(unsigned int)a4
{
  v4 = *&a4;
  [(VideoConference *)self rdlock];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];

  [v7 processRemoteIPChange:a3 callID:v4];
}

- (void)setUseViceroyBlobFormat:(BOOL)a3
{
  self->useViceroyBlobFormat = a3;
  if (a3)
  {
    self->isGKVoiceChat = 1;
  }
}

- (void)mediaRecorder:(id)a3 shouldProcessRequest:(id)a4 recipientID:(id)a5
{
  block[6] = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock:a3];
  v7 = [(NSMutableDictionary *)self->_sessionDict allValues];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VideoConference_mediaRecorder_shouldProcessRequest_recipientID___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = v7;
  block[5] = a4;
  dispatch_async(global_queue, block);
  [(VideoConference *)self unlock];
}

void __66__VideoConference_mediaRecorder_shouldProcessRequest_recipientID___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VideoConference_mediaRecorder_shouldProcessRequest_recipientID___block_invoke_2;
  block[3] = &unk_1E85F7378;
  v5 = *(a1 + 32);
  dispatch_apply(v2, global_queue, block);
}

uint64_t __66__VideoConference_mediaRecorder_shouldProcessRequest_recipientID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = *(a1 + 40);

  return [v3 messageVCMomentsRequest:v4];
}

- (void)vcAudioPowerLevelMonitor:(id)a3 isAudioBelowThreshold:(BOOL)a4
{
  v4 = a4;
  [(VideoConference *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(VideoConference *)self delegate];

    [(VideoConferenceDelegate *)v6 videoConference:self isRemoteAudioBelowThreshold:v4];
  }
}

- (BOOL)getIsVideoPaused:(BOOL *)a3 callID:(unsigned int)a4 error:(id *)a5
{
  v6 = *&a4;
  [(VideoConference *)self rdlock];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6]);
  [(VideoConference *)self unlock];
  if (v9)
  {
    if (a3)
    {
      *a3 = [v9 videoIsPaused];
    }
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a5, 32004, 101, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 1151], @"No CallID", @"Called without a callID we know about");
  }

  return v9 != 0;
}

- (BOOL)getIsAudioPaused:(BOOL *)a3 callID:(unsigned int)a4 error:(id *)a5
{
  v6 = *&a4;
  [(VideoConference *)self rdlock];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6]);
  [(VideoConference *)self unlock];
  if (v9)
  {
    if (a3)
    {
      *a3 = [v9 audioIsPaused];
    }
  }

  else
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a5, 32004, 102, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 1184], @"No CallID", @"Called without a callID we know about");
  }

  return v9 != 0;
}

- (BOOL)shouldSendAudioForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  [(VideoConference *)self unlock];

  return [v5 shouldSendAudio];
}

- (void)setSendAudio:(BOOL)a3 forCallID:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  [(VideoConference *)self rdlock];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v4)), "setShouldSendAudio:", v5}];

  [(VideoConference *)self unlock];
}

- (BOOL)setPauseAudio:(BOOL)a3 callID:(unsigned int)a4 error:(id *)a5
{
  v6 = *&a4;
  v7 = a3;
  v24 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  self->shouldResumeAudio = !v7;
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6]);
  [(VideoConference *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v12 = [objc_msgSend(v9 "description")];
      }

      else
      {
        v12 = "<nil>";
      }

      *buf = 136316162;
      v15 = v10;
      v16 = 2080;
      v17 = "[VideoConference setPauseAudio:callID:error:]";
      v18 = 1024;
      v19 = 1224;
      v20 = 2080;
      v21 = v12;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d setPauseAudio called...session = %s, callID = %d", buf, 0x2Cu);
    }
  }

  if (v9)
  {
    return [v9 setPauseAudio:v7 error:a5];
  }

  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a5, 32004, 103, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 1234], @"No CallID", @"Called without a callID we know about");
  return 0;
}

- (BOOL)setPauseVideo:(BOOL)a3 callID:(unsigned int)a4 error:(id *)a5
{
  v6 = *&a4;
  v7 = a3;
  v26 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  self->shouldResumeVideo = !v7;
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6]);
  [(VideoConference *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v12 = [objc_msgSend(v9 "description")];
      }

      else
      {
        v12 = "<nil>";
      }

      *buf = 136316418;
      v15 = v10;
      v16 = 2080;
      v17 = "[VideoConference setPauseVideo:callID:error:]";
      v18 = 1024;
      v19 = 1258;
      v20 = 2080;
      v21 = v12;
      v22 = 1024;
      v23 = v6;
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d setPauseVideo called...session = %s, callID = %d, isPaused = %d", buf, 0x32u);
    }
  }

  if (v9)
  {
    return [v9 setPauseVideo:v7 error:a5];
  }

  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a5, 32004, 104, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 1267], @"No CallID", @"Called without a callID we know about");
  return 0;
}

- (void)setPeerCN:(id)a3 callID:(unsigned int)a4
{
  v4 = *&a4;
  v24 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v10 = [objc_msgSend(v7 "description")];
        if (a3)
        {
LABEL_5:
          v11 = [objc_msgSend(a3 "description")];
LABEL_8:
          v12 = 136316418;
          v13 = v8;
          v14 = 2080;
          v15 = "[VideoConference setPeerCN:callID:]";
          v16 = 1024;
          v17 = 1281;
          v18 = 2080;
          v19 = v10;
          v20 = 2080;
          v21 = v11;
          v22 = 1024;
          v23 = v4;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d setPeerCN: called...session = %s, peerCN = %s callID = %d", &v12, 0x36u);
          goto LABEL_9;
        }
      }

      else
      {
        v10 = "<nil>";
        if (a3)
        {
          goto LABEL_5;
        }
      }

      v11 = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  [v7 setPeerCN:a3];
}

- (void)setSessionID:(id)a3 callID:(unsigned int)a4
{
  v4 = *&a4;
  v25 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_9;
  }

  v8 = VRTraceErrorLogLevelToCSTR();
  v9 = *MEMORY[0x1E6986650];
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    v10 = "<nil>";
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = "<nil>";
    goto LABEL_8;
  }

  v10 = [objc_msgSend(v7 "description")];
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = [objc_msgSend(a3 "description")];
LABEL_8:
  v13 = 136316418;
  v14 = v8;
  v15 = 2080;
  v16 = "[VideoConference setSessionID:callID:]";
  v17 = 1024;
  v18 = 1290;
  v19 = 2080;
  v20 = v10;
  v21 = 2080;
  v22 = v11;
  v23 = 1024;
  v24 = v4;
  _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d setSessionID: called...session = %s, sessionID = %s callID = %d", &v13, 0x36u);
LABEL_9:
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = &stru_1F570E008;
  }

  [v7 setSessionID:v12];
}

- (void)setPeerReportingID:(id)a3 sessionID:(id)a4 callID:(unsigned int)a5
{
  v5 = *&a5;
  v31 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5]);
  [(VideoConference *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_11;
  }

  v10 = VRTraceErrorLogLevelToCSTR();
  v11 = *MEMORY[0x1E6986650];
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v12 = [objc_msgSend(a3 "description")];
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_8:
    v13 = "<nil>";
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v14 = "<nil>";
    goto LABEL_10;
  }

  v12 = "<nil>";
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_5:
  v13 = [objc_msgSend(v9 "description")];
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v14 = [objc_msgSend(a4 "description")];
LABEL_10:
  v17 = 136316674;
  v18 = v10;
  v19 = 2080;
  v20 = "[VideoConference setPeerReportingID:sessionID:callID:]";
  v21 = 1024;
  v22 = 1301;
  v23 = 2080;
  v24 = v12;
  v25 = 2080;
  v26 = v13;
  v27 = 2080;
  v28 = v14;
  v29 = 1024;
  v30 = v5;
  _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d setPeerReportingID: called...peerReportingID = %s, session = %s, sessionID = %s callID = %d", &v17, 0x40u);
LABEL_11:
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = &stru_1F570E008;
  }

  [v9 setPeerReportingID:v15];
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = &stru_1F570E008;
  }

  [v9 setSessionID:v16];
}

- (void)updateRelayedCallType:(unsigned __int8)a3 forCallID:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  [(VideoConference *)self rdlock];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];

  [v7 updateRelayedCallType:v5];
}

- (void)updateCapabilities:(id)a3 forSession:(id)a4
{
  if ([a4 isAudioRunning])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VideoConference updateCapabilities:forSession:];
      }
    }
  }

  else
  {
    deviceRole = self->_deviceRole;
    if (deviceRole != [a3 deviceRole])
    {
      self->lastSentAudioSampleTime = 0;
      if ([a3 isVideoEnabled])
      {
        if (![(VideoConference *)self deregisterForVideoFramesWithDeviceRole:self->_deviceRole]&& VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VideoConference updateCapabilities:forSession:];
          }
        }

        if (!-[VideoConference registerForVideoFramesWithDeviceRole:captureRule:isUnpausing:](self, "registerForVideoFramesWithDeviceRole:captureRule:isUnpausing:", [a3 deviceRole], self->conferenceCaptureRule, 1) && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VideoConference updateCapabilities:forSession:];
          }
        }
      }
    }

    [a4 setCapabilities:a3];
    -[VideoConference setUpAudioIO:callID:](self, "setUpAudioIO:callID:", [a3 deviceRole], objc_msgSend(a4, "callID"));
    self->_deviceRole = [a3 deviceRole];
    if ([a3 isVideoEnabled])
    {
      if ([a3 isVideoSourceScreen])
      {
        v8 = 4;
      }

      else
      {
        v8 = 1;
      }
    }

    else if ([a3 isAudioEnabled])
    {
      if ([a3 isHalfDuplexAudio])
      {
        v8 = 7;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }

    [(VideoConference *)self setConferenceOperatingMode:v8];
  }
}

- (void)updateCapabilities:(id)a3 forCallID:(unsigned int)a4
{
  v4 = *&a4;
  v27 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      deviceRole = self->_deviceRole;
      *buf = 136316674;
      v14 = v7;
      v15 = 2080;
      v16 = "[VideoConference updateCapabilities:forCallID:]";
      v17 = 1024;
      v18 = 1351;
      v19 = 2048;
      v20 = self;
      v21 = 1024;
      v22 = v4;
      v23 = 2112;
      v24 = a3;
      v25 = 1024;
      v26 = deviceRole;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d self = %p, callID = %d, capabilities = %@, _deviceRole = %d", buf, 0x3Cu);
    }
  }

  [(VideoConference *)self rdlock];
  v10 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];
  v11 = self->_deviceRole;
  if (v11 == [a3 deviceRole] || !objc_msgSend(v10, "isAudioRunning"))
  {
    [(VideoConference *)self updateCapabilities:a3 forSession:v10];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__VideoConference_updateCapabilities_forCallID___block_invoke;
    v12[3] = &unk_1E85F73A0;
    v12[4] = self;
    v12[5] = a3;
    v12[6] = v10;
    [v10 stopAudioWithCompletionHandler:v12];
  }
}

uint64_t __48__VideoConference_updateCapabilities_forCallID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCapabilities:*(a1 + 40) forSession:*(a1 + 48)];
  v2 = *(a1 + 48);

  return [v2 startAudioWithCompletionHandler:0];
}

- (BOOL)shouldReinitializeCallWithDuration:(double)a3 forCallID:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  [(VideoConference *)self getIsAudioPaused:&v7 callID:*&a4 error:&v6];
  return (a3 > 15.0) & (v7 ^ 1);
}

- (void)cleanUpMediaRecorder
{
  vcMediaRecorder = self->_vcMediaRecorder;
  if (vcMediaRecorder)
  {
    [(VCMediaRecorder *)vcMediaRecorder invalidate];

    self->_vcMediaRecorder = 0;
  }
}

- (void)cleanUpAudioMachineLearningCoordinator
{
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinator invalidate];

  self->_audioMachineLearningCoordinator = 0;
}

- (void)setConferenceOperatingMode:(int)a3
{
  v3 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self wrlock];
  if (self->conferenceOperatingMode != v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    sessionArray = self->_sessionArray;
    v6 = [(NSArray *)sessionArray countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(sessionArray);
          }

          [*(*(&v15 + 1) + 8 * i) setOperatingMode:v3];
        }

        v7 = [(NSArray *)sessionArray countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }

    v10 = [(NSArray *)self->_sessionArray firstObject];
    if ((v3 - 1) > 1)
    {
      [(VideoConference *)self cleanUpMediaRecorder];
    }

    else if (!self->_vcMediaRecorder)
    {
      v11 = v10;
      self->_vcMediaRecorder = -[VCMediaRecorder initWithStreamToken:delegate:reportingAgent:]([VCMediaRecorder alloc], "initWithStreamToken:delegate:reportingAgent:", [v10 callID], self, objc_msgSend(v10, "reportingAgent"));
      -[VCMediaRecorderManager registerMediaRecorder:withStreamToken:](+[VCMediaRecorderManager sharedInstance](VCMediaRecorderManager, "sharedInstance"), "registerMediaRecorder:withStreamToken:", self->_vcMediaRecorder, [v11 callID]);
    }

    self->conferenceOperatingMode = v3;
  }

  v13 = v3 != 2 && v3 != 7;
  BYTE4(self->recvRTPTimeStamp.epoch) = v13;
  [(VideoConference *)self unlock];
  [(VideoConference *)self notifyDelegateOfLocalVariablesChange];
}

- (int)conferenceOperatingMode
{
  [(VideoConference *)self rdlock];
  conferenceOperatingMode = self->conferenceOperatingMode;
  [(VideoConference *)self unlock];
  return conferenceOperatingMode;
}

- (BOOL)startConnectionWithParticipantID:(id)a3 callID:(unsigned int)a4 usingInviteData:(id)a5 isCaller:(BOOL)a6 relayResponseDict:(id)a7 didOriginateRelayRequest:(BOOL)a8 capabilities:(id)a9 idsSocket:(int)a10 destination:(id)a11 error:(id *)a12
{
  v12 = a8;
  v14 = *&a4;
  v16 = [(VideoConference *)self startConnectionWithParticipantID:a3 callID:*&a4 usingInviteData:a5 isCaller:a6 capabilities:a9 idsSocket:a10 destination:a11 error:a12];
  v17 = v16;
  if (a7 && v16)
  {
    [(VideoConference *)self processRelayRequestResponse:v14 responseDict:a7 didOriginateRequest:v12];
  }

  return v17;
}

- (void)setUpAudioIO:(int)a3 callID:(unsigned int)a4
{
  v47 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  if ([(NSMutableArray *)self->_startedSessions count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VideoConference setUpAudioIO:callID:];
      }
    }
  }

  else
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27 = v7;
    v28 = v7;
    *&v25[32] = v7;
    v26 = v7;
    *v25 = v7;
    *&v25[16] = v7;
    v23 = v7;
    audioMachineLearningCoordinator = v7;
    v21 = v7;
    v22 = v7;
    v19 = v7;
    v20 = v7;
    v17 = v7;
    v18 = v7;
    audioChannelIndex = self->_audioChannelIndex;
    v16[0] = a4;
    v16[1] = audioChannelIndex;
    v16[2] = self->conferenceOperatingMode;
    v16[3] = a3;
    LODWORD(v17) = 0;
    WORD2(v17) = 259;
    *(&v17 + 1) = self;
    LODWORD(v18) = self->_clientPid;
    BYTE12(v18) = 0;
    *(&v18 + 4) = 0;
    *&v19 = a4;
    DWORD2(v19) = 1;
    v20 = 0uLL;
    WORD4(v21) = 0;
    *&v21 = 0;
    v22 = self;
    outputAudioPowerSpectrumToken = self->_outputAudioPowerSpectrumToken;
    *&v23 = self;
    *(&v23 + 1) = outputAudioPowerSpectrumToken;
    audioMachineLearningCoordinator = self->_audioMachineLearningCoordinator;
    memset(&v25[8], 0, 40);
    *&v26 = 0;
    *v25 = self;
    WORD4(v26) = 0;
    v27 = 0uLL;
    *&v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
    BYTE8(v28) = 0;
    audioIO = self->_audioIO;
    if (audioIO)
    {
      [(VCAudioIO *)audioIO reconfigureWithConfig:v16];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->_audioIO;
          conferenceOperatingMode = self->conferenceOperatingMode;
          v15 = self->_audioChannelIndex;
          *buf = 136317186;
          v30 = v11;
          v31 = 2080;
          v32 = "[VideoConference setUpAudioIO:callID:]";
          v33 = 1024;
          v34 = 1526;
          v35 = 2048;
          v36 = self;
          v37 = 2048;
          v38 = v13;
          v39 = 1024;
          v40 = conferenceOperatingMode;
          v41 = 1024;
          v42 = a3;
          v43 = 1024;
          v44 = BYTE4(v17);
          v45 = 1024;
          v46 = v15;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d (%p) reconfigured audioIO=%p operatingMode:%d deviceRole:%d direction:%d channelIndex=%u", buf, 0x48u);
        }
      }
    }

    else
    {
      self->_audioIO = [[VCAudioIO alloc] initWithConfiguration:v16];
    }

    [(VCAudioIO *)self->_audioIO setMuted:self->microphoneMuted];
    [(VCAudioIO *)self->_audioIO setInputMeteringEnabled:self->inputMeteringEnabled];
    [(VCAudioIO *)self->_audioIO setOutputMeteringEnabled:self->outputMeteringEnabled];
  }

  [(VideoConference *)self unlock];
}

- (int)setupSpatialAudioWithCallID:(unsigned int)a3
{
  v3 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  cf = 0;
  v11 = 0;
  if (!+[VCHardwareSettings isSpatialAudioSupported])
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  if ((VCSpatialAudioMetadata_Create(*MEMORY[0x1E695E480], 32, 0, 0, &cf) & 0x80000000) != 0)
  {
    [VideoConference setupSpatialAudioWithCallID:];
  }

  else if ((VCSpatialAudioMetadata_CreateEntry(v5, cf, &v12) & 0x80000000) != 0)
  {
    [VideoConference setupSpatialAudioWithCallID:];
  }

  else
  {
    [(VideoConference *)self wrlock];
    if ((VCSpatialAudioMetadata_ChannelIndex(v12, &self->_audioChannelIndex) & 0x80000000) != 0)
    {
      [VideoConference setupSpatialAudioWithCallID:];
    }

    else
    {
      VCSpatialAudioMetadata_Serialize(cf, &v11);
      v6 = +[VCAudioManager sharedVoiceChatInstance];
      v7 = [v6 registerAudioSessionId:v3 maxChannelCountMic:1 maxChannelCountSpeaker:32 spatialMetadata:v11];
      if ((v7 & 0x80000000) == 0)
      {
        v8 = cf;
        self->_spatialMetadataEntry = v12;
        v12 = 0;
        spatialMetadata = self->_spatialMetadata;
        self->_spatialMetadata = v8;
        if (v8)
        {
          CFRetain(v8);
        }

        if (spatialMetadata)
        {
          CFRelease(spatialMetadata);
        }

        [(VideoConference *)self unlock];
        goto LABEL_11;
      }

      [VideoConference setupSpatialAudioWithCallID:];
    }
  }

  v7 = v14;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v7;
}

- (void)cleanupSpatialAudioForCallID:(unsigned int)a3
{
  v3 = *&a3;
  if (+[VCHardwareSettings isSpatialAudioSupported])
  {
    spatialMetadataEntry = self->_spatialMetadataEntry;
    if (spatialMetadataEntry)
    {
      CFRelease(spatialMetadataEntry);
      self->_spatialMetadataEntry = 0;
    }

    self->_audioChannelIndex = 0;
    spatialMetadata = self->_spatialMetadata;
    if (spatialMetadata)
    {
      CFRelease(spatialMetadata);
      self->_spatialMetadata = 0;
    }

    v7 = +[VCAudioManager sharedVoiceChatInstance];

    [v7 unregisterAudioSessionId:v3];
  }
}

- (BOOL)startConnectionWithParticipantID:(id)a3 callID:(unsigned int)a4 usingInviteData:(id)a5 isCaller:(BOOL)a6 capabilities:(id)a7 idsSocket:(int)a8 destination:(id)a9 error:(id *)a10
{
  v10 = *&a8;
  v38 = *MEMORY[0x1E69E9840];
  if (!a3 || !a7 || !a10)
  {
    if (a10)
    {
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a10, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", *&a4, a5, a6, a7, "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 1596], @"Invalid Parameter", @"Called with an invalid parameter");
    }

    close(v10);
    return 0;
  }

  v12 = a6;
  v14 = *&a4;
  if (([+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")] & 1) == 0)
  {
    objc_sync_enter(self);
    [(GKNATObserver *)self->natObserver shouldTryNATCheck];
    objc_sync_exit(self);
  }

  v27 = v12;
  [(VideoConference *)self setupSpatialAudioWithCallID:v14];
  [(VideoConference *)self updateCapabilities:a7 forCallID:v14];
  [(VideoConference *)self rdlock];
  v17 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14]);
  if ([a7 isVideoEnabled])
  {
    self->mostRecentStartedCall = v14;
  }

  self->shouldResumeVideo = [a7 isVideoPausedToStart] ^ 1;
  [(VideoConference *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v17)
      {
        v20 = [(NSString *)[(VCCallSession *)v17 description] UTF8String];
      }

      else
      {
        v20 = "<nil>";
      }

      *buf = 136316162;
      v29 = v18;
      v30 = 2080;
      v31 = "[VideoConference startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]";
      v32 = 1024;
      v33 = 1627;
      v34 = 2080;
      v35 = v20;
      v36 = 1024;
      v37 = v14;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d startConnectionWithParticipantID called...session = %s, callID = %d", buf, 0x2Cu);
    }
  }

  pthread_mutex_lock(&self->xRemoteLayer);
  [(VCImageQueue *)self->frontQueue stop];
  [(VCImageQueue *)self->backQueue stop];
  [(VCImageQueue *)self->screenQueue stop];
  pthread_mutex_unlock(&self->xRemoteLayer);
  if (!v17)
  {
    [(VideoConference *)self cleanupSpatialAudioForCallID:v14];
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a10, 32004, 106, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 1684], @"No CallID", @"Called without a callID we know about");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v29 = v21;
        v30 = 2080;
        v31 = "[VideoConference startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]";
        v32 = 1024;
        v33 = 1688;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d startConnectionWithParticipantID-completed", buf, 0x1Cu);
      }
    }

    close(v10);
    return 0;
  }

  [(VideoConference *)self setUpAudioIO:self->_deviceRole callID:v14];
  [(VideoConference *)self wrlock];
  if ([a3 isEqual:self->currentFocus])
  {
    self->currentFocusSession = v17;
  }

  [(VCCallSession *)v17 setUseRateControl:LOBYTE(self->downstreamBandwidth)];
  [(VideoConference *)self unlock];
  if (BYTE1(self->downstreamBandwidth) == 1)
  {
    [a7 setIsRelayEnabled:0];
  }

  else
  {
    [(VideoConference *)self setPacketsPerBundle:1];
  }

  v23 = [(VCCallSession *)v17 startConnectionWithParticipantID:a3 callID:v14 usingInviteData:a5 isCaller:v27 capabilities:a7 idsSocket:v10 destination:a9 error:a10];
  if ((self->downstreamBandwidth & 0x100) == 0)
  {
    [(VCCallSession *)v17 startAWDStats];
  }

  if (!v23)
  {

    self->_audioIO = 0;
    [(VideoConference *)self cleanupSpatialAudioForCallID:v14];
  }

  self->dAudioHostTime = 0.0;
  self->dwAudioTS = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = v25;
      v30 = 2080;
      v31 = "[VideoConference startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]";
      v32 = 1024;
      v33 = 1676;
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d startConnectionWithParticipantID-completed", buf, 0x1Cu);
    }
  }

  return v23;
}

- (BOOL)setActive:(BOOL)a3
{
  [(VideoConferenceManager *)self->manager setActiveConference:self];
  [(VideoConference *)self notifyDelegateOfLocalVariablesChange];
  return 1;
}

- (void)setCurrentFocus:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self wrlock];

  self->currentFocus = a3;
  v19 = self;
  if (a3)
  {
    currentFocusSession = self->currentFocusSession;
    v6 = [(VideoConference *)self sessionForParticipantID:a3];
    self->currentFocusSession = v6;
    if (([(VCCallSession *)currentFocusSession isEqual:v6]& 1) == 0)
    {
      VCAudioReceiver_DiscardQueueExcess([(VCCallSession *)self->currentFocusSession audioReceiver]);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->currentFocusSession;
        *buf = 136315906;
        v21 = v7;
        v22 = 2080;
        v23 = "[VideoConference setCurrentFocus:]";
        v24 = 1024;
        v25 = 1718;
        v26 = 2048;
        v27 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d setCurrentFocus: updateLastReceivedPacket at client for session: %p", buf, 0x26u);
      }
    }

    [(VCCallSession *)self->currentFocusSession updateLastReceivedPacket:1 packetType:9];
  }

  else
  {
    self->currentFocusSession = 0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    sessionArray = self->_sessionArray;
    v11 = [(NSArray *)sessionArray countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      v14 = MEMORY[0x1E6986650];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(sessionArray);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *v14;
            if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v21 = v17;
              v22 = 2080;
              v23 = "[VideoConference setCurrentFocus:]";
              v24 = 1024;
              v25 = 1709;
              v26 = 2048;
              v27 = v16;
              _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d setCurrentFocus: updateLastReceivedPacket at focus for session: %p", buf, 0x26u);
            }
          }

          [(VCCallSession *)v16 updateLastReceivedPacket:1 packetType:9];
        }

        v12 = [(NSArray *)sessionArray countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v12);
    }
  }

  [(VideoConference *)v19 unlock];
}

- (void)setQualityDelegate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  self->qualityDelegate = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sessionArray = self->_sessionArray;
  v6 = [(NSArray *)sessionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(sessionArray);
        }

        [*(*(&v11 + 1) + 8 * i) setQualityDelegate:a3];
      }

      v7 = [(NSArray *)sessionArray countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  [(VideoConference *)self unlock];
}

- (void)updatedMutedPeers:(id)a3 forParticipantID:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self wrlock];
  if (a4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    sessionArray = self->_sessionArray;
    v8 = [(NSArray *)sessionArray countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(sessionArray);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(v12 "remoteParticipantID")])
          {
            [v12 setMutedPeers:a3];
            goto LABEL_13;
          }
        }

        v9 = [(NSArray *)sessionArray countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v13 = a3;

    self->mutedPeers = a3;
  }

LABEL_13:
  [(VideoConference *)self unlock];
}

- (void)updatedConnectedPeers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self wrlock];
  v17 = 0uLL;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    v8 = *v14;
    do
    {
      v9 = 0;
      v7 = v7;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(NSArray *)self->connectedPeers indexOfObject:*(*(&v13 + 1) + 8 * v9)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(&v17 + v7) = self->speakingArray[v10];
        }

        ++v7;
        ++v9;
      }

      while (v6 != v9);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  *self->speakingArray = v17;
  v11 = a3;

  self->connectedPeers = a3;
  [(VideoConference *)self unlock];
}

- (void)stopAllCalls:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v5 = [(NSArray *)self->_sessionArray copy];
  [(VideoConference *)self unlock];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[VideoConference stopCallID:didRemoteCancel:error:](self, "stopCallID:didRemoteCancel:error:", [*(*(&v19 + 1) + 8 * v9++) callID], 0, a3);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v7);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v10;
      v14 = 2080;
      v15 = "[VideoConference stopAllCalls:]";
      v16 = 1024;
      v17 = 1785;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d stopAllCalls-completed", &v12, 0x1Cu);
    }
  }
}

- (void)stopCallID:(unsigned int)a3
{
  v11 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self stopCallID:*&a3 didRemoteCancel:0 error:0];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VideoConference stopCallID:]";
      v9 = 1024;
      v10 = 1790;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d stopCallID-completed", &v5, 0x1Cu);
    }
  }
}

- (void)cancelCallID:(unsigned int)a3
{
  v11 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self cancelCallID:*&a3 error:0];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VideoConference cancelCallID:]";
      v9 = 1024;
      v10 = 1795;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d cancelCallID-completed", &v5, 0x1Cu);
    }
  }
}

- (void)remoteCancelledCallID:(unsigned int)a3
{
  v11 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self stopCallID:*&a3 didRemoteCancel:1 error:0];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VideoConference remoteCancelledCallID:]";
      v9 = 1024;
      v10 = 1800;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d remoteCancelledCallID-completed", &v5, 0x1Cu);
    }
  }
}

- (void)setCallReport:(unsigned int)a3 withReport:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = [a4 lengthOfBytesUsingEncoding:4];
  if (v5)
  {
    v6 = (v5 + 1);
    if (v5 != -1)
    {
      memset(v9 - ((v6 + 15) & 0x1FFFFFFF0), 170, v6);
    }

    [a4 getCString:v9 - ((v6 + 15) & 0x1FFFFFFF0) maxLength:v6 encoding:4];
    if (*(v9 - ((v6 + 15) & 0x1FFFFFFF0)))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9 - ((v6 + 15) & 0x1FFFFFFF0)];
      v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"Report", 0}];
    }

    else
    {
      v8 = 0;
    }

    reportingClassSendMsgToServer();
  }
}

- (void)setMicrophoneMuted:(BOOL)a3
{
  self->microphoneMuted = a3;
  [(VCAudioIO *)self->_audioIO setMuted:?];

  [(VideoConference *)self notifyDelegateOfLocalVariablesChange];
}

- (double)localFramerateForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v3];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{v5), "sessionTransmittingFramerate"}];
  v7 = v6;

  [(VideoConference *)self unlock];
  return v7;
}

- (double)localBitrateForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v3];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{v5), "sessionTransmittingBitrate"}];
  v7 = v6;

  [(VideoConference *)self unlock];
  return v7;
}

- (double)remoteFramerateForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v3];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{v5), "sessionReceivingFramerate"}];
  v7 = v6;

  [(VideoConference *)self unlock];
  return v7;
}

- (double)remoteBitrateForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v3];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{v5), "sessionReceivingBitrate"}];
  v7 = v6;

  [(VideoConference *)self unlock];
  return v7;
}

- (double)remotePacketLossRateForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), "packetLateAndMissingRatio"}];
  v6 = v5;
  [(VideoConference *)self unlock];
  return v6;
}

- (double)localPacketLossRateForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), "packetLossRate"}];
  v6 = v5;
  [(VideoConference *)self unlock];
  return v6;
}

- (double)roundTripTimeForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), "roundTripTime"}];
  v6 = v5;
  [(VideoConference *)self unlock];
  return v6;
}

- (CGSize)remoteFrameSizeForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  v6 = [v5 remoteFrameWidth];
  v7 = [v5 remoteFrameHeight];
  [(VideoConference *)self unlock];
  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)statsForCallID:(unsigned int)a3
{
  v3 = *&a3;
  v33[17] = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  [v5 roundTripTime];
  v7 = v6;
  [v5 packetLossRate];
  v9 = v8;
  [v5 packetLateAndMissingRatio];
  v11 = v10;
  [v5 sessionReceivingBitrate];
  v13 = v12;
  [v5 sessionReceivingFramerate];
  v15 = v14;
  [v5 sessionTransmittingBitrate];
  v17 = v16;
  [v5 sessionTransmittingFramerate];
  v19 = v18;
  v20 = [v5 remoteFrameWidth];
  v21 = [v5 remoteFrameHeight];
  v22 = [v5 primaryConnectionType];
  v23 = [v5 audioTierNetworkBitrate];
  v24 = [v5 audioTierAudioCodecBitrate];
  v25 = [v5 audioTierRedNumPayloads];
  v26 = [v5 audioTierPacketsPerBundle];
  v27 = [v5 audioTierPayload];
  [(VideoConference *)self unlock];
  v28 = AVConferenceConnectionTypeP2P;
  v29 = AVConferenceConnectionTypeRelayP2PUpgrade;
  if (v22 != 6)
  {
    v29 = AVConferenceConnectionTypeRelay;
  }

  if (v22 != 1)
  {
    v28 = v29;
  }

  v31 = *v28;
  v32[0] = @"LocalFrameHeight";
  v33[0] = [MEMORY[0x1E696AD98] numberWithInt:{-[VideoConference localFrameHeight](self, "localFrameHeight")}];
  v32[1] = @"LocalFrameWidth";
  v33[1] = [MEMORY[0x1E696AD98] numberWithInt:{-[VideoConference localFrameWidth](self, "localFrameWidth")}];
  v32[2] = @"RemoteFrameHeight";
  v33[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v21];
  v32[3] = @"RemoteFrameWidth";
  v33[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
  v32[4] = @"AudioTierNetworkBitrate";
  v33[4] = [MEMORY[0x1E696AD98] numberWithInt:v23];
  v32[5] = @"AudioTierAudioBitrate";
  v33[5] = [MEMORY[0x1E696AD98] numberWithInt:v24];
  v32[6] = @"AudioTierPacketsPerBundle";
  v33[6] = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v32[7] = @"AudioTierRedNumPayloads";
  v33[7] = [MEMORY[0x1E696AD98] numberWithInt:v25];
  v32[8] = @"AudioTierPayload";
  v33[8] = [MEMORY[0x1E696AD98] numberWithInt:v27];
  v32[9] = @"RoundTripTime";
  v33[9] = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v32[10] = @"LocalPacketLossRate";
  v33[10] = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v32[11] = @"RemotePacketLossRate";
  v33[11] = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v32[12] = @"RemoteBitRate";
  v33[12] = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v32[13] = @"LocalBitRate";
  v33[13] = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v32[14] = @"RemoteFrameRate";
  v33[14] = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v32[15] = @"LocalFrameRate";
  v32[16] = @"AVConferenceConnectionType";
  v33[15] = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  v33[16] = v31;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:17];
}

- (void)setPacketsPerBundle:(int)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->packetsPerBundle != a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        packetsPerBundle = self->packetsPerBundle;
        *buf = 136316162;
        v19 = v5;
        v20 = 2080;
        v21 = "[VideoConference setPacketsPerBundle:]";
        v22 = 1024;
        v23 = 2019;
        v24 = 1024;
        v25 = packetsPerBundle;
        v26 = 1024;
        v27 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VideoConference setPacketsPerBundle %d -> %d", buf, 0x28u);
      }
    }

    self->packetsPerBundle = a3;
    [(VideoConference *)self rdlock];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sessionArray = self->_sessionArray;
    v9 = [(NSArray *)sessionArray countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(sessionArray);
          }

          [*(*(&v14 + 1) + 8 * i) setPacketsPerBundle:self->packetsPerBundle];
        }

        v10 = [(NSArray *)sessionArray countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v10);
    }

    [(VideoConference *)self unlock];
  }
}

- (void)setHasMic:(BOOL)a3
{
  v3 = a3;
  [(VideoConference *)self wrlock];
  self->hasMic = v3;
  if (v3)
  {
    if (self->isTalking && [(VideoConferenceManager *)self->manager conferenceWithMic]!= self)
    {
      [(VideoConferenceSpeakingDelegate *)self->speakingDelegate didStartSpeaking:0];
    }

    [(VideoConference *)self unlock];
    manager = self->manager;
    v6 = self;
LABEL_13:

    [(VideoConferenceManager *)manager setConferenceWithMic:v6];
    return;
  }

  if ([(VideoConferenceManager *)self->manager conferenceWithMic]== self)
  {
    if (self->isTalking)
    {
      [(VideoConferenceSpeakingDelegate *)self->speakingDelegate didStopSpeaking:0];
    }

    [(VideoConference *)self unlock];
    manager = self->manager;
    v6 = 0;
    goto LABEL_13;
  }

  [(VideoConference *)self unlock];
}

- (void)setConferenceVolume:(float)a3
{
  v3 = 1.0;
  if (a3 <= 1.0)
  {
    v3 = a3;
  }

  v4 = a3 < 0.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = v3;
  }

  self->conferenceVolume = v5;
}

- (void)setEnableSpeakerPhone:(BOOL)a3
{
  v3 = a3;
  v4 = +[VCAudioManager sharedVoiceChatInstance];

  [v4 setSpeakerPhoneEnabled:v3];
}

- (BOOL)isSpeakerPhoneEnabled
{
  v2 = +[VCAudioManager sharedVoiceChatInstance];

  return [v2 isSpeakerPhoneEnabled];
}

- (void)processRelayRequestResponse:(unsigned int)a3 responseDict:(id)a4 didOriginateRequest:(BOOL)a5
{
  v7 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7]);
  if (v9)
  {
    v10 = v9;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v11;
        v18 = 2080;
        v19 = "[VideoConference processRelayRequestResponse:responseDict:didOriginateRequest:]";
        v20 = 1024;
        v21 = 2080;
        v22 = 2080;
        v23 = [objc_msgSend(v10 "description")];
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d processRelayRequestResponse:session %s", buf, 0x26u);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__VideoConference_processRelayRequestResponse_responseDict_didOriginateRequest___block_invoke;
    block[3] = &unk_1E85F37C8;
    block[4] = v10;
    block[5] = a4;
    v15 = a5;
    dispatch_async(global_queue, block);
  }

  [(VideoConference *)self unlock];
}

- (void)processRelayUpdate:(unsigned int)a3 updateDict:(id)a4 didOriginateRequest:(BOOL)a5
{
  v7 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7]);
  if (v9)
  {
    v10 = v9;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v11;
        v18 = 2080;
        v19 = "[VideoConference processRelayUpdate:updateDict:didOriginateRequest:]";
        v20 = 1024;
        v21 = 2101;
        v22 = 2080;
        v23 = [objc_msgSend(v10 "description")];
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d processRelayUpdate:session %s", buf, 0x26u);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__VideoConference_processRelayUpdate_updateDict_didOriginateRequest___block_invoke;
    block[3] = &unk_1E85F37C8;
    block[4] = v10;
    block[5] = a4;
    v15 = a5;
    dispatch_async(global_queue, block);
  }

  [(VideoConference *)self unlock];
}

- (void)handleCellTechChange:(int)a3 cellularMaxPktLen:(unsigned __int16)a4
{
  v4 = a4;
  v5 = *&a3;
  v18 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sessionArray];
  [(VideoConference *)self unlock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
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
        [v12 handleCellularMTUChanged:v4];
        [v12 handleCellTechChange:v5];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }
}

- (void)setPeerProtocolVersion:(unsigned int)a3 forCallID:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  [(VideoConference *)self rdlock];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];

  [v7 setPeerProtocolVersion:v5];
}

- (unsigned)powerFloatToInt:(float)a3
{
  if (a3 >= 0.0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    if (a3 < -120.0)
    {
      a3 = -120.0;
    }

    return (a3 * 2.0 + 255.0);
  }

  return v4;
}

- (float)powerIntToFloat:(unsigned __int8)a3
{
  result = (a3 + -255.0) * 0.5;
  if (((a3 + 1) & 0xFE) == 0)
  {
    return NAN;
  }

  return result;
}

- (void)didSuspendAudioIO:(id)a3
{
  v6[5] = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v4 = [(NSMutableDictionary *)self->_sessionDict allValues];
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__VideoConference_didSuspendAudioIO___block_invoke;
  v6[3] = &unk_1E85F3778;
  v6[4] = v4;
  dispatch_async(global_queue, v6);
  [(VideoConference *)self unlock];
}

void __37__VideoConference_didSuspendAudioIO___block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__VideoConference_didSuspendAudioIO___block_invoke_2;
  v4[3] = &unk_1E85F73C8;
  v4[4] = *(a1 + 32);
  dispatch_apply(v2, global_queue, v4);
}

uint64_t __37__VideoConference_didSuspendAudioIO___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v2 setSuspendAudio];

  return [v2 setSuspendVideo];
}

- (void)didResumeAudioIO:(id)a3
{
  v6[5] = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v4 = [(NSMutableDictionary *)self->_sessionDict allValues];
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__VideoConference_didResumeAudioIO___block_invoke;
  v6[3] = &unk_1E85F3778;
  v6[4] = v4;
  dispatch_async(global_queue, v6);
  [(VideoConference *)self unlock];
}

void __36__VideoConference_didResumeAudioIO___block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__VideoConference_didResumeAudioIO___block_invoke_2;
  v4[3] = &unk_1E85F73C8;
  v4[4] = *(a1 + 32);
  dispatch_apply(v2, global_queue, v4);
}

uint64_t __36__VideoConference_didResumeAudioIO___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v2 setResumeAudio];

  return [v2 setResumeVideo];
}

- (void)serverDidDie
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v3, 32000, 119, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 2194], @"Call failed", @"Media server terminated");
  [(VideoConference *)self stopAllCalls:v3[0]];
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:FourccToCStr(a3->codecType)];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3->sampleRate];
  [(VideoConference *)self rdlock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sessionArray = self->_sessionArray;
  v8 = [(NSArray *)sessionArray countByEnumeratingWithState:&v14 objects:v13 count:16];
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
          objc_enumerationMutation(sessionArray);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setBasebandCodecType:v5];
        [v12 setBasebandCodecSampleRate:v6];
        [v12 sendBasebandCodecMessage];
      }

      v9 = [(NSArray *)sessionArray countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }

  [(VideoConference *)self unlock];
}

- (void)pushAudioSamples:(opaqueVCAudioBufferList *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  AveragePower = VCAudioBufferList_GetAveragePower(a3);
  VoiceActivity = VCAudioBufferList_GetVoiceActivity(a3);
  Timestamp = VCAudioBufferList_GetTimestamp(a3);
  [(VCAudioPowerSpectrumSource *)self->_inputAudioPowerSpectrumSource pushAudioSamples:a3];
  if ([(VideoConference *)self tryrdlock])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 136315906;
        *&v22[4] = v8;
        *&v22[12] = 2080;
        *&v22[14] = "[VideoConference pushAudioSamples:]";
        *&v22[22] = 1024;
        LODWORD(v23[0]) = 2277;
        WORD2(v23[0]) = 1024;
        *(v23 + 6) = Timestamp;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d IOProc:  Missing grabbing lock onCaptureSound at %u", v22, 0x22u);
      }
    }
  }

  else
  {
    if (BYTE4(self->recvRTPTimeStamp.epoch) == 1)
    {
      self->isTalking = 1;
    }

    else
    {
      [(VideoConference *)self updateSpeaking:VoiceActivity timeStamp:Timestamp];
    }

    chatMode = self->chatMode;
    if (chatMode == 2)
    {
      if (self->hasMic)
      {
        [(VideoConference *)self captureMeshMode:a3];
      }
    }

    else if (!chatMode)
    {
      if (self->isFocus)
      {
        [(VideoConference *)self captureAsFocus:a3];
      }

      else
      {
        [(VideoConference *)self captureAsFocusClient:a3];
      }
    }

    VCMediaRecorder_AddLocalAudioSampleBuffer(self->_vcMediaRecorder, a3, self->dwAudioTS);
    if (self->inputMeteringEnabled && self->inputMeterLevel != AveragePower)
    {
      self->inputMeterLevel = AveragePower;
      v11 = [(VideoConference *)self delegate];
      *&v12 = self->inputMeterLevel;
      [(VideoConferenceDelegate *)v11 videoConference:self updateInputMeterLevel:v12];
    }

    if (self->inputFrequencyMeteringEnabled)
    {
      v13 = VCFFTMeter_Compute(self->_inputFFTMeter, a3);
      [(VideoConferenceDelegate *)[(VideoConference *)self delegate] videoConference:self updateInputFrequencyLevel:v13];
      if (v13)
      {
        CFRelease(v13);
      }
    }

    if ((self->downstreamBandwidth & 0x100) == 0)
    {
      timescale = self->recvRTPTimeStamp.timescale;
      if (timescale)
      {
        v15 = *&self->recvRTPTimeStamp.flags;
        value_high = HIDWORD(self->recvRTPTimeStamp.value);
        *v22 = *(&self->packetsPerBundle + 1);
        *&v22[8] = __PAIR64__(timescale, value_high);
        *&v22[16] = v15;
        v23[0] = VCAudioBufferList_GetHostTime(a3);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        sessionArray = self->_sessionArray;
        v18 = [(NSArray *)sessionArray countByEnumeratingWithState:&v25 objects:v24 count:16, *v22, *&v22[8], *&v22[16], v23[0]];
        if (v18)
        {
          v19 = v18;
          v20 = *v26;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v26 != v20)
              {
                objc_enumerationMutation(sessionArray);
              }

              [*(*(&v25 + 1) + 8 * i) updateSourcePlayoutTime:v22];
            }

            v19 = [(NSArray *)sessionArray countByEnumeratingWithState:&v25 objects:v24 count:16];
          }

          while (v19);
        }
      }
    }

    [(VideoConference *)self unlock];
  }

  if ((self->downstreamBandwidth & 0x100) == 0)
  {
    pthread_mutex_lock(&self->xAudioTS);
    self->dAudioHostTime = VCAudioBufferList_GetHostTime(a3);
    self->dwAudioTS = self->lastSentAudioSampleTime;
    pthread_mutex_unlock(&self->xAudioTS);
  }
}

- (void)pullAudioSamples:(opaqueVCAudioBufferList *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  Timestamp = VCAudioBufferList_GetTimestamp(a3);
  VCAudioBufferList_ZeroMemory(a3);
  if ([(VideoConference *)self tryrdlock])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v6;
        v16 = 2080;
        v17 = "[VideoConference pullAudioSamples:]";
        v18 = 1024;
        v19 = 2337;
        v20 = 2048;
        v21 = self;
        v22 = 1024;
        v23 = Timestamp;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VideoConference[%p] IOProc:  Missing grabbing lock onPlaySound at %u", &v14, 0x2Cu);
      }
    }
  }

  else
  {
    chatMode = self->chatMode;
    if (chatMode == 2)
    {
      [(VideoConference *)self pullDecodedMeshMode:a3];
    }

    else if (!chatMode)
    {
      if (self->isFocus)
      {
        [(VideoConference *)self pullDecodedAsFocus:a3];
      }

      else
      {
        [(VideoConference *)self pullDecodedAsFocusClient:a3];
      }
    }

    conferenceVolume = self->conferenceVolume;
    if (conferenceVolume < 1.0)
    {
      VCAudioBufferList_ApplyGain(a3, conferenceVolume);
    }

    [(VCAudioPowerSpectrumSource *)self->_outputAudioPowerSpectrumSource pushAudioSamples:a3];
    AveragePower = VCAudioBufferList_GetAveragePower(a3);
    [(VCAudioPowerLevelMonitor *)self->_remoteAudioPowerLevelMonitor detectRemoteAveragePowerLevel:Timestamp timestamp:?];
    if (self->outputMeteringEnabled && self->outputMeterLevel != AveragePower)
    {
      self->outputMeterLevel = AveragePower;
      v11 = [(VideoConference *)self delegate];
      *&v12 = self->outputMeterLevel;
      [(VideoConferenceDelegate *)v11 videoConference:self updateOutputMeterLevel:v12];
    }

    if (self->outputFrequencyMeteringEnabled)
    {
      v13 = VCFFTMeter_Compute(self->_outputFFTMeter, a3);
      [(VideoConferenceDelegate *)[(VideoConference *)self delegate] videoConference:self updateOutputFrequencyLevel:v13];
      if (v13)
      {
        CFRelease(v13);
      }
    }

    VCMediaRecorder_AddRemoteAudioSampleBuffer(self->_vcMediaRecorder, a3, self->dwAudioTS);

    [(VideoConference *)self unlock];
  }
}

- (BOOL)updateSpeaking:(unsigned int)a3 timeStamp:(unsigned int)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!self->isTalking)
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
            v13 = 136315906;
            v14 = v6;
            v15 = 2080;
            v16 = "[VideoConference(AudioProcessing) updateSpeaking:timeStamp:]";
            v17 = 1024;
            v18 = 2359;
            v19 = 1024;
            v20 = a4;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d START TALKING at %u", &v13, 0x22u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [VideoConference(AudioProcessing) updateSpeaking:timeStamp:];
        }
      }

      self->isTalking = 1;
      if (self->hasMic)
      {
        [(VideoConferenceSpeakingDelegate *)self->speakingDelegate didStartSpeaking:0];
      }
    }

    result = 0;
    self->talkTime = a4;
  }

  else if (self->isTalking)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315906;
          v14 = v9;
          v15 = 2080;
          v16 = "[VideoConference(AudioProcessing) updateSpeaking:timeStamp:]";
          v17 = 1024;
          v18 = 2367;
          v19 = 1024;
          v20 = a4;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d STOP TALKING at %u", &v13, 0x22u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [VideoConference(AudioProcessing) updateSpeaking:timeStamp:];
      }
    }

    self->isTalking = 0;
    if (self->hasMic)
    {
      [(VideoConferenceSpeakingDelegate *)self->speakingDelegate didStopSpeaking:0];
    }

    return 1;
  }

  else
  {
    return 0;
  }

  return result;
}

- (unsigned)pruneQuietestPeers:(unsigned int)a3 talking:(unsigned int)a4 mask:(unsigned int)a5 meters:(char *)a6
{
  for (i = self->talkingPeersLimit; a4 > i; --a4)
  {
    if (a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = -1;
      do
      {
        if (((a5 >> v7) & 1) != 0 && a6[v7] < v9)
        {
          v9 = a6[v7];
          v8 = v7;
        }

        ++v7;
      }

      while (a3 != v7);
    }

    else
    {
      v8 = 0;
    }

    a5 &= ~(1 << v8);
  }

  return a5;
}

- (unsigned)calculateTalkingMaskAtTimeStamp:(unsigned int)a3
{
  v3 = *&a3;
  v37 = *MEMORY[0x1E69E9840];
  v5 = self->isTalking && self->hasMic;
  sourceBuffer = self->_sourceBuffer;
  SampleCapacity = VCAudioBufferList_GetSampleCapacity(sourceBuffer);
  VCAudioBufferList_SetSampleCount(sourceBuffer, SampleCapacity);
  v31 = 200;
  SampleCount = VCAudioBufferList_GetSampleCount(self->_sourceBuffer);
  v9 = [(NSArray *)self->_sessionArray count];
  v10 = (v9 + 1);
  v11 = (v10 + 15) & 0x1FFFFFFF0;
  v12 = &v27 - v11;
  if (v9 != -1)
  {
    memset(&v27 - v11, 170, v10);
  }

  v27 = v10;
  bzero(v12, v10);
  *&v13 = self->inputMeterLevel;
  v14 = [(VideoConference *)self powerFloatToInt:v13];
  v28 = v12;
  *v12 = v14;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  sessionArray = self->_sessionArray;
  v16 = [(NSArray *)sessionArray countByEnumeratingWithState:&v33 objects:v32 count:16];
  v30 = v5;
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    LODWORD(v19) = 1;
    v29 = v5;
    do
    {
      v20 = 0;
      v19 = v19;
      do
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(sessionArray);
        }

        v21 = *(*(&v33 + 1) + 8 * v20);
        if ([v21 state] == 1 && objc_msgSend(v21, "isAudioRunning") && objc_msgSend(v21, "shouldSendAudio"))
        {
          v22 = [objc_msgSend(v21 "ringBuf")];
          if (v22)
          {
            v23 = SampleCount - v22;
            if (((SampleCount - v22) | v22) < 0)
            {
              v23 = 0;
            }

            v24 = v31;
            VCAudioBufferList_SetTime(*(&self->super.super.isa + v31), v23 + v3, 0.0);
            [(VideoConference *)self recvSamplesForSession:v21 sampleBuffer:*(&self->super.super.isa + v24)];
          }

          if ([v21 lastReceived] >= v3)
          {
            v25 = -[NSArray indexOfObject:](self->connectedPeers, "indexOfObject:", [v21 remoteParticipantID]);
            if (v25 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v28[v19] = self->speakingArray[v25];
              v29 |= 1 << v19;
              ++v30;
            }
          }
        }

        ++v19;
        ++v20;
      }

      while (v17 != v20);
      v17 = [(NSArray *)sessionArray countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v17);
  }

  else
  {
    v29 = v5;
  }

  return [(VideoConference *)self pruneQuietestPeers:v27 talking:v30 mask:v29 meters:v28];
}

- (void)calculateMixingArrays:(unsigned int *)a3 talkingMask:(unsigned int)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  sessionArray = self->_sessionArray;
  v6 = [(NSArray *)sessionArray countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = 0;
    v9 = *v35;
    v21 = *v35;
    v22 = sessionArray;
    v20 = a3;
    do
    {
      v10 = 0;
      v8 = v8;
      v24 = v7;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(sessionArray);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        if ([v11 state] == 1 && objc_msgSend(v11, "isAudioRunning"))
        {
          v12 = a4 & ~(1 << (v8 + 1));
          v13 = [objc_msgSend(v11 "mutedPeers")];
          v26 = v8;
          if (v13)
          {
            if (![objc_msgSend(v11 "mutedPeers")] || (v12 &= ~1u, --v13, v13))
            {
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              obj = self->_sessionArray;
              v14 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v28 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v30;
                v17 = 1;
                while (2)
                {
                  v18 = 0;
                  v25 = v17 + v15;
                  do
                  {
                    if (*v30 != v16)
                    {
                      objc_enumerationMutation(obj);
                    }

                    if ([objc_msgSend(v11 "mutedPeers")])
                    {
                      v12 &= ~(1 << v17);
                      if (!--v13)
                      {
                        a3 = v20;
                        goto LABEL_23;
                      }
                    }

                    LOBYTE(v17) = v17 + 1;
                    ++v18;
                  }

                  while (v15 != v18);
                  v15 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v28 count:16];
                  a3 = v20;
                  v17 = v25;
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }
              }
            }
          }

LABEL_23:
          ++v8;
          a3[v26] = v12;
          v9 = v21;
          sessionArray = v22;
          v7 = v24;
        }

        else
        {
          a3[v8++] = 0;
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [(NSArray *)sessionArray countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)captureAsFocus:(opaqueVCAudioBufferList *)a3
{
  v3 = a3;
  v57 = *MEMORY[0x1E69E9840];
  Timestamp = VCAudioBufferList_GetTimestamp(a3);
  SampleCount = VCAudioBufferList_GetSampleCount(v3);
  VCAudioBufferList_Reset(self->_sinkBufferMix);
  v46 = 216;
  sinkBufferMix = self->_sinkBufferMix;
  v7 = VCAudioBufferList_GetSampleCount(v3);
  VCAudioBufferList_SetSampleCount(sinkBufferMix, v7);
  v45 = Timestamp;
  v8 = [(VideoConference *)self calculateTalkingMaskAtTimeStamp:Timestamp];
  v49 = 440;
  v41 = [(NSArray *)self->_sessionArray count];
  v9 = 4 * v41;
  v10 = &v37 - ((v9 + 15) & 0x7FFFFFFF0);
  if (v41)
  {
    memset(&v37 - ((v9 + 15) & 0x7FFFFFFF0), 170, v9);
  }

  else
  {
    v9 = 0;
  }

  bzero(v10, v9);
  [(VideoConference *)self calculateMixingArrays:v10 talkingMask:v8];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = *(&self->super.super.isa + v49);
  v12 = [v11 countByEnumeratingWithState:&v53 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    LODWORD(v14) = 0;
    v48 = (v41 + 1);
    v47 = v41;
    v37 = v41 - 1;
    v50 = *v54;
    v40 = v3;
    v39 = v10;
    v38 = v11;
    do
    {
      v15 = 0;
      v14 = v14;
      v42 = v14;
      v43 = v13;
      do
      {
        if (*v54 != v50)
        {
          objc_enumerationMutation(v11);
        }

        v51 = v14 + 1;
        v16 = *(*(&v53 + 1) + 8 * v15);
        if ([v16 state] == 1)
        {
          if ([v16 isAudioRunning])
          {
            if ([v16 shouldSendAudio])
            {
              v17 = *&v10[4 * v14];
              if (v17 != -1)
              {
                if (v17)
                {
                  v19 = v46;
                  VCAudioBufferList_Reset(*(&self->super.super.isa + v46));
                  v20 = *(&self->super.super.isa + v19);
                  HostTime = VCAudioBufferList_GetHostTime(v3);
                  v22 = VCAudioBufferList_GetTimestamp(v3);
                  VCAudioBufferList_SetTime(v20, v22, HostTime);
                  v23 = *(&self->super.super.isa + v19);
                  v24 = VCAudioBufferList_GetSampleCount(v3);
                  VCAudioBufferList_SetSampleCount(v23, v24);
                  VCAudioBufferList_ZeroMemory(*(&self->super.super.isa + v19));
                  if (v17)
                  {
                    VCAudioBufferList_Mix(*(&self->super.super.isa + v46), v3);
                  }

                  if (v41 >= 1)
                  {
                    v25 = 1;
                    do
                    {
                      if ((v17 >> v25))
                      {
                        v26 = [*(&self->super.super.isa + v49) objectAtIndexedSubscript:v25 - 1];
                        sinkBuffer = self->_sinkBuffer;
                        v28 = self;
                        v29 = SampleCount;
                        VCAudioBufferList_SetSampleCount(sinkBuffer, SampleCount);
                        AudioBufferList = VCAudioBufferList_GetAudioBufferList(v28->_sinkBuffer);
                        v31 = [v26 ringBuf];
                        v32 = v29;
                        self = v28;
                        if ([v31 fetch:*(AudioBufferList + 16) numSamples:v32 timestamp:v45])
                        {
                          VCAudioBufferList_Mix(*(&v28->super.super.isa + v46), v28->_sinkBuffer);
                        }
                      }

                      ++v25;
                    }

                    while (v48 != v25);
                  }

                  if (self->isTalking)
                  {
                    v10 = v39;
                    v11 = v38;
                    if (self->hasMic)
                    {
                      *&v33 = VCAudioBufferList_GetAveragePower(*(&self->super.super.isa + v46));
                      v34 = [(VideoConference *)self powerFloatToInt:v33];
                    }

                    else
                    {
                      v34 = 0;
                    }

                    v3 = v40;
                  }

                  else
                  {
                    v34 = 0;
                    v3 = v40;
                    v10 = v39;
                    v11 = v38;
                  }

                  [v16 setInputMeter:{((v34 + objc_msgSend(v16, "bundledPackets") * objc_msgSend(v16, "inputMeter")) / (objc_msgSend(v16, "bundledPackets") + 1))}];
                  [v16 pushAudioSamples:*(&self->super.super.isa + v46)];
                  v13 = v43;
                  if (v14 < v37)
                  {
                    v35 = v51;
                    do
                    {
                      if (*&v10[4 * v35] == v17)
                      {
                        v36 = [*(&self->super.super.isa + v49) objectAtIndexedSubscript:v35];
                        if ([v36 shouldSendAudio])
                        {
                          [v36 setInputMeter:{((v34 + objc_msgSend(v36, "bundledPackets") * objc_msgSend(v36, "inputMeter")) / (objc_msgSend(v36, "bundledPackets") + 1))}];
                          [v36 pushAudioSamples:*(&self->super.super.isa + v46)];
                        }

                        *&v10[4 * v35] = -1;
                        v13 = v43;
                      }

                      ++v35;
                    }

                    while (v35 < v47);
                  }
                }

                else
                {
                  v18 = VCAudioBufferList_GetSampleCount(v3);
                  VCAudioBufferList_SetSampleCount(v3, 0);
                  [v16 pushAudioSamples:v3];
                  VCAudioBufferList_SetSampleCount(v3, v18);
                  v13 = v43;
                }
              }
            }
          }
        }

        ++v15;
        v14 = v51;
      }

      while (v15 != v13);
      LODWORD(v14) = v42 + v13;
      v13 = [v11 countByEnumeratingWithState:&v53 objects:v52 count:16];
    }

    while (v13);
  }
}

- (void)captureAsFocusClient:(opaqueVCAudioBufferList *)a3
{
  SampleCount = VCAudioBufferList_GetSampleCount(a3);
  if ([(VCCallSession *)self->currentFocusSession shouldSendAudio]&& [(VCCallSession *)self->currentFocusSession state]== 1 && [(VCCallSession *)self->currentFocusSession isAudioRunning])
  {
    if (self->hasMic && self->isTalking)
    {
      *&v6 = VCAudioBufferList_GetAveragePower(a3);
      [(VCCallSession *)self->currentFocusSession setInputMeter:(([(VideoConference *)self powerFloatToInt:v6]+ [(VCCallSession *)self->currentFocusSession bundledPackets]* [(VCCallSession *)self->currentFocusSession inputMeter]) / ([(VCCallSession *)self->currentFocusSession bundledPackets]+ 1))];
    }

    else
    {
      VCAudioBufferList_SetSampleCount(a3, 0);
    }

    [(VCCallSession *)self->currentFocusSession pushAudioSamples:a3];
  }

  VCAudioBufferList_SetSampleCount(a3, SampleCount);
}

- (void)updateAudioTimestampsForSession:(id)a3 withNewSampleTime:(unsigned int)a4 hostTime:(double)a5 numSamples:(int)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a4 - self->lastSentAudioSampleTime;
  v12 = llround((a5 - self->dAudioHostTime) * ([a3 sampleRate] / a6)) * a6;
  if (self->lastSentAudioSampleTime)
  {
    if (v11 != a6 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        lastSentAudioSampleTime = self->lastSentAudioSampleTime;
        v24 = a5 - self->dAudioHostTime;
        v25 = 136317186;
        v26 = v13;
        v27 = 2080;
        v28 = "[VideoConference(AudioProcessing) updateAudioTimestampsForSession:withNewSampleTime:hostTime:numSamples:]";
        v29 = 1024;
        v30 = 2582;
        v31 = 1024;
        v32 = v11;
        v33 = 1024;
        v34 = lastSentAudioSampleTime;
        v35 = 1024;
        v36 = a4;
        v37 = 2048;
        v38 = a5;
        v39 = 2048;
        v40 = v24;
        v41 = 1024;
        v42 = v12;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "VideoConference [%s] %s:%d Timestamp jumped by %d, %d to %d at %f. host time jump %f (%d)", &v25, 0x48u);
      }
    }
  }

  if (self->dAudioHostTime != 0.0)
  {
    v15 = 5 * a6;
    v16 = v11 - v12;
    if ((v11 - v12) < 0)
    {
      v16 = v12 - v11;
    }

    if (v11 >= 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = -v11;
    }

    if (v15 < v16 || v15 < v17)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = self->lastSentAudioSampleTime;
          v22 = a5 - self->dAudioHostTime;
          v25 = 136316930;
          v26 = v19;
          v27 = 2080;
          v28 = "[VideoConference(AudioProcessing) updateAudioTimestampsForSession:withNewSampleTime:hostTime:numSamples:]";
          v29 = 1024;
          v30 = 2588;
          v31 = 1024;
          v32 = v12;
          v33 = 1024;
          v34 = v21;
          v35 = 1024;
          v36 = a4;
          v37 = 2048;
          v38 = v22;
          v39 = 1024;
          LODWORD(v40) = v12;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d Detected large timestamp jump by %d, from %d to %d. host time jump %f (%d)", &v25, 0x3Eu);
        }
      }

      VCAudioReceiver_DiscardQueueExcess([a3 audioReceiver]);
    }
  }

  self->lastSentAudioSampleTime = a4;
}

- (void)captureMeshMode:(opaqueVCAudioBufferList *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  HostTime = VCAudioBufferList_GetHostTime(a3);
  Timestamp = VCAudioBufferList_GetTimestamp(a3);
  SampleCount = VCAudioBufferList_GetSampleCount(a3);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sessionArray = self->_sessionArray;
  v7 = [(NSArray *)sessionArray countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(sessionArray);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 state] == 1)
        {
          if ([v11 isAudioRunning])
          {
            if ([v11 isCurrentPayloadTypeValid] && (self->downstreamBandwidth & 0x100) == 0)
            {
              [(VideoConference *)self updateAudioTimestampsForSession:v11 withNewSampleTime:Timestamp hostTime:SampleCount numSamples:HostTime];
            }

            if (self->isTalking || (self->downstreamBandwidth & 0x100) == 0)
            {
              [v11 pushAudioSamples:a3];
            }
          }

          if ([v11 isRemoteMediaStalled] && (self->timeStampUpdateCounter & 1) == 0 || (objc_msgSend(v11, "isRemoteMediaStalled") & 1) == 0 && -1030792151 * self->timeStampUpdateCounter <= 0xA3D70A3)
          {
            [v11 updateLastReceivedAudioTime];
          }

          ++self->timeStampUpdateCounter;
        }
      }

      v8 = [(NSArray *)sessionArray countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }
}

- (void)updateMeter:(unsigned __int8)a3 forParticipant:(id)a4 atIndex:(unsigned int)a5
{
  speakingArray = self->speakingArray;
  if (!a3 || self->speakingArray[a5])
  {
    if (!a3 && self->speakingArray[a5])
    {
      [(VideoConferenceSpeakingDelegate *)self->speakingDelegate didStopSpeaking:a4];
    }
  }

  else
  {
    [(VideoConferenceSpeakingDelegate *)self->speakingDelegate didStartSpeaking:a4];
  }

  speakingArray[a5] = a3;
}

- (void)updateMeters:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(NSArray *)self->connectedPeers count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      [(VideoConference *)self updateMeter:((1 << i) & v3) forParticipant:[(NSArray *)self->connectedPeers objectAtIndexedSubscript:i] atIndex:i];
    }
  }
}

- (BOOL)recvSamplesForSession:(id)a3 sampleBuffer:(opaqueVCAudioBufferList *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 170, sizeof(v18));
  v15 = 0.0;
  v16 = &v18[1];
  v17 = vdupq_n_s64(0x10uLL);
  SampleCount = VCAudioBufferList_GetSampleCount(a4);
  Timestamp = VCAudioBufferList_GetTimestamp(a4);
  if ([a3 state] != 1 || !objc_msgSend(a3, "isAudioRunning"))
  {
    goto LABEL_8;
  }

  if (!VCAudioReceiver_PullAudioSamples([a3 audioReceiver], a4, 0, &v15, &v16, v18, 0))
  {
    goto LABEL_7;
  }

  [a3 updateLastReceivedPacketWithTimestamp:5 packetType:v15];
  if (v17.i64[1])
  {
    [objc_msgSend(a3 "ringBuf")];
    if (!v18[0] || LOBYTE(v18[1]))
    {
      [a3 setLastReceived:{(Timestamp + SampleCount), *&v15, v16, v17.i64[0]}];
      if (LOBYTE(v18[1]))
      {
        v13 = -[NSArray indexOfObject:](self->connectedPeers, "indexOfObject:", [a3 remoteParticipantID]);
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v13;
          v10 = 1;
          v12 = LOBYTE(v18[1]);
          goto LABEL_11;
        }
      }

      return 1;
    }

LABEL_7:
    if (Timestamp > [a3 lastReceived])
    {
LABEL_8:
      v9 = -[NSArray indexOfObject:](self->connectedPeers, "indexOfObject:", [a3 remoteParticipantID]);
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      v11 = v9;
      v12 = 0;
      v10 = 0;
LABEL_11:
      -[VideoConference updateMeter:forParticipant:atIndex:](self, "updateMeter:forParticipant:atIndex:", v12, [a3 remoteParticipantID], v11);
      return v10;
    }

    return 1;
  }

  return 0;
}

- (int)pullDecodedAsFocus:(opaqueVCAudioBufferList *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  Timestamp = VCAudioBufferList_GetTimestamp(a3);
  HostTime = VCAudioBufferList_GetHostTime(a3);
  SampleCount = VCAudioBufferList_GetSampleCount(a3);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  sessionArray = self->_sessionArray;
  v9 = [(NSArray *)sessionArray countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v22 = SampleCount;
  v23 = 0;
  v11 = *v26;
  v21 = sessionArray;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(sessionArray);
      }

      v13 = *(*(&v25 + 1) + 8 * i);
      if (!-[NSArray containsObject:](self->mutedPeers, "containsObject:", [v13 remoteParticipantID]) && objc_msgSend(v13, "isAudioRunning") && objc_msgSend(v13, "shouldSendAudio"))
      {
        v14 = [objc_msgSend(v13 "ringBuf")];
        v15 = v14;
        if (v14)
        {
          if (SampleCount - v14 <= SampleCount)
          {
            v16 = (SampleCount - v14) & ~((SampleCount - v14) >> 31);
          }

          else
          {
            v16 = 0;
          }

          VCAudioBufferList_SetTime(self->_sourceBuffer, v16 + Timestamp, HostTime);
          v17 = v16 == 0;
          v18 = ![(VideoConference *)self recvSamplesForSession:v13 sampleBuffer:self->_sourceBuffer];
        }

        else
        {
          v18 = 0;
          v17 = 1;
        }

        if (Timestamp > [v13 lastReceived] || (v18 & 1) != 0)
        {
          SampleCount = v22;
        }

        else
        {
          if (v15)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0;
          }

          SampleCount = v22;
          if (!v19)
          {
            [objc_msgSend(v13 "ringBuf")];
          }

          VCAudioBufferList_Mix(a3, self->_sourceBuffer);
          ++v23;
        }

        sessionArray = v21;
      }
    }

    v10 = [(NSArray *)sessionArray countByEnumeratingWithState:&v25 objects:v24 count:16];
  }

  while (v10);
  return v23;
}

- (int)pullDecodedAsFocusClient:(opaqueVCAudioBufferList *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 170, sizeof(v11));
  v8 = 0.0;
  v9 = &v11[1];
  v10 = vdupq_n_s64(0x10uLL);
  if ([(VCCallSession *)self->currentFocusSession state]!= 1 || ![(VCCallSession *)self->currentFocusSession isAudioRunning]|| ![(VCCallSession *)self->currentFocusSession shouldSendAudio])
  {
    return 0;
  }

  if (VCAudioReceiver_PullAudioSamples([(VCCallSession *)self->currentFocusSession audioReceiver], a3, 0, &v8, &v9, v11, 0) && ([(VCCallSession *)self->currentFocusSession updateLastReceivedPacketWithTimestamp:5 packetType:v8], !v11[0]))
  {
    v6 = 1;
    if (v10.i64[1] < 2uLL)
    {
      return v6;
    }

    v5 = LOWORD(v11[1]);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  [(VideoConference *)self updateMeters:v5];
  return v6;
}

- (int)pullDecodedMeshMode:(opaqueVCAudioBufferList *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  sourceBuffer = self->_sourceBuffer;
  SampleCount = VCAudioBufferList_GetSampleCount(a3);
  VCAudioBufferList_SetSampleCount(sourceBuffer, SampleCount);
  v29 = -1431655766;
  v7 = self->_sourceBuffer;
  HostTime = VCAudioBufferList_GetHostTime(a3);
  Timestamp = VCAudioBufferList_GetTimestamp(a3);
  VCAudioBufferList_SetTime(v7, Timestamp, HostTime);
  v28 = -1431655766;
  v26 = self;
  v27 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  sessionArray = self->_sessionArray;
  v11 = [(NSArray *)sessionArray countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (!v11)
  {
    return 0;
  }

  v13 = v11;
  v14 = 0;
  v15 = *v36;
  *&v12 = 136315906;
  v25 = v12;
  v16 = a3;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v36 != v15)
      {
        objc_enumerationMutation(sessionArray);
      }

      v18 = *(*(&v35 + 1) + 8 * i);
      if ([v18 state] == 1 && objc_msgSend(v18, "isAudioRunning"))
      {
        v19 = micro();
        v20 = [v18 pullAudioSamples:v16 rtpTimestamp:&v29 lastReceivedAudioTime:&v27 padding:0 paddingLength:0 silence:&v28];
        v21 = micro() - v19;
        if (v21 > 0.005 && VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            *&buf[4] = v22;
            *&buf[12] = 2080;
            *&buf[14] = "[VideoConference(AudioProcessing) pullDecodedMeshMode:]";
            *&buf[22] = 1024;
            v31 = 2779;
            v32 = 2048;
            v33 = v21;
            _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d pullAudioSamples() took a long time = %f", buf, 0x26u);
          }
        }

        if (v20)
        {
          VCAudioBufferList_GetNetworkTimestamp(a3, buf);
          *(&v26->packetsPerBundle + 1) = *buf;
          *&v26->recvRTPTimeStamp.flags = *&buf[16];
          if (!v28)
          {
            ++v14;
          }

          if (v16 != a3)
          {
            VCAudioBufferList_Mix(a3, v16);
          }

          v16 = v26->_sourceBuffer;
        }
      }
    }

    v13 = [(NSArray *)sessionArray countByEnumeratingWithState:&v35 objects:v34 count:16];
  }

  while (v13);
  return v14;
}

- (int)sipCallbackNotification:(int)a3 callID:(unsigned int)a4 msgIn:(const char *)a5 msgOut:(char *)a6 optional:(void *)a7 confIndex:(int *)a8
{
  v12 = *&a4;
  v13 = *&a3;
  v38 = *MEMORY[0x1E69E9840];
  v15 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v31 = v16;
      v32 = 2080;
      v33 = "[VideoConference(SIPDispatch) sipCallbackNotification:callID:msgIn:msgOut:optional:confIndex:]";
      v34 = 1024;
      v35 = 2808;
      v36 = 1024;
      LODWORD(v37) = v13;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d sipCallbackNotification:%d", buf, 0x22u);
    }
  }

  [(VideoConference *)self rdlock];
  if (v13 == 13)
  {
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        shouldPrioritizeParticipantIDForSIPInvite = self->shouldPrioritizeParticipantIDForSIPInvite;
        *buf = 136315906;
        v31 = v18;
        v32 = 2080;
        v33 = "[VideoConference(SIPDispatch) sipCallbackNotification:callID:msgIn:msgOut:optional:confIndex:]";
        v34 = 1024;
        v35 = 2817;
        v36 = 1024;
        LODWORD(v37) = shouldPrioritizeParticipantIDForSIPInvite;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d shouldPrioritizeParticipantIDForSIPInvite %d", buf, 0x22u);
      }
    }

    if (self->shouldPrioritizeParticipantIDForSIPInvite)
    {
      v25 = -[VideoConference sessionForIncomingParticipantID:](self, "sessionForIncomingParticipantID:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a5]);
      if (v25)
      {
        goto LABEL_19;
      }

      v25 = [(VideoConference *)self sessionForSourceDestinationInfo:a6];
      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v25 = [(VideoConference *)self sessionForSourceDestinationInfo:a6];
      if (v25)
      {
        goto LABEL_19;
      }

      v25 = -[VideoConference sessionForIncomingParticipantID:](self, "sessionForIncomingParticipantID:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a5]);
      if (v25)
      {
        goto LABEL_19;
      }
    }

    v25 = [(VideoConference *)self loopbackSessionWaitingForSIPInvite];
    if (!v25)
    {
      v26 = 3;
      goto LABEL_20;
    }

LABEL_19:
    v26 = 0;
    *a7 = [v25 callID];
LABEL_20:
    [(VideoConference *)self unlock];
    [v15 drain];
    return v26;
  }

  v29 = a7;
  v21 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v21)
      {
        v24 = [objc_msgSend(v21 "description")];
      }

      else
      {
        v24 = "<nil>";
      }

      *buf = 136315906;
      v31 = v22;
      v32 = 2080;
      v33 = "[VideoConference(SIPDispatch) sipCallbackNotification:callID:msgIn:msgOut:optional:confIndex:]";
      v34 = 1024;
      v35 = 2852;
      v36 = 2080;
      v37 = v24;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d sipCallbackNotification:session = %s", buf, 0x26u);
    }
  }

  v27 = v21;
  [(VideoConference *)self unlock];
  if (v21)
  {
    v26 = [v21 sipCallback:v13 callID:v12 msgIn:a5 msgOut:a6 optional:v29 confIndex:a8];
  }

  else
  {

    return 3;
  }

  return v26;
}

- (BOOL)matchesCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  LOBYTE(v3) = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]) != 0;
  [(VideoConference *)self unlock];
  return v3;
}

- (BOOL)matchesOpenSessionForParticipantID:(id)a3
{
  [(VideoConference *)self rdlock];
  v5 = [(VideoConference *)self openSessionForParticipant:a3];
  [(VideoConference *)self unlock];
  return v5 != 0;
}

- (unsigned)callIDForOpenSessionWithParticipantID:(id)a3
{
  [(VideoConference *)self rdlock];
  v5 = [(VideoConference *)self openSessionForParticipant:a3];
  v6 = v5;
  [(VideoConference *)self unlock];
  if (v5)
  {
    v7 = [v5 callID];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)openSessionForParticipant:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sessionDict = self->_sessionDict;
  v6 = [(NSMutableDictionary *)sessionDict countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(sessionDict);
    }

    v10 = [(NSMutableDictionary *)self->_sessionDict objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];
    if ([v10 remoteParticipantID])
    {
      if ([objc_msgSend(v10 "remoteParticipantID")] && objc_msgSend(v10, "state") != 7)
      {
        return v10;
      }
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableDictionary *)sessionDict countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)matchesParticipantID:(id)a3
{
  [(VideoConference *)self rdlock];
  v5 = [(VideoConference *)self sessionForParticipantID:a3];
  [(VideoConference *)self unlock];
  return v5 != 0;
}

- (id)sessionForParticipantID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sessionArray = self->_sessionArray;
  v5 = [(NSArray *)sessionArray countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(sessionArray);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([v9 remoteParticipantID])
    {
      if ([objc_msgSend(v9 "remoteParticipantID")])
      {
        return v9;
      }
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)sessionArray countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)conferenceMatchesSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v5;
  v35 = v5;
  v32 = v5;
  v33 = v5;
  v30 = v5;
  v31 = v5;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  *v24 = v5;
  v25 = v5;
  v6 = [(VideoConference *)self sessionForSourceDestinationInfo:a3];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v9 = [-[VideoConference description](self "description")];
        if (v6)
        {
LABEL_5:
          v10 = [objc_msgSend(v6 "description")];
LABEL_8:
          v12 = 136316418;
          v13 = v7;
          v14 = 2080;
          v15 = "[VideoConference(SessionInfo) conferenceMatchesSourceDestinationInfo:]";
          v16 = 1024;
          v17 = 2955;
          v18 = 2080;
          v19 = v9;
          v20 = 2080;
          v21 = v10;
          v22 = 2080;
          v23 = VCSDInfoToStringRepresentation(a3, v24);
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d %s matches session %s for %s", &v12, 0x3Au);
          goto LABEL_9;
        }
      }

      else
      {
        v9 = "<nil>";
        if (v6)
        {
          goto LABEL_5;
        }
      }

      v10 = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  [(VideoConference *)self unlock];
  return v6 != 0;
}

- (id)sessionForSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  sessionDict = self->_sessionDict;
  v6 = [(NSMutableDictionary *)sessionDict countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(sessionDict);
        }

        v11 = [(NSMutableDictionary *)self->_sessionDict objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
        if ([v11 isBetterForSIPInviteWithSourceDestinationInfo:a3 thanSession:v8])
        {
          v8 = v11;
        }
      }

      v7 = [(NSMutableDictionary *)sessionDict countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v14 = [objc_msgSend(v8 "description")];
      }

      else
      {
        v14 = "<nil>";
      }

      v15 = self->_sessionDict;
      if (v15)
      {
        v16 = [-[NSMutableDictionary description](v15 "description")];
      }

      else
      {
        v16 = "<nil>";
      }

      v18 = 136316162;
      v19 = v12;
      v20 = 2080;
      v21 = "[VideoConference(SessionInfo) sessionForSourceDestinationInfo:]";
      v22 = 1024;
      v23 = 2974;
      v24 = 2080;
      v25 = v14;
      v26 = 2080;
      v27 = v16;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d returns %s out of %s", &v18, 0x30u);
    }
  }

  return v8;
}

- (BOOL)hasSessionWaitingForSIPInvite
{
  [(VideoConference *)self rdlock];
  v3 = [(VideoConference *)self loopbackSessionWaitingForSIPInvite];
  [(VideoConference *)self unlock];
  return v3 != 0;
}

- (id)loopbackSessionWaitingForSIPInvite
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sessionDict = self->_sessionDict;
  v4 = [(NSMutableDictionary *)sessionDict countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(sessionDict);
    }

    v8 = [(NSMutableDictionary *)self->_sessionDict objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
    if ([v8 state] == 6 && objc_msgSend(v8, "remoteParticipantID") && !objc_msgSend(v8, "receivedSIPInvite"))
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [(NSMutableDictionary *)sessionDict countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)sessionForIncomingParticipantID:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  sessionDict = self->_sessionDict;
  v6 = [(NSMutableDictionary *)sessionDict countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(sessionDict);
        }

        v10 = [(NSMutableDictionary *)self->_sessionDict objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        if ([v10 sipState] == 6 && objc_msgSend(v10, "remoteParticipantID") && objc_msgSend(objc_msgSend(v10, "remoteParticipantID"), "isEqualToString:", a3))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v10)
              {
                v13 = [objc_msgSend(v10 "description")];
              }

              else
              {
                v13 = "<nil>";
              }

              v15 = 136315906;
              v16 = v11;
              v17 = 2080;
              v18 = "[VideoConference(SessionInfo) sessionForIncomingParticipantID:]";
              v19 = 1024;
              v20 = 3016;
              v21 = 2080;
              v22 = v13;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d sessionForIncomingParticipantID returned: %s", &v15, 0x26u);
            }
          }

          return v10;
        }
      }

      v7 = [(NSMutableDictionary *)sessionDict countByEnumeratingWithState:&v24 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (int)stateForCallID:(unsigned int)a3
{
  v3 = *&a3;
  [(VideoConference *)self rdlock];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  if (v5)
  {
    v6 = [v5 state];
  }

  else
  {
    v6 = 8;
  }

  [(VideoConference *)self unlock];
  return v6;
}

- (void)stopCallID:(unsigned int)a3 didRemoteCancel:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v7 = *&a3;
  v28 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(VideoConference *)self rdlock];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v7];
  v11 = [(NSMutableDictionary *)self->_sessionDict objectForKeyedSubscript:v10];
  v12 = v11;

  [(VideoConference *)self unlock];
  if ([v11 isCallOngoing])
  {
    [(VCObject *)self startTimeoutTimer];
  }

  [v11 disconnect:a5 didRemoteCancel:v6];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v15 = [objc_msgSend(v11 "description")];
      }

      else
      {
        v15 = "<nil>";
      }

      v16 = 136316418;
      v17 = v13;
      v18 = 2080;
      v19 = "[VideoConference(PrivateMethods) stopCallID:didRemoteCancel:error:]";
      v20 = 1024;
      v21 = 3077;
      v22 = 1024;
      v23 = v7;
      v24 = 1024;
      v25 = v6;
      v26 = 2080;
      v27 = v15;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d stopCallID: %d, didRemoteCancel = %d, session = %s", &v16, 0x32u);
    }
  }

  if (!v7)
  {
    [(VideoConference *)self markUnfinishedSessions];
  }

  [VCRemoteVideoManager_DefaultManager() releaseQueueForStreamToken:v7];
}

- (void)cancelCallID:(unsigned int)a3 error:(id)a4
{
  v5 = *&a3;
  v24 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(VideoConference *)self rdlock];
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v5];
  v9 = [(NSMutableDictionary *)self->_sessionDict objectForKeyedSubscript:v8];
  v10 = v9;

  [(VideoConference *)self unlock];
  [v9 cancel:a4];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v13 = [objc_msgSend(v9 "description")];
      }

      else
      {
        v13 = "<nil>";
      }

      v14 = 136316162;
      v15 = v11;
      v16 = 2080;
      v17 = "[VideoConference(PrivateMethods) cancelCallID:error:]";
      v18 = 1024;
      v19 = 3107;
      v20 = 1024;
      v21 = v5;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d cancelCallID: %d, session = %s", &v14, 0x2Cu);
    }
  }

  if (!v5)
  {
    [(VideoConference *)self markUnfinishedSessions];
  }

  [VCRemoteVideoManager_DefaultManager() releaseQueueForStreamToken:v5];
}

- (void)cleanupSession:(id)a3 withDelay:(unint64_t)a4
{
  v7[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AF00];
  v6[0] = @"session";
  v6[1] = @"date";
  v7[0] = a3;
  v7[1] = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a4];
  [v5 detachNewThreadSelector:sel_cleanupProc_ toTarget:self withObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, v6, 2)}];
}

- (void)cleanupProc:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [MEMORY[0x1E696AF00] sleepUntilDate:{objc_msgSend(a3, "objectForKeyedSubscript:", @"date"}];
  -[VideoConference threadSafeCleanupSession:](self, "threadSafeCleanupSession:", [a3 objectForKeyedSubscript:@"session"]);
}

- (void)defaultCleanupSession:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "[VideoConference(PrivateMethods) defaultCleanupSession:]";
      v11 = 1024;
      v12 = 3139;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d defaultCleanupSession!", &v7, 0x1Cu);
    }
  }

  [(VideoConference *)self cleanupSession:a3 withDelay:0];
}

- (void)threadSafeCleanupSession:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v7;
      v13 = 2080;
      v14 = "[VideoConference(PrivateMethods) threadSafeCleanupSession:]";
      v15 = 1024;
      v16 = 3144;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d threadSafeCleanupSession!", &v11, 0x1Cu);
    }
  }

  [(VideoConference *)self wrlock];
  [(VideoConference *)self cleanupSession:a3 didRemoteCancel:0];
  [(VideoConference *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v9;
      v13 = 2080;
      v14 = "[VideoConference(PrivateMethods) threadSafeCleanupSession:]";
      v15 = 1024;
      v16 = 3149;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d threadSafeCleanupSession end!", &v11, 0x1Cu);
    }
  }
}

- (void)cleanupSession:(id)a3 didRemoteCancel:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v8 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316162;
      v12 = v6;
      v13 = 2080;
      v14 = "[VideoConference(PrivateMethods) cleanupSession:didRemoteCancel:]";
      v15 = 1024;
      v16 = 3154;
      v17 = 2080;
      v18 = v8;
      v19 = 1024;
      v20 = [a3 state] == 1;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d cleanupSession: session = %s, session.state == GKVoiceChatServiceStateRunning = %d", buf, 0x2Cu);
    }
  }

  if (a3)
  {
    if ([a3 isEqual:self->currentFocusSession])
    {
      self->currentFocusSession = 0;

      self->currentFocus = 0;
    }

    if (-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "callID")}]))
    {
      delegateNotificationQueue = self->delegateNotificationQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__VideoConference_PrivateMethods__cleanupSession_didRemoteCancel___block_invoke;
      v10[3] = &unk_1E85F37F0;
      v10[4] = self;
      v10[5] = a3;
      dispatch_async(delegateNotificationQueue, v10);
      -[VideoConference cleanupSpatialAudioForCallID:](self, "cleanupSpatialAudioForCallID:", [a3 callID]);
      [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
      [(VideoConference *)self cleanUpMediaRecorder];
      [(VideoConference *)self cleanUpAudioMachineLearningCoordinator];
      -[NSMutableDictionary removeObjectForKey:](self->_sessionDict, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "callID")}]);

      self->_sessionArray = [(NSMutableDictionary *)self->_sessionDict allValues];
    }
  }
}

uint64_t __66__VideoConference_PrivateMethods__cleanupSession_didRemoteCancel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) callID];

    return [v3 videoConference:v4 closeConnectionForCallID:v5];
  }

  return result;
}

- (BOOL)setPauseAudio:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v5 = [(NSMutableDictionary *)self->_sessionDict allValues];
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__VideoConference_PrivateMethods__setPauseAudio___block_invoke;
  v8[3] = &unk_1E85F37C8;
  v8[4] = v5;
  v8[5] = self;
  v9 = a3;
  dispatch_async(global_queue, v8);
  [(VideoConference *)self unlock];
  return 1;
}

void __49__VideoConference_PrivateMethods__setPauseAudio___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__VideoConference_PrivateMethods__setPauseAudio___block_invoke_2;
  v4[3] = &unk_1E85F73F0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  dispatch_apply(v2, global_queue, v4);
}

void __49__VideoConference_PrivateMethods__setPauseAudio___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = [objc_msgSend(v8 "description")];
        if (v3)
        {
LABEL_5:
          v10 = [objc_msgSend(v3 "description")];
LABEL_8:
          *buf = 136316162;
          v18 = v6;
          v19 = 2080;
          v20 = "[VideoConference(PrivateMethods) setPauseAudio:]_block_invoke_2";
          v21 = 1024;
          v22 = 3190;
          v23 = 2080;
          v24 = v9;
          v25 = 2080;
          v26 = v10;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d InterruptMe:%s Begin Pausing audio session %s", buf, 0x30u);
          goto LABEL_9;
        }
      }

      else
      {
        v9 = "<nil>";
        if (v3)
        {
          goto LABEL_5;
        }
      }

      v10 = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  v16 = 0;
  [v3 setPauseAudio:*(a1 + 48) error:&v16];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = [objc_msgSend(v13 "description")];
        if (v3)
        {
LABEL_13:
          v15 = [objc_msgSend(v3 "description")];
LABEL_16:
          *buf = 136316162;
          v18 = v11;
          v19 = 2080;
          v20 = "[VideoConference(PrivateMethods) setPauseAudio:]_block_invoke";
          v21 = 1024;
          v22 = 3194;
          v23 = 2080;
          v24 = v14;
          v25 = 2080;
          v26 = v15;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d InterruptMe:%s End Pausing audio session  done%s", buf, 0x30u);
          return;
        }
      }

      else
      {
        v14 = "<nil>";
        if (v3)
        {
          goto LABEL_13;
        }
      }

      v15 = "<nil>";
      goto LABEL_16;
    }
  }
}

- (BOOL)setPauseVideo:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v5 = [(NSMutableDictionary *)self->_sessionDict allValues];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VideoConference_PrivateMethods__setPauseVideo___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = v5;
  v9 = a3;
  dispatch_async(global_queue, block);
  [(VideoConference *)self unlock];
  return 1;
}

void __49__VideoConference_PrivateMethods__setPauseVideo___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VideoConference_PrivateMethods__setPauseVideo___block_invoke_2;
  block[3] = &unk_1E85F5CC0;
  block[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_apply(v2, global_queue, block);
}

uint64_t __49__VideoConference_PrivateMethods__setPauseVideo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v5[0] = 0;
  return [v3 setPauseVideo:*(a1 + 40) error:v5];
}

- (void)markUnfinishedSessions
{
  v13 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sessionArray];
  [(VideoConference *)self unlock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
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

        [*(*(&v9 + 1) + 8 * v7++) timeoutUnfinishedConnection];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)session:(id)a3 withCallID:(unsigned int)a4 networkHint:(BOOL)a5
{
  v9 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VideoConference_SessionDelegate__session_withCallID_networkHint___block_invoke;
  block[3] = &unk_1E85F7418;
  block[4] = self;
  v7 = a4;
  v8 = a5;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __67__VideoConference_SessionDelegate__session_withCallID_networkHint___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 44);

    return [v3 videoConference:v4 withCallID:v5 networkHint:v6];
  }

  return result;
}

- (void)session:(id)a3 withCallID:(unsigned int)a4 videoIsDegraded:(BOOL)a5 isRemote:(BOOL)a6
{
  v11 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__VideoConference_SessionDelegate__session_withCallID_videoIsDegraded_isRemote___block_invoke;
  block[3] = &unk_1E85F7440;
  block[4] = self;
  v8 = a4;
  v9 = a5;
  v10 = a6;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __80__VideoConference_SessionDelegate__session_withCallID_videoIsDegraded_isRemote___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  if (*(a1 + 45) == 1)
  {
    v3 = VCRemoteVideoManager_DefaultManager();
    v4 = *(a1 + 44);
    v5 = *(a1 + 40);

    return [v3 remoteVideoDidDegrade:v4 streamToken:v5];
  }

  return result;
}

- (void)session:(id)a3 localIPChange:(id)a4 withCallID:(unsigned int)a5
{
  v8 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__VideoConference_SessionDelegate__session_localIPChange_withCallID___block_invoke;
  v6[3] = &unk_1E85F3890;
  v6[4] = self;
  v6[5] = a4;
  v7 = a5;
  dispatch_async(delegateNotificationQueue, v6);
}

uint64_t __69__VideoConference_SessionDelegate__session_localIPChange_withCallID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v3 videoConference:v4 localIPChange:v5 withCallID:v6];
  }

  return result;
}

- (void)session:(id)a3 connectionDidChangeWithLocalInterfaceType:(id)a4 remoteInterfaceType:(id)a5 callID:(unsigned int)a6
{
  v9 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__VideoConference_SessionDelegate__session_connectionDidChangeWithLocalInterfaceType_remoteInterfaceType_callID___block_invoke;
  v7[3] = &unk_1E85F3890;
  v7[4] = a4;
  v7[5] = a5;
  v8 = a6;
  dispatch_async(delegateNotificationQueue, v7);
}

uint64_t __113__VideoConference_SessionDelegate__session_connectionDidChangeWithLocalInterfaceType_remoteInterfaceType_callID___block_invoke(uint64_t a1)
{
  v2 = VCRemoteVideoManager_DefaultManager();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v2 connectionDidChangeWithLocalInterfaceType:v3 remoteInterfaceType:v4 streamToken:v5];
}

- (void)session:(id)a3 didStart:(BOOL)a4 connectionType:(unsigned int)a5 localInterfaceType:(id)a6 remoteInterfaceType:(id)a7 error:(id)a8
{
  v11 = *&a5;
  v12 = a4;
  v59 = *MEMORY[0x1E69E9840];
  if (!a4 || ([a3 isCallOngoing] & 1) != 0)
  {
    [(VideoConference *)self rdlock];
    v35 = [a3 callID];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v16 = &OBJC_IVAR___VCVideoReceiverDefault__lastKeyFrameRequestStreamID;
    v34 = a8;
    if (ErrorLogLevelForModule < 7 || (v17 = VRTraceErrorLogLevelToCSTR(), v18 = *MEMORY[0x1E6986650], v19 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT), v16 = &OBJC_IVAR___VCVideoReceiverDefault__lastKeyFrameRequestStreamID, !v19))
    {
LABEL_22:
      v21 = a6;
      if ([*(&self->super.super.isa + v16[642]) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "callID"))}])
      {
        if (v12)
        {
          self->mostRecentStartedCall = v35;
        }

        else
        {
          [(VCObject *)self stopTimeoutTimer];
          [(VideoConference *)self defaultCleanupSession:a3];
        }
      }

      [(VideoConference *)self unlock];
      v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v35];
      v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v12];
      v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v11];
      v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v22, @"callID", v23, @"didStart", v24, @"connType", 0}];
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VideoConference-didStart");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(VideoConference *)self conferenceOperatingMode];
          *buf = 136316162;
          v40 = v26;
          v41 = 2080;
          v42 = "[VideoConference(SessionDelegate) session:didStart:connectionType:localInterfaceType:remoteInterfaceType:error:]";
          v43 = 1024;
          v44 = 3343;
          v45 = 2048;
          v46 = self;
          v47 = 1024;
          v48 = v28;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d @:@ VideoConference-didStart (%p) operatingMode=%d", buf, 0x2Cu);
        }
      }

      delegateNotificationQueue = self->delegateNotificationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __113__VideoConference_SessionDelegate__session_didStart_connectionType_localInterfaceType_remoteInterfaceType_error___block_invoke;
      block[3] = &unk_1E85F7468;
      v38 = v12;
      v37 = v35;
      block[4] = self;
      block[5] = v25;
      block[6] = v34;
      block[7] = v21;
      block[8] = a7;
      dispatch_async(delegateNotificationQueue, block);

      return;
    }

    if (a3)
    {
      v33 = [objc_msgSend(a3 "description")];
      if (a6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v33 = "<nil>";
      if (a6)
      {
LABEL_7:
        v32 = [objc_msgSend(a6 "description")];
        if (a7)
        {
LABEL_8:
          v31 = [objc_msgSend(a7 "description")];
LABEL_15:
          if (a8)
          {
            v30 = [objc_msgSend(a8 "description")];
          }

          else
          {
            v30 = "<nil>";
          }

          if (-[NSMutableDictionary objectForKey:](self->_sessionDict, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "callID")}]))
          {
            v20 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->_sessionDict objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(a3, "callID"))), "description"), "UTF8String"}];
          }

          else
          {
            v20 = "<nil>";
          }

          *buf = 136317442;
          v40 = v17;
          v41 = 2080;
          v42 = "[VideoConference(SessionDelegate) session:didStart:connectionType:localInterfaceType:remoteInterfaceType:error:]";
          v43 = 1024;
          v44 = 3317;
          v45 = 2080;
          v46 = v33;
          v47 = 1024;
          v48 = v12;
          v49 = 1024;
          v50 = v11;
          v51 = 2080;
          v52 = v32;
          v53 = 2080;
          v54 = v31;
          v55 = 2080;
          v56 = v30;
          v57 = 2080;
          v58 = v20;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d didStart:session %s, didStart = %d, connType = %u, InterfaceType = %s, %s, error = %s, claimed Session = %s", buf, 0x5Au);
          v16 = &OBJC_IVAR___VCVideoReceiverDefault__lastKeyFrameRequestStreamID;
          goto LABEL_22;
        }

LABEL_14:
        v31 = "<nil>";
        goto LABEL_15;
      }
    }

    v32 = "<nil>";
    if (a7)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VideoConference(SessionDelegate) session:didStart:connectionType:localInterfaceType:remoteInterfaceType:error:];
    }
  }
}

uint64_t __113__VideoConference_SessionDelegate__session_didStart_connectionType_localInterfaceType_remoteInterfaceType_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  v2 = objc_opt_respondsToSelector();
  v3 = [*(a1 + 32) delegate];
  if (v2)
  {
    [v3 videoConference:*(a1 + 32) didStartSession:*(a1 + 76) withCallID:*(a1 + 72) withUserInfo:*(a1 + 40) error:*(a1 + 48)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = VCRemoteVideoManager_DefaultManager();
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  return [v4 connectionDidChangeWithLocalInterfaceType:v5 remoteInterfaceType:v6 streamToken:v7];
}

- (void)session:(id)a3 cleanUpWithDelay:(int64_t)a4 error:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a3 callID];
      if (a5)
      {
        v12 = [objc_msgSend(a5 "description")];
      }

      else
      {
        v12 = "<nil>";
      }

      v14 = 136316418;
      v15 = v9;
      v16 = 2080;
      v17 = "[VideoConference(SessionDelegate) session:cleanUpWithDelay:error:]";
      v18 = 1024;
      v19 = 3368;
      v20 = 1024;
      v21 = v11;
      v22 = 2048;
      v23 = a4;
      v24 = 2080;
      v25 = v12;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VideoConference: clean up session (call ID %d) with delay %ld, error %s", &v14, 0x36u);
    }
  }

  [(VideoConference *)self rdlock];
  v13 = a3;
  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "callID")}]))
  {
    [(VideoConference *)self cleanupSession:a3 withDelay:a4];
  }

  [a3 setQualityDelegate:0];
  [(VideoConference *)self unlock];
}

- (void)session:(id)a3 didStopWithError:(id)a4
{
  v8[7] = *MEMORY[0x1E69E9840];
  [(VCObject *)self stopTimeoutTimer];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__VideoConference_SessionDelegate__session_didStopWithError___block_invoke;
  v8[3] = &unk_1E85F3E30;
  v8[4] = a3;
  v8[5] = self;
  v8[6] = a4;
  dispatch_async(delegateNotificationQueue, v8);
}

uint64_t __61__VideoConference_SessionDelegate__session_didStopWithError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v3 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) callID];
      v16 = 136315906;
      v17 = v4;
      v18 = 2080;
      v19 = "[VideoConference(SessionDelegate) session:didStopWithError:]_block_invoke";
      v20 = 1024;
      v21 = 3387;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VideoConference: notifying delegate of didStop for call ID %d", &v16, 0x22u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) callID];
      if ([*(a1 + 32) dtxMetrics])
      {
        v10 = [objc_msgSend(objc_msgSend(*(a1 + 32) "dtxMetrics")];
      }

      else
      {
        v10 = "<nil>";
      }

      v16 = 136316162;
      v17 = v7;
      v18 = 2080;
      v19 = "[VideoConference(SessionDelegate) session:didStopWithError:]_block_invoke";
      v20 = 1024;
      v21 = 3388;
      v22 = 1024;
      v23 = v9;
      v24 = 2080;
      v25 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VCCallSession callID[%d] call end audio metrics: %s", &v16, 0x2Cu);
    }
  }

  [*(a1 + 40) delegate];
  v11 = objc_opt_respondsToSelector();
  v12 = [*(a1 + 40) delegate];
  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) callID];
  if (v11)
  {
    return [v12 videoConference:v13 didStopWithCallID:v14 error:*(a1 + 48) callMetadata:{objc_msgSend(*(a1 + 32), "callMetadata")}];
  }

  else
  {
    return [v12 videoConference:v13 didStopWithCallID:v14 error:*(a1 + 48)];
  }
}

- (void)session:(id)a3 receivedNoPacketsForSeconds:(double)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__VideoConference_SessionDelegate__session_receivedNoPacketsForSeconds___block_invoke;
  v5[3] = &unk_1E85F50D8;
  *&v5[6] = a4;
  v5[4] = self;
  v5[5] = a3;
  dispatch_async(delegateNotificationQueue, v5);
}

uint64_t __72__VideoConference_SessionDelegate__session_receivedNoPacketsForSeconds___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) callID];

    return [v3 videoConference:v5 receivedNoRemotePacketsForTime:v6 callID:v4];
  }

  return result;
}

- (void)session:(id)a3 remoteMediaStalled:(BOOL)a4
{
  v7 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__VideoConference_SessionDelegate__session_remoteMediaStalled___block_invoke;
  v5[3] = &unk_1E85F37C8;
  v6 = a4;
  v5[4] = self;
  v5[5] = a3;
  dispatch_async(delegateNotificationQueue, v5);
}

uint64_t __63__VideoConference_SessionDelegate__session_remoteMediaStalled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = VCRemoteVideoManager_DefaultManager();
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) callID];

  return [v2 remoteMediaDidStall:v3 streamToken:v4];
}

- (void)session:(id)a3 packMeters:(char *)a4 withLength:(char *)a5
{
  chatMode = self->chatMode;
  if (chatMode == 2)
  {
    v14 = 0;
  }

  else
  {
    if (chatMode)
    {
      return;
    }

    if (self->isFocus)
    {
      v10 = [(NSArray *)self->connectedPeers count];
      if (v10 < 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 1;
        do
        {
          if (self->speakingArray[v12])
          {
            v13 = 1 << v12;
          }

          else
          {
            LOWORD(v13) = 0;
          }

          v11 |= v13;
          ++v12;
        }

        while ((v10 & 0x7FFFFFFF) != v12);
      }

      *a4 = v11 | ([a3 inputMeter] != 0);
      v14 = 2;
    }

    else
    {
      *a4 = [a3 inputMeter];
      v14 = 1;
    }
  }

  *a5 = v14;
}

- (void)session:(id)a3 didChangeVideoRule:(id)a4
{
  if (![a4 iWidth] || !objc_msgSend(a4, "iHeight"))
  {
    v6 = [(VCVideoRule *)self->conferenceCaptureRule iWidth];
    v7 = [(VCVideoRule *)self->conferenceCaptureRule iHeight];
    [a4 fRate];
    [a4 setFrameWidth:v6 frameHeight:v7 frameRate:?];
  }

  [a4 fRate];
  if (v8 == 0.0)
  {
    v9 = [a4 iWidth];
    v10 = [a4 iHeight];
    [(VCVideoRule *)self->conferenceCaptureRule fRate];
    [a4 setFrameWidth:v9 frameHeight:v10 frameRate:?];
  }

  v11 = [a4 iWidth];
  v12 = [a4 iHeight];
  [a4 fRate];

  [(VideoConference *)self initiateResolutionChangeToWidth:v11 height:v12 rate:v13];
}

- (BOOL)session:(id)a3 receivedRemoteFrame:(__CVBuffer *)a4 atTime:(id *)a5 withScreenAttributes:(id)a6 videoAttributes:(id)a7 isFirstFrame:(BOOL)a8 isVideoPaused:(BOOL)a9
{
  v50 = a8;
  v62 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->xRemoteLayer);
  if (a7)
  {
    EncodedCFDictionary = VideoAttributes_CreateEncodedCFDictionary(a7);
    VCImageQueue_EnqueueAttributes(self->currentQueue, EncodedCFDictionary);
    if (EncodedCFDictionary)
    {
      CFRelease(EncodedCFDictionary);
    }

    if ([a7 videoSourceScreen])
    {
      self->currentQueue = self->screenQueue;
      v16 = "screen";
    }

    else if ([a7 camera] && (backQueue = self->backQueue) != 0)
    {
      self->currentQueue = backQueue;
      v16 = "back";
    }

    else
    {
      self->currentQueue = self->frontQueue;
      v16 = "front";
    }
  }

  else
  {
    if (self->currentQueue)
    {
      goto LABEL_13;
    }

    self->currentQueue = self->frontQueue;
    v16 = "front";
  }

  self->currentFacing = v16;
LABEL_13:
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    v20 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        currentFacing = self->currentFacing;
        *buf = 136315906;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = "[VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:]";
        *&buf[22] = 1024;
        v55 = 3509;
        v56 = 2080;
        v57 = currentFacing;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d FigImageQueueEnqueueImage [remote - %s] queue", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:];
    }
  }

  if (!self->currentQueue && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:];
    }
  }

  if (self->_deviceRole == 3)
  {
    v22 = VCCameraStatusBitsFromVideoAttributes(a7);
    v23 = +[VCVideoRelay sharedInstance];
    *buf = *&a5->var0;
    *&buf[16] = a5->var3;
    if (![(VCVideoRelay *)v23 enqueueFrame:a4 atTime:buf cameraStatusBits:v22]&& VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      v26 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315906;
        *&buf[4] = v24;
        *&buf[12] = 2080;
        *&buf[14] = "[VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:]";
        *&buf[22] = 1024;
        v55 = 3524;
        v56 = 2048;
        v57 = self;
        v27 = "VideoConference [%s] %s:%d VCVideoRelay enqueueFrame failed; self = %p";
LABEL_34:
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v27, buf, 0x26u);
        goto LABEL_39;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:];
      }
    }
  }

  else
  {
    currentQueue = self->currentQueue;
    *buf = *&a5->var0;
    *&buf[16] = a5->var3;
    if ((VCImageQueue_EnqueueFrame(currentQueue, a4, buf) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      v30 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        v31 = self->currentFacing;
        *buf = 136315906;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = "[VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:]";
        *&buf[22] = 1024;
        v55 = 3529;
        v56 = 2080;
        v57 = v31;
        v27 = "VideoConference [%s] %s:%d FigImageQueueEnqueueImage skipped [remote - %s] queue full!";
        goto LABEL_34;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:];
      }
    }
  }

LABEL_39:
  pthread_mutex_unlock(&self->xRemoteLayer);
  if (a6)
  {
    VCMediaRecorder_UpdateTargetScreenAttributes(self->_vcMediaRecorder, a7);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [a6 ratio];
        v35 = v34;
        [a6 ratio];
        v37 = v36;
        v38 = [a6 orientation];
        *buf = 136316418;
        *&buf[4] = v32;
        *&buf[12] = 2080;
        *&buf[14] = "[VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:]";
        *&buf[22] = 1024;
        v55 = 3539;
        v56 = 2048;
        v57 = v35;
        v58 = 2048;
        v59 = v37;
        v60 = 1024;
        v61 = v38;
        _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d screen attributes: %fx%f orientation:%d", buf, 0x36u);
      }
    }

    delegateNotificationQueue = self->delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __135__VideoConference_SessionDelegate__session_receivedRemoteFrame_atTime_withScreenAttributes_videoAttributes_isFirstFrame_isVideoPaused___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = a6;
    block[6] = a3;
    dispatch_async(delegateNotificationQueue, block);
  }

  if (a7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [a7 ratio];
        v43 = v42;
        [a7 ratio];
        v45 = v44;
        v46 = [a7 orientation];
        *buf = 136316418;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = "[VideoConference(SessionDelegate) session:receivedRemoteFrame:atTime:withScreenAttributes:videoAttributes:isFirstFrame:isVideoPaused:]";
        *&buf[22] = 1024;
        v55 = 3552;
        v56 = 2048;
        v57 = v43;
        v58 = 2048;
        v59 = v45;
        v60 = 1024;
        v61 = v46;
        _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d video attributes: %fx%f orientation:%d", buf, 0x36u);
      }
    }

    v47 = self->delegateNotificationQueue;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __135__VideoConference_SessionDelegate__session_receivedRemoteFrame_atTime_withScreenAttributes_videoAttributes_isFirstFrame_isVideoPaused___block_invoke_649;
    v52[3] = &unk_1E85F3E30;
    v52[4] = self;
    v52[5] = a7;
    v52[6] = a3;
    dispatch_async(v47, v52);
  }

  if (v50)
  {
    synchronizer = self->synchronizer;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __135__VideoConference_SessionDelegate__session_receivedRemoteFrame_atTime_withScreenAttributes_videoAttributes_isFirstFrame_isVideoPaused___block_invoke_2;
    v51[3] = &unk_1E85F37F0;
    v51[4] = self;
    v51[5] = a3;
    [(CameraConferenceSynchronizer *)synchronizer scheduleFirstRemoteFrameNotification:v51];
  }

  return 1;
}

void __135__VideoConference_SessionDelegate__session_receivedRemoteFrame_atTime_withScreenAttributes_videoAttributes_isFirstFrame_isVideoPaused___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = VCRemoteVideoManager_DefaultManager();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) callID];

  VCRemoteVideoManager_RemoteScreenAttributesDidChange(v2, v3, v4);
}

void __135__VideoConference_SessionDelegate__session_receivedRemoteFrame_atTime_withScreenAttributes_videoAttributes_isFirstFrame_isVideoPaused___block_invoke_649(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = VCRemoteVideoManager_DefaultManager();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) callID];

  VCRemoteVideoManager_RemoteVideoAttributesDidChange(v2, v3, v4);
}

void __135__VideoConference_SessionDelegate__session_receivedRemoteFrame_atTime_withScreenAttributes_videoAttributes_isFirstFrame_isVideoPaused___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 1024);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __135__VideoConference_SessionDelegate__session_receivedRemoteFrame_atTime_withScreenAttributes_videoAttributes_isFirstFrame_isVideoPaused___block_invoke_3;
  block[3] = &unk_1E85F37F0;
  v4 = v1;
  dispatch_async(v2, block);
}

void __135__VideoConference_SessionDelegate__session_receivedRemoteFrame_atTime_withScreenAttributes_videoAttributes_isFirstFrame_isVideoPaused___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = VCRemoteVideoManager_DefaultManager();
  v3 = [*(a1 + 40) callID];

  VCRemoteVideoManager_DidReceiveFirstRemoteFrameForStreamToken(v2, v3);
}

- (void)session:(id)a3 didReceiveARPLData:(id)a4 fromCallID:(unsigned int)a5
{
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v8;
      v17 = 2080;
      v18 = "[VideoConference(SessionDelegate) session:didReceiveARPLData:fromCallID:]";
      v19 = 1024;
      v20 = 3585;
      v21 = 1024;
      v22 = a5;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d >>>>> Relaying incoming ARPL data from VCCallSession to VideoConferenceManager with callID=%d (in VideoConference) <<<<<", buf, 0x22u);
    }
  }

  if (!a4 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = v10;
      v17 = 2080;
      v18 = "[VideoConference(SessionDelegate) session:didReceiveARPLData:fromCallID:]";
      v19 = 1024;
      v20 = 3588;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d >>>>> DATA ERROR (in VideoConference) <<<<<", buf, 0x1Cu);
    }
  }

  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__VideoConference_SessionDelegate__session_didReceiveARPLData_fromCallID___block_invoke;
  block[3] = &unk_1E85F3890;
  block[4] = self;
  block[5] = a4;
  v14 = a5;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __74__VideoConference_SessionDelegate__session_didReceiveARPLData_fromCallID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v3 videoConference:v4 didReceiveARPLData:v5 fromCallID:v6];
  }

  return result;
}

- (void)session:(id)a3 didReceiveData:(id)a4 messageType:(unsigned int)a5 withCallID:(unsigned int)a6
{
  v23 = *MEMORY[0x1E69E9840];
  if (a5 == 1)
  {
    delegateNotificationQueue = self->delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__VideoConference_SessionDelegate__session_didReceiveData_messageType_withCallID___block_invoke;
    block[3] = &unk_1E85F3890;
    block[4] = self;
    block[5] = a4;
    v12 = a6;
    dispatch_async(delegateNotificationQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v14 = v9;
      v15 = 2080;
      v16 = "[VideoConference(SessionDelegate) session:didReceiveData:messageType:withCallID:]";
      v17 = 1024;
      v18 = 3609;
      v19 = 1024;
      v20 = a6;
      v21 = 1024;
      v22 = a5;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VideoConference [%s] %s:%d Unsupported data received from callId=%d with messageType=%u", buf, 0x28u);
    }
  }
}

uint64_t __82__VideoConference_SessionDelegate__session_didReceiveData_messageType_withCallID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v2 videoConference:v3 didReceiveData:v4 forCallID:v5];
}

- (BOOL)session:(id)a3 startVideoSend:(id *)a4 captureRuleWifi:(id)a5 captureRuleCell:(id)a6 interface:(int)a7 isUnpausing:(BOOL)a8
{
  v8 = a8;
  v44 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      deviceRole = self->_deviceRole;
      v29 = 136316930;
      v30 = v12;
      v31 = 2080;
      v32 = "[VideoConference(SessionDelegate) session:startVideoSend:captureRuleWifi:captureRuleCell:interface:isUnpausing:]";
      v33 = 1024;
      v34 = 3623;
      v35 = 2048;
      *v36 = self;
      *&v36[8] = 2112;
      v37 = a5;
      v38 = 2112;
      v39 = a6;
      v40 = 1024;
      v41 = v8;
      v42 = 1024;
      v43 = deviceRole;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d self = %p, captureRuleWifi = %@, captureRuleCell=%@, isUnpausing = %d, _deviceRole = %d", &v29, 0x46u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315906;
      v30 = v15;
      v31 = 2080;
      v32 = "[VideoConference(SessionDelegate) session:startVideoSend:captureRuleWifi:captureRuleCell:interface:isUnpausing:]";
      v33 = 1024;
      v34 = 3626;
      v35 = 2112;
      *v36 = a5;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d Capture rule set to %@", &v29, 0x26u);
    }
  }

  if ([+[VCDefaults momentsUserPreferenceEnabled] sharedInstance]
  {
    vcMediaRecorder = self->_vcMediaRecorder;
    [a5 fRate];
    [(VCMediaRecorder *)vcMediaRecorder setFrameRate:?];
  }

  LOBYTE(self->downstreamBandwidth) = 1;
  if (![+[VCDefaults forceHWI] sharedInstance]
  {
    v18 = [a5 iWidth];
    if ([a5 iHeight] * v18 == 176640)
    {
      [a5 fRate];
      [a5 setFrameWidth:640 frameHeight:480 frameRate:?];
    }

    v19 = [a5 iWidth];
    if ([a5 iHeight] * v19 == 130560)
    {
      [a5 fRate];
      [a5 setFrameWidth:1280 frameHeight:720 frameRate:?];
    }
  }

  if (v8 && [(VCVideoRule *)self->conferenceCaptureRule iWidth])
  {
    conferenceCaptureRule = self->conferenceCaptureRule;
    v21 = a5;
  }

  else
  {
    v21 = self->conferenceCaptureRule;
    conferenceCaptureRule = a5;
  }

  [v21 setToVideoRule:conferenceCaptureRule];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v24 = [a5 iWidth];
      v25 = [a5 iHeight];
      [a5 fRate];
      v29 = 136316418;
      v30 = v22;
      v31 = 2080;
      v32 = "[VideoConference(SessionDelegate) session:startVideoSend:captureRuleWifi:captureRuleCell:interface:isUnpausing:]";
      v33 = 1024;
      v34 = 3660;
      v35 = 1024;
      *v36 = v24;
      *&v36[4] = 1024;
      *&v36[6] = v25;
      LOWORD(v37) = 1024;
      *(&v37 + 2) = v26;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VIDEOCONFERENCE: Capture video settings %dx%d@%dfps", &v29, 0x2Eu);
    }
  }

  v27 = [(VideoConference *)self registerForVideoFramesWithDeviceRole:self->_deviceRole captureRule:a5 isUnpausing:v8];
  if (!v27 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VideoConference(SessionDelegate) session:startVideoSend:captureRuleWifi:captureRuleCell:interface:isUnpausing:];
    }
  }

  return v27;
}

- (BOOL)registerForVideoFramesWithDeviceRole:(int)a3 captureRule:(id)a4 isUnpausing:(BOOL)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v20 = 0;
  v8 = [+[VCVideoRuleCollectionsCamera getBestFrameWidth:*&a3], "getBestFrameWidth:frameHeight:frameRate:", v21 + 4, v21, &v20];
  if (a3 != 4)
  {
    if (v8)
    {
      if ([(VideoConference *)self conferenceOperatingMode]== 1)
      {
        v10 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
        v11 = [a4 iWidth];
        v12 = [a4 iHeight];
        [a4 fRate];
        if (([v10 registerForVideoFramesFromSource:3 withClient:self width:v11 height:v12 frameRate:v13] & 1) == 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_19;
          }

          VRTraceErrorLogLevelToCSTR();
          v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (v9)
          {
            [VideoConference(SessionDelegate) registerForVideoFramesWithDeviceRole:captureRule:isUnpausing:];
            goto LABEL_19;
          }

          return v9;
        }
      }

      else if ([(VideoConference *)self conferenceOperatingMode]== 4)
      {
        v14 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
        v15 = [a4 iWidth];
        v16 = [a4 iHeight];
        [a4 fRate];
        if (([v14 registerForVideoFramesFromSource:1 withClient:self width:v15 height:v16 frameRate:v17] & 1) == 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_19;
          }

          VRTraceErrorLogLevelToCSTR();
          v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (v9)
          {
            [VideoConference(SessionDelegate) registerForVideoFramesWithDeviceRole:captureRule:isUnpausing:];
            goto LABEL_19;
          }

          return v9;
        }
      }

      synchronizer = self->synchronizer;
      [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      [(CameraConferenceSynchronizer *)synchronizer setLocalPortraitAspectRatio:?];
      [(CameraConferenceSynchronizer *)self->synchronizer scheduleCameraChangeToCaptureSettings:a4];
    }

LABEL_15:
    LOBYTE(v9) = 1;
    return v9;
  }

  if ([+[VCVideoRelay registerForVideoFrames:"registerForVideoFrames:"]
  {
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
LABEL_19:
    LOBYTE(v9) = 0;
    return v9;
  }

  VRTraceErrorLogLevelToCSTR();
  v9 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v9)
  {
    [VideoConference(SessionDelegate) registerForVideoFramesWithDeviceRole:captureRule:isUnpausing:];
    goto LABEL_19;
  }

  return v9;
}

- (BOOL)session:(id)a3 startVideoReceive:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->xRemoteLayer);
  v6 = [a3 negotiatedReceivingFramerate];
  if (v6)
  {
    v7 = v6;
    [(VCImageQueue *)self->frontQueue setFrameRate:v6];
    [(VCImageQueue *)self->backQueue setFrameRate:v7];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v8;
        v13 = 2080;
        v14 = "[VideoConference(SessionDelegate) session:startVideoReceive:]";
        v15 = 1024;
        v16 = 3744;
        v17 = 1024;
        v18 = v7;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d set receiving framerate for remote queue: %dfps", &v11, 0x22u);
      }
    }
  }

  [(VCImageQueue *)self->frontQueue start];
  [(VCImageQueue *)self->backQueue start];
  [(VCImageQueue *)self->screenQueue start];
  pthread_mutex_unlock(&self->xRemoteLayer);
  return 1;
}

- (BOOL)stopVideoSend:(BOOL)a3 error:(id *)a4
{
  v4 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      deviceRole = self->_deviceRole;
      v13 = 136316418;
      v14 = v6;
      v15 = 2080;
      v16 = "[VideoConference(SessionDelegate) stopVideoSend:error:]";
      v17 = 1024;
      v18 = 3762;
      v19 = 2048;
      v20 = self;
      v21 = 1024;
      v22 = v4;
      v23 = 1024;
      v24 = deviceRole;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d self = %p, fullTeardown = %d, _deviceRole = %d", &v13, 0x32u);
    }
  }

  v9 = [(VideoConference *)self deregisterForVideoFramesWithDeviceRole:self->_deviceRole];
  if (v9)
  {
    VCMediaRecorder_ClearHistoryBuffer(self->_vcMediaRecorder);
    VCMediaRecorder_StopProcessingAllRequests(self->_vcMediaRecorder);
    if (v4)
    {
      self->localFrameWidth = 0;
      self->localFrameHeight = 0;
      [(VCVideoRule *)self->conferenceCaptureRule setToVideoRule:0];
      [(CameraConferenceSynchronizer *)self->synchronizer reset];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = v10;
        v15 = 2080;
        v16 = "[VideoConference(SessionDelegate) stopVideoSend:error:]";
        v17 = 1024;
        v18 = 3781;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d video-stop-completed", &v13, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VideoConference(SessionDelegate) stopVideoSend:error:];
    }
  }

  return v9;
}

- (BOOL)deregisterForVideoFramesWithDeviceRole:(int)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v8 = 0;
  v5 = [+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera getBestFrameWidth:"getBestFrameWidth:frameHeight:frameRate:" frameHeight:v9 + 4 frameRate:v9, &v8];
  if (a3 != 4)
  {
    if (v5)
    {
      if (([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")] & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_17;
        }

        VRTraceErrorLogLevelToCSTR();
        v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (v6)
        {
          [VideoConference(SessionDelegate) deregisterForVideoFramesWithDeviceRole:];
          goto LABEL_17;
        }

        return v6;
      }

      if (([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")] & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_17;
        }

        VRTraceErrorLogLevelToCSTR();
        v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (v6)
        {
          [VideoConference(SessionDelegate) deregisterForVideoFramesWithDeviceRole:];
          goto LABEL_17;
        }

        return v6;
      }

      [(CameraConferenceSynchronizer *)self->synchronizer scheduleCameraChangeToPreviewSettings];
    }

LABEL_10:
    LOBYTE(v6) = 1;
    return v6;
  }

  if ([+[VCVideoRelay deregisterForVideoFrames:"deregisterForVideoFrames:"]
  {
    goto LABEL_10;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
LABEL_17:
    LOBYTE(v6) = 0;
    return v6;
  }

  VRTraceErrorLogLevelToCSTR();
  v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v6)
  {
    [VideoConference(SessionDelegate) deregisterForVideoFramesWithDeviceRole:];
    goto LABEL_17;
  }

  return v6;
}

- (BOOL)session:(id)a3 stopVideoReceive:(id *)a4 isPausing:(BOOL)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VideoConference *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = 136316162;
    v18 = v12;
    v19 = 2080;
    v20 = "[VideoConference(SessionDelegate) session:stopVideoReceive:isPausing:]";
    v21 = 1024;
    v22 = 3820;
    v23 = 2112;
    v24 = v6;
    v25 = 2048;
    v26 = self;
    v9 = "VideoConference [%s] %s:%d %@(%p) ";
    v10 = v13;
    v11 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = v7;
      v19 = 2080;
      v20 = "[VideoConference(SessionDelegate) session:stopVideoReceive:isPausing:]";
      v21 = 1024;
      v22 = 3820;
      v9 = "VideoConference [%s] %s:%d ";
      v10 = v8;
      v11 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v17, v11);
    }
  }

LABEL_12:
  pthread_mutex_lock(&self->xRemoteLayer);
  [(VCImageQueue *)self->frontQueue pause];
  [(VCImageQueue *)self->backQueue pause];
  [(VCImageQueue *)self->screenQueue pause];
  pthread_mutex_unlock(&self->xRemoteLayer);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = v14;
      v19 = 2080;
      v20 = "[VideoConference(SessionDelegate) session:stopVideoReceive:isPausing:]";
      v21 = 1024;
      v22 = 3830;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d video-stop-completed", &v17, 0x1Cu);
    }
  }

  return 1;
}

- (BOOL)session:(id)a3 didStopVideoIO:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v40 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = v9;
        v32 = 2080;
        v33 = "[VideoConference(SessionDelegate) session:didStopVideoIO:error:]";
        v34 = 1024;
        v35 = 3842;
        v11 = "VideoConference [%s] %s:%d ";
        v12 = v10;
        v13 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VideoConference *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v31 = v14;
        v32 = 2080;
        v33 = "[VideoConference(SessionDelegate) session:didStopVideoIO:error:]";
        v34 = 1024;
        v35 = 3842;
        v36 = 2112;
        v37 = v8;
        v38 = 2048;
        v39 = self;
        v11 = "VideoConference [%s] %s:%d %@(%p) ";
        v12 = v15;
        v13 = 48;
        goto LABEL_11;
      }
    }
  }

  [(VideoConference *)self rdlock];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sessionArray = self->_sessionArray;
  v17 = [(NSArray *)sessionArray countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(sessionArray);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        if (v21 != a3 && ([v21 isVideoRunning] & 1) != 0)
        {
          [(VideoConference *)self unlock];
          return 0;
        }
      }

      v18 = [(NSArray *)sessionArray countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  [(VideoConference *)self unlock];
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  [(CameraConferenceSynchronizer *)self->synchronizer scheduleCameraChangeToPreviewSettings];
  if (v5)
  {
    self->localFrameHeight = 0;
    self->localFrameWidth = 0;
    [(VCVideoRule *)self->conferenceCaptureRule setToVideoRule:0];
    [(CameraConferenceSynchronizer *)self->synchronizer reset];
  }

  pthread_mutex_lock(&self->xRemoteLayer);
  [(VCImageQueue *)self->frontQueue pause];
  [(VCImageQueue *)self->backQueue pause];
  [(VCImageQueue *)self->screenQueue pause];
  pthread_mutex_unlock(&self->xRemoteLayer);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = v22;
      v32 = 2080;
      v33 = "[VideoConference(SessionDelegate) session:didStopVideoIO:error:]";
      v34 = 1024;
      v35 = 3875;
      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d video-stop-completed", buf, 0x1Cu);
    }
  }

  return 1;
}

- (void)session:(id)a3 isSendingAudio:(BOOL)a4 error:(id)a5
{
  v8 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VideoConference_SessionDelegate__session_isSendingAudio_error___block_invoke;
  block[3] = &unk_1E85F5E38;
  block[4] = self;
  block[5] = a3;
  v7 = a4;
  block[6] = a5;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __65__VideoConference_SessionDelegate__session_isSendingAudio_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) callID];
    v6 = *(a1 + 56);
    v7 = *(a1 + 48);

    return [v3 videoConference:v4 withCallID:v5 isSendingAudio:v6 error:v7];
  }

  return result;
}

- (void)session:(id)a3 didPauseAudio:(BOOL)a4 error:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    [(VideoConference *)self setMicrophoneMuted:self->microphoneMuted];
  }

  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VideoConference_SessionDelegate__session_didPauseAudio_error___block_invoke;
  block[3] = &unk_1E85F5E38;
  block[4] = self;
  block[5] = a3;
  v11 = a4;
  block[6] = a5;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __64__VideoConference_SessionDelegate__session_didPauseAudio_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) callID];
    v6 = *(a1 + 56);
    v7 = *(a1 + 48);

    return [v3 videoConference:v4 withCallID:v5 didPauseAudio:v6 error:v7];
  }

  return result;
}

- (void)session:(id)a3 didPauseVideo:(BOOL)a4 error:(id)a5
{
  v8 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VideoConference_SessionDelegate__session_didPauseVideo_error___block_invoke;
  block[3] = &unk_1E85F5E38;
  block[4] = self;
  block[5] = a3;
  v7 = a4;
  block[6] = a5;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __64__VideoConference_SessionDelegate__session_didPauseVideo_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) callID];
    v6 = *(a1 + 56);
    v7 = *(a1 + 48);

    return [v3 videoConference:v4 withCallID:v5 didPauseVideo:v6 error:v7];
  }

  return result;
}

- (void)remoteAudioDidPause:(BOOL)a3 callID:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VideoConference_SessionDelegate__remoteAudioDidPause_callID___block_invoke;
  block[3] = &unk_1E85F7418;
  block[4] = self;
  v7 = a3;
  v6 = a4;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __63__VideoConference_SessionDelegate__remoteAudioDidPause_callID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [objc_msgSend(*(a1 + 32) "delegate")];
  }

  if ((*(a1 + 44) & 1) == 0)
  {
    result = *(a1 + 32);
    if (*(result + 1014) == 1)
    {
      v3 = *(a1 + 40);

      return [result setPauseAudio:0 callID:v3 error:0];
    }
  }

  return result;
}

- (void)remoteVideoDidPause:(BOOL)a3 callID:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VideoConference_SessionDelegate__remoteVideoDidPause_callID___block_invoke;
  block[3] = &unk_1E85F7418;
  block[4] = self;
  v7 = a3;
  v6 = a4;
  dispatch_async(delegateNotificationQueue, block);
}

_BYTE *__63__VideoConference_SessionDelegate__remoteVideoDidPause_callID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  result = [VCRemoteVideoManager_DefaultManager() remoteVideoDidPause:*(a1 + 44) streamToken:*(a1 + 40)];
  if ((*(a1 + 44) & 1) == 0)
  {
    result = *(a1 + 32);
    if (result[1015] == 1)
    {
      v3 = *(a1 + 40);

      return [result setPauseVideo:0 callID:v3 error:0];
    }
  }

  return result;
}

- (void)session:(id)a3 initiateRelayRequest:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v7 = [a3 callID];
  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "callID")}]))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_19;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      if (a3)
      {
        v11 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      *buf = 136315906;
      v22 = v9;
      v23 = 2080;
      v24 = "[VideoConference(SessionDelegate) session:initiateRelayRequest:]";
      v25 = 1024;
      v26 = 3956;
      v27 = 2080;
      v28 = v11;
      v15 = "VideoConference [%s] %s:%d session=%s";
      v16 = v10;
      v17 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VideoConference *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_19;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      if (a3)
      {
        v14 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v14 = "<nil>";
      }

      *buf = 136316418;
      v22 = v12;
      v23 = 2080;
      v24 = "[VideoConference(SessionDelegate) session:initiateRelayRequest:]";
      v25 = 1024;
      v26 = 3956;
      v27 = 2112;
      v28 = v8;
      v29 = 2048;
      v30 = self;
      v31 = 2080;
      v32 = v14;
      v15 = "VideoConference [%s] %s:%d %@(%p) session=%s";
      v16 = v13;
      v17 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_19:
    delegateNotificationQueue = self->delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VideoConference_SessionDelegate__session_initiateRelayRequest___block_invoke;
    block[3] = &unk_1E85F3890;
    v20 = v7;
    block[4] = self;
    block[5] = a4;
    dispatch_async(delegateNotificationQueue, block);
  }

  [(VideoConference *)self unlock];
}

uint64_t __65__VideoConference_SessionDelegate__session_initiateRelayRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v3 videoConference:v5 inititiateRelayRequest:v4 requestDict:v6];
  }

  return result;
}

- (void)session:(id)a3 sendRelayResponse:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v7 = [a3 callID];
  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "callID")}]))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_19;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      if (a3)
      {
        v11 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      *buf = 136315906;
      v22 = v9;
      v23 = 2080;
      v24 = "[VideoConference(SessionDelegate) session:sendRelayResponse:]";
      v25 = 1024;
      v26 = 3976;
      v27 = 2080;
      v28 = v11;
      v15 = "VideoConference [%s] %s:%d session=%s";
      v16 = v10;
      v17 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VideoConference *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_19;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      if (a3)
      {
        v14 = [objc_msgSend(a3 "description")];
      }

      else
      {
        v14 = "<nil>";
      }

      *buf = 136316418;
      v22 = v12;
      v23 = 2080;
      v24 = "[VideoConference(SessionDelegate) session:sendRelayResponse:]";
      v25 = 1024;
      v26 = 3976;
      v27 = 2112;
      v28 = v8;
      v29 = 2048;
      v30 = self;
      v31 = 2080;
      v32 = v14;
      v15 = "VideoConference [%s] %s:%d %@(%p) session=%s";
      v16 = v13;
      v17 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_19:
    delegateNotificationQueue = self->delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__VideoConference_SessionDelegate__session_sendRelayResponse___block_invoke;
    block[3] = &unk_1E85F3890;
    v20 = v7;
    block[4] = self;
    block[5] = a4;
    dispatch_async(delegateNotificationQueue, block);
  }

  [(VideoConference *)self unlock];
}

uint64_t __62__VideoConference_SessionDelegate__session_sendRelayResponse___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v3 videoConference:v5 sendRelayUpdate:v4 updateDict:v6];
  }

  return result;
}

- (void)session:(id)a3 cancelRelayRequest:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = [a3 callID];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__VideoConference_SessionDelegate__session_cancelRelayRequest___block_invoke;
  v8[3] = &unk_1E85F3890;
  v9 = v6;
  v8[4] = self;
  v8[5] = a4;
  dispatch_async(delegateNotificationQueue, v8);
}

uint64_t __63__VideoConference_SessionDelegate__session_cancelRelayRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v3 videoConference:v5 cancelRelayRequest:v4 requestDict:v6];
  }

  return result;
}

- (void)session:(id)a3 didChangeRemoteScreenAttributes:(id)a4
{
  v8[7] = *MEMORY[0x1E69E9840];
  [(VCMediaRecorder *)self->_vcMediaRecorder setInitialRemoteScreenAttributes:a4];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__VideoConference_SessionDelegate__session_didChangeRemoteScreenAttributes___block_invoke;
  v8[3] = &unk_1E85F3E30;
  v8[4] = self;
  v8[5] = a4;
  v8[6] = a3;
  dispatch_async(delegateNotificationQueue, v8);
}

void __76__VideoConference_SessionDelegate__session_didChangeRemoteScreenAttributes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v2 = VCRemoteVideoManager_DefaultManager();
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) callID];

  VCRemoteVideoManager_RemoteScreenAttributesDidChange(v2, v3, v4);
}

- (void)session:(id)a3 remoteAudioEnabled:(BOOL)a4 withCallID:(unsigned int)a5
{
  v9 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__VideoConference_SessionDelegate__session_remoteAudioEnabled_withCallID___block_invoke;
  block[3] = &unk_1E85F7418;
  block[4] = self;
  v8 = a4;
  v7 = a5;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __74__VideoConference_SessionDelegate__session_remoteAudioEnabled_withCallID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 44);
    v6 = *(a1 + 40);

    return [v3 videoConference:v4 remoteAudioEnabled:v5 forCallID:v6];
  }

  return result;
}

- (void)session:(id)a3 localAudioEnabled:(BOOL)a4 withCallID:(unsigned int)a5 error:(id)a6
{
  v10 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__VideoConference_SessionDelegate__session_localAudioEnabled_withCallID_error___block_invoke;
  v7[3] = &unk_1E85F7490;
  v9 = a4;
  v8 = a5;
  v7[4] = self;
  v7[5] = a6;
  dispatch_async(delegateNotificationQueue, v7);
}

uint64_t __79__VideoConference_SessionDelegate__session_localAudioEnabled_withCallID_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 52);
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 videoConference:v6 localAudioEnabled:v4 forCallID:v5 error:v7];
  }

  return result;
}

- (void)session:(id)a3 remoteCallingModeChanged:(unsigned int)a4 withCallID:(unsigned int)a5
{
  v9 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__VideoConference_SessionDelegate__session_remoteCallingModeChanged_withCallID___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  v7 = a4;
  v8 = a5;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __80__VideoConference_SessionDelegate__session_remoteCallingModeChanged_withCallID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 44);

    return [v3 videoConference:v4 remoteCallingModeChanged:v5 forCallID:v6];
  }

  return result;
}

- (void)setBWEOptions:(BOOL)a3 UseNewBWEMode:(BOOL)a4 FakeLargeFrameMode:(BOOL)a5 ProbingSenderLog:(BOOL)a6
{
  self->bweOperatingModeInitialized = a3;
  self->useNewBWEMode = a4;
  self->useFakeLargeFrameMode = a5;
  self->useActiveProbingSenderLog = a6;
}

- (void)session:(id)a3 changeVideoRulesToCaptureRule:(id)a4 encodeRule:(id)a5 featureListString:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v11 = [a4 iWidth];
  if ([a4 iHeight] * v11 == 130560)
  {
    [a4 fRate];
    [a4 setFrameWidth:1280 frameHeight:720 frameRate:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v31 = [a4 iWidth];
      v30 = [a4 iHeight];
      [a4 fRate];
      v15 = v14;
      [a4 fPref];
      v17 = v16;
      v29 = [a4 iPayload];
      v18 = [a5 iWidth];
      v19 = [a5 iHeight];
      [a5 fRate];
      v21 = v20;
      [a5 fPref];
      *buf = 136318466;
      v33 = v12;
      v34 = 2080;
      v35 = "[VideoConference(SessionDelegate) session:changeVideoRulesToCaptureRule:encodeRule:featureListString:]";
      v36 = 1024;
      v37 = 4081;
      v38 = 1024;
      v39 = v31;
      v40 = 1024;
      v41 = v30;
      v42 = 2048;
      v43 = v15;
      v44 = 2048;
      v45 = v17;
      v46 = 1024;
      v47 = v29;
      v48 = 1024;
      v49 = v18;
      v50 = 1024;
      v51 = v19;
      v52 = 2048;
      v53 = v21;
      v54 = 2048;
      v55 = v22;
      v56 = 1024;
      v57 = [a5 iPayload];
      v58 = 2080;
      v59 = [a6 UTF8String];
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VideoConference: schedule camera change, resolution change with new capture rule = %dx%dx%.1ffps(%.1f, %d), new encode rule = %dx%dx%.1ffps(%.1f, %d), featureListString %s", buf, 0x72u);
    }
  }

  if ([(VCMediaRecorder *)self->_vcMediaRecorder isActive])
  {
    [a4 setFrameWidth:0 frameHeight:0 frameRate:0.0];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v33 = v23;
        v34 = 2080;
        v35 = "[VideoConference(SessionDelegate) session:changeVideoRulesToCaptureRule:encodeRule:featureListString:]";
        v36 = 1024;
        v37 = 4084;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VideoConference: captureRule reset for VCMoments", buf, 0x1Cu);
      }
    }
  }

  if (a4)
  {
    [(CameraConferenceSynchronizer *)self->synchronizer scheduleCameraChangeToCaptureSettings:a4];
  }

  if (a5 && a6)
  {
    [a3 processResolutionChangeToVideoRule:a5 captureRule:a4 featureListString:a6];
  }

  v25 = [a3 negotiatedReceivingFramerate];
  if (v25)
  {
    v26 = v25;
    [(VCImageQueue *)self->frontQueue setFrameRate:v25];
    [(VCImageQueue *)self->backQueue setFrameRate:v26];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v33 = v27;
        v34 = 2080;
        v35 = "[VideoConference(SessionDelegate) session:changeVideoRulesToCaptureRule:encodeRule:featureListString:]";
        v36 = 1024;
        v37 = 4100;
        v38 = 1024;
        v39 = v26;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d reset receiving framerate for remote queue: %dfps", buf, 0x22u);
      }
    }
  }
}

- (void)session:(id)a3 startAudioWithFarEndVersionInfo:(VoiceIOFarEndVersionInfo *)a4 internalFrameFormat:(const tagVCAudioFrameFormat *)a5 completionHandler:(id)a6
{
  v16[6] = *MEMORY[0x1E69E9840];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __114__VideoConference_SessionDelegate__session_startAudioWithFarEndVersionInfo_internalFrameFormat_completionHandler___block_invoke;
  v16[3] = &unk_1E85F5518;
  v16[4] = self;
  v16[5] = a6;
  v11 = [v16 copy];
  v15 = 0;
  [(VideoConference *)self rdlock];
  if ([(NSMutableArray *)self->_startedSessions containsObject:a3])
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v15, 32012, 7, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 4129], @"Could not start audio.", @"Audio is already running");
    [(VideoConference *)self unlock];
    goto LABEL_4;
  }

  v12 = [(NSMutableArray *)self->_startedSessions count];
  [(NSMutableArray *)self->_startedSessions addObject:a3];
  [(VideoConference *)self unlock];
  if (v12)
  {
LABEL_4:
    if (a6)
    {
      (*(a6 + 2))(a6, v15 == 0);
    }

    return;
  }

  [(VCAudioIO *)self->_audioIO setClientFormat:a5];
  VCAudioBufferList_AllocateFrame(a5, &self->_sourceBuffer);
  VCAudioBufferList_AllocateFrame(a5, &self->_sinkBufferMix);
  VCAudioBufferList_AllocateFrame(a5, &self->_sinkBuffer);
  [(VCAudioIO *)self->_audioIO setFarEndVersionInfo:a4];
  if ([a3 basebandCodecType] && objc_msgSend(a3, "basebandCodecSampleRate"))
  {
    audioIO = self->_audioIO;
    v14 = CStrToFourcc([objc_msgSend(a3 "basebandCodecType")]);
    [objc_msgSend(a3 "basebandCodecSampleRate")];
    [(VCAudioIO *)audioIO setRemoteCodecType:v14 sampleRate:?];
  }

  [(VCAudioIO *)self->_audioIO startWithCompletionHandler:v11];
}

uint64_t __114__VideoConference_SessionDelegate__session_startAudioWithFarEndVersionInfo_internalFrameFormat_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    VCAudioBufferList_Destroy((*(a1 + 32) + 200));
    VCAudioBufferList_Destroy((*(a1 + 32) + 216));
    VCAudioBufferList_Destroy((*(a1 + 32) + 208));
    [*(*(a1 + 32) + 448) removeAllObjects];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)session:(id)a3 stopAudioWithCompletionHandler:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__VideoConference_SessionDelegate__session_stopAudioWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E85F5518;
  v9[4] = self;
  v9[5] = a4;
  [(VideoConference *)self rdlock];
  if (([(NSMutableArray *)self->_startedSessions containsObject:a3]& 1) == 0)
  {
    v10 = *MEMORY[0x1E696A588];
    v11[0] = @"Stopping audio session but session wasn't started";
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VideoConference" code:-2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
    [(VideoConference *)self unlock];
    if (!a4)
    {
      return;
    }

    goto LABEL_6;
  }

  [(NSMutableArray *)self->_startedSessions removeObject:a3];
  v7 = [(NSMutableArray *)self->_startedSessions count];
  [(VideoConference *)self unlock];
  if (!v7)
  {
    [(VCAudioIO *)self->_audioIO stopWithCompletionHandler:v9];
    return;
  }

  v8 = 0;
  if (a4)
  {
LABEL_6:
    (*(a4 + 2))(a4, 1, v8);
  }
}

uint64_t __75__VideoConference_SessionDelegate__session_stopAudioWithCompletionHandler___block_invoke(uint64_t a1)
{
  VCAudioBufferList_Destroy((*(a1 + 32) + 200));
  VCAudioBufferList_Destroy((*(a1 + 32) + 216));
  VCAudioBufferList_Destroy((*(a1 + 32) + 208));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (AudioStreamBasicDescription)audioIOFormat
{
  result = [(VCAudioIO *)self->_audioIO clientFormat];
  v5 = *&result->mBytesPerPacket;
  *&retstr->mSampleRate = *&result->mSampleRate;
  *&retstr->mBytesPerPacket = v5;
  *&retstr->mBitsPerChannel = *&result->mBitsPerChannel;
  return result;
}

- (void)session:(id)a3 setMomentsCapabilities:(unsigned int)a4 imageType:(int)a5 videoCodec:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  [(VCMediaRecorder *)self->_vcMediaRecorder setCapabilities:*&a4];
  [(VCMediaRecorder *)self->_vcMediaRecorder setVideoCodec:v6];
  vcMediaRecorder = self->_vcMediaRecorder;

  [(VCMediaRecorder *)vcMediaRecorder setImageType:v7];
}

- (unsigned)momentsCapabilitiesWithNegotiationBlobMomentsSettings_Capabilities:(int)a3
{
  if (a3 == 4)
  {
    v3 = 7;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (BOOL)initiateResolutionChangeToWidth:(int)a3 height:(int)a4 rate:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = *&a3;
  v29 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 5)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316418;
      v18 = v11;
      v19 = 2080;
      v20 = "[VideoConference(VideoProcessing) initiateResolutionChangeToWidth:height:rate:]";
      v21 = 1024;
      v22 = 4233;
      v23 = 1024;
      v24 = v7;
      v25 = 1024;
      v26 = v6;
      v27 = 1024;
      v28 = v5;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d VideoConference:initiateResolutionChange:  %dx%d@%dfps", &v17, 0x2Eu);
    }
  }

  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  *&v13 = v5;
  [(VCVideoRule *)self->conferenceCaptureRule setFrameWidth:v7 frameHeight:v6 frameRate:v13];
  if (VRTraceGetErrorLogLevelForModule() > 5)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = v14;
      v19 = 2080;
      v20 = "[VideoConference(VideoProcessing) initiateResolutionChangeToWidth:height:rate:]";
      v21 = 1024;
      v22 = 4239;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d video-resolution-change", &v17, 0x1Cu);
    }
  }

  return 1;
}

- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)a3 frameTime:(id *)a4 attribute:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_deviceRole == 3)
  {
    return 1;
  }

  v7 = self;
  var6 = a5->var6;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  v7->localFrameWidth = CVPixelBufferGetWidth(ImageBuffer);
  v7->localFrameHeight = CVPixelBufferGetHeight(ImageBuffer);
  VCMediaRecorder_AddLocalVideoSampleBuffer(v7->_vcMediaRecorder, a3, var6, v7->dwAudioTS);
  [(CameraConferenceSynchronizer *)v7->synchronizer cameraSizeChangedTo:v7->localFrameWidth, v7->localFrameHeight];
  if (v7->dAudioHostTime == 0.0)
  {
    return 1;
  }

  pthread_mutex_lock(&v7->xAudioTS);
  dwAudioTS = v7->dwAudioTS;
  dAudioHostTime = v7->dAudioHostTime;
  pthread_mutex_unlock(&v7->xAudioTS);
  currentCamera = v7->currentCamera;
  v15 = (var6 >> 3) & 1;
  if (currentCamera != v15)
  {
    v7->currentCamera = v15;
  }

  if ([(VideoConference *)v7 tryrdlock])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VideoConference(VideoProcessing) onVideoFrame:frameTime:attribute:];
      }
    }

    return 0;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v7->_sessionArray;
    v16 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v22 = v7;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          if (currentCamera != v15)
          {
            [*(*(&v27 + 1) + 8 * i) localCameraSwitchedFrom:currentCamera to:v22->currentCamera];
          }

          v24 = *&a4->var0;
          var3 = a4->var3;
          v21 = [v20 onCaptureFrame:a3 audioTS:dwAudioTS audioHT:&v24 videoHT:var6 cameraBits:dAudioHostTime];
        }

        v10 = v21;
        v17 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v17);
      v7 = v22;
    }

    else
    {
      v10 = 0;
    }

    [(VideoConference *)v7 unlock];
  }

  return v10;
}

- (void)avConferencePreviewError:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VideoConference(VideoProcessing) avConferencePreviewError:];
    }
  }

  v7[0] = 0;
  if ([a3 isEqualToString:@"avCaptureStartPreviewFail"])
  {
    v6 = 107;
  }

  else if ([a3 isEqualToString:@"avCaptureStartCaptureFail"])
  {
    v6 = 109;
  }

  else if ([a3 isEqualToString:@"avCaptureStopFail"])
  {
    v6 = 108;
  }

  else
  {
    v6 = 113;
  }

  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v7, 32023, v6, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 4338], @"Camera failure", a3);
  [(VideoConference *)self stopAllCalls:v7[0]];
  [(CameraConferenceSynchronizer *)self->synchronizer reset];
  objc_autoreleasePoolPop(v5);
}

- (void)avConferenceScreenCaptureError:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VideoConference(VideoProcessing) avConferenceScreenCaptureError:];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      [VideoConference(VideoProcessing) avConferenceScreenCaptureError:];
    }
  }

  v7[0] = 0;
  if ([a3 isEqualToString:@"vcScreenCaptureFailStart"])
  {
    v6 = 109;
  }

  else if ([a3 isEqualToString:@"vcScreenCaptureFailPreempt"])
  {
    v6 = 114;
  }

  else
  {
    v6 = 113;
  }

  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v7, 32029, v6, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VideoConference.m", 4364], @"SreenCapture failure", a3);
  [(VideoConference *)self stopAllCalls:v7[0]];
  [(CameraConferenceSynchronizer *)self->synchronizer reset];
  objc_autoreleasePoolPop(v5);
}

- (void)shouldSendBlackFrame:(BOOL)a3 callID:(id)a4
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sessionDict objectForKeyedSubscript:a4];

  [v5 shouldSendBlackFrame:v4];
}

- (void)setConferenceState:(unsigned int)a3 forCallID:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  [(VideoConference *)self rdlock];
  v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];

  [v7 setSessionConferenceState:v5 callID:v4];
}

- (void)setConferenceVisualRectangle:(CGRect)a3 forCallID:(unsigned int)a4
{
  v4 = *&a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(VideoConference *)self rdlock];
  v10 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sessionDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4]);
  [(VideoConference *)self unlock];

  [v10 setSessionConferenceVisualRectangle:v4 callID:{x, y, width, height}];
}

- (void)thermalLevelDidChange:(int)a3
{
  v3 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sessionArray];
  [(VideoConference *)self unlock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        [*(*(&v11 + 1) + 8 * v9++) thermalLevelDidChange:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)cameraAvailabilityDidChange:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sessionArray];
  [(VideoConference *)self unlock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v3)
        {
          [v10 setResumeVideo];
        }

        else
        {
          [v10 setSuspendVideo];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }
}

- (void)triggerInterfaceChange
{
  v21 = *MEMORY[0x1E69E9840];
  [(VideoConference *)self rdlock];
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sessionArray];
  [(VideoConference *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = v4;
      v17 = 2080;
      v18 = "[VideoConference(NATDelegate) triggerInterfaceChange]";
      v19 = 1024;
      v20 = 4447;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d Forced interface change", buf, 0x1Cu);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v9++) triggerInterfaceChange];
      }

      while (v7 != v9);
      v7 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)NATTypeDictionaryUpdated:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->natMutex);

  self->natTypeDictionary = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:a3];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = BYTE5(self->recvRTPTimeStamp.epoch);
      natTypeDictionary = self->natTypeDictionary;
      if (natTypeDictionary)
      {
        v9 = [(NSString *)[(NSDictionary *)natTypeDictionary description] UTF8String];
      }

      else
      {
        v9 = "<nil>";
      }

      *buf = 136316162;
      v15 = v5;
      v16 = 2080;
      v17 = "[VideoConference(NATDelegate) NATTypeDictionaryUpdated:]";
      v18 = 1024;
      v19 = 4461;
      v20 = 1024;
      v21 = v7;
      v22 = 2080;
      v23 = v9;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d NATTypeDictionaryUpdated: requiresWifi: %d  natTypeDictionary %s", buf, 0x2Cu);
    }
  }

  pthread_mutex_unlock(&self->natMutex);
  v10 = [(VideoConference *)self natTypeForCallSessions:"NATTypeDictionaryUpdated"];
  global_queue = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__VideoConference_NATDelegate__NATTypeDictionaryUpdated___block_invoke;
  v12[3] = &unk_1E85F38B8;
  v12[4] = self;
  v13 = v10;
  dispatch_async(global_queue, v12);
}

void __57__VideoConference_NATDelegate__NATTypeDictionaryUpdated___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) rdlock];
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(*(a1 + 32) + 440)];
  [*(a1 + 32) unlock];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = "VideoConference";
    v7 = MEMORY[0x1E6986650];
    v8 = *v33;
    *&v4 = 136316162;
    v19 = v4;
    do
    {
      v9 = 0;
      v20 = v5;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        [v10 setNatType:{*(a1 + 40), v19}];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v8;
            v14 = v6;
            v15 = v2;
            v16 = v7;
            v17 = *(a1 + 40);
            v18 = [v10 callID];
            *buf = v19;
            v22 = v11;
            v23 = 2080;
            v24 = "[VideoConference(NATDelegate) NATTypeDictionaryUpdated:]_block_invoke";
            v25 = 1024;
            v26 = 4479;
            v27 = 1024;
            v28 = v17;
            v7 = v16;
            v2 = v15;
            v6 = v14;
            v8 = v13;
            v5 = v20;
            v29 = 1024;
            v30 = v18;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoConference [%s] %s:%d Setting natType %d for callID %d", buf, 0x28u);
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [v2 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v5);
  }
}

void __35__VideoConference_setupNATObserver__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d Something is wrong with getting the snatmapserver", v2, v3, v4, v5, v6);
}

- (void)inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d Error to verify loaded Server Bags %@");
}

- (void)updateCapabilities:forSession:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d deregisterForVideoFramesWithDeviceRole failed; self = %p", v2, v3, v4, v5);
}

- (void)updateCapabilities:forSession:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d registerForVideoFramesWithDeviceRole failed; self = %p", v2, v3, v4, v5);
}

- (void)updateCapabilities:forSession:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d audio for the session should not be running", v2, v3, v4, v5, v6);
}

- (void)setUpAudioIO:callID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d _startedSessions is not empty", v2, v3, v4, v5, v6);
}

- (void)setupSpatialAudioWithCallID:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d Failed to register the spatial metadata. status=%08x", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)setupSpatialAudioWithCallID:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d Failed to retrieve the channel index. status=%08x", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)setupSpatialAudioWithCallID:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d Failed to allocate spatial metadata entry. status=%08x", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)setupSpatialAudioWithCallID:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, "VideoConference [%s] %s:%d Failed to create the spatial metadata. status=%08x", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

@end