@interface VCSession
+ (BOOL)isUplinkRetransmissionEnabledForVideo;
+ (id)mediaStateMessageKeyForMediaType:(unsigned int)type;
+ (id)mediaStateMessageStreamGroupKeysForMediaType:(unsigned int)type;
+ (id)mediaStateMessageValueForMediaState:(unsigned int)state;
+ (int)deviceRoleForSessionMode:(int64_t)mode;
+ (unsigned)mediaStateForMediaStateMessageValue:(id)value;
+ (unsigned)mediaTypeForMediaStateMessageKey:(id)key;
+ (void)addUUIDToMutableData:(id)data fromUUIDString:(id)string;
+ (void)cleanupControlChannelParticipantConfig:(id *)config;
+ (void)initVideoFeatureStatusSettings:(tagVCReportingClientSettingsPersist *)settings;
- (BOOL)addOneToOneParticipant:(id)participant;
- (BOOL)completeTransitionToOneToOneEnabled:(BOOL)enabled;
- (BOOL)composeControlChannelParticipantConfig:(id *)config withRemoteParticipant:(id)participant;
- (BOOL)configureLocalParticipantWithOneToOneRemoteParticipant:(id)participant isInitialConfiguration:(BOOL)configuration;
- (BOOL)configureRemoteParticipant:(id)participant withConfig:(id)config;
- (BOOL)configureRemoteParticipantForOneToOne:(id)one;
- (BOOL)detectSSRCCollision:(id)collision resetNeeded:(BOOL *)needed;
- (BOOL)detectSSRCCollisionWithRemoteMediaStream:(id)stream remoteBlobCreationTime:(tagNTP)time resetNeeded:(BOOL *)needed;
- (BOOL)handleEncryptionInfoChange:(id)change;
- (BOOL)isAVCForcingECNDefaultSet;
- (BOOL)isECNCapableWithRemoteParticipant:(id)participant;
- (BOOL)isECNPermittedFromNetworkingLayer;
- (BOOL)isEnhancedJBAdaptationsEnabled;
- (BOOL)isJBLatencySensitiveModeEnabled;
- (BOOL)isLateKeyFrameDetectionEnabled;
- (BOOL)isNetworkForcingECNDefaultSet;
- (BOOL)isOneToOneRemoteParticipantUsingScreen;
- (BOOL)isOneToOneUsingScreen;
- (BOOL)isOneToOneUsingVideo;
- (BOOL)isPersonaCameraSupported;
- (BOOL)isTLEEnabledOnPrimaryConnection;
- (BOOL)isUsingPersonaCamera;
- (BOOL)multiwayToOneToOneSwitchConfigure;
- (BOOL)negotiateOneToOneWithRemoteParticipant:(id)participant;
- (BOOL)registerRemoteParticipantToSession:(id)session;
- (BOOL)setOneToOneConfigOnRemoteParticipant:(id)participant;
- (BOOL)switchFromMultiwayToOneToOne;
- (BOOL)switchFromOneToOneToMultiway;
- (BOOL)validateStreamGroup:(id)group state:(id)state;
- (NSDictionary)capabilities;
- (NSDictionary)transportMetadata;
- (NSUUID)playbackSynchronizationGroupUUID;
- (VCSession)initWithIDSDestination:(id)destination configurationDict:(id)dict negotiationData:(id)data delegate:(id)delegate processId:(int)id isGKVoiceChat:(BOOL)chat;
- (VCSession)initWithRelevantStorebagEntries;
- (VCSessionParticipantRemote)oneToOneRemoteParticipant;
- (__CFDictionary)getClientSpecificUserInfo;
- (__CFString)configurationSpecificReportingClientName;
- (__CFString)configurationSpecificReportingServiceName;
- (char)sessionStateToString:(unsigned int)string;
- (id)computeConversationTimeBaseTruncated;
- (id)configurationSpecificReportingServiceNameOneToOne;
- (id)newEncryptionLabelWithLocalUUID:(id)d remoteUUID:(id)iD;
- (id)newNegotiatorForOneToOneWithRemoteParticipant:(id)participant;
- (id)newNetworkBitrateString:(id *)string;
- (id)newParticipantOneToOneConfigWithIDSParticipantID:(unint64_t)d isLocal:(BOOL)local mediaControlInfoVersion:(unsigned __int8)version videoEnabled:(BOOL)enabled screenEnabled:(BOOL)screenEnabled remoteParticipant:(id)participant;
- (id)participantForID:(id)d;
- (id)stateMessageWithSupportsNestedDictionary:(BOOL)dictionary;
- (id)vcrcServerBagWithOperatingMode:(int)mode;
- (int)flushBasebandWithPayloads:(id)payloads;
- (int)getStorebagValueForIntegerKey:(id)key defaultValue:(id)value;
- (int)learntBitrateForSegment:(id)segment defaultValue:(int)value;
- (int)maxOneToOneCameraFrameRate;
- (int)maxRemoteParticipants30fps;
- (int)reserveAudioChannelForMediaType:(unsigned int)type;
- (int)selectDataPath;
- (int)setupOneToOne;
- (int)setupOneToOneMediaControlInfoGeneratorsWithVersion:(unsigned __int8)version oneToOneConfig:(id)config videoEnabled:(BOOL)enabled;
- (int)setupOneToOneMediaQueue;
- (int)setupRateControllerOneToOne;
- (int)setupSpatialAudio;
- (unsigned)calculateExpectedTotalNetworkBitrateDownlink;
- (unsigned)calculateExpectedTotalNetworkBitrateUplink;
- (unsigned)detailedErrorCodeForNoRemotePacketsError;
- (unsigned)vcrcServerBagProfileNumber;
- (void)addNegotiatedCipherSuitesForParticipant:(id)participant toReportingDictionary:(id)dictionary;
- (void)addParticipantConfigurations:(id)configurations;
- (void)additionalFlushCountToOneToOneRateController:(unsigned int)controller;
- (void)appendMediaTypeMixingListToMessageDictionary:(id)dictionary;
- (void)applyLinkConstrains:(id)constrains;
- (void)applyNegotiatedOneToOneFaceTimeSettings;
- (void)applyRemoteLinkConstrains:(id)constrains;
- (void)applySpatialMetadata;
- (void)applyVideoCaptureServerMitigationsForLowPowerMode;
- (void)broadcastInitialMediaState;
- (void)broadcastMediaStateUpdateMessage;
- (void)broadcastMessage:(id)message withTopic:(id)topic;
- (void)broadcastMessageDictionary:(id)dictionary withTopic:(id)topic;
- (void)broadcastSingleStateMessage:(id)message withTopic:(id)topic;
- (void)cleanUpMediaRecorder;
- (void)cleanUpOneToOneVideoStreamDelegate;
- (void)cleanupNwActivity;
- (void)cleanupOneToOne;
- (void)cleanupOneToOneDelegates;
- (void)cleanupOneToOneMediaQueue;
- (void)cleanupOneToOneVideoReceiverDelegate;
- (void)cleanupRateControllerOneToOne;
- (void)cleanupSpatialAudio;
- (void)cleanupVCRC;
- (void)collectSessionEventKeyFieldsAndSubtype:(__CFDictionary *)subtype eventType:(unsigned __int16)type withParticipant:(id)participant keyChangeReason:(id)reason newMKI:(id)i withStreamGroupID:(unsigned int)d withStreamID:(unsigned __int16)iD collectSubtype:(unsigned __int16 *)self0;
- (void)completionHandlerOneToOneEnabled:(BOOL)enabled didSucceed:(BOOL)succeed configurationDict:(id)dict;
- (void)configureOneToOneRateController:(id)controller;
- (void)configureOneToOneRateController:(id)controller isUsingCamera:(BOOL)camera isUsingScreen:(BOOL)screen;
- (void)configureOneToOneReportingOnVideoEnabled;
- (void)configureSessionForLowPowerMode:(BOOL)mode;
- (void)createMediaQueue;
- (void)createSessionMessaging;
- (void)dealloc;
- (void)deregisterForThermalFeatureNotifications;
- (void)destroySessionMessaging;
- (void)didChangeThermalLevel:(int)level;
- (void)didEncryptionKeyRollTimeout;
- (void)didLocalNetworkConditionChange:(BOOL)change isLocalNetworkQualityDegraded:(BOOL)degraded isRemoteNetworkQualityDegraded:(BOOL)qualityDegraded;
- (void)didReceiveMomentsRequest:(id)request;
- (void)didReceivedSessionStatsAtTime:(double)time;
- (void)didRemoveSpatialMetadataEntry;
- (void)dispatchedAddParticipantConfigurations:(id)configurations;
- (void)dispatchedAddParticipantWithConfig:(id)config;
- (void)dispatchedConfigureSessionForLowPowerMode:(BOOL)mode;
- (void)dispatchedParticipant:(id)participant didStart:(BOOL)start error:(id)error;
- (void)dispatchedParticipant:(id)participant didStopWithError:(id)error;
- (void)dispatchedRemoteCellTechStateUpdate:(id)update maxRemoteBitrate:(id)bitrate;
- (void)dispatchedRemoveParticipant:(id)participant;
- (void)dispatchedSetOneToOneModeEnabled:(BOOL)enabled isLocal:(BOOL)local configurationDict:(id)dict;
- (void)dispatchedSetPlaybackSyncGroupUUID:(id)d;
- (void)dispatchedSetScreenAndCameraMixingEnabled:(BOOL)enabled;
- (void)dispatchedSetSharingEnabled:(BOOL)enabled;
- (void)dispatchedStart;
- (void)dispatchedStopWithError:(id)error didRemoteCancel:(BOOL)cancel;
- (void)dispatchedTransportStop;
- (void)dispatchedUpdateConfiguration:(id)configuration;
- (void)distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:(BOOL)transition;
- (void)dumpVCSessionMetadataToDataStore;
- (void)enableDataCollectionInReportingConfig:(id *)config;
- (void)enableVCOverlay;
- (void)generateKeyFrameWithReceivedMessage:(id)message forParticipant:(id)participant;
- (void)generateReportDictionary:(__CFDictionary *)dictionary;
- (void)handleActiveConnectionChange:(id)change;
- (void)handleActiveConnectionChangeForMultiway:(id)multiway;
- (void)handleActiveConnectionChangeForOneToOne:(id)one;
- (void)handleCellTechChange:(int)change connection:(id)connection;
- (void)handleCellularMTUChanged:(unsigned __int16)changed connection:(id)connection;
- (void)handleDeviceStateMessage:(id)message forParticipantId:(id)id;
- (void)handleEncryptionInfoEvent:(id)event;
- (void)handleMediaQueueSizeExceedThresholdWithQueueSize:(double)size mediaQueueStreamId:(unsigned int)id type:(int)type;
- (void)handleMembershipChangeInfoEvent:(id)event;
- (void)handleMicModeNotification:(id)notification;
- (void)handleNetworkCapabilityMessage:(id)message forParticipantId:(id)id;
- (void)handlePreferredInterfaceForDuplicationUpdate:(unsigned __int8)update notifyPeer:(BOOL)peer enableDuplication:(BOOL)duplication isMediaUnrecoverableSignal:(BOOL)signal;
- (void)handlePrimaryConnectionChanged:(id)changed;
- (void)initAudioFeatureStatusSettings:(tagVCReportingClientSettingsPersist *)settings;
- (void)mediaController:(void *)controller mediaSuggestionDidChange:(VCRateControlMediaSuggestion)change;
- (void)mediaQualityDegraded:(BOOL)degraded;
- (void)mediaRecorder:(id)recorder shouldProcessRequest:(id)request recipientID:(id)d;
- (void)mediaStateChangedForParticipant:(id)participant;
- (void)messageExistingParticipantsPostOneToOneModeSwitch;
- (void)messageMediaInitialStateToParticipant:(id)participant;
- (void)multiwayToOneToOneSwitchResume;
- (void)multiwayToOneToOneSwitchSuspend;
- (void)notifyDelegateActiveConnectionDidChange;
- (void)notifyRemoteOfCellTechChange:(id)change remoteParticipant:(id)participant;
- (void)oneToOneToMultiwaySwitchConfigure;
- (void)oneToOneToMultiwaySwitchResume;
- (void)oneToOneToMultiwaySwitchSuspend;
- (void)optInStreamWithIDSStreamIDs:(id)ds;
- (void)optOutStreamWithIDSStreamIDs:(id)ds;
- (void)preWarmStateChanged:(BOOL)changed;
- (void)processDidStop;
- (void)processMediaStateMessage:(id)message remoteParticipantID:(id)d;
- (void)processMediaTypeMixingList:(id)list forRemoteParticipant:(id)participant;
- (void)processMediaTypeStatesWithMessage:(id)message mediaTypeStates:(id)states;
- (void)processStreamGroupStateMessageKey:(id)key value:(id)value mediaTypeStates:(id)states;
- (void)processSymptomFromMessage:(id)message participantID:(id)d isLocalInitiated:(BOOL)initiated isLocalSideOnly:(BOOL)only;
- (void)rateController:(id)controller isECNEnabled:(BOOL)isECNForcedByNetwork isECNCapable:(BOOL)capable;
- (void)rateController:(id)controller targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter;
- (void)readAndSetABCSymptomsReportingThresholdsFromStorebags:(id *)storebags;
- (void)recommendedSettingsChanged:(id)changed;
- (void)registerForThermalFeatureNotifications;
- (void)registerQoSReporting;
- (void)remoteCellTechStateUpdate:(int)update maxRemoteBitrate:(unsigned int)bitrate;
- (void)removeParticipant:(id)participant;
- (void)renewOneToOneMediaQueue;
- (void)reportActiveConnectionOneToOne;
- (void)reportClientPersistentSettings;
- (void)reportCompletedSwitchingToOneToOne:(BOOL)one;
- (void)reportExistingParticipantsAnew;
- (void)reportInitialThermalLevel;
- (void)reportKeysForDeviceStateMessage:(unsigned __int16)message stateMessage:(id)stateMessage InPayload:(id)payload ForParitcipant:(id)paritcipant;
- (void)reportLocalRateControlExperimentConfiguration;
- (void)reportNearbyStop;
- (void)reportSatelliteNetworkStatusForConnection:(id)connection;
- (void)reportStartedSwitchingToOneToOne:(BOOL)one;
- (void)reportSwitchingError:(BOOL)error errorEvent:(unsigned int)event;
- (void)reportingMomentsToGreenTeaWithRequest:(id)request;
- (void)reportingSessionDownlinkOptInEvent:(id)event selectedMediaEntriesForParticipants:(id)participants;
- (void)reportingSessionParticipantEvent:(unsigned __int16)event withParticipant:(id)participant keyChangeReason:(id)reason newMKI:(id)i withStreamGroupID:(unsigned int)d withStreamID:(unsigned __int16)iD;
- (void)reportingSessionRemoteParticipantEvent:(unsigned __int16)event withParticipant:(id)participant value:(id)value;
- (void)reportingSessionStopEventWithError:(id)error;
- (void)reportingSetUserInfo;
- (void)resetDecryptionTimeout;
- (void)revertMultiwayToOneToOneModeSwitchConfigure;
- (void)sendDeviceStateMessageToParticipant:(id)participant withStatus:(id)status checkDNUStatus:(BOOL)uStatus;
- (void)sendInitialDeviceOrientationToRemote;
- (void)sendMediaStateUpdateMessageToRemoteParticipant:(id)participant;
- (void)sendNetworkCapabilitiesMessageToParticipant:(id)participant;
- (void)sendStreamGroupStateToParticipant:(id)participant;
- (void)sendSymptomsToRemoteParticipants:(id)participants symptom:(id)symptom groupID:(id)d;
- (void)sendThermalAndSliceMessageToPariticipant:(id)pariticipant;
- (void)sendVCRCMLReportingEnrollmentEvent;
- (void)serverDidDie;
- (void)setBytesInFlightFlagWithParticipant:(id)participant;
- (void)setIsSpatialAudioSupported:(BOOL)supported;
- (void)setIsUplinkRetransmissionEnabled:(BOOL)enabled;
- (void)setLinkTypeForFeedbackController:(id)controller withActiveConnection:(id)connection;
- (void)setMediaQueuePeakBitrateWithTargetBitrate:(unsigned int)bitrate;
- (void)setOneToOneModeEnabled:(BOOL)enabled;
- (void)setOneToOneModeEnabled:(BOOL)enabled configurationDict:(id)dict;
- (void)setOneToOneVideoStreamBandwidthProbing:(BOOL)probing;
- (void)setParentNWActivity:(id)activity;
- (void)setPlaybackSynchronizationGroupUUID:(id)d;
- (void)setRemoteScreenControlEnabled:(BOOL)enabled;
- (void)setReportingConfig:(id *)config;
- (void)setScreenAndCameraMixingEnabled:(BOOL)enabled;
- (void)setSessionInfoSynchronizerCallbacks;
- (void)setSessionInfoSynchronizerErrorResponseCallback;
- (void)setSessionInfoSynchronizerPeerSubscribedStreamsCallback;
- (void)setSharingEnabled:(BOOL)enabled;
- (void)setState:(unsigned int)state;
- (void)setTransportConnectionSelectionVersionWithLocalFrameWorkVersion:(id)version remoteFrameworkVersion:(id)frameworkVersion;
- (void)setTransportSessionEventHandler;
- (void)setUpDeviceOrientationMessage;
- (void)setUpSensitiveContentAnalyzerForLocalParticipant;
- (void)setupAudioEnabledMessages;
- (void)setupAudioPausedMessages;
- (void)setupCellTechChangeMessages;
- (void)setupDeviceStateMessage;
- (void)setupDisconnectMessage;
- (void)setupKeyFrameGenerationMessages;
- (void)setupLinkConstrainsChangedMessages;
- (void)setupMediaQualityDegradedMessage;
- (void)setupMediaStateUpdateMessage;
- (void)setupMomentsMessages;
- (void)setupMultiwayABTesting;
- (void)setupNetworkCapabilityMessage;
- (void)setupNetworkQualityDegradedMessage;
- (void)setupOneToOneABTesting;
- (void)setupOneToOneAdaptiveLearning;
- (void)setupOneToOneEnabledMessages;
- (void)setupOneToOneVideoReceiverDelegate;
- (void)setupOneToOneVideoStreamDelegate;
- (void)setupPiPStateChangeMessage;
- (void)setupPreferredInterfaceMessage;
- (void)setupRateControllersMultiway;
- (void)setupReactionMessages;
- (void)setupSpatialAudio;
- (void)setupStreamGroupStateFetchMessage;
- (void)setupSymptomEnabledMessages;
- (void)setupTransportSessionWithDestination:(id)destination;
- (void)setupUplinkBitrateCaps;
- (void)setupVideoEnabledMessages;
- (void)setupVideoPausedMessages;
- (void)setupVideoRedundancyMessages;
- (void)setupWRMAlertUpdateMessage;
- (void)start;
- (void)startDeallocTimer;
- (void)startOneToOne;
- (void)startRateControllerOneToOne;
- (void)startRateControllersMultiwayFromOneToOne:(BOOL)one;
- (void)startReportingForOneToOneEnabled:(BOOL)enabled withPayload:(id)payload;
- (void)startSessionMessaging;
- (void)stopAllParticipants;
- (void)stopMediaQueueOneToOne;
- (void)stopSessionMessaging;
- (void)stopTimeoutTimer;
- (void)stopWithError:(id)error;
- (void)stopWithError:(id)error didRemoteCancel:(BOOL)cancel;
- (void)tearDown;
- (void)unregisterQoSReporting;
- (void)unregisterRemoteParticipantFromSession:(id)session;
- (void)unregisterReportingTask;
- (void)updateAlwaysHDCaptureScreenEnabledWithNewParticipant:(id)participant;
- (void)updateConfiguration:(id)configuration;
- (void)updateIsPlaybackSynchronizationGroupMemberWithUpdateConfig:(id)config forParticipant:(id)participant;
- (void)updateLocalCameraCaptureStatus;
- (void)updateLocalStreamConfiguration;
- (void)updateLocalVideoCaptureFrameRate;
- (void)updateMediaRecorderCapabillities:(unsigned int)capabillities imageType:(int)type videoCodec:(int)codec;
- (void)updateMicrophoneMuted:(BOOL)muted withUpdateConfig:(id)config forParticipant:(id)participant;
- (void)updateMultiwayRateControllerWithActiveConnection:(id)connection isScreenEnabled:(BOOL)enabled isLocal:(BOOL)local;
- (void)updateMultiwayRateControllersWithActiveConnection:(id)connection;
- (void)updateNetworkFeedbackControllerReport:(id *)report;
- (void)updateOneToOneRateControllerForVideoEnabled:(BOOL)enabled;
- (void)updateOneToOneRateControllerForVideoEnabled:(BOOL)enabled screenEnabled:(BOOL)screenEnabled;
- (void)updateOneToOneVideoReceiverDelegate:(BOOL)delegate;
- (void)updateParticipantConfigurations:(id)configurations sessionPresentationInfo:(id)info;
- (void)updateParticipantUUID:(id)d withUpdateConfig:(id)config redistributeBitrate:(BOOL *)bitrate;
- (void)updateParticipantWindowState;
- (void)updatePlaybackSynchronizationGroupMemberCount;
- (void)updatePlaybackSynchronizationGroupMembership:(BOOL)membership forParticipant:(id)participant;
- (void)updatePlaybackSynchronizationGroupUUIDWithUpdateConfig:(id)config;
- (void)updatePositionalInfoWithUpdateConfig:(id)config forParticipant:(id)participant;
- (void)updatePresentationInfo:(id)info;
- (void)updateProminenceIndexWithUpdateConfig:(id)config forParticipant:(id)participant redistributeBitrate:(BOOL *)bitrate;
- (void)updateStateMessage:(id)message stateState:(unsigned int)state streamGroupKey:(id)key;
- (void)updateVCMediaQueueForMediaType:(unsigned int)type mediaState:(unsigned int)state;
- (void)updateVideoQualityWithUpdateConfig:(id)config forParticipant:(id)participant redistributeBitrate:(BOOL *)bitrate;
- (void)updateVisibilityIndexWithUpdateConfig:(id)config forParticipant:(id)participant redistributeBitrate:(BOOL *)bitrate;
- (void)validateVCRCMLEnrollment;
- (void)vcSessionParticipant:(id)participant audioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)vcSessionParticipant:(id)participant audioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)vcSessionParticipant:(id)participant didChangeDeviceOrientation:(int)orientation;
- (void)vcSessionParticipant:(id)participant didChangeMediaPriority:(unsigned __int8)priority description:(id)description;
- (void)vcSessionParticipant:(id)participant didDetectError:(id)error;
- (void)vcSessionParticipant:(id)participant didRequestVideoRedundancy:(BOOL)redundancy;
- (void)vcSessionParticipant:(id)participant didStart:(BOOL)start error:(id)error;
- (void)vcSessionParticipant:(id)participant didStopWithError:(id)error;
- (void)vcSessionParticipant:(id)participant didSwitchFromStreamID:(unsigned __int16)d toStreamID:(unsigned __int16)iD;
- (void)vcSessionParticipant:(id)participant mediaMixingDidChangeForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType;
- (void)vcSessionParticipant:(id)participant mediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error;
- (void)vcSessionParticipant:(id)participant oneToOneModeDidChange:(BOOL)change;
- (void)vcSessionParticipant:(id)participant reactionDidStart:(id)start;
- (void)vcSessionParticipant:(id)participant remoteAudioEnabledDidChange:(BOOL)change;
- (void)vcSessionParticipant:(id)participant remoteAudioPausedDidChange:(BOOL)change;
- (void)vcSessionParticipant:(id)participant remoteMediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type;
- (void)vcSessionParticipant:(id)participant remoteScreenEnabledDidChange:(BOOL)change;
- (void)vcSessionParticipant:(id)participant remoteVideoEnabledDidChange:(BOOL)change;
- (void)vcSessionParticipant:(id)participant remoteVideoPausedDidChange:(BOOL)change;
- (void)vcSessionParticipant:(id)participant requestKeyFrameGenerationWithStreamID:(unsigned __int16)d streamGroupID:(unsigned int)iD firType:(int)type;
- (void)vcSessionParticipant:(id)participant screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)vcSessionParticipant:(id)participant videoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)vcSessionParticipant:(id)participant videoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)vcSessionParticipantDidChangeReceivingStreams:(id)streams;
- (void)vcSessionParticipantDidChangeSendingStreams:(id)streams;
- (void)vcSessionParticipantDidDetectMKICollision:(id)collision;
- (void)vcSessionParticipantDidMediaDecryptionTimeOut:(id)out;
- (void)vcSessionParticipantDidMediaDecryptionTimeOutForMKMRecovery:(id)recovery;
- (void)vcSessionParticipantDidMediaReceiveFlushRequestWithPayloads:(id)payloads;
- (void)vcSessionParticipantDidRemoteMediaStallTimeout:(id)timeout duration:(double)duration;
- (void)vcSessionParticipantDidStopReacting:(id)reacting;
- (void)vcSessionParticipantFetchStreamGroupState:(id)state;
@end

@implementation VCSession

- (VCSession)initWithIDSDestination:(id)destination configurationDict:(id)dict negotiationData:(id)data delegate:(id)delegate processId:(int)id isGKVoiceChat:(BOOL)chat
{
  chatCopy = chat;
  v117 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str[0] = 0;
    v13 = dict ? [objc_msgSend(dict "description")] : "<nil>";
    asprintf(__str, "%s", v13);
    if (__str[0])
    {
      dictCopy = dict;
      v94 = chatCopy;
      destinationCopy = destination;
      __lasts = 0;
      v14 = strtok_r(__str[0], "\n", &__lasts);
      v15 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v16;
            *&buf[12] = 2080;
            *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
            *&buf[22] = 1024;
            *&buf[24] = 202;
            *&buf[28] = 2080;
            *&buf[30] = "";
            *&buf[38] = 2080;
            *&buf[40] = v14;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v14 = strtok_r(0, "\n", &__lasts);
      }

      while (v14);
      free(__str[0]);
      destination = destinationCopy;
      chatCopy = v94;
      dict = dictCopy;
    }
  }

  v110.receiver = self;
  v110.super_class = VCSession;
  v18 = [(VCObject *)&v110 init];
  v19 = v18;
  if (v18)
  {
    if (!destination)
    {
      if (objc_opt_class() == v18)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:];
          }
        }

        goto LABEL_82;
      }

      if (objc_opt_respondsToSelector())
      {
        v34 = [(VCSession *)v19 performSelector:sel_logPrefix];
      }

      else
      {
        v34 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v56 = VRTraceErrorLogLevelToCSTR(), v57 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_82:

        return 0;
      }

      uTF8String = [0 UTF8String];
      *buf = 136316418;
      *&buf[4] = v56;
      *&buf[12] = 2080;
      *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
      *&buf[22] = 1024;
      *&buf[24] = 206;
      *&buf[28] = 2112;
      *&buf[30] = v34;
      *&buf[38] = 2048;
      *&buf[40] = v19;
      *&buf[48] = 2080;
      *&buf[50] = uTF8String;
      v59 = "VCSession [%s] %s:%d %@(%p) Unable to initialize the session. Destination=%s";
      v60 = v57;
      v61 = 58;
LABEL_98:
      _os_log_error_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_ERROR, v59, buf, v61);
      goto LABEL_82;
    }

    v18->_isGKVoiceChat = chatCopy;
    +[VCServerBag pullStoreBagKeys];
    objc_storeWeak(&v19->_delegate, delegate);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v19->_sessionQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSession.sessionQueue", 0, CustomRootQueue);
    v19->_notificationQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCSession.notificationQueue", 0, CustomRootQueue);
    v19->_state = 0;
    v21 = dispatch_semaphore_create(0);
    v19->_stopCompletedSemaphore = v21;
    dispatch_semaphore_signal(v21);
    v19->_uuid = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    v19->_idsDestination = [destination copy];
    v19->_switchFromGFTToOneToOneEnabled = _os_feature_enabled_impl();
    v22 = [[VCSessionConfiguration alloc] initWithClientDictionary:dict];
    v19->_configuration = v22;
    [(VCSessionConfiguration *)v22 setIsGKVoiceChat:chatCopy];
    v19->_siriSpatialAudioSourceID = VCUniqueIDGenerator_GenerateID();
    v19->_conversationID = [(NSString *)[(NSUUID *)[(VCSessionConfiguration *)v19->_configuration conversationID] UUIDString] copy];
    v19->_experimentManager = [[VCExperimentManager alloc] initWithSamplingUUID:[(VCSessionConfiguration *)v19->_configuration conversationID]];
    v19->_playbackSynchronizationGroupStartTime = NAN;
    +[VCVTPWrapper startVTP];
    reportingGetDefaults();
    v109 = -21846;
    LOBYTE(v109) = [(VCSessionConfiguration *)v19->_configuration isOneToOneAuthenticationTagEnabled];
    HIBYTE(v109) = [(VCSessionConfiguration *)v19->_configuration isGftTLEEnabled];
    v19->_securityKeyManager = [[VCSecurityKeyManager alloc] initWithDelegate:v19 options:&v109];
    v19->_mediaTypeToSpatialMetadataEntryMap = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v19->_detectInactiveAudioFramesAACELD = [(VCExperimentManager *)v19->_experimentManager isEnabledExperiment:@"enableInactiveAACELDFrameDetection" forceDisable:!VCFeatureFlagManager_DetectInactiveAudioFramesAACELD()];
    v91 = [(VCExperimentManager *)v19->_experimentManager isEnabledExperiment:@"enableACC24ForU1" forceDisable:!VCFeatureFlagManager_UseAudioCodecACC24ForU1()];
    v90 = [(VCExperimentManager *)v19->_experimentManager isEnabledExperiment:@"enableACC24ForGFT" forceDisable:!VCFeatureFlagManager_UseAudioCodecACC24ForGFT()];
    v19->_isServerPacketRetransmissionForVideoEnabled = +[VCSession isServerPacketRetransmissionEnabledForVideo];
    v19->_isUplinkRetransmissionForVideoEnabled = +[VCSession isUplinkRetransmissionEnabledForVideo];
    v23 = network_config_get_l4s_enabled() == 1;
    v19->_forceHighDataRateFaceTime = VCDefaults_GetBoolValueForKey(@"rateControlL4SHighDataRate", v23);
    v19->_shouldCreateSecondAggregator = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-server-should-use-second-aggregator" userDefaultKey:@"createSecondAggregatorForU1" defaultValue:MEMORY[0x1E695E118] isDoubleType:{0), "BOOLValue"}];
    v19->_isAlwaysHDCaptureEnabled = VCFeatureFlagManager_AlwaysHDCaptureEnabled();
    v19->_abSwitches = [[VCSessionSwitches alloc] initWithConversationID:[(VCSessionConfiguration *)v19->_configuration conversationID]];
    v24 = objc_alloc_init(VCSessionParticipantConfig);
    destinationCopy2 = destination;
    [(VCSessionParticipantConfig *)v24 setIdsDestination:destination];
    [(VCSessionParticipantConfig *)v24 setParticipantData:data];
    [(VCSessionParticipantConfig *)v24 setProcessId:id];
    [(VCSessionParticipantConfig *)v24 setSessionUUID:v19->_uuid];
    [(VCSessionParticipantConfig *)v24 setIsGKVoiceChat:v19->_isGKVoiceChat];
    [(VCSessionParticipantConfig *)v24 setIsLowLatencyAudio:+[VCHardwareSettings deviceClass]== 8];
    [(VCSessionParticipantConfig *)v24 setSessionMode:[(VCSessionConfiguration *)v19->_configuration sessionMode]];
    [(VCSessionParticipantConfig *)v24 setIsOneToOneModeEnabled:[(VCSessionConfiguration *)v19->_configuration isOneToOneModeEnabled]];
    [(VCSessionParticipantConfig *)v24 setExperimentManager:v19->_experimentManager];
    v19->_oneToOneModeEnabled = [(VCSessionConfiguration *)v19->_configuration isOneToOneModeEnabled];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        oneToOneModeEnabled = v19->_oneToOneModeEnabled;
        sessionMode = [(VCSessionConfiguration *)v19->_configuration sessionMode];
        serviceName = [(VCSessionConfiguration *)v19->_configuration serviceName];
        isOneToOneAuthenticationTagEnabled = [(VCSessionConfiguration *)v19->_configuration isOneToOneAuthenticationTagEnabled];
        isGftTLEEnabled = [(VCSessionConfiguration *)v19->_configuration isGftTLEEnabled];
        isP2PEncryptionEnabled = [(VCSessionConfiguration *)v19->_configuration isP2PEncryptionEnabled];
        detectInactiveAudioFramesAACELD = v19->_detectInactiveAudioFramesAACELD;
        *buf = 136317442;
        *&buf[4] = v25;
        *&buf[12] = 2080;
        *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
        *&buf[22] = 1024;
        *&buf[24] = 270;
        *&buf[28] = 1024;
        *&buf[30] = oneToOneModeEnabled;
        *&buf[34] = 2048;
        *&buf[36] = sessionMode;
        *&buf[44] = 2112;
        *&buf[46] = serviceName;
        *&buf[54] = 1024;
        *&buf[56] = isOneToOneAuthenticationTagEnabled;
        *&buf[60] = 1024;
        *&buf[62] = isGftTLEEnabled;
        *&buf[66] = 1024;
        *&buf[68] = isP2PEncryptionEnabled;
        *&buf[72] = 1024;
        *&buf[74] = detectInactiveAudioFramesAACELD;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Using the following path - oneToOneModeEnabled=%d sessionMode=%ld serviceName=%@, oneToOneAuthenticationTagEnabled=%d, gftTLEEnabled=%d, p2pEncryptionEnabled=%d, detectInactiveAudioFramesAACELD=%d", buf, 0x4Eu);
      }
    }

    [(VCSessionParticipantConfig *)v24 setSpatialMetadata:v19->_spatialMetadata];
    [(VCSessionParticipantConfig *)v24 setSpatialMetadataEntryMap:v19->_mediaTypeToSpatialMetadataEntryMap];
    [(VCSessionParticipantConfig *)v24 setSecurityKeyManager:v19->_securityKeyManager];
    [(VCSessionParticipantConfig *)v24 setIsUplinkRetransmissionEnabled:v19->_isUplinkRetransmissionForVideoEnabled];
    [(VCSessionParticipantConfig *)v24 setP2pEncryptionEnabled:[(VCSessionConfiguration *)v19->_configuration isP2PEncryptionEnabled]];
    [(VCSessionParticipantConfig *)v24 setOneToOneAuthenticationTagEnabled:[(VCSessionConfiguration *)v19->_configuration isOneToOneAuthenticationTagEnabled]];
    [(VCSessionParticipantConfig *)v24 setIsACC24ForU1Enabled:v91];
    [(VCSessionParticipantConfig *)v24 setIsACC24ForGFTEnabled:v90];
    [(VCSessionParticipantConfig *)v24 setForceL4SHighDataRate:v19->_forceHighDataRateFaceTime];
    [(VCSessionParticipantConfig *)v24 setIsHigherAudioREDCutoverU1Enabled:[(VCSessionSwitches *)v19->_abSwitches isFeatureEnabled:32]];
    [(VCSessionParticipantConfig *)v24 setIsLowBandwidthSinglePacketDuplicationEnabled:[(VCSessionSwitches *)v19->_abSwitches isFeatureEnabled:256]];
    [(VCSessionParticipantConfig *)v24 setIsLateKeyFrameDetectionEnabled:[(VCSession *)v19 isLateKeyFrameDetectionEnabled]];
    v31 = [[VCSessionParticipantLocal alloc] initWithConfig:v24 delegate:v19];
    v19->_localParticipant = v31;
    if (!v31)
    {
      if (objc_opt_class() == v19)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v35 = [(VCSession *)v19 performSelector:sel_logPrefix];
        }

        else
        {
          v35 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v66 = VRTraceErrorLogLevelToCSTR();
          v67 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v66;
            *&buf[12] = 2080;
            *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
            *&buf[22] = 1024;
            *&buf[24] = 288;
            *&buf[28] = 2112;
            *&buf[30] = v35;
            *&buf[38] = 2048;
            *&buf[40] = v19;
            _os_log_error_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) Unable to initialize the session's local participant!", buf, 0x30u);
          }
        }
      }

      goto LABEL_82;
    }

    v19->_conversationTimeBase = [(NSDate *)[(VCSessionConfiguration *)v19->_configuration conversationTimeBase] copy];
    v19->_conversationTimeBaseTruncated = [(NSDate *)[(VCSessionConfiguration *)v19->_configuration conversationTimeBaseTruncated] copy];
    [(VCSession *)v19 setParentNWActivity:[(VCSessionConfiguration *)v19->_configuration parentNWActivity]];
    v19->_nwActivity = nw_activity_create();
    if (v19->_parentNWActivity)
    {
      nw_activity_set_parent_activity();
    }

    nw_activity_activate();
    v19->_transportSessionID = [(VCSessionParticipant *)v19->_localParticipant participantVideoToken];
    v19->_vcrcMLEnrollment = objc_alloc_init(VCRateControlMLEnrollment);
    if ([+[VCDefaults forceDisableReporting] sharedInstance]
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v32;
          *&buf[12] = 2080;
          *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
          *&buf[22] = 1024;
          *&buf[24] = 319;
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Reporting agent is disabled through default.", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      memset(buf, 0, sizeof(buf));
      [(VCSession *)v19 setReportingConfig:buf];
      v106 = v114;
      v107 = v115;
      v108 = v116;
      v102 = *&buf[32];
      v103 = *&buf[48];
      v104 = *&buf[64];
      v105 = v113;
      *__str = *buf;
      v101 = *&buf[16];
      v19->super._reportingAgent = reportingCreateAgent();
      v19->_reportingModuleID = VCReporting_GetDynamicReportingModuleID();
      [(VCSession *)v19 registerQoSReporting];
      if ([(VCSessionConfiguration *)v19->_configuration isOneToOneModeEnabled])
      {
        [(VCSession *)v19 setupOneToOneAdaptiveLearning];
        [(VCSession *)v19 validateVCRCMLEnrollment];
      }

      [(VCSession *)v19 dumpVCSessionMetadataToDataStore];
    }

    [(VCExperimentManager *)v19->_experimentManager setReportingAgent:v19->super._reportingAgent];
    [(VCSecurityKeyManager *)v19->_securityKeyManager setReportingAgent:v19->super._reportingAgent];
    v19->_audioMachineLearningCoordinatorDownlink = [[VCAudioMachineLearningCoordinator alloc] initWithOneToOneEnabled:v19->_oneToOneModeEnabled isLocal:0 taskIdentifier:@"facetimecaptions" reportingAgent:v19->super._reportingAgent delegate:0];
    if (objc_opt_class() == v19)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          audioMachineLearningCoordinatorDownlink = v19->_audioMachineLearningCoordinatorDownlink;
          *buf = 136315906;
          *&buf[4] = v37;
          *&buf[12] = 2080;
          *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
          *&buf[22] = 1024;
          *&buf[24] = 327;
          *&buf[28] = 2048;
          *&buf[30] = audioMachineLearningCoordinatorDownlink;
          v40 = "VCSession [%s] %s:%d Downlink audioMachineLearningCoordinator=%p";
          v41 = v38;
          v42 = 38;
LABEL_46:
          _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v36 = [(VCSession *)v19 performSelector:sel_logPrefix];
      }

      else
      {
        v36 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v45 = v19->_audioMachineLearningCoordinatorDownlink;
          *buf = 136316418;
          *&buf[4] = v43;
          *&buf[12] = 2080;
          *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
          *&buf[22] = 1024;
          *&buf[24] = 327;
          *&buf[28] = 2112;
          *&buf[30] = v36;
          *&buf[38] = 2048;
          *&buf[40] = v19;
          *&buf[48] = 2048;
          *&buf[50] = v45;
          v40 = "VCSession [%s] %s:%d %@(%p) Downlink audioMachineLearningCoordinator=%p";
          v41 = v44;
          v42 = 58;
          goto LABEL_46;
        }
      }
    }

    v19->_connectionTimeBooster = objc_alloc_init(VCConnectionTimeBooster);
    v19->_mediaRecorder = [[VCMediaRecorder alloc] initWithStreamToken:v19->_transportSessionID delegate:v19 reportingAgent:[(VCObject *)v19 reportingAgent]];
    [+[VCMediaRecorderManager sharedInstance](VCMediaRecorderManager registerMediaRecorder:"registerMediaRecorder:withStreamToken:" withStreamToken:v19->_mediaRecorder, v19->_transportSessionID];
    [(VCSessionParticipant *)v19->_localParticipant setMediaRecorder:v19->_mediaRecorder];
    [(VCSession *)v19 setupSpatialAudio];
    [(VCSession *)v19 createSessionMessaging];
    [(VCSessionParticipant *)v19->_localParticipant setReportingAgent:v19->super._reportingAgent];
    v19->_bitrateArbiter = objc_alloc_init(VCSessionBitrateArbiter);
    [(VCSession *)v19 setupUplinkBitrateCaps];
    [(VCSessionParticipant *)v19->_localParticipant setStreamDelegate:v19];
    v19->_remoteParticipantsMapByUUID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19->_remoteParticipantsMapByServerID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19->_startingParticipants = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_stoppingParticipants = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v19->_initializingParticipants = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19->_useReducedSizeRTCP = 1;
    v19->_sessionStartTime = NAN;
    if (!v19->_oneToOneModeEnabled)
    {
      v19->_downlinkBandwidthAllocator = [[VCSessionDownlinkBandwidthAllocator alloc] initWithReportingAgent:v19->super._reportingAgent];
    }

    v19->_presentationInfo = objc_alloc_init(VCSessionPresentationInfo);
    if (![+[VCDefaults forceDisableMediaQueue] sharedInstance]
    {
      [(VCSession *)v19 createMediaQueue];
    }

    [(VCSession *)v19 setupTransportSessionWithDestination:destinationCopy2];
    [(VCSession *)v19 setupRateControllersMultiway];
    [(VCSession *)v19 setupOneToOne];
    [(VCSession *)v19 reportLocalRateControlExperimentConfiguration];
    isOneToOneModeEnabled = [(VCSessionConfiguration *)v19->_configuration isOneToOneModeEnabled];
    v47 = &OBJC_IVAR___VCSession__oneToOneSettings;
    if (!isOneToOneModeEnabled)
    {
      v47 = &OBJC_IVAR___VCSession__downlinkRateController;
    }

    -[VCConnectionManager setStatisticsCollector:](-[VCTransportSession connectionManager](v19->_transportSession, "connectionManager"), "setStatisticsCollector:", [*(&v19->super.super.isa + *v47) statisticsCollector]);
    [(VCSession *)v19 setSessionInfoSynchronizerCallbacks];
    v48 = [VCSessionStatsController alloc];
    connectionManager = [(VCTransportSession *)v19->_transportSession connectionManager];
    statisticsCollector = [(AVCRateController *)v19->_uplinkRateController statisticsCollector];
    statisticsCollector2 = [(AVCRateController *)v19->_downlinkRateController statisticsCollector];
    reportingAgent = v19->super._reportingAgent;
    transportSessionID = v19->_transportSessionID;
    LOWORD(v87) = [(VCSessionParticipantLocal *)v19->_localParticipant connectionStatsStreamID];
    v19->_sessionStatsController = [(VCSessionStatsController *)v48 initWithDelegate:v19 connectionManager:connectionManager uplinkStatsCollector:statisticsCollector downlinkStatsCollector:statisticsCollector2 reportingAgent:reportingAgent transportSessionID:transportSessionID streamID:v87 mediaQueue:v19->_mediaQueue];
    [(VCSessionParticipantLocal *)v19->_localParticipant setCellularUniqueTag:[(VCTransportSession *)v19->_transportSession basebandNotificationRegistrationToken]];
    v19->_switchManager = objc_alloc_init(VCSwitchManager);
    if (!v19->_oneToOneModeEnabled)
    {
      [(VCSession *)v19 reportingSetUserInfo];
      [(VCSession *)v19 setupMultiwayABTesting];
    }

    reportingRegisterSystemStats();
    reportingSymptomSetCallback();
    v54 = [VCSession deviceRoleForSessionMode:[(VCSessionConfiguration *)v19->_configuration sessionMode]];
    if (v19->_oneToOneModeEnabled || [(VCSessionParticipant *)v19->_localParticipant configureWithDeviceRole:v54 negotiatedVideoEnabled:0 negotiatedScreenEnabled:0 operatingMode:6])
    {
      v19->_currentConnectionType = -1;
      v19->_feedbackController = [[VCNetworkFeedbackController alloc] initWithDelegate:v19 connectionManager:[(VCTransportSession *)v19->_transportSession connectionManager] experimentManager:v19->_experimentManager];
      [(VCNetworkFeedbackController *)v19->_feedbackController setDownlinkTargetCellBitrateCap:[(VCSessionBitrateArbiter *)v19->_bitrateArbiter maxBitrateExpensiveDownlink]];
      v19->_forceDisableMediaPriority = [+[VCDefaults sharedInstance](VCDefaults forceDisableMediaPriority];
      if (objc_opt_class() == v19)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_107;
        }

        __str[0] = 0;
        v62 = [(VCSession *)v19 description]? [[(NSString *)[(VCSession *)v19 description] description] UTF8String]: "<nil>";
        asprintf(__str, "Session init %s", v62);
        if (!__str[0])
        {
          goto LABEL_107;
        }

        v97 = v54;
        __lasts = 0;
        v80 = strtok_r(__str[0], "\n", &__lasts);
        v81 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v82 = VRTraceErrorLogLevelToCSTR();
            v83 = *v81;
            if (os_log_type_enabled(*v81, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v82;
              *&buf[12] = 2080;
              *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
              *&buf[22] = 1024;
              *&buf[24] = 403;
              *&buf[28] = 2080;
              *&buf[30] = "";
              *&buf[38] = 2080;
              *&buf[40] = v80;
              _os_log_impl(&dword_1DB56E000, v83, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v80 = strtok_r(0, "\n", &__lasts);
        }

        while (v80);
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v55 = [(VCSession *)v19 performSelector:sel_logPrefix];
        }

        else
        {
          v55 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_107;
        }

        __str[0] = 0;
        uTF8String2 = [(__CFString *)v55 UTF8String];
        v65 = [(VCSession *)v19 description]? [[(NSString *)[(VCSession *)v19 description] description] UTF8String]: "<nil>";
        asprintf(__str, "%s(%p) Session init %s", uTF8String2, v19, v65);
        if (!__str[0])
        {
          goto LABEL_107;
        }

        v97 = v54;
        __lasts = 0;
        v72 = strtok_r(__str[0], "\n", &__lasts);
        v73 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v74 = VRTraceErrorLogLevelToCSTR();
            v75 = *v73;
            if (os_log_type_enabled(*v73, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v74;
              *&buf[12] = 2080;
              *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
              *&buf[22] = 1024;
              *&buf[24] = 403;
              *&buf[28] = 2080;
              *&buf[30] = "";
              *&buf[38] = 2080;
              *&buf[40] = v72;
              _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v72 = strtok_r(0, "\n", &__lasts);
        }

        while (v72);
      }

      free(__str[0]);
      v54 = v97;
LABEL_107:
      [(VCConnectionManager *)[(VCTransportSession *)v19->_transportSession connectionManager] setCellPrimaryInterfaceChangeEnabled:1];
      [(VCConnectionManager *)[(VCTransportSession *)v19->_transportSession connectionManager] setShouldLimitMultiwayBandwidthWhenConstrained:[(VCSessionSwitches *)v19->_abSwitches isFeatureEnabled:2]];
      v84 = v19->_oneToOneModeEnabled;
      connectionManager2 = [(VCTransportSession *)v19->_transportSession connectionManager];
      if (v84)
      {
        [(VCConnectionManager *)connectionManager2 setDefaultLinkProbingCapabilityVersionForDeviceRole:v54];
      }

      else
      {
        [(VCConnectionManager *)connectionManager2 setiRATDuplicationEnabled:1];
        [(VCConnectionHealthMonitor *)[(VCConnectionManager *)[(VCTransportSession *)v19->_transportSession connectionManager] connectionHealthMonitor] setUsingServerBasedLinks:1];
      }

      v19->_forceFixedEncryptionLabel = [VCDefaults BOOLeanValueForKey:@"controlChannelV2ForceFixedEncryptionLabel" defaultValue:0];
      v19->_isSSRCCollisionDetectionEnabled = ![+[VCDefaults sharedInstance](VCDefaults forceDisableSSRCCollisionDetection];
      [(VCSession *)v19 reportClientPersistentSettings];
      [(VCSession *)v19 reportingSessionParticipantEvent:163 withParticipant:0];
      kdebug_trace();
      [+[VCEffectsManager sharedManager](VCEffectsManager "sharedManager")];
      [(VCSession *)v19 registerForThermalFeatureNotifications];
      [VCPowerManager_DefaultManager() registerForThermalEvents:v19];
      v19->_isDNUCollectionEnabled = [objc_msgSend(MEMORY[0x1E69B7C10] "sharedInstance")];
      return v19;
    }

    if (objc_opt_class() == v19)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_82;
      }

      v68 = VRTraceErrorLogLevelToCSTR();
      v69 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      uTF8String3 = [destinationCopy2 UTF8String];
      localParticipant = v19->_localParticipant;
      *buf = 136316162;
      *&buf[4] = v68;
      *&buf[12] = 2080;
      *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
      *&buf[22] = 1024;
      *&buf[24] = 393;
      *&buf[28] = 2080;
      *&buf[30] = uTF8String3;
      *&buf[38] = 2048;
      *&buf[40] = localParticipant;
      v59 = "VCSession [%s] %s:%d Unable to configure local participant streams for the session. Destination=%s localParticipant=%p";
      v60 = v69;
      v61 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v63 = [(VCSession *)v19 performSelector:sel_logPrefix];
      }

      else
      {
        v63 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_82;
      }

      v76 = VRTraceErrorLogLevelToCSTR();
      v77 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      uTF8String4 = [destinationCopy2 UTF8String];
      v79 = v19->_localParticipant;
      *buf = 136316674;
      *&buf[4] = v76;
      *&buf[12] = 2080;
      *&buf[14] = "[VCSession initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:]";
      *&buf[22] = 1024;
      *&buf[24] = 393;
      *&buf[28] = 2112;
      *&buf[30] = v63;
      *&buf[38] = 2048;
      *&buf[40] = v19;
      *&buf[48] = 2080;
      *&buf[50] = uTF8String4;
      *&buf[58] = 2048;
      *&buf[60] = v79;
      v59 = "VCSession [%s] %s:%d %@(%p) Unable to configure local participant streams for the session. Destination=%s localParticipant=%p";
      v60 = v77;
      v61 = 68;
    }

    goto LABEL_98;
  }

  return v19;
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

- (void)dealloc
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v4 = [(VCSession *)self description]? [[(NSString *)[(VCSession *)self description] description] UTF8String]: "<nil>";
      asprintf(&__str, "Session dealloc %s", v4);
      if (__str)
      {
        __lasts = 0;
        v11 = strtok_r(__str, "\n", &__lasts);
        v12 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v24 = v13;
              v25 = 2080;
              v26 = "[VCSession dealloc]";
              v27 = 1024;
              v28 = 438;
              v29 = 2080;
              v30 = "";
              v31 = 2080;
              v32 = v11;
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v11 = strtok_r(0, "\n", &__lasts);
        }

        while (v11);
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      uTF8String = [(__CFString *)v3 UTF8String];
      v6 = [(VCSession *)self description]? [[(NSString *)[(VCSession *)self description] description] UTF8String]: "<nil>";
      asprintf(&__str, "%s(%p) Session dealloc %s", uTF8String, self, v6);
      if (__str)
      {
        __lasts = 0;
        v7 = strtok_r(__str, "\n", &__lasts);
        v8 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v24 = v9;
              v25 = 2080;
              v26 = "[VCSession dealloc]";
              v27 = 1024;
              v28 = 438;
              v29 = 2080;
              v30 = "";
              v31 = 2080;
              v32 = v7;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v7 = strtok_r(0, "\n", &__lasts);
        }

        while (v7);
LABEL_26:
        free(__str);
      }
    }
  }

  [(VCSession *)self unregisterQoSReporting];
  [(VCSession *)self cleanUpMediaRecorder];
  [(VCSession *)self cleanupOneToOne];
  [(VCSession *)self cleanupSpatialAudio];

  mediaTypeToSpatialMetadataEntryMap = self->_mediaTypeToSpatialMetadataEntryMap;
  if (mediaTypeToSpatialMetadataEntryMap)
  {
    CFRelease(mediaTypeToSpatialMetadataEntryMap);
  }

  self->_remoteParticipantsMapByUUID = 0;
  [(VCSessionParticipant *)self->_localParticipant setStreamDelegate:0];

  self->_localParticipant = 0;
  [(VCSession *)self destroySessionMessaging];

  mediaQueue = self->_mediaQueue;
  if (mediaQueue)
  {
    CFRelease(mediaQueue);
  }

  sessionQueue = self->_sessionQueue;
  if (sessionQueue)
  {
    dispatch_release(sessionQueue);
    self->_sessionQueue = 0;
  }

  notificationQueue = self->_notificationQueue;
  if (notificationQueue)
  {
    dispatch_release(notificationQueue);
    self->_notificationQueue = 0;
  }

  stopCompletedSemaphore = self->_stopCompletedSemaphore;
  if (stopCompletedSemaphore)
  {
    dispatch_release(stopCompletedSemaphore);
    self->_stopCompletedSemaphore = 0;
  }

  objc_storeWeak(&self->_delegate, 0);

  [(VCSession *)self cleanupNwActivity];
  [(VCSession *)self cleanupVCRC];

  +[VCVTPWrapper stopVTP];
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorDownlink invalidate];

  reportingReleaseObject();
  [+[VCEffectsManager sharedManager](VCEffectsManager "sharedManager")];
  [(VCSession *)self deregisterForThermalFeatureNotifications];
  [VCPowerManager_DefaultManager() unregisterForThermalEvents:self];

  v20.receiver = self;
  v20.super_class = VCSession;
  [(VCObject *)&v20 dealloc];
}

- (void)setReportingConfig:(id *)config
{
  if (config)
  {
    config->var0 = self->_transportSessionID;
    config->var1 = self->_conversationID;
    config->var2 = self->_conversationTimeBase;
    config->var5 = [(VCSessionConfiguration *)self->_configuration reportingHierarchyToken];
    config->var6 = [(VCSession *)self nwActivity];
    config->var7 = [(VCSession *)self configurationSpecificReportingClientName];
    config->var8 = [(VCSession *)self configurationSpecificReportingServiceName];
    config->var10 = [(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] deviceType];
    config->var9 = [(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] osVersion];
    config->var4 = [(VCSessionConfiguration *)self->_configuration isOneToOneModeEnabled];
    config->var11 = [(VCSession *)self getClientSpecificUserInfo];
    v5 = 5;
    if (![VCDefaults BOOLeanValueForKey:@"useAggregatorMultiwayforU1" defaultValue:1])
    {
      if ([(VCSessionConfiguration *)self->_configuration isOneToOneModeEnabled])
      {
        v5 = 0;
      }

      else
      {
        v5 = 5;
      }
    }

    self->_reportingClientType = v5;
    config->var3 = v5;
    config->var12 = &__block_literal_global_54;
    config->var14 = self->_shouldCreateSecondAggregator;
    [(VCSession *)self readAndSetABCSymptomsReportingThresholdsFromStorebags:config];

    [(VCSession *)self enableDataCollectionInReportingConfig:config];
  }

  else
  {
    [VCSession setReportingConfig:?];
  }
}

- (void)dumpVCSessionMetadataToDataStore
{
  [(VCSessionParticipant *)self->_localParticipant uuid];
  +[VCHardwareSettings deviceClass];
  VCReporting_DumpIntoDataStore();
}

- (void)sendVCRCMLReportingEnrollmentEvent
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"VCRCMLMID";
  if ([(VCRateControlMLEnrollment *)self->_vcrcMLEnrollment trialModelID])
  {
    trialModelID = [(VCRateControlMLEnrollment *)self->_vcrcMLEnrollment trialModelID];
  }

  else
  {
    trialModelID = &stru_1F570E008;
  }

  v6[0] = trialModelID;
  v5[1] = @"VCRCMLRID";
  if ([(VCRateControlMLEnrollment *)self->_vcrcMLEnrollment recipeID])
  {
    recipeID = [(VCRateControlMLEnrollment *)self->_vcrcMLEnrollment recipeID];
  }

  else
  {
    recipeID = &stru_1F570E008;
  }

  v6[1] = recipeID;
  v5[2] = @"VCRCMLNI";
  v6[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCRateControlMLEnrollment nIteration](self->_vcrcMLEnrollment, "nIteration")}];
  v5[3] = @"VCRCMLRG";
  v6[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCRateControlMLEnrollment reportingGroup](self->_vcrcMLEnrollment, "reportingGroup")}];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  reportingGenericEvent();
}

- (void)stopTimeoutTimer
{
  v4 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_signal(self->_stopCompletedSemaphore);
  v3.receiver = self;
  v3.super_class = VCSession;
  [(VCObject *)&v3 stopTimeoutTimer];
}

- (void)startDeallocTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (NSDictionary)capabilities
{
  v16 = *MEMORY[0x1E69E9840];
  maxActiveVideoDecoders = [+[VCHardwareSettingsEmbedded sharedInstance](VCHardwareSettingsEmbedded maxActiveVideoDecoders];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCSession capabilities]";
      v12 = 1024;
      v13 = 608;
      v14 = 1024;
      v15 = maxActiveVideoDecoders;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d maxActiveVideoDecodes=%d", buf, 0x22u);
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{maxActiveVideoDecoders, @"avcKeySupportedMaxVideoDecodes"}];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
}

- (NSDictionary)transportMetadata
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = 0;
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] getSentBytes:&v4 receivedBytes:&v3];
  v5[0] = @"avcKeySessionSentBytes";
  v6[0] = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  v5[1] = @"avcKeySessionReceivedBytes";
  v6[1] = [MEMORY[0x1E696AD98] numberWithLongLong:v3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
}

- (void)setTransportConnectionSelectionVersionWithLocalFrameWorkVersion:(id)version remoteFrameworkVersion:(id)frameworkVersion
{
  [(VCTransportSession *)self->_transportSession setConnectionSelectionVersionWithLocalFrameworkVersion:version remoteFrameworkVersion:frameworkVersion];
  if (self->_oneToOneModeEnabled)
  {
    connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];

    [(VCConnectionManager *)connectionManager setOptIntoExistingSubscribedStreams:1];
  }
}

- (int)selectDataPath
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [VCDefaults integerValueForKey:@"datagramChannelIDSDataPath" defaultValue:_os_feature_enabled_impl()];
  if (v2 >= 2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136316418;
        v7 = v3;
        v8 = 2080;
        v9 = "[VCSession selectDataPath]";
        v10 = 1024;
        v11 = 637;
        v12 = 1024;
        v13 = v2;
        v14 = 2112;
        v15 = @"datagramChannelIDSDataPath";
        v16 = 1024;
        v17 = 0;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Wrong value=%d read from user default [%@]. Resetting it to default value=%d", &v6, 0x32u);
      }
    }

    return 0;
  }

  return v2;
}

- (void)setupTransportSessionWithDestination:(id)destination
{
  v18 = *MEMORY[0x1E69E9840];
  selectDataPath = [(VCSession *)self selectDataPath];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"direct";
      *v14 = 136315906;
      *&v14[4] = v6;
      *&v14[12] = 2080;
      *&v14[14] = "[VCSession setupTransportSessionWithDestination:]";
      if (!selectDataPath)
      {
        v8 = @"shared";
      }

      *&v14[22] = 1024;
      v15 = 645;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Session will use [%@] data path", v14, 0x26u);
    }
  }

  v9 = [[VCTransportSessionIDSMultiLink alloc] initWithCallID:self->_transportSessionID requireEncryptionInfo:1 reportingAgent:self->super._reportingAgent notificationQueue:self->_sessionQueue isMultiwaySession:1 dataPath:selectDataPath];
  reportingSetDataPath();
  [(VCTransportSession *)v9 setPerfTimings:objc_alloc_init(MEMORY[0x1E6986620])];
  [(VCTransportSessionIDS *)v9 setDestination:destination];
  self->_transportSession = &v9->super.super;
  [(VCConnectionManager *)[(VCTransportSession *)v9 connectionManager] setIsOneToOneModeEnabled:self->_oneToOneModeEnabled];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setGftTLEEnabled:[(VCSessionConfiguration *)self->_configuration isGftTLEEnabled]];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setP2pEncryptionExperimentEnabled:[(VCSessionConfiguration *)self->_configuration isP2PEncryptionEnabled]];
  if (self->_oneToOneModeEnabled)
  {
    v10 = @"2045";
    selfCopy2 = self;
    frameworkVersion2 = @"2045";
  }

  else
  {
    frameworkVersion = [(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion];
    frameworkVersion2 = [(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion];
    selfCopy2 = self;
    v10 = frameworkVersion;
  }

  [(VCSession *)selfCopy2 setTransportConnectionSelectionVersionWithLocalFrameWorkVersion:v10 remoteFrameworkVersion:frameworkVersion2, *v14, *&v14[16]];
}

- (void)setState:(unsigned int)state
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    v3 = *&state;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v8 = [(VCSession *)self sessionStateToString:self->_state];
      v15 = 136316162;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCSession setState:]";
      v19 = 1024;
      v20 = 663;
      v21 = 2080;
      v22 = v8;
      v23 = 2080;
      selfCopy = [(VCSession *)self sessionStateToString:v3];
      v9 = "VCSession [%s] %s:%d Exiting state session %s. Entering state session %s.";
      v10 = v7;
      v11 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v14 = [(VCSession *)self sessionStateToString:self->_state];
      v15 = 136316674;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCSession setState:]";
      v19 = 1024;
      v20 = 663;
      v21 = 2112;
      v22 = v5;
      v23 = 2048;
      selfCopy = self;
      v25 = 2080;
      v26 = v14;
      v27 = 2080;
      v28 = [(VCSession *)self sessionStateToString:v3];
      v9 = "VCSession [%s] %s:%d %@(%p) Exiting state session %s. Entering state session %s.";
      v10 = v13;
      v11 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
LABEL_13:
    self->_state = v3;
  }
}

- (char)sessionStateToString:(unsigned int)string
{
  if (string - 1 > 3)
  {
    return "Stopped";
  }

  else
  {
    return off_1E85F7A68[string - 1];
  }
}

- (void)addParticipantConfigurations:(id)configurations
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCSession_addParticipantConfigurations___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = configurations;
  dispatch_async(sessionQueue, block);
}

- (void)removeParticipant:(id)participant
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__VCSession_removeParticipant___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = participant;
  dispatch_async(sessionQueue, block);
}

- (VCSessionParticipantRemote)oneToOneRemoteParticipant
{
  remoteParticipants = [(VCSession *)self remoteParticipants];

  return [(NSArray *)remoteParticipants firstObject];
}

- (void)start
{
  v4[5] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  sessionQueue = self->_sessionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __18__VCSession_start__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(sessionQueue, v4);
}

- (void)stopWithError:(id)error
{
  kdebug_trace();

  [(VCSession *)self stopWithError:error didRemoteCancel:0];
}

- (void)stopWithError:(id)error didRemoteCancel:(BOOL)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__VCSession_stopWithError_didRemoteCancel___block_invoke;
  v5[3] = &unk_1E85F37C8;
  v5[4] = self;
  v5[5] = error;
  cancelCopy = cancel;
  dispatch_async(sessionQueue, v5);
}

- (void)updateConfiguration:(id)configuration
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__VCSession_updateConfiguration___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = configuration;
  dispatch_async(sessionQueue, block);
}

uint64_t __33__VCSession_updateConfiguration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dispatchedUpdateConfiguration:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reportingSessionParticipantEvent:169 withParticipant:0];
}

- (id)participantForID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__15;
  sessionQueue = self->_sessionQueue;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__VCSession_participantForID___block_invoke;
  v6[3] = &unk_1E85F6638;
  v6[4] = d;
  v6[5] = self;
  v6[6] = &v7;
  dispatch_sync(sessionQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __30__VCSession_participantForID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:{objc_msgSend(*(*(a1 + 40) + 240), "uuid")}];
  v3 = *(a1 + 40);
  if (v2)
  {
    result = *(v3 + 240);
  }

  else
  {
    result = [*(v3 + 248) objectForKeyedSubscript:*(a1 + 32)];
  }

  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)mediaStateChangedForParticipant:(id)participant
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCSession mediaStateChangedForParticipant:]";
      v11 = 1024;
      v12 = 749;
      v13 = 2112;
      uuid = [participant uuid];
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d uuid:%@", &v7, 0x26u);
    }
  }

  if (!self->_oneToOneModeEnabled)
  {
    [(VCSession *)self distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:1];
  }
}

- (void)setParentNWActivity:(id)activity
{
  parentNWActivity = self->_parentNWActivity;
  if (parentNWActivity)
  {
    nw_release(parentNWActivity);
  }

  self->_parentNWActivity = activity;
  if (activity)
  {

    nw_retain(activity);
  }
}

- (__CFString)configurationSpecificReportingServiceName
{
  serviceName = [(VCSessionConfiguration *)self->_configuration serviceName];
  configuration = self->_configuration;
  if (serviceName)
  {
    if ([(NSString *)[(VCSessionConfiguration *)configuration serviceName] isEqualToString:@"com.apple.private.alloy.dropin.communication"])
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = "dropin";
LABEL_14:

      return [v5 stringWithUTF8String:v6];
    }

    v8 = self->_configuration;

    return [(VCSessionConfiguration *)v8 serviceName];
  }

  else
  {
    if ([(VCSessionConfiguration *)configuration sessionMode]== 3)
    {
      return *MEMORY[0x1E6986788];
    }

    if (![(VCSessionConfiguration *)self->_configuration isOneToOneModeEnabled])
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = "session";
      goto LABEL_14;
    }

    return [(VCSession *)self configurationSpecificReportingServiceNameOneToOne];
  }
}

- (id)configurationSpecificReportingServiceNameOneToOne
{
  if ([(VCRateControlMLEnrollment *)self->_vcrcMLEnrollment shouldGenerateLocalTrainingData])
  {
    v2 = "twowayforced";
  }

  else
  {
    v2 = "twoway";
  }

  v3 = MEMORY[0x1E696AEC0];

  return [v3 stringWithUTF8String:v2];
}

- (__CFString)configurationSpecificReportingClientName
{
  v2 = *MEMORY[0x1E6986730];
  serviceName = [(VCSessionConfiguration *)self->_configuration serviceName];
  if ([(NSString *)serviceName isEqualToString:*MEMORY[0x1E6986788]])
  {
    return *MEMORY[0x1E6986780];
  }

  else
  {
    return v2;
  }
}

- (void)reportingSetUserInfo
{
  [(VCSession *)self configurationSpecificReportingClientName];
  [(VCSession *)self configurationSpecificReportingServiceName];
  [(VCSession *)self getClientSpecificUserInfo];
  reportingSetUserInfo();
}

- (void)setOneToOneModeEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__VCSession_setOneToOneModeEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(sessionQueue, block);
}

- (void)setOneToOneModeEnabled:(BOOL)enabled configurationDict:(id)dict
{
  v7 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__VCSession_setOneToOneModeEnabled_configurationDict___block_invoke;
  v5[3] = &unk_1E85F37C8;
  enabledCopy = enabled;
  v5[4] = self;
  v5[5] = dict;
  dispatch_async(sessionQueue, v5);
}

- (void)setRemoteScreenControlEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCSession_setRemoteScreenControlEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(sessionQueue, block);
}

- (void)generateKeyFrameWithReceivedMessage:(id)message forParticipant:(id)participant
{
  v5[7] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__VCSession_generateKeyFrameWithReceivedMessage_forParticipant___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = self;
  v5[5] = participant;
  v5[6] = message;
  dispatch_async(sessionQueue, v5);
}

void __64__VCSession_generateKeyFrameWithReceivedMessage_forParticipant___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "remoteParticipantsMapByServerID")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(v5 + 200);
      v8 = *(v5 + 336);
      v9 = [v2 uuid];
      v10 = *(a1 + 48);
      v16 = 136316930;
      v17 = v3;
      v18 = 2080;
      v19 = "[VCSession generateKeyFrameWithReceivedMessage:forParticipant:]_block_invoke";
      v20 = 1024;
      v21 = 842;
      v22 = 2112;
      v23 = v7;
      v24 = 1024;
      v25 = v8;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d VCSession[%@] transportSessionID[%u] idsParticipantID[%@] participantUUID[%@] receives message[%@]", &v16, 0x4Au);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = [objc_msgSend(v11 objectForKeyedSubscript:{@"VCSessionMessageStreamID", "unsignedIntValue"}];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    if ([*(a1 + 48) objectForKeyedSubscript:@"VCSessionMessageFIRType"])
    {
      v14 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"VCSessionMessageFIRType", "unsignedIntValue"}];
    }

    else
    {
      v14 = 0;
    }

    if ([*(a1 + 48) objectForKeyedSubscript:@"VCSessionMesageStreamGroupID"])
    {
      v15 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"VCSessionMesageStreamGroupID", "unsignedIntValue"}];
    }

    else
    {
      v15 = 0;
    }

    [*(a1 + 32) reportingSessionParticipantEvent:233 withParticipant:v2 streamGroupID:v15 streamID:v12];
    [*(*(a1 + 32) + 240) generateKeyFrameWithStreamID:v13 streamGroupID:v15 firType:v14];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __64__VCSession_generateKeyFrameWithReceivedMessage_forParticipant___block_invoke_cold_1();
    }
  }
}

- (void)setSharingEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__VCSession_setSharingEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(sessionQueue, block);
}

- (void)setScreenAndCameraMixingEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCSession_setScreenAndCameraMixingEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(sessionQueue, block);
}

- (void)dispatchedSetSharingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v52 = *MEMORY[0x1E69E9840];
  sharingEnabled = self->_sharingEnabled;
  v6 = objc_opt_class();
  if (sharingEnabled != enabledCopy)
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
      v41 = v14;
      v42 = 2080;
      v43 = "[VCSession dispatchedSetSharingEnabled:]";
      v44 = 1024;
      v45 = 878;
      v46 = 1024;
      LODWORD(v47) = enabledCopy;
      v16 = "VCSession [%s] %s:%d changing _sharingEnabled to %d";
      v17 = v15;
      v18 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
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
      v41 = v21;
      v42 = 2080;
      v43 = "[VCSession dispatchedSetSharingEnabled:]";
      v44 = 1024;
      v45 = 878;
      v46 = 2112;
      v47 = v8;
      v48 = 2048;
      selfCopy3 = self;
      v50 = 1024;
      v51 = enabledCopy;
      v16 = "VCSession [%s] %s:%d %@(%p) changing _sharingEnabled to %d";
      v17 = v22;
      v18 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_24:
    self->_sharingEnabled = enabledCopy;
    [(VCSessionParticipant *)self->_localParticipant setSharingEnabled:enabledCopy];
    v38[0] = @"VCSPExpanseEnabled";
    v38[1] = @"VCSPUUID";
    v39[0] = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v39[1] = [(VCSessionParticipant *)self->_localParticipant uuid];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    reportingGenericEvent();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    selfCopy2 = self;
    remoteParticipants = [(VCSession *)self remoteParticipants];
    v25 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(remoteParticipants);
          }

          v29 = *(*(&v34 + 1) + 8 * i);
          [v29 setSharingEnabled:enabledCopy];
          v31[0] = @"VCSPExpanseEnabled";
          v30 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
          v31[1] = @"VCSPUUID";
          v32[0] = v30;
          v32[1] = [v29 uuid];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
          reportingGenericEvent();
        }

        v26 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v26);
    }

    if (!selfCopy2->_oneToOneModeEnabled)
    {
      [(VCSession *)selfCopy2 distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:0];
    }

    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    [(VCSession *)selfCopy2 updateLocalVideoCaptureFrameRate];
    return;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v41 = v9;
        v42 = 2080;
        v43 = "[VCSession dispatchedSetSharingEnabled:]";
        v44 = 1024;
        v45 = 897;
        v46 = 1024;
        LODWORD(v47) = enabledCopy;
        v11 = "VCSession [%s] %s:%d _sharingEnabled already %d";
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
      v7 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v41 = v19;
        v42 = 2080;
        v43 = "[VCSession dispatchedSetSharingEnabled:]";
        v44 = 1024;
        v45 = 897;
        v46 = 2112;
        v47 = v7;
        v48 = 2048;
        selfCopy3 = self;
        v50 = 1024;
        v51 = enabledCopy;
        v11 = "VCSession [%s] %s:%d %@(%p) _sharingEnabled already %d";
        v12 = v20;
        v13 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)configureSessionForLowPowerMode:(BOOL)mode
{
  v6 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCSession_configureSessionForLowPowerMode___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  modeCopy = mode;
  dispatch_async(sessionQueue, block);
}

- (void)applyVideoCaptureServerMitigationsForLowPowerMode
{
  dispatch_assert_queue_V2(self->_sessionQueue);
  v3 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  v4 = !self->_lowPowerModeEnabled;

  [v3 setViewPointCorrectionEnabled:v4];
}

- (void)dispatchedConfigureSessionForLowPowerMode:(BOOL)mode
{
  modeCopy = mode;
  v45 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  lowPowerModeEnabled = self->_lowPowerModeEnabled;
  v6 = objc_opt_class();
  if (lowPowerModeEnabled != modeCopy)
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
      v34 = v14;
      v35 = 2080;
      v36 = "[VCSession dispatchedConfigureSessionForLowPowerMode:]";
      v37 = 1024;
      v38 = 917;
      v39 = 1024;
      LODWORD(v40) = modeCopy;
      v16 = "VCSession [%s] %s:%d changing _lowPowerModeEnabled to %d";
      v17 = v15;
      v18 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
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
      v34 = v21;
      v35 = 2080;
      v36 = "[VCSession dispatchedConfigureSessionForLowPowerMode:]";
      v37 = 1024;
      v38 = 917;
      v39 = 2112;
      v40 = v8;
      v41 = 2048;
      selfCopy2 = self;
      v43 = 1024;
      v44 = modeCopy;
      v16 = "VCSession [%s] %s:%d %@(%p) changing _lowPowerModeEnabled to %d";
      v17 = v22;
      v18 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_24:
    self->_lowPowerModeEnabled = modeCopy;
    [(VCSessionParticipantLocal *)self->_localParticipant setLowPowerModeEnabled:modeCopy];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    remoteParticipants = [(VCSession *)self remoteParticipants];
    v24 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v30;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(remoteParticipants);
          }

          [*(*(&v29 + 1) + 8 * i) setLowPowerModeEnabled:modeCopy];
        }

        v25 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v25);
    }

    [(VCSession *)self applyVideoCaptureServerMitigationsForLowPowerMode];
    [(VCSession *)self updateLocalVideoCaptureFrameRate];
    return;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v34 = v9;
        v35 = 2080;
        v36 = "[VCSession dispatchedConfigureSessionForLowPowerMode:]";
        v37 = 1024;
        v38 = 927;
        v39 = 1024;
        LODWORD(v40) = modeCopy;
        v11 = "VCSession [%s] %s:%d _lowPowerModeEnabled already %d";
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
      v7 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v34 = v19;
        v35 = 2080;
        v36 = "[VCSession dispatchedConfigureSessionForLowPowerMode:]";
        v37 = 1024;
        v38 = 927;
        v39 = 2112;
        v40 = v7;
        v41 = 2048;
        selfCopy2 = self;
        v43 = 1024;
        v44 = modeCopy;
        v11 = "VCSession [%s] %s:%d %@(%p) _lowPowerModeEnabled already %d";
        v12 = v20;
        v13 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)dispatchedSetScreenAndCameraMixingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  screenAndCameraMixingEnabled = self->_screenAndCameraMixingEnabled;
  v6 = objc_opt_class();
  if (screenAndCameraMixingEnabled != enabledCopy)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6 || (v14 = VRTraceErrorLogLevelToCSTR(), v15 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_24:
        self->_screenAndCameraMixingEnabled = enabledCopy;
        if (enabledCopy)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        [(VCSessionParticipant *)self->_localParticipant setMediaType:2 mixingWithMediaType:v23, *v24, *&v24[16], v25, selfCopy2, v27, v28];
        return;
      }

      *v24 = 136315906;
      *&v24[4] = v14;
      *&v24[12] = 2080;
      *&v24[14] = "[VCSession dispatchedSetScreenAndCameraMixingEnabled:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 934;
      WORD2(v25) = 1024;
      *(&v25 + 6) = enabledCopy;
      v16 = "VCSession [%s] %s:%d changing _screenAndCameraMixingEnabled=%d";
      v17 = v15;
      v18 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_24;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *v24 = 136316418;
      *&v24[4] = v21;
      *&v24[12] = 2080;
      *&v24[14] = "[VCSession dispatchedSetScreenAndCameraMixingEnabled:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 934;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v8;
      HIWORD(v25) = 2048;
      selfCopy2 = self;
      LOWORD(v27) = 1024;
      *(&v27 + 2) = enabledCopy;
      v16 = "VCSession [%s] %s:%d %@(%p) changing _screenAndCameraMixingEnabled=%d";
      v17 = v22;
      v18 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, v24, v18);
    goto LABEL_24;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136315906;
        *&v24[4] = v9;
        *&v24[12] = 2080;
        *&v24[14] = "[VCSession dispatchedSetScreenAndCameraMixingEnabled:]";
        *&v24[22] = 1024;
        LODWORD(v25) = 942;
        WORD2(v25) = 1024;
        *(&v25 + 6) = enabledCopy;
        v11 = "VCSession [%s] %s:%d _screenAndCameraMixingEnabled=%d already";
        v12 = v10;
        v13 = 34;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v24, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136316418;
        *&v24[4] = v19;
        *&v24[12] = 2080;
        *&v24[14] = "[VCSession dispatchedSetScreenAndCameraMixingEnabled:]";
        *&v24[22] = 1024;
        LODWORD(v25) = 942;
        WORD2(v25) = 2112;
        *(&v25 + 6) = v7;
        HIWORD(v25) = 2048;
        selfCopy2 = self;
        LOWORD(v27) = 1024;
        *(&v27 + 2) = enabledCopy;
        v11 = "VCSession [%s] %s:%d %@(%p) _screenAndCameraMixingEnabled=%d already";
        v12 = v20;
        v13 = 54;
        goto LABEL_18;
      }
    }
  }
}

- (void)sendStreamGroupStateToParticipant:(id)participant
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCSession_sendStreamGroupStateToParticipant___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = participant;
  block[5] = self;
  dispatch_async(sessionQueue, block);
}

uint64_t __47__VCSession_sendStreamGroupStateToParticipant___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 != *(result + 240) && *(result + 168) == 3)
  {
    return [result messageMediaInitialStateToParticipant:?];
  }

  return result;
}

- (int)getStorebagValueForIntegerKey:(id)key defaultValue:(id)value
{
  v4 = [GKSConnectivitySettings readStorebagValueForStorebagKey:key userDefaultKey:0 defaultValue:value isDoubleType:0];

  return [v4 intValue];
}

- (void)readAndSetABCSymptomsReportingThresholdsFromStorebags:(id *)storebags
{
  v40 = *MEMORY[0x1E69E9840];
  if (storebags)
  {
    storebags->var15.var0 = [(VCSession *)self getStorebagValueForIntegerKey:@"vc-reporting-audio-connection-time-symptom-threshold" defaultValue:&unk_1F579A068];
    storebags->var15.var1 = [(VCSession *)self getStorebagValueForIntegerKey:@"vc-reporting-audio-erasure-percentage-symptom-threshold" defaultValue:&unk_1F579A068];
    storebags->var15.var2 = [(VCSession *)self getStorebagValueForIntegerKey:@"vc-reporting-poor-connection-percentage-symptom-threshold" defaultValue:&unk_1F579A068];
    storebags->var15.var3 = [(VCSession *)self getStorebagValueForIntegerKey:@"vc-reporting-video-connection-time-symptom-threshold" defaultValue:&unk_1F579A068];
    storebags->var15.var4 = [(VCSession *)self getStorebagValueForIntegerKey:@"vc-reporting-video-stall-percentage-symptom-threshold" defaultValue:&unk_1F579A068];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          var0 = storebags->var15.var0;
          var1 = storebags->var15.var1;
          var2 = storebags->var15.var2;
          var3 = storebags->var15.var3;
          var4 = storebags->var15.var4;
          v23 = 136316930;
          v24 = v6;
          v25 = 2080;
          v26 = "[VCSession readAndSetABCSymptomsReportingThresholdsFromStorebags:]";
          v27 = 1024;
          v28 = 970;
          v29 = 1024;
          *v30 = var0;
          *&v30[4] = 1024;
          *&v30[6] = var1;
          LOWORD(selfCopy) = 1024;
          *(&selfCopy + 2) = var2;
          HIWORD(selfCopy) = 1024;
          *v32 = var3;
          *&v32[4] = 1024;
          *v33 = var4;
          v13 = "VCSession [%s] %s:%d Threshold values: audioConnectionTimeThreshold=%d, audioErasurePercentageThreshold=%d, poorConnectionPercentageThreshold=%d, videoConnectionTimeThreshold=%d, videoStallPercentageThreshold=%d";
          v14 = v7;
          v15 = 58;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v23, v15);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = storebags->var15.var0;
          v19 = storebags->var15.var1;
          v20 = storebags->var15.var2;
          v21 = storebags->var15.var3;
          v22 = storebags->var15.var4;
          v23 = 136317442;
          v24 = v16;
          v25 = 2080;
          v26 = "[VCSession readAndSetABCSymptomsReportingThresholdsFromStorebags:]";
          v27 = 1024;
          v28 = 970;
          v29 = 2112;
          *v30 = v5;
          *&v30[8] = 2048;
          selfCopy = self;
          *v32 = 1024;
          *&v32[2] = v18;
          *v33 = 1024;
          *&v33[2] = v19;
          v34 = 1024;
          v35 = v20;
          v36 = 1024;
          v37 = v21;
          v38 = 1024;
          v39 = v22;
          v13 = "VCSession [%s] %s:%d %@(%p) Threshold values: audioConnectionTimeThreshold=%d, audioErasurePercentageThreshold=%d, poorConnectionPercentageThreshold=%d, videoConnectionTimeThreshold=%d, videoStallPercentageThreshold=%d";
          v14 = v17;
          v15 = 78;
          goto LABEL_15;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSession readAndSetABCSymptomsReportingThresholdsFromStorebags:];
    }
  }
}

- (void)reportNearbyStop
{
  v4[3] = *MEMORY[0x1E69E9840];
  if (self->_playbackSynchronizationGroupUUID)
  {
    [(VCObject *)self reportingAgent];
    v4[0] = self->_playbackSynchronizationGroupUUID;
    v3[0] = @"NBUUID";
    v3[1] = @"NBMPC";
    v4[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_maxPlaybackSynchronizationGroupMemberCount];
    v3[2] = @"NBDUR";
    v4[2] = [MEMORY[0x1E696AD98] numberWithDouble:micro() - self->_playbackSynchronizationGroupStartTime];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
    reportingGenericEvent();
    self->_playbackSynchronizationGroupStartTime = NAN;
  }
}

- (void)updatePlaybackSynchronizationGroupMemberCount
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) isPlaybackSynchronizationGroupMember];
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
    if (v6 > self->_maxPlaybackSynchronizationGroupMemberCount)
    {
      self->_maxPlaybackSynchronizationGroupMemberCount = v6;
    }
  }
}

- (void)dispatchedSetPlaybackSyncGroupUUID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  v5 = self->_playbackSynchronizationGroupUUID;
  v6 = v5;
  if (v5 && ([(NSUUID *)v5 isEqual:d]& 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_14;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      playbackSynchronizationGroupUUID = self->_playbackSynchronizationGroupUUID;
      *v27 = 136315906;
      *&v27[4] = v8;
      *&v27[12] = 2080;
      *&v27[14] = "[VCSession dispatchedSetPlaybackSyncGroupUUID:]";
      *&v27[22] = 1024;
      LODWORD(v28) = 1020;
      WORD2(v28) = 2112;
      *(&v28 + 6) = playbackSynchronizationGroupUUID;
      v11 = "VCSession [%s] %s:%d Stop playback sync group with uuid=%@";
      v12 = v9;
      v13 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_14;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v16 = self->_playbackSynchronizationGroupUUID;
      *v27 = 136316418;
      *&v27[4] = v14;
      *&v27[12] = 2080;
      *&v27[14] = "[VCSession dispatchedSetPlaybackSyncGroupUUID:]";
      *&v27[22] = 1024;
      LODWORD(v28) = 1020;
      WORD2(v28) = 2112;
      *(&v28 + 6) = v7;
      HIWORD(v28) = 2048;
      selfCopy2 = self;
      LOWORD(v30) = 2112;
      *(&v30 + 2) = v16;
      v11 = "VCSession [%s] %s:%d %@(%p) Stop playback sync group with uuid=%@";
      v12 = v15;
      v13 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v27, v13);
LABEL_14:
    [(VCSession *)self reportNearbyStop:*v27];
    self->_maxPlaybackSynchronizationGroupMemberCount = 0;
  }

  self->_playbackSynchronizationGroupUUID = d;
  if (d && ([d isEqual:v6] & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_28;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v20 = self->_playbackSynchronizationGroupUUID;
      *v27 = 136315906;
      *&v27[4] = v18;
      *&v27[12] = 2080;
      *&v27[14] = "[VCSession dispatchedSetPlaybackSyncGroupUUID:]";
      *&v27[22] = 1024;
      LODWORD(v28) = 1027;
      WORD2(v28) = 2112;
      *(&v28 + 6) = v20;
      v21 = "VCSession [%s] %s:%d Start playback sync group with uuid=%@";
      v22 = v19;
      v23 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_28;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v26 = self->_playbackSynchronizationGroupUUID;
      *v27 = 136316418;
      *&v27[4] = v24;
      *&v27[12] = 2080;
      *&v27[14] = "[VCSession dispatchedSetPlaybackSyncGroupUUID:]";
      *&v27[22] = 1024;
      LODWORD(v28) = 1027;
      WORD2(v28) = 2112;
      *(&v28 + 6) = v17;
      HIWORD(v28) = 2048;
      selfCopy2 = self;
      LOWORD(v30) = 2112;
      *(&v30 + 2) = v26;
      v21 = "VCSession [%s] %s:%d %@(%p) Start playback sync group with uuid=%@";
      v22 = v25;
      v23 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, v27, v23);
LABEL_28:
    [(VCSession *)self reportNearbyStart:*v27];
    [(VCSession *)self updatePlaybackSynchronizationGroupMemberCount];
  }
}

- (NSUUID)playbackSynchronizationGroupUUID
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__15;
  v10 = __Block_byref_object_dispose__15;
  v11 = 0;
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCSession_playbackSynchronizationGroupUUID__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(sessionQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __45__VCSession_playbackSynchronizationGroupUUID__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 856);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setPlaybackSynchronizationGroupUUID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCSession_setPlaybackSynchronizationGroupUUID___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = d;
  dispatch_async(sessionQueue, block);
}

- (void)updatePlaybackSynchronizationGroupMembership:(BOOL)membership forParticipant:(id)participant
{
  v7 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__VCSession_updatePlaybackSynchronizationGroupMembership_forParticipant___block_invoke;
  v5[3] = &unk_1E85F37C8;
  v5[4] = self;
  v5[5] = participant;
  membershipCopy = membership;
  dispatch_async(sessionQueue, v5);
}

uint64_t __73__VCSession_updatePlaybackSynchronizationGroupMembership_forParticipant___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(*(a1 + 32) + 248) objectForKeyedSubscript:{*(a1 + 40)), "setIsPlaybackSynchronizationGroupMember:", *(a1 + 48)}];
  v2 = *(a1 + 32);

  return [v2 updatePlaybackSynchronizationGroupMemberCount];
}

- (void)setTransportSessionEventHandler
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__VCSession_setTransportSessionEventHandler__block_invoke;
  v4[3] = &unk_1E85F7918;
  v4[4] = v3;
  [(VCTransportSession *)self->_transportSession setEventHandler:v4];
}

void __44__VCSession_setTransportSessionEventHandler__block_invoke(uint64_t a1, int a2, void *a3)
{
  *&v51[13] = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) strong];
  if (v5)
  {
    v6 = v5;
    switch(a2)
    {
      case 1:
        v7 = [a3 objectForKeyedSubscript:@"transportSessionEventInfoNewLink"];
        if ([v6 currentActiveConnection])
        {
          v8 = 1;
        }

        else
        {
          v8 = v7 == 0;
        }

        if (!v8)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v44 = 136315906;
              v45 = v9;
              v46 = 2080;
              v47 = "[VCSession setTransportSessionEventHandler]_block_invoke";
              v48 = 1024;
              v49 = 1072;
              v50 = 2112;
              *v51 = v7;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Established initial connection '%@'", &v44, 0x26u);
            }
          }

          [objc_msgSend(v6 "experimentManager")];
          goto LABEL_79;
        }

        break;
      case 2:
        v19 = [a3 objectForKeyedSubscript:@"transportSessionEventInfoDisconnectedLink"];
        if (VCConnection_Equal([v6 currentActiveConnection], v19))
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x1E6986650];
            v23 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v44 = 136315906;
                v45 = v21;
                v46 = 2080;
                v47 = "[VCSession setTransportSessionEventHandler]_block_invoke";
                v48 = 1024;
                v49 = 1082;
                v50 = 2112;
                *v51 = v19;
                _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Removing current active connection '%@'", &v44, 0x26u);
              }
            }

            else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              __44__VCSession_setTransportSessionEventHandler__block_invoke_cold_2();
            }
          }

          v42 = v6;
          v43 = 0;
          goto LABEL_80;
        }

        break;
      case 3:
        v14 = [a3 objectForKeyedSubscript:@"transportSessionEventInfoNewPrimary"];

        [v6 handlePrimaryConnectionChanged:v14];
        break;
      case 4:
        v24 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsDuplicationEnabled", "BOOLValue"}];
        v7 = [a3 objectForKeyedSubscript:@"transportSessionEventInfoActiveConnection"];
        if ((VCConnection_Equal([v6 currentActiveConnection], v7) & 1) == 0 && v7)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v25 = VRTraceErrorLogLevelToCSTR();
            v26 = *MEMORY[0x1E6986650];
            v27 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v44 = 136316162;
                v45 = v25;
                v46 = 2080;
                v47 = "[VCSession setTransportSessionEventHandler]_block_invoke";
                v48 = 1024;
                v49 = 1097;
                v50 = 1024;
                *v51 = v24;
                v51[2] = 2112;
                *&v51[3] = v7;
                _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Duplication state changed to %d, active connection is '%@'", &v44, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v44 = 136316162;
              v45 = v25;
              v46 = 2080;
              v47 = "[VCSession setTransportSessionEventHandler]_block_invoke";
              v48 = 1024;
              v49 = 1097;
              v50 = 1024;
              *v51 = v24;
              v51[2] = 2112;
              *&v51[3] = v7;
              _os_log_debug_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEBUG, "VCSession [%s] %s:%d Duplication state changed to %d, active connection is '%@'", &v44, 0x2Cu);
            }
          }

LABEL_79:
          v42 = v6;
          v43 = v7;
LABEL_80:
          [v42 setCurrentActiveConnection:v43];
          goto LABEL_81;
        }

        break;
      case 7:

        [v5 dispatchedStopWithError:a3 didRemoteCancel:0];
        break;
      case 8:
        if ([v5 currentActiveConnection])
        {
          v39 = [a3 intValue];
          v40 = [v6 currentActiveConnection];

          [v6 handleCellTechChange:v39 connection:v40];
        }

        break;
      case 9:
        if ([v5 currentActiveConnection])
        {
          v28 = [a3 unsignedShortValue];
          v29 = [v6 currentActiveConnection];

          [v6 handleCellularMTUChanged:v28 connection:v29];
        }

        break;
      case 10:
      case 13:
      case 14:
      case 16:
        return;
      case 11:

        [v5 handleEncryptionInfoEvent:a3];
        break;
      case 12:

        [v5 handleMembershipChangeInfoEvent:a3];
        break;
      case 15:
        v34 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoPreferredInterfaceForDuplication", "intValue"}];
        v35 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoNotifyPeer", "BOOLValue"}];
        v36 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsDuplicationEnabled", "BOOLValue"}];
        v37 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsMediaUnrecoverableSignal", "BOOLValue"}];

        [v6 handlePreferredInterfaceForDuplicationUpdate:v34 notifyPeer:v35 enableDuplication:v36 isMediaUnrecoverableSignal:v37];
        break;
      case 17:
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          v17 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v44 = 136315906;
              v45 = v15;
              v46 = 2080;
              v47 = "[VCSession setTransportSessionEventHandler]_block_invoke";
              v48 = 1024;
              v49 = 1139;
              v50 = 2112;
              *v51 = a3;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Link constrains changed: '%@'", &v44, 0x26u);
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            __44__VCSession_setTransportSessionEventHandler__block_invoke_cold_1();
          }
        }

        [v6 applyLinkConstrains:a3];
LABEL_81:
        [v6 handleActiveConnectionChange:{objc_msgSend(v6, "currentActiveConnection")}];
        break;
      case 18:
        v5[198] = -1;
        v18 = [v5 currentActiveConnection];

        [v6 handleActiveConnectionChange:v18];
        break;
      case 19:
        v33 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsMediaQualityDegraded", "BOOLValue"}];

        [v6 mediaQualityDegraded:v33];
        break;
      case 20:
        v30 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoDidLocalNetworkConditionChange", "BOOLValue"}];
        v31 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsLocalNetworkQualityDegraded", "BOOLValue"}];
        v32 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsRemoteNetworkQualityDegraded", "BOOLValue"}];

        [v6 didLocalNetworkConditionChange:v30 isLocalNetworkQualityDegraded:v31 isRemoteNetworkQualityDegraded:v32];
        break;
      case 21:
        v41 = [objc_msgSend(a3 objectForKeyedSubscript:{@"transportSessionEventInfoIsUplinkRetransmissionSupported", "BOOLValue"}];

        [v6 setIsUplinkRetransmissionEnabled:v41];
        break;
      default:
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v38 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v44 = 136315906;
            v45 = v38;
            v46 = 2080;
            v47 = "[VCSession setTransportSessionEventHandler]_block_invoke";
            v48 = 1024;
            v49 = 1157;
            v50 = 1024;
            *v51 = a2;
            v13 = "VCSession [%s] %s:%d Received invalid transportSession event(%d)";
            goto LABEL_14;
          }
        }

        break;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v44 = 136315906;
      v45 = v11;
      v46 = 2080;
      v47 = "[VCSession setTransportSessionEventHandler]_block_invoke";
      v48 = 1024;
      v49 = 1065;
      v50 = 1024;
      *v51 = a2;
      v13 = "VCSession [%s] %s:%d Received transportSession event %d while call is not ongoing. Skipping";
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v13, &v44, 0x22u);
    }
  }
}

- (void)applyLinkConstrains:(id)constrains
{
  connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];
  v6 = [objc_msgSend(constrains objectForKeyedSubscript:{@"transportSessionEventPayloadKey_IsCellular", "BOOLValue"}];
  v7 = MEMORY[0x1E69A46D0];
  if (!v6)
  {
    v7 = MEMORY[0x1E69A4708];
  }

  -[VCConnectionManager applyLinkFlags:isCellular:](connectionManager, "applyLinkFlags:isCellular:", [objc_msgSend(constrains objectForKeyedSubscript:{*v7), "intValue"}], v6);
  if (self->_oneToOneModeEnabled && [(VCSession *)self oneToOneRemoteParticipant])
  {
    sessionMessaging = self->_sessionMessaging;
    idsParticipantID = [(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] idsParticipantID];

    [(VCSessionMessaging *)sessionMessaging sendMessageDictionary:constrains withTopic:@"VCSessionMessageTopicLinkConstrainesChanged" participantID:idsParticipantID];
  }
}

- (void)applyRemoteLinkConstrains:(id)constrains
{
  connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];
  v6 = [objc_msgSend(constrains objectForKeyedSubscript:{@"transportSessionEventPayloadKey_IsCellular", "BOOLValue"}];
  v7 = MEMORY[0x1E69A46D0];
  if (!v6)
  {
    v7 = MEMORY[0x1E69A4708];
  }

  -[VCConnectionManager applyRemoteLinkFlags:isCellular:](connectionManager, "applyRemoteLinkFlags:isCellular:", [objc_msgSend(constrains objectForKeyedSubscript:{*v7), "intValue"}], v6);
  currentActiveConnection = self->_currentActiveConnection;

  [(VCSession *)self reportSatelliteNetworkStatusForConnection:currentActiveConnection];
}

- (void)reportSatelliteNetworkStatusForConnection:(id)connection
{
  if (connection)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    VCConnectionIDS_ReportingSatelliteNetwork(connection, v4);
    if ([(__CFDictionary *)v4 count])
    {
      reportingGenericEvent();
    }
  }
}

- (void)notifyRemoteOfCellTechChange:(id)change remoteParticipant:(id)participant
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (participant)
  {
    if ([(VCSession *)self isOneToOneUsingVideo]|| [(VCSession *)self isOneToOneUsingScreen])
    {
      uplinkBitrateCapOneToOne = [change uplinkBitrateCapOneToOne];
    }

    else
    {
      uplinkBitrateCapOneToOne = [change uplinkAudioBitrateCapOneToOne];
    }

    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:uplinkBitrateCapOneToOne];
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:VCConnection_LocalCellTech(change)];
    v10[0] = @"VCCellTechKey";
    v10[1] = @"VCMaxBitrateKey";
    v11[0] = v9;
    v11[1] = v8;
    -[VCSessionMessaging sendMessageDictionary:withTopic:participantID:](self->_sessionMessaging, "sendMessageDictionary:withTopic:participantID:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2], @"VCCellTechChangeTopic", objc_msgSend(participant, "idsParticipantID"));
  }
}

- (void)handleCellTechChange:(int)change connection:(id)connection
{
  v5 = *&change;
  v7 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] getCellularTechForActiveConnectionWithQuality:1 forLocalInterface:1];
  if (v5)
  {
    if (v5 <= 9 && v7 != v5 && (self->_state | 2) == 3)
    {
      [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] updateCellularTech:v5 forLocalInterface:1];
      [(VCSession *)self handleActiveConnectionChange:connection];
      if (self->_oneToOneModeEnabled)
      {
        oneToOneRemoteParticipant = [(VCSession *)self oneToOneRemoteParticipant];

        [(VCSession *)self notifyRemoteOfCellTechChange:connection remoteParticipant:oneToOneRemoteParticipant];
      }
    }
  }
}

- (void)handlePrimaryConnectionChanged:(id)changed
{
  v17 = *MEMORY[0x1E69E9840];
  if (changed)
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
          v9 = 136315906;
          v10 = v5;
          v11 = 2080;
          v12 = "[VCSession handlePrimaryConnectionChanged:]";
          v13 = 1024;
          v14 = 1237;
          v15 = 2112;
          changedCopy = changed;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Primary connection changed to '%@'", &v9, 0x26u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [VCSession handlePrimaryConnectionChanged:];
      }
    }

    v8 = VCConnectionManager_CopyConnectionForQuality([(VCTransportSession *)self->_transportSession connectionManager], 1);
    if ((VCConnection_Equal([(VCSession *)self currentActiveConnection], v8) & 1) != 0 || !v8)
    {
      if (!v8)
      {
        return;
      }
    }

    else
    {
      [(VCSession *)self setCurrentActiveConnection:v8];
      [(VCSession *)self handleActiveConnectionChange:[(VCSession *)self currentActiveConnection]];
      VCMediaQueue_CleanupTxHistory(self->_mediaQueue);
      [(VCSessionStatsController *)[(VCSession *)self sessionStatsController] reset];
    }

    CFRelease(v8);
  }
}

- (void)handleCellularMTUChanged:(unsigned __int16)changed connection:(id)connection
{
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] updateCellularMTU:changed];

  [(VCSession *)self handleActiveConnectionChange:connection];
}

- (void)handleActiveConnectionChange:(id)change
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSession-handleActiveConnectionChange");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v23 = v5;
      v24 = 2080;
      v25 = "[VCSession handleActiveConnectionChange:]";
      v26 = 1024;
      v27 = 1256;
      v28 = 2048;
      selfCopy = self;
      v30 = 2112;
      changeCopy = change;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d @:@ VCSession-handleActiveConnectionChange (%p) Connection changed to '%@'", buf, 0x30u);
    }
  }

  if ((self->_state | 2) == 3)
  {
    IsEndToEndLink = VCConnection_IsEndToEndLink(change);
    if (!self->_oneToOneModeEnabled || IsEndToEndLink == 0)
    {
      if ((IsEndToEndLink & 1) == 0)
      {
        [(VCSession *)self handleActiveConnectionChangeForMultiway:change];
      }
    }

    else
    {
      [(VCSession *)self handleActiveConnectionChangeForOneToOne:change];
    }

    [(VCSessionParticipantLocal *)self->_localParticipant handleActiveConnectionChange:change];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    remoteParticipants = [(VCSession *)self remoteParticipants];
    v10 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(remoteParticipants);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          if (!self->_oneToOneModeEnabled)
          {
            v15 = @"sliceStatus";
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:VCConnection_ReportingSliceStatus(change)];
            -[VCSession sendDeviceStateMessageToParticipant:withStatus:checkDNUStatus:](self, "sendDeviceStateMessageToParticipant:withStatus:checkDNUStatus:", v14, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1], 0);
          }

          [v14 handleActiveConnectionChange:change];
          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v11);
    }

    if (self->_feedbackController)
    {
      [(VCNetworkFeedbackController *)self->_feedbackController setIsLocalCellular:VCConnection_IsLocalOnCellular(change)];
    }
  }
}

- (void)updateMultiwayRateControllersWithActiveConnection:(id)connection
{
  v16 = *MEMORY[0x1E69E9840];
  [(VCSession *)self updateMultiwayRateControllerWithActiveConnection:connection isScreenEnabled:[(VCSessionParticipant *)self->_localParticipant isScreenEnabled] isLocal:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  remoteParticipants = [(VCSession *)self remoteParticipants];
  v6 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        if ([*(*(&v12 + 1) + 8 * v9) isRemoteScreenEnabled])
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  [(VCSession *)self updateMultiwayRateControllerWithActiveConnection:connection isScreenEnabled:v10 isLocal:0];
  -[VCNetworkFeedbackController setClientTargetBitrateCap:](self->_feedbackController, "setClientTargetBitrateCap:", [connection uplinkBitrateCap]);
  if (VCConnection_IsLocalOnCellular(connection))
  {
    -[VCNetworkFeedbackController setDownlinkTargetCellBitrateCap:](self->_feedbackController, "setDownlinkTargetCellBitrateCap:", [connection downlinkBitrateCap]);
  }
}

- (void)handleActiveConnectionChangeForMultiway:(id)multiway
{
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(multiway);
  IsLocalConstrained = VCConnection_IsLocalConstrained(multiway);
  currentConnectionType = self->_currentConnectionType;
  if (currentConnectionType != [multiway localConnectionType])
  {
    self->_currentConnectionType = [multiway localConnectionType];
    [(VCSession *)self reportingSessionParticipantEvent:159 withParticipant:0];
    p_isCurrentConnectionConstrained = &self->_isCurrentConnectionConstrained;
    if (self->_isCurrentConnectionConstrained == IsLocalConstrained)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  p_isCurrentConnectionConstrained = &self->_isCurrentConnectionConstrained;
  if (self->_isCurrentConnectionConstrained != IsLocalConstrained)
  {
LABEL_8:
    *p_isCurrentConnectionConstrained = IsLocalConstrained;
LABEL_9:
    [(VCSession *)self updateMultiwayRateControllersWithActiveConnection:multiway];
    [(VCSession *)self reportSatelliteNetworkStatusForConnection:multiway];
    if (!IsLocalOnCellular)
    {
      return;
    }

    goto LABEL_4;
  }

  if (!IsLocalOnCellular)
  {
    return;
  }

LABEL_4:
  basebandCongestionDetector = [(AVCRateController *)self->_uplinkRateController basebandCongestionDetector];
  localParticipant = self->_localParticipant;

  [(VCSessionParticipant *)localParticipant setBasebandCongestionDetector:basebandCongestionDetector];
}

- (void)handlePreferredInterfaceForDuplicationUpdate:(unsigned __int8)update notifyPeer:(BOOL)peer enableDuplication:(BOOL)duplication isMediaUnrecoverableSignal:(BOOL)signal
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled && peer)
  {
    signalCopy = signal;
    duplicationCopy = duplication;
    updateCopy = update;
    if ([(VCSession *)self oneToOneRemoteParticipant:update])
    {
      v11[0] = @"VCPreferredInterfaceKey";
      v12[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:updateCopy];
      v11[1] = @"VCPreferredInterfaceDuplicatingKey";
      v12[1] = [MEMORY[0x1E696AD98] numberWithBool:duplicationCopy];
      v11[2] = @"VCPreferredInterfaceMediaUnrecoverableSignalKey";
      v12[2] = [MEMORY[0x1E696AD98] numberWithBool:signalCopy];
      -[VCSessionMessaging sendMessageDictionary:withTopic:participantID:](self->_sessionMessaging, "sendMessageDictionary:withTopic:participantID:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3], @"VCPreferredInterfaceMessageTopic", -[VCSessionParticipant idsParticipantID](-[VCSession oneToOneRemoteParticipant](self, "oneToOneRemoteParticipant"), "idsParticipantID"));
    }
  }
}

- (unsigned)calculateExpectedTotalNetworkBitrateDownlink
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  remoteParticipants = [(VCSession *)self remoteParticipants];
  v5 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        v7 += [*(*(&v27 + 1) + 8 * i) actualNetworkBitrateWithAudioBitrates:v3];
      }

      v6 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [v3 sortUsingSelector:sel_compare_];
  v10 = [v3 count];
  if ([(VCSessionDownlinkBandwidthAllocator *)self->_downlinkBandwidthAllocator simultaneousTalkers])
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v10 - 1;
    v13 = 2;
    do
    {
      v7 += [objc_msgSend(v3 objectAtIndexedSubscript:{v12), "unsignedIntValue"}];
      v14 = v13 > [(VCSessionDownlinkBandwidthAllocator *)self->_downlinkBandwidthAllocator simultaneousTalkers]|| v13 > v10;
      ++v13;
      --v12;
    }

    while (!v14);
  }

  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315906;
      v19 = v15;
      v20 = 2080;
      v21 = "[VCSession calculateExpectedTotalNetworkBitrateDownlink]";
      v22 = 1024;
      v23 = 1366;
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d New downlink expected bitrate:%u", &v18, 0x22u);
    }
  }

  return v7;
}

- (unsigned)calculateExpectedTotalNetworkBitrateUplink
{
  v14 = *MEMORY[0x1E69E9840];
  currentUplinkTotalBitrate = [(VCSessionParticipantLocal *)self->_localParticipant currentUplinkTotalBitrate];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCSession calculateExpectedTotalNetworkBitrateUplink]";
      v10 = 1024;
      v11 = 1373;
      v12 = 1024;
      v13 = currentUplinkTotalBitrate;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d New uplink expected bitrate:%u", &v6, 0x22u);
    }
  }

  return currentUplinkTotalBitrate;
}

- (void)setOneToOneVideoStreamBandwidthProbing:(BOOL)probing
{
  probingCopy = probing;
  localParticipant = self->_localParticipant;
  if (localParticipant)
  {
    [(VCSessionParticipantLocal *)localParticipant oneToOneSettings];
    localParticipant = v11;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  [objc_msgSend(-[VCSessionParticipantLocal objectForKeyedSubscript:](localParticipant objectForKeyedSubscript:{&unk_1F579A080), "stream"), "setIsEndToEndBasedBandwidthProbingEnabled:", probingCopy}];
  v6 = self->_localParticipant;
  if (v6)
  {
    [(VCSessionParticipantLocal *)v6 oneToOneSettings];
    v6 = v8;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  [objc_msgSend(-[VCSessionParticipantLocal objectForKeyedSubscript:](v6 objectForKeyedSubscript:{&unk_1F579A098, v7, v8, v9, v10, v11, v12), "stream"), "setIsEndToEndBasedBandwidthProbingEnabled:", probingCopy}];
}

- (void)vcSessionParticipant:(id)participant didStart:(BOOL)start error:(id)error
{
  v8 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCSession_vcSessionParticipant_didStart_error___block_invoke;
  block[3] = &unk_1E85F5E38;
  block[4] = self;
  block[5] = participant;
  startCopy = start;
  block[6] = error;
  dispatch_async(sessionQueue, block);
}

uint64_t __49__VCSession_vcSessionParticipant_didStart_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedParticipant:*(a1 + 40) didStart:*(a1 + 56) error:*(a1 + 48)];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) participantVideoToken];

    return kdebug_trace();
  }

  return result;
}

- (void)vcSessionParticipant:(id)participant didStopWithError:(id)error
{
  v5[7] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VCSession_vcSessionParticipant_didStopWithError___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = self;
  v5[5] = participant;
  v5[6] = error;
  dispatch_async(sessionQueue, v5);
}

uint64_t __51__VCSession_vcSessionParticipant_didStopWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dispatchedParticipant:*(a1 + 40) didStopWithError:*(a1 + 48)];
  [*(a1 + 40) participantVideoToken];

  return kdebug_trace();
}

- (void)vcSessionParticipant:(id)participant audioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VCSession_vcSessionParticipant_audioEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F7940;
  succeedCopy = succeed;
  block[4] = participant;
  block[5] = self;
  enabledCopy = enabled;
  block[6] = error;
  dispatch_async(sessionQueue, block);
}

void __64__VCSession_vcSessionParticipant_audioEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (v4 != v3[30])
    {
      [v3 mediaStateChangedForParticipant:?];
LABEL_19:
      [*(a1 + 40) reportingSessionParticipantEvent:170 withParticipant:*(a1 + 32)];
      LOBYTE(v2) = *(a1 + 56);
      goto LABEL_20;
    }

    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v6 = VRTraceErrorLogLevelToCSTR(), v7 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_15:
        [*(a1 + 40) broadcastMediaStateUpdateMessage];
        if (*(a1 + 57))
        {
          v14 = @"VCSessionMessageAudioEnabled";
        }

        else
        {
          v14 = @"VCSessionMessageAudioDisabled";
        }

        [*(a1 + 40) broadcastSingleStateMessage:v14 withTopic:@"VCSessionMessageTopicAudioEnabledState"];
        goto LABEL_19;
      }

      *buf = 136315650;
      v22 = v6;
      v23 = 2080;
      v24 = "[VCSession vcSessionParticipant:audioEnabled:didSucceed:error:]_block_invoke";
      v25 = 1024;
      v26 = 1409;
      v8 = "VCSession [%s] %s:%d Broadcasting audioEnabled state";
      v9 = v7;
      v10 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v13 = *(a1 + 40);
      *buf = 136316162;
      v22 = v11;
      v23 = 2080;
      v24 = "[VCSession vcSessionParticipant:audioEnabled:didSucceed:error:]_block_invoke";
      v25 = 1024;
      v26 = 1409;
      v27 = 2112;
      v28 = v5;
      v29 = 2048;
      v30 = v13;
      v8 = "VCSession [%s] %s:%d %@(%p) Broadcasting audioEnabled state";
      v9 = v12;
      v10 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    goto LABEL_15;
  }

LABEL_20:
  v15 = *(a1 + 40);
  v16 = *(v15 + 184);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__VCSession_vcSessionParticipant_audioEnabled_didSucceed_error___block_invoke_203;
  v18[3] = &unk_1E85F7940;
  v17 = *(a1 + 32);
  v18[4] = v15;
  v18[5] = v17;
  v19 = *(a1 + 57);
  v20 = v2;
  v18[6] = *(a1 + 48);
  dispatch_async(v16, v18);
}

uint64_t __64__VCSession_vcSessionParticipant_audioEnabled_didSucceed_error___block_invoke_203(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 audioEnabled:v5 didSucceed:v6 error:v7];
}

- (void)vcSessionParticipant:(id)participant videoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VCSession_vcSessionParticipant_videoEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F7940;
  succeedCopy = succeed;
  block[4] = participant;
  block[5] = self;
  enabledCopy = enabled;
  block[6] = error;
  dispatch_async(sessionQueue, block);
}

void __64__VCSession_vcSessionParticipant_videoEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) != 1)
  {
    goto LABEL_24;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == *(v2 + 240))
  {
    if (*(v2 + 409) == 1)
    {
      [*(v2 + 240) handleActiveConnectionChange:*(v2 + 328)];
      [*(a1 + 40) configureOneToOneReportingOnVideoEnabled];
    }

    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v5 = VRTraceErrorLogLevelToCSTR(), v6 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_17:
        [*(a1 + 40) broadcastMediaStateUpdateMessage];
        if (*(a1 + 57))
        {
          v13 = @"VCSessionMessageVideoEnabled";
        }

        else
        {
          v13 = @"VCSessionMessageVideoDisabled";
        }

        [*(a1 + 40) broadcastSingleStateMessage:v13 withTopic:@"VCSessionMessageTopicVideoEnabledStateb"];
        [*(a1 + 40) updateOneToOneVideoReceiverDelegate:*(a1 + 57)];
        [*(a1 + 40) updateLocalCameraCaptureStatus];
        goto LABEL_21;
      }

      *buf = 136315650;
      v22 = v5;
      v23 = 2080;
      v24 = "[VCSession vcSessionParticipant:videoEnabled:didSucceed:error:]_block_invoke";
      v25 = 1024;
      v26 = 1442;
      v7 = "VCSession [%s] %s:%d Broadcasting videoEnabled state";
      v8 = v6;
      v9 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_17;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v12 = *(a1 + 40);
      *buf = 136316162;
      v22 = v10;
      v23 = 2080;
      v24 = "[VCSession vcSessionParticipant:videoEnabled:didSucceed:error:]_block_invoke";
      v25 = 1024;
      v26 = 1442;
      v27 = 2112;
      v28 = v4;
      v29 = 2048;
      v30 = v12;
      v7 = "VCSession [%s] %s:%d %@(%p) Broadcasting videoEnabled state";
      v8 = v11;
      v9 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_17;
  }

  [v2 mediaStateChangedForParticipant:?];
LABEL_21:
  [*(a1 + 40) reportingSessionParticipantEvent:171 withParticipant:*(a1 + 32)];
  v14 = *(a1 + 40);
  if (*(a1 + 32) == *(v14 + 240) && *(v14 + 409) == 1)
  {
    [v14 configureOneToOneRateController:*(v14 + 328)];
  }

LABEL_24:
  v15 = *(a1 + 40);
  v16 = *(v15 + 184);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__VCSession_vcSessionParticipant_videoEnabled_didSucceed_error___block_invoke_213;
  v18[3] = &unk_1E85F7940;
  v17 = *(a1 + 32);
  v18[4] = v15;
  v18[5] = v17;
  v19 = *(a1 + 57);
  v20 = *(a1 + 56);
  v18[6] = *(a1 + 48);
  dispatch_async(v16, v18);
}

uint64_t __64__VCSession_vcSessionParticipant_videoEnabled_didSucceed_error___block_invoke_213(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 videoEnabled:v5 didSucceed:v6 error:v7];
}

- (void)vcSessionParticipant:(id)participant screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VCSession_vcSessionParticipant_screenEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F7940;
  succeedCopy = succeed;
  block[4] = participant;
  block[5] = self;
  enabledCopy = enabled;
  block[6] = error;
  dispatch_async(sessionQueue, block);
}

void __65__VCSession_vcSessionParticipant_screenEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2 != 1)
  {
    goto LABEL_28;
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4 != v3[30])
  {
    [v3 mediaStateChangedForParticipant:?];
    [*(a1 + 40) updateMultiwayRateControllerWithActiveConnection:*(*(a1 + 40) + 328) isScreenEnabled:*(a1 + 57) isLocal:0];
    goto LABEL_16;
  }

  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315650;
    v29 = v6;
    v30 = 2080;
    v31 = "[VCSession vcSessionParticipant:screenEnabled:didSucceed:error:]_block_invoke";
    v32 = 1024;
    v33 = 1465;
    v8 = "VCSession [%s] %s:%d Broadcasting screenEnabled state";
    v9 = v7;
    v10 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v13 = *(a1 + 40);
    *buf = 136316162;
    v29 = v11;
    v30 = 2080;
    v31 = "[VCSession vcSessionParticipant:screenEnabled:didSucceed:error:]_block_invoke";
    v32 = 1024;
    v33 = 1465;
    v34 = 2112;
    v35 = v5;
    v36 = 2048;
    v37 = v13;
    v8 = "VCSession [%s] %s:%d %@(%p) Broadcasting screenEnabled state";
    v9 = v12;
    v10 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_15:
  [*(a1 + 40) broadcastMediaStateUpdateMessage];
  [*(a1 + 40) updateMultiwayRateControllerWithActiveConnection:*(*(a1 + 40) + 328) isScreenEnabled:*(a1 + 57) isLocal:1];
LABEL_16:
  v14 = *(a1 + 40);
  if (*(v14 + 409) == 1)
  {
    [objc_msgSend(*(v14 + 320) "connectionManager")];
    v15 = *(a1 + 40);
    if (*(a1 + 32) == v15[30])
    {
      [v15 configureOneToOneRateController:v15[41]];
      [*(a1 + 40) setOneToOneVideoStreamBandwidthProbing:(*(a1 + 57) & 1) == 0];
    }
  }

  if (*(a1 + 57) == 1)
  {
    v16 = VCMediaQueue_SetHighlyBurstyTrafficMode(*(*(a1 + 40) + 480), 1);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = "NO";
        v20 = *(a1 + 57);
        *buf = 136316162;
        v29 = v17;
        if (v20)
        {
          v19 = "YES";
        }

        v31 = "[VCSession vcSessionParticipant:screenEnabled:didSucceed:error:]_block_invoke";
        v32 = 1024;
        v21 = "PASS";
        v33 = 1482;
        v30 = 2080;
        v34 = 2080;
        if (v16)
        {
          v21 = "FAILED";
        }

        v35 = v19;
        v36 = 2080;
        v37 = v21;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Enabling screensharing mode in VCMediaQueue=%s, VCMediaQueue set screenEnabled=%s", buf, 0x30u);
      }
    }
  }

  [*(a1 + 40) reportingSessionParticipantEvent:188 withParticipant:*(a1 + 32)];
  LOBYTE(v2) = *(a1 + 56);
LABEL_28:
  v22 = *(a1 + 40);
  v23 = *(v22 + 184);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __65__VCSession_vcSessionParticipant_screenEnabled_didSucceed_error___block_invoke_218;
  v25[3] = &unk_1E85F7940;
  v24 = *(a1 + 32);
  v25[4] = v22;
  v25[5] = v24;
  v26 = *(a1 + 57);
  v27 = v2;
  v25[6] = *(a1 + 48);
  dispatch_async(v23, v25);
}

uint64_t __65__VCSession_vcSessionParticipant_screenEnabled_didSucceed_error___block_invoke_218(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 screenEnabled:v5 didSucceed:v6 error:v7];
}

- (void)vcSessionParticipantFetchStreamGroupState:(id)state
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCSession_vcSessionParticipantFetchStreamGroupState___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = state;
  block[5] = self;
  dispatch_async(sessionQueue, block);
}

void *__55__VCSession_vcSessionParticipantFetchStreamGroupState___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v4 = *(a1 + 40);
  if (result != *(v4 + 240) && *(v4 + 168) == 3)
  {
    v5 = *(v4 + 224);
    v6 = [result idsParticipantID];

    return [v5 sendMessage:@"VCSessionMessageTopicFetchStreamGroupsState" withTopic:@"VCSessionMessageTopicFetchStreamGroupsState" participantID:v6];
  }

  return result;
}

- (void)vcSessionParticipant:(id)participant remoteAudioEnabledDidChange:(BOOL)change
{
  v7 = *MEMORY[0x1E69E9840];
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__VCSession_vcSessionParticipant_remoteAudioEnabledDidChange___block_invoke;
  v5[3] = &unk_1E85F37C8;
  v5[4] = self;
  v5[5] = participant;
  changeCopy = change;
  dispatch_async(notificationQueue, v5);
}

uint64_t __62__VCSession_vcSessionParticipant_remoteAudioEnabledDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reportingSessionRemoteParticipantEvent:174 withParticipant:*(a1 + 40) value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 48))}];
  [*(a1 + 40) setRemoteAudioEnabled:*(a1 + 48)];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 remoteAudioEnabledDidChange:v5];
}

- (void)vcSessionParticipant:(id)participant remoteVideoEnabledDidChange:(BOOL)change
{
  v11 = *MEMORY[0x1E69E9840];
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VCSession_vcSessionParticipant_remoteVideoEnabledDidChange___block_invoke;
  block[3] = &unk_1E85F37C8;
  block[4] = self;
  block[5] = participant;
  changeCopy = change;
  dispatch_async(notificationQueue, block);
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__VCSession_vcSessionParticipant_remoteVideoEnabledDidChange___block_invoke_2;
  v8[3] = &unk_1E85F37F0;
  v8[4] = self;
  v8[5] = participant;
  dispatch_async(sessionQueue, v8);
}

uint64_t __62__VCSession_vcSessionParticipant_remoteVideoEnabledDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reportingSessionRemoteParticipantEvent:175 withParticipant:*(a1 + 40) value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 48))}];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 remoteVideoEnabledDidChange:v5];
}

- (void)vcSessionParticipant:(id)participant remoteScreenEnabledDidChange:(BOOL)change
{
  v13 = *MEMORY[0x1E69E9840];
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VCSession_vcSessionParticipant_remoteScreenEnabledDidChange___block_invoke;
  block[3] = &unk_1E85F37C8;
  changeCopy = change;
  block[4] = self;
  block[5] = participant;
  dispatch_async(notificationQueue, block);
  sessionQueue = self->_sessionQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__VCSession_vcSessionParticipant_remoteScreenEnabledDidChange___block_invoke_2;
  v9[3] = &unk_1E85F37C8;
  changeCopy2 = change;
  v9[4] = self;
  v9[5] = participant;
  dispatch_async(sessionQueue, v9);
}

uint64_t __63__VCSession_vcSessionParticipant_remoteScreenEnabledDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateMultiwayRateControllerWithActiveConnection:*(*(a1 + 32) + 328) isScreenEnabled:*(a1 + 48) isLocal:0];
  [*(a1 + 32) reportingSessionRemoteParticipantEvent:189 withParticipant:*(a1 + 40) value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 48))}];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 remoteScreenEnabledDidChange:v5];
}

uint64_t __63__VCSession_vcSessionParticipant_remoteScreenEnabledDidChange___block_invoke_2(uint64_t a1)
{
  [objc_msgSend(*(*(a1 + 32) + 320) "connectionManager")];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 mediaStateChangedForParticipant:v3];
}

- (void)vcSessionParticipant:(id)participant audioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VCSession_vcSessionParticipant_audioPaused_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F7940;
  succeedCopy = succeed;
  block[4] = participant;
  block[5] = self;
  pausedCopy = paused;
  block[6] = error;
  dispatch_async(sessionQueue, block);
}

void __63__VCSession_vcSessionParticipant_audioPaused_didSucceed_error___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) != 1)
  {
    goto LABEL_19;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2[30])
  {
    [v2 mediaStateChangedForParticipant:?];
    goto LABEL_19;
  }

  if (objc_opt_class() != *(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 40);
    *buf = 136316162;
    v21 = v10;
    v22 = 2080;
    v23 = "[VCSession vcSessionParticipant:audioPaused:didSucceed:error:]_block_invoke";
    v24 = 1024;
    v25 = 1536;
    v26 = 2112;
    v27 = v4;
    v28 = 2048;
    v29 = v12;
    v7 = "VCSession [%s] %s:%d %@(%p) Broadcasting audioPaused state";
    v8 = v11;
    v9 = 48;
    goto LABEL_14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = v5;
      v22 = 2080;
      v23 = "[VCSession vcSessionParticipant:audioPaused:didSucceed:error:]_block_invoke";
      v24 = 1024;
      v25 = 1536;
      v7 = "VCSession [%s] %s:%d Broadcasting audioPaused state";
      v8 = v6;
      v9 = 28;
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

LABEL_15:
  [*(a1 + 40) broadcastMediaStateUpdateMessage];
  if (*(a1 + 57))
  {
    v13 = @"VCSessionMessageAudioPaused";
  }

  else
  {
    v13 = @"VCSessionMessageAudioUnpaused";
  }

  [*(a1 + 40) broadcastSingleStateMessage:v13 withTopic:@"VCSessionMessageTopicAudioPausedState"];
LABEL_19:
  [*(a1 + 40) reportingSessionParticipantEvent:172 withParticipant:*(a1 + 32)];
  v14 = *(a1 + 40);
  v15 = *(v14 + 184);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__VCSession_vcSessionParticipant_audioPaused_didSucceed_error___block_invoke_231;
  v17[3] = &unk_1E85F7940;
  v18 = *(a1 + 57);
  v16 = *(a1 + 32);
  v17[4] = v14;
  v17[5] = v16;
  v19 = *(a1 + 56);
  v17[6] = *(a1 + 48);
  dispatch_async(v15, v17);
}

uint64_t __63__VCSession_vcSessionParticipant_audioPaused_didSucceed_error___block_invoke_231(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[409] == 1)
  {
    [objc_msgSend(objc_msgSend(v2 "transportSession")];
    v2 = *(a1 + 32);
  }

  v3 = [v2 delegate];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) uuid];
  v6 = *(a1 + 56);
  v7 = *(a1 + 57);
  v8 = *(a1 + 48);

  return [v3 vcSession:v4 participantID:v5 audioPaused:v6 didSucceed:v7 error:v8];
}

- (void)vcSessionParticipant:(id)participant videoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VCSession_vcSessionParticipant_videoPaused_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F7940;
  succeedCopy = succeed;
  block[4] = participant;
  block[5] = self;
  pausedCopy = paused;
  block[6] = error;
  dispatch_async(sessionQueue, block);
}

void __63__VCSession_vcSessionParticipant_videoPaused_didSucceed_error___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (v4 != v3[30])
    {
      [v3 mediaStateChangedForParticipant:?];
LABEL_19:
      [*(a1 + 40) reportingSessionParticipantEvent:173 withParticipant:*(a1 + 32)];
      LOBYTE(v2) = *(a1 + 56);
      goto LABEL_20;
    }

    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v6 = VRTraceErrorLogLevelToCSTR(), v7 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_15:
        [*(a1 + 40) broadcastMediaStateUpdateMessage];
        if (*(a1 + 57))
        {
          v14 = @"VCSessionMessageVideoPaused";
        }

        else
        {
          v14 = @"VCSessionMessageVideoUnpaused";
        }

        [*(a1 + 40) broadcastSingleStateMessage:v14 withTopic:@"VCSessionMessageTopicVideoPausedState"];
        [*(a1 + 40) updateLocalCameraCaptureStatus];
        goto LABEL_19;
      }

      *buf = 136315650;
      v22 = v6;
      v23 = 2080;
      v24 = "[VCSession vcSessionParticipant:videoPaused:didSucceed:error:]_block_invoke";
      v25 = 1024;
      v26 = 1558;
      v8 = "VCSession [%s] %s:%d Broadcasting videoPaused state";
      v9 = v7;
      v10 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v13 = *(a1 + 40);
      *buf = 136316162;
      v22 = v11;
      v23 = 2080;
      v24 = "[VCSession vcSessionParticipant:videoPaused:didSucceed:error:]_block_invoke";
      v25 = 1024;
      v26 = 1558;
      v27 = 2112;
      v28 = v5;
      v29 = 2048;
      v30 = v13;
      v8 = "VCSession [%s] %s:%d %@(%p) Broadcasting videoPaused state";
      v9 = v12;
      v10 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    goto LABEL_15;
  }

LABEL_20:
  v15 = *(a1 + 40);
  v16 = *(v15 + 184);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__VCSession_vcSessionParticipant_videoPaused_didSucceed_error___block_invoke_241;
  v18[3] = &unk_1E85F7940;
  v17 = *(a1 + 32);
  v18[4] = v15;
  v18[5] = v17;
  v19 = *(a1 + 57);
  v20 = v2;
  v18[6] = *(a1 + 48);
  dispatch_async(v16, v18);
}

uint64_t __63__VCSession_vcSessionParticipant_videoPaused_didSucceed_error___block_invoke_241(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 videoPaused:v5 didSucceed:v6 error:v7];
}

- (void)vcSessionParticipant:(id)participant remoteAudioPausedDidChange:(BOOL)change
{
  v7 = *MEMORY[0x1E69E9840];
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__VCSession_vcSessionParticipant_remoteAudioPausedDidChange___block_invoke;
  v5[3] = &unk_1E85F37C8;
  v5[4] = self;
  v5[5] = participant;
  changeCopy = change;
  dispatch_async(notificationQueue, v5);
}

uint64_t __61__VCSession_vcSessionParticipant_remoteAudioPausedDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reportingSessionRemoteParticipantEvent:176 withParticipant:*(a1 + 40) value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 48))}];
  v2 = *(a1 + 32);
  if (v2[409] == 1)
  {
    [objc_msgSend(objc_msgSend(v2 "transportSession")];
    v2 = *(a1 + 32);
  }

  v3 = [v2 delegate];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) uuid];
  v6 = *(a1 + 48);

  return [v3 vcSession:v4 participantID:v5 remoteAudioPausedDidChange:v6];
}

- (void)vcSessionParticipant:(id)participant remoteVideoPausedDidChange:(BOOL)change
{
  v11 = *MEMORY[0x1E69E9840];
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VCSession_vcSessionParticipant_remoteVideoPausedDidChange___block_invoke;
  block[3] = &unk_1E85F37C8;
  block[4] = self;
  block[5] = participant;
  changeCopy = change;
  dispatch_async(notificationQueue, block);
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__VCSession_vcSessionParticipant_remoteVideoPausedDidChange___block_invoke_2;
  v8[3] = &unk_1E85F37F0;
  v8[4] = self;
  v8[5] = participant;
  dispatch_async(sessionQueue, v8);
}

uint64_t __61__VCSession_vcSessionParticipant_remoteVideoPausedDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reportingSessionRemoteParticipantEvent:177 withParticipant:*(a1 + 40) value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 48))}];
  [objc_msgSend(*(a1 + 32) "delegate")];
  v2 = VCRemoteVideoManager_DefaultManager();
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) participantVideoToken];

  return [v2 remoteVideoDidPause:v3 streamToken:v4];
}

- (void)vcSessionParticipant:(id)participant didChangeMediaPriority:(unsigned __int8)priority description:(id)description
{
  v8 = *MEMORY[0x1E69E9840];
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VCSession_vcSessionParticipant_didChangeMediaPriority_description___block_invoke;
  block[3] = &unk_1E85F5E38;
  block[4] = self;
  block[5] = participant;
  priorityCopy = priority;
  block[6] = description;
  dispatch_async(notificationQueue, block);
}

uint64_t __69__VCSession_vcSessionParticipant_didChangeMediaPriority_description___block_invoke(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 616) & 1) == 0)
  {
    v1 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(v1 + 40) uuid];
        v5 = *(v1 + 56);
        v6 = *(v1 + 48);
        v7 = 136316418;
        v8 = v2;
        v9 = 2080;
        v10 = "[VCSession vcSessionParticipant:didChangeMediaPriority:description:]_block_invoke";
        v11 = 1024;
        v12 = 1597;
        v13 = 2112;
        v14 = v4;
        v15 = 1024;
        v16 = v5;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Participant=%@ didChangeMediaPriority=%d, description=%@", &v7, 0x36u);
      }
    }

    return [objc_msgSend(*(v1 + 32) "delegate")];
  }

  return result;
}

- (void)vcSessionParticipant:(id)participant requestKeyFrameGenerationWithStreamID:(unsigned __int16)d streamGroupID:(unsigned int)iD firType:(int)type
{
  v6 = *&type;
  v7 = *&iD;
  dCopy = d;
  v27 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCSession vcSessionParticipant:requestKeyFrameGenerationWithStreamID:streamGroupID:firType:]";
      v19 = 1024;
      v20 = 1608;
      v21 = 2112;
      uuid = [participant uuid];
      v23 = 1024;
      v24 = dCopy;
      v25 = 1024;
      v26 = v6;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Participant:%@ requestKeyFrameGenerationWithStreamID:%d FIRType:%d", buf, 0x32u);
    }
  }

  v14[0] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{dCopy, @"VCSessionMessageStreamID"}];
  v13[1] = @"VCSessionMessageFIRType";
  v14[1] = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v13[2] = @"VCSessionMesageStreamGroupID";
  v14[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  -[VCSessionMessaging sendMessageDictionary:withTopic:participantID:](self->_sessionMessaging, "sendMessageDictionary:withTopic:participantID:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3], @"VCSessionMessageTopicGenerateKeyFrame", objc_msgSend(participant, "idsParticipantID"));
  [(VCSession *)self reportingSessionParticipantEvent:232 withParticipant:participant streamGroupID:v7 streamID:dCopy];
}

- (void)vcSessionParticipant:(id)participant didSwitchFromStreamID:(unsigned __int16)d toStreamID:(unsigned __int16)iD
{
  v6[5] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__VCSession_vcSessionParticipant_didSwitchFromStreamID_toStreamID___block_invoke;
  v6[3] = &unk_1E85F3778;
  v6[4] = self;
  dispatch_async(sessionQueue, v6);
}

_BYTE *__67__VCSession_vcSessionParticipant_didSwitchFromStreamID_toStreamID___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[409] & 1) == 0)
  {
    return [result distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:1];
  }

  return result;
}

- (void)vcSessionParticipant:(id)participant didRequestVideoRedundancy:(BOOL)redundancy
{
  v7 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__VCSession_vcSessionParticipant_didRequestVideoRedundancy___block_invoke;
  v5[3] = &unk_1E85F37C8;
  redundancyCopy = redundancy;
  v5[4] = self;
  v5[5] = participant;
  dispatch_async(sessionQueue, v5);
}

uint64_t __60__VCSession_vcSessionParticipant_didRequestVideoRedundancy___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 409) & 1) == 0)
  {
    [v2 distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:0];
    v2 = *(a1 + 32);
  }

  if (*(a1 + 48))
  {
    v3 = @"VCSessionMessageVideoRedundancyRequested";
  }

  else
  {
    v3 = @"VCSessionMessageVideoRedundancyDismissed";
  }

  v4 = *(v2 + 224);
  v5 = [*(a1 + 40) idsParticipantID];

  return [v4 sendMessage:v3 withTopic:@"VCSessionMessageTopicVideoRedundancyState" participantID:v5];
}

- (void)vcSessionParticipantDidChangeSendingStreams:(id)streams
{
  v4[5] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__VCSession_vcSessionParticipantDidChangeSendingStreams___block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(sessionQueue, v4);
}

uint64_t __57__VCSession_vcSessionParticipantDidChangeSendingStreams___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) calculateExpectedTotalNetworkBitrateUplink];
  v3 = *(*(a1 + 32) + 416);

  return [v3 setExpectedBitrate:v2];
}

- (void)vcSessionParticipantDidChangeReceivingStreams:(id)streams
{
  v4[5] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__VCSession_vcSessionParticipantDidChangeReceivingStreams___block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(sessionQueue, v4);
}

uint64_t __59__VCSession_vcSessionParticipantDidChangeReceivingStreams___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) calculateExpectedTotalNetworkBitrateDownlink];
  v3 = *(*(a1 + 32) + 424);

  return [v3 setExpectedBitrate:v2];
}

- (void)vcSessionParticipantDidMediaDecryptionTimeOut:(id)out
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VCSession_vcSessionParticipantDidMediaDecryptionTimeOut___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = out;
  dispatch_async(sessionQueue, block);
}

void __59__VCSession_vcSessionParticipantDidMediaDecryptionTimeOut___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_12;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 168);
    v15 = [*(a1 + 40) uuid];
    v16 = *(*(a1 + 32) + 472);
    *buf = 136316930;
    v19 = v11;
    v20 = 2080;
    v21 = "[VCSession vcSessionParticipantDidMediaDecryptionTimeOut:]_block_invoke";
    v22 = 1024;
    v23 = 1651;
    v24 = 2112;
    *v25 = v2;
    *&v25[8] = 2048;
    *&v25[10] = v13;
    *&v25[18] = 1024;
    *&v25[20] = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2048;
    v29 = v16;
    v8 = "VCSession [%s] %s:%d %@(%p) Session State:%d, Participant:%@, sessionStartTime:%f";
    v9 = v12;
    v10 = 74;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 168);
      v6 = [*(a1 + 40) uuid];
      v7 = *(*(a1 + 32) + 472);
      *buf = 136316418;
      v19 = v3;
      v20 = 2080;
      v21 = "[VCSession vcSessionParticipantDidMediaDecryptionTimeOut:]_block_invoke";
      v22 = 1024;
      v23 = 1651;
      v24 = 1024;
      *v25 = v5;
      *&v25[4] = 2112;
      *&v25[6] = v6;
      *&v25[14] = 2048;
      *&v25[16] = v7;
      v8 = "VCSession [%s] %s:%d Session State:%d, Participant:%@, sessionStartTime:%f";
      v9 = v4;
      v10 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

LABEL_12:
  if (*(*(a1 + 32) + 168) == 3)
  {
    v17 = micro() - *(*(a1 + 32) + 472);
    if (v17 < +[GKSConnectivitySettings getNewSessionJoiningInterval])
    {
      [*(a1 + 32) dispatchedStopWithError:{+[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 12, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 1655), 0)}];
    }
  }
}

- (void)vcSessionParticipantDidMediaDecryptionTimeOutForMKMRecovery:(id)recovery
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__VCSession_vcSessionParticipantDidMediaDecryptionTimeOutForMKMRecovery___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = recovery;
  dispatch_async(sessionQueue, block);
}

void __73__VCSession_vcSessionParticipantDidMediaDecryptionTimeOutForMKMRecovery___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_12;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 168);
    v15 = [*(a1 + 40) uuid];
    v16 = *(*(a1 + 32) + 472);
    *buf = 136316930;
    v24 = v11;
    v25 = 2080;
    v26 = "[VCSession vcSessionParticipantDidMediaDecryptionTimeOutForMKMRecovery:]_block_invoke";
    v27 = 1024;
    v28 = 1664;
    v29 = 2112;
    *v30 = v2;
    *&v30[8] = 2048;
    *&v30[10] = v13;
    *&v30[18] = 1024;
    *&v30[20] = v14;
    v31 = 2112;
    v32 = v15;
    v33 = 2048;
    v34 = v16;
    v8 = "VCSession [%s] %s:%d %@(%p) Session State:%d, Participant:%@, sessionStartTime:%f";
    v9 = v12;
    v10 = 74;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 168);
      v6 = [*(a1 + 40) uuid];
      v7 = *(*(a1 + 32) + 472);
      *buf = 136316418;
      v24 = v3;
      v25 = 2080;
      v26 = "[VCSession vcSessionParticipantDidMediaDecryptionTimeOutForMKMRecovery:]_block_invoke";
      v27 = 1024;
      v28 = 1664;
      v29 = 1024;
      *v30 = v5;
      *&v30[4] = 2112;
      *&v30[6] = v6;
      *&v30[14] = 2048;
      *&v30[16] = v7;
      v8 = "VCSession [%s] %s:%d Session State:%d, Participant:%@, sessionStartTime:%f";
      v9 = v4;
      v10 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

LABEL_12:
  v17 = *(a1 + 32);
  if (*(v17 + 168) == 3)
  {
    v18 = *(v17 + 320);
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "idsParticipantID", *(v17 + 472))}];
    [v18 startMKMRecoveryForParticipantIDs:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v22, 1)}];
    v19 = *(a1 + 32);
    if ((v19[409] & 1) == 0)
    {
      [v19 reportingAgent];
      v20 = @"VCSPUUID";
      v21 = [*(a1 + 40) uuid];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      reportingGenericEvent();
    }
  }
}

- (void)vcSessionParticipantDidRemoteMediaStallTimeout:(id)timeout duration:(double)duration
{
  v5[7] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__VCSession_vcSessionParticipantDidRemoteMediaStallTimeout_duration___block_invoke;
  v5[3] = &unk_1E85F50D8;
  *&v5[6] = duration;
  v5[4] = self;
  v5[5] = timeout;
  dispatch_async(sessionQueue, v5);
}

uint64_t __69__VCSession_vcSessionParticipantDidRemoteMediaStallTimeout_duration___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 409) != 1)
  {
    return result;
  }

  if (*(a1 + 48) >= 10.0 && (*(result + 686) & 1) == 0)
  {
    v3 = [result detailedErrorCodeForNoRemotePacketsError];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3 == 25)
    {
      if (ErrorLogLevelForModule >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 48);
          *buf = 136315906;
          v25 = v8;
          v26 = 2080;
          v27 = "[VCSession vcSessionParticipantDidRemoteMediaStallTimeout:duration:]_block_invoke";
          v28 = 1024;
          v29 = 1689;
          v30 = 2048;
          v31 = v10;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Call is stalling for=%f seconds and only WLAN links are available", buf, 0x26u);
        }
      }
    }

    else
    {
      if (v3 == 24)
      {
        if (ErrorLogLevelForModule >= 5)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 48);
            *buf = 136315906;
            v25 = v5;
            v26 = 2080;
            v27 = "[VCSession vcSessionParticipantDidRemoteMediaStallTimeout:duration:]_block_invoke";
            v28 = 1024;
            v29 = 1685;
            v30 = 2048;
            v31 = v7;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Call is stalling for=%f seconds and no links available", buf, 0x26u);
          }
        }

        goto LABEL_17;
      }

      if (ErrorLogLevelForModule >= 5)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 48);
          *buf = 136315906;
          v25 = v11;
          v26 = 2080;
          v27 = "[VCSession vcSessionParticipantDidRemoteMediaStallTimeout:duration:]_block_invoke";
          v28 = 1024;
          v29 = 1692;
          v30 = 2048;
          v31 = v13;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Call is stalling for=%f seconds and cellular links are available", buf, 0x26u);
        }
      }
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyParticipantID", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "idsParticipantID")}]);
    reportingSymptom();
    *(*(a1 + 32) + 686) = 1;
    CFRelease(Mutable);
  }

LABEL_17:
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"disableFacetimeTimeout", 0);
  v16 = *(a1 + 48);
  result = *(a1 + 32);
  if (v16 < *(result + 648) || BoolValueForKey)
  {
    v18 = *(result + 392);
    if (v16 < v18 || (*(result + 411) & 1) != 0)
    {
      if (v16 < v18 && *(result + 411) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v25 = v19;
            v26 = 2080;
            v27 = "[VCSession vcSessionParticipantDidRemoteMediaStallTimeout:duration:]_block_invoke";
            v28 = 1024;
            v29 = 1712;
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Call is no longer stalling", buf, 0x1Cu);
          }
        }

        return [*(a1 + 32) setIsOneToOneRemoteMediaStalling:0];
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 48);
          *buf = 136315906;
          v25 = v21;
          v26 = 2080;
          v27 = "[VCSession vcSessionParticipantDidRemoteMediaStallTimeout:duration:]_block_invoke";
          v28 = 1024;
          v29 = 1708;
          v30 = 2048;
          v31 = v23;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Call is stalling for %f seconds trying to reconnect", buf, 0x26u);
        }
      }

      result = [*(a1 + 32) setIsOneToOneRemoteMediaStalling:1];
      *(*(a1 + 32) + 686) = 0;
    }
  }

  else
  {
    v17 = [result detailedErrorCodeForNoRemotePacketsError];
    return [*(a1 + 32) dispatchedStopWithError:{+[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", v17, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 1705), *(a1 + 48))}];
  }

  return result;
}

- (void)vcSessionParticipant:(id)participant oneToOneModeDidChange:(BOOL)change
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCSession vcSessionParticipant:oneToOneModeDidChange:]";
      v15 = 1024;
      v16 = 1720;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Received signal from the remote side to switch oneToOneMode", buf, 0x1Cu);
    }
  }

  sessionQueue = self->_sessionQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__VCSession_vcSessionParticipant_oneToOneModeDidChange___block_invoke;
  v9[3] = &unk_1E85F37A0;
  v9[4] = self;
  changeCopy = change;
  dispatch_async(sessionQueue, v9);
}

- (void)vcSessionParticipant:(id)participant didDetectError:(id)error
{
  v5[7] = *MEMORY[0x1E69E9840];
  notificationQueue = self->_notificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__VCSession_vcSessionParticipant_didDetectError___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = self;
  v5[5] = participant;
  v5[6] = error;
  dispatch_async(notificationQueue, v5);
}

uint64_t __49__VCSession_vcSessionParticipant_didDetectError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 didDetectError:v5];
}

- (void)vcSessionParticipant:(id)participant mediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__VCSession_vcSessionParticipant_mediaStateDidChange_forMediaType_didSucceed_error___block_invoke;
  v8[3] = &unk_1E85F7968;
  succeedCopy = succeed;
  v8[4] = participant;
  v8[5] = self;
  typeCopy = type;
  changeCopy = change;
  v8[6] = error;
  dispatch_async(sessionQueue, v8);
}

void __84__VCSession_vcSessionParticipant_mediaStateDidChange_forMediaType_didSucceed_error___block_invoke(int32x2_t *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1[8].i8[0] == 1)
  {
    v3 = a1[4];
    v2 = a1[5];
    if (*&v3 == v2[30])
    {
      [v2 broadcastMediaStateUpdateMessage];
      [*&a1[5] updateVCMediaQueueForMediaType:a1[7].u32[0] mediaState:a1[7].u32[1]];
    }

    else
    {
      [v2 mediaStateChangedForParticipant:?];
    }
  }

  else if (objc_opt_class() == *&a1[5])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __84__VCSession_vcSessionParticipant_mediaStateDidChange_forMediaType_didSucceed_error___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*&a1[5] performSelector:sel_logPrefix];
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
        v11 = a1[7].i32[0];
        v10 = a1[7].i32[1];
        v13 = a1[4];
        v12 = a1[5];
        v14 = a1[6];
        *buf = 136317186;
        v18 = v5;
        v19 = 2080;
        v20 = "[VCSession vcSessionParticipant:mediaStateDidChange:forMediaType:didSucceed:error:]_block_invoke";
        v21 = 1024;
        v22 = 1742;
        v23 = 2112;
        v24 = v4;
        v25 = 2048;
        v26 = v12;
        v27 = 1024;
        v28 = v10;
        v29 = 1024;
        v30 = v11;
        v31 = 2112;
        v32 = v13;
        v33 = 2112;
        v34 = v14;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) Error updating media state=%d for media type=%d, participant=%@, error=%@", buf, 0x50u);
      }
    }
  }

  v7 = a1[5];
  v8 = *(*&v7 + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__VCSession_vcSessionParticipant_mediaStateDidChange_forMediaType_didSucceed_error___block_invoke_266;
  block[3] = &unk_1E85F7968;
  v9 = a1[4];
  block[4] = v7;
  block[5] = v9;
  block[7] = vrev64_s32(a1[7]);
  v16 = a1[8].i8[0];
  block[6] = a1[6];
  dispatch_async(v8, block);
}

uint64_t __84__VCSession_vcSessionParticipant_mediaStateDidChange_forMediaType_didSucceed_error___block_invoke_266(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 mediaStateDidChange:v5 forMediaType:v6 didSucceed:v7 error:v8];
}

- (void)vcSessionParticipant:(id)participant remoteMediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type
{
  v9 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__VCSession_vcSessionParticipant_remoteMediaStateDidChange_forMediaType___block_invoke;
  v6[3] = &unk_1E85F50D8;
  v6[4] = self;
  v6[5] = participant;
  changeCopy = change;
  typeCopy = type;
  dispatch_async(sessionQueue, v6);
}

void __73__VCSession_vcSessionParticipant_remoteMediaStateDidChange_forMediaType___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) mediaStateChangedForParticipant:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 184);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__VCSession_vcSessionParticipant_remoteMediaStateDidChange_forMediaType___block_invoke_2;
  v4[3] = &unk_1E85F50D8;
  v5 = v2;
  v6 = *(a1 + 48);
  dispatch_async(v3, v4);
}

uint64_t __73__VCSession_vcSessionParticipant_remoteMediaStateDidChange_forMediaType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);

  return [v2 vcSession:v3 participantID:v4 remoteMediaStateDidChange:v5 forMediaType:v6];
}

- (void)vcSessionParticipant:(id)participant mediaMixingDidChangeForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType
{
  v9 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__VCSession_vcSessionParticipant_mediaMixingDidChangeForMediaType_mixingMediaType___block_invoke;
  v6[3] = &unk_1E85F50D8;
  v6[4] = participant;
  v6[5] = self;
  typeCopy = type;
  mediaTypeCopy = mediaType;
  dispatch_async(sessionQueue, v6);
}

void __83__VCSession_vcSessionParticipant_mediaMixingDidChangeForMediaType_mixingMediaType___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == *(v2 + 240))
  {
    if (objc_opt_class() == *(a1 + 40))
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

      *buf = 136315650;
      v16 = v5;
      v17 = 2080;
      v18 = "[VCSession vcSessionParticipant:mediaMixingDidChangeForMediaType:mixingMediaType:]_block_invoke";
      v19 = 1024;
      v20 = 1762;
      v7 = "VCSession [%s] %s:%d Broadcasting mediaMixingDidChangeForMediaType state";
      v8 = v6;
      v9 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v12 = *(a1 + 40);
      *buf = 136316162;
      v16 = v10;
      v17 = 2080;
      v18 = "[VCSession vcSessionParticipant:mediaMixingDidChangeForMediaType:mixingMediaType:]_block_invoke";
      v19 = 1024;
      v20 = 1762;
      v21 = 2112;
      v22 = v4;
      v23 = 2048;
      v24 = v12;
      v7 = "VCSession [%s] %s:%d %@(%p) Broadcasting mediaMixingDidChangeForMediaType state";
      v8 = v11;
      v9 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
LABEL_13:
    [*(a1 + 40) broadcastMediaStateUpdateMessage];
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v13 = *(v2 + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__VCSession_vcSessionParticipant_mediaMixingDidChangeForMediaType_mixingMediaType___block_invoke_267;
  block[3] = &unk_1E85F50D8;
  block[4] = v2;
  block[5] = v3;
  block[6] = *(a1 + 48);
  dispatch_async(v13, block);
}

uint64_t __83__VCSession_vcSessionParticipant_mediaMixingDidChangeForMediaType_mixingMediaType___block_invoke_267(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);

  return [v2 vcSession:v3 participantID:v4 mixingDidChangeForMediaType:v5 mixingMediaType:v6];
}

- (void)vcSessionParticipant:(id)participant reactionDidStart:(id)start
{
  v5[7] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VCSession_vcSessionParticipant_reactionDidStart___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = participant;
  v5[5] = self;
  v5[6] = start;
  dispatch_async(sessionQueue, v5);
}

void __51__VCSession_vcSessionParticipant_reactionDidStart___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 == *(v3 + 240))
  {
    v4 = *(a1 + 48);
    v29 = @"VCSessionMessageReactionStarted";
    v30[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315906;
      v18 = v7;
      v19 = 2080;
      v20 = "[VCSession vcSessionParticipant:reactionDidStart:]_block_invoke";
      v21 = 1024;
      v22 = 1775;
      v23 = 2112;
      v24 = v5;
      v9 = "VCSession [%s] %s:%d Broadcasting reactionDidStart status=%@";
      v10 = v8;
      v11 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v14 = *(a1 + 40);
      *buf = 136316418;
      v18 = v12;
      v19 = 2080;
      v20 = "[VCSession vcSessionParticipant:reactionDidStart:]_block_invoke";
      v21 = 1024;
      v22 = 1775;
      v23 = 2112;
      v24 = v6;
      v25 = 2048;
      v26 = v14;
      v27 = 2112;
      v28 = v5;
      v9 = "VCSession [%s] %s:%d %@(%p) Broadcasting reactionDidStart status=%@";
      v10 = v13;
      v11 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_13:
    [*(a1 + 40) broadcastMessageDictionary:v5 withTopic:@"VCSessionMessageReactionStateTopic"];
    [*(a1 + 40) reportingAgent];
    reportingVideoFeatureToggle();
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
  }

  v15 = *(v3 + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VCSession_vcSessionParticipant_reactionDidStart___block_invoke_277;
  block[3] = &unk_1E85F3E30;
  block[4] = v3;
  block[5] = v2;
  block[6] = *(a1 + 48);
  dispatch_async(v15, block);
}

uint64_t __51__VCSession_vcSessionParticipant_reactionDidStart___block_invoke_277(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 participantID:v4 reactionDidStart:v5];
}

- (void)vcSessionParticipantDidStopReacting:(id)reacting
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCSession_vcSessionParticipantDidStopReacting___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = reacting;
  block[5] = self;
  dispatch_async(sessionQueue, block);
}

void __49__VCSession_vcSessionParticipantDidStopReacting___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == *(v2 + 240))
  {
    if (objc_opt_class() == *(a1 + 40))
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

      *buf = 136315650;
      v16 = v5;
      v17 = 2080;
      v18 = "[VCSession vcSessionParticipantDidStopReacting:]_block_invoke";
      v19 = 1024;
      v20 = 1789;
      v7 = "VCSession [%s] %s:%d Broadcasting didStopReacting";
      v8 = v6;
      v9 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v12 = *(a1 + 40);
      *buf = 136316162;
      v16 = v10;
      v17 = 2080;
      v18 = "[VCSession vcSessionParticipantDidStopReacting:]_block_invoke";
      v19 = 1024;
      v20 = 1789;
      v21 = 2112;
      v22 = v4;
      v23 = 2048;
      v24 = v12;
      v7 = "VCSession [%s] %s:%d %@(%p) Broadcasting didStopReacting";
      v8 = v11;
      v9 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
LABEL_13:
    [*(a1 + 40) broadcastMessageDictionary:&unk_1F579E5F8 withTopic:@"VCSessionMessageReactionStateTopic"];
    [*(a1 + 40) reportingAgent];
    reportingVideoFeatureToggle();
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  v13 = *(v2 + 184);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__VCSession_vcSessionParticipantDidStopReacting___block_invoke_282;
  v14[3] = &unk_1E85F37F0;
  v14[4] = v2;
  v14[5] = v3;
  dispatch_async(v13, v14);
}

uint64_t __49__VCSession_vcSessionParticipantDidStopReacting___block_invoke_282(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];

  return [v2 vcSession:v3 participantDidStopReacting:v4];
}

- (void)vcSessionParticipantDidMediaReceiveFlushRequestWithPayloads:(id)payloads
{
  if (self->_oneToOneModeEnabled && [VCTransportSession flushBasebandQueueWithPayloads:"flushBasebandQueueWithPayloads:flushCount:" flushCount:?]&& VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSession vcSessionParticipantDidMediaReceiveFlushRequestWithPayloads:];
    }
  }
}

- (void)vcSessionParticipantDidDetectMKICollision:(id)collision
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCSession_vcSessionParticipantDidDetectMKICollision___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = collision;
  dispatch_async(sessionQueue, block);
}

uint64_t __55__VCSession_vcSessionParticipantDidDetectMKICollision___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __55__VCSession_vcSessionParticipantDidDetectMKICollision___block_invoke_cold_2();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        __55__VCSession_vcSessionParticipantDidDetectMKICollision___block_invoke_cold_1();
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

    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v5 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v6 = *(a1 + 32);
          v7 = [*(a1 + 40) uuid];
          *buf = 136316418;
          v12 = v3;
          v13 = 2080;
          v14 = "[VCSession vcSessionParticipantDidDetectMKICollision:]_block_invoke";
          v15 = 1024;
          v16 = 1819;
          v17 = 2112;
          v18 = v2;
          v19 = 2048;
          v20 = v6;
          v21 = 2112;
          v22 = v7;
          _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) Short MKI collision detected for participant=%@", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) uuid];
        *buf = 136316418;
        v12 = v3;
        v13 = 2080;
        v14 = "[VCSession vcSessionParticipantDidDetectMKICollision:]_block_invoke";
        v15 = 1024;
        v16 = 1819;
        v17 = 2112;
        v18 = v2;
        v19 = 2048;
        v20 = v8;
        v21 = 2112;
        v22 = v9;
        _os_log_fault_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_FAULT, "VCSession [%s] %s:%d %@(%p) Short MKI collision detected for participant=%@", buf, 0x3Au);
      }
    }
  }

  return [*(a1 + 32) dispatchedStopWithError:{+[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 26, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 1820), 0)}];
}

- (void)vcSessionParticipant:(id)participant didChangeDeviceOrientation:(int)orientation
{
  v7 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__VCSession_vcSessionParticipant_didChangeDeviceOrientation___block_invoke;
  v5[3] = &unk_1E85F3890;
  v5[4] = participant;
  v5[5] = self;
  orientationCopy = orientation;
  dispatch_async(sessionQueue, v5);
}

uint64_t __61__VCSession_vcSessionParticipant_didChangeDeviceOrientation___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == *(result + 240))
  {
    v5 = [VideoUtil videoOrientationMessageFromVideoOrientation:*(a1 + 48)];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v5];
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v10 = *(a1 + 48);
      *buf = 136315906;
      v32 = v8;
      v33 = 2080;
      v34 = "[VCSession vcSessionParticipant:didChangeDeviceOrientation:]_block_invoke";
      v35 = 1024;
      v36 = 1830;
      v37 = 1024;
      LODWORD(v38) = v10;
      v11 = "VCSession [%s] %s:%d Broadcasting deviceOrientation=%d";
      v12 = v9;
      v13 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 136316418;
      v32 = v14;
      v33 = 2080;
      v34 = "[VCSession vcSessionParticipant:didChangeDeviceOrientation:]_block_invoke";
      v35 = 1024;
      v36 = 1830;
      v37 = 2112;
      v38 = v7;
      v39 = 2048;
      v40 = v16;
      v41 = 1024;
      v42 = v17;
      v11 = "VCSession [%s] %s:%d %@(%p) Broadcasting deviceOrientation=%d";
      v12 = v15;
      v13 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_18:
    [*(a1 + 40) broadcastMessage:v6 withTopic:@"VCSessionMessageTopicDeviceOrientation"];
    v18 = VCVideoAttributeOrientationToAggregatorOrientation(*(a1 + 48));
    v29 = @"ORTNLocal";
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v18];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [*(a1 + 40) reportingAgent];
    return reportingGenericEvent();
  }

  if (*(result + 409) == 1)
  {
    result = [result oneToOneRemoteParticipant];
    if (v3 == result)
    {
      if (objc_opt_class() == *(a1 + 40))
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return [*(*(a1 + 40) + 240) updateRemoteDeviceOrientation:*(a1 + 48)];
        }

        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return [*(*(a1 + 40) + 240) updateRemoteDeviceOrientation:*(a1 + 48)];
        }

        v21 = *(a1 + 48);
        *buf = 136315906;
        v32 = v19;
        v33 = 2080;
        v34 = "[VCSession vcSessionParticipant:didChangeDeviceOrientation:]_block_invoke";
        v35 = 1024;
        v36 = 1839;
        v37 = 1024;
        LODWORD(v38) = v21;
        v22 = "VCSession [%s] %s:%d Updating local participant with remote deviceOrientation=%d";
        v23 = v20;
        v24 = 34;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v4 = [*(a1 + 40) performSelector:sel_logPrefix];
        }

        else
        {
          v4 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return [*(*(a1 + 40) + 240) updateRemoteDeviceOrientation:*(a1 + 48)];
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return [*(*(a1 + 40) + 240) updateRemoteDeviceOrientation:*(a1 + 48)];
        }

        v27 = *(a1 + 40);
        v28 = *(a1 + 48);
        *buf = 136316418;
        v32 = v25;
        v33 = 2080;
        v34 = "[VCSession vcSessionParticipant:didChangeDeviceOrientation:]_block_invoke";
        v35 = 1024;
        v36 = 1839;
        v37 = 2112;
        v38 = v4;
        v39 = 2048;
        v40 = v27;
        v41 = 1024;
        v42 = v28;
        v22 = "VCSession [%s] %s:%d %@(%p) Updating local participant with remote deviceOrientation=%d";
        v23 = v26;
        v24 = 54;
      }

      _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      return [*(*(a1 + 40) + 240) updateRemoteDeviceOrientation:*(a1 + 48)];
    }
  }

  return result;
}

- (void)serverDidDie
{
  v3[5] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__VCSession_serverDidDie__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(sessionQueue, v3);
}

uint64_t __25__VCSession_serverDidDie__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 824) & 1) == 0)
  {
    v3 = result;
    *(v2 + 824) = 1;
    [*(result + 32) reportingAgent];
    reportingSymptom();
    v4 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 23, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 1859], 0);
    v5 = *(v3 + 32);

    return [v5 dispatchedStopWithError:v4 didRemoteCancel:0];
  }

  return result;
}

- (void)didReceivedSessionStatsAtTime:(double)time
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  [(VCSession *)self updateNetworkFeedbackControllerReport:&v7];
  feedbackController = self->_feedbackController;
  v5[0] = v7;
  v5[1] = v8;
  v6 = v9;
  [(VCNetworkFeedbackController *)feedbackController sendFeedbackControllerReport:v5];
}

- (void)updateNetworkFeedbackControllerReport:(id *)report
{
  v17 = *MEMORY[0x1E69E9840];
  report->var0 = self->_currentConnectionType == 3;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  VCRateControlGetStatistics([(AVCRateController *)self->_uplinkRateController statisticsCollector:0], 5, &v7);
  v5 = (*&v9 * 100.0);
  report->var5 = self->_uplinkTargetBitrate;
  report->var6 = v5;
  report->var7 = HIDWORD(v8);
  report->var8 = [(AVCStatisticsCollector *)[(AVCRateController *)self->_uplinkRateController statisticsCollector] estimatedBandwidthCap]!= 0;
  VCRateControlGetStatistics([(AVCRateController *)self->_downlinkRateController statisticsCollector], 5, &v7);
  v6 = (*&v9 * 100.0);
  report->var1 = self->_downlinkTargetBitrate;
  report->var2 = v6;
  report->var3 = HIDWORD(v8);
  report->var4 = [(AVCStatisticsCollector *)[(AVCRateController *)self->_downlinkRateController statisticsCollector] estimatedBandwidthCap]!= 0;
}

- (void)rateController:(id)controller targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter
{
  v9 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__VCSession_rateController_targetBitrateDidChange_rateChangeCounter___block_invoke;
  v6[3] = &unk_1E85F50D8;
  v6[4] = controller;
  v6[5] = self;
  changeCopy = change;
  counterCopy = counter;
  dispatch_async(sessionQueue, v6);
}

void __69__VCSession_rateController_targetBitrateDidChange_rateChangeCounter___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(*(a1 + 32) "statisticsCollector")] == 4)
  {
    *(*(a1 + 40) + 432) = *(a1 + 48);
    [*(*(a1 + 40) + 240) updateUplinkTargetBitrate:? rateChangeCounter:?];
    [*(a1 + 40) reportingSessionParticipantEvent:160 withParticipant:0];
    [*(*(a1 + 40) + 280) setClientTargetBitrate:*(a1 + 48)];
    v2 = *(a1 + 40);
    v3 = *(v2 + 432);
LABEL_3:
    [v2 setMediaQueuePeakBitrateWithTargetBitrate:v3];
    goto LABEL_21;
  }

  if ([objc_msgSend(*(a1 + 32) "statisticsCollector")] != 5)
  {
    [*(*(a1 + 40) + 240) updateTargetBitrateOneToOne:*(a1 + 48) rateChangeCounter:*(a1 + 52)];
    v2 = *(a1 + 40);
    if (*(v2 + 409) != 1)
    {
      goto LABEL_21;
    }

    v3 = *(a1 + 48);
    goto LABEL_3;
  }

  if (objc_opt_class() == *(a1 + 40))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_18;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v7 = *(*(a1 + 40) + 436);
    v8 = *(a1 + 48);
    *buf = 136316162;
    v25 = v5;
    v26 = 2080;
    v27 = "[VCSession rateController:targetBitrateDidChange:rateChangeCounter:]_block_invoke";
    v28 = 1024;
    v29 = 1900;
    v30 = 1024;
    *v31 = v7;
    *&v31[4] = 1024;
    *&v31[6] = v8;
    v9 = "VCSession [%s] %s:%d Downlink TargetBitrate changed from %u to %u";
    v10 = v6;
    v11 = 40;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 40) performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
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

    v14 = *(a1 + 40);
    v15 = *(v14 + 436);
    v16 = *(a1 + 48);
    *buf = 136316674;
    v25 = v12;
    v26 = 2080;
    v27 = "[VCSession rateController:targetBitrateDidChange:rateChangeCounter:]_block_invoke";
    v28 = 1024;
    v29 = 1900;
    v30 = 2112;
    *v31 = v4;
    *&v31[8] = 2048;
    v32 = v14;
    v33 = 1024;
    v34 = v15;
    v35 = 1024;
    v36 = v16;
    v9 = "VCSession [%s] %s:%d %@(%p) Downlink TargetBitrate changed from %u to %u";
    v10 = v13;
    v11 = 60;
  }

  _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_18:
  *(*(a1 + 40) + 436) = *(a1 + 48);
  [*(a1 + 40) reportingSessionParticipantEvent:181 withParticipant:0];
  v17 = *(a1 + 40);
  if ((*(v17 + 409) & 1) == 0)
  {
    [v17 distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:0];
    v17 = *(a1 + 40);
  }

  [*(v17 + 280) setDownlinkTargetBitrate:*(v17 + 436)];
LABEL_21:
  if ([*(*(a1 + 40) + 232) sessionMode] == 2 || !objc_msgSend(*(*(a1 + 40) + 232), "sessionMode") || objc_msgSend(*(*(a1 + 40) + 232), "sessionMode") == 3)
  {
    v22[0] = @"Targetbitrate";
    v23[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
    v22[1] = @"BandwidthEstimation";
    v23[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(*(a1 + 32), "statisticsCollector"), "sharedEstimatedBandwidth")}];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v19 = *(a1 + 40);
    v20 = *(v19 + 184);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__VCSession_rateController_targetBitrateDidChange_rateChangeCounter___block_invoke_293;
    block[3] = &unk_1E85F3E30;
    block[4] = *(a1 + 32);
    block[5] = v19;
    block[6] = v18;
    dispatch_async(v20, block);
  }
}

uint64_t __69__VCSession_rateController_targetBitrateDidChange_rateChangeCounter___block_invoke_293(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "statisticsCollector")];
  v3 = [*(a1 + 40) delegate];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v2 == 4)
  {

    return [v3 vcSession:v4 uplinkRateAdaptationDidChangeWithInfo:v5];
  }

  else
  {

    return [v3 vcSession:v4 downlinkRateAdaptationDidChangeWithInfo:v5];
  }
}

- (int)learntBitrateForSegment:(id)segment defaultValue:(int)value
{
  [(VCObject *)self reportingAgent];

  return reportingGetLearntBitrateForSegment();
}

- (void)rateController:(id)controller isECNEnabled:(BOOL)isECNForcedByNetwork isECNCapable:(BOOL)capable
{
  v41 = *MEMORY[0x1E69E9840];
  if (self->_oneToOneSettings.rateController == controller && self->_isECNCapable)
  {
    if (self->_ecnLinkType == 3)
    {
      isECNForcedByNetwork = self->_isECNForcedByNetwork;
    }

    self->_isECNEnabled = isECNForcedByNetwork;
    if (self->_isECNCapable)
    {
      self->_isECNCapable = capable;
      isECNForcedByNetwork = self->_isECNEnabled;
    }

    v6 = VCMediaQueue_SetECNEnabled(self->_mediaQueue, isECNForcedByNetwork);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (!v6 || ErrorLogLevelForModule >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      if (v6)
      {
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          isECNCapable = self->_isECNCapable;
          ecnLinkType = self->_ecnLinkType;
          isECNEnabled = self->_isECNEnabled;
          v27 = 136316674;
          if (isECNCapable)
          {
            v14 = "YES";
          }

          else
          {
            v14 = "NO";
          }

          v28 = v9;
          if (isECNEnabled)
          {
            v15 = "YES";
          }

          else
          {
            v15 = "NO";
          }

          v29 = 2080;
          v30 = "[VCSession rateController:isECNEnabled:isECNCapable:]";
          v31 = 1024;
          v32 = 1942;
          v33 = 2080;
          v34 = v14;
          v35 = 1024;
          v36 = ecnLinkType;
          v37 = 2080;
          v38 = v15;
          v39 = 2080;
          v40 = "FAILED";
LABEL_29:
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d VCRC current ECN status: _isECNCapable=%s and _ecnLinkType=%d, changing ECN status isECNEnabled=%s, VCMediaQueue set isECNEnabled=%s", &v27, 0x40u);
        }
      }

      else
      {
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v10 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v17 = self->_isECNCapable;
            v18 = self->_ecnLinkType;
            v19 = self->_isECNEnabled;
            v27 = 136316674;
            if (v17)
            {
              v20 = "YES";
            }

            else
            {
              v20 = "NO";
            }

            v28 = v9;
            if (v19)
            {
              v21 = "YES";
            }

            else
            {
              v21 = "NO";
            }

            v29 = 2080;
            v30 = "[VCSession rateController:isECNEnabled:isECNCapable:]";
            v31 = 1024;
            v32 = 1942;
            v33 = 2080;
            v34 = v20;
            v35 = 1024;
            v36 = v18;
            v37 = 2080;
            v38 = v21;
            v39 = 2080;
            v40 = "PASS";
            goto LABEL_29;
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v22 = self->_isECNCapable;
          v23 = self->_ecnLinkType;
          v24 = self->_isECNEnabled;
          v27 = 136316674;
          if (v22)
          {
            v25 = "YES";
          }

          else
          {
            v25 = "NO";
          }

          v28 = v9;
          if (v24)
          {
            v26 = "YES";
          }

          else
          {
            v26 = "NO";
          }

          v29 = 2080;
          v30 = "[VCSession rateController:isECNEnabled:isECNCapable:]";
          v31 = 1024;
          v32 = 1942;
          v33 = 2080;
          v34 = v25;
          v35 = 1024;
          v36 = v23;
          v37 = 2080;
          v38 = v26;
          v39 = 2080;
          v40 = "PASS";
          _os_log_fault_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_FAULT, "VCSession [%s] %s:%d VCRC current ECN status: _isECNCapable=%s and _ecnLinkType=%d, changing ECN status isECNEnabled=%s, VCMediaQueue set isECNEnabled=%s", &v27, 0x40u);
        }
      }
    }
  }
}

- (void)mediaController:(void *)controller mediaSuggestionDidChange:(VCRateControlMediaSuggestion)change
{
  v43 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (self->_oneToOneSettings.mediaController == controller)
  {
    [(VCSessionParticipantLocal *)self->_localParticipant setMediaSuggestion:&changeCopy];
    return;
  }

  if ((*&change.var0 & 0x1000000) == 0)
  {
    v6 = 0;
    goto LABEL_16;
  }

  v6 = [(VCSession *)self flushBasebandWithPayloads:[(VCSessionParticipantLocal *)self->_localParticipant videoPayloadTypes]];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        videoPayloadTypes = [(VCSessionParticipantLocal *)self->_localParticipant videoPayloadTypes];
        *buf = 136316162;
        v30 = v8;
        v31 = 2080;
        v32 = "[VCSession mediaController:mediaSuggestionDidChange:]";
        v33 = 1024;
        v34 = 1958;
        v35 = 2112;
        v36 = videoPayloadTypes;
        v37 = 1024;
        LODWORD(selfCopy2) = v6;
        v11 = "VCSession [%s] %s:%d flush baseband for videoPayloads:%@, successfulFlushCount: %d";
        v12 = v9;
        v13 = 44;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSession *)self performSelector:sel_logPrefix];
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
        videoPayloadTypes2 = [(VCSessionParticipantLocal *)self->_localParticipant videoPayloadTypes];
        *buf = 136316674;
        v30 = v14;
        v31 = 2080;
        v32 = "[VCSession mediaController:mediaSuggestionDidChange:]";
        v33 = 1024;
        v34 = 1958;
        v35 = 2112;
        v36 = v7;
        v37 = 2048;
        selfCopy2 = self;
        v39 = 2112;
        v40 = videoPayloadTypes2;
        v41 = 1024;
        v42 = v6;
        v11 = "VCSession [%s] %s:%d %@(%p) flush baseband for videoPayloads:%@, successfulFlushCount: %d";
        v12 = v15;
        v13 = 64;
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  if ((*&change & 0x100000000) == 0)
  {
    return;
  }

  v17 = [(VCSession *)self flushBasebandWithPayloads:[(VCSessionParticipantLocal *)self->_localParticipant audioPayloadTypes]]+ v6;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioPayloadTypes = [(VCSessionParticipantLocal *)self->_localParticipant audioPayloadTypes];
        *buf = 136316162;
        v30 = v19;
        v31 = 2080;
        v32 = "[VCSession mediaController:mediaSuggestionDidChange:]";
        v33 = 1024;
        v34 = 1962;
        v35 = 2112;
        v36 = audioPayloadTypes;
        v37 = 1024;
        LODWORD(selfCopy2) = v17;
        v22 = "VCSession [%s] %s:%d flush baseband for audioPayloads:%@, successfulFlushCount: %d";
        v23 = v20;
        v24 = 44;
LABEL_27:
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioPayloadTypes2 = [(VCSessionParticipantLocal *)self->_localParticipant audioPayloadTypes];
        *buf = 136316674;
        v30 = v25;
        v31 = 2080;
        v32 = "[VCSession mediaController:mediaSuggestionDidChange:]";
        v33 = 1024;
        v34 = 1962;
        v35 = 2112;
        v36 = v18;
        v37 = 2048;
        selfCopy2 = self;
        v39 = 2112;
        v40 = audioPayloadTypes2;
        v41 = 1024;
        v42 = v17;
        v22 = "VCSession [%s] %s:%d %@(%p) flush baseband for audioPayloads:%@, successfulFlushCount: %d";
        v23 = v26;
        v24 = 64;
        goto LABEL_27;
      }
    }
  }
}

- (int)flushBasebandWithPayloads:(id)payloads
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [payloads countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(payloads);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v13[0] = @"transportSessionBasebandQueueFlushPayloadType";
        v13[1] = @"transportSessionBasebandQueueFlushPayloadTypeFieldOffset";
        v14[0] = v7;
        v14[1] = &unk_1F579A0B0;
        v13[2] = @"transportSessionBasebandQueueFlushTransactionID";
        v14[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_basebandFlushTransactionID];
        v14[3] = &unk_1F579A0C8;
        v13[3] = @"transportSessionBasebandQueueFlushCriterion";
        v13[4] = @"transportSessionBasebandQueueFlushTimestamp";
        v14[4] = &unk_1F579A0C8;
        [v10 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 5)}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [payloads countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v4);
  }

  [(VCTransportSession *)self->_transportSession flushBasebandQueueWithPayloads:v10 flushCount:&v12];

  ++self->_basebandFlushTransactionID;
  return v12;
}

- (void)updatePresentationInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  v5 = VCVideoCaptureServer_CopyLocalVideoAttributes(+[VCVideoCaptureServer VCVideoCaptureServerSingleton]);
  orientation = [v5 orientation];

  VCSpatialAudioMetadata_UpdateOrientation(self->_spatialMetadata, orientation);
  if (info && (presentationInfo = self->_presentationInfo) != 0)
  {
    [(VCSessionPresentationInfo *)presentationInfo unserialize:info];
    if ([(VCSessionPresentationInfo *)self->_presentationInfo hasPendingChanges])
    {
      VCSpatialAudioMetadata_UpdateGlobalInfo(self->_spatialMetadata, [(VCSessionPresentationInfo *)self->_presentationInfo metadataGlobalInfo]);
      if (!self->_oneToOneModeEnabled)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        remoteParticipants = [(VCSession *)self remoteParticipants];
        v9 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          do
          {
            v12 = 0;
            do
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(remoteParticipants);
              }

              v13 = *(*(&v23 + 1) + 8 * v12);
              [v13 setPresentationState:{-[VCSessionPresentationInfo uiState](self->_presentationInfo, "uiState")}];
              [v13 updateShouldEnableMLEnhance];
              ++v12;
            }

            while (v10 != v12);
            v10 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v23 objects:v22 count:16];
          }

          while (v10);
        }

        [(VCSession *)self distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:0];
      }
    }

    [(VCSession *)self updateParticipantWindowState];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = v14;
      v18 = 2080;
      v19 = "[VCSession updatePresentationInfo:]";
      v20 = 1024;
      v21 = 2013;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d [AVC SPATIAL AUDIO] Presentation info is nil", &v16, 0x1Cu);
    }
  }

  [(VCSession *)self applySpatialMetadata];
}

- (void)applySpatialMetadata
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __33__VCSession_applySpatialMetadata__block_invoke(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 176);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__VCSession_applySpatialMetadata__block_invoke_2;
    block[3] = &unk_1E85F3778;
    block[4] = v4;
    dispatch_async(v5, block);
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __33__VCSession_applySpatialMetadata__block_invoke_cold_1();
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

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 32);
          *buf = 136316418;
          v12 = v7;
          v13 = 2080;
          v14 = "[VCSession applySpatialMetadata]_block_invoke";
          v15 = 1024;
          v16 = 2037;
          v17 = 2112;
          v18 = v6;
          v19 = 2048;
          v20 = v9;
          v21 = 1024;
          v22 = a2;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) [AVC SPATIAL AUDIO] Failed to apply the spatial metadata. result=%08x", buf, 0x36u);
        }
      }
    }
  }
}

- (BOOL)isTLEEnabledOnPrimaryConnection
{
  v2 = VCConnectionManager_CopyPrimaryConnection([(VCTransportSession *)self->_transportSession connectionManager]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IsQUICPod = VCConnectionIDS_IsQUICPod(v2);
    if (!v2)
    {
      return IsQUICPod;
    }

    goto LABEL_5;
  }

  IsQUICPod = 0;
  if (v2)
  {
LABEL_5:
    CFRelease(v2);
  }

  return IsQUICPod;
}

- (void)sendThermalAndSliceMessageToPariticipant:(id)pariticipant
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_lastThermalLevel), @"Thermal"}];
  [(VCSession *)self sendDeviceStateMessageToParticipant:pariticipant withStatus:dictionary checkDNUStatus:1];
  if (!self->_oneToOneModeEnabled)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", VCConnection_ReportingSliceStatus(self->_currentActiveConnection)), @"sliceStatus"}];

    [(VCSession *)self sendDeviceStateMessageToParticipant:pariticipant withStatus:dictionary2 checkDNUStatus:0];
  }
}

- (void)sendDeviceStateMessageToParticipant:(id)participant withStatus:(id)status checkDNUStatus:(BOOL)uStatus
{
  if (uStatus && !self->_isDNUCollectionEnabled)
  {
    [VCSession sendDeviceStateMessageToParticipant:withStatus:checkDNUStatus:];
  }

  else
  {
    [participant capabilities];
    if (v8 != 1)
    {
      v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:status];
      sessionMessaging = self->_sessionMessaging;
      idsParticipantID = [participant idsParticipantID];

      [(VCSessionMessaging *)sessionMessaging sendMessageDictionary:v9 withTopic:@"VCSessionMessageTopicDeviceState" participantID:idsParticipantID];
    }
  }
}

- (void)sendNetworkCapabilitiesMessageToParticipant:(id)participant
{
  v11[6] = *MEMORY[0x1E69E9840];
  [participant capabilities];
  if (v5 != 1)
  {
    if (self->_oneToOneModeEnabled)
    {
      v6 = &OBJC_IVAR___VCSession__oneToOneSettings;
    }

    else
    {
      v6 = &OBJC_IVAR___VCSession__uplinkRateController;
    }

    v7 = *(&self->super.super.isa + *v6);
    v10[0] = @"RCEV";
    v11[0] = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "rateControlExperimentConfig")}];
    v10[1] = @"RCEG";
    v11[1] = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "rateControlExperimentConfig") >> 32}];
    v10[2] = @"SBVERS";
    v8 = MEMORY[0x1E696AD98];
    [v7 rateControlExperimentConfig];
    v11[2] = [v8 numberWithUnsignedInt:v9];
    v10[3] = @"RULRTX";
    v11[3] = [MEMORY[0x1E696AD98] numberWithBool:self->_isUplinkRetransmissionForVideoEnabled];
    v10[4] = @"RTLE";
    v11[4] = [MEMORY[0x1E696AD98] numberWithBool:{-[VCSession isTLEEnabledOnPrimaryConnection](self, "isTLEEnabledOnPrimaryConnection")}];
    v10[5] = @"MQSchP";
    v11[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_mediaQueueConfiguration.schedulePolicy];
    -[VCSessionMessaging sendMessageDictionary:withTopic:participantID:](self->_sessionMessaging, "sendMessageDictionary:withTopic:participantID:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6], @"VCSessionMessageTopicRateControlConfig", objc_msgSend(participant, "idsParticipantID"));
  }
}

- (void)updateParticipantWindowState
{
  uiState = [(VCSessionPresentationInfo *)self->_presentationInfo uiState];
  presentationInfo = self->_presentationInfo;
  if (presentationInfo)
  {
    [(VCSessionPresentationInfo *)presentationInfo avcSessionPresentationInfo];
    v5 = v16;
    v6 = v15;
    v7 = v18;
    v8 = v17;
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  [(VCSessionParticipantLocal *)self->_localParticipant updateWindowState:uiState isLocal:1 windowRect:v6, v5, v8, v7];
  v9 = objc_alloc(MEMORY[0x1E695DF20]);
  v10 = [MEMORY[0x1E696AD98] numberWithInt:uiState];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v14 = [v9 initWithObjectsAndKeys:{v10, @"VCWindowState", v11, @"VCWindowOriginX", v12, @"VCWindowOriginY", v13, @"VCWindowWidth", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v7), @"VCWindowHeight", 0}];
  if ([(VCSession *)self oneToOneModeEnabled]&& [(VCSession *)self oneToOneRemoteParticipant])
  {
    [(VCSessionMessaging *)self->_sessionMessaging sendMessageDictionary:v14 withTopic:@"VCWindowStateChange" participantID:[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] idsParticipantID]];
  }
}

- (void)updateParticipantUUID:(id)d withUpdateConfig:(id)config redistributeBitrate:(BOOL *)bitrate
{
  v27 = *MEMORY[0x1E69E9840];
  if ([d isEqualToString:{-[VCSessionParticipant uuid](self->_localParticipant, "uuid")}])
  {

    [(VCSession *)self updatePlaybackSynchronizationGroupUUIDWithUpdateConfig:config];
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID objectForKeyedSubscript:d];
    if (v9)
    {
      v10 = v9;
      [(VCSession *)self updateMicrophoneMuted:1 withUpdateConfig:config forParticipant:v9];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72__VCSession_updateParticipantUUID_withUpdateConfig_redistributeBitrate___block_invoke;
      v14[3] = &unk_1E85F7990;
      v14[4] = v10;
      v14[5] = self;
      [config enumerateCachedTransitionsWithBlock:v14];
      [(VCSession *)self updateMicrophoneMuted:0 withUpdateConfig:config forParticipant:v10];
      [(VCSession *)self updateVideoQualityWithUpdateConfig:config forParticipant:v10 redistributeBitrate:bitrate];
      [(VCSession *)self updateVisibilityIndexWithUpdateConfig:config forParticipant:v10 redistributeBitrate:bitrate];
      [(VCSession *)self updateProminenceIndexWithUpdateConfig:config forParticipant:v10 redistributeBitrate:bitrate];
      [(VCSession *)self updateIsPlaybackSynchronizationGroupMemberWithUpdateConfig:config forParticipant:v10];
      [(VCSession *)self updatePositionalInfoWithUpdateConfig:config forParticipant:v10];
    }

    else if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession updateParticipantUUID:withUpdateConfig:redistributeBitrate:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v16 = v12;
          v17 = 2080;
          v18 = "[VCSession updateParticipantUUID:withUpdateConfig:redistributeBitrate:]";
          v19 = 1024;
          v20 = 2236;
          v21 = 2112;
          v22 = v11;
          v23 = 2048;
          selfCopy = self;
          v25 = 2112;
          dCopy = d;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) Failed to find participant with uuid=%@", buf, 0x3Au);
        }
      }
    }
  }
}

uint64_t __72__VCSession_updateParticipantUUID_withUpdateConfig_redistributeBitrate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 136316418;
      v13 = v7;
      v14 = 2080;
      v15 = "[VCSession updateParticipantUUID:withUpdateConfig:redistributeBitrate:]_block_invoke";
      v16 = 1024;
      v17 = 2241;
      v18 = 2048;
      v19 = v9;
      v20 = 2112;
      v21 = VCSessionMediaType_Name(a2);
      v22 = 2112;
      v23 = VCSessionMediaState_Name(a4);
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d changing VCSessionParticipant=%p mediaType=%@ to state=%@", &v12, 0x3Au);
    }
  }

  result = [*(a1 + 32) setMediaState:a4 forMediaType:a2];
  v11 = *(a1 + 40);
  if (v11[409] == 1)
  {
    return [v11 updateOneToOneRateControllerForVideoEnabled:{objc_msgSend(v11, "isOneToOneUsingVideo")}];
  }

  return result;
}

- (void)updateParticipantConfigurations:(id)configurations sessionPresentationInfo:(id)info
{
  v5[7] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__VCSession_updateParticipantConfigurations_sessionPresentationInfo___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = self;
  v5[5] = configurations;
  v5[6] = info;
  dispatch_async(sessionQueue, v5);
}

void __69__VCSession_updateParticipantConfigurations_sessionPresentationInfo___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      v5 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 40);
          *buf = 136315906;
          *&buf[4] = v3;
          *&buf[12] = 2080;
          *&buf[14] = "[VCSession updateParticipantConfigurations:sessionPresentationInfo:]_block_invoke";
          *&buf[22] = 1024;
          v21 = 2258;
          v22 = 2112;
          v23 = v6;
          v7 = "VCSession [%s] %s:%d %@";
          v8 = v4;
          v9 = 38;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __69__VCSession_updateParticipantConfigurations_sessionPresentationInfo___block_invoke_cold_1();
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

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_18;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    v12 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        *buf = 136316418;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "[VCSession updateParticipantConfigurations:sessionPresentationInfo:]_block_invoke";
        *&buf[22] = 1024;
        v21 = 2258;
        v22 = 2112;
        v23 = v2;
        v24 = 2048;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        v7 = "VCSession [%s] %s:%d %@(%p) %@";
        v8 = v11;
        v9 = 58;
        goto LABEL_13;
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 136316418;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "[VCSession updateParticipantConfigurations:sessionPresentationInfo:]_block_invoke";
      *&buf[22] = 1024;
      v21 = 2258;
      v22 = 2112;
      v23 = v2;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, "VCSession [%s] %s:%d %@(%p) %@", buf, 0x3Au);
    }
  }

LABEL_18:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v21) = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__VCSession_updateParticipantConfigurations_sessionPresentationInfo___block_invoke_349;
  v19[3] = &unk_1E85F79B8;
  v17 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v19[5] = buf;
  [v17 enumerateKeysAndObjectsUsingBlock:v19];
  [*(a1 + 32) updatePresentationInfo:*(a1 + 48)];
  if (*(*&buf[8] + 24) == 1)
  {
    v18 = *(a1 + 32);
    if ((v18[409] & 1) == 0)
    {
      [v18 distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:1];
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:(BOOL)transition
{
  transitionCopy = transition;
  selfCopy = self;
  v68 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v57 = v5;
        v58 = 2080;
        v59 = "[VCSession distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:]";
        v60 = 1024;
        v61 = 2274;
        v62 = 1024;
        LODWORD(v63) = transitionCopy;
        v7 = "VCSession [%s] %s:%d forceSeamLess:%d";
        v8 = v6;
        v9 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCSession *)selfCopy performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v57 = v10;
        v58 = 2080;
        v59 = "[VCSession distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:]";
        v60 = 1024;
        v61 = 2274;
        v62 = 2112;
        v63 = v4;
        v64 = 2048;
        v65 = selfCopy;
        v66 = 1024;
        v67 = transitionCopy;
        v7 = "VCSession [%s] %s:%d %@(%p) forceSeamLess:%d";
        v8 = v11;
        v9 = 54;
        goto LABEL_11;
      }
    }
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](-[VCSession remoteParticipants](selfCopy, "remoteParticipants"), "count")}];
  v13 = [(VCSessionDownlinkBandwidthAllocator *)selfCopy->_downlinkBandwidthAllocator distributeBitrate:selfCopy->_downlinkTargetBitrate];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v45 = v13;
  obj = [v13 allKeys];
  v14 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v53;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        v19 = selfCopy;
        v20 = [(NSMutableDictionary *)selfCopy->_remoteParticipantsMapByUUID objectForKeyedSubscript:v18];
        v21 = [v20 recommendedStreamIDsForSelectedMediaEntries:objc_msgSend(v45 forceSeamlessTransition:{"objectForKeyedSubscript:", v18), transitionCopy}];
        v22 = v20;
        selfCopy = v19;
        [v12 setObject:v21 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", objc_msgSend(v22, "idsParticipantID"))}];
      }

      v15 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
    }

    while (v15);
  }

  if (([(NSMutableDictionary *)selfCopy->_optInDictionary isEqualToDictionary:v12]& 1) == 0)
  {
    if (objc_opt_class() == selfCopy)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_31;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      downlinkTargetBitrate = selfCopy->_downlinkTargetBitrate;
      *buf = 136315906;
      v57 = v24;
      v58 = 2080;
      v59 = "[VCSession distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:]";
      v60 = 1024;
      v61 = 2286;
      v62 = 1024;
      LODWORD(v63) = downlinkTargetBitrate;
      v27 = "VCSession [%s] %s:%d New opt-in dictionary for new downlink target bitrate:[%u]";
      v28 = v25;
      v29 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [(VCSession *)selfCopy performSelector:sel_logPrefix];
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_31;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v32 = selfCopy->_downlinkTargetBitrate;
      *buf = 136316418;
      v57 = v30;
      v58 = 2080;
      v59 = "[VCSession distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:]";
      v60 = 1024;
      v61 = 2286;
      v62 = 2112;
      v63 = v23;
      v64 = 2048;
      v65 = selfCopy;
      v66 = 1024;
      v67 = v32;
      v27 = "VCSession [%s] %s:%d %@(%p) New opt-in dictionary for new downlink target bitrate:[%u]";
      v28 = v31;
      v29 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
LABEL_31:
    [-[VCTransportSession sessionInfoSynchronizer](selfCopy->_transportSession "sessionInfoSynchronizer")];
    v33 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
    if ([v12 count])
    {
      [(AVCRateController *)selfCopy->_downlinkRateController setPaused:1];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    remoteParticipants = [(VCSession *)selfCopy remoteParticipants];
    v35 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (v35)
    {
      v36 = v35;
      LOBYTE(v37) = 0;
      v38 = *v48;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(remoteParticipants);
          }

          v40 = *(*(&v47 + 1) + 8 * j);
          [v40 setActiveStreamIDs:{objc_msgSend(v12, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", objc_msgSend(v40, "idsParticipantID")))}];
          if ([v40 isVideoExpected] && objc_msgSend(v40, "optedInVideoStreamID"))
          {
            isRemoteScreenEnabled = 1;
          }

          else
          {
            isRemoteScreenEnabled = [v40 isRemoteScreenEnabled];
          }

          v37 = isRemoteScreenEnabled | v37 & 1;
        }

        v36 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v47 objects:v46 count:16];
      }

      while (v36);
      v42 = v37 ^ 1u;
      v33 = &OBJC_IVAR___VCMediaNegotiationBlob__faceTimeSettings;
    }

    else
    {
      v42 = 1;
    }

    [objc_msgSend(*(&selfCopy->super.super.isa + v33[90]) "statisticsCollector")];
    [(VCSession *)selfCopy reportingSessionDownlinkOptInEvent:v12 selectedMediaEntriesForParticipants:v45];
    [(VCSession *)selfCopy setOptInDictionary:v12];
  }
}

- (void)reportingSessionDownlinkOptInEvent:(id)event selectedMediaEntriesForParticipants:(id)participants
{
  selfCopy = self;
  v37 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)[(VCSession *)self remoteParticipants] count])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, @"VCSPTargetBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:selfCopy->_downlinkTargetBitrate]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [participants allKeys];
    v26 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v26)
    {
      v23 = *v34;
      v24 = selfCopy;
      do
      {
        v8 = 0;
        do
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v33 + 1) + 8 * v8);
          v10 = [(NSMutableDictionary *)selfCopy->_remoteParticipantsMapByUUID objectForKeyedSubscript:v9];
          v11 = v6;
          [v6 addObject:v9];
          participantsCopy = participants;
          v13 = [participants objectForKeyedSubscript:v9];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v27 count:16];
          if (v14)
          {
            v15 = v14;
            LODWORD(v16) = 0;
            v17 = *v29;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v29 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v16 = [*(*(&v28 + 1) + 8 * i) maxNetworkBitrate] + v16;
              }

              v15 = [v13 countByEnumeratingWithState:&v28 objects:v27 count:16];
            }

            while (v15);
          }

          else
          {
            v16 = 0;
          }

          [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v16)}];
          v19 = [event objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", objc_msgSend(v10, "idsParticipantID"))}];
          if ([v19 count])
          {
            [v22 addObject:{objc_msgSend(v19, "componentsJoinedByString:", @", ")}];
          }

          ++v8;
          selfCopy = v24;
          v6 = v11;
          participants = participantsCopy;
        }

        while (v8 != v26);
        v26 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v26);
    }

    if ([v6 count])
    {
      CFDictionaryAddValue(Mutable, @"VCSPUUIDList", [v6 componentsJoinedByString:{@", "}]);
    }

    if ([v7 count])
    {
      CFDictionaryAddValue(Mutable, @"VCSPDownlinkBitrates", [v7 componentsJoinedByString:{@", "}]);
    }

    if ([v22 count])
    {
      CFDictionaryAddValue(Mutable, @"VCSPActiveStreamIDTuples", [v22 componentsJoinedByString:@";"]);
    }

    reportingGenericEvent();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

- (void)reportingSessionStopEventWithError:(id)error
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled)
  {
    if ([error domain])
    {
      domain = [error domain];
    }

    else
    {
      domain = &stru_1F570E008;
    }

    [error code];
    [objc_msgSend(objc_msgSend(error "userInfo")];
    [objc_msgSend(objc_msgSend(error "userInfo")];
    [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] remoteNoRemotePacketInterval];
    [(__CFString *)domain UTF8String];
    reportingCallEndError();
  }

  else
  {
    v8[0] = @"VCSCallEndReason";
    if (error)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(error, "code")}];
    }

    else
    {
      v6 = &unk_1F579A0C8;
    }

    v9[0] = v6;
    v8[1] = @"VCSCallEndDetailedReason";
    v9[1] = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(objc_msgSend(error, "userInfo"), "objectForKeyedSubscript:", @"NSErrorUserInfoDetailedError", "intValue")}];
    v8[2] = @"VCSErrorDomain";
    if ([error domain])
    {
      domain2 = [error domain];
    }

    else
    {
      domain2 = &stru_1F570E008;
    }

    v9[2] = domain2;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
    reportingGenericEvent();
  }
}

+ (int)deviceRoleForSessionMode:(int64_t)mode
{
  if (mode == 1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (mode == 2)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

- (void)setSessionInfoSynchronizerCallbacks
{
  [(VCSession *)self setSessionInfoSynchronizerErrorResponseCallback];

  [(VCSession *)self setSessionInfoSynchronizerPeerSubscribedStreamsCallback];
}

- (void)setSessionInfoSynchronizerErrorResponseCallback
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  [-[VCTransportSession sessionInfoSynchronizer](self->_transportSession sessionInfoSynchronizer];
}

void __60__VCSession_setSessionInfoSynchronizerErrorResponseCallback__block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  if (v3)
  {
    v4 = v3;
    if (a2)
    {
      if (a2 != 7)
      {
        return;
      }

      v5 = [v3 transportSession];
      if (!v5 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __60__VCSession_setSessionInfoSynchronizerErrorResponseCallback__block_invoke_cold_1();
        }
      }

      if ([v4 optInDictionary])
      {
        [objc_msgSend(v5 "sessionInfoSynchronizer")];
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v10;
          v13 = 2080;
          v14 = "[VCSession setSessionInfoSynchronizerErrorResponseCallback]_block_invoke";
          v15 = 1024;
          v16 = 2427;
          v8 = "VCSession [%s] %s:%d Opt in dictionary is invalid";
          goto LABEL_13;
        }
      }
    }

    else
    {
      v9 = [v3 downlinkRateController];

      [v9 setPaused:0];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCSession setSessionInfoSynchronizerErrorResponseCallback]_block_invoke";
      v15 = 1024;
      v16 = 2416;
      v8 = "VCSession [%s] %s:%d strongSelf is nil, return";
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x1Cu);
    }
  }
}

- (void)setSessionInfoSynchronizerPeerSubscribedStreamsCallback
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  [-[VCTransportSession sessionInfoSynchronizer](self->_transportSession sessionInfoSynchronizer];
}

void __68__VCSession_setSessionInfoSynchronizerPeerSubscribedStreamsCallback__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  if (v3)
  {
    v4 = [v3 localParticipant];

    [v4 setPeerSubscribedStreams:a2];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCSession setSessionInfoSynchronizerPeerSubscribedStreamsCallback]_block_invoke";
      v11 = 1024;
      v12 = 2441;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d strongSelf is nil, return", &v7, 0x1Cu);
    }
  }
}

- (id)vcrcServerBagWithOperatingMode:(int)mode
{
  v3 = *&mode;
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [VCRateControlServerBag keysWithMode:v3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:+[GKSConnectivitySettings getVCRCSeverBagConfigWithKey:](GKSConnectivitySettings forKeyedSubscript:{"getVCRCSeverBagConfigWithKey:", *(*(&v13 + 1) + 8 * v9)), *(*(&v13 + 1) + 8 * v9)}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  v10 = [[VCRateControlServerBag alloc] initWithMode:v3 serverBagDict:v4];

  return v10;
}

- (void)setupRateControllersMultiway
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"session_%@", self->_uuid];
  v8 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v7 = v3;
  BYTE1(v8) = 1;
  v4 = [(VCSession *)self vcrcServerBagWithOperatingMode:6];
  reportingAgent = self->super._reportingAgent;
  *(&v8 + 1) = v4;
  *&v9 = reportingAgent;
  BYTE8(v9) = 1;
  BYTE8(v10) = 1;
  *&v10 = self->_nwActivity;
  self->_uplinkRateController = [[AVCRateController alloc] initWithDelegate:self params:&v7];
  BYTE8(v10) = 0;
  BYTE1(v8) = 0;
  self->_downlinkRateController = [[AVCRateController alloc] initWithDelegate:self params:&v7];
  v6 = [[VCRateControlMediaController alloc] initWithMediaQueue:0xFFFFFFFFLL delegate:self];
  self->_uplinkMediaController = v6;
  [(AVCRateController *)self->_uplinkRateController setMediaController:v6];
  [(VCRateControlMediaController *)self->_uplinkMediaController setStatisticsCollector:[(AVCRateController *)self->_uplinkRateController statisticsCollector]];
  [(VCSessionParticipant *)self->_localParticipant setStatisticsCollector:[(AVCRateController *)self->_uplinkRateController statisticsCollector]];
  [(VCSessionParticipant *)self->_localParticipant setBasebandCongestionDetector:[(AVCRateController *)self->_uplinkRateController basebandCongestionDetector]];
}

- (void)didRemoveSpatialMetadataEntry
{
  v3[5] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__VCSession_didRemoveSpatialMetadataEntry__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(sessionQueue, v3);
}

- (int)setupSpatialAudio
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  cf = 0;
  if ([(VCSessionConfiguration *)self->_configuration sessionMode]&& [(VCSessionConfiguration *)self->_configuration sessionMode]!= 2 || !+[VCHardwareSettings isSpatialAudioSupported])
  {
    [(VCSession *)self cleanupSpatialAudio];
    v15 = 0;
    v7 = 0;
LABEL_24:
    [(VCSession *)self setIsSpatialAudioSupported:v15];
    goto LABEL_25;
  }

  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v4 = [VCHardwareSettings isSiriVoicePlayoutSupported:MEMORY[0x1E69E9820]];
  if (+[VCHardwareSettings deviceClass]== 8)
  {
    v5 = 33;
  }

  else
  {
    v5 = 32;
  }

  if ((VCSpatialAudioMetadata_Create(*MEMORY[0x1E695E480], v5, 0, &v17, &cf) & 0x80000000) != 0)
  {
    [VCSession setupSpatialAudio];
  }

  else
  {
    VCSpatialAudioMetadata_Serialize(cf, &v18);
    v6 = +[VCAudioManager sharedVoiceChatInstance];
    v7 = [v6 registerAudioSessionId:self->_transportSessionID maxChannelCountMic:1 maxChannelCountSpeaker:32 spatialMetadata:v18];
    if (v7 < 0)
    {
      [VCSession setupSpatialAudio];
    }

    else
    {
      spatialMetadata = self->_spatialMetadata;
      v9 = cf;
      self->_spatialMetadata = cf;
      if (v9)
      {
        CFRetain(v9);
      }

      if (spatialMetadata)
      {
        CFRelease(spatialMetadata);
      }

      if (!v4 || (v7 = [(VCSession *)self reserveAudioChannelForMediaType:4], (v7 & 0x80000000) == 0))
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        allValues = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allValues];
        v11 = [allValues countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v22 + 1) + 8 * i) setupSpatialAudioWithMetadata:self->_spatialMetadata spatialMetadataEntryMap:self->_mediaTypeToSpatialMetadataEntryMap];
            }

            v12 = [allValues countByEnumeratingWithState:&v22 objects:v21 count:16];
          }

          while (v12);
        }

        v15 = 1;
        goto LABEL_24;
      }

      [VCSession setupSpatialAudio];
    }
  }

  v7 = v20;
LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v7;
}

void __30__VCSession_setupSpatialAudio__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
  [v1 didRemoveSpatialMetadataEntry];
  if (v1)
  {

    CFRelease(v1);
  }
}

- (int)reserveAudioChannelForMediaType:(unsigned int)type
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  valuePtr = type;
  value = 0;
  v4 = *MEMORY[0x1E695E480];
  if ((VCSpatialAudioMetadata_CreateEntry(*MEMORY[0x1E695E480], self->_spatialMetadata, &value) & 0x80000000) != 0)
  {
    [VCSession reserveAudioChannelForMediaType:];
  }

  else
  {
    v5 = VCSpatialAudioMetadata_ChannelIndex(value, &v10);
    if (v5 < 0)
    {
      [VCSession reserveAudioChannelForMediaType:];
    }

    else
    {
      v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
      if (v6)
      {
        v7 = v6;
        CFDictionaryAddValue(self->_mediaTypeToSpatialMetadataEntryMap, v6, value);
        CFRelease(v7);
        goto LABEL_5;
      }

      [VCSession reserveAudioChannelForMediaType:?];
    }
  }

  v5 = v12;
LABEL_5:
  if (value)
  {
    CFRelease(value);
  }

  return v5;
}

- (void)cleanupSpatialAudio
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettings isSpatialAudioSupported])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allValues];
    v4 = [allValues countByEnumeratingWithState:&v11 objects:v10 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v11 + 1) + 8 * v7++) cleanupSpatialAudio];
        }

        while (v5 != v7);
        v5 = [allValues countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v5);
    }

    spatialMetadata = self->_spatialMetadata;
    if (spatialMetadata)
    {
      CFRelease(spatialMetadata);
      self->_spatialMetadata = 0;
    }

    mediaTypeToSpatialMetadataEntryMap = self->_mediaTypeToSpatialMetadataEntryMap;
    if (mediaTypeToSpatialMetadataEntryMap)
    {
      CFDictionaryRemoveAllValues(mediaTypeToSpatialMetadataEntryMap);
    }

    [+[VCAudioManager sharedVoiceChatInstance](VCAudioManager "sharedVoiceChatInstance")];
  }
}

- (void)updateMultiwayRateControllerWithActiveConnection:(id)connection isScreenEnabled:(BOOL)enabled isLocal:(BOOL)local
{
  enabledCopy = enabled;
  v8 = &OBJC_IVAR___VCSession__downlinkRateController;
  if (local)
  {
    v8 = &OBJC_IVAR___VCSession__uplinkRateController;
  }

  v9 = *(&self->super.super.isa + *v8);
  if (local)
  {
    uplinkBitrateCap = [connection uplinkBitrateCap];
  }

  else
  {
    uplinkBitrateCap = [connection downlinkBitrateCap];
  }

  v11 = uplinkBitrateCap;
  v12 = VCConnectionManager_CopyPrimaryConnection([(VCTransportSession *)self->_transportSession connectionManager]);
  if (VCConnection_IsLocalOnWiFiOrWired(v12))
  {
    if (![(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] isDuplicationEnabled]&& !enabledCopy)
    {
LABEL_9:
      v13 = 0;
      if (!v12)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (!enabledCopy)
  {
    goto LABEL_9;
  }

  v13 = 512;
  if (v12)
  {
LABEL_13:
    CFRelease(v12);
  }

LABEL_14:
  v14 = [AVCRateController rateControlTrafficTypeForScreen:enabledCopy isPersona:0];
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(connection);
  v16 = VCConnection_LocalCellTech(connection);
  HIDWORD(v17) = v13;
  LOBYTE(v17) = v14;
  [v9 configureWithOperatingMode:6 isLocalCellular:IsLocalOnCellular localCellTech:v16 isRemoteCellular:0 remoteCellTech:VCConnection_RemoteCellTech(connection) bitrateCapKbps:v11 / 0x3E8uLL trafficType:v17 featureFlags:?];
}

- (void)startRateControllersMultiwayFromOneToOne:(BOOL)one
{
  oneCopy = one;
  v22 = *MEMORY[0x1E69E9840];
  downlinkBitrateCap = 10000000;
  [(VCRateControlMediaController *)self->_uplinkMediaController setIsAudioOnly:[(VCSessionParticipant *)self->_localParticipant isVideoEnabled]^ 1];
  currentActiveConnection = self->_currentActiveConnection;
  uplinkBitrateCap = 10000000;
  if (currentActiveConnection)
  {
    uplinkBitrateCap = [(VCConnectionProtocol *)currentActiveConnection uplinkBitrateCap];
  }

  if (oneCopy)
  {
    localParticipant = self->_localParticipant;
    if (localParticipant)
    {
      [(VCSessionParticipantLocal *)localParticipant oneToOneSettings];
      v9 = v21;
    }

    else
    {
      v9 = 0;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
    }

    v10 = v9 >> (v9 < 0x2DC6C0);
  }

  else
  {
    v10 = 0;
  }

  uplinkRateController = self->_uplinkRateController;
  v14 = 4;
  v15 = 0;
  v16 = uplinkBitrateCap;
  LODWORD(v17) = 0;
  DWORD1(v17) = v10;
  v18 = 0uLL;
  *(&v17 + 1) = 0;
  [(AVCRateController *)uplinkRateController configure:&v14];
  v12 = self->_currentActiveConnection;
  if (v12)
  {
    downlinkBitrateCap = [(VCConnectionProtocol *)v12 downlinkBitrateCap];
  }

  downlinkRateController = self->_downlinkRateController;
  v14 = 5;
  v15 = 0;
  v16 = downlinkBitrateCap;
  v17 = 0u;
  v18 = 0u;
  [(AVCRateController *)downlinkRateController configure:&v14];
  [(AVCRateController *)self->_uplinkRateController start];
  [(AVCRateController *)self->_downlinkRateController start];
}

- (void)setupUplinkBitrateCaps
{
  [(VCSessionParticipantLocal *)self->_localParticipant setUplinkBitrateCapWifi:[(VCSessionBitrateArbiter *)self->_bitrateArbiter maxBitrateWiFiUplink]];
  maxBitrateNonExpensiveUplink = [(VCSessionBitrateArbiter *)self->_bitrateArbiter maxBitrateNonExpensiveUplink];
  localParticipant = self->_localParticipant;

  [(VCSessionParticipantLocal *)localParticipant setUplinkBitrateCapCell:maxBitrateNonExpensiveUplink];
}

- (void)createMediaQueue
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

uint64_t __29__VCSession_createMediaQueue__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 handleMediaQueueSizeExceedThresholdWithQueueSize:? mediaQueueStreamId:? type:?];
  }

  return result;
}

- (void)updateVCMediaQueueForMediaType:(unsigned int)type mediaState:(unsigned int)state
{
  if (type == 6 && self->_mediaQueueConfiguration.schedulePolicy == 2)
  {
    v4 = &OBJC_IVAR___VCSession__mediaQueueMinBitrateWithoutThrottlingDefault;
    if (state == 1)
    {
      v4 = &OBJC_IVAR___VCSession__mediaQueueMinBitrateWithoutThrottling3DCamera;
    }

    VCMediaQueue_SetMinBitrateWithoutThrottling(self->_mediaQueue, *(&self->super.super.isa + *v4));
  }
}

- (void)handleMediaQueueSizeExceedThresholdWithQueueSize:(double)size mediaQueueStreamId:(unsigned int)id type:(int)type
{
  v36[2] = *MEMORY[0x1E69E9840];
  if (type != 2)
  {
    if (type == 1)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_23;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v26 = 136316162;
        v27 = v12;
        v28 = 2080;
        v29 = "[VCSession handleMediaQueueSizeExceedThresholdWithQueueSize:mediaQueueStreamId:type:]";
        v30 = 1024;
        v31 = 2687;
        v32 = 1024;
        *v33 = id;
        *&v33[4] = 2048;
        *&v33[6] = size;
        v14 = "VCSession [%s] %s:%d VCMediaQueue size threshold exceeded for mediaQueueStreamId=%u queueSizeInSecond=%f - FLUSHING!";
        v15 = v13;
        v16 = 44;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCSession *)self performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_23;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v26 = 136316674;
        v27 = v22;
        v28 = 2080;
        v29 = "[VCSession handleMediaQueueSizeExceedThresholdWithQueueSize:mediaQueueStreamId:type:]";
        v30 = 1024;
        v31 = 2687;
        v32 = 2112;
        *v33 = v9;
        *&v33[8] = 2048;
        *&v33[10] = self;
        *&v33[18] = 1024;
        typeCopy = id;
        v35 = 2048;
        *v36 = size;
        v14 = "VCSession [%s] %s:%d %@(%p) VCMediaQueue size threshold exceeded for mediaQueueStreamId=%u queueSizeInSecond=%f - FLUSHING!";
        v15 = v23;
        v16 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v26, v16);
LABEL_23:
      VCMediaQueue_FlushPacketsInStream(self->_mediaQueue, id, 1u);
      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v26 = 136316418;
      v27 = v17;
      v28 = 2080;
      v29 = "[VCSession handleMediaQueueSizeExceedThresholdWithQueueSize:mediaQueueStreamId:type:]";
      v30 = 1024;
      v31 = 2694;
      v32 = 1024;
      *v33 = type;
      *&v33[4] = 1024;
      *&v33[6] = id;
      *&v33[10] = 2048;
      *&v33[12] = size;
      v19 = "VCSession [%s] %s:%d Should not handle media queue threshold exceeded with type=%d for mediaQueueStreamId=%u queueSize=%f!";
      v20 = v18;
      v21 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v26 = 136316930;
      v27 = v24;
      v28 = 2080;
      v29 = "[VCSession handleMediaQueueSizeExceedThresholdWithQueueSize:mediaQueueStreamId:type:]";
      v30 = 1024;
      v31 = 2694;
      v32 = 2112;
      *v33 = v11;
      *&v33[8] = 2048;
      *&v33[10] = self;
      *&v33[18] = 1024;
      typeCopy = type;
      v35 = 1024;
      LODWORD(v36[0]) = id;
      WORD2(v36[0]) = 2048;
      *(v36 + 6) = size;
      v19 = "VCSession [%s] %s:%d %@(%p) Should not handle media queue threshold exceeded with type=%d for mediaQueueStreamId=%u queueSize=%f!";
      v20 = v25;
      v21 = 70;
    }

    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, &v26, v21);
    return;
  }

  localParticipant = self->_localParticipant;

  [(VCSessionParticipantLocal *)localParticipant updateVCMediaQueueSize:(size * 1000.0)];
}

- (void)setMediaQueuePeakBitrateWithTargetBitrate:(unsigned int)bitrate
{
  if (self->_mediaQueue)
  {
    if (self->_oneToOneModeEnabled)
    {
      v5 = 10.0;
    }

    else
    {
      v5 = 1.5;
    }

    isScreenEnabled = [(VCSessionParticipant *)self->_localParticipant isScreenEnabled];
    v7 = 1.1;
    if (!isScreenEnabled)
    {
      v7 = v5;
    }

    mediaQueue = self->_mediaQueue;

    VCMediaQueue_SetPeakBitrate(mediaQueue, (v7 * bitrate));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSession setMediaQueuePeakBitrateWithTargetBitrate:];
    }
  }
}

- (int)maxRemoteParticipants30fps
{
  v2 = +[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings, "getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:", @"vc-facetime-30-fps-support", @"maxParticipantCountSend30Fps", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{+[VCHardwareSettings maxRemoteParticipants30fps](VCHardwareSettings, "maxRemoteParticipants30fps")}], 0);

  return [v2 intValue];
}

- (void)updateLocalVideoCaptureFrameRate
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_sharingEnabled && VCDefaults_GetManagedBoolValueForKey(@"allowScreenToLimitCameraFrameRate", 1))
  {
    [(VCSessionParticipantLocal *)self->_localParticipant setCurrentVideoCaptureFrameRate:+[VCHardwareSettings maxFpsCameraCaptureDuringSharing]];
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          currentVideoCaptureFrameRate = [(VCSessionParticipantLocal *)self->_localParticipant currentVideoCaptureFrameRate];
          *v32 = 136316418;
          *&v32[4] = v19;
          *&v32[12] = 2080;
          *&v32[14] = "[VCSession updateLocalVideoCaptureFrameRate]";
          *&v32[22] = 1024;
          LODWORD(v33) = 2733;
          WORD2(v33) = 2112;
          *(&v33 + 6) = v3;
          HIWORD(v33) = 2048;
          selfCopy4 = self;
          LOWORD(v35) = 1024;
          *(&v35 + 2) = currentVideoCaptureFrameRate;
          v11 = "VCSession [%s] %s:%d %@(%p) Screen is enabled, constraining the local camera framerate=%d fps";
          goto LABEL_32;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    currentVideoCaptureFrameRate2 = [(VCSessionParticipantLocal *)self->_localParticipant currentVideoCaptureFrameRate];
    *v32 = 136315906;
    *&v32[4] = v15;
    *&v32[12] = 2080;
    *&v32[14] = "[VCSession updateLocalVideoCaptureFrameRate]";
    *&v32[22] = 1024;
    LODWORD(v33) = 2733;
    WORD2(v33) = 1024;
    *(&v33 + 6) = currentVideoCaptureFrameRate2;
    v11 = "VCSession [%s] %s:%d Screen is enabled, constraining the local camera framerate=%d fps";
LABEL_27:
    v17 = v9;
    v18 = 34;
LABEL_49:
    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v11, v32, v18);
    return;
  }

  if (!self->_oneToOneModeEnabled)
  {
    v5 = [(NSArray *)[(VCSession *)self remoteParticipants] count];
    if ([(VCSession *)self maxRemoteParticipants30fps]>= v5)
    {
      [(VCSessionParticipantLocal *)self->_localParticipant setCurrentVideoCaptureFrameRate:30];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 136316162;
            *&v32[4] = v26;
            *&v32[12] = 2080;
            *&v32[14] = "[VCSession updateLocalVideoCaptureFrameRate]";
            *&v32[22] = 1024;
            LODWORD(v33) = 2740;
            WORD2(v33) = 2048;
            *(&v33 + 6) = [(NSArray *)[(VCSession *)self remoteParticipants] count];
            HIWORD(v33) = 1024;
            LODWORD(selfCopy4) = 30;
            v11 = "VCSession [%s] %s:%d Removing or adding a remote participant %lu, changing max video capture framerate to %d fps";
            v17 = v27;
            v18 = 44;
            goto LABEL_49;
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [(VCSession *)self performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
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
            *&v32[14] = "[VCSession updateLocalVideoCaptureFrameRate]";
            *&v32[22] = 1024;
            LODWORD(v33) = 2740;
            WORD2(v33) = 2112;
            *(&v33 + 6) = v7;
            HIWORD(v33) = 2048;
            selfCopy4 = self;
            LOWORD(v35) = 2048;
            *(&v35 + 2) = [(NSArray *)[(VCSession *)self remoteParticipants] count];
            WORD5(v35) = 1024;
            HIDWORD(v35) = 30;
            v11 = "VCSession [%s] %s:%d %@(%p) Removing or adding a remote participant %lu, changing max video capture framerate to %d fps";
            v17 = v31;
            v18 = 64;
            goto LABEL_49;
          }
        }
      }

      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_44;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *v32 = 136316162;
      *&v32[4] = v21;
      *&v32[12] = 2080;
      *&v32[14] = "[VCSession updateLocalVideoCaptureFrameRate]";
      *&v32[22] = 1024;
      LODWORD(v33) = 2736;
      WORD2(v33) = 2048;
      *(&v33 + 6) = [(NSArray *)[(VCSession *)self remoteParticipants] count];
      HIWORD(v33) = 1024;
      LODWORD(selfCopy4) = 15;
      v23 = "VCSession [%s] %s:%d Too many remote Participants %lu, constraining the local capture to %d fps";
      v24 = v22;
      v25 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_44;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *v32 = 136316674;
      *&v32[4] = v28;
      *&v32[12] = 2080;
      *&v32[14] = "[VCSession updateLocalVideoCaptureFrameRate]";
      *&v32[22] = 1024;
      LODWORD(v33) = 2736;
      WORD2(v33) = 2112;
      *(&v33 + 6) = v6;
      HIWORD(v33) = 2048;
      selfCopy4 = self;
      LOWORD(v35) = 2048;
      *(&v35 + 2) = [(NSArray *)[(VCSession *)self remoteParticipants] count];
      WORD5(v35) = 1024;
      HIDWORD(v35) = 15;
      v23 = "VCSession [%s] %s:%d %@(%p) Too many remote Participants %lu, constraining the local capture to %d fps";
      v24 = v29;
      v25 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, v32, v25);
LABEL_44:
    [(VCSessionParticipantLocal *)self->_localParticipant setCurrentVideoCaptureFrameRate:15, *v32, *&v32[16], v33, selfCopy4, v35];
    return;
  }

  [(VCSessionParticipantLocal *)self->_localParticipant setCurrentVideoCaptureFrameRate:[(VCSession *)self maxOneToOneCameraFrameRate]];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    currentVideoCaptureFrameRate3 = [(VCSessionParticipantLocal *)self->_localParticipant currentVideoCaptureFrameRate];
    *v32 = 136315906;
    *&v32[4] = v8;
    *&v32[12] = 2080;
    *&v32[14] = "[VCSession updateLocalVideoCaptureFrameRate]";
    *&v32[22] = 1024;
    LODWORD(v33) = 2744;
    WORD2(v33) = 1024;
    *(&v33 + 6) = currentVideoCaptureFrameRate3;
    v11 = "VCSession [%s] %s:%d Restoring camera capture framerate to %d fps";
    goto LABEL_27;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(VCSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      currentVideoCaptureFrameRate4 = [(VCSessionParticipantLocal *)self->_localParticipant currentVideoCaptureFrameRate];
      *v32 = 136316418;
      *&v32[4] = v12;
      *&v32[12] = 2080;
      *&v32[14] = "[VCSession updateLocalVideoCaptureFrameRate]";
      *&v32[22] = 1024;
      LODWORD(v33) = 2744;
      WORD2(v33) = 2112;
      *(&v33 + 6) = v4;
      HIWORD(v33) = 2048;
      selfCopy4 = self;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = currentVideoCaptureFrameRate4;
      v11 = "VCSession [%s] %s:%d %@(%p) Restoring camera capture framerate to %d fps";
LABEL_32:
      v17 = v13;
      v18 = 54;
      goto LABEL_49;
    }
  }
}

- (void)updateLocalStreamConfiguration
{
  selfCopy = self;
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_remoteParticipantsMapByServerID count];
  minParticipantCountSendVoiceActiveOnly = [+[VCDefaults sharedInstance](VCDefaults minParticipantCountSendVoiceActiveOnly];
  [(VCSessionParticipantLocal *)selfCopy->_localParticipant setEnableVADFiltering:v3 >= minParticipantCountSendVoiceActiveOnly];
  v5 = [-[VCSessionParticipantLocal supportedAudioRules](selfCopy->_localParticipant "supportedAudioRules")];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  remoteParticipants = [(VCSession *)selfCopy remoteParticipants];
  v7 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v17 = 240;
    v18 = selfCopy;
    LODWORD(v9) = 0;
    v10 = minParticipantCountSendVoiceActiveOnly;
    v11 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 negotiateAudioRules:v5];
        v9 = [objc_msgSend(objc_msgSend(v13 "mediaNegotiator")] | v9;
        [v13 setEnableVADFiltering:v3 >= v10];
        v14 = [objc_msgSend(objc_msgSend(v13 "mediaNegotiator")];
        v15 = [objc_msgSend(objc_msgSend(v13 "mediaNegotiator")];
      }

      v16 = v15;
      v8 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v8);
    selfCopy = v18;
  }

  else
  {
    v14 = 0;
    v9 = 0;
    v16 = 128;
  }

  [(VCSessionParticipantLocal *)selfCopy->_localParticipant updateSupportedAudioRules:v5, v17, v18];
  [(VCSession *)selfCopy updateMediaRecorderCapabillities:v9 imageType:v14 videoCodec:v16];
  [(VCSession *)selfCopy updateLocalVideoCaptureFrameRate];
}

- (void)optInStreamWithIDSStreamIDs:(id)ds
{
  v7[5] = *MEMORY[0x1E69E9840];
  v5 = +[VCDatagramChannelManager sharedInstance];
  idsDestination = self->_idsDestination;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__VCSession_optInStreamWithIDSStreamIDs___block_invoke;
  v7[3] = &unk_1E85F79E0;
  v7[4] = ds;
  [(VCDatagramChannelManager *)v5 executeBlockForIDSDestination:idsDestination blockToExecute:v7];
}

- (void)optOutStreamWithIDSStreamIDs:(id)ds
{
  v7[5] = *MEMORY[0x1E69E9840];
  v5 = +[VCDatagramChannelManager sharedInstance];
  idsDestination = self->_idsDestination;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__VCSession_optOutStreamWithIDSStreamIDs___block_invoke;
  v7[3] = &unk_1E85F79E0;
  v7[4] = ds;
  [(VCDatagramChannelManager *)v5 executeBlockForIDSDestination:idsDestination blockToExecute:v7];
}

- (BOOL)detectSSRCCollision:(id)collision resetNeeded:(BOOL *)needed
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_isSSRCCollisionDetectionEnabled)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allParticipantStreamInfo = [collision allParticipantStreamInfo];
    v8 = [allParticipantStreamInfo countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      v19 = *v28;
      v20 = allParticipantStreamInfo;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(allParticipantStreamInfo);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          streamConfigs = [v12 streamConfigs];
          v14 = [streamConfigs countByEnumeratingWithState:&v22 objects:v21 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v23;
            while (2)
            {
              v17 = 0;
              do
              {
                if (*v23 != v16)
                {
                  objc_enumerationMutation(streamConfigs);
                }

                if (-[VCSession detectSSRCCollisionWithRemoteMediaStream:remoteBlobCreationTime:resetNeeded:](self, "detectSSRCCollisionWithRemoteMediaStream:remoteBlobCreationTime:resetNeeded:", *(*(&v22 + 1) + 8 * v17), [collision creationTime], needed))
                {
                  LOBYTE(v8) = 1;
                  return v8;
                }

                ++v17;
              }

              while (v15 != v17);
              v15 = [streamConfigs countByEnumeratingWithState:&v22 objects:v21 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v10 = v19;
          allParticipantStreamInfo = v20;
        }

        v9 = [v20 countByEnumeratingWithState:&v27 objects:v26 count:16];
        LOBYTE(v8) = 0;
      }

      while (v9);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)detectSSRCCollisionWithRemoteMediaStream:(id)stream remoteBlobCreationTime:(tagNTP)time resetNeeded:(BOOL *)needed
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = -[VCSessionParticipantLocal containsStreamWithSSRC:](self->_localParticipant, "containsStreamWithSSRC:", [objc_msgSend(stream "multiwayConfig")]);
  if (v9)
  {
    wide_high = HIDWORD(time.wide);
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCSession detectSSRCCollisionWithRemoteMediaStream:remoteBlobCreationTime:resetNeeded:]";
        v19 = 1024;
        v20 = 2805;
        v21 = 1024;
        v22 = [objc_msgSend(stream "multiwayConfig")];
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d SSRC collision detected! SSRC=%u", &v15, 0x22u);
      }
    }

    if (wide_high < [(VCSessionParticipant *)self->_localParticipant creationTime]>> 32)
    {
      v13 = 1;
LABEL_9:
      *needed = v13;
      return v9;
    }

    if (wide_high == [(VCSessionParticipant *)self->_localParticipant creationTime]>> 32)
    {
      v13 = [(VCSessionParticipant *)self->_localParticipant creationTime]> time.time.frac;
      goto LABEL_9;
    }
  }

  return v9;
}

- (void)handleEncryptionInfoEvent:(id)event
{
  v25[5] = *MEMORY[0x1E69E9840];
  v5 = [event objectForKeyedSubscript:*MEMORY[0x1E69A5008]];
  v6 = [event objectForKeyedSubscript:*MEMORY[0x1E69A5010]];
  v7 = [VCMediaKeyIndex alloc];
  v8 = -[VCMediaKeyIndex initWithNSUUID:](v7, "initWithNSUUID:", [event objectForKeyedSubscript:*MEMORY[0x1E69A5000]]);
  v9 = [event objectForKeyedSubscript:*MEMORY[0x1E69A5028]];
  v10 = [event objectForKeyedSubscript:*MEMORY[0x1E69A4FF8]];
  v11 = [event objectForKeyedSubscript:@"maxSN"];
  v12 = [event objectForKeyedSubscript:*MEMORY[0x1E69A5020]];
  v24[0] = @"SecurityKey";
  v24[1] = @"SecuritySalt";
  v25[0] = v5;
  v25[1] = v6;
  v24[2] = @"SecurityKeyIndex";
  v24[3] = @"SecurityLocallyGenerated";
  v25[2] = v8;
  v25[3] = v10;
  v24[4] = @"SecurityKeySetTime";
  v25[4] = [MEMORY[0x1E696AD98] numberWithDouble:micro()];
  v13 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{5), "mutableCopy"}];
  [v13 setObject:v11 forKeyedSubscript:@"SecurityMaxSequenceNumber"];
  [v13 setObject:v12 forKeyedSubscript:@"SecurityIDSParticipantID"];
  [v13 setObject:v9 forKeyedSubscript:@"SecurityShortKeyIndexLength"];
  [(VCControlChannelMultiWay *)self->_controlChannel addNewKeyMaterial:v13];
  if ([(VCSecurityKeyManager *)self->_securityKeyManager addSecurityKeyMaterial:v13 securityKeyMode:self->_oneToOneModeEnabled])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = v14;
        v18 = 2080;
        v19 = "[VCSession handleEncryptionInfoEvent:]";
        v20 = 1024;
        v21 = 2844;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Security key material with key index '%@' added", &v16, 0x26u);
      }
    }
  }
}

- (void)handleMembershipChangeInfoEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCSession handleMembershipChangeInfoEvent:]";
      v11 = 1024;
      v12 = 2851;
      v13 = 2112;
      eventCopy = event;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Start pruning keys in the security key manager due to membershipChangeReason: %@", &v7, 0x26u);
    }
  }

  [(VCSecurityKeyManager *)self->_securityKeyManager pruneSendKeyMaterialWithDelay:1.0];
  [(VCSession *)self reportingSessionParticipantEvent:168 keyChangeReason:event newMKI:0];
}

- (void)messageMediaInitialStateToParticipant:(id)participant
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(VCSessionParticipantLocal *)self->_localParticipant encryptionInfoReceived])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uuid = [participant uuid];
        isAudioEnabled = [(VCSessionParticipant *)self->_localParticipant isAudioEnabled];
        isVideoEnabled = [(VCSessionParticipant *)self->_localParticipant isVideoEnabled];
        isScreenEnabled = [(VCSessionParticipant *)self->_localParticipant isScreenEnabled];
        v16 = 136316674;
        v17 = v5;
        v18 = 2080;
        v19 = "[VCSession messageMediaInitialStateToParticipant:]";
        v20 = 1024;
        v21 = 2866;
        v22 = 2112;
        v23 = uuid;
        v24 = 1024;
        v25 = isAudioEnabled;
        v26 = 1024;
        v27 = isVideoEnabled;
        v28 = 1024;
        v29 = isScreenEnabled;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Send initial state to participant=%@. audioEnabled=%d videoEnabled=%d screenEnabled=%d", &v16, 0x38u);
      }
    }

    [participant capabilities];
    if (v11 == 1)
    {
      sessionMessaging = self->_sessionMessaging;
      if ([(VCSessionParticipant *)self->_localParticipant isAudioEnabled])
      {
        v13 = @"VCSessionMessageAudioEnabled";
      }

      else
      {
        v13 = @"VCSessionMessageAudioDisabled";
      }

      -[VCSessionMessaging sendMessage:withTopic:participantID:](sessionMessaging, "sendMessage:withTopic:participantID:", v13, @"VCSessionMessageTopicAudioEnabledState", [participant idsParticipantID]);
      v14 = self->_sessionMessaging;
      if ([(VCSessionParticipant *)self->_localParticipant isVideoEnabled])
      {
        v15 = @"VCSessionMessageVideoEnabled";
      }

      else
      {
        v15 = @"VCSessionMessageVideoDisabled";
      }

      -[VCSessionMessaging sendMessage:withTopic:participantID:](v14, "sendMessage:withTopic:participantID:", v15, @"VCSessionMessageTopicVideoEnabledStateb", [participant idsParticipantID]);
    }

    else
    {
      [(VCSession *)self sendMediaStateUpdateMessageToRemoteParticipant:participant];
    }
  }
}

- (void)broadcastInitialMediaState
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(VCSessionParticipantLocal *)self->_localParticipant encryptionInfoReceived])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isAudioEnabled = [(VCSessionParticipant *)self->_localParticipant isAudioEnabled];
        isVideoEnabled = [(VCSessionParticipant *)self->_localParticipant isVideoEnabled];
        isScreenEnabled = [(VCSessionParticipant *)self->_localParticipant isScreenEnabled];
        v10 = 136316418;
        v11 = v3;
        v12 = 2080;
        v13 = "[VCSession broadcastInitialMediaState]";
        v14 = 1024;
        v15 = 2880;
        v16 = 1024;
        v17 = isAudioEnabled;
        v18 = 1024;
        v19 = isVideoEnabled;
        v20 = 1024;
        v21 = isScreenEnabled;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Broadcasting initial state. audioEnabled=%d videoEnabled=%d screenEnabled=%d", &v10, 0x2Eu);
      }
    }

    [(VCSession *)self broadcastMediaStateUpdateMessage];
    if ([(VCSessionParticipant *)self->_localParticipant isAudioEnabled])
    {
      v8 = @"VCSessionMessageAudioEnabled";
    }

    else
    {
      v8 = @"VCSessionMessageAudioDisabled";
    }

    [(VCSession *)self broadcastSingleStateMessage:v8 withTopic:@"VCSessionMessageTopicAudioEnabledState"];
    if ([(VCSessionParticipant *)self->_localParticipant isVideoEnabled])
    {
      v9 = @"VCSessionMessageVideoEnabled";
    }

    else
    {
      v9 = @"VCSessionMessageVideoDisabled";
    }

    [(VCSession *)self broadcastSingleStateMessage:v9 withTopic:@"VCSessionMessageTopicVideoEnabledStateb"];
  }
}

+ (void)addUUIDToMutableData:(id)data fromUUIDString:(id)string
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:string];
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  [v5 getUUIDBytes:v6];

  [data appendBytes:v6 length:16];
}

- (id)newEncryptionLabelWithLocalUUID:(id)d remoteUUID:(id)iD
{
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:"VCControlChannelV2" length:18];
  if (self->_forceFixedEncryptionLabel)
  {
    [VCSession newEncryptionLabelWithLocalUUID:remoteUUID:];
  }

  else
  {
    [VCSession addUUIDToMutableData:v7 fromUUIDString:d];
    [VCSession addUUIDToMutableData:v7 fromUUIDString:iD];
  }

  return v7;
}

+ (void)cleanupControlChannelParticipantConfig:(id *)config
{
  if (config)
  {
    var4 = config->var4;
    if (var4)
    {
      CFRelease(var4);
    }

    var3 = config->var3;
    if (var3)
    {
      CFRelease(var3);
    }

    var2 = config->var2;
    if (var2)
    {
      CFRelease(var2);
    }

    var1 = config->var1;
    if (var1)
    {

      CFRelease(var1);
    }
  }
}

- (BOOL)composeControlChannelParticipantConfig:(id *)config withRemoteParticipant:(id)participant
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!config)
  {
    [VCSession composeControlChannelParticipantConfig:v15 withRemoteParticipant:?];
LABEL_15:
    v12 = v14;
    v11 = v15[0];
    goto LABEL_8;
  }

  if (!participant)
  {
    [VCSession composeControlChannelParticipantConfig:withRemoteParticipant:];
    goto LABEL_15;
  }

  [participant capabilities];
  config->var0 = v7;
  config->var5 = 1;
  v8 = -[VCSession newEncryptionLabelWithLocalUUID:remoteUUID:](self, "newEncryptionLabelWithLocalUUID:remoteUUID:", -[VCSessionParticipant uuid](self->_localParticipant, "uuid"), [participant uuid]);
  config->var3 = v8;
  if (!v8)
  {
    [VCSession composeControlChannelParticipantConfig:withRemoteParticipant:];
    goto LABEL_15;
  }

  v9 = -[VCSession newEncryptionLabelWithLocalUUID:remoteUUID:](self, "newEncryptionLabelWithLocalUUID:remoteUUID:", [participant uuid], -[VCSessionParticipant uuid](self->_localParticipant, "uuid"));
  config->var4 = v9;
  if (!v9)
  {
    [VCSession composeControlChannelParticipantConfig:withRemoteParticipant:];
    goto LABEL_15;
  }

  v10 = *MEMORY[0x1E695E480];
  if (VCSecurityKeyHolder_Create(*MEMORY[0x1E695E480], self->_securityKeyManager, 1, [(VCSessionParticipant *)self->_localParticipant idsParticipantID], 0, 2u, &config->var1))
  {
    [VCSession composeControlChannelParticipantConfig:withRemoteParticipant:];
    goto LABEL_15;
  }

  if (VCSecurityKeyHolder_Create(v10, self->_securityKeyManager, 2, [participant idsParticipantID], objc_msgSend(participant, "isParticipantIDBasedKeyLookupEnabled"), 2u, &config->var2))
  {
    [VCSession composeControlChannelParticipantConfig:withRemoteParticipant:];
    goto LABEL_15;
  }

  v11 = 0;
  v12 = 1;
LABEL_8:
  [VCSession cleanupControlChannelParticipantConfig:v11];
  return v12;
}

- (BOOL)isNetworkForcingECNDefaultSet
{
  v2 = CFPreferencesCopyAppValue(@"network_enable_l4s", @"-g");
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

- (BOOL)isAVCForcingECNDefaultSet
{
  v2 = CFPreferencesCopyAppValue(@"ecnEnabled", @"com.apple.VideoConference");
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

- (BOOL)isECNPermittedFromNetworkingLayer
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(VCSession *)self isNetworkForcingECNDefaultSet])
  {
    v2 = CFPreferencesGetAppBooleanValue(@"network_enable_l4s", @"-g", 0) != 0;
  }

  else
  {
    v2 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCSession isECNPermittedFromNetworkingLayer]";
      v10 = 1024;
      v11 = 2976;
      v12 = 1024;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Network layer ECN Default is set=%d", &v6, 0x22u);
    }
  }

  return v2;
}

- (BOOL)isECNCapableWithRemoteParticipant:(id)participant
{
  v65 = *MEMORY[0x1E69E9840];
  frameworkVersion = [(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion];
  v6 = [objc_msgSend(participant "callInfoBlob")];
  LODWORD(frameworkVersion) = [(NSString *)frameworkVersion integerValue];
  integerValue = [v6 integerValue];
  integerValue2 = [@"1965" integerValue];
  v10 = frameworkVersion >= integerValue2 && integerValue >= integerValue2;
  v11 = integerValue < [@"2045" integerValue];
  v12 = arc4random() / 4294967300.0;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-ecn-enabled-p2p-only" userDefaultKey:@"ecnEnabledProbabiltyForP2POnly" defaultValue:&unk_1F579E4B0 isDoubleType:{1), "doubleValue"}];
  if (v12 >= v13 || v11)
  {
    v15 = 4;
  }

  else
  {
    v15 = 1;
  }

  self->_ecnLinkType = v15;
  self->_isECNCapable = v10;
  self->_isECNEnabled = v11;
  v16 = VCConnectionManager_CopyPrimaryConnection([(VCTransportSession *)self->_transportSession connectionManager]);
  v17 = v16;
  if (v16 && (VCConnection_IsRelay(v16) & 1) == 0)
  {
    self->_isECNEnabled = 1;
  }

  if ([(VCSession *)self isAVCForcingECNDefaultSet])
  {
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"ecnEnabled", self->_isECNEnabled);
    self->_isECNEnabled = BoolValueForKey;
    self->_isECNCapable = BoolValueForKey;
    self->_ecnLinkType = 0;
  }

  VCRateControlFeedbackController_SetLinkTypeToSupportECN([(AVCRateController *)self->_oneToOneSettings.rateController feedbackController], self->_ecnLinkType);
  l4s_enabled = network_config_get_l4s_enabled();
  if (l4s_enabled == 2)
  {
    self->_isECNForcedByNetwork = 0;
    self->_isECNEnabled = 0;
    self->_isECNCapable = 0;
    self->_ecnLinkType = 3;
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v21 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_43;
      }

      v30 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *v55 = 136316162;
      *&v55[4] = v30;
      *&v55[12] = 2080;
      *&v55[14] = "[VCSession isECNCapableWithRemoteParticipant:]";
      *&v55[22] = 1024;
      LODWORD(v56) = 3044;
      WORD2(v56) = 2112;
      *(&v56 + 6) = v21;
      HIWORD(v56) = 2048;
      selfCopy4 = self;
      v24 = "VCSession [%s] %s:%d %@(%p) Forced turned off ECN via network config settings";
LABEL_41:
      v26 = v29;
      v27 = 48;
      goto LABEL_42;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_43;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    *v55 = 136315650;
    *&v55[4] = v25;
    *&v55[12] = 2080;
    *&v55[14] = "[VCSession isECNCapableWithRemoteParticipant:]";
    *&v55[22] = 1024;
    LODWORD(v56) = 3044;
    v24 = "VCSession [%s] %s:%d Forced turned off ECN via network config settings";
  }

  else
  {
    if (l4s_enabled != 1)
    {
      goto LABEL_44;
    }

    self->_isECNForcedByNetwork = 1;
    self->_isECNEnabled = 1;
    self->_isECNCapable = 1;
    self->_ecnLinkType = 3;
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_43;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *v55 = 136316162;
      *&v55[4] = v28;
      *&v55[12] = 2080;
      *&v55[14] = "[VCSession isECNCapableWithRemoteParticipant:]";
      *&v55[22] = 1024;
      LODWORD(v56) = 3038;
      WORD2(v56) = 2112;
      *(&v56 + 6) = v20;
      HIWORD(v56) = 2048;
      selfCopy4 = self;
      v24 = "VCSession [%s] %s:%d %@(%p) Forced turned on ECN via network config settings";
      goto LABEL_41;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_43;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    *v55 = 136315650;
    *&v55[4] = v22;
    *&v55[12] = 2080;
    *&v55[14] = "[VCSession isECNCapableWithRemoteParticipant:]";
    *&v55[22] = 1024;
    LODWORD(v56) = 3038;
    v24 = "VCSession [%s] %s:%d Forced turned on ECN via network config settings";
  }

  v26 = v23;
  v27 = 28;
LABEL_42:
  _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v24, v55, v27);
LABEL_43:
  [(VCSession *)self enableVCOverlay:*v55];
LABEL_44:
  if (![(VCSession *)self isNetworkForcingECNDefaultSet])
  {
    goto LABEL_56;
  }

  isECNPermittedFromNetworkingLayer = [(VCSession *)self isECNPermittedFromNetworkingLayer];
  self->_isECNForcedByNetwork = isECNPermittedFromNetworkingLayer;
  self->_isECNCapable = isECNPermittedFromNetworkingLayer;
  self->_isECNEnabled = isECNPermittedFromNetworkingLayer;
  self->_ecnLinkType = 3;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v55 = 136315650;
        *&v55[4] = v33;
        *&v55[12] = 2080;
        *&v55[14] = "[VCSession isECNCapableWithRemoteParticipant:]";
        *&v55[22] = 1024;
        LODWORD(v56) = 3054;
        v35 = "VCSession [%s] %s:%d Forced ECN setting via networking layer default";
        v36 = v34;
        v37 = 28;
LABEL_55:
        _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v35, v55, v37);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v32 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v32 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v55 = 136316162;
        *&v55[4] = v38;
        *&v55[12] = 2080;
        *&v55[14] = "[VCSession isECNCapableWithRemoteParticipant:]";
        *&v55[22] = 1024;
        LODWORD(v56) = 3054;
        WORD2(v56) = 2112;
        *(&v56 + 6) = v32;
        HIWORD(v56) = 2048;
        selfCopy4 = self;
        v35 = "VCSession [%s] %s:%d %@(%p) Forced ECN setting via networking layer default";
        v36 = v39;
        v37 = 48;
        goto LABEL_55;
      }
    }
  }

LABEL_56:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isECNEnabled = self->_isECNEnabled;
        isECNCapable = self->_isECNCapable;
        ecnLinkType = self->_ecnLinkType;
        *v55 = 136316674;
        *&v55[4] = v41;
        *&v55[12] = 2080;
        *&v55[14] = "[VCSession isECNCapableWithRemoteParticipant:]";
        *&v55[22] = 1024;
        LODWORD(v56) = 3056;
        WORD2(v56) = 1024;
        *(&v56 + 6) = isECNEnabled;
        WORD5(v56) = 1024;
        HIDWORD(v56) = isECNCapable;
        LOWORD(selfCopy4) = 1024;
        *(&selfCopy4 + 2) = v10;
        HIWORD(selfCopy4) = 1024;
        *v58 = ecnLinkType;
        v46 = "VCSession [%s] %s:%d _isECNEnabled=%d, _isECNCapable=%d, buildSettingECNParam=%d, _ecnLinkType=%d";
        v47 = v42;
        v48 = 52;
LABEL_66:
        _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, v46, v55, v48);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v40 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v40 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v51 = self->_isECNEnabled;
        v52 = self->_isECNCapable;
        v53 = self->_ecnLinkType;
        *v55 = 136317186;
        *&v55[4] = v49;
        *&v55[12] = 2080;
        *&v55[14] = "[VCSession isECNCapableWithRemoteParticipant:]";
        *&v55[22] = 1024;
        LODWORD(v56) = 3056;
        WORD2(v56) = 2112;
        *(&v56 + 6) = v40;
        HIWORD(v56) = 2048;
        selfCopy4 = self;
        *v58 = 1024;
        *&v58[2] = v51;
        v59 = 1024;
        v60 = v52;
        v61 = 1024;
        v62 = v10;
        v63 = 1024;
        v64 = v53;
        v46 = "VCSession [%s] %s:%d %@(%p) _isECNEnabled=%d, _isECNCapable=%d, buildSettingECNParam=%d, _ecnLinkType=%d";
        v47 = v50;
        v48 = 72;
        goto LABEL_66;
      }
    }
  }

  return self->_isECNCapable;
}

- (void)enableVCOverlay
{
  v26 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = -86;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"L4SHUDEnabled", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316674;
    v14 = v10;
    v15 = 2080;
    v16 = "[VCSession enableVCOverlay]";
    v17 = 1024;
    v18 = 3063;
    v19 = 2112;
    *v20 = v4;
    *&v20[8] = 2048;
    selfCopy = self;
    v22 = 1024;
    v23 = keyExistsAndHasValidFormat;
    v24 = 1024;
    v25 = AppBooleanValue;
    v7 = "VCSession [%s] %s:%d %@(%p) L4SHUD key exist=%d, L4SHUDEnabled=%d";
    v8 = v11;
    v9 = 60;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v14 = v5;
      v15 = 2080;
      v16 = "[VCSession enableVCOverlay]";
      v17 = 1024;
      v18 = 3063;
      v19 = 1024;
      *v20 = keyExistsAndHasValidFormat;
      *&v20[4] = 1024;
      *&v20[6] = AppBooleanValue;
      v7 = "VCSession [%s] %s:%d L4SHUD key exist=%d, L4SHUDEnabled=%d";
      v8 = v6;
      v9 = 40;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

LABEL_12:
  if (keyExistsAndHasValidFormat)
  {
    if (AppBooleanValue)
    {
      *buf = 327681;
      LODWORD(v14) = 0;
      VCOverlayManager_updateOverlayState(buf);
    }
  }
}

- (void)setBytesInFlightFlagWithParticipant:(id)participant
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_msgSend(participant "callInfoBlob")];
  integerValue = [@"2015" integerValue];
  v6 = _os_feature_enabled_impl();
  self->_isBytesInFlightAdaptationEnabled = (v4 >= integerValue) & v6;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      isBytesInFlightAdaptationEnabled = self->_isBytesInFlightAdaptationEnabled;
      v10 = 136316418;
      v11 = v7;
      v12 = 2080;
      v13 = "[VCSession setBytesInFlightFlagWithParticipant:]";
      v14 = 1024;
      v15 = 3087;
      v16 = 1024;
      v17 = isBytesInFlightAdaptationEnabled;
      v18 = 1024;
      v19 = v4 >= integerValue;
      v20 = 1024;
      v21 = v6 & 1;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d isBytesInFlightAdaptationEnabled=%d remoteBIFSupported=%d localBIFEnabled=%d", &v10, 0x2Eu);
    }
  }
}

- (BOOL)registerRemoteParticipantToSession:(id)session
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  memset(v12, 0, sizeof(v12));
  if (![(VCSession *)self composeControlChannelParticipantConfig:v12 withRemoteParticipant:session])
  {
    [(VCSession *)session registerRemoteParticipantToSession:buf];
LABEL_16:
    v10 = buf[0];
    goto LABEL_13;
  }

  if (!-[VCControlChannelMultiWay addActiveParticipant:participantUUID:withConfiguration:](self->_controlChannel, "addActiveParticipant:participantUUID:withConfiguration:", [session idsParticipantID], objc_msgSend(session, "uuid"), v12))
  {
    [(VCSession *)session registerRemoteParticipantToSession:buf];
    goto LABEL_16;
  }

  sessionMessaging = self->_sessionMessaging;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(session, "idsParticipantID")}];
  [(VCSessionMessaging *)sessionMessaging addParticipant:v6 controlChannelProtocolVersion:LODWORD(v12[0])];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_remoteParticipantsMapByUUID, "setObject:forKeyedSubscript:", session, [session uuid]);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_remoteParticipantsMapByServerID, "setObject:forKeyedSubscript:", session, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(session, "idsParticipantID")}]);
  [(VCSessionParticipantLocal *)self->_localParticipant setRemoteParticipants:[(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allValues]];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID count];
      *buf = 136315906;
      v14 = v7;
      v15 = 2080;
      v16 = "[VCSession registerRemoteParticipantToSession:]";
      v17 = 1024;
      v18 = 3106;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Participant count:%d", buf, 0x22u);
    }
  }

  [(VCSession *)self sendThermalAndSliceMessageToPariticipant:session];
  [(VCSession *)self sendNetworkCapabilitiesMessageToParticipant:session];
  [(VCSession *)self updateLocalStreamConfiguration];
  [(VCSession *)self reportingSessionParticipantEvent:161 withParticipant:session];
  if (self->_currentActiveConnection)
  {
    [session handleActiveConnectionChange:?];
  }

  if (!self->_oneToOneModeEnabled)
  {
    [(VCSessionDownlinkBandwidthAllocator *)self->_downlinkBandwidthAllocator registerForBandwidthAllocationWithClient:session];
    [(VCSession *)self distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:1];
  }

  if (self->_state == 3)
  {
    [(VCSession *)self messageMediaInitialStateToParticipant:session];
  }

  v10 = 1;
LABEL_13:
  [VCSession cleanupControlChannelParticipantConfig:v12];
  return v10;
}

- (void)unregisterRemoteParticipantFromSession:(id)session
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_oneToOneModeEnabled)
  {
    [(VCSessionDownlinkBandwidthAllocator *)self->_downlinkBandwidthAllocator deregisterForBandwidthAllocationWithClient:session];
    [(VCSession *)self distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:1];
  }

  [(VCSession *)self reportingSessionParticipantEvent:162 withParticipant:session];
  -[VCControlChannelMultiWay removeActiveParticipant:](self->_controlChannel, "removeActiveParticipant:", [session idsParticipantID]);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_remoteParticipantsMapByUUID, "setObject:forKeyedSubscript:", 0, [session uuid]);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_remoteParticipantsMapByServerID, "setObject:forKeyedSubscript:", 0, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(session, "idsParticipantID")}]);
  [(VCSessionParticipantLocal *)self->_localParticipant setRemoteParticipants:[(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allValues]];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID count];
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCSession unregisterRemoteParticipantFromSession:]";
      v12 = 1024;
      v13 = 3154;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Participant count:%d", &v8, 0x22u);
    }
  }

  [(VCSession *)self updateLocalStreamConfiguration];
}

- (void)sendSymptomsToRemoteParticipants:(id)participants symptom:(id)symptom groupID:(id)d
{
  block[8] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VCSession_sendSymptomsToRemoteParticipants_symptom_groupID___block_invoke;
  block[3] = &unk_1E85F3B00;
  block[4] = symptom;
  block[5] = d;
  block[6] = participants;
  block[7] = self;
  dispatch_async(sessionQueue, block);
}

void __62__VCSession_sendSymptomsToRemoteParticipants_symptom_groupID___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"VCSessionMessageSymptom"];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"VCSessionMessageGroupID"];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        *buf = 136315906;
        v19 = v3;
        v20 = 2080;
        v21 = "[VCSession sendSymptomsToRemoteParticipants:symptom:groupID:]_block_invoke";
        v22 = 1024;
        v23 = 3164;
        v24 = 2048;
        v25 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d remoteParticipantIDs = %p", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __62__VCSession_sendSymptomsToRemoteParticipants_symptom_groupID___block_invoke_cold_1();
    }
  }

  v7 = *(a1 + 48);
  if (v7 && ![v7 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(a1 + 48);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(a1 + 56) + 224) sendMessageDictionary:v2 withTopic:@"VCSessionMessageTopicSymptom" participantID:{objc_msgSend(objc_msgSend(*(*(a1 + 56) + 256), "objectForKeyedSubscript:", *(*(&v14 + 1) + 8 * i)), "idsParticipantID")}];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [*(a1 + 56) broadcastMessageDictionary:v2 withTopic:@"VCSessionMessageTopicSymptom"];
  }
}

+ (void)initVideoFeatureStatusSettings:(tagVCReportingClientSettingsPersist *)settings
{
  if (settings)
  {
    *&settings->var0 = -1;
    v4 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    v5 = [v4 objectForKeyedSubscript:@"VideoEyeContact"];
    if (v5)
    {
      settings->var0 = [v5 intValue];
    }

    v6 = [v4 objectForKeyedSubscript:@"REFENB"];
    if (v6)
    {
      settings->var5 = [v6 intValue];
    }

    v7 = [v4 objectForKeyedSubscript:@"CSFENB"];
    if (v7)
    {
      settings->var2 = [v7 intValue];
    }

    v8 = [v4 objectForKeyedSubscript:@"PMFENB"];
    if (v8)
    {
      settings->var3 = [v8 intValue];
    }

    v9 = [v4 objectForKeyedSubscript:@"SLFENB"];
    if (v9)
    {
      settings->var4 = [v9 intValue];
    }

    v10 = [v4 objectForKeyedSubscript:@"BGRFENB"];
    if (v10)
    {
      settings->var6 = [v10 intValue];
    }

    v11 = [v4 objectForKeyedSubscript:@"AFBUPENB"];
    if (v11)
    {
      settings->var7 = [v11 intValue];
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }
}

- (void)initAudioFeatureStatusSettings:(tagVCReportingClientSettingsPersist *)settings
{
  if (settings)
  {
    settings->var9.var2 = self->_detectInactiveAudioFramesAACELD;
  }
}

- (void)reportClientPersistentSettings
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = 0;
  abSwitches = self->_abSwitches;
  if (abSwitches)
  {
    abSwitches = [(VCSessionSwitches *)abSwitches switches];
  }

  v4[1] = abSwitches;
  LOBYTE(v5) = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] enableNetworkConditionMonitoring];
  *(&v5 + 1) = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] enableMotionBasedDuplication];
  [VCSession initVideoFeatureStatusSettings:v4];
  if (self->_oneToOneModeEnabled)
  {
    BYTE1(v4[0]) = +[VCHardwareSettings isMLEnhanceOneToOneSupported];
  }

  [(VCSession *)self initAudioFeatureStatusSettings:v4];
  reportingSetReportingClientPersistentSetting();
}

- (void)cleanupVCRC
{
  uplinkMediaController = self->_uplinkMediaController;
}

- (void)cleanupNwActivity
{
  parentNWActivity = self->_parentNWActivity;
  if (parentNWActivity)
  {
    nw_release(parentNWActivity);
  }

  if (self->_nwActivity)
  {
    nw_activity_complete_with_reason();
    nwActivity = self->_nwActivity;

    nw_release(nwActivity);
  }
}

- (void)setupMultiwayABTesting
{
  v14 = *MEMORY[0x1E69E9840];
  [(VCSwitchManager *)self->_switchManager initializeLocalSwitches];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setUseMediaDrivenDuplication:[(VCSwitchManager *)self->_switchManager isLocalSwitchEnabled:0x20000000]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      useMediaDrivenDuplication = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] useMediaDrivenDuplication];
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCSession setupMultiwayABTesting]";
      v10 = 1024;
      v11 = 3278;
      v12 = 1024;
      v13 = useMediaDrivenDuplication;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Load switch useMediaDrivenDuplication %d", &v6, 0x22u);
    }
  }
}

- (void)setIsSpatialAudioSupported:(BOOL)supported
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_isSpatialAudioSupported != supported)
  {
    self->_isSpatialAudioSupported = supported;
    v3 = @"SpatialAudioSupported";
    v4[0] = [MEMORY[0x1E696AD98] numberWithBool:?];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
    reportingGenericEvent();
  }
}

- (void)updateLocalCameraCaptureStatus
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(VCSessionParticipant *)self->_localParticipant isVideoEnabled])
  {
    v3 = [(VCSessionParticipant *)self->_localParticipant isVideoPaused]^ 1;
  }

  else
  {
    v3 = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v8++) setLocalCameraCaptureActive:v3];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)registerQoSReporting
{
  reportingSetPeriodicAggregationOccurredHandler();
  ReportingVC_SetEventDrivenAggregationOccurredHandler();
  [+[VCQoSMonitorManager sharedInstance](VCQoSMonitorManager registerQoSReportingSourceForToken:"registerQoSReportingSourceForToken:", self->_transportSessionID];
}

uint64_t __33__VCSession_registerQoSReporting__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[VCQoSMonitorManager sharedInstance];
  v5 = *(a1 + 32);

  return [(VCQoSMonitorManager *)v4 updateQoSReport:a2 toClientsWithToken:v5];
}

uint64_t __33__VCSession_registerQoSReporting__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[VCQoSMonitorManager sharedInstance];
  v6 = *(a1 + 32);

  return [(VCQoSMonitorManager *)v5 updateEventDrivenQoSReport:a3 toClientsWithToken:v6];
}

- (void)unregisterQoSReporting
{
  reportingSetPeriodicAggregationOccurredHandler();
  [(VCObject *)self reportingAgent];
  ReportingVC_SetEventDrivenAggregationOccurredHandler();
  v3 = +[VCQoSMonitorManager sharedInstance];
  transportSessionID = self->_transportSessionID;

  [(VCQoSMonitorManager *)v3 unregisterQoSReportingSourceForToken:transportSessionID];
}

- (void)updateAlwaysHDCaptureScreenEnabledWithNewParticipant:(id)participant
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  remoteParticipants = [(VCSession *)self remoteParticipants];
  v6 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    LOBYTE(v9) = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        if (v9)
        {
          [*(*(&v26 + 1) + 8 * i) capabilities];
          v9 = HIBYTE(v11) & 1;
        }

        else
        {
          LODWORD(v9) = 0;
        }
      }

      v7 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v7);
  }

  else
  {
    LODWORD(v9) = 1;
  }

  LOBYTE(v12) = (participant == 0) & v9;
  if (participant && v9)
  {
    [participant capabilities];
    v12 = HIBYTE(v13) & 1;
  }

  v14 = self->_isAlwaysHDCaptureEnabled & v12;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = v15;
      v19 = 2080;
      v20 = "[VCSession updateAlwaysHDCaptureScreenEnabledWithNewParticipant:]";
      v21 = 1024;
      v22 = 3330;
      v23 = 1024;
      v24 = v14 & 1;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d alwaysHDCaptureScreenEnabled=%d", &v17, 0x22u);
    }
  }

  [(VCSessionParticipantLocal *)self->_localParticipant setAlwaysHDCaptureScreenEnabled:v14 & 1];
}

- (BOOL)handleEncryptionInfoChange:(id)change
{
  block[6] = *MEMORY[0x1E69E9840];
  -[VCSession reportingSessionParticipantEvent:withParticipant:keyChangeReason:newMKI:](self, "reportingSessionParticipantEvent:withParticipant:keyChangeReason:newMKI:", 167, self->_localParticipant, 0, [change objectForKeyedSubscript:@"SecurityKeyIndex"]);
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VCSession_handleEncryptionInfoChange___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = change;
  dispatch_async(sessionQueue, block);
  return 1;
}

void __40__VCSession_handleEncryptionInfoChange___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 240) handleEncryptionInfoChange:*(a1 + 40)];
  if (([*(*(a1 + 32) + 240) encryptionInfoReceived] & 1) == 0)
  {
    [*(*(a1 + 32) + 240) setEncryptionInfoReceived:1];
    [*(a1 + 32) broadcastInitialMediaState];
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 208);
        v13 = 136315906;
        v14 = v3;
        v15 = 2080;
        v16 = "[VCSession handleEncryptionInfoChange:]_block_invoke";
        v17 = 1024;
        v18 = 3356;
        v19 = 2112;
        v20 = v5;
        v6 = "VCSession [%s] %s:%d Received encryption info from IDS with destination[%@]";
        v7 = v4;
        v8 = 38;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v13, v8);
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

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(v11 + 208);
        v13 = 136316418;
        v14 = v9;
        v15 = 2080;
        v16 = "[VCSession handleEncryptionInfoChange:]_block_invoke";
        v17 = 1024;
        v18 = 3356;
        v19 = 2112;
        v20 = v2;
        v21 = 2048;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v6 = "VCSession [%s] %s:%d %@(%p) Received encryption info from IDS with destination[%@]";
        v7 = v10;
        v8 = 58;
        goto LABEL_13;
      }
    }
  }
}

- (void)resetDecryptionTimeout
{
  v3[5] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__VCSession_resetDecryptionTimeout__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(sessionQueue, v3);
}

uint64_t __35__VCSession_resetDecryptionTimeout__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(*(a1 + 32) + 248) allValues];
  result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) resetDecryptionTimeout];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)didEncryptionKeyRollTimeout
{
  [(VCObject *)self reportingAgent];
  reportingSymptom();
  v3 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 21, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3372], 0);

  [(VCSession *)self stopWithError:v3];
}

- (id)computeConversationTimeBaseTruncated
{
  [(NSDate *)self->_conversationTimeBase timeIntervalSinceReferenceDate];
  v3 = (14400 * (v2 / 14400));
  v4 = MEMORY[0x1E695DF00];

  return [v4 dateWithTimeIntervalSinceReferenceDate:v3];
}

- (__CFDictionary)getClientSpecificUserInfo
{
  v8[3] = *MEMORY[0x1E69E9840];
  uuid = self->_uuid;
  conversationID = self->_conversationID;
  v7[0] = @"VCSUUID";
  v7[1] = @"CID";
  if (conversationID)
  {
    v4 = conversationID;
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  v8[0] = uuid;
  v8[1] = v4;
  v7[2] = @"ConversationBaseDate";
  conversationTimeBaseTruncated = self->_conversationTimeBaseTruncated;
  if (!conversationTimeBaseTruncated)
  {
    conversationTimeBaseTruncated = [(VCSession *)self computeConversationTimeBaseTruncated];
  }

  v8[2] = conversationTimeBaseTruncated;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
}

- (void)reportingSessionParticipantEvent:(unsigned __int16)event withParticipant:(id)participant keyChangeReason:(id)reason newMKI:(id)i withStreamGroupID:(unsigned int)d withStreamID:(unsigned __int16)iD
{
  v39 = *MEMORY[0x1E69E9840];
  v26 = 0;
  if (self->super._reportingAgent)
  {
    v10 = *&d;
    eventCopy = event;
    if (participant || (event - 170) > 8u)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      LOWORD(v25) = iD;
      [(VCSession *)self collectSessionEventKeyFieldsAndSubtype:Mutable eventType:eventCopy withParticipant:participant keyChangeReason:reason newMKI:i withStreamGroupID:v10 withStreamID:v25 collectSubtype:&v26];
      reportingGenericEvent();
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v15 = [(VCSession *)self performSelector:sel_logPrefix];
        }

        else
        {
          v15 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return;
        }

        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136316418;
        v28 = v23;
        v29 = 2080;
        v30 = "[VCSession reportingSessionParticipantEvent:withParticipant:keyChangeReason:newMKI:withStreamGroupID:withStreamID:]";
        v31 = 1024;
        v32 = 3414;
        v33 = 2112;
        v34 = v15;
        v35 = 2048;
        selfCopy2 = self;
        v37 = 1024;
        v38 = eventCopy;
        v20 = "VCSession [%s] %s:%d %@(%p) Session Event failed - EventType:%d needs a participant but it is nil";
        v21 = v24;
        v22 = 54;
LABEL_27:
        _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession reportingSessionParticipantEvent:withParticipant:keyChangeReason:newMKI:withStreamGroupID:withStreamID:];
        }
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
        [VCSession reportingSessionParticipantEvent:withParticipant:keyChangeReason:newMKI:withStreamGroupID:withStreamID:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v28 = v18;
        v29 = 2080;
        v30 = "[VCSession reportingSessionParticipantEvent:withParticipant:keyChangeReason:newMKI:withStreamGroupID:withStreamID:]";
        v31 = 1024;
        v32 = 3409;
        v33 = 2112;
        v34 = v16;
        v35 = 2048;
        selfCopy2 = self;
        v20 = "VCSession [%s] %s:%d %@(%p) Reporting agent is not properly configured";
        v21 = v19;
        v22 = 48;
        goto LABEL_27;
      }
    }
  }
}

- (void)reportingMomentsToGreenTeaWithRequest:(id)request
{
  v6 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(request objectForKeyedSubscript:{@"vcMomentsRequestMode", "unsignedIntValue"}] == 2)
  {
    ct_green_tea_logger_create_static();
    CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
    if (CTGreenTeaOsLogHandle)
    {
      v4 = CTGreenTeaOsLogHandle;
      if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_INFO, "<FaceTime>[FaceTime][com.apple.AVConference]:Taken FaceTime Live Photo", v5, 2u);
      }
    }
  }
}

- (void)addNegotiatedCipherSuitesForParticipant:(id)participant toReportingDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_ABT", @"CPHRS"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[VCSessionConfiguration isOneToOneAuthenticationTagEnabled](self->_configuration, "isOneToOneAuthenticationTagEnabled")), v7}];
  v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"Negotiated ciphers for participant=%llu:\r\n", objc_msgSend(participant, "idsParticipantID")];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v10 = [participant negotiatedCipherSuiteForStreamGroupID:1835623282];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v10), v9}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A110, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v10)];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v12 = [participant negotiatedCipherSuiteForStreamGroupID:1667329381];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v12), v11}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A080, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v12)];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v14 = [participant negotiatedCipherSuiteForStreamGroupID:1937339233];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v14), v13}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A128, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v14)];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v16 = [participant negotiatedCipherSuiteForStreamGroupID:1935897189];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v16), v15}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A140, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v16)];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v18 = [participant negotiatedCipherSuiteForStreamGroupID:1667329399];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v18), v17}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A158, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v18)];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v20 = [participant negotiatedCipherSuiteForStreamGroupID:1835623287];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v20), v19}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A170, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v20)];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v22 = [participant negotiatedCipherSuiteForStreamGroupID:1667330164];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v22), v21}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A188, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v22)];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v24 = [participant negotiatedCipherSuiteForStreamGroupID:1718909044];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v24), v23}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A098, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v24)];
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", @"CPHRS", reportingStreamGroupFromStreamGroupID()];
  v26 = [participant negotiatedCipherSuiteForStreamGroupID:1650745716];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v26), v25}];
  [v8 appendFormat:@"{streamGroup=%@ : cipherSuite=%@}, \r\n", &unk_1F579A1A0, VCMediaStreamTransport_SRTPCipherSuiteForVCMediaStreamCipherSuite(v26)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v30 = v27;
      v31 = 2080;
      v32 = "[VCSession addNegotiatedCipherSuitesForParticipant:toReportingDictionary:]";
      v33 = 1024;
      v34 = 3458;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

- (void)collectSessionEventKeyFieldsAndSubtype:(__CFDictionary *)subtype eventType:(unsigned __int16)type withParticipant:(id)participant keyChangeReason:(id)reason newMKI:(id)i withStreamGroupID:(unsigned int)d withStreamID:(unsigned __int16)iD collectSubtype:(unsigned __int16 *)self0
{
  if (collectSubtype)
  {
    *collectSubtype = 0;
    switch(type)
    {
      case 0x9Fu:
        conversationID = [MEMORY[0x1E696AD98] numberWithInt:self->_currentConnectionType];
        v14 = @"VCSPConnectionType";
        goto LABEL_39;
      case 0xA0u:
        v16 = MEMORY[0x1E696AD98];
        v17 = 432;
        goto LABEL_14;
      case 0xA1u:
        CFDictionaryAddValue(subtype, @"VCSPIDSID", self->_idsDestination);
        CFDictionaryAddValue(subtype, @"VCSPAudioEnabled", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(participant, "isAudioEnabled")}]);
        CFDictionaryAddValue(subtype, @"VCSPVideoEnabled", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(participant, "isVideoEnabled")}]);
        CFDictionaryAddValue(subtype, @"REMBUILD", [objc_msgSend(participant "callInfoBlob")]);
        CFDictionaryAddValue(subtype, @"RDT", [objc_msgSend(participant "callInfoBlob")]);
        CFDictionaryAddValue(subtype, @"VCSECNLinkType", [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_ecnLinkType]);
        CFDictionaryAddValue(subtype, @"MicMode", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCSession getCurrentMicMode](self, "getCurrentMicMode")}]);
        [(VCSession *)self addNegotiatedCipherSuitesForParticipant:participant toReportingDictionary:subtype];
        goto LABEL_20;
      case 0xA2u:
LABEL_20:
        v18 = [participant capabilities] >> 32 == 1;
        CFDictionaryAddValue(subtype, @"VCSPIsWebUser", [MEMORY[0x1E696AD98] numberWithBool:v18]);
        conversationID = [participant uuid];
        v14 = @"VCSPUUID";
        goto LABEL_39;
      case 0xA3u:
        CFDictionaryAddValue(subtype, @"VCSPUUID", [(VCSessionParticipant *)self->_localParticipant uuid]);
        CFDictionaryAddValue(subtype, @"LocSw", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCSwitchManager localSwitches](self->_switchManager, "localSwitches")}]);
        CFDictionaryAddValue(subtype, @"SesSw", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCSessionSwitches switches](self->_abSwitches, "switches")}]);
        v21 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
        VCUtil_AppendFromDictionary(subtype, v21);
        if (v21)
        {
          CFRelease(v21);
        }

        CFDictionaryAddValue(subtype, @"MicMode", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCSession getCurrentMicMode](self, "getCurrentMicMode")}]);
        CFDictionaryAddValue(subtype, @"SpatialAudioSupported", [MEMORY[0x1E696AD98] numberWithBool:self->_isSpatialAudioSupported]);
        goto LABEL_26;
      case 0xA4u:
        CFDictionaryAddValue(subtype, @"VCSPAudioEnabled", [MEMORY[0x1E696AD98] numberWithBool:{-[VCSessionParticipant isAudioEnabled](self->_localParticipant, "isAudioEnabled")}]);
        CFDictionaryAddValue(subtype, @"VCSPVideoEnabled", [MEMORY[0x1E696AD98] numberWithBool:{-[VCSessionParticipant isVideoEnabled](self->_localParticipant, "isVideoEnabled")}]);
        CFDictionaryAddValue(subtype, @"VCSPScreenEnabled", [MEMORY[0x1E696AD98] numberWithBool:{-[VCSessionParticipant isScreenEnabled](self->_localParticipant, "isScreenEnabled")}]);
        if (self->_conversationID)
        {
          conversationID = self->_conversationID;
        }

        else
        {
          conversationID = &stru_1F570E008;
        }

        v14 = @"CID";
        goto LABEL_39;
      case 0xA5u:
      case 0xA6u:
      case 0xAEu:
      case 0xAFu:
      case 0xB0u:
      case 0xB1u:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB6u:
      case 0xB7u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBBu:
        return;
      case 0xA7u:
        if ([participant uuid])
        {
          uuid = [participant uuid];
        }

        else
        {
          uuid = @"nil";
        }

        CFDictionaryAddValue(subtype, @"VCSPUUID", uuid);
        if (i)
        {
          conversationID = [i description];
        }

        else
        {
          conversationID = @"nil";
        }

        v14 = @"VCSNewMKI";
        goto LABEL_39;
      case 0xA8u:
        if (reason)
        {
          conversationID = [reason stringValue];
        }

        else
        {
          conversationID = @"nil";
        }

        v14 = @"VCSKeyChangeReason";
        goto LABEL_39;
      case 0xA9u:
LABEL_26:
        CFDictionaryAddValue(subtype, @"VCSOneToOneModeEnabled", [MEMORY[0x1E696AD98] numberWithBool:self->_oneToOneModeEnabled]);
        CFDictionaryAddValue(subtype, @"VCSMode", [MEMORY[0x1E696AD98] numberWithInteger:{-[VCSessionConfiguration sessionMode](self->_configuration, "sessionMode")}]);
        conversationID = [MEMORY[0x1E696AD98] numberWithBool:{-[VCSessionConfiguration outOfProcessCodecsEnabled](self->_configuration, "outOfProcessCodecsEnabled")}];
        v14 = @"VCSOOPCodecs";
        goto LABEL_39;
      case 0xAAu:
        CFDictionaryAddValue(subtype, @"VCSPUUID", [participant uuid]);
        conversationID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(participant, "isAudioEnabled")}];
        v14 = @"VCSPAudioEnabled";
        goto LABEL_39;
      case 0xABu:
        CFDictionaryAddValue(subtype, @"VCSPUUID", [participant uuid]);
        CFDictionaryAddValue(subtype, @"VCSPVideoEnabled", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(participant, "isVideoEnabled")}]);
        *collectSubtype = 1;
        return;
      case 0xACu:
        CFDictionaryAddValue(subtype, @"VCSPUUID", [participant uuid]);
        conversationID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(participant, "isAudioPaused")}];
        v14 = @"VCSPAudioPaused";
        goto LABEL_39;
      case 0xADu:
        CFDictionaryAddValue(subtype, @"VCSPUUID", [participant uuid]);
        conversationID = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(participant, "isVideoPaused")}];
        v14 = @"VCSPVideoPaused";
        goto LABEL_39;
      case 0xB5u:
        v16 = MEMORY[0x1E696AD98];
        v17 = 436;
LABEL_14:
        conversationID = [v16 numberWithUnsignedInt:*(&self->super.super.isa + v17)];
        v14 = @"VCSPTargetBitrate";
        goto LABEL_39;
      case 0xBCu:
        CFDictionaryAddValue(subtype, @"VCSPUUID", [participant uuid]);
        CFDictionaryAddValue(subtype, @"VCSPScreenEnabled", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(participant, "isScreenEnabled")}]);
        conversationID = [MEMORY[0x1E696AD98] numberWithInt:self->_localParticipant == participant];
        v14 = @"VCSPIsLocalParticipant";
        goto LABEL_39;
      default:
        if ((type - 232) >= 2)
        {
          return;
        }

        CFDictionaryAddValue(subtype, @"VCMSStreamGroup", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&d]);
        if ([participant uuid])
        {
          uuid2 = [participant uuid];
        }

        else
        {
          uuid2 = @"nil";
        }

        CFDictionaryAddValue(subtype, @"VCSPUUID", uuid2);
        conversationID = [MEMORY[0x1E696AD98] numberWithUnsignedShort:iD];
        v14 = @"VCASStreamIDs";
LABEL_39:

        CFDictionaryAddValue(subtype, v14, conversationID);
        break;
    }
  }

  else
  {
    [VCSession collectSessionEventKeyFieldsAndSubtype:eventType:withParticipant:keyChangeReason:newMKI:withStreamGroupID:withStreamID:collectSubtype:];
  }
}

- (void)reportingSessionRemoteParticipantEvent:(unsigned __int16)event withParticipant:(id)participant value:(id)value
{
  eventCopy = event;
  v26 = *MEMORY[0x1E69E9840];
  if (event <= 175)
  {
    if (event == 174)
    {
      v9 = @"VCSPAudioEnabled";
    }

    else
    {
      if (event != 175)
      {
        goto LABEL_16;
      }

      v9 = @"VCSPVideoEnabled";
    }

LABEL_12:
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, @"VCSPUUID", [participant uuid]);
    CFDictionaryAddValue(Mutable, v9, value);
    reportingGenericEvent();
    if (Mutable)
    {

      CFRelease(Mutable);
    }

    return;
  }

  switch(event)
  {
    case 0xB0u:
      v9 = @"VCSPAudioPaused";
      goto LABEL_12;
    case 0xB1u:
      v9 = @"VCSPVideoPaused";
      goto LABEL_12;
    case 0xBDu:
      v9 = @"VCSPScreenEnabled";
      goto LABEL_12;
  }

LABEL_16:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSession reportingSessionRemoteParticipantEvent:withParticipant:value:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v14 = 136316418;
        v15 = v12;
        v16 = 2080;
        v17 = "[VCSession reportingSessionRemoteParticipantEvent:withParticipant:value:]";
        v18 = 1024;
        v19 = 3586;
        v20 = 2112;
        v21 = v11;
        v22 = 2048;
        selfCopy = self;
        v24 = 1024;
        v25 = eventCopy;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) EventType:%d is not relevant for Session Remote Participant Event logging", &v14, 0x36u);
      }
    }
  }
}

- (void)reportLocalRateControlExperimentConfiguration
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled)
  {
    v2 = &OBJC_IVAR___VCSession__oneToOneSettings;
  }

  else
  {
    v2 = &OBJC_IVAR___VCSession__uplinkRateController;
  }

  v3 = *(&self->super.super.isa + *v2);
  v6[0] = @"RCEV";
  v7[0] = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "rateControlExperimentConfig")}];
  v6[1] = @"RCEG";
  v7[1] = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "rateControlExperimentConfig") >> 32}];
  v6[2] = @"SBVERS";
  v4 = MEMORY[0x1E696AD98];
  [v3 rateControlExperimentConfig];
  v7[2] = [v4 numberWithUnsignedInt:v5];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  reportingGenericEvent();
}

- (void)handleMicModeNotification:(id)notification
{
  v8[1] = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E6986B80]];
  if (v5)
  {
    if ([v5 isEqualToString:@"com.apple.facetime"])
    {
      getCurrentMicMode = [(VCSession *)self getCurrentMicMode];
      v7 = @"MicMode";
      v8[0] = [MEMORY[0x1E696AD98] numberWithInteger:getCurrentMicMode];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      reportingGenericEvent();
    }
  }
}

- (void)registerForThermalFeatureNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E6986B78];

  [defaultCenter addObserver:self selector:sel_handleMicModeNotification_ name:v4 object:0];
}

- (void)deregisterForThermalFeatureNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E6986B78];

  [defaultCenter removeObserver:self name:v4 object:0];
}

- (void)dispatchedAddParticipantWithConfig:(id)config
{
  v60 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSession-dispatchedAddParticipantWithConfig");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (config)
      {
        v7 = [objc_msgSend(config "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136315906;
      v49 = v5;
      v50 = 2080;
      v51 = "[VCSession dispatchedAddParticipantWithConfig:]";
      v52 = 1024;
      v53 = 3694;
      v54 = 2080;
      v55 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d @:@ VCSession-dispatchedAddParticipantWithConfig Adding participant[%s]", buf, 0x26u);
    }
  }

  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_remoteParticipantsMapByServerID, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(config, "idsParticipantID")}]))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession dispatchedAddParticipantWithConfig:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          idsParticipantID = [config idsParticipantID];
          *buf = 136316418;
          v49 = v13;
          v50 = 2080;
          v51 = "[VCSession dispatchedAddParticipantWithConfig:]";
          v52 = 1024;
          v53 = 3697;
          v54 = 2112;
          v55 = v8;
          v56 = 2048;
          selfCopy3 = self;
          v58 = 2048;
          v59 = idsParticipantID;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) Another participant with same idsParticipantID=%llu already exists!", buf, 0x3Au);
        }
      }
    }

    v15 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3698], 0);
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = config;
    block[6] = v15;
    v17 = block;
    goto LABEL_29;
  }

  if (self->_localParticipant && [objc_msgSend(config "uuid")])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession dispatchedAddParticipantWithConfig:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          uuid = [config uuid];
          *buf = 136316418;
          v49 = v32;
          v50 = 2080;
          v51 = "[VCSession dispatchedAddParticipantWithConfig:]";
          v52 = 1024;
          v53 = 3707;
          v54 = 2112;
          v55 = v9;
          v56 = 2048;
          selfCopy3 = self;
          v58 = 2112;
          v59 = uuid;
          _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) Attempting to add a remote participant that is using same uuid as local participant's uuid=%@!", buf, 0x3Au);
        }
      }
    }

    v34 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3708], 0);
    notificationQueue = self->_notificationQueue;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_603;
    v46[3] = &unk_1E85F3E30;
    v46[4] = self;
    v46[5] = config;
    v46[6] = v34;
    v17 = v46;
    goto LABEL_29;
  }

  [config setOutOfProcessCodecsEnabled:{-[VCSessionConfiguration outOfProcessCodecsEnabled](self->_configuration, "outOfProcessCodecsEnabled")}];
  [config setSpatialMetadata:self->_spatialMetadata];
  [config setSpatialMetadataEntryMap:self->_mediaTypeToSpatialMetadataEntryMap];
  [config setMediaNegotiator:{-[VCSessionParticipant mediaNegotiator](self->_localParticipant, "mediaNegotiator")}];
  [config setSecurityKeyManager:self->_securityKeyManager];
  [config setSessionUUID:self->_uuid];
  [config setTransportSessionID:self->_transportSessionID];
  [config setIdsDestination:self->_idsDestination];
  [config setIsGKVoiceChat:self->_isGKVoiceChat];
  [config setSessionMode:{-[VCSessionConfiguration sessionMode](self->_configuration, "sessionMode")}];
  [config setNetworkFeedbackController:self->_feedbackController];
  [config setAudioMachineLearningCoordinator:self->_audioMachineLearningCoordinatorDownlink];
  [config setIsLowLatencyAudio:{+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") == 8}];
  [config setIsOneToOneModeEnabled:{-[VCSessionConfiguration isOneToOneModeEnabled](self->_configuration, "isOneToOneModeEnabled")}];
  [config setOneToOneAuthenticationTagEnabled:{-[VCSessionConfiguration isOneToOneAuthenticationTagEnabled](self->_configuration, "isOneToOneAuthenticationTagEnabled")}];
  v10 = nw_activity_create();
  [config setNwActivity:v10];
  nw_release(v10);
  if (self->_nwActivity)
  {
    [config nwActivity];
    nw_activity_set_parent_activity();
  }

  [config nwActivity];
  nw_activity_activate();
  [config setIsServerRTxEnabled:self->_isServerPacketRetransmissionForVideoEnabled];
  [config setIsEnhancedJBAdaptationsEnabled:{-[VCSession isEnhancedJBAdaptationsEnabled](self, "isEnhancedJBAdaptationsEnabled")}];
  [config setDetectInactiveAudioFramesAACELD:self->_detectInactiveAudioFramesAACELD];
  [config setEnableMaxCameraBitrateVideoQualityNewTier:{-[VCExperimentManager isEnabledExperiment:forceDisable:](self->_experimentManager, "isEnabledExperiment:forceDisable:", @"enableMaxCameraBitrateVideoQualityV4", _os_feature_enabled_impl() ^ 1)}];
  [config setIsLateKeyFrameDetectionEnabled:{-[VCSession isLateKeyFrameDetectionEnabled](self, "isLateKeyFrameDetectionEnabled")}];
  [config setExperimentManager:self->_experimentManager];
  [config setIsACC24ForU1Enabled:{-[VCExperimentManager isEnabledExperiment:forceDisable:](self->_experimentManager, "isEnabledExperiment:forceDisable:", @"enableACC24ForU1", !VCFeatureFlagManager_UseAudioCodecACC24ForU1())}];
  [config setIsACC24ForGFTEnabled:{-[VCExperimentManager isEnabledExperiment:forceDisable:](self->_experimentManager, "isEnabledExperiment:forceDisable:", @"enableACC24ForGFT", !VCFeatureFlagManager_UseAudioCodecACC24ForGFT())}];
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  isJBLatencySensitiveModeEnabled = [(VCSession *)self isJBLatencySensitiveModeEnabled];
  [config setIsJBLatencySensitiveModeEnabled:isJBLatencySensitiveModeEnabled];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v49 = v18;
        v50 = 2080;
        v51 = "[VCSession dispatchedAddParticipantWithConfig:]";
        v52 = 1024;
        v53 = 3758;
        v54 = 1024;
        LODWORD(v55) = isJBLatencySensitiveModeEnabled;
        v20 = "VCSession [%s] %s:%d isJBLatencySensitiveModeEnabled=%{BOOL}d";
        v21 = v19;
        v22 = 34;
LABEL_37:
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v49 = v23;
        v50 = 2080;
        v51 = "[VCSession dispatchedAddParticipantWithConfig:]";
        v52 = 1024;
        v53 = 3758;
        v54 = 2112;
        v55 = v12;
        v56 = 2048;
        selfCopy3 = self;
        v58 = 1024;
        LODWORD(v59) = isJBLatencySensitiveModeEnabled;
        v20 = "VCSession [%s] %s:%d %@(%p) isJBLatencySensitiveModeEnabled=%{BOOL}d";
        v21 = v24;
        v22 = 54;
        goto LABEL_37;
      }
    }
  }

  v25 = [[VCSessionParticipantRemote alloc] initWithConfig:config delegate:self];
  if (!v25)
  {
    v28 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 15, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3762], 0);
    notificationQueue = self->_notificationQueue;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_606;
    v45[3] = &unk_1E85F3E30;
    v45[4] = self;
    v45[5] = config;
    v45[6] = v28;
    v17 = v45;
LABEL_29:
    dispatch_async(notificationQueue, v17);
    return;
  }

  v26 = v25;
  if ([(VCSessionParticipant *)self->_localParticipant isVideoEnabled])
  {
    v27 = [(VCSessionParticipant *)self->_localParticipant isVideoPaused]^ 1;
  }

  else
  {
    v27 = 0;
  }

  [(VCSessionParticipantRemote *)v26 setLocalCameraCaptureActive:v27];
  if (([(VCSessionParticipantRemote *)v26 capabilities]& 1) != 0)
  {
    [(VCSessionParticipantLocal *)self->_localParticipant setIsRemoteOnPeace:1];
  }

  [(VCSession *)self updateAlwaysHDCaptureScreenEnabledWithNewParticipant:v26];
  [(VCSessionParticipant *)v26 setStatisticsCollector:[(AVCRateController *)self->_downlinkRateController statisticsCollector]];
  [(VCSessionParticipant *)v26 setReportingAgent:self->super._reportingAgent];
  [(VCSessionParticipantRemote *)v26 setSharingEnabled:self->_sharingEnabled];
  [(VCSessionParticipantRemote *)v26 setMediaRecorder:self->_mediaRecorder];
  if (self->_localSourceNeedsReset)
  {
    v29 = 10;
    goto LABEL_51;
  }

  if ([(VCSession *)self detectSSRCCollision:v26 resetNeeded:&self->_localSourceNeedsReset])
  {
    if (self->_localSourceNeedsReset)
    {
      v29 = 10;
    }

    else
    {
      v29 = 9;
    }

LABEL_51:
    v30 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", v29, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3783], 0);
    v31 = self->_notificationQueue;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_2;
    v44[3] = &unk_1E85F3E30;
    v44[4] = self;
    v44[5] = config;
    v44[6] = v30;
    dispatch_async(v31, v44);
    if (self->_localSourceNeedsReset && (self->_state | 2) == 3)
    {
      [(VCSession *)self dispatchedStopWithError:v30];
    }

    goto LABEL_89;
  }

  if (self->_oneToOneModeEnabled)
  {
    if ([(VCSession *)self isECNCapableWithRemoteParticipant:v26])
    {
      if (VCMediaQueue_SetECNEnabled(self->_mediaQueue, self->_isECNEnabled))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSession dispatchedAddParticipantWithConfig:];
          }
        }
      }
    }

    [(VCSession *)self setBytesInFlightFlagWithParticipant:v26];
    if (![(VCSession *)self addOneToOneParticipant:v26])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession dispatchedAddParticipantWithConfig:];
        }
      }

      v38 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 15, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3820], 0);
      v39 = self->_notificationQueue;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_607;
      v43[3] = &unk_1E85F3E30;
      v43[4] = self;
      v43[5] = config;
      v43[6] = v38;
      dispatch_async(v39, v43);
      goto LABEL_89;
    }

    [(VCSession *)self setTransportConnectionSelectionVersionWithLocalFrameWorkVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion] remoteFrameworkVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)v26 callInfoBlob] frameworkVersion]];
  }

  else
  {
    if (![(VCSession *)self configureRemoteParticipant:v26 withConfig:config])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession dispatchedAddParticipantWithConfig:];
        }
      }

      goto LABEL_89;
    }

    [(VCSession *)self setDelegatesForRemoteParticipant:v26];
    if (self->_state == 1)
    {
      [(NSMutableArray *)self->_startingParticipants addObject:v26];
    }
  }

  if ([(VCSessionParticipant *)v26 isVideoEnabled])
  {
    connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];
    -[VCConnectionManager addMediaHealthStatsHistoryEntryForParticipantID:](connectionManager, "addMediaHealthStatsHistoryEntryForParticipantID:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(config, "idsParticipantID")}]);
  }

  if ((self->_state | 2) == 3)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_remoteParticipantsMapByServerID, "setObject:forKeyedSubscript:", v26, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(config, "idsParticipantID")}]);
    [(VCSessionParticipantRemote *)v26 start];
  }

  -[VCSessionParticipantRemote updatePositionalInfoWithData:shouldReapply:](v26, "updatePositionalInfoWithData:shouldReapply:", [config positionalInfo], 0);
  [(VCSession *)self applySpatialMetadata];
  if ((self->_state | 2) != 3)
  {
    if ([(VCSession *)self registerRemoteParticipantToSession:v26])
    {
      v36 = 0;
    }

    else
    {
      v36 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 17, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3847], 0);
    }

    v40 = self->_notificationQueue;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_2_608;
    v42[3] = &unk_1E85F3E30;
    v42[4] = self;
    v42[5] = v26;
    v42[6] = v36;
    dispatch_async(v40, v42);
    [(NSMutableArray *)self->_initializingParticipants removeObject:v26];
    [(VCSession *)self sendInitialDeviceOrientationToRemote];
  }

LABEL_89:
}

uint64_t __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:0 error:v5];
}

uint64_t __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_603(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:0 error:v5];
}

uint64_t __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_606(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:0 error:v5];
}

uint64_t __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:0 error:v5];
}

uint64_t __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_607(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:0 error:v5];
}

uint64_t __48__VCSession_dispatchedAddParticipantWithConfig___block_invoke_2_608(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48) == 0;

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:v5 error:?];
}

- (BOOL)configureRemoteParticipant:(id)participant withConfig:(id)config
{
  v14[7] = *MEMORY[0x1E69E9840];
  if ([(VCSession *)self setOneToOneConfigOnRemoteParticipant:?])
  {
    if ([participant configureWithDeviceRole:+[VCSession deviceRoleForSessionMode:](VCSession negotiatedVideoEnabled:"deviceRoleForSessionMode:" negotiatedScreenEnabled:-[VCSessionConfiguration sessionMode](self->_configuration operatingMode:{"sessionMode")), 0, 0, 6}])
    {
      [(NSMutableArray *)self->_initializingParticipants addObject:participant];
      return 1;
    }

    v12 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 17, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3873], 0);
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VCSession_configureRemoteParticipant_withConfig___block_invoke_2;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = config;
    block[6] = v12;
    v11 = block;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSession configureRemoteParticipant:v8 withConfig:participant];
      }
    }

    v9 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 17, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3865], 0);
    notificationQueue = self->_notificationQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__VCSession_configureRemoteParticipant_withConfig___block_invoke;
    v14[3] = &unk_1E85F3E30;
    v14[4] = self;
    v14[5] = config;
    v14[6] = v9;
    v11 = v14;
  }

  dispatch_async(notificationQueue, v11);
  return 0;
}

uint64_t __51__VCSession_configureRemoteParticipant_withConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:0 error:v5];
}

uint64_t __51__VCSession_configureRemoteParticipant_withConfig___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:0 error:v5];
}

- (void)dispatchedAddParticipantConfigurations:(id)configurations
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [configurations countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(configurations);
        }

        [(VCSession *)self dispatchedAddParticipantWithConfig:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [configurations countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }

  if (!self->_oneToOneModeEnabled)
  {
    [(VCSession *)self distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:1];
  }
}

- (void)dispatchedRemoveParticipant:(id)participant
{
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = v6;
        v25 = 2080;
        v26 = "[VCSession dispatchedRemoveParticipant:]";
        v27 = 1024;
        v28 = 3893;
        v29 = 2112;
        participantCopy = participant;
        v8 = "VCSession [%s] %s:%d Removing participant[%@]";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSession *)self performSelector:sel_logPrefix];
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
        v24 = v11;
        v25 = 2080;
        v26 = "[VCSession dispatchedRemoveParticipant:]";
        v27 = 1024;
        v28 = 3893;
        v29 = 2112;
        participantCopy = v5;
        v31 = 2048;
        selfCopy = self;
        v33 = 2112;
        participantCopy2 = participant;
        v8 = "VCSession [%s] %s:%d %@(%p) Removing participant[%@]";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  v13 = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID objectForKeyedSubscript:participant];
  if (v13)
  {
    v14 = v13;
    if (self->_oneToOneModeEnabled)
    {
      VCConnectionManager_AddTelemetryForPacketHistory([(VCTransportSession *)self->_transportSession connectionManager], objc_alloc_init(MEMORY[0x1E695DF90]));
      VCReporting_finalizeAggregationWithPayload();
      if (v14 == [(VCSession *)self oneToOneRemoteParticipant])
      {
        [(VCSession *)self cleanupOneToOneDelegates];
      }
    }

    connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];
    -[VCConnectionManager removeMediaHealthStatsHistoryEntryForParticipantID:](connectionManager, "removeMediaHealthStatsHistoryEntryForParticipantID:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCSessionParticipant idsParticipantID](v14, "idsParticipantID")}]);
    if ((self->_state | 2) == 3)
    {
      [(VCSessionParticipantRemote *)v14 stop];
    }

    [(NSMutableArray *)self->_startingParticipants removeObject:v14];
    v20 = [(NSMutableSet *)self->_stoppingParticipants containsObject:v14];
    [(NSMutableSet *)self->_stoppingParticipants removeObject:v14];
    [(NSMutableArray *)self->_initializingParticipants removeObject:v14];
    [(VCSession *)self removeDelegatesForRemoteParticipant:v14];
    if (![(NSMutableSet *)self->_stoppingParticipants count]&& v20)
    {
      [(VCSession *)self processDidStop];
    }

    [(VCSessionParticipant *)v14 participantVideoToken];
    [(VCSessionParticipant *)v14 idsParticipantID];
    kdebug_trace();
    [(VCSession *)self unregisterRemoteParticipantFromSession:v14];
    [(VCSession *)self updateAlwaysHDCaptureScreenEnabledWithNewParticipant:0];
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__VCSession_dispatchedRemoveParticipant___block_invoke_2;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = participant;
    v17 = block;
  }

  else
  {
    v15 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 3896], 0);
    v16 = self->_notificationQueue;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __41__VCSession_dispatchedRemoveParticipant___block_invoke;
    v22[3] = &unk_1E85F3E30;
    v22[4] = self;
    v22[5] = participant;
    v22[6] = v15;
    v17 = v22;
    notificationQueue = v16;
  }

  dispatch_async(notificationQueue, v17);
}

uint64_t __41__VCSession_dispatchedRemoveParticipant___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 removeParticipantWithID:v4 didSucceed:0 error:v5];
}

uint64_t __41__VCSession_dispatchedRemoveParticipant___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcSession:v3 removeParticipantWithID:v4 didSucceed:1 error:0];
}

- (void)dispatchedStart
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

uint64_t __28__VCSession_dispatchedStart__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcSession:v3 didStart:0 error:v4];
}

uint64_t __28__VCSession_dispatchedStart__block_invoke_611(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcSession:v3 didStart:0 error:v4];
}

uint64_t __28__VCSession_dispatchedStart__block_invoke_612(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcSession:v3 didStart:0 error:v4];
}

- (void)reportInitialThermalLevel
{
  v16 = *MEMORY[0x1E69E9840];
  thermalLevel = [VCPowerManager_DefaultManager() thermalLevel];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136315906;
        *&v12[4] = v5;
        *&v12[12] = 2080;
        *&v12[14] = "[VCSession reportInitialThermalLevel]";
        *&v12[22] = 1024;
        LODWORD(v13) = 4059;
        WORD2(v13) = 1024;
        *(&v13 + 6) = thermalLevel;
        v7 = "VCSession [%s] %s:%d Reporting thermalLevel=%d as initial thermal level";
        v8 = v6;
        v9 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v12, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCSession *)self performSelector:sel_logPrefix];
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
        *v12 = 136316418;
        *&v12[4] = v10;
        *&v12[12] = 2080;
        *&v12[14] = "[VCSession reportInitialThermalLevel]";
        *&v12[22] = 1024;
        LODWORD(v13) = 4059;
        WORD2(v13) = 2112;
        *(&v13 + 6) = v4;
        HIWORD(v13) = 2048;
        selfCopy = self;
        LOWORD(v15) = 1024;
        *(&v15 + 2) = thermalLevel;
        v7 = "VCSession [%s] %s:%d %@(%p) Reporting thermalLevel=%d as initial thermal level";
        v8 = v11;
        v9 = 54;
        goto LABEL_11;
      }
    }
  }

  [(VCObject *)self reportingAgent:*v12];
  reportingThermal();
}

- (void)setUpSensitiveContentAnalyzerForLocalParticipant
{
  if (+[VCSession sensitiveContentAnalysisEnabled](VCSession, "sensitiveContentAnalysisEnabled") && [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")])
  {

    reportingGenericEvent();
  }
}

- (void)stopMediaQueueOneToOne
{
  p_oneToOneSettings = &self->_oneToOneSettings;
  if (self->_oneToOneSettings.mediaQueue != 0xFFFFFFFFLL)
  {
    MediaQueue_Stop();
  }

  vcMediaQueue = p_oneToOneSettings->vcMediaQueue;
  if (vcMediaQueue)
  {

    VCMediaQueue_Stop(vcMediaQueue);
  }
}

- (void)dispatchedStopWithError:(id)error didRemoteCancel:(BOOL)cancel
{
  v58 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      v7 = error ? [objc_msgSend(error "description")] : "<nil>";
      v15 = [(VCSession *)self remoteParticipants]? [(NSString *)[(NSArray *)[(VCSession *)self remoteParticipants] description] UTF8String]: "<nil>";
      asprintf(&__str, "Stop called. error=%s, remoteParticipants=%s", v7, v15);
      if (__str)
      {
        errorCopy2 = error;
        __lasts = 0;
        v16 = strtok_r(__str, "\n", &__lasts);
        v17 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *v17;
            if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v47 = v18;
              v48 = 2080;
              v49 = "[VCSession dispatchedStopWithError:didRemoteCancel:]";
              v50 = 1024;
              v51 = 4092;
              v52 = 2080;
              *v53 = "";
              *&v53[8] = 2080;
              *&v53[10] = v16;
              _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v16 = strtok_r(0, "\n", &__lasts);
        }

        while (v16);
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      uTF8String = [(__CFString *)v6 UTF8String];
      v9 = error ? [objc_msgSend(error "description")] : "<nil>";
      v10 = [(VCSession *)self remoteParticipants]? [(NSString *)[(NSArray *)[(VCSession *)self remoteParticipants] description] UTF8String]: "<nil>";
      asprintf(&__str, "%s(%p) Stop called. error=%s, remoteParticipants=%s", uTF8String, self, v9, v10);
      if (__str)
      {
        errorCopy2 = error;
        __lasts = 0;
        v11 = strtok_r(__str, "\n", &__lasts);
        v12 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v47 = v13;
              v48 = 2080;
              v49 = "[VCSession dispatchedStopWithError:didRemoteCancel:]";
              v50 = 1024;
              v51 = 4092;
              v52 = 2080;
              *v53 = "";
              *&v53[8] = 2080;
              *&v53[10] = v11;
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v11 = strtok_r(0, "\n", &__lasts);
        }

        while (v11);
LABEL_32:
        free(__str);
        error = errorCopy2;
      }
    }
  }

  state = self->_state;
  if (state > 1)
  {
    if (state != 4 && state != 2)
    {
      goto LABEL_50;
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v47 = v21;
          v48 = 2080;
          v49 = "[VCSession dispatchedStopWithError:didRemoteCancel:]";
          v50 = 1024;
          v51 = 4108;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Session stop when start in progress, transitioning to stopping", buf, 0x1Cu);
        }
      }

      if (self->_oneToOneModeEnabled)
      {
        v23 = 0;
      }

      else
      {
        v23 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 5, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 4111], 0);
      }

      notificationQueue = self->_notificationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__VCSession_dispatchedStopWithError_didRemoteCancel___block_invoke_623;
      block[3] = &unk_1E85F37F0;
      block[4] = self;
      block[5] = v23;
      dispatch_async(notificationQueue, block);
      stopError = self->_stopError;
      goto LABEL_56;
    }

LABEL_50:
    stopError = error;
    self->_stopError = stopError;
LABEL_56:
    [(VCSession *)self reportingSessionStopEventWithError:stopError];
    if (self->_nwActivityActiveSession)
    {
      nw_activity_complete_with_reason();
      nw_release(self->_nwActivityActiveSession);
      self->_nwActivityActiveSession = 0;
    }

    [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    [(VCSession *)self setState:4];
    [(VCObject *)self startTimeoutTimer];
    [(VCSession *)self tearDown];
    [(VCSession *)self stopMediaQueueOneToOne];
    goto LABEL_67;
  }

  if (self->_oneToOneModeEnabled)
  {
    goto LABEL_67;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_64;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    v29 = self->_state;
    v30 = self->_stopError;
    *buf = 136316162;
    v47 = v27;
    v48 = 2080;
    v49 = "[VCSession dispatchedStopWithError:didRemoteCancel:]";
    v50 = 1024;
    v51 = 4098;
    v52 = 1024;
    *v53 = v29;
    *&v53[4] = 2048;
    *&v53[6] = v30;
    v31 = "VCSession [%s] %s:%d Session already stopped. _state=%d, stopError=%p";
    v32 = v28;
    v33 = 44;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_64;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    v37 = self->_state;
    v38 = self->_stopError;
    *buf = 136316674;
    v47 = v35;
    v48 = 2080;
    v49 = "[VCSession dispatchedStopWithError:didRemoteCancel:]";
    v50 = 1024;
    v51 = 4098;
    v52 = 2112;
    *v53 = v25;
    *&v53[8] = 2048;
    *&v53[10] = self;
    v54 = 1024;
    v55 = v37;
    v56 = 2048;
    v57 = v38;
    v31 = "VCSession [%s] %s:%d %@(%p) Session already stopped. _state=%d, stopError=%p";
    v32 = v36;
    v33 = 64;
  }

  _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
LABEL_64:
  v39 = self->_stopError;
  if (!v39)
  {
    v39 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 7, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 4099], 0);
  }

  v40 = self->_notificationQueue;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __53__VCSession_dispatchedStopWithError_didRemoteCancel___block_invoke;
  v43[3] = &unk_1E85F37F0;
  v43[4] = self;
  v43[5] = v39;
  dispatch_async(v40, v43);
LABEL_67:
  [(VCSession *)self unregisterReportingTask];
}

uint64_t __53__VCSession_dispatchedStopWithError_didRemoteCancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcSession:v3 didStopWithError:v4];
}

uint64_t __53__VCSession_dispatchedStopWithError_didRemoteCancel___block_invoke_623(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcSession:v3 didStart:0 error:v4];
}

- (void)dispatchedTransportStop
{
  [(VCSession *)self stopSessionMessaging];
  transportSession = self->_transportSession;

  [(VCTransportSession *)transportSession stop];
}

- (void)tearDown
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCSession tearDown]";
      v9 = 1024;
      v10 = 4150;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Tearing down session", &v5, 0x1Cu);
    }
  }

  reportingStopTimer();
  [(VCSession *)self stopAllParticipants];
  VCMediaQueue_Stop(self->_mediaQueue);
  [(VCSessionStatsController *)self->_sessionStatsController stopLocalSessionStatsUpdate];
  [(VCSecurityKeyManager *)self->_securityKeyManager stop];
  [(AVCRateController *)self->_uplinkRateController stop];
  [(AVCRateController *)self->_downlinkRateController stop];
  [(VCSession *)self stopRateControllerOneToOne];
}

- (void)dispatchedUpdateConfiguration:(id)configuration
{
  v51 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v38 = v6;
        v39 = 2080;
        v40 = "[VCSession dispatchedUpdateConfiguration:]";
        v41 = 1024;
        v42 = 4162;
        v43 = 2048;
        selfCopy = self;
        v45 = 2112;
        selfCopy2 = configuration;
        v8 = "VCSession [%s] %s:%d VCSession:[%p] configurationDict:[%@]";
        v9 = v7;
        v10 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSession *)self performSelector:sel_logPrefix];
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
        *buf = 136316674;
        v38 = v11;
        v39 = 2080;
        v40 = "[VCSession dispatchedUpdateConfiguration:]";
        v41 = 1024;
        v42 = 4162;
        v43 = 2112;
        selfCopy = v5;
        v45 = 2048;
        selfCopy2 = self;
        v47 = 2048;
        selfCopy3 = self;
        v49 = 2112;
        configurationCopy2 = configuration;
        v8 = "VCSession [%s] %s:%d %@(%p) VCSession:[%p] configurationDict:[%@]";
        v9 = v12;
        v10 = 68;
        goto LABEL_11;
      }
    }
  }

  sessionMode = [(VCSessionConfiguration *)self->_configuration sessionMode];
  isOneToOneModeEnabled = [(VCSessionConfiguration *)self->_configuration isOneToOneModeEnabled];
  isRemoteScreenControlEnabled = [(VCSessionConfiguration *)self->_configuration isRemoteScreenControlEnabled];
  if (![(VCSessionConfiguration *)self->_configuration updateWithClientDictionary:configuration])
  {
    [VCSession dispatchedUpdateConfiguration:];
    goto LABEL_40;
  }

  if (sessionMode != [(VCSessionConfiguration *)self->_configuration sessionMode])
  {
    v16 = [VCSession deviceRoleForSessionMode:[(VCSessionConfiguration *)self->_configuration sessionMode]];
    if ([(VCSessionParticipant *)self->_localParticipant updateConfigurationWithDeviceRole:v16])
    {
      v28 = isRemoteScreenControlEnabled;
      [(VCSession *)self setupSpatialAudio];
      configurationCopy3 = configuration;
      isSpatialAudioSupported = [(VCSessionConfiguration *)self->_configuration sessionMode]!= 1 && +[VCHardwareSettings isSpatialAudioSupported];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      allValues = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allValues];
      v19 = [allValues countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(allValues);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            if (([v23 updateConfigurationWithDeviceRole:v16] & 1) == 0)
            {
              [(VCSession *)self dispatchedUpdateConfiguration:v23];
              configuration = configurationCopy3;
              goto LABEL_40;
            }

            if (isSpatialAudioSupported)
            {
              [v23 updatePositionalInfoWithData:objc_msgSend(objc_msgSend(v23 shouldReapply:{"positionalInfo"), "serialize"), 1}];
            }
          }

          v20 = [allValues countByEnumeratingWithState:&v33 objects:v32 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      if (isSpatialAudioSupported)
      {
        [(VCSession *)self applySpatialMetadata];
      }

      configuration = configurationCopy3;
      if (v28 != [(VCSessionConfiguration *)self->_configuration isRemoteScreenControlEnabled])
      {
        [(VCSession *)self setRemoteScreenControlEnabled:[(VCSessionConfiguration *)self->_configuration isRemoteScreenControlEnabled]];
      }

      goto LABEL_32;
    }

    [VCSession dispatchedUpdateConfiguration:];
LABEL_40:
    v24 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 11, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 4205], 0);
    v25 = 0;
    goto LABEL_35;
  }

LABEL_32:
  if (isOneToOneModeEnabled != [(VCSessionConfiguration *)self->_configuration isOneToOneModeEnabled])
  {
    [(VCSession *)self setOneToOneModeEnabled:[(VCSessionConfiguration *)self->_configuration isOneToOneModeEnabled] configurationDict:configuration];
  }

  v24 = 0;
  v25 = 1;
LABEL_35:
  isOneToOneModeEnabled2 = [(VCSessionConfiguration *)self->_configuration isOneToOneModeEnabled];
  if (!v25 || ((isOneToOneModeEnabled ^ isOneToOneModeEnabled2) & 1) == 0)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__VCSession_dispatchedUpdateConfiguration___block_invoke;
    block[3] = &unk_1E85F5E38;
    block[4] = self;
    block[5] = configuration;
    v31 = v25;
    block[6] = v24;
    dispatch_async(notificationQueue, block);
  }
}

uint64_t __43__VCSession_dispatchedUpdateConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);

  return [v2 vcSession:v3 updateConfiguration:v4 didSucceed:v5 error:v6];
}

- (void)stopAllParticipants
{
  v13 = *MEMORY[0x1E69E9840];
  [(VCSession *)self cleanupOneToOneDelegates];
  [(NSMutableSet *)self->_stoppingParticipants addObjectsFromArray:[(VCSession *)self remoteParticipants]];
  [(NSMutableSet *)self->_stoppingParticipants addObjectsFromArray:self->_startingParticipants];
  [(NSMutableSet *)self->_stoppingParticipants addObjectsFromArray:self->_initializingParticipants];
  [(NSMutableSet *)self->_stoppingParticipants addObject:self->_localParticipant];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  stoppingParticipants = self->_stoppingParticipants;
  v4 = [(NSMutableSet *)stoppingParticipants countByEnumeratingWithState:&v9 objects:v8 count:16];
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
          objc_enumerationMutation(stoppingParticipants);
        }

        [*(*(&v9 + 1) + 8 * v7++) stop];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)stoppingParticipants countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)sendInitialDeviceOrientationToRemote
{
  v3 = VCVideoCaptureServer_CopyLocalVideoAttributes(+[VCVideoCaptureServer VCVideoCaptureServerSingleton]);
  -[VCSession vcSessionParticipant:didChangeDeviceOrientation:](self, "vcSessionParticipant:didChangeDeviceOrientation:", self->_localParticipant, [v3 orientation]);
}

- (void)dispatchedParticipant:(id)participant didStart:(BOOL)start error:(id)error
{
  startCopy = start;
  v59 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v46 = v10;
        v47 = 2080;
        v48 = "[VCSession dispatchedParticipant:didStart:error:]";
        v49 = 1024;
        v50 = 4238;
        v51 = 1024;
        *v52 = startCopy;
        *&v52[4] = 2112;
        *&v52[6] = error;
        *&v52[14] = 2112;
        *&v52[16] = [participant uuid];
        v53 = 2112;
        errorCopy = [(VCSession *)self participantsToString];
        v12 = "VCSession [%s] %s:%d Participant didStart:%d error:[%@] participantID[%@] %@";
        v13 = v11;
        v14 = 64;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317186;
        v46 = v15;
        v47 = 2080;
        v48 = "[VCSession dispatchedParticipant:didStart:error:]";
        v49 = 1024;
        v50 = 4238;
        v51 = 2112;
        *v52 = v9;
        *&v52[8] = 2048;
        *&v52[10] = self;
        *&v52[18] = 1024;
        *&v52[20] = startCopy;
        v53 = 2112;
        errorCopy = error;
        v55 = 2112;
        uuid = [participant uuid];
        v57 = 2112;
        participantsToString = [(VCSession *)self participantsToString];
        v12 = "VCSession [%s] %s:%d %@(%p) Participant didStart:%d error:[%@] participantID[%@] %@";
        v13 = v16;
        v14 = 84;
        goto LABEL_11;
      }
    }
  }

  [(NSMutableArray *)self->_startingParticipants removeObject:participant];
  if (!startCopy && self->_state == 1)
  {
    [(VCSession *)self setState:2];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession dispatchedParticipant:didStart:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCSession *)self performSelector:sel_logPrefix];
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
          v46 = v18;
          v47 = 2080;
          v48 = "[VCSession dispatchedParticipant:didStart:error:]";
          v49 = 1024;
          v50 = 4244;
          v51 = 2112;
          *v52 = v17;
          *&v52[8] = 2048;
          *&v52[10] = self;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d %@(%p) Session failed to start.", buf, 0x30u);
        }
      }
    }
  }

  v20 = startCopy;
  if (![(NSMutableArray *)self->_startingParticipants count])
  {
    state = self->_state;
    if (state != 4 && state != 2)
    {
      v20 = startCopy;
      if (state == 1)
      {
        [(VCSession *)self setState:3];
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSession-didStart");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v46 = v24;
            v47 = 2080;
            v48 = "[VCSession dispatchedParticipant:didStart:error:]";
            v49 = 1024;
            v50 = 4250;
            v51 = 2048;
            *v52 = self;
            _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d @:@ VCSession-didStart (%p)", buf, 0x26u);
          }
        }

        [participant logAllStreamTokens];
        [(VCSession *)self broadcastInitialMediaState];
        [(VCSession *)self reportNearbyStart];
        notificationQueue = self->_notificationQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__VCSession_dispatchedParticipant_didStart_error___block_invoke;
        block[3] = &unk_1E85F3778;
        block[4] = self;
        dispatch_async(notificationQueue, block);
        v20 = startCopy;
      }

      goto LABEL_47;
    }

    [(VCSession *)self tearDown];
    [(VCSession *)self stopMediaQueueOneToOne];
    [(VCSession *)self dispatchedTransportStop];
    [(VCSession *)self unregisterReportingTask];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_46;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      v29 = self->_state;
      uuid2 = [participant uuid];
      participantsToString2 = [(VCSession *)self participantsToString];
      *buf = 136316418;
      v46 = v27;
      v47 = 2080;
      v48 = "[VCSession dispatchedParticipant:didStart:error:]";
      v49 = 1024;
      v50 = 4266;
      v51 = 1024;
      *v52 = v29;
      *&v52[4] = 2112;
      *&v52[6] = uuid2;
      *&v52[14] = 2112;
      *&v52[16] = participantsToString2;
      v32 = "VCSession [%s] %s:%d Resetting Participant shouldStart to false as session state=%d failed to move to start, participantID[%@] %@";
      v33 = v28;
      v34 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_46;
      }

      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      v37 = self->_state;
      uuid3 = [participant uuid];
      participantsToString3 = [(VCSession *)self participantsToString];
      *buf = 136316930;
      v46 = v35;
      v47 = 2080;
      v48 = "[VCSession dispatchedParticipant:didStart:error:]";
      v49 = 1024;
      v50 = 4266;
      v51 = 2112;
      *v52 = v23;
      *&v52[8] = 2048;
      *&v52[10] = self;
      *&v52[18] = 1024;
      *&v52[20] = v37;
      v53 = 2112;
      errorCopy = uuid3;
      v55 = 2112;
      uuid = participantsToString3;
      v32 = "VCSession [%s] %s:%d %@(%p) Resetting Participant shouldStart to false as session state=%d failed to move to start, participantID[%@] %@";
      v33 = v36;
      v34 = 74;
    }

    _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
LABEL_46:
    v20 = 0;
  }

LABEL_47:
  if (![(NSMutableArray *)self->_initializingParticipants containsObject:participant])
  {
    if (!v20)
    {
      return;
    }

    goto LABEL_59;
  }

  if (startCopy)
  {
    if ([(VCSession *)self registerRemoteParticipantToSession:participant])
    {
      v40 = 1;
      goto LABEL_58;
    }

    error = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 17, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 4275], 0);
    LOBYTE(v20) = 0;
  }

  else
  {
    if (!-[NSMutableDictionary objectForKeyedSubscript:](self->_remoteParticipantsMapByUUID, "objectForKeyedSubscript:", [participant uuid]))
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_remoteParticipantsMapByServerID, "setObject:forKeyedSubscript:", 0, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(participant, "idsParticipantID")}]);
    }

    [(VCSession *)self removeDelegatesForRemoteParticipant:participant];
  }

  v40 = 0;
LABEL_58:
  v41 = self->_notificationQueue;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __50__VCSession_dispatchedParticipant_didStart_error___block_invoke_624;
  v42[3] = &unk_1E85F5E38;
  v42[4] = self;
  v42[5] = participant;
  v43 = v40;
  v42[6] = error;
  dispatch_async(v41, v42);
  [(NSMutableArray *)self->_initializingParticipants removeObject:participant];
  if (!v20)
  {
    return;
  }

LABEL_59:
  [(VCSession *)self setupOneToOneVideoReceiverDelegate];
  [(VCSession *)self setupOneToOneVideoStreamDelegate];
  [(VCSession *)self sendInitialDeviceOrientationToRemote];
  if (self->_oneToOneModeEnabled)
  {
    [(VCSession *)self startOneToOne];
  }
}

uint64_t __50__VCSession_dispatchedParticipant_didStart_error___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  [*(a1 + 32) setUpSensitiveContentAnalyzerForLocalParticipant];
  result = [+[VCDefaults sharedInstance](VCDefaults forceMuteAtStart];
  if (result)
  {
    v3 = *(*(a1 + 32) + 240);

    return [v3 setMuted:1];
  }

  return result;
}

uint64_t __50__VCSession_dispatchedParticipant_didStart_error___block_invoke_624(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:v5 error:v6];
}

- (void)setupOneToOneVideoReceiverDelegate
{
  if (self->_oneToOneModeEnabled)
  {
    firstObject = [(NSArray *)[(VCSession *)self remoteParticipants] firstObject];
    if (firstObject)
    {
      v4 = firstObject;
      feedbackDelegate = [(VCSessionParticipantLocal *)self->_localParticipant feedbackDelegate];
      if (feedbackDelegate)
      {

        [v4 setVideoReceiverFeedbackDelegate:feedbackDelegate];
      }
    }
  }
}

- (void)setupOneToOneVideoStreamDelegate
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled)
  {
    v2[0] = VCSession_RemoteScreenAttributesDidChange;
    [(VCSessionParticipantRemote *)[(VCSession *)self oneToOneRemoteParticipant] setVideoStreamDelegate:self delegateFunctions:v2];
  }
}

void __VCSession_RemoteScreenAttributesDidChange_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "VCSession_RemoteScreenAttributesDidChange_block_invoke";
      v9 = 1024;
      v10 = 4335;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d remoteScreenAttributes=%@", &v5, 0x26u);
    }
  }

  VCMediaRecorder_UpdateTargetScreenAttributes(*(*(a1 + 40) + 840), *(a1 + 32));
}

- (void)processDidStop
{
  v9[5] = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == 2)
  {
    v6 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession.m", 4351], 0);
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__VCSession_processDidStop__block_invoke_2;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = v6;
    v5 = block;
    v4 = notificationQueue;
    goto LABEL_5;
  }

  if (state == 4)
  {
    v4 = self->_notificationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__VCSession_processDidStop__block_invoke;
    v9[3] = &unk_1E85F3778;
    v9[4] = self;
    v5 = v9;
LABEL_5:
    dispatch_async(v4, v5);
  }

  [(VCNetworkFeedbackController *)self->_feedbackController stop];
  [(VCSession *)self reportNearbyStop];
  [(VCSession *)self setState:0];
  [(VCSession *)self dispatchedTransportStop];
  [(VCSession *)self stopTimeoutTimer];
}

void __27__VCSession_processDidStop__block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  [*(a1 + 32) reportingSessionStopEventWithError:*(*(a1 + 32) + 624)];

  *(*(a1 + 32) + 624) = 0;
}

uint64_t __27__VCSession_processDidStop__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 vcSession:v3 didStart:0 error:v4];
}

- (void)dispatchedParticipant:(id)participant didStopWithError:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = 136316418;
    v18 = v8;
    v19 = 2080;
    v20 = "[VCSession dispatchedParticipant:didStopWithError:]";
    v21 = 1024;
    v22 = 4364;
    v23 = 2112;
    errorCopy = error;
    v25 = 2112;
    selfCopy = [participant uuid];
    v27 = 2112;
    errorCopy2 = [(VCSession *)self participantsToString];
    v10 = "VCSession [%s] %s:%d Participant didStopWithError:[%@] participantID[%@] %@";
    v11 = v9;
    v12 = 58;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(VCSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v7 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316930;
      v18 = v13;
      v19 = 2080;
      v20 = "[VCSession dispatchedParticipant:didStopWithError:]";
      v21 = 1024;
      v22 = 4364;
      v23 = 2112;
      errorCopy = v7;
      v25 = 2048;
      selfCopy = self;
      v27 = 2112;
      errorCopy2 = error;
      v29 = 2112;
      uuid = [participant uuid];
      v31 = 2112;
      participantsToString = [(VCSession *)self participantsToString];
      v10 = "VCSession [%s] %s:%d %@(%p) Participant didStopWithError:[%@] participantID[%@] %@";
      v11 = v14;
      v12 = 78;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    }
  }

LABEL_12:
  state = self->_state;
  if (state == 4 || state == 2)
  {
    [(NSMutableSet *)self->_stoppingParticipants removeObject:participant];
    if (![(NSMutableSet *)self->_stoppingParticipants count])
    {
      [(VCSession *)self processDidStop];
    }
  }
}

- (id)newNetworkBitrateString:(id *)string
{
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:5];
  for (i = 0; i != 4; ++i)
  {
    [v4 appendFormat:@"%d ", string->var1[i]];
  }

  [v4 appendFormat:@"%d", string->var1[4]];
  return v4;
}

- (void)generateReportDictionary:(__CFDictionary *)dictionary
{
  v93 = *MEMORY[0x1E69E9840];
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  v88 = 0;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  v82 = 0u;
  aSize = 0u;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  localParticipant = self->_localParticipant;
  if (localParticipant)
  {
    [(VCSessionParticipantLocal *)localParticipant collectVideoChannelMetrics:v84];
    [(VCSessionParticipantLocal *)self->_localParticipant collectAudioChannelMetrics:v77];
    [(VCSessionParticipant *)self->_localParticipant collectCaptionsChannelMetrics:v73];
    CFDictionaryAddValue(dictionary, @"VCSActiveStreamsList", [(VCSessionParticipantLocal *)self->_localParticipant activeStreamKeys]);
  }

  v37 = v5;
  VCMediaChannelMetrics_Sum(v91, v84);
  VCMediaChannelMetrics_Sum(v91, v77);
  VCMediaChannelMetrics_Sum(v91, v73);
  v7 = [(VCSession *)self newNetworkBitrateString:v77];
  if (self->_oneToOneModeEnabled)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" videoTxFrameRate=%3.1f, ", v85];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [v9 initWithFormat:@"[hostTime:%f/%f sampleTime:%u/%u (Audio/Video)]", *(&v86 + 1), *(&v87 + 1), v87, v88];
  CFDictionaryAddValue(dictionary, @"VCSECNEnabled", [MEMORY[0x1E696AD98] numberWithBool:self->_isECNEnabled]);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(VCSessionParticipant *)self->_localParticipant uuid];
      *buf = 136317442;
      v47 = v11;
      v48 = 2080;
      v49 = "[VCSession generateReportDictionary:]";
      v50 = 1024;
      v51 = 4423;
      v52 = 2112;
      v53 = uuid;
      v54 = 1024;
      *v55 = v84[0];
      *&v55[4] = 2112;
      *&v55[6] = v8;
      *&v55[14] = 1024;
      *&v55[16] = v77[0];
      LOWORD(v56) = 2112;
      *(&v56 + 2) = v7;
      WORD5(v56) = 1024;
      HIDWORD(v56) = v73[0];
      *v57 = 2112;
      *&v57[2] = v10;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d @=@ Health: VCSession-local localParticipant=%@, videoTxBitrate=%u kbps,%@ audioTxBitrate=%u kbps [%@], captionsTxBitrate=%u kbps avTxTimestamps=%@", buf, 0x56u);
    }
  }

  CFDictionaryAddValue(dictionary, @"VCSVTxBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(v84[0])]);
  CFDictionaryAddValue(dictionary, @"VCSATxBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(v77[0])]);
  CFDictionaryAddValue(dictionary, @"VCSCTxBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(v73[0])]);
  theDict = dictionary;
  CFDictionaryAddValue(dictionary, @"VCSTxBR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(v91[0])]);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  selfCopy = self;
  obj = [(VCSession *)self remoteParticipants];
  v42 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v60 count:16];
  v14 = 0;
  if (v42)
  {
    v41 = *v62;
    v15 = 0x1E696A000uLL;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v62 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        isInCanvas = [v20 isInCanvas];
        [v20 collectVideoChannelMetrics:v79];
        [v20 collectAudioChannelMetrics:v75];
        [v20 collectCaptionsChannelMetrics:v71];
        [v16 addObject:{objc_msgSend(v20, "uuid")}];
        [v17 addObject:{objc_msgSend(objc_msgSend(*(v15 + 3480), "numberWithUnsignedInt:", LODWORD(v79[0].width)), "stringValue")}];
        [v18 addObject:{objc_msgSend(objc_msgSend(*(v15 + 3480), "numberWithUnsignedInt:", LODWORD(v75[0])), "stringValue")}];
        VCMediaChannelMetrics_Sum(v69, v79);
        VCMediaChannelMetrics_Sum(v67, v75);
        VCMediaChannelMetrics_Sum(v65, v71);
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [v20 uuid];
            v24 = [v20 activeDownlinkStreamIDForStreamGroupID:1667329381];
            v25 = [v20 activeDownlinkStreamIDForStreamGroupID:1835623282];
            width_low = LODWORD(v79[0].width);
            width = v80.width;
            v28 = v75[0];
            v94.width = v80.height;
            *&v94.height = aSize;
            v29 = NSStringFromSize(v94);
            *buf = 136317698;
            v47 = v22;
            v48 = 2080;
            v49 = "[VCSession generateReportDictionary:]";
            v50 = 1024;
            v51 = 4451;
            v52 = 2112;
            v53 = uuid2;
            v54 = 2112;
            *v55 = v24;
            *&v55[8] = 2112;
            *&v55[10] = v25;
            *&v55[18] = 1024;
            LODWORD(v56) = width_low;
            v17 = v37;
            v18 = v38;
            WORD2(v56) = 2048;
            *(&v56 + 6) = width;
            v15 = 0x1E696A000;
            HIWORD(v56) = 1024;
            *v57 = v28;
            v16 = v36;
            *&v57[4] = 2112;
            *&v57[6] = v29;
            v58 = 1024;
            v59 = v71[0];
            _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d @=@ Health: VCSession-remote remoteParticipant=%@, videoStreamID=%@, audioStreamID=%@, videoRxBitrate=%u kbps, videoRxFrameRate=%3.1f, audioRxBitrate=%u kbps, videoRxResolution=%@, captionsRxBitrate=%u kbps", buf, 0x60u);
          }
        }

        v14 = (v14 + isInCanvas);
      }

      v42 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v60 count:16];
    }

    while (v42);
  }

  else
  {
    v15 = 0x1E696A000uLL;
    v16 = v36;
    v17 = v37;
  }

  CFDictionaryAddValue(theDict, @"VCSInCanvasCounter", [*(v15 + 3480) numberWithUnsignedInt:v14]);
  CFDictionaryAddValue(theDict, @"VCSVRxBR", [*(v15 + 3480) numberWithUnsignedInt:LODWORD(v69[0])]);
  CFDictionaryAddValue(theDict, @"VCSARxBR", [*(v15 + 3480) numberWithUnsignedInt:LODWORD(v67[0])]);
  CFDictionaryAddValue(theDict, @"VCSCRxBR", [*(v15 + 3480) numberWithUnsignedInt:LODWORD(v65[0])]);
  VCMediaChannelMetrics_Sum(v89, v69);
  VCMediaChannelMetrics_Sum(v89, v67);
  VCMediaChannelMetrics_Sum(v89, v65);
  CFDictionaryAddValue(theDict, @"VCSRxBR", [*(v15 + 3480) numberWithUnsignedInt:LODWORD(v89[0])]);
  if ([v16 count])
  {
    CFDictionaryAddValue(theDict, @"VCSPUUIDList", [v16 componentsJoinedByString:{@", "}]);
    CFDictionaryAddValue(theDict, @"VCSVRxBRs", [v17 componentsJoinedByString:{@", "}]);
    CFDictionaryAddValue(theDict, @"VCSARxBRs", [v38 componentsJoinedByString:{@", "}]);
    CFDictionaryAddValue(theDict, @"VCSCRxBRs", [v38 componentsJoinedByString:{@", "}]);
  }

  v30 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  VCUtil_AppendFromDictionary(theDict, v30);
  if (v30)
  {
    CFRelease(v30);
  }

  connectionManager = [(VCTransportSession *)selfCopy->_transportSession connectionManager];
  if (connectionManager)
  {
    v32 = connectionManager;
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager mediaCellularTxBytes](connectionManager, "mediaCellularTxBytes")}], @"CTxDb");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager mediaCellularRxBytes](v32, "mediaCellularRxBytes")}], @"CRxDb");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager mediaExcessiveCellularTxBytes](v32, "mediaExcessiveCellularTxBytes") + -[VCConnectionManager signalingExcessiveCellularTxBytes](v32, "signalingExcessiveCellularTxBytes")}], @"CDupTxDb");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager mediaExcessiveCellularRxBytes](v32, "mediaExcessiveCellularRxBytes") + -[VCConnectionManager signalingExcessiveCellularRxBytes](v32, "signalingExcessiveCellularRxBytes")}], @"CDupRxDb");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager budgetConsumingCellularTxBytes](v32, "budgetConsumingCellularTxBytes")}], @"CBudgTxDb");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager budgetConsumingCellularRxBytes](v32, "budgetConsumingCellularRxBytes")}], @"CBudgRxDb");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager mediaWifiTxBytes](v32, "mediaWifiTxBytes")}], @"WTxDb");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager mediaWifiRxBytes](v32, "mediaWifiRxBytes")}], @"WRxDb");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedInt:{-[VCConnectionManager sendSuccessCountSinceLastCheck](v32, "sendSuccessCountSinceLastCheck")}], @"PSSCTR");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedInt:{-[VCConnectionManager sendFailureCountSinceLastCheck](v32, "sendFailureCountSinceLastCheck")}], @"PSFCTR");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager onTheWireTotalBytesReceivedSinceLastCheck](v32, "onTheWireTotalBytesReceivedSinceLastCheck")}], @"WPRSZ");
    -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [*(v15 + 3480) numberWithUnsignedLongLong:{-[VCConnectionManager onTheWireTotalBytesSentSinceLastCheck](v32, "onTheWireTotalBytesSentSinceLastCheck")}], @"WPSSZ");
  }

  *buf = 0;
  v45 = 0;
  [VCWiFiUtils getInfraChannelNumber:buf is5Ghz:&v45];
  valuePtr = v45;
  v33 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(theDict, @"iWiFi5GHz", v33);
  CFRelease(v33);
  valuePtr = 0;
  v43 = 0;
  [(VCTransportSession *)selfCopy->_transportSession getSignalStrengthBars:&valuePtr displayBars:&v43 + 4 maxDisplayBars:&v43];
  CFDictionaryAddValue(theDict, @"SS", [*(v15 + 3480) numberWithInt:valuePtr]);
}

void __34__VCSession_registerReportingTask__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MEMORY[0x1E1289F20]([*(a1 + 32) weak]);
    if (v3)
    {
      v4 = v3;
      [v3 generateReportDictionary:a2];

      CFRelease(v4);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCSession registerReportingTask]_block_invoke";
        v11 = 1024;
        v12 = 4520;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d [VCSession]: reporting periodic task: strongSelf == nil", &v7, 0x1Cu);
      }
    }
  }
}

- (void)unregisterReportingTask
{
  reportingUnregisterPeriodicTask();
  reportingUnregisterPeriodicTask();

  VCReporting_finalizeAggregation();
}

- (void)recommendedSettingsChanged:(id)changed
{
  targetBitrateCap = [changed targetBitrateCap];
  uplinkRateController = self->_uplinkRateController;

  [(AVCRateController *)uplinkRateController setTargetBitrateCap:targetBitrateCap];
}

- (void)preWarmStateChanged:(BOOL)changed
{
  if (self->_oneToOneModeEnabled)
  {
    changedCopy = changed;
    if ([(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] isPreWarmStateEnabled]!= changed)
    {
      if ([(VCSession *)self oneToOneRemoteParticipant])
      {
        if (changedCopy)
        {
          v5 = @"VCWRMAlertStateEnabled";
        }

        else
        {
          v5 = @"VCWRMAlertStateDisabled";
        }

        [(VCSessionMessaging *)self->_sessionMessaging sendMessage:v5 withTopic:@"VCWRMAlertStateUpdateMessageTopic" participantID:[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] idsParticipantID]];
        connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];

        VCConnectionManager_SetPreWarmState(connectionManager, changedCopy);
      }
    }
  }
}

- (void)mediaQualityDegraded:(BOOL)degraded
{
  if (self->_oneToOneModeEnabled)
  {
    degradedCopy = degraded;
    if ([(VCSession *)self oneToOneRemoteParticipant])
    {
      sessionMessaging = self->_sessionMessaging;
      if (degradedCopy)
      {
        v6 = @"VCMediaQualityDegraded";
      }

      else
      {
        v6 = @"VCMediaQualityRecovered";
      }

      idsParticipantID = [(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] idsParticipantID];

      [(VCSessionMessaging *)sessionMessaging sendMessage:v6 withTopic:@"VCMediaQualityDegradedMessageTopic" participantID:idsParticipantID];
    }
  }
}

- (void)setIsUplinkRetransmissionEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCSession_setIsUplinkRetransmissionEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  enabledCopy = enabled;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

uint64_t __46__VCSession_setIsUplinkRetransmissionEnabled___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  result = +[VCSession isUplinkRetransmissionEnabledForVideo];
  if (result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v7 = 136315906;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCSession setIsUplinkRetransmissionEnabled:]_block_invoke";
        v11 = 1024;
        v12 = 4564;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d isUplinkRetransmissionEnabled=%d", &v7, 0x22u);
      }
    }

    v6 = *(a1 + 40);
    result = [*(*(a1 + 32) + 240) setRetransmissionEnabled:v6];
    *(*(a1 + 32) + 826) = v6;
  }

  return result;
}

- (void)didLocalNetworkConditionChange:(BOOL)change isLocalNetworkQualityDegraded:(BOOL)degraded isRemoteNetworkQualityDegraded:(BOOL)qualityDegraded
{
  v10 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__VCSession_didLocalNetworkConditionChange_isLocalNetworkQualityDegraded_isRemoteNetworkQualityDegraded___block_invoke;
  block[3] = &unk_1E85F6BF8;
  block[4] = self;
  changeCopy = change;
  degradedCopy = degraded;
  qualityDegradedCopy = qualityDegraded;
  dispatch_async(sessionQueue, block);
}

_BYTE *__105__VCSession_didLocalNetworkConditionChange_isLocalNetworkQualityDegraded_isRemoteNetworkQualityDegraded___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[409] == 1)
  {
    result = [result oneToOneRemoteParticipant];
    if (result)
    {
      if (*(a1 + 40) == 1)
      {
        if (*(a1 + 41))
        {
          v3 = @"VCNetworkQualityDegraded";
        }

        else
        {
          v3 = @"VCNetworkQualityRecovered";
        }

        [*(*(a1 + 32) + 224) sendMessage:v3 withTopic:@"VCNetworkQualityDegradedMessageTopic" participantID:{objc_msgSend(objc_msgSend(*(a1 + 32), "oneToOneRemoteParticipant"), "idsParticipantID")}];
      }

      v4 = [*(a1 + 32) oneToOneRemoteParticipant];
      if (*(a1 + 41))
      {
        v5 = 1;
      }

      else
      {
        v5 = *(a1 + 42);
      }

      return [v4 networkQualityDidDegrade:v5 & 1 isLocalNetworkQualityDegraded:?];
    }
  }

  return result;
}

+ (BOOL)isUplinkRetransmissionEnabledForVideo
{
  v22 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"uplinkRetransmissionEnabledForVideo", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 1;
  }

  else
  {
    v3 = _os_feature_enabled_impl();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v9 = v4;
      v10 = 2080;
      v11 = "+[VCSession isUplinkRetransmissionEnabledForVideo]";
      v12 = 1024;
      v13 = 4597;
      v14 = 2080;
      v15 = "AVConference";
      v16 = 2080;
      v17 = "EnableUplinkRetransmissionForVideo";
      v18 = 1024;
      v19 = keyExistsAndHasValidFormat;
      v20 = 1024;
      v21 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Using feature flag domain=%s name=%s defaultExists=%d value=%d ", buf, 0x3Cu);
    }
  }

  return v3;
}

- (void)mediaRecorder:(id)recorder shouldProcessRequest:(id)request recipientID:(id)d
{
  block[8] = *MEMORY[0x1E69E9840];
  v8 = [request mutableCopy];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCSession_mediaRecorder_shouldProcessRequest_recipientID___block_invoke;
  block[3] = &unk_1E85F3B00;
  block[4] = self;
  block[5] = d;
  block[6] = request;
  block[7] = v8;
  dispatch_async(sessionQueue, block);
}

void __60__VCSession_mediaRecorder_shouldProcessRequest_recipientID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 248) objectForKeyedSubscript:*(a1 + 40)];
  if ([objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"vcMomentsRequestState", "intValue"}] == 1)
  {
    [*(a1 + 56) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v2, "lastDisplayedFrameRTPTimestamp")), @"vcMomentsRequestTimestamp"}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 56) objectForKeyedSubscript:@"vcMomentsRequesteeID"];
        v6 = [*(a1 + 56) objectForKeyedSubscript:@"vcMomentsRequestTimestamp"];
        v7 = 136316162;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCSession mediaRecorder:shouldProcessRequest:recipientID:]_block_invoke";
        v11 = 1024;
        v12 = 4610;
        v13 = 2112;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d Media recording requestee=%@, RTP timestamp=%@", &v7, 0x30u);
      }
    }
  }

  [*(a1 + 32) reportingMomentsToGreenTeaWithRequest:*(a1 + 48)];
  [*(*(a1 + 32) + 224) sendMessageDictionary:*(a1 + 56) withTopic:@"VCSessionMomentsStateMessageTopic" participantID:{objc_msgSend(v2, "idsParticipantID")}];
}

- (void)didReceiveMomentsRequest:(id)request
{
  block[6] = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VCSession_didReceiveMomentsRequest___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = request;
  dispatch_async(sessionQueue, block);
}

- (void)updateMediaRecorderCapabillities:(unsigned int)capabillities imageType:(int)type videoCodec:(int)codec
{
  v10 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__VCSession_updateMediaRecorderCapabillities_imageType_videoCodec___block_invoke;
  v6[3] = &unk_1E85F3908;
  v6[4] = self;
  capabillitiesCopy = capabillities;
  typeCopy = type;
  codecCopy = codec;
  dispatch_async(sessionQueue, v6);
}

void __67__VCSession_updateMediaRecorderCapabillities_imageType_videoCodec___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 840) setCapabilities:*(a1 + 40)];
  [*(*(a1 + 32) + 840) setImageType:*(a1 + 44)];
  [*(*(a1 + 32) + 840) setVideoCodec:*(a1 + 48)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 44);
      v6 = *(a1 + 48);
      v7 = 136316418;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCSession updateMediaRecorderCapabillities:imageType:videoCodec:]_block_invoke";
      v11 = 1024;
      v12 = 4631;
      v13 = 1024;
      v14 = v4;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCSession [%s] %s:%d capabilities=0x%02x, imageType=%d, videoCodec=%d", &v7, 0x2Eu);
    }
  }
}

- (void)additionalFlushCountToOneToOneRateController:(unsigned int)controller
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled)
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    statisticsCollector = [(AVCRateController *)self->_oneToOneSettings.rateController statisticsCollector];
    v5 = 10;
    v9 = 1;
    controllerCopy = controller;
    VCRateControlSetStatistics(statisticsCollector, &v5);
  }
}

- (void)didChangeThermalLevel:(int)level
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"Thermal";
  v10[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__VCSession_didChangeThermalLevel___block_invoke;
  v7[3] = &unk_1E85F3890;
  v7[4] = self;
  v7[5] = v5;
  levelCopy = level;
  dispatch_async(sessionQueue, v7);
}

uint64_t __35__VCSession_didChangeThermalLevel___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  result = reportingGenericEvent();
  v3 = *(a1 + 32);
  if (*(v3 + 688) != *(a1 + 48))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(v3 + 248) allValues];
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

          [*(a1 + 32) sendDeviceStateMessageToParticipant:*(*(&v9 + 1) + 8 * v7++) withStatus:*(a1 + 40) checkDNUStatus:1];
        }

        while (v5 != v7);
        result = [v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  *(*(a1 + 32) + 688) = *(a1 + 48);
  return result;
}

- (int)setupOneToOne
{
  v24 = *MEMORY[0x1E69E9840];
  setupOneToOneMediaQueue = [(VCSession *)self setupOneToOneMediaQueue];
  if (setupOneToOneMediaQueue < 0)
  {
    setupRateControllerOneToOne = setupOneToOneMediaQueue;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession(OneToOne) setupOneToOne];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v12 = 136316418;
          v13 = v8;
          v14 = 2080;
          v15 = "[VCSession(OneToOne) setupOneToOne]";
          v16 = 1024;
          v17 = 62;
          v18 = 2112;
          v19 = v6;
          v20 = 2048;
          selfCopy2 = self;
          v22 = 1024;
          v23 = setupRateControllerOneToOne;
          v10 = " [%s] %s:%d %@(%p) Failed to create the media queue. error=%x";
LABEL_25:
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x36u);
        }
      }
    }
  }

  else
  {
    setupRateControllerOneToOne = [(VCSession *)self setupRateControllerOneToOne];
    if ((setupRateControllerOneToOne & 0x80000000) == 0)
    {
      [(VCSession *)self initWithRelevantStorebagEntries];
      return setupRateControllerOneToOne;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession(OneToOne) setupOneToOne];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v12 = 136316418;
          v13 = v11;
          v14 = 2080;
          v15 = "[VCSession(OneToOne) setupOneToOne]";
          v16 = 1024;
          v17 = 65;
          v18 = 2112;
          v19 = v7;
          v20 = 2048;
          selfCopy2 = self;
          v22 = 1024;
          v23 = setupRateControllerOneToOne;
          v10 = " [%s] %s:%d %@(%p) Failed to create rate controller. error=%x";
          goto LABEL_25;
        }
      }
    }
  }

  return setupRateControllerOneToOne;
}

- (int)setupOneToOneMediaQueue
{
  v30 = *MEMORY[0x1E69E9840];
  p_oneToOneSettings = &self->_oneToOneSettings;
  self->_oneToOneSettings.mediaQueue = 0xFFFFFFFFLL;
  p_mediaQueue = &self->_oneToOneSettings.mediaQueue;
  if (VCDefaults_GetBoolValueForKey(@"ForceVCMediaQueueForOneToOne", 1))
  {
    p_oneToOneSettings->vcMediaQueue = self->_mediaQueue;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 0;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v18 = 136315650;
      v19 = v7;
      v20 = 2080;
      v21 = "[VCSession(OneToOne) setupOneToOneMediaQueue]";
      v22 = 1024;
      v23 = 79;
      v9 = " [%s] %s:%d Using VCMediaQueue2.0";
      v10 = v8;
      v11 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
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

      v18 = 136316162;
      v19 = v13;
      v20 = 2080;
      v21 = "[VCSession(OneToOne) setupOneToOneMediaQueue]";
      v22 = 1024;
      v23 = 79;
      v24 = 2112;
      v25 = v5;
      v26 = 2048;
      selfCopy2 = self;
      v9 = " [%s] %s:%d %@(%p) Using VCMediaQueue2.0";
      v10 = v14;
      v11 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v18, v11);
    return 0;
  }

  Handle = MediaQueue_CreateHandle(p_mediaQueue, 0xFFFFFFFFLL);
  if (Handle < 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSession(OneToOne) setupOneToOneMediaQueue];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v18 = 136316418;
          v19 = v16;
          v20 = 2080;
          v21 = "[VCSession(OneToOne) setupOneToOneMediaQueue]";
          v22 = 1024;
          v23 = 83;
          v24 = 2112;
          v25 = v12;
          v26 = 2048;
          selfCopy2 = self;
          v28 = 1024;
          v29 = Handle;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the media queue. error=%x", &v18, 0x36u);
        }
      }
    }
  }

  else
  {
    MediaQueue_SetFECFeedbackVersion(*p_mediaQueue, 1);
  }

  return Handle;
}

- (id)newNegotiatorForOneToOneWithRemoteParticipant:(id)participant
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(VCMediaNegotiatorLocalConfiguration *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] localSettings] copy];
  v6 = v5;
  if (v5)
  {
    [v5 setIsCaller:0];
    v7 = [[VCSessionMediaNegotiator alloc] initWithLocalConfiguration:v6];
    if (v7)
    {
      v8 = v7;
      v9 = [+[VCSessionParticipant participantInfoWithParticipantData:](VCSessionParticipant participantInfoWithParticipantData:{objc_msgSend(participant, "opaqueData")), "objectForKeyedSubscript:", @"vcSessionParticipantKeyMediaNegotiationData"}];
      if (v9)
      {
        if ([(VCSessionMediaNegotiator *)v8 processRemoteNegotiationData:v9])
        {

          return v8;
        }

        [VCSession(OneToOne) newNegotiatorForOneToOneWithRemoteParticipant:];
      }

      else
      {
        [VCSession(OneToOne) newNegotiatorForOneToOneWithRemoteParticipant:];
      }
    }

    else
    {
      [VCSession(OneToOne) newNegotiatorForOneToOneWithRemoteParticipant:];
    }
  }

  else
  {
    [VCSession(OneToOne) newNegotiatorForOneToOneWithRemoteParticipant:];
  }

  v11 = *v15;

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSession(OneToOne) newNegotiatorForOneToOneWithRemoteParticipant:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCSession *)self performSelector:sel_logPrefix];
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
        *v15 = 136316418;
        *&v15[4] = v13;
        v16 = 2080;
        v17 = "[VCSession(OneToOne) newNegotiatorForOneToOneWithRemoteParticipant:]";
        v18 = 1024;
        v19 = 115;
        v20 = 2112;
        v21 = v12;
        v22 = 2048;
        selfCopy = self;
        v24 = 2048;
        participantCopy = participant;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to negotiate oneToOne data with participant=%p", v15, 0x3Au);
      }
    }
  }

  return 0;
}

- (BOOL)setOneToOneConfigOnRemoteParticipant:(id)participant
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(VCSession *)self newNegotiatorForOneToOneWithRemoteParticipant:?];
  v6 = -[VCSession newParticipantOneToOneConfigWithIDSParticipantID:isLocal:mediaControlInfoVersion:videoEnabled:screenEnabled:remoteParticipant:](self, "newParticipantOneToOneConfigWithIDSParticipantID:isLocal:mediaControlInfoVersion:videoEnabled:screenEnabled:remoteParticipant:", -[VCSessionParticipant idsParticipantID](-[VCSession oneToOneRemoteParticipant](self, "oneToOneRemoteParticipant"), "idsParticipantID"), 0, [objc_msgSend(v5 "negotiatedSettings")], objc_msgSend(objc_msgSend(v5, "negotiatedVideoSettings"), "isSupported"), objc_msgSend(objc_msgSend(v5, "negotiatedScreenSettings"), "isSupported"), participant);

  if (v6)
  {
    [participant setOneToOneConfig:v6];
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSession(OneToOne) setOneToOneConfigOnRemoteParticipant:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = 136316162;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCSession(OneToOne) setOneToOneConfigOnRemoteParticipant:]";
        v15 = 1024;
        v16 = 130;
        v17 = 2112;
        v18 = v8;
        v19 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) OneToOne config was nil", &v11, 0x30u);
      }
    }
  }

  return v6 != 0;
}

- (int)setupRateControllerOneToOne
{
  v21 = *MEMORY[0x1E69E9840];
  p_oneToOneSettings = &self->_oneToOneSettings;
  if (self->_oneToOneSettings.rateController)
  {
    [VCSession(OneToOne) setupRateControllerOneToOne];
LABEL_14:
    v11 = v20;
    [(VCSession *)self cleanupRateControllerOneToOne];
    return v11;
  }

  if (self->_oneToOneSettings.mediaController)
  {
    [VCSession(OneToOne) setupRateControllerOneToOne];
    goto LABEL_14;
  }

  if (self->_oneToOneSettings.mediaQueue == 0xFFFFFFFFLL && !self->_oneToOneSettings.vcMediaQueue)
  {
    [VCSession(OneToOne) setupRateControllerOneToOne];
    goto LABEL_14;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"session_%@_1:1", self->_uuid];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = v4;
  BYTE1(v14) = 1;
  v5 = [(VCSession *)self vcrcServerBagWithOperatingMode:1];
  reportingAgent = self->super._reportingAgent;
  *(&v14 + 1) = v5;
  *&v15 = reportingAgent;
  BYTE8(v15) = 1;
  BYTE8(v16) = 1;
  modelPath = [(VCRateControlMLEnrollment *)self->_vcrcMLEnrollment modelPath];
  experimentManager = self->_experimentManager;
  v18 = modelPath;
  v19 = experimentManager;
  v9 = [[AVCRateController alloc] initWithDelegate:self params:&v13];
  p_oneToOneSettings->rateController = v9;
  if (!v9)
  {
    [VCSession(OneToOne) setupRateControllerOneToOne];
    goto LABEL_14;
  }

  [(AVCStatisticsCollector *)[(AVCRateController *)v9 statisticsCollector] setMediaControlInfoFECFeedbackVersion:1];
  v10 = [[VCRateControlMediaController alloc] initWithMediaQueue:p_oneToOneSettings->mediaQueue delegate:self];
  p_oneToOneSettings->mediaController = v10;
  if (!v10)
  {
    [VCSession(OneToOne) setupRateControllerOneToOne];
    goto LABEL_14;
  }

  [(VCRateControlMediaController *)v10 setVcMediaQueue:p_oneToOneSettings->vcMediaQueue];
  [(VCRateControlMediaController *)p_oneToOneSettings->mediaController setIsRTPFlushBasebandFromVCRateControl:1];
  [(AVCRateController *)p_oneToOneSettings->rateController setMediaController:p_oneToOneSettings->mediaController];
  [(VCRateControlMediaController *)p_oneToOneSettings->mediaController setStatisticsCollector:[(AVCRateController *)p_oneToOneSettings->rateController statisticsCollector]];
  [(AVCRateControlFeedbackController *)[(AVCRateController *)p_oneToOneSettings->rateController feedbackController] setConnectionHealthMonitor:[(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] connectionHealthMonitor]];
  return 0;
}

- (void)updateOneToOneRateControllerForVideoEnabled:(BOOL)enabled screenEnabled:(BOOL)screenEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__VCSession_OneToOne__updateOneToOneRateControllerForVideoEnabled_screenEnabled___block_invoke;
  block[3] = &unk_1E85F41F8;
  block[4] = self;
  enabledCopy = enabled;
  screenEnabledCopy = screenEnabled;
  dispatch_async(sessionQueue, block);
}

uint64_t __81__VCSession_OneToOne__updateOneToOneRateControllerForVideoEnabled_screenEnabled___block_invoke(uint64_t a1)
{
  if ([objc_msgSend(objc_msgSend(*(a1 + 32) "oneToOneRemoteParticipant")])
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 0;
  }

  if ([objc_msgSend(objc_msgSend(*(a1 + 32) "oneToOneRemoteParticipant")])
  {
    v3 = *(a1 + 41);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v4[41];

  return [v4 configureOneToOneRateController:v5 isUsingCamera:v2 & 1 isUsingScreen:v3 & 1];
}

- (void)updateOneToOneRateControllerForVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isOneToOneUsingScreen = [(VCSession *)self isOneToOneUsingScreen];

  [(VCSession *)self updateOneToOneRateControllerForVideoEnabled:enabledCopy screenEnabled:isOneToOneUsingScreen];
}

- (VCSession)initWithRelevantStorebagEntries
{
  NoRemotePacketsTimeout = GKSConnectivitySettings_GetNoRemotePacketsTimeout();
  v4 = 20.0;
  if (NoRemotePacketsTimeout > 20.0)
  {
    v4 = GKSConnectivitySettings_GetNoRemotePacketsTimeout();
  }

  self->_remoteMediaStallDisconnectTimeout = v4;
  +[GKSConnectivitySettings getRemoteMediaStallTimeout];
  self->_remoteMediaStallReconnectTimeout = v5;
  +[GKSConnectivitySettings getNoRemoteDuplicationThresholdFast];
  v7 = v6;
  connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];

  return [(VCConnectionManager *)connectionManager setNoRemoteDuplicationThresholdFast:v7];
}

- (void)cleanupRateControllerOneToOne
{
  p_oneToOneSettings = &self->_oneToOneSettings;

  p_oneToOneSettings->rateController = 0;
  p_oneToOneSettings->mediaController = 0;
}

- (BOOL)configureLocalParticipantWithOneToOneRemoteParticipant:(id)participant isInitialConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v39 = *MEMORY[0x1E69E9840];
  isSupported = [(VCMediaNegotiatorResultsVideo *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedVideoSettings] isSupported];
  isSupported2 = [(VCMediaNegotiatorResultsVideo *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedScreenSettings] isSupported];
  mediaControlInfoVersion = [(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedSettings] mediaControlInfoVersion];
  if (isSupported && [(VCSessionParticipant *)self->_localParticipant isVideoEnabled])
  {
    isUsingPersonaCamera = 1;
    if (!isSupported2)
    {
LABEL_4:
      isScreenEnabled = 0;
      goto LABEL_7;
    }
  }

  else
  {
    isUsingPersonaCamera = [(VCSession *)self isUsingPersonaCamera];
    if (!isSupported2)
    {
      goto LABEL_4;
    }
  }

  isScreenEnabled = [(VCSessionParticipant *)self->_localParticipant isScreenEnabled];
LABEL_7:
  [(VCSession *)self configureOneToOneRateController:self->_currentActiveConnection isUsingCamera:isUsingPersonaCamera isUsingScreen:isScreenEnabled];
  v12 = [+[VCAudioManager sharedVoiceChatInstance](VCAudioManager "sharedVoiceChatInstance")];
  if (v12)
  {
    goto LABEL_8;
  }

  if (isUsingPersonaCamera)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v27 = v24;
        v28 = 2080;
        v29 = "[VCSession(OneToOne) configureLocalParticipantWithOneToOneRemoteParticipant:isInitialConfiguration:]";
        v30 = 1024;
        v31 = 220;
        v32 = 1024;
        *v33 = v12;
        *&v33[4] = 1024;
        *&v33[6] = isUsingPersonaCamera;
        v19 = " [%s] %s:%d Failed to get pre-warming client's operating mode from VCAudioManager! Defaulting to operatingMode=%d (due to isUsingCamera=%{BOOL}d)";
        v20 = v18;
        v21 = 40;
LABEL_25:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v25 = v17;
      v23 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v27 = v23;
        v28 = 2080;
        v29 = "[VCSession(OneToOne) configureLocalParticipantWithOneToOneRemoteParticipant:isInitialConfiguration:]";
        v30 = 1024;
        v31 = 220;
        v32 = 2112;
        *v33 = v25;
        *&v33[8] = 2048;
        selfCopy = self;
        v35 = 1024;
        v36 = v12;
        v37 = 1024;
        v38 = isUsingPersonaCamera;
        v19 = " [%s] %s:%d %@(%p) Failed to get pre-warming client's operating mode from VCAudioManager! Defaulting to operatingMode=%d (due to isUsingCamera=%{BOOL}d)";
        v20 = v22;
        v21 = 60;
        goto LABEL_25;
      }
    }
  }

LABEL_8:
  [(VCSession *)self applyNegotiatedOneToOneFaceTimeSettings];
  v13 = -[VCSession newParticipantOneToOneConfigWithIDSParticipantID:isLocal:mediaControlInfoVersion:videoEnabled:screenEnabled:remoteParticipant:](self, "newParticipantOneToOneConfigWithIDSParticipantID:isLocal:mediaControlInfoVersion:videoEnabled:screenEnabled:remoteParticipant:", [participant idsParticipantID], 1, mediaControlInfoVersion, isSupported, isSupported2, participant);
  v14 = v13;
  if (!v13)
  {
    [VCSession(OneToOne) configureLocalParticipantWithOneToOneRemoteParticipant:isInitialConfiguration:];
LABEL_28:
    v15 = buf[0];
    goto LABEL_11;
  }

  [v13 setOperatingMode:v12];
  if (![(VCSessionParticipantLocal *)self->_localParticipant configureWithOneToOneParticipantConfig:v14 shouldConfigureGFTStreams:configurationCopy])
  {
    [VCSession(OneToOne) configureLocalParticipantWithOneToOneRemoteParticipant:isInitialConfiguration:];
    goto LABEL_28;
  }

  [(VCSession *)self setDelegatesForRemoteParticipant:participant];
  MediaQueue_CleanupTxHistory();
  v15 = 1;
LABEL_11:

  return v15;
}

- (int)setupOneToOneMediaControlInfoGeneratorsWithVersion:(unsigned __int8)version oneToOneConfig:(id)config videoEnabled:(BOOL)enabled
{
  versionCopy = version;
  v9 = VCMediaControlInfoGeneratorCreateWithTypeAndVersion(0, version);
  if (v9)
  {
    [config setAudioMediaControlInfoGenerator:v9];
    VCMediaControlInfoGeneratoSetFECFeedbackVersion([config audioMediaControlInfoGenerator], 1);
    if (self->_isECNCapable)
    {
      VCMediaControlInfoGeneratorAddOptions([config audioMediaControlInfoGenerator], 2);
    }

    if (!enabled)
    {
      v12 = v9;
      goto LABEL_10;
    }

    if ([(VCSessionParticipant *)self->_localParticipant isVideoEnabled])
    {
      VCMediaControlInfoGeneratorAddOptions([config audioMediaControlInfoGenerator], 1);
    }

    v10 = VCMediaControlInfoGeneratorCreateWithTypeAndVersion(1, versionCopy);
    if (v10)
    {
      v11 = v10;
      [config setVideoMediaControlInfoGenerator:v10];
      VCMediaControlInfoGeneratoSetFECFeedbackVersion([config videoMediaControlInfoGenerator], 1);
      CFRelease(v9);
      v12 = v11;
LABEL_10:
      CFRelease(v12);
      return 0;
    }

    [VCSession(OneToOne) setupOneToOneMediaControlInfoGeneratorsWithVersion:? oneToOneConfig:? videoEnabled:?];
  }

  else
  {
    [VCSession(OneToOne) setupOneToOneMediaControlInfoGeneratorsWithVersion:? oneToOneConfig:? videoEnabled:?];
  }

  v13 = -2143813630;
  [config setAudioMediaControlInfoGenerator:0];
  [config setVideoMediaControlInfoGenerator:0];
  if (v9)
  {
    CFRelease(v9);
  }

  return v13;
}

- (id)newParticipantOneToOneConfigWithIDSParticipantID:(unint64_t)d isLocal:(BOOL)local mediaControlInfoVersion:(unsigned __int8)version videoEnabled:(BOOL)enabled screenEnabled:(BOOL)screenEnabled remoteParticipant:(id)participant
{
  screenEnabledCopy = screenEnabled;
  enabledCopy = enabled;
  versionCopy = version;
  localCopy = local;
  v15 = objc_alloc_init(VCSessionParticipantOneToOneConfig);
  if (!v15)
  {
    [VCSession(OneToOne) newParticipantOneToOneConfigWithIDSParticipantID:? isLocal:? mediaControlInfoVersion:? videoEnabled:? screenEnabled:? remoteParticipant:?];
    goto LABEL_14;
  }

  if (!localCopy)
  {
    if (([(VCSession *)self setupOneToOneMediaControlInfoGeneratorsWithVersion:versionCopy oneToOneConfig:v15 videoEnabled:enabledCopy]& 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    [VCSession(OneToOne) newParticipantOneToOneConfigWithIDSParticipantID:? isLocal:? mediaControlInfoVersion:? videoEnabled:? screenEnabled:? remoteParticipant:?];
LABEL_14:

    return 0;
  }

  -[VCSessionParticipantOneToOneConfig setAudioMediaControlInfoGenerator:](v15, "setAudioMediaControlInfoGenerator:", [objc_msgSend(participant "oneToOneConfig")]);
  -[VCSessionParticipantOneToOneConfig setVideoMediaControlInfoGenerator:](v15, "setVideoMediaControlInfoGenerator:", [objc_msgSend(participant "oneToOneConfig")]);
LABEL_5:
  [(VCSessionParticipantOneToOneConfig *)v15 setIdsParticipantID:d];
  [(VCSessionParticipantOneToOneConfig *)v15 setDeviceRole:[VCSession deviceRoleForSessionMode:[(VCSessionConfiguration *)self->_configuration sessionMode]]];
  [(VCSessionParticipantOneToOneConfig *)v15 setFeedbackController:[(AVCRateController *)self->_oneToOneSettings.rateController feedbackController]];
  [(VCSessionParticipantOneToOneConfig *)v15 setStatisticsCollector:[(AVCRateController *)self->_oneToOneSettings.rateController statisticsCollector]];
  [(VCSessionParticipantOneToOneConfig *)v15 setBasebandCongestionDetector:[(AVCRateController *)self->_oneToOneSettings.rateController basebandCongestionDetector]];
  [(VCSessionParticipantOneToOneConfig *)v15 setMediaController:self->_oneToOneSettings.mediaController];
  if (localCopy)
  {
    [(VCSessionParticipantOneToOneConfig *)v15 setMediaQueue:self->_oneToOneSettings.mediaQueue];
    vcMediaQueue = self->_oneToOneSettings.vcMediaQueue;
  }

  else
  {
    [(VCSessionParticipantOneToOneConfig *)v15 setMediaQueue:0xFFFFFFFFLL];
    vcMediaQueue = 0;
  }

  [(VCSessionParticipantOneToOneConfig *)v15 setVcMediaQueue:vcMediaQueue];
  [(VCSessionParticipantOneToOneConfig *)v15 setNegotiatedVideoEnabled:enabledCopy];
  [(VCSessionParticipantOneToOneConfig *)v15 setNegotiatedScreenEnabled:screenEnabledCopy];
  v17 = VCConnectionManager_CopyPrimaryConnection([(VCTransportSession *)[(VCSession *)self transportSession] connectionManager]);
  -[VCSessionParticipantOneToOneConfig setInitUsingWifiTiers:](v15, "setInitUsingWifiTiers:", [v17 isWifiToWifi]);
  if (v17)
  {
    CFRelease(v17);
  }

  [(VCSessionParticipantOneToOneConfig *)v15 setNetworkFeedbackController:self->_feedbackController];
  return v15;
}

- (void)startRateControllerOneToOne
{
  [(AVCRateControlFeedbackController *)[(AVCRateController *)self->_oneToOneSettings.rateController feedbackController] setIsFeedbackReceived:0];
  [(VCSession *)self configureOneToOneRateController:self->_currentActiveConnection];
  rateController = self->_oneToOneSettings.rateController;

  [(AVCRateController *)rateController start];
}

- (BOOL)isOneToOneUsingVideo
{
  if ([(VCSessionParticipantOneToOneConfig *)[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] oneToOneConfig] negotiatedVideoEnabled])
  {
    isVideoEnabled = [(VCSessionParticipant *)self->_localParticipant isVideoEnabled];
  }

  else
  {
    isVideoEnabled = 0;
  }

  return (isVideoEnabled | [(VCSession *)self isUsingPersonaCamera]) & 1;
}

- (BOOL)isUsingPersonaCamera
{
  isPersonaCameraSupported = [(VCSession *)self isPersonaCameraSupported];
  if (isPersonaCameraSupported)
  {
    localParticipant = self->_localParticipant;

    LOBYTE(isPersonaCameraSupported) = [(VCSessionParticipant *)localParticipant isPersonaCameraEnabled];
  }

  return isPersonaCameraSupported;
}

- (BOOL)isPersonaCameraSupported
{
  mediaNegotiator = [(VCSessionParticipant *)self->_localParticipant mediaNegotiator];
  if ([-[VCSessionMediaNegotiator negotiatedResultsForGroupID:](mediaNegotiator negotiatedResultsForGroupID:{1718909044), "isSupported"}])
  {
    return 1;
  }

  v4 = [(VCSessionMediaNegotiator *)mediaNegotiator negotiatedResultsForGroupID:1650745716];

  return [v4 isSupported];
}

- (BOOL)isOneToOneUsingScreen
{
  negotiatedScreenEnabled = [(VCSessionParticipantOneToOneConfig *)[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] oneToOneConfig] negotiatedScreenEnabled];
  if (negotiatedScreenEnabled)
  {
    localParticipant = self->_localParticipant;

    LOBYTE(negotiatedScreenEnabled) = [(VCSessionParticipant *)localParticipant isScreenEnabled];
  }

  return negotiatedScreenEnabled;
}

- (BOOL)isOneToOneRemoteParticipantUsingScreen
{
  negotiatedScreenEnabled = [(VCSessionParticipantOneToOneConfig *)[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] oneToOneConfig] negotiatedScreenEnabled];
  if (negotiatedScreenEnabled)
  {
    oneToOneRemoteParticipant = [(VCSession *)self oneToOneRemoteParticipant];

    LOBYTE(negotiatedScreenEnabled) = [(VCSessionParticipant *)oneToOneRemoteParticipant isScreenEnabled];
  }

  return negotiatedScreenEnabled;
}

- (BOOL)configureRemoteParticipantForOneToOne:(id)one
{
  v26 = *MEMORY[0x1E69E9840];
  isSupported = [(VCMediaNegotiatorResultsVideo *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedVideoSettings] isSupported];
  isSupported2 = [(VCMediaNegotiatorResultsVideo *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedScreenSettings] isSupported];
  v7 = isSupported && [(VCSessionParticipant *)self->_localParticipant isVideoEnabled]|| [(VCSession *)self isUsingPersonaCamera];
  mediaControlInfoVersion = [(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedSettings] mediaControlInfoVersion];
  v9 = [+[VCAudioManager sharedVoiceChatInstance](VCAudioManager "sharedVoiceChatInstance")];
  if (!v9)
  {
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_6;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      *v21 = 136316162;
      *&v21[4] = v14;
      *&v21[12] = 2080;
      *&v21[14] = "[VCSession(OneToOne) configureRemoteParticipantForOneToOne:]";
      *&v21[22] = 1024;
      LODWORD(v22) = 361;
      WORD2(v22) = 1024;
      *(&v22 + 6) = v9;
      WORD5(v22) = 1024;
      HIDWORD(v22) = v7;
      v16 = " [%s] %s:%d Failed to get pre-warming client's operating mode from VCAudioManager! Defaulting to operatingMode=%d (due to isUsingCamera=%{BOOL}d)";
      v17 = v15;
      v18 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_6;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      *v21 = 136316674;
      *&v21[4] = v19;
      *&v21[12] = 2080;
      *&v21[14] = "[VCSession(OneToOne) configureRemoteParticipantForOneToOne:]";
      *&v21[22] = 1024;
      LODWORD(v22) = 361;
      WORD2(v22) = 2112;
      *(&v22 + 6) = v13;
      HIWORD(v22) = 2048;
      selfCopy = self;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v9;
      HIWORD(v24) = 1024;
      LODWORD(v25) = v7;
      v16 = " [%s] %s:%d %@(%p) Failed to get pre-warming client's operating mode from VCAudioManager! Defaulting to operatingMode=%d (due to isUsingCamera=%{BOOL}d)";
      v17 = v20;
      v18 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, v21, v18);
  }

LABEL_6:
  v10 = -[VCSession newParticipantOneToOneConfigWithIDSParticipantID:isLocal:mediaControlInfoVersion:videoEnabled:screenEnabled:remoteParticipant:](self, "newParticipantOneToOneConfigWithIDSParticipantID:isLocal:mediaControlInfoVersion:videoEnabled:screenEnabled:remoteParticipant:", [one idsParticipantID], 0, mediaControlInfoVersion, isSupported, isSupported2, one);
  if (!v10)
  {
    [VCSession(OneToOne) configureRemoteParticipantForOneToOne:];
LABEL_26:
    v11 = v21[0];
    goto LABEL_9;
  }

  if (([one configureWithOneToOneParticipantConfig:v10 operatingMode:v9] & 1) == 0)
  {
    [VCSession(OneToOne) configureRemoteParticipantForOneToOne:];
    goto LABEL_26;
  }

  [(VCSession *)self setDelegatesForRemoteParticipant:one];
  v11 = 1;
LABEL_9:

  return v11;
}

- (unsigned)detailedErrorCodeForNoRemotePacketsError
{
  connectionManager = [(VCTransportSession *)[(VCSession *)self transportSession] connectionManager];
  if (![(VCConnectionManager *)connectionManager isEndToEndLinkAvailable])
  {
    return 24;
  }

  v3 = [(VCConnectionManager *)connectionManager isEndToEndLinkWithCellAvailable:1];
  if ((v3 | [(VCConnectionManager *)connectionManager isEndToEndLinkWithCellAvailable:0]))
  {
    return 14;
  }

  else
  {
    return 25;
  }
}

- (void)reportExistingParticipantsAnew
{
  v20 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = allKeys;
  v4 = [allKeys countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID objectForKeyedSubscript:v8];
        v10 = MEMORY[0x1E695DF90];
        v14[0] = v8;
        v13[0] = @"VCSPUUID";
        v13[1] = @"VCSPIDSID";
        v14[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "idsParticipantID")}];
        v13[2] = @"VCSPAudioEnabled";
        v14[2] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isAudioEnabled")}];
        v13[3] = @"VCSPVideoEnabled";
        v14[3] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isVideoEnabled")}];
        v11 = [v10 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 4)}];
        [(VCSession *)self addNegotiatedCipherSuitesForParticipant:v9 toReportingDictionary:v11];
        [v11 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"callInfoBlob"), "osVersion"), @"REMBUILD"}];
        [v11 setObject:objc_msgSend(objc_msgSend(v9 forKeyedSubscript:{"callInfoBlob"), "deviceType"), @"RDT"}];
        reportingGenericEvent();
        [v9 reportConnectionTiming];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)reportStartedSwitchingToOneToOne:(BOOL)one
{
  reportingGenericEvent();

  [(VCSession *)self reportClientPersistentSettings];
}

- (void)reportCompletedSwitchingToOneToOne:(BOOL)one
{
  oneCopy = one;
  v32[1] = *MEMORY[0x1E69E9840];
  if (self->_oneToOneSwitchStartTime != 0.0)
  {
    v5 = micro();
    oneToOneSwitchStartTime = self->_oneToOneSwitchStartTime;
    v7 = @"VCSOTOST";
    v8 = v5 - oneToOneSwitchStartTime;
    if (oneCopy)
    {
      v7 = @"VCGFTSWTT";
    }

    v31 = v7;
    v32[0] = [MEMORY[0x1E696AD98] numberWithDouble:v5 - oneToOneSwitchStartTime];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    self->_oneToOneSwitchStartTime = 0.0;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316162;
          v18 = v10;
          v19 = 2080;
          v20 = "[VCSession(OneToOne) reportCompletedSwitchingToOneToOne:]";
          v21 = 1024;
          v22 = 432;
          v23 = 2048;
          v24 = v8;
          v25 = 1024;
          LODWORD(selfCopy) = oneCopy;
          v12 = " [%s] %s:%d SwitchTime=%f switchingToOneToOne=%d";
          v13 = v11;
          v14 = 44;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316674;
          v18 = v15;
          v19 = 2080;
          v20 = "[VCSession(OneToOne) reportCompletedSwitchingToOneToOne:]";
          v21 = 1024;
          v22 = 432;
          v23 = 2112;
          v24 = *&v9;
          v25 = 2048;
          selfCopy = self;
          v27 = 2048;
          v28 = v8;
          v29 = 1024;
          v30 = oneCopy;
          v12 = " [%s] %s:%d %@(%p) SwitchTime=%f switchingToOneToOne=%d";
          v13 = v16;
          v14 = 64;
          goto LABEL_15;
        }
      }
    }
  }

  reportingGenericEvent();
  [(VCSession *)self reportLocalRateControlExperimentConfiguration];
}

- (void)reportSwitchingError:(BOOL)error errorEvent:(unsigned int)event
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"VCSErrorDetected";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&event];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  reportingGenericEvent();
}

- (void)oneToOneToMultiwaySwitchSuspend
{
  if ((self->_state | 2) == 3)
  {
    [(VCSession *)self cleanupOneToOneDelegates];
    [(VCSessionParticipantLocal *)self->_localParticipant suspendStreamsOnOneToOneModeSwitch];
    [(VCSession *)self stopRateControllerOneToOne];
    vcMediaQueue = self->_oneToOneSettings.vcMediaQueue;
    if (vcMediaQueue)
    {

      VCMediaQueue_Stop(vcMediaQueue);
    }
  }
}

- (void)oneToOneToMultiwaySwitchResume
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  VCConnectionManager_AddTelemetryForPacketHistory([(VCTransportSession *)self->_transportSession connectionManager], v3);
  [(VCSession *)self startReportingForOneToOneEnabled:0 withPayload:v3];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] reportCurrentPrimaryConnection];
  [(VCSession *)self reportExistingParticipantsAnew];
  if ((self->_state | 2) == 3)
  {
    [(VCSession *)self startRateControllersMultiwayFromOneToOne:1];
    [(VCSessionStatsController *)self->_sessionStatsController reset];
    [(VCSessionStatsController *)self->_sessionStatsController startLocalSessionStatsUpdate];
    VCMediaQueue_Start(self->_mediaQueue);
    if (self->_state == 1)
    {
      [(NSMutableArray *)self->_startingParticipants addObject:self->_localParticipant];
      localParticipant = self->_localParticipant;

      [(VCSessionParticipantLocal *)localParticipant start];
    }

    else
    {
      [(VCSessionParticipantLocal *)self->_localParticipant resumeStreamsOnOneToOneModeSwitch];
      [(NSMutableDictionary *)self->_optInDictionary removeAllObjects];

      [(VCSession *)self distributeBitrateAndOptInToStreamIDsWithSeamlessTransition:0];
    }
  }
}

- (void)oneToOneToMultiwaySwitchConfigure
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_downlinkBandwidthAllocator)
  {
    self->_downlinkBandwidthAllocator = [[VCSessionDownlinkBandwidthAllocator alloc] initWithReportingAgent:self->super._reportingAgent];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  remoteParticipants = [(VCSession *)self remoteParticipants];
  v4 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [(VCSessionDownlinkBandwidthAllocator *)self->_downlinkBandwidthAllocator registerForBandwidthAllocationWithClient:v8];
        [v8 setOneToOneModeEnabled:0];
      }

      v5 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  [(VCSession *)self reportingSetUserInfo];
  [(VCSession *)self setupMultiwayABTesting];
  if (self->_state != 3)
  {
    [(VCSessionParticipant *)self->_localParticipant configureWithDeviceRole:[VCSession deviceRoleForSessionMode:?]operatingMode:0, 0, 6];
  }

  [(VCSessionParticipantLocal *)self->_localParticipant setOneToOneModeEnabled:0];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setStatisticsCollector:[(AVCRateController *)self->_downlinkRateController statisticsCollector]];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setIsOneToOneModeEnabled:0];
  [(VCTransportSession *)self->_transportSession setOneToOneModeEnabled:0 isInitiator:self->_isOneToOneInitiator];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setiRATDuplicationEnabled:1];
  [(VCConnectionHealthMonitor *)[(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] connectionHealthMonitor] setUsingServerBasedLinks:1];
  [(VCSession *)self setTransportConnectionSelectionVersionWithLocalFrameWorkVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion] remoteFrameworkVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion]];
  [(VCSession *)self messageExistingParticipantsPostOneToOneModeSwitch];
  self->_oneToOneSettings.startedOneToOne = 0;
  self->_oneToOneModeEnabled = 0;
  [(VCSessionConfiguration *)self->_configuration setOneToOneModeEnabled:0];
  [(VCSessionParticipantLocal *)self->_localParticipant setOneToOneModeEnabled:0];
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorDownlink setOneToOneModeEnabled:0];
  VCMediaQueue_SetOneToOne(self->_mediaQueue, 0);
}

- (BOOL)switchFromOneToOneToMultiway
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled)
  {
    [(VCSession *)self reportStartedSwitchingToOneToOne:0];
    [(VCSession *)self oneToOneToMultiwaySwitchSuspend];
    [(VCSession *)self oneToOneToMultiwaySwitchConfigure];
    [(VCSession *)self oneToOneToMultiwaySwitchResume];
    [(VCSession *)self reportCompletedSwitchingToOneToOne:0];
    return 1;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v5;
        v14 = 2080;
        v15 = "[VCSession(OneToOne) switchFromOneToOneToMultiway]";
        v16 = 1024;
        v17 = 532;
        v7 = " [%s] %s:%d Already switched to GFT, ignoring.";
        v8 = v6;
        v9 = 28;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCSession *)self performSelector:sel_logPrefix];
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
        v12 = 136316162;
        v13 = v10;
        v14 = 2080;
        v15 = "[VCSession(OneToOne) switchFromOneToOneToMultiway]";
        v16 = 1024;
        v17 = 532;
        v18 = 2112;
        v19 = v4;
        v20 = 2048;
        selfCopy = self;
        v7 = " [%s] %s:%d %@(%p) Already switched to GFT, ignoring.";
        v8 = v11;
        v9 = 48;
        goto LABEL_14;
      }
    }
  }

  return 1;
}

- (void)messageExistingParticipantsPostOneToOneModeSwitch
{
  v17 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = allKeys;
  v4 = [allKeys countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_remoteParticipantsMapByUUID objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v7)];
        [(VCSession *)self sendNetworkCapabilitiesMessageToParticipant:v8];
        v10 = @"Thermal";
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_lastThermalLevel];
        -[VCSession sendDeviceStateMessageToParticipant:withStatus:checkDNUStatus:](self, "sendDeviceStateMessageToParticipant:withStatus:checkDNUStatus:", v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1], 1);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)multiwayToOneToOneSwitchSuspend
{
  if ((self->_state | 2) == 3)
  {
    [(VCSessionParticipantLocal *)self->_localParticipant suspendStreamsOnOneToOneModeSwitch];
    [(VCSessionStatsController *)self->_sessionStatsController stopLocalSessionStatsUpdate];
    VCMediaQueue_Stop(self->_mediaQueue);
    [(AVCRateController *)self->_uplinkRateController stop];
    [(AVCRateController *)self->_downlinkRateController stop];
    downlinkBandwidthAllocator = self->_downlinkBandwidthAllocator;
    oneToOneRemoteParticipant = [(VCSession *)self oneToOneRemoteParticipant];

    [(VCSessionDownlinkBandwidthAllocator *)downlinkBandwidthAllocator deregisterForBandwidthAllocationWithClient:oneToOneRemoteParticipant];
  }
}

- (void)multiwayToOneToOneSwitchResume
{
  if ((self->_state | 2) == 3)
  {
    [VCSession deviceRoleForSessionMode:[(VCSessionConfiguration *)self->_configuration sessionMode]];
    [(VCSession *)self isOneToOneUsingVideo];
    reportingModeRoleTransportLog();
    [(VCSessionParticipantLocal *)self->_localParticipant resumeStreamsOnOneToOneModeSwitch];
    [(VCSession *)self setupOneToOneVideoReceiverDelegate];

    [(VCSession *)self setupOneToOneVideoStreamDelegate];
  }
}

- (void)revertMultiwayToOneToOneModeSwitchConfigure
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  remoteParticipants = [(VCSession *)self remoteParticipants];
  v4 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [(VCSessionDownlinkBandwidthAllocator *)self->_downlinkBandwidthAllocator registerForBandwidthAllocationWithClient:v8];
        [v8 setOneToOneModeEnabled:0];
      }

      v5 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  [(VCSessionParticipantLocal *)self->_localParticipant setOneToOneModeEnabled:0];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setStatisticsCollector:[(AVCRateController *)self->_downlinkRateController statisticsCollector]];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setIsOneToOneModeEnabled:0];
  [(VCTransportSession *)self->_transportSession setOneToOneModeEnabled:0 isInitiator:self->_isOneToOneInitiator];
  [(VCSession *)self setTransportConnectionSelectionVersionWithLocalFrameWorkVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion] remoteFrameworkVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion]];
  self->_oneToOneModeEnabled = 0;
  [(VCSessionConfiguration *)self->_configuration setOneToOneModeEnabled:0];
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorDownlink setOneToOneModeEnabled:0];
  VCMediaQueue_SetOneToOne(self->_mediaQueue, 0);
}

- (BOOL)multiwayToOneToOneSwitchConfigure
{
  [(VCSession *)self renewOneToOneMediaQueue];
  self->_oneToOneModeEnabled = 1;
  [(VCSessionConfiguration *)self->_configuration setOneToOneModeEnabled:1];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setIsOneToOneModeEnabled:1];
  [(VCSession *)self startReportingForOneToOneEnabled:1 withPayload:0];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] reportCurrentPrimaryConnection];
  [(VCSession *)self reportExistingParticipantsAnew];
  [(VCSession *)self setupOneToOneAdaptiveLearning];
  [(VCAudioMachineLearningCoordinator *)self->_audioMachineLearningCoordinatorDownlink setOneToOneModeEnabled:1];
  v3 = [VCSession deviceRoleForSessionMode:[(VCSessionConfiguration *)self->_configuration sessionMode]];
  [(VCSession *)self setTransportConnectionSelectionVersionWithLocalFrameWorkVersion:@"2045" remoteFrameworkVersion:@"2045"];
  [(VCTransportSession *)self->_transportSession setRemoteDeviceVersionIDS];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setDefaultLinkProbingCapabilityVersionForDeviceRole:v3];
  [(VCTransportSession *)self->_transportSession setOneToOneModeEnabled:1 isInitiator:self->_isOneToOneInitiator];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setStatisticsCollector:[(VCSessionParticipantOneToOneConfig *)[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] oneToOneConfig] statisticsCollector]];
  [(VCSession *)self messageExistingParticipantsPostOneToOneModeSwitch];
  if ([(VCSession *)self oneToOneRemoteParticipant]&& ![(VCSession *)self negotiateOneToOneWithRemoteParticipant:[(VCSession *)self oneToOneRemoteParticipant]])
  {
    [(VCSession(OneToOne) *)self multiwayToOneToOneSwitchConfigure];
LABEL_10:
    [(VCSession *)self revertMultiwayToOneToOneModeSwitchConfigure];
    return 0;
  }

  [(VCSessionParticipantLocal *)self->_localParticipant setOneToOneModeEnabled:1];
  if (![(VCSession *)self oneToOneRemoteParticipant])
  {
    if ((self->_state | 2) != 3)
    {
      return 1;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSession(OneToOne) multiwayToOneToOneSwitchConfigure];
      }
    }

    goto LABEL_10;
  }

  if (![(VCSession *)self configureLocalParticipantWithOneToOneRemoteParticipant:[(VCSession *)self oneToOneRemoteParticipant] isInitialConfiguration:0])
  {
    [(VCSession(OneToOne) *)self multiwayToOneToOneSwitchConfigure];
    goto LABEL_10;
  }

  [(VCSession *)self setTransportConnectionSelectionVersionWithLocalFrameWorkVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)self->_localParticipant callInfoBlob] frameworkVersion] remoteFrameworkVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] callInfoBlob] frameworkVersion]];
  oneToOneRemoteParticipant = [(VCSession *)self oneToOneRemoteParticipant];
  v5 = 1;
  [(VCSessionParticipantRemote *)oneToOneRemoteParticipant setOneToOneModeEnabled:1];
  return v5;
}

- (BOOL)switchFromMultiwayToOneToOne
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v13 = 136315650;
      v14 = v5;
      v15 = 2080;
      v16 = "[VCSession(OneToOne) switchFromMultiwayToOneToOne]";
      v17 = 1024;
      v18 = 653;
      v7 = " [%s] %s:%d Already switched to OneToOne, ignoring.";
      v8 = v6;
      v9 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v13 = 136316162;
      v14 = v10;
      v15 = 2080;
      v16 = "[VCSession(OneToOne) switchFromMultiwayToOneToOne]";
      v17 = 1024;
      v18 = 653;
      v19 = 2112;
      v20 = v3;
      v21 = 2048;
      selfCopy = self;
      v7 = " [%s] %s:%d %@(%p) Already switched to OneToOne, ignoring.";
      v8 = v11;
      v9 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
    return 1;
  }

  [(VCSession *)self reportStartedSwitchingToOneToOne:1];
  [(VCSession *)self multiwayToOneToOneSwitchSuspend];
  if ([(VCSession *)self multiwayToOneToOneSwitchConfigure])
  {
    [(VCSession *)self multiwayToOneToOneSwitchResume];
    v4 = 1;
    [(VCSession *)self reportCompletedSwitchingToOneToOne:1];
  }

  else
  {
    [(VCSession(OneToOne) *)self switchFromMultiwayToOneToOne];
    return 0;
  }

  return v4;
}

- (void)cleanupOneToOneMediaQueue
{
  p_oneToOneSettings = &self->_oneToOneSettings;
  if (self->_oneToOneSettings.mediaQueue != 0xFFFFFFFFLL)
  {
    MediaQueue_CloseHandle();
    p_oneToOneSettings->mediaQueue = 0xFFFFFFFFLL;
  }

  vcMediaQueue = p_oneToOneSettings->vcMediaQueue;
  if (vcMediaQueue)
  {

    VCMediaQueue_FlushAllPackets(vcMediaQueue);
  }
}

- (void)cleanupOneToOne
{
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setStartConnectionHealthMonitoring:0];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setIsOneToOneModeEnabled:0];
  [(VCTransportSession *)self->_transportSession setOneToOneModeEnabled:0 isInitiator:self->_isOneToOneInitiator];
  [(VCSession *)self cleanupRateControllerOneToOne];
  [(VCSession *)self cleanupOneToOneMediaQueue];

  reportingStopTimer();
}

- (void)cleanupOneToOneDelegates
{
  [(VCSession *)self cleanupOneToOneVideoReceiverDelegate];

  [(VCSession *)self cleanUpOneToOneVideoStreamDelegate];
}

- (void)cleanupOneToOneVideoReceiverDelegate
{
  if (self->_oneToOneModeEnabled)
  {
    oneToOneRemoteParticipant = [(VCSession *)self oneToOneRemoteParticipant];

    [(VCSessionParticipantRemote *)oneToOneRemoteParticipant setVideoReceiverFeedbackDelegate:0];
  }
}

- (void)cleanUpOneToOneVideoStreamDelegate
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled)
  {
    v2[0] = 0;
    [(VCSessionParticipantRemote *)[(VCSession *)self oneToOneRemoteParticipant] setVideoStreamDelegate:0 delegateFunctions:v2];
  }
}

- (void)startReportingForOneToOneEnabled:(BOOL)enabled withPayload:(id)payload
{
  enabledCopy = enabled;
  v34 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  if (enabledCopy)
  {
    if (v6 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v9 = VRTraceErrorLogLevelToCSTR(), v10 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_19:
        if ([VCDefaults BOOLeanValueForKey:@"useAggregatorMultiwayforU1" defaultValue:1])
        {
          v21 = 5;
        }

        else
        {
          v21 = 0;
        }

        self->_reportingClientType = v21;
        goto LABEL_28;
      }

      *buf = 136315650;
      v25 = v9;
      v26 = 2080;
      v27 = "[VCSession(OneToOne) startReportingForOneToOneEnabled:withPayload:]";
      v28 = 1024;
      v29 = 722;
      v11 = " [%s] %s:%d RTCReporting: Switching to one-to-one mode reporting";
      v12 = v10;
      v13 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_19;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136316162;
      v25 = v19;
      v26 = 2080;
      v27 = "[VCSession(OneToOne) startReportingForOneToOneEnabled:withPayload:]";
      v28 = 1024;
      v29 = 722;
      v30 = 2112;
      v31 = v7;
      v32 = 2048;
      selfCopy2 = self;
      v11 = " [%s] %s:%d %@(%p) RTCReporting: Switching to one-to-one mode reporting";
      v12 = v20;
      v13 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    goto LABEL_19;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_28;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315650;
    v25 = v14;
    v26 = 2080;
    v27 = "[VCSession(OneToOne) startReportingForOneToOneEnabled:withPayload:]";
    v28 = 1024;
    v29 = 727;
    v16 = " [%s] %s:%d RTCReporting: Switching to one-to-many mode reporting";
    v17 = v15;
    v18 = 28;
LABEL_27:
    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_28;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(VCSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v25 = v22;
      v26 = 2080;
      v27 = "[VCSession(OneToOne) startReportingForOneToOneEnabled:withPayload:]";
      v28 = 1024;
      v29 = 727;
      v30 = 2112;
      v31 = v8;
      v32 = 2048;
      selfCopy2 = self;
      v16 = " [%s] %s:%d %@(%p) RTCReporting: Switching to one-to-many mode reporting";
      v17 = v23;
      v18 = 48;
      goto LABEL_27;
    }
  }

LABEL_28:
  reportingSetAggregatorForClientType();
  [(VCSession *)self reportingSetUserInfo];
  reportingSetPeriodicAggregationOccurredHandler();
  reportingSetPeriodicAggregationOccurredHandler();
  ReportingVC_SetEventDrivenAggregationOccurredHandler();
}

uint64_t __68__VCSession_OneToOne__startReportingForOneToOneEnabled_withPayload___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[VCQoSMonitorManager sharedInstance];
  v5 = *(a1 + 32);

  return [(VCQoSMonitorManager *)v4 updateQoSReport:a2 toClientsWithToken:v5];
}

uint64_t __68__VCSession_OneToOne__startReportingForOneToOneEnabled_withPayload___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[VCQoSMonitorManager sharedInstance];
  v6 = *(a1 + 32);

  return [(VCQoSMonitorManager *)v5 updateEventDrivenQoSReport:a3 toClientsWithToken:v6];
}

- (void)renewOneToOneMediaQueue
{
  p_oneToOneSettings = &self->_oneToOneSettings;
  vcMediaQueue = self->_oneToOneSettings.vcMediaQueue;
  if (vcMediaQueue)
  {
    VCMediaQueue_FlushAllPackets(vcMediaQueue);
    v4 = p_oneToOneSettings->vcMediaQueue;

    VCMediaQueue_SetOneToOne(v4, 1);
  }

  else
  {
    p_mediaQueue = &p_oneToOneSettings->mediaQueue;
    MediaQueue_CloseHandle();
    MediaQueue_CreateHandle(p_mediaQueue, 0xFFFFFFFFLL);
    v6 = *(p_mediaQueue - 1);
    v7 = *p_mediaQueue;

    [v6 setMediaQueue:v7];
  }
}

- (void)setupOneToOneAdaptiveLearning
{
  v15[14] = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E69866C8];
  v15[0] = [MEMORY[0x1E696AD98] numberWithInt:{+[GKSConnectivitySettings getAdaptiveLearningState](GKSConnectivitySettings, "getAdaptiveLearningState")}];
  v14[1] = *MEMORY[0x1E69866A8];
  v15[1] = [MEMORY[0x1E696AD98] numberWithInt:{+[GKSConnectivitySettings getShortTermHistoryLength](GKSConnectivitySettings, "getShortTermHistoryLength")}];
  v14[2] = *MEMORY[0x1E6986688];
  v15[2] = [MEMORY[0x1E696AD98] numberWithInt:{+[GKSConnectivitySettings getLongTermHistoryLength](GKSConnectivitySettings, "getLongTermHistoryLength")}];
  v14[3] = *MEMORY[0x1E6986660];
  v3 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdaptiveLearningA];
  v15[3] = [v3 numberWithDouble:?];
  v14[4] = *MEMORY[0x1E6986670];
  v4 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdjustmentFactorA];
  v15[4] = [v4 numberWithDouble:?];
  v14[5] = *MEMORY[0x1E69866B0];
  v5 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getShortTermValueWeightA];
  v15[5] = [v5 numberWithDouble:?];
  v14[6] = *MEMORY[0x1E6986690];
  v6 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getLongTermValueWeightA];
  v15[6] = [v6 numberWithDouble:?];
  v14[7] = *MEMORY[0x1E6986668];
  v7 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdaptiveLearningB];
  v15[7] = [v7 numberWithDouble:?];
  v14[8] = *MEMORY[0x1E6986678];
  v8 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdjustmentFactorB];
  v15[8] = [v8 numberWithDouble:?];
  v14[9] = *MEMORY[0x1E69866B8];
  v9 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getShortTermValueWeightB];
  v15[9] = [v9 numberWithDouble:?];
  v14[10] = *MEMORY[0x1E6986698];
  v10 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getLongTermValueWeightB];
  v15[10] = [v10 numberWithDouble:?];
  v14[11] = *MEMORY[0x1E6986680];
  v11 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getAdjustmentFactorC];
  v15[11] = [v11 numberWithDouble:?];
  v14[12] = *MEMORY[0x1E69866C0];
  v12 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getShortTermValueWeightC];
  v15[12] = [v12 numberWithDouble:?];
  v14[13] = *MEMORY[0x1E69866A0];
  v13 = MEMORY[0x1E696AD98];
  +[GKSConnectivitySettings getLongTermValueWeightC];
  v15[13] = [v13 numberWithDouble:?];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:14];
  [(VCObject *)self reportingAgent];
  createAdaptiveLearningForAgent();
}

- (BOOL)negotiateOneToOneWithRemoteParticipant:(id)participant
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = [(VCSessionParticipantLocal *)self->_localParticipant negotiateOneToOne:participant];
  if (v4 < 0)
  {
    [VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:?];
    return v4 >= 0;
  }

  negotiatedVideoSettings = [(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedVideoSettings];
  isSupported = [(VCMediaNegotiatorResultsVideo *)negotiatedVideoSettings isSupported];
  v7 = objc_opt_class();
  if (!isSupported)
  {
    if (v7 != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 136316162;
          *&v50[4] = v19;
          *&v50[12] = 2080;
          *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
          *&v50[22] = 1024;
          LODWORD(v51) = 787;
          WORD2(v51) = 2112;
          *(&v51 + 6) = v9;
          HIWORD(v51) = 2048;
          selfCopy5 = self;
          v12 = " [%s] %s:%d %@(%p) Negotiated 1:1 camera not supported";
          v13 = v20;
          v14 = 48;
          goto LABEL_23;
        }
      }

      goto LABEL_24;
    }

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

    *v50 = 136315650;
    *&v50[4] = v15;
    *&v50[12] = 2080;
    *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
    *&v50[22] = 1024;
    LODWORD(v51) = 787;
    v12 = " [%s] %s:%d Negotiated 1:1 camera not supported";
    v13 = v16;
    v14 = 28;
LABEL_23:
    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v50, v14);
    goto LABEL_24;
  }

  if (v7 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_24;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *v50 = 136315906;
    *&v50[4] = v10;
    *&v50[12] = 2080;
    *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
    *&v50[22] = 1024;
    LODWORD(v51) = 785;
    WORD2(v51) = 2112;
    *(&v51 + 6) = [(VCMediaNegotiatorResultsVideo *)negotiatedVideoSettings videoRuleCollections];
    v12 = " [%s] %s:%d Negotiated 1:1 camera rules: %@";
    v13 = v11;
    v14 = 38;
    goto LABEL_23;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(VCSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 136316418;
      *&v50[4] = v17;
      *&v50[12] = 2080;
      *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
      *&v50[22] = 1024;
      LODWORD(v51) = 785;
      WORD2(v51) = 2112;
      *(&v51 + 6) = v8;
      HIWORD(v51) = 2048;
      selfCopy5 = self;
      LOWORD(v53) = 2112;
      *(&v53 + 2) = [(VCMediaNegotiatorResultsVideo *)negotiatedVideoSettings videoRuleCollections];
      v12 = " [%s] %s:%d %@(%p) Negotiated 1:1 camera rules: %@";
      v13 = v18;
      v14 = 58;
      goto LABEL_23;
    }
  }

LABEL_24:
  negotiatedScreenSettings = [(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator:*v50] negotiatedScreenSettings];
  isSupported2 = [(VCMediaNegotiatorResultsVideo *)negotiatedScreenSettings isSupported];
  v23 = objc_opt_class();
  if (!isSupported2)
  {
    if (v23 != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 136316162;
          *&v50[4] = v37;
          *&v50[12] = 2080;
          *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
          *&v50[22] = 1024;
          LODWORD(v51) = 794;
          WORD2(v51) = 2112;
          *(&v51 + 6) = v25;
          HIWORD(v51) = 2048;
          selfCopy5 = self;
          v29 = " [%s] %s:%d %@(%p) Negotiated 1:1 screen not supported";
          v30 = v38;
          v31 = 48;
          goto LABEL_45;
        }
      }

      goto LABEL_46;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_46;
    }

    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *v50 = 136315650;
    *&v50[4] = v32;
    *&v50[12] = 2080;
    *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
    *&v50[22] = 1024;
    LODWORD(v51) = 794;
    v29 = " [%s] %s:%d Negotiated 1:1 screen not supported";
    v30 = v33;
    v31 = 28;
LABEL_45:
    _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, v50, v31);
    goto LABEL_46;
  }

  if (v23 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_46;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    videoRuleCollections = [(VCMediaNegotiatorResultsVideo *)negotiatedScreenSettings videoRuleCollections];
    *v50 = 136315906;
    *&v50[4] = v26;
    *&v50[12] = 2080;
    *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
    *&v50[22] = 1024;
    LODWORD(v51) = 792;
    WORD2(v51) = 2112;
    *(&v51 + 6) = videoRuleCollections;
    v29 = " [%s] %s:%d Negotiated 1:1 screen rules: %@";
    v30 = v27;
    v31 = 38;
    goto LABEL_45;
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [(VCSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v24 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      videoRuleCollections2 = [(VCMediaNegotiatorResultsVideo *)negotiatedScreenSettings videoRuleCollections];
      *v50 = 136316418;
      *&v50[4] = v34;
      *&v50[12] = 2080;
      *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
      *&v50[22] = 1024;
      LODWORD(v51) = 792;
      WORD2(v51) = 2112;
      *(&v51 + 6) = v24;
      HIWORD(v51) = 2048;
      selfCopy5 = self;
      LOWORD(v53) = 2112;
      *(&v53 + 2) = videoRuleCollections2;
      v29 = " [%s] %s:%d %@(%p) Negotiated 1:1 screen rules: %@";
      v30 = v35;
      v31 = 58;
      goto LABEL_45;
    }
  }

LABEL_46:
  [(VCSessionParticipant *)self->_localParticipant setNegotiatedFECFeaderVersion:[(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator:*v50] negotiatedSettings] fecHeaderVersion]];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setP2pEncryptionExperimentEnabled:[(VCMediaNegotiatorResults *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedSettings] rtxVersion]!= 0];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isP2PEncryptionExperimentEnabled = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] isP2PEncryptionExperimentEnabled];
        *v50 = 136315906;
        *&v50[4] = v40;
        *&v50[12] = 2080;
        *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
        *&v50[22] = 1024;
        LODWORD(v51) = 799;
        WORD2(v51) = 1024;
        *(&v51 + 6) = isP2PEncryptionExperimentEnabled;
        v43 = " [%s] %s:%d Negotiated p2pEncryptionExperimentEnabled=%d";
        v44 = v41;
        v45 = 34;
LABEL_56:
        _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, v43, v50, v45);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v39 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v39 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v46 = VRTraceErrorLogLevelToCSTR();
      v47 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isP2PEncryptionExperimentEnabled2 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] isP2PEncryptionExperimentEnabled];
        *v50 = 136316418;
        *&v50[4] = v46;
        *&v50[12] = 2080;
        *&v50[14] = "[VCSession(OneToOne) negotiateOneToOneWithRemoteParticipant:]";
        *&v50[22] = 1024;
        LODWORD(v51) = 799;
        WORD2(v51) = 2112;
        *(&v51 + 6) = v39;
        HIWORD(v51) = 2048;
        selfCopy5 = self;
        LOWORD(v53) = 1024;
        *(&v53 + 2) = isP2PEncryptionExperimentEnabled2;
        v43 = " [%s] %s:%d %@(%p) Negotiated p2pEncryptionExperimentEnabled=%d";
        v44 = v47;
        v45 = 54;
        goto LABEL_56;
      }
    }
  }

  return v4 >= 0;
}

- (void)configureOneToOneRateController:(id)controller
{
  isOneToOneUsingVideo = [(VCSession *)self isOneToOneUsingVideo];
  isOneToOneUsingScreen = [(VCSession *)self isOneToOneUsingScreen];

  [(VCSession *)self configureOneToOneRateController:controller isUsingCamera:isOneToOneUsingVideo isUsingScreen:isOneToOneUsingScreen];
}

- (void)configureOneToOneRateController:(id)controller isUsingCamera:(BOOL)camera isUsingScreen:(BOOL)screen
{
  screenCopy = screen;
  cameraCopy = camera;
  v52 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  if (controller)
  {
    [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] updateNegotiatedSettingsOnetoOne:[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedSettings]];
    [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] updateAllBitrateCapsForConnection:controller];
    v9 = VCConnectionManager_CopyPrimaryConnection([(VCTransportSession *)self->_transportSession connectionManager]);
    if (VCConnection_IsLocalOnWiFiOrWired(v9))
    {
      if ([(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] isDuplicationEnabled])
      {
        v10 = 512;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    if (self->_isBytesInFlightAdaptationEnabled)
    {
      v12 = v10 | 0x4000;
    }

    else
    {
      v12 = v10;
    }

    if ([(VCSession *)self isUsingPersonaCamera])
    {
      v12 |= 0x8000u;
    }

    if ([(VCRateControlMLEnrollment *)self->_vcrcMLEnrollment modelPath])
    {
      v13 = v12 | 0x40000;
    }

    else
    {
      v13 = v12;
    }

    if (self->_forceHighDataRateFaceTime)
    {
      v13 |= 0x10000u;
      [controller setUplinkBitrateCapOneToOne:23000000];
    }

    if (v9)
    {
      CFRelease(v9);
    }

    IsInterfaceOnCellularForActiveConnectionWithQuality = VCConnectionManager_IsInterfaceOnCellularForActiveConnectionWithQuality([(VCTransportSession *)self->_transportSession connectionManager], 1, 0);
    v14 = cameraCopy || screenCopy;
    if (cameraCopy || screenCopy)
    {
      uplinkBitrateCapOneToOne = [controller uplinkBitrateCapOneToOne];
    }

    else
    {
      uplinkBitrateCapOneToOne = [controller uplinkAudioBitrateCapOneToOne];
    }

    v16 = uplinkBitrateCapOneToOne;
    if ([(VCSession *)self isUsingPersonaCamera])
    {
      v17 = VCFeatureFlagManager_PersonaV2Enabled();
    }

    else
    {
      v17 = 0;
    }

    v18 = [AVCRateController rateControlTrafficTypeForScreen:screenCopy isPersona:v17];
    rateController = self->_oneToOneSettings.rateController;
    if (v14)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    IsLocalOnCellular = VCConnection_IsLocalOnCellular(controller);
    v22 = VCConnection_LocalCellTech(controller);
    HIDWORD(v37) = v13;
    LOBYTE(v37) = v18;
    [(AVCRateController *)rateController configureWithOperatingMode:v20 isLocalCellular:IsLocalOnCellular localCellTech:v22 isRemoteCellular:IsInterfaceOnCellularForActiveConnectionWithQuality remoteCellTech:VCConnection_RemoteCellTech(controller) bitrateCapKbps:v16 / 0x3E8uLL trafficType:v37 featureFlags:?];
    v23 = self->_oneToOneSettings.rateController;
    v24 = (!v23 || ([(AVCRateController *)v23 configuration], v39 != v20)) && (self->_state | 2) == 3 && [(AVCRateController *)self->_oneToOneSettings.rateController start];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v41 = v26;
          v42 = 2080;
          v43 = "[VCSession(OneToOne) configureOneToOneRateController:isUsingCamera:isUsingScreen:]";
          v44 = 1024;
          v45 = 857;
          v46 = 1024;
          LODWORD(v47) = v24;
          v28 = " [%s] %s:%d Configured rate controller with status=%{BOOL}d";
          v29 = v27;
          v30 = 34;
LABEL_53:
          _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v41 = v31;
          v42 = 2080;
          v43 = "[VCSession(OneToOne) configureOneToOneRateController:isUsingCamera:isUsingScreen:]";
          v44 = 1024;
          v45 = 857;
          v46 = 2112;
          v47 = v25;
          v48 = 2048;
          selfCopy2 = self;
          v50 = 1024;
          v51 = v24;
          v28 = " [%s] %s:%d %@(%p) Configured rate controller with status=%{BOOL}d";
          v29 = v32;
          v30 = 54;
          goto LABEL_53;
        }
      }
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v41 = v33;
        v42 = 2080;
        v43 = "[VCSession(OneToOne) configureOneToOneRateController:isUsingCamera:isUsingScreen:]";
        v44 = 1024;
        v45 = 813;
        v28 = " [%s] %s:%d We cannot configure the OneToOne RateController as there is not an active connection yet";
        v29 = v34;
        v30 = 28;
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v41 = v35;
        v42 = 2080;
        v43 = "[VCSession(OneToOne) configureOneToOneRateController:isUsingCamera:isUsingScreen:]";
        v44 = 1024;
        v45 = 813;
        v46 = 2112;
        v47 = v11;
        v48 = 2048;
        selfCopy2 = self;
        v28 = " [%s] %s:%d %@(%p) We cannot configure the OneToOne RateController as there is not an active connection yet";
        v29 = v36;
        v30 = 48;
        goto LABEL_53;
      }
    }
  }
}

- (unsigned)vcrcServerBagProfileNumber
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(VCSession *)self isOneToOneUsingVideo])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = [VCRateControlServerBag profileNumberKeyWithMode:v3];
  v5 = [GKSConnectivitySettings getVCRCSeverBagConfigWithKey:v4];
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v15 = 136316162;
      v16 = v8;
      v17 = 2080;
      v18 = "[VCSession(OneToOne) vcrcServerBagProfileNumber]";
      v19 = 1024;
      v20 = 864;
      v21 = 2112;
      v22 = v4;
      v23 = 1024;
      LODWORD(selfCopy) = 0;
      v10 = " [%s] %s:%d Could not find server bag config for key=%@. Using default value=%d";
      v11 = v9;
      v12 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v15 = 136316674;
      v16 = v13;
      v17 = 2080;
      v18 = "[VCSession(OneToOne) vcrcServerBagProfileNumber]";
      v19 = 1024;
      v20 = 864;
      v21 = 2112;
      v22 = v7;
      v23 = 2048;
      selfCopy = self;
      v25 = 2112;
      v26 = v4;
      v27 = 1024;
      v28 = 0;
      v10 = " [%s] %s:%d %@(%p) Could not find server bag config for key=%@. Using default value=%d";
      v11 = v14;
      v12 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    return 0;
  }

  return [v5 unsignedIntValue];
}

- (BOOL)addOneToOneParticipant:(id)participant
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 16, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession+OneToOne.m", 873], 0);
  if (![+[VCDefaults supportsOneToOneMode] sharedInstance]
  {
    [VCSession(OneToOne) addOneToOneParticipant:];
LABEL_36:
    v18 = buf[0];
    goto LABEL_26;
  }

  if ([(NSArray *)[(VCSession *)self remoteParticipants] count])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_25;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 136315650;
      v22 = v11;
      v23 = 2080;
      v24 = "[VCSession(OneToOne) addOneToOneParticipant:]";
      v25 = 1024;
      v26 = 877;
      v13 = " [%s] %s:%d Attempting to add another participant while in 1:1 mode!";
      v14 = v12;
      v15 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_25;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 136316162;
      v22 = v16;
      v23 = 2080;
      v24 = "[VCSession(OneToOne) addOneToOneParticipant:]";
      v25 = 1024;
      v26 = 877;
      v27 = 2112;
      v28 = v6;
      v29 = 2048;
      selfCopy = self;
      v13 = " [%s] %s:%d %@(%p) Attempting to add another participant while in 1:1 mode!";
      v14 = v17;
      v15 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_25:
    v18 = 0;
LABEL_26:
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__VCSession_OneToOne__addOneToOneParticipant___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = participant;
    block[6] = v5;
    dispatch_async(notificationQueue, block);
    if (v18)
    {
      [(VCSession *)self dispatchedStopWithError:v5];
    }

    return 0;
  }

  if (![(VCSession *)self negotiateOneToOneWithRemoteParticipant:participant])
  {
    [VCSession(OneToOne) addOneToOneParticipant:];
    goto LABEL_36;
  }

  if (![(VCSession *)self configureRemoteParticipantForOneToOne:participant])
  {
    [VCSession(OneToOne) addOneToOneParticipant:];
    goto LABEL_36;
  }

  if ((self->_state | 2) == 3)
  {
    [(VCSessionParticipantLocal *)self->_localParticipant suspendStreamsOnOneToOneModeSwitch];
    vcMediaQueue = self->_oneToOneSettings.vcMediaQueue;
    if (vcMediaQueue)
    {
      VCMediaQueue_FlushAllPackets(vcMediaQueue);
    }
  }

  if (![(VCSession *)self configureLocalParticipantWithOneToOneRemoteParticipant:participant isInitialConfiguration:1])
  {
    [VCSession(OneToOne) addOneToOneParticipant:];
    goto LABEL_36;
  }

  [(NSMutableArray *)self->_initializingParticipants addObject:participant];
  state = self->_state;
  if (state == 1)
  {
    [(NSMutableArray *)self->_startingParticipants addObject:participant];
    state = self->_state;
  }

  result = 1;
  if ((state | 2) == 3)
  {
    self->_isOneToOneInitiator = 1;
    [(VCTransportSession *)self->_transportSession setOneToOneModeEnabled:1 isInitiator:1];
    [(VCSession *)self startOneToOne];
    localParticipant = self->_localParticipant;
    if (self->_state == 1)
    {
      [(VCSessionParticipantLocal *)localParticipant start];
    }

    else
    {
      [(VCSessionParticipantLocal *)localParticipant resumeStreamsOnOneToOneModeSwitch];
    }

    return 1;
  }

  return result;
}

uint64_t __46__VCSession_OneToOne__addOneToOneParticipant___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = *(a1 + 48);

  return [v2 vcSession:v3 addParticipantWithID:v4 didSucceed:0 error:v5];
}

- (BOOL)completeTransitionToOneToOneEnabled:(BOOL)enabled
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled == enabled)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  enabledCopy = enabled;
  if (self->_oneToOneModeEnabled)
  {
    if (![(VCSession *)self switchFromOneToOneToMultiway])
    {
LABEL_5:
      v3 = 0;
      goto LABEL_8;
    }
  }

  else if (![(VCSession *)self switchFromMultiwayToOneToOne])
  {
    goto LABEL_5;
  }

  [(VCTransportSession *)self->_transportSession resetActiveConnection];
  v3 = 1;
LABEL_8:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = "Failed";
        v17 = 136316162;
        v18 = v7;
        v19 = 2080;
        v20 = "[VCSession(OneToOne) completeTransitionToOneToOneEnabled:]";
        if (v3)
        {
          v9 = "Successfully completed";
        }

        v21 = 1024;
        v22 = 937;
        v23 = 2080;
        v24 = v9;
        v25 = 1024;
        LODWORD(selfCopy) = enabledCopy;
        v10 = " [%s] %s:%d %s transition to oneToOneModeEnabled=%d";
        v11 = v8;
        v12 = 44;
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCSession *)self performSelector:sel_logPrefix];
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
        v15 = "Failed";
        v17 = 136316674;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCSession(OneToOne) completeTransitionToOneToOneEnabled:]";
        if (v3)
        {
          v15 = "Successfully completed";
        }

        v21 = 1024;
        v22 = 937;
        v23 = 2112;
        v24 = v6;
        v25 = 2048;
        selfCopy = self;
        v27 = 2080;
        v28 = v15;
        v29 = 1024;
        v30 = enabledCopy;
        v10 = " [%s] %s:%d %@(%p) %s transition to oneToOneModeEnabled=%d";
        v11 = v14;
        v12 = 64;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
      }
    }
  }

  return v3;
}

- (void)completionHandlerOneToOneEnabled:(BOOL)enabled didSucceed:(BOOL)succeed configurationDict:(id)dict
{
  v9 = *MEMORY[0x1E69E9840];
  sessionQueue = self->_sessionQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__VCSession_OneToOne__completionHandlerOneToOneEnabled_didSucceed_configurationDict___block_invoke;
  v6[3] = &unk_1E85F63F0;
  succeedCopy = succeed;
  enabledCopy = enabled;
  v6[4] = self;
  v6[5] = dict;
  dispatch_async(sessionQueue, v6);
}

void __85__VCSession_OneToOne__completionHandlerOneToOneEnabled_didSucceed_configurationDict___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __85__VCSession_OneToOne__completionHandlerOneToOneEnabled_didSucceed_configurationDict___block_invoke_cold_1();
        }
      }

      goto LABEL_24;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_24;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 49);
    *buf = 136316418;
    v24 = v10;
    v25 = 2080;
    v26 = "[VCSession(OneToOne) completionHandlerOneToOneEnabled:didSucceed:configurationDict:]_block_invoke";
    v27 = 1024;
    v28 = 944;
    v29 = 2112;
    v30 = v8;
    v31 = 2048;
    v32 = v12;
    v33 = 1024;
    v34 = v13;
    v14 = " [%s] %s:%d %@(%p) Failed to send oneToOneModeEnabled=%d message";
    goto LABEL_26;
  }

  if (([v3 completeTransitionToOneToOneEnabled:*(a1 + 49)] & 1) == 0)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __85__VCSession_OneToOne__completionHandlerOneToOneEnabled_didSucceed_configurationDict___block_invoke_cold_2();
        }
      }

      goto LABEL_24;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v15 = VRTraceErrorLogLevelToCSTR(), v11 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_24:
      v4 = 0;
      goto LABEL_4;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 49);
    *buf = 136316418;
    v24 = v15;
    v25 = 2080;
    v26 = "[VCSession(OneToOne) completionHandlerOneToOneEnabled:didSucceed:configurationDict:]_block_invoke";
    v27 = 1024;
    v28 = 947;
    v29 = 2112;
    v30 = v9;
    v31 = 2048;
    v32 = v16;
    v33 = 1024;
    v34 = v17;
    v14 = " [%s] %s:%d %@(%p) Failed to complete transition to oneToOneModeEnabled=%d";
LABEL_26:
    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v14, buf, 0x36u);
    goto LABEL_24;
  }

  v4 = 1;
LABEL_4:
  v5 = *(a1 + 49);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 32) + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__VCSession_OneToOne__completionHandlerOneToOneEnabled_didSucceed_configurationDict___block_invoke_70;
  block[3] = &unk_1E85F9738;
  v20 = v4;
  v21 = v5;
  v19 = v6;
  v22 = *(a1 + 48);
  dispatch_async(v7, block);
}

uint64_t __85__VCSession_OneToOne__completionHandlerOneToOneEnabled_didSucceed_configurationDict___block_invoke_70(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
  }

  else
  {
    if (*(a1 + 49))
    {
      v3 = 20;
    }

    else
    {
      v3 = 19;
    }

    v2 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", v3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession+OneToOne.m", 953], 0);
    [*(a1 + 32) reportSwitchingError:*(a1 + 49) errorEvent:v3];
  }

  if (*(a1 + 40))
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v6 = *(a1 + 49);
  v7 = *(a1 + 48);

  return [v4 vcSession:v5 oneToOneModeEnabled:v6 didSucceed:v7 error:v2];
}

- (void)dispatchedSetOneToOneModeEnabled:(BOOL)enabled isLocal:(BOOL)local configurationDict:(id)dict
{
  enabledCopy = enabled;
  v76 = *MEMORY[0x1E69E9840];
  if (self->_oneToOneModeEnabled == enabled)
  {
    goto LABEL_54;
  }

  localCopy = local;
  oneToOneRemoteParticipant = [(VCSession *)self oneToOneRemoteParticipant];
  v10 = oneToOneRemoteParticipant;
  if (oneToOneRemoteParticipant)
  {
    [(VCSessionParticipantRemote *)oneToOneRemoteParticipant capabilities];
    v12 = HIDWORD(v11) & 1;
  }

  else
  {
    LODWORD(v12) = 1;
  }

  if (enabledCopy && (self->_switchFromGFTToOneToOneEnabled & v12 & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_74;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      switchFromGFTToOneToOneEnabled = self->_switchFromGFTToOneToOneEnabled;
      *buf = 136316162;
      v63 = v38;
      v64 = 2080;
      v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
      v66 = 1024;
      v67 = 974;
      v68 = 1024;
      *v69 = switchFromGFTToOneToOneEnabled;
      *&v69[4] = 1024;
      *&v69[6] = v12;
      v41 = " [%s] %s:%d Switching from multiway to OneToOne enabled is not supported. switchFromGFTToOneToOneEnabled=%d remoteSupportsGFTSwitchToOneToOne=%d ";
      v42 = v39;
      v43 = 40;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v44 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v44 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_74;
      }

      v46 = VRTraceErrorLogLevelToCSTR();
      v47 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v48 = self->_switchFromGFTToOneToOneEnabled;
      *buf = 136316674;
      v63 = v46;
      v64 = 2080;
      v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
      v66 = 1024;
      v67 = 974;
      v68 = 2112;
      *v69 = v44;
      *&v69[8] = 2048;
      *v70 = self;
      *&v70[8] = 1024;
      v71 = v48;
      v72 = 1024;
      v73 = v12;
      v41 = " [%s] %s:%d %@(%p) Switching from multiway to OneToOne enabled is not supported. switchFromGFTToOneToOneEnabled=%d remoteSupportsGFTSwitchToOneToOne=%d ";
      v42 = v47;
      v43 = 60;
    }

    _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
    goto LABEL_74;
  }

  v13 = [(NSMutableDictionary *)self->_remoteParticipantsMapByServerID count];
  if (!enabledCopy || (v14 = v13, v13 < 2))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      oneToOneModeEnabled = self->_oneToOneModeEnabled;
      *buf = 136316418;
      v63 = v17;
      v64 = 2080;
      v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
      v66 = 1024;
      v67 = 987;
      v68 = 1024;
      *v69 = oneToOneModeEnabled;
      *&v69[4] = 1024;
      *&v69[6] = enabledCopy;
      *v70 = 1024;
      *&v70[2] = localCopy;
      v20 = " [%s] %s:%d Starting Switch _oneToOneModeEnabled=%d to oneToOneEnabled=%d isLocal=%d";
      v21 = v18;
      v22 = 46;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v16 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_26;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v30 = self->_oneToOneModeEnabled;
      *buf = 136316930;
      v63 = v28;
      v64 = 2080;
      v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
      v66 = 1024;
      v67 = 987;
      v68 = 2112;
      *v69 = v16;
      *&v69[8] = 2048;
      *v70 = self;
      *&v70[8] = 1024;
      v71 = v30;
      v72 = 1024;
      v73 = enabledCopy;
      v74 = 1024;
      LODWORD(v75) = localCopy;
      v20 = " [%s] %s:%d %@(%p) Starting Switch _oneToOneModeEnabled=%d to oneToOneEnabled=%d isLocal=%d";
      v21 = v29;
      v22 = 66;
    }

    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_26:
    if (enabledCopy && [(NSString *)[(VCSessionParticipant *)self->_localParticipant uuid] compare:[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] uuid]]== NSOrderedDescending)
    {
      self->_isOneToOneInitiator = 1;
    }

    if (localCopy)
    {
      self->_oneToOneSwitchStartTime = micro();
    }

    if ([(VCSession *)self isOneToOneUsingScreen]|| [(VCSession *)self isOneToOneRemoteParticipantUsingScreen])
    {
      [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setIsOneToOneScreenEnabled:1];
    }

    if (v10 && localCopy && [(VCSession *)self shouldSendControlChannelMessages])
    {
      v31 = objc_alloc_init(VCControlChannelMessageOptions);
      [(VCControlChannelMessageOptions *)v31 setDuplicateMessageOnServerLink:1];
      if (enabledCopy)
      {
        v32 = @"VCSessionMessageOneToOneEnabled";
      }

      else
      {
        v32 = @"VCSessionMessageOneToOneDisabled";
      }

      sessionMessaging = self->_sessionMessaging;
      idsParticipantID = [(VCSessionParticipant *)v10 idsParticipantID];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __82__VCSession_OneToOne__dispatchedSetOneToOneModeEnabled_isLocal_configurationDict___block_invoke;
      v60[3] = &unk_1E85F9760;
      v61 = enabledCopy;
      v60[4] = self;
      v60[5] = dict;
      if ([(VCSessionMessaging *)sessionMessaging sendReliableMessage:v32 withTopic:@"VCSessionMessageTopicOneToOneEnabledState" participantID:idsParticipantID withOptions:v31 completion:v60])
      {
        return;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:];
          }
        }

        goto LABEL_74;
      }

      if (objc_opt_respondsToSelector())
      {
        v45 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v45 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (v49 = VRTraceErrorLogLevelToCSTR(), v50 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
LABEL_74:
        v37 = 0;
        goto LABEL_75;
      }

      *buf = 136316674;
      v63 = v49;
      v64 = 2080;
      v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
      v66 = 1024;
      v67 = 1008;
      v68 = 2112;
      *v69 = v45;
      *&v69[8] = 2048;
      *v70 = self;
      *&v70[8] = 1024;
      v71 = enabledCopy;
      v72 = 1024;
      v73 = 1;
      v51 = " [%s] %s:%d %@(%p) Failed to send the oneToOneEnabledState message oneToOneEnabled=%d isLocal=%d";
      v52 = v50;
      goto LABEL_72;
    }

    if (![(VCSession *)self completeTransitionToOneToOneEnabled:enabledCopy])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_74;
        }

        v54 = VRTraceErrorLogLevelToCSTR();
        v55 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_74;
        }

        *buf = 136316162;
        v63 = v54;
        v64 = 2080;
        v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
        v66 = 1024;
        v67 = 1011;
        v68 = 1024;
        *v69 = enabledCopy;
        *&v69[4] = 1024;
        *&v69[6] = localCopy;
        v51 = " [%s] %s:%d Failed to complete the switch to oneToOneEnabled=%d isLocal=%d";
        v52 = v55;
        v53 = 40;
        goto LABEL_73;
      }

      if (objc_opt_respondsToSelector())
      {
        v56 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v56 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_74;
      }

      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }

      *buf = 136316674;
      v63 = v57;
      v64 = 2080;
      v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
      v66 = 1024;
      v67 = 1011;
      v68 = 2112;
      *v69 = v56;
      *&v69[8] = 2048;
      *v70 = self;
      *&v70[8] = 1024;
      v71 = enabledCopy;
      v72 = 1024;
      v73 = localCopy;
      v51 = " [%s] %s:%d %@(%p) Failed to complete the switch to oneToOneEnabled=%d isLocal=%d";
      v52 = v58;
LABEL_72:
      v53 = 60;
LABEL_73:
      _os_log_error_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);
      goto LABEL_74;
    }

LABEL_54:
    v37 = 1;
LABEL_75:
    [(VCSession(OneToOne) *)self dispatchedSetOneToOneModeEnabled:v59 isLocal:v37 configurationDict:enabledCopy, dict];
    return;
  }

  [(VCObject *)self reportingAgent];
  reportingSymptom();
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v63 = v23;
        v64 = 2080;
        v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
        v66 = 1024;
        v67 = 984;
        v68 = 1024;
        *v69 = 0;
        *&v69[4] = 1024;
        *&v69[6] = enabledCopy;
        *v70 = 2048;
        *&v70[2] = v14;
        v25 = " [%s] %s:%d Switch to U+1 requested at improper time - canSwitch=%{BOOL}d, oneToOneModeEnabled=%{BOOL}d, remoteParticipantCount=%lu";
        v26 = v24;
        v27 = 50;
        goto LABEL_49;
      }
    }

    goto LABEL_51;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(VCSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v15 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 5 || (v35 = VRTraceErrorLogLevelToCSTR(), v36 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
  {
LABEL_51:
    if (!localCopy)
    {
      return;
    }

    goto LABEL_74;
  }

  *buf = 136316930;
  v63 = v35;
  v64 = 2080;
  v65 = "[VCSession(OneToOne) dispatchedSetOneToOneModeEnabled:isLocal:configurationDict:]";
  v66 = 1024;
  v67 = 984;
  v68 = 2112;
  *v69 = v15;
  *&v69[8] = 2048;
  *v70 = self;
  *&v70[8] = 1024;
  v71 = 0;
  v72 = 1024;
  v73 = enabledCopy;
  v74 = 2048;
  v75 = v14;
  v25 = " [%s] %s:%d %@(%p) Switch to U+1 requested at improper time - canSwitch=%{BOOL}d, oneToOneModeEnabled=%{BOOL}d, remoteParticipantCount=%lu";
  v26 = v36;
  v27 = 70;
LABEL_49:
  _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
  if (localCopy)
  {
    goto LABEL_74;
  }
}

uint64_t __82__VCSession_OneToOne__dispatchedSetOneToOneModeEnabled_isLocal_configurationDict___block_invoke_82(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
  }

  else
  {
    if (*(a1 + 49))
    {
      v3 = 20;
    }

    else
    {
      v3 = 19;
    }

    v2 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", v3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession+OneToOne.m", 1019], 0);
    [*(a1 + 32) reportSwitchingError:*(a1 + 49) errorEvent:v3];
  }

  if (*(a1 + 40))
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v6 = *(a1 + 49);
  v7 = *(a1 + 48);

  return [v4 vcSession:v5 oneToOneModeEnabled:v6 didSucceed:v7 error:v2];
}

- (void)applyNegotiatedOneToOneFaceTimeSettings
{
  localParticipant = self->_localParticipant;
  if (localParticipant)
  {
    [(VCSessionParticipantLocal *)localParticipant oneToOneSettings];
    v4 = *(&v6 + 1);
    localParticipant = self->_localParticipant;
  }

  else
  {
    v4 = 0;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  [v4 setRemoteSwitches:-[VCMediaNegotiatorResultsFaceTimeSettings faceTimeSwitches](-[VCSessionMediaNegotiator negotiatedFaceTimeSettings](-[VCSessionParticipant mediaNegotiator](localParticipant isCaller:{"mediaNegotiator", v5, v6, v7), "negotiatedFaceTimeSettings"), "faceTimeSwitches"), self->_isOneToOneInitiator}];
  [v4 negotiateSwitchesForIsCaller:self->_isOneToOneInitiator];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setRemoteLinkProbingCapabilityVersion:[(VCMediaNegotiatorResultsFaceTimeSettings *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedFaceTimeSettings] remoteLinkProbingCapabilityVersion]];
}

- (void)setupOneToOneABTesting
{
  v138 = *MEMORY[0x1E69E9840];
  [(VCSession *)self applyNegotiatedOneToOneFaceTimeSettings];
  localParticipant = self->_localParticipant;
  if (localParticipant)
  {
    [(VCSessionParticipantLocal *)localParticipant oneToOneSettings];
    v4 = *(&v124 + 1);
  }

  else
  {
    v4 = 0;
    v124 = 0u;
    v125 = 0u;
    v123 = 0u;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v5 = v4 ? [objc_msgSend(v4 "description")] : "<nil>";
    asprintf(&__str, "A/B testing: %s", v5);
    if (__str)
    {
      v120 = v4;
      __lasts = 0;
      v6 = strtok_r(__str, "\n", &__lasts);
      v7 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v127 = v8;
            v128 = 2080;
            v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
            v130 = 1024;
            v131 = 1040;
            v132 = 2080;
            v133 = "[VCSession(OneToOne) setupOneToOneABTesting]";
            v134 = 2080;
            selfCopy11 = v6;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v6 = strtok_r(0, "\n", &__lasts);
      }

      while (v6);
      free(__str);
      v4 = v120;
    }
  }

  [v4 negotiatedSwitches];
  [v4 remoteSwitches];
  [(VCMediaNegotiatorResultsFaceTimeSettings *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedFaceTimeSettings] remoteFaceTimeSwitchesAvailable];
  [(VCSession *)self vcrcServerBagProfileNumber];
  [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] primaryConnHealthAllowedDelay];
  reportingConnecting();
  v10 = [v4 isSwitchEnabled:0x10000];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v127 = v12;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1046;
        v132 = 1024;
        LODWORD(v133) = v10;
        v14 = " [%s] %s:%d Load switch iRATMetricsEnabled %d";
        v15 = v13;
        v16 = 34;
LABEL_25:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCSession *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v127 = v17;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1046;
        v132 = 2112;
        v133 = v11;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = v10;
        v14 = " [%s] %s:%d %@(%p) Load switch iRATMetricsEnabled %d";
        v15 = v18;
        v16 = 54;
        goto LABEL_25;
      }
    }
  }

  v19 = [v4 isSwitchEnabled:128];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v127 = v21;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1048;
        v132 = 1024;
        LODWORD(v133) = v19;
        v23 = " [%s] %s:%d Load switch iRATRtpEnabled %d";
        v24 = v22;
        v25 = 34;
LABEL_36:
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v127 = v26;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1048;
        v132 = 2112;
        v133 = v20;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = v19;
        v23 = " [%s] %s:%d %@(%p) Load switch iRATRtpEnabled %d";
        v24 = v27;
        v25 = 54;
        goto LABEL_36;
      }
    }
  }

  v28 = [v4 isSwitchEnabled:256];
  if (objc_opt_class() == self)
  {
    v29 = v4;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v127 = v31;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1050;
        v132 = 1024;
        LODWORD(v133) = v28;
        v33 = " [%s] %s:%d Load switch preWarmCellEnabled %d";
        v34 = v32;
        v35 = 34;
LABEL_47:
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
      }
    }
  }

  else
  {
    v29 = v4;
    if (objc_opt_respondsToSelector())
    {
      v30 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v30 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v127 = v36;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1050;
        v132 = 2112;
        v133 = v30;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = v28;
        v33 = " [%s] %s:%d %@(%p) Load switch preWarmCellEnabled %d";
        v34 = v37;
        v35 = 54;
        goto LABEL_47;
      }
    }
  }

  v38 = 2852126720;
  if (v28)
  {
    v38 = 2852192256;
  }

  v39 = 256;
  if (!v19)
  {
    v39 = 0;
  }

  [(VCNetworkFeedbackController *)self->_feedbackController updateMetricsConfig:v39 | v10 | v38];
  v40 = [v29 isSwitchEnabled:0x10000000];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v127 = v42;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1054;
        v132 = 1024;
        LODWORD(v133) = v40;
        v44 = " [%s] %s:%d Load switch wrmRSSIThresholdEnabled %d";
        v45 = v43;
        v46 = 34;
LABEL_62:
        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, v44, buf, v46);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v41 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v41 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v127 = v47;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1054;
        v132 = 2112;
        v133 = v41;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = v40;
        v44 = " [%s] %s:%d %@(%p) Load switch wrmRSSIThresholdEnabled %d";
        v45 = v48;
        v46 = 54;
        goto LABEL_62;
      }
    }
  }

  [(VCNetworkFeedbackController *)self->_feedbackController setRSSIThresholdEnabled:v40];
  -[VCConnectionManager setPreferRelayOverP2P:reason:](-[VCTransportSession connectionManager](self->_transportSession, "connectionManager"), "setPreferRelayOverP2P:reason:", [v29 isSwitchEnabled:1], 1);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v50 = VRTraceErrorLogLevelToCSTR();
      v51 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        preferRelayOverP2PEnabled = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] preferRelayOverP2PEnabled];
        *buf = 136315906;
        v127 = v50;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1058;
        v132 = 1024;
        LODWORD(v133) = preferRelayOverP2PEnabled;
        v53 = " [%s] %s:%d Load switch preferRelayOverP2P %d";
        v54 = v51;
        v55 = 34;
LABEL_73:
        _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, v53, buf, v55);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v49 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v49 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v56 = VRTraceErrorLogLevelToCSTR();
      v57 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        preferRelayOverP2PEnabled2 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] preferRelayOverP2PEnabled];
        *buf = 136316418;
        v127 = v56;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1058;
        v132 = 2112;
        v133 = v49;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = preferRelayOverP2PEnabled2;
        v53 = " [%s] %s:%d %@(%p) Load switch preferRelayOverP2P %d";
        v54 = v57;
        v55 = 54;
        goto LABEL_73;
      }
    }
  }

  -[VCConnectionManager setFastMediaDuplicationEnabled:](-[VCTransportSession connectionManager](self->_transportSession, "connectionManager"), "setFastMediaDuplicationEnabled:", [v29 isSwitchEnabled:64]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v60 = VRTraceErrorLogLevelToCSTR();
      v61 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        fastMediaDuplicationEnabled = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] fastMediaDuplicationEnabled];
        *buf = 136315906;
        v127 = v60;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1060;
        v132 = 1024;
        LODWORD(v133) = fastMediaDuplicationEnabled;
        v63 = " [%s] %s:%d Load switch fastMediaDuplicationEnabled %d";
        v64 = v61;
        v65 = 34;
LABEL_84:
        _os_log_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_DEFAULT, v63, buf, v65);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v59 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v59 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v66 = VRTraceErrorLogLevelToCSTR();
      v67 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        fastMediaDuplicationEnabled2 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] fastMediaDuplicationEnabled];
        *buf = 136316418;
        v127 = v66;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1060;
        v132 = 2112;
        v133 = v59;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = fastMediaDuplicationEnabled2;
        v63 = " [%s] %s:%d %@(%p) Load switch fastMediaDuplicationEnabled %d";
        v64 = v67;
        v65 = 54;
        goto LABEL_84;
      }
    }
  }

  -[VCConnectionManager setDuplicateImportantPktsEnabled:](-[VCTransportSession connectionManager](self->_transportSession, "connectionManager"), "setDuplicateImportantPktsEnabled:", [v29 isSwitchEnabled:512]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v70 = VRTraceErrorLogLevelToCSTR();
      v71 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        duplicateImportantPktsEnabled = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] duplicateImportantPktsEnabled];
        *buf = 136315906;
        v127 = v70;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1062;
        v132 = 1024;
        LODWORD(v133) = duplicateImportantPktsEnabled;
        v73 = " [%s] %s:%d Load switch duplicateImportantPktsEnabled %d";
        v74 = v71;
        v75 = 34;
LABEL_95:
        _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, v73, buf, v75);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v69 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v69 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v76 = VRTraceErrorLogLevelToCSTR();
      v77 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        duplicateImportantPktsEnabled2 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] duplicateImportantPktsEnabled];
        *buf = 136316418;
        v127 = v76;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1062;
        v132 = 2112;
        v133 = v69;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = duplicateImportantPktsEnabled2;
        v73 = " [%s] %s:%d %@(%p) Load switch duplicateImportantPktsEnabled %d";
        v74 = v77;
        v75 = 54;
        goto LABEL_95;
      }
    }
  }

  -[VCConnectionManager setLowNetworkModeEnabled:](-[VCTransportSession connectionManager](self->_transportSession, "connectionManager"), "setLowNetworkModeEnabled:", [v29 isSwitchEnabled:0x1000000]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v80 = VRTraceErrorLogLevelToCSTR();
      v81 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        lowNetworkModeEnabled = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] lowNetworkModeEnabled];
        *buf = 136315906;
        v127 = v80;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1064;
        v132 = 1024;
        LODWORD(v133) = lowNetworkModeEnabled;
        v83 = " [%s] %s:%d Load switch lowNetworkModeEnabled %d";
        v84 = v81;
        v85 = 34;
LABEL_106:
        _os_log_impl(&dword_1DB56E000, v84, OS_LOG_TYPE_DEFAULT, v83, buf, v85);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v79 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v79 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v86 = VRTraceErrorLogLevelToCSTR();
      v87 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        lowNetworkModeEnabled2 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] lowNetworkModeEnabled];
        *buf = 136316418;
        v127 = v86;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1064;
        v132 = 2112;
        v133 = v79;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = lowNetworkModeEnabled2;
        v83 = " [%s] %s:%d %@(%p) Load switch lowNetworkModeEnabled %d";
        v84 = v87;
        v85 = 54;
        goto LABEL_106;
      }
    }
  }

  -[VCConnectionManager setDuplicationEnhancementEnabled:](-[VCTransportSession connectionManager](self->_transportSession, "connectionManager"), "setDuplicationEnhancementEnabled:", [v29 isLocalSwitchEnabled:0x2000000]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v90 = VRTraceErrorLogLevelToCSTR();
      v91 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        duplicationEnhancementEnabled = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] duplicationEnhancementEnabled];
        *buf = 136315906;
        v127 = v90;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1066;
        v132 = 1024;
        LODWORD(v133) = duplicationEnhancementEnabled;
        v93 = " [%s] %s:%d Load switch duplicationEnhancementEnabled %d";
        v94 = v91;
        v95 = 34;
LABEL_117:
        _os_log_impl(&dword_1DB56E000, v94, OS_LOG_TYPE_DEFAULT, v93, buf, v95);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v89 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v89 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v96 = VRTraceErrorLogLevelToCSTR();
      v97 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        duplicationEnhancementEnabled2 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] duplicationEnhancementEnabled];
        *buf = 136316418;
        v127 = v96;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1066;
        v132 = 2112;
        v133 = v89;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = duplicationEnhancementEnabled2;
        v93 = " [%s] %s:%d %@(%p) Load switch duplicationEnhancementEnabled %d";
        v94 = v97;
        v95 = 54;
        goto LABEL_117;
      }
    }
  }

  -[VCConnectionManager setiRATDuplicationEnabled:](-[VCTransportSession connectionManager](self->_transportSession, "connectionManager"), "setiRATDuplicationEnabled:", [v29 isSwitchEnabled:0x8000000]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v100 = VRTraceErrorLogLevelToCSTR();
      v101 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        iRATDuplicationEnabled = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] iRATDuplicationEnabled];
        *buf = 136315906;
        v127 = v100;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1068;
        v132 = 1024;
        LODWORD(v133) = iRATDuplicationEnabled;
        v103 = " [%s] %s:%d Load switch iRATDuplicationEnabled %d";
        v104 = v101;
        v105 = 34;
LABEL_128:
        _os_log_impl(&dword_1DB56E000, v104, OS_LOG_TYPE_DEFAULT, v103, buf, v105);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v99 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v99 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v106 = VRTraceErrorLogLevelToCSTR();
      v107 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        iRATDuplicationEnabled2 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] iRATDuplicationEnabled];
        *buf = 136316418;
        v127 = v106;
        v128 = 2080;
        v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
        v130 = 1024;
        v131 = 1068;
        v132 = 2112;
        v133 = v99;
        v134 = 2048;
        selfCopy11 = self;
        v136 = 1024;
        v137 = iRATDuplicationEnabled2;
        v103 = " [%s] %s:%d %@(%p) Load switch iRATDuplicationEnabled %d";
        v104 = v107;
        v105 = 54;
        goto LABEL_128;
      }
    }
  }

  -[VCConnectionManager setUseMediaDrivenDuplication:](-[VCTransportSession connectionManager](self->_transportSession, "connectionManager"), "setUseMediaDrivenDuplication:", [v29 isSwitchEnabled:0x20000000]);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_140;
    }

    v110 = VRTraceErrorLogLevelToCSTR();
    v111 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_140;
    }

    useMediaDrivenDuplication = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] useMediaDrivenDuplication];
    *buf = 136315906;
    v127 = v110;
    v128 = 2080;
    v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
    v130 = 1024;
    v131 = 1070;
    v132 = 1024;
    LODWORD(v133) = useMediaDrivenDuplication;
    v113 = " [%s] %s:%d Load switch useMediaDrivenDuplication %d";
    v114 = v111;
    v115 = 34;
    goto LABEL_139;
  }

  if (objc_opt_respondsToSelector())
  {
    v109 = [(VCSession *)self performSelector:sel_logPrefix];
  }

  else
  {
    v109 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v116 = VRTraceErrorLogLevelToCSTR();
    v117 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      useMediaDrivenDuplication2 = [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] useMediaDrivenDuplication];
      *buf = 136316418;
      v127 = v116;
      v128 = 2080;
      v129 = "[VCSession(OneToOne) setupOneToOneABTesting]";
      v130 = 1024;
      v131 = 1070;
      v132 = 2112;
      v133 = v109;
      v134 = 2048;
      selfCopy11 = self;
      v136 = 1024;
      v137 = useMediaDrivenDuplication2;
      v113 = " [%s] %s:%d %@(%p) Load switch useMediaDrivenDuplication %d";
      v114 = v117;
      v115 = 54;
LABEL_139:
      _os_log_impl(&dword_1DB56E000, v114, OS_LOG_TYPE_DEFAULT, v113, buf, v115);
    }
  }

LABEL_140:
  [(VCSessionParticipantRemote *)[(VCSession *)self oneToOneRemoteParticipant] capabilities];
  if ((v119 & 0x100000000) != 0)
  {
    [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] applyLinkRecommendation];
  }
}

- (void)startOneToOne
{
  v24 = *MEMORY[0x1E69E9840];
  p_oneToOneSettings = &self->_oneToOneSettings;
  if (self->_oneToOneSettings.receivedFirstConnection)
  {
    if ([(VCSession *)self oneToOneRemoteParticipant])
    {
      if (p_oneToOneSettings->startedOneToOne)
      {
        [(VCSession(OneToOne) *)self startOneToOne];
      }

      else
      {
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSession-startOneToOne");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v4 = VRTraceErrorLogLevelToCSTR();
          v5 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v17 = v4;
            v18 = 2080;
            v19 = "[VCSession(OneToOne) startOneToOne]";
            v20 = 1024;
            v21 = 1082;
            v22 = 2048;
            selfCopy = self;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCSession-startOneToOne (%p)", buf, 0x26u);
          }
        }

        [(VCSession *)self setupOneToOneABTesting];
        [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] reportFirstActiveConnectionOneToOne:self->_currentActiveConnection remoteOSVersion:[(VCCallInfoBlob *)[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] callInfoBlob] osVersion] redState:[(VCMediaNegotiatorResultsAudio *)[(VCSessionMediaNegotiator *)[(VCSessionParticipant *)self->_localParticipant mediaNegotiator] negotiatedAudioSettings] redPayload]== 20 isAudioOnly:[(VCSession *)self isOneToOneUsingVideo]^ 1];
        if (VCOverlayManager_isOverlayEnabled())
        {
          [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setOverlayToken:[(VCSessionParticipant *)[(VCSession *)self oneToOneRemoteParticipant] participantVideoToken]];
        }

        [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] setStartConnectionHealthMonitoring:1];
        if (VCReporting_GetClientType() == self->_reportingClientType)
        {
          [(VCSession *)self reportingSetUserInfo];
        }

        else
        {
          [(VCSession *)self startReportingForOneToOneEnabled:1 withPayload:0];
          [(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] reportCurrentPrimaryConnection];
          [(VCSession *)self reportExistingParticipantsAnew];
        }

        [(VCSession *)self isOneToOneUsingVideo];
        [VCSession deviceRoleForSessionMode:[(VCSessionConfiguration *)self->_configuration sessionMode]];
        reportingModeRoleTransportLog();
        [(VCSession *)self startRateControllerOneToOne];
        MediaQueue_Start();
        VCMediaQueue_Start(p_oneToOneSettings->vcMediaQueue);
        [(VCTransportSession *)self->_transportSession setOneToOneModeEnabled:1 isInitiator:self->_isOneToOneInitiator];
        [(VCSessionParticipantLocal *)self->_localParticipant handleActiveConnectionChange:self->_currentActiveConnection];
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        remoteParticipants = [(VCSession *)self remoteParticipants];
        v7 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v12 objects:v11 count:16];
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
                objc_enumerationMutation(remoteParticipants);
              }

              [*(*(&v12 + 1) + 8 * v10++) handleActiveConnectionChange:self->_currentActiveConnection];
            }

            while (v8 != v10);
            v8 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v12 objects:v11 count:16];
          }

          while (v8);
        }

        p_oneToOneSettings->startedOneToOne = 1;
      }
    }

    else
    {
      [(VCSession(OneToOne) *)self startOneToOne];
    }
  }

  else
  {
    [(VCSession(OneToOne) *)self startOneToOne];
  }
}

uint64_t __56__VCSession_OneToOne__setIsOneToOneRemoteMediaStalling___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCSession(OneToOne) setIsOneToOneRemoteMediaStalling:]_block_invoke";
      v10 = 1024;
      v11 = 1118;
      v12 = 1024;
      v13 = 1118;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession+OneToOne.m:%d: [%p] OneToOne session should reconnect (ids reinit)", &v6, 0x2Cu);
    }
  }

  return [objc_msgSend(*(a1 + 32) "delegate")];
}

- (void)reportActiveConnectionOneToOne
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_oneToOneSettings.receivedFirstConnection)
  {
    connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];
    currentActiveConnection = self->_currentActiveConnection;
    v5 = [(VCSession *)self isOneToOneUsingVideo]^ 1;

    [(VCConnectionManager *)connectionManager reportActiveConnectionOneToOne:currentActiveConnection isAudioOnly:v5];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCSession(OneToOne) reportActiveConnectionOneToOne]";
      v12 = 1024;
      v13 = 1128;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d We haven't yet received an active connection", &v8, 0x1Cu);
    }
  }
}

- (void)notifyDelegateActiveConnectionDidChange
{
  v10[7] = *MEMORY[0x1E69E9840];
  v3 = VCConnectionManager_CopyConnectionForQuality([(VCTransportSession *)self->_transportSession connectionManager], 1);
  firstObject = [(NSArray *)[(VCSession *)self remoteParticipants] firstObject];
  if (v3)
  {
    v5 = firstObject;
    if (VCConnection_IsRelay(v3))
    {
      v6 = @"RLY-";
    }

    else
    {
      v6 = @"P2P-";
    }

    if ([(VCConnectionManager *)[(VCTransportSession *)self->_transportSession connectionManager] isDuplicationEnabled])
    {
      v7 = @"D-";
    }

    else
    {
      v7 = @"P-";
    }

    v8 = [(__CFString *)v7 stringByAppendingString:v6];
    notificationQueue = self->_notificationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__VCSession_OneToOne__notifyDelegateActiveConnectionDidChange__block_invoke;
    v10[3] = &unk_1E85F3E30;
    v10[4] = v8;
    v10[5] = v3;
    v10[6] = v5;
    dispatch_async(notificationQueue, v10);
    CFRelease(v3);
  }
}

uint64_t __62__VCSession_OneToOne__notifyDelegateActiveConnectionDidChange__block_invoke(id *a1)
{
  v2 = VCRemoteVideoManager_DefaultManager();
  v3 = [a1[4] stringByAppendingString:{objc_msgSend(a1[5], "localInterfaceTypeString")}];
  v4 = [a1[4] stringByAppendingString:{objc_msgSend(a1[5], "remoteInterfaceTypeString")}];
  v5 = [a1[6] participantVideoToken];

  return [v2 connectionDidChangeWithLocalInterfaceType:v3 remoteInterfaceType:v4 streamToken:v5];
}

- (void)setLinkTypeForFeedbackController:(id)controller withActiveConnection:(id)connection
{
  if (VCConnection_IsRelay(connection))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  VCRateControlFeedbackController_UpdateTxLinkType(controller, v5);
}

- (void)handleActiveConnectionChangeForOneToOne:(id)one
{
  v15 = *MEMORY[0x1E69E9840];
  self->_maxConnectionMTU = [one updateMaxConnectionMTU:self->_maxConnectionMTU];
  [(VCSession *)self configureOneToOneRateController:one];
  p_oneToOneSettings = &self->_oneToOneSettings;
  receivedFirstConnection = self->_oneToOneSettings.receivedFirstConnection;
  self->_oneToOneSettings.receivedFirstConnection = one != 0;
  if (one && !receivedFirstConnection && [(NSArray *)[(VCSession *)self remoteParticipants] count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = "[VCSession(OneToOne) handleActiveConnectionChangeForOneToOne:]";
        v13 = 1024;
        v14 = 1163;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d We have received the first active connection, we can now start OneToOne", &v9, 0x1Cu);
      }
    }

    [(VCSession *)self startOneToOne];
  }

  else if (self->_isReconnectPending)
  {
    [(VCTransportSession *)self->_transportSession setOneToOneModeEnabled:1 isInitiator:self->_isOneToOneInitiator];
    self->_isReconnectPending = 0;
    reportingGenericEvent();
  }

  else
  {
    [(VCSession *)self reportActiveConnectionOneToOne];
  }

  if (VCConnection_IsLocalOnCellular(one))
  {
    [(VCSessionParticipant *)self->_localParticipant setBasebandCongestionDetector:[(AVCRateController *)p_oneToOneSettings->rateController basebandCongestionDetector]];
  }

  [(VCSession *)self setLinkTypeForFeedbackController:[(AVCRateController *)p_oneToOneSettings->rateController feedbackController] withActiveConnection:one];
  [(VCSession *)self notifyDelegateActiveConnectionDidChange];
}

- (void)configureOneToOneReportingOnVideoEnabled
{
  if ([(VCSession *)self isOneToOneUsingVideo])
  {
    [VCSession deviceRoleForSessionMode:[(VCSessionConfiguration *)self->_configuration sessionMode]];
    reportingModeRoleTransportLog();
    connectionManager = [(VCTransportSession *)self->_transportSession connectionManager];
    currentActiveConnection = self->_currentActiveConnection;

    [(VCConnectionManager *)connectionManager reportActiveConnectionOneToOne:currentActiveConnection isAudioOnly:0];
  }
}

- (void)validateVCRCMLEnrollment
{
  if (!self->_vcrcMLEnrollment)
  {
    [(VCObject *)self reportingAgent];

    reportingSymptom();
  }
}

- (void)createSessionMessaging
{
  if (!self->_sessionMessaging)
  {
    self->_controlChannel = [[VCControlChannelMultiWay alloc] initWithTransportSessionID:self->_transportSessionID reportingAgent:self->super._reportingAgent];
    self->_sessionMessaging = [[VCSessionMessaging alloc] initWithControlChannel:self->_controlChannel remoteVersion:0];
    [(VCSession *)self setupAudioEnabledMessages];
    [(VCSession *)self setupVideoEnabledMessages];
    [(VCSession *)self setupMediaStateUpdateMessage];
    [(VCSession *)self setupStreamGroupStateFetchMessage];
    [(VCSession *)self setupAudioPausedMessages];
    [(VCSession *)self setupVideoPausedMessages];
    [(VCSession *)self setupKeyFrameGenerationMessages];
    [(VCSession *)self setupSymptomEnabledMessages];
    [(VCSession *)self setupWRMAlertUpdateMessage];
    [(VCSession *)self setupMomentsMessages];
    [(VCSession *)self setupPreferredInterfaceMessage];
    [(VCSession *)self setupPiPStateChangeMessage];
    [(VCSession *)self setupDisconnectMessage];
    [(VCSession *)self setupCellTechChangeMessages];
    [(VCSession *)self setupOneToOneEnabledMessages];
    [(VCSession *)self setupLinkConstrainsChangedMessages];
    [(VCSession *)self setupMediaQualityDegradedMessage];
    [(VCSession *)self setupNetworkCapabilityMessage];
    [(VCSession *)self setupNetworkQualityDegradedMessage];
    [(VCSession *)self setupReactionMessages];
    [(VCSession *)self setupDeviceStateMessage];

    [(VCSession *)self setUpDeviceOrientationMessage];
  }
}

- (void)destroySessionMessaging
{
  [(VCSession *)self stopSessionMessaging];

  self->_sessionMessaging = 0;
  self->_controlChannel = 0;
}

- (void)startSessionMessaging
{
  [(VCControlChannelMultiWay *)self->_controlChannel start];
  sessionMessaging = self->_sessionMessaging;

  [(VCSessionMessaging *)sessionMessaging startMessaging];
}

- (void)stopSessionMessaging
{
  [(VCSessionMessaging *)self->_sessionMessaging stopMessaging];
  [(VCControlChannelMultiWay *)self->_controlChannel flushActiveMessages];
  [(VCControlChannelMultiWay *)self->_controlChannel removeAllActiveParticipants];
  controlChannel = self->_controlChannel;

  [(VCControlChannelMultiWay *)controlChannel stop];
}

- (void)broadcastMessage:(id)message withTopic:(id)topic
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  remoteParticipants = [(VCSession *)self remoteParticipants];
  v8 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        -[VCSessionMessaging sendMessage:withTopic:participantID:](self->_sessionMessaging, "sendMessage:withTopic:participantID:", message, topic, [*(*(&v13 + 1) + 8 * v11++) idsParticipantID]);
      }

      while (v9 != v11);
      v9 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (void)broadcastMessageDictionary:(id)dictionary withTopic:(id)topic
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  remoteParticipants = [(VCSession *)self remoteParticipants];
  v8 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(remoteParticipants);
        }

        -[VCSessionMessaging sendMessageDictionary:withTopic:participantID:](self->_sessionMessaging, "sendMessageDictionary:withTopic:participantID:", dictionary, topic, [*(*(&v13 + 1) + 8 * v11++) idsParticipantID]);
      }

      while (v9 != v11);
      v9 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (void)broadcastSingleStateMessage:(id)message withTopic:(id)topic
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  remoteParticipants = [(VCSession *)self remoteParticipants];
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

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 capabilities];
        if (v13 == 1)
        {
          -[VCSessionMessaging sendMessage:withTopic:participantID:](self->_sessionMessaging, "sendMessage:withTopic:participantID:", message, topic, [v12 idsParticipantID]);
        }
      }

      v9 = [(NSArray *)remoteParticipants countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }
}

- (void)setupAudioEnabledMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__VCSession_Messaging__setupAudioEnabledMessages__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicAudioEnabledState" associatedStrings:&unk_1F579E130 allowConcurrent:0 receiveHandler:v5];
}

void __49__VCSession_Messaging__setupAudioEnabledMessages__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316930;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCSession(Messaging) setupAudioEnabledMessages]_block_invoke";
      v14 = 1024;
      v15 = 148;
      v16 = 2112;
      v17 = [v6 uuid];
      v18 = 1024;
      v19 = [v6 transportSessionID];
      v20 = 2112;
      v21 = a4;
      v22 = 2112;
      v23 = [v7 uuid];
      v24 = 2080;
      v25 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID[%u] participantId:[%@] participantUUID[%@] receives message:%s", &v10, 0x4Au);
    }
  }

  if (v7)
  {
    [v7 setRemoteAudioEnabled:{objc_msgSend(a2, "isEqualToString:", @"VCSessionMessageAudioEnabled"}];
  }
}

- (void)setupVideoEnabledMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__VCSession_Messaging__setupVideoEnabledMessages__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicVideoEnabledStateb" associatedStrings:&unk_1F579E148 allowConcurrent:0 receiveHandler:v5];
}

void __49__VCSession_Messaging__setupVideoEnabledMessages__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316930;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCSession(Messaging) setupVideoEnabledMessages]_block_invoke";
      v14 = 1024;
      v15 = 163;
      v16 = 2112;
      v17 = [v6 uuid];
      v18 = 1024;
      v19 = [v6 transportSessionID];
      v20 = 2112;
      v21 = a4;
      v22 = 2112;
      v23 = [v7 uuid];
      v24 = 2080;
      v25 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID[%u] participantId:[%@] participantUUID[%@] receives message:%s", &v10, 0x4Au);
    }
  }

  if (v7)
  {
    [v7 setRemoteVideoEnabled:{objc_msgSend(a2, "isEqualToString:", @"VCSessionMessageVideoEnabled"}];
  }
}

- (void)setupStreamGroupStateFetchMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__VCSession_Messaging__setupStreamGroupStateFetchMessage__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicFetchStreamGroupsState" associatedStrings:0 allowConcurrent:0 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

void __57__VCSession_Messaging__setupStreamGroupStateFetchMessage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
  if (a2)
  {
    v8 = v7;
    if (v7)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v6)
      {
        if (ErrorLogLevelForModule >= 6)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v12 = 136316930;
            v13 = v10;
            v14 = 2080;
            v15 = "[VCSession(Messaging) setupStreamGroupStateFetchMessage]_block_invoke";
            v16 = 1024;
            v17 = 183;
            v18 = 2112;
            v19 = [v6 uuid];
            v20 = 1024;
            v21 = [v6 transportSessionID];
            v22 = 2112;
            v23 = a4;
            v24 = 2112;
            v25 = [v8 uuid];
            v26 = 2112;
            v27 = a2;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID=%u participantId[%@] participantUUID[%@] message=%@", &v12, 0x4Au);
          }
        }

        [v6 sendStreamGroupStateToParticipant:v8];
      }

      else
      {
        __57__VCSession_Messaging__setupStreamGroupStateFetchMessage__block_invoke_cold_1(ErrorLogLevelForModule);
      }
    }

    else
    {
      __57__VCSession_Messaging__setupStreamGroupStateFetchMessage__block_invoke_cold_2();
    }
  }

  else
  {
    __57__VCSession_Messaging__setupStreamGroupStateFetchMessage__block_invoke_cold_3();
  }
}

- (void)setupAudioPausedMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__VCSession_Messaging__setupAudioPausedMessages__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicAudioPausedState" associatedStrings:&unk_1F579E160 allowConcurrent:0 receiveHandler:v5];
}

uint64_t __48__VCSession_Messaging__setupAudioPausedMessages__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  result = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
  if (result)
  {
    v8 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316930;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCSession(Messaging) setupAudioPausedMessages]_block_invoke";
        v15 = 1024;
        v16 = 200;
        v17 = 2112;
        v18 = [v6 uuid];
        v19 = 1024;
        v20 = [v6 transportSessionID];
        v21 = 2112;
        v22 = a4;
        v23 = 2112;
        v24 = [v8 uuid];
        v25 = 2080;
        v26 = [a2 UTF8String];
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID[%u] participantId:[%@] participantUUID[%@] receives message:%s", &v11, 0x4Au);
      }
    }

    return [v8 setRemoteAudioPaused:{objc_msgSend(a2, "isEqualToString:", @"VCSessionMessageAudioPaused"}];
  }

  return result;
}

- (void)setupOneToOneEnabledMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__VCSession_Messaging__setupOneToOneEnabledMessages__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicOneToOneEnabledState" associatedStrings:&unk_1F579E178 allowConcurrent:0 receiveHandler:v5];
}

void __52__VCSession_Messaging__setupOneToOneEnabledMessages__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = *(v6 + 176);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__VCSession_Messaging__setupOneToOneEnabledMessages__block_invoke_2;
  v8[3] = &unk_1E85F3E30;
  v8[4] = v6;
  v8[5] = a4;
  v8[6] = a2;
  dispatch_async(v7, v8);
}

void __52__VCSession_Messaging__setupOneToOneEnabledMessages__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "remoteParticipantsMapByServerID")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) uuid];
      v6 = [*(a1 + 32) transportSessionID];
      v7 = *(a1 + 40);
      v8 = [v2 uuid];
      v9 = [*(a1 + 48) UTF8String];
      v10 = 136316930;
      v11 = v3;
      v12 = 2080;
      v13 = "[VCSession(Messaging) setupOneToOneEnabledMessages]_block_invoke_2";
      v14 = 1024;
      v15 = 215;
      v16 = 2112;
      v17 = v5;
      v18 = 1024;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2080;
      v25 = v9;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID[%u] participantId:[%@] participantUUID[%@] receives message:%s", &v10, 0x4Au);
    }
  }

  if (v2)
  {
    [*(a1 + 32) dispatchedSetOneToOneModeEnabled:objc_msgSend(*(a1 + 48) isLocal:"isEqualToString:" configurationDict:{@"VCSessionMessageOneToOneEnabled", 0, 0}];
  }
}

- (void)setupVideoPausedMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__VCSession_Messaging__setupVideoPausedMessages__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicVideoPausedState" associatedStrings:&unk_1F579E190 allowConcurrent:0 receiveHandler:v5];
}

uint64_t __48__VCSession_Messaging__setupVideoPausedMessages__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  result = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
  if (result)
  {
    v8 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316930;
        v12 = v9;
        v13 = 2080;
        v14 = "[VCSession(Messaging) setupVideoPausedMessages]_block_invoke";
        v15 = 1024;
        v16 = 233;
        v17 = 2112;
        v18 = [v6 uuid];
        v19 = 1024;
        v20 = [v6 transportSessionID];
        v21 = 2112;
        v22 = a4;
        v23 = 2112;
        v24 = [v8 uuid];
        v25 = 2080;
        v26 = [a2 UTF8String];
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID[%u] participantId:[%@] participantUUID[%@] receives message:%s", &v11, 0x4Au);
      }
    }

    return [v8 setRemoteVideoPaused:{objc_msgSend(a2, "isEqualToString:", @"VCSessionMessageVideoPaused"}];
  }

  return result;
}

- (void)setupKeyFrameGenerationMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__VCSession_Messaging__setupKeyFrameGenerationMessages__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicGenerateKeyFrame" associatedStrings:0 allowConcurrent:1 requireReliable:0 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

uint64_t __55__VCSession_Messaging__setupKeyFrameGenerationMessages__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a1 + 32) strong];

  return [v6 generateKeyFrameWithReceivedMessage:a2 forParticipant:a4];
}

- (void)processSymptomFromMessage:(id)message participantID:(id)d isLocalInitiated:(BOOL)initiated isLocalSideOnly:(BOOL)only
{
  onlyCopy = only;
  initiatedCopy = initiated;
  v43 = *MEMORY[0x1E69E9840];
  v10 = [objc_msgSend(MEMORY[0x1E6986630] weakObjectHolderWithObject:{self), "strong"}];
  v11 = [objc_msgSend(v10 "remoteParticipantsMapByServerID")];
  if (message)
  {
    v12 = v11;
    if (v11)
    {
      [message objectForKeyedSubscript:@"VCSessionMessageSymptom"];
      v13 = processGroupSymptoms();
      v14 = [message objectForKeyedSubscript:@"VCSessionMessageGroupID"];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136317954;
          v20 = v15;
          v21 = 2080;
          v22 = "[VCSession(Messaging) processSymptomFromMessage:participantID:isLocalInitiated:isLocalSideOnly:]";
          v23 = 1024;
          v24 = 260;
          v25 = 2112;
          uuid = [v10 uuid];
          v27 = 1024;
          transportSessionID = [v10 transportSessionID];
          v29 = 2112;
          dCopy = d;
          v31 = 2112;
          uuid2 = [v12 uuid];
          v33 = 1024;
          v34 = initiatedCopy;
          v35 = 1024;
          v36 = onlyCopy;
          v37 = 2112;
          messageCopy = message;
          v39 = 1024;
          v40 = v13;
          v41 = 2112;
          v42 = v14;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: VCSession[%@] transportSessionID[%u] participantId:[%@] participantUUID:[%@] isLocalInitiated:%d isLocalSideOnly:%d message:%@, symptomID: %d, groupID: %@", buf, 0x66u);
        }
      }

      if (v14)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyGroupID", v14);
        v18 = MEMORY[0x1E695E4D0];
        if (!onlyCopy)
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
          [VCSession(Messaging) processSymptomFromMessage:participantID:isLocalInitiated:isLocalSideOnly:];
        }
      }
    }
  }
}

- (void)setupSymptomEnabledMessages
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VCSession_Messaging__setupSymptomEnabledMessages__block_invoke;
  v6[3] = &unk_1E85F9898;
  v6[4] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VCSession_Messaging__setupSymptomEnabledMessages__block_invoke_83;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicSymptom" associatedStrings:0 allowConcurrent:0 sendMessageDictionaryCompletionHandler:v6 receiveMessageDictionaryHandler:v5];
}

uint64_t __51__VCSession_Messaging__setupSymptomEnabledMessages__block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
        v15 = "[VCSession(Messaging) setupSymptomEnabledMessages]_block_invoke";
        v16 = 1024;
        v17 = 284;
        v18 = 2112;
        v19 = a2;
        v20 = 2112;
        v21 = a4;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SymptomReporter: Failed to send symptom message %@ to participantID %@, requesting only the local side", &v12, 0x30u);
      }
    }

    return [v8 processSymptomFromMessage:a2 participantID:a4 isLocalInitiated:1 isLocalSideOnly:1];
  }
}

uint64_t __51__VCSession_Messaging__setupSymptomEnabledMessages__block_invoke_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a1 + 32) strong];

  return [v6 processSymptomFromMessage:a2 participantID:a4 isLocalInitiated:0 isLocalSideOnly:0];
}

- (void)setupWRMAlertUpdateMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__VCSession_Messaging__setupWRMAlertUpdateMessage__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCWRMAlertStateUpdateMessageTopic" associatedStrings:&unk_1F579E1A8 allowConcurrent:0 receiveHandler:v5];
}

void __50__VCSession_Messaging__setupWRMAlertUpdateMessage__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = [*(a1 + 32) strong];
    v7 = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316930;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCSession(Messaging) setupWRMAlertUpdateMessage]_block_invoke";
        v16 = 1024;
        v17 = 303;
        v18 = 2112;
        v19 = [v6 uuid];
        v20 = 1024;
        v21 = [v6 transportSessionID];
        v22 = 2112;
        v23 = a4;
        v24 = 2112;
        v25 = [v7 uuid];
        v26 = 2080;
        v27 = [a2 UTF8String];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID[%u] participantId:[%@] participantUUID[%@] receives message:%s", &v12, 0x4Au);
      }
    }

    if ([a2 isEqualToString:@"VCWRMAlertStateEnabled"])
    {
      v10 = [objc_msgSend(v6 "transportSession")];
      v11 = 1;
LABEL_12:
      [v10 setRemotePreWarmStateEnabled:v11];
      return;
    }

    if ([a2 isEqualToString:@"VCWRMAlertStateDisabled"])
    {
      v10 = [objc_msgSend(v6 "transportSession")];
      v11 = 0;
      goto LABEL_12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __50__VCSession_Messaging__setupWRMAlertUpdateMessage__block_invoke_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __50__VCSession_Messaging__setupWRMAlertUpdateMessage__block_invoke_cold_2();
    }
  }
}

- (void)setupMomentsMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__VCSession_Messaging__setupMomentsMessages__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMomentsStateMessageTopic" associatedStrings:0 allowConcurrent:0 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

void __44__VCSession_Messaging__setupMomentsMessages__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = [a2 objectForKeyedSubscript:@"vcMomentsRequesterID"];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316418;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCSession(Messaging) setupMomentsMessages]_block_invoke";
      v14 = 1024;
      v15 = 326;
      v16 = 2112;
      v17 = a2;
      v18 = 2112;
      v19 = a4;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d moment message %@ from participantId:[%@] participantUUID:[%@]", &v10, 0x3Au);
    }
  }

  if (a2)
  {
    [v6 didReceiveMomentsRequest:a2];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __44__VCSession_Messaging__setupMomentsMessages__block_invoke_cold_1();
    }
  }
}

- (void)setupVideoRedundancyMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__VCSession_Messaging__setupVideoRedundancyMessages__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicVideoRedundancyState" associatedStrings:&unk_1F579E1C0 allowConcurrent:0 receiveHandler:v5];
}

void __52__VCSession_Messaging__setupVideoRedundancyMessages__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316930;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCSession(Messaging) setupVideoRedundancyMessages]_block_invoke";
      v14 = 1024;
      v15 = 343;
      v16 = 2112;
      v17 = [v6 uuid];
      v18 = 1024;
      v19 = [v6 transportSessionID];
      v20 = 2112;
      v21 = a4;
      v22 = 2112;
      v23 = [v7 uuid];
      v24 = 2080;
      v25 = [a2 UTF8String];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID[%u] participantId:[%@] participantUUID[%@] receives message:%s", &v10, 0x4Au);
    }
  }
}

- (void)setupPreferredInterfaceMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__VCSession_Messaging__setupPreferredInterfaceMessage__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCPreferredInterfaceMessageTopic" associatedStrings:0 allowConcurrent:0 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

void __54__VCSession_Messaging__setupPreferredInterfaceMessage__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316930;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCSession(Messaging) setupPreferredInterfaceMessage]_block_invoke";
      v16 = 1024;
      v17 = 357;
      v18 = 2112;
      v19 = [v6 uuid];
      v20 = 1024;
      v21 = [v6 transportSessionID];
      v22 = 2112;
      v23 = a4;
      v24 = 2112;
      v25 = [v7 uuid];
      v26 = 2112;
      v27 = a2;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession[%@] transportSessionID[%u] idsParticipantID[%@] participantUUID[%@] receives message[%@]", &v12, 0x4Au);
    }
  }

  if (a2)
  {
    v10 = [objc_msgSend(a2 objectForKeyedSubscript:{@"VCPreferredInterfaceKey", "unsignedIntValue"}];
    v11 = [objc_msgSend(a2 objectForKeyedSubscript:{@"VCPreferredInterfaceDuplicatingKey", "BOOLValue"}];
    if ([objc_msgSend(a2 objectForKeyedSubscript:{@"VCPreferredInterfaceMediaUnrecoverableSignalKey", "BOOLValue"}])
    {
      [objc_msgSend(objc_msgSend(v6 "transportSession")];
    }

    else
    {
      [objc_msgSend(objc_msgSend(v6 "transportSession")];
      [objc_msgSend(objc_msgSend(v6 "transportSession")];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __54__VCSession_Messaging__setupPreferredInterfaceMessage__block_invoke_cold_1();
    }
  }
}

- (void)setupPiPStateChangeMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__VCSession_Messaging__setupPiPStateChangeMessage__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCWindowStateChange" associatedStrings:0 allowConcurrent:1 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

void *__50__VCSession_Messaging__setupPiPStateChangeMessage__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) strong];
  if (a2)
  {
    v4 = result;
    v5 = [a2 objectForKeyedSubscript:@"VCWindowState"];
    v6 = [a2 objectForKeyedSubscript:@"VCWindowWidth"];
    v7 = [a2 objectForKeyedSubscript:@"VCWindowHeight"];
    v8 = [a2 objectForKeyedSubscript:@"VCWindowOriginX"];
    v9 = [a2 objectForKeyedSubscript:@"VCWindowOriginY"];
    v10 = [v5 intValue];
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    if (v6 && v7)
    {
      [v8 doubleValue];
      v11 = v15;
      [v9 doubleValue];
      v12 = v16;
      [v6 doubleValue];
      v13 = v17;
      [v7 doubleValue];
      v14 = v18;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315906;
        v22 = v19;
        v23 = 2080;
        v24 = "[VCSession(Messaging) setupPiPStateChangeMessage]_block_invoke";
        v25 = 1024;
        v26 = 397;
        v27 = 2112;
        v28 = a2;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession received message about PIP State change:%@", &v21, 0x26u);
      }
    }

    result = [v4 localParticipant];
    if (v5)
    {
      if (v10 <= 2)
      {
        return [result updateWindowState:v10 isLocal:0 windowRect:{v11, v12, v13, v14}];
      }
    }
  }

  return result;
}

- (void)setupDisconnectMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__VCSession_Messaging__setupDisconnectMessage__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCDisconnectMessage" associatedStrings:0 allowConcurrent:0 receiveHandler:v5];
}

uint64_t __46__VCSession_Messaging__setupDisconnectMessage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) strong];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCSession(Messaging) setupDisconnectMessage]_block_invoke";
      v13 = 1024;
      v14 = 413;
      v15 = 1024;
      v16 = [objc_msgSend(objc_msgSend(v5 "transportSession")];
      v17 = 2112;
      v18 = a4;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession callID[%u] received 'disconnect' message from remote participant '%@'", buf, 0x2Cu);
    }
  }

  return [v5 stopWithError:+[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils didRemoteCancel:{"VCSessionErrorEvent:errorPath:returnCode:", 22, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCSession+Messaging.m", 414), 0), 1}];
}

- (void)setupMediaQualityDegradedMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__VCSession_Messaging__setupMediaQualityDegradedMessage__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCMediaQualityDegradedMessageTopic" associatedStrings:&unk_1F579E1D8 allowConcurrent:0 receiveHandler:v5];
}

void __56__VCSession_Messaging__setupMediaQualityDegradedMessage__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = [*(a1 + 32) strong];
    v7 = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316930;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCSession(Messaging) setupMediaQualityDegradedMessage]_block_invoke";
        v16 = 1024;
        v17 = 429;
        v18 = 2112;
        v19 = [v6 uuid];
        v20 = 1024;
        v21 = [v6 transportSessionID];
        v22 = 2112;
        v23 = a4;
        v24 = 2112;
        v25 = [v7 uuid];
        v26 = 2080;
        v27 = [a2 UTF8String];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession=%@ transportSessionID=%u participantId=%@ participantUUID=%@ receives message=%s", &v12, 0x4Au);
      }
    }

    if ([a2 isEqualToString:@"VCMediaQualityDegraded"])
    {
      v10 = [objc_msgSend(v6 "transportSession")];
      v11 = 1;
LABEL_12:
      [v10 setIsRemoteMediaQualityDegraded:v11];
      return;
    }

    if ([a2 isEqualToString:@"VCMediaQualityRecovered"])
    {
      v10 = [objc_msgSend(v6 "transportSession")];
      v11 = 0;
      goto LABEL_12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __56__VCSession_Messaging__setupMediaQualityDegradedMessage__block_invoke_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __56__VCSession_Messaging__setupMediaQualityDegradedMessage__block_invoke_cold_2();
    }
  }
}

- (void)setupNetworkQualityDegradedMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__VCSession_Messaging__setupNetworkQualityDegradedMessage__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCNetworkQualityDegradedMessageTopic" associatedStrings:&unk_1F579E1F0 allowConcurrent:0 receiveHandler:v5];
}

void __58__VCSession_Messaging__setupNetworkQualityDegradedMessage__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = [*(a1 + 32) strong];
    v7 = [objc_msgSend(v6 "remoteParticipantsMapByServerID")];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316930;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCSession(Messaging) setupNetworkQualityDegradedMessage]_block_invoke";
        v16 = 1024;
        v17 = 452;
        v18 = 2112;
        v19 = [v6 uuid];
        v20 = 1024;
        v21 = [v6 transportSessionID];
        v22 = 2112;
        v23 = a4;
        v24 = 2112;
        v25 = [v7 uuid];
        v26 = 2080;
        v27 = [a2 UTF8String];
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession=%@ transportSessionID=%u participantId=%@ participantUUID=%@ receives message=%s", &v12, 0x4Au);
      }
    }

    if ([a2 isEqualToString:@"VCNetworkQualityDegraded"])
    {
      v10 = [objc_msgSend(v6 "transportSession")];
      v11 = 1;
LABEL_12:
      [v10 setIsRemoteNetworkQualityDegraded:v11];
      return;
    }

    if ([a2 isEqualToString:@"VCNetworkQualityRecovered"])
    {
      v10 = [objc_msgSend(v6 "transportSession")];
      v11 = 0;
      goto LABEL_12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __58__VCSession_Messaging__setupNetworkQualityDegradedMessage__block_invoke_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __58__VCSession_Messaging__setupNetworkQualityDegradedMessage__block_invoke_cold_2();
    }
  }
}

- (void)setupDeviceStateMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__VCSession_Messaging__setupDeviceStateMessage__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicDeviceState" associatedStrings:0 allowConcurrent:0 requireReliable:1 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

void __47__VCSession_Messaging__setupDeviceStateMessage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = *(v6 + 176);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__VCSession_Messaging__setupDeviceStateMessage__block_invoke_2;
  v8[3] = &unk_1E85F3E30;
  v8[4] = v6;
  v8[5] = a2;
  v8[6] = a4;
  dispatch_async(v7, v8);
}

- (void)handleDeviceStateMessage:(id)message forParticipantId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  if (message)
  {
    v7 = [(NSMutableDictionary *)self->_remoteParticipantsMapByServerID objectForKeyedSubscript:id];
    if (v7)
    {
      v8 = v7;
      uuid = [v7 uuid];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (uuid)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          __str = 0;
          asprintf(&__str, "%s", [objc_msgSend(message "description")]);
          if (__str)
          {
            __lasts = 0;
            v11 = strtok_r(__str, "\n", &__lasts);
            v12 = MEMORY[0x1E6986650];
            do
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v13 = VRTraceErrorLogLevelToCSTR();
                v14 = *v12;
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  v19 = v13;
                  v20 = 2080;
                  v21 = "[VCSession(Messaging) handleDeviceStateMessage:forParticipantId:]";
                  v22 = 1024;
                  v23 = 487;
                  v24 = 2080;
                  v25 = "Received State Update:";
                  v26 = 2080;
                  v27 = v11;
                  _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              v11 = strtok_r(0, "\n", &__lasts);
            }

            while (v11);
            free(__str);
          }
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        if ([message objectForKeyedSubscript:@"Thermal"])
        {
          [(VCSession *)self reportKeysForDeviceStateMessage:362 stateMessage:message InPayload:dictionary ForParitcipant:v8];
        }

        if ([message objectForKeyedSubscript:@"sliceStatus"])
        {
          [(VCSession *)self reportKeysForDeviceStateMessage:38 stateMessage:message InPayload:dictionary ForParitcipant:v8];
        }
      }

      else
      {
        [VCSession(Messaging) handleDeviceStateMessage:? forParticipantId:?];
      }
    }

    else
    {
      [VCSession(Messaging) handleDeviceStateMessage:forParticipantId:];
    }
  }

  else
  {
    [VCSession(Messaging) handleDeviceStateMessage:forParticipantId:];
  }
}

- (void)reportKeysForDeviceStateMessage:(unsigned __int16)message stateMessage:(id)stateMessage InPayload:(id)payload ForParitcipant:(id)paritcipant
{
  if (message == 362)
  {
    v10 = @"Thermal";
    v9 = @"Thermal";
  }

  else
  {
    if (message != 38)
    {
      goto LABEL_6;
    }

    v9 = @"RemoteSliceStatus";
    v10 = @"sliceStatus";
  }

  [payload setObject:objc_msgSend(paritcipant forKeyedSubscript:{"uuid"), @"VCSPUUID"}];
  [payload setObject:objc_msgSend(stateMessage forKeyedSubscript:{"objectForKeyedSubscript:", v10), v9}];
LABEL_6:
  [(VCObject *)self reportingAgent];

  reportingGenericEvent();
}

- (void)handleNetworkCapabilityMessage:(id)message forParticipantId:(id)id
{
  selfCopy = self;
  v29 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  if (message)
  {
    v7 = [(NSMutableDictionary *)selfCopy->_remoteParticipantsMapByServerID objectForKeyedSubscript:id];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v7)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        __str = 0;
        asprintf(&__str, "%s", [objc_msgSend(message "description")]);
        if (__str)
        {
          v14 = selfCopy;
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
                v20 = v11;
                v21 = 2080;
                v22 = "[VCSession(Messaging) handleNetworkCapabilityMessage:forParticipantId:]";
                v23 = 1024;
                v24 = 531;
                v25 = 2080;
                v26 = "Received State Update:";
                v27 = 2080;
                v28 = v9;
                _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v9 = strtok_r(0, "\n", &__lasts);
          }

          while (v9);
          free(__str);
          selfCopy = v14;
        }
      }

      if ([v7 uuid] && objc_msgSend(message, "objectForKeyedSubscript:", @"RCEV") && objc_msgSend(message, "objectForKeyedSubscript:", @"RCEG"))
      {
        v17[0] = @"VCSPUUID";
        v18[0] = [v7 uuid];
        v17[1] = @"RCEV";
        v18[1] = [message objectForKeyedSubscript:@"RCEV"];
        v17[2] = @"RCEG";
        v18[2] = [message objectForKeyedSubscript:@"RCEG"];
        v13 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:{3), "mutableCopy"}];
        if ([message objectForKeyedSubscript:@"SBVERS"])
        {
          [v13 setObject:objc_msgSend(message forKeyedSubscript:{"objectForKeyedSubscript:", @"SBVERS", @"SBVERS"}];
        }

        if ([message objectForKeyedSubscript:@"RULRTX"])
        {
          [v13 setObject:objc_msgSend(message forKeyedSubscript:{"objectForKeyedSubscript:", @"RULRTX", @"RULRTX"}];
        }

        if ([message objectForKeyedSubscript:@"RTLE"])
        {
          [v13 setObject:objc_msgSend(message forKeyedSubscript:{"objectForKeyedSubscript:", @"RTLE", @"RTLE"}];
        }

        if ([message objectForKeyedSubscript:@"MQSchP"])
        {
          [v13 setObject:objc_msgSend(message forKeyedSubscript:{"objectForKeyedSubscript:", @"MQSchP", @"MQSchP"}];
        }

        [(VCObject *)selfCopy reportingAgent];
        reportingGenericEvent();
      }
    }

    else
    {
      [VCSession(Messaging) handleNetworkCapabilityMessage:? forParticipantId:?];
    }
  }

  else
  {
    [VCSession(Messaging) handleNetworkCapabilityMessage:forParticipantId:];
  }
}

- (void)setupNetworkCapabilityMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VCSession_Messaging__setupNetworkCapabilityMessage__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicRateControlConfig" associatedStrings:0 allowConcurrent:0 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

void __53__VCSession_Messaging__setupNetworkCapabilityMessage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = *(v6 + 176);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__VCSession_Messaging__setupNetworkCapabilityMessage__block_invoke_2;
  v8[3] = &unk_1E85F3E30;
  v8[4] = v6;
  v8[5] = a2;
  v8[6] = a4;
  dispatch_async(v7, v8);
}

- (void)dispatchedRemoteCellTechStateUpdate:(id)update maxRemoteBitrate:(id)bitrate
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCSession(Messaging) dispatchedRemoteCellTechStateUpdate:maxRemoteBitrate:]";
      v13 = 1024;
      v14 = 574;
      v15 = 1024;
      intValue = [update intValue];
      v17 = 1024;
      unsignedIntValue = [bitrate unsignedIntValue];
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession received message about CellTech change :%d, remote bitrate %u", &v9, 0x28u);
    }
  }

  -[VCSession remoteCellTechStateUpdate:maxRemoteBitrate:](self, "remoteCellTechStateUpdate:maxRemoteBitrate:", [update intValue], objc_msgSend(bitrate, "unsignedIntValue"));
}

- (void)remoteCellTechStateUpdate:(int)update maxRemoteBitrate:(unsigned int)bitrate
{
  v4 = *&update;
  v25 = *MEMORY[0x1E69E9840];
  if (update && update < 10)
  {
    v7 = CelltechToStr();
    v8 = [objc_msgSend(MEMORY[0x1E6986630] weakObjectHolderWithObject:{self), "strong"}];
    [objc_msgSend(objc_msgSend(v8 "transportSession")];
    [v8 configureOneToOneRateController:self->_currentActiveConnection];
    if (([v8 isOneToOneUsingVideo] & 1) != 0 || objc_msgSend(v8, "isOneToOneUsingScreen"))
    {
      uplinkBitrateCapOneToOne = [(VCConnectionProtocol *)self->_currentActiveConnection uplinkBitrateCapOneToOne];
    }

    else
    {
      uplinkBitrateCapOneToOne = [(VCConnectionProtocol *)self->_currentActiveConnection uplinkAudioBitrateCapOneToOne];
    }

    v10 = uplinkBitrateCapOneToOne;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCSession(Messaging) remoteCellTechStateUpdate:maxRemoteBitrate:]";
        v17 = 1024;
        v18 = 596;
        v19 = 2080;
        v20 = v7;
        v21 = 1024;
        v22 = v10;
        v23 = 1024;
        bitrateCopy = bitrate;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCSession: Remote CellTech has changed %s, max bitrate %u, max remote bitrate %u", &v13, 0x32u);
      }
    }

    [(VCSessionParticipantLocal *)self->_localParticipant handleActiveConnectionChange:self->_currentActiveConnection];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCSession(Messaging) remoteCellTechStateUpdate:maxRemoteBitrate:];
    }
  }
}

- (void)setupCellTechChangeMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCCellTechChangeTopic" associatedStrings:0 allowConcurrent:1 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

void __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke(uint64_t a1, void *a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ([a2 objectForKeyedSubscript:@"VCCellTechKey"])
    {
      v4 = [*(a1 + 32) strong];
      if (v4)
      {
        v5 = *(v4 + 176);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke_225;
        block[3] = &unk_1E85F37F0;
        block[4] = v4;
        block[5] = a2;
        dispatch_async(v5, block);
      }

      else
      {
        __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke_cold_1();
      }
    }

    else
    {
      __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke_cold_2();
    }
  }

  else
  {
    __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke_cold_3();
  }
}

uint64_t __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke_225(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"VCCellTechKey"];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"VCMaxBitrateKey"];

  return [v2 dispatchedRemoteCellTechStateUpdate:v3 maxRemoteBitrate:v4];
}

- (void)setupLinkConstrainsChangedMessages
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__VCSession_Messaging__setupLinkConstrainsChangedMessages__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicLinkConstrainesChanged" associatedStrings:0 allowConcurrent:1 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

void __58__VCSession_Messaging__setupLinkConstrainsChangedMessages__block_invoke(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  if (a2)
  {
    if (v3)
    {
      v4 = *(v3 + 176);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__VCSession_Messaging__setupLinkConstrainsChangedMessages__block_invoke_2;
      block[3] = &unk_1E85F37F0;
      block[4] = v3;
      block[5] = a2;
      dispatch_async(v4, block);
    }
  }
}

uint64_t __58__VCSession_Messaging__setupLinkConstrainsChangedMessages__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) applyRemoteLinkConstrains:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [v2 currentActiveConnection];

  return [v2 configureOneToOneRateController:v3];
}

- (void)setupReactionMessages
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__VCSession_Messaging__setupReactionMessages__block_invoke;
  v7[3] = &unk_1E85F9870;
  v7[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicReaction" associatedStrings:0 allowConcurrent:1 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v7];
  v5 = self->_sessionMessaging;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__VCSession_Messaging__setupReactionMessages__block_invoke_242;
  v6[3] = &unk_1E85F9870;
  v6[4] = v3;
  [(VCSessionMessaging *)v5 addTopic:@"VCSessionMessageReactionStateTopic" associatedStrings:0 allowConcurrent:1 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v6];
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[7] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = [*(a1 + 32) strong];
    v7 = *(v6 + 176);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__VCSession_Messaging__setupReactionMessages__block_invoke_235;
    v8[3] = &unk_1E85F3E30;
    v8[4] = v6;
    v8[5] = a4;
    v8[6] = a2;
    dispatch_async(v7, v8);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __45__VCSession_Messaging__setupReactionMessages__block_invoke_cold_1();
    }
  }
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke_235(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "remoteParticipantsMapByServerID")];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 48) objectForKeyedSubscript:@"VCReactionStartedType"];

    [v3 reactionDidStart:v4];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __45__VCSession_Messaging__setupReactionMessages__block_invoke_235_cold_1();
    }
  }
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke_242(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = [*(a1 + 32) strong];
    if (v6)
    {
      v7 = *(v6 + 176);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__VCSession_Messaging__setupReactionMessages__block_invoke_243;
      block[3] = &unk_1E85F3E30;
      block[4] = v6;
      block[5] = a4;
      block[6] = a2;
      dispatch_async(v7, block);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCSession(Messaging) setupReactionMessages]_block_invoke";
        v15 = 1024;
        v16 = 672;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d strongSelf is nil", buf, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __45__VCSession_Messaging__setupReactionMessages__block_invoke_242_cold_1();
    }
  }
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke_243(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "remoteParticipantsMapByServerID")];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 48) objectForKeyedSubscript:@"VCSessionMessageReactionStarted"];
    v5 = *(a1 + 48);
    if (v4)
    {
      v6 = [v5 objectForKeyedSubscript:@"VCSessionMessageReactionStarted"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        [v3 reactionDidStart:v6];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __45__VCSession_Messaging__setupReactionMessages__block_invoke_243_cold_1();
        }
      }
    }

    else if ([v5 objectForKeyedSubscript:@"VCSessionMessageReactionStopped"])
    {

      [v3 didStopReacting];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        v10 = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCSession(Messaging) setupReactionMessages]_block_invoke";
        v14 = 1024;
        v15 = 693;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unsupported reaction state %@", &v10, 0x26u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __45__VCSession_Messaging__setupReactionMessages__block_invoke_243_cold_2();
    }
  }
}

- (void)setUpDeviceOrientationMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VCSession_Messaging__setUpDeviceOrientationMessage__block_invoke;
  v5[3] = &unk_1E85F7328;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicDeviceOrientation" associatedStrings:0 allowConcurrent:0 receiveHandler:v5];
}

void __53__VCSession_Messaging__setUpDeviceOrientationMessage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) strong];
  v7 = *(v6 + 176);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__VCSession_Messaging__setUpDeviceOrientationMessage__block_invoke_2;
  v8[3] = &unk_1E85F3E30;
  v8[4] = v6;
  v8[5] = a4;
  v8[6] = a2;
  dispatch_async(v7, v8);
}

void __53__VCSession_Messaging__setUpDeviceOrientationMessage__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "remoteParticipantsMapByServerID")];
  if (v2)
  {
    v3 = v2;
    v4 = +[VideoUtil videoOrientationFromVideoOrientationMessage:](VideoUtil, "videoOrientationFromVideoOrientationMessage:", [*(a1 + 48) unsignedIntValue]);

    [v3 updateRemoteDeviceOrientation:v4];
  }

  else if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __53__VCSession_Messaging__setUpDeviceOrientationMessage__block_invoke_2_cold_1();
      }
    }
  }

  else
  {
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
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = 136316162;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCSession(Messaging) setUpDeviceOrientationMessage]_block_invoke";
        v13 = 1024;
        v14 = 709;
        v15 = 2112;
        v16 = v5;
        v17 = 2048;
        v18 = v8;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Participant is nil", &v9, 0x30u);
      }
    }
  }
}

+ (id)mediaStateMessageStreamGroupKeysForMediaType:(unsigned int)type
{
  v3 = MEMORY[0x1E695DFD8];
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        stringValue = [&unk_1F579BD00 stringValue];
        v5 = &unk_1F579BD18;
        return [v3 setWithObjects:{stringValue, objc_msgSend(v5, "stringValue"), 0}];
      }

      if (type == 8)
      {
        return [MEMORY[0x1E695DFD8] setWithObjects:{objc_msgSend(&unk_1F579BD18, "stringValue"), 0, v10}];
      }

LABEL_22:
      v9 = MEMORY[0x1E695DFD8];

      return [v9 set];
    }

    if (type == 4)
    {
      v6 = &unk_1F579BCD0;
    }

    else
    {
      v6 = &unk_1F579BCE8;
    }
  }

  else
  {
    if (type <= 1)
    {
      if (!type)
      {
        stringValue = [&unk_1F579BC40 stringValue];
        v5 = &unk_1F579BC58;
        return [v3 setWithObjects:{stringValue, objc_msgSend(v5, "stringValue"), 0}];
      }

      if (type == 1)
      {
        stringValue = [&unk_1F579BC70 stringValue];
        v5 = &unk_1F579BC88;
        return [v3 setWithObjects:{stringValue, objc_msgSend(v5, "stringValue"), 0}];
      }

      goto LABEL_22;
    }

    if (type == 2)
    {
      v6 = &unk_1F579BCA0;
    }

    else
    {
      v6 = &unk_1F579BCB8;
    }
  }

  stringValue2 = [v6 stringValue];

  return [v3 setWithObject:stringValue2];
}

+ (id)mediaStateMessageKeyForMediaType:(unsigned int)type
{
  if (type <= 8 && ((0x17Fu >> type) & 1) != 0)
  {
    return [off_1E85F98B8[type] stringValue];
  }

  else
  {
    return 0;
  }
}

+ (unsigned)mediaTypeForMediaStateMessageKey:(id)key
{
  unsignedIntValue = [key unsignedIntValue];
  result = 0;
  if (unsignedIntValue <= 127)
  {
    if (unsignedIntValue <= 5)
    {
      if (unsignedIntValue > 2)
      {
        if (unsignedIntValue != 3)
        {
          if (unsignedIntValue != 4)
          {
            return 1;
          }

          return 3;
        }

        return 2;
      }

      if (unsignedIntValue != 1)
      {
        if (unsignedIntValue == 2)
        {
          return result;
        }

        return -1;
      }

      return 1;
    }

    if (unsignedIntValue <= 8)
    {
      if (unsignedIntValue == 6)
      {
        return result;
      }

      if (unsignedIntValue != 7)
      {
        return 5;
      }

      return 4;
    }

    if ((unsignedIntValue - 9) >= 2)
    {
      return -1;
    }

    return -2;
  }

  if (unsignedIntValue > 131)
  {
    if (unsignedIntValue <= 133)
    {
      if (unsignedIntValue != 132)
      {
        return 5;
      }

      return 4;
    }

    if (unsignedIntValue == 134)
    {
      return 6;
    }

    if (unsignedIntValue == 136)
    {
      return 8;
    }

    if (unsignedIntValue != 140)
    {
      return -1;
    }

    return -2;
  }

  if (unsignedIntValue > 129)
  {
    if (unsignedIntValue != 130)
    {
      return 3;
    }

    return 2;
  }

  if (unsignedIntValue == 128)
  {
    return 1;
  }

  return result;
}

+ (id)mediaStateMessageValueForMediaState:(unsigned int)state
{
  if (state > 2)
  {
    return 0;
  }

  else
  {
    return qword_1E85F9900[state];
  }
}

+ (unsigned)mediaStateForMediaStateMessageValue:(id)value
{
  result = [value unsignedIntValue];
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

- (void)updateStateMessage:(id)message stateState:(unsigned int)state streamGroupKey:(id)key
{
  v6 = *&state;
  v8 = [message objectForKeyedSubscript:key];
  if (!v8 || (v9 = [v8 unsignedIntValue]) == 0 || v9 == 2 && v6 == 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];

    [message setObject:v10 forKeyedSubscript:key];
  }
}

- (id)stateMessageWithSupportsNestedDictionary:(BOOL)dictionary
{
  v71 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = 0;
  *&v6 = 136316162;
  v50 = v6;
  do
  {
    if (v5 == 7)
    {
      goto LABEL_3;
    }

    v7 = [(VCSessionParticipantLocal *)self->_localParticipant mediaStateForMediaType:v5];
    v8 = [VCSession mediaStateMessageValueForMediaState:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [VCSession mediaStateMessageKeyForMediaType:v5];
      if (v10)
      {
        [dictionary setObject:v9 forKeyedSubscript:v10];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v11 = [VCSession mediaStateMessageStreamGroupKeysForMediaType:v5];
        v12 = [v11 countByEnumeratingWithState:&v53 objects:v52 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v54;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v54 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [(VCSession *)self updateStateMessage:dictionary stateState:v7 streamGroupKey:*(*(&v53 + 1) + 8 * i), v50];
            }

            v13 = [v11 countByEnumeratingWithState:&v53 objects:v52 count:16];
          }

          while (v13);
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v37 = VRTraceErrorLogLevelToCSTR();
            v38 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v39 = VCSessionMediaType_Name(v5);
              v40 = VCSessionMediaState_Name(v7);
              *buf = v50;
              v58 = v37;
              v59 = 2080;
              v60 = "[VCSession(Messaging) stateMessageWithSupportsNestedDictionary:]";
              v61 = 1024;
              v62 = 871;
              v63 = 2112;
              v64 = v39;
              v65 = 2112;
              selfCopy3 = v40;
              v21 = v38;
              v22 = " [%s] %s:%d Sending State Update: mediaType=%@ mediaState=%@";
              v23 = 48;
              goto LABEL_36;
            }
          }
        }

        else
        {
          v16 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v16 = [(VCSession *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v19 = VCSessionMediaType_Name(v5);
              v20 = VCSessionMediaState_Name(v7);
              *buf = 136316674;
              v58 = v17;
              v59 = 2080;
              v60 = "[VCSession(Messaging) stateMessageWithSupportsNestedDictionary:]";
              v61 = 1024;
              v62 = 871;
              v63 = 2112;
              v64 = v16;
              v65 = 2048;
              selfCopy3 = self;
              v67 = 2112;
              v68 = v19;
              v69 = 2112;
              v70 = v20;
              v21 = v18;
              v22 = " [%s] %s:%d %@(%p) Sending State Update: mediaType=%@ mediaState=%@";
              v23 = 68;
LABEL_36:
              _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
            }
          }
        }
      }

      else if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v45 = VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v47 = VCSessionMediaType_Name(v5);
            v48 = VCSessionMediaState_Name(v7);
            *buf = v50;
            v58 = v45;
            v59 = 2080;
            v60 = "[VCSession(Messaging) stateMessageWithSupportsNestedDictionary:]";
            v61 = 1024;
            v62 = 862;
            v63 = 2112;
            v64 = v47;
            v65 = 2112;
            selfCopy3 = v48;
            v29 = v46;
            v30 = " [%s] %s:%d Sending State Update: Failed to add message entry for mediaType=%@ mediaState=%@. Key is nil.";
            goto LABEL_43;
          }
        }
      }

      else
      {
        v31 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v31 = [(VCSession *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v32 = VRTraceErrorLogLevelToCSTR();
          v33 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v34 = VCSessionMediaType_Name(v5);
            v35 = VCSessionMediaState_Name(v7);
            *buf = 136316674;
            v58 = v32;
            v59 = 2080;
            v60 = "[VCSession(Messaging) stateMessageWithSupportsNestedDictionary:]";
            v61 = 1024;
            v62 = 862;
            v63 = 2112;
            v64 = v31;
            v65 = 2048;
            selfCopy3 = self;
            v67 = 2112;
            v68 = v34;
            v69 = 2112;
            v70 = v35;
            v29 = v33;
            v30 = " [%s] %s:%d %@(%p) Sending State Update: Failed to add message entry for mediaType=%@ mediaState=%@. Key is nil.";
LABEL_32:
            v36 = 68;
LABEL_44:
            _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, v30, buf, v36);
          }
        }
      }
    }

    else if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v43 = VCSessionMediaType_Name(v5);
          v44 = VCSessionMediaState_Name(v7);
          *buf = v50;
          v58 = v41;
          v59 = 2080;
          v60 = "[VCSession(Messaging) stateMessageWithSupportsNestedDictionary:]";
          v61 = 1024;
          v62 = 857;
          v63 = 2112;
          v64 = v43;
          v65 = 2112;
          selfCopy3 = v44;
          v29 = v42;
          v30 = " [%s] %s:%d Sending State Update: Failed to add message entry for mediaType=%@ mediaState=%@. Value is nil.";
LABEL_43:
          v36 = 48;
          goto LABEL_44;
        }
      }
    }

    else
    {
      v24 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v27 = VCSessionMediaType_Name(v5);
          v28 = VCSessionMediaState_Name(v7);
          *buf = 136316674;
          v58 = v25;
          v59 = 2080;
          v60 = "[VCSession(Messaging) stateMessageWithSupportsNestedDictionary:]";
          v61 = 1024;
          v62 = 857;
          v63 = 2112;
          v64 = v24;
          v65 = 2048;
          selfCopy3 = self;
          v67 = 2112;
          v68 = v27;
          v69 = 2112;
          v70 = v28;
          v29 = v26;
          v30 = " [%s] %s:%d %@(%p) Sending State Update: Failed to add message entry for mediaType=%@ mediaState=%@. Value is nil.";
          goto LABEL_32;
        }
      }
    }

LABEL_3:
    v5 = (v5 + 1);
  }

  while (v5 != 9);
  if (dictionary)
  {
    [(VCSession *)self appendMediaTypeMixingListToMessageDictionary:dictionary];
  }

  return dictionary;
}

- (void)appendMediaTypeMixingListToMessageDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mediaTypeMixingList = [(VCSessionParticipant *)self->_localParticipant mediaTypeMixingList];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [(NSDictionary *)mediaTypeMixingList countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(mediaTypeMixingList);
        }

        -[__CFString setObject:forKeyedSubscript:](dictionary, "setObject:forKeyedSubscript:", -[NSDictionary objectForKeyedSubscript:](mediaTypeMixingList, "objectForKeyedSubscript:", *(*(&v32 + 1) + 8 * i)), [*(*(&v32 + 1) + 8 * i) stringValue]);
      }

      v8 = [(NSDictionary *)mediaTypeMixingList countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v8);
  }

  if ([(__CFString *)dictionary count])
  {
    [dictionary setObject:dictionary forKeyedSubscript:{objc_msgSend(&unk_1F579BE08, "stringValue")}];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315906;
          v20 = v12;
          v21 = 2080;
          v22 = "[VCSession(Messaging) appendMediaTypeMixingListToMessageDictionary:]";
          v23 = 1024;
          v24 = 888;
          v25 = 2112;
          v26 = dictionary;
          v14 = " [%s] %s:%d Sending State Update: appending mediaTypeMixingList=%@";
          v15 = v13;
          v16 = 38;
LABEL_19:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCSession *)self performSelector:sel_logPrefix];
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
          v19 = 136316418;
          v20 = v17;
          v21 = 2080;
          v22 = "[VCSession(Messaging) appendMediaTypeMixingListToMessageDictionary:]";
          v23 = 1024;
          v24 = 888;
          v25 = 2112;
          v26 = v11;
          v27 = 2048;
          selfCopy = self;
          v29 = 2112;
          v30 = dictionary;
          v14 = " [%s] %s:%d %@(%p) Sending State Update: appending mediaTypeMixingList=%@";
          v15 = v18;
          v16 = 58;
          goto LABEL_19;
        }
      }
    }
  }
}

- (void)broadcastMediaStateUpdateMessage
{
  selfCopy = self;
  v48 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_sessionQueue);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(VCSession *)selfCopy remoteParticipants];
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v45;
    v26 = selfCopy;
    v28 = *v45;
    do
    {
      v8 = 0;
      v29 = v4;
      do
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        [v9 capabilities];
        if (v10 == 2)
        {
          [v9 capabilities];
          v12 = v11;
          if ((v11 & 0x1000000000000) == 0 || v6)
          {
            if ((v11 & 0x1000000000000) == 0 && !v5)
            {
              v5 = [(VCSession *)selfCopy stateMessageWithSupportsNestedDictionary:0];
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                __str = 0;
                if (v5)
                {
                  v14 = [objc_msgSend(v5 "description")];
                }

                else
                {
                  v14 = "<nil>";
                }

                asprintf(&__str, "%s", v14);
                if (__str)
                {
                  v27 = v5;
                  __lasts = 0;
                  v18 = strtok_r(__str, "\n", &__lasts);
                  do
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v19 = VRTraceErrorLogLevelToCSTR();
                      v20 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136316162;
                        v34 = v19;
                        v35 = 2080;
                        v36 = "[VCSession(Messaging) broadcastMediaStateUpdateMessage]";
                        v37 = 1024;
                        v38 = 907;
                        v39 = 2080;
                        v40 = "Sending State Update:";
                        v41 = 2080;
                        v42 = v18;
                        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
                      }
                    }

                    v18 = strtok_r(0, "\n", &__lasts);
                  }

                  while (v18);
LABEL_32:
                  free(__str);
                  v5 = v27;
                }

LABEL_33:
                selfCopy = v26;
              }
            }
          }

          else
          {
            v6 = [(VCSession *)selfCopy stateMessageWithSupportsNestedDictionary:1];
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              __str = 0;
              if (v6)
              {
                v13 = [objc_msgSend(v6 "description")];
              }

              else
              {
                v13 = "<nil>";
              }

              asprintf(&__str, "%s", v13);
              if (__str)
              {
                v27 = v5;
                __lasts = 0;
                v15 = strtok_r(__str, "\n", &__lasts);
                do
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v16 = VRTraceErrorLogLevelToCSTR();
                    v17 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136316162;
                      v34 = v16;
                      v35 = 2080;
                      v36 = "[VCSession(Messaging) broadcastMediaStateUpdateMessage]";
                      v37 = 1024;
                      v38 = 904;
                      v39 = 2080;
                      v40 = "Sending State Update:";
                      v41 = 2080;
                      v42 = v15;
                      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
                    }
                  }

                  v15 = strtok_r(0, "\n", &__lasts);
                }

                while (v15);
                goto LABEL_32;
              }

              goto LABEL_33;
            }
          }

          if ((v12 & 0x1000000000000) != 0)
          {
            v21 = v6;
          }

          else
          {
            v21 = v5;
          }

          v22 = v5;
          sessionMessaging = selfCopy->_sessionMessaging;
          idsParticipantID = [v9 idsParticipantID];
          v25 = sessionMessaging;
          v5 = v22;
          [(VCSessionMessaging *)v25 sendMessageDictionary:v21 withTopic:@"VCSessionMessageTopicStreamGroupsState" participantID:idsParticipantID];
          v7 = v28;
          v4 = v29;
        }

        ++v8;
      }

      while (v8 != v4);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v4);
  }
}

- (void)sendMediaStateUpdateMessageToRemoteParticipant:(id)participant
{
  [participant capabilities];
  v6 = [(VCSession *)self stateMessageWithSupportsNestedDictionary:HIWORD(v5) & 1];
  sessionMessaging = self->_sessionMessaging;
  idsParticipantID = [participant idsParticipantID];

  [(VCSessionMessaging *)sessionMessaging sendMessageDictionary:v6 withTopic:@"VCSessionMessageTopicStreamGroupsState" participantID:idsParticipantID];
}

- (BOOL)validateStreamGroup:(id)group state:(id)state
{
  if (!group)
  {
    v5 = 0;
    if (state)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v5 && v6;
  }

  v5 = [group unsignedIntValue] != 0;
  if (!state)
  {
    goto LABEL_5;
  }

LABEL_3:
  [state unsignedIntValue];
  v6 = [state unsignedIntValue] < 3;
  return v5 && v6;
}

- (void)setupMediaStateUpdateMessage
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  sessionMessaging = self->_sessionMessaging;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__VCSession_Messaging__setupMediaStateUpdateMessage__block_invoke;
  v5[3] = &unk_1E85F9870;
  v5[4] = v3;
  [(VCSessionMessaging *)sessionMessaging addTopic:@"VCSessionMessageTopicStreamGroupsState" associatedStrings:0 allowConcurrent:0 sendMessageDictionaryCompletionHandler:0 receiveMessageDictionaryHandler:v5];
}

uint64_t __52__VCSession_Messaging__setupMediaStateUpdateMessage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a1 + 32) strong];

  return [v6 processMediaStateMessage:a2 remoteParticipantID:a4];
}

- (void)processMediaTypeStatesWithMessage:(id)message mediaTypeStates:(id)states
{
  v7 = 0;
  v53 = *MEMORY[0x1E69E9840];
  v8 = "";
  v9 = MEMORY[0x1E6986650];
  do
  {
    if (v7 == 7)
    {
      goto LABEL_3;
    }

    v10 = [VCSession mediaStateMessageKeyForMediaType:v7];
    if (v10)
    {
      v11 = [message objectForKeyedSubscript:v10];
      if (!v11)
      {
        goto LABEL_3;
      }

      v12 = [VCSession mediaStateForMediaStateMessageValue:v11];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
      [states setObject:v13 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)}];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v32 = VRTraceErrorLogLevelToCSTR();
          v33 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v34 = VCSessionMediaType_Name(v7);
            v35 = VCSessionMediaState_Name(v12);
            *buf = 136316162;
            v40 = v32;
            v41 = 2080;
            v42 = "[VCSession(Messaging) processMediaTypeStatesWithMessage:mediaTypeStates:]";
            v43 = 1024;
            v44 = 983;
            v45 = 2112;
            v46 = v34;
            v47 = 2112;
            selfCopy2 = v35;
            v22 = v33;
            v23 = " [%s] %s:%d Received State Update: mediaType=%@ mediaState=%@";
            v24 = 48;
            goto LABEL_22;
          }
        }
      }

      else
      {
        v14 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v14 = [(VCSession *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v8;
            messageCopy = message;
            statesCopy = states;
            v20 = VCSessionMediaType_Name(v7);
            v21 = VCSessionMediaState_Name(v12);
            *buf = 136316674;
            v40 = v15;
            v41 = 2080;
            v42 = "[VCSession(Messaging) processMediaTypeStatesWithMessage:mediaTypeStates:]";
            v43 = 1024;
            v44 = 983;
            v45 = 2112;
            v46 = v14;
            v47 = 2048;
            selfCopy2 = self;
            v49 = 2112;
            v50 = v20;
            states = statesCopy;
            message = messageCopy;
            v8 = v17;
            v9 = MEMORY[0x1E6986650];
            v51 = 2112;
            v52 = v21;
            v22 = v16;
            v23 = " [%s] %s:%d %@(%p) Received State Update: mediaType=%@ mediaState=%@";
            v24 = 68;
LABEL_22:
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
          }
        }
      }
    }

    else if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v38 = VCSessionMediaType_Name(v7);
          *buf = 136315906;
          v40 = v36;
          v41 = 2080;
          v42 = "[VCSession(Messaging) processMediaTypeStatesWithMessage:mediaTypeStates:]";
          v43 = 1024;
          v44 = 973;
          v45 = 2112;
          v46 = v38;
          v29 = v37;
          v30 = " [%s] %s:%d Receive State Update: Failed to find message entry key for mediaType=%@";
          v31 = 38;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v25 = &stru_1F570E008;
      if (objc_opt_respondsToSelector())
      {
        v25 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v28 = VCSessionMediaType_Name(v7);
          *buf = 136316418;
          v40 = v26;
          v41 = 2080;
          v42 = "[VCSession(Messaging) processMediaTypeStatesWithMessage:mediaTypeStates:]";
          v43 = 1024;
          v44 = 973;
          v45 = 2112;
          v46 = v25;
          v47 = 2048;
          selfCopy2 = self;
          v49 = 2112;
          v50 = v28;
          v29 = v27;
          v30 = " [%s] %s:%d %@(%p) Receive State Update: Failed to find message entry key for mediaType=%@";
          v31 = 58;
LABEL_26:
          _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, v30, buf, v31);
        }
      }
    }

LABEL_3:
    v7 = (v7 + 1);
  }

  while (v7 != 9);
}

- (void)processMediaStateMessage:(id)message remoteParticipantID:(id)d
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableDictionary *)self->_remoteParticipantsMapByServerID objectForKeyedSubscript:d];
  if (message)
  {
    if (v6)
    {
      v40 = v6;
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(VCSession *)self processMediaTypeStatesWithMessage:message mediaTypeStates:v7];
      if (![v7 count])
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        allKeys = [message allKeys];
        v9 = [allKeys countByEnumeratingWithState:&v64 objects:v63 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v65;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v65 != v11)
              {
                objc_enumerationMutation(allKeys);
              }

              -[VCSession processStreamGroupStateMessageKey:value:mediaTypeStates:](self, "processStreamGroupStateMessageKey:value:mediaTypeStates:", *(*(&v64 + 1) + 8 * i), [message objectForKeyedSubscript:*(*(&v64 + 1) + 8 * i)], v7);
            }

            v10 = [allKeys countByEnumeratingWithState:&v64 objects:v63 count:16];
          }

          while (v10);
        }
      }

      messageCopy = message;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      allKeys2 = [v7 allKeys];
      v41 = [allKeys2 countByEnumeratingWithState:&v59 objects:v58 count:16];
      if (v41)
      {
        v14 = *v60;
        v37 = allKeys2;
        v38 = *v60;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v60 != v14)
            {
              objc_enumerationMutation(allKeys2);
            }

            v16 = *(*(&v59 + 1) + 8 * j);
            unsignedIntValue = [v16 unsignedIntValue];
            v18 = [objc_msgSend(v7 objectForKeyedSubscript:{v16), "unsignedIntValue"}];
            if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v30 = VRTraceErrorLogLevelToCSTR();
                v31 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  transportSessionID = self->_transportSessionID;
                  uuid = [v40 uuid];
                  v34 = VCSessionMediaType_Name(unsignedIntValue);
                  v35 = VCSessionMediaState_Name(v18);
                  *buf = 136316930;
                  v43 = v30;
                  v44 = 2080;
                  v45 = "[VCSession(Messaging) processMediaStateMessage:remoteParticipantID:]";
                  v46 = 1024;
                  v47 = 1009;
                  v48 = 1024;
                  *v49 = transportSessionID;
                  v14 = v38;
                  *&v49[4] = 2112;
                  *&v49[6] = d;
                  *&v49[14] = 2112;
                  *&v49[16] = uuid;
                  v50 = 2112;
                  dCopy = v34;
                  v52 = 2112;
                  v53 = v35;
                  v27 = v31;
                  v28 = " [%s] %s:%d Received State Update: transportSessionID=%u participantId=%@ participantUUID=%@ mediaType=%@ mediaState=%@";
                  v29 = 74;
                  goto LABEL_25;
                }
              }
            }

            else
            {
              v19 = &stru_1F570E008;
              if (objc_opt_respondsToSelector())
              {
                v19 = [(VCSession *)self performSelector:sel_logPrefix];
              }

              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v20 = VRTraceErrorLogLevelToCSTR();
                v21 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v22 = v7;
                  v23 = self->_transportSessionID;
                  uuid2 = [v40 uuid];
                  v25 = VCSessionMediaType_Name(unsignedIntValue);
                  v26 = VCSessionMediaState_Name(v18);
                  *buf = 136317442;
                  v43 = v20;
                  v44 = 2080;
                  v45 = "[VCSession(Messaging) processMediaStateMessage:remoteParticipantID:]";
                  v46 = 1024;
                  v47 = 1009;
                  v48 = 2112;
                  *v49 = v19;
                  *&v49[8] = 2048;
                  *&v49[10] = self;
                  *&v49[18] = 1024;
                  *&v49[20] = v23;
                  v7 = v22;
                  v50 = 2112;
                  dCopy = d;
                  v52 = 2112;
                  v53 = uuid2;
                  allKeys2 = v37;
                  v14 = v38;
                  v54 = 2112;
                  v55 = v25;
                  v56 = 2112;
                  v57 = v26;
                  v27 = v21;
                  v28 = " [%s] %s:%d %@(%p) Received State Update: transportSessionID=%u participantId=%@ participantUUID=%@ mediaType=%@ mediaState=%@";
                  v29 = 94;
LABEL_25:
                  _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
                  continue;
                }
              }
            }
          }

          v41 = [allKeys2 countByEnumeratingWithState:&v59 objects:v58 count:16];
        }

        while (v41);
      }

      [v40 setRemoteMediaTypeStates:v7];

      -[VCSession processMediaTypeMixingList:forRemoteParticipant:](self, "processMediaTypeMixingList:forRemoteParticipant:", [messageCopy objectForKeyedSubscript:{objc_msgSend(&unk_1F579BE08, "stringValue")}], v40);
    }

    else
    {
      [VCSession(Messaging) processMediaStateMessage:? remoteParticipantID:?];
    }
  }

  else
  {
    [VCSession(Messaging) processMediaStateMessage:? remoteParticipantID:?];
  }
}

- (void)processMediaTypeMixingList:(id)list forRemoteParticipant:(id)participant
{
  v6 = 0;
  do
  {
    if (v6 != 7)
    {
      v7 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithUnsignedInt:{v6), "stringValue"}];
      v8 = [list objectForKeyedSubscript:v7];
      integerValue = [v7 integerValue];
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      [participant setMediaType:integerValue mixingWithMediaType:{objc_msgSend(v10, "integerValue")}];
    }

    v6 = (v6 + 1);
  }

  while (v6 != 9);
}

- (void)enableDataCollectionInReportingConfig:(id *)config
{
  OUTLINED_FUNCTION_49_1();
  v26 = v3;
  v27 = v6;
  v7 = v4;
  v25 = *MEMORY[0x1E69E9840];
  if (v5)
  {
    if (*(v4 + 409) == 1)
    {
      v8 = v5;
      if (+[VCHardwareSettings isDataCollectionSupported])
      {
        *(v8 + 128) = [*(v7 + 832) isFeatureEnabled:16];
        if ([*(v7 + 696) shouldGenerateLocalTrainingData])
        {
          *(v8 + 129) = 1;
          *(v8 + 136) = [*(v7 + 696) recipeID];
        }

        if (*(v8 + 128))
        {
          v9 = @"Data collection is disabled, VCSession not sampled by Trial";
        }

        else
        {
          v9 = @"Data collection enabled, waiting for RTCReport confirmation";
        }
      }

      else
      {
        v9 = @"Data collection is not available on this platform";
      }
    }

    else
    {
      v9 = @"Data collection is not available outside U+1";
    }
  }

  else
  {
    v9 = @"Invalid reportingConfig, data collection disabled";
  }

  if (objc_opt_class() == v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(__CFString *)v9 UTF8String];
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_7();
        LODWORD(v22) = 579;
        WORD2(v22) = v11;
        *(&v22 + 6) = v12;
        OUTLINED_FUNCTION_4_0();
        v17 = 38;
LABEL_19:
        _os_log_impl(v13, v14, OS_LOG_TYPE_DEFAULT, v15, v16, v17);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_39_1())
    {
      v10 = OUTLINED_FUNCTION_38_1();
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [(__CFString *)v9 UTF8String];
        OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_9_9();
        *(&v22 + 6) = v10;
        HIWORD(v22) = 2048;
        v23 = v7;
        LOWORD(v24) = v19;
        *(&v24 + 2) = v20;
        v13 = &dword_1DB56E000;
        v15 = "VCSession [%s] %s:%d %@(%p) %s";
        v16 = &v21;
        v14 = v18;
        v17 = 58;
        goto LABEL_19;
      }
    }
  }

  OUTLINED_FUNCTION_46_3();
}

- (void)updateOneToOneVideoReceiverDelegate:(BOOL)delegate
{
  if (self->_oneToOneModeEnabled)
  {
    if (delegate)
    {
      [(VCSession *)self setupOneToOneVideoReceiverDelegate];
    }

    else
    {
      [(VCSession *)self cleanupOneToOneVideoReceiverDelegate];
    }
  }
}

- (void)updateVideoQualityWithUpdateConfig:(id)config forParticipant:(id)participant redistributeBitrate:(BOOL *)bitrate
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_33_4();
  v9 = [v8 propertyWithName:@"videoQuality"];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  objc_opt_class();
  if (OUTLINED_FUNCTION_41())
  {
    unsignedIntValue = [v10 unsignedIntValue];
    if ([v7 videoQuality] != unsignedIntValue)
    {
      [v7 setVideoQuality:unsignedIntValue];
      *v6 = 1;
    }

    goto LABEL_5;
  }

  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_5;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_5;
    }

    v12 = objc_opt_class();
    NSStringFromClass(v12);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6_26();
    OUTLINED_FUNCTION_5_23();
LABEL_15:
    _os_log_error_impl(v13, v14, v15, v16, v17, v18);
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_39_1())
  {
    OUTLINED_FUNCTION_38_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      v19 = objc_opt_class();
      NSStringFromClass(v19);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_9_6();
      goto LABEL_15;
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_46_3();
}

- (void)updateVisibilityIndexWithUpdateConfig:(id)config forParticipant:(id)participant redistributeBitrate:(BOOL *)bitrate
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_33_4();
  v9 = [v8 propertyWithName:@"visibilityIndex"];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  objc_opt_class();
  if (OUTLINED_FUNCTION_41())
  {
    unsignedIntValue = [v10 unsignedIntValue];
    if (unsignedIntValue != [v7 visibilityIndex])
    {
      [v7 setVisibilityIndex:unsignedIntValue];
      *v6 = 1;
    }

    goto LABEL_5;
  }

  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_5;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_5;
    }

    v12 = objc_opt_class();
    NSStringFromClass(v12);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6_26();
    OUTLINED_FUNCTION_5_23();
LABEL_15:
    _os_log_error_impl(v13, v14, v15, v16, v17, v18);
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_39_1())
  {
    OUTLINED_FUNCTION_38_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      v19 = objc_opt_class();
      NSStringFromClass(v19);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_9_6();
      goto LABEL_15;
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_46_3();
}

- (void)updateProminenceIndexWithUpdateConfig:(id)config forParticipant:(id)participant redistributeBitrate:(BOOL *)bitrate
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_33_4();
  v9 = [v8 propertyWithName:@"prominenceIndex"];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  objc_opt_class();
  if (OUTLINED_FUNCTION_41())
  {
    unsignedIntValue = [v10 unsignedIntValue];
    if (unsignedIntValue != [v7 prominenceIndex])
    {
      [v7 setProminenceIndex:unsignedIntValue];
      *v6 = 1;
    }

    goto LABEL_5;
  }

  if (objc_opt_class() == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_5;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      goto LABEL_5;
    }

    v12 = objc_opt_class();
    NSStringFromClass(v12);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6_26();
    OUTLINED_FUNCTION_5_23();
LABEL_15:
    _os_log_error_impl(v13, v14, v15, v16, v17, v18);
    goto LABEL_5;
  }

  if (OUTLINED_FUNCTION_39_1())
  {
    OUTLINED_FUNCTION_38_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      v19 = objc_opt_class();
      NSStringFromClass(v19);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_9_6();
      goto LABEL_15;
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_46_3();
}

- (void)updateMicrophoneMuted:(BOOL)muted withUpdateConfig:(id)config forParticipant:(id)participant
{
  OUTLINED_FUNCTION_49_1();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = [v11 propertyWithName:@"microphoneMuted"];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  objc_opt_class();
  if ((OUTLINED_FUNCTION_41() & 1) == 0)
  {
    if (objc_opt_class() == v10)
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

      v17 = objc_opt_class();
      NSStringFromClass(v17);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_5_23();
    }

    else
    {
      if (OUTLINED_FUNCTION_39_1())
      {
        OUTLINED_FUNCTION_38_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_16;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_16;
      }

      v24 = objc_opt_class();
      NSStringFromClass(v24);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_9_6();
    }

    _os_log_error_impl(v18, v19, v20, v21, v22, v23);
LABEL_16:
    OUTLINED_FUNCTION_46_3();
    return;
  }

  bOOLValue = [v13 BOOLValue];
  if (bOOLValue != v8 || bOOLValue == [v6 isMuted])
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_46_3();

  [v15 setMuted:?];
}

- (void)updateIsPlaybackSynchronizationGroupMemberWithUpdateConfig:(id)config forParticipant:(id)participant
{
  OUTLINED_FUNCTION_49_1();
  v5 = v4;
  v7 = v6;
  v9 = [v8 propertyWithName:@"isSynchronizationGroupMember"];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  objc_opt_class();
  if ((OUTLINED_FUNCTION_41() & 1) == 0)
  {
    if (objc_opt_class() == v7)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_15;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        goto LABEL_15;
      }

      v14 = objc_opt_class();
      NSStringFromClass(v14);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_5_23();
    }

    else
    {
      if (OUTLINED_FUNCTION_39_1())
      {
        OUTLINED_FUNCTION_38_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_15;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_15;
      }

      v21 = objc_opt_class();
      NSStringFromClass(v21);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_9_6();
    }

    _os_log_error_impl(v15, v16, v17, v18, v19, v20);
LABEL_15:
    OUTLINED_FUNCTION_46_3();
    return;
  }

  bOOLValue = [v10 BOOLValue];
  if (bOOLValue == [v5 isPlaybackSynchronizationGroupMember])
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_46_3();

  [v12 setIsPlaybackSynchronizationGroupMember:?];
}

- (void)updatePlaybackSynchronizationGroupUUIDWithUpdateConfig:(id)config
{
  OUTLINED_FUNCTION_49_1();
  v4 = v3;
  v6 = [v5 propertyWithName:@"synchronizationGroupUUID"];
  if (v6)
  {
    objc_opt_class();
    if (OUTLINED_FUNCTION_41())
    {
      v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
LABEL_6:
      [v4 dispatchedSetPlaybackSyncGroupUUID:v6];
      goto LABEL_7;
    }

    objc_opt_class();
    if (OUTLINED_FUNCTION_41())
    {
      v6 = 0;
      goto LABEL_6;
    }

    if (objc_opt_class() == v4)
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

      v7 = objc_opt_class();
      NSStringFromClass(v7);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_5_23();
    }

    else
    {
      if (OUTLINED_FUNCTION_39_1())
      {
        OUTLINED_FUNCTION_38_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_16;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_16;
      }

      v14 = objc_opt_class();
      NSStringFromClass(v14);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_9_6();
    }

    _os_log_error_impl(v8, v9, v10, v11, v12, v13);
LABEL_16:
    v6 = 0;
  }

LABEL_7:

  OUTLINED_FUNCTION_46_3();
}

- (void)updatePositionalInfoWithUpdateConfig:(id)config forParticipant:(id)participant
{
  OUTLINED_FUNCTION_49_1();
  v5 = v4;
  if (![v6 propertyWithName:@"positionalInfo"])
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_14;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_14;
      }

      v9 = objc_opt_class();
      NSStringFromClass(v9);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_5_7();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_14;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_14;
      }

      v16 = objc_opt_class();
      NSStringFromClass(v16);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_6();
    }

    _os_log_error_impl(v10, v11, v12, v13, v14, v15);
LABEL_14:
    OUTLINED_FUNCTION_46_3();
    return;
  }

  OUTLINED_FUNCTION_46_3();

  [v7 updatePositionalInfo:? shouldReapply:?];
}

- (int)maxOneToOneCameraFrameRate
{
  OUTLINED_FUNCTION_49_1();
  v28 = v2;
  v29 = v3;
  v5 = v4;
  v27 = *MEMORY[0x1E69E9840];
  maxCaptureCameraFrameRate = [*(v4 + 240) maxCaptureCameraFrameRate];
  if (v5[849] == 1)
  {
    mode = [VCPowerManager_DefaultManager() mode];
    v8 = mode;
    if (maxCaptureCameraFrameRate >= 24)
    {
      v9 = 24;
    }

    else
    {
      v9 = maxCaptureCameraFrameRate;
    }

    if (maxCaptureCameraFrameRate >= 15)
    {
      v10 = 15;
    }

    else
    {
      v10 = maxCaptureCameraFrameRate;
    }

    if (mode != 2)
    {
      v10 = maxCaptureCameraFrameRate;
    }

    if (mode == 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    if (objc_opt_class() == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_8_0();
          WORD5(v23) = v14;
          HIDWORD(v23) = v11;
          v15 = "VCSession [%s] %s:%d LowPowerMode=%d enabled, maxFrameRate=%d";
          v16 = v13;
          v17 = 40;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v22, v17);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [v5 performSelector:sel_logPrefix];
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
          LODWORD(v22) = 136316674;
          *(&v22 + 4) = v18;
          WORD6(v22) = 2080;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_9_9();
          *(&v23 + 6) = v12;
          HIWORD(v23) = 2048;
          v24 = v5;
          LOWORD(v25) = v20;
          *(&v25 + 2) = v8;
          HIWORD(v25) = v20;
          v26 = v11;
          v15 = "VCSession [%s] %s:%d %@(%p) LowPowerMode=%d enabled, maxFrameRate=%d";
          v16 = v19;
          v17 = 60;
          goto LABEL_23;
        }
      }
    }
  }

  OUTLINED_FUNCTION_46_3();
  return result;
}

- (BOOL)isEnhancedJBAdaptationsEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(VCSessionParticipant *)self->_localParticipant isVideoEnabled])
  {
    v3 = VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTV();
  }

  else
  {
    v3 = VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTA();
  }

  v4 = v3;
  if (self->_experimentManager && v3)
  {
    v14[0] = 0;
    isVideoEnabled = [(VCSessionParticipant *)self->_localParticipant isVideoEnabled];
    v6 = kVCExperimentEnhancedJBAdaptationsForFTV;
    if (!isVideoEnabled)
    {
      v6 = kVCExperimentEnhancedJBAdaptationsForFTA;
    }

    if ([(VCExperimentManager *)self->_experimentManager experimentGroup:v14 forExperiment:*v6]< 0)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_36_6();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_32_5();
          OUTLINED_FUNCTION_31_8();
          OUTLINED_FUNCTION_35_5();
          OUTLINED_FUNCTION_30_6();
          _os_log_impl(v7, v8, v9, v10, v11, v12);
        }
      }
    }
  }

  return v4;
}

- (BOOL)isLateKeyFrameDetectionEnabled
{
  OUTLINED_FUNCTION_49_1();
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v25 = *MEMORY[0x1E69E9840];
  v6 = VCFeatureFlagManager_EnableLateKeyFrameDetection();
  v20 = 0;
  v7 = v5[88];
  if (v7 && v6 && ([v7 experimentGroup:&v20 forExperiment:@"enableLateKeyFrameDetection"] & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_36_6();
    if (objc_opt_class() == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_32_5();
          OUTLINED_FUNCTION_31_8();
          OUTLINED_FUNCTION_35_5();
          OUTLINED_FUNCTION_30_6();
LABEL_14:
          _os_log_impl(v9, v10, v11, v12, p_buf, v14);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v5 performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136316418;
          *(&buf + 4) = v15;
          WORD6(buf) = 2080;
          OUTLINED_FUNCTION_31_8();
          LODWORD(v22) = 3676;
          WORD2(v22) = 2112;
          *(&v22 + 6) = v8;
          HIWORD(v22) = 2048;
          v23 = v5;
          LOWORD(v24) = v17;
          *(&v24 + 2) = v18;
          v9 = &dword_1DB56E000;
          v12 = "VCSession [%s] %s:%d %@(%p) VCFeatureExperimentSetting: Found experiment group. lateKeyFrameDetectionGroup=%u";
          p_buf = &buf;
          v10 = v16;
          v11 = OS_LOG_TYPE_DEFAULT;
          v14 = 54;
          goto LABEL_14;
        }
      }
    }
  }

  OUTLINED_FUNCTION_46_3();
  return result;
}

- (BOOL)isJBLatencySensitiveModeEnabled
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = VCFeatureFlagManager_JBLatencySensitiveModeEnabled();
  experimentManager = self->_experimentManager;
  if (experimentManager && v3)
  {
    v12[0] = 0;
    if ([(VCExperimentManager *)experimentManager experimentGroup:v12 forExperiment:@"enableJBLatencySensitiveMode"]< 0)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_36_6();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_32_5();
          OUTLINED_FUNCTION_31_8();
          OUTLINED_FUNCTION_35_5();
          OUTLINED_FUNCTION_30_6();
          _os_log_impl(v5, v6, v7, v8, v9, v10);
        }
      }
    }
  }

  return v3;
}

- (void)initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)initWithIDSDestination:configurationDict:negotiationData:delegate:processId:isGKVoiceChat:.cold.2()
{
  [0 UTF8String];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_23();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setReportingConfig:(void *)a1 .cold.1(void *a1)
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

void __64__VCSession_generateKeyFrameWithReceivedMessage_forParticipant___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)readAndSetABCSymptomsReportingThresholdsFromStorebags:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __44__VCSession_setTransportSessionEventHandler__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "VCSession [%s] %s:%d Link constrains changed: '%@'");
}

void __44__VCSession_setTransportSessionEventHandler__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "VCSession [%s] %s:%d Removing current active connection '%@'");
}

- (void)handlePrimaryConnectionChanged:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "VCSession [%s] %s:%d Primary connection changed to '%@'");
}

- (void)vcSessionParticipantDidMediaReceiveFlushRequestWithPayloads:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __55__VCSession_vcSessionParticipantDidDetectMKICollision___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_5();
  [*(v0 + 40) uuid];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x26u);
}

void __55__VCSession_vcSessionParticipantDidDetectMKICollision___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14_5();
  [*(v0 + 40) uuid];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_5_23();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
}

void __33__VCSession_applySpatialMetadata__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)sendDeviceStateMessageToParticipant:withStatus:checkDNUStatus:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x1Cu);
    }
  }
}

- (void)updateParticipantUUID:withUpdateConfig:redistributeBitrate:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __69__VCSession_updateParticipantConfigurations_sessionPresentationInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, "VCSession [%s] %s:%d %@");
}

void __60__VCSession_setSessionInfoSynchronizerErrorResponseCallback__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupSpatialAudio
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)reserveAudioChannelForMediaType:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = -2143813630;
}

- (void)reserveAudioChannelForMediaType:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)reserveAudioChannelForMediaType:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

- (void)setMediaQueuePeakBitrateWithTargetBitrate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newEncryptionLabelWithLocalUUID:remoteUUID:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x26u);
    }
  }
}

- (void)composeControlChannelParticipantConfig:withRemoteParticipant:.cold.1()
{
  OUTLINED_FUNCTION_30();
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

  OUTLINED_FUNCTION_26_5();
}

- (void)composeControlChannelParticipantConfig:withRemoteParticipant:.cold.2()
{
  OUTLINED_FUNCTION_30();
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

  OUTLINED_FUNCTION_26_5();
}

- (void)composeControlChannelParticipantConfig:withRemoteParticipant:.cold.3()
{
  OUTLINED_FUNCTION_30();
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

  OUTLINED_FUNCTION_26_5();
}

- (void)composeControlChannelParticipantConfig:withRemoteParticipant:.cold.4()
{
  OUTLINED_FUNCTION_30();
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

  OUTLINED_FUNCTION_26_5();
}

- (void)composeControlChannelParticipantConfig:withRemoteParticipant:.cold.5()
{
  OUTLINED_FUNCTION_30();
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

  OUTLINED_FUNCTION_26_5();
}

- (void)composeControlChannelParticipantConfig:(_BYTE *)a1 withRemoteParticipant:(void *)a2 .cold.6(_BYTE *a1, void *a2)
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

- (void)registerRemoteParticipantToSession:(void *)a1 .cold.1(void *a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [a1 idsParticipantID];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_5_7();
      _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

- (void)registerRemoteParticipantToSession:(void *)a1 .cold.2(void *a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [a1 idsParticipantID];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_5_7();
      _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

void __62__VCSession_sendSymptomsToRemoteParticipants_symptom_groupID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  LODWORD(v6) = 3164;
  WORD2(v6) = 2048;
  HIWORD(v6) = v0;
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v1, v2, "VCSession [%s] %s:%d remoteParticipantIDs = %p", v3, v4, v5, v6);
}

- (void)reportingSessionParticipantEvent:withParticipant:keyChangeReason:newMKI:withStreamGroupID:withStreamID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)reportingSessionParticipantEvent:withParticipant:keyChangeReason:newMKI:withStreamGroupID:withStreamID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)collectSessionEventKeyFieldsAndSubtype:eventType:withParticipant:keyChangeReason:newMKI:withStreamGroupID:withStreamID:collectSubtype:.cold.1()
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

- (void)reportingSessionRemoteParticipantEvent:withParticipant:value:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)dispatchedAddParticipantWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [v0 idsParticipantID];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_23();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
}

- (void)dispatchedAddParticipantWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_14_5();
  [v0 uuid];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_5_23();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
}

- (void)dispatchedAddParticipantWithConfig:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)dispatchedAddParticipantWithConfig:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)dispatchedAddParticipantWithConfig:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)configureRemoteParticipant:(uint64_t)a1 withConfig:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [a2 idsParticipantID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
}

- (void)dispatchedUpdateConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_5_7();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)dispatchedUpdateConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_5_7();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)dispatchedUpdateConfiguration:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_28())
    {
      [a2 uuid];
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_4();
      v7 = a1;
      v8 = 2112;
      v9 = v5;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, "VCSession [%s] %s:%d VCSession:[%p] Failed to update the remote participant:[%@] configuration", v6, 0x30u);
    }
  }
}

- (void)dispatchedParticipant:didStart:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __85__VCSession_OneToOne__completionHandlerOneToOneEnabled_didSucceed_configurationDict___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __85__VCSession_OneToOne__completionHandlerOneToOneEnabled_didSucceed_configurationDict___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)processStreamGroupStateMessageKey:(id)key value:(id)value mediaTypeStates:(id)states
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = [VCSession mediaTypeForMediaStateMessageKey:?];
  if (v9 != -1)
  {
    v10 = v9;
    v11 = VCSessionMediaType_Name(v9);
    v12 = [VCSession mediaStateForMediaStateMessageValue:value];
    if (v10 == -2)
    {
      return;
    }

    v13 = v12;
    v14 = VCSessionMediaState_Name(v12);
    v15 = [states objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v10)}];
    if (!v15)
    {
      goto LABEL_19;
    }

    unsignedIntValue = [v15 unsignedIntValue];
    if (unsignedIntValue == v13)
    {
      goto LABEL_19;
    }

    v17 = unsignedIntValue;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_16;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      VCSessionMediaState_Name(v17);
      *buf = 136316418;
      v40 = v18;
      v41 = 2080;
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_5_37();
      keyCopy = v11;
      v45 = v20;
      v46 = v14;
      v47 = v20;
      keyCopy2 = v21;
      v22 = " [%s] %s:%d Media states for mediaType=%@ are mismatched state=%@ != state=%@";
      v23 = v19;
      v24 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v38 = [(VCSession *)self performSelector:sel_logPrefix];
      }

      else
      {
        v38 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_16;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      VCSessionMediaState_Name(v17);
      *buf = 136316930;
      v40 = v25;
      v41 = 2080;
      v42 = "[VCSession(Messaging) processStreamGroupStateMessageKey:value:mediaTypeStates:]";
      v43 = 1024;
      OUTLINED_FUNCTION_5_37();
      keyCopy = v38;
      OUTLINED_FUNCTION_10_25();
      keyCopy2 = v11;
      v49 = v27;
      v50 = v14;
      v51 = v27;
      v52 = v28;
      v22 = " [%s] %s:%d %@(%p) Media states for mediaType=%@ are mismatched state=%@ != state=%@";
      v23 = v26;
      v24 = 78;
    }

    _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_16:
    if (v17 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v13;
    }

LABEL_19:
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
    [states setObject:v29 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v10)}];
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v40 = v31;
        v41 = 2080;
        OUTLINED_FUNCTION_5_13();
        OUTLINED_FUNCTION_5_37();
        keyCopy = key;
        v33 = " [%s] %s:%d Found unsupported key=%@";
        v34 = v32;
        v35 = 38;
LABEL_31:
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v30 = [(VCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v30 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v40 = v36;
        v41 = 2080;
        OUTLINED_FUNCTION_5_13();
        OUTLINED_FUNCTION_5_37();
        keyCopy = v30;
        OUTLINED_FUNCTION_10_25();
        keyCopy2 = key;
        v33 = " [%s] %s:%d %@(%p) Found unsupported key=%@";
        v34 = v37;
        v35 = 58;
        goto LABEL_31;
      }
    }
  }
}

void __57__VCSession_Messaging__setupStreamGroupStateFetchMessage__block_invoke_cold_1(int a1)
{
  if (a1 >= 3)
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

void __57__VCSession_Messaging__setupStreamGroupStateFetchMessage__block_invoke_cold_2()
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

void __57__VCSession_Messaging__setupStreamGroupStateFetchMessage__block_invoke_cold_3()
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

void __50__VCSession_Messaging__setupWRMAlertUpdateMessage__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __50__VCSession_Messaging__setupWRMAlertUpdateMessage__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __44__VCSession_Messaging__setupMomentsMessages__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __54__VCSession_Messaging__setupPreferredInterfaceMessage__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __56__VCSession_Messaging__setupMediaQualityDegradedMessage__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __56__VCSession_Messaging__setupMediaQualityDegradedMessage__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __58__VCSession_Messaging__setupNetworkQualityDegradedMessage__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __58__VCSession_Messaging__setupNetworkQualityDegradedMessage__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke_cold_1()
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

void __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Cell tech is nil", v2, v3, v4, v5, v6);
    }
  }
}

void __51__VCSession_Messaging__setupCellTechChangeMessages__block_invoke_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d Cell tech message is nil ", v2, v3, v4, v5, v6);
    }
  }
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke_235_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke_242_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke_243_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __45__VCSession_Messaging__setupReactionMessages__block_invoke_243_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __53__VCSession_Messaging__setUpDeviceOrientationMessage__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end