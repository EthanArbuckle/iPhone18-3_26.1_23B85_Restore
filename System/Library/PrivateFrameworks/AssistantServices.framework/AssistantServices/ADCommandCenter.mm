@interface ADCommandCenter
+ (id)sharedCommandCenter;
+ (id)sharedQueue;
- (ADCommandCenter)init;
- (ADRequestDispatcherService)_requestDispatcherService;
- (ADSpeechManager)_speechManager;
- (BOOL)_areRequiredAssetsMissing;
- (BOOL)_context_bundleIdHasSupportForCarPlayRequiredMessageIntents:(id)a3;
- (BOOL)_didAlreadyAcceptResultCandidate:(id)a3;
- (BOOL)_hasActiveClientOrSyncingOrInCall;
- (BOOL)_hasCompletionForCommandId:(id)a3;
- (BOOL)_hasOutstandingAnchorsRequestId:(id)a3;
- (BOOL)_hasOutstandingRequestId:(id)a3;
- (BOOL)_hasOutstandingSyncChunkId:(id)a3;
- (BOOL)_hasRemoteExecutionContextForExecutionID:(id)a3;
- (BOOL)_hasRemoteExecutionContextForRequestID:(id)a3;
- (BOOL)_hasRootExecutionContextForRequestID:(id)a3;
- (BOOL)_isClientBoundCommand:(id)a3;
- (BOOL)_isFauxPeer:(id)a3;
- (BOOL)_isRelevantCancellationCommand:(id)a3;
- (BOOL)_isRequestDelaying;
- (BOOL)_isServerBoundCommand:(id)a3;
- (BOOL)_metrics_isAssistantOrDictationEnabled;
- (BOOL)_metrics_isSystemIdle;
- (BOOL)_outputVoice_setOutputVoice:(id)a3;
- (BOOL)_peerIsPairedPhone:(id)a3;
- (BOOL)_peerIsPairedWatch:(id)a3;
- (BOOL)_refIdIsSpeechStart:(id)a3;
- (BOOL)_remoteExecute_shouldSendCommandToPrimaryUser:(id)a3;
- (BOOL)_shouldIgnoreCommand:(id)a3 executionContext:(id)a4;
- (BOOL)_shouldImmediatelyDismissSiriDueToMissingRequiredAssets;
- (BOOL)_shouldRetryForError:(id)a3;
- (BOOL)_sync_hasCommandForRefId:(id)a3;
- (BOOL)_sync_isRequestBlockingSync;
- (BOOL)assistantSessionManagerShouldAttemptRetry:(id)a3;
- (BOOL)canLogWithSpeechManager:(id)a3;
- (BOOL)isDeviceLocked;
- (BOOL)isDeviceShowingLockScreen;
- (BOOL)isHeadGestureRecognitionAvailable;
- (BOOL)isInCarDNDMode;
- (BOOL)isInStarkMode;
- (BOOL)isStereoPairLeader;
- (BOOL)isTimeoutSuspended;
- (id)_account;
- (id)_accounts;
- (id)_acousticIDHelper;
- (id)_activeAccountIdentifier;
- (id)_allAnchorsFromRequest:(id)a3 andResponse:(id)a4;
- (id)_appMetaDataForAppProxy:(id)a3 clientIdentifier:(id)a4 syncSlots:(id)a5;
- (id)_appMetaDataListFromVocabSources:(id)a3 appIdentifyingInfoList:(id)a4;
- (id)_approximatePreviousTTSInterval:(id)a3;
- (id)_bargeInModes;
- (id)_beginRemoteExecutionContextForCommand:(id)a3 fromPeer:(id)a4 withRemoteExecutionInfo:(id)a5;
- (id)_buildORCHClientEvent:(id)a3;
- (id)_contextManager;
- (id)_createDefaultRequestContextData:(BOOL)a3 suggestionRequestType:(int64_t)a4;
- (id)_createMuxStartAsrOnServerRequestWithSpeechRequest:(id)a3;
- (id)_createStartServerRequestWithStartRequest:(id)a3;
- (id)_deviceRouter;
- (id)_deviceSyncCoordinator;
- (id)_diagnosticsManager;
- (id)_directInvocationContextForSpeechRequestOptions:(id)a3 textToSpeechEnabled:(BOOL)a4;
- (id)_domainObjectCache;
- (id)_errorAggregation:(id)a3;
- (id)_executionContextMatchingExecutionInfo:(id)a3 fallbackRequestID:(id)a4;
- (id)_fetchComputedModeAndUpdateRequestDelegate;
- (id)_fetchUODStatusForLanguageCode:(id)a3;
- (id)_firstChanceServiceForCommand:(id)a3;
- (id)_flowServiceListener;
- (id)_getInstrumentationQueue;
- (id)_getPreheatOptionsForHorseman;
- (id)_handleConfidenceScores:(id)a3 classification:(unint64_t)a4 classifiedUser:(id)a5 unknownUserScore:(int64_t)a6 duration:(int64_t)a7 version:(int64_t)a8 thresholdingType:(id)a9 assetVersion:(id)a10;
- (id)_handledCommandIdsForRequestId:(id)a3;
- (id)_headphonesAnnouncementRequestCapabilityManager;
- (id)_languageModelForSpeechRequest:(id)a3;
- (id)_locationManager;
- (id)_managedStoreObjectForKey:(id)a3;
- (id)_offlineMetricsManager;
- (id)_powerAssertionManager;
- (id)_remoteExecute_primaryUserDevicesWithTypes:(unint64_t)a3;
- (id)_remoteExecutionContextForExecutionID:(id)a3;
- (id)_remoteRequestHelper;
- (id)_remoteSpeechRequestHelper;
- (id)_requestDelayManager;
- (id)_requestDispatcherSessionConfiguration;
- (id)_restrictedCommands;
- (id)_resultObjectCache;
- (id)_rootExecutionContextForRequestID:(id)a3;
- (id)_sendContextPromiseForTypes:(int64_t)a3 withAceId:(id)a4;
- (id)_serviceManager;
- (id)_sessionManager;
- (id)_sharedDataService;
- (id)_speechCapturingContextForSessionUUID:(id)a3;
- (id)_startServerRequestWithSpeechRequest:(id)a3 recordingContext:(id)a4 recordingInfo:(id)a5;
- (id)_startServerRequestWithStartRequest:(id)a3 requestInfo:(id)a4;
- (id)_syncManager;
- (id)_testAgent;
- (id)_updateUODAssetStatusForLanguage:(id)a3;
- (id)acquireShutdownAssertion;
- (id)assistantSessionManagerCommandsToRestoreStateOnNewConnection:(id)a3;
- (id)getAssistantIdentifier;
- (int)_convertToORCHUserIdentityClassification:(id)a3;
- (int)getHomeDevicesAudioTopology;
- (int64_t)_context_deviceState;
- (unint64_t)callState;
- (unint64_t)lockScreenStatus;
- (unsigned)_sharedVoiceAudioSessionID;
- (void)UIService:(id)a3 didPresentUIResponseForCommand:(id)a4 withExecutionInfo:(id)a5;
- (void)UIService:(id)a3 executeHandler:(id)a4 forCommand:(id)a5;
- (void)_acceptResultCandidate:(id)a3 isMitigated:(BOOL)a4 featuresToLog:(id)a5 completion:(id)a6;
- (void)_accessRecordedAudioWithIdentifier:(id)a3 completion:(id)a4;
- (void)_acousticId_clearPartialResultTimer;
- (void)_acousticId_commandFailed:(id)a3;
- (void)_acousticId_handleFingerprint:(id)a3 duration:(double)a4;
- (void)_acousticId_musicWasDetected;
- (void)_acousticId_speechCaptureCompleted;
- (void)_acousticId_startSessionForSpeechRequest:(id)a3;
- (void)_acousticId_startSessionWithContext:(id)a3;
- (void)_addCompletion:(id)a3 forCommand:(id)a4 forKey:(id)a5;
- (void)_addExecutionDevice:(id)a3 forCommandExecutionContext:(id)a4;
- (void)_addHandledCommandId:(id)a3 forRequestId:(id)a4;
- (void)_addNetworkActivityTracingForLabel:(int64_t)a3 start:(BOOL)a4 withCompletionReason:(int64_t)a5 andError:(id)a6;
- (void)_addOutstandingAnchorsRequestId:(id)a3;
- (void)_addOutstandingRequestId:(id)a3 forReason:(id)a4;
- (void)_addOutstandingSyncChunkId:(id)a3;
- (void)_addPostCommandHandlingBlock:(id)a3 forCommandId:(id)a4 requestId:(id)a5;
- (void)_addRecordedSpeechSampleData:(id)a3 delegate:(id)a4;
- (void)_adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)a3;
- (void)_amosSADomainObjectCancel:(id)a3 completion:(id)a4;
- (void)_amosSADomainObjectCommit:(id)a3 completion:(id)a4;
- (void)_amosSADomainObjectCreate:(id)a3 completion:(id)a4;
- (void)_amosSADomainObjectDelete:(id)a3 completion:(id)a4;
- (void)_amosSADomainObjectPunchOut:(id)a3 completion:(id)a4;
- (void)_amosSADomainObjectRetrieve:(id)a3 completion:(id)a4;
- (void)_amosSADomainObjectUpdate:(id)a3 completion:(id)a4;
- (void)_attachPersonaIdIfNeeded:(id)a3 personaAccessLevel:(id)a4 aceCommand:(id)a5;
- (void)_broadcastCommand:(id)a3;
- (void)_cancelCallKeepAlive;
- (void)_cancelCrossDeviceRequestOperationsForLocalRequestWithId:(id)a3;
- (void)_cancelCrossDeviceRequestOperationsForRemoteRequest;
- (void)_cancelCurrentRequestForReason:(int64_t)a3 andError:(id)a4 successorInfo:(id)a5;
- (void)_cancelLocalRecognitionIfRequired;
- (void)_cancelRequestForDelegate:(id)a3 reason:(int64_t)a4 error:(id)a5;
- (void)_cancelSessionManager;
- (void)_cancelSpeechForDelegate:(id)a3;
- (void)_cleanUpForFailureCommandWithRefId:(id)a3;
- (void)_clearAccount;
- (void)_clearAllExecutionDevices;
- (void)_clearContext;
- (void)_clearContextAndStartAssistantSession;
- (void)_clearContextAndStartDictationSessionWithLanguageCode:(id)a3 dictationOptions:(id)a4;
- (void)_clearQueuedLanguageCode;
- (void)_clearQueuedOutputVoice;
- (void)_clearRequestDelegateState;
- (void)_clearSpeechDelegateState;
- (void)_cloudSyncPreferenceDidChange;
- (void)_completeNotificationSearch:(id)a3 bulletins:(id)a4 completion:(id)a5;
- (void)_completeRequestForCurrentDelegate:(BOOL)a3 error:(id)a4;
- (void)_context_acknowledgeBulletinForObject:(id)a3;
- (void)_context_clearContextWithClearSiriKitContext:(BOOL)a3;
- (void)_context_fetchAppicationContextForApplicationInfo:(id)a3 supplementalContext:(id)a4 refID:(id)a5;
- (void)_context_fetchApplicationContextForApplicationInfos:(id)a3 completion:(id)a4;
- (void)_context_reset;
- (void)_context_rollbackClearContext;
- (void)_context_setAlertContextDirty;
- (void)_context_setApplicationContext:(id)a3;
- (void)_context_setApplicationContextForApplicationInfos:(id)a3 withRefId:(id)a4;
- (void)_context_setOverriddenApplicationContext:(id)a3 withContext:(id)a4;
- (void)_context_setSTApplicationContext:(id)a3;
- (void)_context_updateContext;
- (void)_context_willSetApplicationContextWithRefId:(id)a3;
- (void)_createAssistantLocallyIfNeeded:(BOOL)a3;
- (void)_createRootExecutionContextForRequestID:(id)a3;
- (void)_deleteAccountWithIdentifier:(id)a3;
- (void)_deleteSiriAudioDataOnDevice;
- (void)_deleteSiriHistoryOnDeviceOnDestroyAssistant;
- (void)_deleteSiriHistoryWithContext:(id)a3 withCompletion:(id)a4;
- (void)_destroyActiveAccount;
- (void)_destroyRootExecutionContextForRequestID:(id)a3;
- (void)_dictationSessionDidComplete;
- (void)_didLaunchAppForRequestWithIdentifier:(id)a3;
- (void)_dispatchAndRemovePostCommandHandlingBlocksForCommandId:(id)a3 requestId:(id)a4;
- (void)_downloadMorphunAssets:(id)a3;
- (void)_emitAudioTopologyForRequestId:(id)a3;
- (void)_emitTriggerWithCachingForUUID:(id)a3 namespace:(id)a4 requestID:(id)a5;
- (void)_endRemoteExecutionContext:(id)a3;
- (void)_endSessionForDelegate:(id)a3;
- (void)_endSpeechRequestForCommand:(id)a3 withError:(id)a4 suppressAlert:(BOOL)a5 secureOfflineOnlyDictation:(BOOL)a6;
- (void)_ensureBackgroundContextSentToServer;
- (void)_fetchAllAppSourcesForSyncingWithCustomVocabInfo:(id)a3 completion:(id)a4;
- (void)_fetchAndSendApplicationContextForApplicationInfos:(id)a3 fetchedOrderedContextDictionaries:(id)a4 applicationContexts:(id)a5 refID:(id)a6;
- (void)_fetchStarkDeviceLockedStateWithCompletion:(id)a3;
- (void)_fetchSupportedLanguagesWithCompletion:(id)a3;
- (void)_firstChanceServiceChangeIdFrom:(id)a3 to:(id)a4;
- (void)_forceAudioSessionActiveWithContext:(id)a3 completion:(id)a4;
- (void)_forceAudioSessionInactiveWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)_getDeferredObjectsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)_getDictationLanguages:(id)a3 options:(id)a4 speechOptions:(id)a5 delegate:(id)a6 completion:(id)a7;
- (void)_getOrderedContextDictionaryForTransformedAFApplicationContext:(id)a3 completion:(id)a4;
- (void)_getSiriOutputVolumeForAudioRoute:(id)a3 completion:(id)a4;
- (void)_getTransformedApplicationContextForContext:(id)a3 completion:(id)a4;
- (void)_handleAceCommand:(id)a3 afterCurrentRequest:(BOOL)a4 waitForResponse:(BOOL)a5 withDelegate:(id)a6 completion:(id)a7;
- (void)_handleBareRequestCompleted:(id)a3;
- (void)_handleClientReply:(id)a3 error:(id)a4 forSessionCommand:(id)a5;
- (void)_handleCommand:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_handleCommandAndClientReply:(id)a3 executionContext:(id)a4 commandCompletion:(id)a5;
- (void)_handleCommandInAMOS:(id)a3 completion:(id)a4;
- (void)_handleCommandResponse:(id)a3 error:(id)a4 forCommand:(id)a5 executionContext:(id)a6 completion:(id)a7;
- (void)_handleExternalActivationRequest:(id)a3 completion:(id)a4;
- (void)_handleExtractSpeechDataCompleted:(id)a3 inResponseTo:(id)a4 completion:(id)a5;
- (void)_handleGenericAceCommand:(id)a3 withDelegate:(id)a4 interruptOutstandingRequest:(BOOL)a5 reply:(id)a6;
- (void)_handleGenericConcreteAceCommand:(id)a3 withDelegate:(id)a4 interruptOutstandingRequest:(BOOL)a5 reply:(id)a6;
- (void)_handleIgnoredCommand:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_handleIntent:(id)a3 inBackgroundAppWithBundleId:(id)a4 reply:(id)a5;
- (void)_handleLocalSpeechRecognitionForOfflineSupport:(id)a3 logText:(BOOL)a4;
- (void)_handleNextCallbacksForReply:(id)a3 forCommand:(id)a4 forRequestId:(id)a5 withExecutionContext:(id)a6;
- (void)_handlePartialSpeechRecognitionForElapsedTime:(double)a3 WithDelegateBlock:(id)a4;
- (void)_handleQuickStopCommandRoutedFromRemote:(id)a3 completion:(id)a4;
- (void)_handleRemoteSpeechRequest:(id)a3 completion:(id)a4;
- (void)_handleSADOCommandIfServiceDoesNotUseAMOS:(id)a3 allowInterposing:(BOOL)a4 completion:(id)a5;
- (void)_handleSendCommands:(id)a3 forRequestDelegate:(id)a4 completion:(id)a5;
- (void)_handleServiceCommand:(id)a3 afterMyriadDecision:(BOOL)a4 executionContext:(id)a5 completion:(id)a6;
- (void)_handleServiceCommand:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_handleSpeechRecognizedWithDelegateBlock:(id)a3;
- (void)_handleSuspendClientEndpointer:(id)a3;
- (void)_handleValidatedSyncGetAnchorsResponse:(id)a3 forGetAnchors:(id)a4;
- (void)_invokeAllCompletionsWithError:(id)a3;
- (void)_invokeCompletionForCommand:(id)a3;
- (void)_listInstalledServicesWithCompletion:(id)a3;
- (void)_logAudioTopologyForRequestId:(id)a3;
- (void)_logCrossDeviceCommandEndedMetricsForCommand:(id)a3 targetProductType:(id)a4 targetDeviceID:(id)a5 targetDeviceContextIdentifier:(id)a6 targetProximity:(int64_t)a7 coreAnalyticsEvent:(id)a8 response:(id)a9 error:(id)a10;
- (void)_logExecuteOnRemoteRequestForRequestId:(id)a3 turnId:(id)a4 event:(int64_t)a5;
- (void)_logMURequestEndedWithResultCandidate:(id)a3;
- (void)_logToFeatureStore:(id)a3 speechRecgonized:(id)a4;
- (void)_metrics_destroyAllMetrics;
- (void)_metrics_destroyAllMetricsIfNeeded;
- (void)_metrics_logSpeechRecognized:(id)a3 resultId:(id)a4;
- (void)_metrics_markLocalEagerRecognitionCandidate:(id)a3;
- (void)_metrics_markLocalPartialSpeechRecognition;
- (void)_metrics_markLocalSpeechCompletedWithStatistics:(id)a3;
- (void)_metrics_markLocalSpeechPackage:(id)a3 interactionId:(id)a4 optedIn:(BOOL)a5;
- (void)_metrics_markLocalSpeechStartedWithContext:(id)a3;
- (void)_metrics_processEventRecordsFromStore:(id)a3 batch:(id)a4 deliveryStream:(unint64_t)a5 eventStreamUID:(id)a6 streamSpeechId:(id)a7 untilLimit:(double)a8 uploadRecords:(id)a9 completion:(id)a10;
- (void)_metrics_publishDailyDeviceStatus:(id)a3 completion:(id)a4;
- (void)_metrics_recordCancellationMetrics;
- (void)_metrics_recordFailureMetricsForError:(id)a3;
- (void)_metrics_recordSNNetworkSnapshotForEvent:(int64_t)a3 completion:(id)a4;
- (void)_metrics_sendEngagementFeedback:(int64_t)a3 voiceQueryIdentifier:(id)a4;
- (void)_metrics_sendMetricsToServerUntilLimit:(double)a3 requiresUnlimitedPower:(BOOL)a4 requiresActiveSession:(BOOL)a5 purgesOversizedStorage:(BOOL)a6 scheduledActivity:(BOOL)a7 completion:(id)a8;
- (void)_metrics_sendNextAnalyticsEventStreamToServerUntilLimit:(double)a3 requiresUnlimitedPower:(BOOL)a4 requiresActiveSession:(BOOL)a5 prioritizedEventStreamUID:(id)a6 deliveryStreamContinuations:(id *)a7 scheduledActivity:(BOOL)a8 completion:(id)a9;
- (void)_metrics_sendNextOfflineMetricsToServerUntilLimit:(double)a3 requiresUnlimitedPower:(BOOL)a4 requiresActiveSession:(BOOL)a5 completion:(id)a6;
- (void)_notifyUSTForAceCommand:(id)a3;
- (void)_notifyUSTForRequestCompleted:(id)a3;
- (void)_notifyUSTForRequestStarted:(id)a3;
- (void)_openURL:(id)a3 completion:(id)a4;
- (void)_pauseRecognition;
- (void)_performCallbacksForCommand:(id)a3 reply:(id)a4 executionContext:(id)a5 error:(id)a6;
- (void)_postPersonalDomainActivityNotificationWithBody:(id)a3 command:(id)a4 executionContext:(id)a5 completion:(id)a6;
- (void)_postUpdatePersonalRequestSettingsNotification:(id)a3 forLocalizationKey:(id)a4 executionContext:(id)a5 completion:(id)a6;
- (void)_postWatchNotificationWithContext:(id)a3 withError:(id)a4;
- (void)_preheatAllServices;
- (void)_preheatCallbacksForCommand:(id)a3;
- (void)_preheatViaRequestDispatcher;
- (void)_preheatWithStyle:(int64_t)a3 forOptions:(id)a4 completion:(id)a5;
- (void)_prepareForAppLaunchForRequest:(id)a3;
- (void)_prepareForPhoneCall;
- (void)_processQueuedLanguageCode;
- (void)_processQueuedLanguageCodeAndOutputVoice;
- (void)_processQueuedOutputVoice;
- (void)_reallyCommitOrSaveMetrics:(id)a3;
- (void)_reallyEndSessionForDelegate:(id)a3;
- (void)_reallyHandleNewStartLocalRequest:(id)a3 withRequestInfo:(id)a4;
- (void)_reallyHandleNewStartRequest:(id)a3 info:(id)a4;
- (void)_refreshAssistantValidation;
- (void)_registerDomainSignalServiceWithServiceManager:(id)a3;
- (void)_registerNanoServicesWithServiceManager:(id)a3;
- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)a3 onDeviceForAssistantId:(id)a4 executionContext:(id)a5 completion:(id)a6;
- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 throughProxyDevice:(id)a6 executionContext:(id)a7 completion:(id)a8;
- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)a3 onDeviceForAssistantId:(id)a4 allowFallbackOnAWDL:(BOOL)a5 executionContext:(id)a6 completion:(id)a7;
- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 allowFallbackOnAWDL:(BOOL)a6 executionContext:(id)a7 completion:(id)a8;
- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)a3 onSpecifiedDeviceTypes:(unint64_t)a4 preferredMessagingOption:(unint64_t)a5 allowFallbackOnAWDL:(BOOL)a6 executionContext:(id)a7 completion:(id)a8;
- (void)_removeAllSpeechCapturingContexts;
- (void)_removeDelegate:(id)a3;
- (void)_removeExecutionDevicesForLocalRequestWithId:(id)a3;
- (void)_removeFirstChanceServiceForAceId:(id)a3;
- (void)_removeHandledCommandIdsForRequestId:(id)a3;
- (void)_removeOutstandingAnchorsRequestId:(id)a3;
- (void)_removeOutstandingRequestId:(id)a3 forReason:(id)a4;
- (void)_removeOutstandingSyncChunkId:(id)a3;
- (void)_removePostCommandHandlingBlocksForRequestId:(id)a3;
- (void)_replaceRequestDelegate:(id)a3 withInfo:(id)a4 reason:(int64_t)a5 andCompletion:(id)a6;
- (void)_replaceSpeechDelegateWhenReady:(id)a3 waitForRecordingToFinish:(BOOL)a4 suppressAlert:(BOOL)a5 withCompletion:(id)a6;
- (void)_requestAnchorsForKeys:(id)a3 appSources:(id)a4 watchAppSources:(id)a5 forceReset:(BOOL)a6 includeAllKnownAnchors:(BOOL)a7 reasons:(id)a8;
- (void)_requestBarrier:(id)a3;
- (void)_requestBarrierIfNecessary:(id)a3;
- (void)_requestDidEnd;
- (void)_requestWillStartWithInfo:(id)a3 showNetworkActivityIndicator:(BOOL)a4;
- (void)_rescheduleValidationRefresh;
- (void)_resetPeerAccountSettingsWithSharedData:(id)a3;
- (void)_resetServices;
- (void)_resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5;
- (void)_rollbackRequestForDelegate:(id)a3;
- (void)_runMaintenanceForServices:(id)a3 completion:(id)a4;
- (void)_saAIRequestSearch:(id)a3 completion:(id)a4;
- (void)_saAIRetrySearch:(id)a3 completion:(id)a4;
- (void)_saAISearchCompleted:(id)a3 completion:(id)a4;
- (void)_saAcknowledgeAlert:(id)a3 completion:(id)a4;
- (void)_saAddResultObjects:(id)a3 completion:(id)a4;
- (void)_saAssistantDestroyed:(id)a3 completion:(id)a4;
- (void)_saCancelCrossDeviceRequest:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saCancelSucceeded:(id)a3 completion:(id)a4;
- (void)_saClientSetupInfo:(id)a3 completion:(id)a4;
- (void)_saCommandFailed:(id)a3 completion:(id)a4;
- (void)_saCommandIgnored:(id)a3 completion:(id)a4;
- (void)_saDeviceConfiguration:(id)a3 completion:(id)a4;
- (void)_saDeviceMyriadConfiguration:(id)a3 completion:(id)a4;
- (void)_saDismissRemoteAnnouncement:(id)a3 completion:(id)a4;
- (void)_saDomainObjectCancel:(id)a3 completion:(id)a4;
- (void)_saDomainObjectCommit:(id)a3 completion:(id)a4;
- (void)_saDomainObjectCreate:(id)a3 completion:(id)a4;
- (void)_saDomainObjectDelete:(id)a3 completion:(id)a4;
- (void)_saDomainObjectPunchOut:(id)a3 completion:(id)a4;
- (void)_saDomainObjectRetrieve:(id)a3 completion:(id)a4;
- (void)_saDomainObjectUpdate:(id)a3 completion:(id)a4;
- (void)_saExecuteCallbacks:(id)a3 completion:(id)a4;
- (void)_saExecuteOnRemoteRequest:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saGetAssistantData:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saGetRequestOrigin:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saInitiateHandoffOnCompanion:(id)a3 completion:(id)a4;
- (void)_saLogNumericEvent:(id)a3 completion:(id)a4;
- (void)_saLogSignatureWithABC:(id)a3 completion:(id)a4;
- (void)_saLogStringEvent:(id)a3 completion:(id)a4;
- (void)_saNotificationSearch:(id)a3 completion:(id)a4;
- (void)_saPerformDataDetection:(id)a3 completion:(id)a4;
- (void)_saPerformRemoteAnnouncement:(id)a3 completion:(id)a4;
- (void)_saPing:(id)a3 completion:(id)a4;
- (void)_saPostCalendarActivityNotification:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saPostPersonalDomainActivityNotification:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saPostUpdatePersonalRequestSettingsNotification:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saQuickStop:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saReplayRequestFromDMHypothesis:(id)a3 completion:(id)a4;
- (void)_saRequestCompleted:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_saRollbackSucceeded:(id)a3 completion:(id)a4;
- (void)_saSetClientData:(id)a3 completion:(id)a4;
- (void)_saSetDeviceTTSMuteState:(id)a3 completion:(id)a4;
- (void)_saSetHandoffPayload:(id)a3 completion:(id)a4;
- (void)_saSetLatencyDiagnosticConfiguration:(id)a3 completion:(id)a4;
- (void)_saSetMultilingualDictationConfig:(id)a3 completion:(id)a4;
- (void)_saStartLocalRequest:(id)a3 completion:(id)a4;
- (void)_saStartUIRequest:(id)a3 completion:(id)a4;
- (void)_saStructuredDictationFailure:(id)a3 completion:(id)a4;
- (void)_saStructuredDictationResult:(id)a3 completion:(id)a4;
- (void)_saSyncChunkAccepted:(id)a3 completion:(id)a4;
- (void)_saSyncChunkDenied:(id)a3 completion:(id)a4;
- (void)_saSyncGetAnchorsResponse:(id)a3 completion:(id)a4;
- (void)_saTTSGetSpeechSynthesisVolume:(id)a3 completion:(id)a4;
- (void)_saTTSSetSpeechSynthesisVolume:(id)a3 completion:(id)a4;
- (void)_saUnhandledObject:(id)a3 completion:(id)a4;
- (void)_saWaitForCommands:(id)a3 completion:(id)a4;
- (void)_sasAbortSpeechRequest:(id)a3 completion:(id)a4;
- (void)_sasClientBoundConfusionNetwork:(id)a3 completion:(id)a4;
- (void)_sasConfirmEndpoint:(id)a3 completion:(id)a4;
- (void)_sasExtractSpeechData:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_sasPronunciationRecognized:(id)a3 completion:(id)a4;
- (void)_sasResultCandidate:(id)a3 completion:(id)a4;
- (void)_sasServerEndpointFeatures:(id)a3 completion:(id)a4;
- (void)_sasSpeechFailure:(id)a3 completion:(id)a4;
- (void)_sasSpeechMultilingualSpeechRecognized:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_sasSpeechPartialResult:(id)a3 completion:(id)a4;
- (void)_sasSpeechRecognized:(id)a3 executionContext:(id)a4 completion:(id)a5;
- (void)_sasSpeechServerEndpointIdentified:(id)a3 completion:(id)a4;
- (void)_sasSuspendClientEndpointer:(id)a3 completion:(id)a4;
- (void)_sasVoiceIdentificationSignal:(id)a3 completion:(id)a4;
- (void)_sasVoiceSearchFinalResult:(id)a3 completion:(id)a4;
- (void)_sasVoiceSearchPartialResult:(id)a3 completion:(id)a4;
- (void)_scheduleCallKeepAlive;
- (void)_sendAMOSCommand:(id)a3 domain:(id)a4 toBundleWithIdentifier:(id)a5 completion:(id)a6;
- (void)_sendAMOSCommandToService:(id)a3 responseHandler:(id)a4;
- (void)_sendCancelSpeechForCommand:(id)a3;
- (void)_sendCommandFailedForCommand:(id)a3 error:(id)a4;
- (void)_sendCommandFailedForCommand:(id)a3 reason:(id)a4;
- (void)_sendCommandToServer:(id)a3 opportunistically:(BOOL)a4;
- (void)_sendCommandToServer:(id)a3 opportunistically:(BOOL)a4 completion:(id)a5;
- (void)_sendContextAndRestrictionsForSpeechRequestWithInfo:(id)a3;
- (void)_sendEnableServerEndpointerCommandWithRefID:(id)a3;
- (void)_sendGizmoSharedDataIfNeeded;
- (void)_sendLocationIfNeededForRequest;
- (void)_sendMetrics:(id)a3 requiresActiveSession:(BOOL)a4 batch:(id)a5 completion:(id)a6;
- (void)_sendRequestToServer:(id)a3;
- (void)_sendRestrictionsInPreparationForRequest;
- (void)_sendRollbackCommandForCommand:(id)a3;
- (void)_sendServiceCommand:(id)a3 completion:(id)a4;
- (void)_sendSessionObject:(id)a3 opportunistically:(BOOL)a4;
- (void)_sendSpeechCorrectionInfo:(id)a3 forCorrectionContext:(id)a4;
- (void)_sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)_sendStartSpeechCommandWithSpeechManager:(id)a3 info:(id)a4 context:(id)a5;
- (void)_sendWillStopRecordingForCommand:(id)a3;
- (void)_sessionDidFailWithError:(id)a3;
- (void)_setActiveAccountIdentifier:(id)a3;
- (void)_setAlertContext;
- (void)_setBackgroundContext;
- (void)_setCallIsLikely:(BOOL)a3;
- (void)_setCarDNDRestriction:(BOOL)a3;
- (void)_setCarOwnsMainAudioRestriction:(BOOL)a3;
- (void)_setConfiguration:(id)a3 forClient:(id)a4;
- (void)_setCurrentRequest:(id)a3;
- (void)_setCurrentRequestWithCommand:(id)a3;
- (void)_setCurrentRequestWithRequestId:(id)a3;
- (void)_setFirstChanceService:(id)a3 forAceId:(id)a4;
- (void)_setHasIncomingCall:(BOOL)a3;
- (void)_setHeadGestureRecognitionAvailability:(BOOL)a3;
- (void)_setHeadphonesAuthenticated:(BOOL)a3;
- (void)_setIsEyesFree:(BOOL)a3;
- (void)_setIsInCall:(BOOL)a3;
- (void)_setIsTimeoutSuspended:(BOOL)a3;
- (void)_setLanguageCode:(id)a3 outputVoice:(id)a4 isDefaultValue:(BOOL)a5;
- (void)_setLanguageCode:(id)a3 outputVoice:(id)a4 isDefaultValue:(BOOL)a5 withCompletion:(id)a6;
- (void)_setLanguageCodeIfNeeded;
- (void)_setLockState:(BOOL)a3 showingLockScreen:(BOOL)a4;
- (void)_setManagedStoreObject:(id)a3 forKey:(id)a4;
- (void)_setModesConfiguration:(id)a3;
- (void)_setRestrictedAppContext;
- (void)_setSiriOutputVolume:(float)a3 forAudioRoute:(id)a4 operationType:(int64_t)a5 completion:(id)a6;
- (void)_setSpeechCapturingContext:(id)a3;
- (void)_setSpeechRecognizedContext:(id)a3;
- (void)_setStarkRestriction:(BOOL)a3;
- (void)_setSupportsCarPlayVehicleDataRestriction:(BOOL)a3;
- (void)_setUIService:(id)a3;
- (void)_setWatchAuthenticated:(BOOL)a3;
- (void)_setupUIBridgeServiceListener;
- (void)_shutdownAfterDelay:(double)a3;
- (void)_shutdownSessionWhenIdle;
- (void)_signalUSTTestRequestWithStartRequest:(id)a3 requestInfo:(id)a4;
- (void)_speechCaptureCompleted;
- (void)_startAcousticIDRequestWithDelegate:(id)a3 withOptions:(id)a4 context:(id)a5;
- (void)_startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7;
- (void)_startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7 completion:(id)a8;
- (void)_startDictationWithURL:(id)a3 isNarrowBand:(BOOL)a4 language:(id)a5 options:(id)a6 sessionUUID:(id)a7 delegate:(id)a8;
- (void)_startLanguageDetectionWaitTimer;
- (void)_startLocalRequest:(id)a3 withRequestInfo:(id)a4 forDelegate:(id)a5 suppressCancelationAlertIfCapturingSpeech:(BOOL)a6 completion:(id)a7;
- (void)_startNonSpeechRequest:(id)a3 forDelegate:(id)a4 withInfo:(id)a5 options:(id)a6 suppressAlert:(BOOL)a7 completion:(id)a8;
- (void)_startObservingCallState;
- (void)_startRecordedDictationWithLanguage:(id)a3 options:(id)a4 sessionUUID:(id)a5 narrowband:(BOOL)a6 delegate:(id)a7;
- (void)_startRecordingForPendingDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7 completion:(id)a8;
- (void)_startRecordingForPendingSpeechRequestForDelegate:(id)a3 withOptions:(id)a4 sessionUUID:(id)a5 completion:(id)a6;
- (void)_startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5;
- (void)_startRemoteRequest:(id)a3 onPeer:(id)a4 withContext:(id)a5 completion:(id)a6;
- (void)_startRequest:(id)a3 withDelegate:(id)a4;
- (void)_startSpeechPronunciationRequestWithDelegate:(id)a3 withOptions:(id)a4 pronunciationContext:(id)a5;
- (void)_startSpeechRequestWithDelegate:(id)a3 withOptions:(id)a4 sessionUUID:(id)a5;
- (void)_startSpeechRequestWithDelegate:(id)a3 withOptions:(id)a4 sessionUUID:(id)a5 completion:(id)a6;
- (void)_startSpeechRequestWithURL:(id)a3 isNarrowBand:(BOOL)a4 withDelegate:(id)a5 completion:(id)a6;
- (void)_startUpdatingMotionActivity;
- (void)_stopLanguageDetectionWaitTimerIfNeeded;
- (void)_stopObservingCallStateWithCompletion:(id)a3;
- (void)_stopSpeechWithOptions:(id)a3 forDelegate:(id)a4;
- (void)_stopUpdatingMotionActivity;
- (void)_storeExtractedSpeechLocally:(id)a3;
- (void)_sync_assistantLoadedSyncRequest:(BOOL)a3;
- (void)_sync_commandFailed:(id)a3;
- (void)_sync_commandIgnored:(id)a3;
- (void)_sync_continueIfConditionsMet;
- (void)_sync_reset;
- (void)_sync_syncAnchorKeys:(id)a3 forceReset:(BOOL)a4 reasons:(id)a5;
- (void)_sync_syncIfNeeded;
- (void)_telephonyRequestCompleted;
- (void)_triggerABCforType:(id)a3 subType:(id)a4 context:(id)a5;
- (void)_trimRecordedAudioWithIdentifier:(id)a3 offset:(double)a4 duration:(double)a5 outputFileType:(int64_t)a6 completion:(id)a7;
- (void)_trySendingShowRequestHandlingStatusForAsrOnDevice:(BOOL)a3 startSpeechRequestId:(id)a4;
- (void)_updateAutoDownloadedVoiceAssetsForOutputVoice;
- (void)_updateFlowContext;
- (void)_updateObjectFromService:(id)a3 sadIdentifier:(id)a4 completion:(id)a5;
- (void)_updateSharedDataFromPeers:(id)a3 completion:(id)a4;
- (void)_updateSharedDataWithPairedPeerData:(id)a3;
- (void)_updateSpeechOptions:(id)a3 forDelegate:(id)a4 allowUpdateInSpeechCompletion:(BOOL)a5;
- (void)_updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10;
- (void)accessRecordedAudioWithIdentifier:(id)a3 completion:(id)a4;
- (void)acousticIDHelper:(id)a3 didCompleteSessionSuccessfully:(BOOL)a4;
- (void)acousticIDHelperDidStartSession:(id)a3;
- (void)adCallStateChangedCallInProcess:(BOOL)a3;
- (void)adCallStateChangedCallIncoming:(BOOL)a3;
- (void)addRecordedSpeechSampleData:(id)a3 delegate:(id)a4;
- (void)addService:(id)a3;
- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)a3;
- (void)announceNotificationHandlingStateUpdatedToState:(int64_t)a3;
- (void)appLaunchHandler:(id)a3 didLaunchAppForRequestId:(id)a4;
- (void)areAnnouncementRequestsPermittedByPresentationWhileActiveWithCompletion:(id)a3;
- (void)assistantSessionManager:(id)a3 didChangeRequestIdFrom:(id)a4 toId:(id)a5;
- (void)assistantSessionManager:(id)a3 receivedCommand:(id)a4;
- (void)assistantSessionManager:(id)a3 receivedError:(id)a4 isRetryableError:(BOOL)a5;
- (void)assistantSessionManager:(id)a3 willRetryOnError:(id)a4;
- (void)assistantSessionManagerDidCreateAssistant:(id)a3;
- (void)assistantSessionManagerDidDestroyAssistant:(id)a3;
- (void)assistantSessionManagerSessionConnectionDidReset:(id)a3;
- (void)assistantSessionManagerSessionRemoteConnectionDidReset:(id)a3;
- (void)cancelCurrentRequestForReason:(int64_t)a3;
- (void)cancelRequestForDelegate:(id)a3 reason:(int64_t)a4 error:(id)a5;
- (void)cancelSpeechForDelegate:(id)a3;
- (void)clearContext;
- (void)clientConnected:(id)a3;
- (void)clientDisconnected:(id)a3;
- (void)contextManagerDidUpdateBackgroundContext:(id)a3;
- (void)dealloc;
- (void)deleteAccountWithIdentifier:(id)a3;
- (void)destroyActiveAccount;
- (void)dictationRequestDidCompleteRecognitionWithError:(id)a3 secureOfflineOnlyRecognition:(BOOL)a4 sessionUUID:(id)a5 statistics:(id)a6;
- (void)dictationRequestDidRecognizeFinalResultCandidatePackage:(id)a3 sessionUUID:(id)a4;
- (void)dictationRequestDidRecognizePackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5;
- (void)dictationRequestDidRecognizePartialPackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5;
- (void)dictationRequestDidRecognizeTokens:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5;
- (void)dictationRequestDidRecognizeVoiceCommandCandidatePackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5;
- (void)dismissAssistant;
- (void)dismissAssistantWithReason:(int64_t)a3;
- (void)dismissedAllVisibleAssistantUIForReason:(id)a3;
- (void)endSessionForDelegate:(id)a3;
- (void)executeCommand:(id)a3 fromPeer:(id)a4 remoteExecutionInfo:(id)a5 reply:(id)a6;
- (void)extendRequestTimeoutBy:(double)a3 forRequestID:(id)a4;
- (void)fetchAccounts:(id)a3;
- (void)fetchActiveAccount:(id)a3;
- (void)fetchActiveAccountIdentifier:(id)a3;
- (void)fetchAppicationContextForApplicationInfo:(id)a3 supplementalContext:(id)a4 refID:(id)a5;
- (void)fetchBulletinsOnLockScreenForNotificationManager:(id)a3 completion:(id)a4;
- (void)fetchContextForApplicationInfo:(id)a3 completion:(id)a4;
- (void)fetchLastLocationWithCompletion:(id)a3;
- (void)fetchLocationAuthorization:(id)a3;
- (void)fetchManagedStoreObjectForKey:(id)a3 completion:(id)a4;
- (void)fetchSupportedLanguagesWithCompletion:(id)a3;
- (void)forceAudioSessionActiveWithContext:(id)a3 completion:(id)a4;
- (void)forceAudioSessionInactiveWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)getAccessoryInfoForAccessoryWithUUID:(id)a3 completionHandler:(id)a4;
- (void)getCrossDeviceContextWithCompletion:(id)a3;
- (void)getCurrentContextSnapshotWithCompletion:(id)a3;
- (void)getDeferredObjectsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)getDeviceContextsForKeys:(id)a3 forRequestID:(id)a4 includesNearbyDevices:(BOOL)a5 completion:(id)a6;
- (void)getOfflineDictationStatusIgnoringCache:(BOOL)a3 completion:(id)a4;
- (void)getOriginDeviceInfoForContextIdentifier:(id)a3 completion:(id)a4;
- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)a3;
- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6;
- (void)getSharedDataForPeer:(id)a3;
- (void)getSiriOutputVolumeForAudioRoute:(id)a3 completion:(id)a4;
- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)a3 completionHandler:(id)a4;
- (void)handleAceCommand:(id)a3 afterCurrentRequest:(BOOL)a4 waitForResponse:(BOOL)a5 withDelegate:(id)a6 completion:(id)a7;
- (void)handleCommand:(id)a3 withExecutionContextMatchingInfo:(id)a4 completion:(id)a5;
- (void)handleExternalActivationRequest:(id)a3 completion:(id)a4;
- (void)handleFailedStartPlaybackWithDestination:(int64_t)a3 completion:(id)a4;
- (void)handleGenericAceCommand:(id)a3 withDelegate:(id)a4 interruptOutstandingRequest:(BOOL)a5 targetReplyQueue:(id)a6 reply:(id)a7;
- (void)handleRemoteSpeechRequest:(id)a3 completion:(id)a4;
- (void)handleSpeechRecognized:(id)a3 completion:(id)a4;
- (void)handleSpeechServerEndpointIdentified:(id)a3 completion:(id)a4;
- (void)isHeadGestureRecognitionAvailableWithCompletion:(id)a3;
- (void)isInCarDNDModeWithCompletion:(id)a3;
- (void)isWatchAuthenticatedWithCompletion:(id)a3;
- (void)listenForSharedDataFromCloud;
- (void)metrics_publishDailyDeviceStatus:(id)a3 completion:(id)a4;
- (void)notificationManagerDidChangeBulletins:(id)a3;
- (void)notifySpeechDetectedIsUndirected;
- (void)openApplicationWithBundleID:(id)a3 URL:(id)a4 completion:(id)a5;
- (void)openURL:(id)a3 completion:(id)a4;
- (void)pauseRecognition;
- (void)postMessageToMUXWithMultiUserInfo:(id)a3;
- (void)postTestResultCandidateWithRcId:(id)a3 recognitionSausage:(id)a4;
- (void)postTestResultSelectedWithRcId:(id)a3;
- (void)preheatServicesForDomain:(id)a3;
- (void)preheatWithRecordDeviceIdentifier:(id)a3;
- (void)preheatWithStyle:(int64_t)a3 forOptions:(id)a4 completion:(id)a5;
- (void)prepareForPhoneCall;
- (void)prepareForShutdown;
- (void)prepareForStartPlaybackWithDestination:(int64_t)a3 intent:(id)a4 completion:(id)a5;
- (void)pushMyriadAdvertisementContext:(id)a3 completionHandler:(id)a4;
- (void)pushSCDAAdvertisementContext:(id)a3 completionHandler:(id)a4;
- (void)refreshAssistantValidation;
- (void)releaseShutdownAssertion:(id)a3;
- (void)reloadServiceForNotification:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)removeService:(id)a3;
- (void)replayAllRecordedViews:(unint64_t)a3 with:(id)a4;
- (void)replayRecordedViewAt:(unint64_t)a3 with:(id)a4;
- (void)requestBarrier:(id)a3;
- (void)requestBarrierIfNecessary:(id)a3;
- (void)rescheduleValidationRefresh;
- (void)resumeInterruptedAudioPlaybackIfNeeded;
- (void)resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5;
- (void)rollbackClearContext;
- (void)rollbackRequestForDelegate:(id)a3;
- (void)runBootTimeServiceMaintenanceWithCompletion:(id)a3;
- (void)runServiceMaintenanceWithCompletion:(id)a3;
- (void)sanityCheckAutodownloadedAssetsForced:(BOOL)a3;
- (void)selectResultWithResultCandidate:(id)a3 completionHandler:(id)a4;
- (void)sendEngagementFeedback:(int64_t)a3 voiceQueryIdentifier:(id)a4;
- (void)sendGizmoData;
- (void)sendMetricsToServerWithTimeout:(double)a3 requiresUnlimitedPower:(BOOL)a4 requiresActiveSession:(BOOL)a5 purgesOversizedStorage:(BOOL)a6 ignoresMetricsSenderDisabledSetting:(BOOL)a7 scheduledActivity:(BOOL)a8 completion:(id)a9;
- (void)sendMultiUserInfoToMUX;
- (void)sendPowerLogs:(id)a3 peerInfo:(id)a4;
- (void)sendSpeechCorrectionInfo:(id)a3 forCorrectionContext:(id)a4;
- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)setActiveAccountIdentifier:(id)a3;
- (void)setAlertContextDirty;
- (void)setApplicationContext:(id)a3;
- (void)setApplicationContextForApplicationInfos:(id)a3 withRefId:(id)a4;
- (void)setAssistantEnabled:(BOOL)a3;
- (void)setCarDNDActive:(BOOL)a3;
- (void)setConfiguration:(id)a3 forClient:(id)a4;
- (void)setDictationEnabled:(BOOL)a3;
- (void)setHeadphonesAuthenticated:(BOOL)a3;
- (void)setIsEyesFree:(BOOL)a3;
- (void)setLanguageCode:(id)a3 outputVoice:(id)a4 withCompletion:(id)a5;
- (void)setLanguageCode:(id)a3 withCompletion:(id)a4;
- (void)setLanguageCodeIfNeeded;
- (void)setLockState:(BOOL)a3 showingLockScreen:(BOOL)a4;
- (void)setManagedStoreObject:(id)a3 forKey:(id)a4;
- (void)setModesConfiguration:(id)a3;
- (void)setOutputVoice:(id)a3 withCompletion:(id)a4;
- (void)setOverriddenApplicationContext:(id)a3 withContext:(id)a4;
- (void)setQueuedLanguageCode:(id)a3;
- (void)setQueuedLanguageCode:(id)a3 andQueuedOutputVoice:(id)a4;
- (void)setQueuedOutputVoice:(id)a3;
- (void)setReplayEnabled:(BOOL)a3;
- (void)setReplayOverridePath:(id)a3;
- (void)setSiriOutputVolume:(float)a3 forAudioRoute:(id)a4 operationType:(int64_t)a5 completion:(id)a6;
- (void)setSuppressAudioInterruptionEndedNotifications:(BOOL)a3;
- (void)setWatchAuthenticated:(BOOL)a3;
- (void)sharedDataConnection:(id)a3 didUpdateSharedData:(id)a4;
- (void)showingVisibleAssistantUIForReason:(id)a3 completion:(id)a4;
- (void)shutdownSessionIfIdle;
- (void)speechManager:(id)a3 audioSessionDidBecomeActive:(BOOL)a4;
- (void)speechManager:(id)a3 audioSessionWillBecomeActive:(BOOL)a4;
- (void)speechManager:(id)a3 capturedFingerprint:(id)a4 duration:(double)a5;
- (void)speechManager:(id)a3 capturedPackets:(id)a4 atTimestamp:(double)a5 totalCount:(int64_t)a6 context:(id)a7;
- (void)speechManager:(id)a3 didBeginLocalRecognitionWithContext:(id)a4 sessionUUID:(id)a5;
- (void)speechManager:(id)a3 didCancelWithContext:(id)a4;
- (void)speechManager:(id)a3 didChangeRecordingState:(BOOL)a4;
- (void)speechManager:(id)a3 didDetectEndpointAtTime:(double)a4 context:(id)a5;
- (void)speechManager:(id)a3 didDetectLanguage:(id)a4 confidenceScores:(id)a5 isConfident:(BOOL)a6;
- (void)speechManager:(id)a3 didDetectStartpointAtTime:(double)a4 context:(id)a5;
- (void)speechManager:(id)a3 didFailWithError:(id)a4 context:(id)a5;
- (void)speechManager:(id)a3 didFinishWithCapturingMode:(int64_t)a4 context:(id)a5;
- (void)speechManager:(id)a3 didFinishWritingAudioFile:(id)a4 error:(id)a5 context:(id)a6;
- (void)speechManager:(id)a3 didProduceLocalLoggablePackage:(id)a4 sessionUUID:(id)a5;
- (void)speechManager:(id)a3 didReceiveConfidenceScores:(id)a4 classification:(unint64_t)a5 classifiedUser:(id)a6 unknownUserScore:(int64_t)a7 duration:(int64_t)a8 version:(int64_t)a9 thresholdingType:(id)a10 assetVersion:(id)a11;
- (void)speechManager:(id)a3 didReceiveLastAudioBufferWithEndpointMode:(int64_t)a4 totalPacketCount:(int64_t)a5 endpointerMetrics:(id)a6 context:(id)a7;
- (void)speechManager:(id)a3 didRecognizePackage:(id)a4 sessionUUID:(id)a5;
- (void)speechManager:(id)a3 didRecognizeRawEagerRecognitionCandidate:(id)a4 sessionUUID:(id)a5;
- (void)speechManager:(id)a3 didRecognizeTokens:(id)a4 sessionUUID:(id)a5;
- (void)speechManager:(id)a3 didRequestQuickStopWithContext:(id)a4;
- (void)speechManager:(id)a3 didStartRecordingWithInfo:(id)a4 context:(id)a5;
- (void)speechManager:(id)a3 didUpdateRecordingWithInfo:(id)a4 context:(id)a5;
- (void)speechManager:(id)a3 languageDetectorDidFail:(id)a4;
- (void)speechManager:(id)a3 performTwoShotPromptWithType:(int64_t)a4 context:(id)a5 completion:(id)a6;
- (void)speechManager:(id)a3 preheatWithRecordingInfo:(id)a4 context:(id)a5;
- (void)speechManager:(id)a3 recognitionDidCompleteWithError:(id)a4 secureOfflineOnlyRecognition:(BOOL)a5 sessionUUID:(id)a6 statistics:(id)a7;
- (void)speechManager:(id)a3 recognitionUpdateWillBeginForTask:(id)a4;
- (void)speechManager:(id)a3 willStartRecordingAtTimestamp:(double)a4 isFromFile:(BOOL)a5 inputAudioPowerWrapper:(id)a6 context:(id)a7;
- (void)speechManager:(id)a3 willStopRecordingWithSignpostID:(unint64_t)a4;
- (void)speechManagerDidDelayEndpointForMusic:(id)a3;
- (void)speechManagerDidDetectMusic:(id)a3;
- (void)startAcousticIDRequestWithDelegate:(id)a3 withOptions:(id)a4 context:(id)a5;
- (void)startCloudKitSyncWeeklyForActivity:(id)a3;
- (void)startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7;
- (void)startDictationWithURL:(id)a3 isNarrowBand:(BOOL)a4 language:(id)a5 options:(id)a6 sessionUUID:(id)a7 delegate:(id)a8;
- (void)startObservingCallState;
- (void)startRecordedDictationWithLanguage:(id)a3 options:(id)a4 sessionUUID:(id)a5 narrowband:(BOOL)a6 delegate:(id)a7;
- (void)startRecordingForPendingDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7 completion:(id)a8;
- (void)startRecordingForPendingSpeechRequestForDelegate:(id)a3 withOptions:(id)a4 sessionUUID:(id)a5 completion:(id)a6;
- (void)startRemoteRequest:(id)a3 completion:(id)a4;
- (void)startRemoteRequest:(id)a3 onTargetDevice:(id)a4 completion:(id)a5;
- (void)startRequest:(id)a3 withDelegate:(id)a4;
- (void)startSpeechPronunciationRequestWithDelegate:(id)a3 withOptions:(id)a4 pronunciationContext:(id)a5;
- (void)startSpeechRequestWithDelegate:(id)a3 withOptions:(id)a4;
- (void)startSpeechRequestWithURL:(id)a3 isNarrowBand:(BOOL)a4 withDelegate:(id)a5;
- (void)stopSpeechWithOptions:(id)a3 forDelegate:(id)a4;
- (void)suppressLowStorageNotificationForLanguage:(id)a3 suppress:(BOOL)a4;
- (void)syncAnchorKeys:(id)a3 forceReset:(BOOL)a4 reasons:(id)a5;
- (void)syncManager:(id)a3 chunkForSyncInfo:(id)a4 chunkInfo:(id)a5;
- (void)syncManager:(id)a3 finishedSyncForKeys:(id)a4 postNotification:(BOOL)a5;
- (void)syncManagerDidResetInProgressSync:(id)a3;
- (void)taskmaster:(id)a3 didLaunchApplicationForRequestWithId:(id)a4;
- (void)taskmaster:(id)a3 didReceivePunchoutOutcome:(id)a4;
- (void)telephonyRequestCompleted;
- (void)trimRecordedAudioWithIdentifier:(id)a3 offset:(double)a4 duration:(double)a5 outputFileType:(int64_t)a6 completion:(id)a7;
- (void)updateSharedDataFromCloudPeers:(id)a3 completion:(id)a4;
- (void)updateSharedDataFromCompanion;
- (void)updateSharedDataFromPeerUseCache:(BOOL)a3 allowCloudMessaging:(BOOL)a4 completion:(id)a5;
- (void)updateSharedDataWithCloudData:(id)a3 fromPeer:(id)a4;
- (void)updateSpeechOptions:(id)a3 forDelegate:(id)a4;
- (void)updateSpeechSynthesisRecord:(id)a3;
- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10;
- (void)willSetApplicationContextWithRefId:(id)a3;
- (void)withContextManager:(id)a3;
@end

@implementation ADCommandCenter

+ (id)sharedCommandCenter
{
  if (qword_1005904E8 != -1)
  {
    dispatch_once(&qword_1005904E8, &stru_100515CC8);
  }

  v3 = qword_1005904E0;

  return v3;
}

- (id)_serviceManager
{
  serviceManager = self->_serviceManager;
  if (!serviceManager)
  {
    v4 = [[ADServiceManager alloc] initWithInstanceContext:self->_instanceContext];
    v5 = self->_serviceManager;
    self->_serviceManager = v4;

    v6 = self->_serviceManager;
    v7 = objc_alloc_init(ADSystemService);
    [(ADServiceManager *)v6 addService:v7];

    v8 = self->_serviceManager;
    v9 = objc_alloc_init(ADGenericIntentService);
    [(ADServiceManager *)v8 addService:v9];

    v10 = self->_serviceManager;
    v11 = objc_alloc_init(ADDeleteSyncDataService);
    [(ADServiceManager *)v10 addService:v11];

    if (AFIsHorseman())
    {
      v12 = self->_serviceManager;
      v13 = objc_alloc_init(ADCompanionRoutingService);
      [(ADServiceManager *)v12 addService:v13];

      v14 = self->_serviceManager;
      v15 = objc_alloc_init(ADCompanionRoutingPhoneService);
      [(ADServiceManager *)v14 addService:v15];
    }

    [(ADCommandCenter *)self _registerDomainSignalServiceWithServiceManager:self->_serviceManager];
    if (AFIsNano())
    {
      [(ADCommandCenter *)self _registerNanoServicesWithServiceManager:self->_serviceManager];
    }

    v16 = self->_serviceManager;
    v17 = [ADSettingsService alloc];
    v18 = [(ADCommandCenter *)self _speechManager];
    v19 = [v18 recordingInfoProvider];
    v20 = [(ADSettingsService *)v17 initWithRecordingInfoProvider:v19 instanceContext:self->_instanceContext];
    [(ADServiceManager *)v16 addService:v20];

    v21 = self->_serviceManager;
    v22 = objc_alloc_init(ADExtensionService);
    [(ADServiceManager *)v21 addService:v22];

    if (!self->_fauxUIService)
    {
      v23 = objc_alloc_init(ADFauxUIService);
      fauxUIService = self->_fauxUIService;
      self->_fauxUIService = v23;

      [(ADServiceManager *)self->_serviceManager addService:self->_fauxUIService];
    }

    v25 = [(ADCommandCenter *)self _speechManager];
    v26 = [v25 volumeTracker];

    v27 = [(ADServiceManager *)self->_serviceManager serviceForIdentifier:@"com.apple.mobileipod.assistant"];
    if (!v27)
    {
      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v38 = 136315138;
        v39 = "[ADCommandCenter _serviceManager]";
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s No Media plugin could be found, but one was expected. Please file a radar on Siri Frameworks.", &v38, 0xCu);
      }
    }

    v29 = self->_serviceManager;
    v30 = [ADMediaRemoteService alloc];
    v31 = [(ADCommandCenter *)self _queue];
    v32 = [(ADMediaRemoteService *)v30 initWithQueue:v31 volumeTracker:v26 whaService:v27];
    [(ADServiceManager *)v29 addService:v32];

    v33 = self->_serviceManager;
    v34 = [(ADCommandCenter *)self _requestDispatcherService];
    [(ADServiceManager *)v33 addService:v34];

    v35 = self->_serviceManager;
    v36 = objc_opt_new();
    [(ADServiceManager *)v35 addService:v36];

    serviceManager = self->_serviceManager;
  }

  return serviceManager;
}

- (id)_sessionManager
{
  sessionManager = self->_sessionManager;
  if (!sessionManager)
  {
    v4 = [ADSessionManager alloc];
    v5 = [(ADCommandCenter *)self _queue];
    v6 = [(ADCommandCenter *)self _account];
    v7 = [(ADSessionManager *)v4 initOnQueue:v5 account:v6 instanceContext:self->_instanceContext];
    v8 = self->_sessionManager;
    self->_sessionManager = v7;

    [(ADSessionManager *)self->_sessionManager setDelegate:self];
    v9 = self->_sessionManager;
    v10 = [(ADCommandCenter *)self _requestDelayManager];
    [(ADSessionManager *)v9 setInterceptor:v10];

    sessionManager = self->_sessionManager;
  }

  return sessionManager;
}

- (void)clearContext
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005FC0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setAlertContextDirty
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000084DC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_clearContextAndStartAssistantSession
{
  [(ADCommandCenter *)self _clearContext];
  v3 = [(ADCommandCenter *)self _sessionManager];
  v4 = [v3 languageCode];

  if ((AFDeviceSupportsSiriUOD() & 1) != 0 || AFDeviceSupportsHybridUOD())
  {
    v5 = [(ADCommandCenter *)self _updateUODAssetStatusForLanguage:v4];
    v6 = self->_siriFullUODSupported && !self->_siriHybridUODSupported;
    [(ADSessionManager *)self->_sessionManager resetSessionsIfRequiredBasedOnOrchestrationMode:v6];
  }

  v7 = [(ADCommandCenter *)self _requestDispatcherService];
  v8 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
  [v7 startSessionWithConfiguration:v8];

  if (self->_serviceManager)
  {
    v9 = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C4F0;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (void)_startUpdatingMotionActivity
{
  motionManager = self->_motionManager;
  v3 = NSStringFromSelector(a2);
  [(ADMotionManager *)motionManager startUpdatingMotionActivityForReason:v3 completion:&stru_100515D10];
}

- (void)_clearContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter _clearContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  [(ADDomainObjectCache *)self->_domainObjectCache reset];
  self->_restrictionsWereSetForRequest = 0;
  selectedSharedUserID = self->_selectedSharedUserID;
  self->_selectedSharedUserID = 0;

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter _clearContext]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s _selectedSharedUserID cleared in _clearContext.", &v6, 0xCu);
  }

  [(ADSessionManager *)self->_sessionManager resetWinningState];
  [(ADCommandCenter *)self _context_clearContextWithClearSiriKitContext:0];
}

- (void)_setBackgroundContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADCommandCenter(Context) _setBackgroundContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _contextManager];
  [v4 clearBackgroundContextDirtyState];
  SiriCoreUUIDStringCreate();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000B17C;
  v10 = &unk_10050F6F8;
  v12 = v11 = self;
  v5 = v12;
  [v4 getBackgroundContext:&v7];
  v6 = [(ADCommandCenter *)self _sendContextPromiseForTypes:4 withAceId:v5, v7, v8, v9, v10, v11];
}

- (id)_contextManager
{
  contextManager = self->_contextManager;
  if (!contextManager)
  {
    v4 = [[ADContextManager alloc] initWithDelegate:self];
    v5 = self->_contextManager;
    self->_contextManager = v4;

    v6 = +[AFContextDonationService defaultService];
    v7 = [(ADContextManager *)self->_contextManager localContextStore];
    [v6 setDonationService:v7];

    v8 = +[ADNotificationManager sharedManager];
    [v8 addDelegate:self];

    contextManager = self->_contextManager;
  }

  v9 = [(ADContextManager *)contextManager delegate];

  if (!v9)
  {
    [(ADContextManager *)self->_contextManager setDelegate:self];
  }

  v10 = self->_contextManager;

  return v10;
}

- (id)_requestDispatcherSessionConfiguration
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000081B4;
  v4[3] = &unk_1005169C0;
  v4[4] = self;
  v2 = [[SMTRequestDispatcherSessionConfiguration alloc] initWithBuilder:v4];

  return v2;
}

- (ADRequestDispatcherService)_requestDispatcherService
{
  [(ADCommandCenter *)self _setupUIBridgeServiceListener];
  requestDispatcherService = self->_requestDispatcherService;
  if (!requestDispatcherService)
  {
    v4 = [ADRequestDispatcherService alloc];
    v5 = [NSArray arrayWithObjects:self->_uiBridgeServiceListener, 0];
    v6 = [(ADRequestDispatcherService *)v4 initWithBridgeConnectionListeners:v5];
    v7 = self->_requestDispatcherService;
    self->_requestDispatcherService = v6;

    requestDispatcherService = self->_requestDispatcherService;
  }

  return requestDispatcherService;
}

- (id)_locationManager
{
  v2 = +[ADLocationService sharedService];
  v3 = [v2 locationManager];

  return v3;
}

- (id)_accounts
{
  v2 = +[NSMutableArray array];
  v3 = +[ADPreferences sharedPreferences];
  v4 = [v3 accountIdentifiers];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [ADAccount accountForIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v2 description];
    *buf = 136315394;
    v20 = "[ADCommandCenter _accounts]";
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  return v2;
}

- (id)_account
{
  account = self->_account;
  if (!account)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADCommandCenter _account]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s no saved account - fetching from ADAccount", &v8, 0xCu);
    }

    v5 = +[ADAccount activeAccount];
    v6 = self->_account;
    self->_account = v5;

    account = self->_account;
  }

  return account;
}

- (void)_context_setAlertContextDirty
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCommandCenter(Context) _context_setAlertContextDirty]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _contextManager];
  [v4 setAlertContextDirty];
}

- (BOOL)_hasActiveClientOrSyncingOrInCall
{
  if (self->_currentClient)
  {
    return 1;
  }

  if (self->_requestDelegate || self->_speechDelegate || self->_speechFileDelegate || [(ADCommandCenter *)self _sync_isSyncing]|| [(ADCommandCenter *)self _isInCall])
  {
    return 1;
  }

  return [(NSMutableSet *)self->_shutdownAssertions count]!= 0;
}

- (void)_removeAllSpeechCapturingContexts
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _removeAllSpeechCapturingContexts]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  [(ADCommandCenter *)self _setSpeechCapturingContext:0];
  speechCapturingContextsBySessionUUID = self->_speechCapturingContextsBySessionUUID;
  self->_speechCapturingContextsBySessionUUID = 0;

  speechCapturingContextSessionUUID = self->_speechCapturingContextSessionUUID;
  self->_speechCapturingContextSessionUUID = 0;

  if (!AFIsInternalInstall() || (_AFPreferencesKeepRecorededAudioFiles() & 1) == 0)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = CSSiriSpeechRecordingTrimmedAudioDirectoryPath();
    [v6 removeItemAtPath:v7 error:0];

    v8 = +[NSFileManager defaultManager];
    v9 = CSSiriSpeechRecordingRecordedAudioDirectoryPath();
    [v8 removeItemAtPath:v9 error:0];
  }
}

- (void)_sync_reset
{
  [(ADSyncManager *)self->_syncManager reset];
  outstandingSyncChunks = self->_outstandingSyncChunks;

  [(NSMutableSet *)outstandingSyncChunks removeAllObjects];
}

- (void)_cancelCallKeepAlive
{
  if (self->_callTransactionUUID)
  {
    callTransaction = self->_callTransaction;
    self->_callTransaction = 0;

    callTransactionUUID = self->_callTransactionUUID;
    self->_callTransactionUUID = 0;

    [(ADCommandCenter *)self _shutdownSessionWhenIdle];
  }
}

- (void)_scheduleCallKeepAlive
{
  [(ADCommandCenter *)self _cancelCallKeepAlive];
  v3 = objc_alloc_init(NSUUID);
  objc_storeStrong(&self->_callTransactionUUID, v3);
  v4 = os_transaction_create();
  callTransaction = self->_callTransaction;
  self->_callTransaction = v4;

  v6 = dispatch_time(0, 300000000000);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100205EA8;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  dispatch_after(v6, queue, v9);
}

- (void)_sync_continueIfConditionsMet
{
  if (sub_100009F40())
  {
    v3 = [(ADCommandCenter *)self _syncManager];
    if (!-[ADCommandCenter _sync_isRequestBlockingSync](self, "_sync_isRequestBlockingSync") && !-[ADCommandCenter _syncChunkWindowFull](self, "_syncChunkWindowFull") && !-[ADCommandCenter _isInCall](self, "_isInCall") && [v3 isSyncing])
    {
      [v3 continueSync];
    }
  }
}

- (id)_syncManager
{
  syncManager = self->_syncManager;
  if (!syncManager)
  {
    v4 = [ADSyncManager alloc];
    v5 = [(ADCommandCenter *)self _serviceManager];
    v6 = [(ADCommandCenter *)self _queue];
    v7 = [(ADSyncManager *)v4 initWithServiceManager:v5 queue:v6];
    v8 = self->_syncManager;
    self->_syncManager = v7;

    syncManager = self->_syncManager;
  }

  return syncManager;
}

- (BOOL)_sync_isRequestBlockingSync
{
  v2 = [(ADCommandCenter *)self _currentRequest];
  v3 = v2 != 0;

  return v3;
}

- (void)_clearRequestDelegateState
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter _clearRequestDelegateState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Clearing request delegate state", &v4, 0xCu);
  }

  [(ADCommandCenter *)self _setCurrentRequest:0];
  [(ADCommandCenter *)self _setLastRequest:0];
}

- (void)_clearSpeechDelegateState
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADCommandCenter _clearSpeechDelegateState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Clearing speech delegate state", &v11, 0xCu);
  }

  startSpeechCommand = self->_startSpeechCommand;
  self->_startSpeechCommand = 0;

  speechRecognitionResultUUID = self->_speechRecognitionResultUUID;
  self->_speechRecognitionResultUUID = 0;

  finishSpeechCommand = self->_finishSpeechCommand;
  self->_finishSpeechCommand = 0;

  currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
  self->_currentSpeechRequestOptions = 0;

  self->_startingPronunciationRequest = 0;
  pronunciationContext = self->_pronunciationContext;
  self->_pronunciationContext = 0;

  *&self->_speechDelegateHasReceivedSpeechRecognized = 0;
  speechDelegate = self->_speechDelegate;
  self->_speechDelegate = 0;

  *&self->_isSmartLanguageSelectionActive = 0;
  multilingualSpeechRecognizedCommandHandler = self->_multilingualSpeechRecognizedCommandHandler;
  self->_multilingualSpeechRecognizedCommandHandler = 0;

  [(ADCommandCenter *)self _stopLanguageDetectionWaitTimerIfNeeded];
  [(ADCommandCenter *)self _acousticId_clearPartialResultTimer];
}

- (void)_stopLanguageDetectionWaitTimerIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  languageDetectionWaitTimer = self->_languageDetectionWaitTimer;
  if (languageDetectionWaitTimer)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADCommandCenter _stopLanguageDetectionWaitTimerIfNeeded]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
      languageDetectionWaitTimer = self->_languageDetectionWaitTimer;
    }

    [(AFWatchdogTimer *)languageDetectionWaitTimer cancel];
    v5 = self->_languageDetectionWaitTimer;
    self->_languageDetectionWaitTimer = 0;
  }
}

- (void)_acousticId_clearPartialResultTimer
{
  partialResultAcousticIDTimer = self->_partialResultAcousticIDTimer;
  if (partialResultAcousticIDTimer)
  {
    dispatch_source_cancel(partialResultAcousticIDTimer);
    v4 = self->_partialResultAcousticIDTimer;
    self->_partialResultAcousticIDTimer = 0;
  }
}

- (id)_restrictedCommands
{
  v3 = objc_alloc_init(NSMutableSet);
  v4 = self->_lockScreenStatus & 1;
  v5 = self->_lockScreenStatus & 2;
  if (AFDeviceSupportsBobble())
  {
    self->_isHeadGestureRecognitionAvailable = [ADRequestDispatcherServiceHelper isBobbleAvailable]_0();
  }

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = AFHasUnlockedSinceBoot();
    v9 = sub_10000EE68();
    v10 = sub_10000EEB8();
    isInStarkMode = self->_isInStarkMode;
    isInCarDNDMode = self->_isInCarDNDMode;
    isWatchAuthenticated = self->_isWatchAuthenticated;
    isHeadphonesAuthenticated = self->_isHeadphonesAuthenticated;
    isHeadGestureRecognitionAvailable = self->_isHeadGestureRecognitionAvailable;
    isEyesFree = self->_isEyesFree;
    *buf = 136317954;
    v32 = "[ADCommandCenter _restrictedCommands]";
    v33 = 1024;
    v34 = v4;
    v35 = 1024;
    v36 = v8;
    v37 = 1024;
    v38 = v9;
    v39 = 1024;
    v40 = v5 >> 1;
    v41 = 1024;
    v42 = v10;
    v43 = 1024;
    v44 = isInStarkMode;
    v45 = 1024;
    v46 = isInCarDNDMode;
    v47 = 1024;
    v48 = isWatchAuthenticated;
    v49 = 1024;
    v50 = isHeadphonesAuthenticated;
    v51 = 1024;
    v52 = isHeadGestureRecognitionAvailable;
    v53 = 1024;
    v54 = isEyesFree;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceIsLocked=%d AFHasUnlockedSinceBoot=%d ADVoiceDialingDisabledWhileLocked=%d deviceIsShowingLockScreen=%d ADControlCenterDisabledWhileLocked=%d _isInStarkMode=%d _isInCarDNDMode=%d _isWatchAuthenticated=%d _isheadphonesAuthenticated=%d _isHeadGestureRecognitionAvailable=%d _isEyesFree=%d", buf, 0x4Eu);

    if (v5)
    {
LABEL_5:
      if (!v4)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  v17 = [NSString stringWithFormat:@"%@#%@", SANotificationGroupIdentifier, SANotificationObjectClassIdentifier];
  [v3 addObject:v17];

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (sub_10000EEB8())
  {
    v18 = [(ADCommandCenter *)self _serviceManager];
    v19 = [v18 controlCenterLockRestrictedCommands];
    [v3 addObjectsFromArray:v19];
  }

  if ((AFHasUnlockedSinceBoot() & 1) == 0)
  {
    v20 = [(ADCommandCenter *)self _serviceManager];
    v21 = [v20 firstUnlockRestrictedCommands];
    [v3 addObjectsFromArray:v21];
  }

  if (sub_10000EE68())
  {
    v22 = [NSString stringWithFormat:@"%@#%@", SAPhoneGroupIdentifier, SAPhoneCallClassIdentifier];
    [v3 addObject:v22];
  }

  if (!self->_isHeadphonesAuthenticated)
  {
    [v3 addObject:SADeviceRestrictionUNAUTHENTICATED_BY_HEADPHONES_STATEValue];
  }

  if (!self->_isWatchAuthenticated)
  {
    [v3 addObject:SADeviceRestrictionUNAUTHENTICATED_BY_WATCH_PROXIMITYValue];
  }

  v23 = [(ADCommandCenter *)self _serviceManager];
  v24 = [v23 lockRestrictedCommands];

  if (v24)
  {
    [v3 addObjectsFromArray:v24];
  }

LABEL_22:
  if (self->_isInStarkMode)
  {
    [v3 addObject:SADeviceRestrictionSTARKValue];
    if (self->_supportsCarPlayVehicleData)
    {
      [v3 addObject:SADeviceRestrictionCAR_SUPPORTS_VEHICLE_DATAValue];
    }

    v25 = [NSString stringWithFormat:@"%@#%@", SASmsGroupIdentifier, SAUISayItClassIdentifier];
    [v3 removeObject:v25];

    v26 = [NSString stringWithFormat:@"%@#%@", SAPhoneGroupIdentifier, SAPhoneCallClassIdentifier];
    [v3 removeObject:v26];

    v27 = [NSString stringWithFormat:@"%@#%@", SAAppsGroupIdentifier, SAAppsLaunchAppClassIdentifier];
    [v3 removeObject:v27];
  }

  else if (self->_isInCarDNDMode)
  {
    [v3 addObject:SADeviceRestrictionCAR_DNDValue];
  }

  if (self->_carOwnsMainAudio)
  {
    [v3 addObject:SADeviceRestrictionCAR_OWNS_MAIN_AUDIOValue];
  }

  if (self->_isEyesFree)
  {
    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[ADCommandCenter _restrictedCommands]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s RestrictedCommands: Adding EYES_FREE DeviceRestriction", buf, 0xCu);
    }

    [v3 addObject:SADeviceRestrictionEYES_FREEValue];
  }

  if (self->_isHeadGestureRecognitionAvailable)
  {
    [v3 addObject:SADeviceRestrictionHEAD_GESTURE_RECOGNITIONValue];
  }

  v29 = [v3 allObjects];

  return v29;
}

- (id)_testAgent
{
  if (!os_variant_allows_internal_security_policies())
  {
    goto LABEL_12;
  }

  v2 = _AFPreferencesValueForKey();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  *buf = 0;
  if (!sub_10012F770())
  {
    v2 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"void *USTFoundationLibrary(void)"];
    [v2 handleFailureInFunction:v10 file:@"ADCommandCenter_UnifiedSiriTest.m" lineNumber:19 description:{@"%s", *buf}];

    __break(1u);
    free(v11);
  }

  v3 = sub_10012F840();

  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = qword_100590248;
  if (!qword_100590248)
  {
    v5 = objc_alloc_init(sub_10012F840());
    v6 = qword_100590248;
    qword_100590248 = v5;

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[ADCommandCenter(UnifiedSiriTest) _testAgent]";
      v13 = 2112;
      v14 = qword_100590248;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Created %@", buf, 0x16u);
    }

    v4 = qword_100590248;
  }

  v8 = v4;
LABEL_13:

  return v8;
}

- (id)_fetchComputedModeAndUpdateRequestDelegate
{
  v3 = [(ADResponseModeProvider *)self->_responseModeProvider fetchCurrentMode];
  if (self->_requestDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(ADCommandCenterRequestDelegate *)self->_requestDelegate adRequestDidUpdateResponseMode:v3];
  }

  return v3;
}

- (id)_bargeInModes
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions bargeInOptions];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  if ((v4 & 4) == 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    [v3 addObject:SASBargeInModeOVER_MEDIAValue];
    if ((v5 & 0x10) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_12;
  }

  [v3 addObject:SASBargeInModeOVER_SIRI_OUTPUTValue];
  if (v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_12:
  [v3 addObject:SASBargeInModeOVER_TIMERValue];
  if ((v5 & 8) != 0)
  {
LABEL_6:
    [v3 addObject:SASBargeInModeOVER_ALARMValue];
  }

LABEL_7:

  return v3;
}

- (unsigned)_sharedVoiceAudioSessionID
{
  v2 = +[ADSpeechManager sharedManager];
  v3 = [v2 audioSessionController];
  v4 = [v3 getAudioSessionID];

  return v4;
}

- (id)_deviceRouter
{
  deviceRouter = self->_deviceRouter;
  if (!deviceRouter)
  {
    v4 = [[ADDeviceRouter alloc] initWithQueue:self->_queue];
    v5 = self->_deviceRouter;
    self->_deviceRouter = v4;

    deviceRouter = self->_deviceRouter;
  }

  return deviceRouter;
}

- (id)_resultObjectCache
{
  resultObjectCache = self->_resultObjectCache;
  if (!resultObjectCache)
  {
    v4 = objc_alloc_init(ADResultObjectCache);
    v5 = self->_resultObjectCache;
    self->_resultObjectCache = v4;

    resultObjectCache = self->_resultObjectCache;
  }

  return resultObjectCache;
}

- (id)_activeAccountIdentifier
{
  v2 = [(ADCommandCenter *)self _account];
  v3 = [v2 identifier];

  return v3;
}

- (void)_startObservingCallState
{
  if (!self->_callObserver)
  {
    v4 = objc_alloc_init(ADCallObserver);
    callObserver = self->_callObserver;
    self->_callObserver = v4;

    v6 = self->_callObserver;

    [(ADCallObserver *)v6 startObservingCallStateWithDelegate:self];
  }
}

- (ADSpeechManager)_speechManager
{
  speechManager = self->_speechManager;
  if (!speechManager)
  {
    v4 = dispatch_group_create();
    speechRequestGroup = self->_speechRequestGroup;
    self->_speechRequestGroup = v4;

    v6 = +[ADSpeechManager sharedManager];
    v7 = self->_speechManager;
    self->_speechManager = v6;

    [(ADSpeechManager *)self->_speechManager setClientConfiguration:self->_clientConfiguration];
    [(ADSpeechManager *)self->_speechManager setDelegate:self];
    speechManager = self->_speechManager;
  }

  return speechManager;
}

- (void)_requestDidEnd
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _requestDidEnd]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _sessionManager];
  [v4 setHasActiveRequest:0];

  sub_10001A0C8();
  v5 = +[ADRequestLifecycleObserver sharedObserver];
  [v5 requestDidEndWithInfo:self->_currentRequestInfo fromOrigin:5 client:self->_currentClient];

  [(ADCommandCenter *)self _metrics_recordSNNetworkSnapshotForEvent:2 completion:0];
  [(ADCommandCenter *)self _setSpeechCapturingContext:0];
  requestAssertion = self->_requestAssertion;
  self->_requestAssertion = 0;

  v7 = AFSupportsSCDAFramework();
  v8 = SCDAMonitor_ptr;
  if (!v7)
  {
    v8 = AFMyriadMonitor_ptr;
  }

  v9 = [*v8 sharedMonitor];
  [v9 dequeueBlocksWaitingForMyriadDecision];
}

- (void)sendPowerLogs:(id)a3 peerInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && AFHasPerfPowerEntitlement())
  {
    if (qword_10058FDC8 != -1)
    {
      dispatch_once(&qword_10058FDC8, &stru_10050F3A0);
    }

    v7 = +[ADCompanionService sharedInstance];
    v8 = [ADPeerInfo alloc];
    v9 = [v6 afPeerInfo];
    v10 = [(ADPeerInfo *)v8 initWithAFPeerInfo:v9];
    v11 = [v7 discoveryTypeForPeer:v10];

    if (v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = @"unknown";
    }

    v23[0] = @"requestType";
    v23[1] = @"linkDiscoveryType";
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"unknown";
    }

    v24[0] = v12;
    v24[1] = v13;
    v23[2] = @"sourceDeviceType";
    v14 = [v6 productType];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"unknown";
    }

    v24[2] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];

    v18 = AFSiriLogContextPower;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "[ADCommandCenter(Instrumentation) sendPowerLogs:peerInfo:]";
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Sending PerfPower Telemetry for %@", &v19, 0x16u);
    }

    PPSSendTelemetry();
  }
}

- (BOOL)isStereoPairLeader
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.airplay"];
  v3 = [v2 BOOLForKey:@"tightSyncIsGroupLeader"];

  return v3;
}

- (int)getHomeDevicesAudioTopology
{
  if (!AFIsHorseman())
  {
    return 0;
  }

  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.airplay"];
  v3 = [v2 objectForKey:@"persistentGroupUUID"];
  v4 = [v2 objectForKey:@"tightSyncGroupUUID"];
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  if (v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)_emitAudioTopologyForRequestId:(id)a3
{
  v7 = [(ADCommandCenter *)self _buildORCHClientEvent:a3];
  v4 = objc_alloc_init(ORCHSchemaORCHAudioTopologyReported);
  [v4 setHasAudioTopology:1];
  v5 = [(ADCommandCenter *)self getHomeDevicesAudioTopology];
  [v4 setAudioTopology:v5];
  if (v5 == 4 || v5 == 2)
  {
    [v4 setHasIsLeader:{-[ADCommandCenter isStereoPairLeader](self, "isStereoPairLeader")}];
  }

  [v7 setAudioTopologyReported:v4];
  v6 = +[AssistantSiriAnalytics sharedStream];
  [v6 emitMessage:v7];
}

- (void)_logAudioTopologyForRequestId:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _getInstrumentationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006FEC0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_getInstrumentationQueue
{
  if (qword_10058FDB8 != -1)
  {
    dispatch_once(&qword_10058FDB8, &stru_10050F380);
  }

  v3 = qword_10058FDB0;

  return v3;
}

- (void)_logExecuteOnRemoteRequestForRequestId:(id)a3 turnId:(id)a4 event:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v17 = [(ADCommandCenter *)self _buildORCHClientEvent:v9];
  v10 = objc_alloc_init(ORCHSchemaORCHExecuteOnRemoteRequestContext);
  if (a5 == 2)
  {
    v11 = objc_alloc_init(ORCHSchemaORCHExecuteOnRemoteRequestFailed);
    [v10 setFailed:v11];
    [v10 setHasFailed:1];
  }

  else if (a5 == 1)
  {
    v11 = objc_alloc_init(ORCHSchemaORCHExecuteOnRemoteRequestEnded);
    [v10 setEnded:v11];
    [v10 setHasEnded:1];
  }

  else
  {
    if (a5)
    {
      goto LABEL_8;
    }

    v11 = objc_alloc_init(ORCHSchemaORCHExecuteOnRemoteRequestStarted);
    [v10 setStartedOrChanged:v11];
    [v10 setHasStartedOrChanged:1];
  }

LABEL_8:
  [v17 setExecuteOnRemoteRequestContext:v10];
  v12 = +[AssistantSiriAnalytics sharedStream];
  [v12 emitMessage:v17];

  v13 = [v9 UUIDString];

  v14 = ADCreateRequestLinkInfo();

  v15 = [v8 UUIDString];

  v16 = ADCreateRequestLinkInfo();

  ADEmitRequestLinkEventMessage();
}

- (void)_logMURequestEndedWithResultCandidate:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _getInstrumentationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007020C;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (int)_convertToORCHUserIdentityClassification:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAUserIdentityClassificationConfidentValue])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:SAUserIdentityClassificationKnownValue])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:SAUserIdentityClassificationUnsure1Value])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:SAUserIdentityClassificationUnsureNValue])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_buildORCHClientEvent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ORCHSchemaORCHClientEvent);
  v5 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:v3];

  [v5 setRequestId:v6];
  [v4 setEventMetadata:v5];

  return v4;
}

- (void)_sync_syncAnchorKeys:(id)a3 forceReset:(BOOL)a4 reasons:(id)a5
{
  v7 = a3;
  v57 = a5;
  v58 = v7;
  if (sub_100009F40())
  {
    *v92 = 0;
    *&v92[8] = v92;
    *&v92[16] = 0x3032000000;
    v93 = sub_100075AB8;
    v94 = sub_100075AC8;
    v95 = [v7 mutableCopy];
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100075AD0;
    v70[3] = &unk_10050F608;
    v75 = a4;
    v73 = v92;
    v74 = &v76;
    v8 = v57;
    v71 = v8;
    v72 = self;
    v56 = objc_retainBlock(v70);
    v9 = [(ADCommandCenter *)self _syncManager];
    if ([*(*&v92[8] + 40) count])
    {
      v10 = [NSMutableArray alloc];
      v11 = [v10 initWithCapacity:{objc_msgSend(*(*&v92[8] + 40), "count")}];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v12 = *(*&v92[8] + 40);
      v13 = [v12 countByEnumeratingWithState:&v62 objects:v90 count:16];
      if (v13)
      {
        v14 = *v63;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v63 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v62 + 1) + 8 * i);
            v17 = [(ADCommandCenter *)self _serviceManager];
            v18 = [v17 serviceForSyncAnchorKey:v16];
            v19 = v18 == 0;

            if (v19)
            {
              v20 = AFSiriLogContextSync;
              if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v87 = "[ADCommandCenter(Sync) _sync_syncAnchorKeys:forceReset:reasons:]";
                v88 = 2112;
                v89 = v16;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Not syncing %@ because there's no sync plugin for it", buf, 0x16u);
              }

              v85 = v16;
              v21 = [NSArray arrayWithObjects:&v85 count:1];
              sub_1002F3A14(v21);
            }

            else
            {
              [v11 addObject:v16];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v62 objects:v90 count:16];
        }

        while (v13);
      }

      v22 = *(*&v92[8] + 40);
      *(*&v92[8] + 40) = v11;
    }

    else
    {
      v22 = objc_alloc_init(NSMutableSet);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v26 = v8;
      v27 = [v26 countByEnumeratingWithState:&v66 objects:v91 count:16];
      if (v27)
      {
        v28 = *v67;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v67 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v66 + 1) + 8 * j);
            v31 = [v9 syncKeysForReason:v30];
            [v22 addObjectsFromArray:v31];
            v32 = v77;
            if (v77[3])
            {
              v33 = 1;
            }

            else
            {
              v33 = [v9 shouldIncludeAllKnownSiriKitAnchorsForReason:v30];
              v32 = v77;
            }

            *(v32 + 24) = v33;
            if ([v9 shouldSyncEverythingForReason:v30])
            {
              sub_1002F36B4(v31);
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v66 objects:v91 count:16];
        }

        while (v27);
      }

      v34 = [v22 allObjects];
      v35 = [v34 mutableCopy];
      v36 = *(*&v92[8] + 40);
      *(*&v92[8] + 40) = v35;
    }

    if (sub_10000A500())
    {
      if (!AFIsIOS() || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 deviceHasHomePodInHome], v37, (v38 & 1) == 0))
      {
        if ([*(*&v92[8] + 40) containsObject:@"com.apple.siri.parsecContext"])
        {
          v39 = AFSiriLogContextSync;
          if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v87 = "[ADCommandCenter(Sync) _sync_syncAnchorKeys:forceReset:reasons:]";
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Removing parsec context sync key for a FullUOD device", buf, 0xCu);
          }

          [*(*&v92[8] + 40) removeObject:@"com.apple.siri.parsecContext"];
          v84 = @"com.apple.siri.parsecContext";
          v40 = [NSArray arrayWithObjects:&v84 count:1];
          sub_1002F3A14(v40);
        }

        if ([*(*&v92[8] + 40) containsObject:@"com.apple.siri.client.state.DynamiteClientState"])
        {
          v41 = AFSiriLogContextSync;
          if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v87 = "[ADCommandCenter(Sync) _sync_syncAnchorKeys:forceReset:reasons:]";
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Removing dynamite client state sync key for a FullUOD device", buf, 0xCu);
          }

          [*(*&v92[8] + 40) removeObject:@"com.apple.siri.client.state.DynamiteClientState"];
          v83 = @"com.apple.siri.client.state.DynamiteClientState";
          v42 = [NSArray arrayWithObjects:&v83 count:1];
          sub_1002F3A14(v42);
        }

        if ([*(*&v92[8] + 40) containsObject:@"com.apple.siri.corrections"])
        {
          v43 = AFSiriLogContextSync;
          if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v87 = "[ADCommandCenter(Sync) _sync_syncAnchorKeys:forceReset:reasons:]";
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Removing corrections sync key for a FullUOD device", buf, 0xCu);
          }

          [*(*&v92[8] + 40) removeObject:@"com.apple.siri.corrections"];
          v82 = @"com.apple.siri.corrections";
          v44 = [NSArray arrayWithObjects:&v82 count:1];
          sub_1002F3A14(v44);
        }

        if ([*(*&v92[8] + 40) containsObject:@"com.apple.siri.ParsecSubscriptionServiceSupport"])
        {
          v45 = AFSiriLogContextSync;
          if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v87 = "[ADCommandCenter(Sync) _sync_syncAnchorKeys:forceReset:reasons:]";
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s Removing PSSS sync key for a FullUOD device", buf, 0xCu);
          }

          [*(*&v92[8] + 40) removeObject:@"com.apple.siri.ParsecSubscriptionServiceSupport"];
          v81 = @"com.apple.siri.ParsecSubscriptionServiceSupport";
          v46 = [NSArray arrayWithObjects:&v81 count:1];
          sub_1002F3A14(v46);
        }

        if (![*(*&v92[8] + 40) count])
        {
          v55 = AFSiriLogContextSync;
          if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v87 = "[ADCommandCenter(Sync) _sync_syncAnchorKeys:forceReset:reasons:]";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s FullUOD device has no more keys to sync - exiting", buf, 0xCu);
          }

          goto LABEL_63;
        }
      }
    }

    v47 = [(ADCommandCenter *)self _serviceManager];
    v48 = [v9 shouldSyncThirdPartyUserVocabularyForSyncKeys:*(*&v92[8] + 40)];
    v49 = [v9 shouldSyncIntentPolicyForSyncKeys:*(*&v92[8] + 40)];
    v50 = v49;
    if (v48)
    {
      v51 = [v47 allVocabSyncInfo];
      if (![v51 count])
      {
        v80 = @"com.apple.siri.vocabularyupdates";
        v52 = [NSArray arrayWithObjects:&v80 count:1];
        sub_1002F3A14(v52);
      }

      if ((v50 & 1) == 0)
      {
        v53 = [(ADCommandCenter *)self _appMetaDataListFromVocabSources:v51 appIdentifyingInfoList:0];
        v54 = [v53 mutableCopy];
        (v56[2])(v56, v54, 0);

LABEL_60:
LABEL_62:

LABEL_63:
        _Block_object_dispose(&v76, 8);
        _Block_object_dispose(v92, 8);

        goto LABEL_64;
      }
    }

    else
    {
      if (!v49)
      {
        (v56[2])(v56, 0, 0);
        goto LABEL_62;
      }

      v51 = 0;
    }

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100075D20;
    v60[3] = &unk_10050F630;
    v60[4] = self;
    v61 = v56;
    [(ADCommandCenter *)self _fetchAllAppSourcesForSyncingWithCustomVocabInfo:v51 completion:v60];

    goto LABEL_60;
  }

  v23 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *v92 = 136315394;
    *&v92[4] = "[ADCommandCenter(Sync) _sync_syncAnchorKeys:forceReset:reasons:]";
    *&v92[12] = 2112;
    *&v92[14] = v7;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Sync not allowed - posting sync finished notification for %@", v92, 0x16u);
  }

  v24 = [NSNotification notificationWithName:@"ADSyncFinishedNotification" object:v7];
  v25 = +[NSNotificationCenter defaultCenter];
  [v25 postNotification:v24];

LABEL_64:
}

- (BOOL)_sync_hasCommandForRefId:(id)a3
{
  v4 = a3;
  if ([(ADCommandCenter *)self _hasOutstandingSyncChunkId:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(ADCommandCenter *)self _hasOutstandingAnchorsRequestId:v4];
  }

  return v5;
}

- (void)_sync_assistantLoadedSyncRequest:(BOOL)a3
{
  v3 = a3;
  if (sub_100009F40())
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADCommandCenter(Sync) _sync_assistantLoadedSyncRequest:]";
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %d", &v10, 0x12u);
    }

    v6 = [(ADCommandCenter *)self _syncManager];
    if (([v6 isSyncing] & 1) == 0)
    {
      v7 = [(ADCommandCenter *)self _sessionManager];
      [v7 beginUpdatingAssistantData];
    }

    if (v3)
    {
      v8 = [(ADCommandCenter *)self _syncManager];
      v9 = [v8 syncKeysForReason:@"requested_by_server"];
      sub_1002F36B4(v9);
    }
  }
}

- (void)_sync_commandIgnored:(id)a3
{
  v4 = [a3 refId];
  [(ADCommandCenter *)self _cleanUpForFailureCommandWithRefId:v4];
}

- (void)_sync_commandFailed:(id)a3
{
  v4 = [a3 refId];
  [(ADCommandCenter *)self _cleanUpForFailureCommandWithRefId:v4];
}

- (void)_cleanUpForFailureCommandWithRefId:(id)a3
{
  v4 = a3;
  [(ADCommandCenter *)self _removeOutstandingAnchorsRequestId:v4];
  [(ADCommandCenter *)self _removeOutstandingSyncChunkId:v4];

  [(ADCommandCenter *)self _sync_continueIfConditionsMet];
}

- (void)_sync_syncIfNeeded
{
  v3 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCommandCenter(Sync) _sync_syncIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _syncManager];
  v5 = [v4 getAnchorsRequest];

  if (!v5)
  {
    if ([v4 isSyncing])
    {
      [(ADCommandCenter *)self _sync_continueIfConditionsMet];
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000762C0;
      v6[3] = &unk_10051E150;
      v6[4] = self;
      sub_1002F3384(v6);
    }
  }
}

- (void)syncManagerDidResetInProgressSync:(id)a3
{
  v4 = [(ADCommandCenter *)self _currentClient];

  if (!v4)
  {

    [(ADCommandCenter *)self _resetServices];
  }
}

- (void)syncManager:(id)a3 finishedSyncForKeys:(id)a4 postNotification:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = [NSNotification notificationWithName:@"ADSyncFinishedNotification" object:v9];
    [v10 postNotification:v11];
  }

  sub_100216038(@"sync_flag");
  v12 = [v8 queuedAnchors];
  v13 = [v8 queuedReasons];
  v14 = [(ADCommandCenter *)self _syncManager];
  v15 = [v14 isSyncing];

  if ((v15 & 1) == 0)
  {
    if ([v12 count])
    {
      [v8 clearQueuedAnchorsAndReasons];
      [v8 setGetAnchorsRequest:0];
      v16 = [v13 allObjects];
      [v8 prepareSyncWithAnchors:v12 forReasons:v16 delegate:self];
    }

    else
    {
      if (self->_needsToSendSyncFinished)
      {
        self->_needsToSendSyncFinished = 0;
        v17 = objc_alloc_init(SASyncFinished);
        [(ADCommandCenter *)self _sendCommandToServer:v17];

        v18 = [(ADCommandCenter *)self _currentRequest];

        if (!v18)
        {
          v19 = [(ADCommandCenter *)self _sessionManager];
          [v19 setHasActiveRequest:0];
        }
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000765FC;
      v20[3] = &unk_100516750;
      v20[4] = self;
      v21 = v9;
      sub_1002F3384(v20);
    }
  }
}

- (void)syncManager:(id)a3 chunkForSyncInfo:(id)a4 chunkInfo:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ADDaemon sharedDaemon];
  [v10 keepAlive];

  self->_needsToSendSyncFinished = 1;
  v11 = objc_alloc_init(SASyncChunk);
  v12 = SiriCoreUUIDStringCreate();
  [v11 setAceId:v12];

  v13 = [v8 key];
  [v11 setKey:v13];

  v14 = [v8 appMetadata];
  [v11 setAppMetaData:v14];

  v15 = [v9 pre];
  [v11 setPreGen:v15];

  v16 = [v9 post];
  [v11 setPostGen:v16];

  v17 = [v9 validity];
  [v11 setValidity:v17];

  v18 = objc_autoreleasePoolPush();
  v19 = [v9 toAdd];
  v20 = [v9 toRemove];
  if (v19)
  {
    v21 = [AceObject aceObjectArrayWithDictionaryArray:v19 baseClass:objc_opt_class()];
    [v11 setToAdd:v21];

    if (v20)
    {
LABEL_3:
      v22 = [AceObject aceObjectArrayWithDictionaryArray:v20 baseClass:objc_opt_class()];
      [v11 setToRemove:v22];

      goto LABEL_6;
    }
  }

  else
  {
    [v11 setToAdd:0];
    if (v20)
    {
      goto LABEL_3;
    }
  }

  [v11 setToRemove:0];
LABEL_6:
  v23 = +[ADSyncSnapshot sharedInstance];
  [v23 noteSendingChunk:v11];

  objc_autoreleasePoolPop(v18);
  [(ADCommandCenter *)self _sendCommandToServer:v11];
  v24 = [v11 aceId];
  [(ADCommandCenter *)self _addOutstandingSyncChunkId:v24];
}

- (void)_saSyncChunkAccepted:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter(Sync) _saSyncChunkAccepted:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  v9 = [v6 refId];
  [(ADCommandCenter *)self _removeOutstandingSyncChunkId:v9];

  [(ADCommandCenter *)self _sync_continueIfConditionsMet];
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_saSyncChunkDenied:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "[ADCommandCenter(Sync) _saSyncChunkDenied:completion:]";
    v14 = 2112;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@", &v12, 0x16u);
  }

  v9 = [(ADCommandCenter *)self _syncManager];
  v10 = [v6 current];
  [v9 cancelSyncForAnchor:v10];

  v11 = [v6 refId];
  [(ADCommandCenter *)self _removeOutstandingSyncChunkId:v11];

  [(ADCommandCenter *)self _sync_continueIfConditionsMet];
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_saSyncGetAnchorsResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[ADCommandCenter(Sync) _saSyncGetAnchorsResponse:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v15, 0x16u);
  }

  v9 = [v6 refId];
  [(ADCommandCenter *)self _removeOutstandingAnchorsRequestId:v9];
  v10 = [(ADCommandCenter *)self _syncManager];
  v11 = [v10 getAnchorsRequest];
  v12 = [v11 aceId];

  if ([v12 isEqualToString:v9])
  {
    v13 = [v10 getAnchorsRequest];
    [(ADCommandCenter *)self _handleValidatedSyncGetAnchorsResponse:v6 forGetAnchors:v13];

    [v10 setGetAnchorsRequest:0];
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315650;
    v16 = "[ADCommandCenter(Sync) _saSyncGetAnchorsResponse:completion:]";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v12;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s %@ isn't the get anchors response we were expecting. getAnchorsRequest:%@", &v15, 0x20u);
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_8:
    (*(v7 + 2))(v7, 0, 0);
  }

LABEL_9:
}

- (void)_requestAnchorsForKeys:(id)a3 appSources:(id)a4 watchAppSources:(id)a5 forceReset:(BOOL)a6 includeAllKnownAnchors:(BOOL)a7 reasons:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v73 = v17;
    LOWORD(v74) = 1024;
    *(&v74 + 2) = v10;
    HIWORD(v74) = 1024;
    LODWORD(v75) = v9;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Asking for anchor keys=%@ reasons=%@ forceReset=%d includeAll=%d", buf, 0x2Cu);
  }

  v19 = [NSPredicate predicateWithBlock:&stru_10050F5E0];
  v20 = [v14 filteredArrayUsingPredicate:v19];

  v21 = [v20 count];
  v22 = AFSiriLogContextSync;
  v23 = os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO);
  if (v21)
  {
    if (v23)
    {
      *buf = 136316162;
      *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      v73 = v17;
      LOWORD(v74) = 1024;
      *(&v74 + 2) = v10;
      HIWORD(v74) = 1024;
      LODWORD(v75) = v9;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Asking for anchor filteredKeys=%@ reasons=%@ forceReset=%d includeAll=%d", buf, 0x2Cu);
    }

    v24 = [(ADCommandCenter *)self _syncManager];
    v64 = v20;
    v61 = v24;
    if (v10)
    {
      v25 = v24;
      if ([v24 isSyncing])
      {
        v26 = AFSiriLogContextSync;
        if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Not forcing a reset since we're already in the middle of a sync. Wait and try again", buf, 0xCu);
        }

        v10 = 0;
      }

      else
      {
        v10 = 1;
        [v25 _setForceResetOnNextSync:1];
        v27 = AFSiriLogContextSync;
        if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Forcing a reset sync", buf, 0xCu);
        }
      }
    }

    v28 = [(ADCommandCenter *)self _sessionManager];
    [v28 beginUpdatingAssistantData];

    v29 = objc_alloc_init(SASyncGetAnchors);
    [v29 setSources:v64];
    v60 = [v17 componentsJoinedByString:@"+"];
    [v29 setSyncReason:?];
    [v29 setIncludeAllKnownAnchors:v9];
    v63 = v15;
    [v29 setAppMetaDataList:v15];
    [v29 setWatchAppMetaDataList:v16];
    v30 = SiriCoreUUIDStringCreate();
    [v29 setAceId:v30];

    v31 = [NSMutableString stringWithCapacity:128];
    sub_100214FE4(v10, v31, @"ForceReset");
    v32 = +[AFPreferences sharedPreferences];
    v33 = +[ADPreferences sharedPreferences];
    v34 = [v33 languageCode];

    sub_100214FE4([v32 siriDataSharingOptInStatus] == 1, v31, @"OptedIn");
    v35 = +[ADAssetManager sharedInstance];
    v36 = [v35 assetsAvailableStatusForLanguage:v34];

    sub_100214FE4([AFUtilitiesWrapper uodStatusSupportedFull:v36 languageCode:v34], v31, @"FullUodCapable");
    if (AFIsIOS())
    {
      sub_100214FE4([v32 isSyncNeededForWatch], v31, @"IsSyncNeededForWatch");
      sub_100214FE4([v32 deviceHasAtvInHome], v31, @"AtvInHome");
      sub_100214FE4([v32 deviceHasHomePodInHome], v31, @"HomePodInHome");
    }

    v62 = v17;
    v37 = sub_10000ABF4(v34);
    sub_100214FE4(v37, v31, @"SyncDisabledViaTrial");
    if ([v32 dictationIsEnabled])
    {
      sub_100214FE4(+[AFUtilitiesWrapper deviceSupportsOnDeviceDictation], v31, @"SupportsDeviceDictation");
      v38 = sub_100214E4C(v32);
      sub_100214FE4(v38, v31, @"ServerDictationRequired");
    }

    v39 = v16;
    v40 = v14;
    if (AFDeviceSupportsSAE())
    {
      AFSAERequiredAssets();
    }

    else
    {
      AFRequiredAssetsForFullUOD();
    }
    v41 = ;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100215068;
    v73 = &unk_100519AE8;
    v74 = v36;
    v42 = v31;
    v75 = v42;
    v43 = v36;
    [v41 enumerateObjectsUsingBlock:buf];
    v44 = v75;
    v45 = v42;

    [v29 setSyncModes:v45];
    v46 = [v29 aceId];
    v47 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Waiting for sync queue to start sync", buf, 0xCu);
    }

    syncAnchorsRequestQueue = self->_syncAnchorsRequestQueue;
    v14 = v40;
    v16 = v39;
    v17 = v62;
    v15 = v63;
    if (!syncAnchorsRequestQueue)
    {
      v49 = [(ADCommandCenter *)self _queue];
      v50 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v51 = dispatch_queue_attr_make_with_qos_class(v50, QOS_CLASS_UNSPECIFIED, 0);

      if (v49)
      {
        v52 = dispatch_queue_create_with_target_V2("SyncAnchorsQueue", v51, v49);
      }

      else
      {
        v52 = dispatch_queue_create("SyncAnchorsQueue", v51);
      }

      v53 = v52;

      v54 = self->_syncAnchorsRequestQueue;
      self->_syncAnchorsRequestQueue = v53;

      syncAnchorsRequestQueue = self->_syncAnchorsRequestQueue;
      v15 = v63;
    }

    v55 = syncAnchorsRequestQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000776CC;
    block[3] = &unk_100516250;
    v66 = v46;
    v67 = v62;
    v68 = v55;
    v69 = self;
    v70 = v29;
    v71 = v61;
    v56 = v46;
    v57 = v55;
    v58 = v29;
    v59 = v61;
    dispatch_async(v57, block);

    v20 = v64;
  }

  else if (v23)
  {
    *buf = 136315394;
    *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
    *&buf[12] = 2112;
    *&buf[14] = v17;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Nothing to sync for reasons=%@", buf, 0x16u);
  }
}

- (void)_fetchAllAppSourcesForSyncingWithCustomVocabInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v26 = self;
    v27 = objc_alloc_init(NSMutableArray);
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [NSString alloc];
    v12 = +[NSUUID UUID];
    v13 = [v11 initWithFormat:@"ADCommandCenterSyncAppSourcesFetching-%@", v12];

    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);

    v17 = dispatch_group_create();
    dispatch_group_enter(v17);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100077E28;
    v40[3] = &unk_10050F5A0;
    v18 = v16;
    v41 = v18;
    v19 = v9;
    v42 = v19;
    v20 = v17;
    v43 = v20;
    [NSExtension _intents_findAppsWithAnIntentsServiceExtension:v40];
    if (AFSupportsPairedDevice())
    {
      dispatch_group_enter(v20);
      v21 = +[ACXDeviceConnection sharedDeviceConnection];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100077F10;
      v36[3] = &unk_100510A48;
      v37 = v18;
      v38 = v20;
      v39 = v10;
      [v21 fetchInstalledApplicationsForPairedDevice:0 completion:v36];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100077FF8;
    block[3] = &unk_100517EA8;
    v29 = v27;
    v30 = v26;
    v31 = v6;
    v32 = v19;
    v33 = v10;
    v34 = v8;
    v35 = v7;
    v22 = v8;
    v23 = v10;
    v24 = v19;
    v25 = v27;
    dispatch_group_notify(v20, v18, block);
  }
}

- (id)_appMetaDataListFromVocabSources:(id)a3 appIdentifyingInfoList:(id)a4
{
  v20 = self;
  v21 = a3;
  v5 = a4;
  v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 bundleId];
        v12 = [LSApplicationProxy applicationProxyForIdentifier:v11];

        v13 = objc_alloc_init(SASyncAppMetaData);
        [v13 setAppIdentifyingInfo:v10];
        v14 = [NSNumber numberWithBool:sub_10007840C(v12)];
        [v13 setDeveloperMode:v14];

        v15 = [v10 clientIdentifier];
        if (v15)
        {
          [v23 setObject:v13 forKey:v15];
        }

        else
        {
          v16 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v32 = "[ADCommandCenter(Sync) _appMetaDataListFromVocabSources:appIdentifyingInfoList:]";
            v33 = 2112;
            v34 = v10;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Malformed app source - no clientIdentifier: %@", buf, 0x16u);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100078B24;
  v24[3] = &unk_100510BD8;
  v25 = v23;
  v26 = v20;
  v17 = v23;
  [v21 enumerateKeysAndObjectsUsingBlock:v24];
  v18 = [v17 allValues];

  return v18;
}

- (id)_appMetaDataForAppProxy:(id)a3 clientIdentifier:(id)a4 syncSlots:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(SASyncAppMetaData);
  v11 = sub_1000784C8(v9, v8);

  [v10 setAppIdentifyingInfo:v11];
  [v10 setSyncSlots:v7];

  v12 = sub_10007840C(v9);
  v13 = [NSNumber numberWithBool:v12];
  [v10 setDeveloperMode:v13];

  return v10;
}

- (void)_handleValidatedSyncGetAnchorsResponse:(id)a3 forGetAnchors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADCommandCenter *)self _syncManager];
  v9 = [(ADCommandCenter *)self _allAnchorsFromRequest:v7 andResponse:v6];
  v10 = [v7 syncReason];

  v11 = [v10 componentsSeparatedByString:@"+"];

  if ([v8 isSyncing])
  {
    v12 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v6 aceId];
      v15 = [(ADCommandCenter *)self _currentRequest];
      v16 = [v15 currentRequestId];
      v17 = 136315650;
      v18 = "[ADCommandCenter(Sync) _handleValidatedSyncGetAnchorsResponse:forGetAnchors:]";
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Queuing anchors from %@ because we are already syncing; active request: %@", &v17, 0x20u);
    }

    [v8 addQueuedAnchors:v9 forReasons:v11];
  }

  else
  {
    [v8 prepareSyncWithAnchors:v9 forReasons:v11 delegate:self];
  }
}

- (id)_allAnchorsFromRequest:(id)a3 andResponse:(id)a4
{
  v4 = a4;
  v5 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v4;
  v6 = [v4 anchors];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 _af_isValid])
        {
          v12 = [v11 _af_normalizedKey];
          [v5 setObject:v11 forKey:v12];
        }

        else
        {
          v13 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v23 = "[ADCommandCenter(Sync) _allAnchorsFromRequest:andResponse:]";
            v24 = 2112;
            v25 = v11;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Ignoring invalid anchor from server: %@", buf, 0x16u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v14 = +[ADSyncDeny sharedInstance];
  [v14 filterDeniedAnchorsFrom:v5 includingNewRestrictionsFromResponse:v17];

  v15 = [v5 allValues];

  return v15;
}

- (BOOL)_hasOutstandingSyncChunkId:(id)a3
{
  if (a3)
  {
    return [(NSMutableSet *)self->_outstandingSyncChunks containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_removeOutstandingSyncChunkId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->_outstandingSyncChunks removeObject:v4];
    if (![(NSMutableSet *)self->_outstandingSyncChunks count])
    {
      outstandingSyncChunks = self->_outstandingSyncChunks;
      self->_outstandingSyncChunks = 0;
    }
  }

  _objc_release_x1();
}

- (void)_addOutstandingSyncChunkId:(id)a3
{
  v4 = a3;
  outstandingSyncChunks = self->_outstandingSyncChunks;
  v8 = v4;
  if (!outstandingSyncChunks)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_outstandingSyncChunks;
    self->_outstandingSyncChunks = v6;

    v4 = v8;
    outstandingSyncChunks = self->_outstandingSyncChunks;
  }

  [(NSMutableSet *)outstandingSyncChunks addObject:v4];
}

- (BOOL)_hasOutstandingAnchorsRequestId:(id)a3
{
  if (a3)
  {
    return [(NSMutableSet *)self->_outstandingAnchorsRequests containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_removeOutstandingAnchorsRequestId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->_outstandingAnchorsRequests removeObject:v4];
    if (![(NSMutableSet *)self->_outstandingAnchorsRequests count])
    {
      outstandingAnchorsRequests = self->_outstandingAnchorsRequests;
      self->_outstandingAnchorsRequests = 0;
    }
  }

  _objc_release_x1();
}

- (void)_addOutstandingAnchorsRequestId:(id)a3
{
  v4 = a3;
  outstandingAnchorsRequests = self->_outstandingAnchorsRequests;
  v8 = v4;
  if (!outstandingAnchorsRequests)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_outstandingAnchorsRequests;
    self->_outstandingAnchorsRequests = v6;

    v4 = v8;
    outstandingAnchorsRequests = self->_outstandingAnchorsRequests;
  }

  [(NSMutableSet *)outstandingAnchorsRequests addObject:v4];
}

- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6
{
  v6 = *(a6 + 2);
  if (a5 == 10)
  {
    v6(a6, a3, a4);
  }

  else
  {
    (v6)(a6, 0, 0, a4);
  }
}

- (void)notificationManagerDidChangeBulletins:(id)a3
{
  v4 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007AE00;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)fetchBulletinsOnLockScreenForNotificationManager:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(ADCommandCenter *)self _queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007AEBC;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)contextManagerDidUpdateBackgroundContext:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007AFE0;
  block[3] = &unk_10051DFE8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)_context_reset
{
  if ((AFIsHorseman() & 1) == 0 && (AFIsNano() & 1) == 0)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      contextManager = self->_contextManager;
      v5 = 136315394;
      v6 = "[ADCommandCenter(Context) _context_reset]";
      v7 = 2048;
      v8 = contextManager;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Resetting ContextManager %p", &v5, 0x16u);
    }

    [(ADContextManager *)self->_contextManager reset];
    [(ADContextManager *)self->_contextManager setDelegate:0];
  }
}

- (void)_context_fetchApplicationContextForApplicationInfos:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ADCommandCenter *)self _contextManager];
  v9 = [(ADCommandCenter *)self _context_deviceState];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007B1A0;
  v11[3] = &unk_10051A490;
  v12 = v6;
  v10 = v6;
  [v8 getAppContextForDeviceState:v9 applicationInfos:v7 completion:v11];
}

- (void)_context_acknowledgeBulletinForObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ADCommandCenter *)self _contextManager];
    [v5 markBulletinAsAcknolwedgedForDomainObject:v4];
  }
}

- (void)_context_setApplicationContextForApplicationInfos:(id)a3 withRefId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADCommandCenter(Context) _context_setApplicationContextForApplicationInfos:withRefId:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  [(ADCommandCenter *)self _ensureBackgroundContextSentToServer];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = SiriCoreUUIDStringCreate();
  }

  v10 = v9;
  v11 = [(ADCommandCenter *)self _contextManager];
  v12 = [(ADCommandCenter *)self _context_deviceState];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10007B3CC;
  v18 = &unk_10050F810;
  v19 = self;
  v20 = v10;
  v13 = v10;
  [v11 getAppContextForDeviceState:v12 applicationInfos:v6 completion:&v15];

  v14 = [(ADCommandCenter *)self _sendContextPromiseForTypes:1 withAceId:v13, v15, v16, v17, v18, v19];
}

- (int64_t)_context_deviceState
{
  v3 = [(ADCommandCenter *)self _deviceIsLocked];
  if ([(ADCommandCenter *)self _isInStarkMode])
  {
    return v3 | 2;
  }

  else
  {
    return v3;
  }
}

- (BOOL)_context_bundleIdHasSupportForCarPlayRequiredMessageIntents:(id)a3
{
  v3 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v4 = qword_10058FDD0;
  v29 = qword_10058FDD0;
  if (!qword_10058FDD0)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10007B8EC;
    v24 = &unk_10051E1C8;
    v25 = &v26;
    sub_10007B8EC(&v21);
    v4 = v27[3];
  }

  v5 = v4;
  _Block_object_dispose(&v26, 8);
  v6 = [LSApplicationProxy applicationProxyForIdentifier:v3];
  v7 = [v4 appInfoWithAppProxy:v6];

  v8 = [v7 supportedIntents];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = qword_10058FDE0;
  v29 = qword_10058FDE0;
  if (!qword_10058FDE0)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10007B9B4;
    v24 = &unk_10051E1C8;
    v25 = &v26;
    v10 = sub_10007BA04();
    v11 = dlsym(v10, "INSendMessageIntentIdentifier");
    *(v25[1] + 24) = v11;
    qword_10058FDE0 = *(v25[1] + 24);
    v9 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (v9)
  {
    v12 = *v9;
    if (![v8 containsObject:v12])
    {
      v17 = 0;
      goto LABEL_12;
    }

    v13 = [v7 supportedIntents];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v14 = qword_10058FDE8;
    v29 = qword_10058FDE8;
    if (!qword_10058FDE8)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10007BB58;
      v24 = &unk_10051E1C8;
      v25 = &v26;
      v15 = sub_10007BA04();
      v16 = dlsym(v15, "INSearchForMessagesIntentIdentifier");
      *(v25[1] + 24) = v16;
      qword_10058FDE8 = *(v25[1] + 24);
      v14 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (v14)
    {
      v17 = [v13 containsObject:*v14];

LABEL_12:
      return v17;
    }

    v19 = +[NSAssertionHandler currentHandler];
    v20 = [NSString stringWithUTF8String:"NSString *getINSearchForMessagesIntentIdentifier(void)"];
    [v19 handleFailureInFunction:v20 file:@"ADCommandCenter_Context.m" lineNumber:62 description:{@"%s", dlerror()}];
  }

  else
  {
    v19 = +[NSAssertionHandler currentHandler];
    v20 = [NSString stringWithUTF8String:"NSString *getINSendMessageIntentIdentifier(void)"];
    [v19 handleFailureInFunction:v20 file:@"ADCommandCenter_Context.m" lineNumber:63 description:{@"%s", dlerror()}];
  }

  __break(1u);
  return result;
}

- (void)_context_setOverriddenApplicationContext:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v59 = "[ADCommandCenter(Context) _context_setOverriddenApplicationContext:withContext:]";
    v60 = 2112;
    v61 = v6;
    v62 = 2112;
    v63 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  [(ADCommandCenter *)self _ensureBackgroundContextSentToServer];
  if (v6)
  {
    v9 = objc_alloc_init(SASyncAppIdentifyingInfo);
    [v9 setBundleId:v6];
    v10 = objc_alloc_init(SAAppInfo);
    [v10 setAppIdentifyingInfo:v9];
    v11 = objc_alloc_init(NSMutableArray);
    v12 = [v10 dictionary];
    v57 = v12;
    v13 = [NSArray arrayWithObjects:&v57 count:1];
    [v11 addObject:v13];

    v14 = [(ADCommandCenter *)self _sendContextPromiseForTypes:1];
    v15 = dispatch_group_create();
    if ([v6 caseInsensitiveCompare:@"com.apple.mobilePhone"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = v15;
        v16 = v10;
        v17 = v7;
        v18 = [v17 saNotificationObject];
        v19 = v18;
        if (v18)
        {
          v42 = v14;
          v56 = v18;
          v20 = [NSArray arrayWithObjects:&v56 count:1];
          v21 = [AceObject dictionaryArrayWithAceObjectArray:v20];
          [v11 addObject:v21];

          v14 = v42;
        }

        v10 = v16;
        v15 = v39;
      }

      else if (v7)
      {
        if ([v6 caseInsensitiveCompare:@"com.apple.MobileSMS"]&& ![(ADCommandCenter *)self _context_bundleIdHasSupportForCarPlayRequiredMessageIntents:v6])
        {
          if (![v6 caseInsensitiveCompare:@"com.apple.siri"])
          {
            v55 = v7;
            [NSArray arrayWithObjects:&v55 count:1];
            v37 = v36 = v14;
            v38 = [AceObject dictionaryArrayWithAceObjectArray:v37];

            v14 = v36;
            [v11 addObject:v38];
          }
        }

        else
        {
          dispatch_group_enter(v15);
          v23 = [(ADCommandCenter *)self _contextManager];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_10007C42C;
          v48[3] = &unk_100514C98;
          v48[4] = self;
          v49 = v11;
          v50 = v15;
          [v23 getDomainObjectFromMessageContext:v7 completion:v48];
        }
      }
    }

    else
    {
      dispatch_group_enter(v15);
      objc_opt_class();
      v40 = v10;
      v41 = v9;
      v43 = v14;
      if (objc_opt_isKindOfClass())
      {
        v22 = v7;
      }

      else
      {
        v22 = 0;
      }

      v24 = objc_alloc_init(SAPhoneSearch);
      [v24 setIsNew:&off_100533758];
      v25 = [v22 date];
      [v24 setStart:v25];

      v26 = [v22 endDate];
      [v24 setEnd:v26];

      v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v22 sectionSubtype] == 3);
      [v24 setVoiceMail:v27];

      v28 = [(ADCommandCenter *)self _serviceManager];
      v29 = [v24 encodedClassName];
      v30 = [v28 serviceForDomain:@"com.apple.ace.phone" command:v29];

      if (v30)
      {
        v31 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v32 = v31;
          v39 = [v30 identifier];
          *buf = 136315394;
          v59 = "[ADCommandCenter(Context) _context_setOverriddenApplicationContext:withContext:]";
          v60 = 2112;
          v61 = v39;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s Dispatching phone search for overridden application context %@", buf, 0x16u);
        }

        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10007C288;
        v51[3] = &unk_10050F7E8;
        v52 = v24;
        v53 = self;
        v54 = v15;
        [v30 handleCommand:v52 forDomain:@"com.apple.ace.phone" executionContext:0 reply:v51];
      }

      v10 = v40;
      v9 = v41;
      v14 = v43;
    }

    v33 = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007C508;
    block[3] = &unk_10051DB68;
    v45 = v11;
    v46 = v14;
    v47 = self;
    v34 = v14;
    v35 = v11;
    dispatch_group_notify(v15, v33, block);
  }
}

- (void)_getOrderedContextDictionaryForTransformedAFApplicationContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = [v5 associatedBundleIdentifier];
    if (v8)
    {
      v9 = objc_alloc_init(SASyncAppIdentifyingInfo);
      [v9 setBundleId:v8];
      v10 = objc_alloc_init(SAAppInfo);
      [v10 setAppIdentifyingInfo:v9];
      v11 = [v10 dictionary];
      v15 = v11;
      v12 = [NSArray arrayWithObjects:&v15 count:1];
      [v7 addObject:v12];
    }

    v13 = [v5 aceContexts];
    if (v13)
    {
      v14 = [AceObject dictionaryArrayWithAceObjectArray:v13];
      [v7 addObject:v14];
    }

    v6[2](v6, v7);
  }
}

- (void)_getTransformedApplicationContextForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
    v8 = [v6 associatedBundleIdentifier];
    v9 = [v6 bulletin];
    v10 = [v6 aceContext];
    v11 = [v6 contextDictionary];
    v12 = v11;
    if (v9)
    {
      v13 = [v9 saNotificationObject];
      v14 = v13;
      if (v13)
      {
        v24 = v13;
        v15 = [NSArray arrayWithObjects:&v24 count:1];
        if (!v8)
        {
          v8 = [v14 applicationId];
        }
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_16;
    }

    if (v11 && (![v8 caseInsensitiveCompare:@"com.apple.MobileSMS"] || -[ADCommandCenter _context_bundleIdHasSupportForCarPlayRequiredMessageIntents:](self, "_context_bundleIdHasSupportForCarPlayRequiredMessageIntents:", v8)))
    {
      v16 = AFMessagesGetAceDomainObjectsFromContext();
    }

    else
    {
      if (!v10)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v23 = v10;
      v16 = [NSArray arrayWithObjects:&v23 count:1];
    }

    v15 = v16;
LABEL_16:
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10007C978;
    v20[3] = &unk_100511B78;
    v21 = v8;
    v22 = v15;
    v17 = v15;
    v18 = v8;
    v19 = [v6 mutatedCopyWithMutator:v20];
    v7[2](v7, v19);
  }
}

- (void)_fetchAndSendApplicationContextForApplicationInfos:(id)a3 fetchedOrderedContextDictionaries:(id)a4 applicationContexts:(id)a5 refID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SiriCoreUUIDStringCreate();
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v28 = "[ADCommandCenter(Context) _fetchAndSendApplicationContextForApplicationInfos:fetchedOrderedContextDictionaries:applicationContexts:refID:]";
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #context Starting app context fetch for - %@ with refId - %@, aceId - %@", buf, 0x2Au);
  }

  v16 = [(ADCommandCenter *)self _contextManager];
  v17 = [(ADCommandCenter *)self _context_deviceState];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007CBC8;
  v22[3] = &unk_10050F7C0;
  v22[4] = self;
  v23 = v11;
  v24 = v13;
  v25 = v14;
  v26 = v12;
  v18 = v12;
  v19 = v14;
  v20 = v13;
  v21 = v11;
  [v16 getAppContextForDeviceState:v17 applicationInfos:v10 completion:v22];
}

- (void)_context_fetchAppicationContextForApplicationInfo:(id)a3 supplementalContext:(id)a4 refID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v46 = "[ADCommandCenter(Context) _context_fetchAppicationContextForApplicationInfo:supplementalContext:refID:]";
    v47 = 2112;
    v48 = v8;
    v49 = 2112;
    v50 = v9;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s fetching context from %@, additional context provided: %@", buf, 0x20u);
  }

  [(ADCommandCenter *)self _ensureBackgroundContextSentToServer];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(ADCommandCenter *)self _sendContextPromiseForTypes:1];
  }

  v13 = v12;
  v14 = objc_alloc_init(NSMutableArray);
  v15 = objc_alloc_init(NSMutableArray);
  if ([v9 count])
  {
    v16 = v14;
    v26 = v13;
    v28 = v8;
    v17 = dispatch_group_create();
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v46 = "[ADCommandCenter(Context) _context_fetchAppicationContextForApplicationInfo:supplementalContext:refID:]";
      v47 = 2048;
      v48 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = v9;
    obj = v9;
    v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        v22 = 0;
        do
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v40 + 1) + 8 * v22);
          dispatch_group_enter(v17);
          v24 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v46 = "[ADCommandCenter(Context) _context_fetchAppicationContextForApplicationInfo:supplementalContext:refID:]";
            v47 = 2048;
            v48 = v17;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s #context Starting ordered fetch for context - %p", buf, 0x16u);
          }

          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_10007D758;
          v35[3] = &unk_10050F720;
          v36 = v16;
          v37 = self;
          v38 = v17;
          v39 = v15;
          [(ADCommandCenter *)self _getTransformedApplicationContextForContext:v23 completion:v35];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v20);
    }

    v25 = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007D824;
    block[3] = &unk_1005180D8;
    block[4] = self;
    v8 = v28;
    v31 = v28;
    v32 = v15;
    v14 = v16;
    v33 = v16;
    v13 = v26;
    v34 = v26;
    dispatch_group_notify(v17, v25, block);

    v9 = v27;
  }

  else
  {
    [(ADCommandCenter *)self _fetchAndSendApplicationContextForApplicationInfos:v8 fetchedOrderedContextDictionaries:v15 applicationContexts:v14 refID:v13];
  }
}

- (void)_context_setApplicationContext:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v48 = "[ADCommandCenter(Context) _context_setApplicationContext:]";
    v49 = 2112;
    v50 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  [(ADCommandCenter *)self _ensureBackgroundContextSentToServer];
  v29 = self;
  [(ADCommandCenter *)self _sendCommandToServer:v4];
  v32 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = v4;
  obj = [v4 orderedContext];
  v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    v31 = *v42;
    do
    {
      v9 = 0;
      v33 = v7;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = v9;
          v36 = objc_alloc_init(NSMutableArray);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = 0;
            v15 = *v38;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(v11);
                }

                v17 = *(*(&v37 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = [AceObject aceObjectWithDictionary:v17];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v19 = [v18 appIdentifyingInfo];
                    v20 = [v19 bundleId];

                    v14 = v20;
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v36 addObject:v18];
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v13);
          }

          else
          {
            v14 = 0;
          }

          v21 = [[AFApplicationContext alloc] initWithAssociatedBundleIdentifier:v14 bulletin:0 aceContext:0 contextDictionary:0 aceContexts:v36];
          [v32 addObject:v21];

          v7 = v33;
          v8 = v31;
          v9 = v35;
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v7);
  }

  v22 = [[AFApplicationContextSnapshot alloc] initWithApplicationContexts:v32];
  v23 = [AFDeviceContextMetadata alloc];
  v24 = AFDeviceContextKeyApplication;
  v25 = +[NSDate date];
  v26 = [NSDate dateWithTimeIntervalSinceNow:15.0];
  v27 = [v23 initWithType:v24 deliveryDate:v25 expirationDate:v26 redactedKeyPaths:0 historyConfiguration:0];

  v28 = +[AFContextDonationService defaultService];
  [v28 registerContextTransformer:v29 forType:v24];
  [v28 donateContext:v22 withMetadata:v27 pushToRemote:0];
}

- (void)_context_setSTApplicationContext:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADCommandCenter(Context) _context_setSTApplicationContext:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v4)
  {
    v6 = [v4 _aceValue];
    if ([v6 count])
    {
      v7 = objc_alloc_init(SASetApplicationContext);
      v9 = v6;
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [v7 setOrderedContext:v8];

      [(ADCommandCenter *)self _sendCommandToServer:v7];
    }
  }
}

- (void)_context_willSetApplicationContextWithRefId:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter(Context) _context_willSetApplicationContextWithRefId:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  v6 = [(ADCommandCenter *)self _sendContextPromiseForTypes:1 withAceId:v4];
}

- (void)_ensureBackgroundContextSentToServer
{
  v3 = [(ADCommandCenter *)self _contextManager];
  v4 = [v3 backgroundContextIsDirty];

  if (v4)
  {

    [(ADCommandCenter *)self _setBackgroundContext];
  }
}

- (void)_updateFlowContext
{
  if (AFSupportsHALFlowRouting())
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v7 = "[ADCommandCenter(Context) _updateFlowContext]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v4 = [(ADCommandCenter *)self _contextManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007E1D4;
    v5[3] = &unk_10051E150;
    v5[4] = self;
    [v4 getContextSnapshotForCurrentRequestWithCompletion:v5];
  }
}

- (void)_setRestrictedAppContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADCommandCenter(Context) _setRestrictedAppContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  v4 = SiriCoreUUIDStringCreate();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_10007E5C0;
  v26 = sub_10007E5D0;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006BFC8;
  v19[3] = &unk_10051C588;
  v5 = v4;
  v21 = self;
  p_buf = &buf;
  v20 = v5;
  v6 = objc_retainBlock(v19);
  if ((AFIsHorseman() & 1) != 0 || AFIsATV())
  {
    v7 = [(ADCommandCenter *)self _sendContextPromiseForTypes:16 withAceId:v5];
    v8 = _AFPreferencesNotificationPreviewRestrictedApps();
    v9 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v8;

    (v6[2])(v6);
  }

  else
  {
    v10 = +[ADNotificationManager sharedManager];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10007E5D8;
    v15 = &unk_10051B350;
    v18 = &buf;
    v16 = self;
    v17 = v6;
    [v10 fetchSiriRelatedNotificationPreviewRestrictedAppsWithCompletion:&v12];

    v11 = [(ADCommandCenter *)self _sendContextPromiseForTypes:16 withAceId:v5, v12, v13, v14, v15, v16];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)_setAlertContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADCommandCenter(Context) _setAlertContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _contextManager];
  [v4 clearAlertContextDirtyState];
  v5 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = sub_10007E5C0;
  v38 = sub_10007E5D0;
  v39 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_10007E5C0;
  v33[4] = sub_10007E5D0;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_10007E5C0;
  v31[4] = sub_10007E5D0;
  v32 = 0;
  if ((AFIsNano() & 1) == 0)
  {
    v6 = +[ADNotificationManager sharedManager];
    [v6 setDataSource:self];
    dispatch_group_enter(v5);
    if (AFIsDeviceUnlocked())
    {
      v7 = v30;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10007EB88;
      v30[3] = &unk_100513E68;
      v30[5] = &buf;
      v30[4] = v5;
      [v6 fetchAllBulletinsWithCompletion:v30];
    }

    else
    {
      v7 = v29;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10007EBE8;
      v29[3] = &unk_100513E68;
      v29[5] = &buf;
      v29[4] = v5;
      [v6 fetchBulletinsOnLockScreenWithCompletion:v29];
    }
  }

  v8 = +[ADClockService sharedService];
  if (v8)
  {
    dispatch_group_enter(v5);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10007EC48;
    v25[3] = &unk_10050F658;
    v27 = v33;
    v28 = v31;
    v26 = v5;
    [v8 getSnapshotsWithCompletion:v25];
  }

  v9 = SiriCoreUUIDStringCreate();
  v10 = [(ADCommandCenter *)self _sendContextPromiseForTypes:32 withAceId:v9];
  v11 = SiriCoreUUIDStringCreate();
  v12 = [(ADCommandCenter *)self _sendContextPromiseForTypes:2 withAceId:v11];
  v13 = [(ADCommandCenter *)self _queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006C0A8;
  v17[3] = &unk_10050F6D0;
  p_buf = &buf;
  v23 = v33;
  v24 = v31;
  v18 = v4;
  v19 = self;
  v20 = v9;
  v21 = v11;
  v14 = v11;
  v15 = v9;
  v16 = v4;
  dispatch_group_notify(v5, v13, v17);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(&buf, 8);
}

- (void)_context_updateContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCommandCenter(Context) _context_updateContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ((AFSupportsHALFlowRouting() & 1) == 0)
  {
    [(ADCommandCenter *)self _updateFlowContext];
  }

  v4 = [(ADCommandCenter *)self _contextManager];
  [v4 keepReportingNowPlayingTimingEventsHeuristically];
  if ([v4 alertContextIsDirty])
  {
    [(ADCommandCenter *)self _setAlertContext];
  }

  else if ((AFIsMac() & 1) == 0)
  {
    v5 = +[ADDeviceCircleManager sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007EFFC;
    v6[3] = &unk_100515378;
    v6[4] = self;
    [v5 getContextCollectorDeviceIdentifiersWithCompletion:v6];
  }

  if ([v4 backgroundContextIsDirty])
  {
    [(ADCommandCenter *)self _setBackgroundContext];
  }

  [(ADCommandCenter *)self _setRestrictedAppContext];
}

- (void)_context_clearContextWithClearSiriKitContext:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADCommandCenter(Context) _context_clearContextWithClearSiriKitContext:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v6 = objc_alloc_init(SAClearContext);
  [(ADCommandCenter *)self _sendCommandToServer:v6];
  objc_storeStrong(&self->_lastClearContext, v6);
  if (v3)
  {
    v7 = objc_alloc_init(SAIntentGroupSiriKitClearContext);
    [v7 setReason:@"client_clear_context"];
    [(ADCommandCenter *)self handleCommand:v7 completion:0];
  }

  [(ADCommandCenter *)self _setBackgroundContext];
}

- (void)_context_rollbackClearContext
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter(Context) _context_rollbackClearContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  if (self->_lastClearContext)
  {
    v4 = objc_alloc_init(SARollbackRequest);
    v5 = [(SAClearContext *)self->_lastClearContext aceId];
    [v4 setRequestId:v5];

    [(ADCommandCenter *)self _sendCommandToServer:v4];
    [(ADCommandCenter *)self _setBackgroundContext];
  }
}

- (id)_sendContextPromiseForTypes:(int64_t)a3 withAceId:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SAContextPromise);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = v8;
  if (v4)
  {
    [v8 addObject:SAContextTypeAPPLICATION_CONTEXTValue];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v9 addObject:SAContextTypeALERT_CONTEXTValue];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v9 addObject:SAContextTypeBACKGROUND_CONTEXTValue];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v9 addObject:SAContextTypeREQUEST_ORIGINValue];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  [v9 addObject:SAContextTypeRESTRICTED_APP_CONTEXTValue];
  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    [v9 addObject:SAContextTypeNL_ALERT_CONTEXTValue];
  }

LABEL_8:
  [v7 setPromiseTypes:v9];

  if (v6)
  {
    [v7 setAceId:v6];
  }

  else
  {
    v10 = SiriCoreUUIDStringCreate();
    [v7 setAceId:v10];
  }

  [(ADCommandCenter *)self _sendCommandToServer:v7];
  v11 = [v7 aceId];

  return v11;
}

- (void)withContextManager:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADCommandCenter *)self _queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007F4FC;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)_notifyUSTForRequestCompleted:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter(UnifiedSiriTest) _notifyUSTForRequestCompleted:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Notify USTAgent for RequestCompleted with requestId '%@'", &v7, 0x16u);
  }

  v6 = [(ADCommandCenter *)self _testAgent];
  [v6 signalRequestCompletedForRequestId:v4];
}

- (void)_notifyUSTForRequestStarted:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter(UnifiedSiriTest) _notifyUSTForRequestStarted:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Notify USTAgent for RequestStarted with requestId '%@'", &v7, 0x16u);
  }

  v6 = [(ADCommandCenter *)self _testAgent];
  [v6 signalRequestStartedWithRequestId:v4];
}

- (void)_notifyUSTForAceCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 encodedClassName];
    v9 = 136315394;
    v10 = "[ADCommandCenter(UnifiedSiriTest) _notifyUSTForAceCommand:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Notify USTAgent for AceObject '%@'", &v9, 0x16u);
  }

  v8 = [(ADCommandCenter *)self _testAgent];
  [v8 logAceEvent:v4];
}

- (void)appLaunchHandler:(id)a3 didLaunchAppForRequestId:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADCommandCenter(NanoServices) appLaunchHandler:didLaunchAppForRequestId:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v7 = [(ADCommandCenter *)self _queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001611B8;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)taskmaster:(id)a3 didLaunchApplicationForRequestWithId:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADCommandCenter(NanoServices) taskmaster:didLaunchApplicationForRequestWithId:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v7 = [(ADCommandCenter *)self _queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100161308;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)taskmaster:(id)a3 didReceivePunchoutOutcome:(id)a4
{
  v5 = a4;
  v6 = [(ADCommandCenter *)self _queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001613C8;
  v8[3] = &unk_10051E010;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)_registerNanoServicesWithServiceManager:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ADSiriAppLaunchRequestHandler);
  [(ADSiriAppLaunchRequestHandler *)v5 setDelegate:self];
  v6 = [ADServiceCommandType alloc];
  v7 = SAAppsGroupIdentifier;
  v144 = [(ADServiceCommandType *)v6 initWithDomainName:SAAppsGroupIdentifier className:SAAppsLaunchAppClassIdentifier];
  v8 = [ADSiriTaskService alloc];
  v9 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v10 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v11 = [(ADSiriTaskService *)v8 initWithCommandType:v144 requestTransformer:v9 responseTransformer:v10 requestHandler:v5];
  [v4 addService:v11];

  v12 = [ADServiceCommandType alloc];
  v140 = [(ADServiceCommandType *)v12 initWithDomainName:v7 className:SAAppsCheckRestrictionClassIdentifier];
  v13 = [ADSiriTaskService alloc];
  v14 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v15 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v16 = [(ADSiriTaskService *)v13 initWithCommandType:v140 requestTransformer:v14 responseTransformer:v15 requestHandler:v5];
  [v4 addService:v16];

  v17 = [ADServiceCommandType alloc];
  v18 = [(ADServiceCommandType *)v17 initWithDomainName:v7 className:SAAppsGetRestrictedAppsClassIdentifier];
  v19 = [ADSiriTaskService alloc];
  v20 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v21 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v22 = [(ADSiriTaskService *)v19 initWithCommandType:v18 requestTransformer:v20 responseTransformer:v21 requestHandler:v5];
  [v4 addService:v22];

  v23 = [ADServiceCommandType alloc];
  v24 = [(ADServiceCommandType *)v23 initWithDomainName:v7 className:SAAppsAppSearchClassIdentifier];
  v25 = [ADSiriTaskService alloc];
  v26 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v27 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v28 = [(ADSiriTaskService *)v25 initWithCommandType:v24 requestTransformer:v26 responseTransformer:v27 requestHandler:v5];
  [v4 addService:v28];

  v29 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.MobileSMS"];
  [v29 setDelegate:self];
  v30 = objc_alloc_init(ADMessagesTransformer);
  v31 = [ADServiceCommandType alloc];
  v32 = SASmsGroupIdentifier;
  v33 = [(ADServiceCommandType *)v31 initWithDomainName:SASmsGroupIdentifier className:SASmsDraftShowClassIdentifier];
  v34 = [ADSiriTaskService alloc];
  v35 = objc_alloc_init(ADSiriRequestSucceededResponseTransformer);
  v36 = [(ADSiriTaskService *)v34 initWithCommandType:v33 requestTransformer:v30 responseTransformer:v35 requestHandler:v29];
  [v4 addService:v36];

  v37 = [ADServiceCommandType domainObjectCommitTypeForDomainNamed:v32];
  v38 = [[ADSiriTaskService alloc] initWithCommandType:v37 requestTransformer:v30 responseTransformer:v30 requestHandler:v29];
  [v4 addService:v38];

  v39 = [[ADManagedObjectService alloc] initWithDomainName:v32];
  [v4 addService:v39];

  v40 = [ADServiceCommandType alloc];
  v41 = [(ADServiceCommandType *)v40 initWithDomainName:SACalendarGroupIdentifier className:SACalendarShowNextEventClassIdentifier];
  v42 = [ADSiriTaskService alloc];
  v43 = objc_alloc_init(ADCalendarTransformer);
  v44 = objc_alloc_init(ADCalendarTransformer);
  v45 = objc_alloc_init(ADShowNextEventRequestHandler);
  v46 = [(ADSiriTaskService *)v42 initWithCommandType:v41 requestTransformer:v43 responseTransformer:v44 requestHandler:v45];
  [v4 addService:v46];

  v47 = objc_alloc_init(ADTimerTransformer);
  v48 = objc_alloc_init(ADTimerRequestHandler);
  v49 = [ADServiceCommandType alloc];
  v50 = SATimerGroupIdentifier;
  v145 = [(ADServiceCommandType *)v49 initWithDomainName:SATimerGroupIdentifier className:SATimerGetClassIdentifier];
  v51 = [[ADSiriTaskService alloc] initWithCommandType:v145 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [v4 addService:v51];

  v52 = [ADServiceCommandType alloc];
  v141 = [(ADServiceCommandType *)v52 initWithDomainName:v50 className:SATimerSetClassIdentifier];
  v53 = [[ADSiriTaskService alloc] initWithCommandType:v141 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [v4 addService:v53];

  v54 = [ADServiceCommandType alloc];
  v138 = [(ADServiceCommandType *)v54 initWithDomainName:v50 className:SATimerPauseClassIdentifier];
  v55 = [[ADSiriTaskService alloc] initWithCommandType:v138 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [v4 addService:v55];

  v56 = [ADServiceCommandType alloc];
  v57 = [(ADServiceCommandType *)v56 initWithDomainName:v50 className:SATimerResumeClassIdentifier];
  v58 = [[ADSiriTaskService alloc] initWithCommandType:v57 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [v4 addService:v58];

  v59 = [ADServiceCommandType alloc];
  v60 = [(ADServiceCommandType *)v59 initWithDomainName:v50 className:SATimerCancelClassIdentifier];
  v61 = [[ADSiriTaskService alloc] initWithCommandType:v60 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [v4 addService:v61];

  v62 = [ADServiceCommandType alloc];
  v63 = [(ADServiceCommandType *)v62 initWithDomainName:v50 className:SATimerDismissClassIdentifier];
  v64 = [[ADSiriTaskService alloc] initWithCommandType:v63 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [v4 addService:v64];

  v65 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.private.NanoTimer"];
  [v65 setDelegate:self];
  v66 = [ADServiceCommandType alloc];
  v67 = [(ADServiceCommandType *)v66 initWithDomainName:v50 className:SATimerShowTimerAndPerformActionClassIdentifier];
  v68 = [[ADSiriTaskService alloc] initWithCommandType:v67 requestTransformer:v47 responseTransformer:v47 requestHandler:v65];
  [v4 addService:v68];

  v69 = objc_alloc_init(ADAlarmTransformer);
  v70 = objc_alloc_init(ADAlarmRequestHandler);
  v71 = [ADServiceCommandType alloc];
  v72 = SAAlarmGroupIdentifier;
  v146 = [(ADServiceCommandType *)v71 initWithDomainName:SAAlarmGroupIdentifier className:SAAlarmCreateClassIdentifier];
  v73 = [[ADSiriTaskService alloc] initWithCommandType:v146 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [v4 addService:v73];

  v74 = [ADServiceCommandType alloc];
  v142 = [(ADServiceCommandType *)v74 initWithDomainName:v72 className:SAAlarmUpdateClassIdentifier];
  v75 = [[ADSiriTaskService alloc] initWithCommandType:v142 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [v4 addService:v75];

  v76 = [ADServiceCommandType alloc];
  v139 = [(ADServiceCommandType *)v76 initWithDomainName:v72 className:SAAlarmSearchClassIdentifier];
  v77 = [[ADSiriTaskService alloc] initWithCommandType:v139 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [v4 addService:v77];

  v78 = [ADServiceCommandType alloc];
  v79 = [(ADServiceCommandType *)v78 initWithDomainName:v72 className:SAAlarmDeleteClassIdentifier];
  v80 = [[ADSiriTaskService alloc] initWithCommandType:v79 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [v4 addService:v80];

  v81 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.NanoAlarm"];
  [v81 setDelegate:self];
  v82 = [ADServiceCommandType alloc];
  v83 = [(ADServiceCommandType *)v82 initWithDomainName:v72 className:SAAlarmShowAndPerformAlarmActionClassIdentifier];
  v84 = [[ADSiriTaskService alloc] initWithCommandType:v83 requestTransformer:v69 responseTransformer:v69 requestHandler:v81];
  [v4 addService:v84];

  v85 = [ADServiceCommandType alloc];
  v86 = [(ADServiceCommandType *)v85 initWithDomainName:v72 className:SAAlarmDismissClassIdentifier];
  v87 = [[ADSiriTaskService alloc] initWithCommandType:v86 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [v4 addService:v87];

  v88 = objc_alloc_init(ADSettingsTransformer);
  v89 = objc_alloc_init(ADSettingsRequestHandler);
  v90 = [ADServiceCommandType alloc];
  v91 = SASettingGroupIdentifier;
  v147 = [(ADServiceCommandType *)v90 initWithDomainName:SASettingGroupIdentifier className:SASettingGetAirplaneModeClassIdentifier];
  v92 = [[ADSiriTaskService alloc] initWithCommandType:v147 requestTransformer:v88 responseTransformer:v88 requestHandler:v89];
  [v4 addService:v92];

  v93 = [ADServiceCommandType alloc];
  v143 = [(ADServiceCommandType *)v93 initWithDomainName:v91 className:SASettingSetAirplaneModeClassIdentifier];
  v94 = [[ADSiriTaskService alloc] initWithCommandType:v143 requestTransformer:v88 responseTransformer:v88 requestHandler:v89];
  [v4 addService:v94];

  v95 = [ADServiceCommandType alloc];
  v96 = [(ADServiceCommandType *)v95 initWithDomainName:v91 className:SASettingGetVoiceOverClassIdentifier];
  v97 = [[ADSiriTaskService alloc] initWithCommandType:v96 requestTransformer:v88 responseTransformer:v88 requestHandler:v89];
  [v4 addService:v97];

  v98 = [ADServiceCommandType alloc];
  v99 = [(ADServiceCommandType *)v98 initWithDomainName:v91 className:SASettingSetVoiceOverClassIdentifier];
  v100 = [[ADSiriTaskService alloc] initWithCommandType:v99 requestTransformer:v88 responseTransformer:v88 requestHandler:v89];
  [v4 addService:v100];

  v101 = [ADServiceCommandType alloc];
  v102 = [(ADServiceCommandType *)v101 initWithDomainName:v91 className:SASettingShowAndPerformSettingsActionClassIdentifier];
  v103 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.NanoSettings"];
  [v103 setDelegate:self];
  v104 = [[ADSiriTaskService alloc] initWithCommandType:v102 requestTransformer:v88 responseTransformer:v88 requestHandler:v103];
  [v4 addService:v104];

  v105 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.NanoMaps"];
  [v105 setDelegate:self];
  v106 = objc_alloc_init(ADMapsTransformer);
  v107 = [ADServiceCommandType alloc];
  v108 = SALocalSearchGroupIdentifier;
  v109 = [(ADServiceCommandType *)v107 initWithDomainName:SALocalSearchGroupIdentifier className:SALocalSearchShowMapPointsClassIdentifier];
  v110 = [[ADSiriTaskService alloc] initWithCommandType:v109 requestTransformer:v106 responseTransformer:v106 requestHandler:v105];
  [v4 addService:v110];

  v111 = [ADServiceCommandType alloc];
  v112 = [(ADServiceCommandType *)v111 initWithDomainName:v108 className:SALocalSearchNavigationEndClassIdentifier];
  v113 = [[ADSiriTaskService alloc] initWithCommandType:v112 requestTransformer:v106 responseTransformer:v106 requestHandler:v105];
  [v4 addService:v113];

  v114 = [ADServiceCommandType alloc];
  v115 = [(ADServiceCommandType *)v114 initWithDomainName:v108 className:SALocalSearchNavigationPromptManeuverClassIdentifier];
  v116 = [[ADSiriTaskService alloc] initWithCommandType:v115 requestTransformer:v106 responseTransformer:v106 requestHandler:v105];
  [v4 addService:v116];

  v117 = [ADServiceCommandType alloc];
  v118 = [(ADServiceCommandType *)v117 initWithDomainName:v108 className:SALocalSearchShowLocalSearchResultClassIdentifier];
  v119 = [[ADSiriTaskService alloc] initWithCommandType:v118 requestTransformer:v106 responseTransformer:v106 requestHandler:v105];
  [v4 addService:v119];

  v120 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.SessionTrackerApp"];
  [v120 setDelegate:self];
  v121 = objc_alloc_init(ADWorkoutTransformer);
  v122 = [ADServiceCommandType alloc];
  v123 = SAHLGroupIdentifier;
  v124 = [(ADServiceCommandType *)v122 initWithDomainName:SAHLGroupIdentifier className:SAHLStartWorkoutClassIdentifier];
  v125 = [[ADSiriTaskService alloc] initWithCommandType:v124 requestTransformer:v121 responseTransformer:v121 requestHandler:v120];
  [v4 addService:v125];

  v126 = [ADServiceCommandType alloc];
  v127 = [(ADServiceCommandType *)v126 initWithDomainName:v123 className:SAHLSetWorkoutStateClassIdentifier];
  v128 = [[ADSiriTaskService alloc] initWithCommandType:v127 requestTransformer:v121 responseTransformer:v121 requestHandler:v120];
  [v4 addService:v128];

  v129 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.ActivityMonitorApp"];
  [v129 setDelegate:self];
  v130 = objc_alloc_init(ADHealthTransformer);
  v131 = [ADServiceCommandType alloc];
  v132 = [(ADServiceCommandType *)v131 initWithDomainName:v123 className:SAHLShowActivityClassIdentifier];
  v133 = [[ADSiriTaskService alloc] initWithCommandType:v132 requestTransformer:v130 responseTransformer:v130 requestHandler:v129];
  [v4 addService:v133];

  v148 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.NanoMail"];
  [v148 setDelegate:self];
  v134 = objc_alloc_init(ADMailTransformer);
  v135 = [ADServiceCommandType alloc];
  v136 = [(ADServiceCommandType *)v135 initWithDomainName:SAEmailGroupIdentifier className:SAEmailSendClassIdentifier];
  v137 = [[ADSiriTaskService alloc] initWithCommandType:v136 requestTransformer:v134 responseTransformer:v134 requestHandler:v148];
  [v4 addService:v137];
}

- (BOOL)_isServerBoundCommand:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_serverBoundCommandLookup objectForKey:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else
  {
    v7 = [v4 conformsToProtocol:&OBJC_PROTOCOL___SAServerBoundCommand];
    serverBoundCommandLookup = self->_serverBoundCommandLookup;
    v9 = [NSNumber numberWithBool:v7];
    [(NSMapTable *)serverBoundCommandLookup setObject:v9 forKey:objc_opt_class()];
  }

  return v7;
}

- (BOOL)_isClientBoundCommand:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_clientBoundCommandLookup objectForKey:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else
  {
    v7 = [v4 conformsToProtocol:&OBJC_PROTOCOL___SAClientBoundCommand];
    clientBoundCommandLookup = self->_clientBoundCommandLookup;
    v9 = [NSNumber numberWithBool:v7];
    [(NSMapTable *)clientBoundCommandLookup setObject:v9 forKey:objc_opt_class()];
  }

  return v7;
}

- (id)_approximatePreviousTTSInterval:(id)a3
{
  v4 = a3;
  v5 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions speechSynthesisRecord];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  [v5 beginTimestamp];
  Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
  [v6 endTimestamp];
  v8 = AFMachAbsoluteTimeGetMilliseconds();
  v9 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEventMachAbsoluteTime];
  currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
  if (v9)
  {
    [(AFSpeechRequestOptions *)currentSpeechRequestOptions activationEventMachAbsoluteTime];
    v11 = AFMachAbsoluteTimeGetMilliseconds();
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    [(AFSpeechRequestOptions *)currentSpeechRequestOptions activationEventTime];
    if (v12 <= 0.0)
    {
      goto LABEL_17;
    }

    [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEventTime];
    v11 = (v13 * 1000.0);
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (Milliseconds < 1)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v14 = v11 - Milliseconds;
  if (v4)
  {
    v15 = [NSNumber numberWithLongLong:v11 - Milliseconds];
    [v4 setDurationSincePreviousTTSStart:v15];

LABEL_11:
    if (v8 <= 0)
    {
      goto LABEL_17;
    }

    if (v4)
    {
      v16 = [NSNumber numberWithLongLong:v11 - v8];
      [v4 setDurationSincePreviousTTSFinish:v16];
    }

    if (Milliseconds < 1)
    {
      goto LABEL_17;
    }

LABEL_15:
    v17 = v8 - Milliseconds;
    v18 = [NSDate dateWithTimeIntervalSinceNow:-v14 / 1000.0];
    v19 = [[NSDateInterval alloc] initWithStartDate:v18 duration:v17 / 1000.0];

    goto LABEL_18;
  }

  if (v8 > 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v19 = 0;
LABEL_18:

  return v19;
}

- (void)_listInstalledServicesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CF930;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_broadcastCommand:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = self;
  v5 = [(ADCommandCenter *)self _serviceManager];
  v6 = [v5 allServices];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v4 groupIdentifier];
          v13 = [v4 refId];
          v14 = [(ADCommandCenter *)v15 _rootExecutionContextForRequestID:v13];
          [v11 handleCommand:v4 forDomain:v12 executionContext:v14 reply:0];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CFEC8;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (id)_speechCapturingContextForSessionUUID:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_speechCapturingContextsBySessionUUID objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setSpeechCapturingContext:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[ADCommandCenter _setSpeechCapturingContext:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s speechCapturingContext = %@", &v14, 0x16u);
  }

  v6 = [(ADCommandCenter *)self _speechCapturingContext];
  [v6 resignCurrent];

  if (v4)
  {
    v7 = [v4 sessionUUID];
    speechCapturingContextsBySessionUUID = self->_speechCapturingContextsBySessionUUID;
    if (!speechCapturingContextsBySessionUUID)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = self->_speechCapturingContextsBySessionUUID;
      self->_speechCapturingContextsBySessionUUID = v9;

      speechCapturingContextsBySessionUUID = self->_speechCapturingContextsBySessionUUID;
    }

    [(NSMutableDictionary *)speechCapturingContextsBySessionUUID setObject:v4 forKey:v7];
    v11 = [v7 copy];
    speechCapturingContextSessionUUID = self->_speechCapturingContextSessionUUID;
    self->_speechCapturingContextSessionUUID = v11;
  }

  else
  {
    v7 = self->_speechCapturingContextSessionUUID;
    self->_speechCapturingContextSessionUUID = 0;
  }

  v13 = [(ADCommandCenter *)self _speechCapturingContext];
  [v13 becomeCurrent];
}

- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = CSSiriSpeechRecordingRecordedAudioDirectoryPath();
    v7[0] = v4;
    v5 = CSSiriSpeechRecordingTrimmedAudioDirectoryPath();
    v7[1] = v5;
    v6 = [NSArray arrayWithObjects:v7 count:2];

    v3[2](v3, v6, 0);
  }
}

- (void)_trimRecordedAudioWithIdentifier:(id)a3 offset:(double)a4 duration:(double)a5 outputFileType:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a7;
  if (v13)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v22 = "[ADCommandCenter _trimRecordedAudioWithIdentifier:offset:duration:outputFileType:completion:]";
      v23 = 2112;
      v24 = *&v12;
      v25 = 2048;
      v26 = a4;
      v27 = 2048;
      v28 = a5;
      v29 = 2048;
      v30 = a6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s identifier = %@, offset = %f, duration = %f, outputFileType = %ld", buf, 0x34u);
      v14 = AFSiriLogContextDaemon;
    }

    v15 = fmax(a4, 0.0);
    if (a5 <= 0.0)
    {
      a5 = 60.0;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "[ADCommandCenter _trimRecordedAudioWithIdentifier:offset:duration:outputFileType:completion:]";
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = a5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s offset = %f, duration = %f (effective)", buf, 0x20u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001D034C;
    v16[3] = &unk_100516AB0;
    v18 = v15;
    v19 = a5;
    v20 = a6;
    v17 = v13;
    [(ADCommandCenter *)self _accessRecordedAudioWithIdentifier:v12 completion:v16];
  }
}

- (void)trimRecordedAudioWithIdentifier:(id)a3 offset:(double)a4 duration:(double)a5 outputFileType:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a7;
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D16E4;
  v17[3] = &unk_100516A88;
  v17[4] = self;
  v18 = v12;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  dispatch_async(queue, v17);
}

- (void)_accessRecordedAudioWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ADCommandCenter _accessRecordedAudioWithIdentifier:completion:]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s identifier = %@", buf, 0x16u);
    }

    if (!v6)
    {
      v6 = self->_speechCapturingContextSessionUUID;
    }

    v9 = [(ADCommandCenter *)self _speechCapturingContextForSessionUUID:v6];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ADCommandCenter _accessRecordedAudioWithIdentifier:completion:]";
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s speechCapturingContext = %@", buf, 0x16u);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else if (v9)
    {
LABEL_8:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001D1974;
      v13[3] = &unk_100516A60;
      v13[4] = self;
      v14 = v7;
      [(NSString *)v9 acquireRecordedAudioWithHandler:v13];

LABEL_13:
      goto LABEL_14;
    }

    v11 = [AFError errorWithCode:225 description:@"Unable to locate recorded audio because there's no active speech request and speech request id is not specified."];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ADCommandCenter _accessRecordedAudioWithIdentifier:completion:]";
      v17 = 2112;
      v18 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    (*(v7 + 2))(v7, 0, v11);

    goto LABEL_13;
  }

LABEL_14:
}

- (void)accessRecordedAudioWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D1BF4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_setSiriOutputVolume:(float)a3 forAudioRoute:(id)a4 operationType:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v23 = "[ADCommandCenter _setSiriOutputVolume:forAudioRoute:operationType:completion:]";
    v24 = 2048;
    v25 = a3;
    v26 = 2112;
    v27 = v10;
    v28 = 2048;
    v29 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s volume = %f, routeName = %@, operationType = %ld", buf, 0x2Au);
  }

  v13 = [(ADCommandCenter *)self _speechManager];
  v14 = [v13 volumeServiceProvider];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D1DB0;
  v17[3] = &unk_100516A38;
  v21 = a3;
  v19 = v11;
  v20 = a5;
  v18 = v10;
  v15 = v11;
  v16 = v10;
  [v14 getVolumeServiceUsingBlock:v17];
}

- (void)setSiriOutputVolume:(float)a3 forAudioRoute:(id)a4 operationType:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D21A0;
  block[3] = &unk_100516A10;
  v19 = a3;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, block);
}

- (void)_getSiriOutputVolumeForAudioRoute:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADCommandCenter _getSiriOutputVolumeForAudioRoute:completion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s routeName = %@", buf, 0x16u);
  }

  v9 = [(ADCommandCenter *)self _speechManager];
  v10 = [v9 volumeServiceProvider];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D2328;
  v13[3] = &unk_1005169E8;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [v10 getVolumeServiceUsingBlock:v13];
}

- (void)getSiriOutputVolumeForAudioRoute:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2710;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)announceNotificationHandlingStateUpdatedToState:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D2794;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)getAccessoryInfoForAccessoryWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D2980;
  v11[3] = &unk_10051E038;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D2A98;
  v11[3] = &unk_10051E038;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

- (void)pushSCDAAdvertisementContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2BB4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)pushMyriadAdvertisementContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2D3C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (id)_createDefaultRequestContextData:(BOOL)a3 suggestionRequestType:(int64_t)a4
{
  v7 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  v8 = [SMTRequestContextData alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D2EF4;
  v12[3] = &unk_100516998;
  v13 = v7;
  v14 = self;
  v16 = a3;
  v15 = a4;
  v9 = v7;
  v10 = [v8 initWithBuilder:v12];

  return v10;
}

- (id)_startServerRequestWithStartRequest:(id)a3 requestInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v87 = "[ADCommandCenter _startServerRequestWithStartRequest:requestInfo:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (!self->_siriUODSupported && ([v6 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v65 = v26;
      v66 = [v6 aceId];
      v67 = [v6 encodedClassName];
      *buf = 136315650;
      v87 = "[ADCommandCenter _startServerRequestWithStartRequest:requestInfo:]";
      v88 = 2112;
      v89 = v66;
      v90 = 2112;
      v91 = v67;
      _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "%s UOD is not supported and request %@ is of type %@ so must be handled on server", buf, 0x20u);
    }

    goto LABEL_13;
  }

  v9 = [(ADCommandCenter *)self _createStartServerRequestWithStartRequest:v6];
  v10 = [v7 speechRequestOptions];
  v11 = [v10 activationEvent];

  v12 = [v7 suggestionRequestType];
  if (!self->_siriUODSupported)
  {
    v16 = v11 == 17;
    v17 = [(ADCommandCenter *)self _requestDispatcherService];
    v18 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
    v19 = [v6 aceId];
    [v6 origin];
    v21 = v20 = v9;
    v22 = [v6 utterance];
    v23 = [(ADCommandCenter *)self _createDefaultRequestContextData:v16];
    [v17 startUnderstandingOnServerTextRequestWithConfiguration:v18 requestId:v19 inputOrigin:v21 utterance:v22 requestContextData:v23];

    v9 = v20;
    dynamicContextEmitter = self->_dynamicContextEmitter;
    v25 = [v6 aceId];
    [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:v25];

    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v7 testRequestOptions];
  v15 = [v14 requestPath];

  if (v15 == 1)
  {
    [v9 setTextRequest:0];
    [(ADCommandCenter *)self _signalUSTTestRequestWithStartRequest:v6 requestInfo:v7];
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v75 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
    v83 = [(ADCommandCenter *)self _createDefaultRequestContextData:v11 == 17 suggestionRequestType:v13];
    v27 = v6;
    v80 = [(ADCommandCenter *)self _requestDispatcherService];
    v77 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
    v28 = [v27 aceId];
    v29 = [v27 origin];
    v30 = [v27 utterance];
    v31 = [v27 directAction];
    v32 = [v27 requestExecutionParameters];
    [v80 startDirectActionRequestWithConfiguration:v77 requestId:v28 inputOrigin:v29 utterance:v30 directAction:v31 requestExecutionParameters:v32 requestContextData:v83];

    v33 = self->_dynamicContextEmitter;
    v34 = [v27 aceId];

    [(ADDynamicContextEmitter *)v33 emitForRequest:v34];
    v35 = v75;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([v6 isMemberOfClass:objc_opt_class()])
    {
      v85 = [(ADCommandCenter *)self _createDefaultRequestContextData:v11 == 17 suggestionRequestType:v13];
      v46 = [v7 speechRequestOptions];
      if ([v46 isTest])
      {
        v47 = [v7 speechRequestOptions];
        v48 = [v47 speechPackageOverride];

        if (v48)
        {
          v49 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions testRequestOptions];
          v76 = [(ADCommandCenter *)self _requestDispatcherService];
          v74 = [(ADCommandCenter *)self _account];
          v50 = [v74 assistantIdentifier];
          v51 = [v6 aceId];
          v79 = [v7 speechRequestOptions];
          v72 = [v79 disableASR];
          v82 = [v6 origin];
          v73 = [(ADCommandCenter *)self _locationManager];
          v52 = [v73 knownLocation];
          v71 = v49;
          v53 = [v49 jitContext];
          v70 = [v49 overrideModelPath];
          v54 = v85;
          v55 = v76;
          [v76 startTestSpeechRequestWithAssistantId:v50 requestId:v51 enableASR:v72 ^ 1 inputOrigin:v82 location:v52 jitContext:v53 overrideModelPath:v70 requestContextData:v85];

          v56 = v50;
          v57 = v71;

          v58 = v74;
          goto LABEL_33;
        }
      }

      else
      {
      }

      v57 = [(ADCommandCenter *)self _requestDispatcherService];
      v55 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
      v58 = [v6 aceId];
      v56 = [v6 origin];
      v51 = [v6 utterance];
      v54 = v85;
      [v57 startTextRequestWithConfiguration:v55 requestId:v58 inputOrigin:v56 utterance:v51 requestContextData:v85];
LABEL_33:

      v68 = self->_dynamicContextEmitter;
      v69 = [v6 aceId];
      [(ADDynamicContextEmitter *)v68 emitForRequest:v69];

      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v62 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v63 = v62;
      v64 = [v6 encodedClassName];
      *buf = 136315394;
      v87 = "[ADCommandCenter _startServerRequestWithStartRequest:requestInfo:]";
      v88 = 2112;
      v89 = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Request type %@ unsupported on Siri X UOD. Support might come soon", buf, 0x16u);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_21;
  }

  v78 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  v84 = [(ADCommandCenter *)self _createDefaultRequestContextData:v11 == 17 suggestionRequestType:v13];
  v36 = v6;
  v81 = [(ADCommandCenter *)self _requestDispatcherService];
  v37 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
  v38 = [v36 aceId];
  v39 = [v36 origin];
  v40 = [v36 utterance];
  v41 = [v36 previousUtterance];
  [v81 startCorrectionSpeechRequestWithConfiguration:v37 requestId:v38 inputOrigin:v39 utterance:v40 previousUtterance:v41 requestContextData:v84];

  v42 = self->_dynamicContextEmitter;
  v43 = [v36 aceId];

  [(ADDynamicContextEmitter *)v42 emitForRequest:v43];
  v35 = v78;
LABEL_18:

  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_19:
  v44 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v59 = v44;
    v60 = [v6 encodedClassName];
    v61 = [v6 aceId];
    *buf = 136315650;
    v87 = "[ADCommandCenter _startServerRequestWithStartRequest:requestInfo:]";
    v88 = 2112;
    v89 = v60;
    v90 = 2112;
    v91 = v61;
    _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "%s Replaced current request %@ %@ with an SARDStartServerRequest", buf, 0x20u);
  }

LABEL_21:

  return v9;
}

- (id)_createStartServerRequestWithStartRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SARDStartServerRequest);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = objc_alloc_init(SARDStartCorrectedServerRequest);
    v8 = [v6 interactionId];
    [v7 setInteractionIdToBeCorrected:v8];

    v9 = [v6 utterance];

    [v7 setUtteranceToBeCorrected:v9];
    v5 = v7;
  }

  v10 = [v4 aceId];
  [v5 setAceId:v10];

  [v5 setTextRequest:1];
  v11 = [v4 origin];
  [v5 setInputOrigin:v11];

  v12 = [v4 origin];
  [v5 setOrigin:v12];

  v13 = self->_motionManager;
  v14 = [(ADMotionManager *)v13 motionConfidence];
  [v5 setMotionConfidence:v14];

  v15 = [(ADMotionManager *)v13 motionActivity];
  [v5 setMotionActivity:v15];

  v16 = [(ADCommandCenterClient *)self->_currentClient adTextToSpeechIsMuted];
  [v5 setTextToSpeechIsMuted:v16];
  v17 = [v4 turnId];
  [v5 setTurnId:v17];

  [v5 setEyesFree:{objc_msgSend(v4, "eyesFree")}];
  if (AFIsInternalInstall())
  {
    v18 = [NSNumber numberWithBool:byte_100590548];
    [v5 setIsCarryDevice:v18];
  }

  return v5;
}

- (id)_startServerRequestWithSpeechRequest:(id)a3 recordingContext:(id)a4 recordingInfo:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(SARDStartServerRequest);
  v12 = [v9 sessionUUID];

  [v11 setAceId:v12];
  [v11 setTextRequest:0];
  v13 = self->_motionManager;
  v14 = [(ADMotionManager *)v13 motionConfidence];
  [v11 setMotionConfidence:v14];

  v15 = [(ADMotionManager *)v13 motionActivity];
  [v11 setMotionActivity:v15];

  [v11 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
  v16 = [v10 voiceTriggerEventInfo];
  [v11 setVoiceTriggerEventInfo:v16];

  v17 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  [v11 setResponseMode:v17];
  [v11 ad_setAFSpeechRequestOptions:self->_currentSpeechRequestOptions];

  [v11 ad_setCSSiriRecordingInfo:v8];
  v18 = [v10 bargeInModes];
  [v11 setBargeInModes:v18];

  v19 = [v10 durationSincePreviousTTSStart];
  [v11 setDurationSincePreviousTTSStart:v19];

  v20 = [v10 durationSincePreviousTTSFinish];

  [v11 setDurationSincePreviousTTSFinish:v20];
  if (AFIsInternalInstall())
  {
    v21 = [NSNumber numberWithBool:byte_100590548];
    [v11 setIsCarryDevice:v21];
  }

  return v11;
}

- (id)_createMuxStartAsrOnServerRequestWithSpeechRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SASMUXStartAsrOnServerRequest);
  [v5 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
  v6 = [v4 bargeInModes];
  [v5 setBargeInModes:v6];

  [v5 setAutoPunctuationEnabled:{objc_msgSend(v4, "autoPunctuationEnabled")}];
  v7 = [v4 clientModelVersion];

  [v5 setClientModelVersion:v7];

  return v5;
}

- (void)dictationRequestDidCompleteRecognitionWithError:(id)a3 secureOfflineOnlyRecognition:(BOOL)a4 sessionUUID:(id)a5 statistics:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D4068;
  block[3] = &unk_1005162A0;
  block[4] = self;
  v18 = v12;
  v21 = a4;
  v19 = v10;
  v20 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  dispatch_async(queue, block);
}

- (void)dictationRequestDidRecognizePackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D44A4;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)dictationRequestDidRecognizeVoiceCommandCandidatePackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D5078;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)dictationRequestDidRecognizeFinalResultCandidatePackage:(id)a3 sessionUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5444;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)dictationRequestDidRecognizePartialPackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D583C;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)dictationRequestDidRecognizeTokens:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D5BEC;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)notifySpeechDetectedIsUndirected
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter notifySpeechDetectedIsUndirected]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s MAF: Obtained undirected speech decision from SRD.", &v4, 0xCu);
  }

  dispatch_async(self->_queue, &stru_100516860);
}

- (void)handleSpeechRecognized:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADCommandCenter handleSpeechRecognized:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D60E4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)handleSpeechServerEndpointIdentified:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADCommandCenter handleSpeechServerEndpointIdentified:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D62B4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)selectResultWithResultCandidate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADCommandCenter selectResultWithResultCandidate:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6410;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)shutdownSessionIfIdle
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADCommandCenter shutdownSessionIfIdle]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6520;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)releaseShutdownAssertion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCommandCenter releaseShutdownAssertion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D6654;
  v8[3] = &unk_10051E010;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (id)acquireShutdownAssertion
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[ADCommandCenter acquireShutdownAssertion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = +[NSUUID UUID];
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D67A4;
  v10[3] = &unk_10051E010;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_async(queue, v10);
  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)cancelCurrentRequestForReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D687C;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)updateSpeechSynthesisRecord:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D6934;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)handleAceCommand:(id)a3 afterCurrentRequest:(BOOL)a4 waitForResponse:(BOOL)a5 withDelegate:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6A84;
  block[3] = &unk_100516840;
  block[4] = self;
  v20 = v12;
  v23 = a4;
  v24 = a5;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(queue, block);
}

- (void)getDeferredObjectsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6B60;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)prepareForShutdown
{
  v3 = dispatch_group_create();
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D6C24;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v3;
  v5 = v3;
  dispatch_group_async(v5, queue, v7);
  v6 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v5, v6);
}

- (void)getOfflineDictationStatusIgnoringCache:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6E10;
  block[3] = &unk_10051D228;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)extendRequestTimeoutBy:(double)a3 forRequestID:(id)a4
{
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v14 = "[ADCommandCenter extendRequestTimeoutBy:forRequestID:]";
    v15 = 2048;
    v16 = a3;
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s durationInSeconds: %f, requestID: %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6FBC;
  block[3] = &unk_10051E128;
  block[4] = self;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_async(queue, block);
}

- (BOOL)isTimeoutSuspended
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7178;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)handleCommand:(id)a3 withExecutionContextMatchingInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[ADCommandCenter handleCommand:withExecutionContextMatchingInfo:completion:]";
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s command = %@, executionInfoToMatch = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D7320;
  v16[3] = &unk_10051E0D8;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v19 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  dispatch_async(queue, v16);
}

- (void)areAnnouncementRequestsPermittedByPresentationWhileActiveWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D74BC;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)isWatchAuthenticatedWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D759C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)isHeadGestureRecognitionAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7660;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)isHeadGestureRecognitionAvailableWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D770C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)isInCarDNDMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D77D0;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)isInCarDNDModeWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D787C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)isInStarkMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7940;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)lockScreenStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7A00;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isDeviceShowingLockScreen
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7AC0;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isDeviceLocked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7B80;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setReplayOverridePath:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D7C3C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setReplayEnabled:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D7CC0;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)replayRecordedViewAt:(unint64_t)a3 with:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D7D7C;
  block[3] = &unk_10051E128;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)replayAllRecordedViews:(unint64_t)a3 with:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D7E38;
  block[3] = &unk_10051E128;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)dismissAssistantWithReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D7EC0;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)dismissAssistant
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D7F40;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)openURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8010;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)openApplicationWithBundleID:(id)a3 URL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D8104;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)reloadServiceForNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D81D4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeService:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D82D8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addService:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D83C4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)clientDisconnected:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D84B0;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)clientConnected:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D8964;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fetchContextForApplicationInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8CE8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)setManagedStoreObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8EB0;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)fetchManagedStoreObjectForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8F88;
  block[3] = &unk_10051E088;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)rescheduleValidationRefresh
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9074;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)refreshAssistantValidation
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D90F0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)destroyActiveAccount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D916C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setActiveAccountIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D920C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fetchActiveAccountIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D92B0;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)getAssistantIdentifier
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADCommandCenter getAssistantIdentifier]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = sub_1001D9498;
  v11 = sub_1001D94A8;
  v12 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D94B0;
  v7[3] = &unk_10051D4A0;
  v7[4] = self;
  v7[5] = &buf;
  dispatch_sync(queue, v7);
  v5 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v5;
}

- (void)fetchActiveAccount:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D95B0;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)deleteAccountWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D96BC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fetchAccounts:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9760;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)fetchSupportedLanguagesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9874;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)sendMetricsToServerWithTimeout:(double)a3 requiresUnlimitedPower:(BOOL)a4 requiresActiveSession:(BOOL)a5 purgesOversizedStorage:(BOOL)a6 ignoresMetricsSenderDisabledSetting:(BOOL)a7 scheduledActivity:(BOOL)a8 completion:(id)a9
{
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001D9B68;
  v35[3] = &unk_10051CF58;
  v16 = a9;
  v36 = v16;
  v17 = objc_retainBlock(v35);
  if (a7 || (+[ADPreferences sharedPreferences](ADPreferences, "sharedPreferences"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 metricsSenderDisabled], v18, !v19))
  {
    if (AFHasUnlockedSinceBoot())
    {
      v22 = +[AFPreferences sharedPreferences];
      v23 = [v22 isDictationHIPAACompliant];

      if (!v23)
      {
        v24 = +[NSProcessInfo processInfo];
        [v24 systemUptime];
        v26 = v25 + a3;

        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001D9BD0;
        block[3] = &unk_100516818;
        block[4] = self;
        v30 = v26;
        v31 = a4;
        v32 = a5;
        v33 = a6;
        v34 = a8;
        v29 = v17;
        dispatch_async(queue, block);

        goto LABEL_13;
      }

      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v38 = "[ADCommandCenter sendMetricsToServerWithTimeout:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:ignoresMetricsSenderDisabledSetting:scheduledActivity:completion:]";
        v21 = "%s Skipped sending metrics to server because we have HIPAA On-Device Dictation enabled.";
        goto LABEL_11;
      }
    }

    else
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v38 = "[ADCommandCenter sendMetricsToServerWithTimeout:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:ignoresMetricsSenderDisabledSetting:scheduledActivity:completion:]";
        v21 = "%s Skipped sending metrics to server because the device has not been unlocked since boot.";
        goto LABEL_11;
      }
    }
  }

  else
  {
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[ADCommandCenter sendMetricsToServerWithTimeout:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:ignoresMetricsSenderDisabledSetting:scheduledActivity:completion:]";
      v21 = "%s Skipped sending metrics to server because metrics sender is disabled.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
    }
  }

  (v17[2])(v17);
LABEL_13:
}

- (void)requestBarrierIfNecessary:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9C8C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)requestBarrier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9D30;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)telephonyRequestCompleted
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9DB0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)prepareForPhoneCall
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9E2C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)getOriginDeviceInfoForContextIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9EF8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)getDeviceContextsForKeys:(id)a3 forRequestID:(id)a4 includesNearbyDevices:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA304;
  block[3] = &unk_100519D50;
  v18 = v11;
  v19 = self;
  v22 = a5;
  v20 = v10;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(queue, block);
}

- (void)getCrossDeviceContextWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DA440;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)getCurrentContextSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DA600;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setApplicationContextForApplicationInfos:(id)a3 withRefId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA718;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)setOverriddenApplicationContext:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA7EC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)fetchAppicationContextForApplicationInfo:(id)a3 supplementalContext:(id)a4 refID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DA8E0;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)setApplicationContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DA988;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)willSetApplicationContextWithRefId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DAA2C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)rollbackClearContext
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DAAAC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleGenericAceCommand:(id)a3 withDelegate:(id)a4 interruptOutstandingRequest:(BOOL)a5 targetReplyQueue:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001DABD8;
  v21[3] = &unk_1005167F0;
  v21[4] = self;
  v22 = v12;
  v26 = a5;
  v24 = v14;
  v25 = v15;
  v23 = v13;
  v17 = v14;
  v18 = v15;
  v19 = v13;
  v20 = v12;
  dispatch_async(queue, v21);
}

- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001DAE44;
  v11[3] = &unk_10051E010;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

- (void)suppressLowStorageNotificationForLanguage:(id)a3 suppress:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DAFBC;
  v9[3] = &unk_10051CBD8;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DB1BC;
  block[3] = &unk_1005167C8;
  block[4] = self;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v25 = v23;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  v32 = v16;
  dispatch_async(queue, block);
}

- (void)resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DB2DC;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)pauseRecognition
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DB360;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DB42C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)sendSpeechCorrectionInfo:(id)a3 forCorrectionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DB500;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)prepareForStartPlaybackWithDestination:(int64_t)a3 intent:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DB5E4;
  v13[3] = &unk_10051C0D8;
  v15 = v9;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)handleFailedStartPlaybackWithDestination:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DBA74;
  block[3] = &unk_10051BFA8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)setSuppressAudioInterruptionEndedNotifications:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DBBBC;
  v4[3] = &unk_10051CBD8;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)updateSpeechOptions:(id)a3 forDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DBD80;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)cancelSpeechForDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DBE28;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)stopSpeechWithOptions:(id)a3 forDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DBEF8;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DBFA0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)sendEngagementFeedback:(int64_t)a3 voiceQueryIdentifier:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC054;
  block[3] = &unk_10051E128;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)startDictationWithURL:(id)a3 isNarrowBand:(BOOL)a4 language:(id)a5 options:(id)a6 sessionUUID:(id)a7 delegate:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC1A4;
  block[3] = &unk_100516778;
  block[4] = self;
  v26 = v14;
  v31 = a4;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(queue, block);
}

- (void)addRecordedSpeechSampleData:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC280;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)startRecordedDictationWithLanguage:(id)a3 options:(id)a4 sessionUUID:(id)a5 narrowband:(BOOL)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001DC3A8;
  v21[3] = &unk_100519AC0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v26 = a6;
  v25 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(queue, v21);
}

- (void)startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001DC4F8;
  v23[3] = &unk_100516250;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(queue, v23);
}

- (void)startRecordingForPendingDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC668;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  dispatch_async(queue, block);
}

- (void)rollbackRequestForDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DC718;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)cancelRequestForDelegate:(id)a3 reason:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DC7EC;
  v13[3] = &unk_10051DBB8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)startSpeechRequestWithURL:(id)a3 isNarrowBand:(BOOL)a4 withDelegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DC8C8;
  v13[3] = &unk_10051C958;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)startAcousticIDRequestWithDelegate:(id)a3 withOptions:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DC9C4;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)startSpeechPronunciationRequestWithDelegate:(id)a3 withOptions:(id)a4 pronunciationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DCAB8;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)startRecordingForPendingSpeechRequestForDelegate:(id)a3 withOptions:(id)a4 sessionUUID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  kdebug_trace();
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[ADCommandCenter startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  sub_10001B7D4(v11);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DCC84;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_async(queue, block);
}

- (void)startSpeechRequestWithDelegate:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADCommandCenter startSpeechRequestWithDelegate:withOptions:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  sub_10001B7D4(v7);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD5C4;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)handleRemoteSpeechRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD6E0;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)handleExternalActivationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD7B4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)startRequest:(id)a3 withDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD888;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)endSessionForDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DD930;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setConfiguration:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DDA00;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)setModesConfiguration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DDAA8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setCarDNDActive:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDB2C;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)setIsEyesFree:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDBB4;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)setWatchAuthenticated:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDC3C;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)setHeadphonesAuthenticated:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDCC4;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)setLockState:(BOOL)a3 showingLockScreen:(BOOL)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DDD50;
  v5[3] = &unk_100515CF0;
  v5[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(queue, v5);
}

- (void)_clearQueuedOutputVoice
{
  if (self->_hasQueuedOutputVoice)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      queuedOutputVoice = self->_queuedOutputVoice;
      v6 = 136315394;
      v7 = "[ADCommandCenter _clearQueuedOutputVoice]";
      v8 = 2112;
      v9 = queuedOutputVoice;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Ignoring queued output voice: %@", &v6, 0x16u);
    }

    v5 = self->_queuedOutputVoice;
    self->_queuedOutputVoice = 0;

    self->_hasQueuedOutputVoice = 0;
  }
}

- (void)_processQueuedOutputVoice
{
  if (self->_hasQueuedOutputVoice)
  {
    v3 = self->_queuedOutputVoice;
    queuedOutputVoice = self->_queuedOutputVoice;
    self->_queuedOutputVoice = 0;

    self->_hasQueuedOutputVoice = 0;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[ADCommandCenter _processQueuedOutputVoice]";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v6, 0x16u);
    }

    [(ADCommandCenter *)self _setLanguageCode:@"ADLanguageCodeKeepSame" outputVoice:v3];
  }
}

- (void)setQueuedOutputVoice:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADCommandCenter setQueuedOutputVoice:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DE070;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)_processQueuedLanguageCodeAndOutputVoice
{
  if (self->_hasQueuedLanguageCode)
  {
    if (self->_hasQueuedOutputVoice)
    {
      v3 = self->_queuedLanguageCode;
      queuedLanguageCode = self->_queuedLanguageCode;
      self->_queuedLanguageCode = 0;

      self->_hasQueuedLanguageCode = 0;
      v5 = self->_queuedOutputVoice;
      queuedOutputVoice = self->_queuedOutputVoice;
      self->_queuedOutputVoice = 0;

      self->_hasQueuedOutputVoice = 0;
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v8 = 136315650;
        v9 = "[ADCommandCenter _processQueuedLanguageCodeAndOutputVoice]";
        v10 = 2112;
        v11 = v3;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@ %@", &v8, 0x20u);
      }

      [(ADCommandCenter *)self _setLanguageCode:v3 outputVoice:v5];
    }

    else
    {

      [(ADCommandCenter *)self _processQueuedLanguageCode];
    }
  }

  else if (self->_hasQueuedOutputVoice)
  {

    [(ADCommandCenter *)self _processQueuedOutputVoice];
  }
}

- (void)setQueuedLanguageCode:(id)a3 andQueuedOutputVoice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[ADCommandCenter setQueuedLanguageCode:andQueuedOutputVoice:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DE3E4;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)_clearQueuedLanguageCode
{
  if (self->_hasQueuedLanguageCode)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      queuedLanguageCode = self->_queuedLanguageCode;
      v6 = 136315394;
      v7 = "[ADCommandCenter _clearQueuedLanguageCode]";
      v8 = 2112;
      v9 = queuedLanguageCode;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Ignoring queued language code: %@", &v6, 0x16u);
    }

    v5 = self->_queuedLanguageCode;
    self->_queuedLanguageCode = 0;

    self->_hasQueuedLanguageCode = 0;
  }
}

- (void)_processQueuedLanguageCode
{
  if (self->_hasQueuedLanguageCode)
  {
    v3 = self->_queuedLanguageCode;
    queuedLanguageCode = self->_queuedLanguageCode;
    self->_queuedLanguageCode = 0;

    self->_hasQueuedLanguageCode = 0;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[ADCommandCenter _processQueuedLanguageCode]";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v6, 0x16u);
    }

    [(ADCommandCenter *)self _setLanguageCode:v3 outputVoice:0];
  }
}

- (void)setQueuedLanguageCode:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADCommandCenter setQueuedLanguageCode:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DE764;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)setOutputVoice:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DE888;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)setLanguageCodeIfNeeded
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DE9B8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setLanguageCodeIfNeeded
{
  v3 = +[AFPreferences sharedPreferences];
  if ([v3 assistantIsEnabled])
  {
    v4 = [v3 _languageCodeWithFallback:0];
    v5 = [v3 _outputVoiceWithFallback:0];
    v6 = [v5 languageCode];
    v7 = [v6 isEqualToString:v4];

    if (![v4 length] || (v7 & 1) == 0)
    {
      v8 = [v3 languageCode];
      if (!v8)
      {
        v8 = AFDefaultLanguageCode;
      }

      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v10 = 136315394;
        v11 = "[ADCommandCenter _setLanguageCodeIfNeeded]";
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s No language code saved, but Assistant is enabled - saving language: %@", &v10, 0x16u);
      }

      [(ADCommandCenter *)self _setLanguageCode:v8 outputVoice:0 isDefaultValue:1 withCompletion:0];
    }
  }
}

- (void)setLanguageCode:(id)a3 outputVoice:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DEC2C;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)_setLanguageCode:(id)a3 outputVoice:(id)a4 isDefaultValue:(BOOL)a5 withCompletion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 length];
  v14 = +[AFPreferences sharedPreferences];
  v15 = v14;
  if (v13 || ([v14 languageCode], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
  {
    v18 = v10;
    if (([v18 isEqualToString:@"ADLanguageCodeKeepSame"] & 1) == 0)
    {
      v19 = +[AFPreferences sharedPreferences];
      v20 = [v19 bestSupportedLanguageCodeForLanguageCode:v18];

      v18 = v20;
    }

    [(ADCommandCenter *)self _setLanguageCode:v18 outputVoice:v11 isDefaultValue:v7];
    [(ADCommandCenter *)self _clearQueuedLanguageCode];
    [(ADCommandCenter *)self _clearQueuedOutputVoice];
    if (!v11)
    {
      [v15 setInProgressOutputVoice:0];
      [v15 synchronize];
    }
  }

  else
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v22 = 136315138;
      v23 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:withCompletion:]";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Ignoring attempt to set the language based on current system config, because we already have a language code saved.", &v22, 0xCu);
    }
  }

  if (v12)
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

- (void)setLanguageCode:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DEEEC;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)setDictationEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ADCommandCenter setDictationEnabled:]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DF0A4;
  v5[3] = &unk_1005166C8;
  v6 = v3;
  sub_1001DF104(v5);
}

- (void)setAssistantEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ADCommandCenter setAssistantEnabled:]";
    v17 = 1024;
    LODWORD(v18) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  [(ADCommandCenter *)self _createAssistantLocallyIfNeeded:v3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001DF7B0;
  v12[3] = &unk_1005166C8;
  v13 = v3;
  sub_1001DF104(v12);
  if (v3)
  {
    +[ADLocationManager prepareForAssistantEnablementInBackground];
  }

  else
  {
    v6 = sub_10000A9B0(@"session_did_finish_timestamp");
    v7 = +[NSFileManager defaultManager];
    v14 = 0;
    v8 = [v7 removeItemAtPath:v6 error:&v14];
    v9 = v14;
    if ((v8 & 1) == 0 && (AFIsFileNotFoundError() & 1) == 0)
    {
      v10 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "ADClearTimestampForFileName";
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to remove timestamp at %@: %@", buf, 0x20u);
      }
    }
  }

  v11 = +[ADSiriCapabilitiesStore sharedStore];
  [v11 siriEnabledStatusDidChange:v3];
}

- (void)_downloadMorphunAssets:(id)a3
{
  if (a3)
  {
    v3 = [NSLocale localeWithLocaleIdentifier:?];
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[ADCommandCenter _downloadMorphunAssets:]";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Starting Morphun assets download for %@", buf, 0x16u);
    }

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("(ADCommandCenter) _downloadMorphunAssets", v5);

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DF9A0;
    block[3] = &unk_10051DFE8;
    v9 = v3;
    v7 = v3;
    dispatch_async(v6, block);
  }
}

- (void)forceAudioSessionInactiveWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DFCD4;
  block[3] = &unk_10051BFA8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)forceAudioSessionActiveWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DFDA8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)preheatServicesForDomain:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DFE50;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)preheatWithRecordDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DFFA0;
  block[3] = &unk_10051DFE8;
  v9 = v4;
  dispatch_async(v5, block);

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E0134;
  v7[3] = &unk_10051DFE8;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)preheatWithStyle:(int64_t)a3 forOptions:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 != 2 || v8)
  {
    if (a3 != 4 || v8)
    {
      v11 = v8;
      if (a3 == 3)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v10 = 13;
  }

  else
  {
    v10 = 8;
  }

  v11 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:v10];
LABEL_8:
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "_ADPreheatSpeechWithStyle";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Preheating speech manager", buf, 0xCu);
  }

  v13 = +[ADSpeechManager sharedManager];
  [v13 preheatWithOptions:v11];
  [v13 preheatRecognizerWithOptions:v11];

LABEL_11:
  if (AFIsNano())
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFBLL) == 0 || a3 == 2;
    if (v14 && v11)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001E03E8;
      block[3] = &unk_10051DFE8;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  v16 = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001E03F0;
  v19[3] = &unk_10051C0D8;
  v19[4] = self;
  v20 = v11;
  v21 = v9;
  v22 = a3;
  v17 = v9;
  v18 = v11;
  dispatch_async(v16, v19);
}

- (void)_removeDelegate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADCommandCenter _removeDelegate:]";
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  [(ADCommandCenter *)self _reallyEndSessionForDelegate:v4];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0548;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startCloudKitSyncWeeklyForActivity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E061C;
  block[3] = &unk_10051DFE8;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)syncAnchorKeys:(id)a3 forceReset:(BOOL)a4 reasons:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v19 = "[ADCommandCenter syncAnchorKeys:forceReset:reasons:]";
    v20 = 2112;
    v21 = v8;
    v22 = 1024;
    v23 = v6;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s anchors for keys=%@ forceReset=%d reasons=%@", buf, 0x26u);
  }

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001E0870;
  v14[3] = &unk_10051C958;
  v14[4] = self;
  v15 = v8;
  v17 = v6;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(queue, v14);
}

- (id)_managedStoreObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _domainObjectCache];
  v6 = [v5 domainObjectForKey:v4];

  return v6;
}

- (void)_setManagedStoreObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ADCommandCenter *)self _domainObjectCache];
  [v8 setDomainObject:v7 forKey:v6];
}

- (void)_handleRemoteSpeechRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[ADCommandCenter _handleRemoteSpeechRequest:completion:]";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = +[AFAnalytics sharedAnalytics];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001E0BDC;
  v21[3] = &unk_10051DF78;
  v22 = v6;
  v10 = v6;
  [v9 logEventWithType:120 contextProvider:v21];

  v11 = [(ADCommandCenter *)self _remoteSpeechRequestHelper];
  v12 = [v11 setSpeechRequestOptions:v10 withCompletion:v7];
  v13 = +[ADDaemon sharedDaemon];
  [v13 startUISpeechRequest];

  v14 = dispatch_time(0, 5000000000);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0BE4;
  block[3] = &unk_10051E010;
  v19 = v12;
  v20 = v11;
  v16 = v11;
  v17 = v12;
  dispatch_after(v14, queue, block);
}

- (void)_openURL:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  currentClient = self->_currentClient;
  if (currentClient)
  {
    [(ADCommandCenterClient *)currentClient adRequestRequestedOpenURL:v8 completion:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)_handleIntent:(id)a3 inBackgroundAppWithBundleId:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[ADCommandCenter _handleIntent:inBackgroundAppWithBundleId:reply:]";
    v14 = 2112;
    v15 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", &v12, 0x16u);
  }

  v11 = +[AFSiriActivationConnection sharedConnection];
  [v11 handleIntent:v7 inBackgroundAppWithBundleId:v8 reply:v9];
}

- (void)_handleExternalActivationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v41 = "[ADCommandCenter _handleExternalActivationRequest:completion:]";
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = +[AFAnalytics sharedAnalytics];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001E12D0;
  v38[3] = &unk_10051DF78;
  v10 = v6;
  v39 = v10;
  [v9 logEventWithType:122 contextProvider:v38];

  v11 = [v10 speechRequestOptions];
  v12 = [v10 handoffURLString];

  if (v12)
  {
    v13 = [NSURL alloc];
    v14 = [v10 handoffURLString];
    v15 = [v13 initWithString:v14];
    v16 = sub_100215118(v15);

    if (v7)
    {
      v7[2](v7, v16, 0);
    }
  }

  else
  {
    v17 = [(ADCommandCenter *)self _remoteRequestHelper];
    [v17 setRemoteRequestInfo:v10];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001E12D8;
    v35[3] = &unk_10051E010;
    v36 = v11;
    v18 = v10;
    v37 = v18;
    v19 = objc_retainBlock(v35);
    if ([v18 handoffRequiresUserInteraction])
    {
      if (v7)
      {
        v7[2](v7, 1, 0);
      }

      v20 = [v17 userNotificationRequestForRemoteRequest];
      v21 = +[ADUserNotificationServiceProvider personalDomainNotificationProvider];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001E144C;
      v33[3] = &unk_1005166A8;
      v34 = v19;
      [v21 postNotificationRequest:v20 options:1 responseHandler:v33];

      v22 = [v20 identifier];

      v23 = 185.0;
    }

    else
    {
      [v17 setCompletion:v7];
      (v19[2])(v19);
      v22 = 0;
      v23 = 5.0;
    }

    v24 = dispatch_time(0, (v23 * 1000000000.0));
    queue = self->_queue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001E14CC;
    v28[3] = &unk_10051DBB8;
    v29 = v18;
    v30 = v17;
    v32 = v23;
    v31 = v22;
    v26 = v22;
    v27 = v17;
    dispatch_after(v24, queue, v28);
  }
}

- (void)_rescheduleValidationRefresh
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[ADCommandCenter _rescheduleValidationRefresh]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v13, 0xCu);
  }

  v4 = +[AFPreferences sharedPreferences];
  if ([v4 assistantIsEnabled])
  {

LABEL_6:
    v7 = [(ADCommandCenter *)self _account];
    v8 = [v7 validationExpiration];

    if (v8)
    {
      [v8 timeIntervalSinceNow];
      if (v9 < 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v9;
      }
    }

    else
    {
      v10 = 0.0;
    }

    v11 = +[ADDaemon sharedDaemon];
    [v11 scheduleValidationRefreshForInterval:v10];

    return;
  }

  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 dictationIsEnabled];

  if (v6)
  {
    goto LABEL_6;
  }

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[ADCommandCenter _rescheduleValidationRefresh]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Ignoring reschedule refresh request because assistant isn't enabled", &v13, 0xCu);
  }
}

- (void)_refreshAssistantValidation
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCommandCenter _refreshAssistantValidation]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _sessionManager];
  [v4 refreshValidationData];
}

- (void)_postWatchNotificationWithContext:(id)a3 withError:(id)a4
{
  v10 = a3;
  v5 = a4;
  if (v5)
  {
    v6 = [v10 errorTitle];
    v7 = [v10 errorBody];
    [v10 errorButtonText];
  }

  else
  {
    v6 = [v10 successTitle];
    v7 = [v10 successBody];
    [v10 successButtonText];
  }
  v8 = ;
  v9 = v8;
  if (v6 && v7 && v8)
  {
    CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, v6, v7, v8);
  }

  else if (!v6)
  {
    goto LABEL_10;
  }

  CFRelease(v6);
LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

- (void)_deleteSiriAudioDataOnDevice
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter _deleteSiriAudioDataOnDevice]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = dispatch_get_global_queue(-2, 0);
  dispatch_async(v3, &stru_100516638);
}

- (void)_deleteSiriHistoryOnDeviceOnDestroyAssistant
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter _deleteSiriHistoryOnDeviceOnDestroyAssistant]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  [(ADCommandCenter *)self _deleteSiriAudioDataOnDevice];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter _deleteSiriHistoryOnDeviceOnDestroyAssistant]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #RPI skipping SADeleteAssistantHistory because it is redundant with SADestroyAssistant.", &v6, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFSiriAndDictationHistoryDeletionRequestedDarwinNotification, 0, 0, 1u);
  sub_1001E1E3C(0);
}

- (void)_deleteSiriHistoryWithContext:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADCommandCenter _deleteSiriHistoryWithContext:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  [(ADCommandCenter *)self _deleteSiriAudioDataOnDevice];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = sub_1001D9498;
  v48 = sub_1001D94A8;
  v49 = 0;
  objc_initWeak(&location, self);
  v9 = [AFOneArgumentSafetyBlock alloc];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001E2544;
  v35[3] = &unk_100516618;
  v10 = v6;
  v36 = v10;
  objc_copyWeak(&v39, &location);
  p_buf = &buf;
  v11 = v7;
  v37 = v11;
  v12 = [AFError errorWithCode:0 description:@"Completion block was dropped unexpectedly."];
  v13 = [v9 initWithBlock:v35 defaultValue:v12];

  v14 = [AFWatchdogTimer alloc];
  v15 = dispatch_get_global_queue(33, 0);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001E277C;
  v33[3] = &unk_10051DFE8;
  v16 = v13;
  v34 = v16;
  v17 = [v14 initWithTimeoutInterval:v15 onQueue:v33 timeoutHandler:20.0];
  v18 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v17;

  [*(*(&buf + 1) + 40) start];
  v19 = objc_alloc_init(SADeleteAssistantHistory);
  v20 = objc_alloc_init(NSUUID);
  v21 = [v20 UUIDString];
  [v19 setAceId:v21];

  v22 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *v41 = 136315394;
    v42 = "[ADCommandCenter _deleteSiriHistoryWithContext:withCompletion:]";
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s request = %@", v41, 0x16u);
  }

  v23 = +[ADCommandCenter sharedCommandCenter];
  v24 = [v23 _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E27E4;
  block[3] = &unk_10051DB68;
  v25 = v23;
  v30 = v25;
  v26 = v19;
  v31 = v26;
  v27 = v16;
  v32 = v27;
  dispatch_async(v24, block);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFSiriAndDictationHistoryDeletionRequestedDarwinNotification, 0, 0, 1u);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

- (void)_destroyActiveAccount
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ADCommandCenter _destroyActiveAccount]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _account];
  v5 = [v4 assistantIdentifier];
  v6 = [v4 speechIdentifier];
  if (v5 | v6)
  {
    v7 = objc_alloc_init(ADAddressBookManager);
    [(ADAddressBookManager *)v7 unregisterChangeHistory];
    if ([v4 needsCreation])
    {
      [v4 setNeedsCreation:0];
      [v4 setNeedsDestruction:0];
      [v4 save];
    }

    else if (([v4 needsDestruction] & 1) == 0)
    {
      v8 = +[ADDaemon sharedDaemon];
      [v8 scheduleDestroyJob];

      [v4 setNeedsDestruction:1];
      [v4 save];
      v9 = +[AFFeatureFlags isOnDeviceHistoryDeletionEnabled];
      v10 = +[AFPreferences sharedPreferences];
      v11 = [v10 longLivedIdentifierUploadingEnabled];

      if (v9)
      {
        if ((v11 & 1) == 0)
        {
          v12 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v30 = "[ADCommandCenter _destroyActiveAccount]";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s #RPI delete Siri History when Siri + Dictation are disabled", buf, 0xCu);
          }

          [(ADCommandCenter *)self _deleteSiriHistoryOnDeviceOnDestroyAssistant];
        }
      }
    }

    +[_INVocabularyStoreManager deleteAllUserVocabularyFromAllAppsAsync];
    v13 = [(ADCommandCenter *)self _speechManager];
    [v13 disableDESWithCompletion:&stru_1005165F0];

    v14 = +[ADSyncSnapshot sharedInstance];
    [v14 deleteSavedSnapshots];

    [(ADCommandCenter *)self _metrics_destroyAllMetrics];
    v15 = [(ADCommandCenter *)self _sessionManager];
    [v15 resetSessionsAndMakeQuiet:0];

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_UTILITY, 0);

    v18 = dispatch_queue_create("com.apple.siri.duet", v17);
    AFDeleteCoreDuetEventsInStream();
    AFRecordCoreDuetContext();

    v19 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v20 = [v19 firstObject];

    v21 = [v20 stringByAppendingPathComponent:@"SiriEdutainment"];
    v22 = +[NSFileManager defaultManager];
    v28 = 0;
    v23 = [v22 removeItemAtPath:v21 error:&v28];
    v24 = v28;
    if (v23)
    {
      v25 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "ADDeleteItemAtPath";
        v31 = 2112;
        v32 = v21;
        v26 = "%s Successfully deleted item %@";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v26, buf, 0x16u);
      }
    }

    else
    {
      found = AFIsFileNotFoundError();
      v25 = AFSiriLogContextUtility;
      if (!found)
      {
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v30 = "ADDeleteItemAtPath";
          v31 = 2112;
          v32 = v21;
          v33 = 2112;
          v34 = v24;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Failed to delete item at %@ - %@", buf, 0x20u);
        }

        goto LABEL_21;
      }

      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "ADDeleteItemAtPath";
        v31 = 2112;
        v32 = v21;
        v26 = "%s Not Found %@";
        goto LABEL_18;
      }
    }

LABEL_21:
  }
}

- (void)_setActiveAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter _setActiveAccountIdentifier:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s setting identifier=%@", &v10, 0x16u);
  }

  v6 = [ADAccount setActiveAccountIdentifier:v4];
  [(ADCommandCenter *)self _clearAccount];
  v7 = +[AFPreferences sharedPreferences];
  -[ADCommandCenter _createAssistantLocallyIfNeeded:](self, "_createAssistantLocallyIfNeeded:", [v7 assistantIsEnabled]);

  v8 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "ADPostSyncNeededNotification";
    v12 = 2112;
    v13 = @"com.apple.assistant.sync_needed";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s posting notification=%@", &v10, 0x16u);
  }

  notify_post("com.apple.assistant.sync_needed");
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"ADActiveAccountIdentifierDidChangeNotification" object:0];
  if (v6)
  {
    if (AFIsHorseman())
    {
      [(ADCommandCenter *)self updateSharedDataFromCompanion];
    }

    [v9 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
  }
}

- (void)_deleteAccountWithIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [ADAccount accountForIdentifier:?];
    [v3 removeAndSave];
  }
}

- (void)_createAssistantLocallyIfNeeded:(BOOL)a3
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADCommandCenter _createAssistantLocallyIfNeeded:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v11, 0xCu);
  }

  v6 = [(ADCommandCenter *)self _account];
  v7 = v6;
  if (a3)
  {
    if ([v6 needsDestruction])
    {
      [v7 setNeedsDestruction:0];
      [v7 setNeedsCreation:1];
      v8 = +[ADDaemon sharedDaemon];
      [v8 unscheduleDestroyJob];

      [v7 save];
    }

    v9 = [v7 assistantIdentifier];

    if (!v9)
    {
      [v7 clearAssistantData];
      [v7 updateAssistantIdentifiers];
      [v7 setNeedsCreation:1];
      [v7 save];
      v10 = dispatch_get_global_queue(9, 0);
      dispatch_async(v10, &stru_1005165D0);
    }
  }

  else if ([v6 needsCreation])
  {
    [v7 setNeedsCreation:0];
    [v7 save];
  }
}

- (void)_getDeferredObjectsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADCommandCenter *)self _resultObjectCache];
  v16 = 0;
  v9 = [v8 objectsForIds:v6 missingReferences:&v16];
  v10 = v16;

  if ([v10 count])
  {
    v11 = objc_alloc_init(SAGetResultObjects);
    [v11 setObjectIdentifiers:v10];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001E3560;
    v12[3] = &unk_100515E40;
    v12[4] = self;
    v13 = v9;
    v14 = v6;
    v15 = v7;
    [(ADCommandCenter *)self _sendCommandToServer:v11 opportunistically:0 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, v9, 0);
  }
}

- (void)_fetchSupportedLanguagesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[ADCommandCenter _fetchSupportedLanguagesWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = objc_alloc_init(SAGetSupportedLocales);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E3AB8;
  v8[3] = &unk_10051CD88;
  v9 = v4;
  v7 = v4;
  [(ADCommandCenter *)self _sendCommandToServer:v6 completion:v8];
}

- (void)_clearContextAndStartDictationSessionWithLanguageCode:(id)a3 dictationOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ADCommandCenter *)self _clearContext];
  if ([v7 shouldClassifyIntent])
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ADCommandCenter _clearContextAndStartDictationSessionWithLanguageCode:dictationOptions:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s shouldClassifyIntent is YES; will update UoD status", buf, 0xCu);
    }

    v9 = [(ADCommandCenter *)self _updateUODAssetStatusForLanguage:v6];
  }

  v10 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
  v11 = [v10 offlineDictationStatus];

  v12 = AFIsDictationLanguageInstalledForOfflineRecognition();
  if (v12)
  {
    v13 = AFIsNLAssetAvailableFromUodStatus();
  }

  else
  {
    v13 = 0;
  }

  v14 = [(ADCommandCenter *)self _requestDispatcherService];
  v15 = [(ADCommandCenter *)self _account];
  v16 = [v15 assistantIdentifier];
  [v14 startDictationSessionWithAssistantId:v16 languageCode:v6 recognitionOnDevice:v12 shouldClassifyIntent:objc_msgSend(v7 understandingOnDevice:{"shouldClassifyIntent"), v13}];

  if (self->_serviceManager)
  {
    v17 = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E3E54;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(v17, block);
  }
}

- (id)_fetchUODStatusForLanguageCode:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  v5 = a3;
  v6 = os_signpost_id_generate(v4);
  v7 = AFSiriLogContextDaemon;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AssetFetch", &unk_100468A0D, buf, 2u);
  }

  v9 = [(ADAssetManager *)self->_assetManager assetsAvailableStatusForLanguage:v5];

  v10 = AFSiriLogContextDaemon;
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v6, "AssetFetch", &unk_100468A0D, v13, 2u);
  }

  return v9;
}

- (id)_updateUODAssetStatusForLanguage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = [(ADCommandCenter *)self _sessionManager];
    v5 = [v6 languageCode];
  }

  v7 = [(ADCommandCenter *)self _fetchUODStatusForLanguageCode:v5];
  self->_siriHybridUODSupported = AFUODStatusSupportedHybrid();
  self->_siriSAESupported = AFUODStatusSupportedSAE();
  if (AFDeviceSupportsSAE())
  {
    siriSAESupported = self->_siriSAESupported;
  }

  else
  {
    siriSAESupported = AFUODStatusSupportedFull();
  }

  self->_siriFullUODSupported = siriSAESupported;
  v9 = !siriSAESupported || self->_siriHybridUODSupported;
  v10 = [(ADCommandCenter *)self _locationManager];
  [v10 setAllowAdHocSendingLocationToServer:v9];

  v11 = +[ADPreferences sharedPreferences];
  v12 = v11;
  v13 = self->_siriFullUODSupported && !self->_siriHybridUODSupported;
  [v11 setIsSiriFullUODSupported:v13];

  siriHybridUODSupported = 1;
  if (!self->_siriFullUODSupported)
  {
    siriHybridUODSupported = self->_siriHybridUODSupported;
  }

  self->_siriUODSupported = siriHybridUODSupported;
  self->_assetsCheckRan = 1;
  objc_storeStrong(&self->_currentUodStatus, v7);
  [(ADSiriCapabilitiesStore *)self->_siriCapabilitiesStore refreshOrchestrationMode];
  v15 = self->_siriHybridUODSupported;
  if (v15)
  {
    v16 = @"Hybrid";
  }

  else if (self->_siriSAESupported)
  {
    v16 = @"SAE";
  }

  else if (self->_siriFullUODSupported)
  {
    v16 = @"FullUOD";
  }

  else
  {
    v16 = @"Classic";
  }

  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    currentUodStatus = self->_currentUodStatus;
    siriFullUODSupported = self->_siriFullUODSupported;
    v20 = self->_siriSAESupported;
    v22 = 136316674;
    v23 = "[ADCommandCenter _updateUODAssetStatusForLanguage:]";
    v24 = 2114;
    v25 = currentUodStatus;
    v26 = 1024;
    v27 = siriFullUODSupported;
    v28 = 1024;
    v29 = v15;
    v30 = 1024;
    v31 = v20;
    v32 = 2114;
    v33 = v5;
    v34 = 2114;
    v35 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s #AsrOnServer Siri understanding on device status: uodStatus:%{public}@, _siriFullUODSupported:%d, _siriHybridUODSupported:%d, _siriSAESupported:%d, fetchLanguageCode:%{public}@, orchestration mode chosen: %{public}@", &v22, 0x3Cu);
  }

  return v7;
}

- (BOOL)_areRequiredAssetsMissing
{
  if (AFShouldRunAsrOnServerForUOD())
  {
    v3 = 874;
LABEL_6:
    v5 = *(&self->super.isa + v3) ^ 1;
    goto LABEL_8;
  }

  if (AFDeviceSupportsSiriUOD())
  {
    v4 = AFDeviceSupportsSAE();
    v3 = 873;
    if (v4)
    {
      v3 = 875;
    }

    goto LABEL_6;
  }

  v5 = 0;
LABEL_8:
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    siriHybridUODSupported = self->_siriHybridUODSupported;
    siriFullUODSupported = self->_siriFullUODSupported;
    siriSAESupported = self->_siriSAESupported;
    v11 = 136316162;
    v12 = "[ADCommandCenter _areRequiredAssetsMissing]";
    v13 = 1024;
    v14 = v5 & 1;
    v15 = 1024;
    v16 = siriHybridUODSupported;
    v17 = 1024;
    v18 = siriFullUODSupported;
    v19 = 1024;
    v20 = siriSAESupported;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #AsrOnServer assetsMissing = %d, _siriHybridUODSupported= %d, _siriFullUODSupported=%d, _siriSAESupported=%d", &v11, 0x24u);
  }

  return v5 & 1;
}

- (void)_handleAceCommand:(id)a3 afterCurrentRequest:(BOOL)a4 waitForResponse:(BOOL)a5 withDelegate:(id)a6 completion:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v32 = "[ADCommandCenter _handleAceCommand:afterCurrentRequest:waitForResponse:withDelegate:completion:]";
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s command = %@, delegate = %@", buf, 0x20u);
  }

  if (v10)
  {
    v16 = +[NSDate date];
  }

  else
  {
    v16 = 0;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001E45A0;
  v23[3] = &unk_100517E58;
  v17 = v12;
  v24 = v17;
  v18 = v16;
  v25 = v18;
  v29 = v10;
  v19 = v13;
  v26 = v19;
  v27 = self;
  v30 = a5;
  v20 = v14;
  v28 = v20;
  v21 = objc_retainBlock(v23);
  v22 = v21;
  if (v10)
  {
    dispatch_group_notify(self->_requestGroup, self->_queue, v21);
  }

  else
  {
    (v21[2])(v21);
  }
}

- (void)_firstChanceServiceChangeIdFrom:(id)a3 to:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(NSMutableDictionary *)self->_firstChanceServices objectForKey:v9];
    v8 = v7;
    if (v6 && v7)
    {
      [(NSMutableDictionary *)self->_firstChanceServices setObject:v7 forKey:v6];
    }

    [(NSMutableDictionary *)self->_firstChanceServices removeObjectForKey:v9];
  }
}

- (id)_firstChanceServiceForCommand:(id)a3
{
  firstChanceServices = self->_firstChanceServices;
  v4 = [a3 refId];
  v5 = [(NSMutableDictionary *)firstChanceServices objectForKey:v4];

  return v5;
}

- (void)_removeFirstChanceServiceForAceId:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_firstChanceServices removeObjectForKey:?];
  }
}

- (void)_setFirstChanceService:(id)a3 forAceId:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    firstChanceServices = self->_firstChanceServices;
    if (!firstChanceServices)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = self->_firstChanceServices;
      self->_firstChanceServices = v8;

      firstChanceServices = self->_firstChanceServices;
    }

    [(NSMutableDictionary *)firstChanceServices setObject:v10 forKey:v6];
  }
}

- (void)_handleGenericConcreteAceCommand:(id)a3 withDelegate:(id)a4 interruptOutstandingRequest:(BOOL)a5 reply:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v10;
    v34 = 1024;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@ %@ %d", buf, 0x26u);
  }

  v14 = [(ADCommandCenter *)self _currentRequest];
  v15 = [v14 currentRequestCommand];

  if (v12)
  {
    v12[2](v12, v15 != 0);
  }

  if (v15 && !v7)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Requested command conflicts with existing: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
    v30 = 2112;
    v31 = v10;
    v23 = "%s Ignoring invalid ace command %@";
    v24 = v18;
LABEL_31:
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Handling generic send commands", buf, 0xCu);
    }

    [(ADCommandCenter *)self _handleSendCommands:v10 forRequestDelegate:v11 completion:0];
    goto LABEL_15;
  }

  if ([(ADCommandCenter *)self _isServerBoundCommand:v10])
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Handling generic server bound command", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ADCommandCenter *)self _startNonSpeechRequest:v10 forDelegate:v11];
    }

    else if ([v10 ad_willHaveReply])
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001E5A88;
      v25[3] = &unk_100516510;
      v25[4] = self;
      v26 = v10;
      v27 = v11;
      [(ADCommandCenter *)self _sendCommandToServer:v26 opportunistically:0 completion:v25];
    }

    else
    {
      [(ADCommandCenter *)self _sendCommandToServer:v10];
    }

    goto LABEL_15;
  }

  v20 = [(ADCommandCenter *)self _isClientBoundCommand:v10];
  v21 = AFSiriLogContextDaemon;
  if (!v20)
  {
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
    v30 = 2112;
    v31 = v10;
    v23 = "%s Don't know how to handle generic ace command %@";
    v24 = v21;
    goto LABEL_31;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Handling generic client bound command", buf, 0xCu);
  }

  v22 = [(ADCommandCenter *)self _sessionManager];
  [v22 handleCommand:v10];

LABEL_15:
}

- (void)_handleGenericAceCommand:(id)a3 withDelegate:(id)a4 interruptOutstandingRequest:(BOOL)a5 reply:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = [AceObject aceObjectWithDictionary:a3];
  [(ADCommandCenter *)self _handleGenericConcreteAceCommand:v12 withDelegate:v11 interruptOutstandingRequest:v6 reply:v10];
}

- (void)_updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10
{
  v17 = a10;
  v27 = a9;
  v26 = a8;
  v24 = a7;
  v25 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v29 = [(ADCommandCenter *)self _requestDispatcherService];
  v28 = [(ADCommandCenter *)self _account];
  v23 = [v28 assistantIdentifier];
  v21 = [(ADCommandCenter *)self _speechCapturingContext];
  v22 = [v21 sessionUUID];
  [v29 updateVoiceCommandContextWithAssistantId:v23 requestId:v22 prefixText:v20 postfixText:v19 selectedText:v18 disambiguationActive:v25 cursorInVisibleText:v24 favorCommandSuppression:v26 abortCommandSuppression:v27 undoEvent:v17];
}

- (void)_resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[ADCommandCenter _resumeRecognitionWithPrefixText:postfixText:selectedText:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v17, 0xCu);
  }

  v12 = [(ADCommandCenter *)self _requestDispatcherService];
  v13 = [(ADCommandCenter *)self _account];
  v14 = [v13 assistantIdentifier];
  v15 = [(ADCommandCenter *)self _speechCapturingContext];
  v16 = [v15 sessionUUID];
  [v12 resumeDictationRecognitionWithAssistantId:v14 requestId:v16 prefixText:v8 postfixText:v9 selectedText:v10];
}

- (void)_pauseRecognition
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter _pauseRecognition]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _requestDispatcherService];
  v5 = [(ADCommandCenter *)self _account];
  v6 = [v5 assistantIdentifier];
  v7 = [(ADCommandCenter *)self _speechCapturingContext];
  v8 = [v7 sessionUUID];
  [v4 pauseDictationRecognitionWithAssistantId:v6 requestId:v8];
}

- (void)_sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter _sendSpeechCorrectionInfo:interactionIdentifier:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v8 = [[LBLocalSpeechRecognizerClient alloc] initWithDelegate:0];
  [v8 sendSpeechCorrectionInfo:v5 interactionIdentifier:v6];
  [v8 invalidate];
}

- (void)_sendSpeechCorrectionInfo:(id)a3 forCorrectionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _sendSpeechCorrectionInfo:forCorrectionContext:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  v9 = objc_alloc_init(SASSpeechCorrectionStatistics);
  [v9 ad_setAFSpeechCorrectionInfo:v6];
  [v9 ad_setAFCorrectionContext:v7];
  [(ADCommandCenter *)self _sendCommandToServer:v9];
}

- (void)_cancelSpeechForDelegate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADCommandCenter _cancelSpeechForDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  if (self->_speechDelegate == v4)
  {
    if ((self->_speechManagerState - 1) <= 1)
    {
      v7 = [(ADCommandCenter *)self _speechManager];
      [v7 cancelSpeechCaptureSuppressingAlert:AFIsNano()];

      [(ADCommandCenter *)self _cancelCurrentRequestForReason:12 andError:0 successorInfo:0];
    }
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADCommandCenter _cancelSpeechForDelegate:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Ignoring cancel speech from invalid delegate", &v8, 0xCu);
    }
  }
}

- (void)_stopSpeechWithOptions:(id)a3 forDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADCommandCenter _stopSpeechWithOptions:forDelegate:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (self->_speechDelegate == v7)
  {
    v10 = [(ADCommandCenter *)self _speechManager];
    [v10 stopSpeechCaptureWithOptions:v6];

    speechRequestGroup = self->_speechRequestGroup;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E65A0;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_group_notify(speechRequestGroup, queue, block);
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ADCommandCenter _stopSpeechWithOptions:forDelegate:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Ignoring stop speech from invalid delegate", buf, 0xCu);
    }
  }
}

- (void)_updateSpeechOptions:(id)a3 forDelegate:(id)a4 allowUpdateInSpeechCompletion:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADCommandCenter _updateSpeechOptions:forDelegate:allowUpdateInSpeechCompletion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_speechDelegate == v9)
  {
    if (v8)
    {
      if (CSSiriSpeechRecordingGetUsesServerEndpointingFromRequestOptions() && (CSSiriSpeechRecordingGetUsesServerEndpointingFromRequestOptions() & 1) == 0)
      {
        -[AFSpeechRequestOptions setEndpointerOperationMode:](self->_currentSpeechRequestOptions, "setEndpointerOperationMode:", [v8 endpointerOperationMode]);
        speechRequestGroup = self->_speechRequestGroup;
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001E6A14;
        block[3] = &unk_10051DFE8;
        block[4] = self;
        dispatch_group_notify(speechRequestGroup, queue, block);
      }

      else
      {
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v27 = "[ADCommandCenter _updateSpeechOptions:forDelegate:allowUpdateInSpeechCompletion:]";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Skipped enable server endpointer command because ADSpeechCapturingGetUsesServerEndpointingFromRequestOptions == NO", buf, 0xCu);
        }
      }

      v19 = [(ADCommandCenter *)self _speechManager];
      [v19 updateSpeechOptions:v8];
    }
  }

  else
  {
    if (a5)
    {
      v11 = AFSiriLogContextDaemon;
      if (self->_speechCompletion)
      {
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v27 = "[ADCommandCenter _updateSpeechOptions:forDelegate:allowUpdateInSpeechCompletion:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s We're not the current delegate, but we have a speech completion. Will try to update in completion", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v12 = objc_retainBlock(self->_speechCompletion);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1001E69B0;
        v21[3] = &unk_10051DEB0;
        v24 = v12;
        v13 = v12;
        objc_copyWeak(&v25, buf);
        v22 = v8;
        v23 = v9;
        v14 = objc_retainBlock(v21);
        speechCompletion = self->_speechCompletion;
        self->_speechCompletion = v14;

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
        goto LABEL_19;
      }
    }

    else
    {
      v11 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[ADCommandCenter _updateSpeechOptions:forDelegate:allowUpdateInSpeechCompletion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Ignoring update speech options from invalid delegate", buf, 0xCu);
    }
  }

LABEL_19:
}

- (void)_rollbackRequestForDelegate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _rollbackRequestForDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (self->_requestDelegate == v4)
  {
    v6 = [(ADCommandCenter *)self _currentRequest];
    v7 = [v6 currentRequestCommand];

    if (v7)
    {
      v8 = v7;
      [(ADCommandCenter *)self _cancelCurrentRequestForReason:10 andError:0 successorInfo:0];
    }

    else
    {
      v8 = [(ADCommandCenter *)self _lastRequest];
      if (!v8)
      {
        v9 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v10 = 136315138;
          v11 = "[ADCommandCenter _rollbackRequestForDelegate:]";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Trying to rollback a request, but don't have one", &v10, 0xCu);
        }

        v8 = 0;
        goto LABEL_8;
      }
    }

    [(ADCommandCenter *)self _sendRollbackCommandForCommand:v8];
LABEL_8:
  }
}

- (void)_cancelRequestForDelegate:(id)a3 reason:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = AFRequestCancellationReasonGetName();
    v15 = 136315394;
    v16 = "[ADCommandCenter _cancelRequestForDelegate:reason:error:]";
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Reason for cancelling the request - %@", &v15, 0x16u);
  }

  if (self->_requestDelegate == v8)
  {
    if ((self->_speechManagerState - 1) <= 1)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "[ADCommandCenter _cancelRequestForDelegate:reason:error:]";
        v17 = 1024;
        LODWORD(v18) = a4 == 1;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Cancelling speech capture (suppressing alert: %d)", &v15, 0x12u);
      }

      v14 = [(ADCommandCenter *)self _speechManager];
      [v14 cancelSpeechCaptureSuppressingAlert:a4 == 1];
    }

    [(ADCommandCenter *)self _cancelCurrentRequestForReason:a4 andError:v9 successorInfo:0];
  }
}

- (void)_startDictationWithURL:(id)a3 isNarrowBand:(BOOL)a4 language:(id)a5 options:(id)a6 sessionUUID:(id)a7 delegate:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[ADCommandCenter _startDictationWithURL:isNarrowBand:language:options:sessionUUID:delegate:]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v20 = +[AFAnalytics sharedAnalytics];
  [v20 logEventWithType:121 context:0];

  [(ADCommandCenter *)self _replaceRequestDelegate:0 reason:4];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001E70A0;
  v25[3] = &unk_100519AC0;
  v25[4] = self;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v30 = a4;
  v29 = v17;
  v21 = v17;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:v18 suppressAlert:0 withCompletion:v25];
}

- (void)_addRecordedSpeechSampleData:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _addRecordedSpeechSampleData:delegate:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (self->_speechDelegate == v7)
  {
    v9 = [(ADCommandCenter *)self _speechManager];
    [v9 addRecordedDictationAudioSampleData:v6];
  }
}

- (void)_startRecordedDictationWithLanguage:(id)a3 options:(id)a4 sessionUUID:(id)a5 narrowband:(BOOL)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADCommandCenter _startRecordedDictationWithLanguage:options:sessionUUID:narrowband:delegate:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v17 = +[AFAnalytics sharedAnalytics];
  [v17 logEventWithType:121 context:0];

  [(ADCommandCenter *)self _replaceRequestDelegate:0 reason:4];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001E7468;
  v21[3] = &unk_1005162A0;
  v21[4] = self;
  v22 = v13;
  v23 = v12;
  v24 = v14;
  v25 = a6;
  v18 = v14;
  v19 = v12;
  v20 = v13;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:v15 suppressAlert:0 withCompletion:v21];
}

- (void)_startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADCommandCenter _startDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:]";
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s %@ %@", &v18, 0x20u);
  }

  [(ADCommandCenter *)self _startDictationWithLanguageCode:v12 options:v13 speechOptions:v14 sessionUUID:v15 delegate:v16 completion:0];
}

- (void)_startRecordingForPendingDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [[NSString alloc] initWithFormat:@"languageCode = %@, dictationOptions = %@, speechOptions = %@, sessionUUID = %@, delegate = %@", v14, v15, v16, v17, v18];
  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[ADCommandCenter _startRecordingForPendingDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]";
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v22 = self->_requestGroup;
  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v33 = "[ADCommandCenter _startRecordingForPendingDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]";
    v34 = 2112;
    v35 = v22;
    v36 = 2112;
    v37 = v20;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_enter(v22);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001E7948;
  v27[3] = &unk_100519D50;
  v27[4] = self;
  v28 = v20;
  v31 = [v16 usePrelisteningMode];
  v29 = v22;
  v30 = v19;
  v24 = v22;
  v25 = v20;
  v26 = v19;
  [(ADCommandCenter *)self _startDictationWithLanguageCode:v14 options:v15 speechOptions:v16 sessionUUID:v17 delegate:v18 completion:v27];
}

- (void)_startDictationWithLanguageCode:(id)a3 options:(id)a4 speechOptions:(id)a5 sessionUUID:(id)a6 delegate:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (AFIsATVOnly() && [v15 secureOfflineOnly])
  {
    v20 = AFPreferencesOnDeviceLocaleForSpellingLocale();
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v14;
    }

    v23 = v22;

    v38 = 1;
    v14 = v23;
  }

  else
  {
    v38 = 0;
  }

  v24 = +[AFAnalytics sharedAnalytics];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1001E84A8;
  v59[3] = &unk_10051DF78;
  v25 = v16;
  v60 = v25;
  [v24 logEventWithType:121 contextProvider:v59];

  v26 = dispatch_group_create();
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = sub_1001D9498;
  v57[4] = sub_1001D94A8;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_1001D9498;
  v55[4] = sub_1001D94A8;
  v56 = 0;
  v27 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v62 = "[ADCommandCenter _startDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s Entering _replaceSpeechDelegateWhenReady group", buf, 0xCu);
  }

  dispatch_group_enter(v26);
  [(ADCommandCenter *)self _replaceRequestDelegate:0 reason:4];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1001E84B0;
  v53[3] = &unk_10051DFE8;
  v28 = v26;
  v54 = v28;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:v18 suppressAlert:0 withCompletion:v53];
  v29 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v62 = "[ADCommandCenter _startDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Entering _getDictationLanguages group", buf, 0xCu);
  }

  dispatch_group_enter(v28);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1001E8568;
  v49[3] = &unk_1005164C0;
  v51 = v57;
  v52 = v55;
  v30 = v28;
  v50 = v30;
  [(ADCommandCenter *)self _getDictationLanguages:v14 options:v15 speechOptions:v25 delegate:v18 completion:v49];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E867C;
  block[3] = &unk_1005164E8;
  block[4] = self;
  v40 = v18;
  v46 = v57;
  v47 = v55;
  v41 = v17;
  v42 = v15;
  v43 = v25;
  v44 = v14;
  v48 = v38;
  v45 = v19;
  v32 = v19;
  v33 = v14;
  v34 = v25;
  v35 = v15;
  v36 = v17;
  v37 = v18;
  dispatch_group_notify(v30, queue, block);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
}

- (void)_startSpeechRequestWithURL:(id)a3 isNarrowBand:(BOOL)a4 withDelegate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[ADCommandCenter _startSpeechRequestWithURL:isNarrowBand:withDelegate:completion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v14 = +[AFAnalytics sharedAnalytics];
  [v14 logEventWithType:120 context:0];

  [(ADCommandCenter *)self _replaceRequestDelegate:v11 reason:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001E8C8C;
  v17[3] = &unk_10051C6C8;
  v17[4] = self;
  v18 = v10;
  v20 = a4;
  v19 = v12;
  v15 = v12;
  v16 = v10;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:v11 suppressAlert:0 withCompletion:v17];
}

- (void)_startAcousticIDRequestWithDelegate:(id)a3 withOptions:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[AFAnalytics sharedAnalytics];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001E8E7C;
  v18[3] = &unk_10051DF78;
  v12 = v8;
  v19 = v12;
  [v11 logEventWithType:122 contextProvider:v18];

  [(ADCommandCenter *)self _replaceRequestDelegate:v10 reason:5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E8E84;
  v15[3] = &unk_10051DB68;
  v15[4] = self;
  v16 = v12;
  v17 = v9;
  v13 = v9;
  v14 = v12;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:v10 waitForRecordingToFinish:1 suppressAlert:0 withCompletion:v15];
}

- (void)_startSpeechPronunciationRequestWithDelegate:(id)a3 withOptions:(id)a4 pronunciationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 136315650;
    v27 = "[ADCommandCenter _startSpeechPronunciationRequestWithDelegate:withOptions:pronunciationContext:]";
    v28 = 2112;
    v29 = v8;
    v30 = 2048;
    v31 = [v9 activationEvent];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ Event %ld", buf, 0x20u);

    v11 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    v14 = [v9 serverCommandId];
    *buf = 136315650;
    v27 = "[ADCommandCenter _startSpeechPronunciationRequestWithDelegate:withOptions:pronunciationContext:]";
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Pronunciation Context: %@ refId %@", buf, 0x20u);
  }

  v15 = +[AFAnalytics sharedAnalytics];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001E91E8;
  v24[3] = &unk_10051DF78;
  v16 = v9;
  v25 = v16;
  [v15 logEventWithType:122 contextProvider:v24];

  v17 = [v16 serverCommandId];
  if (v17)
  {
  }

  else if (self->_requestDelegate == v8)
  {
    [(ADCommandCenter *)self _replaceRequestDelegate:v8 reason:3];
  }

  v18 = self->_siriFullUODSupported && !self->_siriHybridUODSupported;
  [v16 setSkipGeneratingSpeechPacket:v18];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001E91F0;
  v21[3] = &unk_10051DB68;
  v21[4] = self;
  v22 = v16;
  v23 = v10;
  v19 = v10;
  v20 = v16;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:v8 waitForRecordingToFinish:1 suppressAlert:0 withCompletion:v21];
}

- (void)_startRecordingForPendingSpeechRequestForDelegate:(id)a3 withOptions:(id)a4 sessionUUID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[NSString alloc] initWithFormat:@"speechOptions = %@, sessionUUID = %@, delegate = %@", v11, v12, v10];
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[ADCommandCenter _startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]";
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v16 = self->_requestGroup;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v28 = "[ADCommandCenter _startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]";
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v14;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_enter(v16);
  v18 = [v11 usePrelisteningMode];
  -[ADCommandCenter _setHeadphonesAuthenticated:](self, "_setHeadphonesAuthenticated:", [v11 isHeadphonesAuthenticated]);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001E953C;
  v22[3] = &unk_100519D50;
  v22[4] = self;
  v23 = v14;
  v26 = v18;
  v24 = v16;
  v25 = v13;
  v19 = v16;
  v20 = v14;
  v21 = v13;
  [(ADCommandCenter *)self _startSpeechRequestWithDelegate:v10 withOptions:v11 sessionUUID:v12 completion:v22];
}

- (void)_startSpeechRequestWithDelegate:(id)a3 withOptions:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = 136315650;
    v14 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2048;
    v18 = [v9 activationEvent];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ Event %ld", &v13, 0x20u);
  }

  [(ADCommandCenter *)self _startSpeechRequestWithDelegate:v8 withOptions:v9 sessionUUID:v10 completion:0];
}

- (void)_startSpeechRequestWithDelegate:(id)a3 withOptions:(id)a4 sessionUUID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[NSString alloc] initWithFormat:@"speechOptions = %@, sessionUUID = %@, delegate = %@", v11, v12, v10];
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v77 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:completion:]";
    v78 = 2112;
    v79 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v60 = v14;
  v16 = +[AFAnalytics sharedAnalytics];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1001EA4EC;
  v74[3] = &unk_10051DF78;
  v17 = v11;
  v75 = v17;
  [v16 logEventWithType:120 contextProvider:v74];

  v18 = [(ADCommandCenter *)self _contextManager];
  if (AFIsHorseman())
  {
    [v18 updateBackgroundContextIfNowPlayingInfoChanged];
  }

  v59 = v18;
  v19 = [v17 activationEvent];
  if (v19 == 5)
  {
    v20 = [(ADCommandCenter *)self _lastRequest];
    v21 = [v20 aceId];
    associatedRequestId = self->_associatedRequestId;
    self->_associatedRequestId = v21;

    v23 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v24 = self->_associatedRequestId;
    *buf = 136315394;
    v77 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:completion:]";
    v78 = 2112;
    v79 = v24;
    v25 = "%s _associatedRequestId set to %@";
    v26 = v23;
    v27 = 22;
  }

  else
  {
    selectedSharedUserID = self->_selectedSharedUserID;
    self->_selectedSharedUserID = 0;

    v29 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v77 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:completion:]";
    v25 = "%s [[ADMultiUserService sharedService] selectedSharedUserID] cleared on new user initiated activation";
    v26 = v29;
    v27 = 12;
  }

  _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, v25, buf, v27);
LABEL_9:
  v30 = +[ADNotificationManager sharedManager];
  v31 = [v30 hasIncomingCallNotification];

  v32 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v53 = "NO";
    if (v31)
    {
      v53 = "YES";
    }

    *buf = 136315394;
    v77 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:completion:]";
    v78 = 2080;
    v79 = v53;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s hasIncomingCallNotification: %s", buf, 0x16u);
  }

  [v17 setIsOnPhoneCall:(self->_isInCall | v31) & 1];
  v33 = self->_siriFullUODSupported && !self->_siriHybridUODSupported;
  [v17 setSkipGeneratingSpeechPacket:v33];
  [v17 setHybridUODEnabled:self->_siriHybridUODSupported];
  v34 = [v17 notifyState];

  if (!v34)
  {
    v56 = v13;
    v57 = v12;
    v46 = 0;
    v61 = 0;
    goto LABEL_25;
  }

  v35 = [(ADRemoteSpeechRequestHelper *)self->_remoteSpeechRequestHelper speechRequestOptions];
  v61 = [(ADRemoteSpeechRequestHelper *)self->_remoteSpeechRequestHelper completion];
  [(ADRemoteSpeechRequestHelper *)self->_remoteSpeechRequestHelper reset];
  if (!v35)
  {
    v36 = [(ADRemoteRequestHelper *)self->_remoteRequestHelper remoteRequestInfo];
    v35 = [v36 speechRequestOptions];

    if (!v35)
    {
      v56 = v13;
      v57 = v12;
      v46 = 0;
LABEL_25:
      v58 = v46;
      v55 = v19 < 0x20;
      if (!self->_speechManagerState)
      {
        self->_speechManagerState = 1;
      }

      v47 = self->_requestGroup;
      v48 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v77 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:completion:]";
        v78 = 2112;
        v79 = v47;
        v80 = 2112;
        v81 = v60;
        _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
      }

      v54 = 0x8000A120 >> v19;
      dispatch_group_enter(v47);
      v49 = [v17 activationEventMachAbsoluteTime];
      [v17 activationEventTime];
      if (!v49)
      {
        if (v50 <= 0.0)
        {
          v51 = objc_alloc_init(AFRequestInfo);
          goto LABEL_33;
        }

        v49 = AFGetMachAbsoluteTimeFromTimeInterval();
      }

      v51 = [[AFRequestInfo alloc] initWithTimestamp:v49];
LABEL_33:
      v41 = v51;
      [v51 setSpeechRequestOptions:v17];
      v52 = [v17 turnIdentifier];
      [v41 setTurnIdentifier:v52];

      [(ADCommandCenter *)self _replaceRequestDelegate:v10 withInfo:v41 reason:0 andCompletion:0];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_1001EA524;
      v62[3] = &unk_100516450;
      v62[4] = self;
      v17 = v17;
      v63 = v17;
      v64 = v47;
      v45 = v60;
      v65 = v60;
      v12 = v57;
      v66 = v57;
      v67 = v10;
      v13 = v56;
      v68 = v56;
      v43 = v61;
      v69 = v43;
      v44 = v47;
      [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:v67 waitForRecordingToFinish:v55 & v54 suppressAlert:0 withCompletion:v62];

      goto LABEL_34;
    }

    v37 = [(ADRemoteRequestHelper *)self->_remoteRequestHelper completion];
    v38 = v37;
    if (v37)
    {
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_1001EA4F4;
      v72[3] = &unk_10051E100;
      v73 = v37;
      v39 = v35;
      v40 = objc_retainBlock(v72);

      v61 = v40;
      v35 = v39;
    }

    [(ADRemoteRequestHelper *)self->_remoteRequestHelper setRemoteRequestInfo:0];
    [(ADRemoteRequestHelper *)self->_remoteRequestHelper setCompletion:0];
  }

  v41 = [v35 audioFileURL];
  if (!AFIsInternalInstall() || !v41)
  {
    v56 = v13;
    v57 = v12;
    v46 = v35;

    v17 = v46;
    goto LABEL_25;
  }

  v58 = v35;
  v42 = [AFSetAudioSessionActiveContext newWithBuilder:&stru_100516428];
  [(ADCommandCenter *)self _forceAudioSessionActiveWithContext:v42 completion:0];

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1001EA508;
  v70[3] = &unk_10051CF58;
  v43 = v61;
  v71 = v43;
  [(ADCommandCenter *)self _startSpeechRequestWithURL:v41 isNarrowBand:0 withDelegate:v10 completion:v70];
  v44 = v71;
  v45 = v60;
LABEL_34:
}

- (void)_startNonSpeechRequest:(id)a3 forDelegate:(id)a4 withInfo:(id)a5 options:(id)a6 suppressAlert:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v32 = v9;
  v19 = [[NSString alloc] initWithFormat:@"request = %@, requestInfo = %@, speechOptions = %@, suppressAlert = %d, delegate = %@", v14, v16, v17, v9, v15];
  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v43 = "[ADCommandCenter _startNonSpeechRequest:forDelegate:withInfo:options:suppressAlert:completion:]";
    v44 = 2112;
    v45 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    v20 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = [NSNumber numberWithBool:v9];
    *buf = 136315906;
    v43 = "[ADCommandCenter _startNonSpeechRequest:forDelegate:withInfo:options:suppressAlert:completion:]";
    v44 = 2112;
    v45 = v14;
    v46 = 2112;
    v47 = v15;
    v48 = 2112;
    v49 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s %@ %@ %@", buf, 0x2Au);
  }

  v23 = +[AFAnalytics sharedAnalytics];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1001EACAC;
  v40[3] = &unk_10051DF78;
  v24 = v17;
  v41 = v24;
  [v23 logEventWithType:122 contextProvider:v40];

  v25 = self->_requestGroup;
  v26 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v43 = "[ADCommandCenter _startNonSpeechRequest:forDelegate:withInfo:options:suppressAlert:completion:]";
    v44 = 2112;
    v45 = v25;
    v46 = 2112;
    v47 = v19;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_enter(v25);
  [(ADCommandCenter *)self _replaceRequestDelegate:v15 withInfo:v16 reason:2 andCompletion:v18];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001EACB4;
  v33[3] = &unk_100516250;
  v34 = v24;
  v35 = self;
  v36 = v14;
  v37 = v16;
  v38 = v25;
  v39 = v19;
  v27 = v19;
  v28 = v25;
  v29 = v16;
  v30 = v14;
  v31 = v24;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:0 suppressAlert:v32 withCompletion:v33];
}

- (void)_startRequest:(id)a3 withDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v62 = "[ADCommandCenter _startRequest:withDelegate:]";
    v63 = 2112;
    v64 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = [(ADCommandCenter *)v6 speechRequestOptions];
  v10 = +[AFAnalytics sharedAnalytics];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1001EB570;
  v59[3] = &unk_10051DF78;
  v11 = v6;
  v60 = v11;
  [v10 logEventWithType:122 contextProvider:v59];

  v12 = [(ADRemoteRequestHelper *)self->_remoteRequestHelper completion];
  v13 = [(ADRemoteRequestHelper *)self->_remoteRequestHelper remoteRequestInfo];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15;
  v17 = [(ADCommandCenter *)v11 _ad_requestCommandWithRequestHelper:self->_remoteRequestHelper];
  v18 = [(ADCommandCenter *)v11 _ad_speechRequestOptionsWithClientConfiguration:self->_clientConfiguration];
  v46 = v12;
  if (!v17)
  {
    v24 = [(ADCommandCenter *)v11 _ad_localRequestCommandWithRequestHelper:self->_remoteRequestHelper];
    if (v24)
    {
      [(ADCommandCenter *)self _startLocalRequest:v24 withRequestInfo:v16 forDelegate:v7 suppressCancelationAlertIfCapturingSpeech:1 completion:v46];
LABEL_27:

      goto LABEL_28;
    }

    v25 = [(ADCommandCenter *)v11 handoffURLString];

    if (!v25)
    {
      v17 = 0;
      if (v46)
      {
        v31 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v33 = v16;
          v34 = v9;
          v35 = v7;
          remoteRequestHelper = self->_remoteRequestHelper;
          v37 = v31;
          v38 = [(ADRemoteRequestHelper *)remoteRequestHelper remoteRequestInfo];
          *buf = 136315650;
          v62 = "[ADCommandCenter _startRequest:withDelegate:]";
          v63 = 2112;
          v64 = self;
          v65 = 2112;
          v66 = v38;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s Don't know how to make a local request for this info %@ %@", buf, 0x20u);

          v7 = v35;
          v9 = v34;
          v16 = v33;
        }

        v46[2](v46, 0, 0);
        v17 = 0;
      }

      goto LABEL_27;
    }

    v42 = v16;
    v45 = v9;
    v26 = v7;
    v27 = [NSURL alloc];
    v28 = [(ADCommandCenter *)v11 handoffURLString];
    v29 = [v27 initWithString:v28];

    if (v29)
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1001EB6C0;
      v47[3] = &unk_10051E100;
      v48 = v46;
      v30 = v29;
      [(ADCommandCenter *)self _openURL:v29 completion:v47];

      v7 = v26;
    }

    else
    {
      v30 = 0;
      v7 = v26;
      v17 = 0;
      if (!v46)
      {
LABEL_26:

        v9 = v45;
        v16 = v42;
        goto LABEL_27;
      }

      v32 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v39 = self->_remoteRequestHelper;
        v40 = v32;
        v41 = [(ADRemoteRequestHelper *)v39 remoteRequestInfo];
        *buf = 136315650;
        v62 = "[ADCommandCenter _startRequest:withDelegate:]";
        v63 = 2112;
        v64 = self;
        v65 = 2112;
        v66 = v41;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Don't know how to make a local request for this info %@ %@", buf, 0x20u);

        v7 = v26;
      }

      v46[2](v46, 0, 0);
    }

    v17 = 0;
    goto LABEL_26;
  }

  v44 = v9;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1001EB578;
  v52[3] = &unk_100517EA8;
  v52[4] = self;
  v19 = v17;
  v53 = v17;
  v43 = v7;
  v20 = v7;
  v54 = v20;
  v55 = v16;
  v56 = v18;
  v57 = v11;
  v58 = v12;
  v21 = objc_retainBlock(v52);
  v22 = [v14 text];
  if (v22 && (currentClient = self->_currentClient) != 0)
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1001EB614;
    v49[3] = &unk_100516408;
    v49[4] = self;
    v51 = v21;
    v50 = v20;
    [(ADCommandCenterClient *)currentClient adStartUIRequestWithText:v22 completion:v49];
  }

  else
  {
    (v21[2])(v21);
  }

  v17 = v19;

  v7 = v43;
  v9 = v44;
LABEL_28:
  [(ADRemoteRequestHelper *)self->_remoteRequestHelper setRemoteRequestInfo:0, v42];
  [(ADRemoteRequestHelper *)self->_remoteRequestHelper setCompletion:0];
}

- (void)_telephonyRequestCompleted
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _telephonyRequestCompleted]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _currentRequest];
  v5 = [v4 currentRequestId];

  if ([(ADCommandCenter *)self _callIsLikely]&& v5)
  {
    v6 = objc_alloc_init(SARequestCompleted);
    v7 = SiriCoreUUIDStringCreate();
    [v6 setAceId:v7];

    [v6 setRefId:v5];
    v8 = [(ADCommandCenter *)self _rootExecutionContextForRequestID:v5];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADCommandCenter _telephonyRequestCompleted]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Looking up and sending the SARequestCompleted callback for %@", &v10, 0x16u);
    }

    [(ADCommandCenter *)self _handleCommand:v6 executionContext:v8 completion:0];
  }
}

- (void)_prepareForPhoneCall
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter _prepareForPhoneCall]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [(ADCommandCenter *)self _setCallIsLikely:1];
}

- (void)_reallyEndSessionForDelegate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    speechDelegate = self->_speechDelegate;
    requestDelegate = self->_requestDelegate;
    *buf = 136315906;
    v27 = "[ADCommandCenter _reallyEndSessionForDelegate:]";
    v28 = 2048;
    v29 = v4;
    v30 = 2048;
    v31 = speechDelegate;
    v32 = 2048;
    v33 = requestDelegate;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s delegate %p, _speechDelegate %p, _requestDelegate %p", buf, 0x2Au);
  }

  if (objc_opt_respondsToSelector())
  {
    [(ADCommandCenterSpeechDelegate *)v4 setAdSpeechSessionEnded:1];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001EBE18;
  v23[3] = &unk_10051E010;
  v8 = v4;
  v24 = v8;
  v25 = self;
  v9 = objc_retainBlock(v23);
  v10 = self->_speechDelegate;
  v11 = AFSiriLogContextDaemon;
  v12 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  v13 = v10 == v8;
  if (v10 == v8)
  {
    if (v12)
    {
      *buf = 136315138;
      v27 = "[ADCommandCenter _reallyEndSessionForDelegate:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Asking command center to replace speech delegate with nil...", buf, 0xCu);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001EBF78;
    v21[3] = &unk_10051CF58;
    v22 = v9;
    [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:0 waitForRecordingToFinish:0 suppressAlert:1 withCompletion:v21];
  }

  else
  {
    if (v12)
    {
      *buf = 136315394;
      v27 = "[ADCommandCenter _reallyEndSessionForDelegate:]";
      v28 = 2048;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Ignored replacing speech delegate with nil because speech delegate is %p.", buf, 0x16u);
    }

    (v9[2])(v9);
  }

  v14 = self->_requestDelegate;
  v15 = AFSiriLogContextDaemon;
  v16 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v14 == v8)
  {
    if (v16)
    {
      *buf = 136315138;
      v27 = "[ADCommandCenter _reallyEndSessionForDelegate:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Asking command center to replace request delegate with nil...", buf, 0xCu);
    }

    [(ADCommandCenter *)self _replaceRequestDelegate:0 reason:6];
    currentClient = self->_currentClient;
    v15 = AFSiriLogContextDaemon;
    v19 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (currentClient == v8 || !currentClient)
    {
      if (v19)
      {
        *buf = 136315138;
        v27 = "[ADCommandCenter _reallyEndSessionForDelegate:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Asking command center to reset request context...", buf, 0xCu);
      }

      [(ADCommandCenter *)self _context_reset];
    }

    else if (v19)
    {
      *buf = 136315394;
      v27 = "[ADCommandCenter _reallyEndSessionForDelegate:]";
      v28 = 2048;
      v29 = currentClient;
      v17 = "%s Ignored resetting request context because current client is %p.";
      v13 = 1;
      goto LABEL_21;
    }

    v13 = 1;
    goto LABEL_26;
  }

  if (v16)
  {
    *buf = 136315394;
    v27 = "[ADCommandCenter _reallyEndSessionForDelegate:]";
    v28 = 2048;
    v29 = v14;
    v17 = "%s Ignored replacing request delegate with nil and resetting request context because request delegate is %p.";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, buf, 0x16u);
  }

LABEL_26:
  v20 = self->_currentClient;
  if (!v20 || v20 == v8)
  {
    if (v13)
    {
      [(ADSessionManager *)self->_sessionManager setHasActiveRequest:0];
    }

    [(ADCommandCenter *)self _removeAllSpeechCapturingContexts];
  }
}

- (void)_endSessionForDelegate:(id)a3
{
  v4 = a3;
  if (self->_deferredRequestEndIdentifier && (-[ADCommandCenterCurrentRequest currentRequestId](self->_currentRequest, "currentRequestId"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:self->_deferredRequestEndIdentifier], v5, v6))
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADCommandCenter _endSessionForDelegate:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s delaying session end because there is an active request", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = self->_deferredRequestEndIdentifier;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001EC18C;
    v13[3] = &unk_1005177E8;
    objc_copyWeak(&v16, buf);
    v14 = v4;
    v15 = v8;
    v9 = v8;
    v10 = objc_retainBlock(v13);
    requestEndCompletion = self->_requestEndCompletion;
    self->_requestEndCompletion = v10;

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADCommandCenter _endSessionForDelegate:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s ending session immediately", buf, 0xCu);
    }

    [(ADCommandCenter *)self _reallyEndSessionForDelegate:v4];
  }
}

- (void)_setConfiguration:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[ADCommandCenter _setConfiguration:forClient:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s configuration = %@, client = %@", &v11, 0x20u);
  }

  if (self->_currentClient == v7)
  {
    v9 = [v6 copy];
    clientConfiguration = self->_clientConfiguration;
    self->_clientConfiguration = v9;

    [(ADSpeechManager *)self->_speechManager setClientConfiguration:self->_clientConfiguration];
    [(ADCommandCenter *)self _setStarkRestriction:[(AFClientConfiguration *)self->_clientConfiguration isDeviceInStarkMode]];
    [(ADCommandCenter *)self _setCarDNDRestriction:[(AFClientConfiguration *)self->_clientConfiguration isDeviceInCarDNDMode]];
    [(ADCommandCenter *)self _setSupportsCarPlayVehicleDataRestriction:[(AFClientConfiguration *)self->_clientConfiguration supportsCarPlayVehicleData]];
    [(ADCommandCenter *)self _setCarOwnsMainAudioRestriction:[(AFClientConfiguration *)self->_clientConfiguration carOwnsMainAudio]];
    [(ADCommandCenter *)self _setWatchAuthenticated:[(AFClientConfiguration *)self->_clientConfiguration isDeviceWatchAuthenticated]];
    [(ADCommandCenter *)self _setIsEyesFree:[(AFClientConfiguration *)self->_clientConfiguration isEyesFreeDevice]];
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else if (v6)
  {
    goto LABEL_9;
  }

  if (AFIsInternalInstall())
  {
    byte_100590548 = AFFetchDeviceCarryStatus();
  }

LABEL_9:
}

- (void)_prepareForAppLaunchForRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EC43C;
  v7[3] = &unk_10051E010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_setIsTimeoutSuspended:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EC588;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)_setModesConfiguration:(id)a3
{
  v4 = a3;
  if (!self->_responseModeProvider)
  {
    v5 = objc_alloc_init(ADResponseModeProvider);
    responseModeProvider = self->_responseModeProvider;
    self->_responseModeProvider = v5;

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = self->_responseModeProvider;
      v10 = 136315394;
      v11 = "[ADCommandCenter _setModesConfiguration:]";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #modes Creating ResponseModeProvider %@", &v10, 0x16u);
    }
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter _setModesConfiguration:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s #modes Updating modesconfiguration %@", &v10, 0x16u);
  }

  [(ADResponseModeProvider *)self->_responseModeProvider updateModesConfiguration:v4];
}

- (void)_setHeadGestureRecognitionAvailability:(BOOL)a3
{
  if (self->_isHeadGestureRecognitionAvailable != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#Bobble Unset bobble availability";
      if (v3)
      {
        v6 = @"#Bobble Set bobble availability";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setHeadGestureRecognitionAvailability:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_isHeadGestureRecognitionAvailable = v3;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setCarDNDRestriction:(BOOL)a3
{
  if (self->_isInCarDNDMode != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#rhodes Remove Car DND Restriction";
      if (v3)
      {
        v6 = @"#rhodes Add Car DND Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setCarDNDRestriction:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_isInCarDNDMode = v3;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setCarOwnsMainAudioRestriction:(BOOL)a3
{
  if (self->_carOwnsMainAudio != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#CarPlay Remove carOwnsMainAudio Restriction";
      if (v3)
      {
        v6 = @"#CarPlay Add carOwnsMainAudio Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setCarOwnsMainAudioRestriction:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_carOwnsMainAudio = v3;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setSupportsCarPlayVehicleDataRestriction:(BOOL)a3
{
  if (self->_supportsCarPlayVehicleData != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#CarPlay Remove supportsVehicleData Restriction";
      if (v3)
      {
        v6 = @"#CarPlay Add supportsCarPlayVehicleData Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setSupportsCarPlayVehicleDataRestriction:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_supportsCarPlayVehicleData = v3;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setStarkRestriction:(BOOL)a3
{
  if (self->_isInStarkMode != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#CarPlay Remove Stark Restriction";
      if (v3)
      {
        v6 = @"#CarPlay Add Stark Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setStarkRestriction:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_isInStarkMode = v3;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setIsEyesFree:(BOOL)a3
{
  if (self->_isEyesFree != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#EyesFree Remove EyesFree Restriction";
      if (v3)
      {
        v6 = @"#eyesFree Add EyesFree Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setIsEyesFree:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_isEyesFree = v3;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setWatchAuthenticated:(BOOL)a3
{
  if (self->_isWatchAuthenticated != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"Not Authenticated";
      if (v3)
      {
        v6 = @"Authenticated";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setWatchAuthenticated:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #WatchAuth authenticated: %@", &v7, 0x16u);
    }

    self->_isWatchAuthenticated = v3;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setHeadphonesAuthenticated:(BOOL)a3
{
  if (self->_isHeadphonesAuthenticated != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"Not Authenticated";
      if (v3)
      {
        v6 = @"Authenticated";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setHeadphonesAuthenticated:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #HeadphonesAuth authenticated: %@", &v7, 0x16u);
    }

    self->_isHeadphonesAuthenticated = v3;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setLockState:(BOOL)a3 showingLockScreen:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = @"Unlocked";
    if (v5)
    {
      v8 = @"Locked";
    }

    v9 = @"Not on lock screen";
    v13 = "[ADCommandCenter _setLockState:showingLockScreen:]";
    v12 = 136315650;
    v15 = v8;
    v14 = 2112;
    if (v4)
    {
      v9 = @"On Lock Screen";
    }

    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@, %@", &v12, 0x20u);
  }

  v10 = v5;
  lockScreenStatus = self->_lockScreenStatus;
  self->_deviceIsLocked = v5;
  if (v4)
  {
    v10 = v5 | 2;
  }

  self->_deviceIsShowingLockScreen = v4;
  self->_lockScreenStatus = v10;
  if (v10 != lockScreenStatus)
  {
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setLanguageCode:(id)a3 outputVoice:(id)a4 isDefaultValue:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
    v68 = 2112;
    v69 = v8;
    v70 = 2112;
    v71 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  v11 = +[ADPreferences sharedPreferences];
  v12 = [v11 languageCodeWithFallback:0];
  v13 = [v11 outputVoiceWithFallback:0];
  v64 = [v11 isUsingDefaultLanguageSettings] ^ v5;
  if (v64)
  {
    [v11 setIsUsingDefaultLanguageSettings:v5];
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 1024;
      LODWORD(v69) = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Using default language settings: %d", buf, 0x12u);
    }
  }

  v65 = v12;
  if ([v8 isEqualToString:@"ADLanguageCodeKeepSame"])
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v16 = "%s Keeping language code the same";
      v17 = v15;
      v18 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if ((AFPreferencesLanguageIsSupported() & 1) == 0)
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = v8;
      v16 = "%s language code %@ is not supported for this device";
      v17 = v23;
      v18 = 22;
      goto LABEL_15;
    }

LABEL_16:
    v24 = v12;

    v25 = 0;
    v8 = v24;
LABEL_17:
    v22 = self;
    goto LABEL_18;
  }

  if (([v8 isEqualToString:v12] & 1) == 0)
  {
    [v11 setLanguageCode:v8];
    v39 = AFSiriLogContextDaemon;
    v25 = 1;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = v12;
      v70 = 2112;
      v71 = v8;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s language code changed from %@ to %@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  v19 = +[AFLocalization sharedInstance];
  v20 = [v19 allOutputVoiceIdentifiersForSiriLanguage:v8];
  v21 = [v13 languageCode];
  if ([v20 containsObject:v21])
  {

    v22 = self;
LABEL_64:
    v60 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = v8;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s no need to change language code to %@ because it is already set to that language code", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_18;
  }

  v63 = +[AFLocalization sharedInstance];
  v57 = [v63 voiceNamesForOutputLanguageCode:v8 gender:{objc_msgSend(v13, "gender")}];
  [v13 name];
  v22 = self;
  v59 = v58 = v19;
  v62 = [v57 containsObject:v59];

  if (v62)
  {
    goto LABEL_64;
  }

  v61 = AFSiriLogContextDaemon;
  v25 = 1;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
    v68 = 2112;
    v69 = v65;
    v70 = 2112;
    v26 = v13;
    v71 = v13;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s output voice language code updated to %@ due to mismatch voice info %@", buf, 0x20u);
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_18:
  v26 = v13;
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_19:
  if (v8 && ([v9 isValidForSiriSessionLanguage:v8] & 1) == 0)
  {
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = v9;
      v70 = 2112;
      v71 = v8;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s output voice %@ is not supported for language code %@ for this device", buf, 0x20u);
    }

    if (v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    v29 = v28;

    v9 = v29;
  }

LABEL_27:
  v30 = [v9 languageCode];
  v31 = [v30 length];

  if (!v31)
  {
    v32 = AFOutputVoiceLanguageForRecognitionLanguage();
    if (!v25)
    {
      v34 = v26;

LABEL_42:
      v9 = v34;
      goto LABEL_43;
    }

    if (v26)
    {
      v33 = +[AFLocalization sharedInstance];
      v34 = [v33 voiceSimilarToVoice:v26 inSiriSessionLanguage:v32];

      v35 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      *buf = 136315650;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = v34;
      v70 = 2112;
      v71 = v26;
      v36 = "%s Language code changed, using similar voice %@ to previously selected voice %@";
      v37 = v35;
      v38 = 32;
    }

    else
    {
      v34 = [AFVoiceInfo voiceInfoForLanguageCode:v32];

      v40 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      *buf = 136315394;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = v34;
      v36 = "%s Language code changed and no previous output voice selected. Using %@";
      v37 = v40;
      v38 = 22;
    }

    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, v36, buf, v38);
LABEL_38:
    if (!v34)
    {
      v41 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s Voice info nil", buf, 0xCu);
      }

      v34 = 0;
    }

    goto LABEL_42;
  }

LABEL_43:
  v42 = v22;
  v43 = [(ADCommandCenter *)v22 _outputVoice_setOutputVoice:v9];
  v44 = v43;
  v45 = v64 | v25 | v43;
  if ((v64 | v25) == 1 && (v43 & 1) == 0)
  {
    [v11 synchronize];
    v45 = 0;
  }

  if (v25)
  {
    [v11 setIsSiriFullUODSupported:0];
    [(ADAssetManager *)v42->_assetManager languageCodeWasChangedTo:v8];
    v46 = +[ADDaemon sharedDaemon];
    [v46 syncForReason:@"siri_locale_change" withCoalescing:0];

    v47 = +[SSRVoiceProfileManager sharedInstance];
    v48 = +[CSPreferences sharedPreferences];
    v49 = [v48 isPHSSupported];

    if (v49 && ([v47 isSATEnrolledForSiriProfileId:0 forLanguageCode:v8] & 1) == 0)
    {
      v50 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Disabling voice trigger", buf, 0xCu);
      }

      sub_1002161DC(0, v42->_instanceContext, 0);
    }

    v51 = v65;
  }

  else
  {
    v51 = v65;
    if ((v44 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v52 = objc_alloc_init(NSMutableDictionary);
  v53 = v52;
  if (!v26)
  {
    v54 = +[NSNull null];
    [v53 setObject:v54 forKey:@"ADSharedDataDidChangePreviousOutputVoiceKey"];

    if (v51)
    {
      goto LABEL_56;
    }

LABEL_58:
    v55 = +[NSNull null];
    [v53 setObject:v55 forKey:@"ADSharedDataDidChangePreviousLanguageCodeKey"];

    goto LABEL_59;
  }

  [v52 setObject:v26 forKey:@"ADSharedDataDidChangePreviousOutputVoiceKey"];
  if (!v51)
  {
    goto LABEL_58;
  }

LABEL_56:
  [v53 setObject:v51 forKey:@"ADSharedDataDidChangePreviousLanguageCodeKey"];
LABEL_59:
  v56 = +[NSNotificationCenter defaultCenter];
  [v56 postNotificationName:@"ADSharedDataDidChangeNotification" object:0 userInfo:v53];

LABEL_60:
  if (v45)
  {
    [v11 synchronize];
  }
}

- (void)resumeInterruptedAudioPlaybackIfNeeded
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ED998;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_forceAudioSessionInactiveWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCommandCenter _forceAudioSessionInactiveWithOptions:completion:]";
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s options = %lu", &v9, 0x16u);
  }

  speechManager = self->_speechManager;
  if (speechManager)
  {
    [(ADSpeechManager *)speechManager endSession:a3 & 1 completion:v6];
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (void)_forceAudioSessionActiveWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[ADCommandCenter _forceAudioSessionActiveWithContext:completion:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v9 = v6;
  v10 = [v9 options];
  if (self->_hasIncomingCall || self->_isInCall)
  {
    LOBYTE(v11) = 1;
    [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions setIsOnPhoneCall:1];
  }

  else
  {
    v11 = (v10 >> 1) & 1;
  }

  v12 = v9;
  if (self->_currentSpeechRequestOptions)
  {
    v13 = [v9 speechRequestOptions];
    v14 = (v13 == 0) & v11;

    v12 = v9;
    if (v14 == 1)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001EDE08;
      v17[3] = &unk_1005187C8;
      v17[4] = self;
      v12 = [v9 mutatedCopyWithMutator:v17];

      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v19 = "[ADCommandCenter _forceAudioSessionActiveWithContext:completion:]";
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s context = %@ (updated)", buf, 0x16u);
      }
    }
  }

  v16 = [(ADCommandCenter *)self _speechManager];
  [v16 prepareAudioSystemWithContext:v12 completion:v7];
}

- (void)_preheatWithStyle:(int64_t)a3 forOptions:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  kdebug_trace();
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[ADCommandCenter _preheatWithStyle:forOptions:completion:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %ld %@", &v15, 0x20u);
  }

  v11 = +[CSSiriVibrationManager sharedManager];
  if (a3 != 5)
  {
    v12 = [(ADCommandCenter *)self _sessionManager];
    [v12 preheatAndMakeQuiet:a3 == 1];
  }

  [v8 activationEvent];
  if (AFSpeechEventIsBluetooth())
  {
    v13 = +[ADBluetoothManager sharedInstance];
    v14 = [v8 activationDeviceIdentifier];
    [v13 prewarmDeviceWithIdentifier:v14];
  }

  if (v9)
  {
    v9[2](v9);
  }
}

- (void)_preheatViaRequestDispatcher
{
  v3 = [(ADCommandCenter *)self _sessionManager];
  v13 = [v3 languageCode];

  if ((AFShouldRunAsrOnServerForUOD() & 1) != 0 || AFDeviceSupportsSiriUOD())
  {
    v4 = [(ADCommandCenter *)self _updateUODAssetStatusForLanguage:v13];
  }

  if (self->_siriHybridUODSupported || self->_siriFullUODSupported)
  {
    v5 = +[ADMultiUserService sharedService];
    v6 = [v5 getDeviceOwnerSharedUserId];
    v7 = v6;
    v8 = AFMultiUserDefaultSharedUserId;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [(ADCommandCenter *)self _requestDispatcherService];
    v11 = [(ADCommandCenter *)self _account];
    v12 = [v11 assistantIdentifier];
    [v10 prewarmWithAssistantId:v12 languageCode:v13 prewarmOptions:2 sharedUserId:v9];
  }
}

- (void)_getDictationLanguages:(id)a3 options:(id)a4 speechOptions:(id)a5 delegate:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 languageDetectionUserContext];
  v18 = AFShouldUseLanguageDetector();
  v19 = AFSiriLogContextDaemon;
  v20 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (!v18)
  {
    if (v20)
    {
      *buf = 136315138;
      *&buf[4] = "[ADCommandCenter _getDictationLanguages:options:speechOptions:delegate:completion:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Language detector is unavailable/disabled. Falling back to non LID dictation flow", buf, 0xCu);
    }

    v29 = [v13 languageCodeOverride];
    v30 = AFOverrideLanguageCode();

    if (v30)
    {
      v45 = v30;
      v31 = [NSArray arrayWithObjects:&v45 count:1];
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v31 = 0;
      if (!v16)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    v16[2](v16, v30, v31);
    goto LABEL_12;
  }

  if (v20)
  {
    *buf = 136315650;
    *&buf[4] = "[ADCommandCenter _getDictationLanguages:options:speechOptions:delegate:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v47 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Trying to use language detector with language code: %@, user context: %@", buf, 0x20u);
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_1001D9498;
  v43[4] = sub_1001D94A8;
  v44 = 0;
  v21 = [v13 languageCodeOverride];
  v22 = AFOverrideLanguageCode();

  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1001EE4E8;
  v35 = &unk_1005163E0;
  v36 = self;
  v42 = v43;
  v37 = v17;
  v38 = v15;
  v23 = v22;
  v39 = v23;
  v40 = v14;
  v41 = v16;
  v24 = v37;
  v25 = &v32;
  v26 = [CSLanguageDetectorAssetMonitor sharedInstance:v32];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10023D8D8;
  v47 = &unk_10051DDC0;
  v48 = v24;
  v49 = v25;
  v27 = v25;
  v28 = v24;
  [v26 supportedLocale:buf];

  _Block_object_dispose(v43, 8);
LABEL_13:
}

- (void)UIService:(id)a3 didPresentUIResponseForCommand:(id)a4 withExecutionInfo:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EEAEC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, block);
}

- (void)UIService:(id)a3 executeHandler:(id)a4 forCommand:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    if ([(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEvent]!= 17)
    {
LABEL_30:
      v9[2](v9);
      goto LABEL_31;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v26 = 136315138;
        *&v26[4] = "[ADCommandCenter UIService:executeHandler:forCommand:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Unrelated reply to announced notification", v26, 0xCu);
      }

      v12 = +[AFAnalytics sharedAnalytics];
      v13 = v12;
      v14 = 6013;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v10 views];
      v13 = [v16 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v13 dialogIdentifier];
        if ([v17 isEqualToString:@"unsupportedFeatureIdiomDucs#unsupportedDuringRingingCall"])
        {
          v18 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *v26 = 136315138;
            *&v26[4] = "[ADCommandCenter UIService:executeHandler:forCommand:]";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Unrelated reply to announce call", v26, 0xCu);
          }

          v19 = +[AFAnalytics sharedAnalytics];
          [v19 logEventWithType:6013 context:0];

          v9[2](v9);
          goto LABEL_31;
        }
      }

      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v26 = 136315138;
        *&v26[4] = "[ADCommandCenter UIService:executeHandler:forCommand:]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Related reply to triggerless request", v26, 0xCu);
      }

      v25 = +[AFAnalytics sharedAnalytics];
      [v25 logEventWithType:6011 context:0];

      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
LABEL_19:
        v12 = +[AFAnalytics sharedAnalytics];
        v13 = v12;
        v14 = 6011;
LABEL_20:
        [v12 logEventWithType:v14 context:0];
LABEL_29:

        goto LABEL_30;
      }

      *v26 = 136315138;
      *&v26[4] = "[ADCommandCenter UIService:executeHandler:forCommand:]";
      v21 = "%s Related reply to triggerless request";
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_30;
      }

      v22 = [v10 notificationType];
      v23 = [v22 isEqualToString:SANotificationTypeConnectedCallValue];

      if (!v23)
      {
        goto LABEL_30;
      }

      v20 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *v26 = 136315138;
      *&v26[4] = "[ADCommandCenter UIService:executeHandler:forCommand:]";
      v21 = "%s Related reply to announce call request";
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v21, v26, 0xCu);
    goto LABEL_19;
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *v26 = 136315138;
    *&v26[4] = "[ADCommandCenter UIService:executeHandler:forCommand:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s called with nil command handler; returning", v26, 0xCu);
  }

LABEL_31:
}

- (void)speechManager:(id)a3 willStopRecordingWithSignpostID:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001EF148;
  v5[3] = &unk_10051D770;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (id)_handleConfidenceScores:(id)a3 classification:(unint64_t)a4 classifiedUser:(id)a5 unknownUserScore:(int64_t)a6 duration:(int64_t)a7 version:(int64_t)a8 thresholdingType:(id)a9 assetVersion:(id)a10
{
  v16 = a3;
  v17 = a5;
  v57 = a9;
  v56 = a10;
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    *&buf[4] = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
    *&buf[12] = 2113;
    v19 = v16;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s confidenceScores = %{private}@", buf, 0x16u);
    v18 = AFSiriLogContextDaemon;
  }

  else
  {
    v19 = v16;
  }

  v55 = a8;
  v20 = a6;
  v21 = v17;
  v22 = self;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136316931;
    *&buf[4] = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 2113;
    v81 = v17;
    *v82 = 2048;
    *&v82[2] = v20;
    *&v82[10] = 2048;
    *&v82[12] = a7;
    v83 = 2048;
    v84 = v55;
    v85 = 2112;
    v86 = v57;
    v87 = 2112;
    v88 = v56;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s classification = %ld, classifiedUser = %{private}@, unknownScore = %ld, duration = %ld, version = %ld, thresholdingType = %@, assetVersion = %@", buf, 0x52u);
  }

  self->_hasSentAtLeastOneUserConfidenceScore = 1;
  v23 = objc_alloc_init(SAConfidenceScores);
  v24 = v19;
  v25 = SiriCoreUUIDStringCreate();
  [v23 setAceId:v25];

  v26 = [(ADCommandCenter *)self _currentRequest];
  v27 = [v26 currentRequestId];
  [v23 setRefId:v27];

  [v23 setProcessedAudioDurationMilliseconds:a7];
  if ([v57 isEqualToString:kCSSpeakerIdentificationVTInvocationScoreThresholdingType])
  {
    v28 = &SAVoiceIDConfidenceScoresThresholdTypeVOICE_TRIGGERValue;
LABEL_10:
    v29 = *v28;
    goto LABEL_12;
  }

  if ([v57 isEqualToString:kCSSpeakerIdentificationNonVTInvocationScoreThresholdingType])
  {
    v28 = &SAVoiceIDConfidenceScoresThresholdTypeTAP_INVOCATIONValue;
    goto LABEL_10;
  }

  v29 = 0;
LABEL_12:
  [v23 setThresholdType:{v29, v29}];
  [v23 setAssetVersion:v56];
  if (a4 <= 1)
  {
    if (!a4)
    {
      [v23 setUserIdentityClassification:SAUserIdentityClassificationUnknownValue];
      goto LABEL_25;
    }

    if (a4 == 1)
    {
      [v23 setUserIdentityClassification:SAUserIdentityClassificationUnsure1Value];
      goto LABEL_25;
    }
  }

  else
  {
    switch(a4)
    {
      case 2uLL:
        [v23 setUserIdentityClassification:SAUserIdentityClassificationUnsureNValue];
        goto LABEL_25;
      case 3uLL:
        [v23 setUserIdentityClassification:SAUserIdentityClassificationKnownValue];
        goto LABEL_25;
      case 4uLL:
        [v23 setUserIdentityClassification:SAUserIdentityClassificationConfidentValue];
        goto LABEL_25;
    }
  }

  v30 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s Invalid classification: %ld", buf, 0x16u);
  }

LABEL_25:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v81 = sub_1001D9498;
  *v82 = sub_1001D94A8;
  *&v82[8] = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_1001D9498;
  v72 = sub_1001D94A8;
  v73 = 0;
  if (AFIsInternalInstall() && AFSupportsMultiUser())
  {
    v31 = +[ADMultiUserTestSupport sharedService];
    v32 = [v31 getDebugVoiceIdScores];

    v33 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v74 = 136315394;
      v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
      v76 = 2112;
      v77 = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Setting debug scores: %@", v74, 0x16u);
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = +[ADMultiUserService sharedService];
  [v34 setRawScores:v24];

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1001EFAB8;
  v58[3] = &unk_100516390;
  v64 = &v68;
  v58[4] = self;
  v35 = v32;
  v59 = v35;
  v36 = v24;
  v60 = v36;
  v61 = 0;
  v37 = v21;
  v62 = v37;
  v65 = buf;
  v66 = v20;
  v38 = v23;
  v63 = v38;
  v67 = v55;
  v39 = objc_retainBlock(v58);
  v40 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    cachedConfidenceScoresFromRemote = self->_cachedConfidenceScoresFromRemote;
    *v74 = 136315394;
    v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
    v76 = 2112;
    v77 = cachedConfidenceScoresFromRemote;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s Using cached scores: %@", v74, 0x16u);
  }

  (v39[2])(v39, self->_cachedConfidenceScoresFromRemote);
  v42 = [v69[5] objectForKey:v37];
  if (v42)
  {

    goto LABEL_34;
  }

  v44 = *(*&buf[8] + 40);
  if (!v44)
  {
LABEL_34:
    v43 = AFSiriLogContextDaemon;
    v44 = v37;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v74 = 136315394;
      v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
      v76 = 2112;
      v77 = v37;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Using classifiedUser: %@", v74, 0x16u);
      v44 = v37;
    }

    goto LABEL_39;
  }

  v45 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *v74 = 136315651;
    v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
    v76 = 2113;
    v77 = v37;
    v78 = 2113;
    v79 = v44;
    _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s There is not a score for the classifiedUser %{private}@. Using highestScoreUser %{private}@", v74, 0x20u);
    v44 = *(*&buf[8] + 40);
  }

LABEL_39:
  [v38 setClassifiedUser:v44];
  if (v35)
  {
    v46 = +[ADMultiUserTestSupport sharedService];
    v47 = [v46 getClassifiedUser];

    [v38 setClassifiedUser:v47];
    v48 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v74 = 136315394;
      v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
      v76 = 2112;
      v77 = v47;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s Overriding classifiedUser: %@", v74, 0x16u);
    }

    v49 = +[ADMultiUserTestSupport sharedService];
    v50 = [v49 getUserIdentityClassification];

    [v38 setUserIdentityClassification:v50];
    v51 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v74 = 136315394;
      v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
      v76 = 2112;
      v77 = v50;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s Overriding userIdentityClassification: %@", v74, 0x16u);
    }
  }

  else
  {
    v47 = 0;
  }

  [(ADCommandCenter *)v22 _sendCommandToServer:v38 opportunistically:0];
  v52 = v38;

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(buf, 8);

  return v52;
}

- (void)speechManager:(id)a3 didReceiveConfidenceScores:(id)a4 classification:(unint64_t)a5 classifiedUser:(id)a6 unknownUserScore:(int64_t)a7 duration:(int64_t)a8 version:(int64_t)a9 thresholdingType:(id)a10 assetVersion:(id)a11
{
  v16 = a4;
  v17 = a6;
  v18 = a10;
  v19 = a11;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F0018;
  block[3] = &unk_100516368;
  block[4] = self;
  v26 = v16;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = a5;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  dispatch_async(queue, block);
}

- (void)speechManager:(id)a3 audioSessionDidBecomeActive:(BOOL)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F00D4;
  v5[3] = &unk_10051CBD8;
  v6 = a4;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)speechManager:(id)a3 audioSessionWillBecomeActive:(BOOL)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F023C;
  v5[3] = &unk_10051CBD8;
  v6 = a4;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)speechManager:(id)a3 didChangeRecordingState:(BOOL)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F0380;
  v5[3] = &unk_10051CBD8;
  v6 = a4;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)speechManager:(id)a3 didRequestQuickStopWithContext:(id)a4
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[ADCommandCenter speechManager:didRequestQuickStopWithContext:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s This code path should not be used. Please file a radar.", &v5, 0xCu);
  }
}

- (void)_handleExtractSpeechDataCompleted:(id)a3 inResponseTo:(id)a4 completion:(id)a5
{
  v6 = a3;
  [(ADCommandCenter *)self _storeExtractedSpeechLocally:v6];
  [(ADCommandCenter *)self _invokeCompletionForCommand:v6];
}

- (void)_saQuickStop:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[ADCommandCenter _saQuickStop:executionContext:completion:]";
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s %@ %@", buf, 0x20u);
  }

  if (AFSupportsHALDeviceRouting())
  {
    if ([v9 isFromRemote])
    {
      [(ADCommandCenter *)self _handleQuickStopCommandRoutedFromRemote:v8 completion:v10];
    }

    else
    {
      v14 = [(AFRequestInfo *)self->_currentRequestInfo speechRequestOptions];
      v15 = [(ADCommandCenter *)self _directInvocationContextForSpeechRequestOptions:v14 textToSpeechEnabled:[(ADCommandCenterClient *)self->_currentClient adTextToSpeechIsMuted]^ 1];

      v16 = +[SKIMediaControlsInvocation quickStopDirectInvocationPayload];
      if (!v16)
      {
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v29 = "[ADCommandCenter _saQuickStop:executionContext:completion:]";
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Nil payload returned by SKIMediaControlsInvocation", buf, 0xCu);
        }
      }

      v18 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v15 payload:v16];
      if (!v18)
      {
        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v29 = "[ADCommandCenter _saQuickStop:executionContext:completion:]";
          v30 = 2112;
          v31 = v15;
          v32 = 2112;
          v33 = v16;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Nil RunSKE command returned by SKIDirectInvocation for context: %@, payload: %@", buf, 0x20u);
        }
      }

      v20 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v29 = "[ADCommandCenter _saQuickStop:executionContext:completion:]";
        v30 = 2112;
        v31 = v20;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Current request ID: %@", buf, 0x16u);
      }

      [v18 setRefId:v20];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001F097C;
      v25[3] = &unk_100519680;
      v26 = v8;
      v27 = v10;
      [(ADCommandCenter *)self _handleCommand:v18 executionContext:v9 completion:v25];
    }
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v22 = v12;
      v23 = objc_opt_class();
      *buf = 136315394;
      v29 = "[ADCommandCenter _saQuickStop:executionContext:completion:]";
      v30 = 2112;
      v31 = v23;
      v24 = v23;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s %@ is not supported on this platform", buf, 0x16u);
    }

    v13 = [[SACommandFailed alloc] initWithReason:@"Not supported on this platform"];
    (*(v10 + 2))(v10, v13, 0);
  }
}

- (void)_handleQuickStopCommandRoutedFromRemote:(id)a3 completion:(id)a4
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F0D00;
  v13[3] = &unk_100516318;
  v14 = a3;
  v15 = a4;
  v6 = v15;
  v7 = v14;
  v8 = objc_retainBlock(v13);
  v9 = [(ADCommandCenter *)self _contextManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001F0DD0;
  v11[3] = &unk_100516340;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 getLocalContextWithPrivacyClass:10 completion:v11];
}

- (id)_directInvocationContextForSpeechRequestOptions:(id)a3 textToSpeechEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(SKIDirectInvocationContext);
  [v6 setVoiceTriggerEnabled:sub_10000F1C0()];
  [v6 setTextToSpeechEnabled:v4];
  [v6 setEyesFree:{objc_msgSend(v5, "isEyesFree")}];
  v7 = [v5 activationEvent];

  v8 = sub_10000EF08(v7);
  [v6 setInputOrigin:v8];

  [v6 setInteractionType:SAIntentGroupAceInteractionTypeDialogDrivenValue];

  return v6;
}

- (void)speechManager:(id)a3 performTwoShotPromptWithType:(int64_t)a4 context:(id)a5 completion:(id)a6
{
  v9 = a5;
  v10 = a6;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F1478;
  v14[3] = &unk_10051C0D8;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a4;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, v14);
}

- (void)speechManager:(id)a3 languageDetectorDidFail:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F18E4;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)speechManager:(id)a3 didDetectLanguage:(id)a4 confidenceScores:(id)a5 isConfident:(BOOL)a6
{
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F1A20;
  v14[3] = &unk_10051C958;
  v14[4] = self;
  v15 = v10;
  v16 = v9;
  v17 = a6;
  v12 = v9;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (void)speechManager:(id)a3 didDetectEndpointAtTime:(double)a4 context:(id)a5
{
  v7 = a3;
  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F1CFC;
  block[3] = &unk_10051E128;
  v12 = v7;
  v13 = self;
  v14 = a4;
  v10 = v7;
  dispatch_group_notify(speechRequestGroup, queue, block);
}

- (void)speechManager:(id)a3 didDetectStartpointAtTime:(double)a4 context:(id)a5
{
  v6 = a5;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F1E7C;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)speechManager:(id)a3 recognitionDidCompleteWithError:(id)a4 secureOfflineOnlyRecognition:(BOOL)a5 sessionUUID:(id)a6 statistics:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F1FD0;
  block[3] = &unk_1005162A0;
  v23 = a5;
  v19 = v13;
  v20 = v11;
  v21 = self;
  v22 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  dispatch_async(queue, block);
}

- (void)speechManager:(id)a3 didProduceLocalLoggablePackage:(id)a4 sessionUUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2350;
  block[3] = &unk_10051DB68;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)_handleLocalSpeechRecognitionForOfflineSupport:(id)a3 logText:(BOOL)a4
{
  v6 = a3;
  v11 = objc_alloc_init(SASSpeechRecognized);
  v7 = [v6 aceRecognition];

  [v11 setRecognition:v7];
  v8 = [(SASStartSpeech *)self->_startSpeechCommand aceId];
  v9 = SiriCoreUUIDStringCreate();
  [v11 setAceId:v9];

  [v11 setRefId:v8];
  [v11 setSessionId:v8];
  if (a4)
  {
    v10 = [v11 af_bestTextInterpretation];
    [(ADCommandCenter *)self _metrics_logSpeechRecognized:v10 resultId:@"0"];
  }

  else
  {
    [(ADCommandCenter *)self _metrics_logSpeechRecognized:0 resultId:@"0"];
  }
}

- (void)speechManager:(id)a3 didRecognizePackage:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001F26CC;
  v15[3] = &unk_10051DB18;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)speechManager:(id)a3 didRecognizeRawEagerRecognitionCandidate:(id)a4 sessionUUID:(id)a5
{
  v6 = a4;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F3188;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)speechManager:(id)a3 didRecognizeTokens:(id)a4 sessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001F33D0;
  v15[3] = &unk_10051DB18;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)speechManager:(id)a3 didBeginLocalRecognitionWithContext:(id)a4 sessionUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3714;
  block[3] = &unk_10051DB68;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)speechManager:(id)a3 didFinishWritingAudioFile:(id)a4 error:(id)a5 context:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADCommandCenter speechManager:didFinishWritingAudioFile:error:context:]";
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001F3920;
  v17[3] = &unk_10051DB18;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(queue, v17);
}

- (void)speechManager:(id)a3 didFailWithError:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[ADCommandCenter speechManager:didFailWithError:context:]";
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (!v10)
  {
    v10 = [AFError errorWithCode:213];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3BAC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v14 = v10;
  v26 = v14;
  v27 = v11;
  v15 = v11;
  dispatch_async(queue, block);
  speechRequestGroup = self->_speechRequestGroup;
  v17 = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001F3BC0;
  v20[3] = &unk_10051DBB8;
  v21 = v9;
  v22 = self;
  v23 = v14;
  v24 = a2;
  v18 = v14;
  v19 = v9;
  dispatch_group_notify(speechRequestGroup, v17, v20);
}

- (void)speechManager:(id)a3 didCancelWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADCommandCenter speechManager:didCancelWithContext:]";
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3F54;
  block[3] = &unk_10051E010;
  block[4] = self;
  v18 = v7;
  v10 = v7;
  dispatch_async(queue, block);
  speechRequestGroup = self->_speechRequestGroup;
  v12 = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F3F60;
  v14[3] = &unk_10051E010;
  v15 = v6;
  v16 = self;
  v13 = v6;
  dispatch_group_notify(speechRequestGroup, v12, v14);
}

- (void)speechManager:(id)a3 didFinishWithCapturingMode:(int64_t)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v27 = "[ADCommandCenter speechManager:didFinishWithCapturingMode:context:]";
    v28 = 2048;
    v29 = a4;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s capturingMode = %zd, context = %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4284;
  block[3] = &unk_10051E010;
  block[4] = self;
  v12 = v9;
  v25 = v12;
  dispatch_async(queue, block);
  speechRequestGroup = self->_speechRequestGroup;
  v14 = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001F42E0;
  v20[3] = &unk_10051E128;
  v15 = v8;
  v21 = v15;
  v22 = self;
  v23 = a4;
  dispatch_group_notify(speechRequestGroup, v14, v20);
  v16 = AFIsNano();
  if (a4 == 1 && v16)
  {
    v17 = AFSiriLogContextDaemon;
    v18 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    v19 = kAssistantDarwinNotificationSpeechCaptureFinished;
    if (v18)
    {
      *buf = 136315394;
      v27 = "[ADCommandCenter speechManager:didFinishWithCapturingMode:context:]";
      v28 = 2080;
      v29 = kAssistantDarwinNotificationSpeechCaptureFinished;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Post XPC event to notifyd: %s", buf, 0x16u);
    }

    notify_post(v19);
  }
}

- (void)speechManager:(id)a3 didReceiveLastAudioBufferWithEndpointMode:(int64_t)a4 totalPacketCount:(int64_t)a5 endpointerMetrics:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v29 = "[ADCommandCenter speechManager:didReceiveLastAudioBufferWithEndpointMode:totalPacketCount:endpointerMetrics:context:]";
    v30 = 2048;
    v31 = a4;
    v32 = 2048;
    v33 = a5;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s endpointMode = %zd, totalPacketCount = %zd, endpointerMetrics = %@, context = %@", buf, 0x34u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4584;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
  speechRequestGroup = self->_speechRequestGroup;
  v18 = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001F463C;
  v21[3] = &unk_10051D628;
  v25 = a5;
  v26 = a4;
  v22 = v12;
  v23 = v13;
  v24 = self;
  v19 = v13;
  v20 = v12;
  dispatch_group_notify(speechRequestGroup, v18, v21);
}

- (void)speechManagerDidDelayEndpointForMusic:(id)a3
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter speechManagerDidDelayEndpointForMusic:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)speechManagerDidDetectMusic:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADCommandCenter speechManagerDidDetectMusic:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F49A8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_group_notify(speechRequestGroup, queue, block);
}

- (void)speechManager:(id)a3 capturedFingerprint:(id)a4 duration:(double)a5
{
  v7 = a4;
  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4A68;
  block[3] = &unk_10051E128;
  block[4] = self;
  v12 = v7;
  v13 = a5;
  v10 = v7;
  dispatch_group_notify(speechRequestGroup, queue, block);
}

- (void)speechManager:(id)a3 capturedPackets:(id)a4 atTimestamp:(double)a5 totalCount:(int64_t)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  if ([a7 wantsRecordedAudioBufferLogs])
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      *buf = 136315906;
      v26 = "[ADCommandCenter speechManager:capturedPackets:atTimestamp:totalCount:context:]";
      v27 = 2048;
      v28 = [v13 count];
      v29 = 2048;
      v30 = a5;
      v31 = 2048;
      v32 = a6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s packets.count = %llu, timestamp = %f, count = %lld", buf, 0x2Au);
    }
  }

  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4C28;
  block[3] = &unk_10051D628;
  block[4] = self;
  v21 = v12;
  v24 = a5;
  v22 = v13;
  v23 = a6;
  v18 = v13;
  v19 = v12;
  dispatch_group_notify(speechRequestGroup, queue, block);
}

- (void)speechManager:(id)a3 didUpdateRecordingWithInfo:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4FE8;
  block[3] = &unk_10051DB68;
  v23 = v8;
  v24 = self;
  v13 = v9;
  v25 = v13;
  v14 = v8;
  dispatch_group_notify(speechRequestGroup, queue, block);
  v15 = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001F5210;
  v18[3] = &unk_10051DB68;
  v19 = v13;
  v20 = self;
  v21 = v10;
  v16 = v10;
  v17 = v13;
  dispatch_async(v15, v18);
}

- (void)speechManager:(id)a3 didStartRecordingWithInfo:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F5634;
  block[3] = &unk_10051DB18;
  block[4] = self;
  v12 = v9;
  v33 = v12;
  v13 = v10;
  v34 = v13;
  v14 = v8;
  v35 = v14;
  dispatch_async(queue, block);
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v12 route];
    *buf = 136315394;
    v37 = "[ADCommandCenter speechManager:didStartRecordingWithInfo:context:]";
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Recording started on route: %@", buf, 0x16u);
  }

  speechRequestGroup = self->_speechRequestGroup;
  v19 = self->_queue;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1001F5750;
  v27 = &unk_10051DB18;
  v28 = self;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_group_notify(speechRequestGroup, v19, &v24);
  v23 = [SNNetworkActivityTracing sharedInstance:v24];
  [v23 networkActivityStart:3 activate:1 completion:0];
}

- (void)speechManager:(id)a3 willStartRecordingAtTimestamp:(double)a4 isFromFile:(BOOL)a5 inputAudioPowerWrapper:(id)a6 context:(id)a7
{
  v9 = a6;
  v10 = a7;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADCommandCenter speechManager:willStartRecordingAtTimestamp:isFromFile:inputAudioPowerWrapper:context:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F5B9C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v16 = v9;
  v17 = v10;
  v13 = v10;
  v14 = v9;
  dispatch_async(queue, block);
}

- (void)_sendContextAndRestrictionsForSpeechRequestWithInfo:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter _sendContextAndRestrictionsForSpeechRequestWithInfo:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Recording info: %@", &v7, 0x16u);
  }

  v6 = [(ADCommandCenter *)self _requestDelayManager];
  [v6 releaseStoredContextCommandsAndSendCommands:1];

  if (([v4 isDictation] & 1) == 0)
  {
    [(ADCommandCenter *)self _context_updateContext];
  }

  [(ADCommandCenter *)self _sendRestrictionsInPreparationForRequest];
}

- (void)_sendGizmoSharedDataIfNeeded
{
  if (AFSupportsPairedDevice() && (AFIsNano() & 1) == 0)
  {

    [(ADCommandCenter *)self sendGizmoData];
  }
}

- (void)_sendEnableServerEndpointerCommandWithRefID:(id)a3
{
  v4 = a3;
  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 isAccessibleEndpointerEnabled];

  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADCommandCenter _sendEnableServerEndpointerCommandWithRefID:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Don't enable server endpointer when accessible endpointer is enabled", &v10, 0xCu);
    }
  }

  else
  {
    v8 = objc_alloc_init(SASEnableServerEndpointer);
    [v8 setRefId:v4];
    [(ADCommandCenter *)self _sendCommandToServer:v8];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADCommandCenter _sendEnableServerEndpointerCommandWithRefID:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Sent enable server endpointer command.", &v10, 0xCu);
    }
  }
}

- (void)_trySendingShowRequestHandlingStatusForAsrOnDevice:(BOOL)a3 startSpeechRequestId:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = &SAUIShowRequestHandlingStatusAsrStatusON_DEVICEValue;
  if (!v4)
  {
    v7 = &SAUIShowRequestHandlingStatusAsrStatusON_SERVERValue;
  }

  v8 = *v7;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v17 = "[ADCommandCenter _trySendingShowRequestHandlingStatusForAsrOnDevice:startSpeechRequestId:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #AsrOnServer Sending SAUIShowRequestHandlingStatus with asrStatus = %@ for startSpeechRequestId = %@", buf, 0x20u);
  }

  if (AFIsInternalInstall())
  {
    v10 = objc_alloc_init(SAUIShowRequestHandlingStatus);
    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];
    [v10 setAceId:v12];

    [v10 setRefId:v6];
    [v10 setAsrStatus:v8];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001F605C;
    v13[3] = &unk_100515DF8;
    v14 = v8;
    v15 = v6;
    [(ADCommandCenter *)self handleCommand:v10 completion:v13];
  }
}

- (void)_sendStartSpeechCommandWithSpeechManager:(id)a3 info:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
    v164 = 2112;
    v165 = v9;
    v166 = 2112;
    v167 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s info = %@, context = %@", buf, 0x20u);
  }

  [(ADCommandCenter *)self _sendContextAndRestrictionsForSpeechRequestWithInfo:v9];
  v152 = v8;
  if ([(NSString *)v9 isDictation])
  {
    v12 = [v8 dictationOptions];
    v13 = [v12 transcriptionMode];
    v148 = v13 == 0;
    if (v13)
    {
      if ([v12 transcriptionMode] != 3)
      {
        v17 = objc_alloc_init(SASStartStructuredDictationSpeechRequest);
        [v17 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
        v53 = [v12 transcriptionMode];
        if (v53 == 1)
        {
          v65 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "%s starting location dictation request", buf, 0xCu);
          }

          v55 = &SAStartStructuredDictationRequestStructuredDictationTypePLACEValue;
        }

        else
        {
          if (v53 != 2)
          {
LABEL_44:

            goto LABEL_45;
          }

          v54 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s starting person dictation request", buf, 0xCu);
          }

          v55 = &SAStartStructuredDictationRequestStructuredDictationTypePERSONValue;
        }

        [v17 setStructuredDictationType:*v55];
        goto LABEL_44;
      }

      v14 = [v8 dictationLanguages];
      if ([v14 count])
      {
        v15 = [v8 dictationLanguages];
        v16 = [v15 firstObject];
      }

      else
      {
        v16 = 0;
      }

      v58 = objc_alloc_init(SASPronunciationContext);
      pronunciationContext = self->_pronunciationContext;
      self->_pronunciationContext = v58;

      [(SASPronunciationContext *)self->_pronunciationContext setTokenOffset:&off_100533BC0];
      [(SASPronunciationContext *)self->_pronunciationContext setDomainObjectPropertyIdentifier:@"PhonemeTranscription"];
      v60 = self->_pronunciationContext;
      v61 = [v12 orthography];
      [(SASPronunciationContext *)v60 setOrthography:v61];

      [(SASPronunciationContext *)self->_pronunciationContext setLanguage:v16];
      v17 = objc_alloc_init(SASStartPronunciationRequest);
      v62 = [(ADCommandCenter *)self _currentRequest];
      v63 = [v62 currentRequestCommand];
      [v17 ad_setParentRequest:v63];

      v64 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions serverCommandId];
      [v17 setRefId:v64];

      [v17 setContext:self->_pronunciationContext];
    }

    else
    {
      v16 = [v8 dictationLanguages];
      v17 = [SASStartSpeechDictation ad_startSpeechDictationWithAFDictationOptions:v12];
      [v17 setLanguages:v16];
      v38 = +[NSLocale currentLocale];
      v39 = [v38 localeIdentifier];
      [v17 setRegion:v39];

      [v17 setCensorSpeech:sub_100214D74()];
      v40 = [v17 applicationName];

      if (!v40)
      {
        v41 = +[NSBundle mainBundle];
        v42 = [v41 bundleIdentifier];
        [v17 setApplicationName:v42];
      }

      v43 = [v17 applicationName];
      v44 = [v43 isEqualToString:@"OnDeviceDictationAudioData"];

      if (v44)
      {
        v45 = [v12 samplingInfo];
        v46 = v45;
        if (v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = &stru_10051F508;
        }

        [v17 setSelectedText:v47];
      }

      v48 = [v17 applicationVersion];

      if (!v48)
      {
        v49 = +[NSBundle mainBundle];
        v50 = [v49 objectForInfoDictionaryKey:kCFBundleVersionKey];
        [v17 setApplicationVersion:v50];
      }

      v51 = [v17 interactionId];

      if (!v51)
      {
        v52 = SiriCoreUUIDStringCreate();
        [v17 setInteractionId:v52];
      }
    }

    goto LABEL_44;
  }

  [v8 setDictationOptions:0];
  if (self->_startingPronunciationRequest)
  {
    v17 = objc_alloc_init(SASStartPronunciationRequest);
    v18 = [(ADCommandCenter *)self _currentRequest];
    v19 = [v18 currentRequestCommand];
    [v17 ad_setParentRequest:v19];

    v20 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions serverCommandId];
    [v17 setRefId:v20];

    [v17 setContext:self->_pronunciationContext];
    v148 = 0;
LABEL_45:
    v56 = 0;
    v57 = 0;
    goto LABEL_46;
  }

  v21 = v10;
  v22 = objc_alloc_init(SASStartSpeechRequest);
  if (AFIsHorseman())
  {
    v23 = [(ADCommandCenter *)self _locationManager];
    v24 = [v23 createSetRequestOrigin];
    [v22 setSetRequestOrigin:v24];
  }

  [v22 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
  v25 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  [v22 setResponseMode:v25];
  v26 = +[AFPreferences sharedPreferences];
  [v22 setAutoPunctuationEnabled:{objc_msgSend(v26, "dictationAutoPunctuationEnabled")}];

  v27 = [(ADCommandCenter *)self _bargeInModes];
  if ([v27 count])
  {
    [v22 setBargeInModes:v27];
  }

  v28 = [v8 endpointerModelVersion];
  [v22 setClientModelVersion:v28];

  v29 = [(ADCommandCenter *)self _approximatePreviousTTSInterval:v22];
  v30 = v22;
  if (self->_siriHybridUODSupported)
  {
    v31 = objc_alloc_init(SASStartAsrOnServerRequest);
    [v31 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
    v32 = [v30 bargeInModes];
    [v31 setBargeInModes:v32];

    [v31 setAutoPunctuationEnabled:{objc_msgSend(v30, "autoPunctuationEnabled")}];
    v33 = [v30 clientModelVersion];
    [v31 setClientModelVersion:v33];

    [v31 setRunCamFtm:&__kCFBooleanFalse];
    v34 = v31;

    v35 = 0;
    v36 = v34;
    v37 = v21;
  }

  else
  {
    v37 = v21;
    if (self->_siriFullUODSupported)
    {
      v35 = [(ADCommandCenter *)self _startServerRequestWithSpeechRequest:v30 recordingContext:v21 recordingInfo:v9];
      v36 = 0;
    }

    else
    {
      v36 = 0;
      v35 = 0;
    }

    v34 = v30;
  }

  v148 = 0;
  v17 = v34;
  v56 = v36;
  v57 = v35;
  v10 = v37;
  v8 = v152;
LABEL_46:
  v155 = v57;
  if (!self->_currentSpeechRequestOptions && ([(NSString *)v9 isDictation]& 1) == 0 && AFIsInternalInstall())
  {
    v66 = +[SiriCoreSymptomsReporter sharedInstance];
    v67 = +[NSProcessInfo processInfo];
    v68 = [v67 processIdentifier];
    [v66 reportIssueForType:@"start_speech_request_without_speech_request_options" subType:0 context:0 processIdentifier:v68 walkboutStatus:byte_100590548];

    v57 = v155;
  }

  [v17 ad_setAFSpeechRequestOptions:self->_currentSpeechRequestOptions];
  [v17 ad_setCSSiriRecordingInfo:v9];
  v69 = [v10 sessionUUID];
  [v17 setAceId:v69];

  if (AFIsInternalInstall())
  {
    v70 = [NSNumber numberWithBool:byte_100590548];
    [v17 setIsCarryDevice:v70];
  }

  v71 = self->_motionManager;
  v72 = [(ADMotionManager *)v71 motionActivity];
  [v17 setMotionActivity:v72];

  v154 = v71;
  v73 = [(ADMotionManager *)v71 motionConfidence];
  [v17 setMotionConfidence:v73];

  [(ADCommandCenterClient *)self->_currentClient adInvalidateCurrentUserActivity];
  v153 = v56;
  if (v57)
  {
    v74 = v57;
    v75 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
      v164 = 2112;
      v165 = v74;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "%s Sending %@ instead of StartSpeechRequest since session supports understanding on device", buf, 0x16u);
    }
  }

  else
  {
    if (v56)
    {
      v74 = v56;
      v76 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v77 = v76;
      v78 = [(NSString *)v74 origin];
      v79 = [(NSString *)v74 audioSource];
      *buf = 136315906;
      v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
      v164 = 2112;
      v165 = v74;
      v166 = 2112;
      v167 = v78;
      v168 = 2112;
      v169 = v79;
      v80 = "%s #AsrOnServer Sending %@ (origin = %@, source = %@)...instead of StartSpeechRequest since session supports understanding on device and ASR is on server.";
    }

    else
    {
      v74 = v17;
      v81 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v77 = v81;
      v78 = [(NSString *)v74 origin];
      v79 = [(NSString *)v74 audioSource];
      *buf = 136315906;
      v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
      v164 = 2112;
      v165 = v74;
      v166 = 2112;
      v167 = v78;
      v168 = 2112;
      v169 = v79;
      v80 = "%s Sending %@ (origin = %@, source = %@)...";
    }

    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, v80, buf, 0x2Au);

    v56 = v153;
    v57 = v155;
  }

LABEL_61:
  if ([(NSString *)v9 isDictation])
  {
    v82 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_73;
    }

    *buf = 136315138;
    v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
    v83 = "%s Not checking _areRequiredAssetsMissing since this is a Dictation request.";
    goto LABEL_64;
  }

  if (![(ADCommandCenter *)self _areRequiredAssetsMissing])
  {
LABEL_73:
    objc_opt_class();
    v147 = v9;
    v149 = v17;
    v150 = v10;
    v151 = v74;
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_siriUODSupported)
    {
      v89 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
      v90 = [(NSString *)v9 speechEvent]== 17;
      v91 = [SMTRequestContextData alloc];
      v157[0] = _NSConcreteStackBlock;
      v157[1] = 3221225472;
      v157[2] = sub_1001F7818;
      v157[3] = &unk_1005161A8;
      v92 = v17;
      v158 = v92;
      v146 = v89;
      v159 = v146;
      v160 = self;
      v161 = v90;
      v93 = [v91 initWithBuilder:v157];
      v94 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
      {
        v95 = v94;
        v96 = [v93 userProfileMetadata];
        *buf = 136315394;
        v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
        v164 = 2112;
        v165 = v96;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%s #shih updating SMTRequestContextData %@", buf, 0x16u);
      }

      if ([(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions isTest])
      {
        [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions testRequestOptions];
        v98 = v97 = v74;
        v144 = [(ADCommandCenter *)self _requestDispatcherService];
        v145 = [(ADCommandCenter *)self _account];
        v99 = [v145 assistantIdentifier];
        v100 = [(NSString *)v97 aceId];
        v101 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions disableASR];
        v102 = [v92 origin];
        v143 = [(ADCommandCenter *)self _locationManager];
        v103 = [v143 knownLocation];
        v104 = [v98 jitContext];
        v105 = [v98 overrideModelPath];
        [v144 startTestSpeechRequestWithAssistantId:v99 requestId:v100 enableASR:v101 ^ 1 inputOrigin:v102 location:v103 jitContext:v104 overrideModelPath:v105 requestContextData:v93];

        dynamicContextEmitter = self->_dynamicContextEmitter;
        v107 = [(NSString *)v151 aceId];
        [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:v107];
      }

      else
      {
        v108 = [(ADCommandCenter *)self _requestDispatcherService];
        v109 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
        v110 = [(NSString *)v74 aceId];
        [v92 origin];
        v112 = v111 = v74;
        v113 = [(ADCommandCenter *)self _locationManager];
        v114 = [v113 knownLocation];
        [v108 startSpeechRequestWithConfiguration:v109 requestId:v110 inputOrigin:v112 location:v114 asrOnServer:self->_siriHybridUODSupported requestContextData:v93];

        v115 = self->_dynamicContextEmitter;
        v98 = [(NSString *)v111 aceId];
        [(ADDynamicContextEmitter *)v115 emitForRequest:v98];
      }

      v17 = v149;
      v10 = v150;
      v56 = v153;
      v57 = v155;
      v74 = v151;
    }

    [(ADCommandCenter *)self _sendRetryableRequestToServer:v74];
    v116 = [v17 aceId];
    if (v57)
    {
      v117 = v57;
    }

    else if (v56)
    {
      v117 = v56;
    }

    else
    {
      v117 = v17;
    }

    [(ADCommandCenter *)self _setCurrentRequestWithCommand:v117];
    [v10 updateStartSpeechId:v116];
    objc_storeStrong(&self->_startSpeechCommand, v17);
    if (self->_siriFullUODSupported)
    {
      v118 = SiriCoreUUIDStringCreate();
      speechRecognitionResultUUID = self->_speechRecognitionResultUUID;
      self->_speechRecognitionResultUUID = v118;
    }

    v120 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v121 = self->_speechRecognitionResultUUID;
      *buf = 136315650;
      v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
      v164 = 2112;
      v165 = v121;
      v166 = 2112;
      v167 = v116;
      _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "%s StartSpeech resultUUID : %@ AceID : %@", buf, 0x20u);
    }

    v122 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
    v123 = +[ADDaemon processLaunchMachTime];
    v124 = +[ADDaemon processLoadedMachTime];
    hasReceivedFirstRequest = self->_hasReceivedFirstRequest;
    v126 = v122;
    v127 = sub_1000105F4(v126);
    if (v127)
    {
      v128 = objc_alloc_init(ORCHSchemaORCHClientEvent);
      v129 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
      [v129 setRequestId:v127];
      [v128 setEventMetadata:v129];
      v130 = objc_alloc_init(ORCHSchemaORCHAssistantDaemonLaunchMetadataReported);
      [v130 setAssistantDaemonSpawnTimestampInNs:v123];
      [v130 setAssistantDaemonLoadedTimestampInNs:v124];
      [v130 setIsFirstRequest:!hasReceivedFirstRequest];
      [v128 setAssistantdLaunchMetadataReported:v130];
      v131 = +[AssistantSiriAnalytics sharedStream];
      [v131 emitMessage:v128];
    }

    else
    {
      v132 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v163 = "_EmitDaemonLaunchMetadataReportedForRequestId";
        v164 = 2112;
        v165 = v126;
        _os_log_error_impl(&_mh_execute_header, v132, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed, unable to log SELF command", buf, 0x16u);
      }
    }

    v88 = v155;

    self->_hasReceivedFirstRequest = 1;
    self->_speechHasAcceptedResultCandidate = 0;
    selectedResultCandidate = self->_selectedResultCandidate;
    self->_speechAcceptedResultCandidateDuration = 0.0;
    self->_selectedResultCandidate = 0;

    *&self->_hasReceivedAtLeastOneResultCandidate = 0;
    v8 = v152;
    v17 = v149;
    [v152 setContext:v149];
    [v152 setIsDriving:{-[ADMotionManager isDriving](v154, "isDriving")}];
    [(ADCommandCenter *)self _trySendingShowRequestHandlingStatusForAsrOnDevice:v155 != 0 startSpeechRequestId:v116];
    v10 = v150;
    if (v148)
    {
      v134 = _AFPreferencesMultilingualDictationTimeoutInMilliSeconds();
      v135 = v134;
      if (v134)
      {
        v136 = v134;
      }

      else
      {
        v136 = &off_1005343D0;
      }

      v137 = +[AFPreferences sharedPreferences];
      v138 = [v137 isLanguageDetectorEnabledByServer];

      v139 = objc_alloc_init(SASGetMultilingualDictationConfig);
      [v139 setMultilingualDisabled:v138 ^ 1];
      [v139 setMultilingualTimeoutInMillis:v136];
      v156[0] = _NSConcreteStackBlock;
      v156[1] = 3221225472;
      v156[2] = sub_1001F7ABC;
      v156[3] = &unk_10051B168;
      v156[4] = self;
      [(ADCommandCenter *)self _sendCommandToServer:v139 completion:v156];

      v88 = v155;
    }

    v56 = v153;
    v74 = v151;
    if (self->_isSmartLanguageSelectionActive)
    {
      v140 = [v116 copy];
      [v152 setEARLanguageDetectorSpeechRequestId:v140];
    }

    if (CSSiriSpeechRecordingGetUsesServerEndpointingFromRequestOptions())
    {
      v141 = [v149 aceId];
      [(ADCommandCenter *)self _sendEnableServerEndpointerCommandWithRefID:v141];
    }

    else
    {
      v142 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
        _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "%s Skipped enable server endpointer command because ADSpeechCapturingGetUsesServerEndpointingFromRequestOptions == NO", buf, 0xCu);
      }
    }

    [(ADCommandCenter *)self _sendLocationIfNeededForRequest];
    [(ADCommandCenter *)self _sendGizmoSharedDataIfNeeded];

    v9 = v147;
    goto LABEL_106;
  }

  v84 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
    _os_log_debug_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, "%s _areRequiredAssetsMissing is true even when the device supports UOD", buf, 0xCu);
  }

  currentUodStatus = self->_currentUodStatus;
  v86 = [(NSString *)v74 aceId];
  sub_1001F75A8(self, currentUodStatus, v86);

  LODWORD(v86) = [(ADCommandCenter *)self _shouldImmediatelyDismissSiriDueToMissingRequiredAssets];
  v82 = AFSiriLogContextDaemon;
  v87 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (!v86)
  {
    v57 = v155;
    if (v87)
    {
      *buf = 136315138;
      v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
      v83 = "%s Not dismissing Siri request due to lack of assets.";
LABEL_64:
      _os_log_debug_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, v83, buf, 0xCu);
      goto LABEL_73;
    }

    goto LABEL_73;
  }

  if (v87)
  {
    *buf = 136315138;
    v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
    _os_log_debug_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "%s [_sendStartSpeechCommandWithSpeechManager] Dismissing Siri with reason AFDismissalAssetsNotReady", buf, 0xCu);
  }

  [(ADCommandCenter *)self dismissAssistantWithReason:5];
  v88 = v155;
LABEL_106:
}

- (void)speechManager:(id)a3 preheatWithRecordingInfo:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001F7C30;
  v16[3] = &unk_10051DB18;
  v17 = v9;
  v18 = self;
  v19 = v8;
  v20 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  dispatch_group_notify(speechRequestGroup, queue, v16);
}

- (void)speechManager:(id)a3 recognitionUpdateWillBeginForTask:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCommandCenter speechManager:recognitionUpdateWillBeginForTask:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F7DB4;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(queue, v9);
}

- (BOOL)canLogWithSpeechManager:(id)a3
{
  v3 = a3;
  if (AFIsInternalInstall())
  {
    v4 = [v3 dictationOptions];
    if ([v4 forceOfflineRecognition])
    {
      v5 = +[AFPreferences sharedPreferences];
      v6 = [v5 siriDataSharingOptInStatus] == 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)assistantSessionManager:(id)a3 willRetryOnError:(id)a4
{
  selectedResultCandidate = self->_selectedResultCandidate;
  self->_selectedResultCandidate = 0;
  v6 = a4;

  self->_hasReceivedAtLeastOneResultCandidate = 0;
  [(ADCommandCenterRequestDelegate *)self->_requestDelegate adRequestEncounteredIntermediateError:v6];
}

- (void)assistantSessionManagerDidDestroyAssistant:(id)a3
{
  [(ADCommandCenter *)self _metrics_destroyAllMetricsIfNeeded];

  [(ADCommandCenter *)self _shutdownSessionWhenIdle];
}

- (void)assistantSessionManagerDidCreateAssistant:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
}

- (void)assistantSessionManager:(id)a3 didChangeRequestIdFrom:(id)a4 toId:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADCommandCenter assistantSessionManager:didChangeRequestIdFrom:toId:]";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Session is changing our request identifier from %@ to %@. Should not be called.", &v9, 0x20u);
  }
}

- (id)assistantSessionManagerCommandsToRestoreStateOnNewConnection:(id)a3
{
  if (self->_isInStarkMode)
  {
    v3 = objc_alloc_init(SAUpdateRestrictions);
    v8 = SADeviceRestrictionSTARKValue;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
    [v3 setRestrictionsToAdd:v4];

    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)assistantSessionManagerSessionRemoteConnectionDidReset:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter assistantSessionManagerSessionRemoteConnectionDidReset:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  v5 = [(ADCommandCenter *)self _locationManager];
  [v5 setNeedsToSendLocation:1];

  self->_restrictionsWereSetForRequest = 0;
  [(ADCommandCenter *)self _sync_reset];
}

- (void)assistantSessionManagerSessionConnectionDidReset:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter assistantSessionManagerSessionConnectionDidReset:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  v5 = [(ADCommandCenter *)self _locationManager];
  [v5 setNeedsToSendLocation:1];

  self->_restrictionsWereSetForRequest = 0;
}

- (BOOL)assistantSessionManagerShouldAttemptRetry:(id)a3
{
  v4 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestCommand];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = [(ADSpeechManager *)self->_speechManager isLocallyRecognizing];

  if (!v5)
  {
LABEL_6:
    LOBYTE(v7) = self->_startSpeechCommand != 0;
    return v7;
  }

  v6 = AFSiriLogContextSession;
  v7 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (v7)
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter assistantSessionManagerShouldAttemptRetry:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Telling session not to retry because local dictation is active", &v9, 0xCu);
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)assistantSessionManager:(id)a3 receivedError:(id)a4 isRetryableError:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[ADCommandCenter assistantSessionManager:receivedError:isRetryableError:]";
    v15 = 2114;
    v16 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %{public}@", &v13, 0x16u);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  if ([(ADCommandCenter *)self _shouldRetryForError:v9])
  {
    [(ADCommandCenterRequestDelegate *)self->_requestDelegate adRequestEncounteredIntermediateError:v9];
    if (self->_currentRequest)
    {
      [(ADSessionManager *)self->_sessionManager startRetry];
    }

    goto LABEL_14;
  }

LABEL_7:
  [(ADSessionManager *)self->_sessionManager resetRetryManager];
  if (AFDeviceSupportsFullSiriUOD() && ![(ADSessionManager *)self->_sessionManager hasSessionRequiringServerConnection])
  {
    self->_sessionExperiencedError = 1;
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[ADCommandCenter assistantSessionManager:receivedError:isRetryableError:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Ignoring session error because Siri supports Full UOD, and server connection is not required.", &v13, 0xCu);
    }

    [(ADSessionManager *)self->_sessionManager cancelSessions];
    [(ADCommandCenter *)self _invokeAllCompletionsWithError:v9];
  }

  else
  {
    [(ADSessionManager *)self->_sessionManager cancelSessions];
    [(ADCommandCenter *)self _sessionDidFailWithError:v9];
  }

  v12 = +[SNNetworkActivityTracing sharedInstance];
  [v12 networkActivityTracingCancel:0];

LABEL_14:
  [(ADCommandCenter *)self _sync_reset];
}

- (BOOL)_shouldRetryForError:(id)a3
{
  if (!self->_requestDelegate && !self->_speechDelegate)
  {
    return 0;
  }

  resultObjectCache = self->_resultObjectCache;
  v5 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  if ([(ADResultObjectCache *)resultObjectCache hasResultObjectsForRequestId:v5])
  {
    v6 = self->_speechManagerState != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_sessionDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  if (!-[ADResultObjectCache hasResultObjectsForRequestId:](self->_resultObjectCache, "hasResultObjectsForRequestId:", v5) || -[ADResultObjectCache hasMissingRefContextsForId:](self->_resultObjectCache, "hasMissingRefContextsForId:", v5) || ([v4 ad_isInAssistantErrorDomain] & 1) != 0)
  {
    if ([v4 ad_isInAssistantErrorDomain])
    {
      v6 = [v4 code];
      if (!v5 && v6 == 33)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = [AFError errorWithCode:4 description:0 underlyingError:v4];

      v8 = +[SNNetworkActivityTracing sharedInstance];
      [v8 networkActivityStop:1 withReason:4 andError:v7 completion:0];

      v4 = v7;
    }

    self->_sessionExperiencedError = 1;
    v9 = [(ADSpeechManager *)self->_speechManager isLocallyRecognizingInDictationMode];
    v10 = AFSiriLogContextDaemon;
    v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        v16 = 136315394;
        v17 = "[ADCommandCenter _sessionDidFailWithError:]";
        v18 = 2112;
        v19 = v4;
        v12 = "%s Ignoring session error (%@) because the speech manager is doing local speech recognition in dictation mode";
        v13 = v10;
        v14 = 22;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v12, &v16, v14);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (v11)
    {
      v16 = 136315138;
      v17 = "[ADCommandCenter _sessionDidFailWithError:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Propagating session error because the speech manager is not doing local speech recognition or is not in dictation mode", &v16, 0xCu);
    }

    [(ADCommandCenter *)self _endSpeechRequestForCommand:0 withError:v4 suppressAlert:0 secureOfflineOnlyDictation:0];
    [(ADCommandCenter *)self _acousticId_sessionFailed];
LABEL_15:
    [(ADCommandCenter *)self _invokeAllCompletionsWithError:v4];
    goto LABEL_19;
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[ADCommandCenter _sessionDidFailWithError:]";
    v12 = "%s Ignoring session error since we're in a callback context";
    v13 = v15;
    v14 = 12;
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_handleClientReply:(id)a3 error:(id)a4 forSessionCommand:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v26 = 136315906;
    v27 = "[ADCommandCenter _handleClientReply:error:forSessionCommand:]";
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@ %@ %@", &v26, 0x2Au);
  }

  if ([v10 ad_hasCallbacks] && (objc_msgSend(v10, "ad_sendReplyEvenIfCallbacksExist") & 1) == 0)
  {
    v18 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v26 = 136315138;
    v27 = "[ADCommandCenter _handleClientReply:error:forSessionCommand:]";
    v19 = "%s Suppressing reply since it was handled in callbacks";
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v23 = v13;
      v24 = [v12 errorCode];
      v25 = [v12 reason];
      v26 = 136315650;
      v27 = "[ADCommandCenter _handleClientReply:error:forSessionCommand:]";
      v28 = 2048;
      v29 = v24;
      v30 = 2112;
      v31 = v25;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s CommandFailed errorCode = %ld, reason %@", &v26, 0x20u);
    }
  }

  v14 = [v8 refId];

  if (!v14)
  {
    v15 = [v10 aceId];
    [v8 setRefId:v15];
  }

  if (![v10 ad_requiresResponse])
  {
    if (v8)
    {
      v16 = [v8 encodedClassName];
      v17 = [v16 isEqualToString:SACommandSucceededClassIdentifier];

      if ((v17 & 1) == 0)
      {
        v22 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v26 = 136315138;
          v27 = "[ADCommandCenter _handleClientReply:error:forSessionCommand:]";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Command does not require a response, but we have a reply, so sending it along anyway.", &v26, 0xCu);
        }

        goto LABEL_28;
      }
    }

    v18 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v26 = 136315138;
    v27 = "[ADCommandCenter _handleClientReply:error:forSessionCommand:]";
    v19 = "%s Command has an unnecessary response. Suppressing";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, &v26, 0xCu);
    goto LABEL_30;
  }

  if (!v8 && v9)
  {
    [(ADCommandCenter *)self _sendCommandFailedForCommand:v10 error:v9];
    goto LABEL_30;
  }

  if (!v8)
  {
    [(ADCommandCenter *)self _sendCommandFailedForCommand:v10 reason:@"bad response"];
    goto LABEL_30;
  }

  v20 = [v10 aceId];

  if (v20)
  {
LABEL_28:
    [(ADCommandCenter *)self _sendCommandToServer:v8];
    goto LABEL_30;
  }

  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v26 = 136315138;
    v27 = "[ADCommandCenter _handleClientReply:error:forSessionCommand:]";
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Command requires a response but it has no aceId to set as ref. Suppressing.", &v26, 0xCu);
  }

LABEL_30:
}

- (void)_logCrossDeviceCommandEndedMetricsForCommand:(id)a3 targetProductType:(id)a4 targetDeviceID:(id)a5 targetDeviceContextIdentifier:(id)a6 targetProximity:(int64_t)a7 coreAnalyticsEvent:(id)a8 response:(id)a9 error:(id)a10
{
  v24 = a3;
  v12 = a6;
  v13 = a8;
  v14 = a9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [NSString alloc];
      v16 = [v24 encodedClassName];
      v17 = [v15 initWithFormat:@"%@.succeeded", v16];
LABEL_13:
      v22 = v17;
      goto LABEL_14;
    }

    if (a10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = [NSString alloc];
      goto LABEL_12;
    }

LABEL_23:
    v22 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v18 = [NSString alloc];
    if (a10)
    {
LABEL_12:
      v16 = [v24 encodedClassName];
      v17 = [v18 initWithFormat:@"%@.error", v16];
      goto LABEL_13;
    }

    v19 = &SAAlarmGroupAcronym;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }

    v18 = [NSString alloc];
    if (a10)
    {
      goto LABEL_12;
    }

    v19 = &SATimerGroupAcronym;
  }

  v20 = *v19;
  v16 = [v24 encodedClassName];
  v21 = [v14 encodedClassName];
  v22 = [v18 initWithFormat:@"%@%@.%@", v20, v16, v21];

LABEL_14:
  if (v13 && v22)
  {
    [v13 addCoreAnalyticsDeviceTargetedWithContextIdentifier:v12 commandResultDescription:v22];
    v23 = +[AFCoreAnalyticsLoggingService sharedLoggingService];
    [v23 logToCoreAnalyticsCrossDeviceRequestEvent:v13];
  }

LABEL_17:
}

- (void)_handleCommandAndClientReply:(id)a3 executionContext:(id)a4 commandCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001F9084;
  v18 = &unk_10051E0D8;
  v22 = a5;
  v19 = self;
  v20 = v8;
  v10 = v9;
  v21 = v10;
  v11 = v8;
  v12 = v22;
  v13 = objc_retainBlock(&v15);
  v14 = v13;
  if (v10)
  {
    [v10 performBlock:{v13, v15, v16, v17, v18, v19, v20, v21, v22}];
  }

  else
  {
    (v13[2])(v13);
  }
}

- (void)assistantSessionManager:(id)a3 receivedCommand:(id)a4
{
  v5 = a4;
  v6 = [v5 refId];
  v7 = [(ADCommandCenter *)self _rootExecutionContextForRequestID:v6];

  [(ADCommandCenter *)self _handleCommandAndClientReply:v5 executionContext:v7 commandCompletion:0];
}

- (void)_saPerformDataDetection:(id)a3 completion:(id)a4
{
  v5 = a3;
  v19 = a4;
  v28 = 0;
  v6 = [NSDataDetector dataDetectorWithTypes:32 error:&v28];
  v18 = v28;
  v7 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v5;
  obj = [v5 detectionTargets];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_alloc_init(SAPerformDataDetectionResult);
        [v13 setDetectionTarget:v12];
        v14 = objc_alloc_init(NSMutableArray);
        v15 = [v12 length];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1001F9C28;
        v22[3] = &unk_1005160E0;
        v23 = v14;
        v16 = v14;
        [v6 enumerateMatchesInString:v12 options:0 range:0 usingBlock:{v15, v22}];
        [v13 setMatches:v16];
        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v17 = objc_alloc_init(SAPerformDataDetectionResults);
  [v17 setResults:v7];
  if (v19)
  {
    v19[2](v19, v17, 0);
  }
}

- (void)_startLanguageDetectionWaitTimer
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADCommandCenter _startLanguageDetectionWaitTimer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [(ADCommandCenter *)self _stopLanguageDetectionWaitTimerIfNeeded];
  v4 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F9E80;
  v8[3] = &unk_10051DFE8;
  v8[4] = self;
  v6 = [v4 initWithTimeoutInterval:queue onQueue:v8 timeoutHandler:1.0];
  languageDetectionWaitTimer = self->_languageDetectionWaitTimer;
  self->_languageDetectionWaitTimer = v6;

  [(AFWatchdogTimer *)self->_languageDetectionWaitTimer start];
}

- (void)_cancelLocalRecognitionIfRequired
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCommandCenter _cancelLocalRecognitionIfRequired]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  self->_hasReceivedServerSpeechRecognitions = 1;
  v4 = [(ADCommandCenter *)self _speechManager];
  [v4 cancelLocalRecognitionIfActive];
}

- (void)_dictationSessionDidComplete
{
  v3 = [(ADCommandCenter *)self _speechManager];
  [v3 dictationSessionDidComplete];

  [(ADCommandCenter *)self _setCurrentRequest:0];
  [(ADCommandCenter *)self _requestDidEnd];

  [(ADCommandCenter *)self _clearSpeechDelegateState];
}

- (void)_saSetMultilingualDictationConfig:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = +[AFPreferences sharedPreferences];
  v7 = [v5 multilingualTimeoutInMillis];
  [v7 doubleValue];
  v9 = v8;

  v10 = _AFPreferencesMultilingualDictationTimeoutInMilliSeconds();
  v11 = v10;
  if (v10)
  {
    [v10 floatValue];
    v13 = v12;
  }

  else
  {
    v13 = 2000.0;
  }

  v14 = [v5 multilingualDisabled];
  v15 = [v6 isLanguageDetectorEnabledByServer];
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136316162;
    v20 = "[ADCommandCenter _saSetMultilingualDictationConfig:completion:]";
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    v24 = v9;
    v25 = 1024;
    v26 = v15;
    v27 = 1024;
    v28 = v14 ^ 1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Client timeout: %f server timeout: %f, client enabled %d, server enabled %d", &v19, 0x2Cu);
  }

  if (v13 != v9)
  {
    v17 = [NSNumber numberWithDouble:v9];
    _AFPreferencesSetMultilingualDictationTimeoutInMilliSeconds();
  }

  if (v14 == v15)
  {
    _AFPreferencesSetDictationLanguageDetectorEnabledByServer();
    if (v14)
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [AFError errorWithCode:2805 description:@"Server has disabled smart language selection" underlyingError:0];
        [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechLanguageDetectorFailedWithError:v18];
      }
    }
  }
}

- (void)_storeExtractedSpeechLocally:(id)a3
{
  v3 = a3;
  v4 = [v3 speechData];
  if (!v4 || (v5 = v4, [v3 speechDataUrl], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v12 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v13 = v12;
    v14 = [v3 speechData];
    v15 = [v3 speechDataUrl];
    *buf = 136315650;
    v34 = "[ADCommandCenter _storeExtractedSpeechLocally:]";
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v15;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s data = %@ or URL = %@ are missing", buf, 0x20u);

    goto LABEL_26;
  }

  v32 = 0;
  v7 = CSSiriSpeechRecordingTrimmedAudioDirectoryPath();
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v7 isDirectory:&v32];

  if (v9)
  {
    if ((v32 & 1) == 0)
    {
      v10 = [[NSString alloc] initWithFormat:@"File exists at path %@, but it is expected to be directory.", v7];
      v11 = [AFError errorWithCode:226 description:v10];
      goto LABEL_12;
    }

LABEL_10:
    v11 = 0;
LABEL_16:
    v21 = 1;
    goto LABEL_17;
  }

  v16 = +[NSFileManager defaultManager];
  v31 = 0;
  v17 = [v16 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v31];
  v10 = v31;

  if (v17)
  {

    goto LABEL_10;
  }

  v18 = [[NSString alloc] initWithFormat:@"Unable to create directory at path %@.", v7];
  v11 = [AFError errorWithCode:226 description:v18 underlyingError:v10];

LABEL_12:
  if (!v11)
  {
    goto LABEL_16;
  }

  v19 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "ADCreateTrimmedAudioDirectory";
    v35 = 2112;
    v36 = v11;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
  }

  v20 = v11;
  v21 = 0;
LABEL_17:

  v13 = v11;
  if (!v21)
  {
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[ADCommandCenter _storeExtractedSpeechLocally:]";
      v35 = 2112;
      v36 = v13;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v22 = [v3 speechData];
  v23 = [v3 speechDataUrl];
  v24 = [NSURL URLWithString:v23];
  v30 = v13;
  [v22 writeToURL:v24 options:2 error:&v30];
  v25 = v30;

  v26 = AFSiriLogContextDaemon;
  if (!v25)
  {
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v13 = v26;
    v14 = [v3 speechDataUrl];
    *buf = 136315650;
    v34 = "[ADCommandCenter _storeExtractedSpeechLocally:]";
    v35 = 2112;
    v36 = v3;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s extractSpeechDataCompleted = %@ (speechDataUrl = %@)", buf, 0x20u);
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v28 = v26;
    v29 = [v25 userInfo];
    *buf = 136315394;
    v34 = "[ADCommandCenter _storeExtractedSpeechLocally:]";
    v35 = 2112;
    v36 = v29;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s error writing data %@", buf, 0x16u);
  }

LABEL_28:
}

- (void)_sasExtractSpeechData:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 speechRequestId];
  v11 = [v7 audioOutputType];
  v12 = [v7 startTime];
  v13 = [v7 endTime];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v32 = "[ADCommandCenter _sasExtractSpeechData:executionContext:completion:]";
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s extractSpeechData = %@ (speechRequestId = %@, audioOutputType = %@, startTime = %@, endTime = %@)", buf, 0x3Eu);
  }

  v25 = v12;
  if ([v11 isEqualToString:SASExtractSpeechDataAudioOutputTypeAudioFormatOpusValue])
  {
    v15 = 3;
  }

  else if ([v11 isEqualToString:SASExtractSpeechDataAudioOutputTypeAudioFormatLinearPCMValue])
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  v16 = [v7 startTime];
  v17 = [v16 longValue] / 1000.0;

  v18 = [v7 endTime];
  v19 = [v18 longValue];
  v20 = [v7 startTime];
  v21 = (v19 - [v20 longValue]) / 1000.0;

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001FAA60;
  v27[3] = &unk_1005160B8;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v22 = v9;
  v23 = v8;
  v24 = v7;
  [(ADCommandCenter *)self _trimRecordedAudioWithIdentifier:v10 offset:v15 duration:v27 outputFileType:v17 completion:v21];
}

- (void)_saUnhandledObject:(id)a3 completion:(id)a4
{
  v7 = a4;
  [(ADCommandCenter *)self _invokeCompletionForCommand:a3];
  if (v7)
  {
    v6 = [[SACommandFailed alloc] initWithReason:@"Unhandled Object"];
    v7[2](v7, v6, 0);
  }
}

- (void)_postUpdatePersonalRequestSettingsNotification:(id)a3 forLocalizationKey:(id)a4 executionContext:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = [[ADUserNotificationServiceProvider alloc] initWithConnection:0 bundleIdentifier:@"com.apple.Home" notificationCategories:0];
  v12 = objc_alloc_init(UNMutableNotificationContent);
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = +[AFLocalization sharedInstance];
  v15 = [v14 localizedStringForKey:v9 table:0 bundle:v13 languageCode:0];

  [v12 setBody:v15];
  [v12 setHasDefaultAction:1];
  v16 = [v10 homeId];

  v17 = [[NSString alloc] initWithFormat:@"%@?showEnablementSheet=%@", @"com.apple.HOME-PRIVATE://personalRequestOptIn", @"YES"];
  if ([v16 length])
  {
    v18 = [v17 stringByAppendingFormat:@"&homeId=%@", v16];

    v17 = v18;
  }

  v19 = [NSURL URLWithString:v17];

  [v12 setDefaultActionURL:v19];
  v20 = [UNNotificationRequest requestWithIdentifier:@"com.apple.siri.PersonalRequestsActivity" content:v12 trigger:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001FAEE8;
  v22[3] = &unk_10051D2F0;
  v23 = v8;
  v21 = v8;
  [(ADUserNotificationServiceProvider *)v11 postNotificationRequest:v20 completion:v22];
}

- (void)_saPostUpdatePersonalRequestSettingsNotification:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = @"ADHomeKitAccessoryCategoryTypeHomePod";
  v23[1] = @"ADHomeKitAccessoryCategoryTypeRemoraSpeaker";
  v24[0] = @"ASSISTANT_SERVICES_HOMEPOD_PROMPT_ENABLE_PERSONAL_DOMAINS_NOTIFICATION_BODY";
  v24[1] = @"ASSISTANT_SERVICES_REMORA_SPEAKER_PROMPT_ENABLE_PERSONAL_DOMAINS_NOTIFICATION_BODY";
  v23[2] = @"ADHomeKitAccessoryCategoryTypeRemoraAccessory";
  v23[3] = @"ADHomeKitAccessoryCategoryTypeRemoraOtherDevice";
  v24[2] = @"ASSISTANT_SERVICES_REMORA_ACCESSORY_PROMPT_ENABLE_PERSONAL_DOMAINS_NOTIFICATION_BODY";
  v24[3] = @"ASSISTANT_SERVICES_REMORA_DEVICE_PROMPT_ENABLE_PERSONAL_DOMAINS_NOTIFICATION_BODY";
  v11 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
  v12 = +[ADHomeInfoManager sharedInfoManager];
  v13 = [v9 info];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001FB190;
  v18[3] = &unk_100516090;
  v18[4] = self;
  v19 = v8;
  v20 = v11;
  v21 = v9;
  v22 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  v17 = v8;
  [v12 getAccessoryCategoryForExecutionInfo:v13 completion:v18];
}

- (void)_postPersonalDomainActivityNotificationWithBody:(id)a3 command:(id)a4 executionContext:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 info];
  v14 = [v13 currentHomeInfo];

  if (v14 && ![v14 activityNotificationsEnabledForPersonalRequests] || (+[ADHomeInfoManager sharedInfoManager](ADHomeInfoManager, "sharedInfoManager"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "areActivityNotificationsOffForAllHomes"), v15, v16))
  {
    v17 = objc_alloc_init(SACommandIgnored);
    v12[2](v12, v17, 0);
  }

  else
  {
    v18 = [v10 homeId];
    v19 = v9;
    v40 = [v10 originatingDeviceName];
    v42 = v9;
    if (![v19 length])
    {
      +[AFLocalization sharedInstance];
      v21 = v20 = v19;
      v22 = v18;
      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v21 localizedStringForKey:@"ASSISTANT_SERVICES_HOMEPOD_ACTIVITY_DEFAULT_BODY" table:0 bundle:v23 languageCode:0];

      v18 = v22;
      v19 = v24;
    }

    v25 = [[ADUserNotificationServiceProvider alloc] initWithConnection:0 bundleIdentifier:@"com.apple.Home" notificationCategories:0];
    v26 = objc_alloc_init(UNMutableNotificationContent);
    v41 = v19;
    [v26 setBody:v19];
    [v26 setShouldSuppressDefaultAction:1];
    if ([v18 length])
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v52 = "[ADCommandCenter _postPersonalDomainActivityNotificationWithBody:command:executionContext:completion:]";
        v53 = 2112;
        v54 = v18;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Adding home id: %@ to notification content's user info.", buf, 0x16u);
      }

      v49 = AFPersonalDomainsNotificationUserInfoHomeKey;
      v50 = v18;
      v28 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      [v26 setUserInfo:v28];
    }

    [v26 setCategoryIdentifier:@"PersonalRequestsActivityCategory"];
    v29 = [NSString alloc];
    +[NSUUID UUID];
    v30 = v39 = v18;
    v31 = [v30 UUIDString];
    v32 = [v29 initWithFormat:@"%@:%@", @"com.apple.siri.PersonalRequestsActivity", v31];

    v33 = +[ADHomeInfoManager sharedInfoManager];
    v34 = [v11 info];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001FB6E8;
    v43[3] = &unk_100516090;
    v44 = v40;
    v45 = v26;
    v46 = v32;
    v47 = v25;
    v48 = v12;
    v35 = v25;
    v36 = v32;
    v37 = v26;
    v38 = v40;
    [v33 getLocalizedAccessoryCategoryForExecutionInfo:v34 completion:v43];

    v9 = v42;
  }
}

- (void)_saPostPersonalDomainActivityNotification:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 notificationBody];
  [(ADCommandCenter *)self _postPersonalDomainActivityNotificationWithBody:v11 command:v10 executionContext:v9 completion:v8];
}

- (void)_saPostCalendarActivityNotification:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[AFLocalization sharedInstance];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v11 localizedStringForKey:@"ASSISTANT_SERVICES_HOMEPOD_CALENDAR_ACTIVITY_NOTIFICATION_BODY" table:0 bundle:v12 languageCode:0];

  [(ADCommandCenter *)self _postPersonalDomainActivityNotificationWithBody:v13 command:v10 executionContext:v9 completion:v8];
}

- (void)_saDismissRemoteAnnouncement:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADAnnounceDeviceSelector sharedDeviceSelector];
  [v7 handleRemoteDismissRequest:v6 completion:v5];
}

- (void)_saPerformRemoteAnnouncement:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADAnnounceDeviceSelector sharedDeviceSelector];
  [v7 handleRemoteAnnounceRequest:v6 completion:v5];
}

- (void)_saNotificationSearch:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 supportsSpokenNotifications];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[ADCommandCenter _saNotificationSearch:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Announcement notification search", buf, 0xCu);
    }

    v11 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
    v12 = [v6 afterNotificationId];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001FBEAC;
    v24[3] = &unk_10051CE90;
    v24[4] = self;
    v25 = v6;
    v26 = v7;
    v13 = v7;
    v14 = v6;
    [v11 fetchUnreadNotificationsFromThreadAfterNotificationWithID:v12 completion:v24];

    v15 = v25;
  }

  else
  {
    v16 = +[ADNotificationManager sharedManager];
    v17 = [v6 afterNotificationId];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001FBEC0;
    v20[3] = &unk_10051CE90;
    v21 = v6;
    v22 = self;
    v23 = v7;
    v18 = v7;
    v19 = v6;
    [v16 fetchBulletinsAfterBulletinWithID:v17 completion:v20];

    v15 = v21;
  }
}

- (void)_completeNotificationSearch:(id)a3 bulletins:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 isOnDeviceSearch];
  v10 = [v9 BOOLValue];

  v11 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        if (v10)
        {
          [v17 saOnDeviceNotificationObject];
        }

        else
        {
          [v17 saNotificationObject];
        }
        v18 = ;
        [v11 addObject:{v18, v21}];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  if (v10)
  {
    v19 = SAOnDeviceNotificationsSearchCompleted;
  }

  else
  {
    v19 = SANotificationsSearchCompleted;
  }

  v20 = objc_alloc_init(v19);
  [v20 setNotifications:v11];
  if (v8)
  {
    v8[2](v8, v20, 0);
  }
}

- (void)_saTTSSetSpeechSynthesisVolume:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CSPreferences sharedPreferences];
  v9 = [v8 smartSiriVolumeContextAwareEnabled];

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v6 actionType];
    v13 = [v6 volumeValue];
    *buf = 136316162;
    v36 = "[ADCommandCenter _saTTSSetSpeechSynthesisVolume:completion:]";
    v37 = 2112;
    v38 = v6;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    v43 = 1024;
    v44 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ttsSetSpeechSynthesisVolume = %@ (actionType = %@, volumeLevel = %@), smartSiriVolumeContextAwareEnabled = %d", buf, 0x30u);
  }

  v14 = [v6 actionType];
  v15 = SATTSSpeechVolumeActionTypeSETValue;
  if ([v14 isEqualToString:SATTSSpeechVolumeActionTypeSETValue])
  {
    v16 = 1;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_16:
    v22 = [v6 volumeValue];
    [v22 floatValue];
    v24 = v23;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001FC798;
    v32[3] = &unk_10051DD98;
    v34 = v7;
    v33 = v6;
    LODWORD(v25) = v24;
    [(ADCommandCenter *)self _setSiriOutputVolume:0 forAudioRoute:v16 operationType:v32 completion:v25];

    v26 = v34;
LABEL_23:

    goto LABEL_24;
  }

  if ([v14 isEqualToString:SATTSSpeechVolumeActionTypeINCREASEValue])
  {
    v16 = 2;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ([v14 isEqualToString:SATTSSpeechVolumeActionTypeDECREASEValue])
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    if (!v9)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  v17 = mach_absolute_time();
  if ([v14 isEqualToString:v15])
  {
    v18 = +[CSSpeechController sharedController];
    v19 = [v6 volumeValue];
    [v19 floatValue];
    [v18 setSmartSiriVolumePercentage:?];

LABEL_20:
    v27 = [(ADCommandCenter *)self _speechManager];
    v28 = [v27 volumeTracker];
    [v28 setDirtySiriOutputVolumeHostTime:v17];

    goto LABEL_21;
  }

  if ([v14 isEqualToString:SATTSSpeechVolumeActionTypeINCREASEValue])
  {
    v20 = +[CSSpeechController sharedController];
    v18 = v20;
    v21 = 1;
LABEL_19:
    [v20 setSmartSiriVolumeDirection:v21];
    goto LABEL_20;
  }

  if ([v14 isEqualToString:SATTSSpeechVolumeActionTypeDECREASEValue])
  {
    v20 = +[CSSpeechController sharedController];
    v18 = v20;
    v21 = 0;
    goto LABEL_19;
  }

  if ([v14 isEqualToString:SATTSSpeechVolumeActionTypeENABLE_OFFSET_AND_INCREASEValue])
  {
    v30 = +[CSSpeechController sharedController];
    v18 = v30;
    v31 = 1;
LABEL_29:
    [v30 setPermanentVolumeOffsetWithDirection:v31];
    goto LABEL_20;
  }

  if ([v14 isEqualToString:SATTSSpeechVolumeActionTypeENABLE_OFFSET_AND_DECREASEValue])
  {
    v30 = +[CSSpeechController sharedController];
    v18 = v30;
    v31 = 0;
    goto LABEL_29;
  }

LABEL_21:
  if (v7)
  {
    v26 = objc_alloc_init(SACommandSucceeded);
    v29 = [v6 aceId];
    [v26 setRefId:v29];

    (*(v7 + 2))(v7, v26, 0);
    goto LABEL_23;
  }

LABEL_24:
}

- (void)_saTTSGetSpeechSynthesisVolume:(id)a3 completion:(id)a4
{
  v6 = COERCE_DOUBLE(a3);
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ADCommandCenter _saTTSGetSpeechSynthesisVolume:completion:]";
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ttsGetSpeechSynthesisVolume = %@", buf, 0x16u);
  }

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1001FCB64;
  v26 = &unk_100516068;
  v9 = v7;
  v28 = v9;
  v10 = COERCE_DOUBLE(*&v6);
  v27 = v10;
  v11 = objc_retainBlock(&v23);
  v12 = [CSPreferences sharedPreferences:v23];
  v13 = [v12 smartSiriVolumeContextAwareEnabled];

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v30 = "[ADCommandCenter _saTTSGetSpeechSynthesisVolume:completion:]";
    v31 = 2112;
    v32 = v10;
    v33 = 1024;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ttsGetSpeechSynthesisVolume = %@, smartSiriVolumeContextAwareEnabled = %d", buf, 0x1Cu);
  }

  if (v13)
  {
    v15 = +[CSSpeechController sharedController];
    [v15 getVolumeForTTSType:2];
    v17 = v16;

    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "[ADCommandCenter _saTTSGetSpeechSynthesisVolume:completion:]";
      v31 = 2048;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s smartSiriVolume = %f", buf, 0x16u);
    }

    if (v9)
    {
      v19 = objc_alloc_init(SATTSGetSpeechSynthesisVolumeResponse);
      v20 = [*&v10 aceId];
      [v19 setRefId:v20];

      *&v21 = v17;
      v22 = [NSNumber numberWithFloat:v21];
      [v19 setVolumeLevel:v22];

      (*(v9 + 2))(v9, v19, 0);
    }
  }

  else
  {
    [(ADCommandCenter *)self _getSiriOutputVolumeForAudioRoute:0 completion:v11];
  }
}

- (void)_saLogStringEvent:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[ADCommandCenter _saLogStringEvent:completion:]";
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v8 = [v5 eventName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_10051F508;
  }

  v17[0] = v10;
  v16[1] = SALogStringEventEventValuePListKey;
  v11 = [v5 eventValue];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_10051F508;
  }

  v17[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  v15 = +[AFAnalytics sharedAnalytics];
  [v15 logEventWithType:141 context:v14];

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)_saLogNumericEvent:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADCommandCenter _saLogNumericEvent:completion:]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v8 = [v5 eventName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_10051F508;
  }

  v20[0] = v10;
  v19[1] = SALogNumericEventEventOperationPListKey;
  v11 = [v5 eventOperation];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_10051F508;
  }

  v20[1] = v13;
  v19[2] = SALogNumericEventEventValuePListKey;
  v14 = [v5 eventValue];
  v15 = v14;
  v16 = &off_100533BC0;
  if (v14)
  {
    v16 = v14;
  }

  v20[2] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

  v18 = +[AFAnalytics sharedAnalytics];
  [v18 logEventWithType:140 context:v17];

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)_saLogSignatureWithABC:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADCommandCenter _saLogSignatureWithABC:completion:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", &v13, 0x16u);
  }

  v8 = +[SiriCoreSymptomsReporter sharedInstance];
  v9 = [v5 subType];
  v10 = [v5 subTypeContext];
  v11 = +[NSProcessInfo processInfo];
  v12 = [v11 processIdentifier];
  [v8 reportIssueForType:@"server_request" subType:v9 context:v10 processIdentifier:v12 walkboutStatus:byte_100590548];

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)_saSetLatencyDiagnosticConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ADCommandCenter *)self _diagnosticsManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FD2B4;
  v10[3] = &unk_10051CF58;
  v11 = v6;
  v9 = v6;
  [v8 updateLatencyDiagnosticConfiguration:v7 completion:v10];
}

- (void)_saGetAssistantData:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[ADCommandCenter _saGetAssistantData:executionContext:completion:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = +[ADAssistantDataManager sharedDataManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FD428;
  v11[3] = &unk_100516040;
  v12 = v7;
  v10 = v7;
  [v9 getAssistantDataWithCompletion:v11];
}

- (void)_saGetRequestOrigin:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[ADCommandCenter _saGetRequestOrigin:executionContext:completion:]";
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v12 = [v9 info];
  v13 = [v12 requestID];

  currentRequest = self->_currentRequest;
  if (currentRequest && (-[ADCommandCenterCurrentRequest currentRequestId](currentRequest, "currentRequestId"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqualToString:v13], v15, (v16 & 1) != 0))
  {
    v17 = [(ADCommandCenter *)self _locationManager];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001FDA9C;
    v23[3] = &unk_100516018;
    v18 = &v24;
    v24 = v10;
    v19 = v10;
    [v17 updateLocationForCommand:v8 completion:v23];
  }

  else
  {
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v29 = "[ADCommandCenter _saGetRequestOrigin:executionContext:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Fetching location for request on a different device", buf, 0xCu);
    }

    v21 = [(ADCommandCenter *)self _contextManager];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001FD7A8;
    v25[3] = &unk_10051DD70;
    v18 = &v26;
    v26 = v8;
    v27 = v10;
    v22 = v10;
    [v21 getContextSnapshotForForeignRequestID:v13 completion:v25];

    v17 = v27;
  }
}

- (void)_saAcknowledgeAlert:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[ADCommandCenter _saAcknowledgeAlert:completion:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  v9 = [v6 object];
  [(ADCommandCenter *)self _context_acknowledgeBulletinForObject:v9];

  if (v7)
  {
    v10 = objc_alloc_init(SACommandSucceeded);
    v7[2](v7, v10, 0);
  }
}

- (void)_endSpeechRequestForCommand:(id)a3 withError:(id)a4 suppressAlert:(BOOL)a5 secureOfflineOnlyDictation:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v39 = "[ADCommandCenter _endSpeechRequestForCommand:withError:suppressAlert:secureOfflineOnlyDictation:]";
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v11;
    v44 = 1024;
    v45 = v7;
    v46 = 1024;
    v47 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s command %@ error %@ suppressAlert %d secureOfflineOnlyDictation %d", buf, 0x2Cu);
  }

  v13 = [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adWaitingForAudioFile];
  v14 = [(ADCommandCenter *)self _speechManager];
  v15 = [(ADCommandCenter *)self _speechCapturingContext];
  if (self->_speechManagerState == 2)
  {
    if (v13)
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v39 = "[ADCommandCenter _endSpeechRequestForCommand:withError:suppressAlert:secureOfflineOnlyDictation:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Recognition failed, but we're waiting to write an audio file. Don't cancel recording", buf, 0xCu);
      }
    }

    else
    {
      [v14 cancelSpeechCaptureSuppressingAlert:v7];
      [v14 setContext:0];
      [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechRecordingDidEndWithContext:v15];
    }
  }

  if (self->_startSpeechCommand)
  {
    if (v11)
    {
      v17 = v6;
    }

    else
    {
      v17 = 0;
    }

    if (v17 || !self->_speechDelegateHasReceivedSpeechRecognized)
    {
      goto LABEL_17;
    }
  }

  else if (v11 && v6)
  {
LABEL_17:
    speechDelegate = self->_speechDelegate;
    v19 = [v15 sessionUUID];
    [(ADCommandCenterSpeechDelegate *)speechDelegate adSpeechRecognitionDidFail:v11 sessionUUID:v19];
    goto LABEL_20;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  v20 = self->_speechDelegate;
  v19 = [v15 sessionUUID];
  [(ADCommandCenterSpeechDelegate *)v20 adSpeechLocalRecognitionDidSucceedWithSessionUUID:v19];
LABEL_20:

LABEL_21:
  currentRequest = self->_currentRequest;
  if (v10 || !currentRequest || v6)
  {
    v22 = [(ADCommandCenterCurrentRequest *)currentRequest currentRequestId];
    v23 = [v10 refId];
    v24 = [v22 isEqualToString:v23];

    if (!v24)
    {
      if (v10 || !v11)
      {
        v30 = v11 == 0;
        v29 = self;
      }

      else
      {
        v29 = self;
        v30 = 0;
      }

      [(ADCommandCenter *)v29 _completeRequestForCurrentDelegate:v30 error:v11];
      if (v13)
      {
        goto LABEL_28;
      }

LABEL_34:
      [(ADCommandCenter *)self _clearSpeechDelegateState];
      goto LABEL_35;
    }
  }

  if (!v11)
  {
    v11 = [AFError errorWithCode:212];
  }

  [(ADCommandCenter *)self _completeRequestForCurrentDelegate:0 error:v11];
  [(ADCommandCenter *)self _setCurrentRequest:0];
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_28:
  v25 = objc_retainBlock(self->_speechCompletion);
  objc_initWeak(buf, self);
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1001FE024;
  v35 = &unk_100515FF0;
  objc_copyWeak(&v37, buf);
  v36 = v25;
  v26 = v25;
  v27 = objc_retainBlock(&v32);
  speechCompletion = self->_speechCompletion;
  self->_speechCompletion = v27;

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);
LABEL_35:
  v31 = [(ADCommandCenter *)self _sessionManager:v32];
  [v31 endRetryableRequestForCommand:v10];

  [(ADCommandCenter *)self _requestDidEnd];
}

- (void)_saClientSetupInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    speechManager = self->_speechManager;
    [v6 threshold];
    [(ADSpeechManager *)speechManager setEndpointerThreshold:?];
    -[ADSpeechManager setEndpointerDelayedTrigger:](self->_speechManager, "setEndpointerDelayedTrigger:", [v6 delay]);
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v6 refId];
      v14 = 136315394;
      v15 = "[ADCommandCenter _saClientSetupInfo:completion:]";
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Got clientSetupInfo for refId %@. Ignoring. ", &v14, 0x16u);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_sasClientBoundConfusionNetwork:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 refId];
  LOBYTE(self) = [(ADCommandCenter *)self _refIdIsSpeechStart:v7];

  if ((self & 1) == 0)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADCommandCenter _sasClientBoundConfusionNetwork:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Got confusionNetwork for something other than our current speech command. Ignoring.", &v9, 0xCu);
    }
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)_sasServerEndpointFeatures:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    v10 = [(ADCommandCenter *)self _speechManager];
    v11 = [v6 ad_csASRFeatures];
    [v10 updateASRFeatures:v11];
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[ADCommandCenter _sasServerEndpointFeatures:completion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Got serverEndpointFeatures for something other than our current speech command. Ignoring.", &v13, 0xCu);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_sasConfirmEndpoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    v10 = [v6 endpointConfirmationTimestamp];
    v11 = [v10 unsignedLongLongValue] / 1000.0;

    v12 = [(ADCommandCenter *)self _speechManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001FE6A4;
    v15[3] = &unk_100515FC8;
    v17 = v11;
    v16 = v7;
    [v12 getLastStartpointTimestampAndCurrentTime:v15];

    v13 = v16;
LABEL_7:

    goto LABEL_8;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADCommandCenter _sasConfirmEndpoint:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Got confirmEndpointRequest for something other than our current speech command. Ignoring.", buf, 0xCu);
  }

  if (v7)
  {
    v13 = objc_alloc_init(SACommandFailed);
    (*(v7 + 2))(v7, v13, 0);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_handleSuspendClientEndpointer:(id)a3
{
  v4 = a3;
  v5 = [v4 audioProcessedMs];
  v6 = [v5 unsignedLongLongValue] / 1000.0;
  v7 = [v4 suspendDurationMs];

  v8 = [v7 unsignedLongLongValue] / 1000.0;
  v9 = [(ADCommandCenter *)self _speechManager];
  [v9 suspendAutomaticEndpointingInRange:{v6, v8}];
}

- (void)_sasSuspendClientEndpointer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    [(ADCommandCenter *)self _handleSuspendClientEndpointer:v6];
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADCommandCenter _sasSuspendClientEndpointer:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Got suspendClientEndpointer for something other than our current speech command. Ignoring.", &v11, 0xCu);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_sasVoiceSearchFinalResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechDidFindVoiceSearchFinalResult:v6];
    }

    [(ADCommandCenter *)self _dictationSessionDidComplete];
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADCommandCenter _sasVoiceSearchFinalResult:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Got voiceSearchFinalResult for something other than our current speech command. Ignoring.", &v11, 0xCu);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_sasVoiceSearchPartialResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechDidFindVoiceSearchPartialResult:v6];
    }
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADCommandCenter _sasVoiceSearchPartialResult:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Got VoiceSearchPartialResult for something other than our current speech command. Ignoring.", &v11, 0xCu);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_sasAbortSpeechRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    v10 = [v6 reason];
    if ([v10 isEqualToString:SASAbortSpeechRequestReasonACOUSTIC_ID_DETECTEDValue])
    {
      LOBYTE(v11) = 1;
      v12 = 218;
    }

    else
    {
      v11 = [v10 isEqualToString:SASAbortSpeechRequestReasonFALSE_TRIGGER_DETECTEDValue];
      if (v11)
      {
        v12 = 219;
      }

      else
      {
        v12 = 211;
      }
    }

    v14 = AFIsNano() | v11;
    v15 = [AFError errorWithCode:v12 description:v10 underlyingError:0];
    [(ADCommandCenter *)self _endSpeechRequestForCommand:v6 withError:v15 suppressAlert:v14 & 1 secureOfflineOnlyDictation:0];
    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[ADCommandCenter _sasAbortSpeechRequest:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Abort for a different request. Ignoring.", &v16, 0xCu);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }
}

- (void)_sasSpeechFailure:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    v10 = [v6 reasonDescription];
    v11 = [v6 ad_error];
    v12 = [AFError errorWithCode:203 description:v10 underlyingError:v11];

    [(ADCommandCenter *)self _endSpeechRequestForCommand:v6 withError:v12 suppressAlert:0 secureOfflineOnlyDictation:0];
    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[ADCommandCenter _sasSpeechFailure:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Failure for a different request. Ignoring.", &v14, 0xCu);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }
}

- (void)_saStructuredDictationFailure:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v10 = v8;
    v11 = [v6 recognition];
    v12 = 136315394;
    v13 = "[ADCommandCenter _saStructuredDictationFailure:completion:]";
    v14 = 2112;
    v15 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@", &v12, 0x16u);
  }

  v9 = [v6 ad_error];
  [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechRecognitionDidFail:v9 sessionUUID:self->_speechCapturingContextSessionUUID];
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_saStructuredDictationResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[ADCommandCenter _saStructuredDictationResult:completion:]";
    v13 = 2112;
    v14 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@", &v11, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    speechDelegate = self->_speechDelegate;
    v10 = [(ADCommandCenter *)self _languageModelForSpeechRequest:self->_startSpeechCommand];
    [(ADCommandCenterSpeechDelegate *)speechDelegate adSpeechRecognizedStructuredResult:v6 usingSpeechModel:v10 sessionUUID:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ADCommandCenter *)self _dictationSessionDidComplete];
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_sasSpeechPartialResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ADCommandCenter _sasSpeechPartialResult:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v9 = [v6 refId];
  v10 = [(ADCommandCenter *)self _refIdIsSpeechStart:v9];

  if (v10)
  {
    if (AFIsInternalInstall())
    {
      v11 = [v6 copy];
    }

    else
    {
      v11 = 0;
    }

    v13 = +[AFAnalytics sharedAnalytics];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001FF5A0;
    v27[3] = &unk_10051DF78;
    v14 = v11;
    v28 = v14;
    [v13 logEventWithType:1101 contextProvider:v27];

    v15 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
    v16 = [v6 encodedClassName];
    v17 = AFShouldEmitAceCommandContextSELFLog();

    if (v17)
    {
      v18 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
      v19 = [v6 encodedClassName];
      v20 = [v6 aceId];
      sub_100014010(v18, v19, v20, 3);
    }

    self->_hasReceivedServerSpeechRecognitions = 1;
    v21 = [v6 tokens];
    v22 = [v21 lastObject];

    v23 = [v22 endTime];
    v24 = [v23 longLongValue] / 1000.0;

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001FF654;
    v25[3] = &unk_10051E010;
    v25[4] = self;
    v26 = v6;
    [(ADCommandCenter *)self _handlePartialSpeechRecognitionForElapsedTime:v25 WithDelegateBlock:v24];
    [(ADCommandCenter *)self _acousticId_clearPartialResultTimer];
    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[ADCommandCenter _sasSpeechPartialResult:completion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Partial for a different request. Ignoring.", buf, 0xCu);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }
}

- (void)_handleSpeechRecognizedWithDelegateBlock:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _speechManager];
  [v5 updateOptionsAfterRecognitionForElapsedTime:1 isFinal:0.0];

  if (self->_speechDelegateHasReceivedSpeechRecognized)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADCommandCenter _handleSpeechRecognizedWithDelegateBlock:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Ignoring Recognition, SpeechRecognized has already been received", buf, 0xCu);
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001FF83C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
    if (v4)
    {
      v4[2](v4);
    }

    self->_speechDelegateHasReceivedSpeechRecognized = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ADCommandCenter *)self _dictationSessionDidComplete];
      }
    }
  }
}

- (void)_handlePartialSpeechRecognitionForElapsedTime:(double)a3 WithDelegateBlock:(id)a4
{
  v6 = a4;
  v7 = [(ADCommandCenter *)self _speechManager];
  [v7 updateOptionsAfterRecognitionForElapsedTime:0 isFinal:a3];

  if (self->_speechDelegateHasReceivedSpeechRecognized)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADCommandCenter _handlePartialSpeechRecognitionForElapsedTime:WithDelegateBlock:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Ignoring Partial, SpeechRecognized has already been received", &v9, 0xCu);
    }
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (void)_sasPronunciationRecognized:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001FFB8C;
    v11[3] = &unk_10051E010;
    v11[4] = self;
    v12 = v6;
    [(ADCommandCenter *)self _handleSpeechRecognizedWithDelegateBlock:v11];
    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[ADCommandCenter _sasPronunciationRecognized:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s PronunciationRecognized for a different request. Ignoring", buf, 0xCu);
    }
  }
}

- (void)_sasSpeechMultilingualSpeechRecognized:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 refId];
  v12 = [(ADCommandCenter *)self _refIdIsSpeechStart:v11];

  v13 = AFSiriLogContextDaemon;
  v14 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      *buf = 136315394;
      v31 = "[ADCommandCenter _sasSpeechMultilingualSpeechRecognized:executionContext:completion:]";
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    if (self->_isSmartLanguageSelectionActive)
    {
      objc_initWeak(buf, self);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1001FFFB0;
      v26[3] = &unk_1005180B0;
      objc_copyWeak(&v29, buf);
      v27 = v8;
      v28 = v10;
      v15 = objc_retainBlock(v26);
      multilingualSpeechRecognizedCommandHandler = self->_multilingualSpeechRecognizedCommandHandler;
      self->_multilingualSpeechRecognizedCommandHandler = v15;

      if (self->_hasReceivedDetectedLanguage)
      {
        v17 = objc_retainBlock(self->_multilingualSpeechRecognizedCommandHandler);
        v18 = self->_multilingualSpeechRecognizedCommandHandler;
        self->_multilingualSpeechRecognizedCommandHandler = 0;

        v17[2](v17);
      }

      else
      {
        [(ADCommandCenter *)self _startLanguageDetectionWaitTimer];
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v19 = [(SASStartSpeech *)self->_startSpeechCommand ad_languageModel];
      if (v19)
      {
        v20 = [v8 speechRecognizedByLanguage];
        v21 = [v20 objectForKey:v19];

        v22 = [(SASStartSpeech *)self->_startSpeechCommand aceId];
        [v21 setRefId:v22];

        [(ADCommandCenter *)self _sasSpeechRecognized:v21 executionContext:v9 completion:v10];
      }

      else
      {
        v23 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
          v25 = [v8 speechRecognizedByLanguage];
          *buf = 136315650;
          v31 = "[ADCommandCenter _sasSpeechMultilingualSpeechRecognized:executionContext:completion:]";
          v32 = 2112;
          v33 = v8;
          v34 = 2112;
          v35 = v25;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s SASMultilingualSpeechRecognized failed to return speech recognized command for primary language\n %@ %@", buf, 0x20u);
        }

        if (v10)
        {
          (*(v10 + 2))(v10, 0, 0);
        }
      }
    }
  }

  else
  {
    if (v14)
    {
      *buf = 136315138;
      v31 = "[ADCommandCenter _sasSpeechMultilingualSpeechRecognized:executionContext:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Multilingual SpeechRecognized for a different request. Ignoring.", buf, 0xCu);
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)_sasSpeechRecognized:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 refId];
  v12 = [(ADCommandCenter *)self _refIdIsSpeechStart:v11];

  if (v12)
  {
    if (AFIsInternalInstall())
    {
      v13 = [v8 recognition];
      v14 = [v8 processedAudioDuration];
      [v14 doubleValue];
      v15 = [AFSpeechPackage fromSASRecognition:v13 processedAudioDuration:?];

      v16 = [v15 dictionaryRepresentation];
      v17 = [NSJSONSerialization dataWithJSONObject:v16 options:0 error:0];
      if (v17)
      {
        v18 = [[NSString alloc] initWithData:v17 encoding:4];
        if (v18)
        {
          [(ADCommandCenter *)self _logToFeatureStore:v18 speechRecgonized:v8];
        }

        else
        {
          v20 = AFSiriLogContextUtility;
          if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v39 = "[ADCommandCenter _sasSpeechRecognized:executionContext:completion:]";
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Error decoding json data (wasn't utf8?)", buf, 0xCu);
          }
        }
      }
    }

    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = [v8 eager];
      *buf = 136315394;
      v39 = "[ADCommandCenter _sasSpeechRecognized:executionContext:completion:]";
      v40 = 1024;
      v41 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s isEager %d", buf, 0x12u);
    }

    v24 = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100200B08;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(v24, block);

    v25 = [v8 copy];
    v26 = [(ADCommandCenter *)self _languageModelForSpeechRequest:self->_startSpeechCommand];
    v27 = sub_1002003F4(v25, v26);
    v28 = +[AFAnalytics sharedAnalytics];
    [v28 logEventWithType:1102 context:v27];

    [(ADCommandCenter *)self _setSpeechRecognizedContext:v27];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100200C98;
    v35[3] = &unk_100515FA0;
    v29 = v8;
    v36 = v29;
    [v9 updateInfoUsingBlock:v35];
    [(ADCommandCenter *)self _cancelLocalRecognitionIfRequired];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100200D4C;
    v32[3] = &unk_10051DB68;
    v32[4] = self;
    v33 = v29;
    v30 = v26;
    v34 = v30;
    [(ADCommandCenter *)self _handleSpeechRecognizedWithDelegateBlock:v32];
    if (v10)
    {
      v31 = objc_alloc_init(SACommandSucceeded);
      v10[2](v10, v31, 0);
    }
  }

  else
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v39 = "[ADCommandCenter _sasSpeechRecognized:executionContext:completion:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s SpeechRecognized for a different request. Ignoring.", buf, 0xCu);
    }

    if (v10)
    {
      v10[2](v10, 0, 0);
    }
  }
}

- (void)_logToFeatureStore:(id)a3 speechRecgonized:(id)a4
{
  v6 = a3;
  v7 = a4;
  curareQueue = self->_curareQueue;
  if (!curareQueue)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("ADCommandCenter.CurareDonationQueue", v9);
    v11 = self->_curareQueue;
    self->_curareQueue = v10;

    curareQueue = self->_curareQueue;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100200E70;
  v14[3] = &unk_10051E010;
  v15 = v7;
  v16 = v6;
  v12 = v6;
  v13 = v7;
  dispatch_async(curareQueue, v14);
}

- (void)_sasVoiceIdentificationSignal:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:v8];

  if (v9)
  {
    v10 = [v6 recordUserAudio];
    v11 = [v6 resultCandidateId];
    v12 = [v6 selectedSharedUserId];
    v13 = [(NSString *)self->_selectedSharedUserID length];
    if (v12)
    {
      if (v13)
      {
        goto LABEL_12;
      }

      objc_storeStrong(&self->_selectedSharedUserID, v12);
      v14 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

      selectedSharedUserID = self->_selectedSharedUserID;
      *v24 = 136315394;
      *&v24[4] = "[ADCommandCenter _sasVoiceIdentificationSignal:completion:]";
      *&v24[12] = 2112;
      *&v24[14] = selectedSharedUserID;
      v16 = "%s Updated _selectedSharedUserID from SASVoiceIdentificationSignal to: %@";
      v17 = v14;
      v18 = 22;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_12;
      }

      v20 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

      *v24 = 136315138;
      *&v24[4] = "[ADCommandCenter _sasVoiceIdentificationSignal:completion:]";
      v16 = "%s Not updating _selectedSharedUserID with nil selectedSharedUserID from SASVoiceIdentificationSignal";
      v17 = v20;
      v18 = 12;
    }

    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v16, v24, v18);
LABEL_12:
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v24 = 136316162;
      *&v24[4] = "[ADCommandCenter _sasVoiceIdentificationSignal:completion:]";
      *&v24[12] = 2112;
      *&v24[14] = v6;
      *&v24[22] = 1024;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s %@ (recordUserAudio = %d, resultCandidateId = %@, selectedSharedUserId = %@)", v24, 0x30u);
    }

    v22 = [(ADCommandCenter *)self _speechCapturingContext:*v24];
    v23 = [v6 selectedSharedUserId];
    [v22 updateAccessToRecordedAudioForVoiceIdentificationTraining:v10 forResultCandidateId:v11 sharedUserId:v23];

    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_15;
  }

  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *v24 = 136315138;
    *&v24[4] = "[ADCommandCenter _sasVoiceIdentificationSignal:completion:]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s VoiceIdentificationSignal for a different request. Ignoring.", v24, 0xCu);
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

LABEL_15:
}

- (void)_setSpeechRecognizedContext:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _speechManager];
  [v5 setSpeechRecognizedContext:v4];
}

- (void)_sasSpeechServerEndpointIdentified:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 refId];
  v8 = [(ADCommandCenter *)self _refIdIsSpeechStart:v7];

  v9 = AFSiriLogContextDaemon;
  v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v12 = 136315138;
      v13 = "[ADCommandCenter _sasSpeechServerEndpointIdentified:completion:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
    }

    v11 = [(ADCommandCenter *)self _speechManager];
    [v11 enforcePreviousEndpointHint];

LABEL_8:
    (*(v6 + 2))(v6, 0, 0);
    goto LABEL_9;
  }

  if (v10)
  {
    v12 = 136315138;
    v13 = "[ADCommandCenter _sasSpeechServerEndpointIdentified:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s ServerEndpoint for a different request. Ignoring.", &v12, 0xCu);
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)_didAlreadyAcceptResultCandidate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_speechHasAcceptedResultCandidate && (self->_selectedResultCandidate || ([v4 processedAudioDuration], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "doubleValue"), v8 = v7, v9 = self->_speechAcceptedResultCandidateDuration, v6, v8 < v9)))
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[ADCommandCenter _didAlreadyAcceptResultCandidate:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Already accepted result candidate for request", &v20, 0xCu);
      v10 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      selectedResultCandidate = self->_selectedResultCandidate;
      v12 = v10;
      v13 = [(SASResultCandidate *)selectedResultCandidate processedAudioDuration];
      [v13 doubleValue];
      v15 = v14;
      v16 = [(SASResultCandidate *)self->_selectedResultCandidate resultId];
      v20 = 136315906;
      v21 = "[ADCommandCenter _didAlreadyAcceptResultCandidate:]";
      v22 = 2112;
      v23 = *&selectedResultCandidate;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s selectedResultCandidate = %@ (processedAudioDuration = %f, resultId = %@)", &v20, 0x2Au);

      v10 = AFSiriLogContextDaemon;
    }

    v17 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      speechAcceptedResultCandidateDuration = self->_speechAcceptedResultCandidateDuration;
      v20 = 136315394;
      v21 = "[ADCommandCenter _didAlreadyAcceptResultCandidate:]";
      v22 = 2048;
      v23 = speechAcceptedResultCandidateDuration;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s speechAcceptedResultCandidateDuration = %f", &v20, 0x16u);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_acceptResultCandidate:(id)a3 isMitigated:(BOOL)a4 featuresToLog:(id)a5 completion:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [v11 refId];
  if ([(ADCommandCenter *)self _refIdIsSpeechStart:v14])
  {
    v40 = v8;
    v15 = [v11 resultId];
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = [v11 aceId];
      *buf = 136315906;
      v45 = "[ADCommandCenter _acceptResultCandidate:isMitigated:featuresToLog:completion:]";
      v46 = 2112;
      v47 = v18;
      v48 = 2112;
      v49 = v14;
      v50 = 2112;
      v51 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Check if ResultCandidate has already been accepted rcId: %@ refId: %@ with resultId: %@", buf, 0x2Au);
    }

    if ([(ADCommandCenter *)self _didAlreadyAcceptResultCandidate:v11])
    {
      if (v13)
      {
        (*(v13 + 2))(v13, 0, 0);
      }
    }

    else
    {
      objc_storeStrong(&self->_selectedResultCandidate, a3);
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        selectedResultCandidate = self->_selectedResultCandidate;
        v22 = v20;
        v23 = [(SASResultCandidate *)selectedResultCandidate processedAudioDuration];
        [v23 doubleValue];
        v25 = v24;
        v26 = [(SASResultCandidate *)self->_selectedResultCandidate resultId];
        *buf = 136315906;
        v45 = "[ADCommandCenter _acceptResultCandidate:isMitigated:featuresToLog:completion:]";
        v46 = 2112;
        v47 = selectedResultCandidate;
        v48 = 2048;
        v49 = v25;
        v50 = 2112;
        v51 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s selectedResultCandidate = %@ (processedAudioDuration = %f, resultId = %@)", buf, 0x2Au);
      }

      v27 = AFAnalyticsContextCreateWithCommand();
      v43[0] = v27;
      if (v12)
      {
        v41 = @"features";
        v42 = v12;
        v28 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      }

      else
      {
        v28 = &__NSDictionary0__struct;
      }

      v43[1] = v28;
      v29 = [NSArray arrayWithObjects:v43 count:2];
      v30 = AFAnalyticsContextsMerge();

      if (v12)
      {
      }

      v31 = +[AFAnalytics sharedAnalytics];
      [v31 logEventWithType:310 context:v30];

      v32 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v33 = v32;
        v34 = [v11 aceId];
        *buf = 136315906;
        v45 = "[ADCommandCenter _acceptResultCandidate:isMitigated:featuresToLog:completion:]";
        v46 = 2112;
        v47 = v34;
        v48 = 2112;
        v49 = v14;
        v50 = 2112;
        v51 = v15;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Accepted this ResultCandidate aceId: %@ refId: %@ with resultId %@", buf, 0x2Au);
      }

      v35 = [(ADCommandCenter *)self _speechCapturingContext];
      v36 = [v11 aceId];
      [v35 updateSelectedResultCandidateId:v36];

      if (v13)
      {
        v37 = objc_alloc_init(SAResultSelected);
        [v37 setRefId:v14];
        v38 = [v11 processedAudioDuration];
        [v37 setProcessedAudioDuration:v38];

        [v37 setResultId:v15];
        v39 = [NSNumber numberWithBool:v40];
        [v37 setIsMitigated:v39];

        (*(v13 + 2))(v13, v37, 0);
      }
    }
  }

  else
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v45 = "[ADCommandCenter _acceptResultCandidate:isMitigated:featuresToLog:completion:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s ResultCandidate is out of scope in accept. Ignoring.", buf, 0xCu);
    }

    if (v13)
    {
      (*(v13 + 2))(v13, 0, 0);
    }
  }
}

- (void)_sasResultCandidate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "[ADCommandCenter _sasResultCandidate:completion:]";
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s resultCandidate = %@", buf, 0x16u);
  }

  v9 = [v6 refId];
  if ([(ADCommandCenter *)self _refIdIsSpeechStart:v9])
  {
    self->_hasReceivedAtLeastOneResultCandidate = 1;
    v10 = [v6 processedAudioDuration];
    [v10 doubleValue];
    v12 = v11;

    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = [v6 resultId];
      *buf = 136315906;
      v31 = "[ADCommandCenter _sasResultCandidate:completion:]";
      v32 = 2112;
      v33 = v6;
      v34 = 2048;
      v35 = v12;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@ (processedAudioDuration = %f, resultId = %@)", buf, 0x2Au);

      v13 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = v13;
      v17 = [v6 aceId];
      v18 = [v6 resultId];
      *buf = 136315906;
      v31 = "[ADCommandCenter _sasResultCandidate:completion:]";
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Check if ResultCandidate has already been accepted rcId: %@ refId: %@ with resultId: %@", buf, 0x2Au);
    }

    if (![(ADCommandCenter *)self _didAlreadyAcceptResultCandidate:v6])
    {
      v19 = +[AFAnalytics sharedAnalytics];
      [v19 logEventWithType:308 context:0];

      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        speechHasAcceptedResultCandidate = self->_speechHasAcceptedResultCandidate;
        *buf = 136315394;
        v31 = "[ADCommandCenter _sasResultCandidate:completion:]";
        v32 = 1024;
        LODWORD(v33) = speechHasAcceptedResultCandidate;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s forceAccept = %d", buf, 0x12u);
      }

      v22 = [(ADCommandCenter *)self _speechManager];
      v23 = self->_speechHasAcceptedResultCandidate;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100202030;
      v25[3] = &unk_100515F50;
      v25[4] = self;
      v26 = v9;
      v29 = v12;
      v28 = v7;
      v27 = v6;
      [v22 updateEndpointHintForRC:v27 forceAccept:v23 completion:v25];

      goto LABEL_16;
    }
  }

  else
  {
    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "[ADCommandCenter _sasResultCandidate:completion:]";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s ResultCandidate for a different request. Ignoring.", buf, 0xCu);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

LABEL_16:
}

- (void)_saDeviceMyriadConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AFPreferences sharedPreferences];
  if ([v8 myriadServerProvisioning])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100202604;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    if (qword_100590500 != -1)
    {
      dispatch_once(&qword_100590500, block);
    }

    v9 = arc4random_uniform(0xFFu);
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[ADCommandCenter _saDeviceMyriadConfiguration:completion:]";
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Server sent Myriad device configuration. Notifying clients with state %llu", buf, 0x16u);
    }

    [v6 deviceClass];
    [v8 setMyriadDeviceClass:v11];
    [v6 deviceAdjustment];
    *&v12 = v12;
    [v8 setMyriadDeviceAdjust:v12];
    [v6 deviceDelay];
    [v8 setMyriadDeviceDelay:?];
    [v6 deviceTrumpDelay];
    [v8 setMyriadDeviceTrumpDelay:?];
    [v8 setMyriadServerHasProvisioned:1];
    [v6 deviceVTEndtimeDistanceThreshold];
    [v8 setMyriadDeviceVTEndTimeDistanceThreshold:?];
    v13 = AFSupportsSCDAFramework();
    v14 = &qword_1005904F8;
    if (!v13)
    {
      v14 = &qword_1005904F0;
    }

    [*v14 publishState:v9];
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADCommandCenter _saDeviceMyriadConfiguration:completion:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Server sent Myriad device configuration, but it was ignored", buf, 0xCu);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_saDeviceConfiguration:(id)a3 completion:(id)a4
{
  v5 = COERCE_DOUBLE(a3);
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v36 = 136315394;
    v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceConfiguration = %@", &v36, 0x16u);
  }

  [*&v5 initialInterstitialDelay];
  v9 = v8;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v36 = 136315394;
    v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
    v38 = 2048;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s initialInterstitialDelay = %f", &v36, 0x16u);
  }

  _AFPreferencesSetInitialInterstitialDelay();
  [*&v5 initialInterstitialDelayForCarPlay];
  v12 = v11;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v36 = 136315394;
    v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
    v38 = 2048;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s initialInterstitialDelayForCarPlay = %f", &v36, 0x16u);
  }

  _AFPreferencesSetInitialInterstitialDelay();
  [*&v5 initialInterstitialDelayForVoiceTriggerOneShotWithoutAudioDucking];
  v15 = v14;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v36 = 136315394;
    v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
    v38 = 2048;
    v39 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s initialInterstitialDelayForVoiceTriggerOneShotWithoutAudioDucking = %f", &v36, 0x16u);
  }

  _AFPreferencesSetInitialInterstitialDelayForVoiceTriggerOneShotWithoutAudioDucking();
  v17 = [*&v5 hasAudioSessionActivationDelay];
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v36 = 136315394;
    v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
    v38 = 1024;
    LODWORD(v39) = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s hasAudioSessionActivationDelay = %d", &v36, 0x12u);
  }

  if (v17)
  {
    [*&v5 audioSessionActivationDelay];
    v20 = v19;
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v36 = 136315394;
      v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
      v38 = 2048;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s audioSessionActivationDelay = %f", &v36, 0x16u);
    }

    v22 = +[ADPreferences sharedPreferences];
    v23 = [NSNumber numberWithDouble:v20];
    [v22 setServerAudioSessionActivationDelay:v23];

    [*&v5 mediaPlaybackVolumeThresholdForAudioSessionActivationDelay];
    v25 = v24;
    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v36 = 136315394;
      v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
      v38 = 2048;
      v39 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s mediaPlaybackVolumeThresholdForAudioSessionActivationDelay = %f", &v36, 0x16u);
    }

    v27 = +[ADPreferences sharedPreferences];
    v28 = [NSNumber numberWithDouble:v25];
    [v27 setServerMediaPlaybackVolumeThresholdForAudioSessionActivationDelay:v28];

    [*&v5 audioSessionActivationDelayAboveMediaPlaybackVolumeThreshold];
    v30 = v29;
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v36 = 136315394;
      v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
      v38 = 2048;
      v39 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s audioSessionActivationDelayAboveMediaPlaybackVolumeThreshold = %f", &v36, 0x16u);
    }

    v32 = +[ADPreferences sharedPreferences];
    v33 = [NSNumber numberWithDouble:v30];
    [v32 setServerAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold:v33];
  }

  else
  {
    v34 = +[ADPreferences sharedPreferences];
    [v34 setServerAudioSessionActivationDelay:0];

    v35 = +[ADPreferences sharedPreferences];
    [v35 setServerMediaPlaybackVolumeThresholdForAudioSessionActivationDelay:0];

    v32 = +[ADPreferences sharedPreferences];
    [v32 setServerAudioSessionActivationDelayAboveMediaPlaybackVolumeThreshold:0];
  }

  AFInternalPreferencesSynchronize();
  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)_saCancelCrossDeviceRequest:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v6 = a3;
  v7 = [v6 requestId];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = v8;
    *buf = 136315650;
    v17 = "[ADCommandCenter _saCancelCrossDeviceRequest:executionContext:completion:]";
    v18 = 2112;
    v19 = v7;
    v20 = 1024;
    v21 = [v6 cancelAssociatedRequests];
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s %@, shouldCancelAssociatedRequest? %d", buf, 0x1Cu);
  }

  v9 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  if ([v9 isEqualToString:v7])
  {

LABEL_5:
    [(ADCommandCenter *)self cancelCurrentRequest];
    [(ADCommandCenter *)self _clearContext];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100202D9C;
    v15[3] = &unk_100515F00;
    v15[4] = mach_absolute_time();
    v10 = [AFSiriActivationContext newWithBuilder:v15];
    v11 = +[AFSiriActivationConnection sharedConnection];
    [v11 deactivateForReason:15 options:1 context:v10 completion:0];
LABEL_13:

    goto LABEL_14;
  }

  if ([(NSString *)self->_associatedRequestId isEqualToString:v7])
  {
    v12 = [v6 cancelAssociatedRequests];

    if (v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  if ([(ADCommandCenter *)self _hasRemoteExecutionContextForRequestID:v7]|| self->_mostRecentVisibleRemoteExecutionContext)
  {
    v10 = [(ADCommandCenter *)self _serviceManager];
    v11 = [(ADCommandCenter *)self _account];
    v13 = [v11 assistantIdentifier];
    [v10 cancelOperationsForRequest:v7 forAssistantID:v13 fromRemote:1 reason:2];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)_saReplayRequestFromDMHypothesis:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AFRequestInfo);
  [v8 setStartRequest:v7];

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADCommandCenter _saReplayRequestFromDMHypothesis:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100202F60;
  v11[3] = &unk_10051CE00;
  v12 = v6;
  v10 = v6;
  [(ADCommandCenter *)self handleExternalActivationRequest:v8 completion:v11];
}

- (void)_saStartUIRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AFRequestInfo);
  v9 = [v7 startRequest];
  [v8 setStartRequest:v9];

  v10 = [v7 startLocalRequest];

  [v8 setStartLocalRequest:v10];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100203090;
  v12[3] = &unk_10051CE00;
  v13 = v6;
  v11 = v6;
  [(ADCommandCenter *)self handleExternalActivationRequest:v8 completion:v12];
}

- (void)_saWaitForCommands:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v37 = [v5 refId];
  v7 = [v5 commandAceIds];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v57 = "[ADCommandCenter _saWaitForCommands:completion:]";
    v58 = 2112;
    v59 = v5;
    v60 = 2112;
    v61 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ (commands = %@)", buf, 0x20u);
  }

  if (![(ADCommandCenter *)self _hasOutstandingRequestId:v37])
  {
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v57 = "[ADCommandCenter _saWaitForCommands:completion:]";
      v58 = 2112;
      v59 = v5;
      v60 = 2112;
      v61 = v37;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Ignored %@ because request id %@ is unknown.", buf, 0x20u);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else if (!v6)
    {
      goto LABEL_24;
    }

    (*(v6 + 2))(v6, 0, 0);
    goto LABEL_24;
  }

  v9 = [AFTwoArgumentSafetyBlock alloc];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1002036D4;
  v53[3] = &unk_10051CD88;
  v54 = v6;
  v10 = [v9 initWithBlock:v53 defaultValue1:0 defaultValue2:0];
  if ([v7 count])
  {
    v35 = v6;
    v11 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100203780;
    v50[3] = &unk_10051E010;
    v33 = v10;
    v32 = v10;
    v51 = v32;
    v31 = v5;
    v52 = v31;
    v30 = [v11 initWithTimeoutInterval:queue onQueue:v50 timeoutHandler:30.0];
    [v30 start];
    v13 = dispatch_group_create();
    v14 = [(ADCommandCenter *)self _handledCommandIdsForRequestId:v37];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v34 = v7;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v47;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v47 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v46 + 1) + 8 * i);
          v21 = [v14 containsObject:v20];
          v22 = AFSiriLogContextDaemon;
          v23 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
          if (v21)
          {
            if (v23)
            {
              *buf = 136315394;
              v57 = "[ADCommandCenter _saWaitForCommands:completion:]";
              v58 = 2112;
              v59 = v20;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Command %@ is already handled. No need to wait.", buf, 0x16u);
            }
          }

          else
          {
            if (v23)
            {
              *buf = 136315394;
              v57 = "[ADCommandCenter _saWaitForCommands:completion:]";
              v58 = 2112;
              v59 = v20;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Start waiting for command %@ ...", buf, 0x16u);
            }

            dispatch_group_enter(v13);
            v24 = [AFSafetyBlock alloc];
            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_100203854;
            v44[3] = &unk_10051C128;
            v44[4] = v20;
            v45 = v13;
            v25 = [v24 initWithBlock:v44];
            v42[0] = _NSConcreteStackBlock;
            v42[1] = 3221225472;
            v42[2] = sub_100203918;
            v42[3] = &unk_10051DFE8;
            v43 = v25;
            v26 = v25;
            [(ADCommandCenter *)self _addPostCommandHandlingBlock:v42 forCommandId:v20 requestId:v37];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v17);
    }

    v27 = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100203924;
    block[3] = &unk_10051DB68;
    v39 = v30;
    v40 = v32;
    v41 = v31;
    v28 = v30;
    dispatch_group_notify(v13, v27, block);

    v6 = v35;
    v10 = v33;
    v7 = v34;
  }

  else
  {
    [v10 invokeWithValue:0 andValue:0];
  }

LABEL_24:
}

- (void)_saPing:(id)a3 completion:(id)a4
{
  v8 = a4;
  v5 = a3;
  v6 = objc_alloc_init(SAPong);
  v7 = [v5 aceId];

  [v6 setRefId:v7];
  if (v8)
  {
    v8[2](v8, v6, 0);
  }
}

- (void)_saSetDeviceTTSMuteState:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter _saSetDeviceTTSMuteState:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  -[ADCommandCenterClient adServerRequestsTTSStateUnmuted:](self->_currentClient, "adServerRequestsTTSStateUnmuted:", [v6 textToSpeechIsMuted] ^ 1);
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_saInitiateHandoffOnCompanion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ADCommandCenter _saInitiateHandoffOnCompanion:completion:]";
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = objc_alloc_init(AFRequestInfo);
  v10 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions turnIdentifier];
  [v9 setTurnIdentifier:v10];

  v11 = [v6 notificationText];
  if (AFIsATVOnly())
  {
    [v9 setIsATVHandoff:1];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    if (!v11)
    {
      v11 = [v12 localizedStringForKey:@"ASSISTANT_SERVICES_ATV_REQUEST_HANDOFF_NOTIFICATION_BODY" value:0 table:0];
    }
  }

  if (v11)
  {
    [v9 setHandoffNotification:v11];
    [v9 setHandoffRequiresUserInteraction:1];
  }

  v14 = [v6 isSiriXRequest];
  [v9 setIsSiriXRequest:{objc_msgSend(v14, "BOOLValue")}];

  v15 = [v6 handoffPayload];
  [v9 _ad_setHandoffPayload:v15];

  v16 = [v6 targetDevice];
  v17 = [v16 assistantId];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100203F04;
  v26[3] = &unk_10051DD98;
  v18 = v6;
  v27 = v18;
  v19 = v7;
  v28 = v19;
  v20 = objc_retainBlock(v26);
  if (!AFIsATV() || v17)
  {
    [(ADCommandCenter *)self startRemoteRequest:v9 onTargetDevice:v17 completion:v20];
  }

  else
  {
    v21 = +[ADMultiUserService sharedService];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100203FB4;
    v22[3] = &unk_100515EE0;
    v22[4] = self;
    v23 = v9;
    v24 = v20;
    v25 = v19;
    [v21 getCompanionAssistantIdForRecognizedUser:v22];
  }
}

- (void)_saExecuteCallbacks:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v5 callbacks];
    v10 = [v9 firstObject];
    v11 = [v10 commandReferences];
    v13 = 136315394;
    v14 = "[ADCommandCenter _saExecuteCallbacks:completion:]";
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s first callback ACE IDs: %@", &v13, 0x16u);
  }

  if ([v5 ad_hasCallbacks])
  {
    v12 = objc_alloc_init(SACommandSucceeded);
    v6[2](v6, v12, 0);
  }

  else
  {
    v6[2](v6, 0, 0);
  }
}

- (void)_saAddResultObjects:(id)a3 completion:(id)a4
{
  v5 = a3;
  v34 = a4;
  v6 = v5;
  v7 = [v6 objects];
  v31 = [v6 resultObjects];
  v29 = [v31 count];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 count];
    v11 = [v6 aceId];
    v12 = [v6 refId];
    *buf = 136315906;
    v46 = "_LogARO";
    v47 = 2048;
    v48 = v10;
    v49 = 2112;
    v50 = v11;
    v51 = 2112;
    v52 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Got AddResultObjects with %lu objects aceID=%@, refId=%@ ", buf, 0x2Au);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = v6;
  v13 = [v6 objects];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:buf count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = v18;
          v21 = [v19 encodedClassName];
          v22 = [v19 aceId];
          *v39 = 136315650;
          v40 = "_LogARO";
          v41 = 2112;
          v42 = v21;
          v43 = 2112;
          v44 = v22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s  - %@ %@", v39, 0x20u);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:buf count:16];
    }

    while (v15);
  }

  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    if (v30)
    {
      v24 = [v33 valueForKey:@"aceId"];
    }

    else
    {
      v24 = &stru_10051F508;
    }

    *v39 = 136315650;
    v40 = "_LogARO";
    v41 = 2048;
    v42 = v30;
    v43 = 2112;
    v44 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s And %lu resultObjects %@", v39, 0x20u);
    if (v30)
    {
    }
  }

  v25 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  v26 = [v33 refId];

  if (!v26)
  {
    [v33 setRefId:v25];
  }

  v27 = [(ADSessionManager *)self->_sessionManager sessionRequestIdForRefId:v25];
  v28 = [(ADCommandCenter *)self _resultObjectCache];
  [v28 addResultObjects:v33 sessionRequestId:v27];

  if (v34)
  {
    (*(v34 + 2))(v34, 0, 0);
  }
}

- (void)_emitTriggerWithCachingForUUID:(id)a3 namespace:(id)a4 requestID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ADCommandCenter *)self _experimentationAnalyticsManager];
  v21 = v9;
  v12 = [NSArray arrayWithObjects:&v21 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002046FC;
  v16[3] = &unk_100515EB8;
  v17 = v8;
  v18 = v9;
  v19 = self;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v11 cacheTrialExperimentsIdentifiersForCodePathID:v15 namespaces:v12 completionHandler:v16];
}

- (void)_saStartLocalRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _saStartLocalRequest:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  [(ADCommandCenter *)self _startLocalRequest:v6 withRequestInfo:0 forDelegate:0 suppressCancelationAlertIfCapturingSpeech:0 completion:0];
  if (v7)
  {
    v9 = objc_alloc_init(SACommandSucceeded);
    v7[2](v7, v9, 0);
  }
}

- (void)_saSetHandoffPayload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[ADCommandCenter _saSetHandoffPayload:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12 = 0;
  v13 = 0;
  [ADRemoteRequestHelper getInfoForHandoffPayload:v6 userInfo:&v13 wepageURL:&v12];
  v9 = v13;
  v10 = v12;
  [(ADCommandCenterClient *)self->_currentClient adSetUserActivityInfo:v9 webpageURL:v10];
  if (v7)
  {
    v11 = objc_alloc_init(SACommandSucceeded);
    v7[2](v7, v11, 0);
  }
}

- (void)_saSetClientData:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v5 holdToTalkThresholdInMilliseconds];
    v16 = 136315394;
    v17 = "[ADCommandCenter _saSetClientData:completion:]";
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s holdToTalkThresholdInMilliseconds: %@", &v16, 0x16u);
  }

  v10 = +[AFPreferences sharedPreferences];
  v11 = [v10 ignoreServerManualEndpointingThreshold];

  if (v11)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[ADCommandCenter _saSetClientData:completion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s ignoring server configured HTT threshold", &v16, 0xCu);
    }
  }

  else
  {
    v13 = +[AFPreferences sharedPreferences];
    v14 = [v5 holdToTalkThresholdInMilliseconds];
    v15 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v14 integerValue] / 1000.0);
    [v13 setManualEndpointingThreshold:v15];
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)_saRollbackSucceeded:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (void)_saCancelSucceeded:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (void)_saAssistantDestroyed:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (void)_handleSendCommands:(id)a3 forRequestDelegate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v19 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "[ADCommandCenter _handleSendCommands:forRequestDelegate:completion:]";
    v29 = 2112;
    v30 = v8;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s sending commands : %@", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = v8;
  v11 = [v8 commands];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ADCommandCenter *)self _startNonSpeechRequest:v16 forDelegate:v9 withInfo:0 options:0 suppressAlert:1 completion:0];
        }

        else
        {
          v17 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v28 = "[ADCommandCenter _handleSendCommands:forRequestDelegate:completion:]";
            v29 = 2112;
            v30 = v16;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s sending commands to server : %@", buf, 0x16u);
          }

          [(ADCommandCenter *)self _sendCommandToServer:v16 opportunistically:0];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  if (v20)
  {
    v18 = objc_alloc_init(SACommandSucceeded);
    (v20)[2](v20, v18, 0);
  }
}

- (void)_saCommandIgnored:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 refId];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[ADCommandCenter _saCommandIgnored:completion:]";
    v15 = 2112;
    v16 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s CommandIgnored for refId %@", &v13, 0x16u);
  }

  v11 = [(ADCommandCenter *)self _sessionManager];
  [v11 endRetryableRequestForCommand:v8];

  v12 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _removeOutstandingRequestId:v9 forReason:v12];

  [(ADCommandCenter *)self _sync_commandIgnored:v8];
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_saCommandFailed:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 refId];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v24 = v10;
    v25 = [v7 reason];
    v26 = 136315650;
    v27 = "[ADCommandCenter _saCommandFailed:completion:]";
    v28 = 2112;
    v29 = v9;
    v30 = 2114;
    v31 = v25;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s CommandFailed for refId: %@ reason: %{public}@", &v26, 0x20u);
  }

  v11 = [(ADCommandCenter *)self _sessionManager];
  [v11 endRetryableRequestForCommand:v7];

  v12 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _removeOutstandingRequestId:v9 forReason:v12];

  if (-[ADCommandCenter _refIdIsSpeechStart:](self, "_refIdIsSpeechStart:", v9) || (-[SASFinishSpeech aceId](self->_finishSpeechCommand, "aceId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEqualToString:v9], v13, v14))
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315138;
      v27 = "[ADCommandCenter _saCommandFailed:completion:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s SpeechCommand failed", &v26, 0xCu);
    }

    v16 = [v7 errorCode];
    if (v16 == SASDictationNotReadyErrorCode)
    {
      v17 = [v7 ad_error];
      v18 = [AFError errorWithCode:6 description:@"Speech not ready" underlyingError:v17];
    }

    else
    {
      if ([v7 errorCode] == 1101 || objc_msgSend(v7, "errorCode") == 1107)
      {
        v18 = +[AFError errorWithCode:description:](AFError, "errorWithCode:description:", [v7 errorCode], @"Local speech recognition failed");
        goto LABEL_13;
      }

      v17 = [v7 reason];
      v23 = [v7 ad_error];
      v18 = [AFError errorWithCode:2 description:v17 underlyingError:v23];
    }

LABEL_13:
    [(ADCommandCenter *)self _endSpeechRequestForCommand:v7 withError:v18 suppressAlert:0 secureOfflineOnlyDictation:0];
LABEL_14:

    goto LABEL_15;
  }

  v19 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  v20 = [v19 isEqualToString:v9];

  if (v20)
  {
    v21 = [v7 reason];
    v22 = [v7 ad_error];
    v18 = [AFError errorWithCode:2 description:v21 underlyingError:v22];

    [(ADCommandCenter *)self _completeRequestForCurrentDelegate:0 error:v18];
    [(ADCommandCenter *)self _setCurrentRequest:0];
    [(ADCommandCenter *)self _requestDidEnd];
    goto LABEL_14;
  }

LABEL_15:
  [(ADCommandCenter *)self _acousticId_commandFailed:v7];
  [(ADCommandCenter *)self _sync_commandFailed:v7];
  if (v8)
  {
    (*(v8 + 2))(v8, 0, 0);
  }
}

- (void)_saRequestCompleted:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [(ADCommandCenter *)self _currentRequest];
    v14 = [v13 currentRequestId];
    *buf = 136315906;
    v25 = "[ADCommandCenter _saRequestCompleted:executionContext:completion:]";
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Request completed for id %@: %@ %@", buf, 0x2Au);
  }

  if (AFIsHorseman())
  {
    [(ADCommandCenter *)self _logMURequestEndedWithResultCandidate:self->_selectedResultCandidate];
  }

  if ([v8 ad_hasCallbacks])
  {
    v15 = [v8 copy];
    [v15 setCallbacks:0];
    v16 = objc_alloc_init(SAAddResultObjects);
    v17 = [v15 refId];
    [v16 setRefId:v17];
    v23 = v15;
    v18 = [NSArray arrayWithObjects:&v23 count:1];
    [v16 setObjects:v18];

    v19 = [(ADSessionManager *)self->_sessionManager sessionRequestIdForRefId:v17];
    v20 = [(ADCommandCenter *)self _resultObjectCache];
    [v20 addResultObjects:v16 sessionRequestId:v19];

    v21 = objc_alloc_init(SACommandSucceeded);
    v22 = [v8 refId];
    [(ADCommandCenter *)self _handleNextCallbacksForReply:v21 forCommand:v8 forRequestId:v22 withExecutionContext:v9];

    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [(ADCommandCenter *)self _handleBareRequestCompleted:v8];
  if (v10)
  {
LABEL_9:
    (*(v10 + 2))(v10, 0, 0);
  }

LABEL_10:
}

- (void)_handleBareRequestCompleted:(id)a3
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[ADCommandCenter _handleBareRequestCompleted:]";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s requestCompleted = %@", &v20, 0x16u);
  }

  v7 = [v5 refId];
  v8 = [(ADCommandCenter *)self _resultObjectCache];
  [v8 clearResultObjectsForRequestId:v7];

  v9 = [(ADCommandCenter *)self _sessionManager];
  [v9 endRetryableRequestForCommand:v5];

  v10 = [(ADCommandCenter *)self _currentRequest];
  v11 = [v10 currentRequestCommand];
  [(ADCommandCenter *)self _setLastRequest:v11];

  [(ADCommandCenter *)self _setCurrentRequest:0];
  [(ADCommandCenter *)self _requestDidEnd];
  v12 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _removeOutstandingRequestId:v7 forReason:v12];

  v13 = [v5 refId];
  if (![(ADCommandCenter *)self _refIdIsSpeechStart:v13])
  {
    goto LABEL_8;
  }

  speechDelegateHasReceivedSpeechRecognized = self->_speechDelegateHasReceivedSpeechRecognized;

  if (!speechDelegateHasReceivedSpeechRecognized)
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[ADCommandCenter _handleBareRequestCompleted:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Failing speech request on request completed since we never got a speech recognized", &v20, 0xCu);
    }

    v13 = [AFError errorWithCode:22];
    [(ADCommandCenter *)self _endSpeechRequestForCommand:v5 withError:v13 suppressAlert:0 secureOfflineOnlyDictation:0];
LABEL_8:
  }

  v16 = [v5 refId];
  [(ADCommandCenter *)self _removeFirstChanceServiceForAceId:v16];

  [(ADCommandCenter *)self _completeRequestForCurrentDelegate:1 error:0];
  [(ADCommandCenter *)self _sync_continueIfConditionsMet];
  v17 = [(ADCommandCenter *)self _requestDispatcherService];
  v18 = [(ADCommandCenter *)self _account];
  v19 = [v18 assistantIdentifier];
  [v17 requestCompletedWithAssistantId:v19 requestId:v7];
}

- (BOOL)_isRequestDelaying
{
  v2 = [(ADCommandCenter *)self _requestDelayManager];
  v3 = [v2 isDelaying];

  return v3;
}

- (void)adCallStateChangedCallIncoming:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100205C70;
  v4[3] = &unk_10051CBD8;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)adCallStateChangedCallInProcess:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100205DC0;
  v4[3] = &unk_10051CBD8;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)_stopObservingCallStateWithCompletion:(id)a3
{
  v4 = a3;
  callObserver = self->_callObserver;
  if (callObserver)
  {
    v7 = v4;
    [(ADCallObserver *)callObserver stopObservingCallStateWithCompletion:v4];
    v6 = self->_callObserver;
    self->_callObserver = 0;

    [(ADCommandCenter *)self _setIsInCall:0];
    callObserver = [(ADCommandCenter *)self _setHasIncomingCall:0];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v7 = v4;
    callObserver = v4[2](v4);
  }

  v4 = v7;
LABEL_6:

  _objc_release_x1(callObserver, v4);
}

- (void)startObservingCallState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100206004;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (unint64_t)callState
{
  result = self->_callObserver;
  if (result)
  {
    return [result currentCallState];
  }

  return result;
}

- (void)_setHasIncomingCall:(BOOL)a3
{
  if (self->_hasIncomingCall != a3)
  {
    self->_hasIncomingCall = a3;
    [(ADContextManager *)self->_contextManager setBackgroundContextDirty];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"ADCallStateDidChangeNotification" object:0];
  }
}

- (void)_setIsInCall:(BOOL)a3
{
  if (self->_isInCall != a3)
  {
    block[9] = v3;
    block[10] = v4;
    v5 = a3;
    v7 = +[AFAnalytics sharedAnalytics];
    v8 = v7;
    if (v5)
    {
      v9 = 4901;
    }

    else
    {
      v9 = 4902;
    }

    [v7 logEventWithType:v9 context:0];

    self->_isInCall = v5;
    [(ADSessionManager *)self->_sessionManager updateForCallState:v5];
    [(ADContextManager *)self->_contextManager setBackgroundContextDirty];
    if (self->_isInCall)
    {
      [(ADCommandCenter *)self _scheduleCallKeepAlive];
    }

    else
    {
      [(ADCommandCenter *)self _setCallIsLikely:0];
      v10 = dispatch_time(0, 60000000000);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002061C4;
      block[3] = &unk_10051DFE8;
      block[4] = self;
      dispatch_after(v10, queue, block);
    }

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 postNotificationName:@"ADCallStateDidChangeNotification" object:0];
  }
}

- (void)_setCallIsLikely:(BOOL)a3
{
  if (self->_callIsLikely != a3)
  {
    self->_callIsLikely = a3;
    [(ADSessionManager *)self->_sessionManager updateForCallIsLikelyDueToRequest:?];
  }
}

- (void)postTestResultSelectedWithRcId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100206280;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)postTestResultCandidateWithRcId:(id)a3 recognitionSausage:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002063FC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_signalUSTTestRequestWithStartRequest:(id)a3 requestInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 speechRequestOptions];
  v9 = [v8 activationEvent] == 17;

  v10 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  v11 = [SMTRequestContextData alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002066C0;
  v25[3] = &unk_100515E90;
  v26 = v10;
  v27 = v6;
  v30 = v9;
  v28 = self;
  v29 = v7;
  v24 = v7;
  v12 = v6;
  v23 = v10;
  v13 = [v11 initWithBuilder:v25];
  v14 = [(ADCommandCenter *)self _requestDispatcherService];
  v15 = [(ADCommandCenter *)self _account];
  v16 = [v15 assistantIdentifier];
  v17 = [v12 aceId];
  v18 = [v12 origin];
  v19 = [(ADCommandCenter *)self _locationManager];
  v20 = [v19 knownLocation];
  [v14 startTestSpeechRequestWithAssistantId:v16 requestId:v17 enableASR:0 inputOrigin:v18 location:v20 jitContext:0 overrideModelPath:0 requestContextData:v13];

  dynamicContextEmitter = self->_dynamicContextEmitter;
  v22 = [v12 aceId];
  [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:v22];
}

- (void)_sendServiceCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002069F4;
  block[3] = &unk_10051E088;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (id)_errorAggregation:(id)a3
{
  v4 = a3;
  v5 = v4;
  errorOnionAggregator = self->_errorOnionAggregator;
  if (!errorOnionAggregator)
  {
    v16 = v4;
LABEL_10:
    v14 = v16;
    goto LABEL_11;
  }

  if (!v4)
  {
    v16 = errorOnionAggregator;
    goto LABEL_10;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(NSError *)self->_errorOnionAggregator underlyingErrors];

  if (v8)
  {
    v9 = [(NSError *)self->_errorOnionAggregator underlyingErrors];
    [v7 addObjectsFromArray:v9];
  }

  [v7 addObject:v5];
  v10 = [NSError alloc];
  v11 = [(NSError *)self->_errorOnionAggregator domain];
  v12 = [(NSError *)self->_errorOnionAggregator code];
  v22 = NSMultipleUnderlyingErrorsKey;
  v23 = v7;
  v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v14 = [v10 initWithDomain:v11 code:v12 userInfo:v13];

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "[ADCommandCenter _errorAggregation:]";
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Embedded error: %@", &v18, 0x16u);
  }

LABEL_11:

  return v14;
}

- (void)_handleServiceCommand:(id)a3 afterMyriadDecision:(BOOL)a4 executionContext:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!self->_disableServiceCommandExecution)
  {
    v48 = v8;
    v14 = [v10 encodedClassName];
    v15 = [v10 groupIdentifier];
    v16 = [(ADCommandCenter *)self _serviceManager];
    v17 = [v16 serviceForDomain:v15 command:v14];
    v18 = [(ADCommandCenter *)self _firstChanceServiceForCommand:v10];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v18 != v17)
    {
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v59 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]";
        v60 = 2112;
        *v61 = v18;
        *&v61[8] = 2112;
        *&v61[10] = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Using first chance service %@ instead of originally found service %@", buf, 0x20u);
      }

      v20 = v18;
      v21 = v18;

      v17 = v21;
      v18 = v20;
    }

    v22 = AFSiriLogContextDaemon;
    v23 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v17)
    {
      v44 = v18;
      v45 = v16;
      if (v23)
      {
        v24 = v22;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v17 identifier];
        *buf = 136315650;
        v59 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]";
        v60 = 2112;
        *v61 = v26;
        *&v61[8] = 2112;
        *&v61[10] = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Dispatching command %@ to service %@", buf, 0x20u);
      }

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100207548;
      v51[3] = &unk_100517EA8;
      v51[4] = self;
      v28 = v10;
      v52 = v28;
      v47 = v11;
      v53 = v11;
      v57 = v12;
      v54 = v14;
      v29 = v17;
      v55 = v29;
      v46 = v15;
      v30 = v15;
      v56 = v30;
      v43 = objc_retainBlock(v51);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v28 aceId];
      v34 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
      v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(Service: %@, Domain %@, Command: %@(%@), RequestId: %@"), v29, v30, v32, v33, v34;

      v36 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v59 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]";
        v60 = 1024;
        *v61 = v48;
        *&v61[4] = 2112;
        *&v61[6] = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s Wait for Myriad decision: %d  with reason: %@", buf, 0x1Cu);
      }

      v16 = v45;
      if (v48)
      {
        v37 = AFSupportsSCDAFramework();
        v38 = SCDAMonitor_ptr;
        if (!v37)
        {
          v38 = AFMyriadMonitor_ptr;
        }

        v39 = [*v38 sharedMonitor];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1002079F0;
        v49[3] = &unk_10051C718;
        v49[4] = self;
        v40 = v43;
        v50 = v43;
        [v39 waitForMyriadDecisionForReason:v35 withCompletion:v49];
      }

      else
      {
        v40 = v43;
        (v43[2])(v43);
      }

      v11 = v47;
      v15 = v46;
      v18 = v44;
    }

    else
    {
      if (v23)
      {
        *buf = 136315650;
        v59 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]";
        v60 = 2112;
        *v61 = v15;
        *&v61[8] = 2112;
        *&v61[10] = v14;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Couldn't find service for %@ %@", buf, 0x20u);
      }

      if (v12)
      {
        [AFError errorWithCode:100];
        v42 = v41 = v18;
        (*(v12 + 2))(v12, 0, v42);

        v18 = v41;
      }
    }

    goto LABEL_27;
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v59 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]";
    v60 = 2112;
    *v61 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Command %@ will not be executed because service command execution is disabled.", buf, 0x16u);
  }

  if (v12)
  {
    v14 = [AFError errorWithCode:46];
    (*(v12 + 2))(v12, 0, v14);
LABEL_27:
  }
}

- (void)_handleServiceCommand:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(ADCommandCenter *)self _handleServiceCommand:v10 afterMyriadDecision:sub_100010A0C(v10) executionContext:v9 completion:v8];
}

- (void)_performCallbacksForCommand:(id)a3 reply:(id)a4 executionContext:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 ad_hasCallbacks])
  {
    v13 = [v10 ad_shouldIgnoreCallbacksOnReply];
    v14 = AFSiriLogContextDaemon;
    v15 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v15)
      {
        v18 = 136315138;
        v19 = "[ADCommandCenter _performCallbacksForCommand:reply:executionContext:error:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Ignoring callbacks in reply", &v18, 0xCu);
      }
    }

    else
    {
      if (v15)
      {
        v18 = 136315138;
        v19 = "[ADCommandCenter _performCallbacksForCommand:reply:executionContext:error:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s We're in a callback context, asking callback manager for next commands", &v18, 0xCu);
      }

      if (a6)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11;
      }

      v17 = [v10 refId];
      [(ADCommandCenter *)self _handleNextCallbacksForReply:v16 forCommand:v10 forRequestId:v17 withExecutionContext:v12];
    }
  }
}

- (void)_preheatCallbacksForCommand:(id)a3
{
  v4 = a3;
  if ([v4 ad_hasCallbacks])
  {
    v5 = [v4 refId];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[ADCommandCenter _preheatCallbacksForCommand:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Searching callbacks for phone call command", &v14, 0xCu);
    }

    if ([(ADCommandCenter *)self _callIsLikely])
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = 136315138;
        v15 = "[ADCommandCenter _preheatCallbacksForCommand:]";
        v8 = "%s Call is already likely not checking again";
        v9 = v7;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v14, 0xCu);
      }
    }

    else
    {
      v10 = [(ADCommandCenter *)self _resultObjectCache];
      v11 = [v10 callIsPossibleForRequestId:v5];

      v12 = AFSiriLogContextDaemon;
      v13 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (v11)
      {
        if (v13)
        {
          v14 = 136315138;
          v15 = "[ADCommandCenter _preheatCallbacksForCommand:]";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Found phone call command", &v14, 0xCu);
        }

        [(ADCommandCenter *)self _setCallIsLikely:1];
        goto LABEL_14;
      }

      if (v13)
      {
        v14 = 136315138;
        v15 = "[ADCommandCenter _preheatCallbacksForCommand:]";
        v8 = "%s No phone call command found";
        v9 = v12;
        goto LABEL_13;
      }
    }

LABEL_14:
  }
}

- (void)_handleCommandResponse:(id)a3 error:(id)a4 forCommand:(id)a5 executionContext:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v12, v13);
  }

  v34 = v13;
  v18 = [v14 aceId];
  v19 = [v14 refId];
  v20 = [v15 info];
  v21 = [v20 requestID];

  if (v19 && ([(ADCommandCenter *)self _hasOutstandingRequestId:v19]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v19]) || v21 && ([(ADCommandCenter *)self _hasOutstandingRequestId:v21]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v21]))
  {
    [(ADCommandCenter *)self _addHandledCommandId:v18 forRequestId:v19];
    [(ADCommandCenter *)self _dispatchAndRemovePostCommandHandlingBlocksForCommandId:v18 requestId:v19];
  }

  v22 = [v15 originPeerInfo];
  v23 = [v12 ad_shouldBeHandledByClientAsResponseToCommand:v14 fromPeer:v22];

  if (v23)
  {
    v24 = [v14 encodedClassName];
    v25 = [v14 groupIdentifier];
    v32 = [(ADCommandCenter *)self _serviceManager];
    v33 = v25;
    v26 = [v32 serviceForDomain:v25 command:v24];
    if (v26)
    {
      v31 = v24;
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v28 = v27;
        v30 = [v26 identifier];
        *buf = 136315394;
        v41 = "[ADCommandCenter _handleCommandResponse:error:forCommand:executionContext:completion:]";
        v42 = 2112;
        v43 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Dispatching response to service %@", buf, 0x16u);
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100208A70;
      v35[3] = &unk_1005180D8;
      v35[4] = self;
      v36 = v14;
      v37 = v12;
      v38 = v15;
      v39 = v34;
      [v26 handleResponse:v37 toCommand:v36 completion:v35];

      v24 = v31;
    }

    else
    {
      [(ADCommandCenter *)self _performCallbacksForCommand:v14 reply:v12 executionContext:v15 error:v34];
    }

    v29 = v34;
  }

  else
  {
    v29 = v34;
    [(ADCommandCenter *)self _performCallbacksForCommand:v14 reply:v12 executionContext:v15 error:v34];
  }
}

- (void)_handleCommand:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v46 = "[ADCommandCenter _handleCommand:executionContext:completion:]";
    v47 = 2112;
    v48 = v8;
    v49 = 2112;
    v50 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@ (executionContext = %@)", buf, 0x20u);
  }

  if (AFIsInternalInstall())
  {
    v12 = AFSiriLogContextDaemon;
    v13 = os_signpost_id_generate(AFSiriLogContextDaemon);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        v15 = objc_opt_class();
        *buf = 138412290;
        v46 = v15;
        v16 = v15;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v14, "HandleCommand", "type=%@", buf, 0xCu);
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(ADCommandCenterRequestDelegate *)self->_requestDelegate endWaitingForEmergencyIfNeededForCommand:v8];
  }

  v17 = [v8 refId];
  if ([(ADCommandCenter *)self _shouldIgnoreCommand:v8 executionContext:v9])
  {
    [(ADCommandCenter *)self _handleIgnoredCommand:v8 executionContext:v9 completion:v10];
  }

  else
  {
    [(ADCommandCenter *)self _preheatCallbacksForCommand:v8];
    v18 = [v9 isFromRemote];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10020900C;
    v41[3] = &unk_100515E40;
    v41[4] = self;
    v19 = v8;
    v42 = v19;
    v20 = v9;
    v43 = v20;
    v21 = v10;
    v44 = v21;
    v22 = objc_retainBlock(v41);
    if ([(ADCommandCenter *)self _isClientBoundCommand:v19])
    {
      v32 = v22;
      [(ADCommandCenter *)self _notifyUSTForAceCommand:v19];
      v23 = v19;
      v24 = self->_requestDelegate;
      v31 = v10;
      if (v18)
      {
        v25 = 0;
      }

      else
      {
        v25 = sub_100010A0C(v23);
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100209024;
      v35[3] = &unk_100516158;
      v36 = v17;
      v37 = self;
      v38 = v24;
      v39 = v23;
      v40 = v32;
      v28 = v23;
      v29 = v24;
      [(ADCommandCenter *)self _handleServiceCommand:v28 afterMyriadDecision:v25 executionContext:v20 completion:v35];

      v22 = v32;
    }

    else if ([(ADCommandCenter *)self _isServerBoundCommand:v19])
    {
      v26 = v19;
      v27 = [v26 ad_willHaveReply];
      if (v21 && v27)
      {
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100209100;
        v33[3] = &unk_10051CD88;
        v34 = v22;
        [(ADCommandCenter *)self _sendCommandToServer:v26 opportunistically:0 completion:v33];
      }

      else
      {
        [(ADCommandCenter *)self _sendCommandToServer:v26 opportunistically:0];
        (v22[2])(v22, 0, 0);
      }

      v30 = [v26 ad_getNetworkActivityTracingLabel];

      [(ADCommandCenter *)self _addNetworkActivityTracingForLabel:v30 start:1 withCompletionReason:0 andError:0];
    }

    [(ADCommandCenter *)self _invokeCompletionForCommand:v19, v31];
  }
}

- (void)_handleIgnoredCommand:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "[ADCommandCenter _handleIgnoredCommand:executionContext:completion:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s %@ (executionContext = %@)", &v14, 0x20u);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else if (!v10)
  {
    goto LABEL_8;
  }

  if (-[ADCommandCenter _isClientBoundCommand:](self, "_isClientBoundCommand:", v8) && ![v8 ad_requiresResponse])
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(SACommandIgnored);
    v13 = [v8 aceId];
    [v12 setRefId:v13];
  }

  v10[2](v10, v12, 0);

LABEL_8:
  [(ADCommandCenter *)self _invokeCompletionForCommand:v8];
}

- (BOOL)_shouldIgnoreCommand:(id)a3 executionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 refId];
  v9 = [v7 info];
  v10 = [v9 requestHandlingContextSnapshot];
  v11 = [v10 inputDeviceID];

  v12 = [v7 info];
  v13 = [v12 requestHandlingContextSnapshot];
  v14 = [v13 inputAssistantID];

  if (v14 | v11)
  {
    v15 = +[ADDeviceCircleManager sharedInstance];
    v16 = [v15 localPeerInfo];

    v17 = [v16 assistantIdentifier];
    if ([v14 isEqualToString:v17])
    {
      v18 = [v16 idsDeviceUniqueIdentifier];
      v19 = [v11 isEqualToString:v18];

      if (v19)
      {

        goto LABEL_10;
      }
    }

    else
    {
    }

    v22 = [v7 isFromRemote];

    if ((v22 & 1) == 0)
    {
LABEL_10:
      v23 = [v7 info];
      v24 = [v23 requestID];

      if (!(v8 | v24))
      {
        v25 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *v33 = 136315650;
          *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
          *&v33[12] = 2112;
          *&v33[14] = v6;
          *&v33[22] = 2112;
          v34 = v7;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s Handling %@ because both ref id and request id are nil. (executionContext = %@)", v33, 0x20u);
        }

        goto LABEL_30;
      }

      if (v8)
      {
        if (![(ADCommandCenter *)self _hasOutstandingRequestId:v8]&& ![(ADCommandCenter *)self _sync_hasCommandForRefId:v8]&& ![(ADCommandCenter *)self _acousticId_hasCommandForRefId:v8]&& ![(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v8])
        {
          v26 = AFSiriLogContextDaemon;
          if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_27;
          }

          *v33 = 136315394;
          *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
          *&v33[12] = 2112;
          *&v33[14] = v6;
          v27 = "%s Command %@ does not belong to an outstanding request or sync session or acoustic fingerprinting session, and an associated local execution context can not be found.";
          goto LABEL_39;
        }
      }

      else if (![(ADCommandCenter *)self _isRelevantCancellationCommand:v6])
      {
        v26 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

        *v33 = 136315394;
        *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
        *&v33[12] = 2112;
        *&v33[14] = v6;
        v27 = "%s Command %@ does not have ref id and is not relevant cancellation command.";
LABEL_39:
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, v27, v33, 0x16u);
LABEL_27:
        v28 = 0;
        if (!v24)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }

      v28 = 1;
      if (!v24)
      {
LABEL_28:
        v29 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_29;
        }

        *v33 = 136315394;
        *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
        *&v33[12] = 2112;
        *&v33[14] = v7;
        v30 = "%s Execution context %@ does not have request id.";
        goto LABEL_34;
      }

LABEL_22:
      if ([(ADCommandCenter *)self _hasOutstandingRequestId:v24, *v33, *&v33[16]]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v24])
      {
        goto LABEL_30;
      }

      v29 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
LABEL_29:
        if (v28)
        {
LABEL_30:
          v21 = 0;
LABEL_31:

          goto LABEL_32;
        }

LABEL_35:
        v32 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *v33 = 136315650;
          *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
          *&v33[12] = 2112;
          *&v33[14] = v6;
          *&v33[22] = 2112;
          v34 = v7;
          _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s Ignoring %@ because it is not in scope. (executionContext = %@)", v33, 0x20u);
        }

        v21 = 1;
        goto LABEL_31;
      }

      *v33 = 136315394;
      *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
      *&v33[12] = 2112;
      *&v33[14] = v24;
      v30 = "%s Execution context %@ does not belong to an outstanding request, and an associated local execution context can not be found";
LABEL_34:
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, v30, v33, 0x16u);
      if (v28)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }
  }

  else if (![v7 isFromRemote])
  {
    goto LABEL_10;
  }

  v20 = AFSiriLogContextDaemon;
  v21 = 0;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 136315650;
    *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
    *&v33[12] = 2112;
    *&v33[14] = v6;
    *&v33[22] = 2112;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Handling %@ for a request initiated on another device. (executionContext = %@)", v33, 0x20u);
    v21 = 0;
  }

LABEL_32:

  return v21;
}

- (void)_addNetworkActivityTracingForLabel:(int64_t)a3 start:(BOOL)a4 withCompletionReason:(int64_t)a5 andError:(id)a6
{
  v7 = a4;
  v9 = a6;
  if (a3)
  {
    v12 = v9;
    v10 = +[SNNetworkActivityTracing sharedInstance];
    v11 = v10;
    if (v7)
    {
      [v10 networkActivityStart:a3 activate:1 completion:0];
    }

    else
    {
      [v10 networkActivityStop:a3 withReason:a5 andError:v12 completion:0];
    }

    v9 = v12;
  }
}

- (void)_adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)a3
{
  v3 = a3;
  v4 = [(ADCommandCenter *)self _sessionManager];
  [v4 adviseSessionArbiterToContinueWithPreviousWinner:v3];
}

- (void)_sendRestrictionsInPreparationForRequest
{
  if (!self->_restrictionsWereSetForRequest)
  {
    v3 = objc_alloc_init(SASetRestrictions);
    v4 = [(ADCommandCenter *)self _restrictedCommands];
    [v3 setRestrictions:v4];

    [(ADCommandCenter *)self _sendCommandToServer:v3];
    v5 = [(ADCommandCenter *)self _headphonesAnnouncementRequestCapabilityManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002099A4;
    v6[3] = &unk_10051C2E0;
    v6[4] = self;
    [v5 fetchAvailableAnnouncementRequestTypesWithCompletion:v6];

    self->_restrictionsWereSetForRequest = 1;
  }
}

- (void)_shutdownAfterDelay:(double)a3
{
  if ([(ADCommandCenter *)self _hasActiveClientOrSyncingOrInCall])
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADCommandCenter _shutdownAfterDelay:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Still active. Ignoring session shutdown request", buf, 0xCu);
    }
  }

  else if (a3 <= 0.0)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[ADCommandCenter _shutdownAfterDelay:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Shutting down session now...", buf, 0xCu);
    }

    [(ADCommandCenter *)self _removeAllSpeechCapturingContexts];
    [(ADCommandCenter *)self _removeAllHandledCommandIds];
    [(ADCommandCenter *)self _removeAllPostCommandHandlingBlocks];
    v12 = [AFError errorWithCode:4];
    [(ADCommandCenter *)self _invokeAllCompletionsWithError:v12];

    v13 = [(ADCommandCenter *)self _sessionManager];
    [v13 cancel];

    v14 = +[SNNetworkActivityTracing sharedInstance];
    [v14 networkActivityTracingCancel:0];
  }

  else
  {
    v6 = dispatch_time(0, (a3 / 3.0 * 1000000000.0));
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100209DB8;
    block[3] = &unk_10051D770;
    *&block[5] = a3;
    block[4] = self;
    dispatch_after(v6, queue, block);
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[ADCommandCenter _shutdownAfterDelay:]";
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Delaying shutdown block for %f seconds...", buf, 0x16u);
    }

    v9 = dispatch_time(0, (a3 * 1000000000.0));
    v10 = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100209EAC;
    v15[3] = &unk_10051DFE8;
    v15[4] = self;
    dispatch_after(v9, v10, v15);
  }
}

- (void)_shutdownSessionWhenIdle
{
  v3 = _AFPreferencesSessionShutdownDelayOverride();
  v5 = v3;
  if (v3)
  {
    [v3 doubleValue];
  }

  else
  {
    v4 = 60.0;
  }

  [(ADCommandCenter *)self _shutdownAfterDelay:v4];
}

- (BOOL)_isRelevantCancellationCommand:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 requestId];
    if ([(ADCommandCenter *)self _hasOutstandingRequestId:v5])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)self->_associatedRequestId isEqualToString:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_cancelCrossDeviceRequestOperationsForRemoteRequest
{
  v3 = [(ADCommandExecutionContext *)self->_mostRecentVisibleRemoteExecutionContext creationDate];
  v4 = [(ADCommandExecutionContext *)self->_mostRecentRootExecutionContext creationDate];
  v5 = v4;
  if (self->_mostRecentVisibleRemoteExecutionContext && (!v4 || [v4 compare:v3] == -1))
  {
    v6 = +[NSDate now];
    [v6 timeIntervalSinceDate:v3];
    v8 = v7;

    if (v8 < 300.0)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v25 = "[ADCommandCenter _cancelCrossDeviceRequestOperationsForRemoteRequest]";
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
      }

      v10 = [(ADCommandExecutionContext *)self->_mostRecentVisibleRemoteExecutionContext info];
      v11 = [v10 originPeerInfo];
      v12 = [v10 requestID];
      v13 = objc_alloc_init(SACancelCrossDeviceRequest);
      v14 = +[NSUUID UUID];
      v15 = [v14 UUIDString];
      [v13 setAceId:v15];

      [v13 setRequestId:v12];
      [v13 setCancelAssociatedRequests:1];
      v16 = [[ADPeerInfo alloc] initWithAFPeerInfo:v11];
      mostRecentVisibleRemoteExecutionContext = self->_mostRecentVisibleRemoteExecutionContext;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10020A2FC;
      v21[3] = &unk_100515DF8;
      v22 = v12;
      v23 = v11;
      v18 = v11;
      v19 = v12;
      [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteCommand:v13 onPeer:v16 allowsRelay:0 throughProxyDevice:0 executionContext:mostRecentVisibleRemoteExecutionContext completion:v21];

      v20 = self->_mostRecentVisibleRemoteExecutionContext;
      self->_mostRecentVisibleRemoteExecutionContext = 0;
    }
  }
}

- (void)_cancelCrossDeviceRequestOperationsForLocalRequestWithId:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10020A5A8;
  v8[3] = &unk_100519FC0;
  v8[4] = self;
  v4 = a3;
  v5 = objc_retainBlock(v8);
  (v5[2])(v5, v4);

  associatedRequestId = self->_associatedRequestId;
  if (associatedRequestId)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[ADCommandCenter _cancelCrossDeviceRequestOperationsForLocalRequestWithId:]";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Cancelling associated request...", buf, 0xCu);
      associatedRequestId = self->_associatedRequestId;
    }

    (v5[2])(v5, associatedRequestId);
  }
}

- (void)_cancelCurrentRequestForReason:(int64_t)a3 andError:(id)a4 successorInfo:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(ADCommandCenter *)self _currentRequest];
  v12 = [v11 currentRequestId];

  if (v12)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v36 = 136315650;
      v37 = "[ADCommandCenter _cancelCurrentRequestForReason:andError:successorInfo:]";
      v38 = 2048;
      v39 = a3;
      v40 = 2112;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Canceling current request with reason: %ld and error: %@", &v36, 0x20u);
    }

    if (self->_requestEffectiveStartTime != 0.0)
    {
      v14 = +[NSProcessInfo processInfo];
      [v14 systemUptime];
      v16 = v15 - self->_requestEffectiveStartTime;

      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v36 = 136315394;
        v37 = "[ADCommandCenter _cancelCurrentRequestForReason:andError:successorInfo:]";
        v38 = 1024;
        LODWORD(v39) = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Logging Cancel for %d seconds", &v36, 0x12u);
      }

      [AFAggregator logRequestCancelAfterSeconds:v16];
      self->_requestEffectiveStartTime = 0.0;
    }

    v18 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestCommand];

    if (v18)
    {
      v19 = objc_alloc_init(SACancelRequest);
      [v19 setRefId:v12];
      [v19 setClientCancellationCode:a3];
      [(ADCommandCenter *)self _sendRequestToServer:v19];
    }

    v20 = +[ADRequestLifecycleObserver sharedObserver];
    [v20 requestWasCancelledWithInfo:self->_currentRequestInfo forReason:a3 origin:5 client:self->_currentClient successorInfo:v10];

    v21 = [(ADCommandCenter *)self _resultObjectCache];
    [v21 clearResultObjectsForRequestId:v12];

    [(ADCommandCenter *)self _requestDidEnd];
    v22 = NSStringFromSelector(a2);
    [(ADCommandCenter *)self _removeOutstandingRequestId:v12 forReason:v22];

    v23 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestCommand];
    v24 = [v23 ad_parentRequest];
    v25 = [v24 aceId];
    v26 = NSStringFromSelector(a2);
    [(ADCommandCenter *)self _removeOutstandingRequestId:v25 forReason:v26];

    v27 = [(ADCommandCenter *)self _serviceManager];
    v28 = [(ADCommandCenter *)self _account];
    v29 = [v28 assistantIdentifier];
    [v27 cancelOperationsForRequest:v12 forAssistantID:v29 fromRemote:0 reason:a3];

    [(ADCommandCenter *)self _setCurrentRequest:0];
    [(ADCommandCenter *)self _cancelCrossDeviceRequestOperationsForLocalRequestWithId:v12];
    v30 = 4;
    if (a3 != 3)
    {
      v30 = 5;
    }

    if (a3 == 4)
    {
      v31 = 3;
    }

    else
    {
      v31 = v30;
    }

    [(ADCommandCenter *)self _addNetworkActivityTracingForLabel:1 start:0 withCompletionReason:v31 andError:v9];
  }

  requestCompletion = self->_requestCompletion;
  if (requestCompletion)
  {
    v33 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315138;
      v37 = "[ADCommandCenter _cancelCurrentRequestForReason:andError:successorInfo:]";
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s Invoking request completion on request cancelation", &v36, 0xCu);
      requestCompletion = self->_requestCompletion;
    }

    v34 = [AFError errorWithCode:5];
    requestCompletion[2](requestCompletion, 0, v34);

    v35 = self->_requestCompletion;
    self->_requestCompletion = 0;
  }
}

- (void)_handleNextCallbacksForReply:(id)a3 forCommand:(id)a4 forRequestId:(id)a5 withExecutionContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ADCommandCenter *)self _resultObjectCache];
  v57 = 0;
  v15 = [v14 commandsForReply:v10 toCommand:v11 missingReferences:&v57];
  v16 = v57;
  v17 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  v40 = v12;
  if ([v17 isEqualToString:v12])
  {
    if (v15)
    {
      v37 = v17;
      v38 = v16;
      v34 = v14;
      v35 = v11;
      v36 = v10;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v18 = v15;
      v19 = [v18 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v54;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v54 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v53 + 1) + 8 * i);
            v24 = [v23 refId];

            if (!v24)
            {
              [v23 setRefId:v12];
            }

            v25 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v60 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]";
              v61 = 2112;
              v62 = v23;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Handling command from result object cache %@", buf, 0x16u);
            }

            [(ADCommandCenter *)self _handleCommandAndClientReply:v23 executionContext:v13 commandCompletion:0];
          }

          v20 = [v18 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v20);
      }

      v11 = v35;
      v10 = v36;
      v14 = v34;
      v16 = v38;
LABEL_21:
      v17 = v37;
      goto LABEL_22;
    }

    if (v16)
    {
      v37 = v17;
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v60 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Missing command identifiers, asking for objects from the server", buf, 0xCu);
      }

      v39 = v16;
      v28 = [[ADMissingReferencesContext alloc] initWithMissingReferences:v16 forRequestId:v12];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10020B2EC;
      v48[3] = &unk_1005180D8;
      v48[4] = self;
      v49 = v10;
      v29 = v11;
      v50 = v29;
      v30 = v12;
      v51 = v30;
      v41 = v13;
      v52 = v41;
      [(ADMissingReferencesContext *)v28 setFulfillmentBlock:v48];
      [v14 addMissingReferencesContext:v28];
      v31 = objc_alloc_init(SAGetResultObjects);
      [v31 setRefId:v30];
      [v31 setObjectIdentifiers:v39];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10020B3A8;
      v42[3] = &unk_100515DD0;
      v43 = v28;
      v44 = v29;
      v45 = v30;
      v46 = self;
      v47 = v41;
      v32 = v28;
      v16 = v39;
      v33 = v32;
      [(ADCommandCenter *)self _sendCommandToServer:v31 opportunistically:0 completion:v42];

      goto LABEL_21;
    }
  }

  else
  {
    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v60 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]";
      v61 = 2112;
      v62 = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Ignoring command whose request %@ is not the current request", buf, 0x16u);
    }
  }

LABEL_22:
}

- (void)_startLocalRequest:(id)a3 withRequestInfo:(id)a4 forDelegate:(id)a5 suppressCancelationAlertIfCapturingSpeech:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [[NSString alloc] initWithFormat:@"request = %@, requestInfo = %@, delegate = %@", v12, v13, v14];
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[ADCommandCenter _startLocalRequest:withRequestInfo:forDelegate:suppressCancelationAlertIfCapturingSpeech:completion:]";
    v33 = 2112;
    v34 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v18 = +[NSProcessInfo processInfo];
  [v18 systemUptime];
  self->_requestEffectiveStartTime = v19;

  v20 = self->_requestGroup;
  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v32 = "[ADCommandCenter _startLocalRequest:withRequestInfo:forDelegate:suppressCancelationAlertIfCapturingSpeech:completion:]";
    v33 = 2112;
    v34 = v20;
    v35 = 2112;
    v36 = v16;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_enter(v20);
  [(ADCommandCenter *)self _replaceRequestDelegate:v14 withInfo:v13 reason:1 andCompletion:v15];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10020BAC8;
  v26[3] = &unk_1005180D8;
  v26[4] = self;
  v27 = v13;
  v28 = v12;
  v29 = v20;
  v30 = v16;
  v22 = v16;
  v23 = v20;
  v24 = v12;
  v25 = v13;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:0 suppressAlert:v8 withCompletion:v26];
}

- (void)_reallyHandleNewStartLocalRequest:(id)a3 withRequestInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[ADCommandCenter _reallyHandleNewStartLocalRequest:withRequestInfo:]";
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s startLocalRequest = %@", buf, 0x16u);
  }

  [(ADCommandCenterClient *)self->_currentClient adInvalidateCurrentUserActivity];
  [(ADCommandCenter *)self _setCurrentRequestWithCommand:v7];
  v10 = [v7 aceId];
  v11 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _addOutstandingRequestId:v10 forReason:v11];

  v12 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEvent];
  v13 = [v8 suggestionRequestType];
  v14 = sub_10000EF08(v12);
  if (!v14)
  {
    v14 = SAInputOriginClientGeneratedValue;
  }

  v15 = [(ADCommandCenter *)self _createDefaultRequestContextData:v12 == 17 suggestionRequestType:v13];
  v16 = [(ADCommandCenter *)self _requestDispatcherService];
  v17 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
  v18 = [v7 aceId];
  [v16 startLocalRequestWithConfiguration:v17 requestId:v18 inputOrigin:v14 requestContextData:v15];

  dynamicContextEmitter = self->_dynamicContextEmitter;
  v20 = [v7 aceId];
  [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:v20];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = [v7 clientBoundCommands];
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(ADCommandCenter *)self _handleGenericConcreteAceCommand:*(*(&v26 + 1) + 8 * v25) withDelegate:self->_currentClient interruptOutstandingRequest:1 reply:0];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v23);
  }
}

- (BOOL)_shouldImmediatelyDismissSiriDueToMissingRequiredAssets
{
  v3 = AFDeviceSupportsDisablingServerFallbackWhenMissingAsset();
  if (v3)
  {
    v4 = !self->_isInStarkMode;
  }

  else
  {
    v4 = 0;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    isInStarkMode = self->_isInStarkMode;
    v8 = 136315906;
    v9 = "[ADCommandCenter _shouldImmediatelyDismissSiriDueToMissingRequiredAssets]";
    v10 = 1024;
    v11 = v3;
    v12 = 1024;
    v13 = isInStarkMode;
    v14 = 1024;
    v15 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s AFDeviceSupportsDisablingServerFallbackWhenMissingAsset = %u, while missing asset; #carplay active = %u; dismissing Siri right away: %u", &v8, 0x1Eu);
  }

  return v4;
}

- (void)_reallyHandleNewStartRequest:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[ADCommandCenter _reallyHandleNewStartRequest:info:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s startRequest = %@", &v19, 0x16u);
  }

  [(ADCommandCenterClient *)self->_currentClient adInvalidateCurrentUserActivity];
  if (AFIsInternalInstall())
  {
    v9 = [NSNumber numberWithBool:byte_100590548];
    [v6 setIsCarryDevice:v9];
  }

  [v6 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
  v10 = [v6 aceId];

  if (!v10)
  {
    v11 = SiriCoreUUIDStringCreate();
    [v6 setAceId:v11];
  }

  v12 = [(ADCommandCenter *)self _startServerRequestWithStartRequest:v6 requestInfo:v7];
  if (![(ADCommandCenter *)self _areRequiredAssetsMissing])
  {
    goto LABEL_16;
  }

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315138;
    v20 = "[ADCommandCenter _reallyHandleNewStartRequest:info:]";
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s _areRequiredAssetsMissing is true even when understanding on device is enabled", &v19, 0xCu);
  }

  currentUodStatus = self->_currentUodStatus;
  v15 = [v6 aceId];
  sub_1001F75A8(self, currentUodStatus, v15);

  LODWORD(v15) = [(ADCommandCenter *)self _shouldImmediatelyDismissSiriDueToMissingRequiredAssets];
  v16 = AFSiriLogContextDaemon;
  v17 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (!v15)
  {
    if (v17)
    {
      v19 = 136315138;
      v20 = "[ADCommandCenter _reallyHandleNewStartRequest:info:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Not dismissing Siri request due to lack of assets.", &v19, 0xCu);
    }

LABEL_16:
    [(ADCommandCenter *)self _setCurrentRequestWithCommand:v6];
    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v6;
    }

    [(ADCommandCenter *)self _sendRetryableRequestToServer:v18];
    goto LABEL_20;
  }

  if (v17)
  {
    v19 = 136315138;
    v20 = "[ADCommandCenter _reallyHandleNewStartRequest:info:]";
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s [_reallyHandleNewStartRequest] Dismissing Siri with reason AFDismissalAssetsNotReady", &v19, 0xCu);
  }

  [(ADCommandCenter *)self dismissAssistantWithReason:5];
LABEL_20:
}

- (void)_triggerABCforType:(id)a3 subType:(id)a4 context:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  if (AFIsInternalInstall())
  {
    v9 = +[SiriCoreSymptomsReporter sharedInstance];
    v10 = +[NSProcessInfo processInfo];
    v11 = [v10 processIdentifier];
    [v9 reportIssueForType:v12 subType:v7 context:v8 processIdentifier:v11 walkboutStatus:byte_100590548];
  }
}

- (void)_sendCancelSpeechForCommand:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(SASCancelSpeech);
  v5 = [v4 aceId];

  [v7 setRefId:v5];
  [(ADCommandCenter *)self _sendCommandToServer:v7];
  v6 = [(ADCommandCenter *)self _sessionManager];
  [v6 endRetryableRequestForCommand:v7];
}

- (void)_sendWillStopRecordingForCommand:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(SASWillStopRecording);
  v5 = [v4 aceId];

  [v6 setRefId:v5];
  [(ADCommandCenter *)self _sendCommandToServer:v6];
}

- (void)_sendRollbackCommandForCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter _sendRollbackCommandForCommand:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v6 = objc_alloc_init(SARollbackRequest);
  v7 = [v4 aceId];
  [v6 setRequestId:v7];

  [(ADCommandCenter *)self _sendCommandToServer:v6];
  v8 = [(ADCommandCenter *)self _sessionManager];
  [v8 endRetryableRequestForCommand:v4];
}

- (void)_sendCommandFailedForCommand:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[SACommandFailed alloc] initWithReason:v6];

  v8 = [v7 aceId];

  [v9 setRefId:v8];
  [(ADCommandCenter *)self _sendCommandToServer:v9];
}

- (void)_sendCommandFailedForCommand:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SACommandFailed alloc];
  v9 = [v6 description];
  v12 = [v8 initWithReason:v9];

  v10 = [v6 code];
  [v12 setErrorCode:v10];
  v11 = [v7 aceId];

  [v12 setRefId:v11];
  [(ADCommandCenter *)self _sendCommandToServer:v12];
}

- (void)_sendRequestToServer:(id)a3
{
  v5 = a3;
  v6 = sub_1001E5088(v5);
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADCommandCenter _sendRequestToServer:]";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s command = %@", &v16, 0x16u);
  }

  v8 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _addOutstandingRequestId:v6 forReason:v8];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          objc_opt_class();
          objc_opt_isKindOfClass();
          v9 = [v5 origin];
          v10 = [(ADCommandCenter *)self _requestDispatcherService];
          v11 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
          v12 = [v5 aceId];
          [v10 startUnderstandingOnServerRequestWithConfiguration:v11 requestId:v12 inputOrigin:v9];

          dynamicContextEmitter = self->_dynamicContextEmitter;
          v14 = [v5 aceId];
          [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:v14];
        }
      }
    }
  }

  v15 = [(ADCommandCenter *)self _sessionManager];
  [v15 sendRawCommand:v5 opportunistically:0 logEvent:1];
}

- (void)_sendCommandToServer:(id)a3 opportunistically:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = sub_1001E5088(v9);
  [(ADCommandCenter *)self _addCompletion:v8 forCommand:v9 forKey:v10];

  [(ADCommandCenter *)self _sendCommandToServer:v9 opportunistically:v5];
}

- (void)_sendCommandToServer:(id)a3 opportunistically:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ADCommandCenter *)self _sessionManager];
  [v7 sendCommand:v6 opportunistically:v4 logEvent:1];
}

- (void)_sendSessionObject:(id)a3 opportunistically:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ADCommandCenter *)self _sessionManager];
  [v7 sendCommand:v6 opportunistically:v4 logEvent:0];
}

- (BOOL)_refIdIsSpeechStart:(id)a3
{
  startSpeechCommand = self->_startSpeechCommand;
  v4 = a3;
  v5 = [(SASStartSpeech *)startSpeechCommand aceId];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCommandCenter _refIdIsSpeechStart:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s StartSpeech msg id is %@", &v9, 0x16u);
  }

  v7 = [v5 isEqualToString:v4];

  return v7;
}

- (void)_preheatAllServices
{
  v3 = [(ADCommandCenter *)self _serviceManager];
  v2 = [v3 allServices];
  [v2 makeObjectsPerformSelector:"preheatDomain:" withObject:0];
}

- (void)_fetchStarkDeviceLockedStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    lockScreenStatus = self->_lockScreenStatus;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020CE34;
    block[3] = &unk_100515D80;
    v10 = lockScreenStatus & 1;
    v11 = (lockScreenStatus & 2) != 0;
    block[4] = self;
    v9 = v4;
    dispatch_async(queue, block);
  }
}

- (void)_resetServices
{
  v3 = [(ADCommandCenter *)self _serviceManager];
  v4 = [v3 allServices];
  [v4 makeObjectsPerformSelector:"resetExternalResources"];

  v5 = [(ADCommandCenter *)self _serviceManager];
  [v5 reloadServicesForAllPendingServiceNotifications];
}

- (id)_languageModelForSpeechRequest:(id)a3
{
  v4 = [a3 ad_languageModel];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(ADCommandCenter *)self _sessionManager];
    v6 = [v7 languageCode];
  }

  return v6;
}

- (void)_didLaunchAppForRequestWithIdentifier:(id)a3
{
  v4 = a3;
  currentRequest = self->_currentRequest;
  if (!currentRequest || (-[ADCommandCenterCurrentRequest currentRequestId](currentRequest, "currentRequestId"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:v4], v6, v7))
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADCommandCenter _didLaunchAppForRequestWithIdentifier:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Marking request did finish on app launch callback", &v10, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, AFSiriDidLaunchAppNotification, 0, 0, 1u);
    +[AFAggregator logRequestLaunchedApp];
  }
}

- (void)_speechCaptureCompleted
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADCommandCenter _speechCaptureCompleted]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  if (self->_currentClient || (v7 = self->_speechDelegate) != 0 && ![(ADCommandCenterSpeechDelegate *)v7 adSpeechSessionEnded])
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      currentClient = self->_currentClient;
      speechDelegate = self->_speechDelegate;
      v12 = 136315650;
      v13 = "[ADCommandCenter _speechCaptureCompleted]";
      v14 = 2048;
      v15 = currentClient;
      v16 = 2048;
      v17 = speechDelegate;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Ignored releasing audio session because current client is %p and speech delegate is %p.", &v12, 0x20u);
    }
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADCommandCenter _speechCaptureCompleted]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Asking speech manager to release audio session...", &v12, 0xCu);
    }

    [(ADSpeechManager *)self->_speechManager endSession];
  }

  [(ADCommandCenter *)self _acousticId_speechCaptureCompleted];
  speechCompletion = self->_speechCompletion;
  if (speechCompletion)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADCommandCenter _speechCaptureCompleted]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Invoking Speech Completion", &v12, 0xCu);
      speechCompletion = self->_speechCompletion;
    }

    speechCompletion[2](speechCompletion);
    v11 = self->_speechCompletion;
    self->_speechCompletion = 0;
  }
}

- (void)_replaceSpeechDelegateWhenReady:(id)a3 waitForRecordingToFinish:(BOOL)a4 suppressAlert:(BOOL)a5 withCompletion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v11 = a3;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v35 = "[ADCommandCenter _replaceSpeechDelegateWhenReady:waitForRecordingToFinish:suppressAlert:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  speechDelegate = self->_speechDelegate;
  v15 = speechDelegate == v11 && !v8;
  if (v15 || (speechManager = self->_speechManager) == 0 || [(ADSpeechManager *)speechManager isStopped])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || [(ADSpeechManager *)self->_speechManager isLocallyRecognizingInDictationMode])
    {
      v17 = self->_speechDelegate;
      v18 = [AFError errorWithCode:209];
      [(ADCommandCenterSpeechDelegate *)v17 adSpeechRecognitionDidFail:v18 sessionUUID:self->_speechCapturingContextSessionUUID];
    }

    [(ADCommandCenter *)self _clearSpeechDelegateState];
    objc_storeStrong(&self->_speechDelegate, a3);
    [(ADCommandCenter *)self _setSpeechCapturingContext:0];
    if (v12)
    {
      v12[2](v12);
    }
  }

  else
  {
    v19 = AFSiriLogContextDaemon;
    v20 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (speechDelegate == v11)
    {
      if (v20)
      {
        *buf = 136315138;
        v35 = "[ADCommandCenter _replaceSpeechDelegateWhenReady:waitForRecordingToFinish:suppressAlert:withCompletion:]";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Waiting for recording to finish", buf, 0xCu);
      }
    }

    else
    {
      if (v20)
      {
        *buf = 136315138;
        v35 = "[ADCommandCenter _replaceSpeechDelegateWhenReady:waitForRecordingToFinish:suppressAlert:withCompletion:]";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Interrupting current recording speech delegate", buf, 0xCu);
      }

      [(ADSpeechManager *)self->_speechManager cancelSpeechCaptureSuppressingAlert:v7];
      v21 = self->_speechDelegate;
      v22 = [AFError errorWithCode:209];
      v23 = [(ADCommandCenter *)self _speechCapturingContext];
      [(ADCommandCenterSpeechDelegate *)v21 adSpeechRecordingDidFail:v22 context:v23];

      v24 = self->_speechDelegate;
      self->_speechDelegate = 0;

      [(ADCommandCenter *)self _setSpeechCapturingContext:0];
    }

    v25 = objc_retainBlock(self->_speechCompletion);
    objc_initWeak(buf, self);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10020D5F4;
    v29[3] = &unk_100515D58;
    v31 = v25;
    v26 = v25;
    objc_copyWeak(&v33, buf);
    v30 = v11;
    v32 = v12;
    v27 = objc_retainBlock(v29);
    speechCompletion = self->_speechCompletion;
    self->_speechCompletion = v27;

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }
}

- (void)_completeRequestForCurrentDelegate:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (v6 || !v4)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "[ADCommandCenter _completeRequestForCurrentDelegate:error:]";
      v23 = 1024;
      v24 = v4;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s success = %d, error = %@", &v21, 0x1Cu);
    }

    v8 = [(ADCommandCenter *)self _currentRequest];
    v9 = [v8 currentRequestId];

    if (v9)
    {
      v10 = [(ADCommandCenter *)self _requestDispatcherService];
      v11 = [(ADCommandCenter *)self _account];
      v12 = [v11 assistantIdentifier];
      v13 = [(ADCommandCenter *)self _currentRequest];
      v14 = [v13 currentRequestId];
      [v10 requestFailedWithAssistantId:v12 requestId:v14];
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[ADCommandCenter _completeRequestForCurrentDelegate:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v21, 0xCu);
  }

  if (v4)
  {
    [(ADCommandCenter *)self _addNetworkActivityTracingForLabel:1 start:0 withCompletionReason:2 andError:0];
  }

  requestDelegate = self->_requestDelegate;
  if (requestDelegate)
  {
    [(ADCommandCenterRequestDelegate *)requestDelegate adRequestDidCompleteWithSuccess:v4 error:v6];
    v16 = self->_requestDelegate;
    self->_requestDelegate = 0;

    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[ADCommandCenter _completeRequestForCurrentDelegate:error:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s requestDelegate is set to nil.", &v21, 0xCu);
    }
  }

  requestCompletion = self->_requestCompletion;
  if (requestCompletion)
  {
    requestCompletion[2](requestCompletion, v4, v6);
    v19 = self->_requestCompletion;
    self->_requestCompletion = 0;

    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[ADCommandCenter _completeRequestForCurrentDelegate:error:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s requestCompletion invoked.", &v21, 0xCu);
    }
  }
}

- (void)_replaceRequestDelegate:(id)a3 withInfo:(id)a4 reason:(int64_t)a5 andCompletion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    if (a5 > 6)
    {
      v16 = @"(unknown)";
    }

    else
    {
      v16 = *(&off_10051E270 + a5);
    }

    v17 = v16;
    *buf = 136315394;
    v42 = "[ADCommandCenter _replaceRequestDelegate:withInfo:reason:andCompletion:]";
    v43 = 2112;
    v44 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ReplaceRequestDelegateReason: %@", buf, 0x16u);
  }

  p_requestDelegate = &self->_requestDelegate;
  requestDelegate = self->_requestDelegate;
  if (v11 | requestDelegate)
  {
    if (requestDelegate == v11 || !requestDelegate)
    {
      if (!v11 || requestDelegate)
      {
LABEL_23:
        if (a5 > 6)
        {
          v27 = 9;
        }

        else
        {
          v27 = qword_1003F07D0[a5];
        }

        [(ADCommandCenter *)self _cancelCurrentRequestForReason:v27 andError:0 successorInfo:v12];
        [(ADCommandCenter *)self _clearRequestDelegateState];
        v28 = objc_retainBlock(v13);
        requestCompletion = self->_requestCompletion;
        self->_requestCompletion = v28;

        v30 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v31 = self->_requestCompletion;
          v32 = v30;
          v33 = objc_retainBlock(v31);
          *buf = 136315394;
          v42 = "[ADCommandCenter _replaceRequestDelegate:withInfo:reason:andCompletion:]";
          v43 = 2112;
          v44 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s requestCompletion is set to %@.", buf, 0x16u);
        }

        if (*p_requestDelegate != v11)
        {
          v34 = [(ADCommandCenter *)self _serviceManager];
          v35 = [ADUIService serviceIdentifierForRequestDelegate:v11];
          v36 = [v34 serviceForIdentifier:v35];

          [v34 reprioritizeService:v36];
        }

        objc_storeStrong(&self->_requestDelegate, a3);
        v37 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v38 = *p_requestDelegate;
          *buf = 136315394;
          v42 = "[ADCommandCenter _replaceRequestDelegate:withInfo:reason:andCompletion:]";
          v43 = 2112;
          v44 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s requestDelegate is set to %@.", buf, 0x16u);
        }

        if (v11)
        {
          [(ADCommandCenter *)self _requestWillStartWithInfo:v12 showNetworkActivityIndicator:1];
        }

        goto LABEL_34;
      }

      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v42 = "[ADCommandCenter _replaceRequestDelegate:withInfo:reason:andCompletion:]";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Informing session it's ok to send assistant data", buf, 0xCu);
      }

      v23 = [(ADCommandCenter *)self _sessionManager];
      [v23 beginUpdatingAssistantData];
LABEL_22:

      goto LABEL_23;
    }

    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v42 = "[ADCommandCenter _replaceRequestDelegate:withInfo:reason:andCompletion:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Interrupting current request delegate", buf, 0xCu);
    }

    if (a5 > 4)
    {
      v39 = @"ADReplaceRequestDelegateReason";
      v21 = 5;
      if (a5 > 6)
      {
        v24 = @"(unknown)";
        goto LABEL_21;
      }
    }

    else
    {
      v21 = qword_1003F0808[a5];
      v39 = @"ADReplaceRequestDelegateReason";
    }

    v24 = *(&off_10051E270 + a5);
LABEL_21:
    v25 = v24;
    v40 = v25;
    v23 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    v26 = [NSError errorWithDomain:kAFAssistantErrorDomain code:v21 userInfo:v23, v39];
    [*p_requestDelegate adRequestDidCompleteWithSuccess:0 error:v26];

    goto LABEL_22;
  }

LABEL_34:
}

- (void)_requestBarrier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_retainBlock(self->_requestBarrier);
    v6 = v5;
    if (v5)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10020DF10;
      v11[3] = &unk_10051C6F0;
      v12 = v5;
      v13 = v4;
      v7 = objc_retainBlock(v11);
      requestBarrier = self->_requestBarrier;
      self->_requestBarrier = v7;

      v9 = v12;
    }

    else
    {
      v10 = objc_retainBlock(v4);
      v9 = self->_requestBarrier;
      self->_requestBarrier = v10;
    }
  }
}

- (void)_requestBarrierIfNecessary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_currentRequest)
    {
      [(ADCommandCenter *)self _requestBarrier:v4];
    }

    else
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "[ADCommandCenter _requestBarrierIfNecessary:]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s No current request - Invoking Request Barrier", &v6, 0xCu);
      }

      v4[2](v4);
    }
  }
}

- (void)_requestWillStartWithInfo:(id)a3 showNetworkActivityIndicator:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ADCommandCenter _requestWillStartWithInfo:showNetworkActivityIndicator:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v9 = [(ADCommandCenter *)self _sessionManager];
  [v9 setHasActiveRequest:1];

  [(ADCommandCenter *)self _setCallIsLikely:0];
  if (v4)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "ADShowNetworkActivityIndicatorForApplicationIdentifier";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s *** Turning on data spinny", buf, 0xCu);
    }

    sub_10000CB14(1);
  }

  objc_storeStrong(&self->_currentRequestInfo, a3);
  v11 = +[ADRequestLifecycleObserver sharedObserver];
  [v11 requestWillBeginWithInfo:self->_currentRequestInfo fromOrigin:5 client:self->_currentClient];

  v12 = AFSupportsSCDAFramework();
  v13 = SCDAMonitor_ptr;
  if (!v12)
  {
    v13 = AFMyriadMonitor_ptr;
  }

  v14 = [*v13 sharedMonitor];
  [v14 dequeueBlocksWaitingForMyriadDecision];

  v15 = [v7 speechRequestOptions];
  v16 = [v15 isVoiceTrigger];

  if (AFSupportsSCDAFramework())
  {
    v17 = [v7 speechRequestOptions];
    v18 = [v17 isRaiseToSpeak];

    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      isInStarkMode = self->_isInStarkMode;
      *buf = 136315906;
      v30 = "[ADCommandCenter _requestWillStartWithInfo:showNetworkActivityIndicator:]";
      v31 = 1024;
      v32 = v16;
      v33 = 1024;
      v34 = v18;
      v35 = 1024;
      v36 = isInStarkMode;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s _requestWillStartWithInfo voiceTriggerEvent %d and rtsTriggerEvent %d and _isInStarkMode %d", buf, 0x1Eu);
    }

    v21 = +[SCDAMonitor sharedMonitor];
    if (((v16 | v18) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v22 = self->_isInStarkMode;
    goto LABEL_16;
  }

  v21 = +[AFMyriadMonitor sharedMonitor];
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_13:
  v22 = 1;
LABEL_16:
  [v21 ignoreMyriadEvents:v22];

  if (v7 || self->_requestDelegate)
  {
    v23 = [(ADCommandCenter *)self _contextManager];
    v24 = [(ADCommandCenter *)self _locationManager];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10020E394;
    v26[3] = &unk_10051E010;
    v27 = v23;
    v28 = self;
    v25 = v23;
    [v24 updateLocationSnapshotWithCompletion:v26];
  }
}

- (void)_clearAccount
{
  [(ADCommandCenter *)self _cancelSessionManager];
  [(ADCommandCenter *)self _sync_reset];
  account = self->_account;
  self->_account = 0;
}

- (void)_setCurrentRequest:(id)a3
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    currentRequest = self->_currentRequest;
    v25 = 136315650;
    v26 = "[ADCommandCenter _setCurrentRequest:]";
    v27 = 2112;
    v28 = currentRequest;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ -> %@", &v25, 0x20u);
  }

  v8 = self->_currentRequest;
  objc_storeStrong(&self->_currentRequest, a3);
  v9 = [(ADCommandCenter *)self _sessionManager];
  v10 = [(ADCommandCenterCurrentRequest *)v5 currentRequestCommand];
  [v9 setCurrentRequest:v10];

  v11 = self->_currentRequest;
  if (!v11 && v8)
  {
    requestEndCompletion = self->_requestEndCompletion;
    if (!requestEndCompletion)
    {
      goto LABEL_10;
    }

    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v25 = 136315138;
      v26 = "[ADCommandCenter _setCurrentRequest:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Invoking Request End Completion", &v25, 0xCu);
      requestEndCompletion = self->_requestEndCompletion;
    }

    requestEndCompletion[2](requestEndCompletion);
    v14 = self->_requestEndCompletion;
    self->_requestEndCompletion = 0;

    v11 = self->_currentRequest;
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_10:
  requestBarrier = self->_requestBarrier;
  if (requestBarrier)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v25 = 136315138;
      v26 = "[ADCommandCenter _setCurrentRequest:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Invoking Request Barrier", &v25, 0xCu);
      requestBarrier = self->_requestBarrier;
    }

    requestBarrier[2](requestBarrier);
    v17 = self->_requestBarrier;
    self->_requestBarrier = 0;

    v11 = self->_currentRequest;
LABEL_14:
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v11 = 0;
  if (v8)
  {
LABEL_15:
    if (!v11)
    {
      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        requestGroup = self->_requestGroup;
        v25 = 136315650;
        v26 = "[ADCommandCenter _setCurrentRequest:]";
        v27 = 2112;
        v28 = requestGroup;
        v29 = 2112;
        v30 = v8;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Leaving request group %@ because there is no current request and the previous request is %@...", &v25, 0x20u);
      }

      dispatch_group_leave(self->_requestGroup);
      v19 = [(ADCommandCenterCurrentRequest *)v8 currentRequestId];
      [(ADCommandCenter *)self _notifyUSTForRequestCompleted:v19];
    }

    goto LABEL_24;
  }

LABEL_20:
  if (v11)
  {
    v20 = [(ADCommandCenterCurrentRequest *)v11 currentRequestId];
    [(ADCommandCenter *)self _notifyUSTForRequestStarted:v20];

    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v23 = self->_requestGroup;
      v24 = self->_currentRequest;
      v25 = 136315650;
      v26 = "[ADCommandCenter _setCurrentRequest:]";
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ because there is no previous request and the current request is %@...", &v25, 0x20u);
    }

    dispatch_group_enter(self->_requestGroup);
  }

LABEL_24:
}

- (void)_setCurrentRequestWithRequestId:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(ADCommandCenterCurrentRequest);
    [(ADCommandCenterCurrentRequest *)v5 setCurrentRequestId:v4];
  }

  else
  {
    v5 = 0;
  }

  [(ADCommandCenter *)self _setCurrentRequest:v5];
}

- (void)_setCurrentRequestWithCommand:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(ADCommandCenterCurrentRequest);
    [(ADCommandCenterCurrentRequest *)v5 setCurrentRequestCommand:v4];
  }

  else
  {
    v5 = 0;
  }

  [(ADCommandCenter *)self _setCurrentRequest:v5];
}

- (void)_cancelSessionManager
{
  [(ADSessionManager *)self->_sessionManager setDelegate:0];
  [(ADSessionManager *)self->_sessionManager cancel];
  sessionManager = self->_sessionManager;
  self->_sessionManager = 0;

  locationManager = self->_locationManager;

  [(ADLocationManager *)locationManager setNeedsToSendLocation:1];
}

- (void)_stopUpdatingMotionActivity
{
  motionManager = self->_motionManager;
  v3 = NSStringFromSelector(a2);
  [(ADMotionManager *)motionManager stopUpdatingMotionActivityForReason:v3 completion:&stru_100515D30];
}

- (void)postMessageToMUXWithMultiUserInfo:(id)a3
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter postMessageToMUXWithMultiUserInfo:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  AFIsATV();
}

- (void)sendMultiUserInfoToMUX
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADCommandCenter sendMultiUserInfoToMUX]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v3, 0xCu);
  }

  AFIsATV();
}

- (void)_setupUIBridgeServiceListener
{
  if (self->_uiBridgeServiceListener)
  {
    v2 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v14 = 136315138;
    v15 = "[ADCommandCenter _setupUIBridgeServiceListener]";
    v3 = "%s Already set up";
    v4 = v2;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v3, &v14, 0xCu);
    return;
  }

  v6 = AFDeviceSupportsMedoc();
  v7 = AFSiriLogContextDaemon;
  v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if ((v6 & 1) == 0)
  {
    if (!v8)
    {
      return;
    }

    v14 = 136315138;
    v15 = "[ADCommandCenter _setupUIBridgeServiceListener]";
    v3 = "%s Medoc is not supported/enabled, skipping";
    v4 = v7;
    goto LABEL_10;
  }

  if (v8)
  {
    v14 = 136315138;
    v15 = "[ADCommandCenter _setupUIBridgeServiceListener]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Launching UIBridge service listener", &v14, 0xCu);
  }

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFUIBridgeService];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AFUIBridgeServiceDelegate];
  v11 = [AFBridgeConnectionListener alloc];
  v12 = [v11 initWithBridgeName:@"UI" machService:kAssistantRequestDispatcherUIBridgeServiceName withServiceInterface:v9 withDelegateInterface:v10];
  uiBridgeServiceListener = self->_uiBridgeServiceListener;
  self->_uiBridgeServiceListener = v12;
}

- (id)_flowServiceListener
{
  flowServiceListener = self->_flowServiceListener;
  if (!flowServiceListener)
  {
    v4 = objc_alloc_init(ADFlowServiceListener);
    v5 = self->_flowServiceListener;
    self->_flowServiceListener = v4;

    flowServiceListener = self->_flowServiceListener;
  }

  return flowServiceListener;
}

- (id)_getPreheatOptionsForHorseman
{
  v2 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:8];

  return v2;
}

- (id)_headphonesAnnouncementRequestCapabilityManager
{
  headphonesAnnouncementRequestCapabilityManager = self->_headphonesAnnouncementRequestCapabilityManager;
  if (!headphonesAnnouncementRequestCapabilityManager)
  {
    v4 = [(AFSiriAnnouncementRequestCapabilityManager *)[ADSiriAnnouncementRequestCapabilityManager alloc] initWithPlatform:1];
    v5 = self->_headphonesAnnouncementRequestCapabilityManager;
    self->_headphonesAnnouncementRequestCapabilityManager = v4;

    headphonesAnnouncementRequestCapabilityManager = self->_headphonesAnnouncementRequestCapabilityManager;
  }

  return headphonesAnnouncementRequestCapabilityManager;
}

- (id)_requestDelayManager
{
  requestDelayManager = self->_requestDelayManager;
  if (!requestDelayManager)
  {
    v4 = [[ADRequestDelayManager alloc] initWithQueue:self->_queue];
    v5 = self->_requestDelayManager;
    self->_requestDelayManager = v4;

    requestDelayManager = self->_requestDelayManager;
  }

  return requestDelayManager;
}

- (id)_deviceSyncCoordinator
{
  if (!self->_deviceSyncCoordinator && AFIsHorseman())
  {
    v3 = objc_alloc_init(ADDeviceSyncCoordinator);
    deviceSyncCoordinator = self->_deviceSyncCoordinator;
    self->_deviceSyncCoordinator = v3;
  }

  v5 = self->_deviceSyncCoordinator;

  return v5;
}

- (id)_remoteSpeechRequestHelper
{
  remoteSpeechRequestHelper = self->_remoteSpeechRequestHelper;
  if (!remoteSpeechRequestHelper)
  {
    v4 = objc_alloc_init(ADRemoteSpeechRequestHelper);
    v5 = self->_remoteSpeechRequestHelper;
    self->_remoteSpeechRequestHelper = v4;

    remoteSpeechRequestHelper = self->_remoteSpeechRequestHelper;
  }

  return remoteSpeechRequestHelper;
}

- (id)_remoteRequestHelper
{
  remoteRequestHelper = self->_remoteRequestHelper;
  if (!remoteRequestHelper)
  {
    v4 = [[ADRemoteRequestHelper alloc] initWithQueue:self->_queue];
    v5 = self->_remoteRequestHelper;
    self->_remoteRequestHelper = v4;

    remoteRequestHelper = self->_remoteRequestHelper;
  }

  return remoteRequestHelper;
}

- (id)_powerAssertionManager
{
  powerAssertionManager = self->_powerAssertionManager;
  if (!powerAssertionManager)
  {
    v4 = [[AFPowerAssertionManager alloc] initWithIdentifier:@"com.apple.assistand"];
    v5 = self->_powerAssertionManager;
    self->_powerAssertionManager = v4;

    powerAssertionManager = self->_powerAssertionManager;
  }

  return powerAssertionManager;
}

- (id)_diagnosticsManager
{
  diagnosticsManager = self->_diagnosticsManager;
  if (!diagnosticsManager)
  {
    v4 = [ADDiagnosticsManager alloc];
    v5 = [(ADCommandCenter *)self _queue];
    v6 = [(ADDiagnosticsManager *)v4 initWithQueue:v5];
    v7 = self->_diagnosticsManager;
    self->_diagnosticsManager = v6;

    diagnosticsManager = self->_diagnosticsManager;
  }

  return diagnosticsManager;
}

- (void)_registerDomainSignalServiceWithServiceManager:(id)a3
{
  v3 = a3;
  v10 = objc_alloc_init(ADAceDomainSignalRequestHandler);
  v4 = [ADServiceCommandType alloc];
  v5 = [(ADServiceCommandType *)v4 initWithDomainName:SAGroupIdentifier className:SAAceDomainSignalClassIdentifier];
  v6 = [ADSiriTaskService alloc];
  v7 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v8 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v9 = [(ADSiriTaskService *)v6 initWithCommandType:v5 requestTransformer:v7 responseTransformer:v8 requestHandler:v10];
  [v3 addService:v9];
}

- (id)_domainObjectCache
{
  domainObjectCache = self->_domainObjectCache;
  if (!domainObjectCache)
  {
    v4 = objc_alloc_init(ADDomainObjectCache);
    v5 = self->_domainObjectCache;
    self->_domainObjectCache = v4;

    domainObjectCache = self->_domainObjectCache;
  }

  return domainObjectCache;
}

- (void)_setUIService:(id)a3
{
  v4 = a3;
  [(ADUIService *)self->_uiService setDelegate:0];
  uiService = self->_uiService;
  self->_uiService = v4;
  v6 = v4;

  [(ADUIService *)self->_uiService setDelegate:self];
}

- (void)_removePostCommandHandlingBlocksForRequestId:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_postCommandHandlingBlockMap removeObjectForKey:?];
  }
}

- (void)_dispatchAndRemovePostCommandHandlingBlocksForCommandId:(id)a3 requestId:(id)a4
{
  v6 = a3;
  if (v6 && a4)
  {
    v7 = [(NSMutableDictionary *)self->_postCommandHandlingBlockMap objectForKey:a4];
    v8 = [v7 objectForKey:v6];
    [v7 removeObjectForKey:v6];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_addPostCommandHandlingBlock:(id)a3 forCommandId:(id)a4 requestId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    if ([(ADCommandCenter *)self _hasOutstandingRequestId:v10]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v11])
    {
      v12 = [(ADCommandCenter *)self _handledCommandIdsForRequestId:v11];
      v13 = [v12 containsObject:v9];

      if (v13)
      {
        v8[2](v8);
      }

      else
      {
        v15 = [(NSMutableDictionary *)self->_postCommandHandlingBlockMap objectForKey:v11];
        if (!v15)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          postCommandHandlingBlockMap = self->_postCommandHandlingBlockMap;
          if (!postCommandHandlingBlockMap)
          {
            v17 = objc_alloc_init(NSMutableDictionary);
            v18 = self->_postCommandHandlingBlockMap;
            self->_postCommandHandlingBlockMap = v17;

            postCommandHandlingBlockMap = self->_postCommandHandlingBlockMap;
          }

          [(NSMutableDictionary *)postCommandHandlingBlockMap setObject:v15 forKey:v11];
        }

        v19 = [v15 objectForKey:v9];
        if (!v19)
        {
          v19 = objc_alloc_init(NSMutableArray);
          [v15 setObject:v19 forKey:v9];
        }

        v20 = objc_retainBlock(v8);
        [v19 addObject:v20];
      }
    }

    else
    {
      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v22 = 136315650;
        v23 = "[ADCommandCenter _addPostCommandHandlingBlock:forCommandId:requestId:]";
        v24 = 2112;
        v25 = v9;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Ignored post command handling block for command id %@ because request id %@ is unknown.", &v22, 0x20u);
      }
    }
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      v23 = "[ADCommandCenter _addPostCommandHandlingBlock:forCommandId:requestId:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Ignored because commandId, requestId and block are all required.", &v22, 0xCu);
    }
  }
}

- (id)_handledCommandIdsForRequestId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(ADCommandCenter *)self _hasOutstandingRequestId:v4]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v4])
    {
      v5 = [(NSMutableDictionary *)self->_handledCommandIdsByRequestId objectForKey:v4];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 copy];
      }

      else
      {
        v7 = +[NSSet set];
      }

      v8 = v7;

      goto LABEL_11;
    }

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADCommandCenter _handledCommandIdsForRequestId:]";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Ignored because request id %@ is unknown.", &v11, 0x16u);
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)_removeHandledCommandIdsForRequestId:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_handledCommandIdsByRequestId removeObjectForKey:?];
  }
}

- (void)_addHandledCommandId:(id)a3 forRequestId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if ([(ADCommandCenter *)self _hasOutstandingRequestId:v7]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v8])
    {
      handledCommandIdsByRequestId = self->_handledCommandIdsByRequestId;
      if (!handledCommandIdsByRequestId)
      {
        v10 = objc_alloc_init(NSMutableDictionary);
        v11 = self->_handledCommandIdsByRequestId;
        self->_handledCommandIdsByRequestId = v10;

        handledCommandIdsByRequestId = self->_handledCommandIdsByRequestId;
      }

      v12 = [(NSMutableDictionary *)handledCommandIdsByRequestId objectForKey:v8];
      if (!v12)
      {
        v12 = objc_alloc_init(NSMutableSet);
        [(NSMutableDictionary *)self->_handledCommandIdsByRequestId setObject:v12 forKey:v8];
      }

      [v12 addObject:v6];
    }

    else
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = 136315650;
        v15 = "[ADCommandCenter _addHandledCommandId:forRequestId:]";
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Ignored command id %@ because request id %@ is unknown.", &v14, 0x20u);
      }
    }
  }
}

- (void)_invokeAllCompletionsWithError:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[ADCommandCenter _invokeAllCompletionsWithError:]";
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s error = %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_aceCompletionMap;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    *&v8 = 136315394;
    v16 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_aceCompletionMap objectForKey:v12, v16, v17];
        v14 = v13;
        if (v13)
        {
          if (([v13 invokeWithValue:0 andValue:v4] & 1) == 0)
          {
            v15 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v23 = "[ADCommandCenter _invokeAllCompletionsWithError:]";
              v24 = 2112;
              v25 = v12;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Attempting to invoke completion block for command with msgId %@ again", buf, 0x16u);
            }
          }
        }
      }

      v9 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)self->_aceCompletionMap removeAllObjects];
}

- (void)_invokeCompletionForCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter _invokeCompletionForCommand:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s command = %@", &v10, 0x16u);
  }

  v6 = [v4 refId];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_aceCompletionMap objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      if (([v7 invokeWithValue:v4 andValue:0] & 1) == 0)
      {
        v9 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v10 = 136315394;
          v11 = "[ADCommandCenter _invokeCompletionForCommand:]";
          v12 = 2112;
          v13 = v6;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Attempting to invoke completion block for command with msgId %@ again", &v10, 0x16u);
        }
      }

      [(NSMutableDictionary *)self->_aceCompletionMap removeObjectForKey:v6];
    }
  }
}

- (BOOL)_hasCompletionForCommandId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_aceCompletionMap objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_addCompletion:(id)a3 forCommand:(id)a4 forKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    if (!self->_aceCompletionMap)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      aceCompletionMap = self->_aceCompletionMap;
      self->_aceCompletionMap = v12;
    }

    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[ADCommandCenter _addCompletion:forCommand:forKey:]";
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Adding completion for %@", buf, 0x16u);
    }

    v15 = [AFTwoArgumentSafetyBlock alloc];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10020FF70;
    v20 = &unk_100519680;
    v21 = v9;
    v22 = v8;
    v16 = [v15 initWithBlock:&v17];
    [(NSMutableDictionary *)self->_aceCompletionMap setObject:v16 forKey:v11, v17, v18, v19, v20];
  }
}

- (void)_clearAllExecutionDevices
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADCommandCenter _clearAllExecutionDevices]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  executionDevicesByExecutionID = self->_executionDevicesByExecutionID;
  self->_executionDevicesByExecutionID = 0;
}

- (void)_removeExecutionDevicesForLocalRequestWithId:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADCommandCenter _removeExecutionDevicesForLocalRequestWithId:]";
    v8 = 2112;
    v9 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v6, 0x16u);
  }

  [(NSMutableDictionary *)self->_executionDevicesByExecutionID removeObjectForKey:v4];
}

- (void)_addExecutionDevice:(id)a3 forCommandExecutionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 info];
    v10 = [v9 executionID];

    if (v10)
    {
      executionDevicesByExecutionID = self->_executionDevicesByExecutionID;
      if (!executionDevicesByExecutionID)
      {
        v12 = objc_alloc_init(NSMutableDictionary);
        v13 = self->_executionDevicesByExecutionID;
        self->_executionDevicesByExecutionID = v12;

        executionDevicesByExecutionID = self->_executionDevicesByExecutionID;
      }

      v14 = [(NSMutableDictionary *)executionDevicesByExecutionID objectForKey:v10];
      if (!v14)
      {
        v14 = objc_alloc_init(NSMutableArray);
        [(NSMutableDictionary *)self->_executionDevicesByExecutionID setObject:v14 forKey:v10];
      }

      v15 = [v6 afPeerInfo];
      v16 = +[ADDeviceCircleManager sharedInstance];
      v17 = [v16 managedPeerInfoMatchingPeerInfo:v15];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      v20 = v19;

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = v14;
      v22 = [v21 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(v21);
            }

            if (sub_10001A834(v20, *(*(&v28 + 1) + 8 * i)))
            {

              goto LABEL_23;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v26 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v33 = "[ADCommandCenter _addExecutionDevice:forCommandExecutionContext:]";
        v34 = 2112;
        v35 = v20;
        v36 = 2112;
        v37 = v8;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s Added %@ for %@", buf, 0x20u);
      }

      [v21 addObject:{v20, v28}];
LABEL_23:
    }

    else
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v33 = "[ADCommandCenter _addExecutionDevice:forCommandExecutionContext:]";
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Missing executionID for %@", buf, 0x16u);
      }
    }
  }
}

- (void)_endRemoteExecutionContext:(id)a3
{
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 executionID];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID objectForKey:v6];

    if (v7)
    {
      v8 = [(ADCommandCenter *)self _powerAssertionManager];
      [v8 releasePowerAssertionWithName:v6];

      [(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID removeObjectForKey:v6];
      if (![(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID count])
      {
        remoteExecutionContextsByExecutionID = self->_remoteExecutionContextsByExecutionID;
        self->_remoteExecutionContextsByExecutionID = 0;
      }

      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v11 = 136315394;
        v12 = "[ADCommandCenter _endRemoteExecutionContext:]";
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s context = %@", &v11, 0x16u);
      }
    }
  }
}

- (id)_beginRemoteExecutionContextForCommand:(id)a3 fromPeer:(id)a4 withRemoteExecutionInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v42 = "[ADCommandCenter _beginRemoteExecutionContextForCommand:fromPeer:withRemoteExecutionInfo:]";
    v43 = 2112;
    v44 = v7;
    v45 = 2112;
    v46 = v8;
    v47 = 2112;
    v48 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s command = %@, peer = %@, remoteExecutionInfo = %@", buf, 0x2Au);
  }

  v11 = objc_alloc_init(NSUUID);
  v36 = [v11 UUIDString];

  v12 = [v9 currentHomeInfo];
  v39 = v7;
  if (AFIsHorseman())
  {
    v40 = v12;
  }

  else
  {
    v13 = +[ADHomeInfoManager sharedInfoManager];
    v14 = [v9 currentHomeInfo];
    v15 = [v13 updatedHomeInfoForRootInfo:v14];

    v40 = v15;
  }

  v34 = [ADCommandExecutionContext alloc];
  v33 = [AFCommandExecutionInfo alloc];
  v32 = [v9 requestID];
  v16 = [v9 turnId];
  v38 = v8;
  v17 = [v8 afPeerInfo];
  v18 = [v9 endpointInfo];
  v31 = [v9 instanceInfo];
  v19 = [v9 speechInfo];
  v20 = [v9 requestHandlingContextSnapshot];
  v21 = [v9 deviceRestrictions];
  v22 = [v9 userInfo];
  v23 = v17;
  v24 = [v33 initWithExecutionID:v36 requestID:v32 turnId:v16 originPeerInfo:v17 currentHomeInfo:v40 endpointInfo:v18 instanceInfo:v31 speechInfo:v19 requestHandlingContextSnapshot:v20 deviceRestrictions:v21 userInfo:v22];
  v35 = [(ADCommandExecutionContext *)v34 initWithInfo:v24];

  remoteExecutionContextsByExecutionID = self->_remoteExecutionContextsByExecutionID;
  if (!remoteExecutionContextsByExecutionID)
  {
    v26 = objc_alloc_init(NSMutableDictionary);
    v27 = self->_remoteExecutionContextsByExecutionID;
    self->_remoteExecutionContextsByExecutionID = v26;

    remoteExecutionContextsByExecutionID = self->_remoteExecutionContextsByExecutionID;
  }

  [(NSMutableDictionary *)remoteExecutionContextsByExecutionID setObject:v35 forKey:v36];
  v28 = [(ADCommandCenter *)self _powerAssertionManager];
  [v28 takePowerAssertionWithName:v36];

  v29 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[ADCommandCenter _beginRemoteExecutionContextForCommand:fromPeer:withRemoteExecutionInfo:]";
    v43 = 2112;
    v44 = v35;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  return v35;
}

- (BOOL)_hasRemoteExecutionContextForRequestID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) info];
        v10 = [v9 requestID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_remoteExecutionContextForExecutionID:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasRemoteExecutionContextForExecutionID:(id)a3
{
  v3 = [(ADCommandCenter *)self _remoteExecutionContextForExecutionID:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_destroyRootExecutionContextForRequestID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID objectForKey:v4];
    if (v5)
    {
      [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID removeObjectForKey:v4];
      if (![(NSMutableDictionary *)self->_rootExecutionContextsByRequestID count])
      {
        rootExecutionContextsByRequestID = self->_rootExecutionContextsByRequestID;
        self->_rootExecutionContextsByRequestID = 0;
      }

      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v8 = 136315394;
        v9 = "[ADCommandCenter _destroyRootExecutionContextForRequestID:]";
        v10 = 2112;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s context = %@", &v8, 0x16u);
      }
    }
  }
}

- (void)_createRootExecutionContextForRequestID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID objectForKey:v4];

    if (!v5)
    {
      if (!self->_rootExecutionContextsByRequestID)
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        rootExecutionContextsByRequestID = self->_rootExecutionContextsByRequestID;
        self->_rootExecutionContextsByRequestID = v6;
      }

      v8 = +[ADDeviceCircleManager sharedInstance];
      v9 = [v8 localPeerInfo];

      v10 = [AFRequestHandlingContext alloc];
      v11 = [v9 idsDeviceUniqueIdentifier];
      v12 = [v9 assistantIdentifier];
      v13 = [v10 initWithRequestID:v4 inputDeviceID:v11 inputAssistantID:v12];

      if (AFIsHorseman())
      {
        v14 = +[ADHomeInfoManager sharedInfoManager];
        v15 = [v14 rootAfHomeInfoForThisDevice];
      }

      else
      {
        v15 = 0;
      }

      v16 = [AFCommandExecutionInfo alloc];
      v17 = [(AFRequestInfo *)self->_currentRequestInfo turnIdentifier];
      v18 = [(AFInstanceContext *)self->_instanceContext info];
      v19 = [(ADCommandCenter *)self _restrictedCommands];
      v20 = [v16 initWithExecutionID:v4 requestID:v4 turnId:v17 originPeerInfo:0 currentHomeInfo:v15 endpointInfo:0 instanceInfo:v18 speechInfo:0 requestHandlingContextSnapshot:v13 deviceRestrictions:v19 userInfo:0];

      v21 = [[ADCommandExecutionContext alloc] initWithInfo:v20];
      [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID setObject:v21 forKey:v4];
      objc_storeStrong(&self->_mostRecentRootExecutionContext, v21);
      objc_initWeak(&location, self);
      v22 = dispatch_time(0, 305000000000);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10021100C;
      block[3] = &unk_10051B5F0;
      objc_copyWeak(&v26, &location);
      dispatch_after(v22, queue, block);
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v29 = "[ADCommandCenter _createRootExecutionContextForRequestID:]";
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_rootExecutionContextForRequestID:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasRootExecutionContextForRequestID:(id)a3
{
  v3 = [(ADCommandCenter *)self _rootExecutionContextForRequestID:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_executionContextMatchingExecutionInfo:(id)a3 fallbackRequestID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || ([v6 requestID], v8 = objc_claimAutoreleasedReturnValue(), -[ADCommandCenter _rootExecutionContextForRequestID:](self, "_rootExecutionContextForRequestID:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9) && (objc_msgSend(v6, "executionID"), v10 = objc_claimAutoreleasedReturnValue(), -[ADCommandCenter _remoteExecutionContextForExecutionID:](self, "_remoteExecutionContextForExecutionID:", v10), v9 = objc_claimAutoreleasedReturnValue(), v10, !v9))
  {
    v9 = [(ADCommandCenter *)self _rootExecutionContextForRequestID:v7];
  }

  return v9;
}

- (BOOL)_hasOutstandingRequestId:(id)a3
{
  if (a3)
  {
    return [(NSMutableSet *)self->_outstandingRequestIds containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_removeOutstandingRequestId:(id)a3 forReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADCommandCenter _removeOutstandingRequestId:forReason:]";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s requestId = %@, reason = %@", &v9, 0x20u);
  }

  if (v6)
  {
    [(ADCommandCenter *)self _removeHandledCommandIdsForRequestId:v6];
    [(ADCommandCenter *)self _removePostCommandHandlingBlocksForRequestId:v6];
    [(ADCommandCenter *)self _destroyRootExecutionContextForRequestID:v6];
    [(NSMutableSet *)self->_outstandingRequestIds removeObject:v6];
  }
}

- (void)_addOutstandingRequestId:(id)a3 forReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[ADCommandCenter _addOutstandingRequestId:forReason:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s requestId = %@, reason = %@", &v12, 0x20u);
  }

  if (v6)
  {
    outstandingRequestIds = self->_outstandingRequestIds;
    if (!outstandingRequestIds)
    {
      v10 = objc_alloc_init(NSMutableSet);
      v11 = self->_outstandingRequestIds;
      self->_outstandingRequestIds = v10;

      outstandingRequestIds = self->_outstandingRequestIds;
    }

    [(NSMutableSet *)outstandingRequestIds addObject:v6];
    [(ADCommandCenter *)self _createRootExecutionContextForRequestID:v6];
  }
}

- (void)dealloc
{
  [(ADSessionManager *)self->_sessionManager setDelegate:0];
  [(ADSessionManager *)self->_sessionManager cancel];
  [(ADSpeechManager *)self->_speechManager setDelegate:0];
  [(ADCommandCenter *)self _context_reset];
  [(ADLocationManager *)self->_locationManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = ADCommandCenter;
  [(ADCommandCenter *)&v3 dealloc];
}

- (ADCommandCenter)init
{
  v26.receiver = self;
  v26.super_class = ADCommandCenter;
  v2 = [(ADCommandCenter *)&v26 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    v4 = *(v2 + 7);
    *(v2 + 7) = v3;

    v5 = qword_100590558;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_UNSPECIFIED, 0);

    v8 = dispatch_queue_create_with_target_V2("ADCommandCenterQueue", v7, v5);
    v9 = *(v2 + 1);
    *(v2 + 1) = v8;

    *(v2 + 68) = 0;
    v10 = +[AFInstanceContext currentContext];
    v11 = *(v2 + 87);
    *(v2 + 87) = v10;

    v12 = *(v2 + 60);
    *(v2 + 60) = 0;

    v13 = objc_alloc_init(AIMLExperimentationAnalyticsManager);
    v14 = *(v2 + 89);
    *(v2 + 89) = v13;

    v15 = +[AFPreferences sharedPreferences];
    v16 = [v15 assistantIsEnabled];
    v17 = [v15 dictationIsEnabled];
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v28 = "[ADCommandCenter init]";
      v29 = 1024;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s assistantIsEnabled = %d", buf, 0x12u);
      v18 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v28 = "[ADCommandCenter init]";
      v29 = 1024;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s dictationIsEnabled = %d", buf, 0x12u);
    }

    [v2 _createAssistantLocallyIfNeeded:v16];
    v19 = +[ADPreferences sharedPreferences];
    [v19 setDeviceWasRedirectedToProduction:0];

    v20 = *(v2 + 1);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002118CC;
    v22[3] = &unk_100515CF0;
    v24 = v16;
    v25 = v17;
    v23 = v2;
    dispatch_async(v20, v22);
  }

  return v2;
}

+ (id)sharedQueue
{
  v2 = [a1 sharedCommandCenter];
  v3 = [v2 _queue];

  return v3;
}

- (void)acousticIDHelper:(id)a3 didCompleteSessionSuccessfully:(BOOL)a4
{
  v4 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter(AcousticId) acousticIDHelper:didCompleteSessionSuccessfully:]";
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %d", &v10, 0x12u);
  }

  v7 = [(ADCommandCenter *)self _speechManager];
  [v7 stopFingerprintingForSuccess:v4];
  v8 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:5];
  [v8 setSuppressStopAlert:v4];
  [v7 stopSpeechCaptureIfFingerprintingOnlyWithOptions:v8];
  v9 = [(ADCommandCenter *)self _currentClient];
  [v9 adAcousticIDRequestDidFinishSuccessfully:v4];
}

- (void)acousticIDHelperDidStartSession:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADCommandCenter(AcousticId) acousticIDHelperDidStartSession:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  v6 = [v4 currentSession];
  [(ADCommandCenter *)self _sendCommandToServer:v6];
}

- (void)_saAIRetrySearch:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter(AcousticId) _saAIRetrySearch:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  v9 = [(ADCommandCenter *)self _acousticIDHelper];
  [v9 handleRetrySearch:v6];

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_saAISearchCompleted:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADCommandCenter(AcousticId) _saAISearchCompleted:completion:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = [(ADCommandCenter *)self _speechManager];
  [v9 setFingerprintWasRecognized];

  if (_AFPreferencesAcousticIDAutoEndpoint() && ![(ADCommandCenter *)self _speechDelegateHasReceivedPartialResult]&& !self->_partialResultAcousticIDTimer)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ADCommandCenter(AcousticId) _saAISearchCompleted:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Scheduling partial result acoustic ID timer", buf, 0xCu);
    }

    v11 = [(ADCommandCenter *)self _queue];
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
    partialResultAcousticIDTimer = self->_partialResultAcousticIDTimer;
    self->_partialResultAcousticIDTimer = v12;

    v14 = self->_partialResultAcousticIDTimer;
    v15 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    v16 = self->_partialResultAcousticIDTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1002282C0;
    handler[3] = &unk_10051DFE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(self->_partialResultAcousticIDTimer);
  }

  v17 = [(ADCommandCenter *)self _acousticIDHelper];
  [v17 handleSearchCompleted:v6];

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_saAIRequestSearch:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[ADCommandCenter(AcousticId) _saAIRequestSearch:completion:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v12, 0x16u);
  }

  v9 = [(ADCommandCenter *)self _currentClient];
  [v9 adAcousticIDRequestWillStart];
  v10 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:5];
  v11 = [v6 acousticIdSearchSessionId];
  [(ADCommandCenter *)self _startAcousticIDRequestWithDelegate:v9 withOptions:v10 context:v11];

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_acousticId_commandFailed:(id)a3
{
  v7 = a3;
  v4 = [(ADCommandCenter *)self _acousticIDHelper];
  v5 = [v7 refId];
  v6 = [v4 hasRelatedCommandForRefId:v5];

  if (v6)
  {
    [v4 handleCommandFailed:v7];
  }
}

- (void)_acousticId_speechCaptureCompleted
{
  v3 = [(ADAcousticIDHelper *)self->_acousticIDHelper currentSession];
  if (v3)
  {
    v4 = v3;
    v5 = [(ADAcousticIDHelper *)self->_acousticIDHelper sessionIsComplete];

    if ((v5 & 1) == 0)
    {
      v6 = [(ADAcousticIDHelper *)self->_acousticIDHelper cancelSessionCommand];
      [(ADCommandCenter *)self _sendCommandToServer:v6];

      acousticIDHelper = self->_acousticIDHelper;

      [(ADAcousticIDHelper *)acousticIDHelper failCurrentSession];
    }
  }
}

- (void)_acousticId_musicWasDetected
{
  v3 = [(ADAcousticIDHelper *)self->_acousticIDHelper currentSession];

  if (!v3)
  {
    v4 = [(ADCommandCenter *)self _speechManager];
    v5 = [v4 context];
    v6 = [v5 aceId];
    [(ADCommandCenter *)self _acousticId_startSessionForSpeechRequest:v6];

    v7 = [(ADCommandCenter *)self _currentClient];
    [v7 adMusicWasDetected];
  }
}

- (void)_acousticId_handleFingerprint:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = [(ADCommandCenter *)self _acousticIDHelper];
  if ([v7 shouldSendFingerprintForDuration:a4])
  {
    v8 = [v7 searchCommandForFingerprintData:v6 withDuration:a4];
    [(ADCommandCenter *)self _sendCommandToServer:v8];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADCommandCenter(AcousticId) _acousticId_handleFingerprint:duration:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Not sending SAAISearch because aidHelper said not to", &v10, 0xCu);
    }
  }
}

- (void)_acousticId_startSessionForSpeechRequest:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _acousticIDHelper];
  [v5 startNewAcousticIDSessionWithRequestId:0 refId:v4];
}

- (void)_acousticId_startSessionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _acousticIDHelper];
  [v5 startNewAcousticIDSessionWithRequestId:v4 refId:0];
}

- (id)_acousticIDHelper
{
  acousticIDHelper = self->_acousticIDHelper;
  if (!acousticIDHelper)
  {
    v4 = objc_alloc_init(ADAcousticIDHelper);
    v5 = self->_acousticIDHelper;
    self->_acousticIDHelper = v4;

    [(ADAcousticIDHelper *)self->_acousticIDHelper setDelegate:self];
    acousticIDHelper = self->_acousticIDHelper;
  }

  return acousticIDHelper;
}

- (void)getSharedDataForPeer:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10026B3A4;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)sendGizmoData
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[ADCommandCenter(SharedDataClient) sendGizmoData]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  sharedDataService = self->_sharedDataService;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006C49C;
  v5[3] = &unk_1005182D8;
  v5[4] = self;
  [(ADSharedDataService *)sharedDataService deviceIsNearby:v5];
}

- (void)updateSharedDataWithCloudData:(id)a3 fromPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[ADCommandCenter(SharedDataClient) updateSharedDataWithCloudData:fromPeer:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  if (v6)
  {
    v9 = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10026BA4C;
    block[3] = &unk_10051DB68;
    v11 = v6;
    v12 = v7;
    v13 = self;
    dispatch_async(v9, block);
  }
}

- (void)_updateSharedDataFromPeers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADCommandCenter(SharedDataClient) _updateSharedDataFromPeers:completion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s peers: %@", buf, 0x16u);
  }

  v9 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026BDB0;
  block[3] = &unk_10051E088;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)updateSharedDataFromCloudPeers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromCloudPeers:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v9 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026C1A4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)_resetPeerAccountSettingsWithSharedData:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
    v51 = 2112;
    v52 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v6 = [(ADCommandCenter *)self _queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(ADCommandCenter *)self _account];
  v8 = [v7 peerAssistantIdentifier];
  v9 = [v4 assistantId];
  v10 = v9;
  if (v8 == v9 || ([v9 isEqualToString:v8] & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
      v51 = 2112;
      v52 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Updating peer assistant id: %@", buf, 0x16u);
    }

    [v7 setPeerAssistantIdentifier:v10];
    v11 = 1;
  }

  v13 = [v7 peerSpeechIdentifier];

  v14 = [v4 speechId];

  if (v13 != v14 && ([v14 isEqualToString:v13] & 1) == 0)
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
      v51 = 2112;
      v52 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Updating peer speech id: %@", buf, 0x16u);
    }

    [v7 setPeerSpeechIdentifier:v14];
    v11 = 1;
  }

  v16 = [v7 peerUserAgentString];

  v17 = [v4 userAgent];

  if (v16 != v17 && ([v17 isEqualToString:v16] & 1) == 0)
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
      v51 = 2112;
      v52 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Updating peer user agent string: %@", buf, 0x16u);
    }

    [v7 setPeerUserAgentString:v17];
    v11 = 1;
  }

  v19 = [v7 peerLanguageCode];

  v20 = [v4 languageCode];

  if (v19 != v20 && ([v20 isEqualToString:v19] & 1) == 0)
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
      v51 = 2112;
      v52 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Updating peer language code: %@", buf, 0x16u);
    }

    [v7 setPeerLanguageCode:v20];
    v11 = 1;
  }

  v22 = [v7 peerSiriEnabled];
  v23 = [v4 siriEnabled];
  if (v22 != v23)
  {
    [v7 setPeerSiriEnabled:v23];
    goto LABEL_27;
  }

  if (v11)
  {
LABEL_27:
    [v7 save];
    v24 = 1;
    if (!v4)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v24 = 0;
  if (!v4)
  {
LABEL_28:
    if (!v24)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

LABEL_31:
  v48 = v24;
  if ((AFIsHorseman() & 1) == 0)
  {
    v25 = +[ADPreferences sharedPreferences];
    v26 = [v25 languageCode];

    v27 = [v4 previousLanguageCode];
    if (v26 == v27 || [v26 isEqualToString:v27])
    {
      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Setting new language code from cloud data", buf, 0xCu);
      }

      v29 = [v4 languageCode];
      v30 = [v4 outputVoice];
      [(ADCommandCenter *)self _setLanguageCode:v29 outputVoice:v30];
    }

    else
    {
      v47 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Not setting language code due to previous mismatch", buf, 0xCu);
      }
    }
  }

  v31 = [NSSet alloc];
  v32 = _AFPreferencesNotificationPreviewRestrictedApps();
  v33 = [v31 initWithArray:v32];

  v34 = [NSSet alloc];
  v35 = [v4 notificationPreviewRestrictedApps];
  v36 = [v34 initWithArray:v35];

  v37 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
    v51 = 2112;
    v52 = v33;
    v53 = 2112;
    v54 = v36;
    _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%s current restricted: %@ new restricted: %@", buf, 0x20u);
  }

  if (([v33 isEqualToSet:v36] & 1) == 0)
  {
    v38 = [v4 notificationPreviewRestrictedApps];
    _AFPreferencesSetNotificationPreviewRestrictedApps();
  }

  v39 = [v4 temperatureUnit];
  if (v39)
  {
    v40 = self;
    v41 = +[NSLocale currentLocale];
    v42 = [v41 af_aceTemperatureUnit];

    if (([v39 isEqualToString:v42] & 1) == 0)
    {
      v43 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
        v51 = 2112;
        v52 = v39;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Updating temperature unit to: %@", buf, 0x16u);
      }

      [NSLocale af_setAceTemperatureUnit:v39];
    }

    self = v40;
  }

  if (v48)
  {
LABEL_49:
    v44 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s Resetting sessions due to account settings change", buf, 0xCu);
    }

    v45 = +[AFAnalytics sharedAnalytics];
    [v45 logEventWithType:5001 context:0];

    v46 = [(ADCommandCenter *)self _sessionManager];
    [v46 resetSessionsAtNextRequestBoundary];
  }

LABEL_52:
}

- (void)updateSharedDataFromCompanion
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromCompanion]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026CA84;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_cloudSyncPreferenceDidChange
{
  v2 = [(ADCommandCenter *)self _queue];
  dispatch_async(v2, &stru_1005182B0);
}

- (void)listenForSharedDataFromCloud
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCommandCenter(SharedDataClient) listenForSharedDataFromCloud]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = +[ADPeerCloudService sharedInstance];
  [v4 setSharedDataRequestObserver:&stru_100518268 withHandler:&unk_100590728];
  if ((AFIsHorseman() & 1) != 0 || AFIsATV())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10026CFD4;
    v6[3] = &unk_100518290;
    v6[4] = self;
    [v4 setSharedDataObserver:v6 withHandle:&unk_100590730];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10026CFE4, kAFCloudSyncPreferenceDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDrop);
  }
}

- (void)sharedDataConnection:(id)a3 didUpdateSharedData:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCommandCenter(SharedDataClient) sharedDataConnection:didUpdateSharedData:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v7 = [(ADCommandCenter *)self _queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10026D21C;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)updateSharedDataFromPeerUseCache:(BOOL)a3 allowCloudMessaging:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromPeerUseCache:allowCloudMessaging:completion:]";
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s allowCloudMessaging=%d useCache=%d", buf, 0x18u);
  }

  [(ADCommandCenter *)self _queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10026D39C;
  v12[3] = &unk_100518228;
  v15 = v6;
  v16 = v5;
  v13 = v12[4] = self;
  v14 = v8;
  v10 = v8;
  v11 = v13;
  dispatch_async(v11, v12);
}

- (void)_updateSharedDataWithPairedPeerData:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
    v59 = 2112;
    v60 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (v4)
  {
    v6 = [(ADCommandCenter *)self _account];
    if (AFSupportsPairedDevice() && (AFIsNano() & 1) == 0)
    {
      sharedDataService = self->_sharedDataService;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10026DDF4;
      v54[3] = &unk_1005181D8;
      v54[4] = self;
      v55 = v6;
      v56 = v4;
      [(ADSharedDataService *)sharedDataService deviceIsNearby:v54];

LABEL_63:
      goto LABEL_64;
    }

    *(&v53 + 1) = [v6 peerHostname];
    *&v53 = [v4 hostname];
    v7 = [v4 assistantId];
    [v6 setPeerAssistantIdentifier:v7];

    v8 = [v4 loggingAssistantId];
    [v6 setPeerLoggingAssistantIdentifier:v8];

    v9 = [v4 speechId];
    [v6 setPeerSpeechIdentifier:v9];

    v10 = [v4 hostname];
    [v6 setPeerHostname:v10];

    [v6 save];
    v11 = [v4 languageCode];
    v12 = [v4 outputVoice];
    [(ADCommandCenter *)self _setLanguageCode:v11 outputVoice:v12];

    v13 = +[ADPreferences sharedPreferences];
    v14 = [v4 sharedUserId];
    v15 = [v4 loggingSharedUserId];
    [v13 setSharedUserIdentifier:v14 loggingSharedUserIdentifier:v15];

    v16 = _AFSupportPreferencesBoolValueForKey();

    v17 = _AFSupportPreferencesBoolValueForKey();

    v18 = _AFPreferencesSiriDataSharingOptInStatus();
    v19 = +[AFPreferences sharedPreferences];
    v20 = [v19 assistantIsEnabled];
    v21 = [v19 dictationIsEnabled];
    if (v16)
    {
      v22 = 0;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    else
    {
      [v19 _setAssistantIsEnabledLocal:{objc_msgSend(v4, "siriEnabled")}];
      v22 = v20 ^ [v4 siriEnabled];
      if (v17)
      {
LABEL_8:
        v23 = 0;
        if (v18)
        {
          goto LABEL_42;
        }

        goto LABEL_16;
      }
    }

    if ([v4 dictationEnabled])
    {
      v24 = 1;
    }

    else
    {
      v24 = [v4 siriEnabled];
    }

    [v19 _setDictationIsEnabledLocal:v24];
    v23 = v21 ^ v24;
    if (v18)
    {
LABEL_42:
      v41 = _AFPreferencesCloudSyncEnabled();
      v42 = v41 ^ [v4 cloudSyncEnabled];
      if (v42 == 1)
      {
        _AFPreferencesEnableCloudSync();
        v43 = +[NSDate date];
        _AFPreferencesSetCloudSyncEnabledModificationDate();
      }

      if (AFIsNano())
      {
        ShouldCensorSpeechInternal = _AFPreferencesShouldCensorSpeechInternal();
        if (ShouldCensorSpeechInternal != [v4 shouldCensorSpeech])
        {
          _AFPreferencesSetShouldCensorSpeechInternal();
          AFBackedUpPreferencesSynchronize();
          v45 = +[NSNotificationCenter defaultCenter];
          [v45 postNotificationName:@"ADShouldCensorSpeechDidChangeNotification" object:0];
        }
      }

      [v19 synchronize];
      if ((v22 | v23))
      {
        v46 = +[NSNotificationCenter defaultCenter];
        [v46 postNotificationName:@"ADPreferencesEnabledBitsDidChangeNotification" object:0];
      }

      if (v42)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFCloudSyncPreferenceDidChangeDarwinNotification, 0, 0, 1u);
      }

      if (!v22 || ([v19 assistantIsEnabled] & 1) != 0 || ((v23 ^ 1) & 1) != 0 || (objc_msgSend(v19, "dictationIsEnabled") & 1) != 0)
      {
        v48 = v53;
        if (v53 == 0 || ([*(&v53 + 1) isEqualToString:v53] & 1) != 0)
        {
          goto LABEL_62;
        }

        v49 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s Resetting sessions due to hostname change", buf, 0xCu);
        }

        v50 = [(ADCommandCenter *)self _sessionManager];
        [v50 resetSessionsAndMakeQuiet:1];
      }

      else
      {
        v50 = +[ADCommandCenter sharedCommandCenter];
        [v50 destroyActiveAccount];
        v48 = v53;
      }

LABEL_62:
      goto LABEL_63;
    }

LABEL_16:
    v26 = [v4 dataSharingOptInStatus];
    v27 = v26;
    if (!v26)
    {
LABEL_41:

      goto LABEL_42;
    }

    if ([v26 isEqualToString:SADataSharingOptInStatusOptedInValue])
    {
      v28 = 1;
    }

    else if ([v27 isEqualToString:SADataSharingOptInStatusOptedOutValue])
    {
      v28 = 2;
    }

    else
    {
      v29 = [v27 isEqualToString:SADataSharingOptInStatusDismissedValue];
      v28 = 3;
      if (!v29)
      {
        v28 = 0;
      }
    }

    v52 = v28;
    v30 = [off_10058D5B8() sharedInstance];
    v31 = [v30 getActivePairedDevice];

    v51 = v31;
    if (v31)
    {
      v32 = off_10058D5C0();
      v33 = [v31 valueForProperty:v32];
      v34 = [v33 stringValue];

      v35 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
        v59 = 2112;
        v60 = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Fetched companion build version %@", buf, 0x16u);
      }

      if (v34 && !AFShouldOptOutDataSharingForMigrationFromBuildVersion())
      {
        IsTinker = AFDeviceIsTinker();
        if (v52 == 2 || !IsTinker)
        {
          if (!v52)
          {
LABEL_40:

            goto LABEL_41;
          }

LABEL_37:
          v39 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315395;
            v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
            v59 = 2049;
            v60 = v52;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Updating sharing opt-in status: %{private}ld", buf, 0x16u);
          }

          v40 = +[ADPreferences sharedPreferences];
          [v40 setSiriDataSharingOptInStatus:v52 propagateToHomeAccessories:0 source:8 reason:@"SharedData" completion:0];

          goto LABEL_40;
        }

        v37 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Tinker device should not sync Siri Data Sharing value", buf, 0xCu);
        }

LABEL_36:
        v52 = 2;
        goto LABEL_37;
      }
    }

    else
    {
      v34 = 0;
    }

    v38 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
      v59 = 2112;
      v60 = v34;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Companion build version %@ requires Siri Data Sharing migration", buf, 0x16u);
    }

    AFDeviceIsTinker();
    goto LABEL_36;
  }

LABEL_64:
}

- (id)_sharedDataService
{
  sharedDataService = self->_sharedDataService;
  if (!sharedDataService)
  {
    v4 = [[ADSharedDataService alloc] initWithDelegate:self];
    v5 = self->_sharedDataService;
    self->_sharedDataService = v4;

    sharedDataService = self->_sharedDataService;
  }

  return sharedDataService;
}

- (void)runBootTimeServiceMaintenanceWithCompletion:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCommandCenter(ServiceMaintenance) runBootTimeServiceMaintenanceWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028982C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)runServiceMaintenanceWithCompletion:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCommandCenter(ServiceMaintenance) runServiceMaintenanceWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002899A8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_runMaintenanceForServices:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADCommandCenter(ServiceMaintenance) _runMaintenanceForServices:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  serviceMaintenanceGroup = self->_serviceMaintenanceGroup;
  if (!serviceMaintenanceGroup)
  {
    v10 = dispatch_group_create();
    v11 = self->_serviceMaintenanceGroup;
    self->_serviceMaintenanceGroup = v10;

    serviceMaintenanceGroup = self->_serviceMaintenanceGroup;
  }

  v12 = serviceMaintenanceGroup;
  v13 = [v6 count];
  v14 = +[AFAnalytics sharedAnalytics];
  [v14 logEventWithType:1204 context:0];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3042000000;
  v32 = sub_100289CFC;
  v33 = sub_100289D08;
  v34 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100289D10;
  v24[3] = &unk_100518ED0;
  v29 = v13;
  v15 = v12;
  v25 = v15;
  p_buf = &buf;
  v16 = v6;
  v26 = v16;
  v27 = self;
  v17 = [v24 copy];
  objc_storeWeak((*(&buf + 1) + 40), v17);
  (*(v17 + 2))(v17, 0);
  v18 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028A040;
  block[3] = &unk_10051C6F0;
  v22 = v17;
  v23 = v7;
  v19 = v7;
  v20 = v17;
  dispatch_group_notify(v15, v18, block);

  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(&v34);
}

- (void)_metrics_recordSNNetworkSnapshotForEvent:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ADCommandCenter *)self _sessionManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10028CED8;
  v9[3] = &unk_100519400;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 getSNConnectionMetrics:v9];
}

- (void)_metrics_destroyAllMetrics
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCommandCenter(Metrics) _metrics_destroyAllMetrics]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v4 = [(ADCommandCenter *)self _offlineMetricsManager];
  [v4 deleteAllMetrics];
}

- (void)_metrics_destroyAllMetricsIfNeeded
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter(Metrics) _metrics_destroyAllMetricsIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  if (![(ADCommandCenter *)self _metrics_isAssistantOrDictationEnabled])
  {
    [(ADCommandCenter *)self _metrics_destroyAllMetrics];
  }
}

- (void)_metrics_sendEngagementFeedback:(int64_t)a3 voiceQueryIdentifier:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(SAMetrics);
  [v7 setCategory:@"SpotlightEngagementFeedback"];
  [v7 setOriginalCommandId:v6];
  if (a3 > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_100519420[a3];
  }

  v21[0] = @"type";
  v9 = [NSNumber numberWithInteger:a3];
  v21[1] = @"description";
  v22[0] = v9;
  v22[1] = v8;
  v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

  v19 = @"engagementInfo";
  v20 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v7 setEventInformation:v11];

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[ADCommandCenter(Metrics) _metrics_sendEngagementFeedback:voiceQueryIdentifier:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Sending engagement feedback %@ for aceId %@", &v13, 0x20u);
  }

  [(ADCommandCenter *)self _reallyCommitOrSaveMetrics:v7];
}

- (void)_metrics_publishDailyDeviceStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[ADCommandCenter(Metrics) _metrics_publishDailyDeviceStatus:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10028DA5C;
  v20[3] = &unk_10051CF58;
  v9 = v7;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  if ([(ADCommandCenter *)self _metrics_isAssistantOrDictationEnabled])
  {
    v11 = +[AFPreferences sharedPreferences];
    v12 = [v11 isDictationHIPAACompliant];

    if (!v12)
    {
      v15 = [v6 wrapAsAnyEvent];
      v16 = +[ADAnalyticsService sharedService];
      v22 = v15;
      v17 = [NSArray arrayWithObjects:&v22 count:1];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10028DA74;
      v18[3] = &unk_10051CF58;
      v19 = v10;
      [v16 storeGenericInstrumentation:v17 completion:v18];

      goto LABEL_12;
    }

    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[ADCommandCenter(Metrics) _metrics_publishDailyDeviceStatus:completion:]";
      v14 = "%s HIPAA On-Device Dictation enabled. Dropping DailyDeviceStatus.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
    }
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[ADCommandCenter(Metrics) _metrics_publishDailyDeviceStatus:completion:]";
      v14 = "%s Assistant and Dictation are disabled. Dropping DailyDeviceStatus.";
      goto LABEL_9;
    }
  }

  (v10[2])(v10);
LABEL_12:
}

- (void)metrics_publishDailyDeviceStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028DB5C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_metrics_processEventRecordsFromStore:(id)a3 batch:(id)a4 deliveryStream:(unint64_t)a5 eventStreamUID:(id)a6 streamSpeechId:(id)a7 untilLimit:(double)a8 uploadRecords:(id)a9 completion:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v51 = "[ADCommandCenter(Metrics) _metrics_processEventRecordsFromStore:batch:deliveryStream:eventStreamUID:streamSpeechId:untilLimit:uploadRecords:completion:]";
    v52 = 2112;
    v53 = v19;
    v54 = 2112;
    v55 = v20;
    v56 = 2048;
    v57 = a5;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Fetching 128 events from event stream with UID %@ speechId %@ in delivery stream %tu", buf, 0x2Au);
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10028DE3C;
  v45[3] = &unk_100519310;
  v24 = v17;
  v46 = v24;
  v49 = a5;
  v25 = v18;
  v47 = v25;
  v26 = v22;
  v48 = v26;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10028DEF4;
  v34[3] = &unk_1005193D8;
  v42 = v21;
  v43 = a5;
  v35 = v25;
  v36 = v19;
  v44 = a8;
  v40 = objc_retainBlock(v45);
  v41 = v26;
  v37 = self;
  v38 = v20;
  v39 = v24;
  v27 = v24;
  v28 = v20;
  v29 = v21;
  v30 = v26;
  v31 = v19;
  v32 = v40;
  v33 = v25;
  [v27 fetchEventRecords:128 eventStreamUID:v31 streamSpeechId:v28 deliveryStream:a5 completion:v34];
}

- (void)_metrics_sendNextAnalyticsEventStreamToServerUntilLimit:(double)a3 requiresUnlimitedPower:(BOOL)a4 requiresActiveSession:(BOOL)a5 prioritizedEventStreamUID:(id)a6 deliveryStreamContinuations:(id *)a7 scheduledActivity:(BOOL)a8 completion:(id)a9
{
  v11 = a5;
  v12 = a4;
  v15 = a6;
  v16 = a9;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    var3 = a7->var3;
    *buf = 136315394;
    v54 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]";
    v55 = 2048;
    v56 = var3;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Remaining batch runs: %lu", buf, 0x16u);
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10028EF60;
  v51[3] = &unk_10051CF58;
  v19 = v16;
  v52 = v19;
  v20 = objc_retainBlock(v51);
  v21 = a7->var3;
  if (v21)
  {
    a7->var3 = v21 - 1;
  }

  v22 = +[NSProcessInfo processInfo];
  [v22 systemUptime];
  v24 = v23;

  if (v24 >= a3)
  {
    v28 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v54 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]";
    v29 = "%s Attempted to send analytics event stream when time limit is reached.";
    goto LABEL_17;
  }

  if (![(ADCommandCenter *)self _metrics_isSystemIdle])
  {
    v28 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v54 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]";
    v29 = "%s Attempted to send analytics event stream when system is busy.";
    goto LABEL_17;
  }

  if (![(ADCommandCenter *)self _metrics_isAssistantOrDictationEnabled])
  {
    v28 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v54 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]";
    v29 = "%s Attempted to send analytics event stream when Assistant and Dictation are disabled.";
    goto LABEL_17;
  }

  v37 = v15;
  v25 = +[AFPreferences sharedPreferences];
  v26 = [v25 isDictationHIPAACompliant];

  if (!v26)
  {
    v30 = +[AFSiriDataSharingSensitivityManager shared];
    v31 = [v30 isOptedOutOfMTE];

    if (!v31)
    {
      if (v12 && (IOPSDrawingUnlimitedPower() & 1) == 0)
      {
        v27 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        *buf = 136315138;
        v54 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]";
        v36 = "%s Attempted to send analytics event stream when the device is on battery.";
      }

      else
      {
        if (!v11 || (-[ADCommandCenter _sessionManager](self, "_sessionManager"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 hasActiveSessionForSendingMetrics], v32, (v33 & 1) != 0))
        {
          v34 = +[ADAnalyticsService sharedService];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_10028EF78;
          v39[3] = &unk_1005192C0;
          v39[4] = self;
          v41 = v20;
          v43 = a3;
          v15 = v37;
          v40 = v37;
          var1 = a7->var1;
          var0 = a7->var0;
          v45 = var1;
          var2 = a7->var2;
          v47 = a7->var3;
          v48 = a8;
          v49 = v11;
          v50 = v12;
          v42 = v19;
          [v34 accessStoreUsingBlock:v39];

          goto LABEL_21;
        }

        v27 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        *buf = 136315138;
        v54 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]";
        v36 = "%s Skipped sending metrics to server because the session is not active.";
      }

LABEL_32:
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
      goto LABEL_10;
    }

    v28 = AFSiriLogContextDaemon;
    v15 = v37;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      (v20[2])(v20);
      goto LABEL_21;
    }

    *buf = 136315138;
    v54 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]";
    v29 = "%s #MTEOptOut Attempted to send analytics event stream when device is opted out of MTE";
LABEL_17:
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);
    goto LABEL_20;
  }

  v27 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v54 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]";
    v36 = "%s Attempted to send analytics event stream when HIPAA compliance for On-Device Dictation.";
    goto LABEL_32;
  }

LABEL_10:
  (v20[2])(v20);
  v15 = v37;
LABEL_21:
}

- (void)_metrics_sendNextOfflineMetricsToServerUntilLimit:(double)a3 requiresUnlimitedPower:(BOOL)a4 requiresActiveSession:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100291CC8;
  v33[3] = &unk_10051CF58;
  v12 = v10;
  v34 = v12;
  v13 = objc_retainBlock(v33);
  v14 = +[NSProcessInfo processInfo];
  [v14 systemUptime];
  v16 = v15;

  if (v16 >= a3)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
      v20 = "%s Attempted to send offline metrics when time limit is reached.";
      goto LABEL_15;
    }

LABEL_18:
    (v13[2])(v13);
    goto LABEL_19;
  }

  if (![(ADCommandCenter *)self _metrics_isSystemIdle])
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
      v20 = "%s Attempted to send offline metrics when system is busy.";
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (![(ADCommandCenter *)self _metrics_isAssistantOrDictationEnabled])
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
      v20 = "%s Attempted to send offline metrics when Assistant and Dictation are disabled.";
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v17 = +[AFPreferences sharedPreferences];
  v18 = [v17 isDictationHIPAACompliant];

  if (v18)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
      v20 = "%s Attempted to send offline metrics when HIPAA compliance for On-Device Dictation.";
LABEL_15:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v21 = +[AFSiriDataSharingSensitivityManager shared];
  v22 = [v21 isOptedOutOfMTE];

  if (v22)
  {
    v19 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
    v20 = "%s #MTEOptOut Attempted to send offline metrics when device is opted out of MTE";
    goto LABEL_15;
  }

  if (v7 && (IOPSDrawingUnlimitedPower() & 1) == 0)
  {
    v19 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
    v20 = "%s Attempted to send offline metrics when the device is on battery.";
    goto LABEL_15;
  }

  if (v6)
  {
    v23 = [(ADCommandCenter *)self _sessionManager];
    v24 = [v23 hasActiveSessionForSendingMetrics];

    if ((v24 & 1) == 0)
    {
      v19 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
      v20 = "%s Skipped sending metrics to server because the session is not active.";
      goto LABEL_15;
    }
  }

  v25 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v36 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Fetching next offline metrics...", buf, 0xCu);
  }

  v26 = [(ADCommandCenter *)self _offlineMetricsManager];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100291CE0;
  v27[3] = &unk_100519180;
  v27[4] = self;
  v30 = a3;
  v31 = v6;
  v32 = v7;
  v28 = v12;
  v29 = v13;
  [v26 fetchNextMetricsUsingBlock:v27];

LABEL_19:
}

- (void)_metrics_sendMetricsToServerUntilLimit:(double)a3 requiresUnlimitedPower:(BOOL)a4 requiresActiveSession:(BOOL)a5 purgesOversizedStorage:(BOOL)a6 scheduledActivity:(BOOL)a7 completion:(id)a8
{
  v10 = a5;
  v11 = a4;
  v14 = a8;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v38 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]";
    v39 = 2048;
    v40 = a3;
    v41 = 1024;
    v42 = v11;
    v43 = 1024;
    v44 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s limit = %f, requiresUnlimitedPower = %d, requiresActiveSession = %d", buf, 0x22u);
  }

  if (self->_isSendingAnalyticsEventStreamsAndOfflineMetrics)
  {
    v16 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]";
    v17 = "%s Skipped sending metrics to server because it is already sending.";
    goto LABEL_17;
  }

  if (v10)
  {
    v18 = [(ADCommandCenter *)self _sessionManager];
    v19 = [v18 hasActiveSessionForSendingMetrics];

    if ((v19 & 1) == 0)
    {
      v16 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      v38 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]";
      v17 = "%s Skipped sending metrics to server because the session is not active.";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
LABEL_18:
      if (v14)
      {
        v14[2](v14);
      }

      goto LABEL_24;
    }
  }

  v20 = +[AFSiriDataSharingSensitivityManager shared];
  v21 = [v20 isOptedOutOfMTE];

  if (v21)
  {
    v16 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]";
    v17 = "%s #MTEOptOut Skipped sending metrics to server because the device is opted out of MTE.";
    goto LABEL_17;
  }

  self->_isSendingAnalyticsEventStreamsAndOfflineMetrics = 1;
  v22 = +[ADAnalyticsService sharedService];
  [v22 suspendEventsStaging];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100292600;
  v34[3] = &unk_10051D228;
  v36 = a6;
  v34[4] = self;
  v35 = v14;
  v23 = objc_retainBlock(v34);
  v24 = +[NSProcessInfo processInfo];
  [v24 systemUptime];
  v26 = v25;

  v27 = AFSiriLogContextDaemon;
  if (v26 >= a3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]";
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Skipped sending offline metrics to server because time limit is reached.", buf, 0xCu);
    }

    (v23[2])(v23);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Begin sending offline metrics...", buf, 0xCu);
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1002927B0;
    v28[3] = &unk_100519108;
    v30 = a3;
    v28[4] = self;
    v31 = v11;
    v32 = v10;
    v33 = a7;
    v29 = v23;
    [(ADCommandCenter *)self _metrics_sendNextOfflineMetricsToServerUntilLimit:v11 requiresUnlimitedPower:v10 requiresActiveSession:v28 completion:a3];
  }

LABEL_24:
}

- (void)_metrics_recordCancellationMetrics
{
  v2 = [(ADCommandCenter *)self _queue];
  dispatch_async(v2, &stru_100519080);
}

- (void)_metrics_recordFailureMetricsForError:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100292EF0;
  block[3] = &unk_10051DFE8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)_metrics_logSpeechRecognized:(id)a3 resultId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[AFAnalytics sharedAnalytics];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10029310C;
  v10[3] = &unk_10051A1A0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 logEventWithType:1102 contextProvider:v10];
}

- (void)_metrics_markLocalSpeechCompletedWithStatistics:(id)a3
{
  v3 = a3;
  v4 = +[AFAnalytics sharedAnalytics];
  [v4 logEventWithType:4405 context:v3];
}

- (void)_metrics_markLocalSpeechPackage:(id)a3 interactionId:(id)a4 optedIn:(BOOL)a5
{
  v7 = a3;
  v67 = a4;
  if (a5)
  {
    v8 = [v7 recognition];
    v9 = sub_10029381C(v8);

    v10 = [v7 rawRecognition];
    v11 = sub_10029381C(v10);

    v12 = objc_alloc_init(NSMutableDictionary);
    [v12 setValue:v9 forKey:@"recognition"];
    [v12 setValue:v11 forKey:@"rawRecognition"];
    v13 = [v7 dictionaryRepresentation];
    v66 = v12;
    [v12 setValue:v13 forKey:@"speechPackage"];
  }

  else
  {
    v66 = objc_alloc_init(NSMutableDictionary);
  }

  v14 = [v7 rawRecognition];
  v15 = objc_alloc_init(NSMutableArray);
  v16 = [v14 utterances];
  v17 = [v16 firstObject];

  v65 = v14;
  v18 = [v14 phrases];
  if ([v18 count])
  {
    v19 = 0;
    v68 = v18;
    v69 = v17;
    do
    {
      v20 = [v17 interpretationIndices];
      v21 = [v20 count];

      if (v19 >= v21)
      {
        break;
      }

      v22 = [v18 objectAtIndex:v19];
      v23 = [v17 interpretationIndices];
      v24 = [v23 objectAtIndex:v19];
      v25 = [v24 unsignedIntegerValue];

      v26 = [v22 interpretations];
      v27 = [v26 count];

      if (v25 >= v27)
      {

        break;
      }

      v28 = [v22 interpretations];
      v29 = [v28 objectAtIndex:v25];

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v30 = [v29 tokens];
      v31 = [v30 countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v71;
        do
        {
          for (i = 0; i != v32; i = i + 1)
          {
            if (*v71 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v70 + 1) + 8 * i) confidenceScore]);
            [v15 addObject:v35];
          }

          v32 = [v30 countByEnumeratingWithState:&v70 objects:v74 count:16];
        }

        while (v32);
      }

      ++v19;
      v18 = v68;
      v17 = v69;
    }

    while (v19 < [v68 count]);
  }

  v36 = [v7 rawRecognition];
  v37 = sub_100293B00(v36);

  v38 = [v7 recognition];
  v39 = sub_100293B00(v38);

  v40 = [v7 rawRecognition];
  v41 = [v40 phrases];
  v42 = [v41 firstObject];

  v43 = [v42 interpretations];
  v44 = [v43 firstObject];

  v45 = [v44 tokens];
  v46 = [v45 firstObject];

  [v46 startTime];
  v48 = v47;

  v49 = [v7 rawRecognition];
  v50 = [v49 phrases];
  v51 = [v50 lastObject];

  v52 = [v51 interpretations];
  v53 = [v52 firstObject];

  v54 = [v53 tokens];
  v55 = [v54 lastObject];

  [v55 endTime];
  v57 = v56;
  [v55 silenceStartTime];
  v59 = v57 - v58;

  [v66 setValue:v15 forKey:@"rawRecognitionTokenConfidenceScores"];
  v60 = [NSNumber numberWithDouble:v37];
  [v66 setValue:v60 forKey:@"rawRecognitionFirstTokenSilenceStartTime"];

  v61 = [NSNumber numberWithDouble:v39];
  [v66 setValue:v61 forKey:@"recognitionFirstTokenSilenceStartTime"];

  v62 = [NSNumber numberWithDouble:v48];
  [v66 setValue:v62 forKey:@"rawRecognitionLeadingSilence"];

  v63 = [NSNumber numberWithDouble:v59];
  [v66 setValue:v63 forKey:@"rawRecognitionTrailingSilence"];

  [v66 setValue:v67 forKey:@"dictationUIInteractionIdentifier"];
  v64 = +[AFAnalytics sharedAnalytics];
  [v64 logEventWithType:4404 context:v66];
}

- (void)_metrics_markLocalEagerRecognitionCandidate:(id)a3
{
  v3 = a3;
  v4 = [v3 utterances];
  v5 = [v4 firstObject];

  if (v5)
  {
    v43 = v3;
    v6 = [v3 phrases];
    v42 = v5;
    v7 = v5;
    v41 = [v7 confidenceScore];
    v49 = objc_alloc_init(NSMutableString);
    v8 = AFIsInternalInstall();
    v45 = v7;
    if ([v6 count])
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v44 = v6;
      do
      {
        v13 = [v7 interpretationIndices];
        v14 = [v13 count];

        if (v11 >= v14)
        {
          break;
        }

        v15 = [v6 objectAtIndex:v11];
        v16 = [v7 interpretationIndices];
        [v16 objectAtIndex:v11];
        v18 = v17 = v6;
        v19 = [v18 unsignedIntegerValue];

        v20 = [v15 interpretations];
        v21 = [v20 count];

        if (v19 >= v21)
        {
          v5 = v42;
          v3 = v43;
          v38 = v49;
          v34 = &__NSDictionary0__struct;
          v6 = v17;
          goto LABEL_31;
        }

        v47 = v15;
        v48 = v11;
        v22 = [v15 interpretations];
        v23 = [v22 objectAtIndex:v19];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v46 = v23;
        v24 = [v23 tokens];
        v25 = [v24 countByEnumeratingWithState:&v50 objects:buf count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v51;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v51 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v50 + 1) + 8 * i);
              v30 = [v29 confidenceScore];
              if (v12 >= v30)
              {
                v12 = v30;
              }

              v31 = [v29 confidenceScore];
              if (v9 <= v31)
              {
                v9 = v31;
              }

              if (v8)
              {
                if (([v29 removeSpaceBefore] & 1) == 0 && (objc_msgSend(v10, "removeSpaceAfter") & 1) == 0 && v10)
                {
                  [v49 appendString:@" "];
                }

                v32 = [v29 text];
                [v49 appendString:v32];
                v33 = v29;

                v10 = v33;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v50 objects:buf count:16];
          }

          while (v26);
        }

        v11 = v48 + 1;
        v6 = v44;
        v7 = v45;
      }

      while (v48 + 1 < [v44 count]);
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v54[0] = @"ConfidenceMean";
    v35 = [NSNumber numberWithInteger:v41];
    v55[0] = v35;
    v54[1] = @"ConfidenceMax";
    v36 = [NSNumber numberWithInteger:v9];
    v55[1] = v36;
    v54[2] = @"ConfidenceMin";
    v37 = [NSNumber numberWithInteger:v12];
    v55[2] = v37;
    v15 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:3];

    if (v8)
    {
      v34 = [v15 mutableCopy];
      v38 = v49;
      [v34 setObject:v49 forKey:@"BestTranscription"];
      v5 = v42;
      v3 = v43;
    }

    else
    {
      v15 = v15;
      v34 = v15;
      v5 = v42;
      v3 = v43;
      v38 = v49;
    }

LABEL_31:
  }

  else
  {
    v34 = &__NSDictionary0__struct;
  }

  v39 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v57 = "[ADCommandCenter(Metrics) _metrics_markLocalEagerRecognitionCandidate:]";
    v58 = 2112;
    v59 = v34;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Local eager candidate log context: %@", buf, 0x16u);
  }

  v40 = +[AFAnalytics sharedAnalytics];
  [v40 logEventWithType:4403 context:v34];
}

- (void)_metrics_markLocalPartialSpeechRecognition
{
  v2 = +[AFAnalytics sharedAnalytics];
  [v2 logEventWithType:4402 context:0];
}

- (void)_metrics_markLocalSpeechStartedWithContext:(id)a3
{
  v3 = a3;
  v4 = +[AFAnalytics sharedAnalytics];
  [v4 logEventWithType:4401 context:v3];
}

- (BOOL)_metrics_isSystemIdle
{
  if ([(ADCommandCenter *)self _callIsLikely])
  {
    v3 = AFSiriLogContextDaemon;
    v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v4)
    {
      v14 = 136315138;
      v15 = "[ADCommandCenter(Metrics) _metrics_isSystemIdle]";
      v5 = "%s NO (callIsLikely == YES)";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v5, &v14, 0xCu);
      LOBYTE(v4) = 0;
      return v4;
    }

    return v4;
  }

  if (![(ADCommandCenter *)self _isInCall])
  {
    v6 = [(ADCommandCenter *)self _currentRequest];

    if (v6)
    {
      v3 = AFSiriLogContextDaemon;
      v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (v4)
      {
        v14 = 136315138;
        v15 = "[ADCommandCenter(Metrics) _metrics_isSystemIdle]";
        v5 = "%s NO (hasCurrentRequest == YES)";
        goto LABEL_16;
      }

      return v4;
    }

    v7 = [(ADCommandCenter *)self _currentClient];
    if (v7 || ([(ADCommandCenter *)self _requestDelegate], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || ([(ADCommandCenter *)self _speechDelegate], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      goto LABEL_14;
    }

    v8 = [(ADCommandCenter *)self _speechFileDelegate];

    if (v8)
    {
LABEL_14:
      v3 = AFSiriLogContextDaemon;
      v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (v4)
      {
        v14 = 136315138;
        v15 = "[ADCommandCenter(Metrics) _metrics_isSystemIdle]";
        v5 = "%s NO (hasActiveClients == YES)";
        goto LABEL_16;
      }

      return v4;
    }

    v9 = [(ADCommandCenter *)self _isRequestDelaying];
    v10 = AFSiriLogContextDaemon;
    v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        v14 = 136315138;
        v15 = "[ADCommandCenter(Metrics) _metrics_isSystemIdle]";
        v12 = "%s NO (isRequestDelaying == YES)";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v12, &v14, 0xCu);
      }
    }

    else if (v11)
    {
      v14 = 136315138;
      v15 = "[ADCommandCenter(Metrics) _metrics_isSystemIdle]";
      v12 = "%s YES";
      goto LABEL_24;
    }

    LOBYTE(v4) = v9 ^ 1;
    return v4;
  }

  v3 = AFSiriLogContextDaemon;
  v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v4)
  {
    v14 = 136315138;
    v15 = "[ADCommandCenter(Metrics) _metrics_isSystemIdle]";
    v5 = "%s NO (isInCall == YES)";
    goto LABEL_16;
  }

  return v4;
}

- (BOOL)_metrics_isAssistantOrDictationEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  if ([v2 assistantIsEnabled] & 1) != 0 || (objc_msgSend(v2, "dictationIsEnabled"))
  {
    v3 = 1;
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADCommandCenter(Metrics) _metrics_isAssistantOrDictationEnabled]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s NO (!assistantIsEnabled && !dictationIsEnabled)", &v6, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

- (void)_sendMetrics:(id)a3 requiresActiveSession:(BOOL)a4 batch:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (!v10)
  {
    v16 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
    v17 = "%s No metrics to send.";
    goto LABEL_15;
  }

  if (![(ADCommandCenter *)self _metrics_isSystemIdle])
  {
    [v11 markFailedWithType:3];
    v16 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
    v17 = "%s Attempted to send metrics when system is busy.";
    goto LABEL_15;
  }

  if (![(ADCommandCenter *)self _metrics_isAssistantOrDictationEnabled])
  {
    [v11 markFailedWithType:4];
    v16 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
    v17 = "%s Attempted to send metrics when Assistant and Dictation are disabled.";
    goto LABEL_15;
  }

  v14 = +[AFPreferences sharedPreferences];
  v15 = [v14 isDictationHIPAACompliant];

  if (v15)
  {
    [v11 markFailedWithType:7];
    v16 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
    v17 = "%s Attempted to send metrics when HIPAA compliance for On-Device Dictation.";
    goto LABEL_15;
  }

  v18 = +[AFSiriDataSharingSensitivityManager shared];
  v19 = [v18 isOptedOutOfMTE];

  if (v19)
  {
    [v11 markFailedWithType:8];
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s #MTEOptOut Attempted to send metrics when device is opted out of MTE", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (!v8 || (-[ADCommandCenter _sessionManager](self, "_sessionManager"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 hasActiveSessionForSendingMetrics], v21, (v22 & 1) != 0))
  {
    v23 = [v10 aceId];
    if (!v23)
    {
      v23 = SiriCoreUUIDStringCreate();
      [v10 setAceId:v23];
    }

    v24 = [v10 category];
    v25 = AFSiriLogContextDaemon;
    v26 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v24)
    {
      if (v26)
      {
        *buf = 136315650;
        v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
        v39 = 2112;
        v40 = v24;
        v41 = 2112;
        v42 = v23;
        v27 = "%s Sending metrics (%@:%@)...";
        v28 = v25;
        v29 = 32;
LABEL_31:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, v27, buf, v29);
      }
    }

    else if (v26)
    {
      *buf = 136315394;
      v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
      v39 = 2112;
      v40 = v23;
      v27 = "%s Sending metrics (%@)...";
      v28 = v25;
      v29 = 22;
      goto LABEL_31;
    }

    [(ADCommandCenter *)self _sendCommandToServer:v10 opportunistically:v8];
    v30 = [(ADCommandCenter *)self _sessionManager];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002949AC;
    v33[3] = &unk_100519060;
    v33[4] = self;
    v34 = v24;
    v35 = v23;
    v36 = v12;
    v31 = v23;
    v32 = v24;
    [v30 barrier:v33];

    goto LABEL_18;
  }

  [v11 markFailedWithType:5];
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
    v17 = "%s Attempted to send metrics when session is inactive and active session is a requirement.";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
  }

LABEL_16:
  if (v12)
  {
    (*(v12 + 2))(v12, 0);
  }

LABEL_18:
}

- (void)_reallyCommitOrSaveMetrics:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADCommandCenter(Metrics) _reallyCommitOrSaveMetrics:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (v4)
  {
    if ([(ADCommandCenter *)self _metrics_isAssistantOrDictationEnabled])
    {
      v6 = +[AFSiriDataSharingSensitivityManager shared];
      v7 = [v6 isOptedOutOfMTE];

      if (!v7)
      {
        v14 = [AFSafetyBlock alloc];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100295058;
        v24[3] = &unk_10051C128;
        v24[4] = self;
        v15 = v4;
        v25 = v15;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10029510C;
        v22[3] = &unk_10051B778;
        v16 = [v14 initWithBlock:v24];
        v23 = v16;
        [(ADCommandCenter *)self _sendMetrics:v15 requiresActiveSession:1 batch:0 completion:v22];
        v17 = dispatch_time(0, 8000000000);
        v18 = [(ADCommandCenter *)self _queue];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100295120;
        v20[3] = &unk_10051DFE8;
        v21 = v16;
        v19 = v16;
        dispatch_after(v17, v18, v20);

        goto LABEL_14;
      }

      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
        v10 = [v4 category];
        v11 = [v4 aceId];
        *buf = 136315650;
        v27 = "[ADCommandCenter(Metrics) _reallyCommitOrSaveMetrics:]";
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        v31 = v11;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #MTEOptOut Dropped metrics (%@:%@) because device is opted out of MTE.", buf, 0x20u);
LABEL_12:
      }
    }

    else
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v9 = v13;
        v10 = [v4 category];
        v11 = [v4 aceId];
        *buf = 136315650;
        v27 = "[ADCommandCenter(Metrics) _reallyCommitOrSaveMetrics:]";
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        v31 = v11;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Dropped metrics (%@:%@) because Assistant and Dictation are not enabled.", buf, 0x20u);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v27 = "[ADCommandCenter(Metrics) _reallyCommitOrSaveMetrics:]";
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s No metrics to send.", buf, 0xCu);
    }
  }

LABEL_14:
}

- (id)_offlineMetricsManager
{
  offlineMetricsManager = self->_offlineMetricsManager;
  if (!offlineMetricsManager)
  {
    v4 = objc_alloc_init(ADOfflineMetricsManager);
    v5 = self->_offlineMetricsManager;
    self->_offlineMetricsManager = v4;

    offlineMetricsManager = self->_offlineMetricsManager;
  }

  return offlineMetricsManager;
}

- (void)sanityCheckAutodownloadedAssetsForced:(BOOL)a3
{
  v5 = [(ADCommandCenter *)self _queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100295340;
  v6[3] = &unk_10051CBD8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)_updateAutoDownloadedVoiceAssetsForOutputVoice
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[ADCommandCenter(OutputVoice) _updateAutoDownloadedVoiceAssetsForOutputVoice]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (sub_100004988())
  {
    v3 = +[ADPreferences sharedPreferences];
    v4 = [v3 outputVoice];

    v5 = [v4 languageCode];
    if (v5)
    {
      v6 = [v4 name];
      v7 = +[AFLocalization sharedInstance];
      v8 = [v4 languageCode];
      v9 = [v7 voiceNamesForOutputLanguageCode:v8 gender:{objc_msgSend(v4, "gender")}];

      if (!v6 || ([v9 containsObject:v6] & 1) == 0)
      {
        v10 = [v9 firstObject];
        if (v10 != v6)
        {
          v11 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v22 = "[ADCommandCenter(OutputVoice) _updateAutoDownloadedVoiceAssetsForOutputVoice]";
            v23 = 2112;
            v24 = v6;
            v25 = 2112;
            v26 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Substituting subscription for output voice '%@' with subscription for preferred Siri voice '%@'", buf, 0x20u);
          }

          v12 = v10;

          v6 = v12;
        }
      }

      v13 = [[SiriTTSSynthesisVoice alloc] initWithLanguage:v5 name:v6];
      v14 = objc_alloc_init(SiriTTSDaemonSession);
      v20 = v13;
      v15 = [NSArray arrayWithObjects:&v20 count:1];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100295694;
      v18[3] = &unk_10051C498;
      v19 = v13;
      v16 = v13;
      [v14 subscribeWithVoices:v15 reply:v18];
    }
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[ADCommandCenter(OutputVoice) _updateAutoDownloadedVoiceAssetsForOutputVoice]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Not updating auto-downloaded voice assets because the platform doesn't support TTS", buf, 0xCu);
    }
  }
}

- (BOOL)_outputVoice_setOutputVoice:(id)a3
{
  v4 = a3;
  if (sub_100004988())
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADCommandCenter(OutputVoice) _outputVoice_setOutputVoice:]";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v14, 0x16u);
    }

    v6 = +[ADPreferences sharedPreferences];
    v7 = +[AFLocalization sharedInstance];
    v8 = [v7 getValidOutputVoiceWithDialects:v4];

    v9 = [v6 outputVoiceWithFallback:0];
    if ([v8 isEqual:v9] && (objc_msgSend(v9, "wasInitializedFromDictionaryRepresentation") & 1) != 0)
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = 136315650;
        v15 = "[ADCommandCenter(OutputVoice) _outputVoice_setOutputVoice:]";
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s no need to change output voice to %@ because it is already set to %@", &v14, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      [v6 setOutputVoice:v8];
      [v6 synchronize];
      v12 = AFSiriLogContextDaemon;
      v11 = 1;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = 136315650;
        v15 = "[ADCommandCenter(OutputVoice) _outputVoice_setOutputVoice:]";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s output voice changed from %@ to %@", &v14, 0x20u);
      }
    }

    [(ADCommandCenter *)self _updateAutoDownloadedVoiceAssetsForOutputVoice];
    [v4 languageCode];
    VSPreferencesSetSpokenLanguageIdentifier();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_handleCommandInAMOS:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ADCommandCenter *)self _amosSADomainObjectCreate:v6 completion:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ADCommandCenter *)self _amosSADomainObjectRetrieve:v6 completion:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ADCommandCenter *)self _amosSADomainObjectUpdate:v6 completion:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ADCommandCenter *)self _amosSADomainObjectCancel:v6 completion:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ADCommandCenter *)self _amosSADomainObjectDelete:v6 completion:v7];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(ADCommandCenter *)self _amosSADomainObjectCommit:v6 completion:v7];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v8 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  v10 = 136315394;
                  v11 = "[ADCommandCenter(AMOS) _handleCommandInAMOS:completion:]";
                  v12 = 2112;
                  v13 = v6;
                  _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unsuccessfully tried to handle non AMOS command as AMOS %@", &v10, 0x16u);
                  if (!v7)
                  {
                    goto LABEL_18;
                  }
                }

                else if (!v7)
                {
                  goto LABEL_18;
                }

                v9 = [[SACommandFailed alloc] initWithReason:@"Tried to handle non AMOS command as AMOS"];
                v7[2](v7, v9, 0);

                goto LABEL_18;
              }

              [(ADCommandCenter *)self _amosSADomainObjectPunchOut:v6 completion:v7];
            }
          }
        }
      }
    }
  }

LABEL_18:
}

- (void)_saDomainObjectPunchOut:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029CA5C;
  v7[3] = &unk_100519658;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ADCommandCenter *)v8 _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectPunchOut:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter(AMOS) _amosSADomainObjectPunchOut:completion:]";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s We don't know how to generically punch out to domain objects. A non-ui plugin needs to handle this.", &v9, 0xCu);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    v8 = [[SACommandFailed alloc] initWithReason:@"No plugin for command"];
    v6[2](v6, v8, 0);
  }

LABEL_4:
}

- (void)_saDomainObjectCommit:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029CCC4;
  v7[3] = &unk_100519658;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ADCommandCenter *)v8 _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectCommit:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 identifier];

  v10 = [v9 absoluteString];
  v11 = [(ADCommandCenter *)self _domainObjectCache];
  v12 = [v11 domainObjectForKey:v10];
  if (v12)
  {
    v21 = self;
    v22 = v7;
    v13 = [v11 oldIdForKey:v10];
    if (v13)
    {
      v14 = [NSURL URLWithString:v13];
    }

    else
    {
      v14 = v9;
    }

    v16 = v14;
    v17 = [AceObject aceObjectWithDictionary:v12];
    [v17 setIdentifier:v16];
    [v6 setIdentifier:v17];
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v31 = "[ADCommandCenter(AMOS) _amosSADomainObjectCommit:completion:]";
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Committing %@ with oldId %@", buf, 0x20u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10029D08C;
    v23[3] = &unk_100519720;
    v24 = v9;
    v25 = v17;
    v26 = v11;
    v27 = v10;
    v28 = v6;
    v19 = v16;
    v7 = v22;
    v29 = v22;
    v20 = v17;
    [(ADCommandCenter *)v21 _sendAMOSCommandToService:v28 responseHandler:v23];
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[ADCommandCenter(AMOS) _amosSADomainObjectCommit:completion:]";
      v32 = 2112;
      v33 = v9;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Object not found in AMOS %@", buf, 0x16u);
    }

    v13 = [[SACommandFailed alloc] initWithReason:@"Object not found in amos"];
    if (v7)
    {
      (*(v7 + 2))(v7, v13, 0);
    }
  }
}

- (void)_saDomainObjectDelete:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029D38C;
  v7[3] = &unk_100519658;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ADCommandCenter *)v8 _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectDelete:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 identifier];

  if ([v9 isAMOSIdentifier])
  {
    v10 = [v9 absoluteString];
    v11 = [(ADCommandCenter *)self _domainObjectCache];
    v12 = [v11 oldIdForKey:v10];
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v23 = "[ADCommandCenter(AMOS) _amosSADomainObjectDelete:completion:]";
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Removing object with identifier %@ old identifier %@ from amos", buf, 0x20u);
    }

    v14 = [v6 identifier];
    v15 = v14;
    if (v12)
    {
      v16 = [NSURL URLWithString:v12];
      [v15 setIdentifier:v16];
    }

    else
    {
      [v14 setIdentifier:0];
    }

    [v11 setDomainObject:0 forKey:v10];
  }

  v17 = [v6 identifier];
  v18 = [v17 identifier];

  if (v18)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10029D6A0;
    v20[3] = &unk_1005196F8;
    v21 = v7;
    [(ADCommandCenter *)self _sendAMOSCommandToService:v6 responseHandler:v20];
    v19 = v21;
LABEL_12:

    goto LABEL_13;
  }

  if (v7)
  {
    v19 = objc_alloc_init(SADomainObjectDeleteCompleted);
    (*(v7 + 2))(v7, v19, 0);
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_saDomainObjectCancel:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029D7F0;
  v7[3] = &unk_100519658;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ADCommandCenter *)v8 _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectCancel:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = objc_alloc_init(SADomainObjectCancelCompleted);
    (*(a4 + 2))(v5, v6, 0);
  }
}

- (void)_saDomainObjectUpdate:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029D9C8;
  v7[3] = &unk_100519658;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ADCommandCenter *)v8 _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectUpdate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v8 identifier];
  v10 = [v9 absoluteString];
  v11 = [(ADCommandCenter *)self _domainObjectCache];
  v12 = [v11 domainObjectForKey:v10];
  v13 = AFSiriLogContextDaemon;
  v14 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v12)
  {
    v21 = v8;
    if (v14)
    {
      *buf = 136315394;
      v23 = "[ADCommandCenter(AMOS) _amosSADomainObjectUpdate:completion:]";
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Updating store object %@", buf, 0x16u);
    }

    v15 = [AceObject aceObjectWithDictionary:v12];
    v16 = [v7 setFields];
    v17 = [v7 addFields];
    v18 = [v7 removeFields];

    [v15 updateUsingSet:v16 add:v17 remove:v18];
    v19 = [v15 dictionary];
    [v11 setDomainObject:v19 forKey:v10];

    v20 = objc_alloc_init(SADomainObjectUpdateCompleted);
    [v20 setIdentifier:v9];
    if (v6)
    {
      v6[2](v6, v20, 0);
    }

    v7 = v15;
    v8 = v21;
  }

  else
  {
    if (v14)
    {
      *buf = 136315138;
      v23 = "[ADCommandCenter(AMOS) _amosSADomainObjectUpdate:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Going to bundle for object update", buf, 0xCu);
    }

    [(ADCommandCenter *)self _updateObjectFromService:v7 sadIdentifier:v8 completion:v6];
  }
}

- (void)_updateObjectFromService:(id)a3 sadIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(SADomainObjectRetrieve);
  v12 = [[NSArray alloc] initWithObjects:{v10, 0}];

  [v11 setIdentifiers:v12];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10029DDF8;
  v15[3] = &unk_1005196D0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  [(ADCommandCenter *)self _sendAMOSCommandToService:v11 responseHandler:v15];
}

- (void)_saDomainObjectRetrieve:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029E260;
  v7[3] = &unk_100519658;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ADCommandCenter *)v8 _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectRetrieve:(id)a3 completion:(id)a4
{
  v6 = a3;
  v25 = a4;
  v26 = v6;
  v7 = [v6 identifiers];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v27 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v24 = self;
  v9 = [(ADCommandCenter *)self _domainObjectCache];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = 0;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = [v14 identifier];
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v38 = "[ADCommandCenter(AMOS) _amosSADomainObjectRetrieve:completion:]";
          v39 = 2112;
          v40 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Retrieve looking in amos for key %@", buf, 0x16u);
        }

        v17 = [v15 absoluteString];
        v18 = [v9 domainObjectForKey:v17];

        if (v18)
        {
          v19 = [SADomainObject aceObjectWithDictionary:v18];
          [v19 setIdentifier:v15];
          [v8 addObject:v19];
        }

        else
        {
          if (!v28)
          {
            v28 = [v14 groupIdentifier];
          }

          [v27 addObject:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v11);
  }

  else
  {
    v28 = 0;
  }

  if ([v27 count])
  {
    v20 = AFSiriLogContextDaemon;
    v22 = v25;
    v21 = v26;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v38 = "[ADCommandCenter(AMOS) _amosSADomainObjectRetrieve:completion:]";
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Retrieve going to bundle for remaining identifiers %@", buf, 0x16u);
    }

    [v26 setIdentifiers:v27];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10029E6D4;
    v30[3] = &unk_1005196A8;
    v31 = v8;
    v32 = v25;
    [(ADCommandCenter *)v24 _sendAMOSCommandToService:v26 responseHandler:v30];

    v23 = v31;
  }

  else
  {
    v23 = objc_alloc_init(SADomainObjectRetrieveCompleted);
    [v23 setObjects:v8];
    v22 = v25;
    v21 = v26;
    if (v25)
    {
      (*(v25 + 2))(v25, v23, 0);
    }
  }
}

- (void)_saDomainObjectCreate:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029E854;
  v7[3] = &unk_100519658;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ADCommandCenter *)v8 _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:1 completion:v7];
}

- (void)_amosSADomainObjectCreate:(id)a3 completion:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = sub_100214B58();
  v8 = [v6 object];

  [v8 setIdentifier:v7];
  v9 = [(ADCommandCenter *)self _domainObjectCache];
  v10 = [v8 dictionary];
  v11 = [v7 absoluteString];
  [v9 setDomainObject:v10 forKey:v11];

  v12 = objc_alloc_init(SADomainObjectCreateCompleted);
  [v12 setIdentifier:v7];
  if (v13)
  {
    v13[2](v13, v12, 0);
  }
}

- (void)_sendAMOSCommandToService:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADCommandCenter *)self _serviceManager];
  v9 = [v6 domainFromSADObject];
  v10 = [v6 encodedClassName];
  v11 = [v8 serviceForDomain:v9 command:v10];

  if (v11)
  {
    v12 = [v6 domainFromSADObject];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10029EB94;
    v15[3] = &unk_100519680;
    v16 = v6;
    v17 = v7;
    [v11 handleCommand:v16 forDomain:v12 executionContext:0 reply:v15];
  }

  else
  {
    v13 = objc_alloc_init(SACommandIgnored);
    v14 = [v6 aceId];
    [v13 setRefId:v14];

    (*(v7 + 2))(v7, v13, 2);
  }
}

- (void)_handleSADOCommandIfServiceDoesNotUseAMOS:(id)a3 allowInterposing:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 encodedClassName];
  v11 = [v8 domainFromSADObject];
  v12 = [(ADCommandCenter *)self _serviceManager];
  v13 = [v12 serviceForDomain:v11 command:v10];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v24 = "[ADCommandCenter(AMOS) _handleSADOCommandIfServiceDoesNotUseAMOS:allowInterposing:completion:]";
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Found service %@ for command %@ in domain %@", buf, 0x2Au);
  }

  if (v13 && ([v13 usesManagedStorageForDomain:v11] & 1) == 0)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[ADCommandCenter(AMOS) _handleSADOCommandIfServiceDoesNotUseAMOS:allowInterposing:completion:]";
      v17 = "%s Service does NOT use AMOS for command";
      goto LABEL_15;
    }

LABEL_16:
    v18 = [v13 identifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10029F180;
    v19[3] = &unk_100519658;
    v20 = v8;
    v21 = v13;
    v22 = v9;
    [(ADCommandCenter *)self _sendAMOSCommand:v20 domain:v11 toBundleWithIdentifier:v18 completion:v19];

    goto LABEL_17;
  }

  if (a4)
  {
    v15 = [v13 implementsCommand:v10 forDomain:v11];
    v16 = AFSiriLogContextDaemon;
    if (v15)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v24 = "[ADCommandCenter(AMOS) _handleSADOCommandIfServiceDoesNotUseAMOS:allowInterposing:completion:]";
        v17 = "%s Services uses AMOS, but wants to intercept command";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[ADCommandCenter(AMOS) _handleSADOCommandIfServiceDoesNotUseAMOS:allowInterposing:completion:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Service uses AMOS for command", buf, 0xCu);
  }

  (*(v9 + 2))(v9, 0, 0, 0);
LABEL_17:
}

- (void)_sendAMOSCommand:(id)a3 domain:(id)a4 toBundleWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ADCommandCenter *)self _serviceManager];
  v15 = [v14 serviceForIdentifier:v12];

  if (v15)
  {
    if (![v15 isSystemService])
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10029F50C;
      v18[3] = &unk_10051B280;
      v18[4] = self;
      v19 = v10;
      v20 = v13;
      [v15 handleCommand:v19 forDomain:v11 executionContext:0 reply:v18];

      goto LABEL_9;
    }

    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[ADCommandCenter(AMOS) _sendAMOSCommand:domain:toBundleWithIdentifier:completion:]";
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v12;
      v17 = "%s Can't route to system service for command %@ identifier %@";
      goto LABEL_11;
    }
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[ADCommandCenter(AMOS) _sendAMOSCommand:domain:toBundleWithIdentifier:completion:]";
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v12;
      v17 = "%s No service connection for command %@ identifier %@";
LABEL_11:
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x20u);
      if (!v13)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  if (v13)
  {
LABEL_7:
    (*(v13 + 2))(v13, 0, 0, 0);
  }

LABEL_9:
}

- (BOOL)_isFauxPeer:(id)a3
{
  v3 = a3;
  v4 = [v3 idsDeviceUniqueIdentifier];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 idsIdentifier];
    if (v6)
    {
      v5 = 0;
    }

    else
    {
      v7 = [v3 rapportEffectiveIdentifier];
      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v8 = [v3 homeKitAccessoryIdentifier];
        v5 = v8 == 0;
      }
    }
  }

  return v5;
}

- (BOOL)_peerIsPairedPhone:(id)a3
{
  v3 = [a3 rapportEffectiveIdentifier];
  v4 = [v3 isEqualToString:@"BTPipe-Phone"];

  return v4;
}

- (BOOL)_peerIsPairedWatch:(id)a3
{
  v3 = [a3 rapportEffectiveIdentifier];
  v4 = [v3 isEqualToString:@"BTPipe-Watch"];

  return v4;
}

- (void)startRemoteRequest:(id)a3 onTargetDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSupportsMultiUser();
  if (v9 && v11)
  {
    v12 = +[ADMultiUserService sharedService];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002F661C;
    v13[3] = &unk_10051B2F0;
    v14 = v9;
    v15 = self;
    v16 = v8;
    v17 = v10;
    [v12 getIDSIdentifierForAssistantId:v14 completion:v13];
  }

  else
  {
    [(ADCommandCenter *)self startRemoteRequest:v8 completion:v10];
  }
}

- (void)_startRemoteRequest:(id)a3 onPeer:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[AFInstanceContext currentContext];
  [(ADCommandCenter *)self _startRemoteRequest:v10 onPeer:v9 withContext:v11 completion:v8];
}

- (void)_startRemoteRequest:(id)a3 onPeer:(id)a4 withContext:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v39 = a5;
  v12 = a6;
  v13 = [v10 handoffOriginDeviceName];

  if (!v13)
  {
    v14 = AFUserAssignedDeviceName();
    [v10 setHandoffOriginDeviceName:v14];
  }

  if (AFIsNano())
  {
    v15 = [(ADCommandCenter *)self _sharedDataService];
    [v15 startRemoteRequest:v10 completion:v12];
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ADCommandCenter(RemoteExecute) _startRemoteRequest:onPeer:withContext:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    v36 = +[ADPeerCloudService sharedInstance];
    if (v11)
    {
      v38 = v11;
    }

    else
    {
      v38 = [v36 companionPeer];
    }

    v17 = +[NSUUID UUID];
    v18 = [v17 UUIDString];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v51 = sub_1002F6DC0;
    v52 = sub_1002F6DD0;
    v53 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1002F6DD8;
    v40[3] = &unk_10051B2C8;
    v42 = v12;
    v43 = buf;
    v19 = v18;
    v41 = v19;
    v20 = objc_retainBlock(v40);
    v21 = _AFPreferencesCompanionMessagingEnabled();
    v22 = *(*&buf[8] + 40);
    if (v21)
    {
      *(*&buf[8] + 40) = @"rapport";

      v23 = +[AFAnalytics sharedAnalytics];
      v24 = AFAnalyticsContextCreateWithRequestInfo();
      v48[1] = v19;
      v49[0] = v24;
      v25 = *(*&buf[8] + 40);
      v47[0] = @"transport type";
      v47[1] = @"id";
      v48[0] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
      v49[1] = v26;
      v27 = [NSArray arrayWithObjects:v49 count:2];
      v28 = AFAnalyticsContextsMerge();
      [v23 logEventWithType:4803 context:v28];

      v29 = +[ADCompanionService sharedInstance];
      [v29 startRemoteRequest:v10 onPeer:v38 completion:v20];
    }

    else
    {
      *(*&buf[8] + 40) = @"ids";

      v30 = +[AFAnalytics sharedAnalytics];
      v31 = AFAnalyticsContextCreateWithRequestInfo();
      v45[1] = v19;
      v46[0] = v31;
      v32 = *(*&buf[8] + 40);
      v44[0] = @"transport type";
      v44[1] = @"id";
      v45[0] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
      v46[1] = v33;
      v34 = [NSArray arrayWithObjects:v46 count:2];
      v35 = AFAnalyticsContextsMerge();
      [v30 logEventWithType:4803 context:v35];

      [v37 startRemoteRequest:v10 onPeer:v38 completion:v20];
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)startRemoteRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F7008;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)_remoteExecute_primaryUserDevicesWithTypes:(unint64_t)a3
{
  v4 = +[ADPeerCloudService sharedInstance];
  v5 = [v4 peers];
  v6 = [v5 allObjects];
  v7 = [NSMutableArray arrayWithArray:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002F714C;
  v11[3] = &unk_10051B2A0;
  v11[4] = a3;
  v8 = [NSPredicate predicateWithBlock:v11];
  [v7 filterUsingPredicate:v8];

  v9 = [NSArray arrayWithArray:v7];

  return v9;
}

- (BOOL)_remoteExecute_shouldSendCommandToPrimaryUser:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = +[ADMultiUserService sharedService];
    v6 = [v5 primaryUser];
    v7 = [v6 sharedUserID];
    v8 = [v7 isEqualToString:v3];

    if (v8)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_7;
    }

    v11 = +[ADMultiUserService sharedService];
    v12 = [v11 sharedUsersBySharedUserID];
    v13 = [v12 objectForKey:v3];

    v14 = [v13 companionAssistantID];
    v9 = v14 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_7:
  if (v4)
  {
    v15 = v10;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 | v9;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v19 = v4 == 0;
    v20 = v17;
    v21 = [NSNumber numberWithBool:v16];
    v22 = [NSNumber numberWithBool:v19];
    v23 = [NSNumber numberWithBool:v10];
    v24 = [NSNumber numberWithBool:v9];
    v25 = 136316162;
    v26 = "[ADCommandCenter(RemoteExecute) _remoteExecute_shouldSendCommandToPrimaryUser:]";
    v27 = 2112;
    v28 = v21;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s shouldSendToPrimaryUser: %@ (isSharedUserNil=%@, isServerSelectedUserEqualToPrimaryUser=%@, isServerSelectedSharedUserInvalid=%@)", &v25, 0x34u);
  }

  return v16;
}

- (void)_saExecuteOnRemoteRequest:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADCommandCenter(RemoteExecute) _saExecuteOnRemoteRequest:executionContext:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12 = [v8 serializedCommand];
  if (v12)
  {
    v13 = [v8 personaId];
    v14 = [v8 personaAccessLevel];
    [v8 setPersonaId:0];
    [v8 setPersonaAccessLevel:0];
    [v9 setPersonaId:v13];
    v31 = v14;
    [v9 setPersonaAccessLevel:v14];
    [(ADCommandCenter *)self _addNetworkActivityTracingForLabel:7 start:1 withCompletionReason:0 andError:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002F799C;
    v33[3] = &unk_10051B280;
    v15 = v8;
    v34 = v15;
    v35 = self;
    v36 = v10;
    v30 = objc_retainBlock(v33);
    v16 = [v15 remoteDevice];
    v17 = [v16 assistantId];

    v18 = [v15 ad_recipientDevicesType];
    v32 = v10;
    if ([v18 isEqualToString:@"MobileDevices"])
    {
      v19 = 2;
    }

    else if ([v18 isEqualToString:@"HomeDevices"])
    {
      v19 = 4;
    }

    else if ([v18 isEqualToString:@"Companion"])
    {
      v19 = 1;
    }

    else if ([v18 isEqualToString:@"All"])
    {
      v19 = 7;
    }

    else
    {
      v19 = 0;
    }

    v21 = [v15 ad_preferredMessagingOption];
    if ([v21 isEqualToString:@"IDS"])
    {
      v22 = 1;
    }

    else if ([v21 isEqualToString:@"Rapport"])
    {
      v22 = 2;
    }

    else if ([v21 isEqualToString:@"Bluetooth"])
    {
      v22 = 1024;
    }

    else if ([v21 isEqualToString:@"Wifi"])
    {
      v22 = 2048;
    }

    else if ([v21 isEqualToString:@"Cloud"])
    {
      v22 = 4096;
    }

    else if ([v21 isEqualToString:@"All"])
    {
      v22 = 7171;
    }

    else
    {
      v22 = 0;
    }

    if ([v17 length] || !v19)
    {
      v26 = [v15 remoteDevice];
      v27 = [v26 assistantId];
      v28 = [v15 shouldFallbackOnAWDL];
      v29 = self;
      v25 = v30;
      [(ADCommandCenter *)v29 _remoteExecute_remoteDeviceExecuteSerializedCommand:v12 onDeviceForAssistantId:v27 allowFallbackOnAWDL:v28 executionContext:v9 completion:v30];
    }

    else
    {
      v23 = [v15 shouldFallbackOnAWDL];
      v24 = self;
      v25 = v30;
      [(ADCommandCenter *)v24 _remoteExecute_remoteDeviceExecuteSerializedCommand:v12 onSpecifiedDeviceTypes:v19 preferredMessagingOption:v22 allowFallbackOnAWDL:v23 executionContext:v9 completion:v30];
    }

    v10 = v32;
  }

  else
  {
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "[ADCommandCenter(RemoteExecute) _saExecuteOnRemoteRequest:executionContext:completion:]";
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Unable to find command for remote execution", buf, 0xCu);
    }

    v13 = [AFError errorWithCode:11];
    (*(v10 + 2))(v10, 0, v13);
  }
}

- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 allowFallbackOnAWDL:(BOOL)a6 executionContext:(id)a7 completion:(id)a8
{
  v10 = a6;
  v61 = a5;
  v63 = a3;
  v13 = a4;
  v64 = a7;
  v14 = a8;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v91 = 0x3032000000;
  v92 = sub_1002F6DC0;
  v93 = sub_1002F6DD0;
  v94 = 0;
  +[NSUUID UUID];
  v62 = v60 = v10;
  v16 = [v62 UUIDString];
  v17 = [NSUUID alloc];
  v18 = [(ADCommandCenter *)self _currentRequest];
  v19 = [v18 currentRequestId];
  v20 = [v17 initWithUUIDString:v19];

  v21 = [v64 info];
  v22 = [v21 turnId];

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1002F83F0;
  v74[3] = &unk_10051B230;
  v23 = v14;
  v78 = v23;
  v74[4] = self;
  v24 = v20;
  v75 = v24;
  v25 = v22;
  v76 = v25;
  p_buf = &buf;
  v26 = v16;
  v77 = v26;
  v27 = objc_retainBlock(v74);
  if (!v13)
  {
    v42 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = @"ids";

    v43 = +[AFAnalytics sharedAnalytics];
    v44 = *(*(&buf + 1) + 40);
    v88[0] = @"transport type";
    v88[1] = @"id";
    v89[0] = v44;
    v89[1] = v26;
    v45 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:2];
    [v43 logEventWithType:4801 context:v45];

    [(ADSharedDataService *)self->_sharedDataService executeRemoteCommand:v63 completion:v27];
    [(ADCommandCenter *)self _logExecuteOnRemoteRequestForRequestId:v24 turnId:v25 event:0];
    goto LABEL_12;
  }

  if ([(ADCommandCenter *)self _peerIsPairedWatch:v13]|| [(ADCommandCenter *)self _peerIsPairedPhone:v13])
  {
    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v86 = 136315138;
      v87 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Sending command to paired watch or phone through Rapport.", v86, 0xCu);
    }

    v29 = +[ADDeviceCircleManager sharedInstance];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1002F87AC;
    v67[3] = &unk_10051B258;
    v72[1] = &buf;
    v72[0] = v27;
    v68 = v26;
    v69 = v63;
    v30 = v13;
    v31 = v26;
    v32 = v25;
    v33 = v24;
    v34 = v13;
    v35 = v27;
    v36 = v23;
    v37 = v30;
    v70 = v30;
    v73 = v61;
    v71 = v64;
    v38 = v37;
    v23 = v36;
    v27 = v35;
    v13 = v34;
    v24 = v33;
    v25 = v32;
    v26 = v31;
    [v29 executeCommand:v69 onPeer:v38 executionContext:v71 completion:v67];

    [(ADCommandCenter *)self _logExecuteOnRemoteRequestForRequestId:v24 turnId:v25 event:0];
    v39 = v72;
    v40 = v68;
  }

  else
  {
    if (!AFSupportsHALOnDemandRapportConnection())
    {
      if (_AFPreferencesCompanionMessagingEnabled() && [v13 preferredMessagingOptionsForCommands] != 1)
      {
        if (!v61)
        {
          v53 = [(ADCommandCenter *)self _contextManager];
          v54 = [(ADCommandCenter *)self _currentRequest];
          v55 = [v54 currentRequestId];
          [v53 pushContextSnapshotForCurrentRequestWithID:v55 toDevice:v13];
        }

        [(ADCommandCenter *)self _addExecutionDevice:v13 forCommandExecutionContext:v64];
        v56 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = @"rapport";

        v57 = +[AFAnalytics sharedAnalytics];
        v58 = *(*(&buf + 1) + 40);
        v82[0] = @"transport type";
        v82[1] = @"id";
        v83[0] = v58;
        v83[1] = v26;
        v59 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
        [v57 logEventWithType:4801 context:v59];

        [(ADCommandCenter *)self _logExecuteOnRemoteRequestForRequestId:v24 turnId:v25 event:0];
        v41 = +[ADCompanionService sharedInstance];
        [v41 startRemoteSerialzedCommandExecution:v63 onPeer:v13 allowsRelay:v61 allowFallbackOnAWDL:v60 executionContext:v64 completion:v27];
      }

      else
      {
        v49 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = @"ids";

        v50 = +[AFAnalytics sharedAnalytics];
        v51 = *(*(&buf + 1) + 40);
        v80[0] = @"transport type";
        v80[1] = @"id";
        v81[0] = v51;
        v81[1] = v26;
        v52 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
        [v50 logEventWithType:4801 context:v52];

        v41 = +[ADPeerCloudService sharedInstance];
        [v41 startRemoteSerialzedCommandExecution:v63 onPeer:v13 allowsRelay:v61 allowFallbackOnAWDL:0 executionContext:v64 completion:v27];
      }

      goto LABEL_10;
    }

    v46 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v86 = 136315138;
      v87 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onPeer:allowsRelay:allowFallbackOnAWDL:executionContext:completion:]";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s Sending command to peer through #on-demand Rapport connection.", v86, 0xCu);
    }

    v47 = +[AFAnalytics sharedAnalytics];
    v84[0] = @"transport type";
    v84[1] = @"id";
    v85[0] = @"rapport";
    v85[1] = v26;
    v48 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
    [v47 logEventWithType:4801 context:v48];

    v40 = +[ADDeviceCircleManager sharedInstance];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1002F897C;
    v65[3] = &unk_10051CEE0;
    v66 = v27;
    [v40 executeCommand:v63 onPeer:v13 executionContext:v64 throughOnDemandRapportConnection:v65];
    v39 = &v66;
  }

  v41 = *v39;
LABEL_10:

LABEL_12:
  _Block_object_dispose(&buf, 8);
}

- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)a3 onDeviceForAssistantId:(id)a4 allowFallbackOnAWDL:(BOOL)a5 executionContext:(id)a6 completion:(id)a7
{
  v45 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v68 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]";
    v69 = 2112;
    v70 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Executing command on device for assistant id: %@", buf, 0x16u);
  }

  v16 = +[ADPeerCloudService sharedInstance];
  v17 = v16;
  v46 = v16;
  if (v12)
  {
    v44 = v11;
    v66 = 0;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1002F90BC;
    v64[3] = &unk_10051D9B8;
    v18 = v12;
    v65 = v18;
    v19 = [AFPeerInfo newWithBuilder:v64];
    v20 = sub_10001A498(v19, &v66);
    if (v66 == 1)
    {
      v21 = [[ADPeerInfo alloc] initWithAFPeerInfo:v20];
    }

    else
    {
      v21 = [v17 peerInfoForAssistantId:v18 allowNonPeers:1];
    }

    v22 = v21;
    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v68 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Unable to retrieve peer info from device circle manager or peer cloud service", buf, 0xCu);
      }

      v25 = +[ADDeviceCircleManager sharedInstance];
      v26 = [v25 idsDeviceUniqueIdentifierForDeviceWithAssistantId:v18];

      v27 = [v26 length];
      v23 = v27 == 0;
      v28 = AFSiriLogContextDaemon;
      if (v27)
      {
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v68 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]";
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Creating faux peer element", buf, 0xCu);
        }

        v29 = [[ADPeerInfo alloc] initWithUniqueIdentifer:v26];
      }

      else
      {
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v68 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]";
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s Falling back to basic peer info with only assistantId set", buf, 0xCu);
        }

        if (AFIsInternalInstall())
        {
          log = AFSiriLogContextPerformance;
          v30 = os_signpost_id_generate(AFSiriLogContextPerformance);
          if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v31 = v30;
            if (os_signpost_enabled(log))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, log, OS_SIGNPOST_EVENT, v31, "PeerWithOnlyAssistantId", &unk_100468A0D, buf, 2u);
            }
          }
        }

        v29 = [[ADPeerInfo alloc] initWithAFPeerInfo:v19];
      }

      v22 = v29;
    }

    v32 = [v18 uppercaseString];
    [v22 setAssistantIdentifier:v32];

    v11 = v44;
    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v22 = [v16 companionPeer];
    v23 = 0;
    if (!v22)
    {
      goto LABEL_28;
    }
  }

  if (![(ADCommandCenter *)self _isFauxPeer:v22])
  {
LABEL_31:
    [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteSerializedCommand:v11 onPeer:v22 allowsRelay:v23 allowFallbackOnAWDL:v45 executionContext:v13 completion:v14];
    goto LABEL_32;
  }

LABEL_28:
  v33 = [(ADCommandCenter *)self _sharedDataService];
  if ([v33 watchIsNearbyForAssistantId:v12])
  {

    goto LABEL_31;
  }

  v34 = +[ADAccount activeAccount];
  v35 = [v34 watchExistsForAssistantId:v12];

  if (v35)
  {
    goto LABEL_31;
  }

  if ((!v22 || [(ADCommandCenter *)self _isFauxPeer:v22]) && (v36 = [(ADCommandCenter *)self _localDeviceIsHomePod], v12) && v36)
  {
    v37 = +[ADMultiUserService sharedService];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1002F90C8;
    v56[3] = &unk_10051B1E0;
    v57 = v12;
    v58 = self;
    v59 = v11;
    v62 = v23;
    v63 = v45;
    v60 = v13;
    v61 = v14;
    [v37 getIDSIdentifierForAssistantId:v57 completion:v56];

    v38 = v57;
  }

  else
  {
    v39 = !v23;
    if (!v12)
    {
      v39 = 1;
    }

    if (v39)
    {
      v41 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v68 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]";
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s Unable to find remote device for execution", buf, 0xCu);
        if (!v14)
        {
          goto LABEL_32;
        }
      }

      else if (!v14)
      {
        goto LABEL_32;
      }

      v42 = [AFError errorWithCode:1000];
      (*(v14 + 2))(v14, 0, v42);

      goto LABEL_32;
    }

    v40 = +[ADDeviceCircleManager sharedInstance];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1002F927C;
    v47[3] = &unk_10051B208;
    v48 = v12;
    v49 = self;
    v50 = v11;
    v51 = v22;
    v54 = 1;
    v55 = v45;
    v52 = v13;
    v53 = v14;
    [v40 getContextCollectorDeviceIdentifiersWithCompletion:v47];

    v38 = v48;
  }

LABEL_32:
}

- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)a3 onSpecifiedDeviceTypes:(unint64_t)a4 preferredMessagingOption:(unint64_t)a5 allowFallbackOnAWDL:(BOOL)a6 executionContext:(id)a7 completion:(id)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v33 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onSpecifiedDeviceTypes:preferredMessagingOption:allowFallbackOnAWDL:executionContext:completion:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v18 = [(ADCommandCenter *)self _selectedSharedUserID];
  if ([v18 length])
  {
    v19 = +[AFAnalytics sharedAnalytics];
    [v19 logEventWithType:6116 context:0];
  }

  if ([(ADCommandCenter *)self _remoteExecute_shouldSendCommandToPrimaryUser:v18])
  {
    v20 = [(ADCommandCenter *)self _remoteExecute_primaryUserDevicesWithTypes:a4];
    if ([v20 count])
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1002F97A0;
      v26[3] = &unk_10051B1B8;
      v30 = a5;
      v26[4] = self;
      v27 = v14;
      v31 = v10;
      v28 = v15;
      v29 = v16;
      [v20 enumerateObjectsUsingBlock:v26];
    }

    else
    {
      v25 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v33 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onSpecifiedDeviceTypes:preferredMessagingOption:allowFallbackOnAWDL:executionContext:completion:]";
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s No eligible devices from primary user found for specified device types. Skipping.", buf, 0xCu);
      }
    }
  }

  else
  {
    v21 = +[ADMultiUserService sharedService];
    v22 = [v21 sharedUsersBySharedUserID];
    v20 = [v22 objectForKey:v18];

    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v33 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onSpecifiedDeviceTypes:preferredMessagingOption:allowFallbackOnAWDL:executionContext:completion:]";
      v34 = 2112;
      v35 = v18;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Executing command on shared user companion device with sharedUserID: %@", buf, 0x16u);
    }

    v24 = [v20 companionAssistantID];
    [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteSerializedCommand:v14 onDeviceForAssistantId:v24 allowFallbackOnAWDL:v10 executionContext:v15 completion:v16];
  }
}

- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)a3 onPeer:(id)a4 allowsRelay:(BOOL)a5 throughProxyDevice:(id)a6 executionContext:(id)a7 completion:(id)a8
{
  v45 = a5;
  v13 = a3;
  v14 = a4;
  v46 = a6;
  v47 = a7;
  v15 = a8;
  v16 = [v14 preferredMessagingOptionsForCommands];
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v19 = AFDeviceMessagingOptionsGetNames();
    *buf = 136315650;
    *&buf[4] = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteCommand:onPeer:allowsRelay:throughProxyDevice:executionContext:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 1024;
    LODWORD(v59) = v45;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s preferred routing options: %@, allows relay: %d", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v59 = sub_1002F6DC0;
  v60 = sub_1002F6DD0;
  v61 = 0;
  v20 = [v13 aceId];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = +[NSUUID UUID];
    v22 = [v23 UUIDString];
  }

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1002F9DCC;
  v48[3] = &unk_10051B190;
  v24 = v15;
  v50 = v24;
  v51 = buf;
  v25 = v22;
  v49 = v25;
  v26 = objc_retainBlock(v48);
  if ((v16 & 1) != 0 || !_AFPreferencesCompanionMessagingEnabled())
  {
    v38 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = @"ids";

    v39 = +[AFAnalytics sharedAnalytics];
    v40 = AFAnalyticsContextCreateWithCommand();
    v53[1] = v25;
    v54[0] = v40;
    v41 = *(*&buf[8] + 40);
    v52[0] = @"transport type";
    v52[1] = @"id";
    v53[0] = v41;
    v42 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
    v54[1] = v42;
    v43 = [NSArray arrayWithObjects:v54 count:2];
    v44 = AFAnalyticsContextsMerge();
    [v39 logEventWithType:4801 context:v44];

    v37 = +[ADPeerCloudService sharedInstance];
    [v37 startRemoteExecution:v13 onPeer:v14 allowsRelay:0 throughProxyDevice:0 executionContext:v47 completion:v26];
  }

  else
  {
    v27 = [(ADCommandCenter *)self _contextManager];
    v28 = [(ADCommandCenter *)self _currentRequest];
    v29 = [v28 currentRequestId];
    [v27 pushContextSnapshotForCurrentRequestWithID:v29 toDevice:v14];

    [(ADCommandCenter *)self _addExecutionDevice:v14 forCommandExecutionContext:v47];
    v30 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = @"rapport";

    v31 = +[AFAnalytics sharedAnalytics];
    v32 = AFAnalyticsContextCreateWithCommand();
    v56[1] = v25;
    v57[0] = v32;
    v33 = *(*&buf[8] + 40);
    v55[0] = @"transport type";
    v55[1] = @"id";
    v56[0] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
    v57[1] = v34;
    v35 = [NSArray arrayWithObjects:v57 count:2];
    v36 = AFAnalyticsContextsMerge();
    [v31 logEventWithType:4801 context:v36];

    v37 = +[ADCompanionService sharedInstance];
    [v37 startRemoteExecution:v13 onPeer:v14 allowsRelay:v45 throughProxyDevice:v46 executionContext:v47 completion:v26];
  }

  _Block_object_dispose(buf, 8);
}

- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)a3 onDeviceForAssistantId:(id)a4 executionContext:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteCommand:onDeviceForAssistantId:executionContext:completion:]";
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Executing command %@ on device for assistant id %@", &v18, 0x20u);
  }

  v15 = +[ADPeerCloudService sharedInstance];
  v16 = v15;
  if (v11)
  {
    [v15 peerInfoForAssistantId:v11 allowNonPeers:1];
  }

  else
  {
    [v15 companionPeer];
  }
  v17 = ;
  [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteCommand:v10 onPeer:v17 allowsRelay:0 throughProxyDevice:0 executionContext:v12 completion:v13];
}

- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)a3 executionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteCommand:executionContext:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteCommand:v8 onDeviceForAssistantId:0 executionContext:v9 completion:v10];
}

- (void)_attachPersonaIdIfNeeded:(id)a3 personaAccessLevel:(id)a4 aceCommand:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___ADRemoteCommandPersonaIdMapping] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 acceptPersonaId];
  }

  else
  {
    v9 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v8 setPersonaId:v13];
      [v8 setPersonaAccessLevel:v7];
    }

    v11 = objc_opt_self();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      [v8 setPersonaId:v13];
    }
  }
}

- (void)executeCommand:(id)a3 fromPeer:(id)a4 remoteExecutionInfo:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[AFPreferences sharedPreferences];
  v15 = [v14 assistantIsEnabled];

  if (v15)
  {
    v16 = [SABaseCommand aceObjectWithDictionary:v10];
    [v16 setRefId:0];
    v17 = [[AFCommandExecutionInfo alloc] initWithDictionaryRepresentation:v12];
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v30 = "[ADCommandCenter(RemoteExecute) executeCommand:fromPeer:remoteExecutionInfo:reply:]";
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s peer = %@, command = %@, remoteExecutionInfo = %@", buf, 0x2Au);
    }

    v19 = +[ADCommandCenter sharedCommandCenter];
    [v19 sendPowerLogs:@"ExecuteOnRemoteRequest" peerInfo:v11];

    v20 = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002FA738;
    block[3] = &unk_10051D2A0;
    block[4] = self;
    v25 = v16;
    v26 = v11;
    v27 = v17;
    v28 = v13;
    v21 = v17;
    v22 = v16;
    dispatch_async(v20, block);
  }

  else
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[ADCommandCenter(RemoteExecute) executeCommand:fromPeer:remoteExecutionInfo:reply:]";
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Rejecting remote command because Siri is disabled", buf, 0xCu);
    }

    v22 = [AFError errorWithCode:18];
    (*(v13 + 2))(v13, 0, v22);
  }
}

- (void)_sendLocationIfNeededForRequest
{
  v3 = [(ADCommandCenter *)self _locationManager];
  if (([v3 needsToSendLocation] & 1) != 0 || objc_msgSend(v3, "isNavigating"))
  {
    [v3 setNeedsToSendLocation:0];
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v7 = "[ADCommandCenter(LocationInternal) _sendLocationIfNeededForRequest]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Location manager says we need to send location for this request", buf, 0xCu);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006C654;
    v5[3] = &unk_10051D4C8;
    v5[4] = self;
    [v3 updateLocationForCommand:0 completion:v5];
  }
}

- (void)fetchLastLocationWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADCommandCenter *)self _queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100360090;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)dismissedAllVisibleAssistantUIForReason:(id)a3
{
  v4 = a3;
  v5 = [(ADCommandCenter *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003601B4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)showingVisibleAssistantUIForReason:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003602F4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchLocationAuthorization:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ADCommandCenter *)self _queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100360408;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

@end