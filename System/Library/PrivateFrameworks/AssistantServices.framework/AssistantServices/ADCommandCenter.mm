@interface ADCommandCenter
+ (id)sharedCommandCenter;
+ (id)sharedQueue;
- (ADCommandCenter)init;
- (ADRequestDispatcherService)_requestDispatcherService;
- (ADSpeechManager)_speechManager;
- (BOOL)_areRequiredAssetsMissing;
- (BOOL)_context_bundleIdHasSupportForCarPlayRequiredMessageIntents:(id)intents;
- (BOOL)_didAlreadyAcceptResultCandidate:(id)candidate;
- (BOOL)_hasActiveClientOrSyncingOrInCall;
- (BOOL)_hasCompletionForCommandId:(id)id;
- (BOOL)_hasOutstandingAnchorsRequestId:(id)id;
- (BOOL)_hasOutstandingRequestId:(id)id;
- (BOOL)_hasOutstandingSyncChunkId:(id)id;
- (BOOL)_hasRemoteExecutionContextForExecutionID:(id)d;
- (BOOL)_hasRemoteExecutionContextForRequestID:(id)d;
- (BOOL)_hasRootExecutionContextForRequestID:(id)d;
- (BOOL)_isClientBoundCommand:(id)command;
- (BOOL)_isFauxPeer:(id)peer;
- (BOOL)_isRelevantCancellationCommand:(id)command;
- (BOOL)_isRequestDelaying;
- (BOOL)_isServerBoundCommand:(id)command;
- (BOOL)_metrics_isAssistantOrDictationEnabled;
- (BOOL)_metrics_isSystemIdle;
- (BOOL)_outputVoice_setOutputVoice:(id)voice;
- (BOOL)_peerIsPairedPhone:(id)phone;
- (BOOL)_peerIsPairedWatch:(id)watch;
- (BOOL)_refIdIsSpeechStart:(id)start;
- (BOOL)_remoteExecute_shouldSendCommandToPrimaryUser:(id)user;
- (BOOL)_shouldIgnoreCommand:(id)command executionContext:(id)context;
- (BOOL)_shouldImmediatelyDismissSiriDueToMissingRequiredAssets;
- (BOOL)_shouldRetryForError:(id)error;
- (BOOL)_sync_hasCommandForRefId:(id)id;
- (BOOL)_sync_isRequestBlockingSync;
- (BOOL)assistantSessionManagerShouldAttemptRetry:(id)retry;
- (BOOL)canLogWithSpeechManager:(id)manager;
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
- (id)_allAnchorsFromRequest:(id)request andResponse:(id)response;
- (id)_appMetaDataForAppProxy:(id)proxy clientIdentifier:(id)identifier syncSlots:(id)slots;
- (id)_appMetaDataListFromVocabSources:(id)sources appIdentifyingInfoList:(id)list;
- (id)_approximatePreviousTTSInterval:(id)interval;
- (id)_bargeInModes;
- (id)_beginRemoteExecutionContextForCommand:(id)command fromPeer:(id)peer withRemoteExecutionInfo:(id)info;
- (id)_buildORCHClientEvent:(id)event;
- (id)_contextManager;
- (id)_createDefaultRequestContextData:(BOOL)data suggestionRequestType:(int64_t)type;
- (id)_createMuxStartAsrOnServerRequestWithSpeechRequest:(id)request;
- (id)_createStartServerRequestWithStartRequest:(id)request;
- (id)_deviceRouter;
- (id)_deviceSyncCoordinator;
- (id)_diagnosticsManager;
- (id)_directInvocationContextForSpeechRequestOptions:(id)options textToSpeechEnabled:(BOOL)enabled;
- (id)_domainObjectCache;
- (id)_errorAggregation:(id)aggregation;
- (id)_executionContextMatchingExecutionInfo:(id)info fallbackRequestID:(id)d;
- (id)_fetchComputedModeAndUpdateRequestDelegate;
- (id)_fetchUODStatusForLanguageCode:(id)code;
- (id)_firstChanceServiceForCommand:(id)command;
- (id)_flowServiceListener;
- (id)_getInstrumentationQueue;
- (id)_getPreheatOptionsForHorseman;
- (id)_handleConfidenceScores:(id)scores classification:(unint64_t)classification classifiedUser:(id)user unknownUserScore:(int64_t)score duration:(int64_t)duration version:(int64_t)version thresholdingType:(id)type assetVersion:(id)self0;
- (id)_handledCommandIdsForRequestId:(id)id;
- (id)_headphonesAnnouncementRequestCapabilityManager;
- (id)_languageModelForSpeechRequest:(id)request;
- (id)_locationManager;
- (id)_managedStoreObjectForKey:(id)key;
- (id)_offlineMetricsManager;
- (id)_powerAssertionManager;
- (id)_remoteExecute_primaryUserDevicesWithTypes:(unint64_t)types;
- (id)_remoteExecutionContextForExecutionID:(id)d;
- (id)_remoteRequestHelper;
- (id)_remoteSpeechRequestHelper;
- (id)_requestDelayManager;
- (id)_requestDispatcherSessionConfiguration;
- (id)_restrictedCommands;
- (id)_resultObjectCache;
- (id)_rootExecutionContextForRequestID:(id)d;
- (id)_sendContextPromiseForTypes:(int64_t)types withAceId:(id)id;
- (id)_serviceManager;
- (id)_sessionManager;
- (id)_sharedDataService;
- (id)_speechCapturingContextForSessionUUID:(id)d;
- (id)_startServerRequestWithSpeechRequest:(id)request recordingContext:(id)context recordingInfo:(id)info;
- (id)_startServerRequestWithStartRequest:(id)request requestInfo:(id)info;
- (id)_syncManager;
- (id)_testAgent;
- (id)_updateUODAssetStatusForLanguage:(id)language;
- (id)acquireShutdownAssertion;
- (id)assistantSessionManagerCommandsToRestoreStateOnNewConnection:(id)connection;
- (id)getAssistantIdentifier;
- (int)_convertToORCHUserIdentityClassification:(id)classification;
- (int)getHomeDevicesAudioTopology;
- (int64_t)_context_deviceState;
- (unint64_t)callState;
- (unint64_t)lockScreenStatus;
- (unsigned)_sharedVoiceAudioSessionID;
- (void)UIService:(id)service didPresentUIResponseForCommand:(id)command withExecutionInfo:(id)info;
- (void)UIService:(id)service executeHandler:(id)handler forCommand:(id)command;
- (void)_acceptResultCandidate:(id)candidate isMitigated:(BOOL)mitigated featuresToLog:(id)log completion:(id)completion;
- (void)_accessRecordedAudioWithIdentifier:(id)identifier completion:(id)completion;
- (void)_acousticId_clearPartialResultTimer;
- (void)_acousticId_commandFailed:(id)failed;
- (void)_acousticId_handleFingerprint:(id)fingerprint duration:(double)duration;
- (void)_acousticId_musicWasDetected;
- (void)_acousticId_speechCaptureCompleted;
- (void)_acousticId_startSessionForSpeechRequest:(id)request;
- (void)_acousticId_startSessionWithContext:(id)context;
- (void)_addCompletion:(id)completion forCommand:(id)command forKey:(id)key;
- (void)_addExecutionDevice:(id)device forCommandExecutionContext:(id)context;
- (void)_addHandledCommandId:(id)id forRequestId:(id)requestId;
- (void)_addNetworkActivityTracingForLabel:(int64_t)label start:(BOOL)start withCompletionReason:(int64_t)reason andError:(id)error;
- (void)_addOutstandingAnchorsRequestId:(id)id;
- (void)_addOutstandingRequestId:(id)id forReason:(id)reason;
- (void)_addOutstandingSyncChunkId:(id)id;
- (void)_addPostCommandHandlingBlock:(id)block forCommandId:(id)id requestId:(id)requestId;
- (void)_addRecordedSpeechSampleData:(id)data delegate:(id)delegate;
- (void)_adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)winner;
- (void)_amosSADomainObjectCancel:(id)cancel completion:(id)completion;
- (void)_amosSADomainObjectCommit:(id)commit completion:(id)completion;
- (void)_amosSADomainObjectCreate:(id)create completion:(id)completion;
- (void)_amosSADomainObjectDelete:(id)delete completion:(id)completion;
- (void)_amosSADomainObjectPunchOut:(id)out completion:(id)completion;
- (void)_amosSADomainObjectRetrieve:(id)retrieve completion:(id)completion;
- (void)_amosSADomainObjectUpdate:(id)update completion:(id)completion;
- (void)_attachPersonaIdIfNeeded:(id)needed personaAccessLevel:(id)level aceCommand:(id)command;
- (void)_broadcastCommand:(id)command;
- (void)_cancelCallKeepAlive;
- (void)_cancelCrossDeviceRequestOperationsForLocalRequestWithId:(id)id;
- (void)_cancelCrossDeviceRequestOperationsForRemoteRequest;
- (void)_cancelCurrentRequestForReason:(int64_t)reason andError:(id)error successorInfo:(id)info;
- (void)_cancelLocalRecognitionIfRequired;
- (void)_cancelRequestForDelegate:(id)delegate reason:(int64_t)reason error:(id)error;
- (void)_cancelSessionManager;
- (void)_cancelSpeechForDelegate:(id)delegate;
- (void)_cleanUpForFailureCommandWithRefId:(id)id;
- (void)_clearAccount;
- (void)_clearAllExecutionDevices;
- (void)_clearContext;
- (void)_clearContextAndStartAssistantSession;
- (void)_clearContextAndStartDictationSessionWithLanguageCode:(id)code dictationOptions:(id)options;
- (void)_clearQueuedLanguageCode;
- (void)_clearQueuedOutputVoice;
- (void)_clearRequestDelegateState;
- (void)_clearSpeechDelegateState;
- (void)_cloudSyncPreferenceDidChange;
- (void)_completeNotificationSearch:(id)search bulletins:(id)bulletins completion:(id)completion;
- (void)_completeRequestForCurrentDelegate:(BOOL)delegate error:(id)error;
- (void)_context_acknowledgeBulletinForObject:(id)object;
- (void)_context_clearContextWithClearSiriKitContext:(BOOL)context;
- (void)_context_fetchAppicationContextForApplicationInfo:(id)info supplementalContext:(id)context refID:(id)d;
- (void)_context_fetchApplicationContextForApplicationInfos:(id)infos completion:(id)completion;
- (void)_context_reset;
- (void)_context_rollbackClearContext;
- (void)_context_setAlertContextDirty;
- (void)_context_setApplicationContext:(id)context;
- (void)_context_setApplicationContextForApplicationInfos:(id)infos withRefId:(id)id;
- (void)_context_setOverriddenApplicationContext:(id)context withContext:(id)withContext;
- (void)_context_setSTApplicationContext:(id)context;
- (void)_context_updateContext;
- (void)_context_willSetApplicationContextWithRefId:(id)id;
- (void)_createAssistantLocallyIfNeeded:(BOOL)needed;
- (void)_createRootExecutionContextForRequestID:(id)d;
- (void)_deleteAccountWithIdentifier:(id)identifier;
- (void)_deleteSiriAudioDataOnDevice;
- (void)_deleteSiriHistoryOnDeviceOnDestroyAssistant;
- (void)_deleteSiriHistoryWithContext:(id)context withCompletion:(id)completion;
- (void)_destroyActiveAccount;
- (void)_destroyRootExecutionContextForRequestID:(id)d;
- (void)_dictationSessionDidComplete;
- (void)_didLaunchAppForRequestWithIdentifier:(id)identifier;
- (void)_dispatchAndRemovePostCommandHandlingBlocksForCommandId:(id)id requestId:(id)requestId;
- (void)_downloadMorphunAssets:(id)assets;
- (void)_emitAudioTopologyForRequestId:(id)id;
- (void)_emitTriggerWithCachingForUUID:(id)d namespace:(id)namespace requestID:(id)iD;
- (void)_endRemoteExecutionContext:(id)context;
- (void)_endSessionForDelegate:(id)delegate;
- (void)_endSpeechRequestForCommand:(id)command withError:(id)error suppressAlert:(BOOL)alert secureOfflineOnlyDictation:(BOOL)dictation;
- (void)_ensureBackgroundContextSentToServer;
- (void)_fetchAllAppSourcesForSyncingWithCustomVocabInfo:(id)info completion:(id)completion;
- (void)_fetchAndSendApplicationContextForApplicationInfos:(id)infos fetchedOrderedContextDictionaries:(id)dictionaries applicationContexts:(id)contexts refID:(id)d;
- (void)_fetchStarkDeviceLockedStateWithCompletion:(id)completion;
- (void)_fetchSupportedLanguagesWithCompletion:(id)completion;
- (void)_firstChanceServiceChangeIdFrom:(id)from to:(id)to;
- (void)_forceAudioSessionActiveWithContext:(id)context completion:(id)completion;
- (void)_forceAudioSessionInactiveWithOptions:(unint64_t)options completion:(id)completion;
- (void)_getDeferredObjectsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)_getDictationLanguages:(id)languages options:(id)options speechOptions:(id)speechOptions delegate:(id)delegate completion:(id)completion;
- (void)_getOrderedContextDictionaryForTransformedAFApplicationContext:(id)context completion:(id)completion;
- (void)_getSiriOutputVolumeForAudioRoute:(id)route completion:(id)completion;
- (void)_getTransformedApplicationContextForContext:(id)context completion:(id)completion;
- (void)_handleAceCommand:(id)command afterCurrentRequest:(BOOL)request waitForResponse:(BOOL)response withDelegate:(id)delegate completion:(id)completion;
- (void)_handleBareRequestCompleted:(id)completed;
- (void)_handleClientReply:(id)reply error:(id)error forSessionCommand:(id)command;
- (void)_handleCommand:(id)command executionContext:(id)context completion:(id)completion;
- (void)_handleCommandAndClientReply:(id)reply executionContext:(id)context commandCompletion:(id)completion;
- (void)_handleCommandInAMOS:(id)s completion:(id)completion;
- (void)_handleCommandResponse:(id)response error:(id)error forCommand:(id)command executionContext:(id)context completion:(id)completion;
- (void)_handleExternalActivationRequest:(id)request completion:(id)completion;
- (void)_handleExtractSpeechDataCompleted:(id)completed inResponseTo:(id)to completion:(id)completion;
- (void)_handleGenericAceCommand:(id)command withDelegate:(id)delegate interruptOutstandingRequest:(BOOL)request reply:(id)reply;
- (void)_handleGenericConcreteAceCommand:(id)command withDelegate:(id)delegate interruptOutstandingRequest:(BOOL)request reply:(id)reply;
- (void)_handleIgnoredCommand:(id)command executionContext:(id)context completion:(id)completion;
- (void)_handleIntent:(id)intent inBackgroundAppWithBundleId:(id)id reply:(id)reply;
- (void)_handleLocalSpeechRecognitionForOfflineSupport:(id)support logText:(BOOL)text;
- (void)_handleNextCallbacksForReply:(id)reply forCommand:(id)command forRequestId:(id)id withExecutionContext:(id)context;
- (void)_handlePartialSpeechRecognitionForElapsedTime:(double)time WithDelegateBlock:(id)block;
- (void)_handleQuickStopCommandRoutedFromRemote:(id)remote completion:(id)completion;
- (void)_handleRemoteSpeechRequest:(id)request completion:(id)completion;
- (void)_handleSADOCommandIfServiceDoesNotUseAMOS:(id)s allowInterposing:(BOOL)interposing completion:(id)completion;
- (void)_handleSendCommands:(id)commands forRequestDelegate:(id)delegate completion:(id)completion;
- (void)_handleServiceCommand:(id)command afterMyriadDecision:(BOOL)decision executionContext:(id)context completion:(id)completion;
- (void)_handleServiceCommand:(id)command executionContext:(id)context completion:(id)completion;
- (void)_handleSpeechRecognizedWithDelegateBlock:(id)block;
- (void)_handleSuspendClientEndpointer:(id)endpointer;
- (void)_handleValidatedSyncGetAnchorsResponse:(id)response forGetAnchors:(id)anchors;
- (void)_invokeAllCompletionsWithError:(id)error;
- (void)_invokeCompletionForCommand:(id)command;
- (void)_listInstalledServicesWithCompletion:(id)completion;
- (void)_logAudioTopologyForRequestId:(id)id;
- (void)_logCrossDeviceCommandEndedMetricsForCommand:(id)command targetProductType:(id)type targetDeviceID:(id)d targetDeviceContextIdentifier:(id)identifier targetProximity:(int64_t)proximity coreAnalyticsEvent:(id)event response:(id)response error:(id)self0;
- (void)_logExecuteOnRemoteRequestForRequestId:(id)id turnId:(id)turnId event:(int64_t)event;
- (void)_logMURequestEndedWithResultCandidate:(id)candidate;
- (void)_logToFeatureStore:(id)store speechRecgonized:(id)recgonized;
- (void)_metrics_destroyAllMetrics;
- (void)_metrics_destroyAllMetricsIfNeeded;
- (void)_metrics_logSpeechRecognized:(id)recognized resultId:(id)id;
- (void)_metrics_markLocalEagerRecognitionCandidate:(id)candidate;
- (void)_metrics_markLocalPartialSpeechRecognition;
- (void)_metrics_markLocalSpeechCompletedWithStatistics:(id)statistics;
- (void)_metrics_markLocalSpeechPackage:(id)package interactionId:(id)id optedIn:(BOOL)in;
- (void)_metrics_markLocalSpeechStartedWithContext:(id)context;
- (void)_metrics_processEventRecordsFromStore:(id)store batch:(id)batch deliveryStream:(unint64_t)stream eventStreamUID:(id)d streamSpeechId:(id)id untilLimit:(double)limit uploadRecords:(id)records completion:(id)self0;
- (void)_metrics_publishDailyDeviceStatus:(id)status completion:(id)completion;
- (void)_metrics_recordCancellationMetrics;
- (void)_metrics_recordFailureMetricsForError:(id)error;
- (void)_metrics_recordSNNetworkSnapshotForEvent:(int64_t)event completion:(id)completion;
- (void)_metrics_sendEngagementFeedback:(int64_t)feedback voiceQueryIdentifier:(id)identifier;
- (void)_metrics_sendMetricsToServerUntilLimit:(double)limit requiresUnlimitedPower:(BOOL)power requiresActiveSession:(BOOL)session purgesOversizedStorage:(BOOL)storage scheduledActivity:(BOOL)activity completion:(id)completion;
- (void)_metrics_sendNextAnalyticsEventStreamToServerUntilLimit:(double)limit requiresUnlimitedPower:(BOOL)power requiresActiveSession:(BOOL)session prioritizedEventStreamUID:(id)d deliveryStreamContinuations:(id *)continuations scheduledActivity:(BOOL)activity completion:(id)completion;
- (void)_metrics_sendNextOfflineMetricsToServerUntilLimit:(double)limit requiresUnlimitedPower:(BOOL)power requiresActiveSession:(BOOL)session completion:(id)completion;
- (void)_notifyUSTForAceCommand:(id)command;
- (void)_notifyUSTForRequestCompleted:(id)completed;
- (void)_notifyUSTForRequestStarted:(id)started;
- (void)_openURL:(id)l completion:(id)completion;
- (void)_pauseRecognition;
- (void)_performCallbacksForCommand:(id)command reply:(id)reply executionContext:(id)context error:(id)error;
- (void)_postPersonalDomainActivityNotificationWithBody:(id)body command:(id)command executionContext:(id)context completion:(id)completion;
- (void)_postUpdatePersonalRequestSettingsNotification:(id)notification forLocalizationKey:(id)key executionContext:(id)context completion:(id)completion;
- (void)_postWatchNotificationWithContext:(id)context withError:(id)error;
- (void)_preheatAllServices;
- (void)_preheatCallbacksForCommand:(id)command;
- (void)_preheatViaRequestDispatcher;
- (void)_preheatWithStyle:(int64_t)style forOptions:(id)options completion:(id)completion;
- (void)_prepareForAppLaunchForRequest:(id)request;
- (void)_prepareForPhoneCall;
- (void)_processQueuedLanguageCode;
- (void)_processQueuedLanguageCodeAndOutputVoice;
- (void)_processQueuedOutputVoice;
- (void)_reallyCommitOrSaveMetrics:(id)metrics;
- (void)_reallyEndSessionForDelegate:(id)delegate;
- (void)_reallyHandleNewStartLocalRequest:(id)request withRequestInfo:(id)info;
- (void)_reallyHandleNewStartRequest:(id)request info:(id)info;
- (void)_refreshAssistantValidation;
- (void)_registerDomainSignalServiceWithServiceManager:(id)manager;
- (void)_registerNanoServicesWithServiceManager:(id)manager;
- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)command executionContext:(id)context completion:(id)completion;
- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)command onDeviceForAssistantId:(id)id executionContext:(id)context completion:(id)completion;
- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)command onPeer:(id)peer allowsRelay:(BOOL)relay throughProxyDevice:(id)device executionContext:(id)context completion:(id)completion;
- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)command onDeviceForAssistantId:(id)id allowFallbackOnAWDL:(BOOL)l executionContext:(id)context completion:(id)completion;
- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)command onPeer:(id)peer allowsRelay:(BOOL)relay allowFallbackOnAWDL:(BOOL)l executionContext:(id)context completion:(id)completion;
- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)command onSpecifiedDeviceTypes:(unint64_t)types preferredMessagingOption:(unint64_t)option allowFallbackOnAWDL:(BOOL)l executionContext:(id)context completion:(id)completion;
- (void)_removeAllSpeechCapturingContexts;
- (void)_removeDelegate:(id)delegate;
- (void)_removeExecutionDevicesForLocalRequestWithId:(id)id;
- (void)_removeFirstChanceServiceForAceId:(id)id;
- (void)_removeHandledCommandIdsForRequestId:(id)id;
- (void)_removeOutstandingAnchorsRequestId:(id)id;
- (void)_removeOutstandingRequestId:(id)id forReason:(id)reason;
- (void)_removeOutstandingSyncChunkId:(id)id;
- (void)_removePostCommandHandlingBlocksForRequestId:(id)id;
- (void)_replaceRequestDelegate:(id)delegate withInfo:(id)info reason:(int64_t)reason andCompletion:(id)completion;
- (void)_replaceSpeechDelegateWhenReady:(id)ready waitForRecordingToFinish:(BOOL)finish suppressAlert:(BOOL)alert withCompletion:(id)completion;
- (void)_requestAnchorsForKeys:(id)keys appSources:(id)sources watchAppSources:(id)appSources forceReset:(BOOL)reset includeAllKnownAnchors:(BOOL)anchors reasons:(id)reasons;
- (void)_requestBarrier:(id)barrier;
- (void)_requestBarrierIfNecessary:(id)necessary;
- (void)_requestDidEnd;
- (void)_requestWillStartWithInfo:(id)info showNetworkActivityIndicator:(BOOL)indicator;
- (void)_rescheduleValidationRefresh;
- (void)_resetPeerAccountSettingsWithSharedData:(id)data;
- (void)_resetServices;
- (void)_resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)_rollbackRequestForDelegate:(id)delegate;
- (void)_runMaintenanceForServices:(id)services completion:(id)completion;
- (void)_saAIRequestSearch:(id)search completion:(id)completion;
- (void)_saAIRetrySearch:(id)search completion:(id)completion;
- (void)_saAISearchCompleted:(id)completed completion:(id)completion;
- (void)_saAcknowledgeAlert:(id)alert completion:(id)completion;
- (void)_saAddResultObjects:(id)objects completion:(id)completion;
- (void)_saAssistantDestroyed:(id)destroyed completion:(id)completion;
- (void)_saCancelCrossDeviceRequest:(id)request executionContext:(id)context completion:(id)completion;
- (void)_saCancelSucceeded:(id)succeeded completion:(id)completion;
- (void)_saClientSetupInfo:(id)info completion:(id)completion;
- (void)_saCommandFailed:(id)failed completion:(id)completion;
- (void)_saCommandIgnored:(id)ignored completion:(id)completion;
- (void)_saDeviceConfiguration:(id)configuration completion:(id)completion;
- (void)_saDeviceMyriadConfiguration:(id)configuration completion:(id)completion;
- (void)_saDismissRemoteAnnouncement:(id)announcement completion:(id)completion;
- (void)_saDomainObjectCancel:(id)cancel completion:(id)completion;
- (void)_saDomainObjectCommit:(id)commit completion:(id)completion;
- (void)_saDomainObjectCreate:(id)create completion:(id)completion;
- (void)_saDomainObjectDelete:(id)delete completion:(id)completion;
- (void)_saDomainObjectPunchOut:(id)out completion:(id)completion;
- (void)_saDomainObjectRetrieve:(id)retrieve completion:(id)completion;
- (void)_saDomainObjectUpdate:(id)update completion:(id)completion;
- (void)_saExecuteCallbacks:(id)callbacks completion:(id)completion;
- (void)_saExecuteOnRemoteRequest:(id)request executionContext:(id)context completion:(id)completion;
- (void)_saGetAssistantData:(id)data executionContext:(id)context completion:(id)completion;
- (void)_saGetRequestOrigin:(id)origin executionContext:(id)context completion:(id)completion;
- (void)_saInitiateHandoffOnCompanion:(id)companion completion:(id)completion;
- (void)_saLogNumericEvent:(id)event completion:(id)completion;
- (void)_saLogSignatureWithABC:(id)c completion:(id)completion;
- (void)_saLogStringEvent:(id)event completion:(id)completion;
- (void)_saNotificationSearch:(id)search completion:(id)completion;
- (void)_saPerformDataDetection:(id)detection completion:(id)completion;
- (void)_saPerformRemoteAnnouncement:(id)announcement completion:(id)completion;
- (void)_saPing:(id)ping completion:(id)completion;
- (void)_saPostCalendarActivityNotification:(id)notification executionContext:(id)context completion:(id)completion;
- (void)_saPostPersonalDomainActivityNotification:(id)notification executionContext:(id)context completion:(id)completion;
- (void)_saPostUpdatePersonalRequestSettingsNotification:(id)notification executionContext:(id)context completion:(id)completion;
- (void)_saQuickStop:(id)stop executionContext:(id)context completion:(id)completion;
- (void)_saReplayRequestFromDMHypothesis:(id)hypothesis completion:(id)completion;
- (void)_saRequestCompleted:(id)completed executionContext:(id)context completion:(id)completion;
- (void)_saRollbackSucceeded:(id)succeeded completion:(id)completion;
- (void)_saSetClientData:(id)data completion:(id)completion;
- (void)_saSetDeviceTTSMuteState:(id)state completion:(id)completion;
- (void)_saSetHandoffPayload:(id)payload completion:(id)completion;
- (void)_saSetLatencyDiagnosticConfiguration:(id)configuration completion:(id)completion;
- (void)_saSetMultilingualDictationConfig:(id)config completion:(id)completion;
- (void)_saStartLocalRequest:(id)request completion:(id)completion;
- (void)_saStartUIRequest:(id)request completion:(id)completion;
- (void)_saStructuredDictationFailure:(id)failure completion:(id)completion;
- (void)_saStructuredDictationResult:(id)result completion:(id)completion;
- (void)_saSyncChunkAccepted:(id)accepted completion:(id)completion;
- (void)_saSyncChunkDenied:(id)denied completion:(id)completion;
- (void)_saSyncGetAnchorsResponse:(id)response completion:(id)completion;
- (void)_saTTSGetSpeechSynthesisVolume:(id)volume completion:(id)completion;
- (void)_saTTSSetSpeechSynthesisVolume:(id)volume completion:(id)completion;
- (void)_saUnhandledObject:(id)object completion:(id)completion;
- (void)_saWaitForCommands:(id)commands completion:(id)completion;
- (void)_sasAbortSpeechRequest:(id)request completion:(id)completion;
- (void)_sasClientBoundConfusionNetwork:(id)network completion:(id)completion;
- (void)_sasConfirmEndpoint:(id)endpoint completion:(id)completion;
- (void)_sasExtractSpeechData:(id)data executionContext:(id)context completion:(id)completion;
- (void)_sasPronunciationRecognized:(id)recognized completion:(id)completion;
- (void)_sasResultCandidate:(id)candidate completion:(id)completion;
- (void)_sasServerEndpointFeatures:(id)features completion:(id)completion;
- (void)_sasSpeechFailure:(id)failure completion:(id)completion;
- (void)_sasSpeechMultilingualSpeechRecognized:(id)recognized executionContext:(id)context completion:(id)completion;
- (void)_sasSpeechPartialResult:(id)result completion:(id)completion;
- (void)_sasSpeechRecognized:(id)recognized executionContext:(id)context completion:(id)completion;
- (void)_sasSpeechServerEndpointIdentified:(id)identified completion:(id)completion;
- (void)_sasSuspendClientEndpointer:(id)endpointer completion:(id)completion;
- (void)_sasVoiceIdentificationSignal:(id)signal completion:(id)completion;
- (void)_sasVoiceSearchFinalResult:(id)result completion:(id)completion;
- (void)_sasVoiceSearchPartialResult:(id)result completion:(id)completion;
- (void)_scheduleCallKeepAlive;
- (void)_sendAMOSCommand:(id)command domain:(id)domain toBundleWithIdentifier:(id)identifier completion:(id)completion;
- (void)_sendAMOSCommandToService:(id)service responseHandler:(id)handler;
- (void)_sendCancelSpeechForCommand:(id)command;
- (void)_sendCommandFailedForCommand:(id)command error:(id)error;
- (void)_sendCommandFailedForCommand:(id)command reason:(id)reason;
- (void)_sendCommandToServer:(id)server opportunistically:(BOOL)opportunistically;
- (void)_sendCommandToServer:(id)server opportunistically:(BOOL)opportunistically completion:(id)completion;
- (void)_sendContextAndRestrictionsForSpeechRequestWithInfo:(id)info;
- (void)_sendEnableServerEndpointerCommandWithRefID:(id)d;
- (void)_sendGizmoSharedDataIfNeeded;
- (void)_sendLocationIfNeededForRequest;
- (void)_sendMetrics:(id)metrics requiresActiveSession:(BOOL)session batch:(id)batch completion:(id)completion;
- (void)_sendRequestToServer:(id)server;
- (void)_sendRestrictionsInPreparationForRequest;
- (void)_sendRollbackCommandForCommand:(id)command;
- (void)_sendServiceCommand:(id)command completion:(id)completion;
- (void)_sendSessionObject:(id)object opportunistically:(BOOL)opportunistically;
- (void)_sendSpeechCorrectionInfo:(id)info forCorrectionContext:(id)context;
- (void)_sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)_sendStartSpeechCommandWithSpeechManager:(id)manager info:(id)info context:(id)context;
- (void)_sendWillStopRecordingForCommand:(id)command;
- (void)_sessionDidFailWithError:(id)error;
- (void)_setActiveAccountIdentifier:(id)identifier;
- (void)_setAlertContext;
- (void)_setBackgroundContext;
- (void)_setCallIsLikely:(BOOL)likely;
- (void)_setCarDNDRestriction:(BOOL)restriction;
- (void)_setCarOwnsMainAudioRestriction:(BOOL)restriction;
- (void)_setConfiguration:(id)configuration forClient:(id)client;
- (void)_setCurrentRequest:(id)request;
- (void)_setCurrentRequestWithCommand:(id)command;
- (void)_setCurrentRequestWithRequestId:(id)id;
- (void)_setFirstChanceService:(id)service forAceId:(id)id;
- (void)_setHasIncomingCall:(BOOL)call;
- (void)_setHeadGestureRecognitionAvailability:(BOOL)availability;
- (void)_setHeadphonesAuthenticated:(BOOL)authenticated;
- (void)_setIsEyesFree:(BOOL)free;
- (void)_setIsInCall:(BOOL)call;
- (void)_setIsTimeoutSuspended:(BOOL)suspended;
- (void)_setLanguageCode:(id)code outputVoice:(id)voice isDefaultValue:(BOOL)value;
- (void)_setLanguageCode:(id)code outputVoice:(id)voice isDefaultValue:(BOOL)value withCompletion:(id)completion;
- (void)_setLanguageCodeIfNeeded;
- (void)_setLockState:(BOOL)state showingLockScreen:(BOOL)screen;
- (void)_setManagedStoreObject:(id)object forKey:(id)key;
- (void)_setModesConfiguration:(id)configuration;
- (void)_setRestrictedAppContext;
- (void)_setSiriOutputVolume:(float)volume forAudioRoute:(id)route operationType:(int64_t)type completion:(id)completion;
- (void)_setSpeechCapturingContext:(id)context;
- (void)_setSpeechRecognizedContext:(id)context;
- (void)_setStarkRestriction:(BOOL)restriction;
- (void)_setSupportsCarPlayVehicleDataRestriction:(BOOL)restriction;
- (void)_setUIService:(id)service;
- (void)_setWatchAuthenticated:(BOOL)authenticated;
- (void)_setupUIBridgeServiceListener;
- (void)_shutdownAfterDelay:(double)delay;
- (void)_shutdownSessionWhenIdle;
- (void)_signalUSTTestRequestWithStartRequest:(id)request requestInfo:(id)info;
- (void)_speechCaptureCompleted;
- (void)_startAcousticIDRequestWithDelegate:(id)delegate withOptions:(id)options context:(id)context;
- (void)_startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate;
- (void)_startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate completion:(id)completion;
- (void)_startDictationWithURL:(id)l isNarrowBand:(BOOL)band language:(id)language options:(id)options sessionUUID:(id)d delegate:(id)delegate;
- (void)_startLanguageDetectionWaitTimer;
- (void)_startLocalRequest:(id)request withRequestInfo:(id)info forDelegate:(id)delegate suppressCancelationAlertIfCapturingSpeech:(BOOL)speech completion:(id)completion;
- (void)_startNonSpeechRequest:(id)request forDelegate:(id)delegate withInfo:(id)info options:(id)options suppressAlert:(BOOL)alert completion:(id)completion;
- (void)_startObservingCallState;
- (void)_startRecordedDictationWithLanguage:(id)language options:(id)options sessionUUID:(id)d narrowband:(BOOL)narrowband delegate:(id)delegate;
- (void)_startRecordingForPendingDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate completion:(id)completion;
- (void)_startRecordingForPendingSpeechRequestForDelegate:(id)delegate withOptions:(id)options sessionUUID:(id)d completion:(id)completion;
- (void)_startRemoteRequest:(id)request onPeer:(id)peer completion:(id)completion;
- (void)_startRemoteRequest:(id)request onPeer:(id)peer withContext:(id)context completion:(id)completion;
- (void)_startRequest:(id)request withDelegate:(id)delegate;
- (void)_startSpeechPronunciationRequestWithDelegate:(id)delegate withOptions:(id)options pronunciationContext:(id)context;
- (void)_startSpeechRequestWithDelegate:(id)delegate withOptions:(id)options sessionUUID:(id)d;
- (void)_startSpeechRequestWithDelegate:(id)delegate withOptions:(id)options sessionUUID:(id)d completion:(id)completion;
- (void)_startSpeechRequestWithURL:(id)l isNarrowBand:(BOOL)band withDelegate:(id)delegate completion:(id)completion;
- (void)_startUpdatingMotionActivity;
- (void)_stopLanguageDetectionWaitTimerIfNeeded;
- (void)_stopObservingCallStateWithCompletion:(id)completion;
- (void)_stopSpeechWithOptions:(id)options forDelegate:(id)delegate;
- (void)_stopUpdatingMotionActivity;
- (void)_storeExtractedSpeechLocally:(id)locally;
- (void)_sync_assistantLoadedSyncRequest:(BOOL)request;
- (void)_sync_commandFailed:(id)failed;
- (void)_sync_commandIgnored:(id)ignored;
- (void)_sync_continueIfConditionsMet;
- (void)_sync_reset;
- (void)_sync_syncAnchorKeys:(id)keys forceReset:(BOOL)reset reasons:(id)reasons;
- (void)_sync_syncIfNeeded;
- (void)_telephonyRequestCompleted;
- (void)_triggerABCforType:(id)type subType:(id)subType context:(id)context;
- (void)_trimRecordedAudioWithIdentifier:(id)identifier offset:(double)offset duration:(double)duration outputFileType:(int64_t)type completion:(id)completion;
- (void)_trySendingShowRequestHandlingStatusForAsrOnDevice:(BOOL)device startSpeechRequestId:(id)id;
- (void)_updateAutoDownloadedVoiceAssetsForOutputVoice;
- (void)_updateFlowContext;
- (void)_updateObjectFromService:(id)service sadIdentifier:(id)identifier completion:(id)completion;
- (void)_updateSharedDataFromPeers:(id)peers completion:(id)completion;
- (void)_updateSharedDataWithPairedPeerData:(id)data;
- (void)_updateSpeechOptions:(id)options forDelegate:(id)delegate allowUpdateInSpeechCompletion:(BOOL)completion;
- (void)_updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
- (void)accessRecordedAudioWithIdentifier:(id)identifier completion:(id)completion;
- (void)acousticIDHelper:(id)helper didCompleteSessionSuccessfully:(BOOL)successfully;
- (void)acousticIDHelperDidStartSession:(id)session;
- (void)adCallStateChangedCallInProcess:(BOOL)process;
- (void)adCallStateChangedCallIncoming:(BOOL)incoming;
- (void)addRecordedSpeechSampleData:(id)data delegate:(id)delegate;
- (void)addService:(id)service;
- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)winner;
- (void)announceNotificationHandlingStateUpdatedToState:(int64_t)state;
- (void)appLaunchHandler:(id)handler didLaunchAppForRequestId:(id)id;
- (void)areAnnouncementRequestsPermittedByPresentationWhileActiveWithCompletion:(id)completion;
- (void)assistantSessionManager:(id)manager didChangeRequestIdFrom:(id)from toId:(id)id;
- (void)assistantSessionManager:(id)manager receivedCommand:(id)command;
- (void)assistantSessionManager:(id)manager receivedError:(id)error isRetryableError:(BOOL)retryableError;
- (void)assistantSessionManager:(id)manager willRetryOnError:(id)error;
- (void)assistantSessionManagerDidCreateAssistant:(id)assistant;
- (void)assistantSessionManagerDidDestroyAssistant:(id)assistant;
- (void)assistantSessionManagerSessionConnectionDidReset:(id)reset;
- (void)assistantSessionManagerSessionRemoteConnectionDidReset:(id)reset;
- (void)cancelCurrentRequestForReason:(int64_t)reason;
- (void)cancelRequestForDelegate:(id)delegate reason:(int64_t)reason error:(id)error;
- (void)cancelSpeechForDelegate:(id)delegate;
- (void)clearContext;
- (void)clientConnected:(id)connected;
- (void)clientDisconnected:(id)disconnected;
- (void)contextManagerDidUpdateBackgroundContext:(id)context;
- (void)dealloc;
- (void)deleteAccountWithIdentifier:(id)identifier;
- (void)destroyActiveAccount;
- (void)dictationRequestDidCompleteRecognitionWithError:(id)error secureOfflineOnlyRecognition:(BOOL)recognition sessionUUID:(id)d statistics:(id)statistics;
- (void)dictationRequestDidRecognizeFinalResultCandidatePackage:(id)package sessionUUID:(id)d;
- (void)dictationRequestDidRecognizePackage:(id)package nluResult:(id)result sessionUUID:(id)d;
- (void)dictationRequestDidRecognizePartialPackage:(id)package nluResult:(id)result sessionUUID:(id)d;
- (void)dictationRequestDidRecognizeTokens:(id)tokens nluResult:(id)result sessionUUID:(id)d;
- (void)dictationRequestDidRecognizeVoiceCommandCandidatePackage:(id)package nluResult:(id)result sessionUUID:(id)d;
- (void)dismissAssistant;
- (void)dismissAssistantWithReason:(int64_t)reason;
- (void)dismissedAllVisibleAssistantUIForReason:(id)reason;
- (void)endSessionForDelegate:(id)delegate;
- (void)executeCommand:(id)command fromPeer:(id)peer remoteExecutionInfo:(id)info reply:(id)reply;
- (void)extendRequestTimeoutBy:(double)by forRequestID:(id)d;
- (void)fetchAccounts:(id)accounts;
- (void)fetchActiveAccount:(id)account;
- (void)fetchActiveAccountIdentifier:(id)identifier;
- (void)fetchAppicationContextForApplicationInfo:(id)info supplementalContext:(id)context refID:(id)d;
- (void)fetchBulletinsOnLockScreenForNotificationManager:(id)manager completion:(id)completion;
- (void)fetchContextForApplicationInfo:(id)info completion:(id)completion;
- (void)fetchLastLocationWithCompletion:(id)completion;
- (void)fetchLocationAuthorization:(id)authorization;
- (void)fetchManagedStoreObjectForKey:(id)key completion:(id)completion;
- (void)fetchSupportedLanguagesWithCompletion:(id)completion;
- (void)forceAudioSessionActiveWithContext:(id)context completion:(id)completion;
- (void)forceAudioSessionInactiveWithOptions:(unint64_t)options completion:(id)completion;
- (void)getAccessoryInfoForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)getCrossDeviceContextWithCompletion:(id)completion;
- (void)getCurrentContextSnapshotWithCompletion:(id)completion;
- (void)getDeferredObjectsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)getDeviceContextsForKeys:(id)keys forRequestID:(id)d includesNearbyDevices:(BOOL)devices completion:(id)completion;
- (void)getOfflineDictationStatusIgnoringCache:(BOOL)cache completion:(id)completion;
- (void)getOriginDeviceInfoForContextIdentifier:(id)identifier completion:(id)completion;
- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)completion;
- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion;
- (void)getSharedDataForPeer:(id)peer;
- (void)getSiriOutputVolumeForAudioRoute:(id)route completion:(id)completion;
- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)handleAceCommand:(id)command afterCurrentRequest:(BOOL)request waitForResponse:(BOOL)response withDelegate:(id)delegate completion:(id)completion;
- (void)handleCommand:(id)command withExecutionContextMatchingInfo:(id)info completion:(id)completion;
- (void)handleExternalActivationRequest:(id)request completion:(id)completion;
- (void)handleFailedStartPlaybackWithDestination:(int64_t)destination completion:(id)completion;
- (void)handleGenericAceCommand:(id)command withDelegate:(id)delegate interruptOutstandingRequest:(BOOL)request targetReplyQueue:(id)queue reply:(id)reply;
- (void)handleRemoteSpeechRequest:(id)request completion:(id)completion;
- (void)handleSpeechRecognized:(id)recognized completion:(id)completion;
- (void)handleSpeechServerEndpointIdentified:(id)identified completion:(id)completion;
- (void)isHeadGestureRecognitionAvailableWithCompletion:(id)completion;
- (void)isInCarDNDModeWithCompletion:(id)completion;
- (void)isWatchAuthenticatedWithCompletion:(id)completion;
- (void)listenForSharedDataFromCloud;
- (void)metrics_publishDailyDeviceStatus:(id)status completion:(id)completion;
- (void)notificationManagerDidChangeBulletins:(id)bulletins;
- (void)notifySpeechDetectedIsUndirected;
- (void)openApplicationWithBundleID:(id)d URL:(id)l completion:(id)completion;
- (void)openURL:(id)l completion:(id)completion;
- (void)pauseRecognition;
- (void)postMessageToMUXWithMultiUserInfo:(id)info;
- (void)postTestResultCandidateWithRcId:(id)id recognitionSausage:(id)sausage;
- (void)postTestResultSelectedWithRcId:(id)id;
- (void)preheatServicesForDomain:(id)domain;
- (void)preheatWithRecordDeviceIdentifier:(id)identifier;
- (void)preheatWithStyle:(int64_t)style forOptions:(id)options completion:(id)completion;
- (void)prepareForPhoneCall;
- (void)prepareForShutdown;
- (void)prepareForStartPlaybackWithDestination:(int64_t)destination intent:(id)intent completion:(id)completion;
- (void)pushMyriadAdvertisementContext:(id)context completionHandler:(id)handler;
- (void)pushSCDAAdvertisementContext:(id)context completionHandler:(id)handler;
- (void)refreshAssistantValidation;
- (void)releaseShutdownAssertion:(id)assertion;
- (void)reloadServiceForNotification:(id)notification;
- (void)removeDelegate:(id)delegate;
- (void)removeService:(id)service;
- (void)replayAllRecordedViews:(unint64_t)views with:(id)with;
- (void)replayRecordedViewAt:(unint64_t)at with:(id)with;
- (void)requestBarrier:(id)barrier;
- (void)requestBarrierIfNecessary:(id)necessary;
- (void)rescheduleValidationRefresh;
- (void)resumeInterruptedAudioPlaybackIfNeeded;
- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)rollbackClearContext;
- (void)rollbackRequestForDelegate:(id)delegate;
- (void)runBootTimeServiceMaintenanceWithCompletion:(id)completion;
- (void)runServiceMaintenanceWithCompletion:(id)completion;
- (void)sanityCheckAutodownloadedAssetsForced:(BOOL)forced;
- (void)selectResultWithResultCandidate:(id)candidate completionHandler:(id)handler;
- (void)sendEngagementFeedback:(int64_t)feedback voiceQueryIdentifier:(id)identifier;
- (void)sendGizmoData;
- (void)sendMetricsToServerWithTimeout:(double)timeout requiresUnlimitedPower:(BOOL)power requiresActiveSession:(BOOL)session purgesOversizedStorage:(BOOL)storage ignoresMetricsSenderDisabledSetting:(BOOL)setting scheduledActivity:(BOOL)activity completion:(id)completion;
- (void)sendMultiUserInfoToMUX;
- (void)sendPowerLogs:(id)logs peerInfo:(id)info;
- (void)sendSpeechCorrectionInfo:(id)info forCorrectionContext:(id)context;
- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (void)setActiveAccountIdentifier:(id)identifier;
- (void)setAlertContextDirty;
- (void)setApplicationContext:(id)context;
- (void)setApplicationContextForApplicationInfos:(id)infos withRefId:(id)id;
- (void)setAssistantEnabled:(BOOL)enabled;
- (void)setCarDNDActive:(BOOL)active;
- (void)setConfiguration:(id)configuration forClient:(id)client;
- (void)setDictationEnabled:(BOOL)enabled;
- (void)setHeadphonesAuthenticated:(BOOL)authenticated;
- (void)setIsEyesFree:(BOOL)free;
- (void)setLanguageCode:(id)code outputVoice:(id)voice withCompletion:(id)completion;
- (void)setLanguageCode:(id)code withCompletion:(id)completion;
- (void)setLanguageCodeIfNeeded;
- (void)setLockState:(BOOL)state showingLockScreen:(BOOL)screen;
- (void)setManagedStoreObject:(id)object forKey:(id)key;
- (void)setModesConfiguration:(id)configuration;
- (void)setOutputVoice:(id)voice withCompletion:(id)completion;
- (void)setOverriddenApplicationContext:(id)context withContext:(id)withContext;
- (void)setQueuedLanguageCode:(id)code;
- (void)setQueuedLanguageCode:(id)code andQueuedOutputVoice:(id)voice;
- (void)setQueuedOutputVoice:(id)voice;
- (void)setReplayEnabled:(BOOL)enabled;
- (void)setReplayOverridePath:(id)path;
- (void)setSiriOutputVolume:(float)volume forAudioRoute:(id)route operationType:(int64_t)type completion:(id)completion;
- (void)setSuppressAudioInterruptionEndedNotifications:(BOOL)notifications;
- (void)setWatchAuthenticated:(BOOL)authenticated;
- (void)sharedDataConnection:(id)connection didUpdateSharedData:(id)data;
- (void)showingVisibleAssistantUIForReason:(id)reason completion:(id)completion;
- (void)shutdownSessionIfIdle;
- (void)speechManager:(id)manager audioSessionDidBecomeActive:(BOOL)active;
- (void)speechManager:(id)manager audioSessionWillBecomeActive:(BOOL)active;
- (void)speechManager:(id)manager capturedFingerprint:(id)fingerprint duration:(double)duration;
- (void)speechManager:(id)manager capturedPackets:(id)packets atTimestamp:(double)timestamp totalCount:(int64_t)count context:(id)context;
- (void)speechManager:(id)manager didBeginLocalRecognitionWithContext:(id)context sessionUUID:(id)d;
- (void)speechManager:(id)manager didCancelWithContext:(id)context;
- (void)speechManager:(id)manager didChangeRecordingState:(BOOL)state;
- (void)speechManager:(id)manager didDetectEndpointAtTime:(double)time context:(id)context;
- (void)speechManager:(id)manager didDetectLanguage:(id)language confidenceScores:(id)scores isConfident:(BOOL)confident;
- (void)speechManager:(id)manager didDetectStartpointAtTime:(double)time context:(id)context;
- (void)speechManager:(id)manager didFailWithError:(id)error context:(id)context;
- (void)speechManager:(id)manager didFinishWithCapturingMode:(int64_t)mode context:(id)context;
- (void)speechManager:(id)manager didFinishWritingAudioFile:(id)file error:(id)error context:(id)context;
- (void)speechManager:(id)manager didProduceLocalLoggablePackage:(id)package sessionUUID:(id)d;
- (void)speechManager:(id)manager didReceiveConfidenceScores:(id)scores classification:(unint64_t)classification classifiedUser:(id)user unknownUserScore:(int64_t)score duration:(int64_t)duration version:(int64_t)version thresholdingType:(id)self0 assetVersion:(id)self1;
- (void)speechManager:(id)manager didReceiveLastAudioBufferWithEndpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics context:(id)context;
- (void)speechManager:(id)manager didRecognizePackage:(id)package sessionUUID:(id)d;
- (void)speechManager:(id)manager didRecognizeRawEagerRecognitionCandidate:(id)candidate sessionUUID:(id)d;
- (void)speechManager:(id)manager didRecognizeTokens:(id)tokens sessionUUID:(id)d;
- (void)speechManager:(id)manager didRequestQuickStopWithContext:(id)context;
- (void)speechManager:(id)manager didStartRecordingWithInfo:(id)info context:(id)context;
- (void)speechManager:(id)manager didUpdateRecordingWithInfo:(id)info context:(id)context;
- (void)speechManager:(id)manager languageDetectorDidFail:(id)fail;
- (void)speechManager:(id)manager performTwoShotPromptWithType:(int64_t)type context:(id)context completion:(id)completion;
- (void)speechManager:(id)manager preheatWithRecordingInfo:(id)info context:(id)context;
- (void)speechManager:(id)manager recognitionDidCompleteWithError:(id)error secureOfflineOnlyRecognition:(BOOL)recognition sessionUUID:(id)d statistics:(id)statistics;
- (void)speechManager:(id)manager recognitionUpdateWillBeginForTask:(id)task;
- (void)speechManager:(id)manager willStartRecordingAtTimestamp:(double)timestamp isFromFile:(BOOL)file inputAudioPowerWrapper:(id)wrapper context:(id)context;
- (void)speechManager:(id)manager willStopRecordingWithSignpostID:(unint64_t)d;
- (void)speechManagerDidDelayEndpointForMusic:(id)music;
- (void)speechManagerDidDetectMusic:(id)music;
- (void)startAcousticIDRequestWithDelegate:(id)delegate withOptions:(id)options context:(id)context;
- (void)startCloudKitSyncWeeklyForActivity:(id)activity;
- (void)startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate;
- (void)startDictationWithURL:(id)l isNarrowBand:(BOOL)band language:(id)language options:(id)options sessionUUID:(id)d delegate:(id)delegate;
- (void)startObservingCallState;
- (void)startRecordedDictationWithLanguage:(id)language options:(id)options sessionUUID:(id)d narrowband:(BOOL)narrowband delegate:(id)delegate;
- (void)startRecordingForPendingDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate completion:(id)completion;
- (void)startRecordingForPendingSpeechRequestForDelegate:(id)delegate withOptions:(id)options sessionUUID:(id)d completion:(id)completion;
- (void)startRemoteRequest:(id)request completion:(id)completion;
- (void)startRemoteRequest:(id)request onTargetDevice:(id)device completion:(id)completion;
- (void)startRequest:(id)request withDelegate:(id)delegate;
- (void)startSpeechPronunciationRequestWithDelegate:(id)delegate withOptions:(id)options pronunciationContext:(id)context;
- (void)startSpeechRequestWithDelegate:(id)delegate withOptions:(id)options;
- (void)startSpeechRequestWithURL:(id)l isNarrowBand:(BOOL)band withDelegate:(id)delegate;
- (void)stopSpeechWithOptions:(id)options forDelegate:(id)delegate;
- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress;
- (void)syncAnchorKeys:(id)keys forceReset:(BOOL)reset reasons:(id)reasons;
- (void)syncManager:(id)manager chunkForSyncInfo:(id)info chunkInfo:(id)chunkInfo;
- (void)syncManager:(id)manager finishedSyncForKeys:(id)keys postNotification:(BOOL)notification;
- (void)syncManagerDidResetInProgressSync:(id)sync;
- (void)taskmaster:(id)taskmaster didLaunchApplicationForRequestWithId:(id)id;
- (void)taskmaster:(id)taskmaster didReceivePunchoutOutcome:(id)outcome;
- (void)telephonyRequestCompleted;
- (void)trimRecordedAudioWithIdentifier:(id)identifier offset:(double)offset duration:(double)duration outputFileType:(int64_t)type completion:(id)completion;
- (void)updateSharedDataFromCloudPeers:(id)peers completion:(id)completion;
- (void)updateSharedDataFromCompanion;
- (void)updateSharedDataFromPeerUseCache:(BOOL)cache allowCloudMessaging:(BOOL)messaging completion:(id)completion;
- (void)updateSharedDataWithCloudData:(id)data fromPeer:(id)peer;
- (void)updateSpeechOptions:(id)options forDelegate:(id)delegate;
- (void)updateSpeechSynthesisRecord:(id)record;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
- (void)willSetApplicationContextWithRefId:(id)id;
- (void)withContextManager:(id)manager;
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
    _speechManager = [(ADCommandCenter *)self _speechManager];
    recordingInfoProvider = [_speechManager recordingInfoProvider];
    v20 = [(ADSettingsService *)v17 initWithRecordingInfoProvider:recordingInfoProvider instanceContext:self->_instanceContext];
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

    _speechManager2 = [(ADCommandCenter *)self _speechManager];
    volumeTracker = [_speechManager2 volumeTracker];

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
    _queue = [(ADCommandCenter *)self _queue];
    v32 = [(ADMediaRemoteService *)v30 initWithQueue:_queue volumeTracker:volumeTracker whaService:v27];
    [(ADServiceManager *)v29 addService:v32];

    v33 = self->_serviceManager;
    _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
    [(ADServiceManager *)v33 addService:_requestDispatcherService];

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
    _queue = [(ADCommandCenter *)self _queue];
    _account = [(ADCommandCenter *)self _account];
    v7 = [(ADSessionManager *)v4 initOnQueue:_queue account:_account instanceContext:self->_instanceContext];
    v8 = self->_sessionManager;
    self->_sessionManager = v7;

    [(ADSessionManager *)self->_sessionManager setDelegate:self];
    v9 = self->_sessionManager;
    _requestDelayManager = [(ADCommandCenter *)self _requestDelayManager];
    [(ADSessionManager *)v9 setInterceptor:_requestDelayManager];

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
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  languageCode = [_sessionManager languageCode];

  if ((AFDeviceSupportsSiriUOD() & 1) != 0 || AFDeviceSupportsHybridUOD())
  {
    v5 = [(ADCommandCenter *)self _updateUODAssetStatusForLanguage:languageCode];
    v6 = self->_siriFullUODSupported && !self->_siriHybridUODSupported;
    [(ADSessionManager *)self->_sessionManager resetSessionsIfRequiredBasedOnOrchestrationMode:v6];
  }

  _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
  _requestDispatcherSessionConfiguration = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
  [_requestDispatcherService startSessionWithConfiguration:_requestDispatcherSessionConfiguration];

  if (self->_serviceManager)
  {
    _queue = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C4F0;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(_queue, block);
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

  _contextManager = [(ADCommandCenter *)self _contextManager];
  [_contextManager clearBackgroundContextDirtyState];
  SiriCoreUUIDStringCreate();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000B17C;
  v10 = &unk_10050F6F8;
  v12 = v11 = self;
  v5 = v12;
  [_contextManager getBackgroundContext:&v7];
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
    localContextStore = [(ADContextManager *)self->_contextManager localContextStore];
    [v6 setDonationService:localContextStore];

    v8 = +[ADNotificationManager sharedManager];
    [v8 addDelegate:self];

    contextManager = self->_contextManager;
  }

  delegate = [(ADContextManager *)contextManager delegate];

  if (!delegate)
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
  locationManager = [v2 locationManager];

  return locationManager;
}

- (id)_accounts
{
  v2 = +[NSMutableArray array];
  v3 = +[ADPreferences sharedPreferences];
  accountIdentifiers = [v3 accountIdentifiers];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = accountIdentifiers;
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

  _contextManager = [(ADCommandCenter *)self _contextManager];
  [_contextManager setAlertContextDirty];
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
    _syncManager = [(ADCommandCenter *)self _syncManager];
    if (!-[ADCommandCenter _sync_isRequestBlockingSync](self, "_sync_isRequestBlockingSync") && !-[ADCommandCenter _syncChunkWindowFull](self, "_syncChunkWindowFull") && !-[ADCommandCenter _isInCall](self, "_isInCall") && [_syncManager isSyncing])
    {
      [_syncManager continueSync];
    }
  }
}

- (id)_syncManager
{
  syncManager = self->_syncManager;
  if (!syncManager)
  {
    v4 = [ADSyncManager alloc];
    _serviceManager = [(ADCommandCenter *)self _serviceManager];
    _queue = [(ADCommandCenter *)self _queue];
    v7 = [(ADSyncManager *)v4 initWithServiceManager:_serviceManager queue:_queue];
    v8 = self->_syncManager;
    self->_syncManager = v7;

    syncManager = self->_syncManager;
  }

  return syncManager;
}

- (BOOL)_sync_isRequestBlockingSync
{
  _currentRequest = [(ADCommandCenter *)self _currentRequest];
  v3 = _currentRequest != 0;

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

  sANotificationObjectClassIdentifier = [NSString stringWithFormat:@"%@#%@", SANotificationGroupIdentifier, SANotificationObjectClassIdentifier];
  [v3 addObject:sANotificationObjectClassIdentifier];

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (sub_10000EEB8())
  {
    _serviceManager = [(ADCommandCenter *)self _serviceManager];
    controlCenterLockRestrictedCommands = [_serviceManager controlCenterLockRestrictedCommands];
    [v3 addObjectsFromArray:controlCenterLockRestrictedCommands];
  }

  if ((AFHasUnlockedSinceBoot() & 1) == 0)
  {
    _serviceManager2 = [(ADCommandCenter *)self _serviceManager];
    firstUnlockRestrictedCommands = [_serviceManager2 firstUnlockRestrictedCommands];
    [v3 addObjectsFromArray:firstUnlockRestrictedCommands];
  }

  if (sub_10000EE68())
  {
    sAPhoneCallClassIdentifier = [NSString stringWithFormat:@"%@#%@", SAPhoneGroupIdentifier, SAPhoneCallClassIdentifier];
    [v3 addObject:sAPhoneCallClassIdentifier];
  }

  if (!self->_isHeadphonesAuthenticated)
  {
    [v3 addObject:SADeviceRestrictionUNAUTHENTICATED_BY_HEADPHONES_STATEValue];
  }

  if (!self->_isWatchAuthenticated)
  {
    [v3 addObject:SADeviceRestrictionUNAUTHENTICATED_BY_WATCH_PROXIMITYValue];
  }

  _serviceManager3 = [(ADCommandCenter *)self _serviceManager];
  lockRestrictedCommands = [_serviceManager3 lockRestrictedCommands];

  if (lockRestrictedCommands)
  {
    [v3 addObjectsFromArray:lockRestrictedCommands];
  }

LABEL_22:
  if (self->_isInStarkMode)
  {
    [v3 addObject:SADeviceRestrictionSTARKValue];
    if (self->_supportsCarPlayVehicleData)
    {
      [v3 addObject:SADeviceRestrictionCAR_SUPPORTS_VEHICLE_DATAValue];
    }

    sAUISayItClassIdentifier = [NSString stringWithFormat:@"%@#%@", SASmsGroupIdentifier, SAUISayItClassIdentifier];
    [v3 removeObject:sAUISayItClassIdentifier];

    sAPhoneCallClassIdentifier2 = [NSString stringWithFormat:@"%@#%@", SAPhoneGroupIdentifier, SAPhoneCallClassIdentifier];
    [v3 removeObject:sAPhoneCallClassIdentifier2];

    sAAppsLaunchAppClassIdentifier = [NSString stringWithFormat:@"%@#%@", SAAppsGroupIdentifier, SAAppsLaunchAppClassIdentifier];
    [v3 removeObject:sAAppsLaunchAppClassIdentifier];
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

  allObjects = [v3 allObjects];

  return allObjects;
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
  fetchCurrentMode = [(ADResponseModeProvider *)self->_responseModeProvider fetchCurrentMode];
  if (self->_requestDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(ADCommandCenterRequestDelegate *)self->_requestDelegate adRequestDidUpdateResponseMode:fetchCurrentMode];
  }

  return fetchCurrentMode;
}

- (id)_bargeInModes
{
  v3 = objc_alloc_init(NSMutableArray);
  bargeInOptions = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions bargeInOptions];
  if (!bargeInOptions)
  {
    goto LABEL_7;
  }

  v5 = bargeInOptions;
  if ((bargeInOptions & 4) == 0)
  {
    if ((bargeInOptions & 1) == 0)
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
  audioSessionController = [v2 audioSessionController];
  getAudioSessionID = [audioSessionController getAudioSessionID];

  return getAudioSessionID;
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
  _account = [(ADCommandCenter *)self _account];
  identifier = [_account identifier];

  return identifier;
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

  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager setHasActiveRequest:0];

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

  sharedMonitor = [*v8 sharedMonitor];
  [sharedMonitor dequeueBlocksWaitingForMyriadDecision];
}

- (void)sendPowerLogs:(id)logs peerInfo:(id)info
{
  logsCopy = logs;
  infoCopy = info;
  if (infoCopy && AFHasPerfPowerEntitlement())
  {
    if (qword_10058FDC8 != -1)
    {
      dispatch_once(&qword_10058FDC8, &stru_10050F3A0);
    }

    v7 = +[ADCompanionService sharedInstance];
    v8 = [ADPeerInfo alloc];
    afPeerInfo = [infoCopy afPeerInfo];
    v10 = [(ADPeerInfo *)v8 initWithAFPeerInfo:afPeerInfo];
    v11 = [v7 discoveryTypeForPeer:v10];

    if (logsCopy)
    {
      v12 = logsCopy;
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
    productType = [infoCopy productType];
    v15 = productType;
    if (productType)
    {
      v16 = productType;
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

- (void)_emitAudioTopologyForRequestId:(id)id
{
  v7 = [(ADCommandCenter *)self _buildORCHClientEvent:id];
  v4 = objc_alloc_init(ORCHSchemaORCHAudioTopologyReported);
  [v4 setHasAudioTopology:1];
  getHomeDevicesAudioTopology = [(ADCommandCenter *)self getHomeDevicesAudioTopology];
  [v4 setAudioTopology:getHomeDevicesAudioTopology];
  if (getHomeDevicesAudioTopology == 4 || getHomeDevicesAudioTopology == 2)
  {
    [v4 setHasIsLeader:{-[ADCommandCenter isStereoPairLeader](self, "isStereoPairLeader")}];
  }

  [v7 setAudioTopologyReported:v4];
  v6 = +[AssistantSiriAnalytics sharedStream];
  [v6 emitMessage:v7];
}

- (void)_logAudioTopologyForRequestId:(id)id
{
  idCopy = id;
  _getInstrumentationQueue = [(ADCommandCenter *)self _getInstrumentationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006FEC0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(_getInstrumentationQueue, v7);
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

- (void)_logExecuteOnRemoteRequestForRequestId:(id)id turnId:(id)turnId event:(int64_t)event
{
  turnIdCopy = turnId;
  idCopy = id;
  v17 = [(ADCommandCenter *)self _buildORCHClientEvent:idCopy];
  v10 = objc_alloc_init(ORCHSchemaORCHExecuteOnRemoteRequestContext);
  if (event == 2)
  {
    v11 = objc_alloc_init(ORCHSchemaORCHExecuteOnRemoteRequestFailed);
    [v10 setFailed:v11];
    [v10 setHasFailed:1];
  }

  else if (event == 1)
  {
    v11 = objc_alloc_init(ORCHSchemaORCHExecuteOnRemoteRequestEnded);
    [v10 setEnded:v11];
    [v10 setHasEnded:1];
  }

  else
  {
    if (event)
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

  uUIDString = [idCopy UUIDString];

  v14 = ADCreateRequestLinkInfo();

  uUIDString2 = [turnIdCopy UUIDString];

  v16 = ADCreateRequestLinkInfo();

  ADEmitRequestLinkEventMessage();
}

- (void)_logMURequestEndedWithResultCandidate:(id)candidate
{
  candidateCopy = candidate;
  _getInstrumentationQueue = [(ADCommandCenter *)self _getInstrumentationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007020C;
  v7[3] = &unk_10051E010;
  v8 = candidateCopy;
  selfCopy = self;
  v6 = candidateCopy;
  dispatch_async(_getInstrumentationQueue, v7);
}

- (int)_convertToORCHUserIdentityClassification:(id)classification
{
  classificationCopy = classification;
  if ([classificationCopy isEqualToString:SAUserIdentityClassificationConfidentValue])
  {
    v4 = 1;
  }

  else if ([classificationCopy isEqualToString:SAUserIdentityClassificationKnownValue])
  {
    v4 = 2;
  }

  else if ([classificationCopy isEqualToString:SAUserIdentityClassificationUnsure1Value])
  {
    v4 = 3;
  }

  else if ([classificationCopy isEqualToString:SAUserIdentityClassificationUnsureNValue])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_buildORCHClientEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(ORCHSchemaORCHClientEvent);
  v5 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:eventCopy];

  [v5 setRequestId:v6];
  [v4 setEventMetadata:v5];

  return v4;
}

- (void)_sync_syncAnchorKeys:(id)keys forceReset:(BOOL)reset reasons:(id)reasons
{
  keysCopy = keys;
  reasonsCopy = reasons;
  v58 = keysCopy;
  if (sub_100009F40())
  {
    *v92 = 0;
    *&v92[8] = v92;
    *&v92[16] = 0x3032000000;
    v93 = sub_100075AB8;
    v94 = sub_100075AC8;
    v95 = [keysCopy mutableCopy];
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100075AD0;
    v70[3] = &unk_10050F608;
    resetCopy = reset;
    v73 = v92;
    v74 = &v76;
    v8 = reasonsCopy;
    v71 = v8;
    selfCopy = self;
    v56 = objc_retainBlock(v70);
    _syncManager = [(ADCommandCenter *)self _syncManager];
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
            _serviceManager = [(ADCommandCenter *)self _serviceManager];
            v18 = [_serviceManager serviceForSyncAnchorKey:v16];
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
            v31 = [_syncManager syncKeysForReason:v30];
            [v22 addObjectsFromArray:v31];
            v32 = v77;
            if (v77[3])
            {
              v33 = 1;
            }

            else
            {
              v33 = [_syncManager shouldIncludeAllKnownSiriKitAnchorsForReason:v30];
              v32 = v77;
            }

            *(v32 + 24) = v33;
            if ([_syncManager shouldSyncEverythingForReason:v30])
            {
              sub_1002F36B4(v31);
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v66 objects:v91 count:16];
        }

        while (v27);
      }

      allObjects = [v22 allObjects];
      v35 = [allObjects mutableCopy];
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

    _serviceManager2 = [(ADCommandCenter *)self _serviceManager];
    v48 = [_syncManager shouldSyncThirdPartyUserVocabularyForSyncKeys:*(*&v92[8] + 40)];
    v49 = [_syncManager shouldSyncIntentPolicyForSyncKeys:*(*&v92[8] + 40)];
    v50 = v49;
    if (v48)
    {
      allVocabSyncInfo = [_serviceManager2 allVocabSyncInfo];
      if (![allVocabSyncInfo count])
      {
        v80 = @"com.apple.siri.vocabularyupdates";
        v52 = [NSArray arrayWithObjects:&v80 count:1];
        sub_1002F3A14(v52);
      }

      if ((v50 & 1) == 0)
      {
        v53 = [(ADCommandCenter *)self _appMetaDataListFromVocabSources:allVocabSyncInfo appIdentifyingInfoList:0];
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

      allVocabSyncInfo = 0;
    }

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100075D20;
    v60[3] = &unk_10050F630;
    v60[4] = self;
    v61 = v56;
    [(ADCommandCenter *)self _fetchAllAppSourcesForSyncingWithCustomVocabInfo:allVocabSyncInfo completion:v60];

    goto LABEL_60;
  }

  v23 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *v92 = 136315394;
    *&v92[4] = "[ADCommandCenter(Sync) _sync_syncAnchorKeys:forceReset:reasons:]";
    *&v92[12] = 2112;
    *&v92[14] = keysCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Sync not allowed - posting sync finished notification for %@", v92, 0x16u);
  }

  v24 = [NSNotification notificationWithName:@"ADSyncFinishedNotification" object:keysCopy];
  v25 = +[NSNotificationCenter defaultCenter];
  [v25 postNotification:v24];

LABEL_64:
}

- (BOOL)_sync_hasCommandForRefId:(id)id
{
  idCopy = id;
  if ([(ADCommandCenter *)self _hasOutstandingSyncChunkId:idCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(ADCommandCenter *)self _hasOutstandingAnchorsRequestId:idCopy];
  }

  return v5;
}

- (void)_sync_assistantLoadedSyncRequest:(BOOL)request
{
  requestCopy = request;
  if (sub_100009F40())
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADCommandCenter(Sync) _sync_assistantLoadedSyncRequest:]";
      v12 = 1024;
      v13 = requestCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %d", &v10, 0x12u);
    }

    _syncManager = [(ADCommandCenter *)self _syncManager];
    if (([_syncManager isSyncing] & 1) == 0)
    {
      _sessionManager = [(ADCommandCenter *)self _sessionManager];
      [_sessionManager beginUpdatingAssistantData];
    }

    if (requestCopy)
    {
      _syncManager2 = [(ADCommandCenter *)self _syncManager];
      v9 = [_syncManager2 syncKeysForReason:@"requested_by_server"];
      sub_1002F36B4(v9);
    }
  }
}

- (void)_sync_commandIgnored:(id)ignored
{
  refId = [ignored refId];
  [(ADCommandCenter *)self _cleanUpForFailureCommandWithRefId:refId];
}

- (void)_sync_commandFailed:(id)failed
{
  refId = [failed refId];
  [(ADCommandCenter *)self _cleanUpForFailureCommandWithRefId:refId];
}

- (void)_cleanUpForFailureCommandWithRefId:(id)id
{
  idCopy = id;
  [(ADCommandCenter *)self _removeOutstandingAnchorsRequestId:idCopy];
  [(ADCommandCenter *)self _removeOutstandingSyncChunkId:idCopy];

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

  _syncManager = [(ADCommandCenter *)self _syncManager];
  getAnchorsRequest = [_syncManager getAnchorsRequest];

  if (!getAnchorsRequest)
  {
    if ([_syncManager isSyncing])
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

- (void)syncManagerDidResetInProgressSync:(id)sync
{
  _currentClient = [(ADCommandCenter *)self _currentClient];

  if (!_currentClient)
  {

    [(ADCommandCenter *)self _resetServices];
  }
}

- (void)syncManager:(id)manager finishedSyncForKeys:(id)keys postNotification:(BOOL)notification
{
  notificationCopy = notification;
  managerCopy = manager;
  keysCopy = keys;
  if (notificationCopy)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = [NSNotification notificationWithName:@"ADSyncFinishedNotification" object:keysCopy];
    [v10 postNotification:v11];
  }

  sub_100216038(@"sync_flag");
  queuedAnchors = [managerCopy queuedAnchors];
  queuedReasons = [managerCopy queuedReasons];
  _syncManager = [(ADCommandCenter *)self _syncManager];
  isSyncing = [_syncManager isSyncing];

  if ((isSyncing & 1) == 0)
  {
    if ([queuedAnchors count])
    {
      [managerCopy clearQueuedAnchorsAndReasons];
      [managerCopy setGetAnchorsRequest:0];
      allObjects = [queuedReasons allObjects];
      [managerCopy prepareSyncWithAnchors:queuedAnchors forReasons:allObjects delegate:self];
    }

    else
    {
      if (self->_needsToSendSyncFinished)
      {
        self->_needsToSendSyncFinished = 0;
        v17 = objc_alloc_init(SASyncFinished);
        [(ADCommandCenter *)self _sendCommandToServer:v17];

        _currentRequest = [(ADCommandCenter *)self _currentRequest];

        if (!_currentRequest)
        {
          _sessionManager = [(ADCommandCenter *)self _sessionManager];
          [_sessionManager setHasActiveRequest:0];
        }
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000765FC;
      v20[3] = &unk_100516750;
      v20[4] = self;
      v21 = keysCopy;
      sub_1002F3384(v20);
    }
  }
}

- (void)syncManager:(id)manager chunkForSyncInfo:(id)info chunkInfo:(id)chunkInfo
{
  managerCopy = manager;
  infoCopy = info;
  chunkInfoCopy = chunkInfo;
  v10 = +[ADDaemon sharedDaemon];
  [v10 keepAlive];

  self->_needsToSendSyncFinished = 1;
  v11 = objc_alloc_init(SASyncChunk);
  v12 = SiriCoreUUIDStringCreate();
  [v11 setAceId:v12];

  v13 = [infoCopy key];
  [v11 setKey:v13];

  appMetadata = [infoCopy appMetadata];
  [v11 setAppMetaData:appMetadata];

  v15 = [chunkInfoCopy pre];
  [v11 setPreGen:v15];

  post = [chunkInfoCopy post];
  [v11 setPostGen:post];

  validity = [chunkInfoCopy validity];
  [v11 setValidity:validity];

  v18 = objc_autoreleasePoolPush();
  toAdd = [chunkInfoCopy toAdd];
  toRemove = [chunkInfoCopy toRemove];
  if (toAdd)
  {
    v21 = [AceObject aceObjectArrayWithDictionaryArray:toAdd baseClass:objc_opt_class()];
    [v11 setToAdd:v21];

    if (toRemove)
    {
LABEL_3:
      v22 = [AceObject aceObjectArrayWithDictionaryArray:toRemove baseClass:objc_opt_class()];
      [v11 setToRemove:v22];

      goto LABEL_6;
    }
  }

  else
  {
    [v11 setToAdd:0];
    if (toRemove)
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
  aceId = [v11 aceId];
  [(ADCommandCenter *)self _addOutstandingSyncChunkId:aceId];
}

- (void)_saSyncChunkAccepted:(id)accepted completion:(id)completion
{
  acceptedCopy = accepted;
  completionCopy = completion;
  v8 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter(Sync) _saSyncChunkAccepted:completion:]";
    v12 = 2112;
    v13 = acceptedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  refId = [acceptedCopy refId];
  [(ADCommandCenter *)self _removeOutstandingSyncChunkId:refId];

  [(ADCommandCenter *)self _sync_continueIfConditionsMet];
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saSyncChunkDenied:(id)denied completion:(id)completion
{
  deniedCopy = denied;
  completionCopy = completion;
  v8 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "[ADCommandCenter(Sync) _saSyncChunkDenied:completion:]";
    v14 = 2112;
    v15 = deniedCopy;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@", &v12, 0x16u);
  }

  _syncManager = [(ADCommandCenter *)self _syncManager];
  current = [deniedCopy current];
  [_syncManager cancelSyncForAnchor:current];

  refId = [deniedCopy refId];
  [(ADCommandCenter *)self _removeOutstandingSyncChunkId:refId];

  [(ADCommandCenter *)self _sync_continueIfConditionsMet];
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saSyncGetAnchorsResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v8 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[ADCommandCenter(Sync) _saSyncGetAnchorsResponse:completion:]";
    v17 = 2112;
    v18 = responseCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v15, 0x16u);
  }

  refId = [responseCopy refId];
  [(ADCommandCenter *)self _removeOutstandingAnchorsRequestId:refId];
  _syncManager = [(ADCommandCenter *)self _syncManager];
  getAnchorsRequest = [_syncManager getAnchorsRequest];
  aceId = [getAnchorsRequest aceId];

  if ([aceId isEqualToString:refId])
  {
    getAnchorsRequest2 = [_syncManager getAnchorsRequest];
    [(ADCommandCenter *)self _handleValidatedSyncGetAnchorsResponse:responseCopy forGetAnchors:getAnchorsRequest2];

    [_syncManager setGetAnchorsRequest:0];
    if (!completionCopy)
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
    v18 = refId;
    v19 = 2112;
    v20 = aceId;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s %@ isn't the get anchors response we were expecting. getAnchorsRequest:%@", &v15, 0x20u);
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (completionCopy)
  {
LABEL_8:
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_9:
}

- (void)_requestAnchorsForKeys:(id)keys appSources:(id)sources watchAppSources:(id)appSources forceReset:(BOOL)reset includeAllKnownAnchors:(BOOL)anchors reasons:(id)reasons
{
  anchorsCopy = anchors;
  resetCopy = reset;
  keysCopy = keys;
  sourcesCopy = sources;
  appSourcesCopy = appSources;
  reasonsCopy = reasons;
  v18 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
    *&buf[12] = 2112;
    *&buf[14] = keysCopy;
    *&buf[22] = 2112;
    v73 = reasonsCopy;
    LOWORD(v74) = 1024;
    *(&v74 + 2) = resetCopy;
    HIWORD(v74) = 1024;
    LODWORD(v75) = anchorsCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Asking for anchor keys=%@ reasons=%@ forceReset=%d includeAll=%d", buf, 0x2Cu);
  }

  v19 = [NSPredicate predicateWithBlock:&stru_10050F5E0];
  v20 = [keysCopy filteredArrayUsingPredicate:v19];

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
      v73 = reasonsCopy;
      LOWORD(v74) = 1024;
      *(&v74 + 2) = resetCopy;
      HIWORD(v74) = 1024;
      LODWORD(v75) = anchorsCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Asking for anchor filteredKeys=%@ reasons=%@ forceReset=%d includeAll=%d", buf, 0x2Cu);
    }

    _syncManager = [(ADCommandCenter *)self _syncManager];
    v64 = v20;
    v61 = _syncManager;
    if (resetCopy)
    {
      v25 = _syncManager;
      if ([_syncManager isSyncing])
      {
        v26 = AFSiriLogContextSync;
        if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Not forcing a reset since we're already in the middle of a sync. Wait and try again", buf, 0xCu);
        }

        resetCopy = 0;
      }

      else
      {
        resetCopy = 1;
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

    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    [_sessionManager beginUpdatingAssistantData];

    v29 = objc_alloc_init(SASyncGetAnchors);
    [v29 setSources:v64];
    v60 = [reasonsCopy componentsJoinedByString:@"+"];
    [v29 setSyncReason:?];
    [v29 setIncludeAllKnownAnchors:anchorsCopy];
    v63 = sourcesCopy;
    [v29 setAppMetaDataList:sourcesCopy];
    [v29 setWatchAppMetaDataList:appSourcesCopy];
    v30 = SiriCoreUUIDStringCreate();
    [v29 setAceId:v30];

    v31 = [NSMutableString stringWithCapacity:128];
    sub_100214FE4(resetCopy, v31, @"ForceReset");
    v32 = +[AFPreferences sharedPreferences];
    v33 = +[ADPreferences sharedPreferences];
    languageCode = [v33 languageCode];

    sub_100214FE4([v32 siriDataSharingOptInStatus] == 1, v31, @"OptedIn");
    v35 = +[ADAssetManager sharedInstance];
    v36 = [v35 assetsAvailableStatusForLanguage:languageCode];

    sub_100214FE4([AFUtilitiesWrapper uodStatusSupportedFull:v36 languageCode:languageCode], v31, @"FullUodCapable");
    if (AFIsIOS())
    {
      sub_100214FE4([v32 isSyncNeededForWatch], v31, @"IsSyncNeededForWatch");
      sub_100214FE4([v32 deviceHasAtvInHome], v31, @"AtvInHome");
      sub_100214FE4([v32 deviceHasHomePodInHome], v31, @"HomePodInHome");
    }

    v62 = reasonsCopy;
    v37 = sub_10000ABF4(languageCode);
    sub_100214FE4(v37, v31, @"SyncDisabledViaTrial");
    if ([v32 dictationIsEnabled])
    {
      sub_100214FE4(+[AFUtilitiesWrapper deviceSupportsOnDeviceDictation], v31, @"SupportsDeviceDictation");
      v38 = sub_100214E4C(v32);
      sub_100214FE4(v38, v31, @"ServerDictationRequired");
    }

    v39 = appSourcesCopy;
    v40 = keysCopy;
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
    aceId = [v29 aceId];
    v47 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[ADCommandCenter(Sync) _requestAnchorsForKeys:appSources:watchAppSources:forceReset:includeAllKnownAnchors:reasons:]";
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Waiting for sync queue to start sync", buf, 0xCu);
    }

    syncAnchorsRequestQueue = self->_syncAnchorsRequestQueue;
    keysCopy = v40;
    appSourcesCopy = v39;
    reasonsCopy = v62;
    sourcesCopy = v63;
    if (!syncAnchorsRequestQueue)
    {
      _queue = [(ADCommandCenter *)self _queue];
      v50 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v51 = dispatch_queue_attr_make_with_qos_class(v50, QOS_CLASS_UNSPECIFIED, 0);

      if (_queue)
      {
        v52 = dispatch_queue_create_with_target_V2("SyncAnchorsQueue", v51, _queue);
      }

      else
      {
        v52 = dispatch_queue_create("SyncAnchorsQueue", v51);
      }

      v53 = v52;

      v54 = self->_syncAnchorsRequestQueue;
      self->_syncAnchorsRequestQueue = v53;

      syncAnchorsRequestQueue = self->_syncAnchorsRequestQueue;
      sourcesCopy = v63;
    }

    v55 = syncAnchorsRequestQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000776CC;
    block[3] = &unk_100516250;
    v66 = aceId;
    v67 = v62;
    v68 = v55;
    selfCopy = self;
    v70 = v29;
    v71 = v61;
    v56 = aceId;
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
    *&buf[14] = reasonsCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Nothing to sync for reasons=%@", buf, 0x16u);
  }
}

- (void)_fetchAllAppSourcesForSyncingWithCustomVocabInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    selfCopy = self;
    v27 = objc_alloc_init(NSMutableArray);
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [NSString alloc];
    v12 = +[NSUUID UUID];
    v13 = [v11 initWithFormat:@"ADCommandCenterSyncAppSourcesFetching-%@", v12];

    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String, v15);

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
    v30 = selfCopy;
    v31 = infoCopy;
    v32 = v19;
    v33 = v10;
    v34 = v8;
    v35 = completionCopy;
    v22 = v8;
    v23 = v10;
    v24 = v19;
    v25 = v27;
    dispatch_group_notify(v20, v18, block);
  }
}

- (id)_appMetaDataListFromVocabSources:(id)sources appIdentifyingInfoList:(id)list
{
  selfCopy = self;
  sourcesCopy = sources;
  listCopy = list;
  v23 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(listCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = listCopy;
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
        bundleId = [v10 bundleId];
        v12 = [LSApplicationProxy applicationProxyForIdentifier:bundleId];

        v13 = objc_alloc_init(SASyncAppMetaData);
        [v13 setAppIdentifyingInfo:v10];
        v14 = [NSNumber numberWithBool:sub_10007840C(v12)];
        [v13 setDeveloperMode:v14];

        clientIdentifier = [v10 clientIdentifier];
        if (clientIdentifier)
        {
          [v23 setObject:v13 forKey:clientIdentifier];
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
  v26 = selfCopy;
  v17 = v23;
  [sourcesCopy enumerateKeysAndObjectsUsingBlock:v24];
  allValues = [v17 allValues];

  return allValues;
}

- (id)_appMetaDataForAppProxy:(id)proxy clientIdentifier:(id)identifier syncSlots:(id)slots
{
  slotsCopy = slots;
  identifierCopy = identifier;
  proxyCopy = proxy;
  v10 = objc_alloc_init(SASyncAppMetaData);
  v11 = sub_1000784C8(proxyCopy, identifierCopy);

  [v10 setAppIdentifyingInfo:v11];
  [v10 setSyncSlots:slotsCopy];

  v12 = sub_10007840C(proxyCopy);
  v13 = [NSNumber numberWithBool:v12];
  [v10 setDeveloperMode:v13];

  return v10;
}

- (void)_handleValidatedSyncGetAnchorsResponse:(id)response forGetAnchors:(id)anchors
{
  responseCopy = response;
  anchorsCopy = anchors;
  _syncManager = [(ADCommandCenter *)self _syncManager];
  v9 = [(ADCommandCenter *)self _allAnchorsFromRequest:anchorsCopy andResponse:responseCopy];
  syncReason = [anchorsCopy syncReason];

  v11 = [syncReason componentsSeparatedByString:@"+"];

  if ([_syncManager isSyncing])
  {
    v12 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      aceId = [responseCopy aceId];
      _currentRequest = [(ADCommandCenter *)self _currentRequest];
      currentRequestId = [_currentRequest currentRequestId];
      v17 = 136315650;
      v18 = "[ADCommandCenter(Sync) _handleValidatedSyncGetAnchorsResponse:forGetAnchors:]";
      v19 = 2112;
      v20 = aceId;
      v21 = 2112;
      v22 = currentRequestId;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Queuing anchors from %@ because we are already syncing; active request: %@", &v17, 0x20u);
    }

    [_syncManager addQueuedAnchors:v9 forReasons:v11];
  }

  else
  {
    [_syncManager prepareSyncWithAnchors:v9 forReasons:v11 delegate:self];
  }
}

- (id)_allAnchorsFromRequest:(id)request andResponse:(id)response
{
  responseCopy = response;
  v5 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = responseCopy;
  anchors = [responseCopy anchors];
  v7 = [anchors countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(anchors);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 _af_isValid])
        {
          _af_normalizedKey = [v11 _af_normalizedKey];
          [v5 setObject:v11 forKey:_af_normalizedKey];
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

      v8 = [anchors countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v14 = +[ADSyncDeny sharedInstance];
  [v14 filterDeniedAnchorsFrom:v5 includingNewRestrictionsFromResponse:v17];

  allValues = [v5 allValues];

  return allValues;
}

- (BOOL)_hasOutstandingSyncChunkId:(id)id
{
  if (id)
  {
    return [(NSMutableSet *)self->_outstandingSyncChunks containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_removeOutstandingSyncChunkId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    [(NSMutableSet *)self->_outstandingSyncChunks removeObject:idCopy];
    if (![(NSMutableSet *)self->_outstandingSyncChunks count])
    {
      outstandingSyncChunks = self->_outstandingSyncChunks;
      self->_outstandingSyncChunks = 0;
    }
  }

  _objc_release_x1();
}

- (void)_addOutstandingSyncChunkId:(id)id
{
  idCopy = id;
  outstandingSyncChunks = self->_outstandingSyncChunks;
  v8 = idCopy;
  if (!outstandingSyncChunks)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_outstandingSyncChunks;
    self->_outstandingSyncChunks = v6;

    idCopy = v8;
    outstandingSyncChunks = self->_outstandingSyncChunks;
  }

  [(NSMutableSet *)outstandingSyncChunks addObject:idCopy];
}

- (BOOL)_hasOutstandingAnchorsRequestId:(id)id
{
  if (id)
  {
    return [(NSMutableSet *)self->_outstandingAnchorsRequests containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_removeOutstandingAnchorsRequestId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    [(NSMutableSet *)self->_outstandingAnchorsRequests removeObject:idCopy];
    if (![(NSMutableSet *)self->_outstandingAnchorsRequests count])
    {
      outstandingAnchorsRequests = self->_outstandingAnchorsRequests;
      self->_outstandingAnchorsRequests = 0;
    }
  }

  _objc_release_x1();
}

- (void)_addOutstandingAnchorsRequestId:(id)id
{
  idCopy = id;
  outstandingAnchorsRequests = self->_outstandingAnchorsRequests;
  v8 = idCopy;
  if (!outstandingAnchorsRequests)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_outstandingAnchorsRequests;
    self->_outstandingAnchorsRequests = v6;

    idCopy = v8;
    outstandingAnchorsRequests = self->_outstandingAnchorsRequests;
  }

  [(NSMutableSet *)outstandingAnchorsRequests addObject:idCopy];
}

- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion
{
  v6 = *(completion + 2);
  if (policy == 10)
  {
    v6(completion, snapshot, metadata);
  }

  else
  {
    (v6)(completion, 0, 0, metadata);
  }
}

- (void)notificationManagerDidChangeBulletins:(id)bulletins
{
  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007AE00;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(_queue, block);
}

- (void)fetchBulletinsOnLockScreenForNotificationManager:(id)manager completion:(id)completion
{
  completionCopy = completion;
  _queue = [(ADCommandCenter *)self _queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007AEBC;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(_queue, v8);
}

- (void)contextManagerDidUpdateBackgroundContext:(id)context
{
  contextCopy = context;
  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007AFE0;
  block[3] = &unk_10051DFE8;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(_queue, block);
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

- (void)_context_fetchApplicationContextForApplicationInfos:(id)infos completion:(id)completion
{
  completionCopy = completion;
  infosCopy = infos;
  _contextManager = [(ADCommandCenter *)self _contextManager];
  _context_deviceState = [(ADCommandCenter *)self _context_deviceState];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007B1A0;
  v11[3] = &unk_10051A490;
  v12 = completionCopy;
  v10 = completionCopy;
  [_contextManager getAppContextForDeviceState:_context_deviceState applicationInfos:infosCopy completion:v11];
}

- (void)_context_acknowledgeBulletinForObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    _contextManager = [(ADCommandCenter *)self _contextManager];
    [_contextManager markBulletinAsAcknolwedgedForDomainObject:objectCopy];
  }
}

- (void)_context_setApplicationContextForApplicationInfos:(id)infos withRefId:(id)id
{
  infosCopy = infos;
  idCopy = id;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADCommandCenter(Context) _context_setApplicationContextForApplicationInfos:withRefId:]";
    v23 = 2112;
    v24 = infosCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  [(ADCommandCenter *)self _ensureBackgroundContextSentToServer];
  if (idCopy)
  {
    v9 = idCopy;
  }

  else
  {
    v9 = SiriCoreUUIDStringCreate();
  }

  v10 = v9;
  _contextManager = [(ADCommandCenter *)self _contextManager];
  _context_deviceState = [(ADCommandCenter *)self _context_deviceState];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10007B3CC;
  v18 = &unk_10050F810;
  selfCopy = self;
  v20 = v10;
  v13 = v10;
  [_contextManager getAppContextForDeviceState:_context_deviceState applicationInfos:infosCopy completion:&v15];

  selfCopy = [(ADCommandCenter *)self _sendContextPromiseForTypes:1 withAceId:v13, v15, v16, v17, v18, selfCopy];
}

- (int64_t)_context_deviceState
{
  _deviceIsLocked = [(ADCommandCenter *)self _deviceIsLocked];
  if ([(ADCommandCenter *)self _isInStarkMode])
  {
    return _deviceIsLocked | 2;
  }

  else
  {
    return _deviceIsLocked;
  }
}

- (BOOL)_context_bundleIdHasSupportForCarPlayRequiredMessageIntents:(id)intents
{
  intentsCopy = intents;
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
  v6 = [LSApplicationProxy applicationProxyForIdentifier:intentsCopy];
  v7 = [v4 appInfoWithAppProxy:v6];

  supportedIntents = [v7 supportedIntents];
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
    if (![supportedIntents containsObject:v12])
    {
      v17 = 0;
      goto LABEL_12;
    }

    supportedIntents2 = [v7 supportedIntents];
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
      v17 = [supportedIntents2 containsObject:*v14];

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

- (void)_context_setOverriddenApplicationContext:(id)context withContext:(id)withContext
{
  contextCopy = context;
  withContextCopy = withContext;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v59 = "[ADCommandCenter(Context) _context_setOverriddenApplicationContext:withContext:]";
    v60 = 2112;
    v61 = contextCopy;
    v62 = 2112;
    v63 = withContextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  [(ADCommandCenter *)self _ensureBackgroundContextSentToServer];
  if (contextCopy)
  {
    v9 = objc_alloc_init(SASyncAppIdentifyingInfo);
    [v9 setBundleId:contextCopy];
    v10 = objc_alloc_init(SAAppInfo);
    [v10 setAppIdentifyingInfo:v9];
    v11 = objc_alloc_init(NSMutableArray);
    dictionary = [v10 dictionary];
    v57 = dictionary;
    v13 = [NSArray arrayWithObjects:&v57 count:1];
    [v11 addObject:v13];

    v14 = [(ADCommandCenter *)self _sendContextPromiseForTypes:1];
    v15 = dispatch_group_create();
    if ([contextCopy caseInsensitiveCompare:@"com.apple.mobilePhone"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        identifier = v15;
        v16 = v10;
        v17 = withContextCopy;
        saNotificationObject = [v17 saNotificationObject];
        v19 = saNotificationObject;
        if (saNotificationObject)
        {
          v42 = v14;
          v56 = saNotificationObject;
          v20 = [NSArray arrayWithObjects:&v56 count:1];
          v21 = [AceObject dictionaryArrayWithAceObjectArray:v20];
          [v11 addObject:v21];

          v14 = v42;
        }

        v10 = v16;
        v15 = identifier;
      }

      else if (withContextCopy)
      {
        if ([contextCopy caseInsensitiveCompare:@"com.apple.MobileSMS"]&& ![(ADCommandCenter *)self _context_bundleIdHasSupportForCarPlayRequiredMessageIntents:contextCopy])
        {
          if (![contextCopy caseInsensitiveCompare:@"com.apple.siri"])
          {
            v55 = withContextCopy;
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
          _contextManager = [(ADCommandCenter *)self _contextManager];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_10007C42C;
          v48[3] = &unk_100514C98;
          v48[4] = self;
          v49 = v11;
          v50 = v15;
          [_contextManager getDomainObjectFromMessageContext:withContextCopy completion:v48];
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
        v22 = withContextCopy;
      }

      else
      {
        v22 = 0;
      }

      v24 = objc_alloc_init(SAPhoneSearch);
      [v24 setIsNew:&off_100533758];
      date = [v22 date];
      [v24 setStart:date];

      endDate = [v22 endDate];
      [v24 setEnd:endDate];

      v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v22 sectionSubtype] == 3);
      [v24 setVoiceMail:v27];

      _serviceManager = [(ADCommandCenter *)self _serviceManager];
      encodedClassName = [v24 encodedClassName];
      v30 = [_serviceManager serviceForDomain:@"com.apple.ace.phone" command:encodedClassName];

      if (v30)
      {
        v31 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v32 = v31;
          identifier = [v30 identifier];
          *buf = 136315394;
          v59 = "[ADCommandCenter(Context) _context_setOverriddenApplicationContext:withContext:]";
          v60 = 2112;
          v61 = identifier;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s Dispatching phone search for overridden application context %@", buf, 0x16u);
        }

        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10007C288;
        v51[3] = &unk_10050F7E8;
        v52 = v24;
        selfCopy = self;
        v54 = v15;
        [v30 handleCommand:v52 forDomain:@"com.apple.ace.phone" executionContext:0 reply:v51];
      }

      v10 = v40;
      v9 = v41;
      v14 = v43;
    }

    _queue = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007C508;
    block[3] = &unk_10051DB68;
    v45 = v11;
    v46 = v14;
    selfCopy2 = self;
    v34 = v14;
    v35 = v11;
    dispatch_group_notify(v15, _queue, block);
  }
}

- (void)_getOrderedContextDictionaryForTransformedAFApplicationContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = objc_alloc_init(NSMutableArray);
    associatedBundleIdentifier = [contextCopy associatedBundleIdentifier];
    if (associatedBundleIdentifier)
    {
      v9 = objc_alloc_init(SASyncAppIdentifyingInfo);
      [v9 setBundleId:associatedBundleIdentifier];
      v10 = objc_alloc_init(SAAppInfo);
      [v10 setAppIdentifyingInfo:v9];
      dictionary = [v10 dictionary];
      v15 = dictionary;
      v12 = [NSArray arrayWithObjects:&v15 count:1];
      [v7 addObject:v12];
    }

    aceContexts = [contextCopy aceContexts];
    if (aceContexts)
    {
      v14 = [AceObject dictionaryArrayWithAceObjectArray:aceContexts];
      [v7 addObject:v14];
    }

    completionCopy[2](completionCopy, v7);
  }
}

- (void)_getTransformedApplicationContextForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  if (completion)
  {
    completionCopy = completion;
    associatedBundleIdentifier = [contextCopy associatedBundleIdentifier];
    bulletin = [contextCopy bulletin];
    aceContext = [contextCopy aceContext];
    contextDictionary = [contextCopy contextDictionary];
    v12 = contextDictionary;
    if (bulletin)
    {
      saNotificationObject = [bulletin saNotificationObject];
      v14 = saNotificationObject;
      if (saNotificationObject)
      {
        v24 = saNotificationObject;
        v15 = [NSArray arrayWithObjects:&v24 count:1];
        if (!associatedBundleIdentifier)
        {
          associatedBundleIdentifier = [v14 applicationId];
        }
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_16;
    }

    if (contextDictionary && (![associatedBundleIdentifier caseInsensitiveCompare:@"com.apple.MobileSMS"] || -[ADCommandCenter _context_bundleIdHasSupportForCarPlayRequiredMessageIntents:](self, "_context_bundleIdHasSupportForCarPlayRequiredMessageIntents:", associatedBundleIdentifier)))
    {
      v16 = AFMessagesGetAceDomainObjectsFromContext();
    }

    else
    {
      if (!aceContext)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v23 = aceContext;
      v16 = [NSArray arrayWithObjects:&v23 count:1];
    }

    v15 = v16;
LABEL_16:
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10007C978;
    v20[3] = &unk_100511B78;
    v21 = associatedBundleIdentifier;
    v22 = v15;
    v17 = v15;
    v18 = associatedBundleIdentifier;
    v19 = [contextCopy mutatedCopyWithMutator:v20];
    completionCopy[2](completionCopy, v19);
  }
}

- (void)_fetchAndSendApplicationContextForApplicationInfos:(id)infos fetchedOrderedContextDictionaries:(id)dictionaries applicationContexts:(id)contexts refID:(id)d
{
  infosCopy = infos;
  dictionariesCopy = dictionaries;
  contextsCopy = contexts;
  dCopy = d;
  v14 = SiriCoreUUIDStringCreate();
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v28 = "[ADCommandCenter(Context) _fetchAndSendApplicationContextForApplicationInfos:fetchedOrderedContextDictionaries:applicationContexts:refID:]";
    v29 = 2112;
    v30 = infosCopy;
    v31 = 2112;
    v32 = dCopy;
    v33 = 2112;
    v34 = v14;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #context Starting app context fetch for - %@ with refId - %@, aceId - %@", buf, 0x2Au);
  }

  _contextManager = [(ADCommandCenter *)self _contextManager];
  _context_deviceState = [(ADCommandCenter *)self _context_deviceState];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007CBC8;
  v22[3] = &unk_10050F7C0;
  v22[4] = self;
  v23 = dictionariesCopy;
  v24 = dCopy;
  v25 = v14;
  v26 = contextsCopy;
  v18 = contextsCopy;
  v19 = v14;
  v20 = dCopy;
  v21 = dictionariesCopy;
  [_contextManager getAppContextForDeviceState:_context_deviceState applicationInfos:infosCopy completion:v22];
}

- (void)_context_fetchAppicationContextForApplicationInfo:(id)info supplementalContext:(id)context refID:(id)d
{
  infoCopy = info;
  contextCopy = context;
  dCopy = d;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v46 = "[ADCommandCenter(Context) _context_fetchAppicationContextForApplicationInfo:supplementalContext:refID:]";
    v47 = 2112;
    v48 = infoCopy;
    v49 = 2112;
    v50 = contextCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s fetching context from %@, additional context provided: %@", buf, 0x20u);
  }

  [(ADCommandCenter *)self _ensureBackgroundContextSentToServer];
  if (dCopy)
  {
    v12 = dCopy;
  }

  else
  {
    v12 = [(ADCommandCenter *)self _sendContextPromiseForTypes:1];
  }

  v13 = v12;
  v14 = objc_alloc_init(NSMutableArray);
  v15 = objc_alloc_init(NSMutableArray);
  if ([contextCopy count])
  {
    v16 = v14;
    v26 = v13;
    v28 = infoCopy;
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
    v27 = contextCopy;
    obj = contextCopy;
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
          selfCopy = self;
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

    _queue = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007D824;
    block[3] = &unk_1005180D8;
    block[4] = self;
    infoCopy = v28;
    v31 = v28;
    v32 = v15;
    v14 = v16;
    v33 = v16;
    v13 = v26;
    v34 = v26;
    dispatch_group_notify(v17, _queue, block);

    contextCopy = v27;
  }

  else
  {
    [(ADCommandCenter *)self _fetchAndSendApplicationContextForApplicationInfos:infoCopy fetchedOrderedContextDictionaries:v15 applicationContexts:v14 refID:v13];
  }
}

- (void)_context_setApplicationContext:(id)context
{
  contextCopy = context;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v48 = "[ADCommandCenter(Context) _context_setApplicationContext:]";
    v49 = 2112;
    v50 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  [(ADCommandCenter *)self _ensureBackgroundContextSentToServer];
  selfCopy = self;
  [(ADCommandCenter *)self _sendCommandToServer:contextCopy];
  v32 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = contextCopy;
  obj = [contextCopy orderedContext];
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
                    appIdentifyingInfo = [v18 appIdentifyingInfo];
                    bundleId = [appIdentifyingInfo bundleId];

                    v14 = bundleId;
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
  [v28 registerContextTransformer:selfCopy forType:v24];
  [v28 donateContext:v22 withMetadata:v27 pushToRemote:0];
}

- (void)_context_setSTApplicationContext:(id)context
{
  contextCopy = context;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADCommandCenter(Context) _context_setSTApplicationContext:]";
    v12 = 2112;
    v13 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (contextCopy)
  {
    _aceValue = [contextCopy _aceValue];
    if ([_aceValue count])
    {
      v7 = objc_alloc_init(SASetApplicationContext);
      v9 = _aceValue;
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [v7 setOrderedContext:v8];

      [(ADCommandCenter *)self _sendCommandToServer:v7];
    }
  }
}

- (void)_context_willSetApplicationContextWithRefId:(id)id
{
  idCopy = id;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter(Context) _context_willSetApplicationContextWithRefId:]";
    v9 = 2112;
    v10 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  v6 = [(ADCommandCenter *)self _sendContextPromiseForTypes:1 withAceId:idCopy];
}

- (void)_ensureBackgroundContextSentToServer
{
  _contextManager = [(ADCommandCenter *)self _contextManager];
  backgroundContextIsDirty = [_contextManager backgroundContextIsDirty];

  if (backgroundContextIsDirty)
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

    _contextManager = [(ADCommandCenter *)self _contextManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007E1D4;
    v5[3] = &unk_10051E150;
    v5[4] = self;
    [_contextManager getContextSnapshotForCurrentRequestWithCompletion:v5];
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
  selfCopy = self;
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
    selfCopy2 = self;
    v17 = v6;
    [v10 fetchSiriRelatedNotificationPreviewRestrictedAppsWithCompletion:&v12];

    selfCopy2 = [(ADCommandCenter *)self _sendContextPromiseForTypes:16 withAceId:v5, v12, v13, v14, v15, selfCopy2];
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

  _contextManager = [(ADCommandCenter *)self _contextManager];
  [_contextManager clearAlertContextDirtyState];
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
  _queue = [(ADCommandCenter *)self _queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006C0A8;
  v17[3] = &unk_10050F6D0;
  p_buf = &buf;
  v23 = v33;
  v24 = v31;
  v18 = _contextManager;
  selfCopy = self;
  v20 = v9;
  v21 = v11;
  v14 = v11;
  v15 = v9;
  v16 = _contextManager;
  dispatch_group_notify(v5, _queue, v17);

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

  _contextManager = [(ADCommandCenter *)self _contextManager];
  [_contextManager keepReportingNowPlayingTimingEventsHeuristically];
  if ([_contextManager alertContextIsDirty])
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

  if ([_contextManager backgroundContextIsDirty])
  {
    [(ADCommandCenter *)self _setBackgroundContext];
  }

  [(ADCommandCenter *)self _setRestrictedAppContext];
}

- (void)_context_clearContextWithClearSiriKitContext:(BOOL)context
{
  contextCopy = context;
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
  if (contextCopy)
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
    aceId = [(SAClearContext *)self->_lastClearContext aceId];
    [v4 setRequestId:aceId];

    [(ADCommandCenter *)self _sendCommandToServer:v4];
    [(ADCommandCenter *)self _setBackgroundContext];
  }
}

- (id)_sendContextPromiseForTypes:(int64_t)types withAceId:(id)id
{
  typesCopy = types;
  idCopy = id;
  v7 = objc_alloc_init(SAContextPromise);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = v8;
  if (typesCopy)
  {
    [v8 addObject:SAContextTypeAPPLICATION_CONTEXTValue];
    if ((typesCopy & 2) == 0)
    {
LABEL_3:
      if ((typesCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((typesCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v9 addObject:SAContextTypeALERT_CONTEXTValue];
  if ((typesCopy & 4) == 0)
  {
LABEL_4:
    if ((typesCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v9 addObject:SAContextTypeBACKGROUND_CONTEXTValue];
  if ((typesCopy & 8) == 0)
  {
LABEL_5:
    if ((typesCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v9 addObject:SAContextTypeREQUEST_ORIGINValue];
  if ((typesCopy & 0x10) == 0)
  {
LABEL_6:
    if ((typesCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  [v9 addObject:SAContextTypeRESTRICTED_APP_CONTEXTValue];
  if ((typesCopy & 0x20) != 0)
  {
LABEL_7:
    [v9 addObject:SAContextTypeNL_ALERT_CONTEXTValue];
  }

LABEL_8:
  [v7 setPromiseTypes:v9];

  if (idCopy)
  {
    [v7 setAceId:idCopy];
  }

  else
  {
    v10 = SiriCoreUUIDStringCreate();
    [v7 setAceId:v10];
  }

  [(ADCommandCenter *)self _sendCommandToServer:v7];
  aceId = [v7 aceId];

  return aceId;
}

- (void)withContextManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    _queue = [(ADCommandCenter *)self _queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007F4FC;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = managerCopy;
    dispatch_async(_queue, v6);
  }
}

- (void)_notifyUSTForRequestCompleted:(id)completed
{
  completedCopy = completed;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter(UnifiedSiriTest) _notifyUSTForRequestCompleted:]";
    v9 = 2112;
    v10 = completedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Notify USTAgent for RequestCompleted with requestId '%@'", &v7, 0x16u);
  }

  _testAgent = [(ADCommandCenter *)self _testAgent];
  [_testAgent signalRequestCompletedForRequestId:completedCopy];
}

- (void)_notifyUSTForRequestStarted:(id)started
{
  startedCopy = started;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter(UnifiedSiriTest) _notifyUSTForRequestStarted:]";
    v9 = 2112;
    v10 = startedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Notify USTAgent for RequestStarted with requestId '%@'", &v7, 0x16u);
  }

  _testAgent = [(ADCommandCenter *)self _testAgent];
  [_testAgent signalRequestStartedWithRequestId:startedCopy];
}

- (void)_notifyUSTForAceCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    encodedClassName = [commandCopy encodedClassName];
    v9 = 136315394;
    v10 = "[ADCommandCenter(UnifiedSiriTest) _notifyUSTForAceCommand:]";
    v11 = 2112;
    v12 = encodedClassName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Notify USTAgent for AceObject '%@'", &v9, 0x16u);
  }

  _testAgent = [(ADCommandCenter *)self _testAgent];
  [_testAgent logAceEvent:commandCopy];
}

- (void)appLaunchHandler:(id)handler didLaunchAppForRequestId:(id)id
{
  idCopy = id;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADCommandCenter(NanoServices) appLaunchHandler:didLaunchAppForRequestId:]";
    v13 = 2112;
    v14 = idCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  _queue = [(ADCommandCenter *)self _queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001611B8;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = idCopy;
  v8 = idCopy;
  dispatch_async(_queue, v9);
}

- (void)taskmaster:(id)taskmaster didLaunchApplicationForRequestWithId:(id)id
{
  idCopy = id;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADCommandCenter(NanoServices) taskmaster:didLaunchApplicationForRequestWithId:]";
    v13 = 2112;
    v14 = idCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  _queue = [(ADCommandCenter *)self _queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100161308;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = idCopy;
  v8 = idCopy;
  dispatch_async(_queue, v9);
}

- (void)taskmaster:(id)taskmaster didReceivePunchoutOutcome:(id)outcome
{
  outcomeCopy = outcome;
  _queue = [(ADCommandCenter *)self _queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001613C8;
  v8[3] = &unk_10051E010;
  v9 = outcomeCopy;
  selfCopy = self;
  v7 = outcomeCopy;
  dispatch_async(_queue, v8);
}

- (void)_registerNanoServicesWithServiceManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(ADSiriAppLaunchRequestHandler);
  [(ADSiriAppLaunchRequestHandler *)v5 setDelegate:self];
  v6 = [ADServiceCommandType alloc];
  v7 = SAAppsGroupIdentifier;
  v144 = [(ADServiceCommandType *)v6 initWithDomainName:SAAppsGroupIdentifier className:SAAppsLaunchAppClassIdentifier];
  v8 = [ADSiriTaskService alloc];
  v9 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v10 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v11 = [(ADSiriTaskService *)v8 initWithCommandType:v144 requestTransformer:v9 responseTransformer:v10 requestHandler:v5];
  [managerCopy addService:v11];

  v12 = [ADServiceCommandType alloc];
  v140 = [(ADServiceCommandType *)v12 initWithDomainName:v7 className:SAAppsCheckRestrictionClassIdentifier];
  v13 = [ADSiriTaskService alloc];
  v14 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v15 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v16 = [(ADSiriTaskService *)v13 initWithCommandType:v140 requestTransformer:v14 responseTransformer:v15 requestHandler:v5];
  [managerCopy addService:v16];

  v17 = [ADServiceCommandType alloc];
  v18 = [(ADServiceCommandType *)v17 initWithDomainName:v7 className:SAAppsGetRestrictedAppsClassIdentifier];
  v19 = [ADSiriTaskService alloc];
  v20 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v21 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v22 = [(ADSiriTaskService *)v19 initWithCommandType:v18 requestTransformer:v20 responseTransformer:v21 requestHandler:v5];
  [managerCopy addService:v22];

  v23 = [ADServiceCommandType alloc];
  v24 = [(ADServiceCommandType *)v23 initWithDomainName:v7 className:SAAppsAppSearchClassIdentifier];
  v25 = [ADSiriTaskService alloc];
  v26 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v27 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v28 = [(ADSiriTaskService *)v25 initWithCommandType:v24 requestTransformer:v26 responseTransformer:v27 requestHandler:v5];
  [managerCopy addService:v28];

  v29 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.MobileSMS"];
  [v29 setDelegate:self];
  v30 = objc_alloc_init(ADMessagesTransformer);
  v31 = [ADServiceCommandType alloc];
  v32 = SASmsGroupIdentifier;
  v33 = [(ADServiceCommandType *)v31 initWithDomainName:SASmsGroupIdentifier className:SASmsDraftShowClassIdentifier];
  v34 = [ADSiriTaskService alloc];
  v35 = objc_alloc_init(ADSiriRequestSucceededResponseTransformer);
  v36 = [(ADSiriTaskService *)v34 initWithCommandType:v33 requestTransformer:v30 responseTransformer:v35 requestHandler:v29];
  [managerCopy addService:v36];

  v37 = [ADServiceCommandType domainObjectCommitTypeForDomainNamed:v32];
  v38 = [[ADSiriTaskService alloc] initWithCommandType:v37 requestTransformer:v30 responseTransformer:v30 requestHandler:v29];
  [managerCopy addService:v38];

  v39 = [[ADManagedObjectService alloc] initWithDomainName:v32];
  [managerCopy addService:v39];

  v40 = [ADServiceCommandType alloc];
  v41 = [(ADServiceCommandType *)v40 initWithDomainName:SACalendarGroupIdentifier className:SACalendarShowNextEventClassIdentifier];
  v42 = [ADSiriTaskService alloc];
  v43 = objc_alloc_init(ADCalendarTransformer);
  v44 = objc_alloc_init(ADCalendarTransformer);
  v45 = objc_alloc_init(ADShowNextEventRequestHandler);
  v46 = [(ADSiriTaskService *)v42 initWithCommandType:v41 requestTransformer:v43 responseTransformer:v44 requestHandler:v45];
  [managerCopy addService:v46];

  v47 = objc_alloc_init(ADTimerTransformer);
  v48 = objc_alloc_init(ADTimerRequestHandler);
  v49 = [ADServiceCommandType alloc];
  v50 = SATimerGroupIdentifier;
  v145 = [(ADServiceCommandType *)v49 initWithDomainName:SATimerGroupIdentifier className:SATimerGetClassIdentifier];
  v51 = [[ADSiriTaskService alloc] initWithCommandType:v145 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [managerCopy addService:v51];

  v52 = [ADServiceCommandType alloc];
  v141 = [(ADServiceCommandType *)v52 initWithDomainName:v50 className:SATimerSetClassIdentifier];
  v53 = [[ADSiriTaskService alloc] initWithCommandType:v141 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [managerCopy addService:v53];

  v54 = [ADServiceCommandType alloc];
  v138 = [(ADServiceCommandType *)v54 initWithDomainName:v50 className:SATimerPauseClassIdentifier];
  v55 = [[ADSiriTaskService alloc] initWithCommandType:v138 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [managerCopy addService:v55];

  v56 = [ADServiceCommandType alloc];
  v57 = [(ADServiceCommandType *)v56 initWithDomainName:v50 className:SATimerResumeClassIdentifier];
  v58 = [[ADSiriTaskService alloc] initWithCommandType:v57 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [managerCopy addService:v58];

  v59 = [ADServiceCommandType alloc];
  v60 = [(ADServiceCommandType *)v59 initWithDomainName:v50 className:SATimerCancelClassIdentifier];
  v61 = [[ADSiriTaskService alloc] initWithCommandType:v60 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [managerCopy addService:v61];

  v62 = [ADServiceCommandType alloc];
  v63 = [(ADServiceCommandType *)v62 initWithDomainName:v50 className:SATimerDismissClassIdentifier];
  v64 = [[ADSiriTaskService alloc] initWithCommandType:v63 requestTransformer:v47 responseTransformer:v47 requestHandler:v48];
  [managerCopy addService:v64];

  v65 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.private.NanoTimer"];
  [v65 setDelegate:self];
  v66 = [ADServiceCommandType alloc];
  v67 = [(ADServiceCommandType *)v66 initWithDomainName:v50 className:SATimerShowTimerAndPerformActionClassIdentifier];
  v68 = [[ADSiriTaskService alloc] initWithCommandType:v67 requestTransformer:v47 responseTransformer:v47 requestHandler:v65];
  [managerCopy addService:v68];

  v69 = objc_alloc_init(ADAlarmTransformer);
  v70 = objc_alloc_init(ADAlarmRequestHandler);
  v71 = [ADServiceCommandType alloc];
  v72 = SAAlarmGroupIdentifier;
  v146 = [(ADServiceCommandType *)v71 initWithDomainName:SAAlarmGroupIdentifier className:SAAlarmCreateClassIdentifier];
  v73 = [[ADSiriTaskService alloc] initWithCommandType:v146 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [managerCopy addService:v73];

  v74 = [ADServiceCommandType alloc];
  v142 = [(ADServiceCommandType *)v74 initWithDomainName:v72 className:SAAlarmUpdateClassIdentifier];
  v75 = [[ADSiriTaskService alloc] initWithCommandType:v142 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [managerCopy addService:v75];

  v76 = [ADServiceCommandType alloc];
  v139 = [(ADServiceCommandType *)v76 initWithDomainName:v72 className:SAAlarmSearchClassIdentifier];
  v77 = [[ADSiriTaskService alloc] initWithCommandType:v139 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [managerCopy addService:v77];

  v78 = [ADServiceCommandType alloc];
  v79 = [(ADServiceCommandType *)v78 initWithDomainName:v72 className:SAAlarmDeleteClassIdentifier];
  v80 = [[ADSiriTaskService alloc] initWithCommandType:v79 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [managerCopy addService:v80];

  v81 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.NanoAlarm"];
  [v81 setDelegate:self];
  v82 = [ADServiceCommandType alloc];
  v83 = [(ADServiceCommandType *)v82 initWithDomainName:v72 className:SAAlarmShowAndPerformAlarmActionClassIdentifier];
  v84 = [[ADSiriTaskService alloc] initWithCommandType:v83 requestTransformer:v69 responseTransformer:v69 requestHandler:v81];
  [managerCopy addService:v84];

  v85 = [ADServiceCommandType alloc];
  v86 = [(ADServiceCommandType *)v85 initWithDomainName:v72 className:SAAlarmDismissClassIdentifier];
  v87 = [[ADSiriTaskService alloc] initWithCommandType:v86 requestTransformer:v69 responseTransformer:v69 requestHandler:v70];
  [managerCopy addService:v87];

  v88 = objc_alloc_init(ADSettingsTransformer);
  v89 = objc_alloc_init(ADSettingsRequestHandler);
  v90 = [ADServiceCommandType alloc];
  v91 = SASettingGroupIdentifier;
  v147 = [(ADServiceCommandType *)v90 initWithDomainName:SASettingGroupIdentifier className:SASettingGetAirplaneModeClassIdentifier];
  v92 = [[ADSiriTaskService alloc] initWithCommandType:v147 requestTransformer:v88 responseTransformer:v88 requestHandler:v89];
  [managerCopy addService:v92];

  v93 = [ADServiceCommandType alloc];
  v143 = [(ADServiceCommandType *)v93 initWithDomainName:v91 className:SASettingSetAirplaneModeClassIdentifier];
  v94 = [[ADSiriTaskService alloc] initWithCommandType:v143 requestTransformer:v88 responseTransformer:v88 requestHandler:v89];
  [managerCopy addService:v94];

  v95 = [ADServiceCommandType alloc];
  v96 = [(ADServiceCommandType *)v95 initWithDomainName:v91 className:SASettingGetVoiceOverClassIdentifier];
  v97 = [[ADSiriTaskService alloc] initWithCommandType:v96 requestTransformer:v88 responseTransformer:v88 requestHandler:v89];
  [managerCopy addService:v97];

  v98 = [ADServiceCommandType alloc];
  v99 = [(ADServiceCommandType *)v98 initWithDomainName:v91 className:SASettingSetVoiceOverClassIdentifier];
  v100 = [[ADSiriTaskService alloc] initWithCommandType:v99 requestTransformer:v88 responseTransformer:v88 requestHandler:v89];
  [managerCopy addService:v100];

  v101 = [ADServiceCommandType alloc];
  v102 = [(ADServiceCommandType *)v101 initWithDomainName:v91 className:SASettingShowAndPerformSettingsActionClassIdentifier];
  v103 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.NanoSettings"];
  [v103 setDelegate:self];
  v104 = [[ADSiriTaskService alloc] initWithCommandType:v102 requestTransformer:v88 responseTransformer:v88 requestHandler:v103];
  [managerCopy addService:v104];

  v105 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.NanoMaps"];
  [v105 setDelegate:self];
  v106 = objc_alloc_init(ADMapsTransformer);
  v107 = [ADServiceCommandType alloc];
  v108 = SALocalSearchGroupIdentifier;
  v109 = [(ADServiceCommandType *)v107 initWithDomainName:SALocalSearchGroupIdentifier className:SALocalSearchShowMapPointsClassIdentifier];
  v110 = [[ADSiriTaskService alloc] initWithCommandType:v109 requestTransformer:v106 responseTransformer:v106 requestHandler:v105];
  [managerCopy addService:v110];

  v111 = [ADServiceCommandType alloc];
  v112 = [(ADServiceCommandType *)v111 initWithDomainName:v108 className:SALocalSearchNavigationEndClassIdentifier];
  v113 = [[ADSiriTaskService alloc] initWithCommandType:v112 requestTransformer:v106 responseTransformer:v106 requestHandler:v105];
  [managerCopy addService:v113];

  v114 = [ADServiceCommandType alloc];
  v115 = [(ADServiceCommandType *)v114 initWithDomainName:v108 className:SALocalSearchNavigationPromptManeuverClassIdentifier];
  v116 = [[ADSiriTaskService alloc] initWithCommandType:v115 requestTransformer:v106 responseTransformer:v106 requestHandler:v105];
  [managerCopy addService:v116];

  v117 = [ADServiceCommandType alloc];
  v118 = [(ADServiceCommandType *)v117 initWithDomainName:v108 className:SALocalSearchShowLocalSearchResultClassIdentifier];
  v119 = [[ADSiriTaskService alloc] initWithCommandType:v118 requestTransformer:v106 responseTransformer:v106 requestHandler:v105];
  [managerCopy addService:v119];

  v120 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.SessionTrackerApp"];
  [v120 setDelegate:self];
  v121 = objc_alloc_init(ADWorkoutTransformer);
  v122 = [ADServiceCommandType alloc];
  v123 = SAHLGroupIdentifier;
  v124 = [(ADServiceCommandType *)v122 initWithDomainName:SAHLGroupIdentifier className:SAHLStartWorkoutClassIdentifier];
  v125 = [[ADSiriTaskService alloc] initWithCommandType:v124 requestTransformer:v121 responseTransformer:v121 requestHandler:v120];
  [managerCopy addService:v125];

  v126 = [ADServiceCommandType alloc];
  v127 = [(ADServiceCommandType *)v126 initWithDomainName:v123 className:SAHLSetWorkoutStateClassIdentifier];
  v128 = [[ADSiriTaskService alloc] initWithCommandType:v127 requestTransformer:v121 responseTransformer:v121 requestHandler:v120];
  [managerCopy addService:v128];

  v129 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.ActivityMonitorApp"];
  [v129 setDelegate:self];
  v130 = objc_alloc_init(ADHealthTransformer);
  v131 = [ADServiceCommandType alloc];
  v132 = [(ADServiceCommandType *)v131 initWithDomainName:v123 className:SAHLShowActivityClassIdentifier];
  v133 = [[ADSiriTaskService alloc] initWithCommandType:v132 requestTransformer:v130 responseTransformer:v130 requestHandler:v129];
  [managerCopy addService:v133];

  v148 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:@"com.apple.NanoMail"];
  [v148 setDelegate:self];
  v134 = objc_alloc_init(ADMailTransformer);
  v135 = [ADServiceCommandType alloc];
  v136 = [(ADServiceCommandType *)v135 initWithDomainName:SAEmailGroupIdentifier className:SAEmailSendClassIdentifier];
  v137 = [[ADSiriTaskService alloc] initWithCommandType:v136 requestTransformer:v134 responseTransformer:v134 requestHandler:v148];
  [managerCopy addService:v137];
}

- (BOOL)_isServerBoundCommand:(id)command
{
  commandCopy = command;
  v5 = [(NSMapTable *)self->_serverBoundCommandLookup objectForKey:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else
  {
    v7 = [commandCopy conformsToProtocol:&OBJC_PROTOCOL___SAServerBoundCommand];
    serverBoundCommandLookup = self->_serverBoundCommandLookup;
    v9 = [NSNumber numberWithBool:v7];
    [(NSMapTable *)serverBoundCommandLookup setObject:v9 forKey:objc_opt_class()];
  }

  return v7;
}

- (BOOL)_isClientBoundCommand:(id)command
{
  commandCopy = command;
  v5 = [(NSMapTable *)self->_clientBoundCommandLookup objectForKey:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else
  {
    v7 = [commandCopy conformsToProtocol:&OBJC_PROTOCOL___SAClientBoundCommand];
    clientBoundCommandLookup = self->_clientBoundCommandLookup;
    v9 = [NSNumber numberWithBool:v7];
    [(NSMapTable *)clientBoundCommandLookup setObject:v9 forKey:objc_opt_class()];
  }

  return v7;
}

- (id)_approximatePreviousTTSInterval:(id)interval
{
  intervalCopy = interval;
  speechSynthesisRecord = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions speechSynthesisRecord];
  v6 = speechSynthesisRecord;
  if (!speechSynthesisRecord)
  {
    goto LABEL_17;
  }

  [speechSynthesisRecord beginTimestamp];
  Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
  [v6 endTimestamp];
  v8 = AFMachAbsoluteTimeGetMilliseconds();
  activationEventMachAbsoluteTime = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEventMachAbsoluteTime];
  currentSpeechRequestOptions = self->_currentSpeechRequestOptions;
  if (activationEventMachAbsoluteTime)
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
  if (intervalCopy)
  {
    milliseconds = [NSNumber numberWithLongLong:v11 - Milliseconds];
    [intervalCopy setDurationSincePreviousTTSStart:milliseconds];

LABEL_11:
    if (v8 <= 0)
    {
      goto LABEL_17;
    }

    if (intervalCopy)
    {
      v16 = [NSNumber numberWithLongLong:v11 - v8];
      [intervalCopy setDurationSincePreviousTTSFinish:v16];
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

- (void)_listInstalledServicesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CF930;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, v7);
}

- (void)_broadcastCommand:(id)command
{
  commandCopy = command;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  _serviceManager = [(ADCommandCenter *)self _serviceManager];
  allServices = [_serviceManager allServices];

  v7 = [allServices countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allServices);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          groupIdentifier = [commandCopy groupIdentifier];
          refId = [commandCopy refId];
          v14 = [(ADCommandCenter *)selfCopy _rootExecutionContextForRequestID:refId];
          [v11 handleCommand:commandCopy forDomain:groupIdentifier executionContext:v14 reply:0];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allServices countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)winner
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001CFEC8;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  winnerCopy = winner;
  dispatch_async(queue, v4);
}

- (id)_speechCapturingContextForSessionUUID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_speechCapturingContextsBySessionUUID objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setSpeechCapturingContext:(id)context
{
  contextCopy = context;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[ADCommandCenter _setSpeechCapturingContext:]";
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s speechCapturingContext = %@", &v14, 0x16u);
  }

  _speechCapturingContext = [(ADCommandCenter *)self _speechCapturingContext];
  [_speechCapturingContext resignCurrent];

  if (contextCopy)
  {
    sessionUUID = [contextCopy sessionUUID];
    speechCapturingContextsBySessionUUID = self->_speechCapturingContextsBySessionUUID;
    if (!speechCapturingContextsBySessionUUID)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = self->_speechCapturingContextsBySessionUUID;
      self->_speechCapturingContextsBySessionUUID = v9;

      speechCapturingContextsBySessionUUID = self->_speechCapturingContextsBySessionUUID;
    }

    [(NSMutableDictionary *)speechCapturingContextsBySessionUUID setObject:contextCopy forKey:sessionUUID];
    v11 = [sessionUUID copy];
    speechCapturingContextSessionUUID = self->_speechCapturingContextSessionUUID;
    self->_speechCapturingContextSessionUUID = v11;
  }

  else
  {
    sessionUUID = self->_speechCapturingContextSessionUUID;
    self->_speechCapturingContextSessionUUID = 0;
  }

  _speechCapturingContext2 = [(ADCommandCenter *)self _speechCapturingContext];
  [_speechCapturingContext2 becomeCurrent];
}

- (void)getRecordedAudioDirectoryPathsWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v4 = CSSiriSpeechRecordingRecordedAudioDirectoryPath();
    v7[0] = v4;
    v5 = CSSiriSpeechRecordingTrimmedAudioDirectoryPath();
    v7[1] = v5;
    v6 = [NSArray arrayWithObjects:v7 count:2];

    completionCopy[2](completionCopy, v6, 0);
  }
}

- (void)_trimRecordedAudioWithIdentifier:(id)identifier offset:(double)offset duration:(double)duration outputFileType:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v22 = "[ADCommandCenter _trimRecordedAudioWithIdentifier:offset:duration:outputFileType:completion:]";
      v23 = 2112;
      v24 = *&identifierCopy;
      v25 = 2048;
      durationCopy2 = offset;
      v27 = 2048;
      durationCopy = duration;
      v29 = 2048;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s identifier = %@, offset = %f, duration = %f, outputFileType = %ld", buf, 0x34u);
      v14 = AFSiriLogContextDaemon;
    }

    v15 = fmax(offset, 0.0);
    if (duration <= 0.0)
    {
      duration = 60.0;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "[ADCommandCenter _trimRecordedAudioWithIdentifier:offset:duration:outputFileType:completion:]";
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      durationCopy2 = duration;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s offset = %f, duration = %f (effective)", buf, 0x20u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001D034C;
    v16[3] = &unk_100516AB0;
    v18 = v15;
    durationCopy3 = duration;
    typeCopy2 = type;
    v17 = completionCopy;
    [(ADCommandCenter *)self _accessRecordedAudioWithIdentifier:identifierCopy completion:v16];
  }
}

- (void)trimRecordedAudioWithIdentifier:(id)identifier offset:(double)offset duration:(double)duration outputFileType:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D16E4;
  v17[3] = &unk_100516A88;
  v17[4] = self;
  v18 = identifierCopy;
  offsetCopy = offset;
  durationCopy = duration;
  typeCopy = type;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  dispatch_async(queue, v17);
}

- (void)_accessRecordedAudioWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ADCommandCenter _accessRecordedAudioWithIdentifier:completion:]";
      v17 = 2112;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s identifier = %@", buf, 0x16u);
    }

    if (!identifierCopy)
    {
      identifierCopy = self->_speechCapturingContextSessionUUID;
    }

    v9 = [(ADCommandCenter *)self _speechCapturingContextForSessionUUID:identifierCopy];
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
      v14 = completionCopy;
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

    (*(completionCopy + 2))(completionCopy, 0, v11);

    goto LABEL_13;
  }

LABEL_14:
}

- (void)accessRecordedAudioWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D1BF4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_setSiriOutputVolume:(float)volume forAudioRoute:(id)route operationType:(int64_t)type completion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v23 = "[ADCommandCenter _setSiriOutputVolume:forAudioRoute:operationType:completion:]";
    v24 = 2048;
    volumeCopy = volume;
    v26 = 2112;
    v27 = routeCopy;
    v28 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s volume = %f, routeName = %@, operationType = %ld", buf, 0x2Au);
  }

  _speechManager = [(ADCommandCenter *)self _speechManager];
  volumeServiceProvider = [_speechManager volumeServiceProvider];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D1DB0;
  v17[3] = &unk_100516A38;
  volumeCopy2 = volume;
  v19 = completionCopy;
  typeCopy2 = type;
  v18 = routeCopy;
  v15 = completionCopy;
  v16 = routeCopy;
  [volumeServiceProvider getVolumeServiceUsingBlock:v17];
}

- (void)setSiriOutputVolume:(float)volume forAudioRoute:(id)route operationType:(int64_t)type completion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D21A0;
  block[3] = &unk_100516A10;
  volumeCopy = volume;
  block[4] = self;
  v16 = routeCopy;
  v17 = completionCopy;
  typeCopy = type;
  v13 = completionCopy;
  v14 = routeCopy;
  dispatch_async(queue, block);
}

- (void)_getSiriOutputVolumeForAudioRoute:(id)route completion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADCommandCenter _getSiriOutputVolumeForAudioRoute:completion:]";
    v18 = 2112;
    v19 = routeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s routeName = %@", buf, 0x16u);
  }

  _speechManager = [(ADCommandCenter *)self _speechManager];
  volumeServiceProvider = [_speechManager volumeServiceProvider];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D2328;
  v13[3] = &unk_1005169E8;
  v14 = routeCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = routeCopy;
  [volumeServiceProvider getVolumeServiceUsingBlock:v13];
}

- (void)getSiriOutputVolumeForAudioRoute:(id)route completion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2710;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = routeCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = routeCopy;
  dispatch_async(queue, block);
}

- (void)announceNotificationHandlingStateUpdatedToState:(int64_t)state
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D2794;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(queue, v4);
}

- (void)getAccessoryInfoForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D2980;
  v11[3] = &unk_10051E038;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, v11);
}

- (void)getSpeakerCapabilityForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D2A98;
  v11[3] = &unk_10051E038;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, v11);
}

- (void)pushSCDAAdvertisementContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2BB4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)pushMyriadAdvertisementContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2D3C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (id)_createDefaultRequestContextData:(BOOL)data suggestionRequestType:(int64_t)type
{
  _fetchComputedModeAndUpdateRequestDelegate = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  v8 = [SMTRequestContextData alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D2EF4;
  v12[3] = &unk_100516998;
  v13 = _fetchComputedModeAndUpdateRequestDelegate;
  selfCopy = self;
  dataCopy = data;
  typeCopy = type;
  v9 = _fetchComputedModeAndUpdateRequestDelegate;
  v10 = [v8 initWithBuilder:v12];

  return v10;
}

- (id)_startServerRequestWithStartRequest:(id)request requestInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v87 = "[ADCommandCenter _startServerRequestWithStartRequest:requestInfo:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (!self->_siriUODSupported && ([requestCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v65 = v26;
      aceId = [requestCopy aceId];
      encodedClassName = [requestCopy encodedClassName];
      *buf = 136315650;
      v87 = "[ADCommandCenter _startServerRequestWithStartRequest:requestInfo:]";
      v88 = 2112;
      v89 = aceId;
      v90 = 2112;
      v91 = encodedClassName;
      _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "%s UOD is not supported and request %@ is of type %@ so must be handled on server", buf, 0x20u);
    }

    goto LABEL_13;
  }

  v9 = [(ADCommandCenter *)self _createStartServerRequestWithStartRequest:requestCopy];
  speechRequestOptions = [infoCopy speechRequestOptions];
  activationEvent = [speechRequestOptions activationEvent];

  suggestionRequestType = [infoCopy suggestionRequestType];
  if (!self->_siriUODSupported)
  {
    v16 = activationEvent == 17;
    _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
    _requestDispatcherSessionConfiguration = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
    aceId2 = [requestCopy aceId];
    [requestCopy origin];
    v21 = v20 = v9;
    utterance = [requestCopy utterance];
    v23 = [(ADCommandCenter *)self _createDefaultRequestContextData:v16];
    [_requestDispatcherService startUnderstandingOnServerTextRequestWithConfiguration:_requestDispatcherSessionConfiguration requestId:aceId2 inputOrigin:v21 utterance:utterance requestContextData:v23];

    v9 = v20;
    dynamicContextEmitter = self->_dynamicContextEmitter;
    aceId3 = [requestCopy aceId];
    [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:aceId3];

    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v13 = suggestionRequestType;
  testRequestOptions = [infoCopy testRequestOptions];
  requestPath = [testRequestOptions requestPath];

  if (requestPath == 1)
  {
    [v9 setTextRequest:0];
    [(ADCommandCenter *)self _signalUSTTestRequestWithStartRequest:requestCopy requestInfo:infoCopy];
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _fetchComputedModeAndUpdateRequestDelegate = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
    v83 = [(ADCommandCenter *)self _createDefaultRequestContextData:activationEvent == 17 suggestionRequestType:v13];
    v27 = requestCopy;
    _requestDispatcherService2 = [(ADCommandCenter *)self _requestDispatcherService];
    _requestDispatcherSessionConfiguration2 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
    aceId4 = [v27 aceId];
    origin = [v27 origin];
    utterance2 = [v27 utterance];
    directAction = [v27 directAction];
    requestExecutionParameters = [v27 requestExecutionParameters];
    [_requestDispatcherService2 startDirectActionRequestWithConfiguration:_requestDispatcherSessionConfiguration2 requestId:aceId4 inputOrigin:origin utterance:utterance2 directAction:directAction requestExecutionParameters:requestExecutionParameters requestContextData:v83];

    v33 = self->_dynamicContextEmitter;
    aceId5 = [v27 aceId];

    [(ADDynamicContextEmitter *)v33 emitForRequest:aceId5];
    v35 = _fetchComputedModeAndUpdateRequestDelegate;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([requestCopy isMemberOfClass:objc_opt_class()])
    {
      v85 = [(ADCommandCenter *)self _createDefaultRequestContextData:activationEvent == 17 suggestionRequestType:v13];
      speechRequestOptions2 = [infoCopy speechRequestOptions];
      if ([speechRequestOptions2 isTest])
      {
        speechRequestOptions3 = [infoCopy speechRequestOptions];
        speechPackageOverride = [speechRequestOptions3 speechPackageOverride];

        if (speechPackageOverride)
        {
          testRequestOptions2 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions testRequestOptions];
          _requestDispatcherService3 = [(ADCommandCenter *)self _requestDispatcherService];
          _account = [(ADCommandCenter *)self _account];
          assistantIdentifier = [_account assistantIdentifier];
          aceId6 = [requestCopy aceId];
          speechRequestOptions4 = [infoCopy speechRequestOptions];
          disableASR = [speechRequestOptions4 disableASR];
          origin2 = [requestCopy origin];
          _locationManager = [(ADCommandCenter *)self _locationManager];
          knownLocation = [_locationManager knownLocation];
          v71 = testRequestOptions2;
          jitContext = [testRequestOptions2 jitContext];
          overrideModelPath = [testRequestOptions2 overrideModelPath];
          v54 = v85;
          _requestDispatcherSessionConfiguration3 = _requestDispatcherService3;
          [_requestDispatcherService3 startTestSpeechRequestWithAssistantId:assistantIdentifier requestId:aceId6 enableASR:disableASR ^ 1 inputOrigin:origin2 location:knownLocation jitContext:jitContext overrideModelPath:overrideModelPath requestContextData:v85];

          origin3 = assistantIdentifier;
          _requestDispatcherService4 = v71;

          aceId7 = _account;
          goto LABEL_33;
        }
      }

      else
      {
      }

      _requestDispatcherService4 = [(ADCommandCenter *)self _requestDispatcherService];
      _requestDispatcherSessionConfiguration3 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
      aceId7 = [requestCopy aceId];
      origin3 = [requestCopy origin];
      aceId6 = [requestCopy utterance];
      v54 = v85;
      [_requestDispatcherService4 startTextRequestWithConfiguration:_requestDispatcherSessionConfiguration3 requestId:aceId7 inputOrigin:origin3 utterance:aceId6 requestContextData:v85];
LABEL_33:

      v68 = self->_dynamicContextEmitter;
      aceId8 = [requestCopy aceId];
      [(ADDynamicContextEmitter *)v68 emitForRequest:aceId8];

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
      encodedClassName2 = [requestCopy encodedClassName];
      *buf = 136315394;
      v87 = "[ADCommandCenter _startServerRequestWithStartRequest:requestInfo:]";
      v88 = 2112;
      v89 = encodedClassName2;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s Request type %@ unsupported on Siri X UOD. Support might come soon", buf, 0x16u);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_21;
  }

  _fetchComputedModeAndUpdateRequestDelegate2 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  v84 = [(ADCommandCenter *)self _createDefaultRequestContextData:activationEvent == 17 suggestionRequestType:v13];
  v36 = requestCopy;
  _requestDispatcherService5 = [(ADCommandCenter *)self _requestDispatcherService];
  _requestDispatcherSessionConfiguration4 = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
  aceId9 = [v36 aceId];
  origin4 = [v36 origin];
  utterance3 = [v36 utterance];
  previousUtterance = [v36 previousUtterance];
  [_requestDispatcherService5 startCorrectionSpeechRequestWithConfiguration:_requestDispatcherSessionConfiguration4 requestId:aceId9 inputOrigin:origin4 utterance:utterance3 previousUtterance:previousUtterance requestContextData:v84];

  v42 = self->_dynamicContextEmitter;
  aceId10 = [v36 aceId];

  [(ADDynamicContextEmitter *)v42 emitForRequest:aceId10];
  v35 = _fetchComputedModeAndUpdateRequestDelegate2;
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
    encodedClassName3 = [requestCopy encodedClassName];
    aceId11 = [requestCopy aceId];
    *buf = 136315650;
    v87 = "[ADCommandCenter _startServerRequestWithStartRequest:requestInfo:]";
    v88 = 2112;
    v89 = encodedClassName3;
    v90 = 2112;
    v91 = aceId11;
    _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "%s Replaced current request %@ %@ with an SARDStartServerRequest", buf, 0x20u);
  }

LABEL_21:

  return v9;
}

- (id)_createStartServerRequestWithStartRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(SARDStartServerRequest);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = requestCopy;
    v7 = objc_alloc_init(SARDStartCorrectedServerRequest);
    interactionId = [v6 interactionId];
    [v7 setInteractionIdToBeCorrected:interactionId];

    utterance = [v6 utterance];

    [v7 setUtteranceToBeCorrected:utterance];
    v5 = v7;
  }

  aceId = [requestCopy aceId];
  [v5 setAceId:aceId];

  [v5 setTextRequest:1];
  origin = [requestCopy origin];
  [v5 setInputOrigin:origin];

  origin2 = [requestCopy origin];
  [v5 setOrigin:origin2];

  v13 = self->_motionManager;
  motionConfidence = [(ADMotionManager *)v13 motionConfidence];
  [v5 setMotionConfidence:motionConfidence];

  motionActivity = [(ADMotionManager *)v13 motionActivity];
  [v5 setMotionActivity:motionActivity];

  adTextToSpeechIsMuted = [(ADCommandCenterClient *)self->_currentClient adTextToSpeechIsMuted];
  [v5 setTextToSpeechIsMuted:adTextToSpeechIsMuted];
  turnId = [requestCopy turnId];
  [v5 setTurnId:turnId];

  [v5 setEyesFree:{objc_msgSend(requestCopy, "eyesFree")}];
  if (AFIsInternalInstall())
  {
    v18 = [NSNumber numberWithBool:byte_100590548];
    [v5 setIsCarryDevice:v18];
  }

  return v5;
}

- (id)_startServerRequestWithSpeechRequest:(id)request recordingContext:(id)context recordingInfo:(id)info
{
  infoCopy = info;
  contextCopy = context;
  requestCopy = request;
  v11 = objc_alloc_init(SARDStartServerRequest);
  sessionUUID = [contextCopy sessionUUID];

  [v11 setAceId:sessionUUID];
  [v11 setTextRequest:0];
  v13 = self->_motionManager;
  motionConfidence = [(ADMotionManager *)v13 motionConfidence];
  [v11 setMotionConfidence:motionConfidence];

  motionActivity = [(ADMotionManager *)v13 motionActivity];
  [v11 setMotionActivity:motionActivity];

  [v11 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
  voiceTriggerEventInfo = [requestCopy voiceTriggerEventInfo];
  [v11 setVoiceTriggerEventInfo:voiceTriggerEventInfo];

  _fetchComputedModeAndUpdateRequestDelegate = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  [v11 setResponseMode:_fetchComputedModeAndUpdateRequestDelegate];
  [v11 ad_setAFSpeechRequestOptions:self->_currentSpeechRequestOptions];

  [v11 ad_setCSSiriRecordingInfo:infoCopy];
  bargeInModes = [requestCopy bargeInModes];
  [v11 setBargeInModes:bargeInModes];

  durationSincePreviousTTSStart = [requestCopy durationSincePreviousTTSStart];
  [v11 setDurationSincePreviousTTSStart:durationSincePreviousTTSStart];

  durationSincePreviousTTSFinish = [requestCopy durationSincePreviousTTSFinish];

  [v11 setDurationSincePreviousTTSFinish:durationSincePreviousTTSFinish];
  if (AFIsInternalInstall())
  {
    v21 = [NSNumber numberWithBool:byte_100590548];
    [v11 setIsCarryDevice:v21];
  }

  return v11;
}

- (id)_createMuxStartAsrOnServerRequestWithSpeechRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(SASMUXStartAsrOnServerRequest);
  [v5 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
  bargeInModes = [requestCopy bargeInModes];
  [v5 setBargeInModes:bargeInModes];

  [v5 setAutoPunctuationEnabled:{objc_msgSend(requestCopy, "autoPunctuationEnabled")}];
  clientModelVersion = [requestCopy clientModelVersion];

  [v5 setClientModelVersion:clientModelVersion];

  return v5;
}

- (void)dictationRequestDidCompleteRecognitionWithError:(id)error secureOfflineOnlyRecognition:(BOOL)recognition sessionUUID:(id)d statistics:(id)statistics
{
  errorCopy = error;
  dCopy = d;
  statisticsCopy = statistics;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D4068;
  block[3] = &unk_1005162A0;
  block[4] = self;
  v18 = statisticsCopy;
  recognitionCopy = recognition;
  v19 = errorCopy;
  v20 = dCopy;
  v14 = dCopy;
  v15 = errorCopy;
  v16 = statisticsCopy;
  dispatch_async(queue, block);
}

- (void)dictationRequestDidRecognizePackage:(id)package nluResult:(id)result sessionUUID:(id)d
{
  packageCopy = package;
  resultCopy = result;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D44A4;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = packageCopy;
  v17 = resultCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = resultCopy;
  v14 = packageCopy;
  dispatch_async(queue, v15);
}

- (void)dictationRequestDidRecognizeVoiceCommandCandidatePackage:(id)package nluResult:(id)result sessionUUID:(id)d
{
  packageCopy = package;
  resultCopy = result;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D5078;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = packageCopy;
  v17 = resultCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = resultCopy;
  v14 = packageCopy;
  dispatch_async(queue, v15);
}

- (void)dictationRequestDidRecognizeFinalResultCandidatePackage:(id)package sessionUUID:(id)d
{
  packageCopy = package;
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5444;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = packageCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = packageCopy;
  dispatch_async(queue, block);
}

- (void)dictationRequestDidRecognizePartialPackage:(id)package nluResult:(id)result sessionUUID:(id)d
{
  packageCopy = package;
  resultCopy = result;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D583C;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = packageCopy;
  v17 = resultCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = resultCopy;
  v14 = packageCopy;
  dispatch_async(queue, v15);
}

- (void)dictationRequestDidRecognizeTokens:(id)tokens nluResult:(id)result sessionUUID:(id)d
{
  tokensCopy = tokens;
  resultCopy = result;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D5BEC;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = tokensCopy;
  v17 = resultCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = resultCopy;
  v14 = tokensCopy;
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

- (void)handleSpeechRecognized:(id)recognized completion:(id)completion
{
  recognizedCopy = recognized;
  completionCopy = completion;
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
  v13 = recognizedCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = recognizedCopy;
  dispatch_async(queue, block);
}

- (void)handleSpeechServerEndpointIdentified:(id)identified completion:(id)completion
{
  identifiedCopy = identified;
  completionCopy = completion;
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
  v13 = identifiedCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = identifiedCopy;
  dispatch_async(queue, block);
}

- (void)selectResultWithResultCandidate:(id)candidate completionHandler:(id)handler
{
  candidateCopy = candidate;
  handlerCopy = handler;
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
  v13 = candidateCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = candidateCopy;
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

- (void)releaseShutdownAssertion:(id)assertion
{
  assertionCopy = assertion;
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
  v9 = assertionCopy;
  selfCopy = self;
  v7 = assertionCopy;
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

- (void)cancelCurrentRequestForReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D687C;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

- (void)updateSpeechSynthesisRecord:(id)record
{
  recordCopy = record;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D6934;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_async(queue, v7);
}

- (void)handleAceCommand:(id)command afterCurrentRequest:(BOOL)request waitForResponse:(BOOL)response withDelegate:(id)delegate completion:(id)completion
{
  commandCopy = command;
  delegateCopy = delegate;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6A84;
  block[3] = &unk_100516840;
  block[4] = self;
  v20 = commandCopy;
  requestCopy = request;
  responseCopy = response;
  v21 = delegateCopy;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = delegateCopy;
  v18 = commandCopy;
  dispatch_async(queue, block);
}

- (void)getDeferredObjectsWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6B60;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
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

- (void)getOfflineDictationStatusIgnoringCache:(BOOL)cache completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6E10;
  block[3] = &unk_10051D228;
  cacheCopy = cache;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)extendRequestTimeoutBy:(double)by forRequestID:(id)d
{
  dCopy = d;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v14 = "[ADCommandCenter extendRequestTimeoutBy:forRequestID:]";
    v15 = 2048;
    byCopy = by;
    v17 = 2112;
    v18 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s durationInSeconds: %f, requestID: %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D6FBC;
  block[3] = &unk_10051E128;
  block[4] = self;
  v11 = dCopy;
  byCopy2 = by;
  v9 = dCopy;
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

- (void)handleCommand:(id)command withExecutionContextMatchingInfo:(id)info completion:(id)completion
{
  commandCopy = command;
  infoCopy = info;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[ADCommandCenter handleCommand:withExecutionContextMatchingInfo:completion:]";
    v22 = 2112;
    v23 = commandCopy;
    v24 = 2112;
    v25 = infoCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s command = %@, executionInfoToMatch = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D7320;
  v16[3] = &unk_10051E0D8;
  v16[4] = self;
  v17 = infoCopy;
  v18 = commandCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = commandCopy;
  v15 = infoCopy;
  dispatch_async(queue, v16);
}

- (void)areAnnouncementRequestsPermittedByPresentationWhileActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D74BC;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)isWatchAuthenticatedWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D759C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)isHeadGestureRecognitionAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D770C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)isInCarDNDModeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D787C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)setReplayOverridePath:(id)path
{
  pathCopy = path;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D7C3C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = pathCopy;
  v6 = pathCopy;
  dispatch_async(queue, v7);
}

- (void)setReplayEnabled:(BOOL)enabled
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D7CC0;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v4);
}

- (void)replayRecordedViewAt:(unint64_t)at with:(id)with
{
  withCopy = with;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D7D7C;
  block[3] = &unk_10051E128;
  v10 = withCopy;
  atCopy = at;
  block[4] = self;
  v8 = withCopy;
  dispatch_async(queue, block);
}

- (void)replayAllRecordedViews:(unint64_t)views with:(id)with
{
  withCopy = with;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D7E38;
  block[3] = &unk_10051E128;
  v10 = withCopy;
  viewsCopy = views;
  block[4] = self;
  v8 = withCopy;
  dispatch_async(queue, block);
}

- (void)dismissAssistantWithReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D7EC0;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = reason;
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

- (void)openURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8010;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = lCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = lCopy;
  dispatch_async(queue, block);
}

- (void)openApplicationWithBundleID:(id)d URL:(id)l completion:(id)completion
{
  dCopy = d;
  lCopy = l;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D8104;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = dCopy;
  v17 = lCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = lCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)reloadServiceForNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D81D4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)removeService:(id)service
{
  serviceCopy = service;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D82D8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_async(queue, v7);
}

- (void)addService:(id)service
{
  serviceCopy = service;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D83C4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_async(queue, v7);
}

- (void)clientDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D84B0;
  v7[3] = &unk_10051E010;
  v8 = disconnectedCopy;
  selfCopy = self;
  v6 = disconnectedCopy;
  dispatch_async(queue, v7);
}

- (void)clientConnected:(id)connected
{
  connectedCopy = connected;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D8964;
  v7[3] = &unk_10051E010;
  v8 = connectedCopy;
  selfCopy = self;
  v6 = connectedCopy;
  dispatch_async(queue, v7);
}

- (void)fetchContextForApplicationInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8CE8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)setManagedStoreObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8EB0;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_async(queue, block);
}

- (void)fetchManagedStoreObjectForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D8F88;
  block[3] = &unk_10051E088;
  v12 = keyCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = keyCopy;
  v10 = completionCopy;
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

- (void)setActiveAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D920C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)fetchActiveAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D92B0;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
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

- (void)fetchActiveAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D95B0;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  dispatch_async(queue, v7);
}

- (void)deleteAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D96BC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)fetchAccounts:(id)accounts
{
  accountsCopy = accounts;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9760;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = accountsCopy;
  v6 = accountsCopy;
  dispatch_async(queue, v7);
}

- (void)fetchSupportedLanguagesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9874;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)sendMetricsToServerWithTimeout:(double)timeout requiresUnlimitedPower:(BOOL)power requiresActiveSession:(BOOL)session purgesOversizedStorage:(BOOL)storage ignoresMetricsSenderDisabledSetting:(BOOL)setting scheduledActivity:(BOOL)activity completion:(id)completion
{
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001D9B68;
  v35[3] = &unk_10051CF58;
  completionCopy = completion;
  v36 = completionCopy;
  v17 = objc_retainBlock(v35);
  if (setting || (+[ADPreferences sharedPreferences](ADPreferences, "sharedPreferences"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 metricsSenderDisabled], v18, !v19))
  {
    if (AFHasUnlockedSinceBoot())
    {
      v22 = +[AFPreferences sharedPreferences];
      isDictationHIPAACompliant = [v22 isDictationHIPAACompliant];

      if (!isDictationHIPAACompliant)
      {
        v24 = +[NSProcessInfo processInfo];
        [v24 systemUptime];
        v26 = v25 + timeout;

        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001D9BD0;
        block[3] = &unk_100516818;
        block[4] = self;
        v30 = v26;
        powerCopy = power;
        sessionCopy = session;
        storageCopy = storage;
        activityCopy = activity;
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

- (void)requestBarrierIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9C8C;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = necessaryCopy;
  v6 = necessaryCopy;
  dispatch_async(queue, v7);
}

- (void)requestBarrier:(id)barrier
{
  barrierCopy = barrier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9D30;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = barrierCopy;
  v6 = barrierCopy;
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

- (void)getOriginDeviceInfoForContextIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9EF8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)getDeviceContextsForKeys:(id)keys forRequestID:(id)d includesNearbyDevices:(BOOL)devices completion:(id)completion
{
  keysCopy = keys;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA304;
  block[3] = &unk_100519D50;
  v18 = dCopy;
  selfCopy = self;
  devicesCopy = devices;
  v20 = keysCopy;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = keysCopy;
  v16 = dCopy;
  dispatch_async(queue, block);
}

- (void)getCrossDeviceContextWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DA440;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)getCurrentContextSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DA600;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)setApplicationContextForApplicationInfos:(id)infos withRefId:(id)id
{
  infosCopy = infos;
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA718;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = infosCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = infosCopy;
  dispatch_async(queue, block);
}

- (void)setOverriddenApplicationContext:(id)context withContext:(id)withContext
{
  contextCopy = context;
  withContextCopy = withContext;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA7EC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = contextCopy;
  v13 = withContextCopy;
  v9 = withContextCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)fetchAppicationContextForApplicationInfo:(id)info supplementalContext:(id)context refID:(id)d
{
  infoCopy = info;
  contextCopy = context;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DA8E0;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = infoCopy;
  v17 = contextCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = contextCopy;
  v14 = infoCopy;
  dispatch_async(queue, v15);
}

- (void)setApplicationContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DA988;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

- (void)willSetApplicationContextWithRefId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DAA2C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
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

- (void)handleGenericAceCommand:(id)command withDelegate:(id)delegate interruptOutstandingRequest:(BOOL)request targetReplyQueue:(id)queue reply:(id)reply
{
  commandCopy = command;
  delegateCopy = delegate;
  queueCopy = queue;
  replyCopy = reply;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001DABD8;
  v21[3] = &unk_1005167F0;
  v21[4] = self;
  v22 = commandCopy;
  requestCopy = request;
  v24 = queueCopy;
  v25 = replyCopy;
  v23 = delegateCopy;
  v17 = queueCopy;
  v18 = replyCopy;
  v19 = delegateCopy;
  v20 = commandCopy;
  dispatch_async(queue, v21);
}

- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001DAE44;
  v11[3] = &unk_10051E010;
  v12 = infoCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(queue, v11);
}

- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress
{
  languageCopy = language;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001DAFBC;
  v9[3] = &unk_10051CBD8;
  v10 = languageCopy;
  suppressCopy = suppress;
  v8 = languageCopy;
  dispatch_async(queue, v9);
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DB1BC;
  block[3] = &unk_1005167C8;
  block[4] = self;
  v34 = textCopy;
  v35 = postfixTextCopy;
  v36 = selectedTextCopy;
  v37 = activeCopy;
  v38 = visibleTextCopy;
  v39 = suppressionCopy;
  v40 = commandSuppressionCopy;
  v41 = eventCopy;
  v25 = eventCopy;
  v26 = commandSuppressionCopy;
  v27 = suppressionCopy;
  v28 = visibleTextCopy;
  v29 = activeCopy;
  v30 = selectedTextCopy;
  v31 = postfixTextCopy;
  v32 = textCopy;
  dispatch_async(queue, block);
}

- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DB2DC;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = textCopy;
  v17 = postfixTextCopy;
  v18 = selectedTextCopy;
  v12 = selectedTextCopy;
  v13 = postfixTextCopy;
  v14 = textCopy;
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

- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DB42C;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = infoCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)sendSpeechCorrectionInfo:(id)info forCorrectionContext:(id)context
{
  infoCopy = info;
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DB500;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = infoCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)prepareForStartPlaybackWithDestination:(int64_t)destination intent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DB5E4;
  v13[3] = &unk_10051C0D8;
  v15 = completionCopy;
  destinationCopy = destination;
  v13[4] = self;
  v14 = intentCopy;
  v11 = intentCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

- (void)handleFailedStartPlaybackWithDestination:(int64_t)destination completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DBA74;
  block[3] = &unk_10051BFA8;
  v10 = completionCopy;
  destinationCopy = destination;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)setSuppressAudioInterruptionEndedNotifications:(BOOL)notifications
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DBBBC;
  v4[3] = &unk_10051CBD8;
  notificationsCopy = notifications;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)updateSpeechOptions:(id)options forDelegate:(id)delegate
{
  optionsCopy = options;
  delegateCopy = delegate;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DBD80;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = optionsCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)cancelSpeechForDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DBE28;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)stopSpeechWithOptions:(id)options forDelegate:(id)delegate
{
  optionsCopy = options;
  delegateCopy = delegate;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DBEF8;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = optionsCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DBFA0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)sendEngagementFeedback:(int64_t)feedback voiceQueryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC054;
  block[3] = &unk_10051E128;
  v10 = identifierCopy;
  feedbackCopy = feedback;
  block[4] = self;
  v8 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)startDictationWithURL:(id)l isNarrowBand:(BOOL)band language:(id)language options:(id)options sessionUUID:(id)d delegate:(id)delegate
{
  lCopy = l;
  languageCopy = language;
  optionsCopy = options;
  dCopy = d;
  delegateCopy = delegate;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC1A4;
  block[3] = &unk_100516778;
  block[4] = self;
  v26 = lCopy;
  bandCopy = band;
  v27 = languageCopy;
  v28 = optionsCopy;
  v29 = dCopy;
  v30 = delegateCopy;
  v20 = delegateCopy;
  v21 = dCopy;
  v22 = optionsCopy;
  v23 = languageCopy;
  v24 = lCopy;
  dispatch_async(queue, block);
}

- (void)addRecordedSpeechSampleData:(id)data delegate:(id)delegate
{
  dataCopy = data;
  delegateCopy = delegate;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC280;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = dataCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

- (void)startRecordedDictationWithLanguage:(id)language options:(id)options sessionUUID:(id)d narrowband:(BOOL)narrowband delegate:(id)delegate
{
  languageCopy = language;
  optionsCopy = options;
  dCopy = d;
  delegateCopy = delegate;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001DC3A8;
  v21[3] = &unk_100519AC0;
  v21[4] = self;
  v22 = languageCopy;
  v23 = optionsCopy;
  v24 = dCopy;
  narrowbandCopy = narrowband;
  v25 = delegateCopy;
  v17 = delegateCopy;
  v18 = dCopy;
  v19 = optionsCopy;
  v20 = languageCopy;
  dispatch_async(queue, v21);
}

- (void)startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate
{
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  dCopy = d;
  delegateCopy = delegate;
  queue = self->_queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001DC4F8;
  v23[3] = &unk_100516250;
  v23[4] = self;
  v24 = codeCopy;
  v25 = optionsCopy;
  v26 = speechOptionsCopy;
  v27 = dCopy;
  v28 = delegateCopy;
  v18 = delegateCopy;
  v19 = dCopy;
  v20 = speechOptionsCopy;
  v21 = optionsCopy;
  v22 = codeCopy;
  dispatch_async(queue, v23);
}

- (void)startRecordingForPendingDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate completion:(id)completion
{
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  dCopy = d;
  delegateCopy = delegate;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC668;
  block[3] = &unk_100517EA8;
  block[4] = self;
  v28 = codeCopy;
  v29 = optionsCopy;
  v30 = speechOptionsCopy;
  v31 = dCopy;
  v32 = delegateCopy;
  v33 = completionCopy;
  v21 = completionCopy;
  v22 = delegateCopy;
  v23 = dCopy;
  v24 = speechOptionsCopy;
  v25 = optionsCopy;
  v26 = codeCopy;
  dispatch_async(queue, block);
}

- (void)rollbackRequestForDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DC718;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)cancelRequestForDelegate:(id)delegate reason:(int64_t)reason error:(id)error
{
  delegateCopy = delegate;
  errorCopy = error;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DC7EC;
  v13[3] = &unk_10051DBB8;
  v13[4] = self;
  v14 = delegateCopy;
  v15 = errorCopy;
  reasonCopy = reason;
  v11 = errorCopy;
  v12 = delegateCopy;
  dispatch_async(queue, v13);
}

- (void)startSpeechRequestWithURL:(id)l isNarrowBand:(BOOL)band withDelegate:(id)delegate
{
  lCopy = l;
  delegateCopy = delegate;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DC8C8;
  v13[3] = &unk_10051C958;
  v13[4] = self;
  v14 = lCopy;
  bandCopy = band;
  v15 = delegateCopy;
  v11 = delegateCopy;
  v12 = lCopy;
  dispatch_async(queue, v13);
}

- (void)startAcousticIDRequestWithDelegate:(id)delegate withOptions:(id)options context:(id)context
{
  delegateCopy = delegate;
  optionsCopy = options;
  contextCopy = context;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DC9C4;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = delegateCopy;
  v17 = optionsCopy;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = optionsCopy;
  v14 = delegateCopy;
  dispatch_async(queue, v15);
}

- (void)startSpeechPronunciationRequestWithDelegate:(id)delegate withOptions:(id)options pronunciationContext:(id)context
{
  delegateCopy = delegate;
  optionsCopy = options;
  contextCopy = context;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DCAB8;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = delegateCopy;
  v17 = optionsCopy;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = optionsCopy;
  v14 = delegateCopy;
  dispatch_async(queue, v15);
}

- (void)startRecordingForPendingSpeechRequestForDelegate:(id)delegate withOptions:(id)options sessionUUID:(id)d completion:(id)completion
{
  delegateCopy = delegate;
  optionsCopy = options;
  dCopy = d;
  completionCopy = completion;
  kdebug_trace();
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[ADCommandCenter startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  sub_10001B7D4(optionsCopy);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DCC84;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v21 = delegateCopy;
  v22 = optionsCopy;
  v23 = dCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = dCopy;
  v18 = optionsCopy;
  v19 = delegateCopy;
  dispatch_async(queue, block);
}

- (void)startSpeechRequestWithDelegate:(id)delegate withOptions:(id)options
{
  delegateCopy = delegate;
  optionsCopy = options;
  kdebug_trace();
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADCommandCenter startSpeechRequestWithDelegate:withOptions:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  sub_10001B7D4(optionsCopy);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD5C4;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = delegateCopy;
  v14 = optionsCopy;
  v10 = optionsCopy;
  v11 = delegateCopy;
  dispatch_async(queue, block);
}

- (void)handleRemoteSpeechRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD6E0;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(queue, block);
}

- (void)handleExternalActivationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD7B4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(queue, block);
}

- (void)startRequest:(id)request withDelegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DD888;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = requestCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = requestCopy;
  dispatch_async(queue, block);
}

- (void)endSessionForDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DD930;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)setConfiguration:(id)configuration forClient:(id)client
{
  configurationCopy = configuration;
  clientCopy = client;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DDA00;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = configurationCopy;
  v13 = clientCopy;
  v9 = clientCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)setModesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DDAA8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

- (void)setCarDNDActive:(BOOL)active
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDB2C;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  activeCopy = active;
  dispatch_async(queue, v4);
}

- (void)setIsEyesFree:(BOOL)free
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDBB4;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  freeCopy = free;
  dispatch_async(queue, v4);
}

- (void)setWatchAuthenticated:(BOOL)authenticated
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDC3C;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  authenticatedCopy = authenticated;
  dispatch_async(queue, v4);
}

- (void)setHeadphonesAuthenticated:(BOOL)authenticated
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DDCC4;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  authenticatedCopy = authenticated;
  dispatch_async(queue, v4);
}

- (void)setLockState:(BOOL)state showingLockScreen:(BOOL)screen
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DDD50;
  v5[3] = &unk_100515CF0;
  v5[4] = self;
  stateCopy = state;
  screenCopy = screen;
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

- (void)setQueuedOutputVoice:(id)voice
{
  voiceCopy = voice;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADCommandCenter setQueuedOutputVoice:]";
    v12 = 2112;
    v13 = voiceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DE070;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = voiceCopy;
  v7 = voiceCopy;
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

- (void)setQueuedLanguageCode:(id)code andQueuedOutputVoice:(id)voice
{
  codeCopy = code;
  voiceCopy = voice;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[ADCommandCenter setQueuedLanguageCode:andQueuedOutputVoice:]";
    v17 = 2112;
    v18 = codeCopy;
    v19 = 2112;
    v20 = voiceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DE3E4;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = codeCopy;
  v14 = voiceCopy;
  v10 = voiceCopy;
  v11 = codeCopy;
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

- (void)setQueuedLanguageCode:(id)code
{
  codeCopy = code;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADCommandCenter setQueuedLanguageCode:]";
    v12 = 2112;
    v13 = codeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001DE764;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = codeCopy;
  v7 = codeCopy;
  dispatch_async(queue, v8);
}

- (void)setOutputVoice:(id)voice withCompletion:(id)completion
{
  voiceCopy = voice;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DE888;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = voiceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = voiceCopy;
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
    languageCode = [v5 languageCode];
    v7 = [languageCode isEqualToString:v4];

    if (![v4 length] || (v7 & 1) == 0)
    {
      languageCode2 = [v3 languageCode];
      if (!languageCode2)
      {
        languageCode2 = AFDefaultLanguageCode;
      }

      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v10 = 136315394;
        v11 = "[ADCommandCenter _setLanguageCodeIfNeeded]";
        v12 = 2112;
        v13 = languageCode2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s No language code saved, but Assistant is enabled - saving language: %@", &v10, 0x16u);
      }

      [(ADCommandCenter *)self _setLanguageCode:languageCode2 outputVoice:0 isDefaultValue:1 withCompletion:0];
    }
  }
}

- (void)setLanguageCode:(id)code outputVoice:(id)voice withCompletion:(id)completion
{
  codeCopy = code;
  voiceCopy = voice;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001DEC2C;
  v15[3] = &unk_10051E0D8;
  v15[4] = self;
  v16 = codeCopy;
  v17 = voiceCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = voiceCopy;
  v14 = codeCopy;
  dispatch_async(queue, v15);
}

- (void)_setLanguageCode:(id)code outputVoice:(id)voice isDefaultValue:(BOOL)value withCompletion:(id)completion
{
  valueCopy = value;
  codeCopy = code;
  voiceCopy = voice;
  completionCopy = completion;
  v13 = [codeCopy length];
  v14 = +[AFPreferences sharedPreferences];
  v15 = v14;
  if (v13 || ([v14 languageCode], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
  {
    v18 = codeCopy;
    if (([v18 isEqualToString:@"ADLanguageCodeKeepSame"] & 1) == 0)
    {
      v19 = +[AFPreferences sharedPreferences];
      v20 = [v19 bestSupportedLanguageCodeForLanguageCode:v18];

      v18 = v20;
    }

    [(ADCommandCenter *)self _setLanguageCode:v18 outputVoice:voiceCopy isDefaultValue:valueCopy];
    [(ADCommandCenter *)self _clearQueuedLanguageCode];
    [(ADCommandCenter *)self _clearQueuedOutputVoice];
    if (!voiceCopy)
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)setLanguageCode:(id)code withCompletion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DEEEC;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = codeCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = codeCopy;
  dispatch_async(queue, block);
}

- (void)setDictationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ADCommandCenter setDictationEnabled:]";
    v9 = 1024;
    v10 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DF0A4;
  v5[3] = &unk_1005166C8;
  v6 = enabledCopy;
  sub_1001DF104(v5);
}

- (void)setAssistantEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ADCommandCenter setAssistantEnabled:]";
    v17 = 1024;
    LODWORD(v18) = enabledCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  [(ADCommandCenter *)self _createAssistantLocallyIfNeeded:enabledCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001DF7B0;
  v12[3] = &unk_1005166C8;
  v13 = enabledCopy;
  sub_1001DF104(v12);
  if (enabledCopy)
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
  [v11 siriEnabledStatusDidChange:enabledCopy];
}

- (void)_downloadMorphunAssets:(id)assets
{
  if (assets)
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

- (void)forceAudioSessionInactiveWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DFCD4;
  block[3] = &unk_10051BFA8;
  v10 = completionCopy;
  optionsCopy = options;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)forceAudioSessionActiveWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DFDA8;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = contextCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)preheatServicesForDomain:(id)domain
{
  domainCopy = domain;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DFE50;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  dispatch_async(queue, v7);
}

- (void)preheatWithRecordDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DFFA0;
  block[3] = &unk_10051DFE8;
  v9 = identifierCopy;
  dispatch_async(v5, block);

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E0134;
  v7[3] = &unk_10051DFE8;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)preheatWithStyle:(int64_t)style forOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (style != 2 || optionsCopy)
  {
    if (style != 4 || optionsCopy)
    {
      v11 = optionsCopy;
      if (style == 3)
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
    v14 = (style & 0xFFFFFFFFFFFFFFFBLL) == 0 || style == 2;
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
  v21 = completionCopy;
  styleCopy = style;
  v17 = completionCopy;
  v18 = v11;
  dispatch_async(v16, v19);
}

- (void)_removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADCommandCenter _removeDelegate:]";
    v10 = 2048;
    v11 = delegateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  [(ADCommandCenter *)self _reallyEndSessionForDelegate:delegateCopy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0548;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startCloudKitSyncWeeklyForActivity:(id)activity
{
  activityCopy = activity;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E061C;
  block[3] = &unk_10051DFE8;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_async(queue, block);
}

- (void)syncAnchorKeys:(id)keys forceReset:(BOOL)reset reasons:(id)reasons
{
  resetCopy = reset;
  keysCopy = keys;
  reasonsCopy = reasons;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v19 = "[ADCommandCenter syncAnchorKeys:forceReset:reasons:]";
    v20 = 2112;
    v21 = keysCopy;
    v22 = 1024;
    v23 = resetCopy;
    v24 = 2112;
    v25 = reasonsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s anchors for keys=%@ forceReset=%d reasons=%@", buf, 0x26u);
  }

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001E0870;
  v14[3] = &unk_10051C958;
  v14[4] = self;
  v15 = keysCopy;
  v17 = resetCopy;
  v16 = reasonsCopy;
  v12 = reasonsCopy;
  v13 = keysCopy;
  dispatch_async(queue, v14);
}

- (id)_managedStoreObjectForKey:(id)key
{
  keyCopy = key;
  _domainObjectCache = [(ADCommandCenter *)self _domainObjectCache];
  v6 = [_domainObjectCache domainObjectForKey:keyCopy];

  return v6;
}

- (void)_setManagedStoreObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  _domainObjectCache = [(ADCommandCenter *)self _domainObjectCache];
  [_domainObjectCache setDomainObject:objectCopy forKey:keyCopy];
}

- (void)_handleRemoteSpeechRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[ADCommandCenter _handleRemoteSpeechRequest:completion:]";
    v25 = 2112;
    v26 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = +[AFAnalytics sharedAnalytics];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001E0BDC;
  v21[3] = &unk_10051DF78;
  v22 = requestCopy;
  v10 = requestCopy;
  [v9 logEventWithType:120 contextProvider:v21];

  _remoteSpeechRequestHelper = [(ADCommandCenter *)self _remoteSpeechRequestHelper];
  v12 = [_remoteSpeechRequestHelper setSpeechRequestOptions:v10 withCompletion:completionCopy];
  v13 = +[ADDaemon sharedDaemon];
  [v13 startUISpeechRequest];

  v14 = dispatch_time(0, 5000000000);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0BE4;
  block[3] = &unk_10051E010;
  v19 = v12;
  v20 = _remoteSpeechRequestHelper;
  v16 = _remoteSpeechRequestHelper;
  v17 = v12;
  dispatch_after(v14, queue, block);
}

- (void)_openURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  currentClient = self->_currentClient;
  if (currentClient)
  {
    [(ADCommandCenterClient *)currentClient adRequestRequestedOpenURL:lCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_handleIntent:(id)intent inBackgroundAppWithBundleId:(id)id reply:(id)reply
{
  intentCopy = intent;
  idCopy = id;
  replyCopy = reply;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[ADCommandCenter _handleIntent:inBackgroundAppWithBundleId:reply:]";
    v14 = 2112;
    v15 = intentCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", &v12, 0x16u);
  }

  v11 = +[AFSiriActivationConnection sharedConnection];
  [v11 handleIntent:intentCopy inBackgroundAppWithBundleId:idCopy reply:replyCopy];
}

- (void)_handleExternalActivationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v41 = "[ADCommandCenter _handleExternalActivationRequest:completion:]";
    v42 = 2112;
    v43 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = +[AFAnalytics sharedAnalytics];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001E12D0;
  v38[3] = &unk_10051DF78;
  v10 = requestCopy;
  v39 = v10;
  [v9 logEventWithType:122 contextProvider:v38];

  speechRequestOptions = [v10 speechRequestOptions];
  handoffURLString = [v10 handoffURLString];

  if (handoffURLString)
  {
    v13 = [NSURL alloc];
    handoffURLString2 = [v10 handoffURLString];
    v15 = [v13 initWithString:handoffURLString2];
    v16 = sub_100215118(v15);

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v16, 0);
    }
  }

  else
  {
    _remoteRequestHelper = [(ADCommandCenter *)self _remoteRequestHelper];
    [_remoteRequestHelper setRemoteRequestInfo:v10];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001E12D8;
    v35[3] = &unk_10051E010;
    v36 = speechRequestOptions;
    v18 = v10;
    v37 = v18;
    v19 = objc_retainBlock(v35);
    if ([v18 handoffRequiresUserInteraction])
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }

      userNotificationRequestForRemoteRequest = [_remoteRequestHelper userNotificationRequestForRemoteRequest];
      v21 = +[ADUserNotificationServiceProvider personalDomainNotificationProvider];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001E144C;
      v33[3] = &unk_1005166A8;
      v34 = v19;
      [v21 postNotificationRequest:userNotificationRequestForRemoteRequest options:1 responseHandler:v33];

      identifier = [userNotificationRequestForRemoteRequest identifier];

      v23 = 185.0;
    }

    else
    {
      [_remoteRequestHelper setCompletion:completionCopy];
      (v19[2])(v19);
      identifier = 0;
      v23 = 5.0;
    }

    v24 = dispatch_time(0, (v23 * 1000000000.0));
    queue = self->_queue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001E14CC;
    v28[3] = &unk_10051DBB8;
    v29 = v18;
    v30 = _remoteRequestHelper;
    v32 = v23;
    v31 = identifier;
    v26 = identifier;
    v27 = _remoteRequestHelper;
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
    _account = [(ADCommandCenter *)self _account];
    validationExpiration = [_account validationExpiration];

    if (validationExpiration)
    {
      [validationExpiration timeIntervalSinceNow];
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
  dictationIsEnabled = [v5 dictationIsEnabled];

  if (dictationIsEnabled)
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

  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager refreshValidationData];
}

- (void)_postWatchNotificationWithContext:(id)context withError:(id)error
{
  contextCopy = context;
  errorCopy = error;
  if (errorCopy)
  {
    errorTitle = [contextCopy errorTitle];
    errorBody = [contextCopy errorBody];
    [contextCopy errorButtonText];
  }

  else
  {
    errorTitle = [contextCopy successTitle];
    errorBody = [contextCopy successBody];
    [contextCopy successButtonText];
  }
  v8 = ;
  v9 = v8;
  if (errorTitle && errorBody && v8)
  {
    CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, errorTitle, errorBody, v8);
  }

  else if (!errorTitle)
  {
    goto LABEL_10;
  }

  CFRelease(errorTitle);
LABEL_10:
  if (errorBody)
  {
    CFRelease(errorBody);
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

- (void)_deleteSiriHistoryWithContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
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
  v10 = contextCopy;
  v36 = v10;
  objc_copyWeak(&v39, &location);
  p_buf = &buf;
  v11 = completionCopy;
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
  uUIDString = [v20 UUIDString];
  [v19 setAceId:uUIDString];

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
  _queue = [v23 _queue];
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
  dispatch_async(_queue, block);

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

  _account = [(ADCommandCenter *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  speechIdentifier = [_account speechIdentifier];
  if (assistantIdentifier | speechIdentifier)
  {
    v7 = objc_alloc_init(ADAddressBookManager);
    [(ADAddressBookManager *)v7 unregisterChangeHistory];
    if ([_account needsCreation])
    {
      [_account setNeedsCreation:0];
      [_account setNeedsDestruction:0];
      [_account save];
    }

    else if (([_account needsDestruction] & 1) == 0)
    {
      v8 = +[ADDaemon sharedDaemon];
      [v8 scheduleDestroyJob];

      [_account setNeedsDestruction:1];
      [_account save];
      v9 = +[AFFeatureFlags isOnDeviceHistoryDeletionEnabled];
      v10 = +[AFPreferences sharedPreferences];
      longLivedIdentifierUploadingEnabled = [v10 longLivedIdentifierUploadingEnabled];

      if (v9)
      {
        if ((longLivedIdentifierUploadingEnabled & 1) == 0)
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
    _speechManager = [(ADCommandCenter *)self _speechManager];
    [_speechManager disableDESWithCompletion:&stru_1005165F0];

    v14 = +[ADSyncSnapshot sharedInstance];
    [v14 deleteSavedSnapshots];

    [(ADCommandCenter *)self _metrics_destroyAllMetrics];
    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    [_sessionManager resetSessionsAndMakeQuiet:0];

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_UTILITY, 0);

    v18 = dispatch_queue_create("com.apple.siri.duet", v17);
    AFDeleteCoreDuetEventsInStream();
    AFRecordCoreDuetContext();

    v19 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    firstObject = [v19 firstObject];

    v21 = [firstObject stringByAppendingPathComponent:@"SiriEdutainment"];
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

- (void)_setActiveAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter _setActiveAccountIdentifier:]";
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s setting identifier=%@", &v10, 0x16u);
  }

  v6 = [ADAccount setActiveAccountIdentifier:identifierCopy];
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

- (void)_deleteAccountWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [ADAccount accountForIdentifier:?];
    [v3 removeAndSave];
  }
}

- (void)_createAssistantLocallyIfNeeded:(BOOL)needed
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADCommandCenter _createAssistantLocallyIfNeeded:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v11, 0xCu);
  }

  _account = [(ADCommandCenter *)self _account];
  v7 = _account;
  if (needed)
  {
    if ([_account needsDestruction])
    {
      [v7 setNeedsDestruction:0];
      [v7 setNeedsCreation:1];
      v8 = +[ADDaemon sharedDaemon];
      [v8 unscheduleDestroyJob];

      [v7 save];
    }

    assistantIdentifier = [v7 assistantIdentifier];

    if (!assistantIdentifier)
    {
      [v7 clearAssistantData];
      [v7 updateAssistantIdentifiers];
      [v7 setNeedsCreation:1];
      [v7 save];
      v10 = dispatch_get_global_queue(9, 0);
      dispatch_async(v10, &stru_1005165D0);
    }
  }

  else if ([_account needsCreation])
  {
    [v7 setNeedsCreation:0];
    [v7 save];
  }
}

- (void)_getDeferredObjectsWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  _resultObjectCache = [(ADCommandCenter *)self _resultObjectCache];
  v16 = 0;
  v9 = [_resultObjectCache objectsForIds:identifiersCopy missingReferences:&v16];
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
    v14 = identifiersCopy;
    v15 = completionCopy;
    [(ADCommandCenter *)self _sendCommandToServer:v11 opportunistically:0 completion:v12];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v9, 0);
  }
}

- (void)_fetchSupportedLanguagesWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v9 = completionCopy;
  v7 = completionCopy;
  [(ADCommandCenter *)self _sendCommandToServer:v6 completion:v8];
}

- (void)_clearContextAndStartDictationSessionWithLanguageCode:(id)code dictationOptions:(id)options
{
  codeCopy = code;
  optionsCopy = options;
  [(ADCommandCenter *)self _clearContext];
  if ([optionsCopy shouldClassifyIntent])
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ADCommandCenter _clearContextAndStartDictationSessionWithLanguageCode:dictationOptions:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s shouldClassifyIntent is YES; will update UoD status", buf, 0xCu);
    }

    v9 = [(ADCommandCenter *)self _updateUODAssetStatusForLanguage:codeCopy];
  }

  v10 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
  offlineDictationStatus = [v10 offlineDictationStatus];

  v12 = AFIsDictationLanguageInstalledForOfflineRecognition();
  if (v12)
  {
    v13 = AFIsNLAssetAvailableFromUodStatus();
  }

  else
  {
    v13 = 0;
  }

  _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
  _account = [(ADCommandCenter *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  [_requestDispatcherService startDictationSessionWithAssistantId:assistantIdentifier languageCode:codeCopy recognitionOnDevice:v12 shouldClassifyIntent:objc_msgSend(optionsCopy understandingOnDevice:{"shouldClassifyIntent"), v13}];

  if (self->_serviceManager)
  {
    _queue = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E3E54;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(_queue, block);
  }
}

- (id)_fetchUODStatusForLanguageCode:(id)code
{
  v4 = AFSiriLogContextDaemon;
  codeCopy = code;
  v6 = os_signpost_id_generate(v4);
  v7 = AFSiriLogContextDaemon;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AssetFetch", &unk_100468A0D, buf, 2u);
  }

  v9 = [(ADAssetManager *)self->_assetManager assetsAvailableStatusForLanguage:codeCopy];

  v10 = AFSiriLogContextDaemon;
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v6, "AssetFetch", &unk_100468A0D, v13, 2u);
  }

  return v9;
}

- (id)_updateUODAssetStatusForLanguage:(id)language
{
  languageCopy = language;
  languageCode = languageCopy;
  if (!languageCopy)
  {
    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    languageCode = [_sessionManager languageCode];
  }

  v7 = [(ADCommandCenter *)self _fetchUODStatusForLanguageCode:languageCode];
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
  _locationManager = [(ADCommandCenter *)self _locationManager];
  [_locationManager setAllowAdHocSendingLocationToServer:v9];

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
    v33 = languageCode;
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

- (void)_handleAceCommand:(id)command afterCurrentRequest:(BOOL)request waitForResponse:(BOOL)response withDelegate:(id)delegate completion:(id)completion
{
  requestCopy = request;
  commandCopy = command;
  delegateCopy = delegate;
  completionCopy = completion;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v32 = "[ADCommandCenter _handleAceCommand:afterCurrentRequest:waitForResponse:withDelegate:completion:]";
    v33 = 2112;
    v34 = commandCopy;
    v35 = 2112;
    v36 = delegateCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s command = %@, delegate = %@", buf, 0x20u);
  }

  if (requestCopy)
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
  v17 = commandCopy;
  v24 = v17;
  v18 = v16;
  v25 = v18;
  v29 = requestCopy;
  v19 = delegateCopy;
  v26 = v19;
  selfCopy = self;
  responseCopy = response;
  v20 = completionCopy;
  v28 = v20;
  v21 = objc_retainBlock(v23);
  v22 = v21;
  if (requestCopy)
  {
    dispatch_group_notify(self->_requestGroup, self->_queue, v21);
  }

  else
  {
    (v21[2])(v21);
  }
}

- (void)_firstChanceServiceChangeIdFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy)
  {
    v7 = [(NSMutableDictionary *)self->_firstChanceServices objectForKey:fromCopy];
    v8 = v7;
    if (toCopy && v7)
    {
      [(NSMutableDictionary *)self->_firstChanceServices setObject:v7 forKey:toCopy];
    }

    [(NSMutableDictionary *)self->_firstChanceServices removeObjectForKey:fromCopy];
  }
}

- (id)_firstChanceServiceForCommand:(id)command
{
  firstChanceServices = self->_firstChanceServices;
  refId = [command refId];
  v5 = [(NSMutableDictionary *)firstChanceServices objectForKey:refId];

  return v5;
}

- (void)_removeFirstChanceServiceForAceId:(id)id
{
  if (id)
  {
    [(NSMutableDictionary *)self->_firstChanceServices removeObjectForKey:?];
  }
}

- (void)_setFirstChanceService:(id)service forAceId:(id)id
{
  serviceCopy = service;
  idCopy = id;
  if (idCopy)
  {
    firstChanceServices = self->_firstChanceServices;
    if (!firstChanceServices)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = self->_firstChanceServices;
      self->_firstChanceServices = v8;

      firstChanceServices = self->_firstChanceServices;
    }

    [(NSMutableDictionary *)firstChanceServices setObject:serviceCopy forKey:idCopy];
  }
}

- (void)_handleGenericConcreteAceCommand:(id)command withDelegate:(id)delegate interruptOutstandingRequest:(BOOL)request reply:(id)reply
{
  requestCopy = request;
  commandCopy = command;
  delegateCopy = delegate;
  replyCopy = reply;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
    v30 = 2112;
    v31 = delegateCopy;
    v32 = 2112;
    v33 = commandCopy;
    v34 = 1024;
    v35 = requestCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@ %@ %d", buf, 0x26u);
  }

  _currentRequest = [(ADCommandCenter *)self _currentRequest];
  currentRequestCommand = [_currentRequest currentRequestCommand];

  if (replyCopy)
  {
    replyCopy[2](replyCopy, currentRequestCommand != 0);
  }

  if (currentRequestCommand && !requestCopy)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "[ADCommandCenter _handleGenericConcreteAceCommand:withDelegate:interruptOutstandingRequest:reply:]";
      v30 = 2112;
      v31 = currentRequestCommand;
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
    v31 = commandCopy;
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

    [(ADCommandCenter *)self _handleSendCommands:commandCopy forRequestDelegate:delegateCopy completion:0];
    goto LABEL_15;
  }

  if ([(ADCommandCenter *)self _isServerBoundCommand:commandCopy])
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
      [(ADCommandCenter *)self _startNonSpeechRequest:commandCopy forDelegate:delegateCopy];
    }

    else if ([commandCopy ad_willHaveReply])
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001E5A88;
      v25[3] = &unk_100516510;
      v25[4] = self;
      v26 = commandCopy;
      v27 = delegateCopy;
      [(ADCommandCenter *)self _sendCommandToServer:v26 opportunistically:0 completion:v25];
    }

    else
    {
      [(ADCommandCenter *)self _sendCommandToServer:commandCopy];
    }

    goto LABEL_15;
  }

  v20 = [(ADCommandCenter *)self _isClientBoundCommand:commandCopy];
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
    v31 = commandCopy;
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

  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager handleCommand:commandCopy];

LABEL_15:
}

- (void)_handleGenericAceCommand:(id)command withDelegate:(id)delegate interruptOutstandingRequest:(BOOL)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  delegateCopy = delegate;
  v12 = [AceObject aceObjectWithDictionary:command];
  [(ADCommandCenter *)self _handleGenericConcreteAceCommand:v12 withDelegate:delegateCopy interruptOutstandingRequest:requestCopy reply:replyCopy];
}

- (void)_updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  eventCopy = event;
  commandSuppressionCopy = commandSuppression;
  suppressionCopy = suppression;
  visibleTextCopy = visibleText;
  activeCopy = active;
  selectedTextCopy = selectedText;
  postfixTextCopy = postfixText;
  textCopy = text;
  _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
  _account = [(ADCommandCenter *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  _speechCapturingContext = [(ADCommandCenter *)self _speechCapturingContext];
  sessionUUID = [_speechCapturingContext sessionUUID];
  [_requestDispatcherService updateVoiceCommandContextWithAssistantId:assistantIdentifier requestId:sessionUUID prefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy disambiguationActive:activeCopy cursorInVisibleText:visibleTextCopy favorCommandSuppression:suppressionCopy abortCommandSuppression:commandSuppressionCopy undoEvent:eventCopy];
}

- (void)_resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[ADCommandCenter _resumeRecognitionWithPrefixText:postfixText:selectedText:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v17, 0xCu);
  }

  _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
  _account = [(ADCommandCenter *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  _speechCapturingContext = [(ADCommandCenter *)self _speechCapturingContext];
  sessionUUID = [_speechCapturingContext sessionUUID];
  [_requestDispatcherService resumeDictationRecognitionWithAssistantId:assistantIdentifier requestId:sessionUUID prefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy];
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

  _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
  _account = [(ADCommandCenter *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  _speechCapturingContext = [(ADCommandCenter *)self _speechCapturingContext];
  sessionUUID = [_speechCapturingContext sessionUUID];
  [_requestDispatcherService pauseDictationRecognitionWithAssistantId:assistantIdentifier requestId:sessionUUID];
}

- (void)_sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter _sendSpeechCorrectionInfo:interactionIdentifier:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v8 = [[LBLocalSpeechRecognizerClient alloc] initWithDelegate:0];
  [v8 sendSpeechCorrectionInfo:infoCopy interactionIdentifier:identifierCopy];
  [v8 invalidate];
}

- (void)_sendSpeechCorrectionInfo:(id)info forCorrectionContext:(id)context
{
  infoCopy = info;
  contextCopy = context;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _sendSpeechCorrectionInfo:forCorrectionContext:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  v9 = objc_alloc_init(SASSpeechCorrectionStatistics);
  [v9 ad_setAFSpeechCorrectionInfo:infoCopy];
  [v9 ad_setAFCorrectionContext:contextCopy];
  [(ADCommandCenter *)self _sendCommandToServer:v9];
}

- (void)_cancelSpeechForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADCommandCenter _cancelSpeechForDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  if (self->_speechDelegate == delegateCopy)
  {
    if ((self->_speechManagerState - 1) <= 1)
    {
      _speechManager = [(ADCommandCenter *)self _speechManager];
      [_speechManager cancelSpeechCaptureSuppressingAlert:AFIsNano()];

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

- (void)_stopSpeechWithOptions:(id)options forDelegate:(id)delegate
{
  optionsCopy = options;
  delegateCopy = delegate;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADCommandCenter _stopSpeechWithOptions:forDelegate:]";
    v16 = 2112;
    v17 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (self->_speechDelegate == delegateCopy)
  {
    _speechManager = [(ADCommandCenter *)self _speechManager];
    [_speechManager stopSpeechCaptureWithOptions:optionsCopy];

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

- (void)_updateSpeechOptions:(id)options forDelegate:(id)delegate allowUpdateInSpeechCompletion:(BOOL)completion
{
  optionsCopy = options;
  delegateCopy = delegate;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADCommandCenter _updateSpeechOptions:forDelegate:allowUpdateInSpeechCompletion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_speechDelegate == delegateCopy)
  {
    if (optionsCopy)
    {
      if (CSSiriSpeechRecordingGetUsesServerEndpointingFromRequestOptions() && (CSSiriSpeechRecordingGetUsesServerEndpointingFromRequestOptions() & 1) == 0)
      {
        -[AFSpeechRequestOptions setEndpointerOperationMode:](self->_currentSpeechRequestOptions, "setEndpointerOperationMode:", [optionsCopy endpointerOperationMode]);
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

      _speechManager = [(ADCommandCenter *)self _speechManager];
      [_speechManager updateSpeechOptions:optionsCopy];
    }
  }

  else
  {
    if (completion)
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
        v22 = optionsCopy;
        v23 = delegateCopy;
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

- (void)_rollbackRequestForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _rollbackRequestForDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (self->_requestDelegate == delegateCopy)
  {
    _currentRequest = [(ADCommandCenter *)self _currentRequest];
    currentRequestCommand = [_currentRequest currentRequestCommand];

    if (currentRequestCommand)
    {
      _lastRequest = currentRequestCommand;
      [(ADCommandCenter *)self _cancelCurrentRequestForReason:10 andError:0 successorInfo:0];
    }

    else
    {
      _lastRequest = [(ADCommandCenter *)self _lastRequest];
      if (!_lastRequest)
      {
        v9 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v10 = 136315138;
          v11 = "[ADCommandCenter _rollbackRequestForDelegate:]";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Trying to rollback a request, but don't have one", &v10, 0xCu);
        }

        _lastRequest = 0;
        goto LABEL_8;
      }
    }

    [(ADCommandCenter *)self _sendRollbackCommandForCommand:_lastRequest];
LABEL_8:
  }
}

- (void)_cancelRequestForDelegate:(id)delegate reason:(int64_t)reason error:(id)error
{
  delegateCopy = delegate;
  errorCopy = error;
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

  if (self->_requestDelegate == delegateCopy)
  {
    if ((self->_speechManagerState - 1) <= 1)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "[ADCommandCenter _cancelRequestForDelegate:reason:error:]";
        v17 = 1024;
        LODWORD(v18) = reason == 1;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Cancelling speech capture (suppressing alert: %d)", &v15, 0x12u);
      }

      _speechManager = [(ADCommandCenter *)self _speechManager];
      [_speechManager cancelSpeechCaptureSuppressingAlert:reason == 1];
    }

    [(ADCommandCenter *)self _cancelCurrentRequestForReason:reason andError:errorCopy successorInfo:0];
  }
}

- (void)_startDictationWithURL:(id)l isNarrowBand:(BOOL)band language:(id)language options:(id)options sessionUUID:(id)d delegate:(id)delegate
{
  lCopy = l;
  languageCopy = language;
  optionsCopy = options;
  dCopy = d;
  delegateCopy = delegate;
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
  v26 = optionsCopy;
  v27 = languageCopy;
  v28 = lCopy;
  bandCopy = band;
  v29 = dCopy;
  v21 = dCopy;
  v22 = lCopy;
  v23 = languageCopy;
  v24 = optionsCopy;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:delegateCopy suppressAlert:0 withCompletion:v25];
}

- (void)_addRecordedSpeechSampleData:(id)data delegate:(id)delegate
{
  dataCopy = data;
  delegateCopy = delegate;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _addRecordedSpeechSampleData:delegate:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (self->_speechDelegate == delegateCopy)
  {
    _speechManager = [(ADCommandCenter *)self _speechManager];
    [_speechManager addRecordedDictationAudioSampleData:dataCopy];
  }
}

- (void)_startRecordedDictationWithLanguage:(id)language options:(id)options sessionUUID:(id)d narrowband:(BOOL)narrowband delegate:(id)delegate
{
  languageCopy = language;
  optionsCopy = options;
  dCopy = d;
  delegateCopy = delegate;
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
  v22 = optionsCopy;
  v23 = languageCopy;
  v24 = dCopy;
  narrowbandCopy = narrowband;
  v18 = dCopy;
  v19 = languageCopy;
  v20 = optionsCopy;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:delegateCopy suppressAlert:0 withCompletion:v21];
}

- (void)_startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate
{
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  dCopy = d;
  delegateCopy = delegate;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADCommandCenter _startDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:]";
    v20 = 2112;
    v21 = codeCopy;
    v22 = 2112;
    v23 = delegateCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s %@ %@", &v18, 0x20u);
  }

  [(ADCommandCenter *)self _startDictationWithLanguageCode:codeCopy options:optionsCopy speechOptions:speechOptionsCopy sessionUUID:dCopy delegate:delegateCopy completion:0];
}

- (void)_startRecordingForPendingDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate completion:(id)completion
{
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  dCopy = d;
  delegateCopy = delegate;
  completionCopy = completion;
  delegateCopy = [[NSString alloc] initWithFormat:@"languageCode = %@, dictationOptions = %@, speechOptions = %@, sessionUUID = %@, delegate = %@", codeCopy, optionsCopy, speechOptionsCopy, dCopy, delegateCopy];
  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[ADCommandCenter _startRecordingForPendingDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]";
    v34 = 2112;
    v35 = delegateCopy;
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
    v37 = delegateCopy;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_enter(v22);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001E7948;
  v27[3] = &unk_100519D50;
  v27[4] = self;
  v28 = delegateCopy;
  usePrelisteningMode = [speechOptionsCopy usePrelisteningMode];
  v29 = v22;
  v30 = completionCopy;
  v24 = v22;
  v25 = delegateCopy;
  v26 = completionCopy;
  [(ADCommandCenter *)self _startDictationWithLanguageCode:codeCopy options:optionsCopy speechOptions:speechOptionsCopy sessionUUID:dCopy delegate:delegateCopy completion:v27];
}

- (void)_startDictationWithLanguageCode:(id)code options:(id)options speechOptions:(id)speechOptions sessionUUID:(id)d delegate:(id)delegate completion:(id)completion
{
  codeCopy = code;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  dCopy = d;
  delegateCopy = delegate;
  completionCopy = completion;
  if (AFIsATVOnly() && [optionsCopy secureOfflineOnly])
  {
    v20 = AFPreferencesOnDeviceLocaleForSpellingLocale();
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = codeCopy;
    }

    v23 = v22;

    v38 = 1;
    codeCopy = v23;
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
  v25 = speechOptionsCopy;
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
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:delegateCopy suppressAlert:0 withCompletion:v53];
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
  [(ADCommandCenter *)self _getDictationLanguages:codeCopy options:optionsCopy speechOptions:v25 delegate:delegateCopy completion:v49];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E867C;
  block[3] = &unk_1005164E8;
  block[4] = self;
  v40 = delegateCopy;
  v46 = v57;
  v47 = v55;
  v41 = dCopy;
  v42 = optionsCopy;
  v43 = v25;
  v44 = codeCopy;
  v48 = v38;
  v45 = completionCopy;
  v32 = completionCopy;
  v33 = codeCopy;
  v34 = v25;
  v35 = optionsCopy;
  v36 = dCopy;
  v37 = delegateCopy;
  dispatch_group_notify(v30, queue, block);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
}

- (void)_startSpeechRequestWithURL:(id)l isNarrowBand:(BOOL)band withDelegate:(id)delegate completion:(id)completion
{
  lCopy = l;
  delegateCopy = delegate;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[ADCommandCenter _startSpeechRequestWithURL:isNarrowBand:withDelegate:completion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v14 = +[AFAnalytics sharedAnalytics];
  [v14 logEventWithType:120 context:0];

  [(ADCommandCenter *)self _replaceRequestDelegate:delegateCopy reason:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001E8C8C;
  v17[3] = &unk_10051C6C8;
  v17[4] = self;
  v18 = lCopy;
  bandCopy = band;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = lCopy;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:delegateCopy suppressAlert:0 withCompletion:v17];
}

- (void)_startAcousticIDRequestWithDelegate:(id)delegate withOptions:(id)options context:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  delegateCopy = delegate;
  v11 = +[AFAnalytics sharedAnalytics];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001E8E7C;
  v18[3] = &unk_10051DF78;
  v12 = optionsCopy;
  v19 = v12;
  [v11 logEventWithType:122 contextProvider:v18];

  [(ADCommandCenter *)self _replaceRequestDelegate:delegateCopy reason:5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E8E84;
  v15[3] = &unk_10051DB68;
  v15[4] = self;
  v16 = v12;
  v17 = contextCopy;
  v13 = contextCopy;
  v14 = v12;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:delegateCopy waitForRecordingToFinish:1 suppressAlert:0 withCompletion:v15];
}

- (void)_startSpeechPronunciationRequestWithDelegate:(id)delegate withOptions:(id)options pronunciationContext:(id)context
{
  delegateCopy = delegate;
  optionsCopy = options;
  contextCopy = context;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 136315650;
    v27 = "[ADCommandCenter _startSpeechPronunciationRequestWithDelegate:withOptions:pronunciationContext:]";
    v28 = 2112;
    v29 = delegateCopy;
    v30 = 2048;
    activationEvent = [optionsCopy activationEvent];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ Event %ld", buf, 0x20u);

    v11 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    serverCommandId = [optionsCopy serverCommandId];
    *buf = 136315650;
    v27 = "[ADCommandCenter _startSpeechPronunciationRequestWithDelegate:withOptions:pronunciationContext:]";
    v28 = 2112;
    v29 = contextCopy;
    v30 = 2112;
    activationEvent = serverCommandId;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Pronunciation Context: %@ refId %@", buf, 0x20u);
  }

  v15 = +[AFAnalytics sharedAnalytics];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001E91E8;
  v24[3] = &unk_10051DF78;
  v16 = optionsCopy;
  v25 = v16;
  [v15 logEventWithType:122 contextProvider:v24];

  serverCommandId2 = [v16 serverCommandId];
  if (serverCommandId2)
  {
  }

  else if (self->_requestDelegate == delegateCopy)
  {
    [(ADCommandCenter *)self _replaceRequestDelegate:delegateCopy reason:3];
  }

  v18 = self->_siriFullUODSupported && !self->_siriHybridUODSupported;
  [v16 setSkipGeneratingSpeechPacket:v18];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001E91F0;
  v21[3] = &unk_10051DB68;
  v21[4] = self;
  v22 = v16;
  v23 = contextCopy;
  v19 = contextCopy;
  v20 = v16;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:delegateCopy waitForRecordingToFinish:1 suppressAlert:0 withCompletion:v21];
}

- (void)_startRecordingForPendingSpeechRequestForDelegate:(id)delegate withOptions:(id)options sessionUUID:(id)d completion:(id)completion
{
  delegateCopy = delegate;
  optionsCopy = options;
  dCopy = d;
  completionCopy = completion;
  delegateCopy = [[NSString alloc] initWithFormat:@"speechOptions = %@, sessionUUID = %@, delegate = %@", optionsCopy, dCopy, delegateCopy];
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[ADCommandCenter _startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]";
    v29 = 2112;
    v30 = delegateCopy;
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
    v32 = delegateCopy;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_enter(v16);
  usePrelisteningMode = [optionsCopy usePrelisteningMode];
  -[ADCommandCenter _setHeadphonesAuthenticated:](self, "_setHeadphonesAuthenticated:", [optionsCopy isHeadphonesAuthenticated]);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001E953C;
  v22[3] = &unk_100519D50;
  v22[4] = self;
  v23 = delegateCopy;
  v26 = usePrelisteningMode;
  v24 = v16;
  v25 = completionCopy;
  v19 = v16;
  v20 = delegateCopy;
  v21 = completionCopy;
  [(ADCommandCenter *)self _startSpeechRequestWithDelegate:delegateCopy withOptions:optionsCopy sessionUUID:dCopy completion:v22];
}

- (void)_startSpeechRequestWithDelegate:(id)delegate withOptions:(id)options sessionUUID:(id)d
{
  delegateCopy = delegate;
  optionsCopy = options;
  dCopy = d;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = 136315650;
    v14 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:]";
    v15 = 2112;
    v16 = delegateCopy;
    v17 = 2048;
    activationEvent = [optionsCopy activationEvent];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ Event %ld", &v13, 0x20u);
  }

  [(ADCommandCenter *)self _startSpeechRequestWithDelegate:delegateCopy withOptions:optionsCopy sessionUUID:dCopy completion:0];
}

- (void)_startSpeechRequestWithDelegate:(id)delegate withOptions:(id)options sessionUUID:(id)d completion:(id)completion
{
  delegateCopy = delegate;
  optionsCopy = options;
  dCopy = d;
  completionCopy = completion;
  delegateCopy = [[NSString alloc] initWithFormat:@"speechOptions = %@, sessionUUID = %@, delegate = %@", optionsCopy, dCopy, delegateCopy];
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v77 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:completion:]";
    v78 = 2112;
    v79 = delegateCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v60 = delegateCopy;
  v16 = +[AFAnalytics sharedAnalytics];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1001EA4EC;
  v74[3] = &unk_10051DF78;
  v17 = optionsCopy;
  v75 = v17;
  [v16 logEventWithType:120 contextProvider:v74];

  _contextManager = [(ADCommandCenter *)self _contextManager];
  if (AFIsHorseman())
  {
    [_contextManager updateBackgroundContextIfNowPlayingInfoChanged];
  }

  v59 = _contextManager;
  activationEvent = [v17 activationEvent];
  if (activationEvent == 5)
  {
    _lastRequest = [(ADCommandCenter *)self _lastRequest];
    aceId = [_lastRequest aceId];
    associatedRequestId = self->_associatedRequestId;
    self->_associatedRequestId = aceId;

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
  hasIncomingCallNotification = [v30 hasIncomingCallNotification];

  v32 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v53 = "NO";
    if (hasIncomingCallNotification)
    {
      v53 = "YES";
    }

    *buf = 136315394;
    v77 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:completion:]";
    v78 = 2080;
    v79 = v53;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s hasIncomingCallNotification: %s", buf, 0x16u);
  }

  [v17 setIsOnPhoneCall:(self->_isInCall | hasIncomingCallNotification) & 1];
  v33 = self->_siriFullUODSupported && !self->_siriHybridUODSupported;
  [v17 setSkipGeneratingSpeechPacket:v33];
  [v17 setHybridUODEnabled:self->_siriHybridUODSupported];
  notifyState = [v17 notifyState];

  if (!notifyState)
  {
    v56 = completionCopy;
    v57 = dCopy;
    v46 = 0;
    completion = 0;
    goto LABEL_25;
  }

  speechRequestOptions = [(ADRemoteSpeechRequestHelper *)self->_remoteSpeechRequestHelper speechRequestOptions];
  completion = [(ADRemoteSpeechRequestHelper *)self->_remoteSpeechRequestHelper completion];
  [(ADRemoteSpeechRequestHelper *)self->_remoteSpeechRequestHelper reset];
  if (!speechRequestOptions)
  {
    remoteRequestInfo = [(ADRemoteRequestHelper *)self->_remoteRequestHelper remoteRequestInfo];
    speechRequestOptions = [remoteRequestInfo speechRequestOptions];

    if (!speechRequestOptions)
    {
      v56 = completionCopy;
      v57 = dCopy;
      v46 = 0;
LABEL_25:
      v58 = v46;
      v55 = activationEvent < 0x20;
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

      v54 = 0x8000A120 >> activationEvent;
      dispatch_group_enter(v47);
      activationEventMachAbsoluteTime = [v17 activationEventMachAbsoluteTime];
      [v17 activationEventTime];
      if (!activationEventMachAbsoluteTime)
      {
        if (v50 <= 0.0)
        {
          v51 = objc_alloc_init(AFRequestInfo);
          goto LABEL_33;
        }

        activationEventMachAbsoluteTime = AFGetMachAbsoluteTimeFromTimeInterval();
      }

      v51 = [[AFRequestInfo alloc] initWithTimestamp:activationEventMachAbsoluteTime];
LABEL_33:
      audioFileURL = v51;
      [v51 setSpeechRequestOptions:v17];
      turnIdentifier = [v17 turnIdentifier];
      [audioFileURL setTurnIdentifier:turnIdentifier];

      [(ADCommandCenter *)self _replaceRequestDelegate:delegateCopy withInfo:audioFileURL reason:0 andCompletion:0];
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
      dCopy = v57;
      v66 = v57;
      v67 = delegateCopy;
      completionCopy = v56;
      v68 = v56;
      v43 = completion;
      v69 = v43;
      v44 = v47;
      [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:v67 waitForRecordingToFinish:v55 & v54 suppressAlert:0 withCompletion:v62];

      goto LABEL_34;
    }

    completion2 = [(ADRemoteRequestHelper *)self->_remoteRequestHelper completion];
    v38 = completion2;
    if (completion2)
    {
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_1001EA4F4;
      v72[3] = &unk_10051E100;
      v73 = completion2;
      v39 = speechRequestOptions;
      v40 = objc_retainBlock(v72);

      completion = v40;
      speechRequestOptions = v39;
    }

    [(ADRemoteRequestHelper *)self->_remoteRequestHelper setRemoteRequestInfo:0];
    [(ADRemoteRequestHelper *)self->_remoteRequestHelper setCompletion:0];
  }

  audioFileURL = [speechRequestOptions audioFileURL];
  if (!AFIsInternalInstall() || !audioFileURL)
  {
    v56 = completionCopy;
    v57 = dCopy;
    v46 = speechRequestOptions;

    v17 = v46;
    goto LABEL_25;
  }

  v58 = speechRequestOptions;
  v42 = [AFSetAudioSessionActiveContext newWithBuilder:&stru_100516428];
  [(ADCommandCenter *)self _forceAudioSessionActiveWithContext:v42 completion:0];

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1001EA508;
  v70[3] = &unk_10051CF58;
  v43 = completion;
  v71 = v43;
  [(ADCommandCenter *)self _startSpeechRequestWithURL:audioFileURL isNarrowBand:0 withDelegate:delegateCopy completion:v70];
  v44 = v71;
  v45 = v60;
LABEL_34:
}

- (void)_startNonSpeechRequest:(id)request forDelegate:(id)delegate withInfo:(id)info options:(id)options suppressAlert:(BOOL)alert completion:(id)completion
{
  alertCopy = alert;
  requestCopy = request;
  delegateCopy = delegate;
  infoCopy = info;
  optionsCopy = options;
  completionCopy = completion;
  v32 = alertCopy;
  delegateCopy = [[NSString alloc] initWithFormat:@"request = %@, requestInfo = %@, speechOptions = %@, suppressAlert = %d, delegate = %@", requestCopy, infoCopy, optionsCopy, alertCopy, delegateCopy];
  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v43 = "[ADCommandCenter _startNonSpeechRequest:forDelegate:withInfo:options:suppressAlert:completion:]";
    v44 = 2112;
    v45 = delegateCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    v20 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = [NSNumber numberWithBool:alertCopy];
    *buf = 136315906;
    v43 = "[ADCommandCenter _startNonSpeechRequest:forDelegate:withInfo:options:suppressAlert:completion:]";
    v44 = 2112;
    v45 = requestCopy;
    v46 = 2112;
    v47 = delegateCopy;
    v48 = 2112;
    v49 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s %@ %@ %@", buf, 0x2Au);
  }

  v23 = +[AFAnalytics sharedAnalytics];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1001EACAC;
  v40[3] = &unk_10051DF78;
  v24 = optionsCopy;
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
    v47 = delegateCopy;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_enter(v25);
  [(ADCommandCenter *)self _replaceRequestDelegate:delegateCopy withInfo:infoCopy reason:2 andCompletion:completionCopy];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001EACB4;
  v33[3] = &unk_100516250;
  v34 = v24;
  selfCopy = self;
  v36 = requestCopy;
  v37 = infoCopy;
  v38 = v25;
  v39 = delegateCopy;
  v27 = delegateCopy;
  v28 = v25;
  v29 = infoCopy;
  v30 = requestCopy;
  v31 = v24;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:0 suppressAlert:v32 withCompletion:v33];
}

- (void)_startRequest:(id)request withDelegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v62 = "[ADCommandCenter _startRequest:withDelegate:]";
    v63 = 2112;
    selfCopy2 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  speechRequestOptions = [(ADCommandCenter *)requestCopy speechRequestOptions];
  v10 = +[AFAnalytics sharedAnalytics];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1001EB570;
  v59[3] = &unk_10051DF78;
  v11 = requestCopy;
  v60 = v11;
  [v10 logEventWithType:122 contextProvider:v59];

  completion = [(ADRemoteRequestHelper *)self->_remoteRequestHelper completion];
  remoteRequestInfo = [(ADRemoteRequestHelper *)self->_remoteRequestHelper remoteRequestInfo];
  v14 = remoteRequestInfo;
  if (remoteRequestInfo)
  {
    v15 = remoteRequestInfo;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15;
  v17 = [(ADCommandCenter *)v11 _ad_requestCommandWithRequestHelper:self->_remoteRequestHelper];
  v18 = [(ADCommandCenter *)v11 _ad_speechRequestOptionsWithClientConfiguration:self->_clientConfiguration];
  v46 = completion;
  if (!v17)
  {
    v24 = [(ADCommandCenter *)v11 _ad_localRequestCommandWithRequestHelper:self->_remoteRequestHelper];
    if (v24)
    {
      [(ADCommandCenter *)self _startLocalRequest:v24 withRequestInfo:v16 forDelegate:delegateCopy suppressCancelationAlertIfCapturingSpeech:1 completion:v46];
LABEL_27:

      goto LABEL_28;
    }

    handoffURLString = [(ADCommandCenter *)v11 handoffURLString];

    if (!handoffURLString)
    {
      v17 = 0;
      if (v46)
      {
        v31 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v33 = v16;
          v34 = speechRequestOptions;
          v35 = delegateCopy;
          remoteRequestHelper = self->_remoteRequestHelper;
          v37 = v31;
          remoteRequestInfo2 = [(ADRemoteRequestHelper *)remoteRequestHelper remoteRequestInfo];
          *buf = 136315650;
          v62 = "[ADCommandCenter _startRequest:withDelegate:]";
          v63 = 2112;
          selfCopy2 = self;
          v65 = 2112;
          v66 = remoteRequestInfo2;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s Don't know how to make a local request for this info %@ %@", buf, 0x20u);

          delegateCopy = v35;
          speechRequestOptions = v34;
          v16 = v33;
        }

        v46[2](v46, 0, 0);
        v17 = 0;
      }

      goto LABEL_27;
    }

    v42 = v16;
    v45 = speechRequestOptions;
    v26 = delegateCopy;
    v27 = [NSURL alloc];
    handoffURLString2 = [(ADCommandCenter *)v11 handoffURLString];
    v29 = [v27 initWithString:handoffURLString2];

    if (v29)
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1001EB6C0;
      v47[3] = &unk_10051E100;
      v48 = v46;
      v30 = v29;
      [(ADCommandCenter *)self _openURL:v29 completion:v47];

      delegateCopy = v26;
    }

    else
    {
      v30 = 0;
      delegateCopy = v26;
      v17 = 0;
      if (!v46)
      {
LABEL_26:

        speechRequestOptions = v45;
        v16 = v42;
        goto LABEL_27;
      }

      v32 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v39 = self->_remoteRequestHelper;
        v40 = v32;
        remoteRequestInfo3 = [(ADRemoteRequestHelper *)v39 remoteRequestInfo];
        *buf = 136315650;
        v62 = "[ADCommandCenter _startRequest:withDelegate:]";
        v63 = 2112;
        selfCopy2 = self;
        v65 = 2112;
        v66 = remoteRequestInfo3;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Don't know how to make a local request for this info %@ %@", buf, 0x20u);

        delegateCopy = v26;
      }

      v46[2](v46, 0, 0);
    }

    v17 = 0;
    goto LABEL_26;
  }

  v44 = speechRequestOptions;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1001EB578;
  v52[3] = &unk_100517EA8;
  v52[4] = self;
  v19 = v17;
  v53 = v17;
  v43 = delegateCopy;
  v20 = delegateCopy;
  v54 = v20;
  v55 = v16;
  v56 = v18;
  v57 = v11;
  v58 = completion;
  v21 = objc_retainBlock(v52);
  text = [v14 text];
  if (text && (currentClient = self->_currentClient) != 0)
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1001EB614;
    v49[3] = &unk_100516408;
    v49[4] = self;
    v51 = v21;
    v50 = v20;
    [(ADCommandCenterClient *)currentClient adStartUIRequestWithText:text completion:v49];
  }

  else
  {
    (v21[2])(v21);
  }

  v17 = v19;

  delegateCopy = v43;
  speechRequestOptions = v44;
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

  _currentRequest = [(ADCommandCenter *)self _currentRequest];
  currentRequestId = [_currentRequest currentRequestId];

  if ([(ADCommandCenter *)self _callIsLikely]&& currentRequestId)
  {
    v6 = objc_alloc_init(SARequestCompleted);
    v7 = SiriCoreUUIDStringCreate();
    [v6 setAceId:v7];

    [v6 setRefId:currentRequestId];
    v8 = [(ADCommandCenter *)self _rootExecutionContextForRequestID:currentRequestId];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADCommandCenter _telephonyRequestCompleted]";
      v12 = 2112;
      v13 = currentRequestId;
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

- (void)_reallyEndSessionForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    speechDelegate = self->_speechDelegate;
    requestDelegate = self->_requestDelegate;
    *buf = 136315906;
    v27 = "[ADCommandCenter _reallyEndSessionForDelegate:]";
    v28 = 2048;
    v29 = delegateCopy;
    v30 = 2048;
    v31 = speechDelegate;
    v32 = 2048;
    v33 = requestDelegate;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s delegate %p, _speechDelegate %p, _requestDelegate %p", buf, 0x2Au);
  }

  if (objc_opt_respondsToSelector())
  {
    [(ADCommandCenterSpeechDelegate *)delegateCopy setAdSpeechSessionEnded:1];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001EBE18;
  v23[3] = &unk_10051E010;
  v8 = delegateCopy;
  v24 = v8;
  selfCopy = self;
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

- (void)_endSessionForDelegate:(id)delegate
{
  delegateCopy = delegate;
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
    v14 = delegateCopy;
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

    [(ADCommandCenter *)self _reallyEndSessionForDelegate:delegateCopy];
  }
}

- (void)_setConfiguration:(id)configuration forClient:(id)client
{
  configurationCopy = configuration;
  clientCopy = client;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[ADCommandCenter _setConfiguration:forClient:]";
    v13 = 2112;
    v14 = configurationCopy;
    v15 = 2112;
    v16 = clientCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s configuration = %@, client = %@", &v11, 0x20u);
  }

  if (self->_currentClient == clientCopy)
  {
    v9 = [configurationCopy copy];
    clientConfiguration = self->_clientConfiguration;
    self->_clientConfiguration = v9;

    [(ADSpeechManager *)self->_speechManager setClientConfiguration:self->_clientConfiguration];
    [(ADCommandCenter *)self _setStarkRestriction:[(AFClientConfiguration *)self->_clientConfiguration isDeviceInStarkMode]];
    [(ADCommandCenter *)self _setCarDNDRestriction:[(AFClientConfiguration *)self->_clientConfiguration isDeviceInCarDNDMode]];
    [(ADCommandCenter *)self _setSupportsCarPlayVehicleDataRestriction:[(AFClientConfiguration *)self->_clientConfiguration supportsCarPlayVehicleData]];
    [(ADCommandCenter *)self _setCarOwnsMainAudioRestriction:[(AFClientConfiguration *)self->_clientConfiguration carOwnsMainAudio]];
    [(ADCommandCenter *)self _setWatchAuthenticated:[(AFClientConfiguration *)self->_clientConfiguration isDeviceWatchAuthenticated]];
    [(ADCommandCenter *)self _setIsEyesFree:[(AFClientConfiguration *)self->_clientConfiguration isEyesFreeDevice]];
    if (configurationCopy)
    {
      goto LABEL_9;
    }
  }

  else if (configurationCopy)
  {
    goto LABEL_9;
  }

  if (AFIsInternalInstall())
  {
    byte_100590548 = AFFetchDeviceCarryStatus();
  }

LABEL_9:
}

- (void)_prepareForAppLaunchForRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EC43C;
  v7[3] = &unk_10051E010;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

- (void)_setIsTimeoutSuspended:(BOOL)suspended
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001EC588;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  suspendedCopy = suspended;
  dispatch_async(queue, v4);
}

- (void)_setModesConfiguration:(id)configuration
{
  configurationCopy = configuration;
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
    v13 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s #modes Updating modesconfiguration %@", &v10, 0x16u);
  }

  [(ADResponseModeProvider *)self->_responseModeProvider updateModesConfiguration:configurationCopy];
}

- (void)_setHeadGestureRecognitionAvailability:(BOOL)availability
{
  if (self->_isHeadGestureRecognitionAvailable != availability)
  {
    availabilityCopy = availability;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#Bobble Unset bobble availability";
      if (availabilityCopy)
      {
        v6 = @"#Bobble Set bobble availability";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setHeadGestureRecognitionAvailability:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_isHeadGestureRecognitionAvailable = availabilityCopy;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setCarDNDRestriction:(BOOL)restriction
{
  if (self->_isInCarDNDMode != restriction)
  {
    restrictionCopy = restriction;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#rhodes Remove Car DND Restriction";
      if (restrictionCopy)
      {
        v6 = @"#rhodes Add Car DND Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setCarDNDRestriction:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_isInCarDNDMode = restrictionCopy;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setCarOwnsMainAudioRestriction:(BOOL)restriction
{
  if (self->_carOwnsMainAudio != restriction)
  {
    restrictionCopy = restriction;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#CarPlay Remove carOwnsMainAudio Restriction";
      if (restrictionCopy)
      {
        v6 = @"#CarPlay Add carOwnsMainAudio Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setCarOwnsMainAudioRestriction:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_carOwnsMainAudio = restrictionCopy;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setSupportsCarPlayVehicleDataRestriction:(BOOL)restriction
{
  if (self->_supportsCarPlayVehicleData != restriction)
  {
    restrictionCopy = restriction;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#CarPlay Remove supportsVehicleData Restriction";
      if (restrictionCopy)
      {
        v6 = @"#CarPlay Add supportsCarPlayVehicleData Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setSupportsCarPlayVehicleDataRestriction:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_supportsCarPlayVehicleData = restrictionCopy;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setStarkRestriction:(BOOL)restriction
{
  if (self->_isInStarkMode != restriction)
  {
    restrictionCopy = restriction;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#CarPlay Remove Stark Restriction";
      if (restrictionCopy)
      {
        v6 = @"#CarPlay Add Stark Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setStarkRestriction:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_isInStarkMode = restrictionCopy;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setIsEyesFree:(BOOL)free
{
  if (self->_isEyesFree != free)
  {
    freeCopy = free;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"#EyesFree Remove EyesFree Restriction";
      if (freeCopy)
      {
        v6 = @"#eyesFree Add EyesFree Restriction";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setIsEyesFree:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
    }

    self->_isEyesFree = freeCopy;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setWatchAuthenticated:(BOOL)authenticated
{
  if (self->_isWatchAuthenticated != authenticated)
  {
    authenticatedCopy = authenticated;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"Not Authenticated";
      if (authenticatedCopy)
      {
        v6 = @"Authenticated";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setWatchAuthenticated:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #WatchAuth authenticated: %@", &v7, 0x16u);
    }

    self->_isWatchAuthenticated = authenticatedCopy;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setHeadphonesAuthenticated:(BOOL)authenticated
{
  if (self->_isHeadphonesAuthenticated != authenticated)
  {
    authenticatedCopy = authenticated;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"Not Authenticated";
      if (authenticatedCopy)
      {
        v6 = @"Authenticated";
      }

      v7 = 136315394;
      v8 = "[ADCommandCenter _setHeadphonesAuthenticated:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #HeadphonesAuth authenticated: %@", &v7, 0x16u);
    }

    self->_isHeadphonesAuthenticated = authenticatedCopy;
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setLockState:(BOOL)state showingLockScreen:(BOOL)screen
{
  screenCopy = screen;
  stateCopy = state;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = @"Unlocked";
    if (stateCopy)
    {
      v8 = @"Locked";
    }

    v9 = @"Not on lock screen";
    v13 = "[ADCommandCenter _setLockState:showingLockScreen:]";
    v12 = 136315650;
    v15 = v8;
    v14 = 2112;
    if (screenCopy)
    {
      v9 = @"On Lock Screen";
    }

    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@, %@", &v12, 0x20u);
  }

  v10 = stateCopy;
  lockScreenStatus = self->_lockScreenStatus;
  self->_deviceIsLocked = stateCopy;
  if (screenCopy)
  {
    v10 = stateCopy | 2;
  }

  self->_deviceIsShowingLockScreen = screenCopy;
  self->_lockScreenStatus = v10;
  if (v10 != lockScreenStatus)
  {
    self->_restrictionsWereSetForRequest = 0;
  }
}

- (void)_setLanguageCode:(id)code outputVoice:(id)voice isDefaultValue:(BOOL)value
{
  valueCopy = value;
  codeCopy = code;
  voiceCopy = voice;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
    v68 = 2112;
    v69 = codeCopy;
    v70 = 2112;
    v71 = voiceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  v11 = +[ADPreferences sharedPreferences];
  v12 = [v11 languageCodeWithFallback:0];
  v13 = [v11 outputVoiceWithFallback:0];
  v64 = [v11 isUsingDefaultLanguageSettings] ^ valueCopy;
  if (v64)
  {
    [v11 setIsUsingDefaultLanguageSettings:valueCopy];
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 1024;
      LODWORD(v69) = valueCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Using default language settings: %d", buf, 0x12u);
    }
  }

  v65 = v12;
  if ([codeCopy isEqualToString:@"ADLanguageCodeKeepSame"])
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
      v69 = codeCopy;
      v16 = "%s language code %@ is not supported for this device";
      v17 = v23;
      v18 = 22;
      goto LABEL_15;
    }

LABEL_16:
    v24 = v12;

    v25 = 0;
    codeCopy = v24;
LABEL_17:
    selfCopy3 = self;
    goto LABEL_18;
  }

  if (([codeCopy isEqualToString:v12] & 1) == 0)
  {
    [v11 setLanguageCode:codeCopy];
    v39 = AFSiriLogContextDaemon;
    v25 = 1;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = v12;
      v70 = 2112;
      v71 = codeCopy;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s language code changed from %@ to %@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  v19 = +[AFLocalization sharedInstance];
  v20 = [v19 allOutputVoiceIdentifiersForSiriLanguage:codeCopy];
  languageCode = [v13 languageCode];
  if ([v20 containsObject:languageCode])
  {

    selfCopy3 = self;
LABEL_64:
    v60 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = codeCopy;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s no need to change language code to %@ because it is already set to that language code", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_18;
  }

  v63 = +[AFLocalization sharedInstance];
  v57 = [v63 voiceNamesForOutputLanguageCode:codeCopy gender:{objc_msgSend(v13, "gender")}];
  [v13 name];
  selfCopy3 = self;
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
    if (!voiceCopy)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_18:
  v26 = v13;
  if (!voiceCopy)
  {
    goto LABEL_27;
  }

LABEL_19:
  if (codeCopy && ([voiceCopy isValidForSiriSessionLanguage:codeCopy] & 1) == 0)
  {
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v67 = "[ADCommandCenter _setLanguageCode:outputVoice:isDefaultValue:]";
      v68 = 2112;
      v69 = voiceCopy;
      v70 = 2112;
      v71 = codeCopy;
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

    voiceCopy = v29;
  }

LABEL_27:
  languageCode2 = [voiceCopy languageCode];
  v31 = [languageCode2 length];

  if (!v31)
  {
    v32 = AFOutputVoiceLanguageForRecognitionLanguage();
    if (!v25)
    {
      v34 = v26;

LABEL_42:
      voiceCopy = v34;
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
  v42 = selfCopy3;
  v43 = [(ADCommandCenter *)selfCopy3 _outputVoice_setOutputVoice:voiceCopy];
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
    [(ADAssetManager *)v42->_assetManager languageCodeWasChangedTo:codeCopy];
    v46 = +[ADDaemon sharedDaemon];
    [v46 syncForReason:@"siri_locale_change" withCoalescing:0];

    v47 = +[SSRVoiceProfileManager sharedInstance];
    v48 = +[CSPreferences sharedPreferences];
    isPHSSupported = [v48 isPHSSupported];

    if (isPHSSupported && ([v47 isSATEnrolledForSiriProfileId:0 forLanguageCode:codeCopy] & 1) == 0)
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

- (void)_forceAudioSessionInactiveWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCommandCenter _forceAudioSessionInactiveWithOptions:completion:]";
    v11 = 2048;
    optionsCopy = options;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s options = %lu", &v9, 0x16u);
  }

  speechManager = self->_speechManager;
  if (speechManager)
  {
    [(ADSpeechManager *)speechManager endSession:options & 1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_forceAudioSessionActiveWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[ADCommandCenter _forceAudioSessionActiveWithContext:completion:]";
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v9 = contextCopy;
  options = [v9 options];
  if (self->_hasIncomingCall || self->_isInCall)
  {
    LOBYTE(v11) = 1;
    [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions setIsOnPhoneCall:1];
  }

  else
  {
    v11 = (options >> 1) & 1;
  }

  v12 = v9;
  if (self->_currentSpeechRequestOptions)
  {
    speechRequestOptions = [v9 speechRequestOptions];
    v14 = (speechRequestOptions == 0) & v11;

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

  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager prepareAudioSystemWithContext:v12 completion:completionCopy];
}

- (void)_preheatWithStyle:(int64_t)style forOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  kdebug_trace();
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[ADCommandCenter _preheatWithStyle:forOptions:completion:]";
    v17 = 2048;
    styleCopy = style;
    v19 = 2112;
    v20 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %ld %@", &v15, 0x20u);
  }

  v11 = +[CSSiriVibrationManager sharedManager];
  if (style != 5)
  {
    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    [_sessionManager preheatAndMakeQuiet:style == 1];
  }

  [optionsCopy activationEvent];
  if (AFSpeechEventIsBluetooth())
  {
    v13 = +[ADBluetoothManager sharedInstance];
    activationDeviceIdentifier = [optionsCopy activationDeviceIdentifier];
    [v13 prewarmDeviceWithIdentifier:activationDeviceIdentifier];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_preheatViaRequestDispatcher
{
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  languageCode = [_sessionManager languageCode];

  if ((AFShouldRunAsrOnServerForUOD() & 1) != 0 || AFDeviceSupportsSiriUOD())
  {
    v4 = [(ADCommandCenter *)self _updateUODAssetStatusForLanguage:languageCode];
  }

  if (self->_siriHybridUODSupported || self->_siriFullUODSupported)
  {
    v5 = +[ADMultiUserService sharedService];
    getDeviceOwnerSharedUserId = [v5 getDeviceOwnerSharedUserId];
    v7 = getDeviceOwnerSharedUserId;
    v8 = AFMultiUserDefaultSharedUserId;
    if (getDeviceOwnerSharedUserId)
    {
      v8 = getDeviceOwnerSharedUserId;
    }

    v9 = v8;

    _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
    _account = [(ADCommandCenter *)self _account];
    assistantIdentifier = [_account assistantIdentifier];
    [_requestDispatcherService prewarmWithAssistantId:assistantIdentifier languageCode:languageCode prewarmOptions:2 sharedUserId:v9];
  }
}

- (void)_getDictationLanguages:(id)languages options:(id)options speechOptions:(id)speechOptions delegate:(id)delegate completion:(id)completion
{
  languagesCopy = languages;
  optionsCopy = options;
  speechOptionsCopy = speechOptions;
  delegateCopy = delegate;
  completionCopy = completion;
  languageDetectionUserContext = [optionsCopy languageDetectionUserContext];
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

    languageCodeOverride = [optionsCopy languageCodeOverride];
    v30 = AFOverrideLanguageCode();

    if (v30)
    {
      v45 = v30;
      v31 = [NSArray arrayWithObjects:&v45 count:1];
      if (!completionCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v31 = 0;
      if (!completionCopy)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    completionCopy[2](completionCopy, v30, v31);
    goto LABEL_12;
  }

  if (v20)
  {
    *buf = 136315650;
    *&buf[4] = "[ADCommandCenter _getDictationLanguages:options:speechOptions:delegate:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = languagesCopy;
    *&buf[22] = 2112;
    v47 = languageDetectionUserContext;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Trying to use language detector with language code: %@, user context: %@", buf, 0x20u);
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_1001D9498;
  v43[4] = sub_1001D94A8;
  v44 = 0;
  languageCodeOverride2 = [optionsCopy languageCodeOverride];
  v22 = AFOverrideLanguageCode();

  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1001EE4E8;
  v35 = &unk_1005163E0;
  selfCopy = self;
  v42 = v43;
  v37 = languageDetectionUserContext;
  v38 = delegateCopy;
  v23 = v22;
  v39 = v23;
  v40 = speechOptionsCopy;
  v41 = completionCopy;
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

- (void)UIService:(id)service didPresentUIResponseForCommand:(id)command withExecutionInfo:(id)info
{
  commandCopy = command;
  infoCopy = info;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EEAEC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v13 = infoCopy;
  v14 = commandCopy;
  v10 = commandCopy;
  v11 = infoCopy;
  dispatch_async(queue, block);
}

- (void)UIService:(id)service executeHandler:(id)handler forCommand:(id)command
{
  serviceCopy = service;
  handlerCopy = handler;
  commandCopy = command;
  if (handlerCopy)
  {
    if ([(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEvent]!= 17)
    {
LABEL_30:
      handlerCopy[2](handlerCopy);
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
      firstObject = v12;
      v14 = 6013;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      views = [commandCopy views];
      firstObject = [views firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dialogIdentifier = [firstObject dialogIdentifier];
        if ([dialogIdentifier isEqualToString:@"unsupportedFeatureIdiomDucs#unsupportedDuringRingingCall"])
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

          handlerCopy[2](handlerCopy);
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
        firstObject = v12;
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

      notificationType = [commandCopy notificationType];
      v23 = [notificationType isEqualToString:SANotificationTypeConnectedCallValue];

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

- (void)speechManager:(id)manager willStopRecordingWithSignpostID:(unint64_t)d
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001EF148;
  v5[3] = &unk_10051D770;
  v5[4] = self;
  v5[5] = d;
  dispatch_async(queue, v5);
}

- (id)_handleConfidenceScores:(id)scores classification:(unint64_t)classification classifiedUser:(id)user unknownUserScore:(int64_t)score duration:(int64_t)duration version:(int64_t)version thresholdingType:(id)type assetVersion:(id)self0
{
  scoresCopy = scores;
  userCopy = user;
  typeCopy = type;
  assetVersionCopy = assetVersion;
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    *&buf[4] = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
    *&buf[12] = 2113;
    v19 = scoresCopy;
    *&buf[14] = scoresCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s confidenceScores = %{private}@", buf, 0x16u);
    v18 = AFSiriLogContextDaemon;
  }

  else
  {
    v19 = scoresCopy;
  }

  versionCopy = version;
  scoreCopy = score;
  v21 = userCopy;
  selfCopy = self;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136316931;
    *&buf[4] = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
    *&buf[12] = 2048;
    *&buf[14] = classification;
    *&buf[22] = 2113;
    v81 = userCopy;
    *v82 = 2048;
    *&v82[2] = scoreCopy;
    *&v82[10] = 2048;
    *&v82[12] = duration;
    v83 = 2048;
    v84 = versionCopy;
    v85 = 2112;
    v86 = typeCopy;
    v87 = 2112;
    v88 = assetVersionCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s classification = %ld, classifiedUser = %{private}@, unknownScore = %ld, duration = %ld, version = %ld, thresholdingType = %@, assetVersion = %@", buf, 0x52u);
  }

  self->_hasSentAtLeastOneUserConfidenceScore = 1;
  v23 = objc_alloc_init(SAConfidenceScores);
  v24 = v19;
  v25 = SiriCoreUUIDStringCreate();
  [v23 setAceId:v25];

  _currentRequest = [(ADCommandCenter *)self _currentRequest];
  currentRequestId = [_currentRequest currentRequestId];
  [v23 setRefId:currentRequestId];

  [v23 setProcessedAudioDurationMilliseconds:duration];
  if ([typeCopy isEqualToString:kCSSpeakerIdentificationVTInvocationScoreThresholdingType])
  {
    v28 = &SAVoiceIDConfidenceScoresThresholdTypeVOICE_TRIGGERValue;
LABEL_10:
    v29 = *v28;
    goto LABEL_12;
  }

  if ([typeCopy isEqualToString:kCSSpeakerIdentificationNonVTInvocationScoreThresholdingType])
  {
    v28 = &SAVoiceIDConfidenceScoresThresholdTypeTAP_INVOCATIONValue;
    goto LABEL_10;
  }

  v29 = 0;
LABEL_12:
  [v23 setThresholdType:{v29, v29}];
  [v23 setAssetVersion:assetVersionCopy];
  if (classification <= 1)
  {
    if (!classification)
    {
      [v23 setUserIdentityClassification:SAUserIdentityClassificationUnknownValue];
      goto LABEL_25;
    }

    if (classification == 1)
    {
      [v23 setUserIdentityClassification:SAUserIdentityClassificationUnsure1Value];
      goto LABEL_25;
    }
  }

  else
  {
    switch(classification)
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
    *&buf[14] = classification;
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
    getDebugVoiceIdScores = [v31 getDebugVoiceIdScores];

    v33 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v74 = 136315394;
      v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
      v76 = 2112;
      v77 = getDebugVoiceIdScores;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Setting debug scores: %@", v74, 0x16u);
    }
  }

  else
  {
    getDebugVoiceIdScores = 0;
  }

  v34 = +[ADMultiUserService sharedService];
  [v34 setRawScores:v24];

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1001EFAB8;
  v58[3] = &unk_100516390;
  v64 = &v68;
  v58[4] = self;
  v35 = getDebugVoiceIdScores;
  v59 = v35;
  v36 = v24;
  v60 = v36;
  v61 = 0;
  v37 = v21;
  v62 = v37;
  v65 = buf;
  v66 = scoreCopy;
  v38 = v23;
  v63 = v38;
  v67 = versionCopy;
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
    getClassifiedUser = [v46 getClassifiedUser];

    [v38 setClassifiedUser:getClassifiedUser];
    v48 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v74 = 136315394;
      v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
      v76 = 2112;
      v77 = getClassifiedUser;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s Overriding classifiedUser: %@", v74, 0x16u);
    }

    v49 = +[ADMultiUserTestSupport sharedService];
    getUserIdentityClassification = [v49 getUserIdentityClassification];

    [v38 setUserIdentityClassification:getUserIdentityClassification];
    v51 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v74 = 136315394;
      v75 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]";
      v76 = 2112;
      v77 = getUserIdentityClassification;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s Overriding userIdentityClassification: %@", v74, 0x16u);
    }
  }

  else
  {
    getClassifiedUser = 0;
  }

  [(ADCommandCenter *)selfCopy _sendCommandToServer:v38 opportunistically:0];
  v52 = v38;

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(buf, 8);

  return v52;
}

- (void)speechManager:(id)manager didReceiveConfidenceScores:(id)scores classification:(unint64_t)classification classifiedUser:(id)user unknownUserScore:(int64_t)score duration:(int64_t)duration version:(int64_t)version thresholdingType:(id)self0 assetVersion:(id)self1
{
  scoresCopy = scores;
  userCopy = user;
  typeCopy = type;
  assetVersionCopy = assetVersion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F0018;
  block[3] = &unk_100516368;
  block[4] = self;
  v26 = scoresCopy;
  scoreCopy = score;
  durationCopy = duration;
  versionCopy = version;
  v27 = userCopy;
  v28 = typeCopy;
  v29 = assetVersionCopy;
  classificationCopy = classification;
  v21 = assetVersionCopy;
  v22 = typeCopy;
  v23 = userCopy;
  v24 = scoresCopy;
  dispatch_async(queue, block);
}

- (void)speechManager:(id)manager audioSessionDidBecomeActive:(BOOL)active
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F00D4;
  v5[3] = &unk_10051CBD8;
  activeCopy = active;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)speechManager:(id)manager audioSessionWillBecomeActive:(BOOL)active
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F023C;
  v5[3] = &unk_10051CBD8;
  activeCopy = active;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)speechManager:(id)manager didChangeRecordingState:(BOOL)state
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F0380;
  v5[3] = &unk_10051CBD8;
  stateCopy = state;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)speechManager:(id)manager didRequestQuickStopWithContext:(id)context
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[ADCommandCenter speechManager:didRequestQuickStopWithContext:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s This code path should not be used. Please file a radar.", &v5, 0xCu);
  }
}

- (void)_handleExtractSpeechDataCompleted:(id)completed inResponseTo:(id)to completion:(id)completion
{
  completedCopy = completed;
  [(ADCommandCenter *)self _storeExtractedSpeechLocally:completedCopy];
  [(ADCommandCenter *)self _invokeCompletionForCommand:completedCopy];
}

- (void)_saQuickStop:(id)stop executionContext:(id)context completion:(id)completion
{
  stopCopy = stop;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[ADCommandCenter _saQuickStop:executionContext:completion:]";
    v30 = 2112;
    v31 = stopCopy;
    v32 = 2112;
    v33 = contextCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s %@ %@", buf, 0x20u);
  }

  if (AFSupportsHALDeviceRouting())
  {
    if ([contextCopy isFromRemote])
    {
      [(ADCommandCenter *)self _handleQuickStopCommandRoutedFromRemote:stopCopy completion:completionCopy];
    }

    else
    {
      speechRequestOptions = [(AFRequestInfo *)self->_currentRequestInfo speechRequestOptions];
      v15 = [(ADCommandCenter *)self _directInvocationContextForSpeechRequestOptions:speechRequestOptions textToSpeechEnabled:[(ADCommandCenterClient *)self->_currentClient adTextToSpeechIsMuted]^ 1];

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

      currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v29 = "[ADCommandCenter _saQuickStop:executionContext:completion:]";
        v30 = 2112;
        v31 = currentRequestId;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Current request ID: %@", buf, 0x16u);
      }

      [v18 setRefId:currentRequestId];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001F097C;
      v25[3] = &unk_100519680;
      v26 = stopCopy;
      v27 = completionCopy;
      [(ADCommandCenter *)self _handleCommand:v18 executionContext:contextCopy completion:v25];
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
    (*(completionCopy + 2))(completionCopy, v13, 0);
  }
}

- (void)_handleQuickStopCommandRoutedFromRemote:(id)remote completion:(id)completion
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F0D00;
  v13[3] = &unk_100516318;
  remoteCopy = remote;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = remoteCopy;
  v8 = objc_retainBlock(v13);
  _contextManager = [(ADCommandCenter *)self _contextManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001F0DD0;
  v11[3] = &unk_100516340;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [_contextManager getLocalContextWithPrivacyClass:10 completion:v11];
}

- (id)_directInvocationContextForSpeechRequestOptions:(id)options textToSpeechEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  optionsCopy = options;
  v6 = objc_alloc_init(SKIDirectInvocationContext);
  [v6 setVoiceTriggerEnabled:sub_10000F1C0()];
  [v6 setTextToSpeechEnabled:enabledCopy];
  [v6 setEyesFree:{objc_msgSend(optionsCopy, "isEyesFree")}];
  activationEvent = [optionsCopy activationEvent];

  v8 = sub_10000EF08(activationEvent);
  [v6 setInputOrigin:v8];

  [v6 setInteractionType:SAIntentGroupAceInteractionTypeDialogDrivenValue];

  return v6;
}

- (void)speechManager:(id)manager performTwoShotPromptWithType:(int64_t)type context:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F1478;
  v14[3] = &unk_10051C0D8;
  v14[4] = self;
  v15 = contextCopy;
  v16 = completionCopy;
  typeCopy = type;
  v12 = completionCopy;
  v13 = contextCopy;
  dispatch_async(queue, v14);
}

- (void)speechManager:(id)manager languageDetectorDidFail:(id)fail
{
  failCopy = fail;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F18E4;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = failCopy;
  v7 = failCopy;
  dispatch_async(queue, v8);
}

- (void)speechManager:(id)manager didDetectLanguage:(id)language confidenceScores:(id)scores isConfident:(BOOL)confident
{
  languageCopy = language;
  scoresCopy = scores;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F1A20;
  v14[3] = &unk_10051C958;
  v14[4] = self;
  v15 = scoresCopy;
  v16 = languageCopy;
  confidentCopy = confident;
  v12 = languageCopy;
  v13 = scoresCopy;
  dispatch_async(queue, v14);
}

- (void)speechManager:(id)manager didDetectEndpointAtTime:(double)time context:(id)context
{
  managerCopy = manager;
  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F1CFC;
  block[3] = &unk_10051E128;
  v12 = managerCopy;
  selfCopy = self;
  timeCopy = time;
  v10 = managerCopy;
  dispatch_group_notify(speechRequestGroup, queue, block);
}

- (void)speechManager:(id)manager didDetectStartpointAtTime:(double)time context:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F1E7C;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  dispatch_async(queue, v9);
}

- (void)speechManager:(id)manager recognitionDidCompleteWithError:(id)error secureOfflineOnlyRecognition:(BOOL)recognition sessionUUID:(id)d statistics:(id)statistics
{
  managerCopy = manager;
  errorCopy = error;
  statisticsCopy = statistics;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F1FD0;
  block[3] = &unk_1005162A0;
  recognitionCopy = recognition;
  v19 = statisticsCopy;
  v20 = managerCopy;
  selfCopy = self;
  v22 = errorCopy;
  v15 = errorCopy;
  v16 = managerCopy;
  v17 = statisticsCopy;
  dispatch_async(queue, block);
}

- (void)speechManager:(id)manager didProduceLocalLoggablePackage:(id)package sessionUUID:(id)d
{
  managerCopy = manager;
  packageCopy = package;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2350;
  block[3] = &unk_10051DB68;
  v13 = managerCopy;
  selfCopy = self;
  v15 = packageCopy;
  v10 = packageCopy;
  v11 = managerCopy;
  dispatch_async(queue, block);
}

- (void)_handleLocalSpeechRecognitionForOfflineSupport:(id)support logText:(BOOL)text
{
  supportCopy = support;
  v11 = objc_alloc_init(SASSpeechRecognized);
  aceRecognition = [supportCopy aceRecognition];

  [v11 setRecognition:aceRecognition];
  aceId = [(SASStartSpeech *)self->_startSpeechCommand aceId];
  v9 = SiriCoreUUIDStringCreate();
  [v11 setAceId:v9];

  [v11 setRefId:aceId];
  [v11 setSessionId:aceId];
  if (text)
  {
    af_bestTextInterpretation = [v11 af_bestTextInterpretation];
    [(ADCommandCenter *)self _metrics_logSpeechRecognized:af_bestTextInterpretation resultId:@"0"];
  }

  else
  {
    [(ADCommandCenter *)self _metrics_logSpeechRecognized:0 resultId:@"0"];
  }
}

- (void)speechManager:(id)manager didRecognizePackage:(id)package sessionUUID:(id)d
{
  managerCopy = manager;
  packageCopy = package;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001F26CC;
  v15[3] = &unk_10051DB18;
  v16 = packageCopy;
  v17 = managerCopy;
  selfCopy = self;
  v19 = dCopy;
  v12 = dCopy;
  v13 = managerCopy;
  v14 = packageCopy;
  dispatch_async(queue, v15);
}

- (void)speechManager:(id)manager didRecognizeRawEagerRecognitionCandidate:(id)candidate sessionUUID:(id)d
{
  candidateCopy = candidate;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F3188;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = candidateCopy;
  v8 = candidateCopy;
  dispatch_async(queue, v9);
}

- (void)speechManager:(id)manager didRecognizeTokens:(id)tokens sessionUUID:(id)d
{
  managerCopy = manager;
  tokensCopy = tokens;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001F33D0;
  v15[3] = &unk_10051DB18;
  v16 = tokensCopy;
  v17 = managerCopy;
  selfCopy = self;
  v19 = dCopy;
  v12 = dCopy;
  v13 = managerCopy;
  v14 = tokensCopy;
  dispatch_async(queue, v15);
}

- (void)speechManager:(id)manager didBeginLocalRecognitionWithContext:(id)context sessionUUID:(id)d
{
  contextCopy = context;
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3714;
  block[3] = &unk_10051DB68;
  v13 = contextCopy;
  selfCopy = self;
  v15 = dCopy;
  v10 = dCopy;
  v11 = contextCopy;
  dispatch_async(queue, block);
}

- (void)speechManager:(id)manager didFinishWritingAudioFile:(id)file error:(id)error context:(id)context
{
  fileCopy = file;
  errorCopy = error;
  contextCopy = context;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[ADCommandCenter speechManager:didFinishWritingAudioFile:error:context:]";
    v23 = 2112;
    v24 = fileCopy;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001F3920;
  v17[3] = &unk_10051DB18;
  v17[4] = self;
  v18 = fileCopy;
  v19 = errorCopy;
  v20 = contextCopy;
  v14 = contextCopy;
  v15 = errorCopy;
  v16 = fileCopy;
  dispatch_async(queue, v17);
}

- (void)speechManager:(id)manager didFailWithError:(id)error context:(id)context
{
  managerCopy = manager;
  errorCopy = error;
  contextCopy = context;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[ADCommandCenter speechManager:didFailWithError:context:]";
    v30 = 2112;
    v31 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (!errorCopy)
  {
    errorCopy = [AFError errorWithCode:213];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3BAC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v14 = errorCopy;
  v26 = v14;
  v27 = contextCopy;
  v15 = contextCopy;
  dispatch_async(queue, block);
  speechRequestGroup = self->_speechRequestGroup;
  v17 = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001F3BC0;
  v20[3] = &unk_10051DBB8;
  v21 = managerCopy;
  selfCopy = self;
  v23 = v14;
  v24 = a2;
  v18 = v14;
  v19 = managerCopy;
  dispatch_group_notify(speechRequestGroup, v17, v20);
}

- (void)speechManager:(id)manager didCancelWithContext:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADCommandCenter speechManager:didCancelWithContext:]";
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3F54;
  block[3] = &unk_10051E010;
  block[4] = self;
  v18 = contextCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
  speechRequestGroup = self->_speechRequestGroup;
  v12 = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F3F60;
  v14[3] = &unk_10051E010;
  v15 = managerCopy;
  selfCopy = self;
  v13 = managerCopy;
  dispatch_group_notify(speechRequestGroup, v12, v14);
}

- (void)speechManager:(id)manager didFinishWithCapturingMode:(int64_t)mode context:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v27 = "[ADCommandCenter speechManager:didFinishWithCapturingMode:context:]";
    v28 = 2048;
    modeCopy = mode;
    v30 = 2112;
    v31 = contextCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s capturingMode = %zd, context = %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4284;
  block[3] = &unk_10051E010;
  block[4] = self;
  v12 = contextCopy;
  v25 = v12;
  dispatch_async(queue, block);
  speechRequestGroup = self->_speechRequestGroup;
  v14 = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001F42E0;
  v20[3] = &unk_10051E128;
  v15 = managerCopy;
  v21 = v15;
  selfCopy = self;
  modeCopy2 = mode;
  dispatch_group_notify(speechRequestGroup, v14, v20);
  v16 = AFIsNano();
  if (mode == 1 && v16)
  {
    v17 = AFSiriLogContextDaemon;
    v18 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    v19 = kAssistantDarwinNotificationSpeechCaptureFinished;
    if (v18)
    {
      *buf = 136315394;
      v27 = "[ADCommandCenter speechManager:didFinishWithCapturingMode:context:]";
      v28 = 2080;
      modeCopy = kAssistantDarwinNotificationSpeechCaptureFinished;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Post XPC event to notifyd: %s", buf, 0x16u);
    }

    notify_post(v19);
  }
}

- (void)speechManager:(id)manager didReceiveLastAudioBufferWithEndpointMode:(int64_t)mode totalPacketCount:(int64_t)count endpointerMetrics:(id)metrics context:(id)context
{
  managerCopy = manager;
  metricsCopy = metrics;
  contextCopy = context;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v29 = "[ADCommandCenter speechManager:didReceiveLastAudioBufferWithEndpointMode:totalPacketCount:endpointerMetrics:context:]";
    v30 = 2048;
    modeCopy = mode;
    v32 = 2048;
    countCopy = count;
    v34 = 2112;
    v35 = metricsCopy;
    v36 = 2112;
    v37 = contextCopy;
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
  countCopy2 = count;
  modeCopy2 = mode;
  v22 = managerCopy;
  v23 = metricsCopy;
  selfCopy = self;
  v19 = metricsCopy;
  v20 = managerCopy;
  dispatch_group_notify(speechRequestGroup, v18, v21);
}

- (void)speechManagerDidDelayEndpointForMusic:(id)music
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter speechManagerDidDelayEndpointForMusic:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }
}

- (void)speechManagerDidDetectMusic:(id)music
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

- (void)speechManager:(id)manager capturedFingerprint:(id)fingerprint duration:(double)duration
{
  fingerprintCopy = fingerprint;
  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4A68;
  block[3] = &unk_10051E128;
  block[4] = self;
  v12 = fingerprintCopy;
  durationCopy = duration;
  v10 = fingerprintCopy;
  dispatch_group_notify(speechRequestGroup, queue, block);
}

- (void)speechManager:(id)manager capturedPackets:(id)packets atTimestamp:(double)timestamp totalCount:(int64_t)count context:(id)context
{
  managerCopy = manager;
  packetsCopy = packets;
  if ([context wantsRecordedAudioBufferLogs])
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      *buf = 136315906;
      v26 = "[ADCommandCenter speechManager:capturedPackets:atTimestamp:totalCount:context:]";
      v27 = 2048;
      v28 = [packetsCopy count];
      v29 = 2048;
      timestampCopy = timestamp;
      v31 = 2048;
      countCopy = count;
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
  v21 = managerCopy;
  timestampCopy2 = timestamp;
  v22 = packetsCopy;
  countCopy2 = count;
  v18 = packetsCopy;
  v19 = managerCopy;
  dispatch_group_notify(speechRequestGroup, queue, block);
}

- (void)speechManager:(id)manager didUpdateRecordingWithInfo:(id)info context:(id)context
{
  managerCopy = manager;
  infoCopy = info;
  contextCopy = context;
  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F4FE8;
  block[3] = &unk_10051DB68;
  v23 = managerCopy;
  selfCopy = self;
  v13 = infoCopy;
  v25 = v13;
  v14 = managerCopy;
  dispatch_group_notify(speechRequestGroup, queue, block);
  v15 = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001F5210;
  v18[3] = &unk_10051DB68;
  v19 = v13;
  selfCopy2 = self;
  v21 = contextCopy;
  v16 = contextCopy;
  v17 = v13;
  dispatch_async(v15, v18);
}

- (void)speechManager:(id)manager didStartRecordingWithInfo:(id)info context:(id)context
{
  managerCopy = manager;
  infoCopy = info;
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F5634;
  block[3] = &unk_10051DB18;
  block[4] = self;
  v12 = infoCopy;
  v33 = v12;
  v13 = contextCopy;
  v34 = v13;
  v14 = managerCopy;
  v35 = v14;
  dispatch_async(queue, block);
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    route = [v12 route];
    *buf = 136315394;
    v37 = "[ADCommandCenter speechManager:didStartRecordingWithInfo:context:]";
    v38 = 2112;
    v39 = route;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Recording started on route: %@", buf, 0x16u);
  }

  speechRequestGroup = self->_speechRequestGroup;
  v19 = self->_queue;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1001F5750;
  v27 = &unk_10051DB18;
  selfCopy = self;
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

- (void)speechManager:(id)manager willStartRecordingAtTimestamp:(double)timestamp isFromFile:(BOOL)file inputAudioPowerWrapper:(id)wrapper context:(id)context
{
  wrapperCopy = wrapper;
  contextCopy = context;
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
  v16 = wrapperCopy;
  v17 = contextCopy;
  v13 = contextCopy;
  v14 = wrapperCopy;
  dispatch_async(queue, block);
}

- (void)_sendContextAndRestrictionsForSpeechRequestWithInfo:(id)info
{
  infoCopy = info;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter _sendContextAndRestrictionsForSpeechRequestWithInfo:]";
    v9 = 2112;
    v10 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Recording info: %@", &v7, 0x16u);
  }

  _requestDelayManager = [(ADCommandCenter *)self _requestDelayManager];
  [_requestDelayManager releaseStoredContextCommandsAndSendCommands:1];

  if (([infoCopy isDictation] & 1) == 0)
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

- (void)_sendEnableServerEndpointerCommandWithRefID:(id)d
{
  dCopy = d;
  v5 = +[AFPreferences sharedPreferences];
  isAccessibleEndpointerEnabled = [v5 isAccessibleEndpointerEnabled];

  if (isAccessibleEndpointerEnabled)
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
    [v8 setRefId:dCopy];
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

- (void)_trySendingShowRequestHandlingStatusForAsrOnDevice:(BOOL)device startSpeechRequestId:(id)id
{
  deviceCopy = device;
  idCopy = id;
  v7 = &SAUIShowRequestHandlingStatusAsrStatusON_DEVICEValue;
  if (!deviceCopy)
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
    v21 = idCopy;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #AsrOnServer Sending SAUIShowRequestHandlingStatus with asrStatus = %@ for startSpeechRequestId = %@", buf, 0x20u);
  }

  if (AFIsInternalInstall())
  {
    v10 = objc_alloc_init(SAUIShowRequestHandlingStatus);
    v11 = +[NSUUID UUID];
    uUIDString = [v11 UUIDString];
    [v10 setAceId:uUIDString];

    [v10 setRefId:idCopy];
    [v10 setAsrStatus:v8];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001F605C;
    v13[3] = &unk_100515DF8;
    v14 = v8;
    v15 = idCopy;
    [(ADCommandCenter *)self handleCommand:v10 completion:v13];
  }
}

- (void)_sendStartSpeechCommandWithSpeechManager:(id)manager info:(id)info context:(id)context
{
  managerCopy = manager;
  infoCopy = info;
  contextCopy = context;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
    v164 = 2112;
    v165 = infoCopy;
    v166 = 2112;
    v167 = contextCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s info = %@, context = %@", buf, 0x20u);
  }

  [(ADCommandCenter *)self _sendContextAndRestrictionsForSpeechRequestWithInfo:infoCopy];
  v152 = managerCopy;
  if ([(NSString *)infoCopy isDictation])
  {
    dictationOptions = [managerCopy dictationOptions];
    transcriptionMode = [dictationOptions transcriptionMode];
    v148 = transcriptionMode == 0;
    if (transcriptionMode)
    {
      if ([dictationOptions transcriptionMode] != 3)
      {
        v17 = objc_alloc_init(SASStartStructuredDictationSpeechRequest);
        [v17 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
        transcriptionMode2 = [dictationOptions transcriptionMode];
        if (transcriptionMode2 == 1)
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
          if (transcriptionMode2 != 2)
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

      dictationLanguages = [managerCopy dictationLanguages];
      if ([dictationLanguages count])
      {
        dictationLanguages2 = [managerCopy dictationLanguages];
        firstObject = [dictationLanguages2 firstObject];
      }

      else
      {
        firstObject = 0;
      }

      v58 = objc_alloc_init(SASPronunciationContext);
      pronunciationContext = self->_pronunciationContext;
      self->_pronunciationContext = v58;

      [(SASPronunciationContext *)self->_pronunciationContext setTokenOffset:&off_100533BC0];
      [(SASPronunciationContext *)self->_pronunciationContext setDomainObjectPropertyIdentifier:@"PhonemeTranscription"];
      v60 = self->_pronunciationContext;
      orthography = [dictationOptions orthography];
      [(SASPronunciationContext *)v60 setOrthography:orthography];

      [(SASPronunciationContext *)self->_pronunciationContext setLanguage:firstObject];
      v17 = objc_alloc_init(SASStartPronunciationRequest);
      _currentRequest = [(ADCommandCenter *)self _currentRequest];
      currentRequestCommand = [_currentRequest currentRequestCommand];
      [v17 ad_setParentRequest:currentRequestCommand];

      serverCommandId = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions serverCommandId];
      [v17 setRefId:serverCommandId];

      [v17 setContext:self->_pronunciationContext];
    }

    else
    {
      firstObject = [managerCopy dictationLanguages];
      v17 = [SASStartSpeechDictation ad_startSpeechDictationWithAFDictationOptions:dictationOptions];
      [v17 setLanguages:firstObject];
      v38 = +[NSLocale currentLocale];
      localeIdentifier = [v38 localeIdentifier];
      [v17 setRegion:localeIdentifier];

      [v17 setCensorSpeech:sub_100214D74()];
      applicationName = [v17 applicationName];

      if (!applicationName)
      {
        v41 = +[NSBundle mainBundle];
        bundleIdentifier = [v41 bundleIdentifier];
        [v17 setApplicationName:bundleIdentifier];
      }

      applicationName2 = [v17 applicationName];
      v44 = [applicationName2 isEqualToString:@"OnDeviceDictationAudioData"];

      if (v44)
      {
        samplingInfo = [dictationOptions samplingInfo];
        v46 = samplingInfo;
        if (samplingInfo)
        {
          v47 = samplingInfo;
        }

        else
        {
          v47 = &stru_10051F508;
        }

        [v17 setSelectedText:v47];
      }

      applicationVersion = [v17 applicationVersion];

      if (!applicationVersion)
      {
        v49 = +[NSBundle mainBundle];
        v50 = [v49 objectForInfoDictionaryKey:kCFBundleVersionKey];
        [v17 setApplicationVersion:v50];
      }

      interactionId = [v17 interactionId];

      if (!interactionId)
      {
        v52 = SiriCoreUUIDStringCreate();
        [v17 setInteractionId:v52];
      }
    }

    goto LABEL_44;
  }

  [managerCopy setDictationOptions:0];
  if (self->_startingPronunciationRequest)
  {
    v17 = objc_alloc_init(SASStartPronunciationRequest);
    _currentRequest2 = [(ADCommandCenter *)self _currentRequest];
    currentRequestCommand2 = [_currentRequest2 currentRequestCommand];
    [v17 ad_setParentRequest:currentRequestCommand2];

    serverCommandId2 = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions serverCommandId];
    [v17 setRefId:serverCommandId2];

    [v17 setContext:self->_pronunciationContext];
    v148 = 0;
LABEL_45:
    v56 = 0;
    v57 = 0;
    goto LABEL_46;
  }

  v21 = contextCopy;
  v22 = objc_alloc_init(SASStartSpeechRequest);
  if (AFIsHorseman())
  {
    _locationManager = [(ADCommandCenter *)self _locationManager];
    createSetRequestOrigin = [_locationManager createSetRequestOrigin];
    [v22 setSetRequestOrigin:createSetRequestOrigin];
  }

  [v22 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
  _fetchComputedModeAndUpdateRequestDelegate = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  [v22 setResponseMode:_fetchComputedModeAndUpdateRequestDelegate];
  v26 = +[AFPreferences sharedPreferences];
  [v22 setAutoPunctuationEnabled:{objc_msgSend(v26, "dictationAutoPunctuationEnabled")}];

  _bargeInModes = [(ADCommandCenter *)self _bargeInModes];
  if ([_bargeInModes count])
  {
    [v22 setBargeInModes:_bargeInModes];
  }

  endpointerModelVersion = [managerCopy endpointerModelVersion];
  [v22 setClientModelVersion:endpointerModelVersion];

  v29 = [(ADCommandCenter *)self _approximatePreviousTTSInterval:v22];
  v30 = v22;
  if (self->_siriHybridUODSupported)
  {
    v31 = objc_alloc_init(SASStartAsrOnServerRequest);
    [v31 setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
    bargeInModes = [v30 bargeInModes];
    [v31 setBargeInModes:bargeInModes];

    [v31 setAutoPunctuationEnabled:{objc_msgSend(v30, "autoPunctuationEnabled")}];
    clientModelVersion = [v30 clientModelVersion];
    [v31 setClientModelVersion:clientModelVersion];

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
      v35 = [(ADCommandCenter *)self _startServerRequestWithSpeechRequest:v30 recordingContext:v21 recordingInfo:infoCopy];
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
  contextCopy = v37;
  managerCopy = v152;
LABEL_46:
  v155 = v57;
  if (!self->_currentSpeechRequestOptions && ([(NSString *)infoCopy isDictation]& 1) == 0 && AFIsInternalInstall())
  {
    v66 = +[SiriCoreSymptomsReporter sharedInstance];
    v67 = +[NSProcessInfo processInfo];
    processIdentifier = [v67 processIdentifier];
    [v66 reportIssueForType:@"start_speech_request_without_speech_request_options" subType:0 context:0 processIdentifier:processIdentifier walkboutStatus:byte_100590548];

    v57 = v155;
  }

  [v17 ad_setAFSpeechRequestOptions:self->_currentSpeechRequestOptions];
  [v17 ad_setCSSiriRecordingInfo:infoCopy];
  sessionUUID = [contextCopy sessionUUID];
  [v17 setAceId:sessionUUID];

  if (AFIsInternalInstall())
  {
    v70 = [NSNumber numberWithBool:byte_100590548];
    [v17 setIsCarryDevice:v70];
  }

  v71 = self->_motionManager;
  motionActivity = [(ADMotionManager *)v71 motionActivity];
  [v17 setMotionActivity:motionActivity];

  v154 = v71;
  motionConfidence = [(ADMotionManager *)v71 motionConfidence];
  [v17 setMotionConfidence:motionConfidence];

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
      origin = [(NSString *)v74 origin];
      audioSource = [(NSString *)v74 audioSource];
      *buf = 136315906;
      v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
      v164 = 2112;
      v165 = v74;
      v166 = 2112;
      v167 = origin;
      v168 = 2112;
      v169 = audioSource;
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
      origin = [(NSString *)v74 origin];
      audioSource = [(NSString *)v74 audioSource];
      *buf = 136315906;
      v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
      v164 = 2112;
      v165 = v74;
      v166 = 2112;
      v167 = origin;
      v168 = 2112;
      v169 = audioSource;
      v80 = "%s Sending %@ (origin = %@, source = %@)...";
    }

    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, v80, buf, 0x2Au);

    v56 = v153;
    v57 = v155;
  }

LABEL_61:
  if ([(NSString *)infoCopy isDictation])
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
    v147 = infoCopy;
    v149 = v17;
    v150 = contextCopy;
    v151 = v74;
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_siriUODSupported)
    {
      _fetchComputedModeAndUpdateRequestDelegate2 = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
      v90 = [(NSString *)infoCopy speechEvent]== 17;
      v91 = [SMTRequestContextData alloc];
      v157[0] = _NSConcreteStackBlock;
      v157[1] = 3221225472;
      v157[2] = sub_1001F7818;
      v157[3] = &unk_1005161A8;
      v92 = v17;
      v158 = v92;
      v146 = _fetchComputedModeAndUpdateRequestDelegate2;
      v159 = v146;
      selfCopy = self;
      v161 = v90;
      v93 = [v91 initWithBuilder:v157];
      v94 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
      {
        v95 = v94;
        userProfileMetadata = [v93 userProfileMetadata];
        *buf = 136315394;
        v163 = "[ADCommandCenter _sendStartSpeechCommandWithSpeechManager:info:context:]";
        v164 = 2112;
        v165 = userProfileMetadata;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%s #shih updating SMTRequestContextData %@", buf, 0x16u);
      }

      if ([(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions isTest])
      {
        [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions testRequestOptions];
        aceId4 = v97 = v74;
        _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
        _account = [(ADCommandCenter *)self _account];
        assistantIdentifier = [_account assistantIdentifier];
        aceId = [(NSString *)v97 aceId];
        disableASR = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions disableASR];
        origin2 = [v92 origin];
        _locationManager2 = [(ADCommandCenter *)self _locationManager];
        knownLocation = [_locationManager2 knownLocation];
        jitContext = [aceId4 jitContext];
        overrideModelPath = [aceId4 overrideModelPath];
        [_requestDispatcherService startTestSpeechRequestWithAssistantId:assistantIdentifier requestId:aceId enableASR:disableASR ^ 1 inputOrigin:origin2 location:knownLocation jitContext:jitContext overrideModelPath:overrideModelPath requestContextData:v93];

        dynamicContextEmitter = self->_dynamicContextEmitter;
        aceId2 = [(NSString *)v151 aceId];
        [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:aceId2];
      }

      else
      {
        _requestDispatcherService2 = [(ADCommandCenter *)self _requestDispatcherService];
        _requestDispatcherSessionConfiguration = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
        aceId3 = [(NSString *)v74 aceId];
        [v92 origin];
        v112 = v111 = v74;
        _locationManager3 = [(ADCommandCenter *)self _locationManager];
        knownLocation2 = [_locationManager3 knownLocation];
        [_requestDispatcherService2 startSpeechRequestWithConfiguration:_requestDispatcherSessionConfiguration requestId:aceId3 inputOrigin:v112 location:knownLocation2 asrOnServer:self->_siriHybridUODSupported requestContextData:v93];

        v115 = self->_dynamicContextEmitter;
        aceId4 = [(NSString *)v111 aceId];
        [(ADDynamicContextEmitter *)v115 emitForRequest:aceId4];
      }

      v17 = v149;
      contextCopy = v150;
      v56 = v153;
      v57 = v155;
      v74 = v151;
    }

    [(ADCommandCenter *)self _sendRetryableRequestToServer:v74];
    aceId5 = [v17 aceId];
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
    [contextCopy updateStartSpeechId:aceId5];
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
      v167 = aceId5;
      _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "%s StartSpeech resultUUID : %@ AceID : %@", buf, 0x20u);
    }

    currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
    v123 = +[ADDaemon processLaunchMachTime];
    v124 = +[ADDaemon processLoadedMachTime];
    hasReceivedFirstRequest = self->_hasReceivedFirstRequest;
    v126 = currentRequestId;
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
    managerCopy = v152;
    v17 = v149;
    [v152 setContext:v149];
    [v152 setIsDriving:{-[ADMotionManager isDriving](v154, "isDriving")}];
    [(ADCommandCenter *)self _trySendingShowRequestHandlingStatusForAsrOnDevice:v155 != 0 startSpeechRequestId:aceId5];
    contextCopy = v150;
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
      isLanguageDetectorEnabledByServer = [v137 isLanguageDetectorEnabledByServer];

      v139 = objc_alloc_init(SASGetMultilingualDictationConfig);
      [v139 setMultilingualDisabled:isLanguageDetectorEnabledByServer ^ 1];
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
      v140 = [aceId5 copy];
      [v152 setEARLanguageDetectorSpeechRequestId:v140];
    }

    if (CSSiriSpeechRecordingGetUsesServerEndpointingFromRequestOptions())
    {
      aceId6 = [v149 aceId];
      [(ADCommandCenter *)self _sendEnableServerEndpointerCommandWithRefID:aceId6];
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

    infoCopy = v147;
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
  aceId7 = [(NSString *)v74 aceId];
  sub_1001F75A8(self, currentUodStatus, aceId7);

  LODWORD(aceId7) = [(ADCommandCenter *)self _shouldImmediatelyDismissSiriDueToMissingRequiredAssets];
  v82 = AFSiriLogContextDaemon;
  v87 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (!aceId7)
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

- (void)speechManager:(id)manager preheatWithRecordingInfo:(id)info context:(id)context
{
  managerCopy = manager;
  infoCopy = info;
  contextCopy = context;
  speechRequestGroup = self->_speechRequestGroup;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001F7C30;
  v16[3] = &unk_10051DB18;
  v17 = infoCopy;
  selfCopy = self;
  v19 = managerCopy;
  v20 = contextCopy;
  v13 = contextCopy;
  v14 = managerCopy;
  v15 = infoCopy;
  dispatch_group_notify(speechRequestGroup, queue, v16);
}

- (void)speechManager:(id)manager recognitionUpdateWillBeginForTask:(id)task
{
  taskCopy = task;
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
  v10 = taskCopy;
  v8 = taskCopy;
  dispatch_async(queue, v9);
}

- (BOOL)canLogWithSpeechManager:(id)manager
{
  managerCopy = manager;
  if (AFIsInternalInstall())
  {
    dictationOptions = [managerCopy dictationOptions];
    if ([dictationOptions forceOfflineRecognition])
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

- (void)assistantSessionManager:(id)manager willRetryOnError:(id)error
{
  selectedResultCandidate = self->_selectedResultCandidate;
  self->_selectedResultCandidate = 0;
  errorCopy = error;

  self->_hasReceivedAtLeastOneResultCandidate = 0;
  [(ADCommandCenterRequestDelegate *)self->_requestDelegate adRequestEncounteredIntermediateError:errorCopy];
}

- (void)assistantSessionManagerDidDestroyAssistant:(id)assistant
{
  [(ADCommandCenter *)self _metrics_destroyAllMetricsIfNeeded];

  [(ADCommandCenter *)self _shutdownSessionWhenIdle];
}

- (void)assistantSessionManagerDidCreateAssistant:(id)assistant
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
}

- (void)assistantSessionManager:(id)manager didChangeRequestIdFrom:(id)from toId:(id)id
{
  fromCopy = from;
  idCopy = id;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADCommandCenter assistantSessionManager:didChangeRequestIdFrom:toId:]";
    v11 = 2112;
    v12 = fromCopy;
    v13 = 2112;
    v14 = idCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Session is changing our request identifier from %@ to %@. Should not be called.", &v9, 0x20u);
  }
}

- (id)assistantSessionManagerCommandsToRestoreStateOnNewConnection:(id)connection
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

- (void)assistantSessionManagerSessionRemoteConnectionDidReset:(id)reset
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter assistantSessionManagerSessionRemoteConnectionDidReset:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  _locationManager = [(ADCommandCenter *)self _locationManager];
  [_locationManager setNeedsToSendLocation:1];

  self->_restrictionsWereSetForRequest = 0;
  [(ADCommandCenter *)self _sync_reset];
}

- (void)assistantSessionManagerSessionConnectionDidReset:(id)reset
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter assistantSessionManagerSessionConnectionDidReset:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  _locationManager = [(ADCommandCenter *)self _locationManager];
  [_locationManager setNeedsToSendLocation:1];

  self->_restrictionsWereSetForRequest = 0;
}

- (BOOL)assistantSessionManagerShouldAttemptRetry:(id)retry
{
  currentRequestCommand = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestCommand];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  isLocallyRecognizing = [(ADSpeechManager *)self->_speechManager isLocallyRecognizing];

  if (!isLocallyRecognizing)
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

- (void)assistantSessionManager:(id)manager receivedError:(id)error isRetryableError:(BOOL)retryableError
{
  retryableErrorCopy = retryableError;
  managerCopy = manager;
  errorCopy = error;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[ADCommandCenter assistantSessionManager:receivedError:isRetryableError:]";
    v15 = 2114;
    v16 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %{public}@", &v13, 0x16u);
    if (!retryableErrorCopy)
    {
      goto LABEL_7;
    }
  }

  else if (!retryableErrorCopy)
  {
    goto LABEL_7;
  }

  if ([(ADCommandCenter *)self _shouldRetryForError:errorCopy])
  {
    [(ADCommandCenterRequestDelegate *)self->_requestDelegate adRequestEncounteredIntermediateError:errorCopy];
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
    [(ADCommandCenter *)self _invokeAllCompletionsWithError:errorCopy];
  }

  else
  {
    [(ADSessionManager *)self->_sessionManager cancelSessions];
    [(ADCommandCenter *)self _sessionDidFailWithError:errorCopy];
  }

  v12 = +[SNNetworkActivityTracing sharedInstance];
  [v12 networkActivityTracingCancel:0];

LABEL_14:
  [(ADCommandCenter *)self _sync_reset];
}

- (BOOL)_shouldRetryForError:(id)error
{
  if (!self->_requestDelegate && !self->_speechDelegate)
  {
    return 0;
  }

  resultObjectCache = self->_resultObjectCache;
  currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  if ([(ADResultObjectCache *)resultObjectCache hasResultObjectsForRequestId:currentRequestId])
  {
    v6 = self->_speechManagerState != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_sessionDidFailWithError:(id)error
{
  errorCopy = error;
  currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  if (!-[ADResultObjectCache hasResultObjectsForRequestId:](self->_resultObjectCache, "hasResultObjectsForRequestId:", currentRequestId) || -[ADResultObjectCache hasMissingRefContextsForId:](self->_resultObjectCache, "hasMissingRefContextsForId:", currentRequestId) || ([errorCopy ad_isInAssistantErrorDomain] & 1) != 0)
  {
    if ([errorCopy ad_isInAssistantErrorDomain])
    {
      code = [errorCopy code];
      if (!currentRequestId && code == 33)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = [AFError errorWithCode:4 description:0 underlyingError:errorCopy];

      v8 = +[SNNetworkActivityTracing sharedInstance];
      [v8 networkActivityStop:1 withReason:4 andError:v7 completion:0];

      errorCopy = v7;
    }

    self->_sessionExperiencedError = 1;
    isLocallyRecognizingInDictationMode = [(ADSpeechManager *)self->_speechManager isLocallyRecognizingInDictationMode];
    v10 = AFSiriLogContextDaemon;
    v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (isLocallyRecognizingInDictationMode)
    {
      if (v11)
      {
        v16 = 136315394;
        v17 = "[ADCommandCenter _sessionDidFailWithError:]";
        v18 = 2112;
        v19 = errorCopy;
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

    [(ADCommandCenter *)self _endSpeechRequestForCommand:0 withError:errorCopy suppressAlert:0 secureOfflineOnlyDictation:0];
    [(ADCommandCenter *)self _acousticId_sessionFailed];
LABEL_15:
    [(ADCommandCenter *)self _invokeAllCompletionsWithError:errorCopy];
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

- (void)_handleClientReply:(id)reply error:(id)error forSessionCommand:(id)command
{
  replyCopy = reply;
  errorCopy = error;
  commandCopy = command;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v26 = 136315906;
    v27 = "[ADCommandCenter _handleClientReply:error:forSessionCommand:]";
    v28 = 2112;
    v29 = replyCopy;
    v30 = 2112;
    v31 = errorCopy;
    v32 = 2112;
    v33 = commandCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@ %@ %@", &v26, 0x2Au);
  }

  if ([commandCopy ad_hasCallbacks] && (objc_msgSend(commandCopy, "ad_sendReplyEvenIfCallbacksExist") & 1) == 0)
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
    v12 = replyCopy;
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v23 = v13;
      errorCode = [v12 errorCode];
      reason = [v12 reason];
      v26 = 136315650;
      v27 = "[ADCommandCenter _handleClientReply:error:forSessionCommand:]";
      v28 = 2048;
      v29 = errorCode;
      v30 = 2112;
      v31 = reason;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s CommandFailed errorCode = %ld, reason %@", &v26, 0x20u);
    }
  }

  refId = [replyCopy refId];

  if (!refId)
  {
    aceId = [commandCopy aceId];
    [replyCopy setRefId:aceId];
  }

  if (![commandCopy ad_requiresResponse])
  {
    if (replyCopy)
    {
      encodedClassName = [replyCopy encodedClassName];
      v17 = [encodedClassName isEqualToString:SACommandSucceededClassIdentifier];

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

  if (!replyCopy && errorCopy)
  {
    [(ADCommandCenter *)self _sendCommandFailedForCommand:commandCopy error:errorCopy];
    goto LABEL_30;
  }

  if (!replyCopy)
  {
    [(ADCommandCenter *)self _sendCommandFailedForCommand:commandCopy reason:@"bad response"];
    goto LABEL_30;
  }

  aceId2 = [commandCopy aceId];

  if (aceId2)
  {
LABEL_28:
    [(ADCommandCenter *)self _sendCommandToServer:replyCopy];
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

- (void)_logCrossDeviceCommandEndedMetricsForCommand:(id)command targetProductType:(id)type targetDeviceID:(id)d targetDeviceContextIdentifier:(id)identifier targetProximity:(int64_t)proximity coreAnalyticsEvent:(id)event response:(id)response error:(id)self0
{
  commandCopy = command;
  identifierCopy = identifier;
  eventCopy = event;
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [NSString alloc];
      encodedClassName = [commandCopy encodedClassName];
      v17 = [v15 initWithFormat:@"%@.succeeded", encodedClassName];
LABEL_13:
      v22 = v17;
      goto LABEL_14;
    }

    if (error || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
    if (error)
    {
LABEL_12:
      encodedClassName = [commandCopy encodedClassName];
      v17 = [v18 initWithFormat:@"%@.error", encodedClassName];
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
    if (error)
    {
      goto LABEL_12;
    }

    v19 = &SATimerGroupAcronym;
  }

  v20 = *v19;
  encodedClassName = [commandCopy encodedClassName];
  encodedClassName2 = [responseCopy encodedClassName];
  v22 = [v18 initWithFormat:@"%@%@.%@", v20, encodedClassName, encodedClassName2];

LABEL_14:
  if (eventCopy && v22)
  {
    [eventCopy addCoreAnalyticsDeviceTargetedWithContextIdentifier:identifierCopy commandResultDescription:v22];
    v23 = +[AFCoreAnalyticsLoggingService sharedLoggingService];
    [v23 logToCoreAnalyticsCrossDeviceRequestEvent:eventCopy];
  }

LABEL_17:
}

- (void)_handleCommandAndClientReply:(id)reply executionContext:(id)context commandCompletion:(id)completion
{
  replyCopy = reply;
  contextCopy = context;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1001F9084;
  v18 = &unk_10051E0D8;
  completionCopy = completion;
  selfCopy = self;
  v20 = replyCopy;
  v10 = contextCopy;
  v21 = v10;
  v11 = replyCopy;
  v12 = completionCopy;
  v13 = objc_retainBlock(&v15);
  v14 = v13;
  if (v10)
  {
    [v10 performBlock:{v13, v15, v16, v17, v18, selfCopy, v20, v21, completionCopy}];
  }

  else
  {
    (v13[2])(v13);
  }
}

- (void)assistantSessionManager:(id)manager receivedCommand:(id)command
{
  commandCopy = command;
  refId = [commandCopy refId];
  v7 = [(ADCommandCenter *)self _rootExecutionContextForRequestID:refId];

  [(ADCommandCenter *)self _handleCommandAndClientReply:commandCopy executionContext:v7 commandCompletion:0];
}

- (void)_saPerformDataDetection:(id)detection completion:(id)completion
{
  detectionCopy = detection;
  completionCopy = completion;
  v28 = 0;
  v6 = [NSDataDetector dataDetectorWithTypes:32 error:&v28];
  v18 = v28;
  v7 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = detectionCopy;
  obj = [detectionCopy detectionTargets];
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
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v17, 0);
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
  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager cancelLocalRecognitionIfActive];
}

- (void)_dictationSessionDidComplete
{
  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager dictationSessionDidComplete];

  [(ADCommandCenter *)self _setCurrentRequest:0];
  [(ADCommandCenter *)self _requestDidEnd];

  [(ADCommandCenter *)self _clearSpeechDelegateState];
}

- (void)_saSetMultilingualDictationConfig:(id)config completion:(id)completion
{
  configCopy = config;
  v6 = +[AFPreferences sharedPreferences];
  multilingualTimeoutInMillis = [configCopy multilingualTimeoutInMillis];
  [multilingualTimeoutInMillis doubleValue];
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

  multilingualDisabled = [configCopy multilingualDisabled];
  isLanguageDetectorEnabledByServer = [v6 isLanguageDetectorEnabledByServer];
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
    v26 = isLanguageDetectorEnabledByServer;
    v27 = 1024;
    v28 = multilingualDisabled ^ 1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Client timeout: %f server timeout: %f, client enabled %d, server enabled %d", &v19, 0x2Cu);
  }

  if (v13 != v9)
  {
    v17 = [NSNumber numberWithDouble:v9];
    _AFPreferencesSetMultilingualDictationTimeoutInMilliSeconds();
  }

  if (multilingualDisabled == isLanguageDetectorEnabledByServer)
  {
    _AFPreferencesSetDictationLanguageDetectorEnabledByServer();
    if (multilingualDisabled)
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [AFError errorWithCode:2805 description:@"Server has disabled smart language selection" underlyingError:0];
        [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechLanguageDetectorFailedWithError:v18];
      }
    }
  }
}

- (void)_storeExtractedSpeechLocally:(id)locally
{
  locallyCopy = locally;
  speechData = [locallyCopy speechData];
  if (!speechData || (v5 = speechData, [locallyCopy speechDataUrl], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v12 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v13 = v12;
    speechData2 = [locallyCopy speechData];
    speechDataUrl = [locallyCopy speechDataUrl];
    *buf = 136315650;
    v34 = "[ADCommandCenter _storeExtractedSpeechLocally:]";
    v35 = 2112;
    v36 = speechData2;
    v37 = 2112;
    v38 = speechDataUrl;
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

  speechData3 = [locallyCopy speechData];
  speechDataUrl2 = [locallyCopy speechDataUrl];
  v24 = [NSURL URLWithString:speechDataUrl2];
  v30 = v13;
  [speechData3 writeToURL:v24 options:2 error:&v30];
  v25 = v30;

  v26 = AFSiriLogContextDaemon;
  if (!v25)
  {
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v13 = v26;
    speechData2 = [locallyCopy speechDataUrl];
    *buf = 136315650;
    v34 = "[ADCommandCenter _storeExtractedSpeechLocally:]";
    v35 = 2112;
    v36 = locallyCopy;
    v37 = 2112;
    v38 = speechData2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s extractSpeechDataCompleted = %@ (speechDataUrl = %@)", buf, 0x20u);
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v28 = v26;
    userInfo = [v25 userInfo];
    *buf = 136315394;
    v34 = "[ADCommandCenter _storeExtractedSpeechLocally:]";
    v35 = 2112;
    v36 = userInfo;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s error writing data %@", buf, 0x16u);
  }

LABEL_28:
}

- (void)_sasExtractSpeechData:(id)data executionContext:(id)context completion:(id)completion
{
  dataCopy = data;
  contextCopy = context;
  completionCopy = completion;
  speechRequestId = [dataCopy speechRequestId];
  audioOutputType = [dataCopy audioOutputType];
  startTime = [dataCopy startTime];
  endTime = [dataCopy endTime];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v32 = "[ADCommandCenter _sasExtractSpeechData:executionContext:completion:]";
    v33 = 2112;
    v34 = dataCopy;
    v35 = 2112;
    v36 = speechRequestId;
    v37 = 2112;
    v38 = audioOutputType;
    v39 = 2112;
    v40 = startTime;
    v41 = 2112;
    v42 = endTime;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s extractSpeechData = %@ (speechRequestId = %@, audioOutputType = %@, startTime = %@, endTime = %@)", buf, 0x3Eu);
  }

  v25 = startTime;
  if ([audioOutputType isEqualToString:SASExtractSpeechDataAudioOutputTypeAudioFormatOpusValue])
  {
    v15 = 3;
  }

  else if ([audioOutputType isEqualToString:SASExtractSpeechDataAudioOutputTypeAudioFormatLinearPCMValue])
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  startTime2 = [dataCopy startTime];
  v17 = [startTime2 longValue] / 1000.0;

  endTime2 = [dataCopy endTime];
  longValue = [endTime2 longValue];
  startTime3 = [dataCopy startTime];
  v21 = (longValue - [startTime3 longValue]) / 1000.0;

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001FAA60;
  v27[3] = &unk_1005160B8;
  v28 = dataCopy;
  v29 = contextCopy;
  v30 = completionCopy;
  v22 = completionCopy;
  v23 = contextCopy;
  v24 = dataCopy;
  [(ADCommandCenter *)self _trimRecordedAudioWithIdentifier:speechRequestId offset:v15 duration:v27 outputFileType:v17 completion:v21];
}

- (void)_saUnhandledObject:(id)object completion:(id)completion
{
  completionCopy = completion;
  [(ADCommandCenter *)self _invokeCompletionForCommand:object];
  if (completionCopy)
  {
    v6 = [[SACommandFailed alloc] initWithReason:@"Unhandled Object"];
    completionCopy[2](completionCopy, v6, 0);
  }
}

- (void)_postUpdatePersonalRequestSettingsNotification:(id)notification forLocalizationKey:(id)key executionContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  notificationCopy = notification;
  v11 = [[ADUserNotificationServiceProvider alloc] initWithConnection:0 bundleIdentifier:@"com.apple.Home" notificationCategories:0];
  v12 = objc_alloc_init(UNMutableNotificationContent);
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = +[AFLocalization sharedInstance];
  v15 = [v14 localizedStringForKey:keyCopy table:0 bundle:v13 languageCode:0];

  [v12 setBody:v15];
  [v12 setHasDefaultAction:1];
  homeId = [notificationCopy homeId];

  v17 = [[NSString alloc] initWithFormat:@"%@?showEnablementSheet=%@", @"com.apple.HOME-PRIVATE://personalRequestOptIn", @"YES"];
  if ([homeId length])
  {
    v18 = [v17 stringByAppendingFormat:@"&homeId=%@", homeId];

    v17 = v18;
  }

  v19 = [NSURL URLWithString:v17];

  [v12 setDefaultActionURL:v19];
  v20 = [UNNotificationRequest requestWithIdentifier:@"com.apple.siri.PersonalRequestsActivity" content:v12 trigger:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001FAEE8;
  v22[3] = &unk_10051D2F0;
  v23 = completionCopy;
  v21 = completionCopy;
  [(ADUserNotificationServiceProvider *)v11 postNotificationRequest:v20 completion:v22];
}

- (void)_saPostUpdatePersonalRequestSettingsNotification:(id)notification executionContext:(id)context completion:(id)completion
{
  notificationCopy = notification;
  contextCopy = context;
  completionCopy = completion;
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
  info = [contextCopy info];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001FB190;
  v18[3] = &unk_100516090;
  v18[4] = self;
  v19 = notificationCopy;
  v20 = v11;
  v21 = contextCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = contextCopy;
  v16 = v11;
  v17 = notificationCopy;
  [v12 getAccessoryCategoryForExecutionInfo:info completion:v18];
}

- (void)_postPersonalDomainActivityNotificationWithBody:(id)body command:(id)command executionContext:(id)context completion:(id)completion
{
  bodyCopy = body;
  commandCopy = command;
  contextCopy = context;
  completionCopy = completion;
  info = [contextCopy info];
  currentHomeInfo = [info currentHomeInfo];

  if (currentHomeInfo && ![currentHomeInfo activityNotificationsEnabledForPersonalRequests] || (+[ADHomeInfoManager sharedInfoManager](ADHomeInfoManager, "sharedInfoManager"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "areActivityNotificationsOffForAllHomes"), v15, v16))
  {
    v17 = objc_alloc_init(SACommandIgnored);
    completionCopy[2](completionCopy, v17, 0);
  }

  else
  {
    homeId = [commandCopy homeId];
    v19 = bodyCopy;
    originatingDeviceName = [commandCopy originatingDeviceName];
    v42 = bodyCopy;
    if (![v19 length])
    {
      +[AFLocalization sharedInstance];
      v21 = v20 = v19;
      v22 = homeId;
      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v21 localizedStringForKey:@"ASSISTANT_SERVICES_HOMEPOD_ACTIVITY_DEFAULT_BODY" table:0 bundle:v23 languageCode:0];

      homeId = v22;
      v19 = v24;
    }

    v25 = [[ADUserNotificationServiceProvider alloc] initWithConnection:0 bundleIdentifier:@"com.apple.Home" notificationCategories:0];
    v26 = objc_alloc_init(UNMutableNotificationContent);
    v41 = v19;
    [v26 setBody:v19];
    [v26 setShouldSuppressDefaultAction:1];
    if ([homeId length])
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v52 = "[ADCommandCenter _postPersonalDomainActivityNotificationWithBody:command:executionContext:completion:]";
        v53 = 2112;
        v54 = homeId;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Adding home id: %@ to notification content's user info.", buf, 0x16u);
      }

      v49 = AFPersonalDomainsNotificationUserInfoHomeKey;
      v50 = homeId;
      v28 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      [v26 setUserInfo:v28];
    }

    [v26 setCategoryIdentifier:@"PersonalRequestsActivityCategory"];
    v29 = [NSString alloc];
    +[NSUUID UUID];
    v30 = v39 = homeId;
    uUIDString = [v30 UUIDString];
    v32 = [v29 initWithFormat:@"%@:%@", @"com.apple.siri.PersonalRequestsActivity", uUIDString];

    v33 = +[ADHomeInfoManager sharedInfoManager];
    info2 = [contextCopy info];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001FB6E8;
    v43[3] = &unk_100516090;
    v44 = originatingDeviceName;
    v45 = v26;
    v46 = v32;
    v47 = v25;
    v48 = completionCopy;
    v35 = v25;
    v36 = v32;
    v37 = v26;
    v38 = originatingDeviceName;
    [v33 getLocalizedAccessoryCategoryForExecutionInfo:info2 completion:v43];

    bodyCopy = v42;
  }
}

- (void)_saPostPersonalDomainActivityNotification:(id)notification executionContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  notificationCopy = notification;
  notificationBody = [notificationCopy notificationBody];
  [(ADCommandCenter *)self _postPersonalDomainActivityNotificationWithBody:notificationBody command:notificationCopy executionContext:contextCopy completion:completionCopy];
}

- (void)_saPostCalendarActivityNotification:(id)notification executionContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  notificationCopy = notification;
  v11 = +[AFLocalization sharedInstance];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v11 localizedStringForKey:@"ASSISTANT_SERVICES_HOMEPOD_CALENDAR_ACTIVITY_NOTIFICATION_BODY" table:0 bundle:v12 languageCode:0];

  [(ADCommandCenter *)self _postPersonalDomainActivityNotificationWithBody:v13 command:notificationCopy executionContext:contextCopy completion:completionCopy];
}

- (void)_saDismissRemoteAnnouncement:(id)announcement completion:(id)completion
{
  completionCopy = completion;
  announcementCopy = announcement;
  v7 = +[ADAnnounceDeviceSelector sharedDeviceSelector];
  [v7 handleRemoteDismissRequest:announcementCopy completion:completionCopy];
}

- (void)_saPerformRemoteAnnouncement:(id)announcement completion:(id)completion
{
  completionCopy = completion;
  announcementCopy = announcement;
  v7 = +[ADAnnounceDeviceSelector sharedDeviceSelector];
  [v7 handleRemoteAnnounceRequest:announcementCopy completion:completionCopy];
}

- (void)_saNotificationSearch:(id)search completion:(id)completion
{
  searchCopy = search;
  completionCopy = completion;
  supportsSpokenNotifications = [searchCopy supportsSpokenNotifications];
  bOOLValue = [supportsSpokenNotifications BOOLValue];

  if (bOOLValue)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[ADCommandCenter _saNotificationSearch:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Announcement notification search", buf, 0xCu);
    }

    v11 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
    afterNotificationId = [searchCopy afterNotificationId];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001FBEAC;
    v24[3] = &unk_10051CE90;
    v24[4] = self;
    v25 = searchCopy;
    v26 = completionCopy;
    v13 = completionCopy;
    v14 = searchCopy;
    [v11 fetchUnreadNotificationsFromThreadAfterNotificationWithID:afterNotificationId completion:v24];

    v15 = v25;
  }

  else
  {
    v16 = +[ADNotificationManager sharedManager];
    afterNotificationId2 = [searchCopy afterNotificationId];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001FBEC0;
    v20[3] = &unk_10051CE90;
    v21 = searchCopy;
    selfCopy = self;
    v23 = completionCopy;
    v18 = completionCopy;
    v19 = searchCopy;
    [v16 fetchBulletinsAfterBulletinWithID:afterNotificationId2 completion:v20];

    v15 = v21;
  }
}

- (void)_completeNotificationSearch:(id)search bulletins:(id)bulletins completion:(id)completion
{
  bulletinsCopy = bulletins;
  completionCopy = completion;
  isOnDeviceSearch = [search isOnDeviceSearch];
  bOOLValue = [isOnDeviceSearch BOOLValue];

  v11 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = bulletinsCopy;
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
        if (bOOLValue)
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

  if (bOOLValue)
  {
    v19 = SAOnDeviceNotificationsSearchCompleted;
  }

  else
  {
    v19 = SANotificationsSearchCompleted;
  }

  v20 = objc_alloc_init(v19);
  [v20 setNotifications:v11];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v20, 0);
  }
}

- (void)_saTTSSetSpeechSynthesisVolume:(id)volume completion:(id)completion
{
  volumeCopy = volume;
  completionCopy = completion;
  v8 = +[CSPreferences sharedPreferences];
  smartSiriVolumeContextAwareEnabled = [v8 smartSiriVolumeContextAwareEnabled];

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    actionType = [volumeCopy actionType];
    volumeValue = [volumeCopy volumeValue];
    *buf = 136316162;
    v36 = "[ADCommandCenter _saTTSSetSpeechSynthesisVolume:completion:]";
    v37 = 2112;
    v38 = volumeCopy;
    v39 = 2112;
    v40 = actionType;
    v41 = 2112;
    v42 = volumeValue;
    v43 = 1024;
    v44 = smartSiriVolumeContextAwareEnabled;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ttsSetSpeechSynthesisVolume = %@ (actionType = %@, volumeLevel = %@), smartSiriVolumeContextAwareEnabled = %d", buf, 0x30u);
  }

  actionType2 = [volumeCopy actionType];
  v15 = SATTSSpeechVolumeActionTypeSETValue;
  if ([actionType2 isEqualToString:SATTSSpeechVolumeActionTypeSETValue])
  {
    v16 = 1;
    if (smartSiriVolumeContextAwareEnabled)
    {
      goto LABEL_5;
    }

LABEL_16:
    volumeValue2 = [volumeCopy volumeValue];
    [volumeValue2 floatValue];
    v24 = v23;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001FC798;
    v32[3] = &unk_10051DD98;
    v34 = completionCopy;
    v33 = volumeCopy;
    LODWORD(v25) = v24;
    [(ADCommandCenter *)self _setSiriOutputVolume:0 forAudioRoute:v16 operationType:v32 completion:v25];

    v26 = v34;
LABEL_23:

    goto LABEL_24;
  }

  if ([actionType2 isEqualToString:SATTSSpeechVolumeActionTypeINCREASEValue])
  {
    v16 = 2;
    if (!smartSiriVolumeContextAwareEnabled)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ([actionType2 isEqualToString:SATTSSpeechVolumeActionTypeDECREASEValue])
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    if (!smartSiriVolumeContextAwareEnabled)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  v17 = mach_absolute_time();
  if ([actionType2 isEqualToString:v15])
  {
    v18 = +[CSSpeechController sharedController];
    volumeValue3 = [volumeCopy volumeValue];
    [volumeValue3 floatValue];
    [v18 setSmartSiriVolumePercentage:?];

LABEL_20:
    _speechManager = [(ADCommandCenter *)self _speechManager];
    volumeTracker = [_speechManager volumeTracker];
    [volumeTracker setDirtySiriOutputVolumeHostTime:v17];

    goto LABEL_21;
  }

  if ([actionType2 isEqualToString:SATTSSpeechVolumeActionTypeINCREASEValue])
  {
    v20 = +[CSSpeechController sharedController];
    v18 = v20;
    v21 = 1;
LABEL_19:
    [v20 setSmartSiriVolumeDirection:v21];
    goto LABEL_20;
  }

  if ([actionType2 isEqualToString:SATTSSpeechVolumeActionTypeDECREASEValue])
  {
    v20 = +[CSSpeechController sharedController];
    v18 = v20;
    v21 = 0;
    goto LABEL_19;
  }

  if ([actionType2 isEqualToString:SATTSSpeechVolumeActionTypeENABLE_OFFSET_AND_INCREASEValue])
  {
    v30 = +[CSSpeechController sharedController];
    v18 = v30;
    v31 = 1;
LABEL_29:
    [v30 setPermanentVolumeOffsetWithDirection:v31];
    goto LABEL_20;
  }

  if ([actionType2 isEqualToString:SATTSSpeechVolumeActionTypeENABLE_OFFSET_AND_DECREASEValue])
  {
    v30 = +[CSSpeechController sharedController];
    v18 = v30;
    v31 = 0;
    goto LABEL_29;
  }

LABEL_21:
  if (completionCopy)
  {
    v26 = objc_alloc_init(SACommandSucceeded);
    aceId = [volumeCopy aceId];
    [v26 setRefId:aceId];

    (*(completionCopy + 2))(completionCopy, v26, 0);
    goto LABEL_23;
  }

LABEL_24:
}

- (void)_saTTSGetSpeechSynthesisVolume:(id)volume completion:(id)completion
{
  v6 = COERCE_DOUBLE(volume);
  completionCopy = completion;
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
  v9 = completionCopy;
  v28 = v9;
  v10 = COERCE_DOUBLE(*&v6);
  v27 = v10;
  v11 = objc_retainBlock(&v23);
  v12 = [CSPreferences sharedPreferences:v23];
  smartSiriVolumeContextAwareEnabled = [v12 smartSiriVolumeContextAwareEnabled];

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v30 = "[ADCommandCenter _saTTSGetSpeechSynthesisVolume:completion:]";
    v31 = 2112;
    v32 = v10;
    v33 = 1024;
    v34 = smartSiriVolumeContextAwareEnabled;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s ttsGetSpeechSynthesisVolume = %@, smartSiriVolumeContextAwareEnabled = %d", buf, 0x1Cu);
  }

  if (smartSiriVolumeContextAwareEnabled)
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
      aceId = [*&v10 aceId];
      [v19 setRefId:aceId];

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

- (void)_saLogStringEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[ADCommandCenter _saLogStringEvent:completion:]";
    v20 = 2112;
    v21 = eventCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  eventName = [eventCopy eventName];
  v9 = eventName;
  if (eventName)
  {
    v10 = eventName;
  }

  else
  {
    v10 = &stru_10051F508;
  }

  v17[0] = v10;
  v16[1] = SALogStringEventEventValuePListKey;
  eventValue = [eventCopy eventValue];
  v12 = eventValue;
  if (eventValue)
  {
    v13 = eventValue;
  }

  else
  {
    v13 = &stru_10051F508;
  }

  v17[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  v15 = +[AFAnalytics sharedAnalytics];
  [v15 logEventWithType:141 context:v14];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saLogNumericEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADCommandCenter _saLogNumericEvent:completion:]";
    v23 = 2112;
    v24 = eventCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  eventName = [eventCopy eventName];
  v9 = eventName;
  if (eventName)
  {
    v10 = eventName;
  }

  else
  {
    v10 = &stru_10051F508;
  }

  v20[0] = v10;
  v19[1] = SALogNumericEventEventOperationPListKey;
  eventOperation = [eventCopy eventOperation];
  v12 = eventOperation;
  if (eventOperation)
  {
    v13 = eventOperation;
  }

  else
  {
    v13 = &stru_10051F508;
  }

  v20[1] = v13;
  v19[2] = SALogNumericEventEventValuePListKey;
  eventValue = [eventCopy eventValue];
  v15 = eventValue;
  v16 = &off_100533BC0;
  if (eventValue)
  {
    v16 = eventValue;
  }

  v20[2] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

  v18 = +[AFAnalytics sharedAnalytics];
  [v18 logEventWithType:140 context:v17];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saLogSignatureWithABC:(id)c completion:(id)completion
{
  cCopy = c;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[ADCommandCenter _saLogSignatureWithABC:completion:]";
    v15 = 2112;
    v16 = cCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %@", &v13, 0x16u);
  }

  v8 = +[SiriCoreSymptomsReporter sharedInstance];
  subType = [cCopy subType];
  subTypeContext = [cCopy subTypeContext];
  v11 = +[NSProcessInfo processInfo];
  processIdentifier = [v11 processIdentifier];
  [v8 reportIssueForType:@"server_request" subType:subType context:subTypeContext processIdentifier:processIdentifier walkboutStatus:byte_100590548];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saSetLatencyDiagnosticConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  _diagnosticsManager = [(ADCommandCenter *)self _diagnosticsManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FD2B4;
  v10[3] = &unk_10051CF58;
  v11 = completionCopy;
  v9 = completionCopy;
  [_diagnosticsManager updateLatencyDiagnosticConfiguration:configurationCopy completion:v10];
}

- (void)_saGetAssistantData:(id)data executionContext:(id)context completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[ADCommandCenter _saGetAssistantData:executionContext:completion:]";
    v15 = 2112;
    v16 = dataCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = +[ADAssistantDataManager sharedDataManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FD428;
  v11[3] = &unk_100516040;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 getAssistantDataWithCompletion:v11];
}

- (void)_saGetRequestOrigin:(id)origin executionContext:(id)context completion:(id)completion
{
  originCopy = origin;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[ADCommandCenter _saGetRequestOrigin:executionContext:completion:]";
    v30 = 2112;
    v31 = originCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  info = [contextCopy info];
  requestID = [info requestID];

  currentRequest = self->_currentRequest;
  if (currentRequest && (-[ADCommandCenterCurrentRequest currentRequestId](currentRequest, "currentRequestId"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqualToString:requestID], v15, (v16 & 1) != 0))
  {
    _locationManager = [(ADCommandCenter *)self _locationManager];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001FDA9C;
    v23[3] = &unk_100516018;
    v18 = &v24;
    v24 = completionCopy;
    v19 = completionCopy;
    [_locationManager updateLocationForCommand:originCopy completion:v23];
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

    _contextManager = [(ADCommandCenter *)self _contextManager];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001FD7A8;
    v25[3] = &unk_10051DD70;
    v18 = &v26;
    v26 = originCopy;
    v27 = completionCopy;
    v22 = completionCopy;
    [_contextManager getContextSnapshotForForeignRequestID:requestID completion:v25];

    _locationManager = v27;
  }
}

- (void)_saAcknowledgeAlert:(id)alert completion:(id)completion
{
  alertCopy = alert;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[ADCommandCenter _saAcknowledgeAlert:completion:]";
    v13 = 2112;
    v14 = alertCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  object = [alertCopy object];
  [(ADCommandCenter *)self _context_acknowledgeBulletinForObject:object];

  if (completionCopy)
  {
    v10 = objc_alloc_init(SACommandSucceeded);
    completionCopy[2](completionCopy, v10, 0);
  }
}

- (void)_endSpeechRequestForCommand:(id)command withError:(id)error suppressAlert:(BOOL)alert secureOfflineOnlyDictation:(BOOL)dictation
{
  dictationCopy = dictation;
  alertCopy = alert;
  commandCopy = command;
  errorCopy = error;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v39 = "[ADCommandCenter _endSpeechRequestForCommand:withError:suppressAlert:secureOfflineOnlyDictation:]";
    v40 = 2112;
    v41 = commandCopy;
    v42 = 2112;
    v43 = errorCopy;
    v44 = 1024;
    v45 = alertCopy;
    v46 = 1024;
    v47 = dictationCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s command %@ error %@ suppressAlert %d secureOfflineOnlyDictation %d", buf, 0x2Cu);
  }

  adWaitingForAudioFile = [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adWaitingForAudioFile];
  _speechManager = [(ADCommandCenter *)self _speechManager];
  _speechCapturingContext = [(ADCommandCenter *)self _speechCapturingContext];
  if (self->_speechManagerState == 2)
  {
    if (adWaitingForAudioFile)
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
      [_speechManager cancelSpeechCaptureSuppressingAlert:alertCopy];
      [_speechManager setContext:0];
      [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechRecordingDidEndWithContext:_speechCapturingContext];
    }
  }

  if (self->_startSpeechCommand)
  {
    if (errorCopy)
    {
      v17 = dictationCopy;
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

  else if (errorCopy && dictationCopy)
  {
LABEL_17:
    speechDelegate = self->_speechDelegate;
    sessionUUID = [_speechCapturingContext sessionUUID];
    [(ADCommandCenterSpeechDelegate *)speechDelegate adSpeechRecognitionDidFail:errorCopy sessionUUID:sessionUUID];
    goto LABEL_20;
  }

  if (!dictationCopy)
  {
    goto LABEL_21;
  }

  v20 = self->_speechDelegate;
  sessionUUID = [_speechCapturingContext sessionUUID];
  [(ADCommandCenterSpeechDelegate *)v20 adSpeechLocalRecognitionDidSucceedWithSessionUUID:sessionUUID];
LABEL_20:

LABEL_21:
  currentRequest = self->_currentRequest;
  if (commandCopy || !currentRequest || dictationCopy)
  {
    currentRequestId = [(ADCommandCenterCurrentRequest *)currentRequest currentRequestId];
    refId = [commandCopy refId];
    v24 = [currentRequestId isEqualToString:refId];

    if (!v24)
    {
      if (commandCopy || !errorCopy)
      {
        v30 = errorCopy == 0;
        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = self;
        v30 = 0;
      }

      [(ADCommandCenter *)selfCopy2 _completeRequestForCurrentDelegate:v30 error:errorCopy];
      if (adWaitingForAudioFile)
      {
        goto LABEL_28;
      }

LABEL_34:
      [(ADCommandCenter *)self _clearSpeechDelegateState];
      goto LABEL_35;
    }
  }

  if (!errorCopy)
  {
    errorCopy = [AFError errorWithCode:212];
  }

  [(ADCommandCenter *)self _completeRequestForCurrentDelegate:0 error:errorCopy];
  [(ADCommandCenter *)self _setCurrentRequest:0];
  if (!adWaitingForAudioFile)
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
  [v31 endRetryableRequestForCommand:commandCopy];

  [(ADCommandCenter *)self _requestDidEnd];
}

- (void)_saClientSetupInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  refId = [infoCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    speechManager = self->_speechManager;
    [infoCopy threshold];
    [(ADSpeechManager *)speechManager setEndpointerThreshold:?];
    -[ADSpeechManager setEndpointerDelayedTrigger:](self->_speechManager, "setEndpointerDelayedTrigger:", [infoCopy delay]);
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      refId2 = [infoCopy refId];
      v14 = 136315394;
      v15 = "[ADCommandCenter _saClientSetupInfo:completion:]";
      v16 = 2112;
      v17 = refId2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Got clientSetupInfo for refId %@. Ignoring. ", &v14, 0x16u);
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_sasClientBoundConfusionNetwork:(id)network completion:(id)completion
{
  completionCopy = completion;
  refId = [network refId];
  LOBYTE(self) = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_sasServerEndpointFeatures:(id)features completion:(id)completion
{
  featuresCopy = features;
  completionCopy = completion;
  refId = [featuresCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    _speechManager = [(ADCommandCenter *)self _speechManager];
    ad_csASRFeatures = [featuresCopy ad_csASRFeatures];
    [_speechManager updateASRFeatures:ad_csASRFeatures];
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_sasConfirmEndpoint:(id)endpoint completion:(id)completion
{
  endpointCopy = endpoint;
  completionCopy = completion;
  refId = [endpointCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    endpointConfirmationTimestamp = [endpointCopy endpointConfirmationTimestamp];
    v11 = [endpointConfirmationTimestamp unsignedLongLongValue] / 1000.0;

    _speechManager = [(ADCommandCenter *)self _speechManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001FE6A4;
    v15[3] = &unk_100515FC8;
    v17 = v11;
    v16 = completionCopy;
    [_speechManager getLastStartpointTimestampAndCurrentTime:v15];

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

  if (completionCopy)
  {
    v13 = objc_alloc_init(SACommandFailed);
    (*(completionCopy + 2))(completionCopy, v13, 0);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_handleSuspendClientEndpointer:(id)endpointer
{
  endpointerCopy = endpointer;
  audioProcessedMs = [endpointerCopy audioProcessedMs];
  v6 = [audioProcessedMs unsignedLongLongValue] / 1000.0;
  suspendDurationMs = [endpointerCopy suspendDurationMs];

  v8 = [suspendDurationMs unsignedLongLongValue] / 1000.0;
  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager suspendAutomaticEndpointingInRange:{v6, v8}];
}

- (void)_sasSuspendClientEndpointer:(id)endpointer completion:(id)completion
{
  endpointerCopy = endpointer;
  completionCopy = completion;
  refId = [endpointerCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    [(ADCommandCenter *)self _handleSuspendClientEndpointer:endpointerCopy];
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_sasVoiceSearchFinalResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  refId = [resultCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechDidFindVoiceSearchFinalResult:resultCopy];
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_sasVoiceSearchPartialResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  refId = [resultCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechDidFindVoiceSearchPartialResult:resultCopy];
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_sasAbortSpeechRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  refId = [requestCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    reason = [requestCopy reason];
    if ([reason isEqualToString:SASAbortSpeechRequestReasonACOUSTIC_ID_DETECTEDValue])
    {
      LOBYTE(v11) = 1;
      v12 = 218;
    }

    else
    {
      v11 = [reason isEqualToString:SASAbortSpeechRequestReasonFALSE_TRIGGER_DETECTEDValue];
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
    v15 = [AFError errorWithCode:v12 description:reason underlyingError:0];
    [(ADCommandCenter *)self _endSpeechRequestForCommand:requestCopy withError:v15 suppressAlert:v14 & 1 secureOfflineOnlyDictation:0];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_sasSpeechFailure:(id)failure completion:(id)completion
{
  failureCopy = failure;
  completionCopy = completion;
  refId = [failureCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    reasonDescription = [failureCopy reasonDescription];
    ad_error = [failureCopy ad_error];
    v12 = [AFError errorWithCode:203 description:reasonDescription underlyingError:ad_error];

    [(ADCommandCenter *)self _endSpeechRequestForCommand:failureCopy withError:v12 suppressAlert:0 secureOfflineOnlyDictation:0];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_saStructuredDictationFailure:(id)failure completion:(id)completion
{
  failureCopy = failure;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v10 = v8;
    recognition = [failureCopy recognition];
    v12 = 136315394;
    v13 = "[ADCommandCenter _saStructuredDictationFailure:completion:]";
    v14 = 2112;
    v15 = recognition;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@", &v12, 0x16u);
  }

  ad_error = [failureCopy ad_error];
  [(ADCommandCenterSpeechDelegate *)self->_speechDelegate adSpeechRecognitionDidFail:ad_error sessionUUID:self->_speechCapturingContextSessionUUID];
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saStructuredDictationResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[ADCommandCenter _saStructuredDictationResult:completion:]";
    v13 = 2112;
    v14 = resultCopy;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@", &v11, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    speechDelegate = self->_speechDelegate;
    v10 = [(ADCommandCenter *)self _languageModelForSpeechRequest:self->_startSpeechCommand];
    [(ADCommandCenterSpeechDelegate *)speechDelegate adSpeechRecognizedStructuredResult:resultCopy usingSpeechModel:v10 sessionUUID:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ADCommandCenter *)self _dictationSessionDidComplete];
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_sasSpeechPartialResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ADCommandCenter _sasSpeechPartialResult:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  refId = [resultCopy refId];
  v10 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v10)
  {
    if (AFIsInternalInstall())
    {
      v11 = [resultCopy copy];
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

    currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
    encodedClassName = [resultCopy encodedClassName];
    v17 = AFShouldEmitAceCommandContextSELFLog();

    if (v17)
    {
      currentRequestId2 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
      encodedClassName2 = [resultCopy encodedClassName];
      aceId = [resultCopy aceId];
      sub_100014010(currentRequestId2, encodedClassName2, aceId, 3);
    }

    self->_hasReceivedServerSpeechRecognitions = 1;
    tokens = [resultCopy tokens];
    lastObject = [tokens lastObject];

    endTime = [lastObject endTime];
    v24 = [endTime longLongValue] / 1000.0;

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001FF654;
    v25[3] = &unk_10051E010;
    v25[4] = self;
    v26 = resultCopy;
    [(ADCommandCenter *)self _handlePartialSpeechRecognitionForElapsedTime:v25 WithDelegateBlock:v24];
    [(ADCommandCenter *)self _acousticId_clearPartialResultTimer];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_handleSpeechRecognizedWithDelegateBlock:(id)block
{
  blockCopy = block;
  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager updateOptionsAfterRecognitionForElapsedTime:1 isFinal:0.0];

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
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
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

- (void)_handlePartialSpeechRecognitionForElapsedTime:(double)time WithDelegateBlock:(id)block
{
  blockCopy = block;
  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager updateOptionsAfterRecognitionForElapsedTime:0 isFinal:time];

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

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_sasPronunciationRecognized:(id)recognized completion:(id)completion
{
  recognizedCopy = recognized;
  completionCopy = completion;
  refId = [recognizedCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001FFB8C;
    v11[3] = &unk_10051E010;
    v11[4] = self;
    v12 = recognizedCopy;
    [(ADCommandCenter *)self _handleSpeechRecognizedWithDelegateBlock:v11];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
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

- (void)_sasSpeechMultilingualSpeechRecognized:(id)recognized executionContext:(id)context completion:(id)completion
{
  recognizedCopy = recognized;
  contextCopy = context;
  completionCopy = completion;
  refId = [recognizedCopy refId];
  v12 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  v13 = AFSiriLogContextDaemon;
  v14 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      *buf = 136315394;
      v31 = "[ADCommandCenter _sasSpeechMultilingualSpeechRecognized:executionContext:completion:]";
      v32 = 2112;
      v33 = recognizedCopy;
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
      v27 = recognizedCopy;
      v28 = completionCopy;
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
      ad_languageModel = [(SASStartSpeech *)self->_startSpeechCommand ad_languageModel];
      if (ad_languageModel)
      {
        speechRecognizedByLanguage = [recognizedCopy speechRecognizedByLanguage];
        v21 = [speechRecognizedByLanguage objectForKey:ad_languageModel];

        aceId = [(SASStartSpeech *)self->_startSpeechCommand aceId];
        [v21 setRefId:aceId];

        [(ADCommandCenter *)self _sasSpeechRecognized:v21 executionContext:contextCopy completion:completionCopy];
      }

      else
      {
        v23 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
          speechRecognizedByLanguage2 = [recognizedCopy speechRecognizedByLanguage];
          *buf = 136315650;
          v31 = "[ADCommandCenter _sasSpeechMultilingualSpeechRecognized:executionContext:completion:]";
          v32 = 2112;
          v33 = recognizedCopy;
          v34 = 2112;
          v35 = speechRecognizedByLanguage2;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s SASMultilingualSpeechRecognized failed to return speech recognized command for primary language\n %@ %@", buf, 0x20u);
        }

        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0);
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_sasSpeechRecognized:(id)recognized executionContext:(id)context completion:(id)completion
{
  recognizedCopy = recognized;
  contextCopy = context;
  completionCopy = completion;
  refId = [recognizedCopy refId];
  v12 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v12)
  {
    if (AFIsInternalInstall())
    {
      recognition = [recognizedCopy recognition];
      processedAudioDuration = [recognizedCopy processedAudioDuration];
      [processedAudioDuration doubleValue];
      v15 = [AFSpeechPackage fromSASRecognition:recognition processedAudioDuration:?];

      dictionaryRepresentation = [v15 dictionaryRepresentation];
      v17 = [NSJSONSerialization dataWithJSONObject:dictionaryRepresentation options:0 error:0];
      if (v17)
      {
        v18 = [[NSString alloc] initWithData:v17 encoding:4];
        if (v18)
        {
          [(ADCommandCenter *)self _logToFeatureStore:v18 speechRecgonized:recognizedCopy];
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
      eager = [recognizedCopy eager];
      *buf = 136315394;
      v39 = "[ADCommandCenter _sasSpeechRecognized:executionContext:completion:]";
      v40 = 1024;
      v41 = eager;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s isEager %d", buf, 0x12u);
    }

    _queue = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100200B08;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(_queue, block);

    v25 = [recognizedCopy copy];
    v26 = [(ADCommandCenter *)self _languageModelForSpeechRequest:self->_startSpeechCommand];
    v27 = sub_1002003F4(v25, v26);
    v28 = +[AFAnalytics sharedAnalytics];
    [v28 logEventWithType:1102 context:v27];

    [(ADCommandCenter *)self _setSpeechRecognizedContext:v27];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100200C98;
    v35[3] = &unk_100515FA0;
    v29 = recognizedCopy;
    v36 = v29;
    [contextCopy updateInfoUsingBlock:v35];
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
    if (completionCopy)
    {
      v31 = objc_alloc_init(SACommandSucceeded);
      completionCopy[2](completionCopy, v31, 0);
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, 0);
    }
  }
}

- (void)_logToFeatureStore:(id)store speechRecgonized:(id)recgonized
{
  storeCopy = store;
  recgonizedCopy = recgonized;
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
  v15 = recgonizedCopy;
  v16 = storeCopy;
  v12 = storeCopy;
  v13 = recgonizedCopy;
  dispatch_async(curareQueue, v14);
}

- (void)_sasVoiceIdentificationSignal:(id)signal completion:(id)completion
{
  signalCopy = signal;
  completionCopy = completion;
  refId = [signalCopy refId];
  v9 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

  if (v9)
  {
    recordUserAudio = [signalCopy recordUserAudio];
    resultCandidateId = [signalCopy resultCandidateId];
    selectedSharedUserId = [signalCopy selectedSharedUserId];
    v13 = [(NSString *)self->_selectedSharedUserID length];
    if (selectedSharedUserId)
    {
      if (v13)
      {
        goto LABEL_12;
      }

      objc_storeStrong(&self->_selectedSharedUserID, selectedSharedUserId);
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
      *&v24[14] = signalCopy;
      *&v24[22] = 1024;
      v25 = recordUserAudio;
      v26 = 2112;
      v27 = resultCandidateId;
      v28 = 2112;
      v29 = selectedSharedUserId;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s %@ (recordUserAudio = %d, resultCandidateId = %@, selectedSharedUserId = %@)", v24, 0x30u);
    }

    v22 = [(ADCommandCenter *)self _speechCapturingContext:*v24];
    selectedSharedUserId2 = [signalCopy selectedSharedUserId];
    [v22 updateAccessToRecordedAudioForVoiceIdentificationTraining:recordUserAudio forResultCandidateId:resultCandidateId sharedUserId:selectedSharedUserId2];

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_15;
  }

  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *v24 = 136315138;
    *&v24[4] = "[ADCommandCenter _sasVoiceIdentificationSignal:completion:]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s VoiceIdentificationSignal for a different request. Ignoring.", v24, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_15:
}

- (void)_setSpeechRecognizedContext:(id)context
{
  contextCopy = context;
  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager setSpeechRecognizedContext:contextCopy];
}

- (void)_sasSpeechServerEndpointIdentified:(id)identified completion:(id)completion
{
  completionCopy = completion;
  refId = [identified refId];
  v8 = [(ADCommandCenter *)self _refIdIsSpeechStart:refId];

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

    _speechManager = [(ADCommandCenter *)self _speechManager];
    [_speechManager enforcePreviousEndpointHint];

LABEL_8:
    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_9;
  }

  if (v10)
  {
    v12 = 136315138;
    v13 = "[ADCommandCenter _sasSpeechServerEndpointIdentified:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s ServerEndpoint for a different request. Ignoring.", &v12, 0xCu);
  }

  if (completionCopy)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)_didAlreadyAcceptResultCandidate:(id)candidate
{
  candidateCopy = candidate;
  v5 = candidateCopy;
  if (self->_speechHasAcceptedResultCandidate && (self->_selectedResultCandidate || ([candidateCopy processedAudioDuration], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "doubleValue"), v8 = v7, v9 = self->_speechAcceptedResultCandidateDuration, v6, v8 < v9)))
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
      processedAudioDuration = [(SASResultCandidate *)selectedResultCandidate processedAudioDuration];
      [processedAudioDuration doubleValue];
      v15 = v14;
      resultId = [(SASResultCandidate *)self->_selectedResultCandidate resultId];
      v20 = 136315906;
      v21 = "[ADCommandCenter _didAlreadyAcceptResultCandidate:]";
      v22 = 2112;
      v23 = *&selectedResultCandidate;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = resultId;
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

- (void)_acceptResultCandidate:(id)candidate isMitigated:(BOOL)mitigated featuresToLog:(id)log completion:(id)completion
{
  mitigatedCopy = mitigated;
  candidateCopy = candidate;
  logCopy = log;
  completionCopy = completion;
  refId = [candidateCopy refId];
  if ([(ADCommandCenter *)self _refIdIsSpeechStart:refId])
  {
    v40 = mitigatedCopy;
    resultId = [candidateCopy resultId];
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      aceId = [candidateCopy aceId];
      *buf = 136315906;
      v45 = "[ADCommandCenter _acceptResultCandidate:isMitigated:featuresToLog:completion:]";
      v46 = 2112;
      v47 = aceId;
      v48 = 2112;
      v49 = refId;
      v50 = 2112;
      v51 = resultId;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Check if ResultCandidate has already been accepted rcId: %@ refId: %@ with resultId: %@", buf, 0x2Au);
    }

    if ([(ADCommandCenter *)self _didAlreadyAcceptResultCandidate:candidateCopy])
    {
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0);
      }
    }

    else
    {
      objc_storeStrong(&self->_selectedResultCandidate, candidate);
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        selectedResultCandidate = self->_selectedResultCandidate;
        v22 = v20;
        processedAudioDuration = [(SASResultCandidate *)selectedResultCandidate processedAudioDuration];
        [processedAudioDuration doubleValue];
        v25 = v24;
        resultId2 = [(SASResultCandidate *)self->_selectedResultCandidate resultId];
        *buf = 136315906;
        v45 = "[ADCommandCenter _acceptResultCandidate:isMitigated:featuresToLog:completion:]";
        v46 = 2112;
        v47 = selectedResultCandidate;
        v48 = 2048;
        v49 = v25;
        v50 = 2112;
        v51 = resultId2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s selectedResultCandidate = %@ (processedAudioDuration = %f, resultId = %@)", buf, 0x2Au);
      }

      v27 = AFAnalyticsContextCreateWithCommand();
      v43[0] = v27;
      if (logCopy)
      {
        v41 = @"features";
        v42 = logCopy;
        v28 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      }

      else
      {
        v28 = &__NSDictionary0__struct;
      }

      v43[1] = v28;
      v29 = [NSArray arrayWithObjects:v43 count:2];
      v30 = AFAnalyticsContextsMerge();

      if (logCopy)
      {
      }

      v31 = +[AFAnalytics sharedAnalytics];
      [v31 logEventWithType:310 context:v30];

      v32 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v33 = v32;
        aceId2 = [candidateCopy aceId];
        *buf = 136315906;
        v45 = "[ADCommandCenter _acceptResultCandidate:isMitigated:featuresToLog:completion:]";
        v46 = 2112;
        v47 = aceId2;
        v48 = 2112;
        v49 = refId;
        v50 = 2112;
        v51 = resultId;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Accepted this ResultCandidate aceId: %@ refId: %@ with resultId %@", buf, 0x2Au);
      }

      _speechCapturingContext = [(ADCommandCenter *)self _speechCapturingContext];
      aceId3 = [candidateCopy aceId];
      [_speechCapturingContext updateSelectedResultCandidateId:aceId3];

      if (completionCopy)
      {
        v37 = objc_alloc_init(SAResultSelected);
        [v37 setRefId:refId];
        processedAudioDuration2 = [candidateCopy processedAudioDuration];
        [v37 setProcessedAudioDuration:processedAudioDuration2];

        [v37 setResultId:resultId];
        v39 = [NSNumber numberWithBool:v40];
        [v37 setIsMitigated:v39];

        (*(completionCopy + 2))(completionCopy, v37, 0);
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_sasResultCandidate:(id)candidate completion:(id)completion
{
  candidateCopy = candidate;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "[ADCommandCenter _sasResultCandidate:completion:]";
    v32 = 2112;
    v33 = candidateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s resultCandidate = %@", buf, 0x16u);
  }

  refId = [candidateCopy refId];
  if ([(ADCommandCenter *)self _refIdIsSpeechStart:refId])
  {
    self->_hasReceivedAtLeastOneResultCandidate = 1;
    processedAudioDuration = [candidateCopy processedAudioDuration];
    [processedAudioDuration doubleValue];
    v12 = v11;

    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      resultId = [candidateCopy resultId];
      *buf = 136315906;
      v31 = "[ADCommandCenter _sasResultCandidate:completion:]";
      v32 = 2112;
      v33 = candidateCopy;
      v34 = 2048;
      v35 = v12;
      v36 = 2112;
      v37 = resultId;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@ (processedAudioDuration = %f, resultId = %@)", buf, 0x2Au);

      v13 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = v13;
      aceId = [candidateCopy aceId];
      resultId2 = [candidateCopy resultId];
      *buf = 136315906;
      v31 = "[ADCommandCenter _sasResultCandidate:completion:]";
      v32 = 2112;
      v33 = aceId;
      v34 = 2112;
      v35 = refId;
      v36 = 2112;
      v37 = resultId2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Check if ResultCandidate has already been accepted rcId: %@ refId: %@ with resultId: %@", buf, 0x2Au);
    }

    if (![(ADCommandCenter *)self _didAlreadyAcceptResultCandidate:candidateCopy])
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

      _speechManager = [(ADCommandCenter *)self _speechManager];
      v23 = self->_speechHasAcceptedResultCandidate;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100202030;
      v25[3] = &unk_100515F50;
      v25[4] = self;
      v26 = refId;
      v29 = v12;
      v28 = completionCopy;
      v27 = candidateCopy;
      [_speechManager updateEndpointHintForRC:v27 forceAccept:v23 completion:v25];

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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_16:
}

- (void)_saDeviceMyriadConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
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

    [configurationCopy deviceClass];
    [v8 setMyriadDeviceClass:v11];
    [configurationCopy deviceAdjustment];
    *&v12 = v12;
    [v8 setMyriadDeviceAdjust:v12];
    [configurationCopy deviceDelay];
    [v8 setMyriadDeviceDelay:?];
    [configurationCopy deviceTrumpDelay];
    [v8 setMyriadDeviceTrumpDelay:?];
    [v8 setMyriadServerHasProvisioned:1];
    [configurationCopy deviceVTEndtimeDistanceThreshold];
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

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saDeviceConfiguration:(id)configuration completion:(id)completion
{
  v5 = COERCE_DOUBLE(configuration);
  completionCopy = completion;
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
  hasAudioSessionActivationDelay = [*&v5 hasAudioSessionActivationDelay];
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v36 = 136315394;
    v37 = "[ADCommandCenter _saDeviceConfiguration:completion:]";
    v38 = 1024;
    LODWORD(v39) = hasAudioSessionActivationDelay;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s hasAudioSessionActivationDelay = %d", &v36, 0x12u);
  }

  if (hasAudioSessionActivationDelay)
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
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saCancelCrossDeviceRequest:(id)request executionContext:(id)context completion:(id)completion
{
  requestCopy = request;
  requestId = [requestCopy requestId];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = v8;
    *buf = 136315650;
    v17 = "[ADCommandCenter _saCancelCrossDeviceRequest:executionContext:completion:]";
    v18 = 2112;
    v19 = requestId;
    v20 = 1024;
    cancelAssociatedRequests = [requestCopy cancelAssociatedRequests];
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s %@, shouldCancelAssociatedRequest? %d", buf, 0x1Cu);
  }

  currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  if ([currentRequestId isEqualToString:requestId])
  {

LABEL_5:
    [(ADCommandCenter *)self cancelCurrentRequest];
    [(ADCommandCenter *)self _clearContext];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100202D9C;
    v15[3] = &unk_100515F00;
    v15[4] = mach_absolute_time();
    _serviceManager = [AFSiriActivationContext newWithBuilder:v15];
    _account = +[AFSiriActivationConnection sharedConnection];
    [_account deactivateForReason:15 options:1 context:_serviceManager completion:0];
LABEL_13:

    goto LABEL_14;
  }

  if ([(NSString *)self->_associatedRequestId isEqualToString:requestId])
  {
    cancelAssociatedRequests2 = [requestCopy cancelAssociatedRequests];

    if (cancelAssociatedRequests2)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  if ([(ADCommandCenter *)self _hasRemoteExecutionContextForRequestID:requestId]|| self->_mostRecentVisibleRemoteExecutionContext)
  {
    _serviceManager = [(ADCommandCenter *)self _serviceManager];
    _account = [(ADCommandCenter *)self _account];
    assistantIdentifier = [_account assistantIdentifier];
    [_serviceManager cancelOperationsForRequest:requestId forAssistantID:assistantIdentifier fromRemote:1 reason:2];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)_saReplayRequestFromDMHypothesis:(id)hypothesis completion:(id)completion
{
  completionCopy = completion;
  hypothesisCopy = hypothesis;
  v8 = objc_alloc_init(AFRequestInfo);
  [v8 setStartRequest:hypothesisCopy];

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
  v12 = completionCopy;
  v10 = completionCopy;
  [(ADCommandCenter *)self handleExternalActivationRequest:v8 completion:v11];
}

- (void)_saStartUIRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = objc_alloc_init(AFRequestInfo);
  startRequest = [requestCopy startRequest];
  [v8 setStartRequest:startRequest];

  startLocalRequest = [requestCopy startLocalRequest];

  [v8 setStartLocalRequest:startLocalRequest];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100203090;
  v12[3] = &unk_10051CE00;
  v13 = completionCopy;
  v11 = completionCopy;
  [(ADCommandCenter *)self handleExternalActivationRequest:v8 completion:v12];
}

- (void)_saWaitForCommands:(id)commands completion:(id)completion
{
  commandsCopy = commands;
  completionCopy = completion;
  refId = [commandsCopy refId];
  commandAceIds = [commandsCopy commandAceIds];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v57 = "[ADCommandCenter _saWaitForCommands:completion:]";
    v58 = 2112;
    v59 = commandsCopy;
    v60 = 2112;
    v61 = commandAceIds;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ (commands = %@)", buf, 0x20u);
  }

  if (![(ADCommandCenter *)self _hasOutstandingRequestId:refId])
  {
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v57 = "[ADCommandCenter _saWaitForCommands:completion:]";
      v58 = 2112;
      v59 = commandsCopy;
      v60 = 2112;
      v61 = refId;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Ignored %@ because request id %@ is unknown.", buf, 0x20u);
      if (!completionCopy)
      {
        goto LABEL_24;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_24;
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_24;
  }

  v9 = [AFTwoArgumentSafetyBlock alloc];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1002036D4;
  v53[3] = &unk_10051CD88;
  v54 = completionCopy;
  v10 = [v9 initWithBlock:v53 defaultValue1:0 defaultValue2:0];
  if ([commandAceIds count])
  {
    v35 = completionCopy;
    v11 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100203780;
    v50[3] = &unk_10051E010;
    v33 = v10;
    v32 = v10;
    v51 = v32;
    v31 = commandsCopy;
    v52 = v31;
    v30 = [v11 initWithTimeoutInterval:queue onQueue:v50 timeoutHandler:30.0];
    [v30 start];
    v13 = dispatch_group_create();
    v14 = [(ADCommandCenter *)self _handledCommandIdsForRequestId:refId];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v34 = commandAceIds;
    v15 = commandAceIds;
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
            [(ADCommandCenter *)self _addPostCommandHandlingBlock:v42 forCommandId:v20 requestId:refId];
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

    completionCopy = v35;
    v10 = v33;
    commandAceIds = v34;
  }

  else
  {
    [v10 invokeWithValue:0 andValue:0];
  }

LABEL_24:
}

- (void)_saPing:(id)ping completion:(id)completion
{
  completionCopy = completion;
  pingCopy = ping;
  v6 = objc_alloc_init(SAPong);
  aceId = [pingCopy aceId];

  [v6 setRefId:aceId];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v6, 0);
  }
}

- (void)_saSetDeviceTTSMuteState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter _saSetDeviceTTSMuteState:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  -[ADCommandCenterClient adServerRequestsTTSStateUnmuted:](self->_currentClient, "adServerRequestsTTSStateUnmuted:", [stateCopy textToSpeechIsMuted] ^ 1);
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saInitiateHandoffOnCompanion:(id)companion completion:(id)completion
{
  companionCopy = companion;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ADCommandCenter _saInitiateHandoffOnCompanion:completion:]";
    v31 = 2112;
    v32 = companionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v9 = objc_alloc_init(AFRequestInfo);
  turnIdentifier = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions turnIdentifier];
  [v9 setTurnIdentifier:turnIdentifier];

  notificationText = [companionCopy notificationText];
  if (AFIsATVOnly())
  {
    [v9 setIsATVHandoff:1];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    if (!notificationText)
    {
      notificationText = [v12 localizedStringForKey:@"ASSISTANT_SERVICES_ATV_REQUEST_HANDOFF_NOTIFICATION_BODY" value:0 table:0];
    }
  }

  if (notificationText)
  {
    [v9 setHandoffNotification:notificationText];
    [v9 setHandoffRequiresUserInteraction:1];
  }

  isSiriXRequest = [companionCopy isSiriXRequest];
  [v9 setIsSiriXRequest:{objc_msgSend(isSiriXRequest, "BOOLValue")}];

  handoffPayload = [companionCopy handoffPayload];
  [v9 _ad_setHandoffPayload:handoffPayload];

  targetDevice = [companionCopy targetDevice];
  assistantId = [targetDevice assistantId];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100203F04;
  v26[3] = &unk_10051DD98;
  v18 = companionCopy;
  v27 = v18;
  v19 = completionCopy;
  v28 = v19;
  v20 = objc_retainBlock(v26);
  if (!AFIsATV() || assistantId)
  {
    [(ADCommandCenter *)self startRemoteRequest:v9 onTargetDevice:assistantId completion:v20];
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

- (void)_saExecuteCallbacks:(id)callbacks completion:(id)completion
{
  callbacksCopy = callbacks;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    callbacks = [callbacksCopy callbacks];
    firstObject = [callbacks firstObject];
    commandReferences = [firstObject commandReferences];
    v13 = 136315394;
    v14 = "[ADCommandCenter _saExecuteCallbacks:completion:]";
    v15 = 2112;
    v16 = commandReferences;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s first callback ACE IDs: %@", &v13, 0x16u);
  }

  if ([callbacksCopy ad_hasCallbacks])
  {
    v12 = objc_alloc_init(SACommandSucceeded);
    completionCopy[2](completionCopy, v12, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)_saAddResultObjects:(id)objects completion:(id)completion
{
  objectsCopy = objects;
  completionCopy = completion;
  v6 = objectsCopy;
  objects = [v6 objects];
  resultObjects = [v6 resultObjects];
  v29 = [resultObjects count];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [objects count];
    aceId = [v6 aceId];
    refId = [v6 refId];
    *buf = 136315906;
    v46 = "_LogARO";
    v47 = 2048;
    v48 = v10;
    v49 = 2112;
    v50 = aceId;
    v51 = 2112;
    v52 = refId;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Got AddResultObjects with %lu objects aceID=%@, refId=%@ ", buf, 0x2Au);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = v6;
  objects2 = [v6 objects];
  v14 = [objects2 countByEnumeratingWithState:&v35 objects:buf count:16];
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
          objc_enumerationMutation(objects2);
        }

        v18 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = v18;
          encodedClassName = [v19 encodedClassName];
          aceId2 = [v19 aceId];
          *v39 = 136315650;
          v40 = "_LogARO";
          v41 = 2112;
          v42 = encodedClassName;
          v43 = 2112;
          v44 = aceId2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s  - %@ %@", v39, 0x20u);
        }
      }

      v15 = [objects2 countByEnumeratingWithState:&v35 objects:buf count:16];
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

  currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  refId2 = [v33 refId];

  if (!refId2)
  {
    [v33 setRefId:currentRequestId];
  }

  v27 = [(ADSessionManager *)self->_sessionManager sessionRequestIdForRefId:currentRequestId];
  _resultObjectCache = [(ADCommandCenter *)self _resultObjectCache];
  [_resultObjectCache addResultObjects:v33 sessionRequestId:v27];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_emitTriggerWithCachingForUUID:(id)d namespace:(id)namespace requestID:(id)iD
{
  dCopy = d;
  namespaceCopy = namespace;
  iDCopy = iD;
  _experimentationAnalyticsManager = [(ADCommandCenter *)self _experimentationAnalyticsManager];
  v21 = namespaceCopy;
  v12 = [NSArray arrayWithObjects:&v21 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002046FC;
  v16[3] = &unk_100515EB8;
  v17 = dCopy;
  v18 = namespaceCopy;
  selfCopy = self;
  v20 = iDCopy;
  v13 = iDCopy;
  v14 = namespaceCopy;
  v15 = dCopy;
  [_experimentationAnalyticsManager cacheTrialExperimentsIdentifiersForCodePathID:v15 namespaces:v12 completionHandler:v16];
}

- (void)_saStartLocalRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _saStartLocalRequest:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  [(ADCommandCenter *)self _startLocalRequest:requestCopy withRequestInfo:0 forDelegate:0 suppressCancelationAlertIfCapturingSpeech:0 completion:0];
  if (completionCopy)
  {
    v9 = objc_alloc_init(SACommandSucceeded);
    completionCopy[2](completionCopy, v9, 0);
  }
}

- (void)_saSetHandoffPayload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[ADCommandCenter _saSetHandoffPayload:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12 = 0;
  v13 = 0;
  [ADRemoteRequestHelper getInfoForHandoffPayload:payloadCopy userInfo:&v13 wepageURL:&v12];
  v9 = v13;
  v10 = v12;
  [(ADCommandCenterClient *)self->_currentClient adSetUserActivityInfo:v9 webpageURL:v10];
  if (completionCopy)
  {
    v11 = objc_alloc_init(SACommandSucceeded);
    completionCopy[2](completionCopy, v11, 0);
  }
}

- (void)_saSetClientData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    holdToTalkThresholdInMilliseconds = [dataCopy holdToTalkThresholdInMilliseconds];
    v16 = 136315394;
    v17 = "[ADCommandCenter _saSetClientData:completion:]";
    v18 = 2112;
    v19 = holdToTalkThresholdInMilliseconds;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s holdToTalkThresholdInMilliseconds: %@", &v16, 0x16u);
  }

  v10 = +[AFPreferences sharedPreferences];
  ignoreServerManualEndpointingThreshold = [v10 ignoreServerManualEndpointingThreshold];

  if (ignoreServerManualEndpointingThreshold)
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
    holdToTalkThresholdInMilliseconds2 = [dataCopy holdToTalkThresholdInMilliseconds];
    v15 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [holdToTalkThresholdInMilliseconds2 integerValue] / 1000.0);
    [v13 setManualEndpointingThreshold:v15];
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saRollbackSucceeded:(id)succeeded completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)_saCancelSucceeded:(id)succeeded completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)_saAssistantDestroyed:(id)destroyed completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)_handleSendCommands:(id)commands forRequestDelegate:(id)delegate completion:(id)completion
{
  commandsCopy = commands;
  delegateCopy = delegate;
  completionCopy = completion;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "[ADCommandCenter _handleSendCommands:forRequestDelegate:completion:]";
    v29 = 2112;
    v30 = commandsCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s sending commands : %@", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = commandsCopy;
  commands = [commandsCopy commands];
  v12 = [commands countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(commands);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ADCommandCenter *)self _startNonSpeechRequest:v16 forDelegate:delegateCopy withInfo:0 options:0 suppressAlert:1 completion:0];
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
      v13 = [commands countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  if (v20)
  {
    v18 = objc_alloc_init(SACommandSucceeded);
    (v20)[2](v20, v18, 0);
  }
}

- (void)_saCommandIgnored:(id)ignored completion:(id)completion
{
  completionCopy = completion;
  ignoredCopy = ignored;
  refId = [ignoredCopy refId];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[ADCommandCenter _saCommandIgnored:completion:]";
    v15 = 2112;
    v16 = refId;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s CommandIgnored for refId %@", &v13, 0x16u);
  }

  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager endRetryableRequestForCommand:ignoredCopy];

  v12 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _removeOutstandingRequestId:refId forReason:v12];

  [(ADCommandCenter *)self _sync_commandIgnored:ignoredCopy];
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saCommandFailed:(id)failed completion:(id)completion
{
  failedCopy = failed;
  completionCopy = completion;
  refId = [failedCopy refId];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v24 = v10;
    reason = [failedCopy reason];
    v26 = 136315650;
    v27 = "[ADCommandCenter _saCommandFailed:completion:]";
    v28 = 2112;
    v29 = refId;
    v30 = 2114;
    v31 = reason;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s CommandFailed for refId: %@ reason: %{public}@", &v26, 0x20u);
  }

  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager endRetryableRequestForCommand:failedCopy];

  v12 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _removeOutstandingRequestId:refId forReason:v12];

  if (-[ADCommandCenter _refIdIsSpeechStart:](self, "_refIdIsSpeechStart:", refId) || (-[SASFinishSpeech aceId](self->_finishSpeechCommand, "aceId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEqualToString:refId], v13, v14))
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315138;
      v27 = "[ADCommandCenter _saCommandFailed:completion:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s SpeechCommand failed", &v26, 0xCu);
    }

    errorCode = [failedCopy errorCode];
    if (errorCode == SASDictationNotReadyErrorCode)
    {
      ad_error = [failedCopy ad_error];
      v18 = [AFError errorWithCode:6 description:@"Speech not ready" underlyingError:ad_error];
    }

    else
    {
      if ([failedCopy errorCode] == 1101 || objc_msgSend(failedCopy, "errorCode") == 1107)
      {
        v18 = +[AFError errorWithCode:description:](AFError, "errorWithCode:description:", [failedCopy errorCode], @"Local speech recognition failed");
        goto LABEL_13;
      }

      ad_error = [failedCopy reason];
      ad_error2 = [failedCopy ad_error];
      v18 = [AFError errorWithCode:2 description:ad_error underlyingError:ad_error2];
    }

LABEL_13:
    [(ADCommandCenter *)self _endSpeechRequestForCommand:failedCopy withError:v18 suppressAlert:0 secureOfflineOnlyDictation:0];
LABEL_14:

    goto LABEL_15;
  }

  currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  v20 = [currentRequestId isEqualToString:refId];

  if (v20)
  {
    reason2 = [failedCopy reason];
    ad_error3 = [failedCopy ad_error];
    v18 = [AFError errorWithCode:2 description:reason2 underlyingError:ad_error3];

    [(ADCommandCenter *)self _completeRequestForCurrentDelegate:0 error:v18];
    [(ADCommandCenter *)self _setCurrentRequest:0];
    [(ADCommandCenter *)self _requestDidEnd];
    goto LABEL_14;
  }

LABEL_15:
  [(ADCommandCenter *)self _acousticId_commandFailed:failedCopy];
  [(ADCommandCenter *)self _sync_commandFailed:failedCopy];
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saRequestCompleted:(id)completed executionContext:(id)context completion:(id)completion
{
  completedCopy = completed;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    _currentRequest = [(ADCommandCenter *)self _currentRequest];
    currentRequestId = [_currentRequest currentRequestId];
    *buf = 136315906;
    v25 = "[ADCommandCenter _saRequestCompleted:executionContext:completion:]";
    v26 = 2112;
    v27 = currentRequestId;
    v28 = 2112;
    v29 = completedCopy;
    v30 = 2112;
    v31 = contextCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Request completed for id %@: %@ %@", buf, 0x2Au);
  }

  if (AFIsHorseman())
  {
    [(ADCommandCenter *)self _logMURequestEndedWithResultCandidate:self->_selectedResultCandidate];
  }

  if ([completedCopy ad_hasCallbacks])
  {
    v15 = [completedCopy copy];
    [v15 setCallbacks:0];
    v16 = objc_alloc_init(SAAddResultObjects);
    refId = [v15 refId];
    [v16 setRefId:refId];
    v23 = v15;
    v18 = [NSArray arrayWithObjects:&v23 count:1];
    [v16 setObjects:v18];

    v19 = [(ADSessionManager *)self->_sessionManager sessionRequestIdForRefId:refId];
    _resultObjectCache = [(ADCommandCenter *)self _resultObjectCache];
    [_resultObjectCache addResultObjects:v16 sessionRequestId:v19];

    v21 = objc_alloc_init(SACommandSucceeded);
    refId2 = [completedCopy refId];
    [(ADCommandCenter *)self _handleNextCallbacksForReply:v21 forCommand:completedCopy forRequestId:refId2 withExecutionContext:contextCopy];

    if (!completionCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [(ADCommandCenter *)self _handleBareRequestCompleted:completedCopy];
  if (completionCopy)
  {
LABEL_9:
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_10:
}

- (void)_handleBareRequestCompleted:(id)completed
{
  completedCopy = completed;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[ADCommandCenter _handleBareRequestCompleted:]";
    v22 = 2112;
    v23 = completedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s requestCompleted = %@", &v20, 0x16u);
  }

  refId = [completedCopy refId];
  _resultObjectCache = [(ADCommandCenter *)self _resultObjectCache];
  [_resultObjectCache clearResultObjectsForRequestId:refId];

  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager endRetryableRequestForCommand:completedCopy];

  _currentRequest = [(ADCommandCenter *)self _currentRequest];
  currentRequestCommand = [_currentRequest currentRequestCommand];
  [(ADCommandCenter *)self _setLastRequest:currentRequestCommand];

  [(ADCommandCenter *)self _setCurrentRequest:0];
  [(ADCommandCenter *)self _requestDidEnd];
  v12 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _removeOutstandingRequestId:refId forReason:v12];

  refId2 = [completedCopy refId];
  if (![(ADCommandCenter *)self _refIdIsSpeechStart:refId2])
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

    refId2 = [AFError errorWithCode:22];
    [(ADCommandCenter *)self _endSpeechRequestForCommand:completedCopy withError:refId2 suppressAlert:0 secureOfflineOnlyDictation:0];
LABEL_8:
  }

  refId3 = [completedCopy refId];
  [(ADCommandCenter *)self _removeFirstChanceServiceForAceId:refId3];

  [(ADCommandCenter *)self _completeRequestForCurrentDelegate:1 error:0];
  [(ADCommandCenter *)self _sync_continueIfConditionsMet];
  _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
  _account = [(ADCommandCenter *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  [_requestDispatcherService requestCompletedWithAssistantId:assistantIdentifier requestId:refId];
}

- (BOOL)_isRequestDelaying
{
  _requestDelayManager = [(ADCommandCenter *)self _requestDelayManager];
  isDelaying = [_requestDelayManager isDelaying];

  return isDelaying;
}

- (void)adCallStateChangedCallIncoming:(BOOL)incoming
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100205C70;
  v4[3] = &unk_10051CBD8;
  incomingCopy = incoming;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)adCallStateChangedCallInProcess:(BOOL)process
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100205DC0;
  v4[3] = &unk_10051CBD8;
  processCopy = process;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)_stopObservingCallStateWithCompletion:(id)completion
{
  completionCopy = completion;
  callObserver = self->_callObserver;
  if (callObserver)
  {
    v7 = completionCopy;
    [(ADCallObserver *)callObserver stopObservingCallStateWithCompletion:completionCopy];
    v6 = self->_callObserver;
    self->_callObserver = 0;

    [(ADCommandCenter *)self _setIsInCall:0];
    callObserver = [(ADCommandCenter *)self _setHasIncomingCall:0];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v7 = completionCopy;
    callObserver = completionCopy[2](completionCopy);
  }

  completionCopy = v7;
LABEL_6:

  _objc_release_x1(callObserver, completionCopy);
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

- (void)_setHasIncomingCall:(BOOL)call
{
  if (self->_hasIncomingCall != call)
  {
    self->_hasIncomingCall = call;
    [(ADContextManager *)self->_contextManager setBackgroundContextDirty];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"ADCallStateDidChangeNotification" object:0];
  }
}

- (void)_setIsInCall:(BOOL)call
{
  if (self->_isInCall != call)
  {
    block[9] = v3;
    block[10] = v4;
    callCopy = call;
    v7 = +[AFAnalytics sharedAnalytics];
    v8 = v7;
    if (callCopy)
    {
      v9 = 4901;
    }

    else
    {
      v9 = 4902;
    }

    [v7 logEventWithType:v9 context:0];

    self->_isInCall = callCopy;
    [(ADSessionManager *)self->_sessionManager updateForCallState:callCopy];
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

- (void)_setCallIsLikely:(BOOL)likely
{
  if (self->_callIsLikely != likely)
  {
    self->_callIsLikely = likely;
    [(ADSessionManager *)self->_sessionManager updateForCallIsLikelyDueToRequest:?];
  }
}

- (void)postTestResultSelectedWithRcId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100206280;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)postTestResultCandidateWithRcId:(id)id recognitionSausage:(id)sausage
{
  idCopy = id;
  sausageCopy = sausage;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002063FC;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = idCopy;
  v13 = sausageCopy;
  v9 = sausageCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

- (void)_signalUSTTestRequestWithStartRequest:(id)request requestInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  speechRequestOptions = [infoCopy speechRequestOptions];
  v9 = [speechRequestOptions activationEvent] == 17;

  _fetchComputedModeAndUpdateRequestDelegate = [(ADCommandCenter *)self _fetchComputedModeAndUpdateRequestDelegate];
  v11 = [SMTRequestContextData alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1002066C0;
  v25[3] = &unk_100515E90;
  v26 = _fetchComputedModeAndUpdateRequestDelegate;
  v27 = requestCopy;
  v30 = v9;
  selfCopy = self;
  v29 = infoCopy;
  v24 = infoCopy;
  v12 = requestCopy;
  v23 = _fetchComputedModeAndUpdateRequestDelegate;
  v13 = [v11 initWithBuilder:v25];
  _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
  _account = [(ADCommandCenter *)self _account];
  assistantIdentifier = [_account assistantIdentifier];
  aceId = [v12 aceId];
  origin = [v12 origin];
  _locationManager = [(ADCommandCenter *)self _locationManager];
  knownLocation = [_locationManager knownLocation];
  [_requestDispatcherService startTestSpeechRequestWithAssistantId:assistantIdentifier requestId:aceId enableASR:0 inputOrigin:origin location:knownLocation jitContext:0 overrideModelPath:0 requestContextData:v13];

  dynamicContextEmitter = self->_dynamicContextEmitter;
  aceId2 = [v12 aceId];
  [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:aceId2];
}

- (void)_sendServiceCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002069F4;
  block[3] = &unk_10051E088;
  v12 = commandCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = commandCopy;
  dispatch_async(queue, block);
}

- (id)_errorAggregation:(id)aggregation
{
  aggregationCopy = aggregation;
  v5 = aggregationCopy;
  errorOnionAggregator = self->_errorOnionAggregator;
  if (!errorOnionAggregator)
  {
    v16 = aggregationCopy;
LABEL_10:
    v14 = v16;
    goto LABEL_11;
  }

  if (!aggregationCopy)
  {
    v16 = errorOnionAggregator;
    goto LABEL_10;
  }

  v7 = objc_alloc_init(NSMutableArray);
  underlyingErrors = [(NSError *)self->_errorOnionAggregator underlyingErrors];

  if (underlyingErrors)
  {
    underlyingErrors2 = [(NSError *)self->_errorOnionAggregator underlyingErrors];
    [v7 addObjectsFromArray:underlyingErrors2];
  }

  [v7 addObject:v5];
  v10 = [NSError alloc];
  domain = [(NSError *)self->_errorOnionAggregator domain];
  code = [(NSError *)self->_errorOnionAggregator code];
  v22 = NSMultipleUnderlyingErrorsKey;
  v23 = v7;
  v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v14 = [v10 initWithDomain:domain code:code userInfo:v13];

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

- (void)_handleServiceCommand:(id)command afterMyriadDecision:(BOOL)decision executionContext:(id)context completion:(id)completion
{
  decisionCopy = decision;
  commandCopy = command;
  contextCopy = context;
  completionCopy = completion;
  if (!self->_disableServiceCommandExecution)
  {
    v48 = decisionCopy;
    encodedClassName = [commandCopy encodedClassName];
    groupIdentifier = [commandCopy groupIdentifier];
    _serviceManager = [(ADCommandCenter *)self _serviceManager];
    v17 = [_serviceManager serviceForDomain:groupIdentifier command:encodedClassName];
    v18 = [(ADCommandCenter *)self _firstChanceServiceForCommand:commandCopy];
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
      v45 = _serviceManager;
      if (v23)
      {
        v24 = v22;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        identifier = [v17 identifier];
        *buf = 136315650;
        v59 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]";
        v60 = 2112;
        *v61 = v26;
        *&v61[8] = 2112;
        *&v61[10] = identifier;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Dispatching command %@ to service %@", buf, 0x20u);
      }

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100207548;
      v51[3] = &unk_100517EA8;
      v51[4] = self;
      v28 = commandCopy;
      v52 = v28;
      v47 = contextCopy;
      v53 = contextCopy;
      v57 = completionCopy;
      v54 = encodedClassName;
      v29 = v17;
      v55 = v29;
      v46 = groupIdentifier;
      v30 = groupIdentifier;
      v56 = v30;
      v43 = objc_retainBlock(v51);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      aceId = [v28 aceId];
      currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
      v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(Service: %@, Domain %@, Command: %@(%@), RequestId: %@"), v29, v30, v32, aceId, currentRequestId;

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

      _serviceManager = v45;
      if (v48)
      {
        v37 = AFSupportsSCDAFramework();
        v38 = SCDAMonitor_ptr;
        if (!v37)
        {
          v38 = AFMyriadMonitor_ptr;
        }

        sharedMonitor = [*v38 sharedMonitor];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1002079F0;
        v49[3] = &unk_10051C718;
        v49[4] = self;
        v40 = v43;
        v50 = v43;
        [sharedMonitor waitForMyriadDecisionForReason:v35 withCompletion:v49];
      }

      else
      {
        v40 = v43;
        (v43[2])(v43);
      }

      contextCopy = v47;
      groupIdentifier = v46;
      v18 = v44;
    }

    else
    {
      if (v23)
      {
        *buf = 136315650;
        v59 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]";
        v60 = 2112;
        *v61 = groupIdentifier;
        *&v61[8] = 2112;
        *&v61[10] = encodedClassName;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Couldn't find service for %@ %@", buf, 0x20u);
      }

      if (completionCopy)
      {
        [AFError errorWithCode:100];
        v42 = v41 = v18;
        (*(completionCopy + 2))(completionCopy, 0, v42);

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
    *v61 = commandCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Command %@ will not be executed because service command execution is disabled.", buf, 0x16u);
  }

  if (completionCopy)
  {
    encodedClassName = [AFError errorWithCode:46];
    (*(completionCopy + 2))(completionCopy, 0, encodedClassName);
LABEL_27:
  }
}

- (void)_handleServiceCommand:(id)command executionContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  commandCopy = command;
  [(ADCommandCenter *)self _handleServiceCommand:commandCopy afterMyriadDecision:sub_100010A0C(commandCopy) executionContext:contextCopy completion:completionCopy];
}

- (void)_performCallbacksForCommand:(id)command reply:(id)reply executionContext:(id)context error:(id)error
{
  commandCopy = command;
  replyCopy = reply;
  contextCopy = context;
  if ([commandCopy ad_hasCallbacks])
  {
    ad_shouldIgnoreCallbacksOnReply = [commandCopy ad_shouldIgnoreCallbacksOnReply];
    v14 = AFSiriLogContextDaemon;
    v15 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (ad_shouldIgnoreCallbacksOnReply)
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

      if (error)
      {
        v16 = 0;
      }

      else
      {
        v16 = replyCopy;
      }

      refId = [commandCopy refId];
      [(ADCommandCenter *)self _handleNextCallbacksForReply:v16 forCommand:commandCopy forRequestId:refId withExecutionContext:contextCopy];
    }
  }
}

- (void)_preheatCallbacksForCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy ad_hasCallbacks])
  {
    refId = [commandCopy refId];
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
      _resultObjectCache = [(ADCommandCenter *)self _resultObjectCache];
      v11 = [_resultObjectCache callIsPossibleForRequestId:refId];

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

- (void)_handleCommandResponse:(id)response error:(id)error forCommand:(id)command executionContext:(id)context completion:(id)completion
{
  responseCopy = response;
  errorCopy = error;
  commandCopy = command;
  contextCopy = context;
  completionCopy = completion;
  v17 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, responseCopy, errorCopy);
  }

  v34 = errorCopy;
  aceId = [commandCopy aceId];
  refId = [commandCopy refId];
  info = [contextCopy info];
  requestID = [info requestID];

  if (refId && ([(ADCommandCenter *)self _hasOutstandingRequestId:refId]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:refId]) || requestID && ([(ADCommandCenter *)self _hasOutstandingRequestId:requestID]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:requestID]))
  {
    [(ADCommandCenter *)self _addHandledCommandId:aceId forRequestId:refId];
    [(ADCommandCenter *)self _dispatchAndRemovePostCommandHandlingBlocksForCommandId:aceId requestId:refId];
  }

  originPeerInfo = [contextCopy originPeerInfo];
  v23 = [responseCopy ad_shouldBeHandledByClientAsResponseToCommand:commandCopy fromPeer:originPeerInfo];

  if (v23)
  {
    encodedClassName = [commandCopy encodedClassName];
    groupIdentifier = [commandCopy groupIdentifier];
    _serviceManager = [(ADCommandCenter *)self _serviceManager];
    v33 = groupIdentifier;
    v26 = [_serviceManager serviceForDomain:groupIdentifier command:encodedClassName];
    if (v26)
    {
      v31 = encodedClassName;
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v28 = v27;
        identifier = [v26 identifier];
        *buf = 136315394;
        v41 = "[ADCommandCenter _handleCommandResponse:error:forCommand:executionContext:completion:]";
        v42 = 2112;
        v43 = identifier;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Dispatching response to service %@", buf, 0x16u);
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100208A70;
      v35[3] = &unk_1005180D8;
      v35[4] = self;
      v36 = commandCopy;
      v37 = responseCopy;
      v38 = contextCopy;
      v39 = v34;
      [v26 handleResponse:v37 toCommand:v36 completion:v35];

      encodedClassName = v31;
    }

    else
    {
      [(ADCommandCenter *)self _performCallbacksForCommand:commandCopy reply:responseCopy executionContext:contextCopy error:v34];
    }

    v29 = v34;
  }

  else
  {
    v29 = v34;
    [(ADCommandCenter *)self _performCallbacksForCommand:commandCopy reply:responseCopy executionContext:contextCopy error:v34];
  }
}

- (void)_handleCommand:(id)command executionContext:(id)context completion:(id)completion
{
  commandCopy = command;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v46 = "[ADCommandCenter _handleCommand:executionContext:completion:]";
    v47 = 2112;
    v48 = commandCopy;
    v49 = 2112;
    v50 = contextCopy;
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
    [(ADCommandCenterRequestDelegate *)self->_requestDelegate endWaitingForEmergencyIfNeededForCommand:commandCopy];
  }

  refId = [commandCopy refId];
  if ([(ADCommandCenter *)self _shouldIgnoreCommand:commandCopy executionContext:contextCopy])
  {
    [(ADCommandCenter *)self _handleIgnoredCommand:commandCopy executionContext:contextCopy completion:completionCopy];
  }

  else
  {
    [(ADCommandCenter *)self _preheatCallbacksForCommand:commandCopy];
    isFromRemote = [contextCopy isFromRemote];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10020900C;
    v41[3] = &unk_100515E40;
    v41[4] = self;
    v19 = commandCopy;
    v42 = v19;
    v20 = contextCopy;
    v43 = v20;
    v21 = completionCopy;
    v44 = v21;
    v22 = objc_retainBlock(v41);
    if ([(ADCommandCenter *)self _isClientBoundCommand:v19])
    {
      v32 = v22;
      [(ADCommandCenter *)self _notifyUSTForAceCommand:v19];
      v23 = v19;
      v24 = self->_requestDelegate;
      v31 = completionCopy;
      if (isFromRemote)
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
      v36 = refId;
      selfCopy = self;
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
      ad_willHaveReply = [v26 ad_willHaveReply];
      if (v21 && ad_willHaveReply)
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

      ad_getNetworkActivityTracingLabel = [v26 ad_getNetworkActivityTracingLabel];

      [(ADCommandCenter *)self _addNetworkActivityTracingForLabel:ad_getNetworkActivityTracingLabel start:1 withCompletionReason:0 andError:0];
    }

    [(ADCommandCenter *)self _invokeCompletionForCommand:v19, v31];
  }
}

- (void)_handleIgnoredCommand:(id)command executionContext:(id)context completion:(id)completion
{
  commandCopy = command;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "[ADCommandCenter _handleIgnoredCommand:executionContext:completion:]";
    v16 = 2112;
    v17 = commandCopy;
    v18 = 2112;
    v19 = contextCopy;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s %@ (executionContext = %@)", &v14, 0x20u);
    if (!completionCopy)
    {
      goto LABEL_8;
    }
  }

  else if (!completionCopy)
  {
    goto LABEL_8;
  }

  if (-[ADCommandCenter _isClientBoundCommand:](self, "_isClientBoundCommand:", commandCopy) && ![commandCopy ad_requiresResponse])
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(SACommandIgnored);
    aceId = [commandCopy aceId];
    [v12 setRefId:aceId];
  }

  completionCopy[2](completionCopy, v12, 0);

LABEL_8:
  [(ADCommandCenter *)self _invokeCompletionForCommand:commandCopy];
}

- (BOOL)_shouldIgnoreCommand:(id)command executionContext:(id)context
{
  commandCopy = command;
  contextCopy = context;
  refId = [commandCopy refId];
  info = [contextCopy info];
  requestHandlingContextSnapshot = [info requestHandlingContextSnapshot];
  inputDeviceID = [requestHandlingContextSnapshot inputDeviceID];

  info2 = [contextCopy info];
  requestHandlingContextSnapshot2 = [info2 requestHandlingContextSnapshot];
  inputAssistantID = [requestHandlingContextSnapshot2 inputAssistantID];

  if (inputAssistantID | inputDeviceID)
  {
    v15 = +[ADDeviceCircleManager sharedInstance];
    localPeerInfo = [v15 localPeerInfo];

    assistantIdentifier = [localPeerInfo assistantIdentifier];
    if ([inputAssistantID isEqualToString:assistantIdentifier])
    {
      idsDeviceUniqueIdentifier = [localPeerInfo idsDeviceUniqueIdentifier];
      v19 = [inputDeviceID isEqualToString:idsDeviceUniqueIdentifier];

      if (v19)
      {

        goto LABEL_10;
      }
    }

    else
    {
    }

    isFromRemote = [contextCopy isFromRemote];

    if ((isFromRemote & 1) == 0)
    {
LABEL_10:
      info3 = [contextCopy info];
      requestID = [info3 requestID];

      if (!(refId | requestID))
      {
        v25 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *v33 = 136315650;
          *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
          *&v33[12] = 2112;
          *&v33[14] = commandCopy;
          *&v33[22] = 2112;
          v34 = contextCopy;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s Handling %@ because both ref id and request id are nil. (executionContext = %@)", v33, 0x20u);
        }

        goto LABEL_30;
      }

      if (refId)
      {
        if (![(ADCommandCenter *)self _hasOutstandingRequestId:refId]&& ![(ADCommandCenter *)self _sync_hasCommandForRefId:refId]&& ![(ADCommandCenter *)self _acousticId_hasCommandForRefId:refId]&& ![(ADCommandCenter *)self _hasRootExecutionContextForRequestID:refId])
        {
          v26 = AFSiriLogContextDaemon;
          if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_27;
          }

          *v33 = 136315394;
          *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
          *&v33[12] = 2112;
          *&v33[14] = commandCopy;
          v27 = "%s Command %@ does not belong to an outstanding request or sync session or acoustic fingerprinting session, and an associated local execution context can not be found.";
          goto LABEL_39;
        }
      }

      else if (![(ADCommandCenter *)self _isRelevantCancellationCommand:commandCopy])
      {
        v26 = AFSiriLogContextDaemon;
        if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

        *v33 = 136315394;
        *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
        *&v33[12] = 2112;
        *&v33[14] = commandCopy;
        v27 = "%s Command %@ does not have ref id and is not relevant cancellation command.";
LABEL_39:
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, v27, v33, 0x16u);
LABEL_27:
        v28 = 0;
        if (!requestID)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }

      v28 = 1;
      if (!requestID)
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
        *&v33[14] = contextCopy;
        v30 = "%s Execution context %@ does not have request id.";
        goto LABEL_34;
      }

LABEL_22:
      if ([(ADCommandCenter *)self _hasOutstandingRequestId:requestID, *v33, *&v33[16]]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:requestID])
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
          *&v33[14] = commandCopy;
          *&v33[22] = 2112;
          v34 = contextCopy;
          _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s Ignoring %@ because it is not in scope. (executionContext = %@)", v33, 0x20u);
        }

        v21 = 1;
        goto LABEL_31;
      }

      *v33 = 136315394;
      *&v33[4] = "[ADCommandCenter _shouldIgnoreCommand:executionContext:]";
      *&v33[12] = 2112;
      *&v33[14] = requestID;
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

  else if (![contextCopy isFromRemote])
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
    *&v33[14] = commandCopy;
    *&v33[22] = 2112;
    v34 = contextCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Handling %@ for a request initiated on another device. (executionContext = %@)", v33, 0x20u);
    v21 = 0;
  }

LABEL_32:

  return v21;
}

- (void)_addNetworkActivityTracingForLabel:(int64_t)label start:(BOOL)start withCompletionReason:(int64_t)reason andError:(id)error
{
  startCopy = start;
  errorCopy = error;
  if (label)
  {
    v12 = errorCopy;
    v10 = +[SNNetworkActivityTracing sharedInstance];
    v11 = v10;
    if (startCopy)
    {
      [v10 networkActivityStart:label activate:1 completion:0];
    }

    else
    {
      [v10 networkActivityStop:label withReason:reason andError:v12 completion:0];
    }

    errorCopy = v12;
  }
}

- (void)_adviseSessionArbiterToContinueWithPreviousWinner:(BOOL)winner
{
  winnerCopy = winner;
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager adviseSessionArbiterToContinueWithPreviousWinner:winnerCopy];
}

- (void)_sendRestrictionsInPreparationForRequest
{
  if (!self->_restrictionsWereSetForRequest)
  {
    v3 = objc_alloc_init(SASetRestrictions);
    _restrictedCommands = [(ADCommandCenter *)self _restrictedCommands];
    [v3 setRestrictions:_restrictedCommands];

    [(ADCommandCenter *)self _sendCommandToServer:v3];
    _headphonesAnnouncementRequestCapabilityManager = [(ADCommandCenter *)self _headphonesAnnouncementRequestCapabilityManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002099A4;
    v6[3] = &unk_10051C2E0;
    v6[4] = self;
    [_headphonesAnnouncementRequestCapabilityManager fetchAvailableAnnouncementRequestTypesWithCompletion:v6];

    self->_restrictionsWereSetForRequest = 1;
  }
}

- (void)_shutdownAfterDelay:(double)delay
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

  else if (delay <= 0.0)
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

    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    [_sessionManager cancel];

    v14 = +[SNNetworkActivityTracing sharedInstance];
    [v14 networkActivityTracingCancel:0];
  }

  else
  {
    v6 = dispatch_time(0, (delay / 3.0 * 1000000000.0));
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100209DB8;
    block[3] = &unk_10051D770;
    *&block[5] = delay;
    block[4] = self;
    dispatch_after(v6, queue, block);
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[ADCommandCenter _shutdownAfterDelay:]";
      v19 = 2048;
      delayCopy = delay;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Delaying shutdown block for %f seconds...", buf, 0x16u);
    }

    v9 = dispatch_time(0, (delay * 1000000000.0));
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

- (BOOL)_isRelevantCancellationCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requestId = [commandCopy requestId];
    if ([(ADCommandCenter *)self _hasOutstandingRequestId:requestId])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)self->_associatedRequestId isEqualToString:requestId];
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
  creationDate = [(ADCommandExecutionContext *)self->_mostRecentVisibleRemoteExecutionContext creationDate];
  creationDate2 = [(ADCommandExecutionContext *)self->_mostRecentRootExecutionContext creationDate];
  v5 = creationDate2;
  if (self->_mostRecentVisibleRemoteExecutionContext && (!creationDate2 || [creationDate2 compare:creationDate] == -1))
  {
    v6 = +[NSDate now];
    [v6 timeIntervalSinceDate:creationDate];
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

      info = [(ADCommandExecutionContext *)self->_mostRecentVisibleRemoteExecutionContext info];
      originPeerInfo = [info originPeerInfo];
      requestID = [info requestID];
      v13 = objc_alloc_init(SACancelCrossDeviceRequest);
      v14 = +[NSUUID UUID];
      uUIDString = [v14 UUIDString];
      [v13 setAceId:uUIDString];

      [v13 setRequestId:requestID];
      [v13 setCancelAssociatedRequests:1];
      v16 = [[ADPeerInfo alloc] initWithAFPeerInfo:originPeerInfo];
      mostRecentVisibleRemoteExecutionContext = self->_mostRecentVisibleRemoteExecutionContext;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10020A2FC;
      v21[3] = &unk_100515DF8;
      v22 = requestID;
      v23 = originPeerInfo;
      v18 = originPeerInfo;
      v19 = requestID;
      [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteCommand:v13 onPeer:v16 allowsRelay:0 throughProxyDevice:0 executionContext:mostRecentVisibleRemoteExecutionContext completion:v21];

      v20 = self->_mostRecentVisibleRemoteExecutionContext;
      self->_mostRecentVisibleRemoteExecutionContext = 0;
    }
  }
}

- (void)_cancelCrossDeviceRequestOperationsForLocalRequestWithId:(id)id
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10020A5A8;
  v8[3] = &unk_100519FC0;
  v8[4] = self;
  idCopy = id;
  v5 = objc_retainBlock(v8);
  (v5[2])(v5, idCopy);

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

- (void)_cancelCurrentRequestForReason:(int64_t)reason andError:(id)error successorInfo:(id)info
{
  errorCopy = error;
  infoCopy = info;
  _currentRequest = [(ADCommandCenter *)self _currentRequest];
  currentRequestId = [_currentRequest currentRequestId];

  if (currentRequestId)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v36 = 136315650;
      v37 = "[ADCommandCenter _cancelCurrentRequestForReason:andError:successorInfo:]";
      v38 = 2048;
      reasonCopy = reason;
      v40 = 2112;
      v41 = errorCopy;
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
        LODWORD(reasonCopy) = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Logging Cancel for %d seconds", &v36, 0x12u);
      }

      [AFAggregator logRequestCancelAfterSeconds:v16];
      self->_requestEffectiveStartTime = 0.0;
    }

    currentRequestCommand = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestCommand];

    if (currentRequestCommand)
    {
      v19 = objc_alloc_init(SACancelRequest);
      [v19 setRefId:currentRequestId];
      [v19 setClientCancellationCode:reason];
      [(ADCommandCenter *)self _sendRequestToServer:v19];
    }

    v20 = +[ADRequestLifecycleObserver sharedObserver];
    [v20 requestWasCancelledWithInfo:self->_currentRequestInfo forReason:reason origin:5 client:self->_currentClient successorInfo:infoCopy];

    _resultObjectCache = [(ADCommandCenter *)self _resultObjectCache];
    [_resultObjectCache clearResultObjectsForRequestId:currentRequestId];

    [(ADCommandCenter *)self _requestDidEnd];
    v22 = NSStringFromSelector(a2);
    [(ADCommandCenter *)self _removeOutstandingRequestId:currentRequestId forReason:v22];

    currentRequestCommand2 = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestCommand];
    ad_parentRequest = [currentRequestCommand2 ad_parentRequest];
    aceId = [ad_parentRequest aceId];
    v26 = NSStringFromSelector(a2);
    [(ADCommandCenter *)self _removeOutstandingRequestId:aceId forReason:v26];

    _serviceManager = [(ADCommandCenter *)self _serviceManager];
    _account = [(ADCommandCenter *)self _account];
    assistantIdentifier = [_account assistantIdentifier];
    [_serviceManager cancelOperationsForRequest:currentRequestId forAssistantID:assistantIdentifier fromRemote:0 reason:reason];

    [(ADCommandCenter *)self _setCurrentRequest:0];
    [(ADCommandCenter *)self _cancelCrossDeviceRequestOperationsForLocalRequestWithId:currentRequestId];
    v30 = 4;
    if (reason != 3)
    {
      v30 = 5;
    }

    if (reason == 4)
    {
      v31 = 3;
    }

    else
    {
      v31 = v30;
    }

    [(ADCommandCenter *)self _addNetworkActivityTracingForLabel:1 start:0 withCompletionReason:v31 andError:errorCopy];
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

- (void)_handleNextCallbacksForReply:(id)reply forCommand:(id)command forRequestId:(id)id withExecutionContext:(id)context
{
  replyCopy = reply;
  commandCopy = command;
  idCopy = id;
  contextCopy = context;
  _resultObjectCache = [(ADCommandCenter *)self _resultObjectCache];
  v57 = 0;
  v15 = [_resultObjectCache commandsForReply:replyCopy toCommand:commandCopy missingReferences:&v57];
  v16 = v57;
  currentRequestId = [(ADCommandCenterCurrentRequest *)self->_currentRequest currentRequestId];
  v40 = idCopy;
  if ([currentRequestId isEqualToString:idCopy])
  {
    if (v15)
    {
      v37 = currentRequestId;
      v38 = v16;
      v34 = _resultObjectCache;
      v35 = commandCopy;
      v36 = replyCopy;
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
            refId = [v23 refId];

            if (!refId)
            {
              [v23 setRefId:idCopy];
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

            [(ADCommandCenter *)self _handleCommandAndClientReply:v23 executionContext:contextCopy commandCompletion:0];
          }

          v20 = [v18 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v20);
      }

      commandCopy = v35;
      replyCopy = v36;
      _resultObjectCache = v34;
      v16 = v38;
LABEL_21:
      currentRequestId = v37;
      goto LABEL_22;
    }

    if (v16)
    {
      v37 = currentRequestId;
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v60 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Missing command identifiers, asking for objects from the server", buf, 0xCu);
      }

      v39 = v16;
      v28 = [[ADMissingReferencesContext alloc] initWithMissingReferences:v16 forRequestId:idCopy];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10020B2EC;
      v48[3] = &unk_1005180D8;
      v48[4] = self;
      v49 = replyCopy;
      v29 = commandCopy;
      v50 = v29;
      v30 = idCopy;
      v51 = v30;
      v41 = contextCopy;
      v52 = v41;
      [(ADMissingReferencesContext *)v28 setFulfillmentBlock:v48];
      [_resultObjectCache addMissingReferencesContext:v28];
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
      selfCopy = self;
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
      v62 = idCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Ignoring command whose request %@ is not the current request", buf, 0x16u);
    }
  }

LABEL_22:
}

- (void)_startLocalRequest:(id)request withRequestInfo:(id)info forDelegate:(id)delegate suppressCancelationAlertIfCapturingSpeech:(BOOL)speech completion:(id)completion
{
  speechCopy = speech;
  requestCopy = request;
  infoCopy = info;
  delegateCopy = delegate;
  completionCopy = completion;
  delegateCopy = [[NSString alloc] initWithFormat:@"request = %@, requestInfo = %@, delegate = %@", requestCopy, infoCopy, delegateCopy];
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[ADCommandCenter _startLocalRequest:withRequestInfo:forDelegate:suppressCancelationAlertIfCapturingSpeech:completion:]";
    v33 = 2112;
    v34 = delegateCopy;
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
    v36 = delegateCopy;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Entering request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_enter(v20);
  [(ADCommandCenter *)self _replaceRequestDelegate:delegateCopy withInfo:infoCopy reason:1 andCompletion:completionCopy];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10020BAC8;
  v26[3] = &unk_1005180D8;
  v26[4] = self;
  v27 = infoCopy;
  v28 = requestCopy;
  v29 = v20;
  v30 = delegateCopy;
  v22 = delegateCopy;
  v23 = v20;
  v24 = requestCopy;
  v25 = infoCopy;
  [(ADCommandCenter *)self _replaceSpeechDelegateWhenReady:0 suppressAlert:speechCopy withCompletion:v26];
}

- (void)_reallyHandleNewStartLocalRequest:(id)request withRequestInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[ADCommandCenter _reallyHandleNewStartLocalRequest:withRequestInfo:]";
    v33 = 2112;
    v34 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s startLocalRequest = %@", buf, 0x16u);
  }

  [(ADCommandCenterClient *)self->_currentClient adInvalidateCurrentUserActivity];
  [(ADCommandCenter *)self _setCurrentRequestWithCommand:requestCopy];
  aceId = [requestCopy aceId];
  v11 = NSStringFromSelector(a2);
  [(ADCommandCenter *)self _addOutstandingRequestId:aceId forReason:v11];

  activationEvent = [(AFSpeechRequestOptions *)self->_currentSpeechRequestOptions activationEvent];
  suggestionRequestType = [infoCopy suggestionRequestType];
  v14 = sub_10000EF08(activationEvent);
  if (!v14)
  {
    v14 = SAInputOriginClientGeneratedValue;
  }

  v15 = [(ADCommandCenter *)self _createDefaultRequestContextData:activationEvent == 17 suggestionRequestType:suggestionRequestType];
  _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
  _requestDispatcherSessionConfiguration = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
  aceId2 = [requestCopy aceId];
  [_requestDispatcherService startLocalRequestWithConfiguration:_requestDispatcherSessionConfiguration requestId:aceId2 inputOrigin:v14 requestContextData:v15];

  dynamicContextEmitter = self->_dynamicContextEmitter;
  aceId3 = [requestCopy aceId];
  [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:aceId3];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  clientBoundCommands = [requestCopy clientBoundCommands];
  v22 = [clientBoundCommands countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(clientBoundCommands);
        }

        [(ADCommandCenter *)self _handleGenericConcreteAceCommand:*(*(&v26 + 1) + 8 * v25) withDelegate:self->_currentClient interruptOutstandingRequest:1 reply:0];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [clientBoundCommands countByEnumeratingWithState:&v26 objects:v30 count:16];
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

- (void)_reallyHandleNewStartRequest:(id)request info:(id)info
{
  requestCopy = request;
  infoCopy = info;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[ADCommandCenter _reallyHandleNewStartRequest:info:]";
    v21 = 2112;
    v22 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s startRequest = %@", &v19, 0x16u);
  }

  [(ADCommandCenterClient *)self->_currentClient adInvalidateCurrentUserActivity];
  if (AFIsInternalInstall())
  {
    v9 = [NSNumber numberWithBool:byte_100590548];
    [requestCopy setIsCarryDevice:v9];
  }

  [requestCopy setTextToSpeechIsMuted:{-[ADCommandCenterClient adTextToSpeechIsMuted](self->_currentClient, "adTextToSpeechIsMuted")}];
  aceId = [requestCopy aceId];

  if (!aceId)
  {
    v11 = SiriCoreUUIDStringCreate();
    [requestCopy setAceId:v11];
  }

  v12 = [(ADCommandCenter *)self _startServerRequestWithStartRequest:requestCopy requestInfo:infoCopy];
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
  aceId2 = [requestCopy aceId];
  sub_1001F75A8(self, currentUodStatus, aceId2);

  LODWORD(aceId2) = [(ADCommandCenter *)self _shouldImmediatelyDismissSiriDueToMissingRequiredAssets];
  v16 = AFSiriLogContextDaemon;
  v17 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (!aceId2)
  {
    if (v17)
    {
      v19 = 136315138;
      v20 = "[ADCommandCenter _reallyHandleNewStartRequest:info:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Not dismissing Siri request due to lack of assets.", &v19, 0xCu);
    }

LABEL_16:
    [(ADCommandCenter *)self _setCurrentRequestWithCommand:requestCopy];
    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = requestCopy;
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

- (void)_triggerABCforType:(id)type subType:(id)subType context:(id)context
{
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  if (AFIsInternalInstall())
  {
    v9 = +[SiriCoreSymptomsReporter sharedInstance];
    v10 = +[NSProcessInfo processInfo];
    processIdentifier = [v10 processIdentifier];
    [v9 reportIssueForType:typeCopy subType:subTypeCopy context:contextCopy processIdentifier:processIdentifier walkboutStatus:byte_100590548];
  }
}

- (void)_sendCancelSpeechForCommand:(id)command
{
  commandCopy = command;
  v7 = objc_alloc_init(SASCancelSpeech);
  aceId = [commandCopy aceId];

  [v7 setRefId:aceId];
  [(ADCommandCenter *)self _sendCommandToServer:v7];
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager endRetryableRequestForCommand:v7];
}

- (void)_sendWillStopRecordingForCommand:(id)command
{
  commandCopy = command;
  v6 = objc_alloc_init(SASWillStopRecording);
  aceId = [commandCopy aceId];

  [v6 setRefId:aceId];
  [(ADCommandCenter *)self _sendCommandToServer:v6];
}

- (void)_sendRollbackCommandForCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter _sendRollbackCommandForCommand:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  v6 = objc_alloc_init(SARollbackRequest);
  aceId = [commandCopy aceId];
  [v6 setRequestId:aceId];

  [(ADCommandCenter *)self _sendCommandToServer:v6];
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager endRetryableRequestForCommand:commandCopy];
}

- (void)_sendCommandFailedForCommand:(id)command reason:(id)reason
{
  reasonCopy = reason;
  commandCopy = command;
  v9 = [[SACommandFailed alloc] initWithReason:reasonCopy];

  aceId = [commandCopy aceId];

  [v9 setRefId:aceId];
  [(ADCommandCenter *)self _sendCommandToServer:v9];
}

- (void)_sendCommandFailedForCommand:(id)command error:(id)error
{
  errorCopy = error;
  commandCopy = command;
  v8 = [SACommandFailed alloc];
  v9 = [errorCopy description];
  v12 = [v8 initWithReason:v9];

  code = [errorCopy code];
  [v12 setErrorCode:code];
  aceId = [commandCopy aceId];

  [v12 setRefId:aceId];
  [(ADCommandCenter *)self _sendCommandToServer:v12];
}

- (void)_sendRequestToServer:(id)server
{
  serverCopy = server;
  v6 = sub_1001E5088(serverCopy);
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADCommandCenter _sendRequestToServer:]";
    v18 = 2112;
    v19 = serverCopy;
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
          origin = [serverCopy origin];
          _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
          _requestDispatcherSessionConfiguration = [(ADCommandCenter *)self _requestDispatcherSessionConfiguration];
          aceId = [serverCopy aceId];
          [_requestDispatcherService startUnderstandingOnServerRequestWithConfiguration:_requestDispatcherSessionConfiguration requestId:aceId inputOrigin:origin];

          dynamicContextEmitter = self->_dynamicContextEmitter;
          aceId2 = [serverCopy aceId];
          [(ADDynamicContextEmitter *)dynamicContextEmitter emitForRequest:aceId2];
        }
      }
    }
  }

  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager sendRawCommand:serverCopy opportunistically:0 logEvent:1];
}

- (void)_sendCommandToServer:(id)server opportunistically:(BOOL)opportunistically completion:(id)completion
{
  opportunisticallyCopy = opportunistically;
  completionCopy = completion;
  serverCopy = server;
  v10 = sub_1001E5088(serverCopy);
  [(ADCommandCenter *)self _addCompletion:completionCopy forCommand:serverCopy forKey:v10];

  [(ADCommandCenter *)self _sendCommandToServer:serverCopy opportunistically:opportunisticallyCopy];
}

- (void)_sendCommandToServer:(id)server opportunistically:(BOOL)opportunistically
{
  opportunisticallyCopy = opportunistically;
  serverCopy = server;
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager sendCommand:serverCopy opportunistically:opportunisticallyCopy logEvent:1];
}

- (void)_sendSessionObject:(id)object opportunistically:(BOOL)opportunistically
{
  opportunisticallyCopy = opportunistically;
  objectCopy = object;
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager sendCommand:objectCopy opportunistically:opportunisticallyCopy logEvent:0];
}

- (BOOL)_refIdIsSpeechStart:(id)start
{
  startSpeechCommand = self->_startSpeechCommand;
  startCopy = start;
  aceId = [(SASStartSpeech *)startSpeechCommand aceId];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCommandCenter _refIdIsSpeechStart:]";
    v11 = 2112;
    v12 = aceId;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s StartSpeech msg id is %@", &v9, 0x16u);
  }

  v7 = [aceId isEqualToString:startCopy];

  return v7;
}

- (void)_preheatAllServices
{
  _serviceManager = [(ADCommandCenter *)self _serviceManager];
  allServices = [_serviceManager allServices];
  [allServices makeObjectsPerformSelector:"preheatDomain:" withObject:0];
}

- (void)_fetchStarkDeviceLockedStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
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
    v9 = completionCopy;
    dispatch_async(queue, block);
  }
}

- (void)_resetServices
{
  _serviceManager = [(ADCommandCenter *)self _serviceManager];
  allServices = [_serviceManager allServices];
  [allServices makeObjectsPerformSelector:"resetExternalResources"];

  _serviceManager2 = [(ADCommandCenter *)self _serviceManager];
  [_serviceManager2 reloadServicesForAllPendingServiceNotifications];
}

- (id)_languageModelForSpeechRequest:(id)request
{
  ad_languageModel = [request ad_languageModel];
  v5 = ad_languageModel;
  if (ad_languageModel)
  {
    languageCode = ad_languageModel;
  }

  else
  {
    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    languageCode = [_sessionManager languageCode];
  }

  return languageCode;
}

- (void)_didLaunchAppForRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentRequest = self->_currentRequest;
  if (!currentRequest || (-[ADCommandCenterCurrentRequest currentRequestId](currentRequest, "currentRequestId"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:identifierCopy], v6, v7))
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

- (void)_replaceSpeechDelegateWhenReady:(id)ready waitForRecordingToFinish:(BOOL)finish suppressAlert:(BOOL)alert withCompletion:(id)completion
{
  alertCopy = alert;
  finishCopy = finish;
  readyCopy = ready;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v35 = "[ADCommandCenter _replaceSpeechDelegateWhenReady:waitForRecordingToFinish:suppressAlert:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  speechDelegate = self->_speechDelegate;
  v15 = speechDelegate == readyCopy && !finishCopy;
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
    objc_storeStrong(&self->_speechDelegate, ready);
    [(ADCommandCenter *)self _setSpeechCapturingContext:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v19 = AFSiriLogContextDaemon;
    v20 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (speechDelegate == readyCopy)
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

      [(ADSpeechManager *)self->_speechManager cancelSpeechCaptureSuppressingAlert:alertCopy];
      v21 = self->_speechDelegate;
      v22 = [AFError errorWithCode:209];
      _speechCapturingContext = [(ADCommandCenter *)self _speechCapturingContext];
      [(ADCommandCenterSpeechDelegate *)v21 adSpeechRecordingDidFail:v22 context:_speechCapturingContext];

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
    v30 = readyCopy;
    v32 = completionCopy;
    v27 = objc_retainBlock(v29);
    speechCompletion = self->_speechCompletion;
    self->_speechCompletion = v27;

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }
}

- (void)_completeRequestForCurrentDelegate:(BOOL)delegate error:(id)error
{
  delegateCopy = delegate;
  errorCopy = error;
  v7 = AFSiriLogContextDaemon;
  if (errorCopy || !delegateCopy)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "[ADCommandCenter _completeRequestForCurrentDelegate:error:]";
      v23 = 1024;
      v24 = delegateCopy;
      v25 = 2112;
      v26 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s success = %d, error = %@", &v21, 0x1Cu);
    }

    _currentRequest = [(ADCommandCenter *)self _currentRequest];
    currentRequestId = [_currentRequest currentRequestId];

    if (currentRequestId)
    {
      _requestDispatcherService = [(ADCommandCenter *)self _requestDispatcherService];
      _account = [(ADCommandCenter *)self _account];
      assistantIdentifier = [_account assistantIdentifier];
      _currentRequest2 = [(ADCommandCenter *)self _currentRequest];
      currentRequestId2 = [_currentRequest2 currentRequestId];
      [_requestDispatcherService requestFailedWithAssistantId:assistantIdentifier requestId:currentRequestId2];
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[ADCommandCenter _completeRequestForCurrentDelegate:error:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ", &v21, 0xCu);
  }

  if (delegateCopy)
  {
    [(ADCommandCenter *)self _addNetworkActivityTracingForLabel:1 start:0 withCompletionReason:2 andError:0];
  }

  requestDelegate = self->_requestDelegate;
  if (requestDelegate)
  {
    [(ADCommandCenterRequestDelegate *)requestDelegate adRequestDidCompleteWithSuccess:delegateCopy error:errorCopy];
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
    requestCompletion[2](requestCompletion, delegateCopy, errorCopy);
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

- (void)_replaceRequestDelegate:(id)delegate withInfo:(id)info reason:(int64_t)reason andCompletion:(id)completion
{
  delegateCopy = delegate;
  infoCopy = info;
  completionCopy = completion;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    if (reason > 6)
    {
      v16 = @"(unknown)";
    }

    else
    {
      v16 = *(&off_10051E270 + reason);
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
  if (delegateCopy | requestDelegate)
  {
    if (requestDelegate == delegateCopy || !requestDelegate)
    {
      if (!delegateCopy || requestDelegate)
      {
LABEL_23:
        if (reason > 6)
        {
          v27 = 9;
        }

        else
        {
          v27 = qword_1003F07D0[reason];
        }

        [(ADCommandCenter *)self _cancelCurrentRequestForReason:v27 andError:0 successorInfo:infoCopy];
        [(ADCommandCenter *)self _clearRequestDelegateState];
        v28 = objc_retainBlock(completionCopy);
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

        if (*p_requestDelegate != delegateCopy)
        {
          _serviceManager = [(ADCommandCenter *)self _serviceManager];
          v35 = [ADUIService serviceIdentifierForRequestDelegate:delegateCopy];
          v36 = [_serviceManager serviceForIdentifier:v35];

          [_serviceManager reprioritizeService:v36];
        }

        objc_storeStrong(&self->_requestDelegate, delegate);
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

        if (delegateCopy)
        {
          [(ADCommandCenter *)self _requestWillStartWithInfo:infoCopy showNetworkActivityIndicator:1];
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

      _sessionManager = [(ADCommandCenter *)self _sessionManager];
      [_sessionManager beginUpdatingAssistantData];
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

    if (reason > 4)
    {
      v39 = @"ADReplaceRequestDelegateReason";
      v21 = 5;
      if (reason > 6)
      {
        v24 = @"(unknown)";
        goto LABEL_21;
      }
    }

    else
    {
      v21 = qword_1003F0808[reason];
      v39 = @"ADReplaceRequestDelegateReason";
    }

    v24 = *(&off_10051E270 + reason);
LABEL_21:
    v25 = v24;
    v40 = v25;
    _sessionManager = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    v26 = [NSError errorWithDomain:kAFAssistantErrorDomain code:v21 userInfo:_sessionManager, v39];
    [*p_requestDelegate adRequestDidCompleteWithSuccess:0 error:v26];

    goto LABEL_22;
  }

LABEL_34:
}

- (void)_requestBarrier:(id)barrier
{
  barrierCopy = barrier;
  if (barrierCopy)
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
      v13 = barrierCopy;
      v7 = objc_retainBlock(v11);
      requestBarrier = self->_requestBarrier;
      self->_requestBarrier = v7;

      v9 = v12;
    }

    else
    {
      v10 = objc_retainBlock(barrierCopy);
      v9 = self->_requestBarrier;
      self->_requestBarrier = v10;
    }
  }
}

- (void)_requestBarrierIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    if (self->_currentRequest)
    {
      [(ADCommandCenter *)self _requestBarrier:necessaryCopy];
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

      necessaryCopy[2](necessaryCopy);
    }
  }
}

- (void)_requestWillStartWithInfo:(id)info showNetworkActivityIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  infoCopy = info;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ADCommandCenter _requestWillStartWithInfo:showNetworkActivityIndicator:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  [_sessionManager setHasActiveRequest:1];

  [(ADCommandCenter *)self _setCallIsLikely:0];
  if (indicatorCopy)
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

  objc_storeStrong(&self->_currentRequestInfo, info);
  v11 = +[ADRequestLifecycleObserver sharedObserver];
  [v11 requestWillBeginWithInfo:self->_currentRequestInfo fromOrigin:5 client:self->_currentClient];

  v12 = AFSupportsSCDAFramework();
  v13 = SCDAMonitor_ptr;
  if (!v12)
  {
    v13 = AFMyriadMonitor_ptr;
  }

  sharedMonitor = [*v13 sharedMonitor];
  [sharedMonitor dequeueBlocksWaitingForMyriadDecision];

  speechRequestOptions = [infoCopy speechRequestOptions];
  isVoiceTrigger = [speechRequestOptions isVoiceTrigger];

  if (AFSupportsSCDAFramework())
  {
    speechRequestOptions2 = [infoCopy speechRequestOptions];
    isRaiseToSpeak = [speechRequestOptions2 isRaiseToSpeak];

    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      isInStarkMode = self->_isInStarkMode;
      *buf = 136315906;
      v30 = "[ADCommandCenter _requestWillStartWithInfo:showNetworkActivityIndicator:]";
      v31 = 1024;
      v32 = isVoiceTrigger;
      v33 = 1024;
      v34 = isRaiseToSpeak;
      v35 = 1024;
      v36 = isInStarkMode;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s _requestWillStartWithInfo voiceTriggerEvent %d and rtsTriggerEvent %d and _isInStarkMode %d", buf, 0x1Eu);
    }

    v21 = +[SCDAMonitor sharedMonitor];
    if (((isVoiceTrigger | isRaiseToSpeak) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v22 = self->_isInStarkMode;
    goto LABEL_16;
  }

  v21 = +[AFMyriadMonitor sharedMonitor];
  if (isVoiceTrigger)
  {
    goto LABEL_15;
  }

LABEL_13:
  v22 = 1;
LABEL_16:
  [v21 ignoreMyriadEvents:v22];

  if (infoCopy || self->_requestDelegate)
  {
    _contextManager = [(ADCommandCenter *)self _contextManager];
    _locationManager = [(ADCommandCenter *)self _locationManager];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10020E394;
    v26[3] = &unk_10051E010;
    v27 = _contextManager;
    selfCopy = self;
    v25 = _contextManager;
    [_locationManager updateLocationSnapshotWithCompletion:v26];
  }
}

- (void)_clearAccount
{
  [(ADCommandCenter *)self _cancelSessionManager];
  [(ADCommandCenter *)self _sync_reset];
  account = self->_account;
  self->_account = 0;
}

- (void)_setCurrentRequest:(id)request
{
  requestCopy = request;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    currentRequest = self->_currentRequest;
    v25 = 136315650;
    v26 = "[ADCommandCenter _setCurrentRequest:]";
    v27 = 2112;
    v28 = currentRequest;
    v29 = 2112;
    v30 = requestCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ -> %@", &v25, 0x20u);
  }

  v8 = self->_currentRequest;
  objc_storeStrong(&self->_currentRequest, request);
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  currentRequestCommand = [(ADCommandCenterCurrentRequest *)requestCopy currentRequestCommand];
  [_sessionManager setCurrentRequest:currentRequestCommand];

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
      currentRequestId = [(ADCommandCenterCurrentRequest *)v8 currentRequestId];
      [(ADCommandCenter *)self _notifyUSTForRequestCompleted:currentRequestId];
    }

    goto LABEL_24;
  }

LABEL_20:
  if (v11)
  {
    currentRequestId2 = [(ADCommandCenterCurrentRequest *)v11 currentRequestId];
    [(ADCommandCenter *)self _notifyUSTForRequestStarted:currentRequestId2];

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

- (void)_setCurrentRequestWithRequestId:(id)id
{
  if (id)
  {
    idCopy = id;
    v5 = objc_alloc_init(ADCommandCenterCurrentRequest);
    [(ADCommandCenterCurrentRequest *)v5 setCurrentRequestId:idCopy];
  }

  else
  {
    v5 = 0;
  }

  [(ADCommandCenter *)self _setCurrentRequest:v5];
}

- (void)_setCurrentRequestWithCommand:(id)command
{
  if (command)
  {
    commandCopy = command;
    v5 = objc_alloc_init(ADCommandCenterCurrentRequest);
    [(ADCommandCenterCurrentRequest *)v5 setCurrentRequestCommand:commandCopy];
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

- (void)postMessageToMUXWithMultiUserInfo:(id)info
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
    _queue = [(ADCommandCenter *)self _queue];
    v6 = [(ADDiagnosticsManager *)v4 initWithQueue:_queue];
    v7 = self->_diagnosticsManager;
    self->_diagnosticsManager = v6;

    diagnosticsManager = self->_diagnosticsManager;
  }

  return diagnosticsManager;
}

- (void)_registerDomainSignalServiceWithServiceManager:(id)manager
{
  managerCopy = manager;
  v10 = objc_alloc_init(ADAceDomainSignalRequestHandler);
  v4 = [ADServiceCommandType alloc];
  v5 = [(ADServiceCommandType *)v4 initWithDomainName:SAGroupIdentifier className:SAAceDomainSignalClassIdentifier];
  v6 = [ADSiriTaskService alloc];
  v7 = objc_alloc_init(ADAcePassthroughRequestTransformer);
  v8 = objc_alloc_init(ADAcePassthroughResponseTransformer);
  v9 = [(ADSiriTaskService *)v6 initWithCommandType:v5 requestTransformer:v7 responseTransformer:v8 requestHandler:v10];
  [managerCopy addService:v9];
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

- (void)_setUIService:(id)service
{
  serviceCopy = service;
  [(ADUIService *)self->_uiService setDelegate:0];
  uiService = self->_uiService;
  self->_uiService = serviceCopy;
  v6 = serviceCopy;

  [(ADUIService *)self->_uiService setDelegate:self];
}

- (void)_removePostCommandHandlingBlocksForRequestId:(id)id
{
  if (id)
  {
    [(NSMutableDictionary *)self->_postCommandHandlingBlockMap removeObjectForKey:?];
  }
}

- (void)_dispatchAndRemovePostCommandHandlingBlocksForCommandId:(id)id requestId:(id)requestId
{
  idCopy = id;
  if (idCopy && requestId)
  {
    v7 = [(NSMutableDictionary *)self->_postCommandHandlingBlockMap objectForKey:requestId];
    v8 = [v7 objectForKey:idCopy];
    [v7 removeObjectForKey:idCopy];
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

- (void)_addPostCommandHandlingBlock:(id)block forCommandId:(id)id requestId:(id)requestId
{
  blockCopy = block;
  idCopy = id;
  requestIdCopy = requestId;
  v11 = requestIdCopy;
  if (blockCopy && idCopy && requestIdCopy)
  {
    if ([(ADCommandCenter *)self _hasOutstandingRequestId:requestIdCopy]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v11])
    {
      v12 = [(ADCommandCenter *)self _handledCommandIdsForRequestId:v11];
      v13 = [v12 containsObject:idCopy];

      if (v13)
      {
        blockCopy[2](blockCopy);
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

        v19 = [v15 objectForKey:idCopy];
        if (!v19)
        {
          v19 = objc_alloc_init(NSMutableArray);
          [v15 setObject:v19 forKey:idCopy];
        }

        v20 = objc_retainBlock(blockCopy);
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
        v25 = idCopy;
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

- (id)_handledCommandIdsForRequestId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    if ([(ADCommandCenter *)self _hasOutstandingRequestId:idCopy]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:idCopy])
    {
      v5 = [(NSMutableDictionary *)self->_handledCommandIdsByRequestId objectForKey:idCopy];
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
      v14 = idCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Ignored because request id %@ is unknown.", &v11, 0x16u);
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)_removeHandledCommandIdsForRequestId:(id)id
{
  if (id)
  {
    [(NSMutableDictionary *)self->_handledCommandIdsByRequestId removeObjectForKey:?];
  }
}

- (void)_addHandledCommandId:(id)id forRequestId:(id)requestId
{
  idCopy = id;
  requestIdCopy = requestId;
  v8 = requestIdCopy;
  if (idCopy && requestIdCopy)
  {
    if ([(ADCommandCenter *)self _hasOutstandingRequestId:requestIdCopy]|| [(ADCommandCenter *)self _hasRootExecutionContextForRequestID:v8])
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

      [v12 addObject:idCopy];
    }

    else
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = 136315650;
        v15 = "[ADCommandCenter _addHandledCommandId:forRequestId:]";
        v16 = 2112;
        v17 = idCopy;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Ignored command id %@ because request id %@ is unknown.", &v14, 0x20u);
      }
    }
  }
}

- (void)_invokeAllCompletionsWithError:(id)error
{
  errorCopy = error;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[ADCommandCenter _invokeAllCompletionsWithError:]";
    v24 = 2112;
    v25 = errorCopy;
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
          if (([v13 invokeWithValue:0 andValue:errorCopy] & 1) == 0)
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

- (void)_invokeCompletionForCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter _invokeCompletionForCommand:]";
    v12 = 2112;
    v13 = commandCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s command = %@", &v10, 0x16u);
  }

  refId = [commandCopy refId];
  if (refId)
  {
    v7 = [(NSMutableDictionary *)self->_aceCompletionMap objectForKey:refId];
    v8 = v7;
    if (v7)
    {
      if (([v7 invokeWithValue:commandCopy andValue:0] & 1) == 0)
      {
        v9 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v10 = 136315394;
          v11 = "[ADCommandCenter _invokeCompletionForCommand:]";
          v12 = 2112;
          v13 = refId;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Attempting to invoke completion block for command with msgId %@ again", &v10, 0x16u);
        }
      }

      [(NSMutableDictionary *)self->_aceCompletionMap removeObjectForKey:refId];
    }
  }
}

- (BOOL)_hasCompletionForCommandId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_aceCompletionMap objectForKey:id];
  v4 = v3 != 0;

  return v4;
}

- (void)_addCompletion:(id)completion forCommand:(id)command forKey:(id)key
{
  completionCopy = completion;
  commandCopy = command;
  keyCopy = key;
  v11 = keyCopy;
  if (completionCopy && commandCopy && keyCopy)
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
    v21 = commandCopy;
    v22 = completionCopy;
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

- (void)_removeExecutionDevicesForLocalRequestWithId:(id)id
{
  idCopy = id;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADCommandCenter _removeExecutionDevicesForLocalRequestWithId:]";
    v8 = 2112;
    v9 = idCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s %@", &v6, 0x16u);
  }

  [(NSMutableDictionary *)self->_executionDevicesByExecutionID removeObjectForKey:idCopy];
}

- (void)_addExecutionDevice:(id)device forCommandExecutionContext:(id)context
{
  deviceCopy = device;
  contextCopy = context;
  v8 = contextCopy;
  if (deviceCopy && contextCopy)
  {
    info = [contextCopy info];
    executionID = [info executionID];

    if (executionID)
    {
      executionDevicesByExecutionID = self->_executionDevicesByExecutionID;
      if (!executionDevicesByExecutionID)
      {
        v12 = objc_alloc_init(NSMutableDictionary);
        v13 = self->_executionDevicesByExecutionID;
        self->_executionDevicesByExecutionID = v12;

        executionDevicesByExecutionID = self->_executionDevicesByExecutionID;
      }

      v14 = [(NSMutableDictionary *)executionDevicesByExecutionID objectForKey:executionID];
      if (!v14)
      {
        v14 = objc_alloc_init(NSMutableArray);
        [(NSMutableDictionary *)self->_executionDevicesByExecutionID setObject:v14 forKey:executionID];
      }

      afPeerInfo = [deviceCopy afPeerInfo];
      v16 = +[ADDeviceCircleManager sharedInstance];
      v17 = [v16 managedPeerInfoMatchingPeerInfo:afPeerInfo];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = afPeerInfo;
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

- (void)_endRemoteExecutionContext:(id)context
{
  contextCopy = context;
  info = [contextCopy info];
  executionID = [info executionID];

  if (executionID)
  {
    v7 = [(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID objectForKey:executionID];

    if (v7)
    {
      _powerAssertionManager = [(ADCommandCenter *)self _powerAssertionManager];
      [_powerAssertionManager releasePowerAssertionWithName:executionID];

      [(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID removeObjectForKey:executionID];
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
        v14 = contextCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s context = %@", &v11, 0x16u);
      }
    }
  }
}

- (id)_beginRemoteExecutionContextForCommand:(id)command fromPeer:(id)peer withRemoteExecutionInfo:(id)info
{
  commandCopy = command;
  peerCopy = peer;
  infoCopy = info;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v42 = "[ADCommandCenter _beginRemoteExecutionContextForCommand:fromPeer:withRemoteExecutionInfo:]";
    v43 = 2112;
    v44 = commandCopy;
    v45 = 2112;
    v46 = peerCopy;
    v47 = 2112;
    v48 = infoCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s command = %@, peer = %@, remoteExecutionInfo = %@", buf, 0x2Au);
  }

  v11 = objc_alloc_init(NSUUID);
  uUIDString = [v11 UUIDString];

  currentHomeInfo = [infoCopy currentHomeInfo];
  v39 = commandCopy;
  if (AFIsHorseman())
  {
    v40 = currentHomeInfo;
  }

  else
  {
    v13 = +[ADHomeInfoManager sharedInfoManager];
    currentHomeInfo2 = [infoCopy currentHomeInfo];
    v15 = [v13 updatedHomeInfoForRootInfo:currentHomeInfo2];

    v40 = v15;
  }

  v34 = [ADCommandExecutionContext alloc];
  v33 = [AFCommandExecutionInfo alloc];
  requestID = [infoCopy requestID];
  turnId = [infoCopy turnId];
  v38 = peerCopy;
  afPeerInfo = [peerCopy afPeerInfo];
  endpointInfo = [infoCopy endpointInfo];
  instanceInfo = [infoCopy instanceInfo];
  speechInfo = [infoCopy speechInfo];
  requestHandlingContextSnapshot = [infoCopy requestHandlingContextSnapshot];
  deviceRestrictions = [infoCopy deviceRestrictions];
  userInfo = [infoCopy userInfo];
  v23 = afPeerInfo;
  v24 = [v33 initWithExecutionID:uUIDString requestID:requestID turnId:turnId originPeerInfo:afPeerInfo currentHomeInfo:v40 endpointInfo:endpointInfo instanceInfo:instanceInfo speechInfo:speechInfo requestHandlingContextSnapshot:requestHandlingContextSnapshot deviceRestrictions:deviceRestrictions userInfo:userInfo];
  v35 = [(ADCommandExecutionContext *)v34 initWithInfo:v24];

  remoteExecutionContextsByExecutionID = self->_remoteExecutionContextsByExecutionID;
  if (!remoteExecutionContextsByExecutionID)
  {
    v26 = objc_alloc_init(NSMutableDictionary);
    v27 = self->_remoteExecutionContextsByExecutionID;
    self->_remoteExecutionContextsByExecutionID = v26;

    remoteExecutionContextsByExecutionID = self->_remoteExecutionContextsByExecutionID;
  }

  [(NSMutableDictionary *)remoteExecutionContextsByExecutionID setObject:v35 forKey:uUIDString];
  _powerAssertionManager = [(ADCommandCenter *)self _powerAssertionManager];
  [_powerAssertionManager takePowerAssertionWithName:uUIDString];

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

- (BOOL)_hasRemoteExecutionContextForRequestID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        info = [*(*(&v13 + 1) + 8 * i) info];
        requestID = [info requestID];
        v11 = [requestID isEqualToString:dCopy];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_remoteExecutionContextForExecutionID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_remoteExecutionContextsByExecutionID objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasRemoteExecutionContextForExecutionID:(id)d
{
  v3 = [(ADCommandCenter *)self _remoteExecutionContextForExecutionID:d];
  v4 = v3 != 0;

  return v4;
}

- (void)_destroyRootExecutionContextForRequestID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID objectForKey:dCopy];
    if (v5)
    {
      [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID removeObjectForKey:dCopy];
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

- (void)_createRootExecutionContextForRequestID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID objectForKey:dCopy];

    if (!v5)
    {
      if (!self->_rootExecutionContextsByRequestID)
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        rootExecutionContextsByRequestID = self->_rootExecutionContextsByRequestID;
        self->_rootExecutionContextsByRequestID = v6;
      }

      v8 = +[ADDeviceCircleManager sharedInstance];
      localPeerInfo = [v8 localPeerInfo];

      v10 = [AFRequestHandlingContext alloc];
      idsDeviceUniqueIdentifier = [localPeerInfo idsDeviceUniqueIdentifier];
      assistantIdentifier = [localPeerInfo assistantIdentifier];
      v13 = [v10 initWithRequestID:dCopy inputDeviceID:idsDeviceUniqueIdentifier inputAssistantID:assistantIdentifier];

      if (AFIsHorseman())
      {
        v14 = +[ADHomeInfoManager sharedInfoManager];
        rootAfHomeInfoForThisDevice = [v14 rootAfHomeInfoForThisDevice];
      }

      else
      {
        rootAfHomeInfoForThisDevice = 0;
      }

      v16 = [AFCommandExecutionInfo alloc];
      turnIdentifier = [(AFRequestInfo *)self->_currentRequestInfo turnIdentifier];
      info = [(AFInstanceContext *)self->_instanceContext info];
      _restrictedCommands = [(ADCommandCenter *)self _restrictedCommands];
      v20 = [v16 initWithExecutionID:dCopy requestID:dCopy turnId:turnIdentifier originPeerInfo:0 currentHomeInfo:rootAfHomeInfoForThisDevice endpointInfo:0 instanceInfo:info speechInfo:0 requestHandlingContextSnapshot:v13 deviceRestrictions:_restrictedCommands userInfo:0];

      v21 = [[ADCommandExecutionContext alloc] initWithInfo:v20];
      [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID setObject:v21 forKey:dCopy];
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

- (id)_rootExecutionContextForRequestID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_rootExecutionContextsByRequestID objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasRootExecutionContextForRequestID:(id)d
{
  v3 = [(ADCommandCenter *)self _rootExecutionContextForRequestID:d];
  v4 = v3 != 0;

  return v4;
}

- (id)_executionContextMatchingExecutionInfo:(id)info fallbackRequestID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (!infoCopy || ([infoCopy requestID], v8 = objc_claimAutoreleasedReturnValue(), -[ADCommandCenter _rootExecutionContextForRequestID:](self, "_rootExecutionContextForRequestID:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9) && (objc_msgSend(infoCopy, "executionID"), v10 = objc_claimAutoreleasedReturnValue(), -[ADCommandCenter _remoteExecutionContextForExecutionID:](self, "_remoteExecutionContextForExecutionID:", v10), v9 = objc_claimAutoreleasedReturnValue(), v10, !v9))
  {
    v9 = [(ADCommandCenter *)self _rootExecutionContextForRequestID:dCopy];
  }

  return v9;
}

- (BOOL)_hasOutstandingRequestId:(id)id
{
  if (id)
  {
    return [(NSMutableSet *)self->_outstandingRequestIds containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_removeOutstandingRequestId:(id)id forReason:(id)reason
{
  idCopy = id;
  reasonCopy = reason;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[ADCommandCenter _removeOutstandingRequestId:forReason:]";
    v11 = 2112;
    v12 = idCopy;
    v13 = 2112;
    v14 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s requestId = %@, reason = %@", &v9, 0x20u);
  }

  if (idCopy)
  {
    [(ADCommandCenter *)self _removeHandledCommandIdsForRequestId:idCopy];
    [(ADCommandCenter *)self _removePostCommandHandlingBlocksForRequestId:idCopy];
    [(ADCommandCenter *)self _destroyRootExecutionContextForRequestID:idCopy];
    [(NSMutableSet *)self->_outstandingRequestIds removeObject:idCopy];
  }
}

- (void)_addOutstandingRequestId:(id)id forReason:(id)reason
{
  idCopy = id;
  reasonCopy = reason;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[ADCommandCenter _addOutstandingRequestId:forReason:]";
    v14 = 2112;
    v15 = idCopy;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s requestId = %@, reason = %@", &v12, 0x20u);
  }

  if (idCopy)
  {
    outstandingRequestIds = self->_outstandingRequestIds;
    if (!outstandingRequestIds)
    {
      v10 = objc_alloc_init(NSMutableSet);
      v11 = self->_outstandingRequestIds;
      self->_outstandingRequestIds = v10;

      outstandingRequestIds = self->_outstandingRequestIds;
    }

    [(NSMutableSet *)outstandingRequestIds addObject:idCopy];
    [(ADCommandCenter *)self _createRootExecutionContextForRequestID:idCopy];
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
    assistantIsEnabled = [v15 assistantIsEnabled];
    dictationIsEnabled = [v15 dictationIsEnabled];
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v28 = "[ADCommandCenter init]";
      v29 = 1024;
      v30 = assistantIsEnabled;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s assistantIsEnabled = %d", buf, 0x12u);
      v18 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v28 = "[ADCommandCenter init]";
      v29 = 1024;
      v30 = dictationIsEnabled;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s dictationIsEnabled = %d", buf, 0x12u);
    }

    [v2 _createAssistantLocallyIfNeeded:assistantIsEnabled];
    v19 = +[ADPreferences sharedPreferences];
    [v19 setDeviceWasRedirectedToProduction:0];

    v20 = *(v2 + 1);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002118CC;
    v22[3] = &unk_100515CF0;
    v24 = assistantIsEnabled;
    v25 = dictationIsEnabled;
    v23 = v2;
    dispatch_async(v20, v22);
  }

  return v2;
}

+ (id)sharedQueue
{
  sharedCommandCenter = [self sharedCommandCenter];
  _queue = [sharedCommandCenter _queue];

  return _queue;
}

- (void)acousticIDHelper:(id)helper didCompleteSessionSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter(AcousticId) acousticIDHelper:didCompleteSessionSuccessfully:]";
    v12 = 1024;
    v13 = successfullyCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %d", &v10, 0x12u);
  }

  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager stopFingerprintingForSuccess:successfullyCopy];
  v8 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:5];
  [v8 setSuppressStopAlert:successfullyCopy];
  [_speechManager stopSpeechCaptureIfFingerprintingOnlyWithOptions:v8];
  _currentClient = [(ADCommandCenter *)self _currentClient];
  [_currentClient adAcousticIDRequestDidFinishSuccessfully:successfullyCopy];
}

- (void)acousticIDHelperDidStartSession:(id)session
{
  sessionCopy = session;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADCommandCenter(AcousticId) acousticIDHelperDidStartSession:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  currentSession = [sessionCopy currentSession];
  [(ADCommandCenter *)self _sendCommandToServer:currentSession];
}

- (void)_saAIRetrySearch:(id)search completion:(id)completion
{
  searchCopy = search;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter(AcousticId) _saAIRetrySearch:completion:]";
    v12 = 2112;
    v13 = searchCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v10, 0x16u);
  }

  _acousticIDHelper = [(ADCommandCenter *)self _acousticIDHelper];
  [_acousticIDHelper handleRetrySearch:searchCopy];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saAISearchCompleted:(id)completed completion:(id)completion
{
  completedCopy = completed;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[ADCommandCenter(AcousticId) _saAISearchCompleted:completion:]";
    v21 = 2112;
    v22 = completedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  _speechManager = [(ADCommandCenter *)self _speechManager];
  [_speechManager setFingerprintWasRecognized];

  if (_AFPreferencesAcousticIDAutoEndpoint() && ![(ADCommandCenter *)self _speechDelegateHasReceivedPartialResult]&& !self->_partialResultAcousticIDTimer)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ADCommandCenter(AcousticId) _saAISearchCompleted:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Scheduling partial result acoustic ID timer", buf, 0xCu);
    }

    _queue = [(ADCommandCenter *)self _queue];
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, _queue);
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

  _acousticIDHelper = [(ADCommandCenter *)self _acousticIDHelper];
  [_acousticIDHelper handleSearchCompleted:completedCopy];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_saAIRequestSearch:(id)search completion:(id)completion
{
  searchCopy = search;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[ADCommandCenter(AcousticId) _saAIRequestSearch:completion:]";
    v14 = 2112;
    v15 = searchCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", &v12, 0x16u);
  }

  _currentClient = [(ADCommandCenter *)self _currentClient];
  [_currentClient adAcousticIDRequestWillStart];
  v10 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:5];
  acousticIdSearchSessionId = [searchCopy acousticIdSearchSessionId];
  [(ADCommandCenter *)self _startAcousticIDRequestWithDelegate:_currentClient withOptions:v10 context:acousticIdSearchSessionId];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_acousticId_commandFailed:(id)failed
{
  failedCopy = failed;
  _acousticIDHelper = [(ADCommandCenter *)self _acousticIDHelper];
  refId = [failedCopy refId];
  v6 = [_acousticIDHelper hasRelatedCommandForRefId:refId];

  if (v6)
  {
    [_acousticIDHelper handleCommandFailed:failedCopy];
  }
}

- (void)_acousticId_speechCaptureCompleted
{
  currentSession = [(ADAcousticIDHelper *)self->_acousticIDHelper currentSession];
  if (currentSession)
  {
    v4 = currentSession;
    sessionIsComplete = [(ADAcousticIDHelper *)self->_acousticIDHelper sessionIsComplete];

    if ((sessionIsComplete & 1) == 0)
    {
      cancelSessionCommand = [(ADAcousticIDHelper *)self->_acousticIDHelper cancelSessionCommand];
      [(ADCommandCenter *)self _sendCommandToServer:cancelSessionCommand];

      acousticIDHelper = self->_acousticIDHelper;

      [(ADAcousticIDHelper *)acousticIDHelper failCurrentSession];
    }
  }
}

- (void)_acousticId_musicWasDetected
{
  currentSession = [(ADAcousticIDHelper *)self->_acousticIDHelper currentSession];

  if (!currentSession)
  {
    _speechManager = [(ADCommandCenter *)self _speechManager];
    context = [_speechManager context];
    aceId = [context aceId];
    [(ADCommandCenter *)self _acousticId_startSessionForSpeechRequest:aceId];

    _currentClient = [(ADCommandCenter *)self _currentClient];
    [_currentClient adMusicWasDetected];
  }
}

- (void)_acousticId_handleFingerprint:(id)fingerprint duration:(double)duration
{
  fingerprintCopy = fingerprint;
  _acousticIDHelper = [(ADCommandCenter *)self _acousticIDHelper];
  if ([_acousticIDHelper shouldSendFingerprintForDuration:duration])
  {
    v8 = [_acousticIDHelper searchCommandForFingerprintData:fingerprintCopy withDuration:duration];
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

- (void)_acousticId_startSessionForSpeechRequest:(id)request
{
  requestCopy = request;
  _acousticIDHelper = [(ADCommandCenter *)self _acousticIDHelper];
  [_acousticIDHelper startNewAcousticIDSessionWithRequestId:0 refId:requestCopy];
}

- (void)_acousticId_startSessionWithContext:(id)context
{
  contextCopy = context;
  _acousticIDHelper = [(ADCommandCenter *)self _acousticIDHelper];
  [_acousticIDHelper startNewAcousticIDSessionWithRequestId:contextCopy refId:0];
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

- (void)getSharedDataForPeer:(id)peer
{
  peerCopy = peer;
  _queue = [(ADCommandCenter *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10026B3A4;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = peerCopy;
  v6 = peerCopy;
  dispatch_async(_queue, v7);
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

- (void)updateSharedDataWithCloudData:(id)data fromPeer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[ADCommandCenter(SharedDataClient) updateSharedDataWithCloudData:fromPeer:]";
    v16 = 2112;
    v17 = dataCopy;
    v18 = 2112;
    v19 = peerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  if (dataCopy)
  {
    _queue = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10026BA4C;
    block[3] = &unk_10051DB68;
    v11 = dataCopy;
    v12 = peerCopy;
    selfCopy = self;
    dispatch_async(_queue, block);
  }
}

- (void)_updateSharedDataFromPeers:(id)peers completion:(id)completion
{
  peersCopy = peers;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADCommandCenter(SharedDataClient) _updateSharedDataFromPeers:completion:]";
    v18 = 2112;
    v19 = peersCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s peers: %@", buf, 0x16u);
  }

  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026BDB0;
  block[3] = &unk_10051E088;
  v13 = peersCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = peersCopy;
  dispatch_async(_queue, block);
}

- (void)updateSharedDataFromCloudPeers:(id)peers completion:(id)completion
{
  peersCopy = peers;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromCloudPeers:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026C1A4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v13 = peersCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = peersCopy;
  dispatch_async(_queue, block);
}

- (void)_resetPeerAccountSettingsWithSharedData:(id)data
{
  dataCopy = data;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
    v51 = 2112;
    v52 = dataCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  _queue = [(ADCommandCenter *)self _queue];
  dispatch_assert_queue_V2(_queue);

  _account = [(ADCommandCenter *)self _account];
  peerAssistantIdentifier = [_account peerAssistantIdentifier];
  assistantId = [dataCopy assistantId];
  v10 = assistantId;
  if (peerAssistantIdentifier == assistantId || ([assistantId isEqualToString:peerAssistantIdentifier] & 1) != 0)
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

    [_account setPeerAssistantIdentifier:v10];
    v11 = 1;
  }

  peerSpeechIdentifier = [_account peerSpeechIdentifier];

  speechId = [dataCopy speechId];

  if (peerSpeechIdentifier != speechId && ([speechId isEqualToString:peerSpeechIdentifier] & 1) == 0)
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
      v51 = 2112;
      v52 = speechId;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Updating peer speech id: %@", buf, 0x16u);
    }

    [_account setPeerSpeechIdentifier:speechId];
    v11 = 1;
  }

  peerUserAgentString = [_account peerUserAgentString];

  userAgent = [dataCopy userAgent];

  if (peerUserAgentString != userAgent && ([userAgent isEqualToString:peerUserAgentString] & 1) == 0)
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
      v51 = 2112;
      v52 = userAgent;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Updating peer user agent string: %@", buf, 0x16u);
    }

    [_account setPeerUserAgentString:userAgent];
    v11 = 1;
  }

  peerLanguageCode = [_account peerLanguageCode];

  languageCode = [dataCopy languageCode];

  if (peerLanguageCode != languageCode && ([languageCode isEqualToString:peerLanguageCode] & 1) == 0)
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
      v51 = 2112;
      v52 = languageCode;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Updating peer language code: %@", buf, 0x16u);
    }

    [_account setPeerLanguageCode:languageCode];
    v11 = 1;
  }

  peerSiriEnabled = [_account peerSiriEnabled];
  siriEnabled = [dataCopy siriEnabled];
  if (peerSiriEnabled != siriEnabled)
  {
    [_account setPeerSiriEnabled:siriEnabled];
    goto LABEL_27;
  }

  if (v11)
  {
LABEL_27:
    [_account save];
    v24 = 1;
    if (!dataCopy)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v24 = 0;
  if (!dataCopy)
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
    languageCode2 = [v25 languageCode];

    previousLanguageCode = [dataCopy previousLanguageCode];
    if (languageCode2 == previousLanguageCode || [languageCode2 isEqualToString:previousLanguageCode])
    {
      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Setting new language code from cloud data", buf, 0xCu);
      }

      languageCode3 = [dataCopy languageCode];
      outputVoice = [dataCopy outputVoice];
      [(ADCommandCenter *)self _setLanguageCode:languageCode3 outputVoice:outputVoice];
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
  notificationPreviewRestrictedApps = [dataCopy notificationPreviewRestrictedApps];
  v36 = [v34 initWithArray:notificationPreviewRestrictedApps];

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
    notificationPreviewRestrictedApps2 = [dataCopy notificationPreviewRestrictedApps];
    _AFPreferencesSetNotificationPreviewRestrictedApps();
  }

  temperatureUnit = [dataCopy temperatureUnit];
  if (temperatureUnit)
  {
    selfCopy = self;
    v41 = +[NSLocale currentLocale];
    af_aceTemperatureUnit = [v41 af_aceTemperatureUnit];

    if (([temperatureUnit isEqualToString:af_aceTemperatureUnit] & 1) == 0)
    {
      v43 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v50 = "[ADCommandCenter(SharedDataClient) _resetPeerAccountSettingsWithSharedData:]";
        v51 = 2112;
        v52 = temperatureUnit;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Updating temperature unit to: %@", buf, 0x16u);
      }

      [NSLocale af_setAceTemperatureUnit:temperatureUnit];
    }

    self = selfCopy;
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

    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    [_sessionManager resetSessionsAtNextRequestBoundary];
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

  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026CA84;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(_queue, block);
}

- (void)_cloudSyncPreferenceDidChange
{
  _queue = [(ADCommandCenter *)self _queue];
  dispatch_async(_queue, &stru_1005182B0);
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

- (void)sharedDataConnection:(id)connection didUpdateSharedData:(id)data
{
  dataCopy = data;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCommandCenter(SharedDataClient) sharedDataConnection:didUpdateSharedData:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  _queue = [(ADCommandCenter *)self _queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10026D21C;
  v9[3] = &unk_10051E010;
  v9[4] = self;
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(_queue, v9);
}

- (void)updateSharedDataFromPeerUseCache:(BOOL)cache allowCloudMessaging:(BOOL)messaging completion:(id)completion
{
  messagingCopy = messaging;
  cacheCopy = cache;
  completionCopy = completion;
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromPeerUseCache:allowCloudMessaging:completion:]";
    v19 = 1024;
    v20 = messagingCopy;
    v21 = 1024;
    v22 = cacheCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s allowCloudMessaging=%d useCache=%d", buf, 0x18u);
  }

  [(ADCommandCenter *)self _queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10026D39C;
  v12[3] = &unk_100518228;
  v15 = cacheCopy;
  v16 = messagingCopy;
  v13 = v12[4] = self;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = v13;
  dispatch_async(v11, v12);
}

- (void)_updateSharedDataWithPairedPeerData:(id)data
{
  dataCopy = data;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
    v59 = 2112;
    v60 = dataCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  if (dataCopy)
  {
    _account = [(ADCommandCenter *)self _account];
    if (AFSupportsPairedDevice() && (AFIsNano() & 1) == 0)
    {
      sharedDataService = self->_sharedDataService;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10026DDF4;
      v54[3] = &unk_1005181D8;
      v54[4] = self;
      v55 = _account;
      v56 = dataCopy;
      [(ADSharedDataService *)sharedDataService deviceIsNearby:v54];

LABEL_63:
      goto LABEL_64;
    }

    *(&v53 + 1) = [_account peerHostname];
    *&v53 = [dataCopy hostname];
    assistantId = [dataCopy assistantId];
    [_account setPeerAssistantIdentifier:assistantId];

    loggingAssistantId = [dataCopy loggingAssistantId];
    [_account setPeerLoggingAssistantIdentifier:loggingAssistantId];

    speechId = [dataCopy speechId];
    [_account setPeerSpeechIdentifier:speechId];

    hostname = [dataCopy hostname];
    [_account setPeerHostname:hostname];

    [_account save];
    languageCode = [dataCopy languageCode];
    outputVoice = [dataCopy outputVoice];
    [(ADCommandCenter *)self _setLanguageCode:languageCode outputVoice:outputVoice];

    v13 = +[ADPreferences sharedPreferences];
    sharedUserId = [dataCopy sharedUserId];
    loggingSharedUserId = [dataCopy loggingSharedUserId];
    [v13 setSharedUserIdentifier:sharedUserId loggingSharedUserIdentifier:loggingSharedUserId];

    v16 = _AFSupportPreferencesBoolValueForKey();

    v17 = _AFSupportPreferencesBoolValueForKey();

    v18 = _AFPreferencesSiriDataSharingOptInStatus();
    v19 = +[AFPreferences sharedPreferences];
    assistantIsEnabled = [v19 assistantIsEnabled];
    dictationIsEnabled = [v19 dictationIsEnabled];
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
      [v19 _setAssistantIsEnabledLocal:{objc_msgSend(dataCopy, "siriEnabled")}];
      v22 = assistantIsEnabled ^ [dataCopy siriEnabled];
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

    if ([dataCopy dictationEnabled])
    {
      siriEnabled = 1;
    }

    else
    {
      siriEnabled = [dataCopy siriEnabled];
    }

    [v19 _setDictationIsEnabledLocal:siriEnabled];
    v23 = dictationIsEnabled ^ siriEnabled;
    if (v18)
    {
LABEL_42:
      v41 = _AFPreferencesCloudSyncEnabled();
      v42 = v41 ^ [dataCopy cloudSyncEnabled];
      if (v42 == 1)
      {
        _AFPreferencesEnableCloudSync();
        v43 = +[NSDate date];
        _AFPreferencesSetCloudSyncEnabledModificationDate();
      }

      if (AFIsNano())
      {
        ShouldCensorSpeechInternal = _AFPreferencesShouldCensorSpeechInternal();
        if (ShouldCensorSpeechInternal != [dataCopy shouldCensorSpeech])
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

        _sessionManager = [(ADCommandCenter *)self _sessionManager];
        [_sessionManager resetSessionsAndMakeQuiet:1];
      }

      else
      {
        _sessionManager = +[ADCommandCenter sharedCommandCenter];
        [_sessionManager destroyActiveAccount];
        v48 = v53;
      }

LABEL_62:
      goto LABEL_63;
    }

LABEL_16:
    dataSharingOptInStatus = [dataCopy dataSharingOptInStatus];
    v27 = dataSharingOptInStatus;
    if (!dataSharingOptInStatus)
    {
LABEL_41:

      goto LABEL_42;
    }

    if ([dataSharingOptInStatus isEqualToString:SADataSharingOptInStatusOptedInValue])
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
    sharedInstance = [off_10058D5B8() sharedInstance];
    getActivePairedDevice = [sharedInstance getActivePairedDevice];

    v51 = getActivePairedDevice;
    if (getActivePairedDevice)
    {
      v32 = off_10058D5C0();
      v33 = [getActivePairedDevice valueForProperty:v32];
      stringValue = [v33 stringValue];

      v35 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
        v59 = 2112;
        v60 = stringValue;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Fetched companion build version %@", buf, 0x16u);
      }

      if (stringValue && !AFShouldOptOutDataSharingForMigrationFromBuildVersion())
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
      stringValue = 0;
    }

    v38 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v58 = "[ADCommandCenter(SharedDataClient) _updateSharedDataWithPairedPeerData:]";
      v59 = 2112;
      v60 = stringValue;
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

- (void)runBootTimeServiceMaintenanceWithCompletion:(id)completion
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCommandCenter(ServiceMaintenance) runBootTimeServiceMaintenanceWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028982C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(_queue, block);
}

- (void)runServiceMaintenanceWithCompletion:(id)completion
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCommandCenter(ServiceMaintenance) runServiceMaintenanceWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002899A8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(_queue, block);
}

- (void)_runMaintenanceForServices:(id)services completion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
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
  v13 = [servicesCopy count];
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
  v16 = servicesCopy;
  v26 = v16;
  selfCopy = self;
  v17 = [v24 copy];
  objc_storeWeak((*(&buf + 1) + 40), v17);
  (*(v17 + 2))(v17, 0);
  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028A040;
  block[3] = &unk_10051C6F0;
  v22 = v17;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = v17;
  dispatch_group_notify(v15, _queue, block);

  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(&v34);
}

- (void)_metrics_recordSNNetworkSnapshotForEvent:(int64_t)event completion:(id)completion
{
  completionCopy = completion;
  _sessionManager = [(ADCommandCenter *)self _sessionManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10028CED8;
  v9[3] = &unk_100519400;
  v10 = completionCopy;
  eventCopy = event;
  v8 = completionCopy;
  [_sessionManager getSNConnectionMetrics:v9];
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

  _offlineMetricsManager = [(ADCommandCenter *)self _offlineMetricsManager];
  [_offlineMetricsManager deleteAllMetrics];
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

- (void)_metrics_sendEngagementFeedback:(int64_t)feedback voiceQueryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(SAMetrics);
  [v7 setCategory:@"SpotlightEngagementFeedback"];
  [v7 setOriginalCommandId:identifierCopy];
  if (feedback > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_100519420[feedback];
  }

  v21[0] = @"type";
  v9 = [NSNumber numberWithInteger:feedback];
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
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Sending engagement feedback %@ for aceId %@", &v13, 0x20u);
  }

  [(ADCommandCenter *)self _reallyCommitOrSaveMetrics:v7];
}

- (void)_metrics_publishDailyDeviceStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
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
  v9 = completionCopy;
  v21 = v9;
  v10 = objc_retainBlock(v20);
  if ([(ADCommandCenter *)self _metrics_isAssistantOrDictationEnabled])
  {
    v11 = +[AFPreferences sharedPreferences];
    isDictationHIPAACompliant = [v11 isDictationHIPAACompliant];

    if (!isDictationHIPAACompliant)
    {
      wrapAsAnyEvent = [statusCopy wrapAsAnyEvent];
      v16 = +[ADAnalyticsService sharedService];
      v22 = wrapAsAnyEvent;
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

- (void)metrics_publishDailyDeviceStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028DB5C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = statusCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = statusCopy;
  dispatch_async(_queue, block);
}

- (void)_metrics_processEventRecordsFromStore:(id)store batch:(id)batch deliveryStream:(unint64_t)stream eventStreamUID:(id)d streamSpeechId:(id)id untilLimit:(double)limit uploadRecords:(id)records completion:(id)self0
{
  storeCopy = store;
  batchCopy = batch;
  dCopy = d;
  idCopy = id;
  recordsCopy = records;
  completionCopy = completion;
  v23 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v51 = "[ADCommandCenter(Metrics) _metrics_processEventRecordsFromStore:batch:deliveryStream:eventStreamUID:streamSpeechId:untilLimit:uploadRecords:completion:]";
    v52 = 2112;
    v53 = dCopy;
    v54 = 2112;
    v55 = idCopy;
    v56 = 2048;
    streamCopy = stream;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Fetching 128 events from event stream with UID %@ speechId %@ in delivery stream %tu", buf, 0x2Au);
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10028DE3C;
  v45[3] = &unk_100519310;
  v24 = storeCopy;
  v46 = v24;
  streamCopy2 = stream;
  v25 = batchCopy;
  v47 = v25;
  v26 = completionCopy;
  v48 = v26;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10028DEF4;
  v34[3] = &unk_1005193D8;
  v42 = recordsCopy;
  streamCopy3 = stream;
  v35 = v25;
  v36 = dCopy;
  limitCopy = limit;
  v40 = objc_retainBlock(v45);
  v41 = v26;
  selfCopy = self;
  v38 = idCopy;
  v39 = v24;
  v27 = v24;
  v28 = idCopy;
  v29 = recordsCopy;
  v30 = v26;
  v31 = dCopy;
  v32 = v40;
  v33 = v25;
  [v27 fetchEventRecords:128 eventStreamUID:v31 streamSpeechId:v28 deliveryStream:stream completion:v34];
}

- (void)_metrics_sendNextAnalyticsEventStreamToServerUntilLimit:(double)limit requiresUnlimitedPower:(BOOL)power requiresActiveSession:(BOOL)session prioritizedEventStreamUID:(id)d deliveryStreamContinuations:(id *)continuations scheduledActivity:(BOOL)activity completion:(id)completion
{
  sessionCopy = session;
  powerCopy = power;
  dCopy = d;
  completionCopy = completion;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    var3 = continuations->var3;
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
  v19 = completionCopy;
  v52 = v19;
  v20 = objc_retainBlock(v51);
  v21 = continuations->var3;
  if (v21)
  {
    continuations->var3 = v21 - 1;
  }

  v22 = +[NSProcessInfo processInfo];
  [v22 systemUptime];
  v24 = v23;

  if (v24 >= limit)
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

  v37 = dCopy;
  v25 = +[AFPreferences sharedPreferences];
  isDictationHIPAACompliant = [v25 isDictationHIPAACompliant];

  if (!isDictationHIPAACompliant)
  {
    v30 = +[AFSiriDataSharingSensitivityManager shared];
    isOptedOutOfMTE = [v30 isOptedOutOfMTE];

    if (!isOptedOutOfMTE)
    {
      if (powerCopy && (IOPSDrawingUnlimitedPower() & 1) == 0)
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
        if (!sessionCopy || (-[ADCommandCenter _sessionManager](self, "_sessionManager"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 hasActiveSessionForSendingMetrics], v32, (v33 & 1) != 0))
        {
          v34 = +[ADAnalyticsService sharedService];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_10028EF78;
          v39[3] = &unk_1005192C0;
          v39[4] = self;
          v41 = v20;
          limitCopy = limit;
          dCopy = v37;
          v40 = v37;
          var1 = continuations->var1;
          var0 = continuations->var0;
          v45 = var1;
          var2 = continuations->var2;
          v47 = continuations->var3;
          activityCopy = activity;
          v49 = sessionCopy;
          v50 = powerCopy;
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
    dCopy = v37;
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
  dCopy = v37;
LABEL_21:
}

- (void)_metrics_sendNextOfflineMetricsToServerUntilLimit:(double)limit requiresUnlimitedPower:(BOOL)power requiresActiveSession:(BOOL)session completion:(id)completion
{
  sessionCopy = session;
  powerCopy = power;
  completionCopy = completion;
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
  v12 = completionCopy;
  v34 = v12;
  v13 = objc_retainBlock(v33);
  v14 = +[NSProcessInfo processInfo];
  [v14 systemUptime];
  v16 = v15;

  if (v16 >= limit)
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
  isDictationHIPAACompliant = [v17 isDictationHIPAACompliant];

  if (isDictationHIPAACompliant)
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
  isOptedOutOfMTE = [v21 isOptedOutOfMTE];

  if (isOptedOutOfMTE)
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

  if (powerCopy && (IOPSDrawingUnlimitedPower() & 1) == 0)
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

  if (sessionCopy)
  {
    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    hasActiveSessionForSendingMetrics = [_sessionManager hasActiveSessionForSendingMetrics];

    if ((hasActiveSessionForSendingMetrics & 1) == 0)
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

  _offlineMetricsManager = [(ADCommandCenter *)self _offlineMetricsManager];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100291CE0;
  v27[3] = &unk_100519180;
  v27[4] = self;
  limitCopy = limit;
  v31 = sessionCopy;
  v32 = powerCopy;
  v28 = v12;
  v29 = v13;
  [_offlineMetricsManager fetchNextMetricsUsingBlock:v27];

LABEL_19:
}

- (void)_metrics_sendMetricsToServerUntilLimit:(double)limit requiresUnlimitedPower:(BOOL)power requiresActiveSession:(BOOL)session purgesOversizedStorage:(BOOL)storage scheduledActivity:(BOOL)activity completion:(id)completion
{
  sessionCopy = session;
  powerCopy = power;
  completionCopy = completion;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v38 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]";
    v39 = 2048;
    limitCopy = limit;
    v41 = 1024;
    v42 = powerCopy;
    v43 = 1024;
    v44 = sessionCopy;
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

  if (sessionCopy)
  {
    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    hasActiveSessionForSendingMetrics = [_sessionManager hasActiveSessionForSendingMetrics];

    if ((hasActiveSessionForSendingMetrics & 1) == 0)
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
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      goto LABEL_24;
    }
  }

  v20 = +[AFSiriDataSharingSensitivityManager shared];
  isOptedOutOfMTE = [v20 isOptedOutOfMTE];

  if (isOptedOutOfMTE)
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
  storageCopy = storage;
  v34[4] = self;
  v35 = completionCopy;
  v23 = objc_retainBlock(v34);
  v24 = +[NSProcessInfo processInfo];
  [v24 systemUptime];
  v26 = v25;

  v27 = AFSiriLogContextDaemon;
  if (v26 >= limit)
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
    limitCopy2 = limit;
    v28[4] = self;
    v31 = powerCopy;
    v32 = sessionCopy;
    activityCopy = activity;
    v29 = v23;
    [(ADCommandCenter *)self _metrics_sendNextOfflineMetricsToServerUntilLimit:powerCopy requiresUnlimitedPower:sessionCopy requiresActiveSession:v28 completion:limit];
  }

LABEL_24:
}

- (void)_metrics_recordCancellationMetrics
{
  _queue = [(ADCommandCenter *)self _queue];
  dispatch_async(_queue, &stru_100519080);
}

- (void)_metrics_recordFailureMetricsForError:(id)error
{
  errorCopy = error;
  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100292EF0;
  block[3] = &unk_10051DFE8;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(_queue, block);
}

- (void)_metrics_logSpeechRecognized:(id)recognized resultId:(id)id
{
  recognizedCopy = recognized;
  idCopy = id;
  v7 = +[AFAnalytics sharedAnalytics];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10029310C;
  v10[3] = &unk_10051A1A0;
  v11 = recognizedCopy;
  v12 = idCopy;
  v8 = idCopy;
  v9 = recognizedCopy;
  [v7 logEventWithType:1102 contextProvider:v10];
}

- (void)_metrics_markLocalSpeechCompletedWithStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v4 = +[AFAnalytics sharedAnalytics];
  [v4 logEventWithType:4405 context:statisticsCopy];
}

- (void)_metrics_markLocalSpeechPackage:(id)package interactionId:(id)id optedIn:(BOOL)in
{
  packageCopy = package;
  idCopy = id;
  if (in)
  {
    recognition = [packageCopy recognition];
    v9 = sub_10029381C(recognition);

    rawRecognition = [packageCopy rawRecognition];
    v11 = sub_10029381C(rawRecognition);

    v12 = objc_alloc_init(NSMutableDictionary);
    [v12 setValue:v9 forKey:@"recognition"];
    [v12 setValue:v11 forKey:@"rawRecognition"];
    dictionaryRepresentation = [packageCopy dictionaryRepresentation];
    v66 = v12;
    [v12 setValue:dictionaryRepresentation forKey:@"speechPackage"];
  }

  else
  {
    v66 = objc_alloc_init(NSMutableDictionary);
  }

  rawRecognition2 = [packageCopy rawRecognition];
  v15 = objc_alloc_init(NSMutableArray);
  utterances = [rawRecognition2 utterances];
  firstObject = [utterances firstObject];

  v65 = rawRecognition2;
  phrases = [rawRecognition2 phrases];
  if ([phrases count])
  {
    v19 = 0;
    v68 = phrases;
    v69 = firstObject;
    do
    {
      interpretationIndices = [firstObject interpretationIndices];
      v21 = [interpretationIndices count];

      if (v19 >= v21)
      {
        break;
      }

      v22 = [phrases objectAtIndex:v19];
      interpretationIndices2 = [firstObject interpretationIndices];
      v24 = [interpretationIndices2 objectAtIndex:v19];
      unsignedIntegerValue = [v24 unsignedIntegerValue];

      interpretations = [v22 interpretations];
      v27 = [interpretations count];

      if (unsignedIntegerValue >= v27)
      {

        break;
      }

      interpretations2 = [v22 interpretations];
      v29 = [interpretations2 objectAtIndex:unsignedIntegerValue];

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      tokens = [v29 tokens];
      v31 = [tokens countByEnumeratingWithState:&v70 objects:v74 count:16];
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
              objc_enumerationMutation(tokens);
            }

            v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v70 + 1) + 8 * i) confidenceScore]);
            [v15 addObject:v35];
          }

          v32 = [tokens countByEnumeratingWithState:&v70 objects:v74 count:16];
        }

        while (v32);
      }

      ++v19;
      phrases = v68;
      firstObject = v69;
    }

    while (v19 < [v68 count]);
  }

  rawRecognition3 = [packageCopy rawRecognition];
  v37 = sub_100293B00(rawRecognition3);

  recognition2 = [packageCopy recognition];
  v39 = sub_100293B00(recognition2);

  rawRecognition4 = [packageCopy rawRecognition];
  phrases2 = [rawRecognition4 phrases];
  firstObject2 = [phrases2 firstObject];

  interpretations3 = [firstObject2 interpretations];
  firstObject3 = [interpretations3 firstObject];

  tokens2 = [firstObject3 tokens];
  firstObject4 = [tokens2 firstObject];

  [firstObject4 startTime];
  v48 = v47;

  rawRecognition5 = [packageCopy rawRecognition];
  phrases3 = [rawRecognition5 phrases];
  lastObject = [phrases3 lastObject];

  interpretations4 = [lastObject interpretations];
  firstObject5 = [interpretations4 firstObject];

  tokens3 = [firstObject5 tokens];
  lastObject2 = [tokens3 lastObject];

  [lastObject2 endTime];
  v57 = v56;
  [lastObject2 silenceStartTime];
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

  [v66 setValue:idCopy forKey:@"dictationUIInteractionIdentifier"];
  v64 = +[AFAnalytics sharedAnalytics];
  [v64 logEventWithType:4404 context:v66];
}

- (void)_metrics_markLocalEagerRecognitionCandidate:(id)candidate
{
  candidateCopy = candidate;
  utterances = [candidateCopy utterances];
  firstObject = [utterances firstObject];

  if (firstObject)
  {
    v43 = candidateCopy;
    phrases = [candidateCopy phrases];
    v42 = firstObject;
    v7 = firstObject;
    confidenceScore = [v7 confidenceScore];
    v49 = objc_alloc_init(NSMutableString);
    v8 = AFIsInternalInstall();
    v45 = v7;
    if ([phrases count])
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v44 = phrases;
      do
      {
        interpretationIndices = [v7 interpretationIndices];
        v14 = [interpretationIndices count];

        if (v11 >= v14)
        {
          break;
        }

        v15 = [phrases objectAtIndex:v11];
        interpretationIndices2 = [v7 interpretationIndices];
        [interpretationIndices2 objectAtIndex:v11];
        v18 = v17 = phrases;
        unsignedIntegerValue = [v18 unsignedIntegerValue];

        interpretations = [v15 interpretations];
        v21 = [interpretations count];

        if (unsignedIntegerValue >= v21)
        {
          firstObject = v42;
          candidateCopy = v43;
          v38 = v49;
          v34 = &__NSDictionary0__struct;
          phrases = v17;
          goto LABEL_31;
        }

        v47 = v15;
        v48 = v11;
        interpretations2 = [v15 interpretations];
        v23 = [interpretations2 objectAtIndex:unsignedIntegerValue];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v46 = v23;
        tokens = [v23 tokens];
        v25 = [tokens countByEnumeratingWithState:&v50 objects:buf count:16];
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
                objc_enumerationMutation(tokens);
              }

              v29 = *(*(&v50 + 1) + 8 * i);
              confidenceScore2 = [v29 confidenceScore];
              if (v12 >= confidenceScore2)
              {
                v12 = confidenceScore2;
              }

              confidenceScore3 = [v29 confidenceScore];
              if (v9 <= confidenceScore3)
              {
                v9 = confidenceScore3;
              }

              if (v8)
              {
                if (([v29 removeSpaceBefore] & 1) == 0 && (objc_msgSend(v10, "removeSpaceAfter") & 1) == 0 && v10)
                {
                  [v49 appendString:@" "];
                }

                text = [v29 text];
                [v49 appendString:text];
                v33 = v29;

                v10 = v33;
              }
            }

            v26 = [tokens countByEnumeratingWithState:&v50 objects:buf count:16];
          }

          while (v26);
        }

        v11 = v48 + 1;
        phrases = v44;
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
    v35 = [NSNumber numberWithInteger:confidenceScore];
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
      firstObject = v42;
      candidateCopy = v43;
    }

    else
    {
      v15 = v15;
      v34 = v15;
      firstObject = v42;
      candidateCopy = v43;
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

- (void)_metrics_markLocalSpeechStartedWithContext:(id)context
{
  contextCopy = context;
  v4 = +[AFAnalytics sharedAnalytics];
  [v4 logEventWithType:4401 context:contextCopy];
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
    _currentRequest = [(ADCommandCenter *)self _currentRequest];

    if (_currentRequest)
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

    _currentClient = [(ADCommandCenter *)self _currentClient];
    if (_currentClient || ([(ADCommandCenter *)self _requestDelegate], (_currentClient = objc_claimAutoreleasedReturnValue()) != 0) || ([(ADCommandCenter *)self _speechDelegate], (_currentClient = objc_claimAutoreleasedReturnValue()) != 0))
    {

      goto LABEL_14;
    }

    _speechFileDelegate = [(ADCommandCenter *)self _speechFileDelegate];

    if (_speechFileDelegate)
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

    _isRequestDelaying = [(ADCommandCenter *)self _isRequestDelaying];
    v10 = AFSiriLogContextDaemon;
    v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (_isRequestDelaying)
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

    LOBYTE(v4) = _isRequestDelaying ^ 1;
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

- (void)_sendMetrics:(id)metrics requiresActiveSession:(BOOL)session batch:(id)batch completion:(id)completion
{
  sessionCopy = session;
  metricsCopy = metrics;
  batchCopy = batch;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (!metricsCopy)
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
    [batchCopy markFailedWithType:3];
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
    [batchCopy markFailedWithType:4];
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
  isDictationHIPAACompliant = [v14 isDictationHIPAACompliant];

  if (isDictationHIPAACompliant)
  {
    [batchCopy markFailedWithType:7];
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
  isOptedOutOfMTE = [v18 isOptedOutOfMTE];

  if (isOptedOutOfMTE)
  {
    [batchCopy markFailedWithType:8];
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s #MTEOptOut Attempted to send metrics when device is opted out of MTE", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (!sessionCopy || (-[ADCommandCenter _sessionManager](self, "_sessionManager"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 hasActiveSessionForSendingMetrics], v21, (v22 & 1) != 0))
  {
    aceId = [metricsCopy aceId];
    if (!aceId)
    {
      aceId = SiriCoreUUIDStringCreate();
      [metricsCopy setAceId:aceId];
    }

    category = [metricsCopy category];
    v25 = AFSiriLogContextDaemon;
    v26 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (category)
    {
      if (v26)
      {
        *buf = 136315650;
        v38 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]";
        v39 = 2112;
        v40 = category;
        v41 = 2112;
        v42 = aceId;
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
      v40 = aceId;
      v27 = "%s Sending metrics (%@)...";
      v28 = v25;
      v29 = 22;
      goto LABEL_31;
    }

    [(ADCommandCenter *)self _sendCommandToServer:metricsCopy opportunistically:sessionCopy];
    _sessionManager = [(ADCommandCenter *)self _sessionManager];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002949AC;
    v33[3] = &unk_100519060;
    v33[4] = self;
    v34 = category;
    v35 = aceId;
    v36 = completionCopy;
    v31 = aceId;
    v32 = category;
    [_sessionManager barrier:v33];

    goto LABEL_18;
  }

  [batchCopy markFailedWithType:5];
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
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_18:
}

- (void)_reallyCommitOrSaveMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADCommandCenter(Metrics) _reallyCommitOrSaveMetrics:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (metricsCopy)
  {
    if ([(ADCommandCenter *)self _metrics_isAssistantOrDictationEnabled])
    {
      v6 = +[AFSiriDataSharingSensitivityManager shared];
      isOptedOutOfMTE = [v6 isOptedOutOfMTE];

      if (!isOptedOutOfMTE)
      {
        v14 = [AFSafetyBlock alloc];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100295058;
        v24[3] = &unk_10051C128;
        v24[4] = self;
        v15 = metricsCopy;
        v25 = v15;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10029510C;
        v22[3] = &unk_10051B778;
        v16 = [v14 initWithBlock:v24];
        v23 = v16;
        [(ADCommandCenter *)self _sendMetrics:v15 requiresActiveSession:1 batch:0 completion:v22];
        v17 = dispatch_time(0, 8000000000);
        _queue = [(ADCommandCenter *)self _queue];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100295120;
        v20[3] = &unk_10051DFE8;
        v21 = v16;
        v19 = v16;
        dispatch_after(v17, _queue, v20);

        goto LABEL_14;
      }

      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
        category = [metricsCopy category];
        aceId = [metricsCopy aceId];
        *buf = 136315650;
        v27 = "[ADCommandCenter(Metrics) _reallyCommitOrSaveMetrics:]";
        v28 = 2112;
        v29 = category;
        v30 = 2112;
        v31 = aceId;
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
        category = [metricsCopy category];
        aceId = [metricsCopy aceId];
        *buf = 136315650;
        v27 = "[ADCommandCenter(Metrics) _reallyCommitOrSaveMetrics:]";
        v28 = 2112;
        v29 = category;
        v30 = 2112;
        v31 = aceId;
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

- (void)sanityCheckAutodownloadedAssetsForced:(BOOL)forced
{
  _queue = [(ADCommandCenter *)self _queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100295340;
  v6[3] = &unk_10051CBD8;
  v6[4] = self;
  forcedCopy = forced;
  dispatch_async(_queue, v6);
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
    outputVoice = [v3 outputVoice];

    languageCode = [outputVoice languageCode];
    if (languageCode)
    {
      name = [outputVoice name];
      v7 = +[AFLocalization sharedInstance];
      languageCode2 = [outputVoice languageCode];
      v9 = [v7 voiceNamesForOutputLanguageCode:languageCode2 gender:{objc_msgSend(outputVoice, "gender")}];

      if (!name || ([v9 containsObject:name] & 1) == 0)
      {
        firstObject = [v9 firstObject];
        if (firstObject != name)
        {
          v11 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v22 = "[ADCommandCenter(OutputVoice) _updateAutoDownloadedVoiceAssetsForOutputVoice]";
            v23 = 2112;
            v24 = name;
            v25 = 2112;
            v26 = firstObject;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Substituting subscription for output voice '%@' with subscription for preferred Siri voice '%@'", buf, 0x20u);
          }

          v12 = firstObject;

          name = v12;
        }
      }

      v13 = [[SiriTTSSynthesisVoice alloc] initWithLanguage:languageCode name:name];
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

- (BOOL)_outputVoice_setOutputVoice:(id)voice
{
  voiceCopy = voice;
  if (sub_100004988())
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADCommandCenter(OutputVoice) _outputVoice_setOutputVoice:]";
      v16 = 2112;
      v17 = voiceCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v14, 0x16u);
    }

    v6 = +[ADPreferences sharedPreferences];
    v7 = +[AFLocalization sharedInstance];
    v8 = [v7 getValidOutputVoiceWithDialects:voiceCopy];

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
    [voiceCopy languageCode];
    VSPreferencesSetSpokenLanguageIdentifier();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_handleCommandInAMOS:(id)s completion:(id)completion
{
  sCopy = s;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ADCommandCenter *)self _amosSADomainObjectCreate:sCopy completion:completionCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ADCommandCenter *)self _amosSADomainObjectRetrieve:sCopy completion:completionCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ADCommandCenter *)self _amosSADomainObjectUpdate:sCopy completion:completionCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ADCommandCenter *)self _amosSADomainObjectCancel:sCopy completion:completionCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ADCommandCenter *)self _amosSADomainObjectDelete:sCopy completion:completionCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(ADCommandCenter *)self _amosSADomainObjectCommit:sCopy completion:completionCopy];
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
                  v13 = sCopy;
                  _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unsuccessfully tried to handle non AMOS command as AMOS %@", &v10, 0x16u);
                  if (!completionCopy)
                  {
                    goto LABEL_18;
                  }
                }

                else if (!completionCopy)
                {
                  goto LABEL_18;
                }

                v9 = [[SACommandFailed alloc] initWithReason:@"Tried to handle non AMOS command as AMOS"];
                completionCopy[2](completionCopy, v9, 0);

                goto LABEL_18;
              }

              [(ADCommandCenter *)self _amosSADomainObjectPunchOut:sCopy completion:completionCopy];
            }
          }
        }
      }
    }
  }

LABEL_18:
}

- (void)_saDomainObjectPunchOut:(id)out completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029CA5C;
  v7[3] = &unk_100519658;
  selfCopy = self;
  outCopy = out;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = outCopy;
  [(ADCommandCenter *)selfCopy _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectPunchOut:(id)out completion:(id)completion
{
  outCopy = out;
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[ADCommandCenter(AMOS) _amosSADomainObjectPunchOut:completion:]";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s We don't know how to generically punch out to domain objects. A non-ui plugin needs to handle this.", &v9, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    v8 = [[SACommandFailed alloc] initWithReason:@"No plugin for command"];
    completionCopy[2](completionCopy, v8, 0);
  }

LABEL_4:
}

- (void)_saDomainObjectCommit:(id)commit completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029CCC4;
  v7[3] = &unk_100519658;
  selfCopy = self;
  commitCopy = commit;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = commitCopy;
  [(ADCommandCenter *)selfCopy _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectCommit:(id)commit completion:(id)completion
{
  commitCopy = commit;
  completionCopy = completion;
  identifier = [commitCopy identifier];
  v8Identifier = [identifier identifier];

  absoluteString = [v8Identifier absoluteString];
  _domainObjectCache = [(ADCommandCenter *)self _domainObjectCache];
  v12 = [_domainObjectCache domainObjectForKey:absoluteString];
  if (v12)
  {
    selfCopy = self;
    v22 = completionCopy;
    v13 = [_domainObjectCache oldIdForKey:absoluteString];
    if (v13)
    {
      v14 = [NSURL URLWithString:v13];
    }

    else
    {
      v14 = v8Identifier;
    }

    v16 = v14;
    v17 = [AceObject aceObjectWithDictionary:v12];
    [v17 setIdentifier:v16];
    [commitCopy setIdentifier:v17];
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v31 = "[ADCommandCenter(AMOS) _amosSADomainObjectCommit:completion:]";
      v32 = 2112;
      v33 = commitCopy;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Committing %@ with oldId %@", buf, 0x20u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10029D08C;
    v23[3] = &unk_100519720;
    v24 = v8Identifier;
    v25 = v17;
    v26 = _domainObjectCache;
    v27 = absoluteString;
    v28 = commitCopy;
    v19 = v16;
    completionCopy = v22;
    v29 = v22;
    v20 = v17;
    [(ADCommandCenter *)selfCopy _sendAMOSCommandToService:v28 responseHandler:v23];
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[ADCommandCenter(AMOS) _amosSADomainObjectCommit:completion:]";
      v32 = 2112;
      v33 = v8Identifier;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Object not found in AMOS %@", buf, 0x16u);
    }

    v13 = [[SACommandFailed alloc] initWithReason:@"Object not found in amos"];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)_saDomainObjectDelete:(id)delete completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029D38C;
  v7[3] = &unk_100519658;
  selfCopy = self;
  deleteCopy = delete;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = deleteCopy;
  [(ADCommandCenter *)selfCopy _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectDelete:(id)delete completion:(id)completion
{
  deleteCopy = delete;
  completionCopy = completion;
  identifier = [deleteCopy identifier];
  v8Identifier = [identifier identifier];

  if ([v8Identifier isAMOSIdentifier])
  {
    absoluteString = [v8Identifier absoluteString];
    _domainObjectCache = [(ADCommandCenter *)self _domainObjectCache];
    v12 = [_domainObjectCache oldIdForKey:absoluteString];
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v23 = "[ADCommandCenter(AMOS) _amosSADomainObjectDelete:completion:]";
      v24 = 2112;
      v25 = v8Identifier;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Removing object with identifier %@ old identifier %@ from amos", buf, 0x20u);
    }

    identifier2 = [deleteCopy identifier];
    v15 = identifier2;
    if (v12)
    {
      v16 = [NSURL URLWithString:v12];
      [v15 setIdentifier:v16];
    }

    else
    {
      [identifier2 setIdentifier:0];
    }

    [_domainObjectCache setDomainObject:0 forKey:absoluteString];
  }

  identifier3 = [deleteCopy identifier];
  v17Identifier = [identifier3 identifier];

  if (v17Identifier)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10029D6A0;
    v20[3] = &unk_1005196F8;
    v21 = completionCopy;
    [(ADCommandCenter *)self _sendAMOSCommandToService:deleteCopy responseHandler:v20];
    v19 = v21;
LABEL_12:

    goto LABEL_13;
  }

  if (completionCopy)
  {
    v19 = objc_alloc_init(SADomainObjectDeleteCompleted);
    (*(completionCopy + 2))(completionCopy, v19, 0);
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_saDomainObjectCancel:(id)cancel completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029D7F0;
  v7[3] = &unk_100519658;
  selfCopy = self;
  cancelCopy = cancel;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = cancelCopy;
  [(ADCommandCenter *)selfCopy _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectCancel:(id)cancel completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v6 = objc_alloc_init(SADomainObjectCancelCompleted);
    (*(completion + 2))(completionCopy, v6, 0);
  }
}

- (void)_saDomainObjectUpdate:(id)update completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029D9C8;
  v7[3] = &unk_100519658;
  selfCopy = self;
  updateCopy = update;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = updateCopy;
  [(ADCommandCenter *)selfCopy _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectUpdate:(id)update completion:(id)completion
{
  completionCopy = completion;
  updateCopy = update;
  identifier = [updateCopy identifier];
  v8Identifier = [identifier identifier];
  absoluteString = [v8Identifier absoluteString];
  _domainObjectCache = [(ADCommandCenter *)self _domainObjectCache];
  v12 = [_domainObjectCache domainObjectForKey:absoluteString];
  v13 = AFSiriLogContextDaemon;
  v14 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v12)
  {
    v21 = identifier;
    if (v14)
    {
      *buf = 136315394;
      v23 = "[ADCommandCenter(AMOS) _amosSADomainObjectUpdate:completion:]";
      v24 = 2112;
      v25 = absoluteString;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Updating store object %@", buf, 0x16u);
    }

    v15 = [AceObject aceObjectWithDictionary:v12];
    setFields = [updateCopy setFields];
    addFields = [updateCopy addFields];
    removeFields = [updateCopy removeFields];

    [v15 updateUsingSet:setFields add:addFields remove:removeFields];
    dictionary = [v15 dictionary];
    [_domainObjectCache setDomainObject:dictionary forKey:absoluteString];

    v20 = objc_alloc_init(SADomainObjectUpdateCompleted);
    [v20 setIdentifier:v8Identifier];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v20, 0);
    }

    updateCopy = v15;
    identifier = v21;
  }

  else
  {
    if (v14)
    {
      *buf = 136315138;
      v23 = "[ADCommandCenter(AMOS) _amosSADomainObjectUpdate:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Going to bundle for object update", buf, 0xCu);
    }

    [(ADCommandCenter *)self _updateObjectFromService:updateCopy sadIdentifier:identifier completion:completionCopy];
  }
}

- (void)_updateObjectFromService:(id)service sadIdentifier:(id)identifier completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  identifierCopy = identifier;
  v11 = objc_alloc_init(SADomainObjectRetrieve);
  v12 = [[NSArray alloc] initWithObjects:{identifierCopy, 0}];

  [v11 setIdentifiers:v12];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10029DDF8;
  v15[3] = &unk_1005196D0;
  v16 = serviceCopy;
  selfCopy = self;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = serviceCopy;
  [(ADCommandCenter *)self _sendAMOSCommandToService:v11 responseHandler:v15];
}

- (void)_saDomainObjectRetrieve:(id)retrieve completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029E260;
  v7[3] = &unk_100519658;
  selfCopy = self;
  retrieveCopy = retrieve;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = retrieveCopy;
  [(ADCommandCenter *)selfCopy _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:0 completion:v7];
}

- (void)_amosSADomainObjectRetrieve:(id)retrieve completion:(id)completion
{
  retrieveCopy = retrieve;
  completionCopy = completion;
  v26 = retrieveCopy;
  identifiers = [retrieveCopy identifiers];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(identifiers, "count")}];
  v27 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(identifiers, "count")}];
  selfCopy = self;
  _domainObjectCache = [(ADCommandCenter *)self _domainObjectCache];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = identifiers;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    groupIdentifier = 0;
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
        identifier = [v14 identifier];
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v38 = "[ADCommandCenter(AMOS) _amosSADomainObjectRetrieve:completion:]";
          v39 = 2112;
          v40 = identifier;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Retrieve looking in amos for key %@", buf, 0x16u);
        }

        absoluteString = [identifier absoluteString];
        v18 = [_domainObjectCache domainObjectForKey:absoluteString];

        if (v18)
        {
          v19 = [SADomainObject aceObjectWithDictionary:v18];
          [v19 setIdentifier:identifier];
          [v8 addObject:v19];
        }

        else
        {
          if (!groupIdentifier)
          {
            groupIdentifier = [v14 groupIdentifier];
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
    groupIdentifier = 0;
  }

  if ([v27 count])
  {
    v20 = AFSiriLogContextDaemon;
    v22 = completionCopy;
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
    v32 = completionCopy;
    [(ADCommandCenter *)selfCopy _sendAMOSCommandToService:v26 responseHandler:v30];

    v23 = v31;
  }

  else
  {
    v23 = objc_alloc_init(SADomainObjectRetrieveCompleted);
    [v23 setObjects:v8];
    v22 = completionCopy;
    v21 = v26;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v23, 0);
    }
  }
}

- (void)_saDomainObjectCreate:(id)create completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029E854;
  v7[3] = &unk_100519658;
  selfCopy = self;
  createCopy = create;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = createCopy;
  [(ADCommandCenter *)selfCopy _handleSADOCommandIfServiceDoesNotUseAMOS:v6 allowInterposing:1 completion:v7];
}

- (void)_amosSADomainObjectCreate:(id)create completion:(id)completion
{
  completionCopy = completion;
  createCopy = create;
  v7 = sub_100214B58();
  object = [createCopy object];

  [object setIdentifier:v7];
  _domainObjectCache = [(ADCommandCenter *)self _domainObjectCache];
  dictionary = [object dictionary];
  absoluteString = [v7 absoluteString];
  [_domainObjectCache setDomainObject:dictionary forKey:absoluteString];

  v12 = objc_alloc_init(SADomainObjectCreateCompleted);
  [v12 setIdentifier:v7];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v12, 0);
  }
}

- (void)_sendAMOSCommandToService:(id)service responseHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  _serviceManager = [(ADCommandCenter *)self _serviceManager];
  domainFromSADObject = [serviceCopy domainFromSADObject];
  encodedClassName = [serviceCopy encodedClassName];
  v11 = [_serviceManager serviceForDomain:domainFromSADObject command:encodedClassName];

  if (v11)
  {
    domainFromSADObject2 = [serviceCopy domainFromSADObject];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10029EB94;
    v15[3] = &unk_100519680;
    v16 = serviceCopy;
    v17 = handlerCopy;
    [v11 handleCommand:v16 forDomain:domainFromSADObject2 executionContext:0 reply:v15];
  }

  else
  {
    v13 = objc_alloc_init(SACommandIgnored);
    aceId = [serviceCopy aceId];
    [v13 setRefId:aceId];

    (*(handlerCopy + 2))(handlerCopy, v13, 2);
  }
}

- (void)_handleSADOCommandIfServiceDoesNotUseAMOS:(id)s allowInterposing:(BOOL)interposing completion:(id)completion
{
  sCopy = s;
  completionCopy = completion;
  encodedClassName = [sCopy encodedClassName];
  domainFromSADObject = [sCopy domainFromSADObject];
  _serviceManager = [(ADCommandCenter *)self _serviceManager];
  v13 = [_serviceManager serviceForDomain:domainFromSADObject command:encodedClassName];
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v24 = "[ADCommandCenter(AMOS) _handleSADOCommandIfServiceDoesNotUseAMOS:allowInterposing:completion:]";
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = encodedClassName;
    v29 = 2112;
    v30 = domainFromSADObject;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Found service %@ for command %@ in domain %@", buf, 0x2Au);
  }

  if (v13 && ([v13 usesManagedStorageForDomain:domainFromSADObject] & 1) == 0)
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
    identifier = [v13 identifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10029F180;
    v19[3] = &unk_100519658;
    v20 = sCopy;
    v21 = v13;
    v22 = completionCopy;
    [(ADCommandCenter *)self _sendAMOSCommand:v20 domain:domainFromSADObject toBundleWithIdentifier:identifier completion:v19];

    goto LABEL_17;
  }

  if (interposing)
  {
    v15 = [v13 implementsCommand:encodedClassName forDomain:domainFromSADObject];
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

  (*(completionCopy + 2))(completionCopy, 0, 0, 0);
LABEL_17:
}

- (void)_sendAMOSCommand:(id)command domain:(id)domain toBundleWithIdentifier:(id)identifier completion:(id)completion
{
  commandCopy = command;
  domainCopy = domain;
  identifierCopy = identifier;
  completionCopy = completion;
  _serviceManager = [(ADCommandCenter *)self _serviceManager];
  v15 = [_serviceManager serviceForIdentifier:identifierCopy];

  if (v15)
  {
    if (![v15 isSystemService])
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10029F50C;
      v18[3] = &unk_10051B280;
      v18[4] = self;
      v19 = commandCopy;
      v20 = completionCopy;
      [v15 handleCommand:v19 forDomain:domainCopy executionContext:0 reply:v18];

      goto LABEL_9;
    }

    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "[ADCommandCenter(AMOS) _sendAMOSCommand:domain:toBundleWithIdentifier:completion:]";
      v23 = 2112;
      v24 = commandCopy;
      v25 = 2112;
      v26 = identifierCopy;
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
      v24 = commandCopy;
      v25 = 2112;
      v26 = identifierCopy;
      v17 = "%s No service connection for command %@ identifier %@";
LABEL_11:
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x20u);
      if (!completionCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  if (completionCopy)
  {
LABEL_7:
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

LABEL_9:
}

- (BOOL)_isFauxPeer:(id)peer
{
  peerCopy = peer;
  idsDeviceUniqueIdentifier = [peerCopy idsDeviceUniqueIdentifier];
  if (idsDeviceUniqueIdentifier)
  {
    v5 = 0;
  }

  else
  {
    idsIdentifier = [peerCopy idsIdentifier];
    if (idsIdentifier)
    {
      v5 = 0;
    }

    else
    {
      rapportEffectiveIdentifier = [peerCopy rapportEffectiveIdentifier];
      if (rapportEffectiveIdentifier)
      {
        v5 = 0;
      }

      else
      {
        homeKitAccessoryIdentifier = [peerCopy homeKitAccessoryIdentifier];
        v5 = homeKitAccessoryIdentifier == 0;
      }
    }
  }

  return v5;
}

- (BOOL)_peerIsPairedPhone:(id)phone
{
  rapportEffectiveIdentifier = [phone rapportEffectiveIdentifier];
  v4 = [rapportEffectiveIdentifier isEqualToString:@"BTPipe-Phone"];

  return v4;
}

- (BOOL)_peerIsPairedWatch:(id)watch
{
  rapportEffectiveIdentifier = [watch rapportEffectiveIdentifier];
  v4 = [rapportEffectiveIdentifier isEqualToString:@"BTPipe-Watch"];

  return v4;
}

- (void)startRemoteRequest:(id)request onTargetDevice:(id)device completion:(id)completion
{
  requestCopy = request;
  deviceCopy = device;
  completionCopy = completion;
  v11 = AFSupportsMultiUser();
  if (deviceCopy && v11)
  {
    v12 = +[ADMultiUserService sharedService];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002F661C;
    v13[3] = &unk_10051B2F0;
    v14 = deviceCopy;
    selfCopy = self;
    v16 = requestCopy;
    v17 = completionCopy;
    [v12 getIDSIdentifierForAssistantId:v14 completion:v13];
  }

  else
  {
    [(ADCommandCenter *)self startRemoteRequest:requestCopy completion:completionCopy];
  }
}

- (void)_startRemoteRequest:(id)request onPeer:(id)peer completion:(id)completion
{
  completionCopy = completion;
  peerCopy = peer;
  requestCopy = request;
  v11 = +[AFInstanceContext currentContext];
  [(ADCommandCenter *)self _startRemoteRequest:requestCopy onPeer:peerCopy withContext:v11 completion:completionCopy];
}

- (void)_startRemoteRequest:(id)request onPeer:(id)peer withContext:(id)context completion:(id)completion
{
  requestCopy = request;
  peerCopy = peer;
  contextCopy = context;
  completionCopy = completion;
  handoffOriginDeviceName = [requestCopy handoffOriginDeviceName];

  if (!handoffOriginDeviceName)
  {
    v14 = AFUserAssignedDeviceName();
    [requestCopy setHandoffOriginDeviceName:v14];
  }

  if (AFIsNano())
  {
    _sharedDataService = [(ADCommandCenter *)self _sharedDataService];
    [_sharedDataService startRemoteRequest:requestCopy completion:completionCopy];
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ADCommandCenter(RemoteExecute) _startRemoteRequest:onPeer:withContext:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = requestCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    v36 = +[ADPeerCloudService sharedInstance];
    if (peerCopy)
    {
      companionPeer = peerCopy;
    }

    else
    {
      companionPeer = [v36 companionPeer];
    }

    v17 = +[NSUUID UUID];
    uUIDString = [v17 UUIDString];

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
    v42 = completionCopy;
    v43 = buf;
    v19 = uUIDString;
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
      [v29 startRemoteRequest:requestCopy onPeer:companionPeer completion:v20];
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

      [v37 startRemoteRequest:requestCopy onPeer:companionPeer completion:v20];
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)startRemoteRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F7008;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(_queue, block);
}

- (id)_remoteExecute_primaryUserDevicesWithTypes:(unint64_t)types
{
  v4 = +[ADPeerCloudService sharedInstance];
  peers = [v4 peers];
  allObjects = [peers allObjects];
  v7 = [NSMutableArray arrayWithArray:allObjects];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002F714C;
  v11[3] = &unk_10051B2A0;
  v11[4] = types;
  v8 = [NSPredicate predicateWithBlock:v11];
  [v7 filterUsingPredicate:v8];

  v9 = [NSArray arrayWithArray:v7];

  return v9;
}

- (BOOL)_remoteExecute_shouldSendCommandToPrimaryUser:(id)user
{
  userCopy = user;
  v4 = [userCopy length];
  if (v4)
  {
    v5 = +[ADMultiUserService sharedService];
    primaryUser = [v5 primaryUser];
    sharedUserID = [primaryUser sharedUserID];
    v8 = [sharedUserID isEqualToString:userCopy];

    if (v8)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_7;
    }

    v11 = +[ADMultiUserService sharedService];
    sharedUsersBySharedUserID = [v11 sharedUsersBySharedUserID];
    v13 = [sharedUsersBySharedUserID objectForKey:userCopy];

    companionAssistantID = [v13 companionAssistantID];
    v9 = companionAssistantID == 0;
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

- (void)_saExecuteOnRemoteRequest:(id)request executionContext:(id)context completion:(id)completion
{
  requestCopy = request;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[ADCommandCenter(RemoteExecute) _saExecuteOnRemoteRequest:executionContext:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serializedCommand = [requestCopy serializedCommand];
  if (serializedCommand)
  {
    personaId = [requestCopy personaId];
    personaAccessLevel = [requestCopy personaAccessLevel];
    [requestCopy setPersonaId:0];
    [requestCopy setPersonaAccessLevel:0];
    [contextCopy setPersonaId:personaId];
    v31 = personaAccessLevel;
    [contextCopy setPersonaAccessLevel:personaAccessLevel];
    [(ADCommandCenter *)self _addNetworkActivityTracingForLabel:7 start:1 withCompletionReason:0 andError:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002F799C;
    v33[3] = &unk_10051B280;
    v15 = requestCopy;
    v34 = v15;
    selfCopy = self;
    v36 = completionCopy;
    v30 = objc_retainBlock(v33);
    remoteDevice = [v15 remoteDevice];
    assistantId = [remoteDevice assistantId];

    ad_recipientDevicesType = [v15 ad_recipientDevicesType];
    v32 = completionCopy;
    if ([ad_recipientDevicesType isEqualToString:@"MobileDevices"])
    {
      v19 = 2;
    }

    else if ([ad_recipientDevicesType isEqualToString:@"HomeDevices"])
    {
      v19 = 4;
    }

    else if ([ad_recipientDevicesType isEqualToString:@"Companion"])
    {
      v19 = 1;
    }

    else if ([ad_recipientDevicesType isEqualToString:@"All"])
    {
      v19 = 7;
    }

    else
    {
      v19 = 0;
    }

    ad_preferredMessagingOption = [v15 ad_preferredMessagingOption];
    if ([ad_preferredMessagingOption isEqualToString:@"IDS"])
    {
      v22 = 1;
    }

    else if ([ad_preferredMessagingOption isEqualToString:@"Rapport"])
    {
      v22 = 2;
    }

    else if ([ad_preferredMessagingOption isEqualToString:@"Bluetooth"])
    {
      v22 = 1024;
    }

    else if ([ad_preferredMessagingOption isEqualToString:@"Wifi"])
    {
      v22 = 2048;
    }

    else if ([ad_preferredMessagingOption isEqualToString:@"Cloud"])
    {
      v22 = 4096;
    }

    else if ([ad_preferredMessagingOption isEqualToString:@"All"])
    {
      v22 = 7171;
    }

    else
    {
      v22 = 0;
    }

    if ([assistantId length] || !v19)
    {
      remoteDevice2 = [v15 remoteDevice];
      assistantId2 = [remoteDevice2 assistantId];
      shouldFallbackOnAWDL = [v15 shouldFallbackOnAWDL];
      selfCopy2 = self;
      v25 = v30;
      [(ADCommandCenter *)selfCopy2 _remoteExecute_remoteDeviceExecuteSerializedCommand:serializedCommand onDeviceForAssistantId:assistantId2 allowFallbackOnAWDL:shouldFallbackOnAWDL executionContext:contextCopy completion:v30];
    }

    else
    {
      shouldFallbackOnAWDL2 = [v15 shouldFallbackOnAWDL];
      selfCopy3 = self;
      v25 = v30;
      [(ADCommandCenter *)selfCopy3 _remoteExecute_remoteDeviceExecuteSerializedCommand:serializedCommand onSpecifiedDeviceTypes:v19 preferredMessagingOption:v22 allowFallbackOnAWDL:shouldFallbackOnAWDL2 executionContext:contextCopy completion:v30];
    }

    completionCopy = v32;
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

    personaId = [AFError errorWithCode:11];
    (*(completionCopy + 2))(completionCopy, 0, personaId);
  }
}

- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)command onPeer:(id)peer allowsRelay:(BOOL)relay allowFallbackOnAWDL:(BOOL)l executionContext:(id)context completion:(id)completion
{
  lCopy = l;
  relayCopy = relay;
  commandCopy = command;
  peerCopy = peer;
  contextCopy = context;
  completionCopy = completion;
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
  v62 = v60 = lCopy;
  uUIDString = [v62 UUIDString];
  v17 = [NSUUID alloc];
  _currentRequest = [(ADCommandCenter *)self _currentRequest];
  currentRequestId = [_currentRequest currentRequestId];
  v20 = [v17 initWithUUIDString:currentRequestId];

  info = [contextCopy info];
  turnId = [info turnId];

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1002F83F0;
  v74[3] = &unk_10051B230;
  v23 = completionCopy;
  v78 = v23;
  v74[4] = self;
  v24 = v20;
  v75 = v24;
  v25 = turnId;
  v76 = v25;
  p_buf = &buf;
  v26 = uUIDString;
  v77 = v26;
  v27 = objc_retainBlock(v74);
  if (!peerCopy)
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

    [(ADSharedDataService *)self->_sharedDataService executeRemoteCommand:commandCopy completion:v27];
    [(ADCommandCenter *)self _logExecuteOnRemoteRequestForRequestId:v24 turnId:v25 event:0];
    goto LABEL_12;
  }

  if ([(ADCommandCenter *)self _peerIsPairedWatch:peerCopy]|| [(ADCommandCenter *)self _peerIsPairedPhone:peerCopy])
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
    v69 = commandCopy;
    v30 = peerCopy;
    v31 = v26;
    v32 = v25;
    v33 = v24;
    v34 = peerCopy;
    v35 = v27;
    v36 = v23;
    v37 = v30;
    v70 = v30;
    v73 = relayCopy;
    v71 = contextCopy;
    v38 = v37;
    v23 = v36;
    v27 = v35;
    peerCopy = v34;
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
      if (_AFPreferencesCompanionMessagingEnabled() && [peerCopy preferredMessagingOptionsForCommands] != 1)
      {
        if (!relayCopy)
        {
          _contextManager = [(ADCommandCenter *)self _contextManager];
          _currentRequest2 = [(ADCommandCenter *)self _currentRequest];
          currentRequestId2 = [_currentRequest2 currentRequestId];
          [_contextManager pushContextSnapshotForCurrentRequestWithID:currentRequestId2 toDevice:peerCopy];
        }

        [(ADCommandCenter *)self _addExecutionDevice:peerCopy forCommandExecutionContext:contextCopy];
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
        [v41 startRemoteSerialzedCommandExecution:commandCopy onPeer:peerCopy allowsRelay:relayCopy allowFallbackOnAWDL:v60 executionContext:contextCopy completion:v27];
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
        [v41 startRemoteSerialzedCommandExecution:commandCopy onPeer:peerCopy allowsRelay:relayCopy allowFallbackOnAWDL:0 executionContext:contextCopy completion:v27];
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
    [v40 executeCommand:commandCopy onPeer:peerCopy executionContext:contextCopy throughOnDemandRapportConnection:v65];
    v39 = &v66;
  }

  v41 = *v39;
LABEL_10:

LABEL_12:
  _Block_object_dispose(&buf, 8);
}

- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)command onDeviceForAssistantId:(id)id allowFallbackOnAWDL:(BOOL)l executionContext:(id)context completion:(id)completion
{
  lCopy = l;
  commandCopy = command;
  idCopy = id;
  contextCopy = context;
  completionCopy = completion;
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v68 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onDeviceForAssistantId:allowFallbackOnAWDL:executionContext:completion:]";
    v69 = 2112;
    v70 = idCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Executing command on device for assistant id: %@", buf, 0x16u);
  }

  v16 = +[ADPeerCloudService sharedInstance];
  v17 = v16;
  v46 = v16;
  if (idCopy)
  {
    v44 = commandCopy;
    v66 = 0;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1002F90BC;
    v64[3] = &unk_10051D9B8;
    v18 = idCopy;
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

    companionPeer = v21;
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

      companionPeer = v29;
    }

    uppercaseString = [v18 uppercaseString];
    [companionPeer setAssistantIdentifier:uppercaseString];

    commandCopy = v44;
    if (!companionPeer)
    {
      goto LABEL_28;
    }
  }

  else
  {
    companionPeer = [v16 companionPeer];
    v23 = 0;
    if (!companionPeer)
    {
      goto LABEL_28;
    }
  }

  if (![(ADCommandCenter *)self _isFauxPeer:companionPeer])
  {
LABEL_31:
    [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteSerializedCommand:commandCopy onPeer:companionPeer allowsRelay:v23 allowFallbackOnAWDL:lCopy executionContext:contextCopy completion:completionCopy];
    goto LABEL_32;
  }

LABEL_28:
  _sharedDataService = [(ADCommandCenter *)self _sharedDataService];
  if ([_sharedDataService watchIsNearbyForAssistantId:idCopy])
  {

    goto LABEL_31;
  }

  v34 = +[ADAccount activeAccount];
  v35 = [v34 watchExistsForAssistantId:idCopy];

  if (v35)
  {
    goto LABEL_31;
  }

  if ((!companionPeer || [(ADCommandCenter *)self _isFauxPeer:companionPeer]) && (v36 = [(ADCommandCenter *)self _localDeviceIsHomePod], idCopy) && v36)
  {
    v37 = +[ADMultiUserService sharedService];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1002F90C8;
    v56[3] = &unk_10051B1E0;
    v57 = idCopy;
    selfCopy = self;
    v59 = commandCopy;
    v62 = v23;
    v63 = lCopy;
    v60 = contextCopy;
    v61 = completionCopy;
    [v37 getIDSIdentifierForAssistantId:v57 completion:v56];

    v38 = v57;
  }

  else
  {
    v39 = !v23;
    if (!idCopy)
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
        if (!completionCopy)
        {
          goto LABEL_32;
        }
      }

      else if (!completionCopy)
      {
        goto LABEL_32;
      }

      v42 = [AFError errorWithCode:1000];
      (*(completionCopy + 2))(completionCopy, 0, v42);

      goto LABEL_32;
    }

    v40 = +[ADDeviceCircleManager sharedInstance];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1002F927C;
    v47[3] = &unk_10051B208;
    v48 = idCopy;
    selfCopy2 = self;
    v50 = commandCopy;
    v51 = companionPeer;
    v54 = 1;
    v55 = lCopy;
    v52 = contextCopy;
    v53 = completionCopy;
    [v40 getContextCollectorDeviceIdentifiersWithCompletion:v47];

    v38 = v48;
  }

LABEL_32:
}

- (void)_remoteExecute_remoteDeviceExecuteSerializedCommand:(id)command onSpecifiedDeviceTypes:(unint64_t)types preferredMessagingOption:(unint64_t)option allowFallbackOnAWDL:(BOOL)l executionContext:(id)context completion:(id)completion
{
  lCopy = l;
  commandCopy = command;
  contextCopy = context;
  completionCopy = completion;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v33 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onSpecifiedDeviceTypes:preferredMessagingOption:allowFallbackOnAWDL:executionContext:completion:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  _selectedSharedUserID = [(ADCommandCenter *)self _selectedSharedUserID];
  if ([_selectedSharedUserID length])
  {
    v19 = +[AFAnalytics sharedAnalytics];
    [v19 logEventWithType:6116 context:0];
  }

  if ([(ADCommandCenter *)self _remoteExecute_shouldSendCommandToPrimaryUser:_selectedSharedUserID])
  {
    v20 = [(ADCommandCenter *)self _remoteExecute_primaryUserDevicesWithTypes:types];
    if ([v20 count])
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1002F97A0;
      v26[3] = &unk_10051B1B8;
      optionCopy = option;
      v26[4] = self;
      v27 = commandCopy;
      v31 = lCopy;
      v28 = contextCopy;
      v29 = completionCopy;
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
    sharedUsersBySharedUserID = [v21 sharedUsersBySharedUserID];
    v20 = [sharedUsersBySharedUserID objectForKey:_selectedSharedUserID];

    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v33 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteSerializedCommand:onSpecifiedDeviceTypes:preferredMessagingOption:allowFallbackOnAWDL:executionContext:completion:]";
      v34 = 2112;
      v35 = _selectedSharedUserID;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Executing command on shared user companion device with sharedUserID: %@", buf, 0x16u);
    }

    companionAssistantID = [v20 companionAssistantID];
    [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteSerializedCommand:commandCopy onDeviceForAssistantId:companionAssistantID allowFallbackOnAWDL:lCopy executionContext:contextCopy completion:completionCopy];
  }
}

- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)command onPeer:(id)peer allowsRelay:(BOOL)relay throughProxyDevice:(id)device executionContext:(id)context completion:(id)completion
{
  relayCopy = relay;
  commandCopy = command;
  peerCopy = peer;
  deviceCopy = device;
  contextCopy = context;
  completionCopy = completion;
  preferredMessagingOptionsForCommands = [peerCopy preferredMessagingOptionsForCommands];
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
    LODWORD(v59) = relayCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s preferred routing options: %@, allows relay: %d", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v59 = sub_1002F6DC0;
  v60 = sub_1002F6DD0;
  v61 = 0;
  aceId = [commandCopy aceId];
  v21 = aceId;
  if (aceId)
  {
    uUIDString = aceId;
  }

  else
  {
    v23 = +[NSUUID UUID];
    uUIDString = [v23 UUIDString];
  }

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1002F9DCC;
  v48[3] = &unk_10051B190;
  v24 = completionCopy;
  v50 = v24;
  v51 = buf;
  v25 = uUIDString;
  v49 = v25;
  v26 = objc_retainBlock(v48);
  if ((preferredMessagingOptionsForCommands & 1) != 0 || !_AFPreferencesCompanionMessagingEnabled())
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
    [v37 startRemoteExecution:commandCopy onPeer:peerCopy allowsRelay:0 throughProxyDevice:0 executionContext:contextCopy completion:v26];
  }

  else
  {
    _contextManager = [(ADCommandCenter *)self _contextManager];
    _currentRequest = [(ADCommandCenter *)self _currentRequest];
    currentRequestId = [_currentRequest currentRequestId];
    [_contextManager pushContextSnapshotForCurrentRequestWithID:currentRequestId toDevice:peerCopy];

    [(ADCommandCenter *)self _addExecutionDevice:peerCopy forCommandExecutionContext:contextCopy];
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
    [v37 startRemoteExecution:commandCopy onPeer:peerCopy allowsRelay:relayCopy throughProxyDevice:deviceCopy executionContext:contextCopy completion:v26];
  }

  _Block_object_dispose(buf, 8);
}

- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)command onDeviceForAssistantId:(id)id executionContext:(id)context completion:(id)completion
{
  commandCopy = command;
  idCopy = id;
  contextCopy = context;
  completionCopy = completion;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteCommand:onDeviceForAssistantId:executionContext:completion:]";
    v20 = 2112;
    v21 = commandCopy;
    v22 = 2112;
    v23 = idCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Executing command %@ on device for assistant id %@", &v18, 0x20u);
  }

  v15 = +[ADPeerCloudService sharedInstance];
  v16 = v15;
  if (idCopy)
  {
    [v15 peerInfoForAssistantId:idCopy allowNonPeers:1];
  }

  else
  {
    [v15 companionPeer];
  }
  v17 = ;
  [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteCommand:commandCopy onPeer:v17 allowsRelay:0 throughProxyDevice:0 executionContext:contextCopy completion:completionCopy];
}

- (void)_remoteExecute_remoteDeviceExecuteCommand:(id)command executionContext:(id)context completion:(id)completion
{
  commandCopy = command;
  contextCopy = context;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADCommandCenter(RemoteExecute) _remoteExecute_remoteDeviceExecuteCommand:executionContext:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  [(ADCommandCenter *)self _remoteExecute_remoteDeviceExecuteCommand:commandCopy onDeviceForAssistantId:0 executionContext:contextCopy completion:completionCopy];
}

- (void)_attachPersonaIdIfNeeded:(id)needed personaAccessLevel:(id)level aceCommand:(id)command
{
  neededCopy = needed;
  levelCopy = level;
  commandCopy = command;
  if ([commandCopy conformsToProtocol:&OBJC_PROTOCOL___ADRemoteCommandPersonaIdMapping] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [commandCopy acceptPersonaId];
  }

  else
  {
    v9 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [commandCopy setPersonaId:neededCopy];
      [commandCopy setPersonaAccessLevel:levelCopy];
    }

    v11 = objc_opt_self();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      [commandCopy setPersonaId:neededCopy];
    }
  }
}

- (void)executeCommand:(id)command fromPeer:(id)peer remoteExecutionInfo:(id)info reply:(id)reply
{
  commandCopy = command;
  peerCopy = peer;
  infoCopy = info;
  replyCopy = reply;
  v14 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v14 assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v16 = [SABaseCommand aceObjectWithDictionary:commandCopy];
    [v16 setRefId:0];
    v17 = [[AFCommandExecutionInfo alloc] initWithDictionaryRepresentation:infoCopy];
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v30 = "[ADCommandCenter(RemoteExecute) executeCommand:fromPeer:remoteExecutionInfo:reply:]";
      v31 = 2112;
      v32 = peerCopy;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s peer = %@, command = %@, remoteExecutionInfo = %@", buf, 0x2Au);
    }

    v19 = +[ADCommandCenter sharedCommandCenter];
    [v19 sendPowerLogs:@"ExecuteOnRemoteRequest" peerInfo:peerCopy];

    _queue = [(ADCommandCenter *)self _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002FA738;
    block[3] = &unk_10051D2A0;
    block[4] = self;
    v25 = v16;
    v26 = peerCopy;
    v27 = v17;
    v28 = replyCopy;
    v21 = v17;
    v22 = v16;
    dispatch_async(_queue, block);
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
    (*(replyCopy + 2))(replyCopy, 0, v22);
  }
}

- (void)_sendLocationIfNeededForRequest
{
  _locationManager = [(ADCommandCenter *)self _locationManager];
  if (([_locationManager needsToSendLocation] & 1) != 0 || objc_msgSend(_locationManager, "isNavigating"))
  {
    [_locationManager setNeedsToSendLocation:0];
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
    [_locationManager updateLocationForCommand:0 completion:v5];
  }
}

- (void)fetchLastLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    _queue = [(ADCommandCenter *)self _queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100360090;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(_queue, v6);
  }
}

- (void)dismissedAllVisibleAssistantUIForReason:(id)reason
{
  reasonCopy = reason;
  _queue = [(ADCommandCenter *)self _queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003601B4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(_queue, v7);
}

- (void)showingVisibleAssistantUIForReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  _queue = [(ADCommandCenter *)self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003602F4;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = reasonCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = reasonCopy;
  dispatch_async(_queue, block);
}

- (void)fetchLocationAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if (authorizationCopy)
  {
    _queue = [(ADCommandCenter *)self _queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100360408;
    v6[3] = &unk_10051E038;
    v6[4] = self;
    v7 = authorizationCopy;
    dispatch_async(_queue, v6);
  }
}

@end