@interface VCCallSession
+ (id)getDecodePayloadTypes:(int)a3 secondaryPayloadTypes:(id)a4;
+ (int)setRxPayloadList:(tagHANDLE *)a3 withPayloadTypes:(id)a4 isRedEnabled:(BOOL)a5;
+ (void)stopSecureControlChannel:(id)a3;
- (BOOL)addMediaConfigurationsToLocalConfiguration:(id)a3;
- (BOOL)applyNegotiatedAudioSettings:(id *)a3;
- (BOOL)applyNegotiatedVideoSettings:(id *)a3;
- (BOOL)canNegotiateVideoPayload:(int)a3 supportedPayloads:(id)a4 isLocalOnCellular:(BOOL)a5 isRemoteOnCellular:(BOOL)a6;
- (BOOL)canSendSIPInviteWithError:(id *)a3;
- (BOOL)chooseDTXPayloads:(id)a3;
- (BOOL)choosePayload:(id)a3;
- (BOOL)chooseSecondaryPayloads:(id)a3;
- (BOOL)chooseVideoPayload:(id)a3 operatingMode:(int)a4 isLocalOnCellular:(BOOL)a5 isRemoteOnCellular:(BOOL)a6;
- (BOOL)chooseVideoPayloadForInterface:(int)a3;
- (BOOL)configureLegacyTransportWithInviteInfo:(id)a3 error:(id *)a4;
- (BOOL)createAudioTransmitter:(id *)a3;
- (BOOL)createMediaQueueHandle:(id *)a3;
- (BOOL)createRTPHandles:(id *)a3;
- (BOOL)createSDP:(int *)a3 audioPayloadCount:(int)a4 secondaryPayloadTypes:(int *)a5 secondaryPayloadCount:(int)a6 videoPayloadTypes:(int *)a7 videoPayloadCount:(int)a8 localFeatureList:(id)a9 answerBandwidth:(int)a10 maxBandwidth:(int)a11 imageSizesSend:(imageTag *)a12 imageSendCount:(int *)a13 imageSizesRecv:(imageTag *)a14 imageRecvCount:(int *)a15 sdp:(char *)a16 numSDPBytes:(int *)a17 error:(id *)a18;
- (BOOL)createVideoReceiverWithReportingAgent:(opaqueRTCReporting *)a3 fecHeaderV1Enabled:(BOOL)a4 videoJBEnabled:(BOOL)a5 error:(id *)a6;
- (BOOL)disconnectInternal:(BOOL)a3 disconnectError:(id)a4 didRemoteCancel:(BOOL)a5;
- (BOOL)doesVideoPayloadMatchRemoteImageAttributeRules:(id)a3;
- (BOOL)establishSIPDialogWithSDP:(id)a3 error:(id *)a4;
- (BOOL)evaluateEnableRRx:(int *)a3;
- (BOOL)getVideoSettings:(int)a3 forInterface:(int)a4 payload:(int)a5 width:(int *)a6 height:(int *)a7 framerate:(int *)a8 bitRate:(int *)a9;
- (BOOL)initializeDisplayLinkWithError:(id *)a3;
- (BOOL)initializeVideoReceiver:(id *)a3 reportingAgent:(opaqueRTCReporting *)a4 fecHeaderV1Enabled:(BOOL)a5 videoJBEnabled:(BOOL)a6;
- (BOOL)initializeVideoTransmitter:(id *)a3 videoRules:(VCCSVideoTransmitterVideoRules_t *)a4 unpausing:(BOOL)a5 reportingAgent:(opaqueRTCReporting *)a6 fecHeaderV1Enabled:(BOOL)a7 isFECGeneratorEnabled:(BOOL)a8;
- (BOOL)isBetterForSIPInviteWithSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3 thanSession:(id)a4;
- (BOOL)isCurrentPayloadTypeValid;
- (BOOL)isFECGeneratorEnabled;
- (BOOL)isLocalOrRemoteOnCellular;
- (BOOL)isLowBitrateCodecPreferred:(id)a3;
- (BOOL)isSKEOptimizationEnabled;
- (BOOL)isSecureMessagingRequired;
- (BOOL)isValidVideoPayloadOverride:(id)a3;
- (BOOL)isVideoRunning;
- (BOOL)negotiateMaxBandwidth:(int *)a3;
- (BOOL)negotiatePayloads:(id *)a3 withError:(id *)a4;
- (BOOL)onCaptureFrame:(opaqueCMSampleBuffer *)a3 audioTS:(unsigned int)a4 audioHT:(double)a5 videoHT:(id *)a6 cameraBits:(unsigned __int8)a7;
- (BOOL)prepareSRTPWithError:(id *)a3;
- (BOOL)pullAudioSamples:(opaqueVCAudioBufferList *)a3 rtpTimestamp:(unsigned int *)a4 lastReceivedAudioTime:(double *)a5 padding:(char *)a6 paddingLength:(char *)a7 silence:(int *)a8;
- (BOOL)sendSIPInviteWithError:(id *)a3;
- (BOOL)setMatchedFeaturesString:(char *)a3 localFeaturesString:(id)a4 remoteFeaturesString:(id)a5;
- (BOOL)setMediaQueueStreamSettings;
- (BOOL)setPauseAudio:(BOOL)a3 force:(BOOL)a4 error:(id *)a5;
- (BOOL)setPauseVideo:(BOOL)a3 force:(BOOL)a4 error:(id *)a5;
- (BOOL)setRTPPayloads:(id)a3 withError:(id *)a4;
- (BOOL)setupAudioCodecWithPayload:(int)a3;
- (BOOL)setupAudioCookies;
- (BOOL)setupCallerRTPChannelWithError:(id *)a3;
- (BOOL)setupIDSConnectionForCallID:(unsigned int)a3 destination:(id)a4 socket:(int)a5 error:(id *)a6;
- (BOOL)shouldNotifyDelegateDidStartBeforeAudioSetup;
- (BOOL)sipConnectWithError:(id *)a3;
- (BOOL)startAFRC:(id *)a3;
- (BOOL)startConnectionWithParticipantID:(id)a3 callID:(unsigned int)a4 usingInviteData:(id)a5 isCaller:(BOOL)a6 capabilities:(id)a7 idsSocket:(int)a8 destination:(id)a9 error:(id *)a10;
- (BOOL)startMediaQueue:(id *)a3;
- (BOOL)startMediaWithPreNegotiatedSettings:(id *)a3;
- (BOOL)startRateControl:(id *)a3;
- (BOOL)startVCRC:(id *)a3;
- (BOOL)startVideo:(BOOL)a3 error:(id *)a4;
- (BOOL)startVideoReceive:(id *)a3;
- (BOOL)startVideoSend:(BOOL)a3 error:(id *)a4;
- (BOOL)stopMediaQueue:(id *)a3;
- (BOOL)stopRateControl:(id *)a3;
- (BOOL)stopVideo:(BOOL)a3 error:(id *)a4;
- (BOOL)stopVideoReceive:(id *)a3 isPausing:(BOOL)a4;
- (BOOL)stopVideoSend:(BOOL)a3 error:(id *)a4;
- (BOOL)treatAsCellular;
- (CGSize)computeVisibleAspectRatioWithRemoteScreenAspectRatio:(CGSize)a3 remoteExpectedAspectRatio:(CGSize)a4 encodeWidth:(int)a5 encodeHeight:(int)a6;
- (VCCallSession)initWithDeviceRole:(int)a3 transportType:(unsigned int)a4 isGKVoiceChat:(BOOL)a5 reportingHierarchyToken:(id)a6;
- (VCCallSession)initWithRelevantStorebagEntries;
- (__SecIdentity)retrieveIdentity;
- (const)matchedFeaturesStringForPayload:(int)a3;
- (double)audioReceivingBitrateKbps;
- (double)audioTransmittingBitrateKbps;
- (double)networkQuality;
- (double)sessionReceivingBitrate;
- (double)sessionReceivingFramerate;
- (double)sessionTransmittingBitrate;
- (double)sessionTransmittingFramerate;
- (id)activeControlChannel;
- (id)addAudioPayload:(int)a3;
- (id)allPayloadsLocalFeaturesString;
- (id)callMetadata;
- (id)createInviteSDPWithError:(id *)a3;
- (id)getCompatibleLocalFeatureListForPayloads:(int *)a3 count:(int)a4;
- (id)getFeatureListStringForPayload:(int)a3;
- (id)getVideoRuleForVideoMode:(unint64_t)a3 interface:(int)a4 sessionBitrate:(int *)a5;
- (id)inviteDataForParticipantID:(id)a3 callID:(unsigned int *)a4 remoteInviteData:(id)a5 nonCellularCandidateTimeout:(double)a6 error:(id *)a7;
- (id)negotiatedAudioPayloadTypes;
- (id)newCameraConfiguration;
- (id)newConfigForPayloadType:(int)a3;
- (id)newMediaBlobWithRemoteMediaBlob:(id)a3 localCallID:(unsigned int)a4 isLowBitrateCodecPreferred:(BOOL)a5;
- (id)newMediaNegotiatorAudioConfigurationWithAllowAudioSwitching:(BOOL)a3 useSBR:(BOOL)a4 aacBlockSize:(unsigned int)a5;
- (id)newRemoteScreenAttributesForOrientation:(int)a3;
- (id)newSKEBlobWithRemoteSKEBlob:(id)a3;
- (id)newScreenConfigurationWithCameraConfiguration:(id)a3;
- (id)pickFeaturesStringForPayload:(int)a3 featureListDict:(id)a4 remote:(BOOL)a5;
- (id)vcrcServerBag;
- (int)Conference_SetBWEstMode:(BOOL)a3 bFakeLargeFrameMode:(BOOL)a4;
- (int)applyFeatureListStringForPayload:(int)a3;
- (int)audioTierAudioCodecBitrate;
- (int)audioTierNetworkBitrate;
- (int)audioTierPacketsPerBundle;
- (int)audioTierPayload;
- (int)audioTierRedNumPayloads;
- (int)bundledPackets;
- (int)fillMediaControlInfo:(void *)a3;
- (int)getAllCompatibleVideoPayloads:(int *)a3 forMediaType:(int)a4;
- (int)getAudioTxBitrate;
- (int)handleIncomingWithCallID:(unsigned int)a3 msgIn:(const char *)a4 msgOut:(char *)a5 optional:(void *)a6 confIndex:(int *)a7 error:(id *)a8;
- (int)interfaceForCurrentCall;
- (int)mapPacketMultiplexModeToRTPMode:(int64_t)a3;
- (int)mapPacketMultiplexModeToSIPMode:(int64_t)a3;
- (int)negotiatedReceivingFramerate;
- (int)numBufferBytesAvailable;
- (int)packetsPerBundle;
- (int)processMediaControlInfo:(void *)a3 isAudio:(BOOL)a4;
- (int)setSKEBlobOnTransportSession;
- (int)setupEncryptionWithKey:(const __CFData *)a3 confIndex:(int *)a4;
- (int)sipCallback:(int)a3 callID:(unsigned int)a4 msgIn:(const char *)a5 msgOut:(char *)a6 optional:(void *)a7 confIndex:(int *)a8;
- (int64_t)calculateSIPEndAction:(BOOL)a3 currentState:(int64_t)a4 error:(id)a5;
- (unsigned)audioRTPID;
- (unsigned)codecBitmapForPayloads:(id)a3;
- (unsigned)currentAudioCap;
- (unsigned)maxBitrateForConnectionType;
- (unsigned)mediaControlInfoFECFeedbackVersion;
- (unsigned)parameterSetForPayload:(int)a3;
- (unsigned)primaryConnectionType;
- (unsigned)vcrcServerBagProfileNumber;
- (unsigned)videoRTPID;
- (void)addLocalCallInfoToInviteDictionary:(id)a3;
- (void)addScreenConfigToSDP:(id)a3;
- (void)adjustBitrateForConnectionType;
- (void)applyNegotiatedCaptionsSettings;
- (void)applyNegotiatedFaceTimeSettings;
- (void)applyNegotiatedMediaRecorderSettings;
- (void)applyNegotiatedSettings;
- (void)cancelConnectionTimeoutTimer;
- (void)cancelFirstRemoteFrameTimer;
- (void)checkAbnormalOWRDAndResetLagReference;
- (void)checkAndReportThermalIncreaseAudioOnly:(int)a3;
- (void)cleanUpDisplayLink;
- (void)cleanUpVideoRTP;
- (void)cleanUpVideoReceiver;
- (void)cleanUpVideoTransmitter;
- (void)cleanupMedia;
- (void)cleanupWCMClient;
- (void)cleanupWRMClient;
- (void)configureRateController;
- (void)controlChannel:(id)a3 receivedData:(id)a4 transactionID:(unsigned int)a5 fromParticipant:(id)a6;
- (void)dealloc;
- (void)deregisterForReportingNotifications;
- (void)didChangeThermalLevel:(int)a3;
- (void)disableSessionHealthMonitor;
- (void)disconnectWithNoRemotePackets:(int64_t)a3 timeoutUsed:(double)a4;
- (void)doSipEndAction:(int)a3 callID:(unsigned int)a4 error:(id)a5;
- (void)doSipEndProc:(id)a3;
- (void)enableAudio:(BOOL)a3;
- (void)enableSessionHealthMonitor;
- (void)gatherRealtimeStats:(__CFDictionary *)a3;
- (void)getAllPayloadsForAudio:(int *)a3 count:(int *)a4 secondaryPayloads:(int *)a5 secondaryCount:(int *)a6;
- (void)getAllPayloadsForScreen:(int *)a3 count:(int *)a4;
- (void)getAllPayloadsForVideo:(int *)a3 count:(int *)a4;
- (void)getFrontCaptureTime:(float *)a3 backCaptureTime:(float *)a4;
- (void)getVideoFeatureStatusSettings:(tagVCReportingClientSettingsPersist *)a3;
- (void)handleCellTechChange:(int)a3;
- (void)handleCellularMTUChanged:(unsigned __int16)a3;
- (void)handleDuplicationEnabled:(BOOL)a3 activeConnection:(id)a4;
- (void)handleFirstConnectionSetup:(id)a3;
- (void)handleKeyExchangeCompleted;
- (void)handleMicModeNotification:(id)a3;
- (void)handleNewConnectionSetup:(id)a3 isInitialConnection:(BOOL)a4;
- (void)handlePendingPrimaryConnectionChange;
- (void)handleReceivedPiggybackBlobIDS:(id)a3;
- (void)handleReceivedPiggybackBlobLegacy:(id)a3;
- (void)handleVideoReceiverInitializationFailed;
- (void)localCameraSwitchedFrom:(int)a3 to:(int)a4;
- (void)logConnectionSuccess;
- (void)logDetailedNetworkInformation;
- (void)logIdentity:(__SecIdentity *)a3;
- (void)logPerfTimings;
- (void)mediaController:(void *)a3 mediaSuggestionDidChange:(VCRateControlMediaSuggestion)a4;
- (void)messageVCMomentsRequest:(id)a3;
- (void)negotiateFeaturesString:(id)a3 forPayload:(int)a4;
- (void)negotiateMediaMaxBandwidth;
- (void)negotiatedReceivingFramerate;
- (void)newCameraConfiguration;
- (void)nofityDelegateReceivedRemoteFrame:(__CVBuffer *)a3 frameTime:(id *)a4 cameraStatusBits:(unsigned __int8)a5 newRemoteVideoAttributes:(id)a6 remoteScreenAttributes:(id)a7;
- (void)notifyDelegateActiveConnectionDidChange;
- (void)notifyDelegateAndEndCall:(int64_t)a3 didRemoteCancel:(BOOL)a4 error:(id)a5;
- (void)notifyDelegateSessionStarted;
- (void)onPlayVideo:(__CVBuffer *)a3 frameTime:(id *)a4 cameraStatusBits:(unsigned __int8)a5;
- (void)primaryConnectionDidChangeTo:(id)a3 oldConnection:(id)a4;
- (void)processBlackFrame:(opaqueCMSampleBuffer *)a3;
- (void)processCancelRelayRequest:(id)a3 didOriginateRequest:(BOOL)a4;
- (void)processRelayRequestResponseDict:(id)a3 didOriginateRequest:(BOOL)a4;
- (void)processRelayUpdateDict:(id)a3 didOriginateRequest:(BOOL)a4;
- (void)processRemoteIPChange:(id)a3 callID:(unsigned int)a4;
- (void)processResolutionChangeToVideoRule:(id)a3 captureRule:(id)a4 featureListString:(id)a5;
- (void)processSIPMessage:(char *)a3 msgOut:(char *)a4 optional:(void *)a5 confIndex:(int *)a6;
- (void)processSymptomFromMessage:(id)a3 participantID:(id)a4 isLocalInitiated:(BOOL)a5 isLocalSideOnly:(BOOL)a6;
- (void)pushAudioSamples:(opaqueVCAudioBufferList *)a3;
- (void)rateController:(id)a3 targetBitrateDidChange:(unsigned int)a4 rateChangeCounter:(unsigned int)a5;
- (void)rcvdFirstRemoteFrame;
- (void)redundancyController:(id)a3 redundancyPercentageDidChange:(unsigned int)a4;
- (void)redundancyController:(id)a3 redundancyVectorDidChange:(id *)a4;
- (void)registerForReportingNotifications;
- (void)releaseRTPHandles;
- (void)remoteCellTechStateUpdate:(int)a3 maxRemoteBitrate:(unsigned int)a4;
- (void)remotePauseDidChangeToState:(BOOL)a3 forVideo:(BOOL)a4;
- (void)reportClientPersistentSettings;
- (void)reportDashboardEndResult:(BOOL)a3;
- (void)reportHandoverResultsWithDictionary:(id)a3 localBitrateCap:(int)a4 remoteBitrateCap:(int)a5;
- (void)reportImmediateWRMMetric:(int)a3 value:(unint64_t)a4;
- (void)reportOperatingMode;
- (void)reportingMomentsWithRequest:(id)a3;
- (void)requestWRMNotification;
- (void)resetState;
- (void)resetVideoRulesForInterface:(int)a3 videoReportingDictionary:(id)a4;
- (void)schedulePrimaryConnectionChange:(id)a3 oldConnection:(id)a4;
- (void)sendARPLData:(id)a3 toCallID:(unsigned int)a4;
- (void)sendBasebandCodecMessage;
- (void)sendCallingModeMessage;
- (void)sendData:(id)a3 messageType:(unsigned int)a4 encrypted:(BOOL)a5;
- (void)sendSymptomToRemote:(id)a3 groupID:(id)a4;
- (void)sendTimings;
- (void)sendWRMStatusUpdate:(id *)a3;
- (void)setCapabilities:(id)a3;
- (void)setCurrentEncodeRule:(id)a3;
- (void)setDuplicationFlag:(BOOL)a3 withPreferredLocalLinkTypeForDuplication:(int)a4 notifyPeer:(BOOL)a5;
- (void)setIsGKVoiceChat:(BOOL)a3;
- (void)setLocalIdentityForKeyExchange;
- (void)setOperatingMode:(int)a3;
- (void)setPacketsPerBundle:(int)a3;
- (void)setPeerProtocolVersion:(unsigned int)a3;
- (void)setPreWarmState:(BOOL)a3;
- (void)setQualityDelegate:(id)a3;
- (void)setRemoteCallInfoFromInviteDictionary:(id)a3;
- (void)setResumeAudio;
- (void)setResumeVideo;
- (void)setSessionConferenceState:(unsigned int)a3 callID:(unsigned int)a4;
- (void)setSessionConferenceVisualRectangle:(CGRect)a3 callID:(unsigned int)a4;
- (void)setShouldSendAudio:(BOOL)a3;
- (void)setSuspendAudio;
- (void)setSuspendVideo;
- (void)setUpFirstRemoteFrameTimer;
- (void)setUseRateControl:(BOOL)a3;
- (void)setWRMCoexMetrics:(id)a3;
- (void)setWRMNotification:(id *)a3;
- (void)setupAACELDPayload:(int)a3;
- (void)setupABTesting;
- (void)setupAudioOnOffStateMessages;
- (void)setupAudioPauseMessages;
- (void)setupAudioPausedHBMessages;
- (void)setupBasebandCodecInfoMessages;
- (void)setupBitrateNegotiation;
- (void)setupCalleeSIPStartTimeout:(float)a3;
- (void)setupCallingModeMessages;
- (void)setupCellTechChangeMessages;
- (void)setupConnectionTimeoutTimerWithErrorCode:(int)a3 detailedCode:(int)a4 description:(id)a5 reason:(id)a6;
- (void)setupDTLSDefaults;
- (void)setupDisconnectMessage;
- (void)setupHandoverCandidateChangeMessage;
- (void)setupMessaging;
- (void)setupMomentsMessages;
- (void)setupPeerInfo:(id)a3 usingInviteData:(id)a4 isCaller:(BOOL)a5 capabilities:(id)a6;
- (void)setupPiPStateChangeMessage;
- (void)setupPreferredInterfaceMessage;
- (void)setupSecureDataChannel;
- (void)setupSymptomEnabledMessage;
- (void)setupVideoPauseMessages;
- (void)setupWCMClient;
- (void)setupWRMAlertStateUpdateMessage;
- (void)setupWRMClient;
- (void)setupWRMCoexMetricsMessage;
- (void)shutdownVoiceChatFromRemoteSIPSignal:(int)a3 withReason:(const char *)a4;
- (void)sipConnectThreadProc:(id)a3;
- (void)startAWDStats;
- (void)startAudioIOWithCompletionHandler:(id)a3;
- (void)startAudioWithCompletionHandler:(id)a3;
- (void)startPausedHeartbeat;
- (void)stopAudioIO:(id)a3;
- (void)stopAudioWithCompletionHandler:(id)a3;
- (void)stopPausedHeartbeat;
- (void)telephonyInterface:(id)a3 vocoderInfoChangedToType:(id)a4 sampleRate:(id)a5;
- (void)thermalLevelDidChange:(int)a3;
- (void)timeoutUnfinishedConnection;
- (void)transportSession:(id)a3 cancelRelayRequest:(id)a4;
- (void)transportSession:(id)a3 connectionSetupDataDidChange:(id)a4;
- (void)transportSession:(id)a3 initiateRelayRequest:(id)a4;
- (void)transportSession:(id)a3 sendRelayResponse:(id)a4;
- (void)triggerInterfaceChange;
- (void)updateCachedConnectionState;
- (void)updateDeviceRole:(int)a3;
- (void)updateLastReceivedAudioTime;
- (void)updateLastReceivedPacket:(BOOL)a3 packetType:(int)a4;
- (void)updateLastReceivedPacketWithTimestamp:(double)a3 packetType:(int)a4;
- (void)updateMaxPktLength;
- (void)updateNetworkCheckHint:(double)a3;
- (void)updateRelayedCallType:(unsigned __int8)a3;
- (void)updateRemoteMediaStallState:(double)a3;
- (void)updateRemoteMediaStallStateReporting:(double)a3;
- (void)updateSourcePlayoutTime:(const tagVCMediaTime *)a3;
- (void)updateStatistics:(tagVCStatisticsMessage *)a3;
- (void)updateVCRateControlWRMMetrics:(tagWRMMetricsInfo *)a3;
- (void)updateVideoQualityNotification:(double)a3;
- (void)updateVideoQualityStatusWithTime:(double)a3 isRemote:(BOOL)a4;
- (void)vcSecureDataChannel:(id)a3 messageType:(unsigned int)a4 receivedData:(id)a5;
- (void)verifyFaceTimeClassicNotOnNewerBuilds;
- (void)wcmGetCallConfig:(unsigned int *)a3 targetBitrate:(unsigned int *)a4;
- (void)wcmSetCallConfig:(unsigned int)a3 interferenceLevel:(unsigned int)a4;
@end

@implementation VCCallSession

- (VCCallSession)initWithDeviceRole:(int)a3 transportType:(unsigned int)a4 isGKVoiceChat:(BOOL)a5 reportingHierarchyToken:(id)a6
{
  v7 = a5;
  v69 = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = VCCallSession;
  v10 = [(VCCallSession *)&v53 init];
  if (objc_opt_class() == v10)
  {
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

    *buf = 136316418;
    v57 = v12;
    LOWORD(v58) = 2080;
    *(&v58 + 2) = "[VCCallSession initWithDeviceRole:transportType:isGKVoiceChat:reportingHierarchyToken:]";
    WORD5(v58) = 1024;
    HIDWORD(v58) = 348;
    *v59 = 1024;
    *&v59[2] = a3;
    *&v59[6] = 1024;
    *&v59[8] = a4;
    LOWORD(v60) = 1024;
    *(&v60 + 2) = v7;
    v14 = "VCCallSession [%s] %s:%d deviceRole = %d, transportType = %d, isGKVoiceChat = %d";
    v15 = v13;
    v16 = 46;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 performSelector:sel_logPrefix];
  }

  else
  {
    v11 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      v57 = v17;
      LOWORD(v58) = 2080;
      *(&v58 + 2) = "[VCCallSession initWithDeviceRole:transportType:isGKVoiceChat:reportingHierarchyToken:]";
      WORD5(v58) = 1024;
      HIDWORD(v58) = 348;
      *v59 = 2112;
      *&v59[2] = v11;
      *&v59[10] = 2048;
      *&v60 = v10;
      WORD4(v60) = 1024;
      *(&v60 + 10) = a3;
      HIWORD(v60) = 1024;
      LODWORD(v61) = a4;
      WORD2(v61) = 1024;
      *(&v61 + 6) = v7;
      v14 = "VCCallSession [%s] %s:%d %@(%p) deviceRole = %d, transportType = %d, isGKVoiceChat = %d";
      v15 = v18;
      v16 = 66;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    }
  }

LABEL_12:
  *(v10 + 5) = 2;
  +[VCVTPWrapper startVTP];
  *(v10 + 27) = 0xFFFFFFFFLL;
  v19 = +[VideoConferenceManager defaultVideoConferenceManager];
  if (a4)
  {
    [v19 setupVTPCallback];
  }

  else
  {
    [v19 startSIPWithPacketMultiplexMode:objc_msgSend(v10 transportType:{"mapPacketMultiplexModeToSIPMode:", *(v10 + 5)), 0}];
    *(v10 + 27) = [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
  }

  *(v10 + 94) = 0;
  *(v10 + 95) = &stru_1F570E008;
  *(v10 + 192) = &stru_1F570E008;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 94) = 0;
  v10[226] = 0;
  *(v10 + 11) = 0;
  *(v10 + 112) = 0;
  *(v10 + 16) = 0;
  *(v10 + 17) = 0;
  *(v10 + 6) = 0xFFFFFFFFLL;
  *(v10 + 7) = 0xFFFFFFFFLL;
  *(v10 + 42) = 0xFFFFFFFFLL;
  *(v10 + 43) = 0xFFFFFFFFLL;
  v68.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v68.__opaque = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutexattr_init(&v68);
  pthread_mutexattr_settype(&v68, 2);
  v10[296] = 0;
  *(v10 + 24) = -1;
  pthread_mutex_init((v10 + 232), &v68);
  pthread_mutexattr_destroy(&v68);
  v10[408] = 0;
  pthread_mutex_init((v10 + 416), 0);
  pthread_mutex_init(v10 + 13, 0);
  *(v10 + 385) = 0;
  *(v10 + 64) = 0;
  *(v10 + 165) = -1;
  *(v10 + 83) = 0;
  v10[993] = v7;
  v10[592] = !v7;
  *(v10 + 18) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  *(v10 + 600) = 1450;
  *(v10 + 95) = 104;
  v10[977] = 1;
  *(v10 + 82) = a3;
  v10[387] = [GKSConnectivitySettings isFeatureEnabledForStorebagKey:@"vc-ab-testing-detect-inactive-audio-frames-AACELD" userDefaultKey:@"DetectInactiveAudioFramesAACELD" featureFlagDomain:"AVConference" featureFlagName:"DetectInactiveAudioFramesAACELD"];
  *(v10 + 75) = 0;
  v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(v10 + 15) = dispatch_queue_create("com.apple.VideoConference.VCCallSession.connectionChangeQueue", v20);
  *(v10 + 60) = dispatch_queue_create("com.apple.VideoConference.VCCallSession.videoQueue", v20);
  *(v10 + 61) = dispatch_queue_create("com.apple.VideoConference.VCCallSession.videoAsyncQueue", v20);
  *(v10 + 112) = dispatch_queue_create("com.apple.VideoConference.VCCallSession.qualityQueue", 0);
  *(v10 + 62) = dispatch_queue_create("com.apple.VideoConference.VCCallSession.audioQueue", v20);
  *(v10 + 63) = dispatch_queue_create("com.apple.VideoConference.VCCallSession.delegateNotificationQueue", v20);
  v10[528] = [+[VCDefaults sharedInstance](VCDefaults audioRecordingEnabled];
  *(v10 + 133) = [+[VCDefaults sharedInstance](VCDefaults aacBlockSize];
  v10[384] = [+[VCDefaults sharedInstance](VCDefaults useSBR];
  *(v10 + 146) = objc_alloc_init(MEMORY[0x1E6986620]);
  *(v10 + 84) = objc_alloc_init(MEMORY[0x1E6986620]);
  *(v10 + 86) = 0;
  *(v10 + 99) = 0;
  v10[608] = 0;
  v10[648] = 0;
  *(v10 + 652) = 0;
  *(v10 + 620) = 0;
  *(v10 + 628) = 0;
  *(v10 + 612) = 0;
  *(v10 + 159) = 0;
  v10[593] = 1;
  v10[817] = 0;
  v10[976] = 0;
  v10[980] = 0;
  pthread_mutex_init((v10 + 912), 0);
  *(v10 + 123) = [[VCCallLinkCongestionDetector alloc] initWithRTTThreshold:3.0 lossRateThreshold:0.6];
  v10[992] = 1;
  *(v10 + 136) = 0;
  v10[1080] = 0;
  *(v10 + 548) = 0;
  v10[1545] = 0;
  *(v10 + 252) = 0;
  *(v10 + 97) = 0u;
  *(v10 + 98) = 0u;
  *(v10 + 99) = 0u;
  *(v10 + 100) = 0u;
  *(v10 + 101) = 0u;
  *(v10 + 102) = 0u;
  *(v10 + 103) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 105) = 0u;
  *(v10 + 106) = 0u;
  *(v10 + 287) = 0;
  *(v10 + 144) = dispatch_queue_create("com.apple.avconference.vccallsession.celltech", 0);
  *(v10 + 148) = 0;
  if ((VTP_GetSendRecvStats(v10 + 151, v10 + 152) & 0x80000000) != 0)
  {
    *(v10 + 151) = -1;
    *(v10 + 152) = -1;
  }

  *(v10 + 156) = 0xFFFFFFFFLL;
  *(v10 + 157) = 0xFFFFFFFFLL;
  *(v10 + 127) = 0x4008000000000000;
  __asm { FMOV            V0.2D, #4.0 }

  *(v10 + 64) = _Q0;
  *(v10 + 130) = 0x4008000000000000;
  *(v10 + 1336) = 0u;
  v26 = [+[VCDefaults sharedInstance](VCDefaults enableiRATSuggestion];
  if (v26 == -1)
  {
    v27 = +[GKSConnectivitySettings supportiRATRecommendation];
  }

  else
  {
    v27 = v26 != 0;
  }

  v10[1352] = v27;
  *(v10 + 3) = objc_alloc_init(VCCallInfo);
  ID = VCUniqueIDGenerator_GenerateID();
  [*(v10 + 3) setCallID:ID];
  [*(v10 + 3) setSupportsSKEOptimization:1];
  memset(v67, 170, 12);
  __sprintf_chk(v67, 0, 0xCuLL, "%010u", ID);
  *(v10 + 191) = VRLogfileAlloc(0, v67, "CallSettings", ".calldump", "com.apple.VideoConference.CallSettingsLog", 32);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v57 = v29;
      LOWORD(v58) = 2080;
      *(&v58 + 2) = "[VCCallSession initWithDeviceRole:transportType:isGKVoiceChat:reportingHierarchyToken:]";
      WORD5(v58) = 1024;
      HIDWORD(v58) = 500;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Using the following path - traditional 1:1", buf, 0x1Cu);
    }
  }

  if (!v7)
  {
    v57 = 0;
    v58 = 0uLL;
    *buf = ID;
    *v59 = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    *&v59[4] = a6;
    v63 = &__block_literal_global_49;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    *(v10 + 174) = reportingCreateAgent();
    *(v10 + 350) = VCReporting_GetDynamicReportingModuleID();
    reportingSetPeriodicAggregationOccurredHandler();
    [+[VCQoSMonitorManager sharedInstance](VCQoSMonitorManager registerQoSReportingSourceForToken:"registerQoSReportingSourceForToken:", ID];
  }

  *(v10 + 50) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v10 + 85) = 0u;
  v10[1407] = [+[VCDefaults sharedInstance](VCDefaults rateControlDumpEnabled];
  *(v10 + 373) = 1;
  *(v10 + 368) = -1;
  v31 = MEMORY[0x1E69866C8];
  *(v10 + 355) = 0;
  v54[0] = *v31;
  v55[0] = [MEMORY[0x1E696AD98] numberWithInt:{+[GKSConnectivitySettings getAdaptiveLearningState](GKSConnectivitySettings, "getAdaptiveLearningState")}];
  v54[1] = *MEMORY[0x1E69866A8];
  v55[1] = [MEMORY[0x1E696AD98] numberWithInt:{+[GKSConnectivitySettings getShortTermHistoryLength](GKSConnectivitySettings, "getShortTermHistoryLength")}];
  v54[2] = *MEMORY[0x1E6986688];
  v55[2] = [MEMORY[0x1E696AD98] numberWithInt:{+[GKSConnectivitySettings getLongTermHistoryLength](GKSConnectivitySettings, "getLongTermHistoryLength")}];
  v54[3] = *MEMORY[0x1E6986660];
  v32 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdaptiveLearningA];
  v55[3] = [v32 numberWithDouble:?];
  v54[4] = *MEMORY[0x1E6986670];
  v33 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdjustmentFactorA];
  v55[4] = [v33 numberWithDouble:?];
  v54[5] = *MEMORY[0x1E69866B0];
  v34 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getShortTermValueWeightA];
  v55[5] = [v34 numberWithDouble:?];
  v54[6] = *MEMORY[0x1E6986690];
  v35 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getLongTermValueWeightA];
  v55[6] = [v35 numberWithDouble:?];
  v54[7] = *MEMORY[0x1E6986668];
  v36 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdaptiveLearningB];
  v55[7] = [v36 numberWithDouble:?];
  v54[8] = *MEMORY[0x1E6986678];
  v37 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdjustmentFactorB];
  v55[8] = [v37 numberWithDouble:?];
  v54[9] = *MEMORY[0x1E69866B8];
  v38 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getShortTermValueWeightB];
  v55[9] = [v38 numberWithDouble:?];
  v54[10] = *MEMORY[0x1E6986698];
  v39 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getLongTermValueWeightB];
  v55[10] = [v39 numberWithDouble:?];
  v54[11] = *MEMORY[0x1E6986680];
  v40 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdjustmentFactorC];
  v55[11] = [v40 numberWithDouble:?];
  v54[12] = *MEMORY[0x1E69866C0];
  v41 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getShortTermValueWeightC];
  v55[12] = [v41 numberWithDouble:?];
  v54[13] = *MEMORY[0x1E69866A0];
  v42 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getLongTermValueWeightC];
  v55[13] = [v42 numberWithDouble:?];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:14];
  createAdaptiveLearningForAgent();
  reportingRegisterPeriodicTaskWeak();
  reportingRegisterSystemStats();
  reportingSymptomSetCallback();
  *(v10 + 185) = dispatch_queue_create("com.apple.avconference.vccallsession.timestamp", 0);
  v10[1488] = 0;
  v43 = malloc_type_calloc(1uLL, 0x108uLL, 0x10A0040C891A16EuLL);
  v44 = off_1E85F1F98;
  *(v10 + 187) = v43;
  if (a4 != 1)
  {
    v44 = off_1E85F1FA0;
  }

  v45 = [objc_alloc(*v44) initWithCallID:ID reportingAgent:*(v10 + 174)];
  *(v10 + 189) = v45;
  [v45 setPerfTimings:*(v10 + 84)];
  v46 = [*(v10 + 189) connectionManager];
  *(v10 + 10) = v46;
  [v46 setDuplicationCallback:VCCMDuplicationCallback_0 withContext:v10];
  [*(v10 + 10) setDefaultLinkProbingCapabilityVersionForDeviceRole:{objc_msgSend(v10, "deviceRole")}];
  *(v10 + 377) = a4;
  v47 = objc_alloc_init(VCSwitchManager);
  *(v10 + 14) = v47;
  [(VCSwitchManager *)v47 initializeLocalSwitches];
  [*(v10 + 10) setCellPrimaryInterfaceChangeEnabled:{objc_msgSend(*(v10 + 14), "isLocalSwitchEnabled:", 0x800000)}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v48 = VRTraceErrorLogLevelToCSTR();
    v49 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v50 = [*(v10 + 10) cellPrimaryInterfaceChangeEnabled];
      *buf = 136315906;
      v57 = v48;
      LOWORD(v58) = 2080;
      *(&v58 + 2) = "[VCCallSession initWithDeviceRole:transportType:isGKVoiceChat:reportingHierarchyToken:]";
      WORD5(v58) = 1024;
      HIDWORD(v58) = 575;
      *v59 = 1024;
      *&v59[2] = v50;
      _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch wifiAssistStatusBarEnabled %d", buf, 0x22u);
    }
  }

  [+[VCEffectsManager sharedManager](VCEffectsManager "sharedManager")];
  [v10 registerForReportingNotifications];
  [VCPowerManager_DefaultManager() registerForThermalEvents:v10];
  [v10 reportClientPersistentSettings];
  if ([v10 deviceRole] == 2 || objc_msgSend(v10, "deviceRole") == 4)
  {
    v51 = objc_alloc_init(VCTelephonyInterface);
    *(v10 + 183) = v51;
    [(VCTelephonyInterface *)v51 setDelegate:v10];
    [*(v10 + 183) registerForNotifications];
  }

  *(v10 + 214) = micro();
  return v10;
}

void __88__VCCallSession_initWithDeviceRole_transportType_isGKVoiceChat_reportingHierarchyToken___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (![a3 count] && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __88__VCCallSession_initWithDeviceRole_transportType_isGKVoiceChat_reportingHierarchyToken___block_invoke_cold_1();
    }
  }
}

uint64_t __88__VCCallSession_initWithDeviceRole_transportType_isGKVoiceChat_reportingHierarchyToken___block_invoke_35(uint64_t a1, uint64_t a2)
{
  v4 = +[VCQoSMonitorManager sharedInstance];
  v5 = *(a1 + 32);

  return [(VCQoSMonitorManager *)v4 updateQoSReport:a2 toClientsWithToken:v5];
}

- (void)gatherRealtimeStats:(__CFDictionary *)a3
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    operatingMode = self->operatingMode;
    v6 = operatingMode == 4 || operatingMode == 1;
    v7 = MEMORY[0x1E695E480];
    if (v6)
    {
      [(VCCallSession *)self sessionReceivingBitrate];
      v9 = (v8 / 1000.0);
      [(VCCallSession *)self sessionTransmittingBitrate];
      v11 = (v10 / 1000.0);
      v12 = *v7;
      v13 = CFStringCreateWithFormat(*v7, 0, @"%u", v9);
      CFDictionaryAddValue(a3, @"VRxR", v13);
      CFRelease(v13);
      v14 = CFStringCreateWithFormat(v12, 0, @"%u", v11);
      CFDictionaryAddValue(a3, @"VTxR", v14);
      CFRelease(v14);
      v15 = CFStringCreateWithFormat(v12, 0, @"%u", self->_mediaStallCount);
      CFDictionaryAddValue(a3, @"MSTC", v15);
      CFRelease(v15);
      self->_mediaStallCount = 0;
      v16 = CFStringCreateWithFormat(v12, 0, @"%f", *&self->_mediaStallTotalTime);
      CFDictionaryAddValue(a3, @"MSTT", v16);
      CFRelease(v16);
      self->_mediaStallTotalTime = 0.0;
      v17 = CFStringCreateWithFormat(v12, 0, @"%f", *&self->_maxMediaStallTime);
      CFDictionaryAddValue(a3, @"MMST", v17);
      CFRelease(v17);
      self->_maxMediaStallTime = 0.0;
      v18 = CFStringCreateWithFormat(v12, 0, @"%llu", [(VCConnectionManager *)self->connectionManager mediaExcessiveCellularTxBytes]+ [(VCConnectionManager *)self->connectionManager signalingExcessiveCellularTxBytes]);
      CFDictionaryAddValue(a3, @"CDupTxDb", v18);
      CFRelease(v18);
      v19 = CFStringCreateWithFormat(v12, 0, @"%llu", [(VCConnectionManager *)self->connectionManager mediaExcessiveCellularRxBytes]+ [(VCConnectionManager *)self->connectionManager signalingExcessiveCellularRxBytes]);
      CFDictionaryAddValue(a3, @"CDupRxDb", v19);
      CFRelease(v19);
      v20 = CFStringCreateWithFormat(v12, 0, @"%llu", [(VCConnectionManager *)self->connectionManager budgetConsumingCellularTxBytes]);
      CFDictionaryAddValue(a3, @"CBudgTxDb", v20);
      CFRelease(v20);
      v21 = CFStringCreateWithFormat(v12, 0, @"%llu", [(VCConnectionManager *)self->connectionManager budgetConsumingCellularRxBytes]);
      CFDictionaryAddValue(a3, @"CBudgRxDb", v21);
      CFRelease(v21);
      v22 = CFStringCreateWithFormat(v12, 0, @"%llu", [(VCConnectionManager *)self->connectionManager mediaCellularTxBytes]);
      CFDictionaryAddValue(a3, @"CTxDb", v22);
      CFRelease(v22);
      v23 = CFStringCreateWithFormat(v12, 0, @"%llu", [(VCConnectionManager *)self->connectionManager mediaCellularRxBytes]);
      CFDictionaryAddValue(a3, @"CRxDb", v23);
      CFRelease(v23);
      v24 = CFStringCreateWithFormat(v12, 0, @"%llu", [(VCConnectionManager *)self->connectionManager mediaWifiTxBytes]);
      CFDictionaryAddValue(a3, @"WTxDb", v24);
      CFRelease(v24);
      v25 = CFStringCreateWithFormat(v12, 0, @"%llu", [(VCConnectionManager *)self->connectionManager mediaWifiRxBytes]);
      CFDictionaryAddValue(a3, @"WRxDb", v25);
      CFRelease(v25);
      operatingMode = self->operatingMode;
    }

    if (operatingMode == 1)
    {
      v26 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      VCUtil_AppendFromDictionary(a3, v26);
      CFRelease(v26);
    }

    v37 = 0;
    v36 = 0;
    [VCWiFiUtils getInfraChannelNumber:&v37 is5Ghz:&v36];
    valuePtr = v36;
    v27 = *v7;
    v28 = CFNumberCreate(*v7, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(a3, @"iWiFi5GHz", v28);
    CFRelease(v28);
    v35 = 0;
    v34 = 0;
    [(VCTransportSession *)self->_transportSession getSignalStrengthBars:&v35 + 4 displayBars:&v35 maxDisplayBars:&v34];
    v29 = CFStringCreateWithFormat(v27, 0, @"%d", HIDWORD(v35));
    CFDictionaryAddValue(a3, @"SS", v29);
    CFRelease(v29);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      v32 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [-[__CFDictionary description](a3 "description")];
          valuePtr = 136315906;
          v39 = v30;
          v40 = 2080;
          v41 = "[VCCallSession gatherRealtimeStats:]";
          v42 = 1024;
          v43 = 678;
          v44 = 2080;
          v45 = v33;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d RTCReporting: reporting dictionary %s", &valuePtr, 0x26u);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [VCCallSession gatherRealtimeStats:];
      }
    }
  }
}

- (void)getVideoFeatureStatusSettings:(tagVCReportingClientSettingsPersist *)a3
{
  if (a3)
  {
    v4 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    v5 = [v4 objectForKeyedSubscript:@"VideoEyeContact"];
    if (v5)
    {
      a3->var0 = [v5 intValue];
    }

    v6 = [v4 objectForKeyedSubscript:@"REFENB"];
    if (v6)
    {
      a3->var5 = [v6 intValue];
    }

    v7 = [v4 objectForKeyedSubscript:@"CSFENB"];
    if (v7)
    {
      a3->var2 = [v7 intValue];
    }

    v8 = [v4 objectForKeyedSubscript:@"PMFENB"];
    if (v8)
    {
      a3->var3 = [v8 intValue];
    }

    v9 = [v4 objectForKeyedSubscript:@"SLFENB"];
    if (v9)
    {
      a3->var4 = [v9 intValue];
    }

    v10 = [v4 objectForKeyedSubscript:@"BGRFENB"];
    if (v10)
    {
      a3->var6 = [v10 intValue];
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }
}

- (void)reportClientPersistentSettings
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0uLL;
  v4 = 0;
  [(VCCallSession *)self getVideoFeatureStatusSettings:&v3];
  BYTE2(v4) = self->detectInactiveAudioFramesAACELD;
  reportingSetReportingClientPersistentSetting();
}

- (BOOL)isCurrentPayloadTypeValid
{
  audioTransmitter = self->audioTransmitter;
  if (audioTransmitter)
  {
    LOBYTE(audioTransmitter) = [(VCAudioPayloadConfig *)[(VCAudioTransmitter *)audioTransmitter currentAudioPayloadConfig] payload]!= 128;
  }

  return audioTransmitter;
}

- (void)setOperatingMode:(int)a3
{
  v3 = *&a3;
  v22[2] = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self lock];
  if (self->operatingMode != v3)
  {
    self->operatingMode = v3;
    [(VCAudioTransmitter *)self->audioTransmitter setOperatingMode:v3];
    v21[0] = @"Mode";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->operatingMode];
    v21[1] = @"IsWalkieTalkieMode";
    v22[0] = v5;
    v22[1] = [MEMORY[0x1E696AD98] numberWithInt:self->operatingMode == 7];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [(VCCallSession *)self reportingAgent];
    reportingGenericEvent();
    if (self->state != 1)
    {
LABEL_28:
      [(VCCallSession *)self unlock];
      return;
    }

    v6 = [(VCCallSession *)self evaluateEnableRRx:0];
    operatingMode = self->operatingMode;
    v9 = operatingMode == 2 || operatingMode == 7;
    [(VCConnectionManager *)self->connectionManager setIsAudioOnly:v9];
    hAFRC = self->hAFRC;
    if (v3 == 2)
    {
      AFRCUpdateOperatingMode(hAFRC, 1, v6, 0);
      [(VCCallSession *)self configureRateController];
LABEL_21:
      v13 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:[(VCConnectionManager *)self->connectionManager getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:1]];
      v14 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:[(VCConnectionManager *)self->connectionManager getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:0]];
      if (v13 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      AFRCSetTxCap(self->hAFRC, 1000 * v15);
      videoQueue = self->videoQueue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __34__VCCallSession_setOperatingMode___block_invoke_145;
      v19[3] = &unk_1E85F3778;
      v19[4] = self;
      v17 = v19;
      goto LABEL_27;
    }

    AFRCUpdateOperatingMode(hAFRC, self->operatingMode == 7, v6, v3 == 4);
    [(VCCallSession *)self configureRateController];
    if (v3 == 4)
    {
      v12 = 2;
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_21;
      }

      v11 = VCConnectionManager_CopyPrimaryConnection(self->connectionManager);
      if ([v11 isWifiToWifi])
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    [(VCCallSession *)self resetVideoRulesForInterface:v12 videoReportingDictionary:0];
    videoQueue = self->videoQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__VCCallSession_setOperatingMode___block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = self;
    v17 = block;
LABEL_27:
    dispatch_async(videoQueue, v17);
    v18 = +[VCAudioSession sharedVoiceChatInstance];
    [v18 setAudioSessionMode:*MEMORY[0x1E69AF988]];
    goto LABEL_28;
  }

  [(VCCallSession *)self unlock];
}

void __34__VCCallSession_setOperatingMode___block_invoke(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  [*(a1 + 32) stopVideoSend:0 error:v2];
  [*(a1 + 32) startVideoSend:0 error:v2];
  if (v2[0] && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __34__VCCallSession_setOperatingMode___block_invoke_cold_1();
    }
  }
}

void __34__VCCallSession_setOperatingMode___block_invoke_145(uint64_t a1)
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  [*(a1 + 32) stopVideoSend:0 error:v1];
  if (v1[0] && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __34__VCCallSession_setOperatingMode___block_invoke_145_cold_1();
    }
  }
}

- (void)configureRateController
{
  if (self->_rateController)
  {
    IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
    v4 = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 0);
    v5 = [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1];
    v6 = [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0];
    v7 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
    v8 = VCBitrateArbiter_ModeFromOperatingMode(self->operatingMode);
    v9 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v7 forLocalInterface:1 arbiterMode:v8 encodeRule:self->_currentEncodeRule];
    v10 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v7 forLocalInterface:0 arbiterMode:v8 encodeRule:self->_currentEncodeRule];
    if (v7)
    {
      CFRelease(v7);
    }

    if (!v10)
    {
      operatingMode = self->operatingMode;
      if (operatingMode == 7 || operatingMode == 2)
      {
        v10 = 40;
      }

      else
      {
        v10 = 100;
      }
    }

    if (v9 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    callSessionBitrate = self->callSessionBitrate;
    if (v13 >= callSessionBitrate)
    {
      v15 = callSessionBitrate;
    }

    else
    {
      v15 = v13;
    }

    LOBYTE(v16) = [AVCRateController rateControlTrafficTypeForScreen:0 isPersona:0];
    [(AVCRateController *)self->_rateController configureWithOperatingMode:self->operatingMode isLocalCellular:IsInterfaceOnCellularForActiveConnectionWithQuality localCellTech:v5 isRemoteCellular:v4 remoteCellTech:v6 bitrateCapKbps:v15 trafficType:v16 featureFlags:?];
  }
}

- (void)startAWDStats
{
  v11 = *MEMORY[0x1E69E9840];
  self->awdCallNonce = hwrandom();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCCallSession startAWDStats]";
      v9 = 1024;
      v10 = 863;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d startAWDStats", &v5, 0x1Cu);
    }
  }

  [(VCCallSession *)self isCaller];
  time(0);
  reportingAWDCallStart();
}

- (void)setUseRateControl:(BOOL)a3
{
  self->useRateControl = a3;
  v4 = [+[VCDefaults sharedInstance](VCDefaults rateControllerType];
  if (v4 == 3)
  {
    v5 = 0;
  }

  else if (v4 == 1)
  {
    v5 = 2;
  }

  else if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = +[GKSConnectivitySettings getRateControllerType];
  }

  useRateControl = self->useRateControl;
  v7 = v5 < 2 && self->useRateControl;
  self->useVCRC = v7;
  if ((v5 & 0xFFFFFFFD) != 0)
  {
    useRateControl = 0;
  }

  self->useAFRC = useRateControl;
}

- (void)updateVideoQualityStatusWithTime:(double)a3 isRemote:(BOOL)a4
{
  v7 = *MEMORY[0x1E69E9840];
  videoQueue = self->videoQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__VCCallSession_updateVideoQualityStatusWithTime_isRemote___block_invoke;
  v5[3] = &unk_1E85F4180;
  v6 = a4;
  v5[4] = self;
  *&v5[5] = a3;
  dispatch_async(videoQueue, v5);
}

void __59__VCCallSession_updateVideoQualityStatusWithTime_isRemote___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 24;
  if (*(a1 + 48))
  {
    v3 = 32;
  }

  v4 = *(v2 + v3);
  if ([v4 updateWithLastDecodedFrameTime:*(v2 + 640) time:*(a1 + 40)])
  {
    [*(a1 + 32) reportImmediateWRMMetric:0 value:{objc_msgSend(v4, "isVideoQualityDegraded")}];
    [v4 isVideoQualityDegraded];
    reportingVideoPaused();
    [*(*(a1 + 32) + 8) session:*(a1 + 32) withCallID:objc_msgSend(*(*(a1 + 32) + 24) videoIsDegraded:"callID") isRemote:{objc_msgSend(v4, "isVideoQualityDegraded"), *(a1 + 48)}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 640);
        v9 = 136316162;
        v10 = v5;
        v11 = 2080;
        v12 = "[VCCallSession updateVideoQualityStatusWithTime:isRemote:]_block_invoke";
        v13 = 1024;
        v14 = 928;
        v15 = 2048;
        v16 = v7;
        v17 = 1024;
        v18 = [v4 isVideoQualityDegraded];
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d updateWithLastDecodedFrameTime returned YES. lastDecodedFrametime=%f isVideoQualityDegraded=%d", &v9, 0x2Cu);
      }
    }
  }

  if (*(a1 + 48) == 1 && [v4 isVideoQualityNearDegraded])
  {
    v8 = *(a1 + 32);
    if (*(v8 + 1545) == 1)
    {
      *(v8 + 1545) = 0;
      VCConnectionManager_ProcessWRMNotification(*(*(a1 + 32) + 80), (*(a1 + 32) + 1552));
    }
  }
}

- (BOOL)isBetterForSIPInviteWithSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3 thanSession:(id)a4
{
  if (self->_sipState == 6)
  {
    v6 = [(VCConnectionManager *)[(VCCallSession *)self connectionManager] shouldAcceptDataFromSourceDestinationInfo:a3];
    if (v6)
    {
      if (a4)
      {
        v7 = [(VCCallInfo *)self->localCallInfo callID];
        LOBYTE(v6) = v7 > [a4 callID];
      }

      else
      {
        LOBYTE(v6) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)evaluateEnableRRx:(int *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = CFPreferencesCopyAppValue(@"enableBBNote", @"com.apple.VideoConference");
  if (v5)
  {
    v6 = v5;
    v7 = CFEqual(v5, *MEMORY[0x1E695E4C0]);
    v8 = v7 == 0;
    if (v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315650;
          v22 = v9;
          v23 = 2080;
          v24 = "[VCCallSession evaluateEnableRRx:]";
          v25 = 1024;
          v26 = 969;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Found enableBBNote NO. Disable baseband notification", &v21, 0x1Cu);
        }
      }
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 1;
  }

  v11 = v8 & VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
  if (v11 == 1 && !NetworkUtils_IsLTEOrNewer([(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1]))
  {
    v14 = 0;
  }

  else
  {
    operatingMode = self->operatingMode;
    v14 = operatingMode != 2 && operatingMode != 7;
  }

  v15 = CFPreferencesCopyAppValue(@"enableRRx", @"com.apple.VideoConference");
  if (v15)
  {
    v16 = v15;
    v17 = CFEqual(v15, *MEMORY[0x1E695E4D0]);
    v14 = v17 != 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315906;
        v22 = v18;
        v23 = 2080;
        v24 = "[VCCallSession evaluateEnableRRx:]";
        v25 = 1024;
        v26 = 983;
        v27 = 1024;
        v28 = v17 != 0;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Found enableRRx %d for AFRC.", &v21, 0x22u);
      }
    }

    CFRelease(v16);
  }

  if (a3)
  {
    *a3 = v11;
  }

  return v14;
}

- (void)updateMaxPktLength
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(VCConnectionManager *)self->connectionManager isConnectedOnIPv6ForActiveConnectionWithQuality:1];
  if (v3)
  {
    v4 = 1280;
  }

  else
  {
    v4 = 1450;
  }

  IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
  if (IsInterfaceOnCellularForActiveConnectionWithQuality)
  {
    maxPacketLength = [(VCConnectionManager *)self->connectionManager getCellularMTUForActiveConnectionWithQuality:1];
    if (!maxPacketLength)
    {
      maxPacketLength = self->maxPacketLength;
    }

    v7 = maxPacketLength;
    if (maxPacketLength >= v4)
    {
      v7 = v4;
    }

    v8 = maxPacketLength;
    if (maxPacketLength)
    {
      LOWORD(v4) = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  if ([(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0])
  {
    v9 = v4;
    if (v4 >= 0x583u)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        LOWORD(v4) = 1410;
      }

      else
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        LOWORD(v4) = 1410;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136316418;
          v16 = v10;
          v17 = 2080;
          v18 = "[VCCallSession updateMaxPktLength]";
          v19 = 1024;
          v20 = 1040;
          v21 = 2080;
          *v22 = CelltechToStr();
          *&v22[8] = 1024;
          *v23 = v9;
          *&v23[4] = 1024;
          v24[0] = 1410;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d \t\t\t\t VCCallSession:UpdateMTU remote is %s. Lowering local MTU: %d -> %d ", &v15, 0x32u);
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() > 5)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->maxPacketLength;
      v15 = 136316674;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCCallSession updateMaxPktLength]";
      v19 = 1024;
      v20 = 1045;
      v21 = 1024;
      *v22 = v14;
      *&v22[4] = 1024;
      *&v22[6] = v4;
      *v23 = 1024;
      *&v23[2] = IsInterfaceOnCellularForActiveConnectionWithQuality;
      LOWORD(v24[0]) = 1024;
      *(v24 + 2) = v8;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession:UpdateMTU MTU: %d -> %d Cellular: %d/%d ", &v15, 0x34u);
    }
  }

  if (self->maxPacketLength != v4)
  {
    self->maxPacketLength = v4;
    RTPUpdateIsIPv6(self->rtpVideo, v3);
    RTPUpdateIsIPv6(self->rtpHandle, v3);
    VideoTransmitter_UpdateMTU(self->hVideoTransmitter, self->maxPacketLength, v3);
    [(VCSecureDataChannel *)self->secureDataChannel setMaxUDPPayloadSize:VCMaxUDPPayloadSize(self->maxPacketLength, v3)];
  }
}

- (void)reportHandoverResultsWithDictionary:(id)a3 localBitrateCap:(int)a4 remoteBitrateCap:(int)a5
{
  if ([a3 objectForKeyedSubscript:@"captureRule"])
  {
    v9 = [a3 objectForKeyedSubscript:@"captureRule"];
  }

  else
  {
    v9 = @"NoRule";
  }

  if ([a3 objectForKeyedSubscript:@"encodeRule"])
  {
    v10 = [a3 objectForKeyedSubscript:@"encodeRule"];
  }

  else
  {
    v10 = @"NoRule";
  }

  reportingAgent = self->reportingAgent;
  videoPayload_low = LODWORD(self->videoPayload);
  v13 = [(__CFString *)v9 UTF8String];
  v14 = [(__CFString *)v10 UTF8String];

  MEMORY[0x1EEDE9808](reportingAgent, videoPayload_low, v13, v14, (1000 * a4), (1000 * a5));
}

- (void)handleCellTechChange:(int)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(VCCallSession *)self isCallOngoing])
  {
    v5 = [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1];
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v6;
        v14 = 2080;
        v15 = "[VCCallSession handleCellTechChange:]";
        v16 = 1024;
        v17 = 1078;
        v18 = 2080;
        v19 = CelltechToStr();
        v20 = 2080;
        v21 = CelltechToStr();
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: handleCellTechChange (%s to %s) ", buf, 0x30u);
      }
    }

    cellTechQueue = self->cellTechQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__VCCallSession_handleCellTechChange___block_invoke;
    v9[3] = &unk_1E85F40E0;
    v9[4] = self;
    v10 = a3;
    v11 = v5;
    dispatch_async(cellTechQueue, v9);
  }
}

void __38__VCCallSession_handleCellTechChange___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 80) getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:1];
  v3 = v2;
  if (v2 == -1 || v2 == 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v18 = v5;
        v19 = 2080;
        v20 = "[VCCallSession handleCellTechChange:]_block_invoke";
        v21 = 1024;
        v22 = 1208;
        v23 = 1024;
        v24 = v3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: Local cell tech change ignored, current connection type %d", buf, 0x22u);
      }
    }
  }

  else
  {
    GetConnectionTypeFromCellTech();
    if (IsConnectionDowngrading())
    {
      v8 = 0;
    }

    else
    {
      v8 = 20000000000;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 1160);
    if (!v10 || (dispatch_source_cancel(v10), v9 = *(a1 + 32), (v11 = *(v9 + 1160)) == 0) || (dispatch_release(v11), *(*(a1 + 32) + 1160) = 0, v9 = *(a1 + 32), !*(v9 + 1160)))
    {
      *(*(a1 + 32) + 1160) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v9 + 1152));
      v12 = *(*(a1 + 32) + 1160);
      v13 = dispatch_time(0, v8);
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
      v14 = *(a1 + 32);
      v15 = *(v14 + 1160);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __38__VCCallSession_handleCellTechChange___block_invoke_2;
      v16[3] = &unk_1E85F40E0;
      v16[5] = *(a1 + 40);
      v16[4] = v14;
      dispatch_source_set_event_handler(v15, v16);
      dispatch_resume(*(*(a1 + 32) + 1160));
    }
  }
}

void __38__VCCallSession_handleCellTechChange___block_invoke_2(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = v1 <= 9;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && v1 != *(a1 + 44))
  {
    [*(*(a1 + 32) + 80) updateCellularTech:v1 forLocalInterface:1];
    IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(*(*(a1 + 32) + 80), 1, 1);
    v6 = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(*(*(a1 + 32) + 80), 1, 0);
    v7 = [*(*(a1 + 32) + 80) getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0];
    VideoTransmitter_SetCellTech(*(*(a1 + 32) + 1256), IsInterfaceOnCellularForActiveConnectionWithQuality, *(a1 + 40), v6, v7);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = VCConnectionManager_CopyPrimaryConnection(*(*(a1 + 32) + 80));
    v10 = [v9 isWifiToWifi];
    if (v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    [*(a1 + 32) resetVideoRulesForInterface:v11 videoReportingDictionary:v8];
    [*(*(a1 + 32) + 1232) setUseWiFiTiers:v10];
    v12 = VCConnectionManager_CopyConnectionForQuality(*(*(a1 + 32) + 80), 1);
    v13 = [*(*(a1 + 32) + 1176) maxAllowedBitrateForVCConnection:v12 forLocalInterface:1 arbiterMode:VCBitrateArbiter_ModeFromOperatingMode(*(*(a1 + 32) + 1420)) encodeRule:*(*(a1 + 32) + 176)];
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      if ([*(*(a1 + 32) + 32) supportsDynamicMaxBitrate])
      {
        v34 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v13];
        v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(a1 + 40)];
        v15 = v8;
        v16 = v7;
        v17 = v6;
        v18 = IsInterfaceOnCellularForActiveConnectionWithQuality;
        v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v14, @"VCCellTechKey", v34, @"VCMaxBitrateKey", 0}];
        v20 = [*(*(a1 + 32) + 1120) newPackedMessageFromDictionary:v19];
        [*(*(a1 + 32) + 1120) sendMessage:v20 withTopic:@"VCCellTechChangeTopic"];

        IsInterfaceOnCellularForActiveConnectionWithQuality = v18;
        v6 = v17;
        v7 = v16;
        v8 = v15;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v36 = v21;
            v37 = 2080;
            v38 = "[VCCallSession handleCellTechChange:]_block_invoke";
            v39 = 1024;
            v40 = 1155;
            v41 = 1024;
            LODWORD(v42) = v13;
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Remote is legacy device: setting local bandwidth estimation cap: %d ", buf, 0x22u);
          }
        }

        AFRCSetBWECap(*(*(a1 + 32) + 344), 1000 * v13);
        [*(*(a1 + 32) + 352) setEstimatedBandwidthCap:(1000 * v13)];
      }

      AFRCUpdateCellTech(*(*(a1 + 32) + 344), IsInterfaceOnCellularForActiveConnectionWithQuality, *(a1 + 40), v6, v7, [*(a1 + 32) evaluateEnableRRx:0], 0);
      v23 = *(a1 + 32);
      v24 = *(v23 + 1148);
      if (v13 <= [*(v23 + 32) maxBandwidth])
      {
        v13 = v13;
      }

      else
      {
        v13 = v24;
      }

      [*(a1 + 32) reportHandoverResultsWithDictionary:v8 localBitrateCap:v13 remoteBitrateCap:{objc_msgSend(*(*(a1 + 32) + 32), "maxBandwidth")}];
      VideoTransmitter_SetBitrate(*(*(a1 + 32) + 1256), 1000 * v13);
      *(*(a1 + 32) + 1148) = v13;
      v25 = *(a1 + 32);
      v26 = v25[355];
      if (v26 == 7 || v26 == 2)
      {
        AFRCSetTxCap(*(*(a1 + 32) + 344), [v25 currentAudioCap]);
      }

      LOBYTE(v33) = [AVCRateController rateControlTrafficTypeForScreen:0 isPersona:0];
      [*(*(a1 + 32) + 352) configureWithOperatingMode:*(*(a1 + 32) + 1420) isLocalCellular:IsInterfaceOnCellularForActiveConnectionWithQuality localCellTech:*(a1 + 40) isRemoteCellular:v6 remoteCellTech:v7 bitrateCapKbps:v13 trafficType:v33 featureFlags:?];
      RTPSetBasebandCongestionDetector(*(*(a1 + 32) + 48), [*(*(a1 + 32) + 352) basebandCongestionDetector]);
      v27 = *(a1 + 32);
      if (!*(v27 + 352))
      {
        if (*v2)
        {
          IsLTEOrNewer = NetworkUtils_IsLTEOrNewer(*v2);
          v27 = *(a1 + 32);
        }

        else
        {
          IsLTEOrNewer = 1;
        }

        [*(v27 + 360) setIsSenderProbingEnabled:IsLTEOrNewer];
      }

      v29 = CelltechToStr();
      reportingLog();
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v32 = [*(*(a1 + 32) + 32) maxBandwidth];
          *buf = 136316418;
          v36 = v30;
          v37 = 2080;
          v38 = "[VCCallSession handleCellTechChange:]_block_invoke";
          v39 = 1024;
          v40 = 1201;
          v41 = 2080;
          v42 = v29;
          v43 = 1024;
          v44 = v13;
          v45 = 1024;
          v46 = v32;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: Local CellTech has changed %s, max bitrate %u, max remote bitrate %u", buf, 0x32u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __38__VCCallSession_handleCellTechChange___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)handleCellularMTUChanged:(unsigned __int16)a3
{
  v6 = *MEMORY[0x1E69E9840];
  cellTechQueue = self->cellTechQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCCallSession_handleCellularMTUChanged___block_invoke;
  block[3] = &unk_1E85F41F8;
  block[4] = self;
  v5 = a3;
  dispatch_async(cellTechQueue, block);
}

uint64_t __42__VCCallSession_handleCellularMTUChanged___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) updateCellularMTU:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateMaxPktLength];
}

- (void)checkAndReportThermalIncreaseAudioOnly:(int)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  operatingMode = self->operatingMode;
  v5 = operatingMode != 2 && operatingMode != 7;
  if (a3)
  {
    if (!v5)
    {
      v7 = @"SymptomReporterOptionalKeyThermalPressureLevel";
      v8[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      [(VCCallSession *)self reportingAgent];
      reportingSymptom();
    }
  }
}

- (void)thermalLevelDidChange:(int)a3
{
  v3 = *&a3;
  [(VCCallSession *)self reportingAgent];
  micro();
  reportingThermal();
  [(VCCallSession *)self checkAndReportThermalIncreaseAudioOnly:v3];
  hVideoTransmitter = self->hVideoTransmitter;

  VideoTransmitter_SetThermalLevel(hVideoTransmitter, v3);
}

- (void)remoteCellTechStateUpdate:(int)a3 maxRemoteBitrate:(unsigned int)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(VCCallSession *)self isCallOngoing])
  {
    cellTechQueue = self->cellTechQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__VCCallSession_remoteCellTechStateUpdate_maxRemoteBitrate___block_invoke;
    block[3] = &unk_1E85F40E0;
    block[4] = self;
    v9 = a3;
    v10 = a4;
    dispatch_async(cellTechQueue, block);
  }
}

void __60__VCCallSession_remoteCellTechStateUpdate_maxRemoteBitrate___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = CelltechToStr();
  IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(*(*(a1 + 32) + 80), 1, 1);
  v4 = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(*(*(a1 + 32) + 80), 1, 0);
  v5 = [*(*(a1 + 32) + 80) getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1];
  v6 = [*(*(a1 + 32) + 80) getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0];
  v7 = *(a1 + 40);
  if (v7 && (v7 != v6 || [*(*(a1 + 32) + 32) maxBandwidth] != *(a1 + 44)))
  {
    AFRCUpdateCellTech(*(*(a1 + 32) + 344), IsInterfaceOnCellularForActiveConnectionWithQuality, v5, v4, *(a1 + 40), [*(a1 + 32) evaluateEnableRRx:0], 0);
    reportingLog();
  }

  [*(*(a1 + 32) + 32) setMaxBandwidth:*(a1 + 44)];
  [*(*(a1 + 32) + 32) setCellBandwidth:*(a1 + 44)];
  [*(*(a1 + 32) + 80) updateCellularTech:*(a1 + 40) forLocalInterface:0];
  VideoTransmitter_SetCellTech(*(*(a1 + 32) + 1256), IsInterfaceOnCellularForActiveConnectionWithQuality, v5, v4, *(a1 + 40));
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = VCConnectionManager_CopyPrimaryConnection(*(*(a1 + 32) + 80));
  v10 = [v9 isWifiToWifi];
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  [*(a1 + 32) resetVideoRulesForInterface:v11 videoReportingDictionary:v8];
  [*(*(a1 + 32) + 1232) setUseWiFiTiers:v10];
  v12 = VCConnectionManager_CopyConnectionForQuality(*(*(a1 + 32) + 80), 1);
  v13 = [*(*(a1 + 32) + 1176) maxAllowedBitrateForVCConnection:v12 forLocalInterface:1 arbiterMode:VCBitrateArbiter_ModeFromOperatingMode(*(*(a1 + 32) + 1420)) encodeRule:*(*(a1 + 32) + 176)];
  if (v12)
  {
    CFRelease(v12);
  }

  v14 = *(a1 + 44);
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  [*(a1 + 32) reportHandoverResultsWithDictionary:v8 localBitrateCap:v15 remoteBitrateCap:?];
  VideoTransmitter_SetBitrate(*(*(a1 + 32) + 1256), 1000 * v15);
  *(*(a1 + 32) + 1148) = v15;
  v16 = *(a1 + 32);
  v17 = v16[355];
  if (v17 == 7 || v17 == 2)
  {
    AFRCSetTxCap(*(*(a1 + 32) + 344), [v16 currentAudioCap]);
  }

  LOBYTE(v21) = [AVCRateController rateControlTrafficTypeForScreen:0 isPersona:0];
  [*(*(a1 + 32) + 352) configureWithOperatingMode:*(*(a1 + 32) + 1420) isLocalCellular:IsInterfaceOnCellularForActiveConnectionWithQuality localCellTech:v5 isRemoteCellular:v4 remoteCellTech:*(a1 + 40) bitrateCapKbps:v15 trafficType:v21 featureFlags:?];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 44);
      *buf = 136316418;
      v23 = v18;
      v24 = 2080;
      v25 = "[VCCallSession remoteCellTechStateUpdate:maxRemoteBitrate:]_block_invoke";
      v26 = 1024;
      v27 = 1303;
      v28 = 2080;
      v29 = v2;
      v30 = 1024;
      v31 = v15;
      v32 = 1024;
      v33 = v20;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: Remote CellTech has changed %s, max bitrate %u, max remote bitrate %u", buf, 0x32u);
    }
  }
}

- (id)getFeatureListStringForPayload:(int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->featureListStringDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *&a3)), "objectForKey:", @"matchedFeatureListString"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v7 = [objc_msgSend(v4 "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      videoPayload = self->videoPayload;
      v10 = 136316162;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCCallSession getFeatureListStringForPayload:]";
      v14 = 1024;
      v15 = 1309;
      v16 = 2080;
      v17 = v7;
      v18 = 2048;
      v19 = videoPayload;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: transmitter updated feature list string to %s, for payload: %ld", &v10, 0x30u);
    }
  }

  return v4;
}

- (int)applyFeatureListStringForPayload:(int)a3
{
  v3 = *&a3;
  v49 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v46 = v5;
  v47 = v5;
  memset(v44, 170, sizeof(v44));
  v42 = -1431655766;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->featureListStringDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:")), "objectForKey:", @"matchedFeatureListString"}];
  v7 = [-[NSMutableDictionary objectForKeyedSubscript:](self->featureListStringDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v3)), "objectForKey:", @"localFeatureListString"}];
  v8 = [-[NSMutableDictionary objectForKeyedSubscript:](self->featureListStringDict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v3)), "objectForKey:", @"remoteFeatureListString"}];
  if (!v6)
  {
    v11 = -2146369521;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession applyFeatureListStringForPayload:];
      }
    }

    return v11;
  }

  v9 = v8;
  self->remoteSupportsVisibleRect = +[VCVideoFeatureListStringHelper findFeatureString:value:valueLength:withPrefix:](VCVideoFeatureListStringHelper, "findFeatureString:value:valueLength:withPrefix:", [v6 UTF8String], 0, 0, "CR");
  self->canLocalResizePIP = +[VCVideoFeatureListStringHelper findFeatureString:value:valueLength:withPrefix:](VCVideoFeatureListStringHelper, "findFeatureString:value:valueLength:withPrefix:", [v7 UTF8String], 0, 0, "PR");
  if (!+[VCVideoFeatureListStringHelper findFeatureString:value:valueLength:withPrefix:](VCVideoFeatureListStringHelper, "findFeatureString:value:valueLength:withPrefix:", [v6 UTF8String], v46, 32, "AR") || sscanf(v46, "%d/%d,%d/%d", &v44[16], &v44[12], &v44[8], &v44[4]) != 4)
  {
    *&v44[16] = 3;
    *&v44[4] = 3;
    *&v44[8] = 0x200000002;
    goto LABEL_7;
  }

  if (!+[VCVideoFeatureListStringHelper findFeatureString:value:valueLength:withPrefix:](VCVideoFeatureListStringHelper, "findFeatureString:value:valueLength:withPrefix:", [v9 UTF8String], 0, 0, "PR"))
  {
LABEL_7:
    self->canRemoteResizePIP = 0;
    goto LABEL_8;
  }

  self->canRemoteResizePIP = 1;
LABEL_8:
  if (+[VCVideoFeatureListStringHelper findFeatureString:value:valueLength:withPrefix:](VCVideoFeatureListStringHelper, "findFeatureString:value:valueLength:withPrefix:", [v6 UTF8String], v46, 32, "XR"))
  {
    if (sscanf(v46, "%d/%d,%d/%d", v44, &v43 + 4, &v43, &v42) != 4)
    {
      *v44 = *&v44[16];
      v42 = *&v44[4];
      v43 = *&v44[8];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
    *v44 = *&v44[16];
    v42 = *&v44[4];
    v43 = *&v44[8];
  }

  self->remoteSupportsExpectedAspectRatio = v10;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (self->canRemoteResizePIP)
      {
        v14 = "";
      }

      else
      {
        v14 = "No ";
      }

      *buf = 136317954;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "[VCCallSession applyFeatureListStringForPayload:]";
      *&buf[22] = 1024;
      *&buf[24] = 1420;
      *&buf[28] = 1024;
      *&buf[30] = *&v44[16];
      *&buf[34] = 1024;
      *&buf[36] = *&v44[12];
      *&buf[40] = 1024;
      *&buf[42] = *&v44[8];
      *&buf[46] = 1024;
      *&buf[48] = *&v44[4];
      *&buf[52] = 2080;
      *&buf[54] = v14;
      *&buf[62] = 1024;
      *&buf[64] = *v44;
      *&buf[68] = 1024;
      *&buf[70] = HIDWORD(v43);
      *&buf[74] = 1024;
      *&buf[76] = v43;
      *&buf[80] = 1024;
      *&buf[82] = v42;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Setting remote screen aspect ratio numbers %d/%d,%d/%d (%sPR), remote expects to receive %d/%d,%d/%d", buf, 0x56u);
    }
  }

  v15 = *&v44[4];
  self->remoteScreenPortraitAspectRatio.width = *&v44[8];
  self->remoteScreenPortraitAspectRatio.height = v15;
  v16 = *&v44[12];
  self->remoteScreenLandscapeAspectRatio.width = *&v44[16];
  v17 = v43;
  v18 = v42;
  self->remoteScreenLandscapeAspectRatio.height = v16;
  self->remoteExpectedPortraitAspectRatio.width = v17;
  self->remoteExpectedPortraitAspectRatio.height = v18;
  v19 = SHIDWORD(v43);
  self->remoteExpectedLandscapeAspectRatio.width = *v44;
  self->remoteExpectedLandscapeAspectRatio.height = v19;
  if (!self->isGKVoiceChat && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v20 = [(VCCallSession *)self newRemoteScreenAttributesForOrientation:0];
    v21 = [(VCCallSession *)self newRemoteScreenAttributesForOrientation:3];
    [(VCCallSessionDelegate *)self->delegate session:self didChangeRemoteScreenAttributes:v20];
    [(VCCallSessionDelegate *)self->delegate session:self didChangeRemoteScreenAttributes:v21];
  }

  if (!*[v6 UTF8String])
  {
    v34 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_60;
  }

  [v6 UTF8String];
  __lasts = 0xAAAAAAAAAAAAAAAALL;
  memset(buf, 170, 0xC80uLL);
  __strlcpy_chk();
  v22 = strtok_r(buf, ";", &__lasts);
  if (!v22)
  {
    v35 = 0;
    v34 = 0;
    v24 = 0;
    goto LABEL_57;
  }

  v23 = v22;
  v41 = 0;
  v24 = 0;
  v25 = 0;
  v40 = 0;
  v26 = 0;
  do
  {
    v27 = strchr(v23, 58);
    if (!v27)
    {
      goto LABEL_43;
    }

    v28 = v27;
    v29 = atoi(v27 + 1);
    *v28 = 0;
    if (v29 > 0x63)
    {
      goto LABEL_43;
    }

    v30 = v29;
    if (!strcmp(v23, "MVRA") || !strcmp(v23, "VRA"))
    {
      v26 = v30 + 1;
LABEL_43:
      v31 = *v23;
      goto LABEL_44;
    }

    if (!strcmp(v23, "RVRA1") || !strcmp(v23, "RVRA2"))
    {
      v25 = v30 + 1;
      goto LABEL_43;
    }

    if (!strcmp(v23, "UEP"))
    {
      HIDWORD(v41) = v30 + 1;
      goto LABEL_43;
    }

    v31 = *v23;
    if (v31 == 67)
    {
      if (v23[1] == 82)
      {
        v33 = v41;
        if (!v23[2])
        {
          v33 = v30 + 1;
        }

        LODWORD(v41) = v33;
      }

      goto LABEL_43;
    }

    if (v31 == 65)
    {
      if (v23[1] == 83)
      {
        v32 = v40;
        if (!v23[2])
        {
          v32 = v30 + 1;
        }

        v40 = v32;
      }

      goto LABEL_43;
    }

LABEL_44:
    if (v31 == 76 && v23[1] == 70 && !v23[2])
    {
      v24 = 1;
    }

    v23 = strtok_r(0, ";", &__lasts);
  }

  while (v23);
  v34 = HIDWORD(v41) != 0;
  v35 = (v26 | HIDWORD(v41) | v40 | v25 | v41) != 0;
LABEL_57:
  v36 = v24 == 1;
  if (v24)
  {
    v37 = 1;
  }

  else
  {
    v37 = v35;
  }

LABEL_60:
  v38 = [CFPreferencesCopyAppValue(@"useFakeLF" @"enableRRx")];
  v11 = [(VCCallSession *)self Conference_SetBWEstMode:(v36 | v38) & 1 bFakeLargeFrameMode:!v36 & v38];
  if ((v11 & 0x80000000) == 0)
  {
    [(VCCallSession *)self setUseControlByte:v37];
    [(VCCallSession *)self setUseUEP:v34];
  }

  return v11;
}

- (BOOL)chooseVideoPayloadForInterface:(int)a3
{
  v3 = *&a3;
  v42 = *MEMORY[0x1E69E9840];
  if ([(VCCapabilities *)self->caps isDuplexAudioOnly]|| ![(VCCapabilities *)self->caps isVideoEnabled])
  {
    return 0;
  }

  IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
  v6 = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 0);
  v7 = objc_opt_new();
  v8 = [(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation];
  v29 = v6;
  v30 = IsInterfaceOnCellularForActiveConnectionWithQuality;
  if (v8)
  {
    if (v3 == 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    mediaNegotiator = self->_mediaNegotiator;
    if (self->operatingMode == 4)
    {
      v11 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedScreenSettings];
    }

    else
    {
      v11 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedVideoSettings];
    }

    v20 = [(VCMediaNegotiatorResultsVideo *)v11 videoRuleCollections];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = [(VCVideoRuleCollections *)v20 supportedPayloads];
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v39;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v38 + 1) + 8 * i);
          if ([-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](v20 getVideoRulesForTransport:v9 payload:objc_msgSend(v26 encodingType:{"unsignedIntValue"), 1), "count"}])
          {
            [v7 addObject:v26];
          }
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v38 objects:v37 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v13 = [(VCImageAttributeRules *)[(VCCallSession *)self imageAttributeRules] extractDimensionsForInterface:v3 direction:0];
    [v13 count];
    v28[3] = v28;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [v13 allKeys];
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * j);
          [v19 intValue];
          [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v19, "intValue"))}];
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v16);
    }
  }

  v12 = [(VCCallSession *)self chooseVideoPayload:v7 operatingMode:self->operatingMode isLocalOnCellular:v30 isRemoteOnCellular:v29];
  if (!v12)
  {
    v31 = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession chooseVideoPayloadForInterface:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCCallSession chooseVideoPayloadForInterface:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v31, 32002, 223, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 1505], @"Could not find a compatible codec. Participant may switched wireless interface.", @"No matching codec");
    [(VCCallSession *)self disconnect:v31 didRemoteCancel:0];
  }

  return v12;
}

- (id)getVideoRuleForVideoMode:(unint64_t)a3 interface:(int)a4 sessionBitrate:(int *)a5
{
  v6 = *&a4;
  v20 = *MEMORY[0x1E69E9840];
  v18 = -1431655766;
  v19 = -1431655766;
  v17 = -1431655766;
  v9 = [(VCCallSession *)self getVideoSettings:a3 forInterface:*&a4 payload:LODWORD(self->videoPayload) width:&v19 height:&v18 framerate:&v17 bitRate:a5];
  v10 = 192;
  if (self->operatingMode == 4)
  {
    v10 = 200;
  }

  v11 = *(&self->super.isa + v10);
  if (!v9)
  {
    videoPayload = self->videoPayload;
    if (videoPayload == 123)
    {
      v11 = 100;
    }

    else if (videoPayload == 100)
    {
      v11 = 123;
    }

    [(VCCallSession *)self getVideoSettings:a3 forInterface:v6 payload:v11 width:&v19 height:&v18 framerate:&v17 bitRate:a5];
  }

  v13 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-facetime-photos-use-best-videorule" userDefaultKey:@"FaceTimePhotosUseBestVideoRule" defaultValue:MEMORY[0x1E695E118] isDoubleType:{0), "BOOLValue"}];
  if (a3 == 1 && v13)
  {
    [+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera getBestFrameWidth:"getBestFrameWidth:frameHeight:frameRate:" frameHeight:&v19 frameRate:&v18, 0];
  }

  v14 = [VCVideoRule alloc];
  *&v15 = v17;
  return [(VCVideoRule *)v14 initWithFrameWidth:v19 frameHeight:v18 frameRate:v11 payload:v15];
}

- (void)setCurrentEncodeRule:(id)a3
{
  currentEncodeRule = self->_currentEncodeRule;
  if (currentEncodeRule != a3)
  {

    self->_currentEncodeRule = a3;
  }
}

- (void)resetVideoRulesForInterface:(int)a3 videoReportingDictionary:(id)a4
{
  v5 = *&a3;
  v62 = *MEMORY[0x1E69E9840];
  if ([(VCCallSession *)self chooseVideoPayloadForInterface:?])
  {
    v7 = [(VCCallSession *)self getVideoRuleForVideoMode:1 interface:v5 sessionBitrate:0];
    v8 = [(VCCallSession *)self getVideoRuleForVideoMode:2 interface:v5 sessionBitrate:0];
    v9 = [(VCCallSession *)self getFeatureListStringForPayload:LODWORD(self->videoPayload)];
    [(VCCallSession *)self applyFeatureListStringForPayload:LODWORD(self->videoPayload)];
    [(VCCallSession *)self setCurrentEncodeRule:v8];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v7 iWidth];
        v30 = [v7 iHeight];
        [v7 fRate];
        v13 = v12;
        [v7 fPref];
        v15 = v14;
        v29 = [v7 iPayload];
        v28 = [v8 iWidth];
        v16 = [v8 iHeight];
        [v8 fRate];
        v18 = v17;
        [v8 fPref];
        *buf = 136318722;
        v33 = v10;
        v34 = 2080;
        v35 = "[VCCallSession resetVideoRulesForInterface:videoReportingDictionary:]";
        v36 = 1024;
        v37 = 1578;
        v38 = 1024;
        v39 = v31;
        v40 = 1024;
        v41 = v30;
        v42 = 2048;
        v43 = v13;
        v44 = 2048;
        v45 = v15;
        v46 = 1024;
        v47 = v29;
        v48 = 1024;
        v49 = v28;
        v50 = 1024;
        v51 = v16;
        v52 = 2048;
        v53 = v18;
        v54 = 2048;
        v55 = v19;
        v56 = 1024;
        v57 = [v8 iPayload];
        v58 = 2080;
        v59 = [v9 UTF8String];
        v60 = 1024;
        v61 = v5;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: reset video rules to new capture rule = %dx%dx%.1ffps(%.1f, %d), new encode rule = %dx%dx%.1ffps(%.1f, %d), featureListString %s, interface %d", buf, 0x78u);
      }
    }

    [(VCCallSessionDelegate *)self->delegate session:self changeVideoRulesToCaptureRule:v7 encodeRule:v8 featureListString:v9];
    [v8 iWidth];
    [v8 iHeight];
    [v8 fRate];
    reportingVideoProp();
    if (a4)
    {
      if (v7 && v8)
      {
        v20 = MEMORY[0x1E696AEC0];
        v21 = [v7 iWidth];
        v22 = [v7 iHeight];
        [v7 fRate];
        [a4 setObject:objc_msgSend(v20 forKeyedSubscript:{"stringWithFormat:", @"%dx%d@%.1f", v21, v22, v23), @"captureRule"}];
        v24 = MEMORY[0x1E696AEC0];
        v25 = [v8 iWidth];
        v26 = [v8 iHeight];
        [v8 fRate];
        [a4 setObject:objc_msgSend(v24 forKeyedSubscript:{"stringWithFormat:", @"%dx%d@%.1f", v25, v26, v27), @"encodeRule"}];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession resetVideoRulesForInterface:videoReportingDictionary:];
        }
      }
    }
  }
}

- (void)schedulePrimaryConnectionChange:(id)a3 oldConnection:(id)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  connectionChangeQueue = self->connectionChangeQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__VCCallSession_schedulePrimaryConnectionChange_oldConnection___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a3;
  dispatch_async(connectionChangeQueue, v5);
}

void __63__VCCallSession_schedulePrimaryConnectionChange_oldConnection___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v1 = a1[4];
  v3 = *(v1 + 88);
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      v10 = a1[5];
      v9 = a1[6];
      v11 = a1[4];

      [v11 primaryConnectionDidChangeTo:v9 oldConnection:v10];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __63__VCCallSession_schedulePrimaryConnectionChange_oldConnection___block_invoke_cold_1();
      }
    }
  }

  else
  {
    *(v1 + 88) = 1;
    if (!*(*v2 + 96))
    {
      *(*v2 + 96) = a1[5];
      v4 = *(a1[4] + 96);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(*v2 + 96);
          if (v7)
          {
            v8 = [objc_msgSend(v7 "description")];
          }

          else
          {
            v8 = "<nil>";
          }

          v12 = 136315906;
          v13 = v5;
          v14 = 2080;
          v15 = "[VCCallSession schedulePrimaryConnectionChange:oldConnection:]_block_invoke";
          v16 = 1024;
          v17 = 1612;
          v18 = 2080;
          v19 = v8;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: schedule a pending primary connection change, old primary connection: %s", &v12, 0x26u);
        }
      }
    }
  }
}

- (void)handlePendingPrimaryConnectionChange
{
  v3[5] = *MEMORY[0x1E69E9840];
  connectionChangeQueue = self->connectionChangeQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__VCCallSession_handlePendingPrimaryConnectionChange__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(connectionChangeQueue, v3);
}

- (void)primaryConnectionDidChangeTo:(id)a3 oldConnection:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(VCCallSession *)self isCallOngoing])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    IsLocalOnCellular = VCConnection_IsLocalOnCellular(a3);
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    IsRemoteOnCellular = VCConnection_IsRemoteOnCellular(a3);
    v7 = VCConnection_IsLocalOnCellular(a4);
    v8 = VCConnection_IsRemoteOnCellular(a4);
    if ([a4 isWifiToWifi])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    if ([a3 isWifiToWifi])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v23 = v10;
    v11 = v9 != *(v21 + 6);
    v12 = *(v27 + 6);
    if (v7)
    {
      if (!v12)
      {
        [(VCCallSession *)self cleanupWCMClient];
      }

      LOBYTE(v12) = 0;
    }

    else if (v12)
    {
      [(VCCallSession *)self setupWCMClient];
      LOBYTE(v12) = 1;
    }

    cellTechQueue = self->cellTechQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__VCCallSession_primaryConnectionDidChangeTo_oldConnection___block_invoke;
    block[3] = &unk_1E85F70A8;
    v15 = v7;
    v16 = v8;
    v18 = v11;
    v17 = v9;
    block[8] = v24;
    block[9] = &v20;
    block[4] = a3;
    block[5] = self;
    block[6] = a4;
    block[7] = &v26;
    v19 = v12;
    dispatch_async(cellTechQueue, block);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(v24, 8);
    _Block_object_dispose(&v26, 8);
  }
}

uint64_t __60__VCCallSession_primaryConnectionDidChangeTo_oldConnection___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 56) + 8) + 24);
      v5 = *(a1 + 80);
      v6 = *(a1 + 84);
      v7 = *(*(*(a1 + 64) + 8) + 24);
      v8 = *(a1 + 92);
      v9 = *(a1 + 88);
      v10 = *(*(*(a1 + 72) + 8) + 24);
      *buf = 136317442;
      v44 = v2;
      v45 = 2080;
      v46 = "[VCCallSession primaryConnectionDidChangeTo:oldConnection:]_block_invoke";
      v47 = 1024;
      v48 = 1675;
      v49 = 1024;
      v50 = v5;
      v51 = 1024;
      v52 = v4;
      v53 = 1024;
      v54 = v6;
      v55 = 1024;
      v56 = v7;
      v57 = 1024;
      v58 = v8;
      v59 = 1024;
      v60 = v9;
      v61 = 1024;
      v62 = v10;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: local use cellular[%d->%d], remote use cellular[%d->%d], need capture change[%d], interface[%d->%d].", buf, 0x46u);
    }
  }

  v11 = VCConnection_LocalCellTech(*(a1 + 32));
  v12 = VCConnection_RemoteCellTech(*(a1 + 32));
  VideoTransmitter_SetCellTech(*(*(a1 + 40) + 1256), *(*(*(a1 + 56) + 8) + 24), v11, *(*(*(a1 + 64) + 8) + 24), v12);
  v13 = [MEMORY[0x1E695DF90] dictionary];
  if (*(a1 + 92) == 1)
  {
    [*(a1 + 40) resetVideoRulesForInterface:*(*(*(a1 + 72) + 8) + 24) videoReportingDictionary:v13];
  }

  v14 = VCBitrateArbiter_ModeFromOperatingMode(*(*(a1 + 40) + 1420));
  v15 = [*(*(a1 + 40) + 1176) maxAllowedBitrateForVCConnection:*(a1 + 32) forLocalInterface:1 arbiterMode:v14 encodeRule:*(*(a1 + 40) + 176)];
  v16 = [*(*(a1 + 40) + 1176) maxAllowedBitrateForVCConnection:*(a1 + 32) forLocalInterface:0 arbiterMode:v14 encodeRule:*(*(a1 + 40) + 176)];
  v17 = VCConnectionManager_CopyConnectionForQuality(*(*(a1 + 40) + 80), 1);
  v18 = v17;
  if (v17 != *(a1 + 48) && v17 != *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v44 = v19;
        v45 = 2080;
        v46 = "[VCCallSession primaryConnectionDidChangeTo:oldConnection:]_block_invoke";
        v47 = 1024;
        v48 = 1695;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Overwrite bitrate cap and cell related flags as primary and active connections differ in connectionManager", buf, 0x1Cu);
      }
    }

    if ([v18 isWifiToWifi])
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    *(*(*(a1 + 72) + 8) + 24) = v21;
    *(*(*(a1 + 56) + 8) + 24) = VCConnection_IsLocalOnCellular(v18);
    *(*(*(a1 + 64) + 8) + 24) = VCConnection_IsRemoteOnCellular(v18);
    v11 = VCConnection_LocalCellTech(v18);
    v12 = VCConnection_RemoteCellTech(v18);
    v15 = [*(*(a1 + 40) + 1176) maxAllowedBitrateForVCConnection:v18 forLocalInterface:1 arbiterMode:v14 encodeRule:*(*(a1 + 40) + 176)];
    v16 = [*(*(a1 + 40) + 1176) maxAllowedBitrateForVCConnection:v18 forLocalInterface:0 arbiterMode:v14 encodeRule:*(*(a1 + 40) + 176)];
    [*(*(a1 + 40) + 1232) setUseWiFiTiers:*(*(*(a1 + 72) + 8) + 24) == 2];
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    [*(*(a1 + 40) + 32) setMaxBandwidth:v16];
  }

  VCAudioReceiver_UpdateCellTech(*(*(a1 + 40) + 1224), v11, v12);
  if ([*(*(a1 + 40) + 320) isVideoEnabled])
  {
    VideoReceiver_CellTechChanged();
  }

  v22 = [*(a1 + 40) evaluateEnableRRx:0];
  v23 = *(*(*(a1 + 56) + 8) + 24);
  v24 = *(a1 + 80);
  AFRCUpdateCellTech(*(*(a1 + 40) + 344), v23, v11, *(*(*(a1 + 64) + 8) + 24), v12, v22, v23 != v24);
  if (v23 != v24)
  {
    MediaQueue_CleanupTxHistory();
  }

  if (v15 >= v16)
  {
    v25 = v16;
  }

  else
  {
    v25 = v15;
  }

  VideoTransmitter_SetBitrate(*(*(a1 + 40) + 1256), 1000 * v25);
  *(*(a1 + 40) + 1148) = v25;
  v26 = *(a1 + 40);
  v27 = v26[355];
  if (v27 == 7 || v27 == 2)
  {
    AFRCSetTxCap(*(*(a1 + 40) + 344), [v26 currentAudioCap]);
  }

  LOBYTE(v40) = [AVCRateController rateControlTrafficTypeForScreen:0 isPersona:0];
  [*(*(a1 + 40) + 352) configureWithOperatingMode:*(*(a1 + 40) + 1420) isLocalCellular:*(*(*(a1 + 56) + 8) + 24) != 0 localCellTech:v11 isRemoteCellular:*(*(*(a1 + 64) + 8) + 24) != 0 remoteCellTech:v12 bitrateCapKbps:v25 trafficType:v40 featureFlags:?];
  RTPSetBasebandCongestionDetector(*(*(a1 + 40) + 48), [*(*(a1 + 40) + 352) basebandCongestionDetector]);
  v28 = *(a1 + 40);
  if (!*(v28 + 352))
  {
    if (v11)
    {
      IsLTEOrNewer = NetworkUtils_IsLTEOrNewer(v11);
      v28 = *(a1 + 40);
    }

    else
    {
      IsLTEOrNewer = 1;
    }

    [*(v28 + 360) setIsSenderProbingEnabled:IsLTEOrNewer];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 136316674;
      v44 = v30;
      v45 = 2080;
      v46 = "[VCCallSession primaryConnectionDidChangeTo:oldConnection:]_block_invoke";
      v47 = 1024;
      v48 = 1754;
      v49 = 1024;
      v50 = v32;
      v51 = 1024;
      v52 = v25;
      v53 = 1024;
      v54 = v15;
      v55 = 1024;
      v56 = v16;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: handlePrimaryConnChange -- use cellular(%d), new bitrate cap %u, max local bitrate %u, max remote bitrate %u", buf, 0x34u);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v41 = @"LCTCH";
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    reportingGenericEvent();
  }

  [*(a1 + 40) reportHandoverResultsWithDictionary:v13 localBitrateCap:v25 remoteBitrateCap:v16];
  if (*(a1 + 93) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v44 = v33;
        v45 = 2080;
        v46 = "[VCCallSession primaryConnectionDidChangeTo:oldConnection:]_block_invoke";
        v47 = 1024;
        v48 = 1768;
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: sending One-way SIP message to inform peer", buf, 0x1Cu);
      }
    }

    v35 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v15];
    v36 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v11];
    v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v36, @"VCCellTechKey", v35, @"VCMaxBitrateKey", 0}];
    v38 = [*(*(a1 + 40) + 1120) newPackedMessageFromDictionary:v37];
    [*(*(a1 + 40) + 1120) sendMessage:v38 withTopic:@"VCCellTechChangeTopic"];
  }

  [*(a1 + 40) updateCachedConnectionState];
  [*(a1 + 40) updateMaxPktLength];
  return [*(a1 + 40) notifyDelegateActiveConnectionDidChange];
}

- (void)setQualityDelegate:(id)a3
{
  pthread_mutex_lock(&self->qualityDelegateLock);
  self->qualityDelegate = a3;

  pthread_mutex_unlock(&self->qualityDelegateLock);
}

- (int)getAudioTxBitrate
{
  audioTransmitter = self->audioTransmitter;
  if (audioTransmitter)
  {
    return [(VCAudioTransmitter *)audioTransmitter audioTxBitrate];
  }

  else
  {
    return 32000;
  }
}

- (double)networkQuality
{
  if (self->videoPayload == -1)
  {
    v4 = [(VCCallSession *)self getAudioTxBitrate];
    v3 = 5000.0;
  }

  else
  {
    v3 = 68000.0;
    v4 = 292000.0;
  }

  v5.f64[0] = self->bandwidthUpstream + 0.000001 - v3;
  v6 = v4 - v3;
  v5.f64[1] = 1.0 - self->packetLateAndMissingRatio + -0.9;
  v7 = &unk_1DBD49978;
  v8 = vld1q_dup_f64(v7);
  v8.f64[0] = v6;
  v9 = vdivq_f64(v5, v8);
  __asm { FMOV            V1.2D, #1.0 }

  v15 = vcgtq_f64(v9, _Q1);
  v16 = vcltzq_f64(v9);
  v17 = vbslq_s8(vorrq_s8(v16, v15), vbicq_s8(_Q1, vbicq_s8(v16, v15)), v9);
  *&result = *&vmulq_laneq_f64(v17, v17, 1);
  return result;
}

- (void)updateRemoteMediaStallState:(double)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3 - self->lastReceivedPacketTimestamp > self->_remoteMediaStallTimeout && !self->isRemoteMediaStalled)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        lastReceivedPacketTimestamp = self->lastReceivedPacketTimestamp;
        *buf = 136316162;
        v25 = v11;
        v26 = 2080;
        v27 = "[VCCallSession updateRemoteMediaStallState:]";
        v28 = 1024;
        v29 = 1831;
        v30 = 2048;
        v31 = lastReceivedPacketTimestamp;
        v32 = 2048;
        v33 = a3;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: Stalling lastReceivedPacketTime %f currentTime %f", buf, 0x30u);
      }
    }

    reportingLog();
    self->isRemoteMediaStalled = 1;
    self->packetsSinceStall = 0;
    delegateNotificationQueue = self->delegateNotificationQueue;
    block = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __45__VCCallSession_updateRemoteMediaStallState___block_invoke;
    v22 = &unk_1E85F3778;
    v23 = self;
    p_block = &block;
    goto LABEL_13;
  }

  if (self->packetsSinceStall >= 6 && self->isRemoteMediaStalled)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->lastReceivedPacketTimestamp;
        packetsSinceStall = self->packetsSinceStall;
        *buf = 136316418;
        v25 = v5;
        v26 = 2080;
        v27 = "[VCCallSession updateRemoteMediaStallState:]";
        v28 = 1024;
        v29 = 1839;
        v30 = 2048;
        v31 = v7;
        v32 = 2048;
        v33 = a3;
        v34 = 1024;
        v35 = packetsSinceStall;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: Unstalling lastReceivedPacketTime %f currentTime %f packetCount %d", buf, 0x36u);
      }
    }

    reportingLog();
    self->isRemoteMediaStalled = 0;
    delegateNotificationQueue = self->delegateNotificationQueue;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __45__VCCallSession_updateRemoteMediaStallState___block_invoke_226;
    v17 = &unk_1E85F3778;
    v18 = self;
    p_block = &v14;
LABEL_13:
    dispatch_async(delegateNotificationQueue, p_block);
  }

  [(VCCallSession *)self updateRemoteMediaStallStateReporting:a3, v14, v15, v16, v17, v18, block, v20, v21, v22, v23];
}

- (void)updateRemoteMediaStallStateReporting:(double)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 - self->lastReceivedPacketTimestamp <= 0.5)
  {
    if (!self->_isRemoteMediaStalledShort)
    {
      return;
    }
  }

  else if (!self->_isRemoteMediaStalledShort)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        lastReceivedPacketTimestamp = self->lastReceivedPacketTimestamp;
        v13 = 136316162;
        v14 = v5;
        v15 = 2080;
        v16 = "[VCCallSession updateRemoteMediaStallStateReporting:]";
        v17 = 1024;
        v18 = 1853;
        v19 = 2048;
        v20 = lastReceivedPacketTimestamp;
        v21 = 2048;
        v22 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Entering short media stall lastReceivedPacketTime=%f, currentTime=%f", &v13, 0x30u);
      }
    }

    self->_lastMediaStallStartTime = a3;
    self->_isRemoteMediaStalledShort = 1;
    self->packetsSinceShortMediaStall = 0;
    goto LABEL_15;
  }

  if (self->packetsSinceShortMediaStall < 6)
  {
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->lastReceivedPacketTimestamp;
      packetsSinceShortMediaStall = self->packetsSinceShortMediaStall;
      v13 = 136316418;
      v14 = v8;
      v15 = 2080;
      v16 = "[VCCallSession updateRemoteMediaStallStateReporting:]";
      v17 = 1024;
      v18 = 1860;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = a3;
      v23 = 1024;
      v24 = packetsSinceShortMediaStall;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Leaving short media stall lastReceivedPacketTime=%f, currentTime=%f, packetCount=%d", &v13, 0x36u);
    }
  }

  ++self->_mediaStallCount;
  maxMediaStallTime = a3 - self->_lastMediaStallStartTime + 0.5;
  self->_mediaStallTotalTime = self->_mediaStallTotalTime + maxMediaStallTime;
  if (self->_maxMediaStallTime > maxMediaStallTime)
  {
    maxMediaStallTime = self->_maxMediaStallTime;
  }

  self->_maxMediaStallTime = maxMediaStallTime;
  self->_lastMediaStallStartTime = 0.0;
  self->_isRemoteMediaStalledShort = 0;
LABEL_15:
  [(VCCallSession *)self reportImmediateWRMMetric:1 value:?];
}

- (void)updateLastReceivedPacketWithTimestamp:(double)a3 packetType:(int)a4
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->shouldUpdateLastReceivedPacketTimestamp)
  {
    timestampQueue = self->timestampQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke;
    block[3] = &unk_1E85F3908;
    block[4] = self;
    *&block[5] = a3;
    v6 = a4;
    dispatch_async(timestampQueue, block);
  }
}

uint64_t __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) lock];
  v2 = *(a1 + 32);
  if (*(v2 + 593))
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 600);
    if (v3 > v4 && *(v2 + 608) == 1)
    {
      ++*(v2 + 652);
      v2 = *(a1 + 32);
      v4 = *(v2 + 600);
    }

    if (v3 > v4 && *(v2 + 648) == 1)
    {
      ++*(v2 + 656);
      v2 = *(a1 + 32);
      v4 = *(v2 + 600);
    }

    if (v3 > v4)
    {
      *(v2 + 600) = v3;
    }

    v5 = micro();
    v6 = v5;
    v7 = *(a1 + 32);
    if ((*(v7 + 1404) & 1) == 0 && v5 - *(v7 + 600) > *(v7 + 800) * 0.5)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeySessionID", *(*(a1 + 32) + 760));
      CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyPeerID", *(*(a1 + 32) + 1536));
      reportingSymptom();
      *(*(a1 + 32) + 1404) = 1;
      CFRelease(Mutable);
      v7 = *(a1 + 32);
    }

    if (*(v7 + 904) != 1 || v6 - *(v7 + 600) <= *(v7 + 800))
    {
LABEL_20:
      v13 = *(v7 + 688);
      if (v13 == 0.0)
      {
        *(v7 + 736) = v6;
        *(*(a1 + 32) + 728) = v6;
        *(*(a1 + 32) + 688) = v6;
        v7 = *(a1 + 32);
        v13 = *(v7 + 688);
      }

      if (v6 - v13 <= 1.0)
      {
LABEL_46:
        [v7 updateRemoteMediaStallState:v6];
        v22 = *(a1 + 32);
        v23 = v6 - *(v22 + 600);
        v24 = v23 > 1.0;
        if (v23 <= 1.0)
        {
          if (*(v22 + 816))
          {
LABEL_52:
            reportingNoRemoteChanged();
          }
        }

        else
        {
          if (v6 - *(v22 + 792) > 1.0)
          {
            *(v22 + 792) = v6;
            v25 = *(a1 + 32);
            v26 = v6 - *(v25 + 600);
            v27 = *(v25 + 504);
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_235;
            v42[3] = &unk_1E85F40E0;
            v42[4] = v25;
            *&v42[5] = v26;
            dispatch_async(v27, v42);
            v22 = *(a1 + 32);
          }

          if (!*(v22 + 816))
          {
            goto LABEL_52;
          }
        }

        *(*(a1 + 32) + 816) = v24;
        v28 = *(a1 + 32);
        if (*(v28 + 904) != 1)
        {
          return [v28 unlock];
        }

        v29 = v6 - *(v28 + 728);
        v30 = *(v28 + 744);
        v31 = v6 - *(v28 + 736);
        if (v29 <= v30 && v31 <= v30)
        {
          return [v28 unlock];
        }

        if (v29 > v30 && VRTraceGetErrorLogLevelForModule() >= 3 && (v33 = VRTraceErrorLogLevelToCSTR(), v34 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
        {
          if (__66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_cold_1(v33, v34, v31 > v30))
          {
            goto LABEL_62;
          }
        }

        else if (v31 > v30)
        {
LABEL_62:
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_cold_2();
            }
          }
        }

        if ([*(a1 + 32) isCallOngoing])
        {
          global_queue = dispatch_get_global_queue(2, 0);
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_237;
          v41[3] = &unk_1E85F3778;
          v41[4] = *(a1 + 32);
          dispatch_async(global_queue, v41);
        }

        v28 = *(a1 + 32);
        return [v28 unlock];
      }

      if (v6 - *(v7 + 600) > *(v7 + 744) + -3.0)
      {
        *(v7 + 728) = v6;
        *(*(a1 + 32) + 736) = v6;
        v7 = *(a1 + 32);
      }

      v14 = *(v7 + 352);
      if (v14)
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        memset(buf, 0, sizeof(buf));
        VCRateControlGetStatistics([v14 statisticsCollector], 3, buf);
        *(*(a1 + 32) + 680) = *&buf[24] / 100.0;
        *(*(a1 + 32) + 696) = *(*(a1 + 32) + 680) + *(*(a1 + 32) + 696);
        *(*(a1 + 32) + 704) = *(*(a1 + 32) + 704) + 1.0;
        *(*(a1 + 32) + 768) = (*&buf[52] / 0x3E8u);
        v15 = 1;
      }

      else
      {
        *buf = -1431655766;
        v17 = RTPGetAFRCStat(*(v7 + 48), (v7 + 680), 0, buf, 0, 0, 0);
        *(*(a1 + 32) + 768) = vcvtd_n_f64_u32(*buf, 0xAuLL);
        v15 = v17 >= 0;
      }

      [*(a1 + 32) checkAbnormalOWRDAndResetLagReference];
      *(*(a1 + 32) + 688) = v6;
      v18 = *(a1 + 32);
      if (v6 - v18[90] >= 5.0)
      {
        v18[89] = v18[87] / v18[88];
        *(*(a1 + 32) + 696) = 0;
        *(*(a1 + 32) + 704) = 0;
        *(*(a1 + 32) + 720) = v6;
      }

      v19 = *(a1 + 32);
      if (v15)
      {
        if (*(v19 + 993) == 1)
        {
          v20 = *(v19 + 896);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_234;
          block[3] = &unk_1E85F40E0;
          block[4] = v19;
          *&block[5] = v6;
          dispatch_async(v20, block);
          v19 = *(a1 + 32);
        }

        if (*(v19 + 680) < 0.6)
        {
          *(v19 + 728) = v6;
          v19 = *(a1 + 32);
        }

        if (*(v19 + 768) >= 4.5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        *(v19 + 728) = v6;
        v19 = *(a1 + 32);
      }

      *(v19 + 736) = v6;
LABEL_42:
      v21 = *(a1 + 32);
      if (*(v21 + 352))
      {
        *(v21 + 520) = *(v21 + 1408);
      }

      else
      {
        RTPGetAFRCTxInfo(*(v21 + 48), (v21 + 520), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      }

      *(*(a1 + 32) + 780) = VCAudioReceiver_GetPercentPacketsLateAndMissing(*(*(a1 + 32) + 1224));
      [*(a1 + 32) logDetailedNetworkInformation];
      [*(a1 + 32) updateNetworkCheckHint:v6];
      v7 = *(a1 + 32);
      goto LABEL_46;
    }

    v9 = [v7 isCallOngoing];
    v2 = *(a1 + 32);
    if (v9)
    {
      *(v2 + 593) = 0;
      v10 = [*(*(a1 + 32) + 1512) detailedErrorCode];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v37 = *(a1 + 32);
          v36 = *(a1 + 40);
          v38 = *(v37 + 600);
          v39 = *(v37 + 800);
          v40 = *(a1 + 48);
          *buf = 136316930;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "[VCCallSession updateLastReceivedPacketWithTimestamp:packetType:]_block_invoke";
          *&buf[22] = 1024;
          *&buf[24] = 1945;
          *&buf[28] = 2048;
          *&buf[30] = v6;
          *&buf[38] = 2048;
          *&buf[40] = v36;
          *&buf[48] = 2048;
          *&buf[50] = v38;
          *&buf[58] = 2048;
          *&buf[60] = v39;
          *&buf[68] = 1024;
          *&buf[70] = v40;
          _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d Disconnecting due to no remote packet currentTime=%f lastPacketTime=%f lastReceivedPacketTimestamp=%f noRemotePacketsTimeout=%f packetType=%d", buf, 0x4Au);
        }
      }

      VCUtil_GenerateDiagnostics(0, 1, "Disconnecting due to no remote packets.", 1u);
      [*(a1 + 32) disconnectWithNoRemotePackets:v10];
      v7 = *(a1 + 32);
      goto LABEL_20;
    }
  }

  return [v2 unlock];
}

void __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_234(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  [*(*(a1 + 32) + 984) addNewRTT:*(*(a1 + 32) + 768) packetLossRate:*(*(a1 + 32) + 680) timestamp:*(a1 + 40)];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        sig = (*v1)[12].__sig;
        v6 = *&(*v1)[10].__opaque[32];
        v11 = 136316162;
        v12 = v2;
        v13 = 2080;
        v14 = "[VCCallSession updateLastReceivedPacketWithTimestamp:packetType:]_block_invoke";
        v15 = 1024;
        v16 = 2006;
        v17 = 2048;
        v18 = sig;
        v19 = 2048;
        v20 = v6;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d roundTripTime = %f, packetLossRate = %f", &v11, 0x30u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_234_cold_1();
    }
  }

  pthread_mutex_lock(*v1 + 13);
  v7 = *&(*v1)[12].__opaque[48];
  pthread_mutex_unlock(*v1 + 13);
  if ([*&(*v1)[15].__opaque[16] isLinkCongested])
  {
    v8 = 0.5;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [*&(*v1)->__opaque[24] participantID];
  *&v10 = v8;
  [v7 lossRate:v9 forParticipantID:v10];
}

uint64_t __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_237(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 993) & 1) == 0)
  {
    [*(v2 + 1512) reportNetworkConditionsDegraded];
  }

  v5[0] = 0;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 2097];
  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v5, 32020, 202, v3, [MEMORY[0x1E696AEC0] stringWithFormat:@"Network conditions became unusable for %d seconds", *(*(a1 + 32) + 744)], @"Bad network conditions");
  return [*(a1 + 32) disconnect:v5[0] didRemoteCancel:0];
}

- (void)checkAbnormalOWRDAndResetLagReference
{
  OWRD = VCAudioReceiver_GetOWRD(self->audioReceiver);
  if (OWRD > 2.0 && ((roundTripTime = self->roundTripTime, v5 = roundTripTime <= 0.0, v6 = OWRD, v7 = roundTripTime * 5.0, !v5) ? (v8 = v7 < v6) : (v8 = 0), v8))
  {
    abnormalOWRDCount = self->abnormalOWRDCount;
    self->abnormalOWRDCount = abnormalOWRDCount + 1;
    if (abnormalOWRDCount >= 3)
    {
      audioReceiver = self->audioReceiver;

      VCAudioReceiver_ResetLagReference(audioReceiver);
    }
  }

  else
  {
    self->abnormalOWRDCount = 0;
  }
}

- (void)updateLastReceivedAudioTime
{
  LatestAudioTimestamp = VCAudioReceiver_GetLatestAudioTimestamp(self->audioReceiver);

  [(VCCallSession *)self updateLastReceivedPacketWithTimestamp:5 packetType:LatestAudioTimestamp];
}

- (void)updateLastReceivedPacket:(BOOL)a3 packetType:(int)a4
{
  v4 = *&a4;
  if (a3)
  {
    lastReceivedPacketTimestamp = micro();
  }

  else
  {
    lastReceivedPacketTimestamp = self->lastReceivedPacketTimestamp;
  }

  [(VCCallSession *)self updateLastReceivedPacketWithTimestamp:v4 packetType:lastReceivedPacketTimestamp];
}

- (void)dealloc
{
  v41 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        perfTimers = self->perfTimers;
        if (perfTimers)
        {
          v7 = [-[TimingCollection description](perfTimers "description")];
        }

        else
        {
          v7 = "<nil>";
        }

        *buf = 136316162;
        v28 = v4;
        v29 = 2080;
        v30 = "[VCCallSession dealloc]";
        v31 = 1024;
        v32 = 2141;
        v33 = 2080;
        v34 = v7;
        v35 = 1024;
        LODWORD(v36) = [(VCCallSession *)self callID];
        v12 = "VCCallSession [%s] %s:%d perfTimers=%s, callID = %u";
        v13 = v5;
        v14 = 44;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCCallSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->perfTimers;
        if (v10)
        {
          v11 = [-[TimingCollection description](v10 "description")];
        }

        else
        {
          v11 = "<nil>";
        }

        *buf = 136316674;
        v28 = v8;
        v29 = 2080;
        v30 = "[VCCallSession dealloc]";
        v31 = 1024;
        v32 = 2141;
        v33 = 2112;
        v34 = v3;
        v35 = 2048;
        v36 = self;
        v37 = 2080;
        v38 = v11;
        v39 = 1024;
        v40 = [(VCCallSession *)self callID];
        v12 = "VCCallSession [%s] %s:%d %@(%p) perfTimers=%s, callID = %u";
        v13 = v9;
        v14 = 64;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  if ([(VCCapabilities *)self->caps isVideoEnabled])
  {
    reportingGenericEvent();
  }

  reportingGenericEvent();
  reportingSetPeriodicAggregationOccurredHandler();
  reportingUnregisterPeriodicTask();
  reportingUnregisterPeriodicTask();
  [(VCCallSession *)self sendTimings];

  self->cameraTimers = 0;
  self->perfTimers = 0;
  [(VCCallSession *)self setDelegate:0];
  [(VCCallSession *)self setCaptionsDelegate:0];
  hSIP = self->hSIP;
  if (hSIP != 0xFFFFFFFFLL)
  {
    SIPCloseCall(hSIP, [(VCCallInfo *)self->localCallInfo callID]);
  }

  [(VCTransportSession *)self->_transportSession setPerfTimings:0];
  [(VCTransportSession *)self->_transportSession stop];

  if (self->skeState)
  {
    SKEState_Destroy();
    self->skeState = 0;
  }

  if ([(VCCallSession *)self isSIPEnabled]&& self->hSIP != 0xFFFFFFFFLL)
  {
    [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
  }

  +[VCVTPWrapper stopVTP];
  [+[VCQoSMonitorManager sharedInstance](VCQoSMonitorManager unregisterQoSReportingSourceForToken:"unregisterQoSReportingSourceForToken:", [(VCCallInfo *)self->localCallInfo callID]];

  pausedAudioHeartBeat = self->pausedAudioHeartBeat;
  if (pausedAudioHeartBeat)
  {
    dispatch_release(pausedAudioHeartBeat);
  }

  dispatch_release(self->connectionChangeQueue);
  dispatch_release(self->videoQueue);
  dispatch_release(self->videoAsyncQueue);
  dispatch_release(self->audioQueue);
  dispatch_release(self->delegateNotificationQueue);
  dispatch_release(self->qualityQueue);

  pthread_mutex_destroy(&self->mutex);
  pthread_mutex_destroy(&self->srtpLock);
  pthread_mutex_destroy(&self->pauseLock);
  pthread_mutex_destroy(&self->qualityDelegateLock);
  dispatch_release(self->cellTechQueue);
  dispatch_release(self->timestampQueue);

  self->callSessionBitrateArbiter = 0;
  videoMediaControlInfoGenerator = self->videoMediaControlInfoGenerator;
  if (videoMediaControlInfoGenerator)
  {
    CFRelease(videoMediaControlInfoGenerator);
  }

  audioMediaControlInfoGenerator = self->audioMediaControlInfoGenerator;
  if (audioMediaControlInfoGenerator)
  {
    CFRelease(audioMediaControlInfoGenerator);
  }

  [(VCCallSession *)self setRemoteVideoAttributes:0];

  audioReceiver = self->audioReceiver;
  if (audioReceiver)
  {
    free(audioReceiver);
    self->audioReceiver = 0;
  }

  captionsReceiver = self->_captionsReceiver;
  if (captionsReceiver)
  {

    self->_captionsReceiver = 0;
  }

  wrmInfo = self->wrmInfo;
  if (wrmInfo)
  {
    free(wrmInfo);
    self->wrmInfo = 0;
  }

  hdTransferSession = self->hdTransferSession;
  if (hdTransferSession)
  {
    VTPixelTransferSessionInvalidate(hdTransferSession);
    v23 = self->hdTransferSession;
    if (v23)
    {
      CFRelease(v23);
      self->hdTransferSession = 0;
    }
  }

  hdBufferPool = self->hdBufferPool;
  if (hdBufferPool)
  {
    CVPixelBufferPoolRelease(hdBufferPool);
    self->hdBufferPool = 0;
  }

  VCReporting_finalizeAggregation();
  reportingAgent = self->reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  VRLogfileFree(&self->_callLogFile);
  [+[VCEffectsManager sharedManager](VCEffectsManager "sharedManager")];
  [(VCCallSession *)self deregisterForReportingNotifications];
  [VCPowerManager_DefaultManager() unregisterForThermalEvents:self];
  v26.receiver = self;
  v26.super_class = VCCallSession;
  [(VCCallSession *)&v26 dealloc];
}

- (BOOL)isSecureMessagingRequired
{
  if ([(VCMediaNegotiatorResultsFaceTimeSettings *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedFaceTimeSettings] secureMessagingRequired])
  {
    return 1;
  }

  else
  {
    return ![(VCCallSession *)self isSIPEnabled];
  }
}

- (unsigned)mediaControlInfoFECFeedbackVersion
{
  v2 = [(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedFaceTimeSettings];

  return [(VCMediaNegotiatorResultsFaceTimeSettings *)v2 mediaControlInfoFECFeedbackVersion];
}

- (BOOL)isFECGeneratorEnabled
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-fec-generator-enabled" userDefaultKey:@"isFECGeneratorEnabled" defaultValue:&unk_1F5799E40 isDoubleType:{0), "BOOLValue"}];
  v4 = [(VCCallSession *)self mediaControlInfoFECFeedbackVersion];
  IsLossStatsEnabled = VCMediaControlInfo_IsLossStatsEnabled(v4);
  v6 = v3 | IsLossStatsEnabled;
  if ((v3 & 1) == 0)
  {
    v7 = IsLossStatsEnabled;
    if (IsLossStatsEnabled)
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
          v14 = "[VCCallSession isFECGeneratorEnabled]";
          v15 = 1024;
          v16 = 2295;
          v17 = 1024;
          v18 = v4;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Enabling FECGenerator for FECFeedbackVersion %d", &v11, 0x22u);
        }
      }

      v6 = v7;
    }
  }

  return v6 & 1;
}

- (id)activeControlChannel
{
  v3 = [(VCCallSession *)self isSecureMessagingRequired];
  v4 = 1128;
  if (v3)
  {
    v4 = 1136;
  }

  return *(&self->super.isa + v4);
}

- (void)timeoutUnfinishedConnection
{
  if (!self->isStarted && [(VCCallSession *)self isSIPEnabled]&& self->hSIP != 0xFFFFFFFFLL)
  {

    [(VCCallSession *)self setupConnectionTimeoutTimerWithErrorCode:32012 detailedCode:243 description:@"The connection timed out without getting started" reason:@"Client disconnected session before completely initializing it"];
  }
}

- (void)cancelConnectionTimeoutTimer
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->connectionTimeoutSource)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v3;
        v8 = 2080;
        v9 = "[VCCallSession cancelConnectionTimeoutTimer]";
        v10 = 1024;
        v11 = 2325;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Cancelling Timeout Source", &v6, 0x1Cu);
      }
    }

    dispatch_source_cancel(self->connectionTimeoutSource);
    connectionTimeoutSource = self->connectionTimeoutSource;
    if (connectionTimeoutSource)
    {
      dispatch_release(connectionTimeoutSource);
      self->connectionTimeoutSource = 0;
    }
  }
}

- (void)setupConnectionTimeoutTimerWithErrorCode:(int)a3 detailedCode:(int)a4 description:(id)a5 reason:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self lock];
  [(VCCallSession *)self cancelConnectionTimeoutTimer];
  self->connectionTimeoutSource = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, 0);
  v11 = micro();
  connectionTimeoutSource = self->connectionTimeoutSource;
  if (connectionTimeoutSource)
  {
    v13 = v11;
    v14 = dispatch_walltime(0, 10000000000);
    dispatch_source_set_timer(connectionTimeoutSource, v14, 0x2540BE400uLL, 0x2540BE400uLL);
    v15 = self->connectionTimeoutSource;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __90__VCCallSession_setupConnectionTimeoutTimerWithErrorCode_detailedCode_description_reason___block_invoke;
    v16[3] = &unk_1E85F70D0;
    *&v16[7] = v13;
    v17 = a3;
    v18 = a4;
    v16[4] = self;
    v16[5] = a5;
    v16[6] = a6;
    dispatch_source_set_event_handler(v15, v16);
    dispatch_resume(self->connectionTimeoutSource);
  }

  [(VCCallSession *)self unlock];
}

void __90__VCCallSession_setupConnectionTimeoutTimerWithErrorCode_detailedCode_description_reason___block_invoke(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 1405) & 1) == 0)
  {
    reportingSymptom();
    *(*(a1 + 32) + 1405) = 1;
  }

  if (micro() - *(a1 + 56) > 60.0)
  {
    [*(a1 + 32) cancelConnectionTimeoutTimer];
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __90__VCCallSession_setupConnectionTimeoutTimerWithErrorCode_detailedCode_description_reason___block_invoke_cold_1();
      }
    }

    v2[0] = 0;
    [GKVoiceChatError getNSError:v2 code:*(a1 + 64) detailedCode:*(a1 + 68) filePath:0 description:*(a1 + 40) reason:*(a1 + 48)];
    [*(a1 + 32) disconnect:v2[0] didRemoteCancel:0];
  }
}

- (void)setUpFirstRemoteFrameTimer
{
  v7[5] = *MEMORY[0x1E69E9840];
  if ([(VCCapabilities *)self->caps isVideoEnabled])
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, 0);
    self->firstRemoteFrameTimemoutSource = v3;
    if (v3)
    {
      v4 = v3;
      v5 = dispatch_walltime(0, 5000000000);
      dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
      firstRemoteFrameTimemoutSource = self->firstRemoteFrameTimemoutSource;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __43__VCCallSession_setUpFirstRemoteFrameTimer__block_invoke;
      v7[3] = &unk_1E85F3778;
      v7[4] = self;
      dispatch_source_set_event_handler(firstRemoteFrameTimemoutSource, v7);
      dispatch_resume(self->firstRemoteFrameTimemoutSource);
    }
  }
}

- (void)cancelFirstRemoteFrameTimer
{
  firstRemoteFrameTimemoutSource = self->firstRemoteFrameTimemoutSource;
  if (firstRemoteFrameTimemoutSource)
  {
    dispatch_source_cancel(firstRemoteFrameTimemoutSource);
    v4 = self->firstRemoteFrameTimemoutSource;
    if (v4)
    {
      dispatch_release(v4);
      self->firstRemoteFrameTimemoutSource = 0;
    }
  }
}

- (BOOL)isLocalOrRemoteOnCellular
{
  v9 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"treatLTEAs4G", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (IsLTEOrNewer = NetworkUtils_IsLTEOrNewer([(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1]), (IsLTEOrNewer & 1) != 0 || (NetworkUtils_IsLTEOrNewer([(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0]) & 1) != 0))
  {
    return 0;
  }

  else
  {
    return self->_isLocalCellular_LowestConnectionQuality || self->_isRemoteCellular_LowestConnectionQuality;
  }
}

- (void)pushAudioSamples:(opaqueVCAudioBufferList *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (![(AVCRateController *)self->_rateController statisticsCollector])
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    if ((AFRCGetAudioTxInfo(self->hAFRC, 0, 0, 0, 0, 0, 0, 0, 0, &v15) & 0x80000000) == 0)
    {
      videoRedundancyController = self->_videoRedundancyController;
      v13[10] = v25;
      v13[11] = v26;
      v14 = v27;
      v13[6] = v21;
      v13[7] = v22;
      v13[8] = v23;
      v13[9] = v24;
      v13[2] = v17;
      v13[3] = v18;
      v13[4] = v19;
      v13[5] = v20;
      v13[0] = v15;
      v13[1] = v16;
      [(VCRedundancyControllerVideo *)videoRedundancyController updateRedundancyStrategyWithNetworkStatistics:v13];
    }
  }

  if (self->state == 1 && [(VCCallSession *)self isAudioRunning]&& [(VCCallSession *)self shouldSendAudio])
  {
    if (VCAudioBufferList_GetSampleCount(a3))
    {
      [(VCAudioTransmitter *)self->audioTransmitter pushAudioSamples:a3];
      v6 = [(VCAudioTransmitter *)self->audioTransmitter actualAudioSendingBitrate];
      if (self->useVCRC)
      {
        [(VCAudioTransmitter *)self->audioTransmitter setQualityIndicator:[(VCRateControlMediaController *)self->_mediaController audioFractionTier]== 0];
        VCRateControlMediaController_SetAudioSendingBitrate(self->_mediaController, v6, v7, v8);
      }

      if (self->useAFRC)
      {
        AFRCUpdateAudioSendingBitrate(self->hAFRC, v6);
      }

      if (self->_shouldReportWRMMetrics)
      {
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __34__VCCallSession_pushAudioSamples___block_invoke;
        block[3] = &unk_1E85F3778;
        block[4] = self;
        dispatch_async(global_queue, block);
      }
    }

    else
    {
      Timestamp = VCAudioBufferList_GetTimestamp(a3);
      v11 = (Timestamp - [(VCAudioTransmitter *)self->audioTransmitter lastSentAudioSampleTime]);
      if ((v11 / [(VCCallSession *)self sampleRate]) > 0.5)
      {
        [(VCAudioTransmitter *)self->audioTransmitter pushAudioSamples:a3];
      }
    }
  }
}

uint64_t __34__VCCallSession_pushAudioSamples___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) lock];
  WRMIncrementTime(*(*(a1 + 32) + 1496));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  VCAudioTransmitter_UpdateWrmMetrics(*(*(a1 + 32) + 48), *(*(a1 + 32) + 1496));
  VCAudioReceiver_UpdateWrmMetrics(*(*(a1 + 32) + 1224), *(*(a1 + 32) + 1496));
  v2 = *(a1 + 32);
  if (v2[44])
  {
    [v2 updateVCRateControlWRMMetrics:{v2[187], v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
  }

  else
  {
    AFRCSetWrmMetrics(v2[43], v2[187]);
  }

  if (WRMGenerateReport(*(*(a1 + 32) + 1496), &v4))
  {
    WRMSubmitReport(*(*(a1 + 32) + 1496), &v4);
  }

  return [*(a1 + 32) unlock];
}

- (void)updateVCRateControlWRMMetrics:(tagWRMMetricsInfo *)a3
{
  a3->isCallAudioOnly = [(VCRateControlMediaController *)self->_mediaController isAudioOnly];
  a3->bwEstimation = [(AVCStatisticsCollector *)[(AVCRateController *)self->_rateController statisticsCollector] sharedEstimatedBandwidth];
  a3->targetBitrate = self->_targetBitrate / 0x3E8;
  isLocalCellular_LowestConnectionQuality = self->_isLocalCellular_LowestConnectionQuality;
  a3->adaptationPacketLossPercentage = (self->packetLossRate * 100.0);
  a3->isLocalCellular = isLocalCellular_LowestConnectionQuality;
  a3->isVideoPaused = VCRateControlMediaController_IsVideoStopped(self->_mediaController);
}

- (BOOL)startConnectionWithParticipantID:(id)a3 callID:(unsigned int)a4 usingInviteData:(id)a5 isCaller:(BOOL)a6 capabilities:(id)a7 idsSocket:(int)a8 destination:(id)a9 error:(id *)a10
{
  v12 = a6;
  v13 = *&a4;
  v50 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = a3;
      v19 = a8;
      v20 = [(VCCallSession *)self deviceRole];
      if (a7)
      {
        v21 = [objc_msgSend(a7 "description")];
      }

      else
      {
        v21 = "<nil>";
      }

      if (a5)
      {
        v22 = [objc_msgSend(a5 "description")];
      }

      else
      {
        v22 = "<nil>";
      }

      *buf = 136316930;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = "[VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 2502;
      *&buf[28] = 1024;
      *&buf[30] = v13;
      *&buf[34] = 1024;
      *&buf[36] = v12;
      *&buf[40] = 1024;
      *&buf[42] = v20;
      *&buf[46] = 2080;
      v47 = v21;
      v48 = 2080;
      v49 = v22;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d startConnectionWithParticipantID: callID = %d, isCaller = %d, self.deviceRole = %d, caps = %s, inviteData = %s", buf, 0x42u);
      a8 = v19;
      a3 = v18;
    }
  }

  if (!self->isGKVoiceChat)
  {
    self->_shouldReportWRMMetrics = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded hasBaseband];
  }

  if (self->isStarted)
  {
    close(a8);
    return 1;
  }

  [(TimingCollection *)self->perfTimers startTimingForKey:12];
  objc_opt_class();
  objc_opt_isKindOfClass();
  reportingModeRoleTransportLog();
  if (v12)
  {
    v23 = [a5 objectForKeyedSubscript:@"InviteDataMediaBlob"];
    if (v23)
    {
      v24 = v23;
      [(VCCallSession *)self lock];
      LOBYTE(v24) = [(VCMediaNegotiator *)self->_mediaNegotiator processResponseBlob:v24];
      [(VCCallSession *)self unlock];
      if ((v24 & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:];
          }
        }

        [GKVoiceChatError getNSError:a10 code:32031 detailedCode:200 filePath:0 description:@"Failed to process response media blob" reason:@"Media blob error"];
        v39 = a8;
        goto LABEL_61;
      }
    }
  }

  if ([(VCCallSession *)self isSIPEnabled]&& self->hSIP == 0xFFFFFFFFLL)
  {
    [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
    self->hSIP = [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
  }

  v25 = [(VCCallSession *)self isSecureMessagingRequired];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v25)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 2546;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Starting secure control channel", buf, 0x1Cu);
      }
    }

    if ([(VCCapabilities *)self->caps isKeyExchangeEnabled])
    {
      v29 = 0;
    }

    else
    {
      v29 = [(VCCapabilities *)self->caps isDTLSEnabled]^ 1;
    }

    v32 = [[VCControlChannelMultiWay alloc] initWithTransportSessionID:v13 reportingAgent:self->reportingAgent mode:v29];
    self->secureControlChannel = v32;
    [(VCControlChannel *)v32 setDataReceivedDelegate:self];
    memset(buf, 0, sizeof(buf));
    *buf = 1;
    if (![(VCControlChannelMultiWay *)self->secureControlChannel addActiveParticipant:0 participantUUID:@"00000000-0000-0000-0000-000000000000" withConfiguration:buf]&& VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:];
      }
    }

    [(VCControlChannelMultiWay *)self->secureControlChannel start];
  }

  else
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v30;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 2558;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Starting SIP control channel", buf, 0x1Cu);
      }
    }

    self->controlChannel = [[VCControlChannelFaceTime alloc] initWithCallID:v13 reportingAgent:self->reportingAgent];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(VCCallSession *)self mediaControlInfoFECFeedbackVersion];
      *buf = 136315906;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = "[VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 2561;
      *&buf[28] = 1024;
      *&buf[30] = v35;
      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Media control info FEC feedback version is '%d'", buf, 0x22u);
    }
  }

  [(VCCallSession *)self setupPeerInfo:a3 usingInviteData:a5 isCaller:v12 capabilities:a7];
  if (v12 && [a5 objectForKeyedSubscript:@"InviteDataSKEBlob"])
  {
    [(VCCallSession *)self lock];
    if (self->skeState)
    {
      if (SKEState_SetBlob())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:];
          }
        }
      }
    }

    [(VCCallSession *)self unlock];
  }

  reportingSetUserInfo();
  [(VCCallSession *)self applyNegotiatedFaceTimeSettings];
  [(VCCallSession *)self setupABTesting];
  [(VCSwitchManager *)self->_switchManager negotiatedSwitches];
  [(VCSwitchManager *)self->_switchManager remoteSwitches];
  [(VCMediaNegotiatorResultsFaceTimeSettings *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedFaceTimeSettings] remoteFaceTimeSwitchesAvailable];
  [(VCCallSession *)self vcrcServerBagProfileNumber];
  [(VCConnectionManager *)self->connectionManager primaryConnHealthAllowedDelay];
  reportingConnecting();
  v36 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  if (a8 != -1 || a9)
  {
    v40 = [(VCCallSession *)self setupIDSConnectionForCallID:v13 destination:a9 socket:a8 error:a10];
    v38 = v45;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke_278;
    v45[3] = &unk_1E85F7118;
    v45[4] = v36;
    if (!v40)
    {
      goto LABEL_50;
    }

LABEL_52:
    -[VCTransportSession setCallActive:](self->_transportSession, "setCallActive:", [a7 isAudioPausedToStart] ^ 1);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke_3;
    v43[3] = &unk_1E85F7140;
    v43[4] = v36;
    v43[5] = v38;
    [(VCTransportSession *)self->_transportSession setEventHandler:v43];
    [(VCTransportSession *)self->_transportSession setConnectionSelectionVersionWithLocalFrameworkVersion:[(VCCallInfo *)self->localCallInfo frameworkVersion] remoteFrameworkVersion:[(VCCallInfo *)self->remoteCallInfo frameworkVersion]];
    [(VCTransportSession *)self->_transportSession start];
    return 1;
  }

  v37 = [(VCCallSession *)self configureLegacyTransportWithInviteInfo:a5 error:a10];
  v38 = v44;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke_2;
  v44[3] = &unk_1E85F7118;
  v44[4] = v36;
  if (v37)
  {
    goto LABEL_52;
  }

LABEL_50:
  v39 = a8;
LABEL_61:
  close(v39);
  return 0;
}

void __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke(uint64_t a1, void *a2)
{
  if (![a2 count] && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke_cold_1();
    }
  }
}

uint64_t __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke_278(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 handleReceivedPiggybackBlobIDS:a2];
}

uint64_t __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) strong];

  return [v3 handleReceivedPiggybackBlobLegacy:a2];
}

void __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  if (!v6 || (v7 = v6, ([v6 isCallOngoing] & 1) == 0))
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v22 = 136315906;
    v23 = v9;
    v24 = 2080;
    v25 = "[VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]_block_invoke_3";
    v26 = 1024;
    v27 = 2616;
    v28 = 1024;
    v29 = a2;
    v11 = "VCCallSession [%s] %s:%d Received transportSession event %d while call is not ongoing. Skipping";
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v11, &v22, 0x22u);
    return;
  }

  if (a2 <= 5)
  {
    if (a2 <= 2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          return;
        }

        goto LABEL_27;
      }

      v14 = [a3 objectForKeyedSubscript:@"transportSessionEventInfoNewLink"];
      v15 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsFirstLink", "BOOLValue"}];

      [v7 handleNewConnectionSetup:v14 isInitialConnection:v15];
    }

    else if (a2 == 3)
    {
      v18 = [a3 objectForKeyedSubscript:@"transportSessionEventInfoNewPrimary"];
      v19 = [a3 objectForKeyedSubscript:@"transportSessionEventInfoOldPrimary"];

      [v7 handlePrimaryConnectionChanged:v18 oldPrimaryConnection:v19];
    }

    else if (a2 == 4)
    {
      v16 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsDuplicationEnabled", "BOOLValue"}];
      v17 = [a3 objectForKeyedSubscript:@"transportSessionEventInfoActiveConnection"];

      [v7 handleDuplicationEnabled:v16 activeConnection:v17];
    }

    else
    {
      v12 = *(*(a1 + 40) + 16);

      v12();
    }
  }

  else
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        v20 = [v7 localCallInfo];

        [v20 setSupportsSKEOptimization:0];
      }

      else if (a2 == 7)
      {

        [v7 disconnect:a3 didRemoteCancel:0];
      }

      else
      {
        v8 = [a3 intValue];

        [v7 handleCellTechChange:v8];
      }

      return;
    }

    switch(a2)
    {
      case 9:
        v21 = [a3 unsignedShortValue];

        [v7 handleCellularMTUChanged:v21];
        break;
      case 10:
        [v7 hAFRC];

        AFRCMarkNetworkChange();
        break;
      case 16:
        return;
      default:
LABEL_27:
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          return;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v22 = 136315906;
        v23 = v13;
        v24 = 2080;
        v25 = "[VCCallSession startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:]_block_invoke";
        v26 = 1024;
        v27 = 2670;
        v28 = 1024;
        v29 = a2;
        v11 = "VCCallSession [%s] %s:%d Received invalid transportSession event(%d)";
        goto LABEL_13;
    }
  }
}

- (void)verifyFaceTimeClassicNotOnNewerBuilds
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
    v7 = 28;
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
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)handleReceivedPiggybackBlobIDS:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v5;
      v31 = 2080;
      v32 = "[VCCallSession handleReceivedPiggybackBlobIDS:]";
      v33 = 1024;
      v34 = 2710;
      v35 = 2048;
      v36 = a3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Received piggyback blob %p", buf, 0x26u);
    }
  }

  [(VCCallSession *)self lock];
  if (a3)
  {
    if (self->skeState)
    {
      v13 = SKEState_SetBlob();
      if (v13)
      {
        v29 = v13;
        VCSignalErrorAt(v13, "Signalled error at %s: SKEState_SetBlob(1) failed", v14, v15, v16, v17, v18, v19, "[VCCallSession handleReceivedPiggybackBlobIDS:]");
      }

      else if (!self->isInitiator && (v20 = [(VCCallSession *)self setSKEBlobOnTransportSession]) != 0)
      {
        v29 = v20;
      }

      else
      {
        dispatch_time(0, 5000000000);
        v21 = SKEState_CopySecretKeySync();
        if (!v21)
        {
          [(VCCallSession *)self handleKeyExchangeCompleted];
          [(VCCallSession *)self unlock];
          return;
        }

        v29 = v21;
        VCSignalErrorAt(v21, "Signalled error at %s: SKEState_CopySecretKeySync failed", v22, v23, v24, v25, v26, v27, "[VCCallSession handleReceivedPiggybackBlobIDS:]");
      }

      [(VCCallSession *)self unlock];
      goto LABEL_18;
    }

    v28 = VCSignalErrorAt(263, "Signalled error at %s: skeState is NULL", v7, v8, v9, v10, v11, v12, "[VCCallSession handleReceivedPiggybackBlobIDS:]");
  }

  else
  {
    v28 = VCSignalErrorAt(260, "Signalled error at %s: Piggyback SKE blob is nil", v7, v8, v9, v10, v11, v12, "[VCCallSession handleReceivedPiggybackBlobIDS:]");
  }

  v29 = v28;
  [(VCCallSession *)self unlock];
  if (v29)
  {
LABEL_18:
    *buf = 0;
    [GKVoiceChatError getNSError:buf code:32018 detailedCode:v29 filePath:0 description:@"Media insecure" reason:@"Key exchange failed"];
    [(VCCallSession *)self disconnect:*buf didRemoteCancel:0];
  }
}

- (void)handleReceivedPiggybackBlobLegacy:(id)a3
{
  [(VCCallSession *)self lock];
  secretKey = self->secretKey;
  self->secretKey = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (secretKey)
  {
    CFRelease(secretKey);
  }

  [(VCCallSession *)self handleKeyExchangeCompleted];

  [(VCCallSession *)self unlock];
}

- (void)applyNegotiatedFaceTimeSettings
{
  [(VCSwitchManager *)self->_switchManager setRemoteSwitches:[(VCMediaNegotiatorResultsFaceTimeSettings *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedFaceTimeSettings] faceTimeSwitches]];
  [(VCSwitchManager *)self->_switchManager negotiateSwitches];
  v3 = [(VCMediaNegotiatorResultsFaceTimeSettings *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedFaceTimeSettings] remoteLinkProbingCapabilityVersion];
  connectionManager = self->connectionManager;

  [(VCConnectionManager *)connectionManager setRemoteLinkProbingCapabilityVersion:v3];
}

- (void)setupABTesting
{
  v39 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    switchManager = self->_switchManager;
    v4 = switchManager ? [-[VCSwitchManager description](switchManager "description")] : "<nil>";
    asprintf(&__str, "A/B testing: %s", v4);
    if (__str)
    {
      __lasts = 0;
      v5 = strtok_r(__str, "\n", &__lasts);
      v6 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v30 = v7;
            v31 = 2080;
            v32 = "[VCCallSession setupABTesting]";
            v33 = 1024;
            v34 = 2760;
            v35 = 2080;
            v36 = "[VCCallSession setupABTesting]";
            v37 = 2080;
            v38 = v5;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v5 = strtok_r(0, "\n", &__lasts);
      }

      while (v5);
      free(__str);
    }
  }

  [(VCConnectionManager *)self->connectionManager setPreferRelayOverP2PEnabled:[(VCSwitchManager *)self->_switchManager isSwitchEnabled:1]];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VCConnectionManager *)self->connectionManager preferRelayOverP2PEnabled];
      *buf = 136315906;
      v30 = v9;
      v31 = 2080;
      v32 = "[VCCallSession setupABTesting]";
      v33 = 1024;
      v34 = 2763;
      v35 = 1024;
      LODWORD(v36) = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch preferRelayOverP2P %d", buf, 0x22u);
    }
  }

  [(VCConnectionManager *)self->connectionManager setFastMediaDuplicationEnabled:[(VCSwitchManager *)self->_switchManager isSwitchEnabled:64]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(VCConnectionManager *)self->connectionManager fastMediaDuplicationEnabled];
      *buf = 136315906;
      v30 = v12;
      v31 = 2080;
      v32 = "[VCCallSession setupABTesting]";
      v33 = 1024;
      v34 = 2765;
      v35 = 1024;
      LODWORD(v36) = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch fastMediaDuplicationEnabled %d", buf, 0x22u);
    }
  }

  [(VCConnectionManager *)self->connectionManager setDuplicateImportantPktsEnabled:[(VCSwitchManager *)self->_switchManager isSwitchEnabled:512]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(VCConnectionManager *)self->connectionManager duplicateImportantPktsEnabled];
      *buf = 136315906;
      v30 = v15;
      v31 = 2080;
      v32 = "[VCCallSession setupABTesting]";
      v33 = 1024;
      v34 = 2767;
      v35 = 1024;
      LODWORD(v36) = v17;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch duplicateImportantPktsEnabled %d", buf, 0x22u);
    }
  }

  [(VCConnectionManager *)self->connectionManager setLowNetworkModeEnabled:[(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x1000000]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(VCConnectionManager *)self->connectionManager lowNetworkModeEnabled];
      *buf = 136315906;
      v30 = v18;
      v31 = 2080;
      v32 = "[VCCallSession setupABTesting]";
      v33 = 1024;
      v34 = 2769;
      v35 = 1024;
      LODWORD(v36) = v20;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch lowNetworkModeEnabled %d", buf, 0x22u);
    }
  }

  [(VCConnectionManager *)self->connectionManager setDuplicationEnhancementEnabled:[(VCSwitchManager *)self->_switchManager isLocalSwitchEnabled:0x2000000]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(VCConnectionManager *)self->connectionManager duplicationEnhancementEnabled];
      *buf = 136315906;
      v30 = v21;
      v31 = 2080;
      v32 = "[VCCallSession setupABTesting]";
      v33 = 1024;
      v34 = 2771;
      v35 = 1024;
      LODWORD(v36) = v23;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch duplicationEnhancementEnabled %d", buf, 0x22u);
    }
  }

  [(VCConnectionManager *)self->connectionManager setiRATDuplicationEnabled:[(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x8000000]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(VCConnectionManager *)self->connectionManager iRATDuplicationEnabled];
      *buf = 136315906;
      v30 = v24;
      v31 = 2080;
      v32 = "[VCCallSession setupABTesting]";
      v33 = 1024;
      v34 = 2773;
      v35 = 1024;
      LODWORD(v36) = v26;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch iRATDuplicationEnabled %d", buf, 0x22u);
    }
  }
}

- (void)setupWCMClient
{
  v15 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1EEE98308] && WCMEnabled() && !self->isGKVoiceChat)
  {
    if (NetworkUtils_IsLTEOrNewer([(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1]))
    {
      if (!self->vcWCMClient)
      {
        v6 = objc_alloc_init(VCWCMClient);
        self->vcWCMClient = v6;
        [(VCWCMClient *)v6 setWcmClientDelegate:self];
        vcWCMClient = self->vcWCMClient;

        [(VCWCMClient *)vcWCMClient startWCMClient];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v8;
        v11 = 2080;
        v12 = "[VCCallSession setupWCMClient]";
        v13 = 1024;
        v14 = 2781;
        v5 = "VCCallSession [%s] %s:%d WCM: non-LTE RAT not supported.";
        goto LABEL_7;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v3;
      v11 = 2080;
      v12 = "[VCCallSession setupWCMClient]";
      v13 = 1024;
      v14 = 2791;
      v5 = "VCCallSession [%s] %s:%d WCM: not supported on this device.";
LABEL_7:
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, 0x1Cu);
    }
  }
}

- (void)cleanupWCMClient
{
  v11 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1EEE98308] && WCMEnabled() && !self->isGKVoiceChat)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "[VCCallSession cleanupWCMClient]";
        v9 = 1024;
        v10 = 2798;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WCM: cleanup start.", &v5, 0x1Cu);
      }
    }

    [(VCWCMClient *)self->vcWCMClient stopWCMClient];
    [(VCWCMClient *)self->vcWCMClient setWcmClientDelegate:0];

    self->vcWCMClient = 0;
  }
}

- (void)setupWRMClient
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->isGKVoiceChat && !self->vcWRMClient)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v4 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v5;
        v25 = 2080;
        v26 = "[VCCallSession setupWRMClient]";
        v27 = 1024;
        v28 = 2828;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WRM: vcWRMClient setup start.", buf, 0x1Cu);
      }
    }

    *&v21 = self;
    *(&v21 + 1) = MEMORY[0x1E695D7C8];
    v22 = MEMORY[0x1E695D7C0];
    RTPSetWRMInfo(self->rtpHandle, self->wrmInfo);
    RTPSetWRMMetricsCallback(self->rtpHandle, WRMReportMetricsCallback, &v21);
    RTPSetWRMCallId(self->rtpHandle, [(VCCallInfo *)self->localCallInfo callID]);
    RTPSetWRMInfo(self->rtpVideo, self->wrmInfo);
    RTPSetWRMMetricsCallback(self->rtpVideo, WRMReportMetricsCallback, &v21);
    RTPSetWRMCallId(self->rtpVideo, [(VCCallInfo *)self->localCallInfo callID]);
    [(VCConnectionManager *)self->connectionManager setWRMUpdateCallback:VCCMWRMStatusUpdateCallback_0 requestNotificationCallback:VCCMWRMRequestNotificationCallback_0 withContext:self completionHandler:0];
    self->vcWRMClient = [[WRMClient alloc] initWithDelegate:self];
    v7 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x10000];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v8;
        v25 = 2080;
        v26 = "[VCCallSession setupWRMClient]";
        v27 = 1024;
        v28 = 2849;
        v29 = 1024;
        v30 = v7;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch iRATMetricsEnabled %d", buf, 0x22u);
      }
    }

    v10 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:128];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v11;
        v25 = 2080;
        v26 = "[VCCallSession setupWRMClient]";
        v27 = 1024;
        v28 = 2851;
        v29 = 1024;
        v30 = v10;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch iRATRtpEnabled %d", buf, 0x22u);
      }
    }

    v13 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:256];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v14;
        v25 = 2080;
        v26 = "[VCCallSession setupWRMClient]";
        v27 = 1024;
        v28 = 2853;
        v29 = 1024;
        v30 = v13;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch preWarmCellEnabled %d", buf, 0x22u);
      }
    }

    v16 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x10000000];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v17;
        v25 = 2080;
        v26 = "[VCCallSession setupWRMClient]";
        v27 = 1024;
        v28 = 2855;
        v29 = 1024;
        v30 = v16;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch wrmRSSIThresholdEnabled %d", buf, 0x22u);
      }
    }

    [self->vcWRMClient setRSSIThresholdEnabled:v16];
    v19 = 2852126720;
    if (v13)
    {
      v19 = 2852192256;
    }

    v20 = 256;
    if (!v10)
    {
      v20 = 0;
    }

    [self->vcWRMClient startWRMClientWithMode:1 metricsConfig:v20 | v7 | v19];
    [self->vcWRMClient setMediaControlInfoVersion:VCMediaControlInfoGeneratorGetVersion(self->videoMediaControlInfoGenerator)];
  }
}

- (void)cleanupWRMClient
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCCallSession cleanupWRMClient]";
      v12 = 1024;
      v13 = 2864;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WRM: vcWRMClient cleanup start.", buf, 0x1Cu);
    }
  }

  RTPSetWRMMetricsCallback(self->rtpHandle, 0, 0);
  vcWRMClient = self->vcWRMClient;
  self->vcWRMClient = 0;
  connectionManager = self->connectionManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__VCCallSession_cleanupWRMClient__block_invoke;
  v7[3] = &unk_1E85F3778;
  v7[4] = vcWRMClient;
  [(VCConnectionManager *)connectionManager setWRMUpdateCallback:0 requestNotificationCallback:0 withContext:0 completionHandler:v7];
}

void __33__VCCallSession_cleanupWRMClient__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopWRMClient];
  v2 = *(a1 + 32);
}

- (void)reportImmediateWRMMetric:(int)a3 value:(unint64_t)a4
{
  if (self->_shouldReportWRMMetrics)
  {
    [self->vcWRMClient reportImmediateMetric:*&a3 value:a4];
  }
}

- (void)setWRMNotification:(id *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  if (a3->var2 == 2)
  {
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = v4;
        v25 = 2080;
        v26 = "[VCCallSession setWRMNotification:]";
        v27 = 1024;
        v28 = 2890;
        v6 = "VCCallSession [%s] %s:%d HandoverReport: Ignoring iRAT notification because the reason for recommendation is WiFi link going down";
LABEL_5:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v23, 0x1Cu);
      }
    }
  }

  else if ([(VCCallInfo *)self->remoteCallInfo isVideoQualityNearDegraded]|| a3->var1)
  {
    self->_isWRMNotificationPending = 0;
    *&self->_savedWRMNotification.applicationType = 0u;
    *self->_savedWRMNotification.linkTypeChangeReasonString = 0u;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[16] = 0u;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[32] = 0u;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[48] = 0u;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[64] = 0u;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[80] = 0u;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[96] = 0u;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[112] = 0u;
    *&self->_savedWRMNotification.linkBandwidthMin = 0u;
    VCConnectionManager_ProcessWRMNotification(self->connectionManager, a3);
  }

  else
  {
    self->_isWRMNotificationPending = 1;
    v15 = *&a3->var0;
    *self->_savedWRMNotification.linkTypeChangeReasonString = *a3->var3;
    *&self->_savedWRMNotification.applicationType = v15;
    v16 = *&a3->var3[16];
    v17 = *&a3->var3[32];
    v18 = *&a3->var3[48];
    *&self->_savedWRMNotification.linkTypeChangeReasonString[64] = *&a3->var3[64];
    *&self->_savedWRMNotification.linkTypeChangeReasonString[48] = v18;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[32] = v17;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[16] = v16;
    v19 = *&a3->var3[80];
    v20 = *&a3->var3[96];
    v21 = *&a3->var3[112];
    *&self->_savedWRMNotification.linkBandwidthMin = *&a3->var4;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[112] = v21;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[96] = v20;
    *&self->_savedWRMNotification.linkTypeChangeReasonString[80] = v19;
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = v22;
        v25 = 2080;
        v26 = "[VCCallSession setWRMNotification:]";
        v27 = 1024;
        v28 = 2898;
        v6 = "VCCallSession [%s] %s:%d HandoverReport: Pending iRAT notification until video quality degrade";
        goto LABEL_5;
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var1 = a3->var1;
      var2 = a3->var2;
      var4 = a3->var4;
      var5 = a3->var5;
      v23 = 136317186;
      v24 = v8;
      v25 = 2080;
      v26 = "[VCCallSession setWRMNotification:]";
      v27 = 1024;
      v28 = 2906;
      v29 = 1024;
      v30 = var0;
      v31 = 1024;
      v32 = var1;
      v33 = 2048;
      v34 = var2;
      v35 = 2080;
      var3 = a3->var3;
      v37 = 2048;
      v38 = var5;
      v39 = 2048;
      v40 = var4;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WRM: Get iRAT notification for %u, %u, 0x%llx, %s, (%llu, %llu)", &v23, 0x50u);
    }
  }
}

- (void)setWRMCoexMetrics:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WRMCoexIsLocal"];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = "[VCCallSession setWRMCoexMetrics:]";
      v14 = 1024;
      v15 = 2912;
      v16 = 2080;
      v17 = [objc_msgSend(v5 "description")];
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WRM: Get iRAT Coex Metrics %s", &v10, 0x26u);
    }
  }

  [(VCConnectionManager *)self->connectionManager processWRMCoexMetrics:v5];
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
  [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"WRMCoexIsLocal"];
  v9 = [(VCSessionMessaging *)self->messaging newPackedMessageFromDictionary:v8];
  [(VCSessionMessaging *)self->messaging sendMessage:v9 withTopic:@"VCWRMCoexMetricsMessage"];
}

- (void)setPreWarmState:(BOOL)a3
{
  v3 = a3;
  if ([(VCConnectionManager *)self->connectionManager isPreWarmStateEnabled]!= a3)
  {
    if (v3)
    {
      v5 = @"VCWRMAlertStateEnabled";
    }

    else
    {
      v5 = @"VCWRMAlertStateDisabled";
    }

    [(VCSessionMessaging *)self->messaging sendMessage:v5 withTopic:@"VCWRMAlertStateUpdateMessageTopic"];
  }

  connectionManager = self->connectionManager;

  VCConnectionManager_SetPreWarmState(connectionManager, v3);
}

- (void)sendWRMStatusUpdate:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      var2 = a3->var2;
      var3 = a3->var3;
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCCallSession sendWRMStatusUpdate:]";
      v13 = 1024;
      v14 = 2932;
      v15 = 1024;
      v16 = var2;
      v17 = 1024;
      v18 = var3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WRM: Send iRAT status update for %u, %u", &v9, 0x28u);
    }
  }

  [self->vcWRMClient sendStatusUpdateFaceTimeCalling:a3];
}

- (void)requestWRMNotification
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
      v8 = "[VCCallSession requestWRMNotification]";
      v9 = 1024;
      v10 = 2937;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WRM: Request for the latest iRAT notification by resubscribing again", &v5, 0x1Cu);
    }
  }

  [self->vcWRMClient requestNotificationFaceTimeCalling];
}

- (id)newMediaNegotiatorAudioConfigurationWithAllowAudioSwitching:(BOOL)a3 useSBR:(BOOL)a4 aacBlockSize:(unsigned int)a5
{
  v5 = *&a5;
  v6 = a4;
  v7 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  AUIOGetAUNumber(&v15);
  v9 = objc_alloc_init(VCAudioRuleCollectionConfiguration);
  [(VCAudioRuleCollectionConfiguration *)v9 setContinuity:self->_deviceRole != 0];
  [(VCAudioRuleCollectionConfiguration *)v9 setAllowAudioSwitching:v7];
  [(VCAudioRuleCollectionConfiguration *)v9 setUsesSBR:v6];
  [(VCAudioRuleCollectionConfiguration *)v9 setAacBlockSize:v5];
  [(VCAudioRuleCollectionConfiguration *)v9 setAddACC24:0];
  v10 = [[VCAudioRuleCollection alloc] initWithConfiguration:v9];

  if (!v10)
  {
    [VCCallSession newMediaNegotiatorAudioConfigurationWithAllowAudioSwitching:useSBR:aacBlockSize:];
LABEL_7:

    return 0;
  }

  v11 = [VCMediaNegotiatorAudioConfiguration alloc];
  v12 = [(VCMediaNegotiatorAudioConfiguration *)v11 initWithAllowAudioRecording:self->allowAudioRecording ssrc:RTPGenerateSSRC() audioUnitNumber:v15 audioRuleCollection:v10];
  if (!v12)
  {
    [VCCallSession newMediaNegotiatorAudioConfigurationWithAllowAudioSwitching:useSBR:aacBlockSize:];
    goto LABEL_7;
  }

  v13 = v12;

  return v13;
}

- (id)newCameraConfiguration
{
  v2 = objc_alloc_init(VCMediaNegotiatorVideoConfiguration);
  if (!v2)
  {
    [VCCallSession newCameraConfiguration];
LABEL_7:

    return 0;
  }

  [(VCMediaNegotiatorCommonConfiguration *)v2 setSsrc:RTPGenerateSSRC()];
  [(VCMediaNegotiatorVideoConfiguration *)v2 setVideoRuleCollections:+[VCVideoRuleCollectionsCamera sharedInstance]];
  v3 = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:1];
  if (!v3)
  {
    [VCCallSession newCameraConfiguration];
    goto LABEL_7;
  }

  v4 = v3;
  [(VCMediaNegotiatorVideoConfiguration *)v2 setVideoFeatureStrings:v3];

  return v2;
}

- (id)newScreenConfigurationWithCameraConfiguration:(id)a3
{
  v4 = [a3 copy];
  if (v4)
  {
    [v4 setSsrc:RTPGenerateSSRC()];
    [v4 setVideoRuleCollections:{+[VCVideoRuleCollectionsScreen sharedInstance](VCVideoRuleCollectionsScreen, "sharedInstance")}];
  }

  else
  {
    [VCCallSession newScreenConfigurationWithCameraConfiguration:a3];
  }

  return v4;
}

- (BOOL)addMediaConfigurationsToLocalConfiguration:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(VCCallSession *)self newMediaNegotiatorAudioConfigurationWithAllowAudioSwitching:self->allowAudioSwitching useSBR:self->useSBR aacBlockSize:self->aacBlockSize];
  if (!v5)
  {
    [VCCallSession addMediaConfigurationsToLocalConfiguration:];
LABEL_9:
    v9 = v12;
    v7 = v13;
    v10 = v14;
    goto LABEL_5;
  }

  v6 = [(VCCallSession *)self newCameraConfiguration];
  if (!v6)
  {
    [VCCallSession addMediaConfigurationsToLocalConfiguration:];
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [(VCCallSession *)self newScreenConfigurationWithCameraConfiguration:v6];
  if (!v8)
  {
    [(VCCallSession *)v7 addMediaConfigurationsToLocalConfiguration:&v13, &v14];
    goto LABEL_9;
  }

  v9 = v8;
  v10 = 1;
  [a3 setMediaConfiguration:v5 forMediaType:1];
  [a3 setMediaConfiguration:v7 forMediaType:2];
  [a3 setMediaConfiguration:v9 forMediaType:3];
LABEL_5:

  return v10;
}

- (id)newMediaBlobWithRemoteMediaBlob:(id)a3 localCallID:(unsigned int)a4 isLowBitrateCodecPreferred:(BOOL)a5
{
  v33 = *MEMORY[0x1E69E9840];
  deviceRole = self->_deviceRole;
  if ((deviceRole == 4 || deviceRole == 2) && a5)
  {
    self->preferredAudioCodec = 98;
    self->allowAudioSwitching = 0;
  }

  v10 = [[VCMediaNegotiatorLocalConfiguration alloc] initWithBitrateArbiter:self->callSessionBitrateArbiter];
  if (!v10)
  {
    [VCCallSession newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:];
    goto LABEL_36;
  }

  [(VCMediaNegotiatorLocalConfiguration *)v10 setFaceTimeSwitches:[(VCSwitchManager *)self->_switchManager localSwitches]];
  [(VCMediaNegotiatorLocalConfiguration *)v10 setPreferredAudioCodec:self->preferredAudioCodec];
  [(VCMediaNegotiatorLocalConfiguration *)v10 setAllowRTCPFB:self->isRTCPFBEnabled];
  [(VCMediaNegotiatorLocalConfiguration *)v10 setIsCaller:a3 == 0];
  [(VCMediaNegotiatorLocalConfiguration *)v10 setCallLogFile:self->_callLogFile];
  [(VCMediaNegotiatorLocalConfiguration *)v10 setSecureMessagingRequired:[(VCSwitchManager *)self->_switchManager isLocalSwitchEnabled:0x80000]];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v12 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v13;
      v27 = 2080;
      v28 = "[VCCallSession newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:]";
      v29 = 1024;
      v30 = 3072;
      v31 = 1024;
      v32 = [(VCMediaNegotiatorLocalConfiguration *)v10 secureMessagingRequired];
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch before negotiation secureMessagingRequired %d", buf, 0x22u);
    }
  }

  [(VCMediaNegotiatorLocalConfiguration *)v10 setSIPDisabled:[(VCSwitchManager *)self->_switchManager isLocalSwitchEnabled:0x100000]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(VCMediaNegotiatorLocalConfiguration *)v10 SIPDisabled];
      *buf = 136315906;
      *&buf[4] = v15;
      v27 = 2080;
      v28 = "[VCCallSession newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:]";
      v29 = 1024;
      v30 = 3074;
      v31 = 1024;
      v32 = v17;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch before negotiation disableSIPEnabled %d", buf, 0x22u);
    }
  }

  if ([(VCCallSession *)self deviceRole]== 2 || [(VCCallSession *)self deviceRole]== 4)
  {
    [(VCMediaNegotiatorLocalConfiguration *)v10 setBasebandCodec:self->basebandCodecType];
    [(VCMediaNegotiatorLocalConfiguration *)v10 setBasebandCodecSampleRate:[(NSNumber *)self->basebandCodecSampleRate unsignedIntValue]];
  }

  -[VCMediaNegotiatorLocalConfiguration setMediaRecorderVideoCodecs:](v10, "setMediaRecorderVideoCodecs:", [+[VCVideoRuleCollectionsMediaRecorder sharedInstance](VCVideoRuleCollectionsMediaRecorder mediaRecorderVideoCodecs]);
  -[VCMediaNegotiatorLocalConfiguration setMediaRecorderImageTypes:](v10, "setMediaRecorderImageTypes:", [+[VCVideoRuleCollectionsMediaRecorder sharedInstance](VCVideoRuleCollectionsMediaRecorder mediaRecorderImageTypes]);
  if ([(VCSwitchManager *)self->_switchManager isLocalSwitchEnabled:0x40000])
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  [(VCMediaNegotiatorLocalConfiguration *)v10 setMediaControlInfoVersion:v18];
  [(VCMediaNegotiatorLocalConfiguration *)v10 setMediaControlInfoFECFeedbackVersion:[(VCCallSession *)self defaultMediaControlInfoFECFeedbackVersion]];
  [(VCMediaNegotiatorLocalConfiguration *)v10 setLinkProbingCapabilityVersion:[(VCConnectionManager *)self->connectionManager linkProbingCapabilityVersion]];
  [(VCCallSession *)self addMediaConfigurationsToLocalConfiguration:v10];
  v19 = [[VCMediaNegotiator alloc] initWithLocalSettings:v10];
  if (!v19)
  {
    [VCCallSession newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:];
    goto LABEL_36;
  }

  v20 = v19;
  if ([(VCMediaNegotiatorLocalConfiguration *)v10 isCaller])
  {
    v21 = [(VCMediaNegotiator *)v20 negotiationData];
    if (!v21)
    {
      [VCCallSession newMediaBlobWithRemoteMediaBlob:v20 localCallID:&v25 isLowBitrateCodecPreferred:buf];
LABEL_36:
      v23 = v25;
      v22 = *buf;
      goto LABEL_30;
    }
  }

  else
  {
    if (!a3)
    {
      [VCCallSession newMediaBlobWithRemoteMediaBlob:v20 localCallID:&v25 isLowBitrateCodecPreferred:buf];
      goto LABEL_36;
    }

    if (![(VCMediaNegotiator *)v20 processRemoteNegotiationData:a3])
    {
      [VCCallSession newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:];
      goto LABEL_36;
    }

    v21 = [(VCMediaNegotiator *)v20 newResponseBlob];
    if (!v21)
    {
      [VCCallSession newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:];
      goto LABEL_36;
    }
  }

  v22 = v21;
  v23 = 0;
  self->_mediaNegotiator = v20;
LABEL_30:

  return v22;
}

- (void)reportOperatingMode
{
  v10 = *MEMORY[0x1E69E9840];
  operatingMode = self->operatingMode;
  if (!operatingMode && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v3;
      v6 = 2080;
      v7 = "[VCCallSession reportOperatingMode]";
      v8 = 1024;
      v9 = 3121;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Operating mode is INVALID", buf, 0x1Cu);
    }
  }

  *buf = 0;
  snprintf(buf, 8uLL, "%u", operatingMode);
  reportingLog();
}

- (BOOL)isLowBitrateCodecPreferred:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 objectForKeyedSubscript:@"InviteDataCallInfoBlob"];
  if (v3)
  {
    v3 = [[VCCallInfoBlob alloc] initWithData:v3];
  }

  v4 = [(NSString *)[(VCCallInfoBlob *)v3 deviceType] hasPrefix:@"Watch"];

  return v4;
}

- (id)inviteDataForParticipantID:(id)a3 callID:(unsigned int *)a4 remoteInviteData:(id)a5 nonCellularCandidateTimeout:(double)a6 error:(id *)a7
{
  v33[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v14 = [a5 objectForKeyedSubscript:@"InviteDataSKEBlob"];
  [(VCCallSession *)self lock];
  self->_inviteDataRequested = 1;
  [(VCCallSession *)self initWithRelevantStorebagEntries];
  [(VCCallSession *)self reportOperatingMode];
  v32 = @"transportSessionLegacyOptionNonCellularCandidateTimeout";
  v33[0] = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  if (!-[VCTransportSession getConnectionSetupData:withOptions:error:](self->_transportSession, "getConnectionSetupData:withOptions:error:", &v21, [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1], a7) || *a7)
  {
LABEL_3:

    [(VCCallSession *)self unlock];
    return 0;
  }

  if (v21)
  {
    [v13 setObject:v21 forKeyedSubscript:@"InviteDataConnectionBlob"];
  }

  [(VCCallInfo *)self->localCallInfo setParticipantID:a3];
  self->state = 3;
  if (self->isGKVoiceChat || a5 && !v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = [(VCCallSession *)self newSKEBlobWithRemoteSKEBlob:v14];
  }

  v17 = [a5 objectForKeyedSubscript:@"InviteDataMediaBlob"];
  if (!a5 || v17)
  {
    v20 = [(VCCallSession *)self newMediaBlobWithRemoteMediaBlob:v17 localCallID:*a4 isLowBitrateCodecPreferred:[(VCCallSession *)self isLowBitrateCodecPreferred:a5]];
    if (!v20)
    {
      reportingSymptom();
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCCallSession inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [VCCallSession inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:];
        }
      }

      [GKVoiceChatError getNSError:a7 code:32031 detailedCode:200 filePath:0 description:@"Failed to generate the media blob" reason:@"Media blob error"];

      goto LABEL_3;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v23 = v18;
        v24 = 2080;
        v25 = "[VCCallSession inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:]";
        v26 = 1024;
        v27 = 3203;
        v28 = 2112;
        v29 = a5;
        v30 = 2112;
        v31 = 0;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d falls back to SDP. remoteInviteData = %@, remoteMediaBlob = %@", buf, 0x30u);
      }
    }

    v20 = 0;
  }

  [(VCCallSession *)self addLocalCallInfoToInviteDictionary:v13];
  [(VCCallSession *)self unlock];
  if (!v16)
  {
    [(VCCallInfo *)self->localCallInfo setSupportsSKEOptimization:0];
    if (!v20)
    {
      return v13;
    }

    goto LABEL_20;
  }

  [v13 setObject:v16 forKeyedSubscript:@"InviteDataSKEBlob"];

  if (v20)
  {
LABEL_20:
    [v13 setObject:v20 forKeyedSubscript:@"InviteDataMediaBlob"];
  }

  return v13;
}

- (void)addLocalCallInfoToInviteDictionary:(id)a3
{
  v21[3] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(VCCallInfoBlob);
  [(VCCallInfoBlob *)v5 setCallID:[(VCCallInfo *)self->localCallInfo callID]];
  [(VCCallInfoBlob *)v5 setClientVersion:+[VCCallInfo getVCCurrentVersion]];
  memset(v21, 170, 20);
  VCGetDeviceModelString(v21, 0x14uLL);
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v21 encoding:1];
  [(VCCallInfoBlob *)v5 setDeviceType:v6];
  [(VCCallInfo *)self->localCallInfo setDeviceType:v6];
  memset(v20, 170, 20);
  VCGetSystemBuildVersionString(v20, 20);
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v20 encoding:1];
  [(VCCallInfoBlob *)v5 setOsVersion:v7];
  [(VCCallInfo *)self->localCallInfo setOSVersion:v7];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:"2175.14.1.1" encoding:1];
  [(VCCallInfoBlob *)v5 setFrameworkVersion:v8];
  [(VCCallInfo *)self->localCallInfo setFrameworkVersion:v8];
  [a3 setObject:-[VCCallInfoBlob data](v5 forKeyedSubscript:{"data"), @"InviteDataCallInfoBlob"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if ([-[VCCallInfoBlob formattedText](v5 "formattedText")])
      {
        v11 = [objc_msgSend(objc_msgSend(-[VCCallInfoBlob formattedText](v5 "formattedText")];
      }

      else
      {
        v11 = "<nil>";
      }

      v12 = 136315906;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCCallSession addLocalCallInfoToInviteDictionary:]";
      v16 = 1024;
      v17 = 3250;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Local callInfoBlob = %s", &v12, 0x26u);
    }
  }
}

- (void)setRemoteCallInfoFromInviteDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKeyedSubscript:@"InviteDataConnectionBlob"];
  v6 = [a3 objectForKeyedSubscript:@"InviteDataCallInfoBlob"];
  if (v6)
  {
    v6 = [[VCCallInfoBlob alloc] initWithData:v6];
  }

  v14[4] = 0;
  *v14 = +[VCCallInfo getVCCurrentVersion];
  if (v5)
  {
    [v5 bytes];
    [v5 length];
    ICEGetCallInfoForConnectionData();
    v7 = *&v14[1];
  }

  else if (v6)
  {
    v7 = [(VCCallInfoBlob *)v6 callID];
    v14[0] = [(VCCallInfoBlob *)v6 clientVersion];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCCallSession setRemoteCallInfoFromInviteDictionary:]";
        v19 = 1024;
        v20 = 3276;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Both connectionBlob and callInfoBlob are nil. No callID and client version", buf, 0x1Cu);
      }
    }

    v7 = 0;
  }

  [(VCCallInfo *)self->remoteCallInfo setCallID:v7];
  [(VCCallInfo *)self->remoteCallInfo setU8Version:v14[0]];
  if ([a3 objectForKeyedSubscript:@"InviteDataSKEBlob"])
  {
    [(VCCallInfo *)self->remoteCallInfo setSupportsSKEOptimization:1];
  }

  if (v6)
  {
    [(VCCallInfo *)self->remoteCallInfo setDeviceType:[(VCCallInfoBlob *)v6 deviceType]];
    [(VCCallInfo *)self->remoteCallInfo setFrameworkVersion:[(VCCallInfoBlob *)v6 frameworkVersion]];
    [(VCCallInfo *)self->remoteCallInfo setOSVersion:[(VCCallInfoBlob *)v6 osVersion]];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if ([-[VCCallInfoBlob formattedText](v6 "formattedText")])
        {
          v12 = [objc_msgSend(objc_msgSend(-[VCCallInfoBlob formattedText](v6 "formattedText")];
        }

        else
        {
          v12 = "<nil>";
        }

        v13 = [(VCCallInfo *)self->localCallInfo callID];
        *buf = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCCallSession setRemoteCallInfoFromInviteDictionary:]";
        v19 = 1024;
        v20 = 3291;
        v21 = 2080;
        v22 = v12;
        v23 = 1024;
        v24 = v13;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Remote callInfoBlob = %s localCallID = %d", buf, 0x2Cu);
      }
    }
  }
}

- (void)setShouldSendAudio:(BOOL)a3
{
  v3 = a3;
  shouldSendAudio = self->shouldSendAudio;
  if (a3 && !shouldSendAudio)
  {
    [(VCAudioTransmitter *)self->audioTransmitter setInputMeter:0];
    [(VCPacketBundler *)[(VCAudioTransmitter *)self->audioTransmitter audioBundler] resetBuffer];
    [(VCPacketBundler *)[(VCAudioTransmitter *)self->audioTransmitter audioBundlerShortRED] resetBuffer];
    VCAudioReceiver_DiscardQueueExcess(self->audioReceiver);
    shouldSendAudio = self->shouldSendAudio;
  }

  if (shouldSendAudio != v3)
  {
    [(VCCallSessionDelegate *)self->delegate session:self isSendingAudio:v3 error:0];
    if (v3)
    {
      [(VCCallSession *)self stopPausedHeartbeat];
    }

    else
    {
      [(VCCallSession *)self startPausedHeartbeat];
    }
  }

  self->shouldSendAudio = v3;
}

- (void)setPacketsPerBundle:(int)a3
{
  v3 = *&a3;
  v4 = [(VCAudioTransmitter *)self->audioTransmitter audioBundler];

  [(VCPacketBundler *)v4 setPacketsPerBundle:v3];
}

- (int)packetsPerBundle
{
  v2 = [(VCAudioTransmitter *)self->audioTransmitter audioBundler];

  return [(VCPacketBundler *)v2 packetsPerBundle];
}

- (int)numBufferBytesAvailable
{
  v2 = [(VCAudioTransmitter *)self->audioTransmitter audioBundler];

  return [(VCPacketBundler *)v2 maxPacketSize];
}

- (int)bundledPackets
{
  v2 = [(VCAudioTransmitter *)self->audioTransmitter audioBundler];

  return [(VCPacketBundler *)v2 bundledPackets];
}

- (void)setIsGKVoiceChat:(BOOL)a3
{
  self->isGKVoiceChat = a3;
  if (a3)
  {
    self->allowAudioSwitching = 0;
  }
}

- (void)processRemoteIPChange:(id)a3 callID:(unsigned int)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportSession = self->_transportSession;

    [(VCTransportSession *)transportSession processRemoteIPChange:a3];
  }
}

- (void)setSuspendAudio
{
  v3[5] = *MEMORY[0x1E69E9840];
  audioQueue = self->audioQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__VCCallSession_setSuspendAudio__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(audioQueue, v3);
}

uint64_t __32__VCCallSession_setSuspendAudio__block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(*(a1 + 32) + 1512) setCallActive:0];
  [*(*(a1 + 32) + 80) setConnectionPause:1 isLocalConnection:1];
  AFRCSetAudioPaused(*(*(a1 + 32) + 344), 1, 1);
  VCAudioReceiver_Reset(*(*(a1 + 32) + 1224));
  [*(a1 + 32) startPausedHeartbeat];
  [*(a1 + 32) unlock];
  [*(*(a1 + 32) + 1120) sendMessage:@"VCAudioPaused" withTopic:@"AudioPauseStateMessageTopic"];
  v2 = *(*(a1 + 32) + 8);

  return [v2 didChangeLocalVariablesForSession:?];
}

- (void)setResumeAudio
{
  v3[5] = *MEMORY[0x1E69E9840];
  audioQueue = self->audioQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__VCCallSession_setResumeAudio__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(audioQueue, v3);
}

uint64_t __31__VCCallSession_setResumeAudio__block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(a1 + 32) stopPausedHeartbeat];
  AFRCSetAudioPaused(*(*(a1 + 32) + 344), 0, 1);
  [*(*(a1 + 32) + 80) setConnectionPause:1 isLocalConnection:1];
  [*(a1 + 32) unlock];
  [*(*(a1 + 32) + 1512) setCallActive:1];
  [*(*(a1 + 32) + 1120) sendMessage:@"VCAudioUnpaused" withTopic:@"AudioPauseStateMessageTopic"];
  v2 = *(*(a1 + 32) + 8);

  return [v2 didChangeLocalVariablesForSession:?];
}

- (BOOL)setPauseAudio:(BOOL)a3 force:(BOOL)a4 error:(id *)a5
{
  v6 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      audioIsPaused = self->audioIsPaused;
      state = self->state;
      *buf = 136316418;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "[VCCallSession setPauseAudio:force:error:]";
      *&buf[22] = 1024;
      *&buf[24] = 3420;
      *&buf[28] = 1024;
      *&buf[30] = audioIsPaused;
      *&buf[34] = 1024;
      *&buf[36] = v6;
      *&buf[40] = 1024;
      *&buf[42] = state;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setPauseAudio (was %d is %d state is %d)", buf, 0x2Eu);
    }
  }

  [(VCCallSession *)self lock];
  if (self->state != 1)
  {
    self->audioIsPaused = v6;
    [(VCTransportSession *)self->_transportSession setCallActive:v6 ^ 1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->state;
        *buf = 136315906;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCallSession setPauseAudio:force:error:]";
        *&buf[22] = 1024;
        *&buf[24] = 3426;
        *&buf[28] = 1024;
        *&buf[30] = v18;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setPauseAudio early return due to state == %d", buf, 0x22u);
      }
    }

    goto LABEL_14;
  }

  if (!a4 && (self->audioIsPaused == v6 || ![(VCCallSession *)self isCallOngoing]))
  {
LABEL_14:
    [(VCCallSession *)self unlock];

    [(VCCallSessionDelegate *)self->delegate session:self didPauseAudio:self->audioIsPaused error:0];
    return 1;
  }

  deviceRole = self->_deviceRole;
  self->audioIsPaused = v6;
  [(VCTransportSession *)self->_transportSession setCallActive:v6 ^ 1];
  [(VCConnectionManager *)self->connectionManager setConnectionPause:v6 isLocalConnection:1];
  AFRCSetAudioPaused(self->hAFRC, v6, 1);
  if (v6)
  {
    [(VCCallSession *)self startPausedHeartbeat];
    if (self->isAudioRunning)
    {
      self->isAudioRunning = 0;
      [(VCCallSession *)self unlock];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __43__VCCallSession_setPauseAudio_force_error___block_invoke_347;
      v26[3] = &unk_1E85F7190;
      v26[4] = self;
      v27 = v6;
      v14 = [v26 copy];
      delegateNotificationQueue = self->delegateNotificationQueue;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __43__VCCallSession_setPauseAudio_force_error___block_invoke_2;
      v25[3] = &unk_1E85F4E98;
      v25[4] = self;
      v25[5] = v14;
      dispatch_async(delegateNotificationQueue, v25);
    }

    else
    {
      [(VCCallSession *)self unlock];
    }

    v21 = @"VCAudioPaused";
  }

  else
  {
    [(VCCallSession *)self stopPausedHeartbeat];
    VCAudioReceiver_Reset(self->audioReceiver);
    v37 = -1431655766;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v19;
    v36 = v19;
    v33 = v19;
    v34 = v19;
    *&buf[32] = v19;
    v32 = v19;
    *buf = v19;
    *&buf[16] = v19;
    remoteCallInfo = self->remoteCallInfo;
    if (remoteCallInfo)
    {
      [(VCCallInfo *)remoteCallInfo audioVersionInfo:self->isGKVoiceChat];
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    if ((deviceRole & 0xFFFFFFF7) == 1)
    {
      v22 = [(VCCallSession *)self basebandCodecType];
      v23 = [(VCCallSession *)self basebandCodecSampleRate];
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    [(VCCallSession *)self unlock];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __43__VCCallSession_setPauseAudio_force_error___block_invoke;
    v28[3] = &unk_1E85F7168;
    v29 = deviceRole;
    v28[4] = self;
    v28[5] = v23;
    v28[6] = v22;
    v30 = v6;
    -[VCCallSessionDelegate session:startAudioWithFarEndVersionInfo:internalFrameFormat:completionHandler:](-[VCCallSession delegate](self, "delegate"), "session:startAudioWithFarEndVersionInfo:internalFrameFormat:completionHandler:", self, buf, &self->_vpioFormat, [v28 copy]);
    v21 = @"VCAudioUnpaused";
  }

  [(VCSessionMessaging *)self->messaging sendMessage:v21 withTopic:@"AudioPauseStateMessageTopic"];
  [(VCCallSessionDelegate *)self->delegate didChangeLocalVariablesForSession:self];

  return 1;
}

uint64_t __43__VCCallSession_setPauseAudio_force_error___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    [v5 lock];
    *(*(a1 + 32) + 224) = 1;
    if ((*(a1 + 56) | 8) == 9 && (![*(a1 + 40) isEqualToNumber:{objc_msgSend(*(a1 + 32), "basebandCodecSampleRate")}] || (objc_msgSend(*(a1 + 48), "isEqualToString:", objc_msgSend(*(a1 + 32), "basebandCodecType")) & 1) == 0))
    {
      if ([*(a1 + 32) basebandCodecType])
      {
        if ([*(a1 + 32) basebandCodecSampleRate])
        {
          v6 = [*(a1 + 32) delegate];
          v7 = *(a1 + 32);
          v8 = CStrToFourcc([objc_msgSend(v7 "basebandCodecType")]);
          [objc_msgSend(*(a1 + 32) "basebandCodecSampleRate")];
          [v6 session:v7 setRemoteBasebandCodecType:v8 sampleRate:?];
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __43__VCCallSession_setPauseAudio_force_error___block_invoke_cold_1();
            }
          }
        }
      }
    }

    [*(a1 + 32) unlock];
  }

  else
  {
    [v5 disconnect:a3 didRemoteCancel:0];
  }

  return [*(*(a1 + 32) + 8) session:*(a1 + 32) didPauseAudio:*(a1 + 60) error:a3];
}

uint64_t __43__VCCallSession_setPauseAudio_force_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 session:v3 stopAudioWithCompletionHandler:v4];
}

- (void)setSuspendVideo
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(VCCapabilities *)self->caps isVideoEnabled];
      *buf = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCCallSession setSuspendVideo]";
      v12 = 1024;
      v13 = 3520;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d isVideoEnabled=%d", buf, 0x22u);
    }
  }

  if ([(VCCapabilities *)self->caps isVideoEnabled])
  {
    videoAsyncQueue = self->videoAsyncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__VCCallSession_setSuspendVideo__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = self;
    dispatch_async(videoAsyncQueue, block);
  }
}

uint64_t __32__VCCallSession_setSuspendVideo__block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(*(a1 + 32) + 1120) sendMessage:@"VCVideoPaused" withTopic:@"VideoPauseStateMessageTopic"];
  [*(*(a1 + 32) + 8) didChangeLocalVariablesForSession:?];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

- (void)setResumeVideo
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(VCCapabilities *)self->caps isVideoEnabled];
      *buf = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCCallSession setResumeVideo]";
      v12 = 1024;
      v13 = 3533;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d isVideoEnabled=%d", buf, 0x22u);
    }
  }

  if ([(VCCapabilities *)self->caps isVideoEnabled])
  {
    videoAsyncQueue = self->videoAsyncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__VCCallSession_setResumeVideo__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = self;
    dispatch_async(videoAsyncQueue, block);
  }
}

uint64_t __31__VCCallSession_setResumeVideo__block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(*(a1 + 32) + 1120) sendMessage:@"VCVideoUnpaused" withTopic:@"VideoPauseStateMessageTopic"];
  [*(*(a1 + 32) + 8) didChangeLocalVariablesForSession:?];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

- (BOOL)setPauseVideo:(BOOL)a3 force:(BOOL)a4 error:(id *)a5
{
  v10 = *MEMORY[0x1E69E9840];
  videoAsyncQueue = self->videoAsyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCCallSession_setPauseVideo_force_error___block_invoke;
  block[3] = &unk_1E85F41F8;
  block[4] = self;
  v8 = a4;
  v9 = a3;
  dispatch_async(videoAsyncQueue, block);
  return 1;
}

void __43__VCCallSession_setPauseVideo_force_error___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 480);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCCallSession_setPauseVideo_force_error___block_invoke_2;
  block[3] = &unk_1E85F41F8;
  block[4] = v1;
  v4 = *(a1 + 40);
  dispatch_sync(v2, block);
}

uint64_t __43__VCCallSession_setPauseVideo_force_error___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) lock];
  if (*(a1 + 40) == 1)
  {
    LOBYTE(v2) = *(a1 + 41);
LABEL_7:
    [*(*(a1 + 32) + 24) setVideoIsPaused:v2 & 1];
    [*(*(a1 + 32) + 24) videoIsPaused];
    reportingLog();
    if (*(a1 + 41))
    {
      v7[0] = 0;
      [*(a1 + 32) stopVideo:1 error:v7];
    }

    else
    {
      v7[0] = 0;
      if (([*(a1 + 32) startVideo:1 error:v7] & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __43__VCCallSession_setPauseVideo_force_error___block_invoke_2_cold_1();
        }
      }
    }

    [*(*(a1 + 32) + 8) session:*(a1 + 32) didPauseVideo:objc_msgSend(*(*(a1 + 32) + 24) error:{"videoIsPaused"), 0}];
    if (*(a1 + 41))
    {
      v6 = @"VCVideoPaused";
    }

    else
    {
      v6 = @"VCVideoUnpaused";
    }

    [*(*(a1 + 32) + 1120) sendMessage:v6 withTopic:@"VideoPauseStateMessageTopic"];
    [*(*(a1 + 32) + 8) didChangeLocalVariablesForSession:?];
    return [*(a1 + 32) unlock];
  }

  v3 = [*(*(a1 + 32) + 24) videoIsPaused];
  v2 = *(a1 + 41);
  if (v2 != v3)
  {
    goto LABEL_7;
  }

  [*(*(a1 + 32) + 8) session:*(a1 + 32) didPauseVideo:objc_msgSend(*(*(a1 + 32) + 24) error:{"videoIsPaused"), 0}];
  v4 = *(a1 + 32);

  return [v4 unlock];
}

- (void)processRelayRequestResponseDict:(id)a3 didOriginateRequest:(BOOL)a4
{
  v4 = a4;
  [(VCCallSession *)self lock];
  if ([(VCCallSession *)self isCallOngoing])
  {
    [(VCCallSession *)self unlock];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transportSession = self->_transportSession;

      [(VCTransportSession *)transportSession processRelayRequestResponse:a3 didOriginateRequest:v4];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession processRelayRequestResponseDict:didOriginateRequest:];
      }
    }

    [(VCCallSession *)self unlock];
  }
}

- (void)processRelayUpdateDict:(id)a3 didOriginateRequest:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self lock];
  if (![(VCCallSession *)self isCallOngoing])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316162;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCCallSession processRelayUpdateDict:didOriginateRequest:]";
        v15 = 1024;
        v16 = 3621;
        v17 = 1024;
        v18 = 3621;
        v19 = 1024;
        v20 = ![(VCCallSession *)self isCallOngoing];
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m:%d: processRelayUpdateDict bailing because (![self isCallOngoing] == %d)", &v11, 0x28u);
      }
    }

    goto LABEL_15;
  }

  if (!self->remoteCallInfo)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession processRelayUpdateDict:didOriginateRequest:];
      }
    }

LABEL_15:
    [(VCCallSession *)self unlock];
    return;
  }

  [(VCCallSession *)self unlock];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VCTransportSession *)self->_transportSession processRelayUpdate:a3 didOriginateRequest:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"GKSRelayConnectionID", "description"}];
    connectionManager = self->connectionManager;

    [(VCConnectionManager *)connectionManager setRelayConnectionID:v7];
  }
}

- (void)processCancelRelayRequest:(id)a3 didOriginateRequest:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
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

      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCCallSession processCancelRelayRequest:didOriginateRequest:]";
      v13 = 1024;
      v14 = 3642;
      v15 = 2080;
      v16 = v8;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d STUB:processCancelRelayRequest:%s, %d", &v9, 0x2Cu);
    }
  }
}

- (void)rcvdFirstRemoteFrame
{
  v4[5] = *MEMORY[0x1E69E9840];
  [(TimingCollection *)self->perfTimers stopTimingForKey:7];
  [(VCCallSession *)self cancelFirstRemoteFrameTimer];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__VCCallSession_rcvdFirstRemoteFrame__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(global_queue, v4);
}

uint64_t __37__VCCallSession_rcvdFirstRemoteFrame__block_invoke(uint64_t a1)
{
  reportingRemoteFrameSize();
  reportingGenericEvent();
  v2 = *(a1 + 32);

  return [v2 logPerfTimings];
}

- (void)sendARPLData:(id)a3 toCallID:(unsigned int)a4
{
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
      v11 = "[VCCallSession sendARPLData:toCallID:]";
      v12 = 1024;
      v13 = 3660;
      v14 = 2080;
      v15 = [a3 bytes];
      v16 = 1024;
      v17 = a4;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d >>>>> Sending ARPL data <%s> with callID %d (in VCCallSession) <<<<<", &v8, 0x2Cu);
    }
  }
}

- (void)sendData:(id)a3 messageType:(unsigned int)a4 encrypted:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v26 = *MEMORY[0x1E69E9840];
  if ([a3 length])
  {
    if ([(VCCallSession *)self isSIPEnabled])
    {
      secureDataChannel = self->secureDataChannel;

      [(VCSecureDataChannel *)secureDataChannel sendData:a3 messageType:v6 encrypted:v5];
    }

    else
    {
      v10 = [(VCControlChannelMultiWay *)self->secureControlChannel sendReliableMessageAndWait:a3 withTopic:@"VCExternalClientDataTopic" participantID:0];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = "FAILURE";
          v14 = 136316418;
          v15 = v11;
          v16 = 2080;
          v17 = "[VCCallSession sendData:messageType:encrypted:]";
          if (v10)
          {
            v13 = "SUCCESS";
          }

          v18 = 1024;
          v19 = 3685;
          v20 = 2080;
          v21 = v13;
          v22 = 1024;
          v23 = 0;
          v24 = 2112;
          v25 = a3;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d sendReliableMessageAndWait result was %s, participantID=%d, data=%@", &v14, 0x36u);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession sendData:messageType:encrypted:];
    }
  }
}

- (void)localCameraSwitchedFrom:(int)a3 to:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  reportingLog();
  [(TimingCollection *)self->cameraTimers stopTimingForKey:v5];
  cameraTimers = self->cameraTimers;

  [(TimingCollection *)cameraTimers startTimingForKey:v4];
}

- (void)getFrontCaptureTime:(float *)a3 backCaptureTime:(float *)a4
{
  [(TimingCollection *)self->cameraTimers stopTimingForKey:[(VCCallSessionDelegate *)self->delegate currentCameraID]];
  [(TimingCollection *)self->cameraTimers totalTimeForKey:0];
  *&v7 = v7;
  *a3 = *&v7;
  [(TimingCollection *)self->cameraTimers totalTimeForKey:1];
  *&v8 = v8;
  *a4 = *&v8;
}

- (int)negotiatedReceivingFramerate
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation]|| [(VCCapabilities *)self->caps isDuplexAudioOnly]|| ![(VCCapabilities *)self->caps isVideoEnabled])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      LODWORD(v5) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v5)
      {
        return v5;
      }

      [VCCallSession negotiatedReceivingFramerate];
    }

    LODWORD(v5) = 0;
    return v5;
  }

  mediaNegotiator = self->_mediaNegotiator;
  if (self->operatingMode == 4)
  {
    v4 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedScreenSettings];
  }

  else
  {
    v4 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedVideoSettings];
  }

  v6 = v4;
  IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
  v8 = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 0);
  v20 = 0u;
  v21 = 0u;
  if ((IsInterfaceOnCellularForActiveConnectionWithQuality | v8))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v22 = 0uLL;
  v23 = 0uLL;
  v10 = [objc_msgSend(v6 "videoRuleCollections")];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
LABEL_17:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      if ([objc_msgSend(v6 "videoRuleCollections")])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v12)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    v15 = 0;
  }

  v16 = -[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](-[VCMediaNegotiatorResultsVideo videoRuleCollections](-[VCMediaNegotiatorBase negotiatedVideoSettings](self->_mediaNegotiator, "negotiatedVideoSettings"), "videoRuleCollections"), "getVideoRulesForTransport:payload:encodingType:", v9, [v15 intValue], 2);
  v5 = [v16 count];
  if (v5)
  {
    [objc_msgSend(v16 objectAtIndex:{0), "fRate"}];
    LODWORD(v5) = v17;
  }

  return v5;
}

- (id)callMetadata
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->callSessionBitrate];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v3, @"SessionBitRate", 0}];
  if ((self->initialSentBytes & 0x8000000000000000) == 0 && !VTP_GetSendRecvStats(&v22, &v21))
  {
    v5 = v22 - self->initialSentBytes + 4096;
    v21 = v21 - self->initialReceivedBytes + 4096;
    v22 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v21];
    [v4 setObject:v6 forKeyedSubscript:@"SessionSentBytes"];
    [v4 setObject:v7 forKeyedSubscript:@"SessionReceivedBytes"];
  }

  v19 = NAN;
  v20 = NAN;
  [(VCCallSession *)self getFrontCaptureTime:&v20 backCaptureTime:&v19];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v24 = v9;
      v25 = 2080;
      v26 = "[VCCallSession callMetadata]";
      v27 = 1024;
      v28 = 3768;
      v29 = 2048;
      v30 = v20;
      v31 = 2048;
      v32 = v19;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d session:didStopWithDelay:error: frontCaptureTime: %f backCaptureTime %f", buf, 0x30u);
    }
  }

  *&v8 = v20;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  *&v12 = v19;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  [v4 setObject:v11 forKeyedSubscript:@"FrontCaptureTime"];
  [v4 setObject:v13 forKeyedSubscript:@"BackCaptureTime"];
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self->awdCallNonce];
  [v4 setObject:v14 forKeyedSubscript:@"SessionDataNonce"];

  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", -[VCCallSession primaryConnectionType](self, "primaryConnectionType")), @"connType"}];
  v15 = VCConnectionManager_CopyPrimaryConnection(self->connectionManager);
  v16 = [MEMORY[0x1E696AD98] numberWithBool:VCConnection_IsLocalOnCellular(v15)];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:VCConnection_IsRemoteOnCellular(v15)];
  if (v15)
  {
    CFRelease(v15);
  }

  [v4 setObject:v16 forKeyedSubscript:@"LocalUsesCell"];
  [v4 setObject:v17 forKeyedSubscript:@"RemoteUsesCell"];
  return v4;
}

- (BOOL)pullAudioSamples:(opaqueVCAudioBufferList *)a3 rtpTimestamp:(unsigned int *)a4 lastReceivedAudioTime:(double *)a5 padding:(char *)a6 paddingLength:(char *)a7 silence:(int *)a8
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16[0] = a6;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  v16[1] = v10;
  v17 = v10;
  v11 = VCAudioReceiver_PullAudioSamples([(VCCallSession *)self audioReceiver], a3, a4, a5, v16, a8, &v18);
  v12 = v11;
  if (a7 && v11)
  {
    *a7 = v17;
  }

  AFRCSetReceiveQueueSize(self->hAFRC, v18);
  v13 = self->awdTime + 1;
  self->awdTime = v13;
  HIDWORD(v14) = 652835029 * v13;
  LODWORD(v14) = 652835029 * v13;
  if ((v14 >> 2) <= 0x83126E)
  {
    VCAudioReceiver_ReportAWDMetrics(&self->audioReceiver->var0.var0);
  }

  return v12;
}

- (BOOL)isSKEOptimizationEnabled
{
  v3 = [(VCCallInfo *)self->remoteCallInfo supportsSKEOptimization];
  if (v3)
  {
    localCallInfo = self->localCallInfo;

    LOBYTE(v3) = [(VCCallInfo *)localCallInfo supportsSKEOptimization];
  }

  return v3;
}

- (unsigned)primaryConnectionType
{
  v2 = VCConnectionManager_CopyPrimaryConnection(self->connectionManager);
  v3 = [v2 type];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (void)updateRelayedCallType:(unsigned __int8)a3
{
  v3 = a3;
  v6[1] = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self lock];
  self->_relayedCallType = v3;
  if ((v3 - 10) <= 0xF6u && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession updateRelayedCallType:];
    }
  }

  v5 = @"RelayedCT";
  v6[0] = [objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedChar:{v3), "stringValue"}];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  reportingGenericEvent();
  [(VCCallSession *)self unlock];
}

- (void)setCapabilities:(id)a3
{
  [(VCCallSession *)self lock];
  caps = self->caps;
  v5 = a3;
  self->caps = v5;
  if (self->state == 1)
  {
    v6 = [(VCCapabilities *)v5 isAudioEnabled];
    if (v6 != [(VCCapabilities *)caps isAudioEnabled]|| (v7 = [(VCCapabilities *)self->caps isVideoEnabled], v7 != [(VCCapabilities *)caps isVideoEnabled]))
    {
      [(VCCallSession *)self sendCallingModeMessage];
    }

    v8 = [(VCCapabilities *)caps isAudioEnabled];
    if (v8 != [(VCCapabilities *)self->caps isAudioEnabled])
    {
      -[VCCallSession enableAudio:](self, "enableAudio:", [a3 isAudioEnabled]);
    }
  }

  if (self->caps)
  {
    v9 = caps == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(VCCapabilities *)self->caps setPreferredAudioCodec:[(VCCapabilities *)caps preferredAudioCodec]];
    [(VCCapabilities *)self->caps setActualAudioCodec:[(VCCapabilities *)caps actualAudioCodec]];
    [(VCCapabilities *)self->caps setPreferredVideoCodec:[(VCCapabilities *)caps preferredVideoCodec]];
    [(VCCapabilities *)self->caps setActualVideoCodec:[(VCCapabilities *)caps actualVideoCodec]];
  }

  -[VCCallSession updateDeviceRole:](self, "updateDeviceRole:", [a3 deviceRole]);
  [(VCCallSession *)self unlock];
}

- (int)audioTierNetworkBitrate
{
  v2 = [(VCAudioTransmitter *)self->audioTransmitter currentAudioTier];

  return [(VCAudioTier *)v2 networkBitrate];
}

- (int)audioTierAudioCodecBitrate
{
  v2 = [(VCAudioTransmitter *)self->audioTransmitter currentAudioTier];

  return [(VCAudioTier *)v2 audioCodecBitrate];
}

- (int)audioTierPacketsPerBundle
{
  v2 = [(VCAudioTransmitter *)self->audioTransmitter currentAudioTier];

  return [(VCAudioTier *)v2 packetsPerBundle];
}

- (int)audioTierRedNumPayloads
{
  v2 = [(VCAudioTransmitter *)self->audioTransmitter currentAudioTier];

  return [(VCAudioTier *)v2 redNumPayloads];
}

- (int)audioTierPayload
{
  v2 = [(VCAudioTier *)[(VCAudioTransmitter *)self->audioTransmitter currentAudioTier] payloadConfig];

  return [(VCAudioPayloadConfig *)v2 payload];
}

- (unsigned)currentAudioCap
{
  v3 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:[(VCConnectionManager *)self->connectionManager getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:1]];
  v4 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedAudioOnlyBitrateForConnection:[(VCConnectionManager *)self->connectionManager getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:0]];
  if (v4)
  {
    callSessionBitrate = v4;
  }

  else
  {
    callSessionBitrate = 40;
  }

  if (v3 < callSessionBitrate)
  {
    callSessionBitrate = v3;
  }

  if (callSessionBitrate >= self->callSessionBitrate)
  {
    callSessionBitrate = self->callSessionBitrate;
  }

  return 1000 * callSessionBitrate;
}

- (void)setSessionConferenceState:(unsigned int)a3 callID:(unsigned int)a4
{
  v4 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCCallSession setSessionConferenceState:callID:]";
      v15 = 1024;
      v16 = 3921;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setSessionConferenceState, %d", buf, 0x22u);
    }
  }

  if (v4 < 3)
  {
    reportingLog();
    VideoTransmitter_SetWindowState(self->hVideoTransmitter, 1, v4);
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [v8 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v4), @"VCWindowState", 0}];
    v10 = [(VCSessionMessaging *)self->messaging newPackedMessageFromDictionary:v9];
    [(VCSessionMessaging *)self->messaging sendMessage:v10 withTopic:@"VCWindowStateChange"];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession setSessionConferenceState:callID:];
    }
  }
}

- (void)setSessionConferenceVisualRectangle:(CGRect)a3 callID:(unsigned int)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v18 = v9;
      v19 = 2080;
      v20 = "[VCCallSession setSessionConferenceVisualRectangle:callID:]";
      v21 = 1024;
      v22 = 3944;
      v23 = 2048;
      v24 = x;
      v25 = 2048;
      v26 = y;
      v27 = 2048;
      v28 = width;
      v29 = 2048;
      v30 = height;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setSessionConferenceVisualRectangle: (%g, %g), %gx%g", buf, 0x44u);
    }
  }

  reportingVisualRectangle();
  VideoTransmitter_SetVisualRectangle(x, y, width, height, self->hVideoTransmitter, 1);
  v11 = objc_alloc(MEMORY[0x1E695DF20]);
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v15 = [v11 initWithObjectsAndKeys:{v12, @"VCWindowOriginX", v13, @"VCWindowOriginY", v14, @"VCWindowWidth", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", height), @"VCWindowHeight", 0}];
  v16 = [(VCSessionMessaging *)self->messaging newPackedMessageFromDictionary:v15];
  [(VCSessionMessaging *)self->messaging sendMessage:v16 withTopic:@"VCWindowStateChange"];
}

- (void)setPeerProtocolVersion:(unsigned int)a3
{
  v14 = *MEMORY[0x1E69E9840];
  self->_peerProtocolVersion = a3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCCallSession setPeerProtocolVersion:]";
      v10 = 1024;
      v11 = 3963;
      v12 = 1024;
      v13 = a3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d PeerProtocolVersion set to %d", &v6, 0x22u);
    }
  }
}

- (void)messageVCMomentsRequest:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a3 mutableCopy];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}] == 1)
  {
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", VideoReceiver_GetShowFrameRTPTimestamp()), @"vcMomentsRequestTimestamp"}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCCallSession messageVCMomentsRequest:]";
        v13 = 1024;
        v14 = 3972;
        v15 = 1024;
        ShowFrameRTPTimestamp = VideoReceiver_GetShowFrameRTPTimestamp();
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCMoments in VCCallSession requesting remote video frame for RTP timestamp %d", &v9, 0x22u);
      }
    }
  }

  [(VCCallSession *)self reportingMomentsWithRequest:a3];
  v8 = [(VCSessionMessaging *)self->messaging newPackedMessageFromMomentsDictionary:v5];
  [(VCSessionMessaging *)self->messaging sendMessage:v8 withTopic:@"VCMomentsStateMessageTopic"];
}

- (void)reportingMomentsWithRequest:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}];
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsMediaType", "intValue"}];
  v8 = [(VCCallSession *)self remoteParticipantID];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v6), @"VCMRState"}];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1F570E008;
  }

  [v5 setObject:v9 forKeyedSubscript:@"VCMRRecipientUUID"];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v7), @"VCMRMediaType"}];
  if (v6 == 4)
  {
    v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestDidSucceed", "BOOLValue"}];
    v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsFileSize", "intValue"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v11), @"VCMRFileSize"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v10), @"VCMRFinishDidSucceed"}];
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsRequestMode", "unsignedIntValue"}] == 2)
    {
      ct_green_tea_logger_create_static();
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v13 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_INFO, "<FaceTime>[FaceTime][com.apple.AVConference]:Taken FaceTime Live Photo", v14, 2u);
        }
      }
    }
  }

  reportingMediaRecorderEvents();
}

- (BOOL)isVideoRunning
{
  if (self->state == 1)
  {
    return ![(VCCallSession *)self videoIsPaused:v2];
  }

  else
  {
    return 0;
  }
}

- (void)triggerInterfaceChange
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transportSession = self->_transportSession;

    [(VCTransportSession *)transportSession triggerInterfaceChange];
  }
}

- (void)notifyDelegateActiveConnectionDidChange
{
  v9[7] = *MEMORY[0x1E69E9840];
  v3 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
  if (v3)
  {
    v4 = v3;
    if (VCConnection_IsRelay(v3))
    {
      v5 = @"RLY-";
    }

    else
    {
      v5 = @"P2P-";
    }

    if ([(VCConnectionManager *)self->connectionManager isDuplicationEnabled])
    {
      v6 = @"D-";
    }

    else
    {
      v6 = @"P-";
    }

    v7 = [(__CFString *)v6 stringByAppendingString:v5];
    delegateNotificationQueue = self->delegateNotificationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__VCCallSession_notifyDelegateActiveConnectionDidChange__block_invoke;
    v9[3] = &unk_1E85F3E30;
    v9[4] = self;
    v9[5] = v7;
    v9[6] = v4;
    dispatch_async(delegateNotificationQueue, v9);
    CFRelease(v4);
  }
}

uint64_t __56__VCCallSession_notifyDelegateActiveConnectionDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = [*(a1 + 40) stringByAppendingString:{objc_msgSend(*(a1 + 48), "localInterfaceTypeString")}];
  v5 = [*(a1 + 40) stringByAppendingString:{objc_msgSend(*(a1 + 48), "remoteInterfaceTypeString")}];
  v6 = [*(*(a1 + 32) + 24) callID];

  return [v3 session:v2 connectionDidChangeWithLocalInterfaceType:v4 remoteInterfaceType:v5 callID:v6];
}

- (void)handleNewConnectionSetup:(id)a3 isInitialConnection:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self updateMaxPktLength];
  [(VCCallSession *)self updateLastReceivedPacketWithTimestamp:8 packetType:micro()];
  [(VCCallSession *)self lock];
  if (VCConnection_IsLocalOnCellular(a3))
  {
    AFRCAddBBDump();
  }

  if ((VCConnection_Priority(a3) & 0xFFFFFFFE) != 2 && VCConnection_IsRemoteOnCellular(a3))
  {
    v7 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:a3 forLocalInterface:0 arbiterMode:VCBitrateArbiter_ModeFromOperatingMode(self->operatingMode) encodeRule:self->_currentEncodeRule];
    if (!v7)
    {
      operatingMode = self->operatingMode;
      if (operatingMode == 4 || operatingMode == 1)
      {
        v7 = 100;
      }

      else
      {
        v7 = 40;
      }
    }

    [(VCCallInfo *)self->remoteCallInfo setCellBandwidth:v7];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(VCCallInfo *)self->remoteCallInfo cellBandwidth];
        v13 = VCConnection_RemoteCellTech(a3);
        v14 = self->operatingMode;
        v15 = 136316418;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCCallSession handleNewConnectionSetup:isInitialConnection:]";
        v19 = 1024;
        v20 = 4085;
        v21 = 1024;
        v22 = v12;
        v23 = 1024;
        v24 = v13;
        v25 = 1024;
        v26 = v14;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d connectionEstablishedCallback: initialize remote cell bitrate cap to %u, cell tech %d, operation mode %d", &v15, 0x2Eu);
      }
    }
  }

  if (v4)
  {
    [(VCCallSession *)self handleFirstConnectionSetup:a3];
    [(VCCallSession *)self updateCachedConnectionState];
    [(VCCallSession *)self unlock];
    [(VCCallSession *)self verifyFaceTimeClassicNotOnNewerBuilds];
  }

  else
  {
    [(VCCallSession *)self updateCachedConnectionState];
    [(VCCallSession *)self unlock];
  }
}

- (void)handleFirstConnectionSetup:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  [(VCCallInfo *)self->remoteCallInfo setIsPreLionOS:[(VCTransportSession *)self->_transportSession isRemoteOSPreLion]];
  if (self->didAttemptSIPInvite || ![(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation]|| (*buf = 0, [(VCCallSession *)self startMediaWithPreNegotiatedSettings:buf]))
  {
    sipState = self->_sipState;
    if (sipState == 6)
    {
      [(TimingCollection *)self->perfTimers startTimingForKey:1];
      ICETimeout = GKSConnectivitySettings_GetICETimeout();
      if (ICETimeout <= 0.0)
      {
        LODWORD(ICETimeout) = 1114636288;
      }

      else
      {
        ICETimeout = GKSConnectivitySettings_GetICETimeout();
        *&ICETimeout = ICETimeout;
      }

      [(VCCallSession *)self setupCalleeSIPStartTimeout:ICETimeout];
    }

    else if (sipState == 5 && !self->didAttemptSIPInvite)
    {
      [(TimingCollection *)self->perfTimers startTimingForKey:1];
      [MEMORY[0x1E696AF00] detachNewThreadSelector:sel_sipConnectThreadProc_ toTarget:self withObject:0];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v6;
          v51 = 2080;
          v52 = "[VCCallSession handleFirstConnectionSetup:]";
          v53 = 1024;
          v54 = 4118;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: sipConnectThreadProc", buf, 0x1Cu);
        }
      }

      self->didAttemptSIPInvite = 1;
    }

    VCConnection_IsLocalOnCellular(a3);
    VCConnection_LocalCellTech(a3);
    v9 = CelltechToStr();
    v10 = [a3 type];
    if ((v10 - 1) >= 6)
    {
      v11 = v10;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v12;
          v51 = 2080;
          v52 = "reportingStatusCodeForConnectionType";
          v53 = 1024;
          v54 = 10960;
          v55 = 1024;
          v56 = v11;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Invalid connection type %d", buf, 0x22u);
        }
      }
    }

    isRedEnabled = self->_isRedEnabled;
    if ((isRedEnabled & 1) == 0)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      negotiatedAudioPayloads = self->negotiatedAudioPayloads;
      v16 = [(NSMutableArray *)negotiatedAudioPayloads countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v47;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(negotiatedAudioPayloads);
            }

            if ([objc_msgSend(*(*(&v46 + 1) + 8 * i) "config")] == 108)
            {
              isRedEnabled = 2;
              goto LABEL_30;
            }
          }

          v17 = [(NSMutableArray *)negotiatedAudioPayloads countByEnumeratingWithState:&v46 objects:v45 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_30:
    v20 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
    v21 = VCBitrateArbiter_ModeFromOperatingMode(self->operatingMode);
    v22 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v20 forLocalInterface:1 arbiterMode:v21 encodeRule:self->_currentEncodeRule];
    v23 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v20 forLocalInterface:0 arbiterMode:v21 encodeRule:self->_currentEncodeRule];
    if (v20)
    {
      CFRelease(v20);
    }

    CFAllocatorGetDefault();
    v24 = CTRegistrationCopyOperatorName();
    v25 = CFPreferencesCopyAppValue(@"cannedReplay", @"com.apple.VideoConference");
    v26 = v25;
    v27 = @"Unavailable";
    if (v24)
    {
      v27 = v24;
    }

    v32 = @"Carrier";
    v33 = @"CannedRelay";
    v28 = @"missing";
    if (v25)
    {
      v28 = v25;
    }

    v44[0] = v27;
    v44[1] = v28;
    v44[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v9, v32, v33, @"Interface"}];
    v34 = @"Upgrade";
    v29 = [a3 type];
    v30 = @"No";
    if (v29 == 6)
    {
      v30 = @"Yes";
    }

    v44[3] = v30;
    v35 = @"RedState";
    v44[4] = [MEMORY[0x1E696AD98] numberWithInt:isRedEnabled];
    v36 = @"WAState";
    v44[5] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[VCWifiAssistManager wifiAssistState](+[VCWifiAssistManager sharedInstance](VCWifiAssistManager, "sharedInstance"), "wifiAssistState")}];
    v37 = @"REMBUILD";
    if ([(VCCallInfo *)self->remoteCallInfo OSVersion])
    {
      v31 = [(VCCallInfo *)self->remoteCallInfo OSVersion];
    }

    else
    {
      v31 = @"unknown";
    }

    v44[6] = v31;
    v38 = @"localBitrateCap";
    v44[7] = [MEMORY[0x1E696AD98] numberWithDouble:v22 * 1000.0];
    v39 = @"remoteBitrateCap";
    v44[8] = [MEMORY[0x1E696AD98] numberWithDouble:v23 * 1000.0];
    v40 = @"DeviceRole";
    v44[9] = [MEMORY[0x1E696AD98] numberWithInt:self->_deviceRole];
    v41 = @"IsRelayDeviceRole";
    v44[10] = [MEMORY[0x1E696AD98] numberWithBool:{+[VCCallSession isRelayDeviceRole:](VCCallSession, "isRelayDeviceRole:", self->_deviceRole)}];
    v42 = @"MicMode";
    v44[11] = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCCallSession getCurrentMicMode](self, "getCurrentMicMode")}];
    v43 = @"SpatialAudioSupported";
    v44[12] = [MEMORY[0x1E696AD98] numberWithBool:{+[VCHardwareSettings isSpatialAudioSupported](VCHardwareSettings, "isSpatialAudioSupported")}];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v32 count:13];
    reportingGenericEvent();
    if (v24)
    {
      CFRelease(v24);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    reportingStartTimer();
    [(VCCallSession *)self logConnectionSuccess];
    if (!self->secureDataChannel && ![(VCCapabilities *)self->caps isKeyExchangeEnabled])
    {
      [(VCCallSession *)self setupSecureDataChannel];
    }
  }

  else
  {
    [(VCCallSession *)self disconnect:*buf didRemoteCancel:0];
  }
}

- (void)updateCachedConnectionState
{
  v3[5] = *MEMORY[0x1E69E9840];
  cellTechQueue = self->cellTechQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__VCCallSession_updateCachedConnectionState__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(cellTechQueue, v3);
}

uint64_t __44__VCCallSession_updateCachedConnectionState__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1523) = [*(*(a1 + 32) + 80) isConnectedOnIPv6ForActiveConnectionWithQuality:1];
  *(*(a1 + 32) + 1521) = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(*(*(a1 + 32) + 80), 1, 1);
  *(*(a1 + 32) + 1522) = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(*(*(a1 + 32) + 80), 1, 0);
  v2 = *(a1 + 32);
  v3 = *(v2 + 1232);
  v4 = *(v2 + 1521);
  v5 = *(v2 + 1522);
  v6 = *(v2 + 1523);
  v7 = [v2 currentAudioCap];

  return [v3 setCellTech:v4 remoteCellular:v5 isIPV6:v6 audioCap:v7];
}

- (void)handleKeyExchangeCompleted
{
  v3 = objc_autoreleasePoolPush();
  [(VCCallSession *)self setupSecureDataChannel];

  objc_autoreleasePoolPop(v3);
}

- (void)setupSecureDataChannel
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)redundancyController:(id)a3 redundancyVectorDidChange:(id *)a4
{
  if (a4->var0)
  {
    VideoTransmitter_SetFECLevelPerBlockSizeVector(self->hVideoTransmitter, a4->var0, a4->var1);
  }
}

- (void)redundancyController:(id)a3 redundancyPercentageDidChange:(unsigned int)a4
{
  v4 = VCRedundancyControllerVideo_ConvertRedundancyPercentageToRatio(a4);
  v5 = v4;

  VideoTransmitter_SetFECRatio(v5);
}

- (void)handleMicModeNotification:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E6986B80]];
  if (v5)
  {
    if ([v5 isEqualToString:@"com.apple.facetime"])
    {
      v6 = [(VCCallSession *)self getCurrentMicMode];
      v7 = @"MicMode";
      v8[0] = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      reportingGenericEvent();
    }
  }
}

- (void)registerForReportingNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E6986B78];

  [v3 addObserver:self selector:sel_handleMicModeNotification_ name:v4 object:0];
}

- (void)deregisterForReportingNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E6986B78];

  [v3 removeObserver:self name:v4 object:0];
}

- (void)vcSecureDataChannel:(id)a3 messageType:(unsigned int)a4 receivedData:(id)a5
{
  v9 = *MEMORY[0x1E69E9840];
  if (a4 == 2)
  {
    captionsReceiver = self->_captionsReceiver;

    VCCaptionsReceiver_ProcessCaptionsData(captionsReceiver, a5);
  }

  else
  {
    delegateNotificationQueue = self->delegateNotificationQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__VCCallSession_VCSecureDataChannelDelegate__vcSecureDataChannel_messageType_receivedData___block_invoke;
    v7[3] = &unk_1E85F3890;
    v7[4] = self;
    v7[5] = a5;
    v8 = a4;
    dispatch_async(delegateNotificationQueue, v7);
  }
}

uint64_t __91__VCCallSession_VCSecureDataChannelDelegate__vcSecureDataChannel_messageType_receivedData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 8);
  v4 = *(a1 + 48);
  v5 = [*(v1 + 24) callID];

  return [v3 session:v1 didReceiveData:v2 messageType:v4 withCallID:v5];
}

- (void)telephonyInterface:(id)a3 vocoderInfoChangedToType:(id)a4 sampleRate:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316162;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCCallSession(VCTelephonyInterfaceDelegate) telephonyInterface:vocoderInfoChangedToType:sampleRate:]";
      v14 = 1024;
      v15 = 4334;
      v16 = 2080;
      v17 = [a4 UTF8String];
      v18 = 1024;
      v19 = [a5 unsignedIntValue];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d vocoderInfoChangedToType:%s sampleRate:%u", &v10, 0x2Cu);
    }
  }

  [(VCCallSession *)self lock];
  if (![(NSString *)[(VCCallSession *)self basebandCodecType] isEqualToString:a4]|| ![(NSNumber *)[(VCCallSession *)self basebandCodecSampleRate] isEqualToNumber:a5])
  {
    [(VCCallSession *)self setBasebandCodecSampleRate:a5];
    [(VCCallSession *)self setBasebandCodecType:a4];
  }

  if (self->state == 1)
  {
    [(VCCallSession *)self sendBasebandCodecMessage];
  }

  [(VCCallSession *)self unlock];
}

- (void)wcmSetCallConfig:(unsigned int)a3 interferenceLevel:(unsigned int)a4
{
  v5 = *&a3;
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v7;
      v13 = 2080;
      v14 = "[VCCallSession(WCMClientDelegate) wcmSetCallConfig:interferenceLevel:]";
      v15 = 1024;
      v16 = 4353;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WCM: wcmSetCallConfig callback.", &v11, 0x1Cu);
    }
  }

  hAFRC = self->hAFRC;
  if (hAFRC != 0xFFFFFFFFLL)
  {
    AFRCProcessWCMSetCallConfig(hAFRC, v5, a4);
  }

  rateController = self->_rateController;
  if (rateController)
  {
    [(AVCRateController *)rateController setTargetBitrateCap:v5];
  }
}

- (void)wcmGetCallConfig:(unsigned int *)a3 targetBitrate:(unsigned int *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 136315650;
      *&v10[4] = v7;
      *&v10[12] = 2080;
      *&v10[14] = "[VCCallSession(WCMClientDelegate) wcmGetCallConfig:targetBitrate:]";
      v11 = 1024;
      v12 = 4364;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WCM: wcmGetCallConfig callback.", v10, 0x1Cu);
    }
  }

  rateController = self->_rateController;
  if (rateController)
  {
    [(AVCRateController *)rateController configuration:0xAAAAAAAAAAAAAAAALL];
    if (a3)
    {
      *a3 = *&v10[12];
    }

    if (a4)
    {
      *a4 = [(AVCRateController *)self->_rateController targetBitrate];
    }
  }

  else
  {
    AFRCProcessWCMGetCallConfig(self->hAFRC, a3, a4);
  }
}

- (int)sipCallback:(int)a3 callID:(unsigned int)a4 msgIn:(const char *)a5 msgOut:(char *)a6 optional:(void *)a7 confIndex:(int *)a8
{
  v12 = *&a4;
  v13 = *&a3;
  v66 = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self updateLastReceivedPacket:1 packetType:2];
  if (v13 <= 5)
  {
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            state = self->state;
            *buf = 136316162;
            *&buf[4] = v20;
            *&buf[12] = 2080;
            *&buf[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
            *&buf[22] = 1024;
            *&buf[24] = 4401;
            *&buf[28] = 1024;
            *&buf[30] = state == 6;
            *&buf[34] = 1024;
            *&buf[36] = state;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPINCOMINGCONFERENCE state == GKVoiceChatServiceStateCalleeAttemptingToConnect = %d, %d", buf, 0x28u);
          }
        }

        if (![(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
        {
          *&v23 = 0xAAAAAAAAAAAAAAAALL;
          *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf[27] = v23;
          *buf = v23;
          *&buf[16] = v23;
          SIPGetRemoteInfo(self->hSIP, [(VCCallInfo *)self->localCallInfo callID], buf, 0);
          -[VCCallInfo setUserAgent:](self->remoteCallInfo, "setUserAgent:", [MEMORY[0x1E696AEC0] stringWithUTF8String:buf]);
        }

        [(VCCallSession *)self lock];
        [(TimingCollection *)self->perfTimers stopTimingForKey:1];
        [(TimingCollection *)self->perfTimers startTimingForKey:2];
        if ([(VCCallInfo *)self->remoteCallInfo usesInitialFECImplementation])
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        self->fecMode = v24;
        v25 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        self->receivedSIPInvite = 1;
        *v59 = 0;
        if (self->_sipState == 6)
        {
          if ([(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation]|| (v15 = [(VCCallSession *)self handleIncomingWithCallID:v12 msgIn:a5 msgOut:a6 optional:a7 confIndex:a8 error:v59]) == 0)
          {
            self->didSend200OK = 1;
            [(VCCallSession *)self unlock];

            if (![(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation]&& [(VCCallSession *)self isSKEOptimizationEnabled])
            {
              LODWORD(v58) = 1;
              *buf = 0;
              [(VCCallSession *)self lock];
              secretKey = self->secretKey;
              if (secretKey)
              {
                *buf = CFRetain(secretKey);
                v27 = buf;
              }

              else
              {
                v27 = 0;
              }

              [(VCCallSession *)self unlock];
              [(VCCallSession *)self setupEncryptionWithKey:v27 confIndex:&v58];
              if (*buf)
              {
                CFRelease(*buf);
              }
            }

            return 0;
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              sipState = self->_sipState;
              *buf = 136315906;
              *&buf[4] = v36;
              *&buf[12] = 2080;
              *&buf[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
              *&buf[22] = 1024;
              *&buf[24] = 4436;
              *&buf[28] = 1024;
              *&buf[30] = sipState;
              _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPINCOMING: WE ARE BUSY BUSY (state = %d)", buf, 0x22u);
            }
          }

          v15 = 3;
        }

        [(VCCallSession *)self unlock];
        [(VCCallSession *)self disconnect:*v59 didRemoteCancel:0];

        return v15;
      }

      if (v13 != 3 && v13 != 5)
      {
        goto LABEL_55;
      }

LABEL_28:
      if ([(VCCallInfo *)self->localCallInfo callID]== v12)
      {
        if (a5 && a7)
        {
          reportingLog();
        }

        [(VCCallSession *)self shutdownVoiceChatFromRemoteSIPSignal:v13 withReason:a5];
      }

      return 0;
    }

    if (!v13)
    {
      goto LABEL_28;
    }

    if (v13 != 1)
    {
      goto LABEL_55;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
        *&buf[22] = 1024;
        *&buf[24] = 4473;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPCONNECTEDCONFERENCE", buf, 0x1Cu);
      }
    }

    v19 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [(TimingCollection *)self->perfTimers stopTimingForKey:2];
    if ([(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
    {
      [(VCCallSession *)self lock];
      self->_sipState = 1;
      [(VCCallSession *)self cancelConnectionTimeoutTimer];
      [(VCCallSession *)self unlock];
      [v19 drain];
      return 0;
    }

    [(TimingCollection *)self->perfTimers startTimingForKey:3];
    [(VCCallSession *)self lock];
    if ([(VCCallSession *)self state]!= 6 || [(VCCallInfo *)self->localCallInfo callID]!= v12)
    {
      [(VCCallSession *)self unlock];
      [(TimingCollection *)self->perfTimers removeTimingForKey:3];
      [(VCCallSession *)self disconnect:0 didRemoteCancel:0];
      [v19 drain];
      return 3;
    }

    VCAudioReceiver_UpdateCellTech(self->audioReceiver, [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1], [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0]);
    if ([(VCCapabilities *)self->caps isVideoEnabled])
    {
      VideoReceiver_CellTechChanged();
    }

    VCAudioReceiver_Start(&self->audioReceiver->var0.var0, v33);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&buf[24] = __Block_byref_object_copy__14;
    *&buf[32] = __Block_byref_object_dispose__14;
    *&buf[40] = 0;
    *&self->state = vdupq_n_s64(1uLL);
    [(VCCallSession *)self sendBasebandCodecMessage];
    [(VCCallSession *)self cancelConnectionTimeoutTimer];
    [(VCCallSession *)self unlock];
    if ([(VCCallSession *)self startMediaQueue:*&buf[8] + 40])
    {
      [(TimingCollection *)self->perfTimers stopTimingForKey:3];
      if (![(VCCapabilities *)self->caps isDTLSEnabled])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v39 = VRTraceErrorLogLevelToCSTR();
          v40 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *v59 = 136315650;
            *&v59[4] = v39;
            *&v59[12] = 2080;
            *&v59[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
            *&v59[22] = 1024;
            v60 = 4537;
            _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPCONNECTEDCONFERENCE: DTLS-SRTP is not enabled...", v59, 0x1Cu);
          }
        }

        if (![(VCCapabilities *)self->caps isKeyExchangeEnabled])
        {
          goto LABEL_101;
        }

        [(TimingCollection *)self->perfTimers startTimingForKey:4];
        v58 = 0x403E000000000000;
        v41 = micro();
        if (![(VCCapabilities *)self->caps isVideoEnabled])
        {
          goto LABEL_93;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *v59 = 136315650;
            *&v59[4] = v42;
            *&v59[12] = 2080;
            *&v59[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
            *&v59[22] = 1024;
            v60 = 4547;
            _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPCONNECTEDCONFERENCE: Need to wait for SRTP to init... (video)", v59, 0x1Cu);
          }
        }

        v44 = SRTPWaitUseEncryption(self->rtpVideo, &v58);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v45 = VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v47 = micro();
            *v59 = 136316162;
            *&v59[4] = v45;
            *&v59[12] = 2080;
            *&v59[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
            *&v59[22] = 1024;
            v60 = 4549;
            v61 = 2048;
            v62 = v47 - v41;
            v63 = 1024;
            v64 = v44;
            _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPCONNECTEDCONFERENCE: end wait SRTP @ %.3f seconds (%08X)", v59, 0x2Cu);
          }
        }

        if (v44 < 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            VRTraceErrorLogLevelToCSTR();
            if (VRTraceIsOSFaultDisabled())
            {
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:];
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              [VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:];
            }
          }

          +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", *&buf[8] + 40, 32018, 205, v44, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 4556], @"Video Insecure", @"Encryption key setup did not complete successfully");
          [(VCCallSession *)self disconnect:*(*&buf[8] + 40) didRemoteCancel:0];
          [v19 drain];
        }

        else
        {
LABEL_93:
          v58 = 0x403E000000000000;
          v48 = micro();
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v49 = VRTraceErrorLogLevelToCSTR();
            v50 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *v59 = 136315650;
              *&v59[4] = v49;
              *&v59[12] = 2080;
              *&v59[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
              *&v59[22] = 1024;
              v60 = 4569;
              _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPCONNECTEDCONFERENCE: Need to wait for SRTP to init... (audio)", v59, 0x1Cu);
            }
          }

          v51 = SRTPWaitUseEncryption(self->rtpHandle, &v58);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v52 = VRTraceErrorLogLevelToCSTR();
            v53 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v54 = micro();
              *v59 = 136316162;
              *&v59[4] = v52;
              *&v59[12] = 2080;
              *&v59[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
              *&v59[22] = 1024;
              v60 = 4571;
              v61 = 2048;
              v62 = v54 - v48;
              v63 = 1024;
              v64 = v51;
              _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPCONNECTEDCONFERENCE: end wait SRTP @ %.3f seconds (%08X)", v59, 0x2Cu);
            }
          }

          if ((v51 & 0x80000000) == 0)
          {
            [(TimingCollection *)self->perfTimers stopTimingForKey:4];
            goto LABEL_101;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            VRTraceErrorLogLevelToCSTR();
            if (VRTraceIsOSFaultDisabled())
            {
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:];
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              [VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:];
            }
          }

          +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", *&buf[8] + 40, 32018, 206, v51, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 4578], @"Audio Insecure", @"Encryption key setup did not complete successfully");
          [(VCCallSession *)self disconnect:*(*&buf[8] + 40) didRemoteCancel:0];
          [v19 drain];
        }

LABEL_121:
        v15 = 3;
LABEL_122:
        _Block_object_dispose(buf, 8);
        return v15;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v59 = 136315650;
          *&v59[4] = v34;
          *&v59[12] = 2080;
          *&v59[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
          *&v59[22] = 1024;
          v60 = 4520;
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPCONNECTEDCONFERENCE: use DTLS-SRTP is enabled...", v59, 0x1Cu);
        }
      }

      if (self->srtpKeyBytes)
      {
        [(VCCallSession *)self processSIPMessage:"DTLS-SRTP" msgOut:0 optional:&self->srtpKeyBytes confIndex:a8];
LABEL_101:
        [(TimingCollection *)self->perfTimers startTimingForKey:5];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __79__VCCallSession_Callbacks__sipCallback_callID_msgIn_msgOut_optional_confIndex___block_invoke;
        v57[3] = &unk_1E85F54F0;
        v57[4] = self;
        -[VCCallSession startAudioWithCompletionHandler:](self, "startAudioWithCompletionHandler:", [v57 copy]);
        [(TimingCollection *)self->perfTimers startTimingForKey:6];
        [(TimingCollection *)self->perfTimers startTimingForKey:7];
        [(VCCallSession *)self setUpFirstRemoteFrameTimer];
        *v59 = 0;
        *&v59[8] = v59;
        *&v59[16] = 0x2020000000;
        LOBYTE(v60) = 1;
        videoQueue = self->videoQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __79__VCCallSession_Callbacks__sipCallback_callID_msgIn_msgOut_optional_confIndex___block_invoke_2;
        block[3] = &unk_1E85F71D0;
        block[4] = self;
        block[5] = v59;
        block[6] = buf;
        dispatch_sync(videoQueue, block);
        [(TimingCollection *)self->perfTimers stopTimingForKey:6];
        if (*(*&v59[8] + 24))
        {
          if ([(VCCallInfo *)self->localCallInfo videoIsPaused])
          {
            [(VCCallSession *)self setPauseVideo:1 force:1 error:0];
          }

          [(VCCallSession *)self lock];
          [(VCCallSession *)self enableSessionHealthMonitor];
          [(VCCallSession *)self unlock];
          [(VCCallSession *)self handlePendingPrimaryConnectionChange];
          if ([(VCCallSession *)self shouldNotifyDelegateDidStartBeforeAudioSetup])
          {
            [(VCCallSession *)self notifyDelegateSessionStarted];
          }

          [v19 drain];
          v15 = 0;
        }

        else
        {
          [(TimingCollection *)self->perfTimers removeTimingForKey:7];
          [(VCCallSession *)self cancelFirstRemoteFrameTimer];
          [(VCCallSession *)self disconnect:*(*&buf[8] + 40) didRemoteCancel:0];
          [v19 drain];
          v15 = 3;
        }

        _Block_object_dispose(v59, 8);
        goto LABEL_122;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:];
        }
      }

      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", *&buf[8] + 40, 32018, 205, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 4528], @"Video Insecure", @"Encryption key setup did not complete successfully");
    }

    [(VCCallSession *)self disconnect:*(*&buf[8] + 40) didRemoteCancel:0];
    [v19 drain];
    goto LABEL_121;
  }

  if (v13 > 15)
  {
    switch(v13)
    {
      case 0x10:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v28;
            *&buf[12] = 2080;
            *&buf[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
            *&buf[22] = 1024;
            *&buf[24] = 4691;
            *&buf[28] = 2080;
            *&buf[30] = a5;
            _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d sipCallback(SIPGENERICREPORTLOG):%s", buf, 0x26u);
          }
        }

        reportingLog();
        return 0;
      case 0x11:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(VCTransportSession *)self->_transportSession handleConnectionSetupDataChangeMessageDelivered];
        }

        return 0;
      case 0x12:
        v16 = VCConnectionManager_CopyPrimaryConnection(self->connectionManager);
        if (!v16)
        {
          return 17;
        }

        CFRelease(v16);
        return 0;
    }

    goto LABEL_55;
  }

  if (v13 == 6)
  {
    [(VCCallSession *)self processSIPMessage:a5 msgOut:a6 optional:a7 confIndex:a8];
    return 0;
  }

  if (v13 == 8)
  {
    goto LABEL_28;
  }

  if (v13 != 15)
  {
LABEL_55:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v30;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCallSession(Callbacks) sipCallback:callID:msgIn:msgOut:optional:confIndex:]";
        *&buf[22] = 1024;
        *&buf[24] = 4711;
        *&buf[28] = 1024;
        *&buf[30] = v13;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d sipCallback: message %d requires no action.", buf, 0x22u);
      }
    }

    return 0;
  }

  if ([(VCCallInfo *)self->localCallInfo callID]!= v12)
  {
    return 0;
  }

  v15 = 0;
  if (a5 && a7 && a8)
  {
    reportingLog();
    return 0;
  }

  return v15;
}

uint64_t __79__VCCallSession_Callbacks__sipCallback_callID_msgIn_msgOut_optional_confIndex___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  [*(*(a1 + 32) + 672) stopTimingForKey:5];
  v6 = *(a1 + 32);
  if (a2)
  {
    if (v6[408] == 1)
    {
      [*(a1 + 32) setPauseAudio:1 force:1 error:0];
      v6 = *(a1 + 32);
    }

    [v6 updateLastReceivedPacketWithTimestamp:3 packetType:micro() + 10.0];
  }

  else
  {
    reportingSymptom();
    [*(a1 + 32) disconnect:a3 didRemoteCancel:0];
  }

  result = [*(a1 + 32) shouldNotifyDelegateDidStartBeforeAudioSetup];
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 32);

    return [v8 notifyDelegateSessionStarted];
  }

  return result;
}

uint64_t __79__VCCallSession_Callbacks__sipCallback_callID_msgIn_msgOut_optional_confIndex___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) startVideo:0 error:*(*(a1 + 48) + 8) + 40];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)setupIDSConnectionForCallID:(unsigned int)a3 destination:(id)a4 socket:(int)a5 error:(id *)a6
{
  v7 = *&a5;
  if (a4 || a5 != -1)
  {
    [(VCCallSession *)self lock];
    if (!self->_inviteDataRequested)
    {
      [(VCCallSession *)self initWithRelevantStorebagEntries];
      [(VCCallSession *)self reportOperatingMode];
    }

    if (![(VCCallInfo *)self->localCallInfo participantID])
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", hwrandom()];
      [(VCCallInfo *)self->localCallInfo setParticipantID:v10];
    }

    transportSession = self->_transportSession;
    [(VCTransportSession *)transportSession setDestination:a4];
    [(VCTransportSession *)transportSession setSocket:v7];
    if (self->isInitiator && [(VCCapabilities *)self->caps isKeyExchangeEnabled]&& (v12 = [(VCCallSession *)self setSKEBlobOnTransportSession]) != 0)
    {
      [GKVoiceChatError getNSError:a6 code:32018 detailedCode:v12 filePath:0 description:@"Media insecure" reason:@"Key exchange failed"];
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    [(VCCallSession *)self unlock];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) setupIDSConnectionForCallID:destination:socket:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCCallSession(PrivateMethods) setupIDSConnectionForCallID:destination:socket:error:];
      }
    }

    [GKVoiceChatError getNSError:a6 code:32016 detailedCode:261 filePath:0 description:@"Cannot setup IDS connection" reason:@"No destination/socket"];
    return 0;
  }

  return v13;
}

- (int)setSKEBlobOnTransportSession
{
  dispatch_time(0, 5000000000);
  v2 = SKEState_CopyBlobSync();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) setSKEBlobOnTransportSession];
    }
  }

  return v2;
}

- (BOOL)configureLegacyTransportWithInviteInfo:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:@"InviteDataConnectionBlob"];
  v7 = [v6 length];
  if (v7)
  {
    transportSession = self->_transportSession;
    if ([(VCCapabilities *)self->caps isRelayForced])
    {
      [(VCTransportSession *)transportSession setForceRelay];
    }

    [(VCTransportSession *)transportSession setAllowsRelay:[(VCCapabilities *)self->caps isRelayEnabled]];
    [(VCTransportSession *)transportSession setIsCaller:self->isInitiator];
    [(VCTransportSession *)transportSession setDelegate:self];
    [(VCTransportSession *)transportSession setLocalParticipantID:[(VCCallInfo *)self->localCallInfo participantID]];
    [(VCTransportSession *)transportSession setRemoteParticipantID:[(VCCallInfo *)self->remoteCallInfo participantID]];
    if ([(VCCapabilities *)self->caps isDTLSEnabled])
    {
      v9 = [(VCCallInfo *)self->remoteCallInfo callID];
    }

    else
    {
      v9 = 0;
    }

    [(VCTransportSession *)transportSession setRemoteCallID:v9];
    if ([(VCCapabilities *)self->caps isDTLSEnabled])
    {
      sessionID = self->sessionID;
    }

    else
    {
      sessionID = 0;
    }

    [(VCTransportSession *)transportSession setSessionID:sessionID];
    if ([(VCCallSession *)self isSKEOptimizationEnabled])
    {
      v11 = [MEMORY[0x1E696B098] valueWithPointer:self->skeState];
    }

    else
    {
      v11 = 0;
    }

    [(VCTransportSession *)transportSession setConnectionSetupPiggybackBlob:v11];
    [(VCTransportSession *)transportSession setRemoteConnectionData:v6];
    [(VCTransportSession *)transportSession setNATType:[(VCCallSession *)self natType]];
    [(VCTransportSession *)transportSession setOperatingMode:self->operatingMode];
    if ([(VCCapabilities *)self->caps isDTLSEnabled])
    {
      v12 = [(VCCallSession *)self retrieveIdentity];
      [(VCTransportSession *)transportSession setIdentity:v12];
      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      [(VCTransportSession *)transportSession setIdentity:0];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) configureLegacyTransportWithInviteInfo:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCCallSession(PrivateMethods) configureLegacyTransportWithInviteInfo:error:];
      }
    }

    [GKVoiceChatError getNSError:a4 code:32016 detailedCode:201 filePath:0 description:@"Cannot setup legacy connection" reason:@"No remote connection blob"];
  }

  return v7 != 0;
}

- (id)newSKEBlobWithRemoteSKEBlob:(id)a3
{
  v3 = [(VCCallSession *)self retrieveIdentity];
  if (v3)
  {
    v4 = v3;
    v5 = SKEState_Create();
    CFRelease(v4);
    if (v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) newSKEBlobWithRemoteSKEBlob:];
        }
      }
    }

    else
    {
      dispatch_time(0, 5000000000);
      SKEState_CopyBlobSync();
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) newSKEBlobWithRemoteSKEBlob:];
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) newSKEBlobWithRemoteSKEBlob:];
    }
  }

  return 0;
}

uint64_t __61__VCCallSession_PrivateMethods__newSKEBlobWithRemoteSKEBlob___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 1;
  return [*(a1 + 32) processSIPMessage:"SKECheckRemoteCert" msgOut:a4 optional:a3 confIndex:&v5];
}

- (int)setupEncryptionWithKey:(const __CFData *)a3 confIndex:(int *)a4
{
  v87 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (ErrorLogLevelForModule)
    {
      *v60 = 136315650;
      *&v60[4] = v8;
      *&v60[12] = 2080;
      *&v60[14] = "[VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:]";
      *&v60[22] = 1024;
      *&v60[24] = 4931;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setupEncryption", v60, 0x1Cu);
    }
  }

  v10 = MEMORY[0x1EEE9AC00](ErrorLogLevelForModule);
  memset(&v57[1], 170, 22);
  v11 = MEMORY[0x1EEE9AC00](v10);
  *(&v56 + 6) = v12;
  v55 = v12;
  *&v56 = v12;
  v54 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  *(&v53 + 6) = v14;
  v52 = v14;
  *&v53 = v14;
  v51 = v14;
  MEMORY[0x1EEE9AC00](v13);
  *v50 = v15;
  v86 = v15;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v85[0] = v16;
  v85[1] = v16;
  v84[2] = v16;
  v84[3] = v16;
  v84[0] = v16;
  v84[1] = v16;
  v83 = v15;
  v82[0] = v16;
  v82[1] = v16;
  v81[2] = v16;
  v81[3] = v16;
  v81[0] = v16;
  v81[1] = v16;
  v80 = v15;
  v78 = v16;
  v79 = v16;
  v76 = v16;
  v77 = v16;
  v74 = v16;
  v75 = v16;
  v73 = v15;
  v71 = v16;
  v72 = v16;
  v69 = v16;
  v70 = v16;
  v67 = v16;
  v68 = v16;
  if ([(VCCapabilities *)self->caps isKeyExchangeEnabled:v15]|| [(VCCapabilities *)self->caps isDTLSEnabled])
  {
    v17 = [(VCCapabilities *)self->caps isVideoEnabled];
    v18 = [(VCCapabilities *)self->caps isAudioEnabled];
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  v19 = [(VCCapabilities *)self->caps isDTLSEnabled];
  if (!a4 && !v19)
  {
LABEL_11:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 136315650;
        *&v60[4] = v20;
        *&v60[12] = 2080;
        *&v60[14] = "[VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:]";
        *&v60[22] = 1024;
        *&v60[24] = 4953;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- keyex cancels", v60, 0x1Cu);
      }
    }

LABEL_19:
    v23 = 0;
    v24 = 0;
    goto LABEL_20;
  }

  v22 = *a3;
  if (!v22 || CFDataGetLength(v22) <= 119)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:];
      }
    }

    goto LABEL_19;
  }

  v58 = v18;
  v59 = v17;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 136315650;
      *&v60[4] = v27;
      *&v60[12] = 2080;
      *&v60[14] = "[VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:]";
      *&v60[22] = 1024;
      *&v60[24] = 4962;
      _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- keyex ok", v60, 0x1Cu);
    }
  }

  if (self->isInitiator)
  {
    v29 = v57;
  }

  else
  {
    v29 = &v54;
  }

  if (self->isInitiator)
  {
    v30 = &v54;
  }

  else
  {
    v30 = v57;
  }

  if (self->isInitiator)
  {
    v31 = &v51;
  }

  else
  {
    v31 = v48;
  }

  if (self->isInitiator)
  {
    v32 = v48;
  }

  else
  {
    v32 = &v51;
  }

  v88.location = 0;
  v88.length = 30;
  CFDataGetBytes(v22, v88, v29);
  v89.location = 30;
  v89.length = 30;
  CFDataGetBytes(v22, v89, v30);
  v90.location = 60;
  v90.length = 30;
  CFDataGetBytes(v22, v90, v31);
  v91.location = 90;
  v91.length = 30;
  CFDataGetBytes(v22, v91, v32);
  ByteToHex(v84, 65, v57, 16);
  ByteToHex(v85 + 1, 29, &v57[2], 14);
  ByteToHex(v81, 65, &v54, 16);
  ByteToHex(v82 + 1, 29, &v56, 14);
  ByteToHex(&v74, 65, &v51, 16);
  ByteToHex(&v78 + 1, 29, &v53, 14);
  ByteToHex(&v67, 65, v48, 16);
  ByteToHex(&v71 + 1, 29, &v49, 14);
  if ([(VCCapabilities *)self->caps isKeyExchangeEnabled]|| [(VCCapabilities *)self->caps isDTLSEnabled])
  {
    v33 = self->_peerProtocolVersion != 0;
    v86 = 0;
    v83 = 0;
    v34 = [(VCCapabilities *)self->caps isVideoEnabled];
    v17 = v59;
    if (v34)
    {
      SRTPUseEncryption(self->rtpVideo, v84, v81, 5, 0, v33);
      v23 = v35;
      v17 = (v35 < 0) & v17;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v60 = 136315906;
          *&v60[4] = v36;
          *&v60[12] = 2080;
          *&v60[14] = "[VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:]";
          *&v60[22] = 1024;
          *&v60[24] = 5003;
          *&v60[28] = 1024;
          *&v60[30] = v23;
          _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d UseVideoEncryption: [%08x]", v60, 0x22u);
        }
      }
    }

    else
    {
      v23 = 0;
    }

    v80 = 0;
    v73 = 0;
    SRTPUseEncryption(self->rtpHandle, &v74, &v67, 5, 0, v33);
    v24 = v38;
    v39 = v38 < 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 136315906;
        *&v60[4] = v40;
        *&v60[12] = 2080;
        *&v60[14] = "[VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:]";
        *&v60[22] = 1024;
        *&v60[24] = 5011;
        *&v60[28] = 1024;
        *&v60[30] = v24;
        _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d UseAudioEncryption: [%08x]", v60, 0x22u);
      }
    }

    v18 = v39 & v58;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 136315650;
        *&v60[4] = v42;
        *&v60[12] = 2080;
        *&v60[14] = "[VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:]";
        *&v60[22] = 1024;
        *&v60[24] = 5012;
        _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- keyex done - using srtp", v60, 0x1Cu);
      }
    }

    if ([(VCCallSession *)self isSecureMessagingRequired])
    {
      v66 = 0u;
      memset(v65, 0, sizeof(v65));
      v44 = CheckInHandleDebug();
      v45 = v44[1808];
      if (v45 <= v44[2032])
      {
        v45 = v44[2032];
      }

      v46 = v44[1920];
      if (v46 <= v44[2144])
      {
        v46 = v44[2144];
      }

      DWORD2(v66) = v46;
      v47 = v44[1912];
      LODWORD(v65[0]) = v44[1800];
      *&v66 = __PAIR64__(v45, v47);
      CheckOutHandleDebug();
      v62 = v78;
      v63 = v79;
      v64 = v80;
      *v60 = v74;
      *&v60[16] = v75;
      *&v60[32] = v76;
      v61 = v77;
      *&v65[1] = v67;
      *&v65[3] = v68;
      v65[13] = v73;
      *&v65[9] = v71;
      *&v65[11] = v72;
      *&v65[5] = v69;
      *&v65[7] = v70;
      [-[VCCallSession activeControlChannel](self "activeControlChannel")];
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v18 = v58;
    v17 = v59;
  }

LABEL_20:
  pthread_mutex_lock(&self->srtpLock);
  if (self->didPrepareSRTP)
  {
    if (v17)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:];
        }
      }

      SRTPCancelEncryption();
    }

    if (v18)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) setupEncryptionWithKey:confIndex:];
        }
      }

      SRTPCancelEncryption();
    }
  }

  pthread_mutex_unlock(&self->srtpLock);
  SRTPClearExchangeInfo(v84);
  SRTPClearExchangeInfo(&v74);
  SRTPClearExchangeInfo(v81);
  SRTPClearExchangeInfo(&v67);
  if (v18)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v17)
  {
    return v23;
  }

  else
  {
    return v25;
  }
}

- (VCCallSession)initWithRelevantStorebagEntries
{
  v24 = *MEMORY[0x1E69E9840];
  NoRemotePacketsTimeout = GKSConnectivitySettings_GetNoRemotePacketsTimeout();
  v4 = 20.0;
  if (NoRemotePacketsTimeout > 20.0)
  {
    v4 = GKSConnectivitySettings_GetNoRemotePacketsTimeout();
  }

  self->noRemotePacketsTimeout = v4;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->noRemotePacketsTimeout;
      v16 = 136315906;
      v17 = v7;
      v18 = 2080;
      v19 = "[VCCallSession(PrivateMethods) initWithRelevantStorebagEntries]";
      v20 = 1024;
      v21 = 5059;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d noRemotePacketsTimeout = %f", &v16, 0x26u);
    }
  }

  +[GKSConnectivitySettings getRemoteMediaStallTimeout];
  self->_remoteMediaStallTimeout = v10;
  self->networkConditionsTimeoutInSeconds = fmax(GKSConnectivitySettings_GetNetworkConditionsTimeout(), 20.0);
  *&self->timeLastKnowGoodNetworkPLR = 0u;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      networkConditionsTimeoutInSeconds = self->networkConditionsTimeoutInSeconds;
      v16 = 136315906;
      v17 = v11;
      v18 = 2080;
      v19 = "[VCCallSession(PrivateMethods) initWithRelevantStorebagEntries]";
      v20 = 1024;
      v21 = 5069;
      v22 = 2048;
      v23 = networkConditionsTimeoutInSeconds;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d networkConditionsTimeoutInSeconds = %f", &v16, 0x26u);
    }
  }

  [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-video-throttling-timeout", "doubleValue"}];
  if (v14 <= 15.0)
  {
    v14 = 30.0;
  }

  self->videoThrottlingTimeout = v14;
  +[GKSConnectivitySettings getNoRemoteDuplicationThresholdFast];
  return [(VCConnectionManager *)self->connectionManager setNoRemoteDuplicationThresholdFast:?];
}

- (void)updateNetworkCheckHint:(double)a3
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (self->shouldTimeoutPackets)
  {
    v3 = self->networkConditionsTimeoutInSeconds * 0.25;
    if (a3 - self->timeLastKnowGoodNetworkPLR > v3 || a3 - self->timeLastKnowGoodNetworkRTT > v3 || a3 - self->lastReceivedPacketTimestamp > self->noRemotePacketsTimeout * 0.25)
    {
      if (self->isCurrentNetworkBad)
      {
        return;
      }

      self->isCurrentNetworkBad = 1;
      goto LABEL_7;
    }

    if (self->isCurrentNetworkBad)
    {
      self->isCurrentNetworkBad = 0;
LABEL_7:
      delegateNotificationQueue = self->delegateNotificationQueue;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __56__VCCallSession_PrivateMethods__updateNetworkCheckHint___block_invoke;
      v5[3] = &unk_1E85F3778;
      v5[4] = self;
      dispatch_async(delegateNotificationQueue, v5);
    }
  }
}

uint64_t __56__VCCallSession_PrivateMethods__updateNetworkCheckHint___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = [*(v2 + 24) callID];
  v5 = *(*(a1 + 32) + 1144);

  return [v3 session:v2 withCallID:v4 networkHint:v5];
}

- (void)logDetailedNetworkInformation
{
  v36 = *MEMORY[0x1E69E9840];
  [(VCTransportSession *)self->_transportSession getSignalStrengthBars:&self->_signalStrengthBars displayBars:&self->_signalStrengthDisplayBars maxDisplayBars:&self->_signalStrengthMaxDisplayBars];
  sampleLogCount = self->sampleLogCount;
  self->sampleLogCount = sampleLogCount + 1;
  if ((sampleLogCount & 3) == 0 && VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      [(VCCallSession *)self networkQuality];
      v7 = v6;
      [(VCCallSession *)self roundTripTime];
      v9 = v8;
      v10 = [(VCCallSession *)self bandwidthUpstream];
      [(VCCallSession *)self packetLossRate5Secs];
      v12 = v11 * 100.0;
      [(VCCallSession *)self packetLateAndMissingRatio];
      v14 = 136317698;
      v15 = v4;
      v16 = 2080;
      v17 = "[VCCallSession(PrivateMethods) logDetailedNetworkInformation]";
      v18 = 1024;
      v19 = 5132;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      v26 = 2048;
      v27 = v12;
      v28 = 2048;
      v29 = v13 * 100.0;
      v30 = 1024;
      v31 = [(VCCallSession *)self signalStrengthBars];
      v32 = 1024;
      v33 = [(VCCallSession *)self signalStrengthDisplayBars];
      v34 = 1024;
      v35 = [(VCCallSession *)self signalStrengthMaxDisplayBars];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d NQ = %.3f, RTT = %.3f, TxBW = %ub/sec, PLR = %.2f%%, PLaMR = %.2f%%, signal = [%d %d %d]", &v14, 0x5Cu);
    }
  }
}

- (void)setupDTLSDefaults
{
  v22 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forceDTLS", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    [(VCCapabilities *)self->caps setIsDTLSEnabled:AppIntegerValue != 0];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(VCCapabilities *)self->caps isDTLSEnabled];
        v7 = [(VCCallInfo *)self->localCallInfo callID];
        *buf = 136316162;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCCallSession(PrivateMethods) setupDTLSDefaults]";
        v16 = 1024;
        v17 = 5142;
        v18 = 1024;
        v19 = v6;
        v20 = 1024;
        v21 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d DTLS force set to (%d) for call (%d): ", buf, 0x28u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(VCCallInfo *)self->localCallInfo callID];
        *buf = 136315906;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCCallSession(PrivateMethods) setupDTLSDefaults]";
        v16 = 1024;
        v17 = 5146;
        v18 = 1024;
        v19 = v10;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d NO DTLS force set for call (%d).  We are ignoring the capabilities passed.", buf, 0x22u);
      }
    }

    [(VCCapabilities *)self->caps setIsDTLSEnabled:0];
  }
}

- (void)setupPeerInfo:(id)a3 usingInviteData:(id)a4 isCaller:(BOOL)a5 capabilities:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->isStarted)
  {
    v7 = a5;
    self->isStarted = 1;
    self->isInitiator = a5;
    v11 = objc_alloc_init(VCCallInfo);
    self->remoteCallInfo = v11;
    [(VCCallInfo *)v11 setParticipantID:a3];
    [(VCCallSession *)self setRemoteCallInfoFromInviteDictionary:a4];
    SIPSetEnableCompression(self->hSIP, [(VCCallInfo *)self->remoteCallInfo supportSDPCompression]);
    [(VCCallSession *)self setCapabilities:a6];
    [(VCCallSession *)self setupDTLSDefaults];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(VCCapabilities *)self->caps isAudioPausedToStart];
        v15 = [(VCCapabilities *)self->caps isVideoPausedToStart];
        v17 = 136316162;
        v18 = v12;
        v19 = 2080;
        v20 = "[VCCallSession(PrivateMethods) setupPeerInfo:usingInviteData:isCaller:capabilities:]";
        v21 = 1024;
        v22 = 5178;
        v23 = 1024;
        v24 = v14;
        v25 = 1024;
        v26 = v15;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setupPeerInfo isAudioPausedToStart = %d, isVideoPausedToStart = %d", &v17, 0x28u);
      }
    }

    self->audioIsPaused = [(VCCapabilities *)self->caps isAudioPausedToStart];
    [(VCCallInfo *)self->localCallInfo setVideoIsPaused:[(VCCapabilities *)self->caps isVideoPausedToStart]];
    if ([(VCCapabilities *)self->caps isKeyExchangeEnabled])
    {
      [(VCCallSession *)self setLocalIdentityForKeyExchange];
    }

    v16 = 5;
    if (!v7)
    {
      v16 = 6;
    }

    self->state = v16;
    if (self->hSIP != 0xFFFFFFFFLL)
    {
      self->_sipState = v16;
      [(VCCallSession *)self setupConnectionTimeoutTimerWithErrorCode:32002 detailedCode:257 description:@"Connection to remote participant timed out" reason:@"Connection took too long"];
    }

    [(VCCallSession *)self setupMessaging];
  }
}

- (__SecIdentity)retrieveIdentity
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698CF30] copyIdentity];
  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCCallSession(PrivateMethods) retrieveIdentity]";
        v11 = 1024;
        v12 = 5213;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d retreiveIdentity: using APS identity...", &v7, 0x1Cu);
      }
    }
  }

  [(VCCallSession *)self logIdentity:v3];
  return v3;
}

- (void)notifyDelegateAndEndCall:(int64_t)a3 didRemoteCancel:(BOOL)a4 error:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = (a3 > 7) | (0x7Fu >> a3);
  v10 = (a3 < 8) & (0x60u >> a3);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      sentClientSuccessfulDidStart = self->sentClientSuccessfulDidStart;
      *buf = 136316674;
      v23 = v11;
      v24 = 2080;
      v25 = "[VCCallSession(PrivateMethods) notifyDelegateAndEndCall:didRemoteCancel:error:]";
      v26 = 1024;
      v27 = 5244;
      v28 = 1024;
      v29 = v9 & 1;
      v30 = 1024;
      v31 = v10;
      v32 = 1024;
      v33 = a3;
      v34 = 1024;
      v35 = sentClientSuccessfulDidStart;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: notifying delegate didStop %d:%d (%d, %d)", buf, 0x34u);
    }
  }

  if (v9)
  {
    if (self->hSIP != 0xFFFFFFFFLL)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__VCCallSession_PrivateMethods__notifyDelegateAndEndCall_didRemoteCancel_error___block_invoke;
      block[3] = &unk_1E85F63A0;
      v21 = a4;
      block[5] = a5;
      block[6] = a3;
      block[4] = self;
      dispatch_async(global_queue, block);
    }

    delegateNotificationQueue = self->delegateNotificationQueue;
    if (v10)
    {
      v16 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v17 = __80__VCCallSession_PrivateMethods__notifyDelegateAndEndCall_didRemoteCancel_error___block_invoke_2;
    }

    else
    {
      v16 = v18;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v17 = __80__VCCallSession_PrivateMethods__notifyDelegateAndEndCall_didRemoteCancel_error___block_invoke_3;
    }

    v16[2] = v17;
    v16[3] = &unk_1E85F37F0;
    v16[4] = self;
    v16[5] = a5;
    dispatch_async(delegateNotificationQueue, v16);
  }
}

uint64_t __80__VCCallSession_PrivateMethods__notifyDelegateAndEndCall_didRemoteCancel_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 calculateSIPEndAction:*(a1 + 56) currentState:*(a1 + 48) error:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 24) callID];
  v5 = *(a1 + 40);

  return [v2 doSipEndAction:v3 callID:v4 error:v5];
}

void __80__VCCallSession_PrivateMethods__notifyDelegateAndEndCall_didRemoteCancel_error___block_invoke_2(uint64_t a1)
{
  v2 = VCConnectionManager_CopyPrimaryConnection(*(*(a1 + 32) + 80));
  [*(*(a1 + 32) + 8) session:*(a1 + 32) didStart:0 connectionType:objc_msgSend(v2 localInterfaceType:"type") remoteInterfaceType:objc_msgSend(v2 error:{"localInterfaceTypeString"), objc_msgSend(v2, "remoteInterfaceTypeString"), *(a1 + 40)}];
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __80__VCCallSession_PrivateMethods__notifyDelegateAndEndCall_didRemoteCancel_error___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 8) session:*(a1 + 32) didStopWithError:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 session:? cleanUpWithDelay:? error:?];
}

- (int64_t)calculateSIPEndAction:(BOOL)a3 currentState:(int64_t)a4 error:(id)a5
{
  if (a3)
  {
    return 0;
  }

  if (a5)
  {
    v8 = [a5 code];
    if ((v8 - 32003) <= 6 && ((1 << (v8 - 3)) & 0x61) != 0)
    {
      return 3;
    }
  }

  switch(a4)
  {
    case 5:
      return 2;
    case 7:
      return 3;
    case 6:
      return self->didSend200OK;
    default:
      return 1;
  }
}

- (void)reportDashboardEndResult:(BOOL)a3
{
  v35 = *MEMORY[0x1E69E9840];
  state = self->state;
  if (state > 4)
  {
    if (state != 5)
    {
      if (state != 6)
      {
        return;
      }

      reportingAgent = self->reportingAgent;
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    reportingAgent = self->reportingAgent;
    v6 = 0;
LABEL_9:

    MEMORY[0x1EEDE97A0](reportingAgent, v6, a3);
    return;
  }

  if (state != 1)
  {
    if (state != 3)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!VCCTServiceMonitor_GetIsInHomeCountry() && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = v7;
      v19 = 2080;
      v20 = "[VCCallSession(PrivateMethods) reportDashboardEndResult:]";
      v21 = 1024;
      v22 = 5360;
      v23 = 2080;
      v24 = "home country";
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d reportDashboardEndResult: This call is in %s.", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VCConnectionManager *)self->connectionManager signalingExcessiveCellularRxBytes];
      v12 = [(VCConnectionManager *)self->connectionManager signalingExcessiveCellularTxBytes];
      v13 = [(VCConnectionManager *)self->connectionManager mediaExcessiveCellularRxBytes];
      v14 = [(VCConnectionManager *)self->connectionManager mediaExcessiveCellularTxBytes];
      v15 = [(VCConnectionManager *)self->connectionManager budgetConsumingCellularTxBytes];
      v16 = [(VCConnectionManager *)self->connectionManager budgetConsumingCellularRxBytes];
      *buf = 136317186;
      v18 = v9;
      v19 = 2080;
      v20 = "[VCCallSession(PrivateMethods) reportDashboardEndResult:]";
      v21 = 1024;
      v22 = 5363;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      v27 = 2048;
      v28 = v13;
      v29 = 2048;
      v30 = v14;
      v31 = 2048;
      v32 = v15;
      v33 = 2048;
      v34 = v16;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Reporting excessive cellular data usage: signalingExcessiveCellularRxBytes %llu, signalingExcessiveCellularTxBytes %llu, mediaExcessiveCellularRxBytes %llu, mediaExcessiveCellularTxBytes %llu budgetConsumingCellularTxBytes:%llu budgetConsumingCellularRxBytes:%llu", buf, 0x58u);
    }
  }

  [(VCConnectionManager *)self->connectionManager signalingExcessiveCellularRxBytes];
  [(VCConnectionManager *)self->connectionManager signalingExcessiveCellularTxBytes];
  [(VCConnectionManager *)self->connectionManager mediaExcessiveCellularRxBytes];
  [(VCConnectionManager *)self->connectionManager mediaExcessiveCellularTxBytes];
  [(VCCallSession *)self dtxMetrics];
  reportingDisconnected();
}

- (void)cleanupMedia
{
  v6 = objc_alloc_init(SnapshotTimer);
  [(SnapshotTimer *)v6 checkinWithTimeout:@"Media cleanup" forTask:1.75];
  pthread_mutex_lock(&self->srtpLock);
  if (self->didPrepareSRTP)
  {
    SRTPCancelEncryption();
    SRTPCancelEncryption();
    self->didPrepareSRTP = 0;
  }

  RTPSetAudioReceiver(self->rtpVideo, 0);
  self->rtpHandle = 0xFFFFFFFFLL;
  self->rtpVideo = 0xFFFFFFFFLL;
  audioReceiver = self->audioReceiver;
  if (audioReceiver)
  {
    VCAudioReceiver_Finalize(&audioReceiver->var0.var0);
    self->audioReceiver = 0;
  }

  self->_captionsReceiver = 0;
  pthread_mutex_unlock(&self->srtpLock);
  RTPCloseHandle();
  RTPCloseHandle();
  VCMediaControlInfoGeneratorDeregisterCallbacks(self->videoMediaControlInfoGenerator, self);
  VCMediaControlInfoGeneratorDeregisterCallbacks(self->audioMediaControlInfoGenerator, self);
  if (self->isWaitingForICEResult)
  {
    v4 = +[VideoConferenceManager defaultVideoConferenceManager];
    v5 = v4;
    [objc_msgSend(v4 "resultQueue")];
  }

  [(VCCallSession *)self disableSessionHealthMonitor];
  [(SnapshotTimer *)v6 checkout];
}

- (void)startPausedHeartbeat
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (!self->pausedAudioHeartBeat && self->shouldTimeoutPackets)
  {
    [(VCPacketBundler *)[(VCAudioTransmitter *)self->audioTransmitter audioBundler] resetBuffer];
    [(VCPacketBundler *)[(VCAudioTransmitter *)self->audioTransmitter audioBundlerShortRED] resetBuffer];
    [+[VCDefaults sharedInstance](VCDefaults pauseHeartbeatInterval];
    if (v3 > 0.0)
    {
      v4 = v3;
      global_queue = dispatch_get_global_queue(2, 0);
      v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
      self->pausedAudioHeartBeat = v6;
      if (v6)
      {
        dispatch_source_set_timer(v6, 0, (v4 * 1000000000.0), 0x5F5E100uLL);
        pausedAudioHeartBeat = self->pausedAudioHeartBeat;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __53__VCCallSession_PrivateMethods__startPausedHeartbeat__block_invoke;
        v8[3] = &unk_1E85F3778;
        v8[4] = self;
        dispatch_source_set_event_handler(pausedAudioHeartBeat, v8);
        dispatch_resume(self->pausedAudioHeartBeat);
      }
    }
  }
}

void __53__VCCallSession_PrivateMethods__startPausedHeartbeat__block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(*(a1 + 32) + 1120) sendMessage:@"Ping!" withTopic:@"VCPingTopic"];
  [*(a1 + 32) unlock];
  [*(a1 + 32) updateLastReceivedPacketWithTimestamp:7 packetType:VCAudioReceiver_GetLatestAudioTimestamp(*(*(a1 + 32) + 1224))];
  v2 = *(*(a1 + 32) + 1224);

  VCAudioReceiver_DiscardQueueExcess(v2);
}

- (void)stopPausedHeartbeat
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->pausedAudioHeartBeat)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v3;
        v8 = 2080;
        v9 = "[VCCallSession(PrivateMethods) stopPausedHeartbeat]";
        v10 = 1024;
        v11 = 5471;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d We are tearing down our heartbeat!", &v6, 0x1Cu);
      }
    }

    dispatch_source_cancel(self->pausedAudioHeartBeat);
    pausedAudioHeartBeat = self->pausedAudioHeartBeat;
    if (pausedAudioHeartBeat)
    {
      dispatch_release(pausedAudioHeartBeat);
      self->pausedAudioHeartBeat = 0;
    }
  }
}

- (void)logPerfTimings
{
  v4 = 0;
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6986650];
  *&v2 = 136316162;
  v9 = v2;
  do
  {
    if ([(TimingCollection *)self->perfTimers hasKey:v4, v9]&& [(TimingCollection *)self->perfTimers isValidTimingForKey:v4]&& VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        [(TimingCollection *)self->perfTimers timingForKey:v4];
        *buf = v9;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCCallSession(PrivateMethods) logPerfTimings]";
        v14 = 1024;
        v15 = 5482;
        v16 = 1024;
        v17 = v4;
        v18 = 1024;
        v19 = (v8 * 1000.0);
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d sendTimings:Key = %d, value = %d", buf, 0x28u);
      }
    }

    v4 = (v4 + 1);
  }

  while (v4 != 24);
}

- (void)sendTimings
{
  v3[1] = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self logPerfTimings];
  v2 = @"VCSPIDSID";
  v3[0] = &unk_1F5799E58;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  reportingPerfTimes();
}

- (void)remotePauseDidChangeToState:(BOOL)a3 forVideo:(BOOL)a4
{
  v8 = *MEMORY[0x1E69E9840];
  videoQueue = self->videoQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCCallSession_PrivateMethods__remotePauseDidChangeToState_forVideo___block_invoke;
  block[3] = &unk_1E85F41F8;
  v6 = a4;
  block[4] = self;
  v7 = a3;
  dispatch_async(videoQueue, block);
}

uint64_t __70__VCCallSession_PrivateMethods__remotePauseDidChangeToState_forVideo___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 32) setVideoIsPaused:*(a1 + 41)];
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
    v4 = *(a1 + 41);
    v5 = [*(v2 + 24) callID];

    return [v3 remoteVideoDidPause:v4 callID:v5];
  }

  else
  {
    if (*(a1 + 41))
    {
      VCAudioReceiver_Reset(*(*(a1 + 32) + 1224));
      v7 = *(a1 + 41);
    }

    else
    {
      v7 = 0;
    }

    [*(*(a1 + 32) + 80) setConnectionPause:v7 & 1 isLocalConnection:0];
    AFRCSetAudioPaused(*(*(a1 + 32) + 344), *(a1 + 41), 0);
    v8 = *(a1 + 32);
    v9 = *(v8 + 352);
    if (v9)
    {
      [objc_msgSend(v9 "mediaController")];
      v8 = *(a1 + 32);
    }

    v10 = *(v8 + 8);
    v11 = *(a1 + 41);
    v12 = [*(v8 + 24) callID];

    return [v10 remoteAudioDidPause:v11 callID:v12];
  }
}

- (void)processSIPMessage:(char *)a3 msgOut:(char *)a4 optional:(void *)a5 confIndex:(int *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v11;
      v35 = 2080;
      v36 = "[VCCallSession(PrivateMethods) processSIPMessage:msgOut:optional:confIndex:]";
      v37 = 1024;
      v38 = 5518;
      v39 = 2080;
      v40 = a3;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SipCallbackNotification SIPMESSAGE...%s", buf, 0x26u);
    }
  }

  if (!strcmp("SKEComplete", a3) || !strcmp("DTLS-SRTP", a3))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v16;
        v35 = 2080;
        v36 = "[VCCallSession(PrivateMethods) processSIPMessage:msgOut:optional:confIndex:]";
        v37 = 1024;
        v38 = 5522;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SipCallbackNotification SKEComplete...", buf, 0x1Cu);
      }
    }

    [(VCCallSession *)self setupEncryptionWithKey:a5 confIndex:a6];
  }

  else if (!strcmp("SKECheckRemoteCert", a3))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v18;
        v35 = 2080;
        v36 = "[VCCallSession(PrivateMethods) processSIPMessage:msgOut:optional:confIndex:]";
        v37 = 1024;
        v38 = 5525;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SipCallbackNotification SKECheckRemoteCert...", buf, 0x1Cu);
      }
    }

    if (a5)
    {
      if (!self->peerCN)
      {
        goto LABEL_31;
      }

      v20 = SecCertificateCopyCommonNames();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(NSString *)self->peerCN UTF8String];
          *buf = 136315906;
          *&buf[4] = v21;
          v35 = 2080;
          v36 = "[VCCallSession(PrivateMethods) processSIPMessage:msgOut:optional:confIndex:]";
          v37 = 1024;
          v38 = 5546;
          v39 = 2080;
          v40 = v23;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SKECheckRemoteCert: peerCN = '%s'", buf, 0x26u);
        }
      }

      if (!v20)
      {
        goto LABEL_32;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v26 = [objc_msgSend(v20 "description")];
          *buf = 136315906;
          *&buf[4] = v24;
          v35 = 2080;
          v36 = "[VCCallSession(PrivateMethods) processSIPMessage:msgOut:optional:confIndex:]";
          v37 = 1024;
          v38 = 5549;
          v39 = 2080;
          v40 = v26;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Common names: %s", buf, 0x26u);
        }
      }

      v27 = [v20 containsObject:self->peerCN];
      CFRelease(v20);
      if (v27)
      {
LABEL_31:
        v28 = 1;
      }

      else
      {
LABEL_32:
        if (VRTraceGetErrorLogLevelForModule() > 6)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v29;
            v35 = 2080;
            v36 = "[VCCallSession(PrivateMethods) processSIPMessage:msgOut:optional:confIndex:]";
            v37 = 1024;
            v38 = 5561;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SKECheckRemoteCert: specified peer common name not found...", buf, 0x1Cu);
          }
        }

        v28 = 0;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v31;
          v35 = 2080;
          v36 = "[VCCallSession(PrivateMethods) processSIPMessage:msgOut:optional:confIndex:]";
          v37 = 1024;
          v38 = 5565;
          v39 = 1024;
          LODWORD(v40) = v28;
          _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SipCallbackNotification SKECheckRemoteCert valid == %d...", buf, 0x22u);
        }
      }

      if (a4)
      {
        *a4 = v28;
      }
    }
  }

  else if (!strcmp("SKEReportError", a3))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v13;
        v35 = 2080;
        v36 = "[VCCallSession(PrivateMethods) processSIPMessage:msgOut:optional:confIndex:]";
        v37 = 1024;
        v38 = 5571;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SipCallbackNotification SKEReportError...", buf, 0x1Cu);
      }
    }

    if (a5)
    {
      *buf = 0;
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", buf, 32018, ([objc_msgSend(a5 objectForKeyedSubscript:{@"skeDetailCode", "intValue"}] + 500), objc_msgSend(a5, "objectForKeyedSubscript:", @"filePath"), objc_msgSend(a5, "objectForKeyedSubscript:", @"description"), objc_msgSend(a5, "objectForKeyedSubscript:", @"reason"));
      global_queue = dispatch_get_global_queue(2, 0);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __77__VCCallSession_PrivateMethods__processSIPMessage_msgOut_optional_confIndex___block_invoke;
      v33[3] = &unk_1E85F37F0;
      v33[4] = self;
      v33[5] = *buf;
      dispatch_async(global_queue, v33);
    }
  }
}

- (void)resetState
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCCallSession(PrivateMethods) resetState]";
      v8 = 1024;
      v9 = 5604;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d The call failed.", &v4, 0x1Cu);
    }
  }
}

- (void)setupCalleeSIPStartTimeout:(float)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v6 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCCallSession_PrivateMethods__setupCalleeSIPStartTimeout___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = v6;
  v10 = a3;
  dispatch_after(v7, global_queue, block);
}

uint64_t __60__VCCallSession_PrivateMethods__setupCalleeSIPStartTimeout___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) strong];
  if (result)
  {
    v3 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v11 = v4;
        v12 = 2080;
        v13 = "[VCCallSession(PrivateMethods) setupCalleeSIPStartTimeout:]_block_invoke";
        v14 = 1024;
        v15 = 5618;
        v16 = 1024;
        v17 = [v3 state] != 1;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d inviteeICEResultTimer:ready to go, %d", buf, 0x22u);
      }
    }

    [v3 lock];
    if ([v3 state] != 7 && objc_msgSend(v3, "state") != 1)
    {
      if ([v3 didSend200OK])
      {
        [v3 disconnectWithNoRemotePackets:212];
      }

      else
      {
        v6 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
        global_queue = dispatch_get_global_queue(0, 0);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __60__VCCallSession_PrivateMethods__setupCalleeSIPStartTimeout___block_invoke_1335;
        v8[3] = &unk_1E85F38B8;
        v8[4] = *(a1 + 32);
        v9 = *(a1 + 40);
        dispatch_after(v6, global_queue, v8);
      }
    }

    return [v3 unlock];
  }

  return result;
}

void *__60__VCCallSession_PrivateMethods__setupCalleeSIPStartTimeout___block_invoke_1335(uint64_t a1)
{
  result = [*(a1 + 32) strong];
  if (result)
  {
    v3 = result;
    [result lock];
    if ([v3 state] != 7 && objc_msgSend(v3, "state") != 1)
    {
      [v3 disconnectWithNoRemotePackets:212 timeoutUsed:*(a1 + 40)];
    }

    return [v3 unlock];
  }

  return result;
}

- (void)addScreenConfigToSDP:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(SDPMediaLine);
  [(SDPMediaLine *)v5 setRtpId:[(VCCallSession *)self videoRTPID]];
  v6 = [+[VCVideoRuleCollectionsScreen sharedInstance](VCVideoRuleCollectionsScreen supportedPayloads];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
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

        v11 = [*(*(&v13 + 1) + 8 * v10) intValue];
        [SDPMini setPayload:v11 mediaLine:v5];
        -[SDPMediaLine addWifiRules:cellularRules:payload:direction:](v5, "addWifiRules:cellularRules:payload:direction:", [+[VCVideoRuleCollectionsScreen sharedInstance](VCVideoRuleCollectionsScreen getVideoRulesForTransport:"getVideoRulesForTransport:payload:encodingType:" payload:1 encodingType:v11, 1], [+[VCVideoRuleCollectionsScreen sharedInstance](VCVideoRuleCollectionsScreen getVideoRulesForTransport:"getVideoRulesForTransport:payload:encodingType:" payload:2 encodingType:v11, 1], v11, 0);
        -[SDPMediaLine addWifiRules:cellularRules:payload:direction:](v5, "addWifiRules:cellularRules:payload:direction:", [+[VCVideoRuleCollectionsScreen sharedInstance](VCVideoRuleCollectionsScreen getVideoRulesForTransport:"getVideoRulesForTransport:payload:encodingType:" payload:1 encodingType:v11, 2], [+[VCVideoRuleCollectionsScreen sharedInstance](VCVideoRuleCollectionsScreen getVideoRulesForTransport:"getVideoRulesForTransport:payload:encodingType:" payload:2 encodingType:v11, 2], v11, 1);
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  [a3 addMediaLine:v5 mediaType:3];
}

- (BOOL)createSDP:(int *)a3 audioPayloadCount:(int)a4 secondaryPayloadTypes:(int *)a5 secondaryPayloadCount:(int)a6 videoPayloadTypes:(int *)a7 videoPayloadCount:(int)a8 localFeatureList:(id)a9 answerBandwidth:(int)a10 maxBandwidth:(int)a11 imageSizesSend:(imageTag *)a12 imageSendCount:(int *)a13 imageSizesRecv:(imageTag *)a14 imageRecvCount:(int *)a15 sdp:(char *)a16 numSDPBytes:(int *)a17 error:(id *)a18
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = [(VCCapabilities *)self->caps isVideoEnabled];
  v23 = objc_alloc_init(SDPMini);
  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"GKVoiceChatService"];
  [(SDPMini *)v23 setOrigin:v24];

  [(SDPMini *)v23 setFeatureListDict:a9];
  -[SDPMini setAacBlockSize:](v23, "setAacBlockSize:", [MEMORY[0x1E696AD98] numberWithInt:self->aacBlockSize]);
  [(SDPMini *)v23 setAllowAudioRecording:self->allowAudioRecording];
  -[SDPMini setAudioRTPID:](v23, "setAudioRTPID:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCCallSession audioRTPID](self, "audioRTPID")}]);
  v43 = 0;
  if ((AUIOGetAUNumber(&v43) & 0x80000000) == 0)
  {
    -[SDPMini setAudioUnitModel:](v23, "setAudioUnitModel:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v43]);
  }

  -[SDPMini setAnswerBandwidth:](v23, "setAnswerBandwidth:", [MEMORY[0x1E696AD98] numberWithInt:a10]);
  -[SDPMini setMaxBandwidth:](v23, "setMaxBandwidth:", [MEMORY[0x1E696AD98] numberWithInt:a11]);
  if (![(VCCallInfo *)self->remoteCallInfo sdp]|| [(VCCallInfo *)self->remoteCallInfo supportsDynamicMaxBitrate])
  {
    [(SDPMini *)v23 setAllowsDynamicMaxBitrate:1];
    [(SDPMini *)v23 setAllowsContentsChangeWithAspectPreservation:1];
  }

  if (([(VCCallSession *)self deviceRole]== 2 || [(VCCallSession *)self deviceRole]== 4) && [(VCCallSession *)self basebandCodecSampleRate]&& [(VCCallSession *)self basebandCodecType])
  {
    [(SDPMini *)v23 setBasebandCodecType:self->basebandCodecType sampleRate:self->basebandCodecSampleRate];
  }

  if (a4 >= 1)
  {
    v25 = a4;
    do
    {
      v26 = [(SDPMini *)v23 audioPayloads];
      -[NSMutableArray addObject:](v26, "addObject:", [MEMORY[0x1E696AD98] numberWithInt:*a3]);
      v27 = *a3++;
      if ((v27 - 104) <= 2)
      {
        [(SDPMini *)v23 setUseSbr:self->useSBR blockSize:self->aacBlockSize forAACFormat:?];
      }

      --v25;
    }

    while (v25);
  }

  if (a5 && a6 && self->allowAudioSwitching && a6 >= 1)
  {
    v28 = a6;
    do
    {
      v29 = [(SDPMini *)v23 secondaryAudioPayloads];
      v30 = *a5++;
      -[NSMutableArray addObject:](v29, "addObject:", [MEMORY[0x1E696AD98] numberWithInt:v30]);
      --v28;
    }

    while (v28);
  }

  v31 = a16;
  v32 = v42;
  if (v42)
  {
    v39 = [(SDPMini *)v23 setVideoPayloads:a7 count:a8];
    v33 = [(SDPMini *)v23 getMediaLineForType:2];
    [v33 setRtpId:{-[VCCallSession videoRTPID](self, "videoRTPID")}];
    if (a7 && a8 >= 1)
    {
      v34 = 0;
      do
      {
        [v33 createVideoImageAttr:a7[v34] direction:0 dimensions:a12[v34] count:a13[v34]];
        [v33 createVideoImageAttr:a7[v34] direction:1 dimensions:a14[v34] count:a15[v34]];
        ++v34;
      }

      while (v34 < a8);
    }

    if (self->isRTCPFBEnabled)
    {
      [(SDPMini *)v23 setVideoRTCPFB:1 useNACK:1];
    }

    v32 = v42;
    v31 = a16;
    v35 = v39;
  }

  else
  {
    v35 = 0;
  }

  v36 = [(SDPMini *)v23 toStringWithVideoEnabled:v32];
  if (v31 && a17 && ((v37 = v36, !v32) || v35) && v23 && v36 && *a17 > [v36 lengthOfBytesUsingEncoding:4])
  {
    strlcpy(v31, [v37 UTF8String], *a17);
    *a17 = [v37 lengthOfBytesUsingEncoding:4] + 1;
    [(VCCallInfo *)self->localCallInfo setSdp:v23];

    return 1;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) createSDP:audioPayloadCount:secondaryPayloadTypes:secondaryPayloadCount:videoPayloadTypes:videoPayloadCount:localFeatureList:answerBandwidth:maxBandwidth:imageSizesSend:imageSendCount:imageSizesRecv:imageRecvCount:sdp:numSDPBytes:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCCallSession(PrivateMethods) createSDP:audioPayloadCount:secondaryPayloadTypes:secondaryPayloadCount:videoPayloadTypes:videoPayloadCount:localFeatureList:answerBandwidth:maxBandwidth:imageSizesSend:imageSendCount:imageSizesRecv:imageRecvCount:sdp:numSDPBytes:error:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a18, 32002, 214, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 5777], @"Could not create session description", 0);

    return 0;
  }
}

- (void)negotiateMediaMaxBandwidth
{
  v29 = *MEMORY[0x1E69E9840];
  [(VCBitrateArbiter *)self->callSessionBitrateArbiter updateNegotiatedSettings:[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedSettings]];
  v3 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
  v4 = VCBitrateArbiter_ModeFromOperatingMode(self->operatingMode);
  v5 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v3 forLocalInterface:1 arbiterMode:v4 encodeRule:self->_currentEncodeRule];
  v6 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v3 forLocalInterface:0 arbiterMode:v4 encodeRule:self->_currentEncodeRule];
  if (v3)
  {
    CFRelease(v3);
  }

  [(VCCallInfo *)self->remoteCallInfo setMaxBandwidth:v6];
  v7 = VCConnectionManager_CopyPrimaryConnection(self->connectionManager);
  if (VCConnection_IsRemoteOnCellular(v7))
  {
    [(VCCallInfo *)self->remoteCallInfo setCellBandwidth:v6];
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (self->operatingMode == 4)
  {
    carrierBitrateCap = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedScreenShareCellularBitrate];
  }

  else
  {
    carrierBitrateCap = self->carrierBitrateCap;
  }

  v10 = [(VCCallSession *)self treatAsCellular];
  if (v8 >= carrierBitrateCap)
  {
    v11 = carrierBitrateCap;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  self->callSessionBitrate = v12;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316418;
      v18 = v13;
      v19 = 2080;
      v20 = "[VCCallSession(PrivateMethods) negotiateMediaMaxBandwidth]";
      v21 = 1024;
      v22 = 6083;
      v23 = 1024;
      v24 = v5;
      v25 = 1024;
      v26 = v6;
      v27 = 1024;
      v28 = v12;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d localMaxBandwidth: %u remoteMaxBandwidth: %u answerBandwidth: %u", &v17, 0x2Eu);
    }
  }

  operatingMode = self->operatingMode;
  if (operatingMode == 7 || operatingMode == 2)
  {
    v16 = [(VCCallSession *)self currentAudioCap];
    AFRCSetTxCap(self->hAFRC, v16);
    [(AVCRateController *)self->_rateController setTargetBitrateCap:v16];
  }
}

- (void)applyNegotiatedSettings
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedSettings];
  [(VCCallInfo *)self->remoteCallInfo setSupportsDynamicMaxBitrate:[(VCMediaNegotiatorResults *)v3 supportsDynamicMaxBitrate]];
  [(VCCallSession *)self negotiateMediaMaxBandwidth];
  if ([(VCCallSession *)self deviceRole]== 1 || [(VCCallSession *)self deviceRole]== 9)
  {
    if ([(VCMediaNegotiatorResults *)v3 remoteBasebandCodec])
    {
      [(VCCallSession *)self setBasebandCodecType:[(VCMediaNegotiatorResults *)v3 remoteBasebandCodec]];
      -[VCCallSession setBasebandCodecSampleRate:](self, "setBasebandCodecSampleRate:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCMediaNegotiatorResults remoteBasebandCodecSampleRate](v3, "remoteBasebandCodecSampleRate")}]);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136316162;
          v10 = v4;
          v11 = 2080;
          v12 = "[VCCallSession(PrivateMethods) applyNegotiatedSettings]";
          v13 = 1024;
          v14 = 6102;
          v15 = 2080;
          v16 = [(NSString *)[(VCMediaNegotiatorResults *)v3 remoteBasebandCodec] UTF8String];
          v17 = 1024;
          v18 = [(VCMediaNegotiatorResults *)v3 remoteBasebandCodecSampleRate];
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Baseband codec information form negotiated settings: basebandCodecType:%s, sampleRate:%u", &v9, 0x2Cu);
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(VCMediaNegotiatorResults *)v3 mediaControlInfoVersion];
      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCCallSession(PrivateMethods) applyNegotiatedSettings]";
      v13 = 1024;
      v14 = 6104;
      v15 = 1024;
      LODWORD(v16) = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d mediaControlInfoVersion = %d", &v9, 0x22u);
    }
  }

  [(VCCallInfo *)self->remoteCallInfo setUserAgent:[(VCMediaNegotiatorResults *)v3 remoteUserAgent]];
}

+ (int)setRxPayloadList:(tagHANDLE *)a3 withPayloadTypes:(id)a4 isRedEnabled:(BOOL)a5
{
  v8 = [a4 count] + a5;
  v9 = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
  if (v9)
  {
    v10 = v9;
    if ([a4 count])
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v10[v11] = [objc_msgSend(a4 objectAtIndexedSubscript:{v11), "intValue"}];
        v11 = v12;
      }

      while ([a4 count] > v12++);
    }

    if (a5)
    {
      v10[[a4 count]] = 20;
    }

    v14 = RTPSetRxPayloadList(a3, v8, v10);
    free(v10);
    return v14;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCCallSession(PrivateMethods) setRxPayloadList:withPayloadTypes:isRedEnabled:];
      }
    }

    return -2147418109;
  }
}

- (BOOL)applyNegotiatedAudioSettings:(id *)a3
{
  v53 = *MEMORY[0x1E69E9840];
  if (![(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
  {
    LOBYTE(v14) = 1;
    return v14;
  }

  v5 = [(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedAudioSettings];
  [(VCCallInfo *)self->remoteCallInfo setAuNumber:[(VCMediaNegotiatorResultsAudio *)v5 audioUnitModel]];
  self->allowAudioSwitching = [(VCMediaNegotiatorResultsAudio *)v5 allowSwitching];
  self->allowAudioRecording = [(VCMediaNegotiatorResultsAudio *)v5 allowRecording];
  self->useSBR = [(VCMediaNegotiatorResultsAudio *)v5 useSBR];
  self->_isUseCaseWatchContinuity = [VCPayloadUtils isUseCaseWatchContinuity:self->_deviceRole primaryPayload:[(VCMediaNegotiatorResultsAudio *)v5 primaryPayload]];
  if ([(VCMediaNegotiatorResultsAudio *)v5 dtxPayload]!= 128)
  {
    operatingMode = self->operatingMode;
    if (operatingMode == 7 || operatingMode == 2)
    {
      self->currentDTXPayload = [(VCCallSession *)self addAudioPayload:[(VCMediaNegotiatorResultsAudio *)v5 dtxPayload]];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentDTXPayload config] payload];
          *buf = 136315906;
          v44 = v7;
          v45 = 2080;
          v46 = "[VCCallSession(PrivateMethods) applyNegotiatedAudioSettings:]";
          v47 = 1024;
          v48 = 6150;
          v49 = 1024;
          v50 = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Silence Suppression using DTX payload[%d] enabled", buf, 0x22u);
        }
      }
    }
  }

  self->_currentRedPayloadType = [(VCMediaNegotiatorResultsAudio *)v5 redPayload];
  self->_isRedEnabled = [(VCMediaNegotiatorResultsAudio *)v5 redPayload]== 20;
  v10 = [+[VCDefaults sharedInstance](VCDefaults disableRed];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v10)
  {
    if (ErrorLogLevelForModule >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v44 = v12;
        v45 = 2080;
        v46 = "[VCCallSession(PrivateMethods) applyNegotiatedAudioSettings:]";
        v47 = 1024;
        v48 = 6157;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Forcing Red to be disabled", buf, 0x1Cu);
      }
    }

    self->_isRedEnabled = 0;
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      currentRedPayloadType = self->_currentRedPayloadType;
      isRedEnabled = self->_isRedEnabled;
      *buf = 136316162;
      v44 = v15;
      v45 = 2080;
      v46 = "[VCCallSession(PrivateMethods) applyNegotiatedAudioSettings:]";
      v47 = 1024;
      v48 = 6160;
      v49 = 1024;
      v50 = currentRedPayloadType;
      v51 = 1024;
      v52 = isRedEnabled;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Apply negotiated redPayload settings. RedPayloadType:%d, isRedEnabled:%d", buf, 0x28u);
    }
  }

  if (![(VCCallSession *)self setupAudioCodecWithPayload:[(VCMediaNegotiatorResultsAudio *)v5 primaryPayload]])
  {
    reportingSymptom();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v14)
      {
        v28 = 0;
        goto LABEL_31;
      }

      [VCCallSession(PrivateMethods) applyNegotiatedAudioSettings:];
    }

    v28 = 0;
    goto LABEL_50;
  }

  [(VCCapabilities *)self->caps setActualAudioCodec:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]];
  if (self->allowAudioSwitching)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = [(VCMediaNegotiatorResultsAudio *)v5 secondaryPayloads];
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          -[VCCallSession addAudioPayload:](self, "addAudioPayload:", [*(*(&v39 + 1) + 8 * i) unsignedIntValue]);
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v21);
    }
  }

  if ((RTPSetRemoteSSRC(self->rtpHandle, [(VCMediaNegotiatorResultsAudio *)v5 remoteSSRC]) & 0x80000000) != 0)
  {
    [VCCallSession(PrivateMethods) applyNegotiatedAudioSettings:];
    v28 = *buf;
    LOBYTE(v14) = v31;
    goto LABEL_31;
  }

  v24 = [(VCCallSession *)self negotiatedAudioPayloadTypes];
  v25 = [VCCallSession setRxPayloadList:self->rtpHandle withPayloadTypes:v24 isRedEnabled:self->_isRedEnabled];
  if ((v25 & 0x80000000) != 0 || (RTPSetCellularUniqueTag(self->rtpHandle, [(VCTransportSession *)self->_transportSession basebandNotificationRegistrationToken]), (v25 & 0x80000000) != 0))
  {
    v28 = v25;
    goto LABEL_50;
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = v26;
  v36[1] = v26;
  v34[0] = v26;
  v34[1] = v26;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v32[0] = v26;
  v32[1] = v26;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  MakeIPPORT();
  MakeIPPORT();
  v30 = -1431655766;
  RTPCreateSockets(self->rtpHandle, v36, v34, &v30, v32);
  v28 = v27;
  if ((v27 & 0x80000000) != 0)
  {
LABEL_50:
    LOBYTE(v14) = 0;
    goto LABEL_31;
  }

  LOBYTE(v14) = [(VCCallSession *)self setRTPPayloads:v24 withError:a3];
LABEL_31:
  if (a3 && !v14)
  {
    if (!*a3)
    {
      +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32027, 200, v28, 0, @"Failed to apply audio settings", [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: %x.", v28]);
    }

    if (VRTraceGetErrorLogLevelForModule() < 2)
    {
      goto LABEL_41;
    }

    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        [VCCallSession(PrivateMethods) applyNegotiatedAudioSettings:];
LABEL_41:
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
      if (v14)
      {
        [VCCallSession(PrivateMethods) applyNegotiatedAudioSettings:];
        goto LABEL_41;
      }
    }
  }

  return v14;
}

- (BOOL)applyNegotiatedVideoSettings:(id *)a3
{
  v77 = *MEMORY[0x1E69E9840];
  if (![(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation]|| [(VCCapabilities *)self->caps isDuplexAudioOnly]|| ![(VCCapabilities *)self->caps isVideoEnabled])
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  mediaNegotiator = self->_mediaNegotiator;
  if (self->operatingMode == 4)
  {
    v6 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedScreenSettings];
  }

  else
  {
    v6 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedVideoSettings];
  }

  v8 = v6;
  if ([(VCMediaNegotiatorResultsVideo *)v6 isSupported])
  {
    IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
    v49 = self;
    if ((IsInterfaceOnCellularForActiveConnectionWithQuality | VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 0)))
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v50 = v8;
    if ([+[VCDefaults forceHWI] sharedInstance]
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCDefaults forceVideoPayload](+[VCDefaults sharedInstance](VCDefaults, "sharedInstance"), "forceVideoPayload")}];
      v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCDefaults forceRecvVideoPayload](+[VCDefaults sharedInstance](VCDefaults, "sharedInstance"), "forceRecvVideoPayload")}];
      [(VCMediaNegotiatorResultsVideo *)v8 setFeatureStrings:[VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:1]];
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = [(VCVideoRuleCollections *)[(VCMediaNegotiatorResultsVideo *)v8 videoRuleCollections] supportedPayloads];
      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v73 objects:v72 count:16];
      if (v13)
      {
        v14 = v13;
        v12 = 0;
        v11 = 0;
        v15 = *v74;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v74 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v73 + 1) + 8 * i);
            if (-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](-[VCMediaNegotiatorResultsVideo videoRuleCollections](v8, "videoRuleCollections"), "getVideoRulesForTransport:payload:encodingType:", v10, [v17 unsignedIntValue], 1))
            {
              v11 = v17;
            }

            if (-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](-[VCMediaNegotiatorResultsVideo videoRuleCollections](v8, "videoRuleCollections"), "getVideoRulesForTransport:payload:encodingType:", v10, [v17 unsignedIntValue], 2))
            {
              v12 = v17;
            }
          }

          v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v73 objects:v72 count:16];
        }

        while (v14);
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }
    }

    if (v12)
    {
      v18 = v11 == 0;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = v12;
    }

    else
    {
      v19 = v11;
    }

    v46 = v19;
    if (!v19 || !(v11 | v12))
    {
      [VCCallSession(PrivateMethods) applyNegotiatedVideoSettings:];
      v43 = v52;
      LOBYTE(v7) = v53;
LABEL_58:
      if (!a3)
      {
        return v7;
      }

      goto LABEL_59;
    }

    v20 = v49;
    operatingMode = v49->operatingMode;
    v22 = [(VCMediaNegotiatorBase *)v49->_mediaNegotiator localSettings];
    if (operatingMode == 4)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v24 = [(VCMediaNegotiatorLocalConfiguration *)v22 mediaConfigurationForMediaType:v23];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obja = [(VCVideoRuleCollections *)[(VCMediaNegotiatorResultsVideo *)v8 videoRuleCollections] supportedPayloads];
    v25 = [(NSMutableArray *)obja countByEnumeratingWithState:&v68 objects:v67 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v69;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v69 != v27)
          {
            objc_enumerationMutation(obja);
          }

          v29 = *(*(&v68 + 1) + 8 * j);
          v30 = [(NSDictionary *)[(VCMediaNegotiatorResultsVideo *)v50 featureStrings] objectForKeyedSubscript:v29];
          v31 = [objc_msgSend(v24 "videoFeatureStrings")];
          v32 = [VCMediaNegotiator negotiatedFeaturesStringWithLocalFeaturesString:v31 remoteFeaturesString:v30];
          v65[0] = @"matchedFeatureListString";
          v65[1] = @"localFeatureListString";
          v65[2] = @"remoteFeatureListString";
          v66[0] = v32;
          v66[1] = v31;
          v66[2] = v30;
          v20 = v49;
          -[NSMutableDictionary setObject:forKeyedSubscript:](v49->featureListStringDict, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3], v29);
        }

        v26 = [(NSMutableArray *)obja countByEnumeratingWithState:&v68 objects:v67 count:16];
      }

      while (v26);
    }

    v20->videoPayload = [v46 integerValue];
    -[VCCapabilities setActualVideoCodec:](v20->caps, "setActualVideoCodec:", [v46 unsignedIntValue]);
    v33 = RTPSetRemoteSSRC(v20->rtpVideo, [(VCMediaNegotiatorResultsVideo *)v50 remoteSSRC]);
    if ((v33 & 0x80000000) == 0)
    {
      v34 = [(NSMutableArray *)[(VCVideoRuleCollections *)[(VCMediaNegotiatorResultsVideo *)v50 videoRuleCollections] supportedPayloads] count];
      v35 = malloc_type_calloc(v34, 4uLL, 0x100004052888210uLL);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v36 = [(VCVideoRuleCollections *)[(VCMediaNegotiatorResultsVideo *)v50 videoRuleCollections] supportedPayloads];
      v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v61 objects:v60 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = 0;
        v40 = *v62;
        do
        {
          v41 = 0;
          v42 = v39;
          do
          {
            if (*v62 != v40)
            {
              objc_enumerationMutation(v36);
            }

            v39 = v42 + 1;
            v35[v42++] = [*(*(&v61 + 1) + 8 * v41++) unsignedIntValue];
          }

          while (v38 != v41);
          v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v61 objects:v60 count:16];
        }

        while (v38);
      }

      v43 = RTPSetRxPayloadList(v20->rtpVideo, v34, v35);
      free(v35);
      if ((v43 & 0x80000000) != 0)
      {
        goto LABEL_70;
      }

      v33 = RTPSetRTCPFB(v20->rtpVideo, [(VCMediaNegotiatorResultsVideo *)v50 isRTCPFBEnabled]);
      if ((v33 & 0x80000000) == 0)
      {
        v33 = -[VCCallSession applyFeatureListStringForPayload:](v20, "applyFeatureListStringForPayload:", [v46 unsignedIntValue]);
        if ((v33 & 0x80000000) == 0)
        {
          [(VCCapabilities *)v20->caps setActualVideoCodec:LODWORD(v20->videoPayload)];
          v59 = 0xAAAAAAAAAAAAAAAALL;
          *&v44 = 0xAAAAAAAAAAAAAAAALL;
          *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v58[0] = v44;
          v58[1] = v44;
          v56[0] = v44;
          v56[1] = v44;
          v57 = 0xAAAAAAAAAAAAAAAALL;
          v54[0] = v44;
          v54[1] = v44;
          v55 = 0xAAAAAAAAAAAAAAAALL;
          MakeIPPORT();
          MakeIPPORT();
          v51 = -1431655766;
          RTPCreateSockets(v20->rtpVideo, v58, v56, &v51, v54);
          v43 = v7;
          LOBYTE(v7) = v7 >= 0;
          goto LABEL_58;
        }
      }
    }

    v43 = v33;
LABEL_70:
    LOBYTE(v7) = 0;
    goto LABEL_58;
  }

  [VCCallSession(PrivateMethods) applyNegotiatedVideoSettings:];
  v43 = v52;
  LOBYTE(v7) = v53;
  if (!a3)
  {
    return v7;
  }

LABEL_59:
  if (!v7)
  {
    if (!*a3)
    {
      +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32028, 200, v43, 0, @"Failed to apply video settings", [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: %x.", v43]);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        LODWORD(v7) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v7)
        {
          return v7;
        }

        [VCCallSession(PrivateMethods) applyNegotiatedVideoSettings:];
      }

      else
      {
        LODWORD(v7) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT);
        if (!v7)
        {
          return v7;
        }

        [VCCallSession(PrivateMethods) applyNegotiatedVideoSettings:];
      }
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)applyNegotiatedCaptionsSettings
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(VCMediaNegotiator *)self->_mediaNegotiator negotiatedCaptionsSettings];
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v13 = 136315650;
    v14 = v9;
    v15 = 2080;
    v16 = "[VCCallSession(PrivateMethods) applyNegotiatedCaptionsSettings]";
    v17 = 1024;
    v18 = 6320;
    v11 = "VCCallSession [%s] %s:%d No pre-negotiated captions settings.";
LABEL_12:
    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0x1Cu);
    return;
  }

  v4 = v3;
  if (![(VCCallSession *)self captionsDelegate])
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v13 = 136315650;
    v14 = v12;
    v15 = 2080;
    v16 = "[VCCallSession(PrivateMethods) applyNegotiatedCaptionsSettings]";
    v17 = 1024;
    v18 = 6327;
    v11 = "VCCallSession [%s] %s:%d Captions delegate callback not set";
    goto LABEL_12;
  }

  v5 = [(VCCallSession *)self captionsDelegate];
  v6 = [(VCMediaNegotiatorResultsCaptions *)v4 localLanguages];
  v7 = [(VCMediaNegotiatorResultsCaptions *)v4 remoteLanguages];
  v8 = [(VCMediaNegotiatorResultsCaptions *)v4 remoteCanDisplayCaptions];

  [(VCAudioCaptionsDelegate *)v5 didUpdateCaptionsLocalLanguages:v6 remoteLanguages:v7 remoteCanDisplay:v8];
}

- (void)applyNegotiatedMediaRecorderSettings
{
  v3 = [(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedMediaRecorderSettings];
  delegate = self->delegate;
  v5 = [(VCMediaNegotiatorResultsMediaRecorder *)v3 capabilities];
  v6 = [(VCMediaNegotiatorResultsMediaRecorder *)v3 imageType];
  v7 = [(VCMediaNegotiatorResultsMediaRecorder *)v3 videoCodec];

  [(VCCallSessionDelegate *)delegate session:self setMomentsCapabilities:v5 imageType:v6 videoCodec:v7];
}

- (BOOL)startMediaWithPreNegotiatedSettings:(id *)a3
{
  v54 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v47 = v5;
      v48 = 2080;
      v49 = "[VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:]";
      v50 = 1024;
      v51 = 6338;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v7 = [(VCCallSession *)self createRTPHandles:a3];
  *(v42 + 24) = v7;
  if (v7)
  {
    v8 = [(VCCallSession *)self prepareSRTPWithError:a3];
    *(v42 + 24) = v8;
    if (v8)
    {
      v9 = [(VCCallSession *)self createMediaQueueHandle:a3];
      *(v42 + 24) = v9;
      if (v9)
      {
        [(VCCallSession *)self applyNegotiatedSettings];
        v10 = [(VCCallSession *)self applyNegotiatedAudioSettings:a3];
        *(v42 + 24) = v10;
        if (!v10)
        {
          goto LABEL_109;
        }

        v11 = [(VCCallSession *)self applyNegotiatedVideoSettings:a3];
        *(v42 + 24) = v11;
        if (!v11)
        {
          goto LABEL_109;
        }

        [(VCCallSession *)self applyNegotiatedCaptionsSettings];
        [(VCCallSession *)self applyNegotiatedMediaRecorderSettings];
        if (![(VCCallSession *)self setMediaQueueStreamSettings]&& VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
          }
        }

        v12 = 0;
        deviceRole = self->_deviceRole;
        if (deviceRole <= 5 && ((1 << deviceRole) & 0x29) != 0)
        {
          v12 = [(VCTransportSession *)self->_transportSession isHandoverSupported];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v16 = "NOT ";
            v47 = v14;
            *buf = 136315906;
            v49 = "[VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:]";
            v48 = 2080;
            if (v12)
            {
              v16 = "";
            }

            v50 = 1024;
            v51 = 6368;
            v52 = 2080;
            v53 = v16;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: handover is %ssupported.", buf, 0x26u);
          }
        }

        [(VCConnectionManager *)self->connectionManager setSupportDuplication:v12];
        [(VCConnectionManager *)self->connectionManager resetConnectionStatTimers];
        if (self->useRateControl)
        {
          v17 = [(VCCallSession *)self startRateControl:a3];
          *(v42 + 24) = v17;
          if (!v17)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
              }
            }

            goto LABEL_109;
          }

          [(VCConnectionManager *)self->connectionManager setStatisticsCollector:[(AVCRateController *)self->_rateController statisticsCollector]];
          hAFRC = self->hAFRC;
          if (hAFRC != 0xFFFFFFFFLL)
          {
            AFRCSetAudioPayload(hAFRC, [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload], [(VCAudioPayload *)self->currentAudioPayload bitrate]);
          }

          if (VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1))
          {
            [(VCCallSession *)self setupWCMClient];
          }

          operatingMode = self->operatingMode;
          if (operatingMode <= 7 && ((1 << operatingMode) & 0x96) != 0 && self->iRATSuggestionEnabled && self->_deviceRole != 4)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v20 = VRTraceErrorLogLevelToCSTR();
              v21 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v47 = v20;
                v48 = 2080;
                v49 = "[VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:]";
                v50 = 1024;
                v51 = 6390;
                _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: iRAT recommendation is enabled.", buf, 0x1Cu);
              }
            }

            wrmInfo = self->wrmInfo;
            if (wrmInfo)
            {
              WRMInitialize(wrmInfo, self->rtpHandle);
            }

            [(VCCallSession *)self setupWRMClient];
            operatingMode = self->operatingMode;
          }

          if (operatingMode == 7 || operatingMode == 2)
          {
            AFRCSetTxCap(self->hAFRC, [(VCCallSession *)self currentAudioCap]);
          }
        }

        v23 = [(VCCallSession *)self createAudioTransmitter:a3];
        *(v42 + 24) = v23;
        if (v23)
        {
          [(VCAudioTransmitter *)self->audioTransmitter setCellTech:self->_isLocalCellular_LowestConnectionQuality remoteCellular:self->_isRemoteCellular_LowestConnectionQuality isIPV6:self->_isConnectedOnIPv6_LowestConnectionQuality audioCap:[(VCCallSession *)self currentAudioCap]];
          VCAudioReceiver_UpdateCellTech(self->audioReceiver, [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1], [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0]);
          v25 = VCAudioReceiver_Start(&self->audioReceiver->var0.var0, v24);
          *(v42 + 24) = v25;
          if (!v25)
          {
            v32 = 4;
            goto LABEL_110;
          }

          self->state = 1;
          if ([(VCCallInfo *)self->remoteCallInfo usesInitialFECImplementation])
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          self->fecMode = v26;
          v27 = [(VCCallSession *)self startMediaQueue:a3];
          *(v42 + 24) = v27;
          if (v27)
          {
            if (![(VCCapabilities *)self->caps isKeyExchangeEnabled]&& ![(VCCapabilities *)self->caps isDTLSEnabled])
            {
              [(TimingCollection *)self->perfTimers removeTimingForKey:3];
              v32 = 0;
              goto LABEL_74;
            }

            cf[0] = 0;
            [(TimingCollection *)self->perfTimers stopTimingForKey:3];
            if ([(VCCapabilities *)self->caps isDTLSEnabled])
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v28 = VRTraceErrorLogLevelToCSTR();
                v29 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v47 = v28;
                  v48 = 2080;
                  v49 = "[VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:]";
                  v50 = 1024;
                  v51 = 6449;
                  _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- check use dtls-srtp key", buf, 0x1Cu);
                }
              }

              if (self->srtpKeyBytes)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v30 = VRTraceErrorLogLevelToCSTR();
                  v31 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v47 = v30;
                    v48 = 2080;
                    v49 = "[VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:]";
                    v50 = 1024;
                    v51 = 6451;
                    _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- keyex use dtls-srtp key", buf, 0x1Cu);
                  }
                }

                v32 = 0;
                cf[0] = CFRetain(self->srtpKeyBytes);
                if (!cf[0])
                {
                  goto LABEL_74;
                }

LABEL_73:
                *buf = 1;
                v32 = [(VCCallSession *)self setupEncryptionWithKey:cf confIndex:buf];
                CFRelease(cf[0]);
                if ((v32 & 0x80000000) == 0)
                {
                  goto LABEL_74;
                }

LABEL_110:
                if (!a3)
                {
                  goto LABEL_82;
                }

                goto LABEL_111;
              }
            }

            else
            {
              if (![(VCCallSession *)self isSKEOptimizationEnabled])
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v34 = VRTraceErrorLogLevelToCSTR();
                  v35 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v47 = v34;
                    v48 = 2080;
                    v49 = "[VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:]";
                    v50 = 1024;
                    v51 = 6438;
                    _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- keyex initiate exchange", buf, 0x1Cu);
                  }
                }

                [(TimingCollection *)self->perfTimers startTimingForKey:4];
                v36 = SIPKeyExchange(&self->hSIP, [(VCCallInfo *)self->localCallInfo callID], 0, cf, 0);
                [(TimingCollection *)self->perfTimers stopTimingForKey:4];
                v32 = 2148139061;
                if (v36 != -2146828235)
                {
                  v32 = v36;
                  goto LABEL_110;
                }

LABEL_72:
                if (cf[0])
                {
                  goto LABEL_73;
                }

LABEL_74:
                [(TimingCollection *)self->perfTimers startTimingForKey:5];
                v40[0] = MEMORY[0x1E69E9820];
                v40[1] = 3221225472;
                v40[2] = __69__VCCallSession_PrivateMethods__startMediaWithPreNegotiatedSettings___block_invoke;
                v40[3] = &unk_1E85F54F0;
                v40[4] = self;
                -[VCCallSession startAudioWithCompletionHandler:](self, "startAudioWithCompletionHandler:", [v40 copy]);
                [(TimingCollection *)self->perfTimers startTimingForKey:6];
                [(TimingCollection *)self->perfTimers startTimingForKey:7];
                [(VCCallSession *)self setUpFirstRemoteFrameTimer];
                videoQueue = self->videoQueue;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __69__VCCallSession_PrivateMethods__startMediaWithPreNegotiatedSettings___block_invoke_2;
                block[3] = &unk_1E85F3930;
                block[4] = self;
                block[5] = &v41;
                block[6] = a3;
                dispatch_sync(videoQueue, block);
                [(TimingCollection *)self->perfTimers stopTimingForKey:6];
                if (v42[3])
                {
                  if ([(VCCallInfo *)self->localCallInfo videoIsPaused])
                  {
                    [(VCCallSession *)self setPauseVideo:1 force:1 error:0];
                  }

                  if ([(VCCapabilities *)self->caps isVideoEnabled])
                  {
                    VideoReceiver_CellTechChanged();
                  }

                  [(VCCallSession *)self lock];
                  [(VCCallSession *)self enableSessionHealthMonitor];
                  [(VCCallSession *)self unlock];
                  [(VCCallSession *)self handlePendingPrimaryConnectionChange];
                  if ([(VCCallSession *)self shouldNotifyDelegateDidStartBeforeAudioSetup])
                  {
                    [(VCCallSession *)self notifyDelegateSessionStarted];
                  }

                  LOBYTE(a3) = 1;
                  goto LABEL_82;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
                  }
                }

                goto LABEL_110;
              }

              [(VCCallSession *)self lock];
              secretKey = self->secretKey;
              if (secretKey)
              {
                cf[0] = CFRetain(secretKey);
              }

              else if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
                }
              }

              [(VCCallSession *)self unlock];
            }

            v32 = 0;
            goto LABEL_72;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
            }
          }

LABEL_109:
          v32 = 0;
          goto LABEL_110;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_109;
        }

        if (*a3)
        {
          [objc_msgSend(*a3 "description")];
        }

        [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_109;
        }

        if (*a3)
        {
          [objc_msgSend(*a3 "description")];
        }

        [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_109;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_109;
      }

      if (*a3)
      {
        [objc_msgSend(*a3 "description")];
      }

      [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_109;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_109;
    }

    if (*a3)
    {
      [objc_msgSend(*a3 "description")];
    }

    [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
  }

  v32 = 0;
LABEL_111:
  if (!*a3)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32029, 200, v32, 0, @"Failed to start media", [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: %x.", v32]);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        if (*a3)
        {
          [objc_msgSend(*a3 "description")];
        }

        [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      if (*a3)
      {
        [objc_msgSend(*a3 "description")];
      }

      [VCCallSession(PrivateMethods) startMediaWithPreNegotiatedSettings:];
    }
  }

  LOBYTE(a3) = 0;
LABEL_82:
  _Block_object_dispose(&v41, 8);
  return a3;
}

uint64_t __69__VCCallSession_PrivateMethods__startMediaWithPreNegotiatedSettings___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  [*(*(a1 + 32) + 672) stopTimingForKey:5];
  v6 = *(a1 + 32);
  if (a2)
  {
    if (v6[408] == 1)
    {
      [*(a1 + 32) setPauseAudio:1 force:1 error:0];
      v6 = *(a1 + 32);
    }

    [v6 updateLastReceivedPacketWithTimestamp:4 packetType:micro() + 10.0];
  }

  else
  {
    reportingSymptom();
    [*(a1 + 32) disconnect:a3 didRemoteCancel:0];
  }

  result = [*(a1 + 32) shouldNotifyDelegateDidStartBeforeAudioSetup];
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 32);

    return [v8 notifyDelegateSessionStarted];
  }

  return result;
}

uint64_t __69__VCCallSession_PrivateMethods__startMediaWithPreNegotiatedSettings___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) startVideo:0 error:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)handleIncomingWithCallID:(unsigned int)a3 msgIn:(const char *)a4 msgOut:(char *)a5 optional:(void *)a6 confIndex:(int *)a7 error:(id *)a8
{
  v8 = self;
  v99 = *MEMORY[0x1E69E9840];
  v89 = 0;
  if (!a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
      }
    }

    goto LABEL_82;
  }

  if (![(VCCallSession *)self createRTPHandles:a8])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
      }
    }

LABEL_82:
    v17 = 0;
    v15 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v85 = 0;
    v86 = 0;
    v24 = 0;
    v23 = 0;
    LODWORD(v79) = 0;
    goto LABEL_58;
  }

  if (![(VCCallSession *)v8 prepareSRTPWithError:a8])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
      }
    }

    goto LABEL_89;
  }

  if (![(VCCallSession *)v8 createMediaQueueHandle:a8])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
      }
    }

LABEL_89:
    v17 = 0;
    v15 = 0;
    v61 = 0;
    v62 = 0;
    v85 = 0;
    v86 = 0;
    v24 = 0;
    v23 = 0;
    LODWORD(v79) = 0;
    goto LABEL_57;
  }

  memset(__b, 170, sizeof(__b));
  __strlcpy_chk();
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:__b encoding:1];
  [(VCCallInfo *)v8->remoteCallInfo setSdpString:v13];

  if (![(VCCallSession *)v8 negotiatePayloads:0 withError:a8])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
      }
    }

    v17 = 0;
    v15 = 0;
    goto LABEL_100;
  }

  v77 = a5;
  v14 = [(NSMutableArray *)v8->negotiatedAudioPayloads count];
  v15 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
  if (v14 >= 1)
  {
    v16 = 0;
    do
    {
      v15[v16] = [objc_msgSend(-[NSMutableArray objectAtIndex:](v8->negotiatedAudioPayloads objectAtIndex:{v16), "config"), "payload"}];
      ++v16;
    }

    while ((v14 & 0x7FFFFFFF) != v16);
  }

  v76 = v14;
  v17 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
  if (v8->allowAudioSwitching)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v8->negotiatedAudioPayloads];
    [v18 removeObject:v8->currentAudioPayload];
    v78 = [v18 count];
    if (v78 >= 1)
    {
      v19 = 0;
      do
      {
        v17[v19] = [objc_msgSend(objc_msgSend(v18 objectAtIndexedSubscript:{v19), "config"), "payload"}];
        ++v19;
      }

      while ((v78 & 0x7FFFFFFF) != v19);
    }
  }

  else
  {
    v78 = 0;
  }

  if (![(VCCallSession *)v8 setRTPPayloads:[(VCCallSession *)v8 negotiatedAudioPayloadTypes] withError:a8])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
      }
    }

    goto LABEL_100;
  }

  if (![(VCCallSession *)v8 setMediaQueueStreamSettings])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
      }
    }

LABEL_100:
    v61 = 0;
    v85 = 0;
    v86 = 0;
    v24 = 0;
    v23 = 0;
    LODWORD(v79) = 0;
    goto LABEL_56;
  }

  v88 = 0;
  v20 = VCConnectionManager_CopyConnectionForQuality(v8->connectionManager, 1);
  v21 = [(VCBitrateArbiter *)v8->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v20 forLocalInterface:1 arbiterMode:VCBitrateArbiter_ModeFromOperatingMode(v8->operatingMode) encodeRule:v8->_currentEncodeRule];
  if (v20)
  {
    CFRelease(v20);
  }

  v73 = a6;
  v74 = a7;
  v75 = a8;
  [(VCCallSession *)v8 negotiateMaxBandwidth:&v88];
  v84 = [(VCConnectionManager *)v8->connectionManager getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:1];
  v87 = 2700;
  if (v8->videoPayload < 1)
  {
    v26 = 0;
    v24 = 0;
    v28 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_53;
  }

  v72 = v21;
  v22 = [(VCCallSession *)v8 getAllCompatibleVideoPayloads:&v89 forMediaType:2];
  v23 = malloc_type_calloc(v22, 8uLL, 0x2004093837F09uLL);
  v86 = malloc_type_calloc(v22, 8uLL, 0x2004093837F09uLL);
  v24 = malloc_type_calloc(v22, 4uLL, 0x100004052888210uLL);
  v25 = v22;
  v26 = malloc_type_calloc(v22, 4uLL, 0x100004052888210uLL);
  if (v22 < 1)
  {
    v28 = v86;
LABEL_52:
    v21 = v72;
LABEL_53:
    v59 = [(VCCallSession *)v8 getCompatibleLocalFeatureListForPayloads:v89 count:v25];
    v85 = v26;
    LODWORD(v79) = v25;
    v86 = v28;
    if ([(VCCallSession *)v8 createSDP:v15 audioPayloadCount:v76 secondaryPayloadTypes:v17 secondaryPayloadCount:v78 videoPayloadTypes:v89 videoPayloadCount:v25 localFeatureList:v59 answerBandwidth:__PAIR64__(v21 maxBandwidth:v88) imageSizesSend:v23 imageSendCount:v24 imageSizesRecv:v28 imageRecvCount:v26 sdp:v77 numSDPBytes:&v87 error:v75])
    {
      if ([(VCCallSession *)v8 createAudioTransmitter:v75])
      {
        [(VCAudioTransmitter *)v8->audioTransmitter setCellTech:v8->_isLocalCellular_LowestConnectionQuality remoteCellular:v8->_isRemoteCellular_LowestConnectionQuality isIPV6:v8->_isConnectedOnIPv6_LowestConnectionQuality audioCap:[(VCCallSession *)v8 currentAudioCap]];
        v60 = *v73;
        *v60 = v8->rtpVideo;
        v60[1] = v8->rtpHandle;
        *v74 = 0;
        v61 = 1;
LABEL_56:
        v62 = 1;
LABEL_57:
        v63 = 1;
        goto LABEL_58;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
      }
    }

LABEL_74:
    v61 = 0;
    goto LABEL_56;
  }

  v83 = v24;
  v70 = v17;
  v71 = v15;
  v27 = 0;
  v79 = v22;
  v80 = v22;
  v28 = v86;
  v81 = v8;
  v82 = v23;
  while (1)
  {
    v29 = *(v89 + v27);
    v30 = [(VCCallInfo *)v8->remoteCallInfo sdp];
    v31 = [(VCBitrateArbiter *)v8->callSessionBitrateArbiter maxAllowedBitrateRuleForConnection:v84];
    v32 = [(VCCallInfo *)v8->remoteCallInfo isHDVideoSupported];
    v23[v27] = 0;
    v83[v27] = 0;
    v28[v27] = 0;
    v33 = v26;
    *(v26 + v27) = 0;
    MaxImageDimensions = getMaxImageDimensions(1, 2, v30, v29, v31, v32);
    v35 = getMaxImageDimensions(1, 1, v30, v29, v31, v32);
    v36 = v35 ? (MaxImageDimensions != 0) + 1 : (MaxImageDimensions != 0);
    v83[v27] = v36;
    if (v36)
    {
      v23[v27] = malloc_type_calloc(v36, 0x24uLL, 0x10000408AA14F5FuLL);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v92 = v37;
        v93 = 2080;
        v94 = "imageAttrForAnswer";
        v95 = 1024;
        v96 = 5941;
        v97 = 1024;
        v98 = v29;
        _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d *pSendCount is zero (payload=%d)", buf, 0x22u);
      }
    }

    if (MaxImageDimensions)
    {
      v23 = v82;
      v39 = v82[v27];
      if (v39)
      {
        v40 = *MaxImageDimensions;
        v41 = *(MaxImageDimensions + 1);
        *(v39 + 32) = MaxImageDimensions[8];
        *v39 = v40;
        *(v39 + 16) = v41;
      }

      free(MaxImageDimensions);
      v42 = 1;
      v43 = v33;
    }

    else
    {
      v42 = 0;
      v43 = v33;
      v23 = v82;
    }

    v8 = v81;
    if (v35)
    {
      v44 = v23[v27];
      if (v44)
      {
        v45 = v44 + 36 * v42;
        v46 = *v35;
        v47 = *(v35 + 1);
        *(v45 + 32) = v35[8];
        *v45 = v46;
        *(v45 + 16) = v47;
      }

      free(v35);
    }

    v48 = getMaxImageDimensions(0, 2, v30, v29, v31, v32);
    v49 = getMaxImageDimensions(0, 1, v30, v29, v31, v32);
    v50 = v49 ? (v48 != 0) + 1 : (v48 != 0);
    v43[v27] = v50;
    if (!(v48 | v49))
    {
      break;
    }

    v51 = malloc_type_calloc(v50, 0x24uLL, 0x10000408AA14F5FuLL);
    v52 = v51;
    if (v48)
    {
      v53 = *v48;
      v54 = *(v48 + 16);
      v51[8] = *(v48 + 32);
      *v51 = v53;
      *(v51 + 1) = v54;
      free(v48);
      v55 = 1;
    }

    else
    {
      v55 = 0;
    }

    v26 = v43;
    if (v49)
    {
      v56 = &v52[9 * v55];
      v57 = *v49;
      v58 = *(v49 + 16);
      v56[8] = *(v49 + 32);
      *v56 = v57;
      *(v56 + 1) = v58;
      free(v49);
    }

    v28 = v86;
    v86[v27++] = v52;
    if (v80 == v27)
    {
      v17 = v70;
      v15 = v71;
      v24 = v83;
      v25 = v79;
      goto LABEL_52;
    }
  }

  v85 = v43;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
    }
  }

  free(v23[v27]);
  v23[v27] = 0;
  v24 = v83;
  v83[v27] = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v17 = v70;
    v15 = v71;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) handleIncomingWithCallID:msgIn:msgOut:optional:confIndex:error:];
    }

    goto LABEL_74;
  }

  v61 = 0;
  v62 = 1;
  v63 = 1;
  v17 = v70;
  v15 = v71;
LABEL_58:
  free(v15);
  free(v17);
  free(v89);
  if (v79 >= 1)
  {
    v64 = v79;
    v65 = v23;
    v66 = v86;
    do
    {
      v67 = *v65++;
      free(v67);
      v68 = *v66++;
      free(v68);
      --v64;
    }

    while (v64);
  }

  free(v23);
  free(v86);
  free(v24);
  free(v85);
  if ((v61 & 1) == 0)
  {
    if (v62)
    {
      [(VCCallSession *)v8 stopMediaQueue:0];
    }

    if (v63)
    {
      [(VCCallSession *)v8 releaseRTPHandles];
    }

    [(VCCallSession *)v8 resetState];
  }

  return 0;
}

- (void)getAllPayloadsForAudio:(int *)a3 count:(int *)a4 secondaryPayloads:(int *)a5 secondaryCount:(int *)a6
{
  if (a3 && a4)
  {
    v11 = +[VCAudioRuleCollection getForcedPayload];
    if (v11 == 128)
    {
      if (self->_deviceRole)
      {
        v12 = &unk_1F579D098;
      }

      else
      {
        v12 = &unk_1F579D080;
      }

      v13 = [v12 count];
      v14 = malloc_type_calloc(1uLL, 4 * v13, 0x100004052888210uLL);
      if (v13 >= 1)
      {
        v15 = 0;
        do
        {
          v14[v15] = [objc_msgSend(v12 objectAtIndexedSubscript:{v15), "intValue"}];
          ++v15;
        }

        while ((v13 & 0x7FFFFFFF) != v15);
      }

      *a3 = v14;
      *a4 = v13;
      if (a5 && a6 && self->allowAudioSwitching)
      {
        v16 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
        if (v16)
        {
          *v16 = xmmword_1DBD499A0;
          v16[4] = 13;
          *a6 = 5;
          *a5 = v16;
        }
      }
    }

    else
    {
      v17 = v11;
      v18 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
      *v18 = v17;
      *a3 = v18;
      *a4 = 1;
    }
  }
}

- (void)getAllPayloadsForVideo:(int *)a3 count:(int *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    return;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[VCVideoRuleCollections supportedPayloads](+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera, "sharedInstance"), "supportedPayloads")}];
  if (![+[VCDefaults forceHWI] sharedInstance]
  {
    [v6 removeObject:&unk_1F5799F48];
    goto LABEL_15;
  }

  v7 = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
  v8 = [+[VCDefaults sharedInstance](VCDefaults forceRecvVideoPayload];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  if (v7 == 128)
  {
LABEL_15:
    v18 = [v6 count];
    v19 = malloc_type_malloc(4 * v18, 0x100004052888210uLL);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__VCCallSession_PrivateMethods__getAllPayloadsForVideo_count___block_invoke;
    v20[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v20[4] = v19;
    [v6 enumerateObjectsUsingBlock:v20];

    *a3 = v19;
    *a4 = v18;
    return;
  }

  v11 = v10;
  v12 = [v6 containsObject:v9];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v12)
  {
    if (ErrorLogLevelForModule >= 5)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v22 = v14;
        v23 = 2080;
        v24 = "[VCCallSession(PrivateMethods) getAllPayloadsForVideo:count:]";
        v25 = 1024;
        v26 = 6749;
        v27 = 1024;
        v28 = v7;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Video payload OVERRIDE to %d", buf, 0x22u);
      }
    }

    [v6 removeAllObjects];
    [v6 addObject:v9];
    if (v8 != 128)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v22 = v16;
          v23 = 2080;
          v24 = "[VCCallSession(PrivateMethods) getAllPayloadsForVideo:count:]";
          v25 = 1024;
          v26 = 6763;
          v27 = 1024;
          v28 = v8;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Video receive payload OVERRIDE to %d", buf, 0x22u);
        }
      }

      [v6 addObject:v11];
    }

    goto LABEL_15;
  }

  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) getAllPayloadsForVideo:count:];
    }
  }

  *a4 = 0;
  *a3 = 0;
}

uint64_t __62__VCCallSession_PrivateMethods__getAllPayloadsForVideo_count___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 intValue];
  *(*(a1 + 32) + 4 * a3) = result;
  return result;
}

- (void)getAllPayloadsForScreen:(int *)a3 count:(int *)a4
{
  v9[5] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[VCVideoRuleCollections supportedPayloads](+[VCVideoRuleCollectionsScreen sharedInstance](VCVideoRuleCollectionsScreen, "sharedInstance"), "supportedPayloads")}];
      v7 = [v6 count];
      v8 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__VCCallSession_PrivateMethods__getAllPayloadsForScreen_count___block_invoke;
      v9[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
      v9[4] = v8;
      [v6 enumerateObjectsUsingBlock:v9];

      *a3 = v8;
      *a4 = v7;
    }
  }
}

uint64_t __63__VCCallSession_PrivateMethods__getAllPayloadsForScreen_count___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 intValue];
  *(*(a1 + 32) + 4 * a3) = result;
  return result;
}

- (BOOL)canSendSIPInviteWithError:(id *)a3
{
  sipState = self->_sipState;
  if (sipState != 5)
  {
    v5 = [(VCCallSession *)self state];
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32002, 215, v5, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 6809], @"no longer attempting to connect", @"State != GKVoiceChatServiceStateCallerAttemptingToConnect");
  }

  return sipState == 5;
}

- (id)createInviteSDPWithError:(id *)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = 0;
  count = 0;
  v58 = 0;
  v56 = 0;
  bzero(v64, 0xA8CuLL);
  v55 = 2700;
  [(VCCallSession *)self lock];
  [(VCCallSession *)self getAllPayloadsForAudio:&v59 count:&count secondaryPayloads:&v58 secondaryCount:&v56];
  [(VCCallSession *)self getAllPayloadsForVideo:&v60 count:&count + 4];
  v48 = self;
  if (![(VCCallInfo *)self->remoteCallInfo supportSDPCompression]&& v60)
  {
    *v60 = 126;
    HIDWORD(count) = 1;
  }

  v5 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
  v6 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v5 forLocalInterface:1 arbiterMode:VCBitrateArbiter_ModeFromOperatingMode(self->operatingMode) encodeRule:self->_currentEncodeRule];
  if (v5)
  {
    CFRelease(v5);
  }

  carrierBitrateCap = v48->carrierBitrateCap;
  v8 = [(VCCallSession *)v48 treatAsCellular];
  if (v6 >= carrierBitrateCap)
  {
    v9 = carrierBitrateCap;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v48->callSessionBitrate = v10;
  v11 = malloc_type_calloc(SHIDWORD(count), 8uLL, 0x2004093837F09uLL);
  v12 = 0x1E696A000uLL;
  if (!v11)
  {
    [VCCallSession(PrivateMethods) createInviteSDPWithError:];
LABEL_45:
    v45 = v61;
    v46 = v62;
    v36 = v63;
    goto LABEL_46;
  }

  v13 = malloc_type_calloc(SHIDWORD(count), 8uLL, 0x2004093837F09uLL);
  if (!v13)
  {
    [VCCallSession(PrivateMethods) createInviteSDPWithError:];
    goto LABEL_45;
  }

  v14 = v13;
  v46 = malloc_type_calloc(SHIDWORD(count), 4uLL, 0x100004052888210uLL);
  if (!v46)
  {
    [(VCCallSession(PrivateMethods) *)v14 createInviteSDPWithError:&v62, &v63];
    goto LABEL_45;
  }

  v45 = malloc_type_calloc(SHIDWORD(count), 4uLL, 0x100004052888210uLL);
  if (!v45)
  {
    [(VCCallSession(PrivateMethods) *)v46 createInviteSDPWithError:v14, &v61, &v62, &v63];
    goto LABEL_45;
  }

  v43 = v14;
  v44 = v11;
  v42 = a3;
  v47 = [(VCConnectionManager *)v48->connectionManager getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:1];
  v15 = HIDWORD(count);
  v16 = v60;
  v41 = v10;
  if (SHIDWORD(count) >= 1 && v60)
  {
    v17 = 0;
    v18 = v43;
    v19 = v11;
    v20 = v45;
    v21 = v46;
    do
    {
      v51 = v20;
      v52 = v18;
      *v18 = 0;
      v22 = v19;
      *v19 = 0;
      *v20 = 0;
      v50 = v21;
      *v21 = 0;
      v23 = [(VCBitrateArbiter *)v48->callSessionBitrateArbiter maxAllowedBitrateRuleForConnection:v47];
      v24 = [(VCCallInfo *)v48->remoteCallInfo isHDVideoSupported];
      v53 = v17;
      v25 = *(v60 + v17);
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[VCVideoRuleCollections supportedVideoRulesForBitrate:transportType:payload:encodingType:](+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera, "sharedInstance"), "supportedVideoRulesForBitrate:transportType:payload:encodingType:", objc_msgSend(v23, "limitingRule"), 1, v25, 1)}];
      v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[VCVideoRuleCollections supportedVideoRulesForBitrate:transportType:payload:encodingType:](+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera, "sharedInstance"), "supportedVideoRulesForBitrate:transportType:payload:encodingType:", objc_msgSend(v23, "limitingRule"), 1, v25, 2)}];
      v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera, "sharedInstance"), "getVideoRulesForTransport:payload:encodingType:", 2, v25, 1)}];
      v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera, "sharedInstance"), "getVideoRulesForTransport:payload:encodingType:", 2, v25, 2)}];
      v29 = v27;
      remove16x9Resolutions(v27);
      remove16x9Resolutions(v28);
      if ([+[VCDefaults forceHWI] sharedInstance]
      {
        v30 = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
        v31 = [+[VCDefaults sharedInstance](VCDefaults forceRecvVideoPayload];
        if (v30 != 128 && v30 != v25)
        {
          [v26 removeAllObjects];
          [v54 removeAllObjects];
        }

        if (v31 != 128 && v31 != v25)
        {
          [v29 removeAllObjects];
          [v28 removeAllObjects];
        }
      }

      v32 = [v26 count];
      v33 = malloc_type_calloc(v32, 0x24uLL, 0x10000408AA14F5FuLL);
      *v22 = v33;
      v19 = v22 + 1;
      *v21++ = v32;
      addWifiInterfaceForImageDimensions(v33, v32, v24, v26);
      v34 = [v29 count];
      v35 = malloc_type_calloc(v34, 0x24uLL, 0x10000408AA14F5FuLL);
      v49 = v26;
      *v51 = v34;
      v20 = v51 + 1;
      *v18++ = v35;
      addWifiInterfaceForImageDimensions(v35, v34, v24, v29);
      addCellInterfaceForImageDimensions(v22, v50, v25, v54);
      addCellInterfaceForImageDimensions(v52, v51, v25, v28);

      v17 = v53 + 1;
      v15 = SHIDWORD(count);
      v16 = v60;
    }

    while (v53 + 1 < SHIDWORD(count) && v60);
  }

  a3 = v42;
  v36 = v43;
  v11 = v44;
  LODWORD(v40) = 0;
  HIDWORD(v40) = v41;
  if ([(VCCallSession *)v48 createSDP:v59 audioPayloadCount:count secondaryPayloadTypes:v58 secondaryPayloadCount:v56 videoPayloadTypes:v16 videoPayloadCount:v15 localFeatureList:[(VCCallSession *)v48 allPayloadsLocalFeaturesString] answerBandwidth:v40 maxBandwidth:v44 imageSizesSend:v46 imageSendCount:v43 imageSizesRecv:v45 imageRecvCount:v64 sdp:&v55 numSDPBytes:v42 error:?])
  {
    v12 = 0x1E696A000uLL;
    goto LABEL_30;
  }

  v12 = 0x1E696A000;
  if (VRTraceGetErrorLogLevelForModule() < 3 || (VRTraceErrorLogLevelToCSTR(), !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
  {
LABEL_46:
    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_47;
  }

  [VCCallSession(PrivateMethods) createInviteSDPWithError:];
LABEL_47:
  if (!*a3)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32002, 215, -[VCCallSession state](v48, "state"), 0, @"Failed to create the offer SDP", [*(v12 + 3776) stringWithFormat:@"Error status: 0x%08x", 3]);
  }

LABEL_30:
  free(v46);
  free(v45);
  free(v60);
  free(v59);
  free(v58);
  if (v11)
  {
    if (SHIDWORD(count) >= 1)
    {
      v37 = 0;
      do
      {
        free(v11[v37++]);
      }

      while (v37 < SHIDWORD(count));
    }

    free(v11);
  }

  if (v36)
  {
    if (SHIDWORD(count) >= 1)
    {
      v38 = 0;
      do
      {
        free(v36[v38++]);
      }

      while (v38 < SHIDWORD(count));
    }

    free(v36);
  }

  [(VCCallSession *)v48 unlock];
  return [*(v12 + 3776) stringWithFormat:@"%s", v64];
}

- (BOOL)establishSIPDialogWithSDP:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = vextq_s8(*&self->rtpHandle, *&self->rtpHandle, 8uLL);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v20 + 11) = v7;
  v19 = v7;
  v20[0] = v7;
  *(v18 + 11) = v7;
  v17 = v7;
  v18[0] = v7;
  [(NSString *)[(VCCallInfo *)self->localCallInfo participantID] UTF8String];
  __strlcpy_chk();
  [(NSString *)[(VCCallInfo *)self->remoteCallInfo participantID] UTF8String];
  __strlcpy_chk();
  IsLTEOrNewer = 1;
  [(TimingCollection *)self->perfTimers stopTimingForKey:1];
  [(TimingCollection *)self->perfTimers startTimingForKey:2];
  if (VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1))
  {
    IsLTEOrNewer = NetworkUtils_IsLTEOrNewer([(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1]);
  }

  v9 = 1;
  if (VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 0))
  {
    v9 = NetworkUtils_IsLTEOrNewer([(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0]);
  }

  if ((IsLTEOrNewer & v9) == 1)
  {
    dwRTT_ice = self->dwRTT_ice;
  }

  else
  {
    dwRTT_ice = -1;
  }

  bzero(v16, 0xA8DuLL);
  v11 = SIPConnectIPPort(&self->hSIP, -[VCCallInfo callID](self->localCallInfo, "callID"), -[VCCallInfo callID](self->remoteCallInfo, "callID"), &v19, &v17, [a3 UTF8String], v16, &v15, 1, dwRTT_ice);
  [(TimingCollection *)self->perfTimers stopTimingForKey:2];
  [(VCCallSession *)self lock];
  if (v11 < 0)
  {
    if ([(VCConnectionManager *)self->connectionManager isConnectedOnRelayForActiveConnectionWithQuality:1])
    {
      v13 = 252;
    }

    else
    {
      v13 = 216;
    }

    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a4, 32002, v13, v11, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 6961], @"Unable to establish session with the remote participant.", @"SIPConnectIPPort failed");
    v12 = 0;
  }

  else
  {
    -[VCCallInfo setSdpString:](self->remoteCallInfo, "setSdpString:", [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:1]);
    v12 = self->_sipState == 5;
  }

  [(VCCallSession *)self unlock];
  return v12;
}

- (BOOL)sendSIPInviteWithError:(id *)a3
{
  [(VCCallSession *)self lock];
  if ([(VCCallSession *)self canSendSIPInviteWithError:a3])
  {
    if ([(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
    {
      v5 = 0;
    }

    else
    {
      if (![(VCCallSession *)self createRTPHandles:a3])
      {
        [VCCallSession(PrivateMethods) sendSIPInviteWithError:];
        goto LABEL_17;
      }

      if (![(VCCallSession *)self prepareSRTPWithError:a3])
      {
        [VCCallSession(PrivateMethods) sendSIPInviteWithError:];
        goto LABEL_17;
      }

      if (![(VCCallSession *)self createMediaQueueHandle:a3])
      {
        [VCCallSession(PrivateMethods) sendSIPInviteWithError:];
        goto LABEL_17;
      }

      v5 = [(VCCallSession *)self createInviteSDPWithError:a3];
      if (![v5 length])
      {
        [VCCallSession(PrivateMethods) sendSIPInviteWithError:];
        goto LABEL_17;
      }
    }

    [(VCCallSession *)self unlock];
    v6 = [(VCCallSession *)self establishSIPDialogWithSDP:v5 error:a3];
    [(VCCallSession *)self lock];
    if (v6)
    {
      v7 = 1;
      goto LABEL_10;
    }

    [VCCallSession(PrivateMethods) sendSIPInviteWithError:];
  }

  else
  {
    [VCCallSession(PrivateMethods) sendSIPInviteWithError:];
  }

LABEL_17:
  if (self->state)
  {
    if (v9)
    {
      [(VCCallSession *)self stopMediaQueue:0];
    }

    if (v10)
    {
      [(VCCallSession *)self releaseRTPHandles];
    }

    [(VCCallSession *)self resetState];
  }

  v7 = 0;
LABEL_10:
  [(VCCallSession *)self unlock];
  return v7;
}

- (BOOL)treatAsCellular
{
  v7 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"treatLTEAs4G", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (NetworkUtils_IsLTEOrNewer([(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1]) & 1) == 0)
  {
    return VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
  }

  else
  {
    return 0;
  }
}

- (int)fillMediaControlInfo:(void *)a3
{
  [(VCConnectionManager *)self->connectionManager setConnectionHealthOnControlInfo:?];
  if (self->useVCRC && VCRateControlSetFeedbackControlInfo([(AVCRateController *)self->_rateController feedbackController], a3))
  {
    AFRCSetFeedbackControlInfo(self->hAFRC, 0);
    return 0;
  }

  else
  {
    hAFRC = self->hAFRC;

    return AFRCSetFeedbackControlInfo(hAFRC, a3);
  }
}

- (int)processMediaControlInfo:(void *)a3 isAudio:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    [(VCConnectionManager *)self->connectionManager processConnectionHealthFromControlInfo:a3];
    if (!self->useVCRC)
    {
      goto LABEL_6;
    }

    VCRateControlProcessFeedbackControlInfo([(AVCRateController *)self->_rateController feedbackController], a3);
  }

  else if (!self->useVCRC)
  {
    goto LABEL_6;
  }

  VCRateControlProcessProbingControlInfo([(AVCRateController *)self->_rateController feedbackController], a3, v4);
LABEL_6:
  v7 = 56;
  if (v4)
  {
    v7 = 48;
  }

  v8 = *(&self->super.isa + v7);

  return RTPProcessMediaControlInfo(v8, a3, v4);
}

- (BOOL)createRTPHandles:(id *)a3
{
  v95 = *MEMORY[0x1E69E9840];
  deviceRole = self->_deviceRole;
  if (deviceRole == 3 || deviceRole == 0)
  {
    BoolValueForKey = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-facetime-jitter-buffer-mode" userDefaultKey:@"useErasureSensitiveMode" defaultValue:objc_msgSend(MEMORY[0x1E696AD98] isDoubleType:{"numberWithInt:", deviceRole != 3), 0), "BOOLValue"}];
  }

  else
  {
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"useErasureSensitiveMode", 1);
  }

  v8 = BoolValueForKey;
  v9 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-facetime-jb-high-start" userDefaultKey:@"useHighStartMode" defaultValue:objc_msgSend(MEMORY[0x1E696AD98] isDoubleType:{"numberWithInt:", self->_deviceRole == 0), 0), "BOOLValue"}];
  v53 = 0xFFFFFFFFLL;
  v54 = 0xFFFFFFFFLL;
  v10 = RTPCreateHandle(&v54, 0, 1, 0, -[VCCallSession callID](self, "callID"), MediaCallback, self, [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](-[VCMediaNegotiatorBase localSettings](self->_mediaNegotiator "localSettings")]);
  if (v10 < 0)
  {
    v19 = v10;
    v28 = @"Error creating handle";
    v29 = 7204;
  }

  else
  {
    if ([(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
    {
      v11 = [(VCMediaNegotiatorResults *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedSettings] mediaControlInfoVersion];
    }

    else
    {
      v11 = 1;
    }

    v12 = VCMediaControlInfoGeneratorCreateWithTypeAndVersion(0, v11);
    self->audioMediaControlInfoGenerator = v12;
    VCMediaControlInfoGeneratoSetFECFeedbackVersion(v12, [(VCCallSession *)self mediaControlInfoFECFeedbackVersion]);
    if ([(VCCapabilities *)self->caps isVideoEnabled])
    {
      VCMediaControlInfoGeneratorAddOptions(self->audioMediaControlInfoGenerator, 1);
    }

    VCMediaControlInfoGeneratorRegisterCallbacks(self->audioMediaControlInfoGenerator, self, VCCallSessionFillMediaControlInfoCallback, VCCallSessionProcessMediaControlInfoCallback);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0;
    v67[0] = 1;
    v67[1] = v54;
    *(&v81 + 1) = self->audioMediaControlInfoGenerator;
    v13 = [(VCCallSession *)self callID];
    detectInactiveAudioFramesAACELD = 0;
    *&v82 = __PAIR64__(v8, v13);
    LODWORD(v86) = 0;
    HIDWORD(v82) = 1;
    LODWORD(v83) = v9;
    BYTE4(v83) = 1;
    *(&v83 + 1) = self->reportingAgent;
    BYTE10(v85) = 0;
    operatingMode = self->operatingMode;
    if (operatingMode <= 6 && ((1 << operatingMode) & 0x46) != 0)
    {
      detectInactiveAudioFramesAACELD = self->detectInactiveAudioFramesAACELD;
    }

    LOBYTE(v94) = detectInactiveAudioFramesAACELD;
    Receiver = VCAudioReceiver_CreateReceiver(v67);
    if (Receiver)
    {
      v17 = Receiver;
      v18 = RTPSetPacketMultiplexMode(v54, [(VCCallSession *)self mapPacketMultiplexModeToRTPMode:self->packetMultiplexMode]);
      if (v18 < 0)
      {
        v19 = v18;
        v28 = @"Error setting VTP mode";
        v29 = 7235;
      }

      else
      {
        v19 = RTPSetConnectionManager(v54, self->connectionManager);
        if ((v19 & 0x80000000) == 0)
        {
          if ([(VCCapabilities *)self->caps isVideoEnabled])
          {
            v20 = self->operatingMode;
            v21 = [(VCCallSession *)self callID];
            v22 = [(VCMediaNegotiatorBase *)self->_mediaNegotiator localSettings];
            if (v20 == 4)
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            v24 = RTPCreateHandle(&v53, 1u, 1, 0, v21, MediaCallback, self, [-[VCMediaNegotiatorLocalConfiguration mediaConfigurationForMediaType:](v22 mediaConfigurationForMediaType:{v23), "ssrc"}]);
            if (v24 < 0)
            {
              v19 = v24;
              v28 = @"Error creating video handle";
              v29 = 7244;
              v27 = 218;
              goto LABEL_49;
            }

            v25 = VCMediaControlInfoGeneratorCreateWithTypeAndVersion(1, v11);
            self->videoMediaControlInfoGenerator = v25;
            VCMediaControlInfoGeneratoSetFECFeedbackVersion(v25, [(VCCallSession *)self mediaControlInfoFECFeedbackVersion]);
            VCMediaControlInfoGeneratorRegisterCallbacks(self->videoMediaControlInfoGenerator, self, VCCallSessionFillMediaControlInfoCallback, VCCallSessionProcessMediaControlInfoCallback);
            v26 = RTPSetPacketMultiplexMode(v53, [(VCCallSession *)self mapPacketMultiplexModeToRTPMode:self->packetMultiplexMode]);
            if (v26 < 0)
            {
              v19 = v26;
              v28 = @"Error setting VTP mode";
              v29 = 7249;
              v27 = 218;
              v43 = @"Could not setup video RTP";
LABEL_50:
              VCAudioReceiver_Finalize(&v17->var0.var0);
              if (v53 != 0xFFFFFFFFLL)
              {
                CheckOutHandleDebug();
              }

              goto LABEL_52;
            }

            v19 = RTPSetAudioReceiver(v53, v17);
            v27 = 218;
            if (v19 < 0)
            {
              v28 = @"Failed to associate audio/video handles";
              v29 = 7251;
LABEL_49:
              v43 = @"Could not setup RTP";
              goto LABEL_50;
            }
          }

          else
          {
            v27 = 217;
          }

          v30 = [[VCCaptionsReceiver alloc] initWithDelegate:self];
          self->_captionsReceiver = v30;
          if (!v30)
          {
            v28 = @"Failed to create the captions receiver";
            v29 = 7256;
            goto LABEL_49;
          }

          v31 = v53;
          self->rtpHandle = v54;
          self->rtpVideo = v31;
          self->audioReceiver = v17;
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              return 1;
            }

            v33 = VRTraceErrorLogLevelToCSTR();
            v34 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            audioReceiver = self->audioReceiver;
            *buf = 136315906;
            v56 = v33;
            v57 = 2080;
            v58 = "[VCCallSession(PrivateMethods) createRTPHandles:]";
            v59 = 1024;
            v60 = 7262;
            v61 = 2048;
            v62 = audioReceiver;
            v36 = "VCCallSession [%s] %s:%d audioReceiver=%p";
            v37 = v34;
            v38 = 38;
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v32 = [(VCCallSession *)self performSelector:sel_logPrefix];
            }

            else
            {
              v32 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              return 1;
            }

            v39 = VRTraceErrorLogLevelToCSTR();
            v40 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            v41 = self->audioReceiver;
            *buf = 136316418;
            v56 = v39;
            v57 = 2080;
            v58 = "[VCCallSession(PrivateMethods) createRTPHandles:]";
            v59 = 1024;
            v60 = 7262;
            v61 = 2112;
            v62 = v32;
            v63 = 2048;
            v64 = self;
            v65 = 2048;
            v66 = v41;
            v36 = "VCCallSession [%s] %s:%d %@(%p) audioReceiver=%p";
            v37 = v40;
            v38 = 58;
          }

          _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
          return 1;
        }

        v28 = @"Error setting connectionManager";
        v29 = 7238;
      }

      v27 = 217;
      goto LABEL_49;
    }

    v28 = @"Failed to initialize audio receiver";
    v29 = 7232;
    v19 = -2147418109;
  }

  v27 = 217;
  v43 = @"Could not setup RTP";
LABEL_52:
  if (v54 != 0xFFFFFFFFLL)
  {
    CheckOutHandleDebug();
  }

  if (v19 < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v46 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v51 = v29;
          v47 = [(__CFString *)v43 UTF8String];
          v48 = [(__CFString *)v28 UTF8String];
          *buf = 136316162;
          v56 = v44;
          v57 = 2080;
          v58 = "[VCCallSession(PrivateMethods) createRTPHandles:]";
          v59 = 1024;
          v60 = 7282;
          v61 = 2080;
          v62 = v47;
          v29 = v51;
          v63 = 2080;
          v64 = v48;
          _os_log_error_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d %s: %s", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        v52 = v29;
        v49 = [(__CFString *)v43 UTF8String];
        v50 = [(__CFString *)v28 UTF8String];
        *buf = 136316162;
        v56 = v44;
        v57 = 2080;
        v58 = "[VCCallSession(PrivateMethods) createRTPHandles:]";
        v59 = 1024;
        v60 = 7282;
        v61 = 2080;
        v62 = v49;
        v29 = v52;
        v63 = 2080;
        v64 = v50;
        _os_log_fault_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_FAULT, "VCCallSession [%s] %s:%d %s: %s", buf, 0x30u);
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32000, v27, v19, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", v29], v43, v28);
  }

  return 0;
}

- (void)releaseRTPHandles
{
  RTPSetAudioReceiver(self->rtpVideo, 0);
  self->rtpHandle = 0xFFFFFFFFLL;
  self->rtpVideo = 0xFFFFFFFFLL;
  VCAudioReceiver_Finalize(&self->audioReceiver->var0.var0);
  audioTransmitter = self->audioTransmitter;
  *&self->audioReceiver = 0u;

  RTPCloseHandle();

  RTPCloseHandle();
}

- (BOOL)prepareSRTPWithError:(id *)a3
{
  if (![(VCCapabilities *)self->caps isKeyExchangeEnabled]&& ![(VCCapabilities *)self->caps isDTLSEnabled])
  {
    return 1;
  }

  pthread_mutex_lock(&self->srtpLock);
  self->didPrepareSRTP = 1;
  v5 = SRTPPrepareEncryption();
  if ([(VCCapabilities *)self->caps isVideoEnabled])
  {
    v6 = SRTPPrepareEncryption();
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock(&self->srtpLock);
  v7 = v5 >= 0;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32000, 259, v5, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 7338], @"Could not prepare SRTP for audio RTP handle", @"Error calling SRTPPrepareEncryption");
  if (VRTraceGetErrorLogLevelForModule() < 2)
  {
    goto LABEL_14;
  }

  VRTraceErrorLogLevelToCSTR();
  if (VRTraceIsOSFaultDisabled())
  {
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) prepareSRTPWithError:];
      if ((v6 & 0x80000000) == 0)
      {
        return v7;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
  {
LABEL_14:
    if ((v6 & 0x80000000) == 0)
    {
      return v7;
    }

    goto LABEL_15;
  }

  [VCCallSession(PrivateMethods) prepareSRTPWithError:];
  if ((v6 & 0x80000000) == 0)
  {
    return v7;
  }

LABEL_15:
  +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32000, 259, v6, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 7350], @"Could not prepare SRTP for video RTP handle", @"Error calling SRTPPrepareEncryption");
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) prepareSRTPWithError:];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      [VCCallSession(PrivateMethods) prepareSRTPWithError:];
    }
  }

  return 0;
}

- (BOOL)createMediaQueueHandle:(id *)a3
{
  Handle = MediaQueue_CreateHandle(&self->hMediaQueue, self->rtpHandle);
  if (Handle < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) createMediaQueueHandle:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCCallSession(PrivateMethods) createMediaQueueHandle:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32000, 219, Handle, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 7369], @"Could not setup media queue", @"Error creating handle");
  }

  else
  {
    MediaQueue_SetFECFeedbackVersion(self->hMediaQueue, [(VCCallSession *)self mediaControlInfoFECFeedbackVersion]);
  }

  return Handle >= 0;
}

+ (id)getDecodePayloadTypes:(int)a3 secondaryPayloadTypes:(id)a4
{
  v5 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a4, "count") + 1}];
  [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v5)}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [a4 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
          objc_enumerationMutation(a4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 intValue];
        if (v12 != v5 && [VCPayloadUtils isPayloadSupportedInFaceTime:v12])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [a4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)negotiateFeaturesString:(id)a3 forPayload:(int)a4
{
  v4 = *&a4;
  v29[3] = *MEMORY[0x1E69E9840];
  bzero(v17, 0xC80uLL);
  v7 = [(VCCallSession *)self pickFeaturesStringForPayload:v4 featureListDict:[(VCCallSession *)self allPayloadsLocalFeaturesString] remote:0];
  v8 = -[VCCallSession pickFeaturesStringForPayload:featureListDict:remote:](self, "pickFeaturesStringForPayload:featureListDict:remote:", v4, [a3 featureListDict], 1);
  if ([(VCCallSession *)self setMatchedFeaturesString:v17 localFeaturesString:v7 remoteFeaturesString:v8])
  {
    v28[0] = @"matchedFeatureListString";
    v29[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    v29[1] = v7;
    v28[1] = @"localFeatureListString";
    v28[2] = @"remoteFeatureListString";
    v29[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->featureListStringDict, "setObject:forKeyedSubscript:", v9, [MEMORY[0x1E696AD98] numberWithInt:v4]);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v19 = v10;
        v20 = 2080;
        v21 = "[VCCallSession(PrivateMethods) negotiateFeaturesString:forPayload:]";
        v22 = 1024;
        v23 = 7418;
        v24 = 2080;
        v25 = v17;
        v26 = 1024;
        v27 = v4;
        v12 = "VCCallSession [%s] %s:%d matched FeaturesString = [%s], for payload %d";
        v13 = v11;
        v14 = 44;
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = v15;
      v20 = 2080;
      v21 = "[VCCallSession(PrivateMethods) negotiateFeaturesString:forPayload:]";
      v22 = 1024;
      v23 = 7420;
      v24 = 1024;
      LODWORD(v25) = v4;
      v12 = "VCCallSession [%s] %s:%d setMatchedFeaturesString returned NO for payload %d";
      v13 = v16;
      v14 = 34;
      goto LABEL_8;
    }
  }
}

- (BOOL)negotiatePayloads:(id *)a3 withError:(id *)a4
{
  v102 = *MEMORY[0x1E69E9840];
  v7 = [(VCCallInfo *)self->localCallInfo callID];
  v8 = [[SDPMini alloc] initWithString:[(VCCallInfo *)self->remoteCallInfo sdpString]];
  if (v8)
  {
    v9 = v8;
    v83 = v7;
    v84 = a4;
    v10 = [(SDPMini *)v8 getMediaLineForType:2];
    [(VCCallInfo *)self->remoteCallInfo setSdp:v9];
    [objc_msgSend(v10 "imageAttributeRules")];
    [(VCCallInfo *)self->remoteCallInfo setSupportsDynamicMaxBitrate:[(SDPMini *)v9 allowsDynamicMaxBitrate]];
    [(VCCallInfo *)self->remoteCallInfo setAuNumber:[(NSNumber *)[(SDPMini *)v9 audioUnitModel] unsignedIntegerValue]];
    [(VCCallInfo *)self->remoteCallInfo setMaxBandwidth:[(NSNumber *)[(SDPMini *)v9 maxBandwidth] unsignedIntegerValue]];
    self->callSessionBitrate = [(NSNumber *)[(SDPMini *)v9 answerBandwidth] unsignedIntegerValue];
    if ([(VCCallSession *)self deviceRole]== 1 || [(VCCallSession *)self deviceRole]== 9)
    {
      v86 = 0;
      v87 = 0;
      if ([(SDPMini *)v9 getBasebandCodecType:&v87 sampleRate:&v86])
      {
        [(VCCallSession *)self setBasebandCodecType:v87];
        [(VCCallSession *)self setBasebandCodecSampleRate:v86];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v87 UTF8String];
            v14 = [v86 intValue];
            *buf = 136316162;
            v94 = v11;
            v95 = 2080;
            v96 = "[VCCallSession(PrivateMethods) negotiatePayloads:withError:]";
            v97 = 1024;
            v98 = 7458;
            v99 = 2080;
            *v100 = v13;
            *&v100[8] = 1024;
            v101[0] = v14;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SDP has basebandCodecType:%s, sampleRate:%d", buf, 0x2Cu);
          }
        }
      }
    }

    if (self->allowAudioRecording || [(SDPMini *)v9 allowAudioRecording])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = a3;
          allowAudioRecording = self->allowAudioRecording;
          if (allowAudioRecording)
          {
            v19 = [(SDPMini *)v9 allowAudioRecording];
            allowAudioRecording = self->allowAudioRecording;
          }

          else
          {
            v19 = 0;
          }

          v21 = [(SDPMini *)v9 allowAudioRecording];
          *buf = 136316418;
          v94 = v15;
          v95 = 2080;
          v96 = "[VCCallSession(PrivateMethods) negotiatePayloads:withError:]";
          v97 = 1024;
          v98 = 7464;
          v99 = 1024;
          *v100 = v19;
          *&v100[4] = 1024;
          *&v100[6] = allowAudioRecording;
          LOWORD(v101[0]) = 1024;
          *(v101 + 2) = v21;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d AllowAudioRecording: %d (local: %d remote: %d)", buf, 0x2Eu);
          a3 = v17;
        }
      }

      v22 = self->allowAudioRecording && [(SDPMini *)v9 allowAudioRecording];
      self->allowAudioRecording = v22;
    }

    v23 = self->isRTCPFBEnabled && [(SDPMini *)v9 allowRTCPFB];
    self->isRTCPFBEnabled = v23;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isRTCPFBEnabled = self->isRTCPFBEnabled;
        *buf = 136315906;
        v94 = v24;
        v95 = 2080;
        v96 = "[VCCallSession(PrivateMethods) negotiatePayloads:withError:]";
        v97 = 1024;
        v98 = 7470;
        v99 = 1024;
        *v100 = isRTCPFBEnabled;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d isRTCPFBEnabled = %d", buf, 0x22u);
      }
    }

    if (![(NSMutableArray *)[(SDPMini *)v9 secondaryAudioPayloads] count]&& self->preferredAudioCodec == 104 && !self->_deviceRole)
    {
      self->preferredAudioCodec = 105;
    }

    if ([(SDPMini *)v9 aacBlockSize])
    {
      v27 = [(NSNumber *)[(SDPMini *)v9 aacBlockSize] intValue];
      if (v27 > self->aacBlockSize)
      {
        self->aacBlockSize = v27;
      }
    }

    else
    {
      self->aacBlockSize = 512;
    }

    RTPSetRemoteSSRC(self->rtpHandle, [(NSNumber *)[(SDPMini *)v9 audioRTPID] intValue]);
    RTPSetRemoteSSRC(self->rtpVideo, [v10 rtpId]);
    RTPSetCellularUniqueTag(self->rtpHandle, [(VCTransportSession *)self->_transportSession basebandNotificationRegistrationToken]);
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(v10, "payloads")}];
    [v28 removeObject:&unk_1F5799F48];
    v29 = [v28 count];
    v85 = v79;
    v30 = 4 * v29;
    v31 = &v79[-((v30 + 15) & 0x7FFFFFFF0)];
    if (v29)
    {
      memset(&v79[-((v30 + 15) & 0x7FFFFFFF0)], 170, v30);
    }

    if (v29 >= 1)
    {
      v32 = 0;
      do
      {
        v31[v32] = [objc_msgSend(v28 objectAtIndexedSubscript:{v32), "intValue"}];
        ++v32;
      }

      while ((v29 & 0x7FFFFFFF) != v32);
    }

    v33 = v29;
    v34 = [(SDPMini *)v9 audioPayloads];
    v35 = [(SDPMini *)v9 secondaryAudioPayloads];
    [VCCallSession setRxPayloadList:self->rtpHandle withPayloadTypes:v34];
    rtpVideo = self->rtpVideo;
    v81 = v33;
    RTPSetRxPayloadList(rtpVideo, v33, v31);
    RTPSetRTCPFB(self->rtpVideo, [(SDPMini *)v9 allowRTCPFB]);
    if ([(NSMutableArray *)v34 count])
    {
      self->_isUseCaseWatchContinuity = +[VCPayloadUtils isUseCaseWatchContinuity:primaryPayload:](VCPayloadUtils, "isUseCaseWatchContinuity:primaryPayload:", self->_deviceRole, [-[NSMutableArray objectAtIndexedSubscript:](v34 objectAtIndexedSubscript:{0), "intValue"}]);
    }

    if (![(VCCallSession *)self choosePayload:v34])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCCallSession(PrivateMethods) negotiatePayloads:withError:];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [VCCallSession(PrivateMethods) negotiatePayloads:withError:];
        }
      }

      SIPHangup(&self->hSIP, v83, 222);
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 7525];
      [GKVoiceChatError getNSError:v84 code:32002 detailedCode:222 filePath:v52 description:@"Could not find a compatible codec.  The remote participant may be using an incompatible version." reason:@"No matching codec"];
      [(VCCapabilities *)self->caps setActualAudioCodec:0xFFFFFFFFLL];

      goto LABEL_82;
    }

    v37 = a3;
    if (![VCPayloadUtils isUseCaseWatchContinuity:self->_deviceRole primaryPayload:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]])
    {
      if (!self->allowAudioSwitching || [(VCCallSession *)self chooseSecondaryPayloads:v35])
      {
LABEL_54:
        v82 = v9;
        if (!self->isGKVoiceChat)
        {
          operatingMode = self->operatingMode;
          if (operatingMode == 7 || operatingMode == 2)
          {
            [(VCCallSession *)self chooseDTXPayloads:v34];
          }
        }

        [(VCCapabilities *)self->caps setActualAudioCodec:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]];
        v39 = [VCCallSession getDecodePayloadTypes:[(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload] secondaryPayloadTypes:v35];
        if (v37)
        {
          *v37 = v39;
        }

        IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
        v40 = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 0);
        if (![(VCCapabilities *)self->caps isDuplexAudioOnly])
        {
          v41 = self->operatingMode;
          if (v41 == 4)
          {
            v42 = 1;
          }

          else
          {
            v42 = v41;
          }

          if (![(VCCallSession *)self chooseVideoPayload:v28 operatingMode:v42 isLocalOnCellular:IsInterfaceOnCellularForActiveConnectionWithQuality isRemoteOnCellular:v40]&& [(VCCapabilities *)self->caps isDuplexVideoOnly])
          {
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            v44 = v82;
            if (ErrorLogLevelForModule >= 2)
            {
              VRTraceErrorLogLevelToCSTR();
              if (VRTraceIsOSFaultDisabled())
              {
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [VCCallSession(PrivateMethods) negotiatePayloads:withError:];
                }
              }

              else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
              {
                [VCCallSession(PrivateMethods) negotiatePayloads:withError:];
              }
            }

            [(VCCapabilities *)self->caps setActualVideoCodec:0xFFFFFFFFLL];
            SIPHangup(&self->hSIP, v83, 223);
            v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 7574];
            [GKVoiceChatError getNSError:v84 code:32002 detailedCode:223 filePath:v77 description:@"Could not find a compatible codec.  The remote participant may be using an incompatible version." reason:@"No matching codec"];

LABEL_82:
            [(VCCallInfo *)self->remoteCallInfo setSdp:0];

            return 0;
          }

          v45 = [(SDPMini *)v82 getMediaLineForType:3];
          [objc_msgSend(v45 "imageAttributeRules")];
          self->screenPayload = 0;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v46 = [+[VCVideoRuleCollectionsScreen sharedInstance](VCVideoRuleCollectionsScreen supportedPayloads];
          v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v89 objects:v88 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v90;
            while (2)
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v90 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v89 + 1) + 8 * i);
                if ([objc_msgSend(v45 "payloads")])
                {
                  self->screenPayload = [v51 integerValue];
                  goto LABEL_84;
                }
              }

              v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v89 objects:v88 count:16];
              if (v48)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_84:

        if (!self->isGKVoiceChat)
        {
          v53 = self->operatingMode;
          if (v53 == 4 || v53 == 1)
          {
            v54 = v82;
            if (v81 >= 1)
            {
              v55 = v81 & 0x7FFFFFFF;
              do
              {
                v56 = *v31++;
                [(VCCallSession *)self negotiateFeaturesString:v54 forPayload:v56];
                --v55;
              }

              while (v55);
            }

            v57 = [(VCCallSession *)self applyFeatureListStringForPayload:LODWORD(self->videoPayload)];
            if (v57 < 0)
            {
              v76 = v57;
              if (VRTraceGetErrorLogLevelForModule() >= 2)
              {
                VRTraceErrorLogLevelToCSTR();
                if (VRTraceIsOSFaultDisabled())
                {
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    [VCCallSession(PrivateMethods) negotiatePayloads:withError:];
                  }
                }

                else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
                {
                  [VCCallSession(PrivateMethods) negotiatePayloads:withError:];
                }
              }

              [(VCCapabilities *)self->caps setActualVideoCodec:0xFFFFFFFFLL];
              SIPHangup(&self->hSIP, v83, 221);
              v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 7614];
              [GKVoiceChatError getNSError:v84 code:32002 detailedCode:221 returnCode:v76 filePath:v78 description:@"SetBWEstMode critical failure." reason:@"Bad SDP."];

              goto LABEL_136;
            }

            [(VCCapabilities *)self->caps setActualVideoCodec:LODWORD(self->videoPayload)];
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v58 = VRTraceErrorLogLevelToCSTR();
              v59 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                videoPayload = self->videoPayload;
                *buf = 136315906;
                v94 = v58;
                v95 = 2080;
                v96 = "[VCCallSession(PrivateMethods) negotiatePayloads:withError:]";
                v97 = 1024;
                v98 = 7624;
                v99 = 1024;
                *v100 = videoPayload;
                _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ===== Actual Video Payload (%d) =====", buf, 0x22u);
              }
            }
          }
        }

        v61 = 0;
        deviceRole = self->_deviceRole;
        if (deviceRole <= 5 && ((1 << deviceRole) & 0x29) != 0)
        {
          v61 = [(VCTransportSession *)self->_transportSession isHandoverSupported];
        }

        v63 = VRTraceGetErrorLogLevelForModule();
        v64 = v82;
        if (v63 >= 7)
        {
          v65 = VRTraceErrorLogLevelToCSTR();
          v66 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v67 = "NOT ";
            v94 = v65;
            *buf = 136315906;
            v96 = "[VCCallSession(PrivateMethods) negotiatePayloads:withError:]";
            v95 = 2080;
            if (v61)
            {
              v67 = "";
            }

            v97 = 1024;
            v98 = 7628;
            v99 = 2080;
            *v100 = v67;
            _os_log_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: handover is %ssupported.", buf, 0x26u);
          }
        }

        [(VCConnectionManager *)self->connectionManager setSupportDuplication:v61];
        if (!self->useRateControl || [(VCCallSession *)self startRateControl:v84])
        {
          hAFRC = self->hAFRC;
          if (hAFRC != 0xFFFFFFFFLL)
          {
            AFRCSetAudioPayload(hAFRC, [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload], [(VCAudioPayload *)self->currentAudioPayload bitrate]);
          }

          [(VCCallSession *)self lock];
          if (self->useRateControl & IsInterfaceOnCellularForActiveConnectionWithQuality)
          {
            [(VCCallSession *)self setupWCMClient];
          }

          [(VCCallSession *)self unlock];
          [(VCCallSession *)self lock];
          if (self->useRateControl)
          {
            v69 = self->operatingMode;
            if (v69 <= 7 && ((1 << v69) & 0x96) != 0 && self->iRATSuggestionEnabled)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v70 = VRTraceErrorLogLevelToCSTR();
                v71 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v94 = v70;
                  v95 = 2080;
                  v96 = "[VCCallSession(PrivateMethods) negotiatePayloads:withError:]";
                  v97 = 1024;
                  v98 = 7653;
                  _os_log_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: iRAT recommendation is enabled.", buf, 0x1Cu);
                }
              }

              wrmInfo = self->wrmInfo;
              if (wrmInfo)
              {
                WRMInitialize(wrmInfo, self->rtpHandle);
              }

              [(VCCallSession *)self setupWRMClient];
            }
          }

          [(VCCallSession *)self unlock];

          return 1;
        }

LABEL_136:
        [(VCCallInfo *)self->remoteCallInfo setSdp:0];
        return 0;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v73 = VRTraceErrorLogLevelToCSTR();
        v74 = *MEMORY[0x1E6986650];
        v75 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v94 = v73;
            v95 = 2080;
            v96 = "[VCCallSession(PrivateMethods) negotiatePayloads:withError:]";
            v97 = 1024;
            v98 = 7541;
            _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Not using secondary audio, no codecs found", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          [VCCallSession(PrivateMethods) negotiatePayloads:withError:];
        }
      }
    }

    self->allowAudioSwitching = 0;
    goto LABEL_54;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) negotiatePayloads:withError:];
    }
  }

  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32002, 221, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 7433], @"Unable to parse session description. The remote participant may be using an incompatible version.", @"Bad SDP.");
  return 0;
}

- (BOOL)negotiateMaxBandwidth:(int *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return a3 != 0;
  }

  v5 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
  v6 = VCBitrateArbiter_ModeFromOperatingMode(self->operatingMode);
  v7 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v5 forLocalInterface:1 arbiterMode:v6 encodeRule:self->_currentEncodeRule];
  callSessionBitrate = self->callSessionBitrate;
  v9 = VCConnectionManager_CopyPrimaryConnection(self->connectionManager);
  if (VCConnection_IsRemoteOnCellular(v9))
  {
    [(VCCallInfo *)self->remoteCallInfo setCellBandwidth:callSessionBitrate];
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!callSessionBitrate)
  {
    if (![(VCCallSession *)self isLocalOrRemoteOnCellular])
    {
      LODWORD(callSessionBitrate) = 300;
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v10 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v5 forLocalInterface:0 arbiterMode:v6 encodeRule:self->_currentEncodeRule];
    if (v10 <= 100)
    {
      LODWORD(callSessionBitrate) = 100;
    }

    else
    {
      LODWORD(callSessionBitrate) = v10;
    }
  }

  if (v5)
  {
LABEL_12:
    CFRelease(v5);
  }

LABEL_13:
  if (v7 >= callSessionBitrate)
  {
    v11 = callSessionBitrate;
  }

  else
  {
    v11 = v7;
  }

  *a3 = v11;
  if (self->operatingMode == 4)
  {
    carrierBitrateCap = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedScreenShareCellularBitrate];
  }

  else
  {
    carrierBitrateCap = self->carrierBitrateCap;
  }

  v13 = [(VCCallSession *)self treatAsCellular];
  v14 = *a3;
  if (v13 && v14 > carrierBitrateCap)
  {
    *a3 = carrierBitrateCap;
    v14 = carrierBitrateCap;
  }

  self->callSessionBitrate = v14;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a3;
      v21 = 136316418;
      v22 = v15;
      v23 = 2080;
      v24 = "[VCCallSession(PrivateMethods) negotiateMaxBandwidth:]";
      v25 = 1024;
      v26 = 7705;
      v27 = 1024;
      v28 = v7;
      v29 = 1024;
      v30 = callSessionBitrate;
      v31 = 1024;
      v32 = v17;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d localMaxBandwidth: %d remoteMaxBandwidth: %d answerBandwidth: %d", &v21, 0x2Eu);
    }
  }

  operatingMode = self->operatingMode;
  if (operatingMode == 7 || operatingMode == 2)
  {
    v19 = [(VCCallSession *)self currentAudioCap];
    AFRCSetTxCap(self->hAFRC, v19);
    [(AVCRateController *)self->_rateController setTargetBitrateCap:v19];
  }

  return a3 != 0;
}

- (BOOL)canNegotiateVideoPayload:(int)a3 supportedPayloads:(id)a4 isLocalOnCellular:(BOOL)a5 isRemoteOnCellular:(BOOL)a6
{
  if (a3 == 100)
  {
    if ([(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation:*&a3])
    {
      if (([(NSMutableArray *)[(VCVideoRuleCollections *)[(VCMediaNegotiatorResultsVideo *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedVideoSettings] videoRuleCollections] supportedPayloads] containsObject:&unk_1F5799F48]& 1) == 0)
      {
        LOBYTE(v7) = 0;
        return v7;
      }
    }

    else
    {
      v7 = [(VCCallSession *)self doesVideoPayloadMatchRemoteImageAttributeRules:&unk_1F5799F48];
      if (!v7)
      {
        return v7;
      }
    }

    if (![+[VCDefaults sharedInstance](VCDefaults forceHWI]|| [+[VCDefaults forceVideoPayload]!= 100 sharedInstance]
    {
      LOBYTE(v7) = 1;
      return v7;
    }

    v8 = &unk_1F5799F48;
  }

  else
  {
    if (a3 != 123)
    {
      LOBYTE(v7) = a3 == 126;
      return v7;
    }

    v8 = &unk_1F5799F90;
  }

  LOBYTE(v7) = [a4 containsObject:{v8, a4, a5, a6}];
  return v7;
}

- (BOOL)chooseVideoPayload:(id)a3 operatingMode:(int)a4 isLocalOnCellular:(BOOL)a5 isRemoteOnCellular:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v41 = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
    return 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (!v11)
  {
    if (a4 == 4)
    {
LABEL_20:
      v19 = 0;
      self->videoPayload = 128;
      return v19;
    }

    goto LABEL_31;
  }

  v12 = v11;
  v27 = v6;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *v38;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v38 != v16)
      {
        objc_enumerationMutation(a3);
      }

      v18 = [*(*(&v37 + 1) + 8 * i) unsignedIntValue];
      switch(v18)
      {
        case 'd':
          v13 = 1;
          break;
        case '{':
          v14 = 1;
          break;
        case '~':
          v15 = 1;
          break;
      }
    }

    v12 = [a3 countByEnumeratingWithState:&v37 objects:v36 count:16];
  }

  while (v12);
  if (a4 == 4)
  {
    if (v14)
    {
      self->videoPayload = 123;
      return 1;
    }

    goto LABEL_20;
  }

  if (v13)
  {
    v20 = 100;
    if ([(VCCallSession *)self canNegotiateVideoPayload:100 supportedPayloads:[+[VCVideoRuleCollectionsCamera supportedPayloads] isLocalOnCellular:v7 isRemoteOnCellular:v27 sharedInstance]]
    {
      goto LABEL_28;
    }
  }

  if ((v14 & 1) == 0)
  {
    if (v15)
    {
      v19 = 1;
      v20 = 126;
      goto LABEL_32;
    }

LABEL_31:
    v19 = 0;
    v20 = -1;
    goto LABEL_32;
  }

  v21 = -[VCCallSession canNegotiateVideoPayload:supportedPayloads:isLocalOnCellular:isRemoteOnCellular:](self, "canNegotiateVideoPayload:supportedPayloads:isLocalOnCellular:isRemoteOnCellular:", 123, [+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera supportedPayloads], v7, v27);
  if (v21)
  {
    v20 = 123;
  }

  else
  {
    v20 = 126;
  }

  if (((v21 | v15) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v19 = 1;
LABEL_32:
  self->videoPayload = v20;
  if ([+[VCDefaults forceHWI] sharedInstance]
  {
    v22 = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
    if (v22 != 128)
    {
      v23 = v22;
      self->videoPayload = v22;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v29 = v24;
          v30 = 2080;
          v31 = "[VCCallSession(PrivateMethods) chooseVideoPayload:operatingMode:isLocalOnCellular:isRemoteOnCellular:]";
          v32 = 1024;
          v33 = 7824;
          v34 = 1024;
          v35 = v23;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Video payload OVERRIDE to %d", buf, 0x22u);
        }
      }

      return 1;
    }
  }

  return v19;
}

- (BOOL)isValidVideoPayloadOverride:(id)a3
{
  v4 = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
  v5 = [+[VCDefaults sharedInstance](VCDefaults forceRecvVideoPayload];
  if ((v4 == 128 || (v6 = [a3 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v4)}]) != 0) && (v5 == 128 || (v6 = objc_msgSend(a3, "containsObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v5))) != 0))
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)doesVideoPayloadMatchRemoteImageAttributeRules:(id)a3
{
  v4 = [(SDPMini *)[(VCCallInfo *)self->remoteCallInfo sdp] getMediaLineForType:2];
  v5 = [objc_msgSend(objc_msgSend(v4 "imageAttributeRules")];
  v6 = [objc_msgSend(objc_msgSend(v4 "imageAttributeRules")];
  v7 = [v5 objectForKeyedSubscript:@"send"];
  v8 = [v6 objectForKeyedSubscript:@"send"];
  v9 = [v5 objectForKeyedSubscript:@"recv"];
  v10 = [v6 objectForKeyedSubscript:@"recv"];
  if (![v7 objectForKeyedSubscript:a3] && !objc_msgSend(v8, "objectForKeyedSubscript:", a3))
  {
    return ([v9 objectForKeyedSubscript:a3] || objc_msgSend(v10, "objectForKeyedSubscript:", a3)) && -[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera, "sharedInstance"), "getVideoRulesForTransport:payload:encodingType:", 1, objc_msgSend(a3, "intValue"), 2) != 0;
  }

  v11 = 1;
  if (!-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera, "sharedInstance"), "getVideoRulesForTransport:payload:encodingType:", 1, [a3 intValue], 1))
  {
    return ([v9 objectForKeyedSubscript:a3] || objc_msgSend(v10, "objectForKeyedSubscript:", a3)) && -[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera, "sharedInstance"), "getVideoRulesForTransport:payload:encodingType:", 1, objc_msgSend(a3, "intValue"), 2) != 0;
  }

  return v11;
}

- (int)getAllCompatibleVideoPayloads:(int *)a3 forMediaType:(int)a4
{
  v4 = *&a4;
  v30 = *MEMORY[0x1E69E9840];
  if (a4 == 2)
  {
    v7 = off_1E85F1FA8;
    goto LABEL_5;
  }

  if (a4 == 3)
  {
    v7 = off_1E85F1FB0;
LABEL_5:
    v8 = [[(__objc2_class *)*v7 sharedInstance] supportedPayloads];
    v9 = [-[SDPMini getMediaLineForType:](-[VCCallInfo sdp](self->remoteCallInfo "sdp")];
    goto LABEL_7;
  }

  v9 = 0;
  v8 = 0;
LABEL_7:
  v10 = [MEMORY[0x1E695DF70] array];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__VCCallSession_PrivateMethods__getAllCompatibleVideoPayloads_forMediaType___block_invoke;
  v21[3] = &unk_1E85F7240;
  v21[4] = v8;
  v21[5] = self;
  v21[6] = v10;
  [v9 enumerateObjectsUsingBlock:v21];
  if (![+[VCDefaults forceHWI] sharedInstance]
  {
    if ([v10 containsObject:&unk_1F5799F90] && objc_msgSend(v10, "containsObject:", &unk_1F5799FA8))
    {
      [v10 removeObject:&unk_1F5799FA8];
    }

    [v10 removeObject:&unk_1F5799F48];
    goto LABEL_23;
  }

  if ([(VCCallSession *)self isValidVideoPayloadOverride:v10])
  {
    v11 = [+[VCDefaults sharedInstance](VCDefaults forceVideoPayload];
    v12 = [+[VCDefaults sharedInstance](VCDefaults forceRecvVideoPayload];
    [v10 removeAllObjects];
    if (v11 != 128)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v23 = v13;
          v24 = 2080;
          v25 = "[VCCallSession(PrivateMethods) getAllCompatibleVideoPayloads:forMediaType:]";
          v26 = 1024;
          v27 = 7902;
          v28 = 1024;
          v29 = v11;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Video payload OVERRIDE to %d", buf, 0x22u);
        }
      }

      [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v11)}];
    }

    if (v12 != 128)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v23 = v15;
          v24 = 2080;
          v25 = "[VCCallSession(PrivateMethods) getAllCompatibleVideoPayloads:forMediaType:]";
          v26 = 1024;
          v27 = 7907;
          v28 = 1024;
          v29 = v12;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Video receive payload OVERRIDE to %d", buf, 0x22u);
        }
      }

      [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v12)}];
    }

LABEL_23:
    v17 = [v10 count];
    v18 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__VCCallSession_PrivateMethods__getAllCompatibleVideoPayloads_forMediaType___block_invoke_1496;
    v20[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
    v20[4] = v18;
    [v10 enumerateObjectsUsingBlock:v20];
    goto LABEL_28;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) getAllCompatibleVideoPayloads:forMediaType:];
    }
  }

  v18 = 0;
  v17 = 0;
LABEL_28:
  *a3 = v18;
  return v17;
}

uint64_t __76__VCCallSession_PrivateMethods__getAllCompatibleVideoPayloads_forMediaType___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    result = [*(a1 + 40) doesVideoPayloadMatchRemoteImageAttributeRules:a2];
    if (result)
    {
      v5 = *(a1 + 48);

      return [v5 addObject:a2];
    }
  }

  return result;
}

uint64_t __76__VCCallSession_PrivateMethods__getAllCompatibleVideoPayloads_forMediaType___block_invoke_1496(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 intValue];
  *(*(a1 + 32) + 4 * a3) = result;
  return result;
}

- (id)getCompatibleLocalFeatureListForPayloads:(int *)a3 count:(int)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  if (a4 >= 1)
  {
    v9 = a4;
    *&v8 = 136316162;
    v18 = v8;
    do
    {
      v10 = *a3++;
      v11 = [MEMORY[0x1E696AD98] numberWithInt:{v10, v18}];
      v12 = [-[VCCallSession allPayloadsLocalFeaturesString](self "allPayloadsLocalFeaturesString")];
      if (v12)
      {
        [v7 setObject:v12 forKeyedSubscript:v11];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v15 = "<nil>";
          if (v11)
          {
            v15 = [objc_msgSend(v11 "description")];
          }

          *buf = v18;
          v20 = v13;
          v21 = 2080;
          v22 = "[VCCallSession(PrivateMethods) getCompatibleLocalFeatureListForPayloads:count:]";
          v23 = 1024;
          v24 = 7949;
          v25 = 2080;
          v26 = v15;
          v27 = 1024;
          v28 = a4;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d filterFeatureListForPayloads: Unexpected for %s count: %d", buf, 0x2Cu);
        }
      }

      --v9;
    }

    while (v9);
  }

  if (!a4)
  {
    v16 = [-[VCCallSession allPayloadsLocalFeaturesString](self "allPayloadsLocalFeaturesString")];
    if (v16)
    {
      [v7 setObject:v16 forKeyedSubscript:&unk_1F5799FA8];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) getCompatibleLocalFeatureListForPayloads:count:];
      }
    }
  }

  return v7;
}

- (BOOL)setRTPPayloads:(id)a3 withError:(id *)a4
{
  v30 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v6 = [a3 count];
  v7 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  if (v7)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v8;
    v13 = &v29 - v9;
    do
    {
      *(v13 + 4) = 0xAAAAAAAAAAAAAAAALL;
      *v13 = v11;
      *(v13 + 1) = v11;
      v13 += 40;
      v12 -= 40;
    }

    while (v12);
  }

  else
  {
    v8 = 0;
  }

  bzero(v10, v8);
  deviceRole = self->_deviceRole;
  if (deviceRole)
  {
    v15 = deviceRole == 3;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if ([a3 count])
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = [objc_msgSend(a3 objectAtIndexedSubscript:{v17), "intValue"}];
      v20 = [(VCCallSession *)self newConfigForPayloadType:v19];
      v21 = &v10[40 * v17];
      *v21 = [v20 payload];
      *(v21 + 1) = [v20 payload];
      *(v21 + 3) = [v20 flags];
      *(v21 + 2) = [v20 samplesPerFrame];
      *(v21 + 5) = [VCPayloadUtils canBundleExternallyForPayload:v19 forBundlingScheme:1 operatingMode:self->operatingMode];

      if ((v19 - 97) <= 1)
      {
        v21[16] = v16;
      }

      v17 = v18;
    }

    while ([a3 count] > v18++);
  }

  if (VCAudioReceiver_SetupDecoders(self->audioReceiver, v10, [a3 count], &self->_vpioFormat, 0))
  {
    v23 = RTPSetSourceRate(self->rtpHandle, self->_vpioFormat.format.mSampleRate);
    if ((v23 & 0x80000000) == 0)
    {
      return 1;
    }

    v25 = v23;
  }

  else
  {
    v25 = -2147418108;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v32 = v26;
      v33 = 2080;
      v34 = "[VCCallSession(PrivateMethods) setRTPPayloads:withError:]";
      v35 = 1024;
      v36 = 8005;
      v37 = 1024;
      v38 = v25;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d failed: result=%x", buf, 0x22u);
    }
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8010];
  [GKVoiceChatError getNSError:v30 code:32002 detailedCode:224 returnCode:v25 filePath:v28 description:@"Could not set RTP payload" reason:@"Error"];
  SIPHangup(&self->hSIP, [(VCCallInfo *)self->localCallInfo callID], 224);
  return 0;
}

- (BOOL)setMediaQueueStreamSettings
{
  LODWORD(v2) = self->_vpioFormat.samplesPerFrame;
  v3 = RTPSetThrottlingAudioInterval(v2 / self->_vpioFormat.format.mSampleRate);
  if (v3 < 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) setMediaQueueStreamSettings];
    }
  }

  return v3 >= 0;
}

- (BOOL)setupCallerRTPChannelWithError:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  VCAudioReceiver_UpdateCellTech(self->audioReceiver, [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1], [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0]);
  if ([(VCCapabilities *)self->caps isVideoEnabled])
  {
    VideoReceiver_CellTechChanged();
  }

  v12 = 0;
  if (![(VCCallSession *)self negotiatePayloads:&v12 withError:a3])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) setupCallerRTPChannelWithError:];
      }
    }

    return 0;
  }

  if (![(VCCallSession *)self setRTPPayloads:v12 withError:a3])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) setupCallerRTPChannelWithError:];
      }
    }

    return 0;
  }

  if (![(VCCallSession *)self setMediaQueueStreamSettings])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) setupCallerRTPChannelWithError:];
      }
    }

    return 0;
  }

  if ((VCAudioReceiver_Start(&self->audioReceiver->var0.var0, v5) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) setupCallerRTPChannelWithError:];
      }
    }

    return 0;
  }

  v11 = 0;
  [(VCCallSession *)self negotiateMaxBandwidth:&v11];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      sipState = self->_sipState;
      *buf = 136316162;
      v14 = v6;
      v15 = 2080;
      v16 = "[VCCallSession(PrivateMethods) setupCallerRTPChannelWithError:]";
      v17 = 1024;
      v18 = 8067;
      v19 = 1024;
      v20 = sipState == 5;
      v21 = 1024;
      v22 = sipState;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d (state == GKVoiceChatServiceStateCallerAttemptingToConnect = %d, sipState = %d", buf, 0x28u);
    }
  }

  v9 = [(VCCallSession *)self createAudioTransmitter:a3];
  if (!v9 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) setupCallerRTPChannelWithError:];
    }
  }

  return v9;
}

- (BOOL)sipConnectWithError:(id *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(VCCallSession *)self sendSIPInviteWithError:?])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        if (*a3)
        {
          v12 = [objc_msgSend(*a3 "description")];
        }

        else
        {
          v12 = "<nil>";
        }

        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[VCCallSession(PrivateMethods) sipConnectWithError:]";
        *&v13[22] = 1024;
        *&v13[24] = 8080;
        *&v13[28] = 2080;
        *&v13[30] = v12;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d sendSIPInvite returned NO error = %s", v13, 0x26u);
        reportingSymptom();
        goto LABEL_16;
      }
    }

    reportingSymptom();
    if (a3)
    {
LABEL_16:
      v10 = *a3;
LABEL_18:
      [(VCCallSession *)self disconnect:v10 didRemoteCancel:0];
      return 0;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if ([(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
  {
    [(VCCallSession *)self lock];
    [(VCCallSession *)self cancelConnectionTimeoutTimer];
    [(VCCallSession *)self unlock];
    return 1;
  }

  [(TimingCollection *)self->perfTimers startTimingForKey:3];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13[27] = v8;
  *v13 = v8;
  *&v13[16] = v8;
  SIPGetRemoteInfo(self->hSIP, [(VCCallInfo *)self->localCallInfo callID:v8], v13, 0);
  -[VCCallInfo setUserAgent:](self->remoteCallInfo, "setUserAgent:", [MEMORY[0x1E696AEC0] stringWithUTF8String:v13]);
  [(VCCallSession *)self lock];
  if (![(VCCallSession *)self setupCallerRTPChannelWithError:a3])
  {
    [(VCCallSession *)self unlock];
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v5 = 1;
  if ([(VCCallInfo *)self->remoteCallInfo usesInitialFECImplementation])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  self->fecMode = v9;
  self->state = 1;
  [(VCCallSession *)self sendBasebandCodecMessage];
  [(VCCallSession *)self cancelConnectionTimeoutTimer];
  [(VCCallSession *)self unlock];
  if (![(VCCallSession *)self startMediaQueue:a3])
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return v5;
}

- (void)stopAudioWithCompletionHandler:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(VCCallSession *)self lock];
  if (self->isAudioRunning)
  {
    self->isAudioRunning = 0;
    [(VCCallSession *)self unlock];
    [(VCCallSessionDelegate *)[(VCCallSession *)self delegate] session:self stopAudioWithCompletionHandler:a3];
  }

  else
  {
    [(VCCallSession *)self unlock];
    if (a3)
    {
      (*(a3 + 2))(a3, 1, 0);
    }
  }

  if ([(VCCapabilities *)self->caps isAudioEnabled])
  {
    [(VCAudioTransmitter *)self->audioTransmitter stop];
  }

  reportingGenericEvent();
}

- (void)stopAudioIO:(id)a3
{
  v6[5] = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self lock];
  if (self->isAudioRunning)
  {
    self->isAudioRunning = 0;
    [(VCCallSessionDelegate *)[(VCCallSession *)self delegate] session:self stopAudioWithCompletionHandler:a3];
  }

  else if (a3)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__VCCallSession_PrivateMethods__stopAudioIO___block_invoke;
    v6[3] = &unk_1E85F7268;
    v6[4] = a3;
    dispatch_async(global_queue, v6);
  }

  [(VCCallSession *)self unlock];
}

uint64_t __45__VCCallSession_PrivateMethods__stopAudioIO___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v3, 32012, 264, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8171], @"Could not stop audio.", @"Audio is not running");
  return (*(*(a1 + 32) + 16))();
}

- (void)startAudioWithCompletionHandler:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  audioQueue = self->audioQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VCCallSession_PrivateMethods__startAudioWithCompletionHandler___block_invoke;
  block[3] = &unk_1E85F4E98;
  block[4] = self;
  block[5] = a3;
  dispatch_async(audioQueue, block);
}

uint64_t __65__VCCallSession_PrivateMethods__startAudioWithCompletionHandler___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) lock];
  v21 = 0;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disableAudio", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  v3 = *(a1 + 32);
  if (v3[19])
  {
    if ([v3 isCallOngoing])
    {
      v4 = *(a1 + 32);
      if (keyExistsAndHasValidFormat && AppBooleanValue)
      {
        [v4 unlock];
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v23 = v5;
            v24 = 2080;
            v25 = "[VCCallSession(PrivateMethods) startAudioWithCompletionHandler:]_block_invoke";
            v26 = 1024;
            v27 = 8214;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d disableAudio is set to True, not starting audio!", buf, 0x1Cu);
          }
        }

        goto LABEL_29;
      }

      v10 = v4[408];
      v11 = v4[224];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v23 = v12;
          v24 = 2080;
          v25 = "[VCCallSession(PrivateMethods) startAudioWithCompletionHandler:]_block_invoke";
          v26 = 1024;
          v27 = 8224;
          v28 = 1024;
          v29 = v11;
          v30 = 1024;
          v31 = v10 ^ 1;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d alreadyStarted = %d, isEnabled = %d", buf, 0x28u);
        }
      }

      v14 = [*(*(a1 + 32) + 1232) setupAudio:&v21];
      v9 = *(a1 + 32);
      if (v14)
      {

        *(*(a1 + 32) + 144) = [objc_msgSend(*(*(a1 + 32) + 1232) "audioPayloads")];
        v15 = *(a1 + 32);
        if ((v10 & 1) != 0 || v11)
        {
          [v15 unlock];
LABEL_29:
          result = *(a1 + 40);
          if (!result)
          {
            return result;
          }

          v8 = *(result + 16);
          return v8();
        }

        v16 = [v15 setupAudioCookies];
        v17 = *(a1 + 32);
        if (v16)
        {
          if (*(v17 + 993) == 1)
          {
            *(*(a1 + 32) + 368) = [[GKRingBuffer alloc] initWithCapacity:2048 bytesPerFrame:*(*(a1 + 32) + 568)];
            v17 = *(a1 + 32);
          }

          v18 = [*(v17 + 320) isAudioEnabled];
          v19 = *(a1 + 32);
          if (v18)
          {
            [*(v19 + 1232) start];
            [*(a1 + 32) startAudioIOWithCompletionHandler:*(a1 + 40)];
          }

          else
          {
            [*(v19 + 672) stopTimingForKey:5];
            [*(a1 + 32) startPausedHeartbeat];
          }

          reportingGenericEvent();
          return [*(a1 + 32) unlock];
        }

        [v17 unlock];
        +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v21, 32016, 226, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8252], @"Couldn't setup encoder.", @"Bad cookie?");
        goto LABEL_15;
      }
    }

    else
    {
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", &v21, 32012, 225, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8202], @"Could not start audio.", @"Call already completed");
      v9 = *(a1 + 32);
    }

    [v9 unlock];
LABEL_15:
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v8 = *(result + 16);
    return v8();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __65__VCCallSession_PrivateMethods__startAudioWithCompletionHandler___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) unlock];
  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);
    return v8();
  }

  return result;
}

- (void)startAudioIOWithCompletionHandler:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "[VCCallSession(PrivateMethods) startAudioIOWithCompletionHandler:]";
      *&buf[22] = 1024;
      *&buf[24] = 8279;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  if ((self->_deviceRole & 0xFFFFFFF7) == 1)
  {
    v7 = [(VCCallSession *)self basebandCodecType];
    v8 = [(VCCallSession *)self basebandCodecSampleRate];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v19 = -1431655766;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v9;
  v18 = v9;
  v15 = v9;
  v16 = v9;
  v13 = v9;
  v14 = v9;
  *buf = v9;
  *&buf[16] = v9;
  remoteCallInfo = self->remoteCallInfo;
  if (remoteCallInfo)
  {
    [(VCCallInfo *)remoteCallInfo audioVersionInfo:self->isGKVoiceChat];
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    memset(buf, 0, sizeof(buf));
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__VCCallSession_PrivateMethods__startAudioIOWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E85F7290;
  v11[4] = self;
  v11[5] = v8;
  v11[6] = v7;
  v11[7] = a3;
  -[VCCallSessionDelegate session:startAudioWithFarEndVersionInfo:internalFrameFormat:completionHandler:](-[VCCallSession delegate](self, "delegate"), "session:startAudioWithFarEndVersionInfo:internalFrameFormat:completionHandler:", self, buf, &self->_vpioFormat, [v11 copy]);
}

uint64_t __67__VCCallSession_PrivateMethods__startAudioIOWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v10[0] = 0;
    [*(a1 + 32) lock];
    *(*(a1 + 32) + 224) = 1;
    v3 = [*(a1 + 32) isCallOngoing];
    if ((v3 & 1) == 0)
    {
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v10, 32012, 228, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8304], @"Audio started after call ended.", @"Call already completed");
      [*(a1 + 32) stopAudioWithCompletionHandler:0];
    }

    v4 = *(a1 + 32);
    if ((v4[82] | 8) == 9 && (![*(a1 + 40) isEqualToNumber:{objc_msgSend(v4, "basebandCodecSampleRate")}] || (objc_msgSend(*(a1 + 48), "isEqualToString:", objc_msgSend(*(a1 + 32), "basebandCodecType")) & 1) == 0))
    {
      if ([*(a1 + 32) basebandCodecType])
      {
        if ([*(a1 + 32) basebandCodecSampleRate])
        {
          v5 = [*(a1 + 32) delegate];
          v6 = *(a1 + 32);
          v7 = CStrToFourcc([objc_msgSend(v6 "basebandCodecType")]);
          [objc_msgSend(*(a1 + 32) "basebandCodecSampleRate")];
          [v5 session:v6 setRemoteBasebandCodecType:v7 sampleRate:?];
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __67__VCCallSession_PrivateMethods__startAudioIOWithCompletionHandler___block_invoke_cold_1();
            }
          }
        }
      }
    }

    [*(a1 + 32) unlock];
    result = *(a1 + 56);
    if (result)
    {
      return (*(result + 16))(result, v3, v10[0]);
    }
  }

  else
  {
    result = *(a1 + 56);
    if (result)
    {
      v9 = *(result + 16);

      return v9();
    }
  }

  return result;
}

- (void)enableAudio:(BOOL)a3
{
  v3 = a3;
  [(VCCallSession *)self lock:MEMORY[0x1E69E9820]];
  if (v3)
  {
    [(VCCallSession *)self startAudioIOWithCompletionHandler:&v5];
    [(VCCallSession *)self stopPausedHeartbeat];
  }

  else
  {
    [(VCCallSession *)self stopAudioIO:0];
    [(VCCallSession *)self startPausedHeartbeat];
  }

  [(VCCallSession *)self unlock];
}

uint64_t __45__VCCallSession_PrivateMethods__enableAudio___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    if (*(v3 + 408) == 1)
    {
      [*(a1 + 32) setPauseAudio:1 force:1 error:0];
      v3 = *(a1 + 32);
    }

    [v3 updateLastReceivedPacketWithTimestamp:6 packetType:micro() + 10.0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v7 = [*(v5 + 24) callID];
    v8 = v6;
    v9 = v5;
    v10 = 1;
    v11 = 0;
  }

  else
  {
    v13 = *(v3 + 8);
    v7 = [*(v3 + 24) callID];
    v8 = v13;
    v9 = v3;
    v10 = 0;
    v11 = a3;
  }

  return [v8 session:v9 localAudioEnabled:v10 withCallID:v7 error:v11];
}

- (void)updateDeviceRole:(int)a3
{
  v59 = *MEMORY[0x1E69E9840];
  deviceRole = self->_deviceRole;
  if (deviceRole == a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_deviceRole;
        *buf = 136315906;
        *&buf[4] = v5;
        v46 = 2080;
        v47 = "[VCCallSession(PrivateMethods) updateDeviceRole:]";
        v48 = 1024;
        v49 = 8384;
        v50 = 1024;
        *v51 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SAME device role %d set, No-Op", buf, 0x22u);
      }
    }

    return;
  }

  v8 = *&a3;
  if (a3 == 4 && deviceRole == 2 || a3 == 3 && !deviceRole || a3 == 2 && deviceRole == 4 || !a3 && deviceRole == 3 || a3 == 1 && deviceRole == 9 || a3 == 9 && deviceRole == 1)
  {
    v9 = dispatch_semaphore_create(0);
    isAudioRunning = self->isAudioRunning;
    if ([(VCCapabilities *)[(VCCallSession *)self capabilities] isVideoEnabled])
    {
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = self->_deviceRole == 3;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->_deviceRole;
          *buf = 136316418;
          *&buf[4] = v14;
          v46 = 2080;
          v47 = "[VCCallSession(PrivateMethods) updateDeviceRole:]";
          v48 = 1024;
          v49 = 8406;
          v50 = 1024;
          *v51 = v16;
          *&v51[4] = 1024;
          *&v51[6] = v8;
          LOWORD(v52) = 1024;
          *(&v52 + 2) = isAudioRunning;
          v17 = "VCCallSession [%s] %s:%d Updating from role %d to %d. shouldRestartAudio %d";
          v18 = v15;
          v19 = 46;
LABEL_35:
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCCallSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = self->_deviceRole;
          *buf = 136316930;
          *&buf[4] = v20;
          v46 = 2080;
          v47 = "[VCCallSession(PrivateMethods) updateDeviceRole:]";
          v48 = 1024;
          v49 = 8406;
          v50 = 2112;
          *v51 = v13;
          *&v51[8] = 2048;
          v52 = self;
          v53 = 1024;
          v54 = v22;
          v55 = 1024;
          v56 = v8;
          v57 = 1024;
          v58 = isAudioRunning;
          v17 = "VCCallSession [%s] %s:%d %@(%p) Updating from role %d to %d. shouldRestartAudio %d";
          v18 = v21;
          v19 = 66;
          goto LABEL_35;
        }
      }
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __50__VCCallSession_PrivateMethods__updateDeviceRole___block_invoke;
    v44[3] = &unk_1E85F54F0;
    v44[4] = v9;
    v23 = [v44 copy];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __50__VCCallSession_PrivateMethods__updateDeviceRole___block_invoke_1535;
    v43[3] = &unk_1E85F54F0;
    v43[4] = v9;
    v24 = [v43 copy];
    if (isAudioRunning)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v25;
          v46 = 2080;
          v47 = "[VCCallSession(PrivateMethods) updateDeviceRole:]";
          v48 = 1024;
          v49 = 8421;
          _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d stopping audio", buf, 0x1Cu);
        }
      }

      [(VCCallSession *)self stopAudioIO:v43];
      v27 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v9, v27))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCCallSession(PrivateMethods) updateDeviceRole:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [VCCallSession(PrivateMethods) updateDeviceRole:];
          }
        }

        *buf = 0;
        v35 = MEMORY[0x1E696AEC0];
        v36 = @"Stop Audio Timed out";
LABEL_65:
        +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", buf, 32016, 258, 0, @"updateDeviceRole failed", [v35 stringWithFormat:v36]);
        [(VCCallSession *)self disconnect:*buf didRemoteCancel:0];
LABEL_66:
        dispatch_release(v9);
        return;
      }

      self->_deviceRole = v8;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v32;
          v46 = 2080;
          v47 = "[VCCallSession(PrivateMethods) updateDeviceRole:]";
          v48 = 1024;
          v49 = 8439;
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d starting audio", buf, 0x1Cu);
        }
      }

      [(VCCallSession *)self startAudioIOWithCompletionHandler:v44];
      v34 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v9, v34))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCCallSession(PrivateMethods) updateDeviceRole:];
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            [VCCallSession(PrivateMethods) updateDeviceRole:];
          }
        }

        *buf = 0;
        v35 = MEMORY[0x1E696AEC0];
        v36 = @"Start Audio Timed out";
        goto LABEL_65;
      }
    }

    else
    {
      self->_deviceRole = v8;
    }

    if (v12)
    {
      videoQueue = self->videoQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__VCCallSession_PrivateMethods__updateDeviceRole___block_invoke_1542;
      block[3] = &unk_1E85F3778;
      block[4] = self;
      dispatch_async(videoQueue, block);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_deviceRole;
        *buf = 136315906;
        *&buf[4] = v29;
        v46 = 2080;
        v47 = "[VCCallSession(PrivateMethods) updateDeviceRole:]";
        v48 = 1024;
        v49 = 8461;
        v50 = 1024;
        *v51 = v31;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Finished update to role %d", buf, 0x22u);
      }
    }

    goto LABEL_66;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v39 = *MEMORY[0x1E6986650];
    if (IsOSFaultDisabled)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v40 = self->_deviceRole;
        *buf = 136316162;
        *&buf[4] = v37;
        v46 = 2080;
        v47 = "[VCCallSession(PrivateMethods) updateDeviceRole:]";
        v48 = 1024;
        v49 = 8390;
        v50 = 1024;
        *v51 = v40;
        *&v51[4] = 1024;
        *&v51[6] = v8;
        _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d Invalid transition from role %d to %d", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      v41 = self->_deviceRole;
      *buf = 136316162;
      *&buf[4] = v37;
      v46 = 2080;
      v47 = "[VCCallSession(PrivateMethods) updateDeviceRole:]";
      v48 = 1024;
      v49 = 8390;
      v50 = 1024;
      *v51 = v41;
      *&v51[4] = 1024;
      *&v51[6] = v8;
      _os_log_fault_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_FAULT, "VCCallSession [%s] %s:%d Invalid transition from role %d to %d", buf, 0x28u);
    }
  }

  *buf = 0;
  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", buf, 32016, 258, 0, @"updateDeviceRole failed", [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid transition from role %d to %d", self->_deviceRole, v8]);
  [(VCCallSession *)self disconnect:*buf didRemoteCancel:0];
}

intptr_t __50__VCCallSession_PrivateMethods__updateDeviceRole___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCCallSession(PrivateMethods) updateDeviceRole:]_block_invoke";
      v11 = 1024;
      v12 = 8409;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Finished starting audio didStart[%d]", &v7, 0x22u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t __50__VCCallSession_PrivateMethods__updateDeviceRole___block_invoke_1535(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCCallSession(PrivateMethods) updateDeviceRole:]_block_invoke";
      v11 = 1024;
      v12 = 8415;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Finished stopping audio didStop[%d]", &v7, 0x22u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __50__VCCallSession_PrivateMethods__updateDeviceRole___block_invoke_1542(uint64_t a1)
{
  [*(a1 + 32) stopVideoSend:0 error:0];
  v2 = *(a1 + 32);

  return [v2 startVideoSend:1 error:0];
}

- (void)sendCallingModeMessage
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(VCCapabilities *)[(VCCallSession *)self capabilities] isAudioEnabled])
  {
    if ([(VCCapabilities *)[(VCCallSession *)self capabilities] isVideoEnabled])
    {
      v3 = @"VCVideoMode";
    }

    else
    {
      v3 = @"VCAudioMode";
    }
  }

  else
  {
    v3 = @"VCDataMode";
  }

  [(VCSessionMessaging *)self->messaging sendMessage:v3 withTopic:@"CallingModeTopic"];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCCallSession(PrivateMethods) sendCallingModeMessage]";
      v10 = 1024;
      v11 = 8480;
      v12 = 2080;
      v13 = [-[__CFString description](v3 "description")];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Sending VCCallingModeTopic %s", &v6, 0x26u);
    }
  }
}

- (BOOL)setupAudioCookies
{
  v35 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = self;
  negotiatedAudioPayloads = self->negotiatedAudioPayloads;
  v4 = [(NSMutableArray *)negotiatedAudioPayloads countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v31;
    *&v5 = 136315906;
    v19 = v5;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(negotiatedAudioPayloads);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        if (+[VCPayloadUtils shouldUseCookieForPayload:](VCPayloadUtils, "shouldUseCookieForPayload:", [objc_msgSend(v9 config]))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v12 = [objc_msgSend(v9 "config")];
              *buf = v19;
              v22 = v10;
              v23 = 2080;
              v24 = "[VCCallSession(PrivateMethods) setupAudioCookies]";
              v25 = 1024;
              v26 = 8490;
              v27 = 1024;
              v28 = v12;
              _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Getting cookie for payload type %d", buf, 0x22u);
            }
          }

          *buf = 1024;
          v13 = [v9 getMagicCookie:__b withLength:buf];
          if (v13)
          {
            v14 = *buf == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            if (!v13)
            {
              return v13;
            }
          }

          else
          {
            audioReceiver = v20->audioReceiver;
            v16 = [objc_msgSend(v9 "config")];
            v17 = [objc_msgSend(v9 "config")];
            if (!VCAudioReceiver_SetMagicCookieForPayload(audioReceiver, v16, v17, __b, *buf))
            {
              LOBYTE(v13) = 0;
              return v13;
            }
          }
        }
      }

      v6 = [(NSMutableArray *)negotiatedAudioPayloads countByEnumeratingWithState:&v30 objects:v29 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (int)interfaceForCurrentCall
{
  v2 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
  v3 = [v2 isWifiToWifi];
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)startVideoSend:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v131 = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self lock];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VCCapabilities *)self->caps isDuplexAudioOnly];
      v10 = [(VCCapabilities *)self->caps isVideoEnabled];
      v11 = [(VCCallInfo *)self->localCallInfo videoIsPaused];
      v12 = [(VCCapabilities *)self->caps actualVideoCodec];
      state = self->state;
      *buf = 136316930;
      v99 = v7;
      v100 = 2080;
      v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
      v102 = 1024;
      v103 = 8521;
      v104 = 1024;
      *v105 = v9;
      *&v105[4] = 1024;
      *&v105[6] = v10;
      *v106 = 1024;
      *&v106[2] = v11;
      *&v106[6] = 1024;
      *&v106[8] = v12;
      *&v106[12] = 1024;
      *&v106[14] = state;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d startVideoSend: called: %d %d %d %d %d", buf, 0x3Au);
    }
  }

  if ([(VCCapabilities *)self->caps isDuplexAudioOnly]|| [(VCCapabilities *)self->caps actualVideoCodec]== -1 || (operatingMode = self->operatingMode, operatingMode == 7) || operatingMode == 2)
  {
    [(VCCallSession *)self unlock];
    return 1;
  }

  if (![(VCCallSession *)self isCallOngoing]|| self->state != 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) startVideoSend:error:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32012, 229, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8533], @"Could not start video.", @"Call already completed");
    [(VCCallSession *)self unlock];
    return 0;
  }

  [(VCCallSession *)self unlock];
  v97 = -1431655766;
  v17 = [(VCCallSession *)self interfaceForCurrentCall];
  v15 = 1;
  v18 = [(VCCallSession *)self getVideoRuleForVideoMode:1 interface:2 sessionBitrate:0];
  v19 = [(VCCallSession *)self getVideoRuleForVideoMode:1 interface:1 sessionBitrate:0];
  v20 = [(VCCallSession *)self getVideoRuleForVideoMode:2 interface:v17 sessionBitrate:&v97];
  if ([(VCCallInfo *)self->localCallInfo videoIsPaused])
  {
    return v15;
  }

  v95 = v17;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v93 = [v18 iWidth];
      v92 = [v18 iHeight];
      [v18 fRate];
      v24 = v23;
      [v18 fPref];
      v26 = v25;
      v91 = [v18 iPayload];
      v90 = [v19 iWidth];
      v89 = [v19 iHeight];
      [v19 fRate];
      v28 = v27;
      [v19 fPref];
      v30 = v29;
      v88 = [v19 iPayload];
      v31 = [v20 iWidth];
      v32 = [v20 iHeight];
      [v20 fRate];
      v34 = v33;
      [v20 fPref];
      v36 = v35;
      v37 = [v20 iPayload];
      *buf = 136319746;
      v99 = v21;
      v100 = 2080;
      v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
      v102 = 1024;
      v103 = 8557;
      v104 = 1024;
      *v105 = v93;
      *&v105[4] = 1024;
      *&v105[6] = v92;
      *v106 = 2048;
      *&v106[2] = v24;
      *&v106[10] = 2048;
      *&v106[12] = v26;
      v107 = 1024;
      v108 = v91;
      v109 = 1024;
      v110 = v90;
      v111 = 1024;
      v112 = v89;
      v113 = 2048;
      v114 = v28;
      v115 = 2048;
      v116 = v30;
      v117 = 1024;
      v118 = v88;
      v119 = 1024;
      v120 = v31;
      v121 = 1024;
      v122 = v32;
      v123 = 2048;
      v124 = v34;
      v125 = 2048;
      v126 = v36;
      v127 = 1024;
      v128 = v37;
      v129 = 1024;
      v130 = v95;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCALLSESSION: start video with capture rule wifi = %dx%dx%.1ffps(%.1f, %d), capture rule cell = %dx%dx%.1ffps(%.1f, %d), encode rule = %dx%dx%.1ffps(%.1f, %d), for interface %d", buf, 0x94u);
    }
  }

  if (v97 >= 1 && v97 < self->callSessionBitrate)
  {
    self->callSessionBitrate = v97;
  }

  [(VCCallSession *)self adjustBitrateForConnectionType];
  if ([+[VCDefaults forceHWI] sharedInstance]
  {
    self->callSessionBitrate = [+[VCDefaults sharedInstance](VCDefaults forceBitrate];
    v38 = [+[VCDefaults sharedInstance](VCDefaults forceCaptureWidth];
    v39 = [+[VCDefaults sharedInstance](VCDefaults forceCaptureHeight];
    *&v40 = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
    [v18 setFrameWidth:v38 frameHeight:v39 frameRate:v40];
    v41 = [+[VCDefaults sharedInstance](VCDefaults forceCaptureWidth];
    v42 = [+[VCDefaults sharedInstance](VCDefaults forceCaptureHeight];
    *&v43 = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
    [v19 setFrameWidth:v41 frameHeight:v42 frameRate:v43];
    v44 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
    v45 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
    *&v46 = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
    [v20 setFrameWidth:v44 frameHeight:v45 frameRate:v46];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v99 = v47;
        v100 = 2080;
        v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
        v102 = 1024;
        v103 = 8573;
        _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: forcing camera and encoder settings to forceHWI", buf, 0x1Cu);
      }
    }
  }

  if ([+[VCDefaults forceScreenHWI] sharedInstance]
  {
    v49 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
    v50 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
    *&v51 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeFramerate];
    [v18 setFrameWidth:v49 frameHeight:v50 frameRate:v51];
    v52 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
    v53 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
    *&v54 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeFramerate];
    [v19 setFrameWidth:v52 frameHeight:v53 frameRate:v54];
    v55 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
    v56 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
    *&v57 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeFramerate];
    [v20 setFrameWidth:v55 frameHeight:v56 frameRate:v57];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v58 = VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v94 = [v20 iWidth];
        v60 = [v20 iHeight];
        [v20 fRate];
        *buf = 136316418;
        v99 = v58;
        v100 = 2080;
        v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
        v102 = 1024;
        v103 = 8583;
        v104 = 1024;
        *v105 = v94;
        *&v105[4] = 1024;
        *&v105[6] = v60;
        *v106 = 2048;
        *&v106[2] = v61;
        _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: forcing screen sharing encoder settings to %dx%d@%f", buf, 0x32u);
      }
    }
  }

  [(VCCallSession *)self setCurrentEncodeRule:v20];
  if (![(VCConnectionManager *)self->connectionManager getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:1]&& [+[VCDefaults max2GRate]>= 1 sharedInstance]
  {
    self->callSessionBitrate = [+[VCDefaults sharedInstance](VCDefaults max2GRate];
  }

  [v20 iWidth];
  [v20 iHeight];
  [v20 fRate];
  reportingVideoProp();
  v96[1] = v18;
  v96[2] = v19;
  v96[0] = v20;
  if (![(VCCallSession *)self initializeVideoTransmitter:a4 videoRules:v96 unpausing:v5 reportingAgent:self->reportingAgent fecHeaderV1Enabled:[(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x20000] isFECGeneratorEnabled:[(VCCallSession *)self isFECGeneratorEnabled]])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) startVideoSend:error:];
      }
    }

    goto LABEL_63;
  }

  if (([(VCCallSessionDelegate *)self->delegate session:self startVideoSend:a4 captureRuleWifi:v18 captureRuleCell:v19 interface:v95 isUnpausing:v5]& 1) == 0)
  {
LABEL_63:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) startVideoSend:error:];
      }
    }

    return 0;
  }

  VideoReceiver_SetVTHandle(self->hVideoReceiver, self->hVideoTransmitter);
  [(VCCallSession *)self configureRateController];
  v62 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:16];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v63 = VRTraceErrorLogLevelToCSTR();
    v64 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v99 = v63;
      v100 = 2080;
      v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
      v102 = 1024;
      v103 = 8619;
      v104 = 1024;
      *v105 = v62;
      _os_log_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch vplrFecEnabled %d", buf, 0x22u);
    }
  }

  if ([(VCMediaNegotiatorResults *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedSettings] mediaControlInfoVersion]> 1 && v62)
  {
    v65 = 6;
  }

  else
  {
    v65 = 5;
  }

  v66 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:4];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v67 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v99 = v67;
      v100 = 2080;
      v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
      v102 = 1024;
      v103 = 8622;
      v104 = 1024;
      *v105 = v66;
      _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch highFecEnabled %d", buf, 0x22u);
    }
  }

  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-video-redundancy-percentage-max" userDefaultKey:@"videoRedundancyPercentageMax" defaultValue:&unk_1F5799FC0 isDoubleType:{1), "doubleValue"}];
  v70 = v69;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v71 = VRTraceErrorLogLevelToCSTR();
    v72 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v99 = v71;
      v100 = 2080;
      v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
      v102 = 1024;
      v103 = 8624;
      v104 = 1024;
      *v105 = v70;
      _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d currentRedundancyPercentage before abTestSwitch %d", buf, 0x22u);
    }
  }

  if (v66)
  {
    v73 = v70;
  }

  else
  {
    v73 = 100;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v74 = VRTraceErrorLogLevelToCSTR();
    v75 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v99 = v74;
      v100 = 2080;
      v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
      v102 = 1024;
      v103 = 8626;
      v104 = 1024;
      *v105 = v73;
      _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d maxAllowedRedundancyPercentage after abTestSwitch %d", buf, 0x22u);
    }
  }

  if (!self->_videoRedundancyController)
  {
    self->_videoRedundancyController = [[VCRedundancyControllerVideo alloc] initWithDelegate:self mode:v65 parameters:[(AVCRateController *)self->_rateController statisticsCollector], v73];
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_74;
    }

    v77 = VRTraceErrorLogLevelToCSTR();
    v78 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    callSessionBitrate = self->callSessionBitrate;
    *buf = 136315906;
    v99 = v77;
    v100 = 2080;
    v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
    v102 = 1024;
    v103 = 8635;
    v104 = 1024;
    *v105 = callSessionBitrate;
    v80 = "VCCallSession [%s] %s:%d VCCallSession: startVideo maxBandwidth=%d, ";
    v81 = v78;
    v82 = 34;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v76 = [(VCCallSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v76 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_74;
    }

    v83 = VRTraceErrorLogLevelToCSTR();
    v84 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    v85 = self->callSessionBitrate;
    *buf = 136316418;
    v99 = v83;
    v100 = 2080;
    v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
    v102 = 1024;
    v103 = 8635;
    v104 = 2112;
    *v105 = v76;
    *&v105[8] = 2048;
    *v106 = self;
    *&v106[8] = 1024;
    *&v106[10] = v85;
    v80 = "VCCallSession [%s] %s:%d %@(%p) VCCallSession: startVideo maxBandwidth=%d, ";
    v81 = v84;
    v82 = 54;
  }

  _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, v80, buf, v82);
LABEL_74:
  [(VCCallSession *)self lock];
  v15 = [(VCCallSession *)self isCallOngoing];
  if (!v15)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32012, 230, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8644], @"Could not start video.", @"Call already completed");
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v86 = VRTraceErrorLogLevelToCSTR();
    v87 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v99 = v86;
      v100 = 2080;
      v101 = "[VCCallSession(PrivateMethods) startVideoSend:error:]";
      v102 = 1024;
      v103 = 8650;
      _os_log_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d startVideoSend: completed.", buf, 0x1Cu);
    }
  }

  [(VCCallSession *)self unlock];
  [(TimingCollection *)self->cameraTimers startTimingForKey:[(VCCallSessionDelegate *)self->delegate currentCameraID]];
  return v15;
}

- (BOOL)startVideoReceive:(id *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  [(VCCallSession *)self lock];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(VCCapabilities *)self->caps isDuplexAudioOnly];
      v8 = [(VCCapabilities *)self->caps isVideoEnabled];
      v9 = [(VCCallInfo *)self->localCallInfo videoIsPaused];
      v10 = [(VCCapabilities *)self->caps actualVideoCodec];
      state = self->state;
      *buf = 136316930;
      v31 = v5;
      v32 = 2080;
      v33 = "[VCCallSession(PrivateMethods) startVideoReceive:]";
      v34 = 1024;
      v35 = 8667;
      v36 = 1024;
      *v37 = v7;
      *&v37[4] = 1024;
      *&v37[6] = v8;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = v9;
      HIWORD(v38) = 1024;
      *v39 = v10;
      *&v39[4] = 1024;
      v40 = state;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d startVideoReceive: called: %d %d %d %d %d", buf, 0x3Au);
    }
  }

  if ([(VCCapabilities *)self->caps isDuplexAudioOnly]|| [(VCCallInfo *)self->localCallInfo videoIsPaused]|| [(VCCapabilities *)self->caps actualVideoCodec]== -1)
  {
    [(VCCallSession *)self unlock];
    return 1;
  }

  if (![(VCCallSession *)self isCallOngoing]|| self->state != 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) startVideoReceive:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a3, 32012, 229, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8680], @"Could not start video.", @"Call already completed");
    [(VCCallSession *)self unlock];
    return 0;
  }

  [(VCCallSession *)self unlock];
  v12 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x20000];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v31 = v13;
      v32 = 2080;
      v33 = "[VCCallSession(PrivateMethods) startVideoReceive:]";
      v34 = 1024;
      v35 = 8690;
      v36 = 1024;
      *v37 = v12;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch fecHeaderV1Enabled %d", buf, 0x22u);
    }
  }

  v15 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x4000000];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v31 = v16;
      v32 = 2080;
      v33 = "[VCCallSession(PrivateMethods) startVideoReceive:]";
      v34 = 1024;
      v35 = 8693;
      v36 = 1024;
      *v37 = v15;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch videoJBEnabled %d", buf, 0x22u);
    }
  }

  if (![(VCCallSession *)self initializeVideoReceiver:a3 reportingAgent:self->reportingAgent fecHeaderV1Enabled:v12 videoJBEnabled:v15]|| ([(VCCallSessionDelegate *)self->delegate session:self startVideoReceive:a3]& 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(PrivateMethods) startVideoReceive:];
      }
    }

    return 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_38;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    callSessionBitrate = self->callSessionBitrate;
    *buf = 136315906;
    v31 = v21;
    v32 = 2080;
    v33 = "[VCCallSession(PrivateMethods) startVideoReceive:]";
    v34 = 1024;
    v35 = 8706;
    v36 = 1024;
    *v37 = callSessionBitrate;
    v24 = "VCCallSession [%s] %s:%d VCCallSession: startVideo maxBandwidth=%d, ";
    v25 = v22;
    v26 = 34;
    goto LABEL_37;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [(VCCallSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v18 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->callSessionBitrate;
      *buf = 136316418;
      v31 = v27;
      v32 = 2080;
      v33 = "[VCCallSession(PrivateMethods) startVideoReceive:]";
      v34 = 1024;
      v35 = 8706;
      v36 = 2112;
      *v37 = v18;
      *&v37[8] = 2048;
      v38 = self;
      *v39 = 1024;
      *&v39[2] = v29;
      v24 = "VCCallSession [%s] %s:%d %@(%p) VCCallSession: startVideo maxBandwidth=%d, ";
      v25 = v28;
      v26 = 54;
LABEL_37:
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }
  }

LABEL_38:
  [(VCCallSession *)self lock];
  v19 = [(VCCallSession *)self isCallOngoing];
  if (!v19)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a3, 32012, 230, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 8715], @"Could not start video.", @"Call already completed");
  }

  [(VCCallSession *)self unlock];
  return v19;
}

- (BOOL)startVideo:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [(VCCallSession *)self startVideoReceive:a4];
  if (v7)
  {

    LOBYTE(v7) = [(VCCallSession *)self startVideoSend:v5 error:a4];
  }

  return v7;
}

- (BOOL)stopVideoSend:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VCCapabilities *)self->caps isDuplexAudioOnly];
      v10 = [(VCCapabilities *)self->caps isVideoEnabled];
      v11 = [(VCCapabilities *)self->caps actualVideoCodec];
      *v15 = 136316418;
      *&v15[4] = v7;
      v16 = 2080;
      v17 = "[VCCallSession(PrivateMethods) stopVideoSend:error:]";
      v18 = 1024;
      v19 = 8740;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v11 == -1;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d stopVideoSend: caps.isDuplexAudioOnly = %d, caps.isVideoEnabled = %d, caps.actualVideoCodec == AV_CODEC_INVALID is %d", v15, 0x2Eu);
    }
  }

  if ([(VCCapabilities *)self->caps actualVideoCodec]== -1)
  {
    goto LABEL_16;
  }

  if (!v5)
  {
    VideoReceiver_SetVTHandle(self->hVideoReceiver, 0xFFFFFFFFLL);
    MediaQueue_ResetRefreshFrameState();
    [(VCCallSession *)self cleanUpVideoTransmitter];
    videoRedundancyController = self->_videoRedundancyController;
    if (videoRedundancyController)
    {

      self->_videoRedundancyController = 0;
    }

    v12 = [(VCCallSessionDelegate *)self->delegate stopVideoSend:1 error:a4];
    if (!v12)
    {
      return v12;
    }

    goto LABEL_14;
  }

  VideoTransmitter_Pause(self->hVideoTransmitter, 1);
  if (([(VCCallSessionDelegate *)self->delegate stopVideoSend:0 error:a4]& 1) != 0)
  {
LABEL_14:
    v12 = [(VCCallSessionDelegate *)self->delegate session:self didStopVideoIO:!v5 error:a4];
    if (!v12)
    {
      return v12;
    }

    [(TimingCollection *)self->cameraTimers stopTimingForKey:[(VCCallSessionDelegate *)self->delegate currentCameraID]];
LABEL_16:
    LOBYTE(v12) = 1;
    return v12;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
LABEL_10:
    LOBYTE(v12) = 0;
    return v12;
  }

  VRTraceErrorLogLevelToCSTR();
  v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v12)
  {
    [VCCallSession(PrivateMethods) stopVideoSend:error:];
    goto LABEL_10;
  }

  return v12;
}

- (BOOL)stopVideoReceive:(id *)a3 isPausing:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VCCapabilities *)self->caps isDuplexAudioOnly];
      v10 = [(VCCapabilities *)self->caps isVideoEnabled];
      v11 = [(VCCapabilities *)self->caps actualVideoCodec];
      *v13 = 136316418;
      *&v13[4] = v7;
      v14 = 2080;
      v15 = "[VCCallSession(PrivateMethods) stopVideoReceive:isPausing:]";
      v16 = 1024;
      v17 = 8786;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = v11 == -1;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d stopVideoReceive: caps.isDuplexAudioOnly = %d, caps.isVideoEnabled = %d, caps.actualVideoCodec == AV_CODEC_INVALID is %d", v13, 0x2Eu);
    }
  }

  if ([(VCCapabilities *)self->caps isDuplexAudioOnly]|| [(VCCapabilities *)self->caps actualVideoCodec]== -1)
  {
    return 1;
  }

  [(VCCallSession *)self cleanUpDisplayLink];
  [(VCCallSession *)self cleanUpVideoReceiver];
  return [(VCCallSessionDelegate *)self->delegate session:self stopVideoReceive:a3 isPausing:v4];
}

- (BOOL)stopVideo:(BOOL)a3 error:(id *)a4
{
  v7 = [VCCallSession stopVideoSend:"stopVideoSend:error:" error:?];
  if (v7 && !a3)
  {

    LOBYTE(v7) = [(VCCallSession *)self stopVideoReceive:a4 isPausing:0];
  }

  return v7;
}

- (BOOL)getVideoSettings:(int)a3 forInterface:(int)a4 payload:(int)a5 width:(int *)a6 height:(int *)a7 framerate:(int *)a8 bitRate:(int *)a9
{
  v12 = *&a5;
  v13 = *&a4;
  v14 = a3;
  v16 = a9;
  v89 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v68 = 320;
  *(&v69 + 4) = 0xF000000140;
  v70[0] = 0xF000000F0;
  v70[1] = 1056964608;
  v65 = 0u;
  v64 = 320;
  *(&v65 + 4) = 0xF000000140;
  v66 = 0xF000000F0;
  v67 = 1056964608;
  if (self->operatingMode == 1)
  {
    v17 = [(VCConnectionManager *)self->connectionManager getConnectionTypeForActiveConnectionWithQuality:1 forLocalInterface:1];
    if (v13 == 2 && v17 == 3 || (v63 = 0, v13 == 1) && v17 != 3)
    {
      v18 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateRuleForConnection:v17];
      v63 = [v18 limitingRule];
      if (a9)
      {
        *a9 = [v18 bitrate];
      }
    }
  }

  else if (a9)
  {
    v20 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
    *a9 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v20 forLocalInterface:1 arbiterMode:VCBitrateArbiter_ModeFromOperatingMode(self->operatingMode) encodeRule:self->_currentEncodeRule];
    if (v20)
    {
      CFRelease(v20);
    }

    v63 = 0;
    v14 = a3;
  }

  else
  {
    v63 = 0;
  }

  if (![(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
  {
    v24 = 32;
    if (self->didSend200OK)
    {
      v24 = 24;
    }

    v25 = [*(&self->super.isa + v24) sdp];
    v26 = v25;
    operatingMode = self->operatingMode;
    v60 = a7;
    v61 = v14;
    if (operatingMode == 1)
    {
      v28 = 2;
    }

    else
    {
      if (operatingMode != 4)
      {
        v36 = a8;
        v37 = 0;
        goto LABEL_33;
      }

      v28 = 3;
    }

    v36 = a8;
    v37 = [v25 getMediaLineForType:v28];
LABEL_33:
    -[VCCallSession setImageAttributeRules:](self, "setImageAttributeRules:", [v37 imageAttributeRules]);
    v38 = [objc_msgSend(v37 "imageAttributeRules")];
    if ([v38 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->videoPayload)}])
    {
      +[SDPMediaLine fillImageStructWithDictionary:forInterface:imageStruct:](SDPMediaLine, "fillImageStructWithDictionary:forInterface:imageStruct:", [v38 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->videoPayload)}], v13, &v64);
      v39 = SDWORD1(v65);
      v40 = v66;
    }

    else
    {
      v39 = 320.0;
      v40 = 240.0;
    }

    self->expectedDecodeSize.width = v39;
    self->expectedDecodeSize.height = v40;
    v41 = [objc_msgSend(v37 "imageAttributeRules")];
    if ([v41 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v12)}])
    {
      +[SDPMediaLine fillImageStructWithDictionary:forInterface:imageStruct:](SDPMediaLine, "fillImageStructWithDictionary:forInterface:imageStruct:", [v41 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->videoPayload)}], v13, &v68);
    }

    else
    {
      [v26 rulesImageSizeForExternalPayload:RTPGetExternalPayload(self->rtpVideo pWidth:self->videoPayload) pHeight:{&v69 + 4, v70}];
      HIDWORD(v70[0]) = [v26 rulesFramerate:LODWORD(self->videoPayload)];
    }

    a8 = v36;
    a7 = v60;
    v16 = a9;
    v14 = v61;
    if (self->operatingMode != 1)
    {
LABEL_48:
      LOBYTE(v33) = 1;
      goto LABEL_49;
    }

    v42 = [VCVideoRule alloc];
    *&v43 = SHIDWORD(v70[0]);
    v34 = [(VCVideoRule *)v42 initWithFrameWidth:DWORD1(v69) frameHeight:LODWORD(v70[0]) frameRate:v43];
    goto LABEL_41;
  }

  if (v13 == 2)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  mediaNegotiator = self->_mediaNegotiator;
  if (self->operatingMode == 4)
  {
    v23 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedScreenSettings];
  }

  else
  {
    v23 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedVideoSettings];
  }

  v29 = [(VCMediaNegotiatorResultsVideo *)v23 videoRuleCollections];
  v30 = [-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](v29 getVideoRulesForTransport:v21 payload:v12 encodingType:{2), "firstObject"}];
  if (v30)
  {
    v31 = v30;
    self->expectedDecodeSize.width = [v30 iWidth];
    v32 = [v31 iHeight];
  }

  else
  {
    self->expectedDecodeSize.width = 320.0;
    v32 = 240.0;
  }

  self->expectedDecodeSize.height = v32;
  v33 = [-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](v29 getVideoRulesForTransport:v21 payload:v12 encodingType:{1), "firstObject"}];
  if (!v33)
  {
    goto LABEL_49;
  }

  v34 = v33;
  DWORD1(v69) = [(VCVideoRule *)v33 iWidth];
  LODWORD(v70[0]) = [(VCVideoRule *)v34 iHeight];
  [(VCVideoRule *)v34 fRate];
  HIDWORD(v70[0]) = v35;
LABEL_41:
  LOBYTE(v33) = 1;
  if (v63 && v34)
  {
    if ([(VCVideoRule *)v34 compare:v63]== 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v44 = VRTraceErrorLogLevelToCSTR();
        v45 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v59 = [(VCVideoRule *)v34 iWidth];
          v58 = [(VCVideoRule *)v34 iHeight];
          [(VCVideoRule *)v34 fRate];
          v62 = v14;
          v46 = a6;
          v48 = v47;
          v49 = [v63 iWidth];
          v50 = v16;
          v51 = [v63 iHeight];
          [v63 fRate];
          *buf = 136317186;
          v72 = v44;
          v73 = 2080;
          v74 = "[VCCallSession(PrivateMethods) getVideoSettings:forInterface:payload:width:height:framerate:bitRate:]";
          v75 = 1024;
          v76 = 8927;
          v77 = 1024;
          v78 = v59;
          v79 = 1024;
          v80 = v58;
          v81 = 1024;
          v82 = v48;
          a6 = v46;
          v14 = v62;
          v83 = 1024;
          v84 = v49;
          v85 = 1024;
          v86 = v51;
          v16 = v50;
          v87 = 1024;
          v88 = v52;
          _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: limiting negotiated video settings from %dx%d@%d to %dx%d@%d due to slow connection", buf, 0x40u);
        }
      }

      DWORD1(v69) = [v63 iWidth];
      LODWORD(v70[0]) = [v63 iHeight];
      [v63 fRate];
      HIDWORD(v70[0]) = v53;
    }

    goto LABEL_48;
  }

LABEL_49:
  if (v14 == 2)
  {
    v56 = v70[0];
    *a6 = DWORD1(v69);
    *a7 = v56;
    *a8 = HIDWORD(v70[0]);
    if (v16 && *a7 * *a6 <= 307200)
    {
      *v16 = 802;
    }
  }

  else
  {
    if (v14 == 1)
    {
      v54 = v70[0];
      *a6 = DWORD1(v69);
      *a7 = v54;
      v55 = HIDWORD(v70[0]);
    }

    else
    {
      LOBYTE(v33) = 0;
      *a6 = 320;
      *a7 = 240;
      v55 = 15;
    }

    *a8 = v55;
  }

  return v33;
}

- (BOOL)startMediaQueue:(id *)a3
{
  LODWORD(v3) = self->_vpioFormat.samplesPerFrame;
  v5 = v3 / self->_vpioFormat.format.mSampleRate;
  MediaQueue_Start();
  RTPSetMediaQueue(v5, self->rtpHandle, self->hMediaQueue);
  RTPSetMediaQueue(v5, self->rtpVideo, self->hMediaQueue);
  if ([(VCCallInfo *)self->remoteCallInfo useNewPLCalc])
  {
    AFRCSetPLCalc(self->hAFRC, 1);
    MediaQueue_SetPLCalc(self->hMediaQueue, 1);
  }

  RTPSetRedundantAudio(self->rtpHandle, !self->isGKVoiceChat, self->_isRedEnabled);
  return 1;
}

- (BOOL)stopMediaQueue:(id *)a3
{
  MediaQueue_CloseHandle();
  self->hMediaQueue = 0xFFFFFFFFLL;
  return 1;
}

- (unsigned)vcrcServerBagProfileNumber
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [VCRateControlServerBag profileNumberKeyWithMode:self->operatingMode];
  v3 = [GKSConnectivitySettings getVCRCSeverBagConfigWithKey:v2];
  if (v3)
  {

    return [v3 unsignedIntValue];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136316162;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCCallSession(PrivateMethods) vcrcServerBagProfileNumber]";
        v11 = 1024;
        v12 = 9008;
        v13 = 2112;
        v14 = v2;
        v15 = 1024;
        v16 = 0;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Could not find server bag config for %@. Using default value %d", &v7, 0x2Cu);
      }
    }

    return 0;
  }
}

- (id)vcrcServerBag
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [VCRateControlServerBag keysWithMode:self->operatingMode];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
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

        [v3 setObject:+[GKSConnectivitySettings getVCRCSeverBagConfigWithKey:](GKSConnectivitySettings forKeyedSubscript:{"getVCRCSeverBagConfigWithKey:", *(*(&v12 + 1) + 8 * v8)), *(*(&v12 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  v9 = [[VCRateControlServerBag alloc] initWithMode:self->operatingMode serverBagDict:v3];

  return v9;
}

- (BOOL)startAFRC:(id *)a3
{
  v58 = *MEMORY[0x1E69E9840];
  if (self->hAFRC != 0xFFFFFFFFLL)
  {
    return 1;
  }

  v7 = CFPreferencesCopyAppValue(@"enableTFRCLog", @"com.apple.VideoConference");
  if (v7)
  {
    v8 = v7;
    if (CFEqual(v7, *MEMORY[0x1E695E4D0]))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v51 = v9;
          *v52 = 2080;
          *&v52[2] = "[VCCallSession(PrivateMethods) startAFRC:]";
          *&v52[10] = 1024;
          v53 = 9035;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Found enableTFRCLog YES. Enable rate control log", buf, 0x1Cu);
        }
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v11 = 0;
  }

  v39 = -1431655766;
  v12 = [(VCCallSession *)self evaluateEnableRRx:&v39];
  IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 0);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = "YES";
      *buf = 136316162;
      if (v39)
      {
        v17 = "YES";
      }

      else
      {
        v17 = "NO";
      }

      v51 = v14;
      *&v52[2] = "[VCCallSession(PrivateMethods) startAFRC:]";
      *v52 = 2080;
      if (!IsInterfaceOnCellularForActiveConnectionWithQuality)
      {
        v16 = "NO";
      }

      *&v52[10] = 1024;
      v53 = 9047;
      *v54 = 2080;
      *&v54[2] = v17;
      *&v54[10] = 2080;
      v55 = v16;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Local device uses cellular:[%s], remote device uses cellular:[%s]", buf, 0x30u);
    }
  }

  v57 = 0;
  v18 = [(VCConnectionManager *)self->connectionManager connectionCount];
  v19 = [(VCConnectionManager *)self->connectionManager isLocalCellularInterfaceUsed];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 136316162;
      v41 = v20;
      v42 = 2080;
      v43 = "[VCCallSession(PrivateMethods) startAFRC:]";
      v44 = 1024;
      v45 = 9055;
      v46 = 1024;
      v47 = v18;
      v48 = 1024;
      v49 = v19;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Current connection number %d, enableBBDump %d", v40, 0x28u);
    }
  }

  *buf = v39;
  LODWORD(v51) = IsInterfaceOnCellularForActiveConnectionWithQuality;
  HIDWORD(v51) = [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1];
  v22 = [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0];
  operatingMode = self->operatingMode;
  v25 = operatingMode == 2 || operatingMode == 7;
  *v52 = v22;
  *&v52[4] = v25;
  *&v52[8] = v12;
  v53 = v11;
  *v54 = self->enableRateControlDump;
  *&v54[4] = v18;
  *&v54[8] = v19;
  LODWORD(v55) = operatingMode == 4;
  HIDWORD(v55) = self->_isRedEnabled;
  v56 = [(VCCallSession *)self callID];
  v26 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:1024];
  LOBYTE(v57) = v26;
  BYTE2(v57) = self->useVCRC;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 136315906;
      v41 = v27;
      v42 = 2080;
      v43 = "[VCCallSession(PrivateMethods) startAFRC:]";
      v44 = 1024;
      v45 = 9072;
      v46 = 1024;
      v47 = v26;
      _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch allowBurstyLossRampDownEnabled %d", v40, 0x22u);
    }
  }

  BYTE1(v57) = ![(VCSwitchManager *)self->_switchManager isSwitchEnabled:8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(VCSwitchManager *)self->_switchManager isSwitchEnabled:8];
      *v40 = 136315906;
      v41 = v29;
      v42 = 2080;
      v43 = "[VCCallSession(PrivateMethods) startAFRC:]";
      v44 = 1024;
      v45 = 9074;
      v46 = 1024;
      v47 = v31;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Load switch lowFpsVideoEnabled %d", v40, 0x22u);
    }
  }

  HIBYTE(v57) = [(VCCallSession *)self mediaControlInfoFECFeedbackVersion];
  v32 = AFRCCreateHandle(&self->hAFRC, self->hMediaQueue, self->reportingAgent, buf);
  v3 = v32 >= 0;
  if (v32 < 0)
  {
    v35 = v32;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) startAFRC:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCCallSession(PrivateMethods) startAFRC:];
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32000, 231, v35, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 9083], @"Could not setup AFRC", @"could not create handle");
  }

  else
  {
    v38 = 0;
    if ((AFRCGetSendersLogState(self->hAFRC, &v38, &self->bBWEstActiveProbingSenderLog) & 0x80000000) == 0)
    {
      MediaQueue_SetActiveProbingLog(self->hMediaQueue, v38);
    }

    if (!self->bBWEstOperatingModeInitialized || [(VCCallSession *)self Conference_SetBWEstMode:self->bBWEstNewBWEstModeEnabled bFakeLargeFrameMode:self->bBWEstFakeLargeFrameModeEnabled]< 0)
    {
      VTP_SetAFRCRecvMode(self->hAFRC, 0);
    }

    RTPSetAFRCHandle(self->rtpHandle, self->hAFRC);
    RTPSetAFRCHandle(self->rtpVideo, self->hAFRC);
    mediaController = [[VCRateControlMediaController alloc] initWithMediaQueue:self->hMediaQueue delegate:self];
    self->_mediaController = mediaController;
    if (HIDWORD(v51))
    {
      IsLTEOrNewer = NetworkUtils_IsLTEOrNewer(HIDWORD(v51));
      mediaController = self->_mediaController;
    }

    else
    {
      IsLTEOrNewer = 1;
    }

    [(VCRateControlMediaController *)mediaController setIsSenderProbingEnabled:IsLTEOrNewer];
    [(VCRateControlMediaController *)self->_mediaController setIsRTPFlushBasebandFromVCRateControl:1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 136315650;
        v41 = v36;
        v42 = 2080;
        v43 = "[VCCallSession(PrivateMethods) startAFRC:]";
        v44 = 1024;
        v45 = 9123;
        _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Starting AFRC", v40, 0x1Cu);
      }
    }
  }

  return v3;
}

- (BOOL)startVCRC:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self->_rateController)
  {
    v15 = 0u;
    v16 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%010u", -[VCCallSession callID](self, "callID", a3)];
    BYTE1(v15) = 1;
    v4 = [(VCCallSession *)self vcrcServerBag];
    reportingAgent = self->reportingAgent;
    *(&v15 + 1) = v4;
    *&v16 = reportingAgent;
    BYTE8(v16) = 1;
    rateController = [[AVCRateController alloc] initWithDelegate:self params:&v14];
    self->_rateController = rateController;
    mediaController = self->_mediaController;
    if (!mediaController)
    {
      v8 = [[VCRateControlMediaController alloc] initWithMediaQueue:self->hMediaQueue delegate:self];
      self->_mediaController = v8;
      [(VCRateControlMediaController *)v8 setIsRTPFlushBasebandFromVCRateControl:1];
      rateController = self->_rateController;
      mediaController = self->_mediaController;
    }

    [(AVCRateController *)rateController setMediaController:mediaController];
    [(VCRateControlMediaController *)self->_mediaController setStatisticsCollector:[(AVCRateController *)self->_rateController statisticsCollector]];
    [(AVCStatisticsCollector *)[(VCRateControlMediaController *)self->_mediaController statisticsCollector] setMediaControlInfoFECFeedbackVersion:[(VCCallSession *)self mediaControlInfoFECFeedbackVersion]];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_rateController;
        v12 = self->_mediaController;
        *buf = 136316162;
        v21 = v9;
        v22 = 2080;
        v23 = "[VCCallSession(PrivateMethods) startVCRC:]";
        v24 = 1024;
        v25 = 9147;
        v26 = 2048;
        v27 = v11;
        v28 = 2048;
        v29 = v12;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Starting VCRateController (%p) and VCMediaController (%p)", buf, 0x30u);
      }
    }

    [(VCCallSession *)self configureRateController];
    RTPSetStatisticsCollector(self->rtpHandle, [(AVCRateController *)self->_rateController statisticsCollector]);
    RTPSetStatisticsCollector(self->rtpVideo, [(AVCRateController *)self->_rateController statisticsCollector]);
    RTPSetBasebandCongestionDetector(self->rtpHandle, [(AVCRateController *)self->_rateController basebandCongestionDetector]);
    [(AVCRateController *)self->_rateController start];
  }

  return 1;
}

- (BOOL)startRateControl:(id *)a3
{
  if (self->useAFRC && ![(VCCallSession *)self startAFRC:a3])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v7)
      {
        return v7;
      }

      [VCCallSession(PrivateMethods) startRateControl:];
    }

LABEL_15:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (self->useVCRC && ![(VCCallSession *)self startVCRC:a3])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v7 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v7)
      {
        return v7;
      }

      [VCCallSession(PrivateMethods) startRateControl:];
    }

    goto LABEL_15;
  }

  hAFRC = self->hAFRC;
  if (hAFRC != 0xFFFFFFFFLL)
  {
    rateController = self->_rateController;
    if (rateController)
    {
      AFRCSetStatisticsCollector(hAFRC, [(AVCRateController *)rateController statisticsCollector]);
    }
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (BOOL)stopRateControl:(id *)a3
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (self->hAFRC != 0xFFFFFFFFLL)
  {
    VTP_SetAFRCRecvMode(0xFFFFFFFFLL, 0);
    hAFRC = self->hAFRC;
    global_queue = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__VCCallSession_PrivateMethods__stopRateControl___block_invoke;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = hAFRC;
    dispatch_async(global_queue, v7);
    self->hAFRC = 0xFFFFFFFFLL;
  }

  [(AVCRateController *)self->_rateController stop];
  return 1;
}

- (void)setupAACELDPayload:(int)a3
{
  v3 = *&a3;
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  if (![(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
  {
    if ([(SDPMini *)[(VCCallInfo *)self->remoteCallInfo sdp] getUseSbr:&v7 blockSize:&v6 forAACFormat:v3])
    {
      v5 = v7 == 1 && self->useSBR;
      self->useSBR = v5;
      if (v6 > self->aacBlockSize)
      {
        self->aacBlockSize = v6;
      }
    }

    else
    {
      self->useSBR = 0;
    }
  }
}

- (id)newConfigForPayloadType:(int)a3
{
  v3 = *&a3;
  v35 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v3), @"vcAudioPayloadConfigKeyPayloadType"}];
  v6 = v3 - 104;
  if ((v3 - 104) <= 2)
  {
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->aacBlockSize), @"vcAudioPayloadConfigKeyBlockSize"}];
  }

  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_vpioFormat.format.mSampleRate), @"vcAudioPayloadConfigKeyInputSampleRate"}];
  if (self->_isUseCaseWatchContinuity)
  {
    LODWORD(v7) = 1;
  }

  else
  {
    LODWORD(v7) = 3;
  }

  v8 = [+[VCDefaults sharedInstance](VCDefaults forceAudioPacketsPerBundle];
  if (v8)
  {
    v7 = v8;
  }

  else
  {
    v7 = v7;
  }

  if ((v3 - 97) <= 1)
  {
    if (self->_isUseCaseWatchContinuity)
    {
      v9 = 0;
    }

    else
    {
      operatingMode = self->operatingMode;
      v9 = operatingMode == 2 || operatingMode == 7;
    }

    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v7), @"vcPayloadConfigKeyInternalBundleFactor"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_isUseCaseWatchContinuity), @"vcPayloadConfigKeyOctetAligned"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v9), @"vcPayloadConfigKeyDTXEnabled"}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isUseCaseWatchContinuity = self->_isUseCaseWatchContinuity;
        v23 = 136316418;
        v24 = v18;
        v25 = 2080;
        v26 = "[VCCallSession(PrivateMethods) newConfigForPayloadType:]";
        v27 = 1024;
        v28 = 9232;
        v29 = 1024;
        v30 = v7;
        v31 = 1024;
        v32 = isUseCaseWatchContinuity;
        v33 = 1024;
        v34 = v9;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d AMR packetsPerBundle[%d] octetAligned[%d] dtxEnabled[%d]", &v23, 0x2Eu);
      }
    }

    goto LABEL_34;
  }

  if (v3 != 108)
  {
LABEL_34:
    if (v6 <= 2)
    {
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->useSBR), @"vcPayloadConfigKeyUseSBR"}];
    }

    goto LABEL_36;
  }

  v10 = self->operatingMode;
  v11 = v10 == 2 || v10 == 7;
  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = 3;
  }

  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v12), @"vcPayloadConfigKeyDTXEnabled"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v13), @"vcPayloadConfigKeyEVSSIDPeriod"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136316162;
      v24 = v14;
      v25 = 2080;
      v26 = "[VCCallSession(PrivateMethods) newConfigForPayloadType:]";
      v27 = 1024;
      v28 = 9240;
      v29 = 1024;
      v30 = v12;
      v31 = 1024;
      v32 = v13;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d EVS dtxEnabled[%d] evsSIDPeriod[%d]", &v23, 0x28u);
    }
  }

LABEL_36:
  v21 = [[VCAudioPayloadConfig alloc] initWithConfigDict:v5];

  return v21;
}

- (id)addAudioPayload:(int)a3
{
  v4 = [(VCCallSession *)self newConfigForPayloadType:*&a3];
  v5 = [[VCAudioPayload alloc] initWithConfig:v4];
  if (v5)
  {
    [(NSMutableArray *)self->negotiatedAudioPayloads addObject:v5];
  }

  return v5;
}

- (id)negotiatedAudioPayloadTypes
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->negotiatedAudioPayloads, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  negotiatedAudioPayloads = self->negotiatedAudioPayloads;
  v5 = [(NSMutableArray *)negotiatedAudioPayloads countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(negotiatedAudioPayloads);
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "config"), "payload"))}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)negotiatedAudioPayloads countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)setupAudioCodecWithPayload:(int)a3
{
  v3 = *&a3;
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 136315906;
      *&v11[4] = v5;
      *&v11[12] = 2080;
      *&v11[14] = "[VCCallSession(PrivateMethods) setupAudioCodecWithPayload:]";
      *&v11[22] = 1024;
      *&v11[24] = 9275;
      *&v11[28] = 1024;
      *&v11[30] = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Setting up audioCodec with payload=%d", v11, 0x22u);
    }
  }

  if ((v3 - 104) > 2)
  {
    self->useSBR = 0;
  }

  else
  {
    [(VCCallSession *)self setupAACELDPayload:v3];
  }

  v7 = [(VCCallSession *)self addAudioPayload:v3];
  self->currentAudioPayload = v7;
  self->sampleRate = [(VCAudioPayloadConfig *)[(VCAudioPayload *)v7 config] inputSampleRate];
  self->_vpioFormat.samplesPerFrame = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] inputSampleRate]/ 0x32;
  v8 = [(VCCallSession *)self delegate];
  if (v8)
  {
    [(VCCallSessionDelegate *)v8 audioIOFormat];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v9 = *&v11[16];
  *&self->_vpioFormat.format.mSampleRate = *v11;
  *&self->_vpioFormat.format.mBytesPerPacket = v9;
  *&self->_vpioFormat.format.mBitsPerChannel = *&v11[32];
  self->_vpioFormat.format.mSampleRate = self->sampleRate;
  return self->currentAudioPayload != 0;
}

- (unsigned)codecBitmapForPayloads:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v9 = [*(*(&v12 + 1) + 8 * i) intValue];
      if (v9 > 104)
      {
        if (v9 > 118)
        {
          switch(v9)
          {
            case 'w':
              v6 |= 0x1000u;
              break;
            case 'y':
              v6 |= 0x800u;
              break;
            case 'z':
              v6 |= 0x400u;
              break;
          }
        }

        else
        {
          switch(v9)
          {
            case 'i':
              v6 |= 0x100u;
              break;
            case 'j':
              v6 |= 0x80u;
              break;
            case 'l':
              v6 |= 2u;
              break;
          }
        }
      }

      else if (v9 > 96)
      {
        switch(v9)
        {
          case 'a':
            v6 |= 0x2000u;
            break;
          case 'b':
            v6 |= 0x4000u;
            break;
          case 'h':
            v6 |= 0x200u;
            break;
        }
      }

      else if (v9)
      {
        if (v9 == 9)
        {
          v6 |= 0x40u;
        }

        else if (v9 == 13)
        {
          v6 |= 0x8000u;
        }
      }

      else
      {
        v6 |= 4u;
      }
    }

    v5 = [a3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  }

  while (v5);
  return v6;
}

- (BOOL)choosePayload:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = [a3 count];
  if (v5)
  {
    v6 = +[VCAudioRuleCollection getForcedPayload];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = v7;
    v9 = *v48;
    LODWORD(v10) = 128;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v12 = [*(*(&v47 + 1) + 8 * i) intValue];
        preferredAudioCodec = v6;
        if (v6 == 128)
        {
          preferredAudioCodec = self->preferredAudioCodec;
        }

        if (v12 == preferredAudioCodec)
        {
          v10 = preferredAudioCodec;
        }

        else
        {
          v10 = v10;
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v47 objects:v46 count:16];
    }

    while (v8);
    if (v10 == 128)
    {
LABEL_15:
      if (v6 != 128)
      {
LABEL_28:
        LOBYTE(v5) = 0;
        return v5;
      }

      v14 = [(VCCallSession *)self codecBitmapForPayloads:a3];
      if ((v14 & 0x200) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v15;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9355;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_AAC_ELD/24000!", &v40, 0x1Cu);
          }
        }

        v10 = 104;
      }

      else if ((v14 & 0x100) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v17;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9358;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_AAC_ELD/22050!", &v40, 0x1Cu);
          }
        }

        v10 = 105;
      }

      else if ((v14 & 0x80) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v19;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9361;
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_AAC_ELD/16000!", &v40, 0x1Cu);
          }
        }

        v10 = 106;
      }

      else if ((v14 & 0x40) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v21;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9364;
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_G722!", &v40, 0x1Cu);
          }
        }

        v10 = 9;
      }

      else if ((v14 & 0x1000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v23;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9367;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_OPUS", &v40, 0x1Cu);
          }
        }

        v10 = 119;
      }

      else if (v14 < 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v25;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9370;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_CN", &v40, 0x1Cu);
          }
        }

        v10 = 13;
      }

      else if ((v14 & 0x400) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v27;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9373;
            _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_SPEEX_8K", &v40, 0x1Cu);
          }
        }

        v10 = 122;
      }

      else if ((v14 & 0x800) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v29;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9376;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_SPEEX_16K", &v40, 0x1Cu);
          }
        }

        v10 = 121;
      }

      else if ((v14 & 4) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v31 = VRTraceErrorLogLevelToCSTR();
          v32 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v31;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9379;
            _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting MULAW!", &v40, 0x1Cu);
          }
        }

        v10 = 0;
      }

      else if ((v14 & 0x4000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v33;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9382;
            _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_AMR_16000!", &v40, 0x1Cu);
          }
        }

        v10 = 98;
      }

      else if ((v14 & 0x2000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v35 = VRTraceErrorLogLevelToCSTR();
          v36 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v35;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9385;
            _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_AMR_8000!", &v40, 0x1Cu);
          }
        }

        v10 = 97;
      }

      else
      {
        if ((v14 & 2) == 0)
        {
          goto LABEL_28;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          v38 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = v37;
            v42 = 2080;
            v43 = "[VCCallSession(PrivateMethods) choosePayload:]";
            v44 = 1024;
            v45 = 9388;
            _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Selecting PL_EVS_32000!", &v40, 0x1Cu);
          }
        }

        v10 = 108;
      }
    }

    LOBYTE(v5) = [(VCCallSession *)self setupAudioCodecWithPayload:v10];
  }

  return v5;
}

- (BOOL)chooseSecondaryPayloads:(id)a3
{
  v4 = [(VCCallSession *)self codecBitmapForPayloads:a3];
  v5 = [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload];
  v6 = v5;
  v7 = 0;
  if ((v4 & 0x80) != 0 && v5 != 106)
  {
    v7 = [(VCCallSession *)self addAudioPayload:106]!= 0;
  }

  if ((v4 & 0x800) != 0 && v6 != 121 && [(VCCallSession *)self addAudioPayload:121])
  {
    ++v7;
  }

  if ((v4 & 0x400) != 0 && v6 != 122 && [(VCCallSession *)self addAudioPayload:122])
  {
    ++v7;
  }

  if ((v4 & 0x1000) != 0 && v6 != 119 && [(VCCallSession *)self addAudioPayload:119])
  {
    ++v7;
  }

  if ((v4 & 0x4000) != 0 && v6 != 98 && [(VCCallSession *)self addAudioPayload:98])
  {
    ++v7;
  }

  if ((v4 & 0x2000) != 0 && v6 != 97 && [(VCCallSession *)self addAudioPayload:97])
  {
    ++v7;
  }

  if ((v4 & 2) != 0 && v6 != 108 && [(VCCallSession *)self addAudioPayload:108])
  {
    ++v7;
  }

  return v7 != 0;
}

- (BOOL)chooseDTXPayloads:(id)a3
{
  if (([(VCCallSession *)self codecBitmapForPayloads:a3]& 0x8000) == 0 || [(VCAudioPayloadConfig *)[(VCAudioPayload *)self->currentAudioPayload config] payload]== 13)
  {
    return 0;
  }

  self->currentDTXPayload = [(VCCallSession *)self addAudioPayload:13];
  return 1;
}

- (void)shutdownVoiceChatFromRemoteSIPSignal:(int)a3 withReason:(const char *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v18[0] = 0;
  v8 = [(VCCallSession *)self primaryConnectionType];
  if (a3 > 4)
  {
    if (a3 != 5)
    {
      if (a3 == 8)
      {
        v13 = 232;
        if (v8 > 2)
        {
          v13 = 254;
        }

        if (v8 == 2)
        {
          v14 = 253;
        }

        else
        {
          v14 = v13;
        }

        [(VCCallSession *)self disconnectWithNoRemotePackets:v14];
      }

      goto LABEL_21;
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v18, 32009, 234, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 9484], @"Remote participant cancelled request.", @"Remote participant cancelled session.");
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__VCCallSession_PrivateMethods__shutdownVoiceChatFromRemoteSIPSignal_withReason___block_invoke_2;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = v18[0];
    v12 = block;
LABEL_20:
    dispatch_async(global_queue, v12);
    goto LABEL_21;
  }

  if (!a3)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v18, 32003, 235, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 9497], @"Remote participant hangup.", @"Remote participant hangup.");
    global_queue = dispatch_get_global_queue(2, 0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__VCCallSession_PrivateMethods__shutdownVoiceChatFromRemoteSIPSignal_withReason___block_invoke_3;
    v15[3] = &unk_1E85F37F0;
    v15[4] = self;
    v15[5] = v18[0];
    v12 = v15;
    goto LABEL_20;
  }

  if (a3 == 3)
  {
    if (a4)
    {
      a4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
    }

    if ([(VCConnectionManager *)self->connectionManager isConnectedOnRelayForActiveConnectionWithQuality:1])
    {
      v9 = 252;
    }

    else
    {
      v9 = 216;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 9470];
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", v18, 32002, v9, v10, [MEMORY[0x1E696AEC0] stringWithFormat:@"SIP failed with internal fatal error"], a4);
    global_queue = dispatch_get_global_queue(2, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__VCCallSession_PrivateMethods__shutdownVoiceChatFromRemoteSIPSignal_withReason___block_invoke;
    v17[3] = &unk_1E85F37F0;
    v17[4] = self;
    v17[5] = v18[0];
    v12 = v17;
    goto LABEL_20;
  }

LABEL_21:
}

- (void)sipConnectThreadProc:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__14;
  v21 = __Block_byref_object_dispose__14;
  v22 = 0;
  if (self->_sipState != 5 || ![(VCCallSession *)self sipConnectWithError:&v22]|| [(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
  {
    goto LABEL_38;
  }

  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([(VCCapabilities *)self->caps isKeyExchangeEnabled]|| [(VCCapabilities *)self->caps isDTLSEnabled])
  {
    cf = 0;
    [(TimingCollection *)self->perfTimers stopTimingForKey:3];
    if ([(VCCapabilities *)self->caps isDTLSEnabled])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v5;
          *&buf[12] = 2080;
          *&buf[14] = "[VCCallSession(PrivateMethods) sipConnectThreadProc:]";
          *&buf[22] = 1024;
          v24 = 9561;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- check use dtls-srtp key", buf, 0x1Cu);
        }
      }

      if (self->srtpKeyBytes)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v7;
            *&buf[12] = 2080;
            *&buf[14] = "[VCCallSession(PrivateMethods) sipConnectThreadProc:]";
            *&buf[22] = 1024;
            v24 = 9563;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- keyex use dtls-srtp key", buf, 0x1Cu);
          }
        }

        cf = CFRetain(self->srtpKeyBytes);
        if (!cf)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else if ([(VCCallSession *)self isSKEOptimizationEnabled])
    {
      [(VCCallSession *)self lock];
      secretKey = self->secretKey;
      if (secretKey)
      {
        cf = CFRetain(secretKey);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) sipConnectThreadProc:];
        }
      }

      [(VCCallSession *)self unlock];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = "[VCCallSession(PrivateMethods) sipConnectThreadProc:]";
          *&buf[22] = 1024;
          v24 = 9547;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d ---- keyex initiate exchange", buf, 0x1Cu);
        }
      }

      [(TimingCollection *)self->perfTimers startTimingForKey:4];
      v12 = SIPKeyExchange(&self->hSIP, [(VCCallInfo *)self->localCallInfo callID], 0, &cf, 0);
      [(TimingCollection *)self->perfTimers stopTimingForKey:4];
      if (v12 == -2146828235)
      {
        [v4 drain];
        goto LABEL_38;
      }
    }

    if (cf)
    {
LABEL_30:
      *buf = 1;
      [(VCCallSession *)self setupEncryptionWithKey:&cf confIndex:buf];
      CFRelease(cf);
    }
  }

  else
  {
    [(TimingCollection *)self->perfTimers removeTimingForKey:3];
  }

LABEL_31:
  [(TimingCollection *)self->perfTimers startTimingForKey:5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__VCCallSession_PrivateMethods__sipConnectThreadProc___block_invoke;
  v15[3] = &unk_1E85F54F0;
  v15[4] = self;
  -[VCCallSession startAudioWithCompletionHandler:](self, "startAudioWithCompletionHandler:", [v15 copy]);
  [(TimingCollection *)self->perfTimers startTimingForKey:6];
  [(TimingCollection *)self->perfTimers startTimingForKey:7];
  [(VCCallSession *)self setUpFirstRemoteFrameTimer];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v24) = 1;
  videoQueue = self->videoQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCCallSession_PrivateMethods__sipConnectThreadProc___block_invoke_2;
  block[3] = &unk_1E85F71D0;
  block[4] = self;
  block[5] = buf;
  block[6] = &v17;
  dispatch_sync(videoQueue, block);
  if (*(*&buf[8] + 24))
  {
    if ([(VCCallInfo *)self->localCallInfo videoIsPaused])
    {
      [(VCCallSession *)self setPauseVideo:1 force:1 error:0];
    }

    [(VCCallSession *)self lock];
    [(VCCallSession *)self enableSessionHealthMonitor];
    [(VCCallSession *)self unlock];
    if ([(VCCallSession *)self shouldNotifyDelegateDidStartBeforeAudioSetup])
    {
      [(VCCallSession *)self notifyDelegateSessionStarted];
    }
  }

  else
  {
    [(TimingCollection *)self->perfTimers stopTimingForKey:7];
    [(VCCallSession *)self cancelFirstRemoteFrameTimer];
    [(VCCallSession *)self disconnect:v18[5] didRemoteCancel:0];
  }

  [(TimingCollection *)self->perfTimers stopTimingForKey:6];
  [(VCCallSession *)self handlePendingPrimaryConnectionChange];

  _Block_object_dispose(buf, 8);
LABEL_38:
  _Block_object_dispose(&v17, 8);
}

uint64_t __54__VCCallSession_PrivateMethods__sipConnectThreadProc___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  [*(*(a1 + 32) + 672) stopTimingForKey:5];
  v6 = *(a1 + 32);
  if (a2)
  {
    if (v6[408] == 1)
    {
      [*(a1 + 32) setPauseAudio:1 force:1 error:0];
      v6 = *(a1 + 32);
    }

    [v6 updateLastReceivedPacketWithTimestamp:1 packetType:micro() + 10.0];
  }

  else
  {
    reportingSymptom();
    [*(a1 + 32) disconnect:a3 didRemoteCancel:0];
  }

  result = [*(a1 + 32) shouldNotifyDelegateDidStartBeforeAudioSetup];
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 32);

    return [v8 notifyDelegateSessionStarted];
  }

  return result;
}

uint64_t __54__VCCallSession_PrivateMethods__sipConnectThreadProc___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) startVideo:0 error:*(*(a1 + 48) + 8) + 40];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldNotifyDelegateDidStartBeforeAudioSetup
{
  if ([(VCCallSession *)self deviceRole]== 4 || [(VCCallSession *)self deviceRole]== 5 || ![(VCCapabilities *)self->caps isAudioEnabled]|| [(VCCapabilities *)self->caps isVideoEnabled])
  {
    return 1;
  }

  return [(VCCallSession *)self isGKVoiceChat];
}

- (unsigned)audioRTPID
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = RTPGetLocalSSRC(self->rtpHandle, &v9);
  if ((v3 & 0x80000000) == 0)
  {
    return v9;
  }

  v5 = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    rtpHandle = self->rtpHandle;
    *buf = 136316418;
    v11 = v6;
    v12 = 2080;
    v13 = "[VCCallSession(PrivateMethods) audioRTPID]";
    v14 = 1024;
    v15 = 9657;
    v16 = 1024;
    v17 = 9657;
    v18 = 1024;
    v19 = v5;
    v20 = 2048;
    v21 = rtpHandle;
    _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m:%d: RTPGetLocalSSRC for audio failed (%08X) handle = %p", buf, 0x32u);
  }

  return 0;
}

- (unsigned)videoRTPID
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if ((RTPGetLocalSSRC(self->rtpVideo, &v3) & 0x80000000) == 0)
  {
    return v3;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    [VCCallSession(PrivateMethods) videoRTPID];
  }

  return 0;
}

- (void)doSipEndProc:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  -[VCCallSession doSipEndAction:callID:error:](self, "doSipEndAction:callID:error:", [a3 intValue], -[VCCallInfo callID](self->localCallInfo, "callID"), 0);
}

- (void)disconnectWithNoRemotePackets:(int64_t)a3 timeoutUsed:(double)a4
{
  v8[7] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(2, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__VCCallSession_PrivateMethods__disconnectWithNoRemotePackets_timeoutUsed___block_invoke;
  v8[3] = &unk_1E85F4090;
  v8[4] = self;
  v8[5] = a3;
  *&v8[6] = a4;
  dispatch_async(global_queue, v8);
}

uint64_t __75__VCCallSession_PrivateMethods__disconnectWithNoRemotePackets_timeoutUsed___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(*(a1 + 32) + 24) callID];
        *buf = 136315906;
        *&buf[4] = v2;
        v12 = 2080;
        v13 = "[VCCallSession(PrivateMethods) disconnectWithNoRemotePackets:timeoutUsed:]_block_invoke";
        v14 = 1024;
        v15 = 9690;
        v16 = 1024;
        v17 = v5;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Failing due to no remote packets.  local callid: %x", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __75__VCCallSession_PrivateMethods__disconnectWithNoRemotePackets_timeoutUsed___block_invoke_cold_1();
    }
  }

  *buf = 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if ((*(v6 + 993) & 1) == 0)
  {
    [*(v6 + 1512) reportNetworkConditionsDegraded];
  }

  v8 = *(a1 + 48);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 9703];
  +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", buf, 32001, v7, v8, v9, [MEMORY[0x1E696AEC0] stringWithFormat:@"No remote packets for %d seconds", *(a1 + 48)], @"Remote network outage?");
  return [*(a1 + 32) disconnect:*buf didRemoteCancel:0];
}

- (void)doSipEndAction:(int)a3 callID:(unsigned int)a4 error:(id)a5
{
  v5 = *&a4;
  v21 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 2:
LABEL_9:
      SIPCancel(self->hSIP, v5);
      break;
    case 1:
      v8 = [a5 userInfo];
      v9 = [objc_msgSend(v8 objectForKeyedSubscript:{@"NSErrorUserInfoDetailedError", "unsignedIntValue"}];
      v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
      if (!v10)
      {
        v10 = @"Normal Call Termination";
      }

      [(__CFString *)v10 UTF8String];
      if ((SIPHangupWithTimeout(&self->hSIP, v5, 0x1388uLL, v9) & 0x80000000) != 0)
      {
        SIPCloseCall(self->hSIP, v5);
      }

      goto LABEL_9;
    case 0:
      SIPCloseCall(self->hSIP, a4);
      break;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = v11;
      v15 = 2080;
      v16 = "[VCCallSession(PrivateMethods) doSipEndAction:callID:error:]";
      v17 = 1024;
      v18 = 9737;
      v19 = 1024;
      v20 = a3;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Finished sip end action %d", &v13, 0x22u);
    }
  }
}

- (void)notifyDelegateSessionStarted
{
  v3[5] = *MEMORY[0x1E69E9840];
  self->sentClientSuccessfulDidStart = 1;
  delegateNotificationQueue = self->delegateNotificationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__VCCallSession_PrivateMethods__notifyDelegateSessionStarted__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateNotificationQueue, v3);
}

uint64_t __61__VCCallSession_PrivateMethods__notifyDelegateSessionStarted__block_invoke(uint64_t a1)
{
  v2 = VCConnectionManager_CopyPrimaryConnection(*(*(a1 + 32) + 80));
  v3 = [v2 localInterfaceTypeString];
  v4 = [v2 remoteInterfaceTypeString];
  [*(*(a1 + 32) + 8) session:*(a1 + 32) didStart:1 connectionType:objc_msgSend(v2 localInterfaceType:"type") remoteInterfaceType:v3 error:{v4, 0}];
  if (v2)
  {
    CFRelease(v2);
  }

  v5 = *(*(a1 + 32) + 1392);
  v6 = [v3 UTF8String];
  v7 = [v4 UTF8String];

  return MEMORY[0x1EEDE9818](v5, v6, v7);
}

- (int)Conference_SetBWEstMode:(BOOL)a3 bFakeLargeFrameMode:(BOOL)a4
{
  v10 = *MEMORY[0x1E69E9840];
  hAFRC = self->hAFRC;
  if (hAFRC == 0xFFFFFFFFLL)
  {
    v7 = 0;
    self->bBWEstOperatingModeInitialized = 1;
    self->bBWEstNewBWEstModeEnabled = a3;
    self->bBWEstFakeLargeFrameModeEnabled = a4;
  }

  else
  {
    self->bBWEstNewBWEstModeEnabled = a3;
    self->bBWEstFakeLargeFrameModeEnabled = a4;
    v6 = AFRCSetBWEstMode(hAFRC, a3, [(VCCallInfo *)self->remoteCallInfo isIOS]);
    if (v6 < 0)
    {
      return v6;
    }

    else
    {
      v9 = 0;
      v7 = AFRCGetSenderRecvrModes(self->hAFRC, &v9 + 1, &v9);
      if ((v7 & 0x80000000) == 0)
      {
        MediaQueue_SetAFRCSendMode(self->hMediaQueue, SHIBYTE(v9));
        VTP_SetAFRCRecvMode(self->hAFRC, v9);
        RTPSetAFRCRecvMode(self->rtpHandle, v9);
        RTPSetAFRCRecvMode(self->rtpVideo, v9);
        [(VCCallSessionDelegate *)self->delegate setBWEOptions:self->bBWEstOperatingModeInitialized UseNewBWEMode:self->bBWEstNewBWEstModeEnabled FakeLargeFrameMode:self->bBWEstFakeLargeFrameModeEnabled ProbingSenderLog:self->bBWEstActiveProbingSenderLog];
      }
    }
  }

  return v7;
}

- (void)setLocalIdentityForKeyExchange
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(VCCallSession *)self retrieveIdentity];
  if (v3)
  {
    v4 = v3;
    if (self->hSIP != 0xFFFFFFFFLL)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(VCCapabilities *)self->caps isKeyExchangeEnabled];
          v8 = [-[__SecIdentity description](v4 "description")];
          peerCN = self->peerCN;
          if (peerCN)
          {
            v10 = [[(NSString *)peerCN description] UTF8String];
          }

          else
          {
            v10 = "<nil>";
          }

          caps = self->caps;
          if (caps)
          {
            v15 = [-[VCCapabilities description](caps "description")];
          }

          else
          {
            v15 = "<nil>";
          }

          *buf = 136316674;
          v18 = v5;
          v19 = 2080;
          v20 = "[VCCallSession(PrivateMethods) setLocalIdentityForKeyExchange]";
          v21 = 1024;
          v22 = 9808;
          v23 = 1024;
          v24 = v7;
          v25 = 2080;
          v26 = v8;
          v27 = 2080;
          v28 = v10;
          v29 = 2080;
          v30 = v15;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SIPSetDoKeyExchange = %d, ident = %s, peerCN =%s, caps = %s", buf, 0x40u);
        }
      }

      SIPSetDoKeyExchange(self->hSIP, 0, v4);
    }

    CFRelease(v4);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = v11;
        v19 = 2080;
        v20 = "[VCCallSession(PrivateMethods) setLocalIdentityForKeyExchange]";
        v21 = 1024;
        v22 = 9815;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Failed retreiving the localIdentity from APS", buf, 0x1Cu);
      }
    }

    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__VCCallSession_PrivateMethods__setLocalIdentityForKeyExchange__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = self;
    dispatch_async(global_queue, block);
  }
}

uint64_t __63__VCCallSession_PrivateMethods__setLocalIdentityForKeyExchange__block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  [GKVoiceChatError getNSError:v3 code:32021 detailedCode:0 filePath:0 description:@"We could not establish end-to-end security for this call." reason:@"No local identity could be retrieved."];
  return [*(a1 + 32) disconnect:v3[0] didRemoteCancel:0];
}

- (void)logIdentity:(__SecIdentity *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    certificateRef = 0xAAAAAAAAAAAAAAAALL;
    if (SecIdentityCopyCertificate(a3, &certificateRef))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v20 = v3;
          v21 = 2080;
          v22 = "[VCCallSession(PrivateMethods) logIdentity:]";
          v23 = 1024;
          v24 = 9833;
          v5 = "VCCallSession [%s] %s:%d setLocalIdentityForKeyExchange: SecIdentityCopyCertificate error";
LABEL_6:
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x1Cu);
        }
      }
    }

    else if (certificateRef)
    {
      v6 = SecCertificateCopyCommonNames();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v20 = v7;
          v21 = 2080;
          v22 = "[VCCallSession(PrivateMethods) logIdentity:]";
          v23 = 1024;
          v24 = 9852;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setLocalIdentityForKeyExchange: display common name(s) from local cert...", buf, 0x1Cu);
        }
      }

      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v6)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v12 = [objc_msgSend(v6 "description")];
            *buf = 136315906;
            v20 = v10;
            v21 = 2080;
            v22 = "[VCCallSession(PrivateMethods) logIdentity:]";
            v23 = 1024;
            v24 = 9855;
            v25 = 2080;
            v26 = v12;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d %s", buf, 0x26u);
          }
        }

        CFRelease(v6);
      }

      else if (ErrorLogLevelForModule >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v20 = v14;
          v21 = 2080;
          v22 = "[VCCallSession(PrivateMethods) logIdentity:]";
          v23 = 1024;
          v24 = 9858;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setLocalIdentityForKeyExchange: no common name(s) found in local cert...", buf, 0x1Cu);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v20 = v16;
          v21 = 2080;
          v22 = "[VCCallSession(PrivateMethods) logIdentity:]";
          v23 = 1024;
          v24 = 9861;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setLocalIdentityForKeyExchange: done displaying common name(s) from local cert...", buf, 0x1Cu);
        }
      }

      CFRelease(certificateRef);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = v13;
        v21 = 2080;
        v22 = "[VCCallSession(PrivateMethods) logIdentity:]";
        v23 = 1024;
        v24 = 9864;
        v5 = "VCCallSession [%s] %s:%d setLocalIdentityForKeyExchange: no local cert found...";
        goto LABEL_6;
      }
    }
  }
}

- (id)pickFeaturesStringForPayload:(int)a3 featureListDict:(id)a4 remote:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v8 = [a4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:")}];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v8)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v12 = "remote";
        }

        else
        {
          v12 = "local";
        }

        if (a4)
        {
          v13 = [objc_msgSend(a4 "description")];
        }

        else
        {
          v13 = "<nil>";
        }

        v17 = 136316674;
        v18 = v10;
        v19 = 2080;
        v20 = "[VCCallSession(PrivateMethods) pickFeaturesStringForPayload:featureListDict:remote:]";
        v21 = 1024;
        v22 = 9883;
        v23 = 1024;
        v24 = a3;
        v25 = 2080;
        v26 = v12;
        v27 = 2080;
        v28 = v13;
        v29 = 2080;
        v30 = [objc_msgSend(v8 "description")];
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d pickFeaturesStringForPayload for %d (%s) from %s: %s", &v17, 0x40u);
      }
    }

    return [MEMORY[0x1E696AEC0] stringWithString:v8];
  }

  else
  {
    if (ErrorLogLevelForModule >= 5)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315906;
        v18 = v14;
        v19 = 2080;
        v20 = "[VCCallSession(PrivateMethods) pickFeaturesStringForPayload:featureListDict:remote:]";
        v21 = 1024;
        v22 = 9877;
        v23 = 1024;
        v24 = a3;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d pickFeaturesStringForPayload: DID NOT FIND payload %d.", &v17, 0x22u);
      }
    }

    return 0;
  }
}

- (id)allPayloadsLocalFeaturesString
{
  result = self->_allPayloadsLocalFeaturesString;
  if (!result)
  {
    result = [VCVideoFeatureListStringHelper newLocalFeaturesStringWithType:1];
    self->_allPayloadsLocalFeaturesString = result;
  }

  return result;
}

- (BOOL)setMatchedFeaturesString:(char *)a3 localFeaturesString:(id)a4 remoteFeaturesString:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  __lasts = 0xAAAAAAAAAAAAAAAALL;
  memset(v47, 170, sizeof(v47));
  memset(v46, 170, sizeof(v46));
  memset(__b, 170, sizeof(__b));
  memset(__str, 170, sizeof(__str));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v35 = v9;
      v36 = 2080;
      v37 = "[VCCallSession(PrivateMethods) setMatchedFeaturesString:localFeaturesString:remoteFeaturesString:]";
      v38 = 1024;
      v39 = 9909;
      v40 = 2080;
      v41 = [a4 UTF8String];
      v42 = 2080;
      v43 = [a5 UTF8String];
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d setMatchedFeaturesString: local=[%s] remote=[%s]", buf, 0x30u);
    }
  }

  if (a4)
  {
    v11 = a5 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v35 = v22;
        v36 = 2080;
        v37 = "[VCCallSession(PrivateMethods) setMatchedFeaturesString:localFeaturesString:remoteFeaturesString:]";
        v38 = 1024;
        v39 = 9912;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d NO matched featuresString", buf, 0x1Cu);
      }
    }
  }

  else
  {
    [a4 UTF8String];
    __strlcpy_chk();
    [a5 UTF8String];
    __strlcpy_chk();
    v13 = strtok_r(__str, ";", &__lasts);
    if (v13 && !strcmp(v13, "FLS"))
    {
      if ([(VCCallInfo *)self->remoteCallInfo requiresImplicitFeatureString])
      {
        __strlcpy_chk();
        LODWORD(v47[0]) = 5395532;
        __strlcpy_chk();
        strcpy(&v47[2], "CABAC");
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      v25 = strtok_r(0, ";", &__lasts);
      if (v25)
      {
        v26 = v25;
        v27 = v14;
        v28 = &v47[2 * v14];
        v29 = &v46[2 * v14];
        do
        {
          strlcpy(v29, v26, 0x20uLL);
          strlcpy(v28, v26, 0x20uLL);
          v30 = strchr(v28, 58);
          if (v30)
          {
            *v30 = 0;
          }

          v31 = strtok_r(0, ";", &__lasts);
          v14 = v27 + 1;
          if (!v31)
          {
            break;
          }

          v26 = v31;
          v28 += 32;
          v29 += 32;
        }

        while (v27++ < 0x63);
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = strtok_r(__b, ";", &__lasts);
    if (v15)
    {
      if (!strcmp(v15, "FLS"))
      {
        v16 = strtok_r(0, ";", &__lasts);
        if (v16)
        {
          v17 = v16;
          do
          {
            v18 = strchr(v17, 58);
            if (v18)
            {
              *v18 = 0;
            }

            if (v14 >= 1)
            {
              v19 = v46;
              v20 = v47;
              v21 = v14;
              while (strcmp(v17, v20))
              {
                v19 += 32;
                v20 += 32;
                if (!--v21)
                {
                  goto LABEL_26;
                }
              }

              strlcat(a3, v19, 0xC80uLL);
              strlcat(a3, ";", 0xC80uLL);
            }

LABEL_26:
            v17 = strtok_r(0, ";", &__lasts);
          }

          while (v17);
        }
      }
    }
  }

  return v12;
}

- (const)matchedFeaturesStringForPayload:(int)a3
{
  v3 = [(VCCallSession *)self getFeatureListStringForPayload:*&a3];

  return [v3 UTF8String];
}

- (void)setupBitrateNegotiation
{
  v21 = *MEMORY[0x1E69E9840];
  callSessionBitrateArbiter = self->callSessionBitrateArbiter;
  if (!callSessionBitrateArbiter)
  {
    callSessionBitrateArbiter = [[VCBitrateArbiter alloc] initWithDeviceRole:self->_deviceRole callLogFile:self->_callLogFile];
    self->callSessionBitrateArbiter = callSessionBitrateArbiter;
  }

  self->carrierBitrateCap = [(VCBitrateArbiter *)callSessionBitrateArbiter maxAllowedCellularBitrate];
  [(VCCallInfo *)self->localCallInfo setMaxBandwidth:[(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrate]];
  v12 = 0;
  v4 = VCCarrierBundle_QueryCarrierBundleValueForKey(@"MaxFaceTimeBitrate", &v12);
  v5 = [v12 intValue];
  if (v4 && v5 >= 1)
  {
    self->carrierBitrateCap = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        carrierBitrateCap = self->carrierBitrateCap;
        *buf = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCCallSession(PrivateMethods) setupBitrateNegotiation]";
        v17 = 1024;
        v18 = 9986;
        v19 = 1024;
        v20 = carrierBitrateCap;
        v9 = "VCCallSession [%s] %s:%d Read key 'MaxFaceTimeBitrate' from carrier bundle: %d";
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x22u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->carrierBitrateCap;
      *buf = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "[VCCallSession(PrivateMethods) setupBitrateNegotiation]";
      v17 = 1024;
      v18 = 9988;
      v19 = 1024;
      v20 = v11;
      v9 = "VCCallSession [%s] %s:%d No key 'MaxFaceTimeBitrate' in carrier bundle: using default (%d)";
      goto LABEL_11;
    }
  }
}

- (void)adjustBitrateForConnectionType
{
  v3 = [(VCCallSession *)self maxBitrateForConnectionType];
  if (self->callSessionBitrate > v3)
  {
    self->callSessionBitrate = v3;
  }
}

- (unsigned)maxBitrateForConnectionType
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(VCCallSession *)self primaryConnectionType];
  if (v3 - 3 >= 2)
  {
    if (v3 != 2)
    {
      v5 = 0;
      goto LABEL_15;
    }

    v5 = [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-bitrate-max-wifi", "intValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = v9;
        v18 = 2080;
        v19 = "[VCCallSession(PrivateMethods) maxBitrateForConnectionType]";
        v20 = 1024;
        v21 = 10018;
        v22 = 1024;
        v23 = v5;
        v8 = "VCCallSession [%s] %s:%d UDP maxBitrateForConnectionType is %d";
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-tcp-relay-bitrate-max", "intValue"}];
    if (v4)
    {
      v5 = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315906;
          v17 = v6;
          v18 = 2080;
          v19 = "[VCCallSession(PrivateMethods) maxBitrateForConnectionType]";
          v20 = 1024;
          v21 = 10010;
          v22 = 1024;
          v23 = v5;
          v8 = "VCCallSession [%s] %s:%d TCP maxBitrateForConnectionType is %d";
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v8, &v16, 0x22u);
        }
      }
    }

    else
    {
      v5 = [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-bitrate-max-wifi", "intValue"}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315906;
          v17 = v10;
          v18 = 2080;
          v19 = "[VCCallSession(PrivateMethods) maxBitrateForConnectionType]";
          v20 = 1024;
          v21 = 10013;
          v22 = 1024;
          v23 = v5;
          v8 = "VCCallSession [%s] %s:%d Use general RelayBitRate for TCP: %d";
          goto LABEL_14;
        }
      }
    }
  }

LABEL_15:
  operatingMode = self->operatingMode;
  v12 = VCConnectionManager_CopyConnectionForQuality(self->connectionManager, 1);
  v13 = [(VCBitrateArbiter *)self->callSessionBitrateArbiter maxAllowedBitrateForVCConnection:v12 forLocalInterface:1 arbiterMode:VCBitrateArbiter_ModeFromOperatingMode(self->operatingMode) encodeRule:self->_currentEncodeRule];
  if (v12)
  {
    CFRelease(v12);
  }

  if (operatingMode == 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v5;
  }

  if (v14 <= 0)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

- (void)logConnectionSuccess
{
  v4[5] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__VCCallSession_PrivateMethods__logConnectionSuccess__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(global_queue, v4);
}

uint64_t __53__VCCallSession_PrivateMethods__logConnectionSuccess__block_invoke()
{
  v0 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (!v0)
  {
    v0 = @"Unknown";
  }

  [(__CFString *)v0 UTF8String];

  return reportingLog();
}

- (void)enableSessionHealthMonitor
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (!self->sessionHealthMonitor)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
    self->sessionHealthMonitor = v4;
    dispatch_source_set_timer(v4, 0, 0xB2D05E00uLL, 0x1C9C380uLL);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__VCCallSession_PrivateMethods__enableSessionHealthMonitor__block_invoke;
    v5[3] = &unk_1E85F3778;
    v5[4] = self;
    dispatch_source_set_event_handler(self->sessionHealthMonitor, v5);
    dispatch_source_set_cancel_handler(self->sessionHealthMonitor, v5);
    dispatch_resume(self->sessionHealthMonitor);
  }
}

void __59__VCCallSession_PrivateMethods__enableSessionHealthMonitor__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) audioReceivingBitrateKbps];
  v5 = v4;
  [*(a1 + 32) audioTransmittingBitrateKbps];
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = v8[355];
  if (v9 == 4 || v9 == 1)
  {
    [v8 sessionReceivingBitrate];
    v12 = v11;
    [*(a1 + 32) sessionReceivingFramerate];
    v14 = v13;
    [*(a1 + 32) sessionTransmittingBitrate];
    v16 = v15;
    [*(a1 + 32) sessionTransmittingFramerate];
    v18 = v17;
    v19 = *(a1 + 32);
    LODWORD(v1) = *(v19 + 1328);
    LODWORD(v2) = *(v19 + 1332);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(a1 + 32) callID];
        v49.width = v1;
        v49.height = v2;
        v26 = 136317698;
        v27 = v20;
        v28 = 2080;
        v29 = "[VCCallSession(PrivateMethods) enableSessionHealthMonitor]_block_invoke";
        v30 = 1024;
        v31 = 10075;
        v32 = 2048;
        v33 = v16 / 1000.0;
        v34 = 2048;
        v35 = v18;
        v36 = 2048;
        v37 = v7;
        v38 = 2048;
        v39 = v12 / 1000.0;
        v40 = 2048;
        v41 = v14;
        v42 = 2048;
        v43 = v5;
        v44 = 1024;
        v45 = v22;
        v46 = 2112;
        v47 = NSStringFromSize(v49);
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d @=@ Health: VCCallSession videoTxBitrate=%5.3f kbps, videoTxFrameRate=%3.1f, audioTxBitrate=%5.3f kbps, videoRxBitrate=%5.3f kbps, videoRxFrameRate=%3.1f, audioRxBitrate=%5.3f kbps, callID=%d videoRxResolution=%@", &v26, 0x68u);
      }
    }
  }

  if (*(*(a1 + 32) + 1420) == 2 && VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 32) callID];
      v26 = 136316418;
      v27 = v23;
      v28 = 2080;
      v29 = "[VCCallSession(PrivateMethods) enableSessionHealthMonitor]_block_invoke";
      v30 = 1024;
      v31 = 10079;
      v32 = 2048;
      v33 = v7;
      v34 = 2048;
      v35 = v5;
      v36 = 1024;
      LODWORD(v37) = v25;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d @=@ Health: VCCallSession-AudioOnly audioTxBitrate=%5.3f kbps, audioRxBitrate=%5.3f kbps, callID=%d", &v26, 0x36u);
    }
  }
}

- (double)audioReceivingBitrateKbps
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  VCAudioReceiver_CollectChannelMetrics(self->audioReceiver, v4);
  LODWORD(v2) = v4[0];
  return v2;
}

- (double)audioTransmittingBitrateKbps
{
  audioTransmitter = self->audioTransmitter;
  if (!audioTransmitter)
  {
    return 0.0;
  }

  [(VCAudioTransmitter *)audioTransmitter currentChannelMetrics];
  LODWORD(v3) = v5;
  return v3;
}

- (void)disableSessionHealthMonitor
{
  sessionHealthMonitor = self->sessionHealthMonitor;
  if (sessionHealthMonitor)
  {
    dispatch_source_cancel(sessionHealthMonitor);
    v4 = self->sessionHealthMonitor;
    if (v4)
    {
      dispatch_release(v4);
      self->sessionHealthMonitor = 0;
    }
  }
}

- (void)sendBasebandCodecMessage
{
  v33 = *MEMORY[0x1E69E9840];
  deviceRole = self->_deviceRole;
  if (deviceRole != 4 && deviceRole != 2)
  {
    return;
  }

  if ([(VCCallSession *)self basebandCodecType]&& [(VCCallSession *)self basebandCodecSampleRate])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{-[VCCallSession basebandCodecType](self, "basebandCodecType"), @"VCBasebandCodecType", -[VCCallSession basebandCodecSampleRate](self, "basebandCodecSampleRate"), @"VCBasebandCodecSampleRate", 0}];
    v5 = [(VCSessionMessaging *)self->messaging newPackedMessageFromDictionary:?];
    [(VCSessionMessaging *)self->messaging sendMessage:v5 withTopic:@"VCBasebandCodecChange"];

    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if ([(VCCallSession *)self basebandCodecType])
    {
      v9 = [[(NSString *)[(VCCallSession *)self basebandCodecType] description] UTF8String];
    }

    else
    {
      v9 = "<nil>";
    }

    if ([(VCCallSession *)self basebandCodecSampleRate])
    {
      v17 = [-[NSNumber description](-[VCCallSession basebandCodecSampleRate](self "basebandCodecSampleRate")];
    }

    else
    {
      v17 = "<nil>";
    }

    *buf = 136316162;
    v20 = v7;
    v21 = 2080;
    v22 = "[VCCallSession(PrivateMethods) sendBasebandCodecMessage]";
    v23 = 1024;
    v24 = 10113;
    v25 = 2080;
    v26 = v9;
    v27 = 2080;
    v28 = v17;
    v14 = "VCCallSession [%s] %s:%d Not sending message. codecType = %s, codecRate = %s";
    v15 = v8;
    v16 = 48;
LABEL_33:
    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(VCCallSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if ([(VCCallSession *)self basebandCodecType])
      {
        v12 = [[(NSString *)[(VCCallSession *)self basebandCodecType] description] UTF8String];
      }

      else
      {
        v12 = "<nil>";
      }

      if ([(VCCallSession *)self basebandCodecSampleRate])
      {
        v13 = [-[NSNumber description](-[VCCallSession basebandCodecSampleRate](self "basebandCodecSampleRate")];
      }

      else
      {
        v13 = "<nil>";
      }

      *buf = 136316674;
      v20 = v10;
      v21 = 2080;
      v22 = "[VCCallSession(PrivateMethods) sendBasebandCodecMessage]";
      v23 = 1024;
      v24 = 10113;
      v25 = 2112;
      v26 = v6;
      v27 = 2048;
      v28 = self;
      v29 = 2080;
      v30 = v12;
      v31 = 2080;
      v32 = v13;
      v14 = "VCCallSession [%s] %s:%d %@(%p) Not sending message. codecType = %s, codecRate = %s";
      v15 = v11;
      v16 = 68;
      goto LABEL_33;
    }
  }
}

- (void)sendSymptomToRemote:(id)a3 groupID:(id)a4
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"VCSymptomReporterSymptom";
  v6[1] = @"VCSymptomReporterGroupID";
  v7[0] = a3;
  v7[1] = a4;
  v5 = -[VCSessionMessaging newPackedMessageFromDictionary:](self->messaging, "newPackedMessageFromDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2]);
  [(VCSessionMessaging *)self->messaging sendMessage:v5 withTopic:@"VCSymptomReporterMessage"];
}

- (void)setDuplicationFlag:(BOOL)a3 withPreferredLocalLinkTypeForDuplication:(int)a4 notifyPeer:(BOOL)a5
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v5 = a3;
    v9[0] = @"VCPreferredInterfaceKey";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[VCConnectionManager preferredLocalInterfaceForDuplication](self->connectionManager, "preferredLocalInterfaceForDuplication", a3, *&a4)}];
    v9[1] = @"VCPreferredInterfaceDuplicatingKey";
    v10[0] = v7;
    v10[1] = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v8 = -[VCSessionMessaging newPackedMessageFromDictionary:](self->messaging, "newPackedMessageFromDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2]);
    [(VCSessionMessaging *)self->messaging sendMessage:v8 withTopic:@"VCPreferredInterfaceMessageTopic"];
  }
}

- (void)handleDuplicationEnabled:(BOOL)a3 activeConnection:(id)a4
{
  v5 = a3;
  v24 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a4)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v10 = "ON";
        }

        else
        {
          v10 = "OFF";
        }

        *buf = 136316162;
        v15 = v8;
        v16 = 2080;
        v17 = "[VCCallSession(PrivateMethods) handleDuplicationEnabled:activeConnection:]";
        v18 = 1024;
        v19 = 10177;
        v20 = 2080;
        v21 = v10;
        v22 = 2080;
        v23 = [objc_msgSend(a4 "description")];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: duplication is %s with active connection %s", buf, 0x30u);
      }
    }

    cellTechQueue = self->cellTechQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__VCCallSession_PrivateMethods__handleDuplicationEnabled_activeConnection___block_invoke;
    block[3] = &unk_1E85F37C8;
    block[4] = a4;
    block[5] = self;
    v13 = v5;
    dispatch_async(cellTechQueue, block);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(PrivateMethods) handleDuplicationEnabled:activeConnection:];
    }
  }
}

uint64_t __75__VCCallSession_PrivateMethods__handleDuplicationEnabled_activeConnection___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(*(a1 + 32));
  IsRemoteOnCellular = VCConnection_IsRemoteOnCellular(*(a1 + 32));
  v4 = VCConnection_LocalCellTech(*(a1 + 32));
  v5 = VCConnection_RemoteCellTech(*(a1 + 32));
  VideoTransmitter_SetCellTech(*(*(a1 + 40) + 1256), IsLocalOnCellular, v4, IsRemoteOnCellular, v5);
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [*(a1 + 32) isWifiToWifi];
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [*(a1 + 40) resetVideoRulesForInterface:v8 videoReportingDictionary:v6];
  [*(*(a1 + 40) + 1232) setUseWiFiTiers:v7];
  v9 = VCBitrateArbiter_ModeFromOperatingMode(*(*(a1 + 40) + 1420));
  v10 = [*(*(a1 + 40) + 1176) maxAllowedBitrateForVCConnection:*(a1 + 32) forLocalInterface:1 arbiterMode:v9 encodeRule:*(*(a1 + 40) + 176)];
  if (!v10)
  {
    v11 = *(*(a1 + 40) + 1420);
    if (v11 == 7 || v11 == 2)
    {
      v10 = 40;
    }

    else
    {
      v10 = 100;
    }
  }

  v13 = [*(a1 + 32) remoteConnectionType];
  v14 = *(a1 + 40);
  v34 = v6;
  if (v13 == 3)
  {
    v15 = [*(v14 + 1176) maxAllowedBitrateForVCConnection:*(a1 + 32) forLocalInterface:0 arbiterMode:v9 encodeRule:*(v14 + 176)];
  }

  else
  {
    v15 = [*(v14 + 32) cellBandwidth];
  }

  v16 = v15;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v18 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v36 = v19;
      v37 = 2080;
      v38 = "[VCCallSession(PrivateMethods) handleDuplicationEnabled:activeConnection:]_block_invoke";
      v39 = 1024;
      v40 = 10204;
      v41 = 1024;
      v42 = v16;
      v43 = 1024;
      v44 = IsRemoteOnCellular;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: remoteBitrateCapToUse = %d, remoteUseCellular = %d", buf, 0x28u);
    }
  }

  if (v10 >= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v10;
  }

  VideoTransmitter_SetBitrate(*(*(a1 + 40) + 1256), 1000 * v21);
  *(*(a1 + 40) + 1148) = v21;
  VCAudioReceiver_UpdateCellTech(*(*(a1 + 40) + 1224), v4, v5);
  if ([*(*(a1 + 40) + 320) isVideoEnabled])
  {
    VideoReceiver_CellTechChanged();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = v18;
    v24 = v22;
    v25 = *v23;
    if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v36 = v24;
      v37 = 2080;
      v38 = "[VCCallSession(PrivateMethods) handleDuplicationEnabled:activeConnection:]_block_invoke";
      v39 = 1024;
      v40 = 10216;
      v41 = 1024;
      v42 = v10;
      v43 = 1024;
      v44 = IsLocalOnCellular;
      v45 = 1024;
      v46 = IsRemoteOnCellular;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: localBitrateCapToUse = %d, useCellular = %d, %d", buf, 0x2Eu);
    }
  }

  AFRCUpdateCellTech(*(*(a1 + 40) + 344), IsLocalOnCellular, v4, IsRemoteOnCellular, v5, [*(a1 + 40) evaluateEnableRRx:0], 0);
  v26 = *(a1 + 40);
  v27 = *(v26 + 1420);
  if (v27 == 7 || v27 == 2)
  {
    AFRCSetTxCap(*(*(a1 + 40) + 344), [v26 currentAudioCap]);
    v26 = *(a1 + 40);
  }

  v28 = VCConnectionManager_CopyPrimaryConnection(*(v26 + 80));
  if (!VCConnection_IsLocalOnWiFiOrWired(v28))
  {
    v29 = 0;
    if (!v28)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (*(a1 + 48))
  {
    v29 = 512;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
LABEL_35:
    CFRelease(v28);
  }

LABEL_36:
  HIDWORD(v33) = v29;
  LOBYTE(v33) = [AVCRateController rateControlTrafficTypeForScreen:0 isPersona:0];
  [*(*(a1 + 40) + 352) configureWithOperatingMode:*(*(a1 + 40) + 1420) isLocalCellular:IsLocalOnCellular localCellTech:v4 isRemoteCellular:IsRemoteOnCellular remoteCellTech:v5 bitrateCapKbps:v21 trafficType:v33 featureFlags:?];
  RTPSetBasebandCongestionDetector(*(*(a1 + 40) + 48), [*(*(a1 + 40) + 352) basebandCongestionDetector]);
  v30 = *(a1 + 40);
  if (!*(v30 + 352))
  {
    if (v4)
    {
      IsLTEOrNewer = NetworkUtils_IsLTEOrNewer(v4);
      v30 = *(a1 + 40);
    }

    else
    {
      IsLTEOrNewer = 1;
    }

    [*(v30 + 360) setIsSenderProbingEnabled:IsLTEOrNewer];
    v30 = *(a1 + 40);
  }

  [v30 reportHandoverResultsWithDictionary:v34 localBitrateCap:v21 remoteBitrateCap:v16];
  [*(a1 + 40) updateCachedConnectionState];
  [*(a1 + 40) updateMaxPktLength];
  return [*(a1 + 40) notifyDelegateActiveConnectionDidChange];
}

- (int)mapPacketMultiplexModeToRTPMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  if (a3 == 2)
  {
    return 2;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    [VCCallSession(PrivateMethods) mapPacketMultiplexModeToRTPMode:];
  }

  return 0;
}

- (int)mapPacketMultiplexModeToSIPMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  if (a3 == 2)
  {
    return 2;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    [VCCallSession(PrivateMethods) mapPacketMultiplexModeToSIPMode:];
  }

  return 0;
}

- (BOOL)disconnectInternal:(BOOL)a3 disconnectError:(id)a4 didRemoteCancel:(BOOL)a5
{
  v26 = *MEMORY[0x1E69E9840];
  [(VCConnectionManager *)self->connectionManager remoteNoRemotePacketInterval];
  v10 = v9;
  v11 = fmax(micro() - self->lastReceivedPacketTimestamp, 0.0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__VCCallSession_PrivateMethods__disconnectInternal_disconnectError_didRemoteCancel___block_invoke;
  v17[3] = &unk_1E85F72D8;
  v18 = a3;
  v19 = a5;
  v17[4] = self;
  v17[5] = a4;
  *&v17[6] = v11;
  v17[7] = v10;
  [(VCCallSession *)self lock];
  LOBYTE(a4) = self->_cleanupDone;
  self->_cleanupDone = 1;
  [(VCCallSession *)self unlock];
  if ((a4 & 1) == 0)
  {
    secureControlChannel = self->secureControlChannel;
    self->secureControlChannel = 0;
    if (![(VCCallSession *)self isSIPEnabled]&& !a5)
    {
      if ([(VCCallSession *)self isSIPEnabled])
      {
        goto LABEL_11;
      }

      if (self->hSIP != 0xFFFFFFFFLL)
      {
        goto LABEL_11;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __84__VCCallSession_PrivateMethods__disconnectInternal_disconnectError_didRemoteCancel___block_invoke_3;
      v16[3] = &unk_1E85F7300;
      v16[4] = secureControlChannel;
      if ([(VCControlChannelMultiWay *)secureControlChannel sendReliableMessage:@"VCDisconnectMessage" withTopic:@"VCDisconnectMessage" participantID:0 timeout:5 completion:v16])
      {
        goto LABEL_11;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCCallSession(PrivateMethods) disconnectInternal:disconnectError:didRemoteCancel:];
        }
      }
    }

    [VCCallSession stopSecureControlChannel:secureControlChannel];
LABEL_11:
    [(VCCallSession *)self stopAudioWithCompletionHandler:v17];

    self->controlChannel = 0;
  }

  if (!self->sentClientSuccessfulDidStart && self->isStarted)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v21 = v13;
        v22 = 2080;
        v23 = "[VCCallSession(PrivateMethods) disconnectInternal:disconnectError:didRemoteCancel:]";
        v24 = 1024;
        v25 = 10421;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Ending the Call even though we haven't finished notifying the client that we have started", buf, 0x1Cu);
      }
    }

    VCUtil_GenerateDiagnostics(0, 1, "Ending the Call even though we haven't finished notifying the client that we have started", 1u);
  }

  return 1;
}

void __84__VCCallSession_PrivateMethods__disconnectInternal_disconnectError_didRemoteCancel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCallSession(PrivateMethods) disconnectInternal:disconnectError:didRemoteCancel:]_block_invoke";
        v29 = 1024;
        v30 = 10296;
        v31 = 2080;
        *v32 = [objc_msgSend(a3 "description")];
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Stop audio failed with error: %s", buf, 0x26u);
      }
    }
  }

  [*(a1 + 32) lock];
  v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [*(a1 + 32) reportDashboardEndResult:*(a1 + 64)];
  if (VRTraceGetErrorLogLevelForModule() > 5)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) callID];
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(v11 + 128);
      v14 = *(a1 + 65);
      LODWORD(v11) = *(v11 + 226);
      *buf = 136317186;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = "[VCCallSession(PrivateMethods) disconnectInternal:disconnectError:didRemoteCancel:]_block_invoke";
      v29 = 1024;
      v30 = 10305;
      v31 = 1024;
      *v32 = v10;
      *&v32[4] = 1024;
      *&v32[6] = v13;
      v33 = 1024;
      v34 = v13 == 6;
      v35 = 1024;
      v36 = v14;
      v37 = 1024;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d disconnect: callID = %d state = %d, stateIsCallee = %d, didRemoteCancel = %d, didSend200OK = %d, error = %@", buf, 0x44u);
    }
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 480);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__VCCallSession_PrivateMethods__disconnectInternal_disconnectError_didRemoteCancel___block_invoke_1660;
  block[3] = &unk_1E85F3778;
  block[4] = v15;
  dispatch_async(v16, block);
  [*(a1 + 32) stopMediaQueue:0];
  [*(a1 + 32) stopRateControl:0];
  [*(a1 + 32) stopPausedHeartbeat];
  [objc_msgSend(*(*(a1 + 32) + 1512) "connectionManager")];
  [*(a1 + 32) cleanupMedia];
  [*(a1 + 32) cleanupWCMClient];
  v17 = *(a1 + 32);
  if (v17[187])
  {
    WRMUninitialize(v17[187]);
    v17 = *(a1 + 32);
  }

  [v17 cleanupWRMClient];
  v18 = *(a1 + 32);
  v19 = *(v18 + 128);
  *(v18 + 128) = 7;
  v20 = *(a1 + 32);
  v21 = v20[140];
  if (v21)
  {
    v20[140] = 0;
    v20 = *(a1 + 32);
  }

  [v20 cancelConnectionTimeoutTimer];
  v22 = *(a1 + 32);
  v23 = *(v22 + 1432);
  if (v23)
  {
    CFRelease(v23);
    *(*(a1 + 32) + 1432) = 0;
    v22 = *(a1 + 32);
  }

  if (*(v22 + 1424))
  {
    SKEState_Release();
    v22 = *(a1 + 32);
  }

  [*(v22 + 1440) setDelegate:0];
  if ([*(a1 + 32) deviceRole] == 2)
  {
    [*(*(a1 + 32) + 1464) unregisterForNotifications];
    [*(*(a1 + 32) + 1464) setDelegate:0];
  }

  [*(a1 + 32) unlock];
  [*(a1 + 32) notifyDelegateAndEndCall:v19 didRemoteCancel:*(a1 + 65) error:*(a1 + 40)];
  memset(buf, 170, 16);
  [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
  [*(a1 + 40) code];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "userInfo")];
  [objc_msgSend(*(a1 + 40) "domain")];
  reportingCallEndError();
  v24 = *(a1 + 32);
  v25 = *(v24 + 1152);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __84__VCCallSession_PrivateMethods__disconnectInternal_disconnectError_didRemoteCancel___block_invoke_2;
  v26[3] = &unk_1E85F3778;
  v26[4] = v24;
  dispatch_async(v25, v26);
  reportingStopTimer();
  reportingUnregisterPeriodicTask();
  reportingUnregisterPeriodicTask();
  [v21 stopMessaging];
}

uint64_t __84__VCCallSession_PrivateMethods__disconnectInternal_disconnectError_didRemoteCancel___block_invoke_1660(uint64_t a1)
{
  result = [*(*(a1 + 32) + 320) isVideoEnabled];
  if (result)
  {
    [*(a1 + 32) stopVideo:0 error:0];

    return reportingGenericEvent();
  }

  return result;
}

void __84__VCCallSession_PrivateMethods__disconnectInternal_disconnectError_didRemoteCancel___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1160);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 32) + 1160);
    if (v3)
    {
      dispatch_release(v3);
      *(*(a1 + 32) + 1160) = 0;
    }
  }
}

uint64_t __84__VCCallSession_PrivateMethods__disconnectInternal_disconnectError_didRemoteCancel___block_invoke_3(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"UNSUCCESSFULLY";
      *v8 = 136315906;
      *&v8[4] = v4;
      *&v8[12] = 2080;
      *&v8[14] = "[VCCallSession(PrivateMethods) disconnectInternal:disconnectError:didRemoteCancel:]_block_invoke_3";
      if (a2)
      {
        v6 = @"SUCCESSFULLY";
      }

      *&v8[22] = 1024;
      v9 = 10403;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Disconnect message was sent %@", v8, 0x26u);
    }
  }

  return [VCCallSession stopSecureControlChannel:*(a1 + 32), *v8, *&v8[16]];
}

+ (void)stopSecureControlChannel:(id)a3
{
  [a3 flushActiveMessages];
  [a3 removeActiveParticipant:0];
  [a3 stop];
}

- (void)setupMessaging
{
  [(VCCallSession *)self lock];
  if (!self->messaging)
  {
    self->messaging = [[VCSessionMessaging alloc] initWithControlChannel:[(VCCallSession *)self activeControlChannel] remoteVersion:0];
    [(VCCallSession *)self setupVideoPauseMessages];
    [(VCCallSession *)self setupAudioPauseMessages];
    [(VCCallSession *)self setupCellTechChangeMessages];
    [(VCCallSession *)self setupMomentsMessages];
    [(VCCallSession *)self setupAudioPausedHBMessages];
    [(VCCallSession *)self setupCallingModeMessages];
    [(VCCallSession *)self setupHandoverCandidateChangeMessage];
    [(VCCallSession *)self setupPiPStateChangeMessage];
    [(VCCallSession *)self setupPreferredInterfaceMessage];
    [(VCCallSession *)self setupSymptomEnabledMessage];
    [(VCCallSession *)self setupWRMAlertStateUpdateMessage];
    [(VCCallSession *)self setupWRMCoexMetricsMessage];
    if ([(VCCallSession *)self deviceRole]== 1 || [(VCCallSession *)self deviceRole]== 9 || [(VCCallSession *)self deviceRole]== 2 || [(VCCallSession *)self deviceRole]== 4)
    {
      [(VCCallSession *)self setupBasebandCodecInfoMessages];
    }

    if (![(VCCallSession *)self isSIPEnabled])
    {
      [(VCCallSession *)self setupDisconnectMessage];
    }
  }

  [(VCCallSession *)self unlock];
}

- (void)setupAudioPauseMessages
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VCCallSession_Messages__setupAudioPauseMessages__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"AudioPauseStateMessageTopic" associatedStrings:&unk_1F579D0E0 allowConcurrent:0 receiveHandler:v3];
}

uint64_t __50__VCCallSession_Messages__setupAudioPauseMessages__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 24) callID];
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCCallSession(Messages) setupAudioPauseMessages]_block_invoke";
      v12 = 1024;
      v13 = 10478;
      v14 = 1024;
      v15 = v6;
      v16 = 2080;
      v17 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%u] receives message :%s", &v8, 0x2Cu);
    }
  }

  return [*(a1 + 32) remotePauseDidChangeToState:objc_msgSend(a2 forVideo:{"isEqualToString:", @"VCAudioPaused", 0}];
}

- (void)setupVideoPauseMessages
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VCCallSession_Messages__setupVideoPauseMessages__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VideoPauseStateMessageTopic" associatedStrings:&unk_1F579D0F8 allowConcurrent:0 receiveHandler:v3];
}

uint64_t __50__VCCallSession_Messages__setupVideoPauseMessages__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 24) callID];
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCCallSession(Messages) setupVideoPauseMessages]_block_invoke";
      v12 = 1024;
      v13 = 10490;
      v14 = 1024;
      v15 = v6;
      v16 = 2080;
      v17 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%u] receives message :%s", &v8, 0x2Cu);
    }
  }

  return [*(a1 + 32) remotePauseDidChangeToState:objc_msgSend(a2 forVideo:{"isEqualToString:", @"VCVideoPaused", 1}];
}

- (void)setupAudioPausedHBMessages
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__VCCallSession_Messages__setupAudioPausedHBMessages__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCPingTopic" associatedStrings:&unk_1F579D110 allowConcurrent:0 receiveHandler:v3];
}

uint64_t __53__VCCallSession_Messages__setupAudioPausedHBMessages__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 24) callID];
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCCallSession(Messages) setupAudioPausedHBMessages]_block_invoke";
      v12 = 1024;
      v13 = 10501;
      v14 = 1024;
      v15 = v6;
      v16 = 2080;
      v17 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%u] receives message :%s", &v8, 0x2Cu);
    }
  }

  return [*(a1 + 32) updateLastReceivedPacket:1 packetType:7];
}

- (void)setupAudioOnOffStateMessages
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__VCCallSession_Messages__setupAudioOnOffStateMessages__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"AudioOnOffStateMessageTopic" associatedStrings:&unk_1F579D128 allowConcurrent:0 receiveHandler:v3];
}

uint64_t __55__VCCallSession_Messages__setupAudioOnOffStateMessages__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 24) callID];
      v9 = 136316162;
      v10 = v4;
      v11 = 2080;
      v12 = "[VCCallSession(Messages) setupAudioOnOffStateMessages]_block_invoke";
      v13 = 1024;
      v14 = 10511;
      v15 = 1024;
      v16 = v6;
      v17 = 2080;
      v18 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%u] receives message :%s", &v9, 0x2Cu);
    }
  }

  v7 = [a2 isEqualToString:@"VCAudioEnabled"];
  if (v7)
  {
    return [*(*(a1 + 32) + 8) session:*(a1 + 32) remoteAudioEnabled:v7 withCallID:{objc_msgSend(*(*(a1 + 32) + 24), "callID")}];
  }

  result = [a2 isEqualToString:@"VCAudioDisbaled"];
  if (result)
  {
    return [*(*(a1 + 32) + 8) session:*(a1 + 32) remoteAudioEnabled:v7 withCallID:{objc_msgSend(*(*(a1 + 32) + 24), "callID")}];
  }

  return result;
}

- (void)setupCallingModeMessages
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VCCallSession_Messages__setupCallingModeMessages__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"CallingModeTopic" associatedStrings:&unk_1F579D140 allowConcurrent:0 receiveHandler:v3];
}

uint64_t __51__VCCallSession_Messages__setupCallingModeMessages__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 24) callID];
      v9 = 136316162;
      v10 = v4;
      v11 = 2080;
      v12 = "[VCCallSession(Messages) setupCallingModeMessages]_block_invoke";
      v13 = 1024;
      v14 = 10529;
      v15 = 1024;
      v16 = v6;
      v17 = 2080;
      v18 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%u] receives message :%s", &v9, 0x2Cu);
    }
  }

  if ([a2 isEqualToString:@"VCDataMode"])
  {
    v7 = 1;
  }

  else if ([a2 isEqualToString:@"VCAudioMode"])
  {
    v7 = 2;
  }

  else
  {
    result = [a2 isEqualToString:@"VCVideoMode"];
    if (!result)
    {
      return result;
    }

    v7 = 3;
  }

  return [*(*(a1 + 32) + 8) session:*(a1 + 32) remoteCallingModeChanged:v7 withCallID:{objc_msgSend(*(*(a1 + 32) + 24), "callID")}];
}

- (void)setupBasebandCodecInfoMessages
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__VCCallSession_Messages__setupBasebandCodecInfoMessages__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCBasebandCodecChange" associatedStrings:0 allowConcurrent:0 receiveHandler:v3];
}

void __57__VCCallSession_Messages__setupBasebandCodecInfoMessages__block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 1120) newDictionaryFromUnpackedMessage:a2];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"VCBasebandCodecSampleRate"];
      v6 = [v4 objectForKeyedSubscript:@"VCBasebandCodecType"];
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "intValue")}];
      if (v7 && v6 != 0)
      {
        v9 = v7;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v12 = [*(*(a1 + 32) + 24) callID];
            v16 = 136316418;
            v17 = v10;
            v18 = 2080;
            v19 = "[VCCallSession(Messages) setupBasebandCodecInfoMessages]_block_invoke";
            v20 = 1024;
            v21 = 10559;
            v22 = 1024;
            v23 = v12;
            v24 = 2080;
            v25 = [v6 UTF8String];
            v26 = 1024;
            v27 = [v9 unsignedIntValue];
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%u] received message about BasebandCodecChange type :%s, sampleRate %u", &v16, 0x32u);
          }
        }

        [*(a1 + 32) lock];
        [*(a1 + 32) setBasebandCodecSampleRate:v9];
        [*(a1 + 32) setBasebandCodecType:v6];
        if ([*(a1 + 32) isAudioRunning])
        {
          v13 = [*(a1 + 32) delegate];
          v14 = *(a1 + 32);
          v15 = CStrToFourcc([v6 UTF8String]);
          [v9 doubleValue];
          [v13 session:v14 setRemoteBasebandCodecType:v15 sampleRate:?];
        }

        [*(a1 + 32) unlock];
      }
    }
  }
}

- (void)setupDisconnectMessage
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__VCCallSession_Messages__setupDisconnectMessage__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCDisconnectMessage" associatedStrings:0 allowConcurrent:0 receiveHandler:v3];
}

uint64_t __49__VCCallSession_Messages__setupDisconnectMessage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(*(a1 + 32) + 24) callID];
      *buf = 136316162;
      *&buf[4] = v6;
      v11 = 2080;
      v12 = "[VCCallSession(Messages) setupDisconnectMessage]_block_invoke";
      v13 = 1024;
      v14 = 10581;
      v15 = 1024;
      v16 = v8;
      v17 = 2112;
      v18 = a4;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%u] received 'disconnect' message from remote participant '%@'", buf, 0x2Cu);
    }
  }

  *buf = 0;
  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", buf, 32003, 235, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", 10586], @"Remote participant hangup.", @"Remote participant hangup.");
  return [*(a1 + 32) disconnect:*buf didRemoteCancel:1];
}

- (void)setupHandoverCandidateChangeMessage
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__VCCallSession_Messages__setupHandoverCandidateChangeMessage__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCHandoverCandidateChange" associatedStrings:0 allowConcurrent:1 receiveHandler:v3];
}

void __62__VCCallSession_Messages__setupHandoverCandidateChangeMessage__block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 1120) newDictionaryFromUnpackedMessage:a2];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"VCHandoverNewCandidateBlob"];
      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:1];
      if (v6)
      {
        v7 = v6;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v10 = [*(*(a1 + 32) + 24) callID];
            v11 = 136316162;
            v12 = v8;
            v13 = 2080;
            v14 = "[VCCallSession(Messages) setupHandoverCandidateChangeMessage]_block_invoke";
            v15 = 1024;
            v16 = 10605;
            v17 = 1024;
            v18 = v10;
            v19 = 2080;
            v20 = [objc_msgSend(v7 "description")];
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: VCCallSession callID[%d] received message about remote candidate change:%s", &v11, 0x2Cu);
          }
        }

        [*(a1 + 32) processRemoteIPChange:v7 callID:{objc_msgSend(*(*(a1 + 32) + 24), "callID")}];
      }
    }
  }
}

- (void)setupPiPStateChangeMessage
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__VCCallSession_Messages__setupPiPStateChangeMessage__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCWindowStateChange" associatedStrings:0 allowConcurrent:1 receiveHandler:v3];
}

void __53__VCCallSession_Messages__setupPiPStateChangeMessage__block_invoke(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [*(*(a1 + 32) + 1120) newDictionaryFromUnpackedMessage:a2];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"VCWindowState"];
      v7 = [v5 objectForKeyedSubscript:@"VCWindowWidth"];
      v8 = [v5 objectForKeyedSubscript:@"VCWindowHeight"];
      v9 = [v6 intValue];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(*(a1 + 32) + 24) callID];
          v25 = 136316162;
          v26 = v10;
          v27 = 2080;
          v28 = "[VCCallSession(Messages) setupPiPStateChangeMessage]_block_invoke";
          v29 = 1024;
          v30 = 10629;
          v31 = 1024;
          v32 = v12;
          v33 = 2112;
          v34 = a2;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%d] received message about PIP State change:%@", &v25, 0x2Cu);
        }
      }

      if (v6)
      {
        v13 = v9 > 2;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        reportingLog();
        VideoTransmitter_SetWindowState(*(*(a1 + 32) + 1256), 0, v9);
      }

      if (v7)
      {
        v14 = v8 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = [v5 objectForKeyedSubscript:@"VCWindowOriginX"];
        v16 = [v5 objectForKeyedSubscript:@"VCWindowOriginY"];
        [v15 doubleValue];
        v18 = v17;
        [v16 doubleValue];
        v20 = v19;
        [v7 doubleValue];
        v22 = v21;
        [v8 doubleValue];
        v24 = v23;
        reportingVisualRectangle();
        VideoTransmitter_SetVisualRectangle(v18, v20, v22, v24, *(*(a1 + 32) + 1256), 0);
      }
    }
  }
}

- (void)setupCellTechChangeMessages
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__VCCallSession_Messages__setupCellTechChangeMessages__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCCellTechChangeTopic" associatedStrings:0 allowConcurrent:0 receiveHandler:v3];
}

void __54__VCCallSession_Messages__setupCellTechChangeMessages__block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 1120) newDictionaryFromUnpackedMessage:a2];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"VCCellTechKey"];
      v6 = [v4 objectForKeyedSubscript:@"VCMaxBitrateKey"];
      if (v5 | v6)
      {
        v7 = v6;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136316162;
            v11 = v8;
            v12 = 2080;
            v13 = "[VCCallSession(Messages) setupCellTechChangeMessages]_block_invoke";
            v14 = 1024;
            v15 = 10667;
            v16 = 1024;
            v17 = [v5 intValue];
            v18 = 1024;
            v19 = [v7 unsignedIntValue];
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession received message about CellTech change :%d, remote bitrate %u", &v10, 0x28u);
          }
        }

        [*(a1 + 32) remoteCellTechStateUpdate:objc_msgSend(v5 maxRemoteBitrate:{"intValue"), objc_msgSend(v7, "unsignedIntValue")}];
      }
    }
  }
}

- (void)setupMomentsMessages
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VCCallSession_Messages__setupMomentsMessages__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCMomentsStateMessageTopic" associatedStrings:0 allowConcurrent:0 receiveHandler:v3];
}

void __47__VCCallSession_Messages__setupMomentsMessages__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [*(*(a1 + 32) + 1120) newDictionaryFromUnpackedMomentsMessage:a2];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v6 = [objc_msgSend(v3 "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCCallSession(Messages) setupMomentsMessages]_block_invoke";
      v11 = 1024;
      v12 = 10686;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d moment message %s", &v7, 0x26u);
    }
  }

  if (v3)
  {
    [*(*(a1 + 32) + 8) session:*(a1 + 32) didReceiveMomentsRequest:v3];
    [*(a1 + 32) reportingMomentsWithRequest:v3];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __47__VCCallSession_Messages__setupMomentsMessages__block_invoke_cold_1();
    }
  }
}

- (void)setupPreferredInterfaceMessage
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__VCCallSession_Messages__setupPreferredInterfaceMessage__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCPreferredInterfaceMessageTopic" associatedStrings:0 allowConcurrent:0 receiveHandler:v3];
}

void __57__VCCallSession_Messages__setupPreferredInterfaceMessage__block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [*(*(a1 + 32) + 1120) newDictionaryFromUnpackedMessage:a2];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v6 = [objc_msgSend(v3 "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      v9 = 136315906;
      v10 = v4;
      v11 = 2080;
      v12 = "[VCCallSession(Messages) setupPreferredInterfaceMessage]_block_invoke";
      v13 = 1024;
      v14 = 10703;
      v15 = 2080;
      v16 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Preferred interface message %s", &v9, 0x26u);
    }
  }

  if (v3)
  {
    v7 = [objc_msgSend(v3 objectForKeyedSubscript:{@"VCPreferredInterfaceKey", "unsignedIntValue"}];
    v8 = [objc_msgSend(v3 objectForKeyedSubscript:{@"VCPreferredInterfaceDuplicatingKey", "BOOLValue"}];
    [*(*(a1 + 32) + 80) setPreferredRemoteInterfaceForDuplication:v7];
    [*(*(a1 + 32) + 80) processRemoteWRMSuggestion:v7 == 0 isRemoteDuplicating:v8];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __57__VCCallSession_Messages__setupPreferredInterfaceMessage__block_invoke_cold_1();
    }
  }
}

- (void)processSymptomFromMessage:(id)a3 participantID:(id)a4 isLocalInitiated:(BOOL)a5 isLocalSideOnly:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v10 = [objc_msgSend(MEMORY[0x1E6986630] weakObjectHolderWithObject:{self, a4), "strong"}];
  v11 = [(VCSessionMessaging *)self->messaging newDictionaryFromUnpackedMessage:a3];
  v12 = v11;
  if (v11)
  {
    [v11 objectForKeyedSubscript:@"VCSymptomReporterSymptom"];
    v13 = processGroupSymptoms();
    v14 = [v12 objectForKeyedSubscript:@"VCSymptomReporterGroupID"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316930;
        v20 = v15;
        v21 = 2080;
        v22 = "[VCCallSession(Messages) processSymptomFromMessage:participantID:isLocalInitiated:isLocalSideOnly:]";
        v23 = 1024;
        v24 = 10723;
        v25 = 1024;
        v26 = v7;
        v27 = 1024;
        v28 = v6;
        v29 = 2080;
        v30 = [a3 UTF8String];
        v31 = 1024;
        v32 = v13;
        v33 = 2112;
        v34 = v14;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SymptomReporter: isLocalInitiated:%d isLocalSideOnly:%d message:%s, symptomID = %d, groupID = %@", &v19, 0x42u);
      }
    }

    if (v14)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyGroupID", v14);
      v18 = MEMORY[0x1E695E4D0];
      if (!v6)
      {
        v18 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"SymptomReporterOptionalIsLocalSideOnly", *v18);
      [v10 reportingAgent];
      reportingSymptom();
      CFRelease(Mutable);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCallSession(Messages) processSymptomFromMessage:participantID:isLocalInitiated:isLocalSideOnly:];
      }
    }
  }
}

- (void)setupSymptomEnabledMessage
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  messaging = self->messaging;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__VCCallSession_Messages__setupSymptomEnabledMessage__block_invoke;
  v6[3] = &unk_1E85F7350;
  v6[4] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VCCallSession_Messages__setupSymptomEnabledMessage__block_invoke_1891;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)messaging addTopic:@"VCSymptomReporterMessage" associatedStrings:0 allowConcurrent:0 sendCompletionHandler:v6 receiveHandler:v5];
}

uint64_t __53__VCCallSession_Messages__setupSymptomEnabledMessage__block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) strong];
  v8 = v7;
  if (a3)
  {

    return [v7 processSymptomFromMessage:a2 participantID:a4 isLocalInitiated:1 isLocalSideOnly:0];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316162;
        v13 = v10;
        v14 = 2080;
        v15 = "[VCCallSession(Messages) setupSymptomEnabledMessage]_block_invoke";
        v16 = 1024;
        v17 = 10748;
        v18 = 2080;
        v19 = [a2 UTF8String];
        v20 = 2112;
        v21 = a4;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d SymptomReporter: Failed to send symptom message %s to participantID %@, requesting only the local side", &v12, 0x30u);
      }
    }

    return [v8 processSymptomFromMessage:a2 participantID:a4 isLocalInitiated:1 isLocalSideOnly:1];
  }
}

uint64_t __53__VCCallSession_Messages__setupSymptomEnabledMessage__block_invoke_1891(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a1 + 32) strong];

  return [v6 processSymptomFromMessage:a2 participantID:a4 isLocalInitiated:0 isLocalSideOnly:0];
}

- (void)setupWRMAlertStateUpdateMessage
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__VCCallSession_Messages__setupWRMAlertStateUpdateMessage__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCWRMAlertStateUpdateMessageTopic" associatedStrings:&unk_1F579D158 allowConcurrent:0 receiveHandler:v3];
}

void __58__VCCallSession_Messages__setupWRMAlertStateUpdateMessage__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCCallSession(Messages) setupWRMAlertStateUpdateMessage]_block_invoke";
      v12 = 1024;
      v13 = 10763;
      v14 = 2080;
      v15 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WRM Alert state update message: %s", &v8, 0x26u);
    }
  }

  if (a2)
  {
    if ([a2 isEqualToString:@"VCWRMAlertStateEnabled"])
    {
      v6 = *(*(a1 + 32) + 80);
      v7 = 1;
LABEL_12:
      [v6 setRemotePreWarmStateEnabled:v7];
      return;
    }

    if ([a2 isEqualToString:@"VCWRMAlertStateDisabled"])
    {
      v6 = *(*(a1 + 32) + 80);
      v7 = 0;
      goto LABEL_12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __58__VCCallSession_Messages__setupWRMAlertStateUpdateMessage__block_invoke_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __58__VCCallSession_Messages__setupWRMAlertStateUpdateMessage__block_invoke_cold_2();
    }
  }
}

- (void)setupWRMCoexMetricsMessage
{
  v3[5] = *MEMORY[0x1E69E9840];
  messaging = self->messaging;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__VCCallSession_Messages__setupWRMCoexMetricsMessage__block_invoke;
  v3[3] = &unk_1E85F7328;
  v3[4] = self;
  [(VCSessionMessaging *)messaging addTopic:@"VCWRMCoexMetricsMessage" associatedStrings:0 allowConcurrent:0 receiveHandler:v3];
}

void __53__VCCallSession_Messages__setupWRMCoexMetricsMessage__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 1120) newDictionaryFromUnpackedMessage:a2];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v4;
        v8 = 2080;
        v9 = "[VCCallSession(Messages) setupWRMCoexMetricsMessage]_block_invoke";
        v10 = 1024;
        v11 = 10785;
        v12 = 2080;
        v13 = [objc_msgSend(v3 "description")];
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d WRM: Get remote iRAT Coex Metrics %s", &v6, 0x26u);
      }
    }

    [*(*(a1 + 32) + 80) processWRMCoexMetrics:v3];
  }
}

- (void)controlChannel:(id)a3 receivedData:(id)a4 transactionID:(unsigned int)a5 fromParticipant:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VCCallInfo *)self->localCallInfo callID];
      *buf = 136316418;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCCallSession(Messages) controlChannel:receivedData:transactionID:fromParticipant:]";
      v18 = 1024;
      v19 = 10796;
      v20 = 1024;
      v21 = v11;
      v22 = 2112;
      v23 = a4;
      v24 = 2112;
      v25 = a6;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession callID[%u] received data='%@' from remote participant '%@'", buf, 0x36u);
    }
  }

  delegateNotificationQueue = self->delegateNotificationQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__VCCallSession_Messages__controlChannel_receivedData_transactionID_fromParticipant___block_invoke;
  v13[3] = &unk_1E85F37F0;
  v13[4] = self;
  v13[5] = a4;
  dispatch_async(delegateNotificationQueue, v13);
}

uint64_t __85__VCCallSession_Messages__controlChannel_receivedData_transactionID_fromParticipant___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 8);
  v4 = [*(v1 + 24) callID];

  return [v3 session:v1 didReceiveData:v2 messageType:1 withCallID:v4];
}

- (void)didChangeThermalLevel:(int)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Thermal";
  v4[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  reportingGenericEvent();
}

- (void)transportSession:(id)a3 connectionSetupDataDidChange:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  [(VCCallSessionDelegate *)self->delegate session:self localIPChange:a4 withCallID:[(VCCallInfo *)self->localCallInfo callID]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v8 = [objc_msgSend(a4 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136315906;
      v13 = v6;
      v14 = 2080;
      v15 = "[VCCallSession(VCTransportSessionLegacyDelegate) transportSession:connectionSetupDataDidChange:]";
      v16 = 1024;
      v17 = 10824;
      v18 = 2080;
      v19 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d HandoverReport: sending SIP message to inform ipChange %s", buf, 0x26u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:objc_msgSend(a4 encoding:{"base64EncodedDataWithOptions:", 1), 4}];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v9, @"VCHandoverNewCandidateBlob", 0}];

  v11 = [(VCSessionMessaging *)self->messaging newPackedMessageFromDictionary:v10];
  [(VCSessionMessaging *)self->messaging sendMessage:v11 withTopic:@"VCHandoverCandidateChange"];
}

- (void)transportSession:(id)a3 cancelRelayRequest:(id)a4
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__VCCallSession_VCTransportSessionLegacyDelegate__transportSession_cancelRelayRequest___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a4;
  dispatch_async(delegateNotificationQueue, block);
}

- (void)transportSession:(id)a3 initiateRelayRequest:(id)a4
{
  block[6] = *MEMORY[0x1E69E9840];
  if ([(VCCallSession *)self isCallOngoing])
  {
    delegateNotificationQueue = self->delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__VCCallSession_VCTransportSessionLegacyDelegate__transportSession_initiateRelayRequest___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = a4;
    dispatch_async(delegateNotificationQueue, block);
  }
}

- (void)transportSession:(id)a3 sendRelayResponse:(id)a4
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__VCCallSession_VCTransportSessionLegacyDelegate__transportSession_sendRelayResponse___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a4;
  dispatch_async(delegateNotificationQueue, block);
}

- (void)rateController:(id)a3 targetBitrateDidChange:(unsigned int)a4 rateChangeCounter:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v24 = *MEMORY[0x1E69E9840];
  hAFRC = self->hAFRC;
  if (hAFRC != 0xFFFFFFFFLL)
  {
    AFRCUpdateRateTier(hAFRC, a4);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VCCallInfo *)self->localCallInfo callID];
      v12 = 136316418;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCCallSession(AVCRateControllerDelegate) rateController:targetBitrateDidChange:rateChangeCounter:]";
      v16 = 1024;
      v17 = 10865;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCRC targetBitrateDidChange:%d, rateChangeCounter:%d callID %d", &v12, 0x2Eu);
    }
  }

  if (self->useVCRC)
  {
    [(VCAudioTransmitter *)self->audioTransmitter setTargetBitrate:v6];
    [(VCAudioTransmitter *)self->audioTransmitter setRateChangeCounter:v5];
    self->_targetBitrate = v6;
    self->_rateChangeCounter = v5;
  }
}

- (void)mediaController:(void *)a3 mediaSuggestionDidChange:(VCRateControlMediaSuggestion)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = "flush audio";
      *v17 = 136317442;
      *&v17[4] = v6;
      if ((*&a4 & 0x100000000) == 0)
      {
        v8 = "";
      }

      *&v17[12] = 2080;
      *&v17[14] = "[VCCallSession(VCRateControlMediaControllerDelegate) mediaController:mediaSuggestionDidChange:]";
      v9 = "flush video";
      if ((*&a4.var0 & 0x1000000) == 0)
      {
        v9 = "";
      }

      *&v17[22] = 1024;
      LODWORD(v18) = 10891;
      v10 = "refresh video";
      if ((*&a4 & 0x10000) == 0)
      {
        v10 = "";
      }

      WORD2(v18) = 2080;
      *(&v18 + 6) = v8;
      v11 = "stop video";
      if (!a4.var0)
      {
        v11 = "";
      }

      HIWORD(v18) = 2080;
      v19 = v9;
      v12 = "start video";
      if ((*&a4.var0 & 0x100) == 0)
      {
        v12 = "";
      }

      *v20 = 2080;
      *&v20[2] = v10;
      v13 = "stall audio";
      if ((*&a4.var5 & 1) == 0)
      {
        v13 = "";
      }

      *&v20[10] = 2080;
      *&v20[12] = v11;
      *&v20[20] = 2080;
      *&v20[22] = v12;
      *&v20[30] = 2080;
      v21 = v13;
      if (*&a4.var6)
      {
        v14 = "unstall audio";
      }

      else
      {
        v14 = "";
      }

      v22 = 2080;
      v23 = v14;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCRC mediaSuggestion:[%s,%s,%s,%s,%s,%s,%s]", v17, 0x62u);
    }
  }

  if (!self->didReportAudioStall && (*&a4 & 0x10000000000) != 0)
  {
    reportingSymptom();
    self->didReportAudioStall = 1;
  }

  if (self->useVCRC)
  {
    v15 = [(VCAudioTransmitter *)self->audioTransmitter isAudioStalled];
    var5 = !a4.var6;
    if (!v15)
    {
      var5 = a4.var5;
    }

    [(VCAudioTransmitter *)self->audioTransmitter setIsAudioStalled:var5, *v17, *&v17[16], v18, v19, *v20, *&v20[16], v21];
    VideoTransmitter_SetMediaSuggestion(self->hVideoTransmitter, *&a4);
  }
}

- (void)processBlackFrame:(opaqueCMSampleBuffer *)a3
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (ImageBuffer)
  {
    if (self->shouldSendBlackFrame)
    {
      v5 = ImageBuffer;
      CVPixelBufferLockBaseAddress(ImageBuffer, 0);
      if (CVPixelBufferIsPlanar(v5))
      {
        PlaneCount = CVPixelBufferGetPlaneCount(v5);
        PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
        if (PlaneCount == 2 && (PixelFormatType | 0x10) == 0x34323076)
        {
          v8 = PixelFormatType == 875704438;
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v5, 0);
          v10 = CVPixelBufferGetBaseAddressOfPlane(v5, 1uLL);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v5, 0);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v5, 0);
          memset(BaseAddressOfPlane, 16 * v8, HeightOfPlane * BytesPerRowOfPlane);
          v13 = CVPixelBufferGetBytesPerRowOfPlane(v5, 1uLL);
          v14 = CVPixelBufferGetHeightOfPlane(v5, 1uLL);
          memset(v10, 128, v14 * v13);
        }
      }

      CVPixelBufferUnlockBaseAddress(v5, 0);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(VideoConferencing) processBlackFrame:v15];
    }
  }
}

- (BOOL)onCaptureFrame:(opaqueCMSampleBuffer *)a3 audioTS:(unsigned int)a4 audioHT:(double)a5 videoHT:(id *)a6 cameraBits:(unsigned __int8)a7
{
  v47 = *MEMORY[0x1E69E9840];
  if (self->hVideoTransmitter == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v10 = *&a4;
  if (self->useVCRC)
  {
    VideoTransmitter_SetTargetBitrate(self->hVideoTransmitter, self->_targetBitrate - [(VCAudioTransmitter *)self->audioTransmitter actualAudioSendingBitrate], self->_rateChangeCounter, [(VCRateControlMediaController *)self->_mediaController isInThrottlingMode]);
  }

  if (![(AVCRateController *)self->_rateController statisticsCollector])
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    if ((AFRCGetAudioTxInfo(self->hAFRC, 0, 0, 0, 0, 0, 0, 0, 0, &v23) & 0x80000000) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        v15 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(&v24 + 1);
            *buf = 136316162;
            *&buf[4] = v13;
            *&buf[12] = 2080;
            *&buf[14] = "[VCCallSession(VideoConferencing) onCaptureFrame:audioTS:audioHT:videoHT:cameraBits:]";
            *&buf[22] = 1024;
            *&buf[24] = 111;
            *&buf[28] = 2048;
            *&buf[30] = v16;
            *&buf[38] = 1024;
            *&buf[40] = v26;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d AFRC Statistics packetLossPercentage=%3.3f burstPacketLoss=%d", buf, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [VCCallSession(VideoConferencing) onCaptureFrame:v13 audioTS:&v23 audioHT:v14 videoHT:? cameraBits:?];
        }
      }

      v44 = v33;
      v45 = v34;
      v46 = v35;
      v40 = v29;
      v41 = v30;
      v42 = v31;
      v43 = v32;
      *&buf[32] = v25;
      v37 = v26;
      v38 = v27;
      v39 = v28;
      *buf = v23;
      *&buf[16] = v24;
      [(VCCallSession *)self updateStatistics:buf];
    }
  }

  [(VCCallSession *)self processBlackFrame:a3];
  hVideoTransmitter = self->hVideoTransmitter;
  v23 = *&a6->var0;
  *&v24 = a6->var3;
  v19 = VideoTransmitter_EnqueueBuffer(hVideoTransmitter, a3, v10, &v23, 0, a7, a5);
  if (v19 < 0)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__VCCallSession_VideoConferencing__onCaptureFrame_audioTS_audioHT_videoHT_cameraBits___block_invoke;
    block[3] = &unk_1E85F38B8;
    v22 = v19;
    block[4] = self;
    dispatch_async(global_queue, block);
  }

  [(VCCallSession *)self updateVideoQualityNotification:a5];
  return v19 >= 0;
}

uint64_t __86__VCCallSession_VideoConferencing__onCaptureFrame_audioTS_audioHT_videoHT_cameraBits___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v5[0] = 0;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSessionCategories.m", 127];
  +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", v5, 32017, 223, v2, v3, [MEMORY[0x1E696AEC0] stringWithFormat:@"Error in VideoTransmitter encode"], @"VideoTransmitter returned error");
  return [*(a1 + 32) disconnect:v5[0] didRemoteCancel:0];
}

- (void)onPlayVideo:(__CVBuffer *)a3 frameTime:(id *)a4 cameraStatusBits:(unsigned __int8)a5
{
  v5 = a5;
  v45 = *MEMORY[0x1E69E9840];
  self->_lastDecodedFrameTime = micro();
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v27 = v9;
  v28 = v9;
  v25 = 0;
  v26 = 0;
  CVPixelBufferRetain(a3);
  self->remoteFrameWidth = CVPixelBufferGetWidth(a3);
  self->remoteFrameHeight = CVPixelBufferGetHeight(a3);
  VideoUtil_GetVisibleRect(a3, &v27);
  if (*&self->remoteFrameWidth == 0x1E000000280 && self->expectedDecodeSize.width == 1280.0 && self->expectedDecodeSize.height == 720.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        remoteFrameWidth = self->remoteFrameWidth;
        remoteFrameHeight = self->remoteFrameHeight;
        *buf = 136317186;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCallSession(VideoConferencing) onPlayVideo:frameTime:cameraStatusBits:]";
        *&buf[22] = 1024;
        v32 = 161;
        v33 = 1024;
        v34 = remoteFrameWidth;
        v35 = 1024;
        v36 = remoteFrameHeight;
        v37 = 2048;
        v38 = v27;
        v39 = 2048;
        v40 = *(&v27 + 1);
        v41 = 2048;
        v42 = v28;
        v43 = 2048;
        v44 = *(&v28 + 1);
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d receiving frame size %dx%d visible rect %g,%g,%g,%g", buf, 0x50u);
      }
    }

    v15 = MEMORY[0x1E695E480];
    if (!self->hdTransferSession)
    {
      VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->hdTransferSession);
      VTSessionSetProperty(self->hdTransferSession, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F8]);
      VTSessionSetProperty(self->hdTransferSession, *MEMORY[0x1E6983DF8], *MEMORY[0x1E695E4C0]);
    }

    hdBufferPool = self->hdBufferPool;
    if (hdBufferPool)
    {
      v17 = *v15;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v29 = *MEMORY[0x1E696CF98];
      v30 = @"AVConference:DecodeResize";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v23 = objc_alloc(MEMORY[0x1E695DF20]);
      v24 = [v23 initWithObjectsAndKeys:{&unk_1F579C228, *MEMORY[0x1E6966208], &unk_1F579C240, *MEMORY[0x1E69660B8], &unk_1F579C258, *MEMORY[0x1E6966130], &unk_1F579C270, *MEMORY[0x1E696CE50], v22, *MEMORY[0x1E69660D8], 0}];
      v17 = *v15;
      CVPixelBufferPoolCreate(*v15, 0, v24, &self->hdBufferPool);

      objc_autoreleasePoolPop(v21);
      hdBufferPool = self->hdBufferPool;
    }

    *buf = 0;
    CVPixelBufferPoolCreatePixelBuffer(v17, hdBufferPool, buf);
    if (*buf)
    {
      VTPixelTransferSessionTransferImage(self->hdTransferSession, a3, *buf);
      CVPixelBufferRelease(a3);
      a3 = *buf;
    }
  }

  else
  {
    hdTransferSession = self->hdTransferSession;
    if (hdTransferSession)
    {
      VTPixelTransferSessionInvalidate(hdTransferSession);
      v19 = self->hdTransferSession;
      if (v19)
      {
        CFRelease(v19);
        self->hdTransferSession = 0;
      }
    }

    v20 = self->hdBufferPool;
    if (v20)
    {
      CVPixelBufferPoolRelease(v20);
      self->hdBufferPool = 0;
    }
  }

  VCCallSession_SetUpRemoteAttributes(a3, v5, self->remoteSupportsExpectedAspectRatio, !self->receivedFirstRemoteFrame, self->remoteExpectedPortraitAspectRatio.width, self->remoteExpectedPortraitAspectRatio.height, self->remoteExpectedLandscapeAspectRatio.width, self->remoteExpectedLandscapeAspectRatio.height, self->remoteScreenPortraitAspectRatio.width, self->remoteScreenPortraitAspectRatio.height, self->remoteScreenLandscapeAspectRatio.width, self->remoteScreenLandscapeAspectRatio.height, 0, v10, &v26, &v25);
  *buf = *&a4->var0;
  *&buf[16] = a4->var3;
  [(VCCallSession *)self nofityDelegateReceivedRemoteFrame:a3 frameTime:buf cameraStatusBits:v5 newRemoteVideoAttributes:v26 remoteScreenAttributes:v25];
}

- (void)nofityDelegateReceivedRemoteFrame:(__CVBuffer *)a3 frameTime:(id *)a4 cameraStatusBits:(unsigned __int8)a5 newRemoteVideoAttributes:(id)a6 remoteScreenAttributes:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  if ((a5 & 0x80) == 0)
  {
    return;
  }

  v8 = a6;
  if (!VCVideoAttributes_IsEqual(self->remoteVideoAttributes, a6))
  {
    v12 = objc_autoreleasePoolPush();
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    remoteVideoAttributes = self->remoteVideoAttributes;
    if (remoteVideoAttributes)
    {
      v16 = [-[VideoAttributes description](remoteVideoAttributes "description")];
      if (v8)
      {
LABEL_8:
        v17 = [objc_msgSend(v8 "description")];
LABEL_11:
        *buf = 136316162;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "[VCCallSession(VideoConferencing) nofityDelegateReceivedRemoteFrame:frameTime:cameraStatusBits:newRemoteVideoAttributes:remoteScreenAttributes:]";
        *&buf[22] = 1024;
        v23 = 411;
        v24 = 2080;
        v25 = v16;
        v26 = 2080;
        v27 = v17;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: remote video attributes changing from %s to %s", buf, 0x30u);
LABEL_12:
        objc_autoreleasePoolPop(v12);
        [(VCCallSession *)self setRemoteVideoAttributes:v8];
        goto LABEL_13;
      }
    }

    else
    {
      v16 = "<nil>";
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v17 = "<nil>";
    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:
  if (self->hVideoReceiver != 0xFFFFFFFFLL)
  {
    delegate = self->delegate;
    receivedFirstRemoteFrame = self->receivedFirstRemoteFrame;
    v20 = [(VCCallSession *)self videoIsPaused];
    *buf = *&a4->var0;
    *&buf[16] = a4->var3;
    LOBYTE(v21) = v20;
    [(VCCallSessionDelegate *)delegate session:self receivedRemoteFrame:a3 atTime:buf withScreenAttributes:a7 videoAttributes:v8 isFirstFrame:!receivedFirstRemoteFrame isVideoPaused:v21];
  }

  CVPixelBufferRelease(a3);

  if (!self->receivedFirstRemoteFrame)
  {
    self->receivedFirstRemoteFrame = 1;
    [(VCCallSession *)self rcvdFirstRemoteFrame];
  }
}

- (unsigned)parameterSetForPayload:(int)a3
{
  v3 = *&a3;
  if ([(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation])
  {
    mediaNegotiator = self->_mediaNegotiator;
    if (self->operatingMode == 4)
    {
      v6 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedScreenSettings];
    }

    else
    {
      v6 = [(VCMediaNegotiatorBase *)mediaNegotiator negotiatedVideoSettings];
    }

    v8 = [(VCMediaNegotiatorResultsVideo *)v6 parameterSets];
    v9 = -[NSDictionary objectForKeyedSubscript:](v8, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);

    return [v9 unsignedIntValue];
  }

  else
  {

    return VCVideoParamaterSets_DefaultSupportedSets(v3);
  }
}

- (CGSize)computeVisibleAspectRatioWithRemoteScreenAspectRatio:(CGSize)a3 remoteExpectedAspectRatio:(CGSize)a4 encodeWidth:(int)a5 encodeHeight:(int)a6
{
  v6 = ComputeVisibleAspectRatioWithRemoteScreenAspectRatio(a5, a6, a3.width, a3.height, a4.width, a4.height);
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)cleanUpVideoRTP
{
  if (self->rtpVideo != 0xFFFFFFFFLL)
  {
    RTPCloseHandle();
    self->rtpVideo = 0xFFFFFFFFLL;
  }
}

- (void)cleanUpVideoReceiver
{
  if (self->hVideoReceiver != 0xFFFFFFFFLL)
  {
    VideoReceiver_CloseHandle();
    self->hVideoReceiver = 0xFFFFFFFFLL;
  }
}

- (void)cleanUpVideoTransmitter
{
  hVideoTransmitter = self->hVideoTransmitter;
  if (hVideoTransmitter != 0xFFFFFFFFLL)
  {
    VideoTransmitter_CloseHandle(hVideoTransmitter);
    self->hVideoTransmitter = 0xFFFFFFFFLL;
  }
}

- (void)cleanUpDisplayLink
{
  [(VCDisplayLink *)self->_displayLink deactivate];

  self->_displayLink = 0;
}

- (BOOL)initializeVideoTransmitter:(id *)a3 videoRules:(VCCSVideoTransmitterVideoRules_t *)a4 unpausing:(BOOL)a5 reportingAgent:(opaqueRTCReporting *)a6 fecHeaderV1Enabled:(BOOL)a7 isFECGeneratorEnabled:(BOOL)a8
{
  v112 = *MEMORY[0x1E69E9840];
  if (self->hVideoTransmitter == 0xFFFFFFFFLL)
  {
    v53 = a5;
    v47 = [(VCConnectionManager *)self->connectionManager isConnectedOnIPv6ForActiveConnectionWithQuality:1];
    IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 1);
    v51 = [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1];
    v13 = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality(self->connectionManager, 1, 0);
    v50 = [(VCConnectionManager *)self->connectionManager getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:0];
    v46 = [+[VCDefaults sharedInstance](VCDefaults enableTxSourceYuvDump];
    v44 = [+[VCDefaults sharedInstance](VCDefaults enableTxBitstreamDump];
    v43 = [+[VCDefaults sharedInstance](VCDefaults enableTxTimestampAlignmentLogs];
    operatingMode = self->operatingMode;
    v42 = [(VCCallSession *)self parameterSetForPayload:[(VCCapabilities *)self->caps actualVideoCodec]];
    bBWEstNewBWEstModeEnabled = self->bBWEstNewBWEstModeEnabled;
    v56[0] = self->bBWEstOperatingModeInitialized;
    v56[1] = bBWEstNewBWEstModeEnabled;
    bBWEstActiveProbingSenderLog = self->bBWEstActiveProbingSenderLog;
    v56[2] = self->bBWEstFakeLargeFrameModeEnabled;
    v56[3] = bBWEstActiveProbingSenderLog;
    v16 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    v54 = v13;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = [a4->var0 iWidth];
        v20 = [a4->var0 iHeight];
        [a4->var0 fRate];
        callSessionBitrate = self->callSessionBitrate;
        *buf = 136316674;
        *v58 = v17;
        *&v58[8] = 2080;
        *&v58[10] = "[VCCallSession(VideoConferencing) initializeVideoTransmitter:videoRules:unpausing:reportingAgent:fecHeaderV1Enabled:isFECGeneratorEnabled:]";
        *&v58[18] = 1024;
        *&v58[20] = 564;
        *&v58[24] = 1024;
        *&v58[26] = v19;
        v13 = v54;
        *&v58[30] = 1024;
        *&v58[32] = v20;
        *&v58[36] = 1024;
        *&v58[38] = v22;
        *&v58[42] = 1024;
        LODWORD(v59) = callSessionBitrate;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d VCCallSession: Encode video settings %dx%d@%dfps, bitrate %d Kbps", buf, 0x34u);
      }
    }

    bzero(buf, 0x400uLL);
    v59 = 0u;
    memset(&v58[12], 0, 32);
    *&v58[4] = self->rtpVideo;
    *buf = 1;
    rtpHandle = self->rtpHandle;
    v60 = 0;
    v61 = rtpHandle;
    videoMediaControlInfoGenerator = self->videoMediaControlInfoGenerator;
    v63 = a6;
    mediaController = self->_mediaController;
    v65 = [(AVCRateController *)self->_rateController statisticsCollector];
    v99 = [(VCCallSession *)self callID];
    v77 = [a4->var0 iWidth];
    v78 = [a4->var0 iHeight];
    [a4->var0 fRate];
    v79 = v24;
    v81 = [a4->var1 iWidth];
    v82 = [a4->var1 iHeight];
    [a4->var1 fRate];
    v83 = v25;
    v84 = [a4->var2 iWidth];
    v85 = [a4->var2 iHeight];
    [a4->var2 fRate];
    v26 = self->callSessionBitrate;
    v86 = v27;
    v87 = 1000 * v26;
    v90 = [(VCCapabilities *)self->caps actualVideoCodec];
    v88 = -1;
    v89 = 0x3FD0000000000000;
    v94 = 0x20000000200;
    v97 = [(VCCallSession *)self matchedFeaturesStringForPayload:[(VCCapabilities *)self->caps actualVideoCodec]];
    v96 = v16;
    remoteSupportsVisibleRect = self->remoteSupportsVisibleRect;
    v93 = v56;
    v71 = IsInterfaceOnCellularForActiveConnectionWithQuality;
    v72 = v51;
    v73 = v13;
    v74 = VCCPUCount() > 1;
    v91 = [(VCAudioTransmitter *)self->audioTransmitter audioTxBitrate];
    sampleRate = self->sampleRate;
    v76 = [(VCCallInfo *)self->remoteCallInfo visibleRectCropping];
    v66 = [(VCCallInfo *)self->remoteCallInfo isIOS];
    maxPacketLength = self->maxPacketLength;
    v67 = v47;
    v100 = v46;
    v101 = v44;
    v102 = v43;
    v95 = v42;
    v69 = 1;
    fecMode = self->fecMode;
    useRateControl = self->useRateControl;
    v103 = [(VCCallInfo *)self->remoteCallInfo supportsDynamicContentsRectWithAspectPreservation];
    v80 = 875704438;
    v107 = a7;
    v28 = operatingMode;
    if (operatingMode == 4)
    {
      v29 = 3;
    }

    else
    {
      v28 = 1;
      v29 = 2;
    }

    v104 = v28;
    v105 = v29;
    v106 = 1;
    v110 = 0;
    v111 = 1;
    v108 = a8;
    v109 = 1;
    Handle = VideoTransmitter_CreateHandle(&self->hVideoTransmitter, buf);
    if (v16)
    {
      CFRelease(v16);
    }

    if (Handle < 0)
    {
      [(VCCallSession *)self cleanUpVideoReceiver];
      [(VCCallSession *)self cleanUpVideoRTP];
      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a3, 32017, 111, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSessionCategories.m", 640], @"Could not create video transmitting unit", @"Video unavailable");
    }

    v31 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v32 = [(AVCRateController *)self->_rateController statisticsCollector];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __140__VCCallSession_VideoConferencing__initializeVideoTransmitter_videoRules_unpausing_reportingAgent_fecHeaderV1Enabled_isFECGeneratorEnabled___block_invoke;
    v55[3] = &unk_1E85F3998;
    v55[4] = v31;
    [(AVCStatisticsCollector *)v32 registerStatisticsChangeHandlerWithType:3 handler:v55];
    if (self->canLocalResizePIP || !self->canRemoteResizePIP)
    {
      -[VCCallSession computeVisibleAspectRatioWithRemoteScreenAspectRatio:remoteExpectedAspectRatio:encodeWidth:encodeHeight:](self, "computeVisibleAspectRatioWithRemoteScreenAspectRatio:remoteExpectedAspectRatio:encodeWidth:encodeHeight:", [a4->var0 iHeight], objc_msgSend(a4->var0, "iWidth"), self->remoteScreenPortraitAspectRatio.width, self->remoteScreenPortraitAspectRatio.height, self->remoteExpectedPortraitAspectRatio.width, self->remoteExpectedPortraitAspectRatio.height);
      v34 = v39;
      v36 = v40;
      -[VCCallSession computeVisibleAspectRatioWithRemoteScreenAspectRatio:remoteExpectedAspectRatio:encodeWidth:encodeHeight:](self, "computeVisibleAspectRatioWithRemoteScreenAspectRatio:remoteExpectedAspectRatio:encodeWidth:encodeHeight:", [a4->var0 iWidth], objc_msgSend(a4->var0, "iHeight"), self->remoteScreenLandscapeAspectRatio.width, self->remoteScreenLandscapeAspectRatio.height, self->remoteExpectedLandscapeAspectRatio.width, self->remoteExpectedLandscapeAspectRatio.height);
    }

    else
    {
      [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
      v34 = v33;
      v36 = v35;
      [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    }

    VideoTransmitter_SetAspectRatios(v34, v36, v37, v38);
    VideoTransmitter_SetCellTech(self->hVideoTransmitter, IsInterfaceOnCellularForActiveConnectionWithQuality, v51, v54, v50);
    v9 = Handle >= 0;
    if (v53)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 1;
    if (a5)
    {
LABEL_3:
      VideoTransmitter_Pause(self->hVideoTransmitter, 0);
    }
  }

  return v9;
}

void __140__VCCallSession_VideoConferencing__initializeVideoTransmitter_videoRules_unpausing_reportingAgent_fecHeaderV1Enabled_isFECGeneratorEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
  v4 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v4;
  v11 = *(a2 + 192);
  v5 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v5;
  v6 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v6;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v8 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v8;
  v9 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v9;
  [v3 updateStatistics:v10];
  if (v3)
  {
    CFRelease(v3);
  }
}

- (BOOL)initializeDisplayLinkWithError:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __67__VCCallSession_VideoConferencing__initializeDisplayLinkWithError___block_invoke;
  v10 = &unk_1E85F6B38;
  v11 = self;
  v5 = [[VCDisplayLink alloc] initWithHandler:&v7 threadPriority:39 threadOptions:0 threadIdentifier:@"com.apple.VCCallSession.VCDisplayLink" preferredFrameRate:0.0];
  self->_displayLink = v5;
  if (!v5)
  {
    [VCCallSession(VideoConferencing) initializeDisplayLinkWithError:];
LABEL_7:
    [(VCCallSession *)self cleanUpDisplayLink:v7];
    [GKVoiceChatError getNSError:a3 code:32017 detailedCode:117 filePath:0 description:@"Could not create and activate display link" reason:@"Video unavailable"];
    return 0;
  }

  if (![(VCDisplayLink *)v5 activate:v7])
  {
    [VCCallSession(VideoConferencing) initializeDisplayLinkWithError:];
    goto LABEL_7;
  }

  return 1;
}

uint64_t __67__VCCallSession_VideoConferencing__initializeDisplayLinkWithError___block_invoke(uint64_t a1, double *a2)
{
  result = *(*(a1 + 32) + 1248);
  if (result != 0xFFFFFFFFLL)
  {
    return VideoReceiver_DisplayLinkTick(a2[1], *a2, a2[2]);
  }

  return result;
}

- (void)handleVideoReceiverInitializationFailed
{
  [(VCCallSession *)self cleanUpVideoTransmitter];
  [(VCCallSession *)self cleanUpVideoReceiver];
  [(VCCallSession *)self cleanUpDisplayLink];

  [(VCCallSession *)self cleanUpVideoRTP];
}

- (BOOL)createVideoReceiverWithReportingAgent:(opaqueRTCReporting *)a3 fecHeaderV1Enabled:(BOOL)a4 videoJBEnabled:(BOOL)a5 error:(id *)a6
{
  v78 = *MEMORY[0x1E69E9840];
  v25 = [+[VCDefaults sharedInstance](VCDefaults enableVPBLogging];
  v26 = [+[VCDefaults sharedInstance](VCDefaults enableBitstreamCapture];
  v24 = [+[VCDefaults sharedInstance](VCDefaults enableRxDecodeYUVDump];
  v23 = [+[VCDefaults sharedInstance](VCDefaults enableRecvBitstreamDump];
  bBWEstNewBWEstModeEnabled = self->bBWEstNewBWEstModeEnabled;
  LODWORD(v30) = self->bBWEstOperatingModeInitialized;
  DWORD1(v30) = bBWEstNewBWEstModeEnabled;
  bBWEstActiveProbingSenderLog = self->bBWEstActiveProbingSenderLog;
  DWORD2(v30) = self->bBWEstFakeLargeFrameModeEnabled;
  HIDWORD(v30) = bBWEstActiveProbingSenderLog;
  v9 = *MEMORY[0x1E695E480];
  v10 = [(NSMutableDictionary *)self->featureListStringDict count];
  Mutable = CFDictionaryCreateMutable(v9, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [(NSMutableDictionary *)self->featureListStringDict allKeys];
  v12 = [obj countByEnumeratingWithState:&v74 objects:v73 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v75;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v75 != v14)
        {
          objc_enumerationMutation(obj);
        }

        CFDictionaryAddValue(Mutable, *(*(&v74 + 1) + 8 * i), [MEMORY[0x1E696AEC0] stringWithString:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->featureListStringDict, "objectForKeyedSubscript:", *(*(&v74 + 1) + 8 * i)), "objectForKey:", @"matchedFeatureListString"}]);
      }

      v13 = [obj countByEnumeratingWithState:&v74 objects:v73 count:16];
    }

    while (v13);
  }

  bzero(&v31, 0x658uLL);
  rtpVideo = self->rtpVideo;
  if (Mutable)
  {
    v17 = CFRetain(Mutable);
  }

  else
  {
    v17 = 0;
  }

  videoMediaControlInfoGenerator = self->videoMediaControlInfoGenerator;
  v31 = 1;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = rtpVideo;
  v36 = v17;
  v37 = 0;
  v38 = 0;
  v39 = videoMediaControlInfoGenerator;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  v44 = [(VCCallSession *)self callID];
  sampleRate = self->sampleRate;
  v46 = sampleRate;
  v47 = v25;
  v48 = [(VCCallSession *)self callID];
  v49 = [(VCCallSession *)self useControlByte];
  v50 = v26;
  v51 = v24;
  v52 = [(VCCallSession *)self useUEP];
  v53 = v23;
  v43 = 0x200000000;
  v54 = 0;
  v55 = self;
  v56 = GCKVoiceChatOnPlayVideo;
  v61 = 1;
  wrmInfo = self->wrmInfo;
  v62 = a4;
  v60 = 0;
  v59 = a5;
  v58 = 60;
  v64 = 256;
  v66 = 0;
  v65 = self->videoMediaControlInfoGenerator;
  v67 = 1;
  v68 = [(VCCallSession *)self operatingMode]== 4;
  v69 = 6;
  v63 = 1;
  v70 = 0;
  v71 = 1;
  snprintf(v72, 0x1EuLL, "parent=%p", self);
  if (v54 == 1 && ![(VCCallSession *)self initializeDisplayLinkWithError:a6])
  {
    goto LABEL_21;
  }

  v19 = VideoReceiver_CreateHandle(&self->hVideoReceiver, &v31, a3, &v30, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v19 < 0)
  {
    [(VCCallSession *)self videoReceiverInitializationError:a6 withDescription:@"Could not create video receiver"];
LABEL_21:
    [VCCallSession(VideoConferencing) createVideoReceiverWithReportingAgent:? fecHeaderV1Enabled:? videoJBEnabled:? error:?];
    return 0;
  }

  return 1;
}

- (BOOL)initializeVideoReceiver:(id *)a3 reportingAgent:(opaqueRTCReporting *)a4 fecHeaderV1Enabled:(BOOL)a5 videoJBEnabled:(BOOL)a6
{
  hVideoReceiver = self->hVideoReceiver;
  if (hVideoReceiver == 0xFFFFFFFFLL)
  {
    if (![(VCCallSession *)self createVideoReceiverWithReportingAgent:a4 fecHeaderV1Enabled:a5 videoJBEnabled:a6 error:a3])
    {
      [(VCCallSession *)self handleVideoReceiverInitializationFailed];
      return 0;
    }

    hVideoReceiver = self->hVideoReceiver;
  }

  if ((VideoReceiver_SetVTHandleAndStart(hVideoReceiver, self->hVideoTransmitter) & 0x80000000) != 0)
  {
    [(VCCallSession *)self videoReceiverInitializationError:a3 withDescription:@"Could not start video receiver"];
  }

  return 1;
}

- (double)sessionTransmittingFramerate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0.0;
  VideoTransmitter_GetFramerate(3.0, self->hVideoTransmitter, v3);
  return v3[0];
}

- (double)sessionTransmittingBitrate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0.0;
  VideoTransmitter_GetBitrate(3.0, self->hVideoTransmitter, v3);
  return v3[0];
}

- (double)sessionReceivingFramerate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0.0;
  VideoReceiver_GetFramerate(3.0, self->hVideoReceiver, v3);
  return v3[0];
}

- (double)sessionReceivingBitrate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  VideoReceiver_GetBitrate(3.0, self->hVideoReceiver, v3, 0, 0, 0, 0);
  return *v3;
}

- (void)updateVideoQualityNotification:(double)a3
{
  if (a3 - self->lastVideoQualityNotificationUpdate > 0.5)
  {
    [(VCCallSession *)self updateVideoQualityStatusWithTime:0 isRemote:a3];
    if (!self->isRemoteMediaStalled)
    {
      [(VCCallSession *)self updateVideoQualityStatusWithTime:1 isRemote:a3];
    }

    self->lastVideoQualityNotificationUpdate = a3;
  }
}

- (id)newRemoteScreenAttributesForOrientation:(int)a3
{
  v5 = objc_alloc_init(VideoAttributes);
  v6 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  if (a3 > 1)
  {
    v9 = 3;
    [v6 localScreenRatioForScreenOrientation:3];
    if (self->canLocalResizePIP || !self->canRemoteResizePIP)
    {
      v10 = &OBJC_IVAR___VCCallSession_remoteScreenLandscapeAspectRatio;
LABEL_9:
      v11 = (self + *v10);
      v7 = *v11;
      v8 = v11[1];
    }
  }

  else
  {
    [v6 localScreenRatioForScreenOrientation:0];
    if (self->canLocalResizePIP)
    {
      v9 = 0;
LABEL_8:
      v10 = &OBJC_IVAR___VCCallSession_remoteScreenPortraitAspectRatio;
      goto LABEL_9;
    }

    v9 = 0;
    if (!self->canRemoteResizePIP)
    {
      goto LABEL_8;
    }
  }

  [(VideoAttributes *)v5 setRatio:v7, v8];
  [(VideoAttributes *)v5 setOrientation:v9];
  [(VideoAttributes *)v5 setCamera:0];
  [(VideoAttributes *)v5 setCameraSwitching:0];
  return v5;
}

- (void)processResolutionChangeToVideoRule:(id)a3 captureRule:(id)a4 featureListString:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      v9 = -[VCCallSession parameterSetForPayload:](self, "parameterSetForPayload:", [a3 iPayload]);
      hVideoTransmitter = self->hVideoTransmitter;
      v11 = [a3 iWidth];
      v12 = [a3 iHeight];
      v13 = [a3 iPayload];
      [a3 fRate];
      VideoTransmitter_PrepareForResChange(hVideoTransmitter, v11, v12, v13, v14, [a5 UTF8String], objc_msgSend(a4, "iWidth"), objc_msgSend(a4, "iHeight"), v9);
      if (objc_opt_respondsToSelector())
      {
        delegate = self->delegate;

        [(VCCallSessionDelegate *)delegate session:self didChangeVideoRule:a4];
      }
    }
  }
}

- (void)updateSourcePlayoutTime:(const tagVCMediaTime *)a3
{
  if (a3)
  {
    v5 = micro();
    if (v5 > self->lastVideoCallAlarmTime)
    {
      hVideoReceiver = self->hVideoReceiver;
      if (hVideoReceiver != 0xFFFFFFFFLL)
      {
        VideoReceiver_UpdateSourcePlayoutTime(hVideoReceiver, a3);
      }

      self->lastVideoCallAlarmTime = v5;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCallSession(VideoConferencing) updateSourcePlayoutTime:v7];
    }
  }
}

- (void)updateStatistics:(tagVCStatisticsMessage *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = 0;
  v7 = 0;
  hVideoTransmitter = self->hVideoTransmitter;
  audioReceivedPackets = a3->var0.feedback.audioReceivedPackets;
  VideoTransmitter_SetNetworkStats(hVideoTransmitter, &audioReceivedPackets);
}

void __53__VCCallSession_handlePendingPrimaryConnectionChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = VCConnectionManager_CopyPrimaryConnection(*(*(a1 + 32) + 80));
  [*(a1 + 32) unlock];
  if (v2)
  {
    if (*(*(a1 + 32) + 88) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_55_0())
        {
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_23();
          _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
        }
      }

      [*(a1 + 32) primaryConnectionDidChangeTo:v2 oldConnection:*(*(a1 + 32) + 96)];

      *(*(a1 + 32) + 96) = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_55_0())
      {
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23();
        _os_log_impl(v8, v9, v10, v11, v12, 0x1Cu);
      }
    }

    *(*(a1 + 32) + 88) = 2;
    CFRelease(v2);
  }
}

- (BOOL)createAudioTransmitter:(id *)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(VCAudioTransmitterConfig);
  [(VCAudioTransmitterConfig *)v5 setRtpHandle:self->rtpHandle];
  [(VCAudioTransmitterConfig *)v5 setControlInfoGenerator:self->audioMediaControlInfoGenerator];
  [(VCAudioTransmitterConfig *)v5 setAudioPayloads:self->negotiatedAudioPayloads];
  [(VCAudioTransmitterConfig *)v5 setChosenAudioPayload:self->currentAudioPayload];
  [(VCAudioTransmitterConfig *)v5 setChosenDTXPayload:self->currentDTXPayload];
  [(VCAudioTransmitterConfig *)v5 setChosenRedPayloadType:self->_currentRedPayloadType];
  [(VCAudioTransmitterConfig *)v5 setRedEnabled:self->_isRedEnabled];
  [(VCAudioTransmitterConfig *)v5 setIncludeRedSequenceOffset:1];
  v6 = *&self->_vpioFormat.format.mBytesPerPacket;
  *buf = *&self->_vpioFormat.format.mSampleRate;
  *v54 = v6;
  *&v54[16] = *&self->_vpioFormat.format.mBitsPerChannel;
  [(VCAudioTransmitterConfig *)v5 setInputFormat:buf];
  [(VCAudioTransmitterConfig *)v5 setUseRateControl:self->useRateControl];
  [(VCAudioTransmitterConfig *)v5 setBundlingScheme:1];
  [(VCAudioTransmitterConfig *)v5 setIsUseCaseWatchContinuity:self->_isUseCaseWatchContinuity];
  [(VCAudioTransmitterConfig *)v5 setAllowAudioSwitching:self->allowAudioSwitching];
  [(VCAudioTransmitterConfig *)v5 setAfrcHandle:self->hAFRC];
  [(VCAudioTransmitterConfig *)v5 setStatisticsCollector:[(AVCRateController *)self->_rateController statisticsCollector]];
  [(VCAudioTransmitterConfig *)v5 setOperatingMode:self->operatingMode];
  [(VCAudioTransmitterConfig *)v5 setSupportsAdaptation:!self->isGKVoiceChat];
  [(VCAudioTransmitterConfig *)v5 setNeedsPacketThread:self->isGKVoiceChat];
  [(VCAudioTransmitterConfig *)v5 setTransportSession:self->_transportSession];
  [(VCAudioTransmitterConfig *)v5 setReportingAgent:self->reportingAgent];
  [(VCAudioTransmitterConfig *)v5 setMediaQueue:self->hMediaQueue];
  [(VCAudioTransmitterConfig *)v5 setRtpVideo:self->rtpVideo];
  [(VCAudioTransmitterConfig *)v5 setShouldCreateRedundancyController:1];
  if (self->isGKVoiceChat)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  [(VCAudioTransmitterConfig *)v5 setPacketsPerBundle:v7];
  if (self->_isRedEnabled)
  {
    v8 = &unk_1F579D0B0;
  }

  else
  {
    v8 = &unk_1F579D0C8;
  }

  [(VCAudioTransmitterConfig *)v5 setSupportedNumRedundantPayload:v8];
  [(VCMediaNegotiatorResults *)[(VCMediaNegotiatorBase *)self->_mediaNegotiator negotiatedSettings] mediaControlInfoVersion];
  [OUTLINED_FUNCTION_46_2() setMediaControlInfoVersion:?];
  [(VCSwitchManager *)self->_switchManager isSwitchEnabled:2];
  [OUTLINED_FUNCTION_46_2() setAlwaysOnAudioRedundancyEnabled:?];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39_8())
    {
      [(VCAudioTransmitterConfig *)v5 alwaysOnAudioRedundancyEnabled];
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_41_4();
      OUTLINED_FUNCTION_38_3(&dword_1DB56E000, v11, v12, "VCCallSession [%s] %s:%d Load switch alwaysOnAudioRedundancyEnabled %d", v13, v14, v15, v16, v51, v52, buf[0]);
    }
  }

  [(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x8000];
  [OUTLINED_FUNCTION_46_2() setCellularAllowRedLowBitratesEnabled:?];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39_8())
    {
      [(VCAudioTransmitterConfig *)v5 cellularAllowRedLowBitratesEnabled];
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_41_4();
      OUTLINED_FUNCTION_38_3(&dword_1DB56E000, v17, v18, "VCCallSession [%s] %s:%d Load switch cellularLowTierRedundancyEnabled %d", v19, v20, v21, v22, v51, v52, buf[0]);
    }
  }

  [(VCSwitchManager *)self->_switchManager isSwitchEnabled:0x4000];
  [OUTLINED_FUNCTION_46_2() setWifiAllowRedLowBitratesEnabled:?];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_39_8())
    {
      [(VCAudioTransmitterConfig *)v5 wifiAllowRedLowBitratesEnabled];
      OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_41_4();
      OUTLINED_FUNCTION_38_3(&dword_1DB56E000, v23, v24, "VCCallSession [%s] %s:%d Load switch wifiLowTierRedundancyEnabled %d", v25, v26, v27, v28, v51, v52, buf[0]);
    }
  }

  [VCAudioTierPicker operatingModeToTierPickerMode:self->operatingMode isLowLatency:0 preferPlistForTierTable:0];
  [OUTLINED_FUNCTION_46_2() setTierPickerMode:?];
  [(VCAudioTransmitterConfig *)v5 setCellularAllowRedLowBitratesEnabled:[(VCAudioTransmitterConfig *)v5 cellularAllowRedLowBitratesEnabled]^ 1];
  [(VCAudioTransmitterConfig *)v5 setWifiAllowRedLowBitratesEnabled:[(VCAudioTransmitterConfig *)v5 wifiAllowRedLowBitratesEnabled]^ 1];
  v29 = [[VCAudioTransmitter alloc] initWithConfig:v5];
  v30 = v29;
  if (!v29)
  {
    v46 = @"Failed to allocate audio transmitter";
    v47 = 7131;
    v44 = -2147418109;
    v45 = @"Could not setup RTP";
    goto LABEL_36;
  }

  self->audioTransmitter = v29;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_28;
    }

    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *v10;
    if (!os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315906;
    *&buf[4] = v32;
    OUTLINED_FUNCTION_37_6();
    *&v54[12] = 2048;
    *&v54[14] = v34;
    v35 = "VCCallSession [%s] %s:%d audioTransmitter=%p";
    v36 = v33;
    v37 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v31 = [(VCCallSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v31 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_28;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *v10;
    if (!os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136316418;
    *&buf[4] = v38;
    OUTLINED_FUNCTION_37_6();
    *&v54[12] = 2112;
    *&v54[14] = v31;
    *&v54[22] = 2048;
    *&v54[24] = self;
    v55 = 2048;
    v56 = v40;
    v35 = "VCCallSession [%s] %s:%d %@(%p) audioTransmitter=%p";
    v36 = v39;
    v37 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_28:
  v41 = [(VCMediaNegotiator *)self->_mediaNegotiator usePreNegotiation];
  if (v41 || ![(VCCallInfo *)self->remoteCallInfo supportsSpecialAACBundle])
  {
    [(VCPacketBundler *)[(VCAudioTransmitter *)self->audioTransmitter audioBundler] setAllowLargePackets:v41];
  }

  [(VCAudioTransmitter *)self->audioTransmitter setDelegate:self];
  if (self->useVCRC)
  {
    [(VCAudioTransmitter *)self->audioTransmitter setTargetBitrate:self->_targetBitrate];
    [(VCAudioTransmitter *)self->audioTransmitter setRateChangeCounter:self->_rateChangeCounter];
  }

  v42 = VCConnectionManager_CopyPrimaryConnection(self->connectionManager);
  v43 = [v42 isWifiToWifi];
  if (v42)
  {
    CFRelease(v42);
  }

  [(VCAudioTransmitter *)self->audioTransmitter setUseWiFiTiers:v43];
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0xFFFFFFFFLL;
LABEL_36:

  if (!v30)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v49 = *v10;
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          [-[__CFString description](v45 "description")];
          [-[__CFString description](v46 "description")];
          OUTLINED_FUNCTION_31_6();
          _os_log_error_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_ERROR, "VCCallSession [%s] %s:%d %s: %s", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(*v10, OS_LOG_TYPE_FAULT))
      {
        [-[__CFString description](v45 "description")];
        [-[__CFString description](v46 "description")];
        OUTLINED_FUNCTION_31_6();
        _os_log_fault_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_FAULT, "VCCallSession [%s] %s:%d %s: %s", buf, 0x30u);
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:returnCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:returnCode:filePath:description:reason:", a3, 32000, 217, v44, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m", v47], v45, v46);
  }

  return v30 != 0;
}

void __88__VCCallSession_initWithDeviceRole_transportType_isGKVoiceChat_reportingHierarchyToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d RTCReporting: can't configure the reporting agent.", v2, v3, v4, v5, v6);
}

- (void)gatherRealtimeStats:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [objc_msgSend(v0 "description")];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x26u);
}

void __34__VCCallSession_setOperatingMode___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __34__VCCallSession_setOperatingMode___block_invoke_145_cold_1()
{
  OUTLINED_FUNCTION_14_5();
  v1 = OUTLINED_FUNCTION_29_4(v0, *MEMORY[0x1E69E9840]);
  if (v1)
  {
    [objc_msgSend(v1 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __38__VCCallSession_handleCellTechChange___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)applyFeatureListStringForPayload:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)chooseVideoPayloadForInterface:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12_3();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x22u);
}

- (void)chooseVideoPayloadForInterface:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)resetVideoRulesForInterface:videoReportingDictionary:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d captureRule or encodeRule is nil", v2, v3, v4, v5, v6);
}

void __63__VCCallSession_schedulePrimaryConnectionChange_oldConnection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

uint64_t __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_cold_1(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v4, v5, "VCCallSession [%s] %s:%d PLR too high:Disconnecting", v6, v7, v8, v9, v11);
  return a3 & 1;
}

void __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d RTT too high:Disconnecting", v2, v3, v4, v5, v6);
}

void __66__VCCallSession_updateLastReceivedPacketWithTimestamp_packetType___block_invoke_234_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_12_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x30u);
}

void __90__VCCallSession_setupConnectionTimeoutTimerWithErrorCode_detailedCode_description_reason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Connection timeout occurred, disconnecting", v2, v3, v4, v5, v6);
}

- (void)startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to process response media blob", v2, v3, v4, v5, v6);
}

- (void)startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to process response media blob", v2, v3, v4, v5, v6);
}

- (void)startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to add participant to Control Channel list of active participants", v2, v3, v4, v5, v6);
}

- (void)startConnectionWithParticipantID:callID:usingInviteData:isCaller:capabilities:idsSocket:destination:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __123__VCCallSession_startConnectionWithParticipantID_callID_usingInviteData_isCaller_capabilities_idsSocket_destination_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Reporting not available (no backends)", v2, v3, v4, v5, v6);
}

- (void)newMediaNegotiatorAudioConfigurationWithAllowAudioSwitching:useSBR:aacBlockSize:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)newMediaNegotiatorAudioConfigurationWithAllowAudioSwitching:useSBR:aacBlockSize:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)newCameraConfiguration
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)newScreenConfigurationWithCameraConfiguration:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v8 = a1;
      OUTLINED_FUNCTION_36_5(&dword_1DB56E000, v3, v4, "VCCallSession [%s] %s:%d Failed to copy cameraConfiguration=%@", &v5);
    }
  }
}

- (void)addMediaConfigurationsToLocalConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

- (void)addMediaConfigurationsToLocalConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_15();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  *v0 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

- (void)newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:.cold.1()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_36();
}

- (void)newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:.cold.2()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_44_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_36();
}

- (void)newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:.cold.5()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)newMediaBlobWithRemoteMediaBlob:localCallID:isLowBitrateCodecPreferred:.cold.6()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to generate the media blob", v2, v3, v4, v5, v6);
}

- (void)inviteDataForParticipantID:callID:remoteInviteData:nonCellularCandidateTimeout:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Failed to generate the media blob", v2, v3, v4, v5, v6);
}

void __43__VCCallSession_setPauseAudio_force_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Baseband codec not set propertly", v2, v3, v4, v5, v6);
}

void __43__VCCallSession_setPauseVideo_force_error___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)processRelayRequestResponseDict:didOriginateRequest:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [v0 isCallOngoing];
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x28u);
}

- (void)processRelayUpdateDict:didOriginateRequest:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m:%d: processRelayUpdateDict: remoteCallInfo is nil.", v2, v3, v4, v5, v6);
}

- (void)sendData:messageType:encrypted:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Attempt to send data with zero size. Ignoring...", v2, v3, v4, v5, v6);
}

- (void)negotiatedReceivingFramerate
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d framerate is not set.", v2, v3, v4, v5, v6);
}

- (void)updateRelayedCallType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setSessionConferenceState:callID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m:%d: setSessionConferenceState: invalid state", v2, v3, v4, v5, v6);
}

void __65__VCCallSession_PrivateMethods__startAudioWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCCallSession.m:%d: Benign Error (possibly not): We started audio before we negotiated our codec.", v2, v3, v4, v5, v6);
}

void __67__VCCallSession_PrivateMethods__startAudioIOWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d Baseband codec not set propertly", v2, v3, v4, v5, v6);
}

void __75__VCCallSession_PrivateMethods__disconnectWithNoRemotePackets_timeoutUsed___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_5();
  [*(*(v0 + 32) + 24) callID];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x22u);
}

void __47__VCCallSession_Messages__setupMomentsMessages__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d setupMomentsMessages message is nil", v2, v3, v4, v5, v6);
}

void __57__VCCallSession_Messages__setupPreferredInterfaceMessage__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d setupPreferredInterfaceMessage message is nil", v2, v3, v4, v5, v6);
}

void __58__VCCallSession_Messages__setupWRMAlertStateUpdateMessage__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d setupWRMAlertStateUpdateMessage message is invalid", v2, v3, v4, v5, v6);
}

void __58__VCCallSession_Messages__setupWRMAlertStateUpdateMessage__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCCallSession [%s] %s:%d setupWRMAlertStateUpdateMessage message is nil", v2, v3, v4, v5, v6);
}

@end