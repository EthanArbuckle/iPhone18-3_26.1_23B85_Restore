@interface AFConnection
+ (BOOL)assistantIsSupported;
+ (BOOL)assistantIsSupportedForLanguageCode:(id)a3 error:(id *)a4;
+ (BOOL)isAvailable;
+ (BOOL)isNetworkAvailable;
+ (BOOL)siriIsSupportedForLanguageCode:(id)a3 productName:(id)a4 productVersion:(id)a5 error:(id *)a6;
+ (id)currentLanguageCode;
+ (id)outputVoice;
+ (void)beginMonitoringAvailability;
+ (void)defrost;
+ (void)initialize;
+ (void)stopMonitoringAvailability;
- (AFAssistantUIService)delegate;
- (AFConnection)initWithTargetQueue:(id)a3 instanceContext:(id)a4;
- (AFSpeechDelegate)speechDelegate;
- (BOOL)_shouldEmitUEIRequestLinkForRequestInfo:(id)a3 speechRequestOptions:(id)a4;
- (BOOL)_startInputAudioPowerUpdatesWithXPCWrapper:(id)a3;
- (id)_clientConfiguration;
- (id)_clientService;
- (id)_clientServiceWithErrorHandler:(id)a3;
- (id)_connection;
- (id)_metricContextValueForUseDeviceSpeakerForTTS:(int64_t)a3;
- (id)_siriClientStateManager;
- (id)_startRequestMetricSettings;
- (id)startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:(id)a3;
- (void)_barrier;
- (void)_beginInterstitialsForReason:(id)a3;
- (void)_cancelRequestTimeoutForReason:(id)a3;
- (void)_checkAndSetIsCapturingSpeech:(BOOL)a3;
- (void)_clearAssistantInfoForAccountWithIdentifier:(id)a3;
- (void)_clearConnection;
- (void)_completeRequestWithUUID:(id)a3 forReason:(int64_t)a4 error:(id)a5;
- (void)_connectionFailedWithError:(id)a3;
- (void)_dispatchCallbackGroupBlock:(id)a3;
- (void)_dispatchCommand:(id)a3 isInterstitial:(BOOL)a4 interstitialPhase:(int64_t)a5 interstitialDelay:(double)a6 reply:(id)a7;
- (void)_emitServerExecutionValuesReportedMessage:(id)a3 requestUUID:(id)a4;
- (void)_endInterstitialsForReason:(id)a3;
- (void)_enqueueInterstitialCommand:(id)a3;
- (void)_extendExistingRequestTimeoutForReason:(id)a3;
- (void)_extendExpiringRequestTimeout;
- (void)_extendRequestTimeoutForReason:(id)a3 durationInSeconds:(double)a4;
- (void)_fetchShouldSpeak:(id)a3;
- (void)_handleCommand:(id)a3 reply:(id)a4;
- (void)_handleInterstitialPhase:(int64_t)a3 fromProvider:(id)a4 displayText:(id)a5 speakableText:(id)a6 expectedDelay:(double)a7 context:(id)a8 completion:(id)a9;
- (void)_invokeRequestTimeoutForReason:(id)a3;
- (void)_markIsDucking;
- (void)_markIsTwoShot;
- (void)_markNetworkDidBecomeActive;
- (void)_markSpeechRecognized;
- (void)_pauseRequestTimeoutForReason:(id)a3;
- (void)_requestDidEnd;
- (void)_resumeRequestTimeoutForReason:(id)a3;
- (void)_scheduleRequestTimeoutForReason:(id)a3 durationInSeconds:(double)a4;
- (void)_setAudioSessionID:(unsigned int)a3;
- (void)_setRecordRoute:(id)a3;
- (void)_setShouldSpeak:(BOOL)a3;
- (void)_speechRecordingDidFailWithError:(id)a3;
- (void)_startRequestTimeoutTimerWithTimeInterval:(double)a3 reason:(id)a4;
- (void)_startRequestWithAceCommand:(id)a3 turnIdentifier:(id)a4 suppressAlert:(BOOL)a5;
- (void)_startRequestWithInfo:(id)a3;
- (void)_startUIRequestWithInfo:(id)a3 completion:(id)a4;
- (void)_startUIRequestWithText:(id)a3 completion:(id)a4;
- (void)_stopInputAudioPowerUpdates;
- (void)_tellDelegateAudioPlaybackRequestDidStart:(id)a3;
- (void)_tellDelegateAudioPlaybackRequestDidStop:(id)a3 error:(id)a4;
- (void)_tellDelegateAudioPlaybackRequestWillStart:(id)a3;
- (void)_tellDelegateAudioSessionDidBeginInterruptionWithUserInfo:(id)a3;
- (void)_tellDelegateCacheImage:(id)a3;
- (void)_tellDelegateDidDetectMusic;
- (void)_tellDelegateExtensionRequestFinishedForApplication:(id)a3 error:(id)a4;
- (void)_tellDelegateExtensionRequestWillStartForApplication:(id)a3;
- (void)_tellDelegateFailedToLaunchAppWithBundleIdentifier:(id)a3;
- (void)_tellDelegateInvalidateCurrentUserActivity;
- (void)_tellDelegateRequestWillStart;
- (void)_tellDelegateSetUserActivityInfo:(id)a3 webpageURL:(id)a4;
- (void)_tellDelegateStartPlaybackDidFail:(int64_t)a3;
- (void)_tellDelegateWillProcessAppLaunchWithBundleIdentifier:(id)a3;
- (void)_tellDelegateWillProcessStartPlayback:(int64_t)a3 intent:(id)a4 completion:(id)a5;
- (void)_tellDelegateWillStartAcousticIDRequest;
- (void)_tellSpeechDelegateRecognitionDidFail:(id)a3;
- (void)_tellSpeechDelegateRecognitionUpdateWillBeginForTask:(id)a3;
- (void)_tellSpeechDelegateRecognizedAdditionalSpeechInterpretation:(id)a3 refId:(id)a4;
- (void)_tellSpeechDelegateRecordingDidBeginOnAVRecordRoute:(id)a3 audioSessionID:(unsigned int)a4;
- (void)_tellSpeechDelegateRecordingDidCancel;
- (void)_tellSpeechDelegateRecordingDidChangeAVRecordRoute:(id)a3;
- (void)_tellSpeechDelegateRecordingDidDetectStartpoint;
- (void)_tellSpeechDelegateRecordingDidEnd;
- (void)_tellSpeechDelegateRecordingDidFail:(id)a3;
- (void)_tellSpeechDelegateRecordingDidUpdateRecognitionPhrases:(id)a3 utterances:(id)a4 refId:(id)a5;
- (void)_tellSpeechDelegateRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)a3;
- (void)_tellSpeechDelegateSpeechRecognized:(id)a3;
- (void)_tellSpeechDelegateSpeechRecognizedPartialResult:(id)a3;
- (void)_tellSpeechDelegateToPerformTwoShotPromptWithType:(int64_t)a3 reply:(id)a4;
- (void)_updateClientConfiguration;
- (void)_updateSpeechEndHostTime:(unint64_t)a3;
- (void)_updateState;
- (void)_updateStateIfNotInSync;
- (void)_willCancelRequest;
- (void)_willCompleteRequest;
- (void)_willEndSession;
- (void)_willFailRequestWithError:(id)a3;
- (void)_willPresentUsefulUserResultWithType:(int64_t)a3;
- (void)_willStartRequestWithSpeech:(BOOL)a3 speechRequestOptions:(id)a4 requestInfo:(id)a5 analyticsEventProvider:(id)a6;
- (void)accessibilityObserver:(id)a3 stateDidChangeFrom:(id)a4 to:(id)a5;
- (void)acquireAudioSessionWithContext:(id)a3 completion:(id)a4;
- (void)audioPowerUpdaterDidUpdate:(id)a3 averagePower:(float)a4 peakPower:(float)a5;
- (void)boostedPreheatWithStyle:(int64_t)a3 completion:(id)a4;
- (void)broadcastCommandDictionary:(id)a3;
- (void)cancelRequest;
- (void)cancelRequestForReason:(int64_t)a3;
- (void)cancelSpeech;
- (void)checkLanguageReady:(id)a3 completion:(id)a4;
- (void)clearContext;
- (void)dealloc;
- (void)deviceRingerObserver:(id)a3 didChangeState:(int64_t)a4;
- (void)didDismissUI;
- (void)endSession;
- (void)failRequestWithError:(id)a3;
- (void)fetchAppicationContextForApplicationInfo:(id)a3 supplementalContext:(id)a4 refID:(id)a5;
- (void)forceAudioSessionActiveWithContext:(id)a3 completion:(id)a4;
- (void)forceAudioSessionActiveWithOptions:(unint64_t)a3 reason:(int64_t)a4 speechRequestOptions:(id)a5 completion:(id)a6;
- (void)forceAudioSessionInactiveWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)getCachedObjectsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)getDeferredObjectsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)getRemoteClockTimerSnapshotWithCompletion:(id)a3;
- (void)interstitialProvider:(id)a3 handlePhase:(int64_t)a4 displayText:(id)a5 speakableText:(id)a6 expectedDelay:(double)a7 context:(id)a8 completion:(id)a9;
- (void)invalidate;
- (void)preheatWithStyle:(int64_t)a3 forOptions:(id)a4;
- (void)prepareForPhoneCall;
- (void)reportIssueForError:(id)a3 type:(int64_t)a4 context:(id)a5;
- (void)reportIssueForError:(id)a3 type:(int64_t)a4 subtype:(id)a5 context:(id)a6;
- (void)reportIssueForType:(id)a3 subtype:(id)a4 context:(id)a5;
- (void)requestBarrier:(id)a3;
- (void)requestBarrierIfNecessary:(id)a3;
- (void)requestDidAskForTimeoutExtension:(double)a3;
- (void)resumeInterruptedAudioPlaybackIfNeeded;
- (void)rollbackClearContext;
- (void)rollbackRequest;
- (void)sendGenericAceCommand:(id)a3 turnIdentifier:(id)a4 conflictHandler:(id)a5;
- (void)sendReplyCommand:(id)a3;
- (void)setAccessibilityState:(id)a3;
- (void)setAlertContextWithBulletins:(id)a3;
- (void)setAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)a3;
- (void)setApplicationContext:(id)a3;
- (void)setApplicationContextForApplicationInfos:(id)a3;
- (void)setApplicationContextForApplicationInfos:(id)a3 withRefId:(id)a4;
- (void)setCarDNDActive:(BOOL)a3;
- (void)setCarOwnsMainAudio:(BOOL)a3;
- (void)setConfiguration:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDeviceRingerSwitchState:(int64_t)a3;
- (void)setIsDeviceInStarkMode:(BOOL)a3;
- (void)setIsEyesFree:(BOOL)a3;
- (void)setModesConfiguration:(id)a3;
- (void)setMyriadDecisionResult:(BOOL)a3;
- (void)setOverriddenApplicationContext:(id)a3 withContext:(id)a4;
- (void)setShouldWaitForMyriad:(BOOL)a3;
- (void)setSupportsCarPlayVehicleData:(BOOL)a3;
- (void)setVoiceOverIsActive:(BOOL)a3;
- (void)setWatchAuthenticated:(BOOL)a3;
- (void)startAcousticIDRequestWithOptions:(id)a3;
- (void)startAudioPlaybackRequest:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)startContinuationRequestWithUserInfo:(id)a3;
- (void)startDirectActionRequestWithString:(id)a3;
- (void)startRecordingForPendingSpeechRequestWithOptions:(id)a3 completion:(id)a4;
- (void)startRequestWithCorrectedText:(id)a3 forSpeechIdentifier:(id)a4 userSelectionResults:(id)a5 turnIdentifier:(id)a6;
- (void)startRequestWithInfo:(id)a3 activationEvent:(int64_t)a4;
- (void)startRequestWithText:(id)a3;
- (void)startSpeechPronunciationRequestWithOptions:(id)a3 pronunciationContext:(id)a4;
- (void)startSpeechRequestWithOptions:(id)a3;
- (void)stopSpeechWithOptions:(id)a3;
- (void)telephonyRequestCompleted;
- (void)updateSpeechOptions:(id)a3;
- (void)updateSpeechSynthesisRecord:(id)a3;
- (void)willPresentUI;
- (void)willPresentUsefulUserResultWithType:(int64_t)a3 forCommand:(id)a4;
- (void)willSetApplicationContextWithRefId:(id)a3;
@end

@implementation AFConnection

+ (id)outputVoice
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 outputVoice];

  return v3;
}

+ (BOOL)isAvailable
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[AFConnection isNetworkAvailable])
  {
    v2 = AFSiriLogContextConnection;
    LOBYTE(v3) = 1;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "+[AFConnection isAvailable]";
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Network is available. Evaluating AFConnection as available.", &v11, 0xCu);
    }

    goto LABEL_15;
  }

  if (AFDeviceSupportsSiriUOD())
  {
    v4 = +[AFConnection currentLanguageCode];
    v3 = [AFFeatureFlags isSiriUODAvailableForLanguage:v4];
    v5 = AFSiriLogContextConnection;
    v6 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6)
      {
        v11 = 136315394;
        v12 = "+[AFConnection isAvailable]";
        v13 = 2112;
        v14 = v4;
        v7 = "%s Network is not available but device supports Understanding On Device for %@. Evaluating AFConnection as available.";
LABEL_13:
        _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, v7, &v11, 0x16u);
      }
    }

    else if (v6)
    {
      v11 = 136315394;
      v12 = "+[AFConnection isAvailable]";
      v13 = 2112;
      v14 = v4;
      v7 = "%s Network is not available and language %@ is not supported for Understanding On Device. Evaluating AFConnection as NOT available.";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "+[AFConnection isAvailable]";
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Network is not available and device does not support Understanding On Device. Evaluating AFConnection as NOT available.", &v11, 0xCu);
  }

  LOBYTE(v3) = 0;
LABEL_15:
  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (BOOL)isNetworkAvailable
{
  if (!sAvailabilityObserver)
  {
    [a1 beginMonitoringAvailability];
  }

  v3 = [a1 _networkAvailability];
  v4 = [v3 isAvailable];

  return v4;
}

- (void)clearContext
{
  v2 = [(AFConnection *)self _clientService];
  [v2 clearContext];
}

- (id)_clientService
{
  v2 = [(AFConnection *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    instanceContext = self->_instanceContext;
    if (instanceContext)
    {
      v5 = instanceContext;
    }

    else
    {
      v5 = +[AFInstanceContext defaultContext];
    }

    v6 = v5;
    v7 = [(AFInstanceContext *)v5 createXPCConnectionWithMachServiceName:@"com.apple.assistant.client" options:0];
    v8 = self->_connection;
    self->_connection = v7;

    objc_initWeak(&location, self);
    v9 = self->_targetQueue;
    v10 = self->_connection;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __27__AFConnection__connection__block_invoke;
    v27[3] = &unk_1E73470E0;
    v11 = v9;
    v28 = v11;
    objc_copyWeak(&v29, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:v27];
    v12 = self->_connection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __27__AFConnection__connection__block_invoke_234;
    v24[3] = &unk_1E73470E0;
    v13 = v11;
    v25 = v13;
    objc_copyWeak(&v26, &location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v24];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INTERACTIVE, 0);

    v16 = dispatch_queue_create("AFConnection", v15);
    [(NSXPCConnection *)self->_connection _setQueue:v16];
    v17 = self->_connection;
    v18 = AFClientServiceXPCInterface();
    [(NSXPCConnection *)v17 setRemoteObjectInterface:v18];

    v19 = self->_connection;
    v20 = AFClientServiceDelegateXPCInterface();
    [(NSXPCConnection *)v19 setExportedInterface:v20];

    v21 = self->_connection;
    v22 = [[AFConnectionClientServiceDelegate alloc] initWithConnection:self targetQueue:self->_targetQueue];
    [(NSXPCConnection *)v21 setExportedObject:v22];

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v26);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);

    connection = self->_connection;
  }

  return connection;
}

- (void)willPresentUI
{
  v3 = [(AFConnection *)self _clientService];
  [v3 willPresentUIWithReply:&__block_literal_global_317];

  v4 = [(AFConnection *)self _siriClientStateManager];
  [v4 beginSessionForClient:self->_clientID];
}

- (id)_siriClientStateManager
{
  siriClientStateManager = self->_siriClientStateManager;
  if (!siriClientStateManager)
  {
    v4 = +[AFSiriClientStateManager sharedManager];
    v5 = self->_siriClientStateManager;
    self->_siriClientStateManager = v4;

    siriClientStateManager = self->_siriClientStateManager;
  }

  return siriClientStateManager;
}

- (id)_clientConfiguration
{
  clientConfiguration = self->_clientConfiguration;
  if (!clientConfiguration)
  {
    v4 = +[AFAccessibilityObserver sharedObserver];
    v5 = +[AFDeviceRingerSwitchObserver sharedObserver];
    v6 = [AFClientConfiguration alloc];
    v7 = [v4 currentState];
    LOWORD(v13) = 0;
    LOBYTE(v12) = 0;
    v8 = -[AFClientConfiguration initWithAccessibilityState:deviceRingerSwitchState:isDeviceInCarDNDMode:isDeviceInStarkMode:supportsCarPlayVehicleData:isDeviceWatchAuthenticated:areAnnouncementRequestsPermittedByPresentationWhileActive:outputVolume:tapToSiriAudioPlaybackRequest:twoShotAudioPlaybackRequest:deviceSetupFlowBeginDate:deviceSetupFlowEndDate:carOwnsMainAudio:isEyesFreeDevice:](v6, "initWithAccessibilityState:deviceRingerSwitchState:isDeviceInCarDNDMode:isDeviceInStarkMode:supportsCarPlayVehicleData:isDeviceWatchAuthenticated:areAnnouncementRequestsPermittedByPresentationWhileActive:outputVolume:tapToSiriAudioPlaybackRequest:twoShotAudioPlaybackRequest:deviceSetupFlowBeginDate:deviceSetupFlowEndDate:carOwnsMainAudio:isEyesFreeDevice:", v7, [v5 state], 0, 0, 0, 0, 0.0, v12, 0, 0, 0, 0, v13);
    v9 = self->_clientConfiguration;
    self->_clientConfiguration = v8;

    *(self + 280) &= ~1u;
    clientConfiguration = self->_clientConfiguration;
  }

  v10 = [(AFClientConfiguration *)clientConfiguration copy];

  return v10;
}

- (id)_startRequestMetricSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = self->_preferences;
  v5 = [(AFPreferences *)v4 languageCode];
  if (v5)
  {
    [v3 setValue:v5 forKey:@"siriInputLanguage"];
  }

  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if ((AFIsHorseman_isHorseman & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E696AD98] numberWithBool:AFPreferencesTypeToSiriEnabled()];
    [v6 setObject:v7 forKey:@"typeToSiri"];

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFPreferences alwaysShowRecognizedSpeech](v4, "alwaysShowRecognizedSpeech")}];
    [v6 setObject:v8 forKey:@"showRecognizedSpeech"];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFPreferences siriResponseShouldAlwaysPrint](v4, "siriResponseShouldAlwaysPrint")}];
    [v6 setObject:v9 forKey:@"captionVoiceFeedback"];

    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFPreferences alwaysObscureBackgroundContentWhenActive](v4, "alwaysObscureBackgroundContentWhenActive")}];
    [v6 setObject:v10 forKey:@"hideBackgroundContent"];

    v11 = [(AFConnection *)self _metricContextValueForUseDeviceSpeakerForTTS:[(AFPreferences *)v4 useDeviceSpeakerForTTS]];
    if (v11)
    {
      [v6 setObject:v11 forKey:@"useSpeakerForTTS"];
    }

    [v3 setValue:v6 forKey:@"requestSettings"];
  }

  return v3;
}

- (void)_updateClientConfiguration
{
  if ((*(self + 280) & 1) == 0)
  {
    v3 = [(AFConnection *)self _clientService];
    v4 = [(AFConnection *)self _clientConfiguration];
    [v3 setConfiguration:v4];

    *(self + 280) |= 1u;
  }
}

- (void)_willCancelRequest
{
  v26 = *MEMORY[0x1E69E9840];
  p_activeRequestType = &self->_activeRequestType;
  if (self->_activeRequestType)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      activeRequestUUID = self->_activeRequestUUID;
      *buf = 136315650;
      v21 = "[AFConnection _willCancelRequest]";
      v22 = 2048;
      v23 = self;
      v24 = 2112;
      v25 = activeRequestUUID;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
    }

    v7 = NSStringFromSelector(a2);
    [(AFConnection *)self _endInterstitialsForReason:v7];

    *p_activeRequestType = 0;
    p_activeRequestType[1] = 0;
    analytics = self->_analytics;
    v9 = self->_activeRequestUUID;
    if (v9)
    {
      v10 = [(NSUUID *)v9 UUIDString];
      v19 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [(AFAnalytics *)analytics logEventWithType:1912 context:v11];
    }

    else
    {
      [(AFAnalytics *)self->_analytics logEventWithType:1912 context:0];
    }

    +[AFAggregator logSiriRequestCancelled];
    v12 = +[AFDeviceRingerSwitchObserver sharedObserver];
    [v12 removeListener:self];

    v13 = +[AFAccessibilityObserver sharedObserver];
    [v13 removeListener:self];

    v14 = [(AFConnection *)self _siriClientStateManager];
    [v14 endRequestWithUUID:self->_activeRequestUUID forClient:self->_clientID];

    _LogUEIRequestCategorization(self->_activeTurnIdentifier, 1, self->_activeRequestTypeForRequestCategorization);
    activeTurnIdentifier = self->_activeTurnIdentifier;
    self->_activeTurnIdentifier = 0;

    self->_activeRequestActivationEvent = 0;
    self->_activeRequestSpeechEvent = 0;
    *(&self->_activeRequestSpeechEvent + 7) = 0;
    *&self->_activeRequestBeginTime = 0u;
    *&self->_activeRequestNumberOfPresentedInterstitials = 0u;
    *&self->_activeRequestStartSpeechTimeAPICalled = 0u;
    *&self->_activeRequestStopSpeechTimeAPICalled = 0u;
    *&self->_activeRequestSpeechRecognitionTimeInterval = 0u;
    v16 = self->_activeRequestUUID;
    self->_activeRequestUUID = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_requestDidEnd
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFConnection _requestDidEnd]";
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %p", &v8, 0x16u);
  }

  *(self + 224) &= ~8u;
  outstandingRequestClass = self->_outstandingRequestClass;
  self->_outstandingRequestClass = 0;

  v6 = NSStringFromSelector(a2);
  [(AFConnection *)self _endInterstitialsForReason:v6];
  [(AFConnection *)self _cancelRequestTimeoutForReason:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateStateIfNotInSync
{
  if ((*(self + 224) & 1) == 0)
  {
    [(AFConnection *)self _updateState];
  }
}

- (void)_updateState
{
  v3 = [(AFConnection *)self _clientService];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__AFConnection__updateState__block_invoke;
  v4[3] = &unk_1E73417B8;
  v4[4] = self;
  [v3 requestStateUpdateWithReply:v4];
}

- (void)_tellDelegateRequestWillStart
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 assistantConnectionRequestWillStart:self];
  }
}

void __28__AFConnection__updateState__block_invoke(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__AFConnection__updateState__block_invoke_2;
  v5[3] = &unk_1E73469A8;
  v5[4] = v3;
  v7 = a2;
  v6 = a3;
  dispatch_async(v4, v5);
}

uint64_t __28__AFConnection__updateState__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 224) |= 1u;
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = *(a1 + 44);
    v5 = v2;
    v6 = [v3 numberWithBool:v4];
    v14 = 136315394;
    v15 = "[AFConnection _updateState]_block_invoke_2";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Updated internal state. ShouldSpeak %@", &v14, 0x16u);
  }

  [*(a1 + 32) _setShouldSpeak:*(a1 + 44)];
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = *(a1 + 40);
    v10 = v7;
    v11 = [v8 numberWithUnsignedInt:v9];
    v14 = 136315394;
    v15 = "[AFConnection _updateState]_block_invoke";
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s Updated internal state. AudioSessionID %@", &v14, 0x16u);
  }

  result = [*(a1 + 32) _setAudioSessionID:*(a1 + 40)];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (AFAssistantUIService)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_tellDelegateInvalidateCurrentUserActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 assistantConnectionInvalidateCurrentUserActivity:self];
  }
}

- (void)_markNetworkDidBecomeActive
{
  self->_connectionHadActiveNetwork = 1;
  if (!AFDeviceSupportsSiriUOD() || (+[AFConnection currentLanguageCode], v3 = objc_claimAutoreleasedReturnValue(), v4 = [AFFeatureFlags isSiriUODAvailableForLanguage:v3], v3, !v4))
  {

    [(AFConnection *)self _extendExpiringRequestTimeout];
  }
}

+ (id)currentLanguageCode
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 languageCode];

  return v3;
}

- (void)_willCompleteRequest
{
  v27 = *MEMORY[0x1E69E9840];
  p_activeRequestType = &self->_activeRequestType;
  if (self->_activeRequestType)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      activeRequestUUID = self->_activeRequestUUID;
      *buf = 136315650;
      v22 = "[AFConnection _willCompleteRequest]";
      v23 = 2048;
      v24 = self;
      v25 = 2112;
      v26 = activeRequestUUID;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
    }

    v7 = NSStringFromSelector(a2);
    [(AFConnection *)self _endInterstitialsForReason:v7];

    *p_activeRequestType = 0;
    p_activeRequestType[1] = 0;
    analytics = self->_analytics;
    v9 = self->_activeRequestUUID;
    if (v9)
    {
      v10 = [(NSUUID *)v9 UUIDString];
      v20 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [(AFAnalytics *)analytics logEventWithType:1914 context:v11];
    }

    else
    {
      [(AFAnalytics *)self->_analytics logEventWithType:1914 context:0];
    }

    +[AFAggregator logSiriRequestSucceeded];
    v12 = +[AFDeviceRingerSwitchObserver sharedObserver];
    [v12 removeListener:self];

    v13 = +[AFAccessibilityObserver sharedObserver];
    [v13 removeListener:self];

    v14 = [(AFConnection *)self _siriClientStateManager];
    [v14 endRequestWithUUID:self->_activeRequestUUID forClient:self->_clientID];

    _LogUEIRequestCategorization(self->_activeTurnIdentifier, 3, self->_activeRequestTypeForRequestCategorization);
    activeTurnIdentifier = self->_activeTurnIdentifier;
    self->_activeTurnIdentifier = 0;

    self->_activeRequestTypeForRequestCategorization = 0;
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if (AFIsHorseman_isHorseman)
    {
      goto LABEL_13;
    }

    if (AFIsPad_onceToken != -1)
    {
      dispatch_once(&AFIsPad_onceToken, &__block_literal_global_214_46076);
    }

    if (AFIsPad_isPad == 1)
    {
LABEL_13:
      v16 = [(AFConnection *)self _clientService];
      [v16 emitHomeMetricInvocationEvent];
    }

    *&self->_activeRequestHasSpeechRecognition = 0;
    self->_activeRequestIsTwoShot = 0;
    self->_activeRequestActivationEvent = 0;
    self->_activeRequestSpeechEvent = 0;
    *&self->_activeRequestBeginTime = 0u;
    *&self->_activeRequestNumberOfPresentedInterstitials = 0u;
    *&self->_activeRequestStartSpeechTimeAPICalled = 0u;
    *&self->_activeRequestStopSpeechTimeAPICalled = 0u;
    *&self->_activeRequestSpeechRecognitionTimeInterval = 0u;
    v17 = self->_activeRequestUUID;
    self->_activeRequestUUID = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (AFSpeechDelegate)speechDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_speechDelegate);

  return WeakRetained;
}

- (void)_speechRecordingDidFailWithError:(id)a3
{
  v6 = a3;
  if (self->_activeRequestType == 1)
  {
    v5 = NSStringFromSelector(a2);
    [(AFConnection *)self _cancelRequestTimeoutForReason:v5];
  }

  [(AFConnection *)self _updateStateIfNotInSync];
  [(AFConnection *)self _checkAndSetIsCapturingSpeech:0];
  [(AFConnection *)self _tellSpeechDelegateRecordingDidFail:v6];
}

- (void)updateSpeechSynthesisRecord:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _clientService];
  [v5 updateSpeechSynthesisRecord:v4];
}

- (void)startAudioPlaybackRequest:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__AFConnection_startAudioPlaybackRequest_options_completion___block_invoke;
  v16 = &unk_1E7348AD0;
  v17 = v8;
  v18 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [(AFConnection *)self _clientServiceWithErrorHandler:&v13];
  [v12 startAudioPlaybackRequest:v11 options:a4 reply:{v10, v13, v14, v15, v16}];
}

void __61__AFConnection_startAudioPlaybackRequest_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 136315650;
    v9 = "[AFConnection startAudioPlaybackRequest:options:completion:]_block_invoke";
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Fail to start audio playback request %{public}@ due to error %{public}@.", &v8, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkLanguageReady:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 1);
  }
}

- (void)willPresentUsefulUserResultWithType:(int64_t)a3 forCommand:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  analytics = self->_analytics;
  v7 = AFAnalyticsContextCreateWithCommand(a4);
  [(AFAnalytics *)analytics logEventWithType:1420 context:v7];

  if (self->_uufrID && self->_activeRequestUUID && self->_activeRequestType)
  {
    v8 = AFSiriLogContextConnection;
    v9 = v8;
    uufrID = self->_uufrID;
    if (uufrID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v12 = 136315394;
      v13 = "SiriX";
      v14 = 2080;
      v15 = "enableTelemetry=YES";
      _os_signpost_emit_with_name_impl(&dword_1912FE000, v9, OS_SIGNPOST_INTERVAL_END, uufrID, "UsefulUserFacingResults", "%s %s", &v12, 0x16u);
    }
  }

  [(AFConnection *)self _willPresentUsefulUserResultWithType:a3];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)telephonyRequestCompleted
{
  v2 = [(AFConnection *)self _clientService];
  [v2 telephonyRequestCompleted];
}

- (void)prepareForPhoneCall
{
  v2 = [(AFConnection *)self _clientService];
  [v2 prepareForPhoneCall];
}

- (void)setAlertContextWithBulletins:(id)a3
{
  v4 = [a3 copy];
  cachedBulletins = self->_cachedBulletins;
  self->_cachedBulletins = v4;

  v6 = [(AFConnection *)self _clientService];
  [v6 setAlertContextDirty];
}

- (void)setOverriddenApplicationContext:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFConnection *)self _clientService];
  [v8 setOverriddenApplicationContext:v7 withContext:v6];
}

- (void)setApplicationContextForApplicationInfos:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _clientService];
  [v5 fetchAppicationContextForApplicationInfo:v4 supplementalContext:0 refID:0];
}

- (void)setApplicationContextForApplicationInfos:(id)a3 withRefId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFConnection *)self _clientService];
  [v8 fetchAppicationContextForApplicationInfo:v7 supplementalContext:0 refID:v6];
}

- (void)fetchAppicationContextForApplicationInfo:(id)a3 supplementalContext:(id)a4 refID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AFConnection *)self _clientService];
  [v11 fetchAppicationContextForApplicationInfo:v10 supplementalContext:v9 refID:v8];
}

- (void)setApplicationContext:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _clientService];
  [v5 setApplicationContext:v4];
}

- (void)willSetApplicationContextWithRefId:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _clientService];
  [v5 willSetApplicationContextWithRefId:v4];
}

- (void)getRemoteClockTimerSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__AFConnection_getRemoteClockTimerSnapshotWithCompletion___block_invoke;
    v10[3] = &unk_1E7348AA8;
    v6 = v4;
    v11 = v6;
    v7 = [(AFConnection *)self _clientServiceWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AFConnection_getRemoteClockTimerSnapshotWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7341A68;
    v9 = v6;
    [v7 getRemoteClockTimerSnapshotWithCompletion:v8];
  }
}

- (void)getCachedObjectsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFConnection *)self _clientService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__AFConnection_getCachedObjectsWithIdentifiers_completion___block_invoke;
  v10[3] = &unk_1E73454F0;
  v11 = v6;
  v9 = v6;
  [v8 getSerializedCachedObjectsWithIdentifiers:v7 completion:v10];
}

void __59__AFConnection_getCachedObjectsWithIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AFOneArgumentSafetyBlock alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__AFConnection_getCachedObjectsWithIdentifiers_completion___block_invoke_2;
  v13[3] = &unk_1E7341A18;
  v14 = *(a1 + 32);
  v5 = [(AFOneArgumentSafetyBlock *)v4 initWithBlock:v13 defaultValue:MEMORY[0x1E695E0F8]];
  INSerializedCacheItemClass = getINSerializedCacheItemClass();
  v7 = MEMORY[0x1E695DFD8];
  v8 = [v3 allValues];

  v9 = [v7 setWithArray:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__AFConnection_getCachedObjectsWithIdentifiers_completion___block_invoke_3;
  v11[3] = &unk_1E7341A40;
  v12 = v5;
  v10 = v5;
  [INSerializedCacheItemClass deserializeCacheItems:v9 completion:v11];
}

uint64_t __59__AFConnection_getCachedObjectsWithIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __59__AFConnection_getCachedObjectsWithIdentifiers_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 cacheIdentifier];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) invokeWithValue:v4];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)getDeferredObjectsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFConnection *)self _clientService];
  [v8 getDeferredObjectsWithIdentifiers:v7 completion:v6];
}

- (void)sendReplyCommand:(id)a3
{
  v7 = a3;
  v4 = [v7 refId];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_replyHandlerForAceId objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, v7);
      [(NSMutableDictionary *)self->_replyHandlerForAceId removeObjectForKey:v4];
    }
  }
}

- (void)sendGenericAceCommand:(id)a3 turnIdentifier:(id)a4 conflictHandler:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v37 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 aceId];

    if (!v10)
    {
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 UUIDString];

      v13 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v49 = "[AFConnection sendGenericAceCommand:turnIdentifier:conflictHandler:]";
        v50 = 2112;
        v51 = v12;
        _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s passed command without ACE ID; inventing one (%@)", buf, 0x16u);
      }

      [v8 setAceId:v12];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v34 = v8;
    if (isKindOfClass)
    {
      v14 = [v8 commands];
    }

    else
    {
      v47 = v8;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v38 = *MEMORY[0x1E69C82B8];
      v35 = *MEMORY[0x1E69C82B0];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          v20 = [v19 encodedClassName];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v19;
            objc_opt_class();
            v22 = objc_opt_isKindOfClass();
          }

          else
          {
            v23 = [v20 isEqualToString:v38];
            v24 = 0x1E69C7AB0;
            if ((v23 & 1) != 0 || (v25 = [v20 isEqualToString:v35], v24 = 0x1E69C7AA8, v25))
            {
              v26 = *v24;
              v21 = objc_opt_class();
              if (v21)
              {
                if (objc_opt_isKindOfClass())
                {
                  v21 = v19;
                }

                else
                {
                  v27 = [v21 alloc];
                  v28 = [v19 dictionary];
                  v21 = [v27 initWithDictionary:v28];
                }
              }

              v22 = 0;
            }

            else
            {
              v22 = 0;
              v21 = 0;
            }
          }

          if (v21)
          {
            if ((v22 & 1) == 0)
            {
              [(AFConnection *)self _startRequestWithAceCommand:v21 turnIdentifier:v37 suppressAlert:isKindOfClass & 1];
              goto LABEL_32;
            }

LABEL_28:
            v29 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v49 = "[AFConnection sendGenericAceCommand:turnIdentifier:conflictHandler:]";
              _os_log_impl(&dword_1912FE000, v29, OS_LOG_TYPE_INFO, "%s Performing BackgroundUpdateRequest outside normal request processing flow.", buf, 0xCu);
            }

            v30 = [v19 encodedClassName];
            [(AFConnection *)self _requestWillBeginWithRequestClass:v30 isSpeechRequest:0 speechRequestOptions:0 requestInfo:0 isBackgroundRequest:1 analyticsEventProvider:0];

            goto LABEL_31;
          }

          if (v22)
          {
            goto LABEL_28;
          }

LABEL_31:
          v31 = [(AFConnection *)self _clientService];
          v32 = [v19 dictionary];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __69__AFConnection_sendGenericAceCommand_turnIdentifier_conflictHandler___block_invoke;
          v40[3] = &unk_1E7345518;
          v41 = v9;
          [v31 performGenericAceCommand:v32 interruptOutstandingRequest:v9 == 0 reply:v40];

LABEL_32:
        }

        v16 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v16);
    }

    v8 = v34;
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __69__AFConnection_sendGenericAceCommand_turnIdentifier_conflictHandler___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)rollbackRequest
{
  v3 = NSStringFromSelector(a2);
  [(AFConnection *)self _cancelRequestTimeoutForReason:v3];

  v4 = [(AFConnection *)self _clientService];
  [v4 rollbackRequest];
}

- (void)rollbackClearContext
{
  v2 = [(AFConnection *)self _clientService];
  [v2 rollbackClearContext];
}

- (void)updateSpeechOptions:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[AFConnection updateSpeechOptions:]";
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", &v10, 0x20u);
  }

  analytics = self->_analytics;
  v7 = AFAnalyticsContextCreateWithSpeechRequestOptions(v4);
  [(AFAnalytics *)analytics logEventWithType:1909 context:v7 contextNoCopy:0];

  v8 = [(AFConnection *)self _clientService];
  [v8 updateSpeechOptions:v4];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stopSpeechWithOptions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  kdebug_trace();
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "[AFConnection stopSpeechWithOptions:]";
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", &v15, 0x20u);
  }

  [(AFConnection *)self _checkAndSetIsCapturingSpeech:0];
  analytics = self->_analytics;
  v7 = AFAnalyticsContextCreateWithSpeechRequestOptions(v4);
  [(AFAnalytics *)analytics logEventWithType:1910 context:v7 contextNoCopy:0];

  v8 = [(AFConnection *)self _clientService];
  [v8 stopSpeechWithOptions:v4];

  if (self->_activeRequestType == 1 && self->_activeRequestStopSpeechTimeAPICalled == 0.0)
  {
    v9 = [MEMORY[0x1E696AE30] processInfo];
    [v9 systemUptime];
    self->_activeRequestStopSpeechTimeAPICalled = v10;

    if (v4)
    {
      if ([v4 stopRecordingHostTime])
      {
        v11 = [v4 stopRecordingHostTime];
        if (_AFMachAbsoluteTimeRate_onceToken == -1)
        {
          goto LABEL_8;
        }
      }

      else
      {
        [v4 activationEventTime];
        if (v13 > 0.0)
        {
          [v4 activationEventTime];
          goto LABEL_11;
        }

        if (![v4 activationEventMachAbsoluteTime])
        {
          goto LABEL_12;
        }

        v11 = [v4 activationEventMachAbsoluteTime];
        if (_AFMachAbsoluteTimeRate_onceToken == -1)
        {
LABEL_8:
          v12 = *&_AFMachAbsoluteTimeRate_rate * v11 / 1000000000.0;
LABEL_11:
          self->_activeRequestStopSpeechTimeRequested = v12;
          goto LABEL_12;
        }
      }

      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
      goto LABEL_8;
    }
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reportIssueForType:(id)a3 subtype:(id)a4 context:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v10 = [(AFConnection *)self _clientService];
    [v10 reportIssueForType:v11 subtype:v8 context:v9];
  }
}

- (void)reportIssueForError:(id)a3 type:(int64_t)a4 subtype:(id)a5 context:(id)a6
{
  v13 = a3;
  v10 = a5;
  v11 = a6;
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v12 = [(AFConnection *)self _clientService];
    [v12 reportIssueForError:v13 type:a4 subtype:v10 context:v11];
  }
}

- (void)reportIssueForError:(id)a3 type:(int64_t)a4 context:(id)a5
{
  v10 = a3;
  v8 = a5;
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v9 = [(AFConnection *)self _clientService];
    [v9 reportIssueForError:v10 type:a4 context:v8];
  }
}

- (void)failRequestWithError:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "[AFConnection failRequestWithError:]";
    v16 = 2048;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %p %@", &v14, 0x20u);
  }

  v6 = [(AFConnection *)self _siriClientStateManager];
  [v6 beginTransactionForReason:3];

  v7 = [v4 domain];
  if (![v7 isEqualToString:@"kAFAssistantErrorDomain"])
  {
    goto LABEL_8;
  }

  v8 = [v4 code];

  if (v8 == 1)
  {
    if (self->_lastRetryError)
    {
      v9 = [v4 userInfo];
      v10 = [v9 objectForKey:*MEMORY[0x1E696AA08]];

      if (!v10)
      {
        [AFError errorWithCode:1 description:@"kAFAssistantErrorDomain" underlyingError:self->_lastRetryError];
        v4 = v7 = v4;
LABEL_8:
      }
    }
  }

  [(AFConnection *)self _willFailRequestWithError:v4];
  [(AFConnection *)self _requestDidEnd];
  [(AFConnection *)self _checkAndSetIsCapturingSpeech:0];
  v11 = [(AFConnection *)self _clientService];
  [v11 cancelRequestForReason:3 withError:v4];

  v12 = [(AFConnection *)self _siriClientStateManager];
  [v12 endTransactionForReason:3];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cancelRequestForReason:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[AFConnection cancelRequestForReason:]";
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s reason = %ld", &v10, 0x16u);
  }

  v6 = [(AFConnection *)self _siriClientStateManager];
  [v6 beginTransactionForReason:2];

  [(AFConnection *)self _willCancelRequest];
  [(AFConnection *)self _requestDidEnd];
  [(AFConnection *)self _checkAndSetIsCapturingSpeech:0];
  v7 = [(AFConnection *)self _clientService];
  [v7 cancelRequestForReason:a3 withError:0];

  v8 = [(AFConnection *)self _siriClientStateManager];
  [v8 endTransactionForReason:2];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)cancelRequest
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AFConnection cancelRequest]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  [(AFConnection *)self cancelRequestForReason:13];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)cancelSpeech
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AFConnection cancelSpeech]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v5, 0x16u);
  }

  [(AFConnection *)self cancelRequest];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)startAcousticIDRequestWithOptions:(id)a3
{
  v4 = a3;
  [(AFConnection *)self _checkAndSetIsCapturingSpeech:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__AFConnection_startAcousticIDRequestWithOptions___block_invoke;
  v14[3] = &unk_1E73419C8;
  v15 = v4;
  v16 = self;
  v5 = v4;
  [(AFConnection *)self _requestWillBeginWithRequestClass:0 isSpeechRequest:1 speechRequestOptions:v5 requestInfo:0 analyticsEventProvider:v14];
  v6 = self->_activeRequestUUID;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__AFConnection_startAcousticIDRequestWithOptions___block_invoke_2;
  v12[3] = &unk_1E73419F0;
  v12[4] = self;
  v7 = v6;
  v13 = v7;
  v8 = [(AFConnection *)self _clientServiceWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__AFConnection_startAcousticIDRequestWithOptions___block_invoke_2_350;
  v10[3] = &unk_1E73419F0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 startAcousticIDRequestWithOptions:v5 context:0 completion:v10];
}

uint64_t __50__AFConnection_startAcousticIDRequestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFAnalyticsContextCreateWithSpeechRequestOptions(*(a1 + 32));
  v22[0] = v4;
  v20[0] = @"unixTime";
  v5 = MEMORY[0x1E696AD98];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v20[1] = @"id";
  v21[0] = v7;
  v8 = [v3 UUIDString];
  v21[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v22[1] = v9;
  v10 = [*(a1 + 40) _startRequestMetricSettings];
  v22[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v12 = AFAnalyticsContextsMerge(v11);

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v19[0] = v12;
    v13 = AFAnalyticsTurnContextCreateWithSpeechRequestOptions(*(a1 + 32));
    v19[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v15 = AFAnalyticsContextsMerge(v14);

    v12 = v15;
  }

  v16 = AFAnalyticsEventCreateCurrent(1904, v12);

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __50__AFConnection_startAcousticIDRequestWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[AFConnection startAcousticIDRequestWithOptions:]_block_invoke_2";
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ErrorHandler %{public}@", buf, 0x16u);
  }

  v5 = [AFError errorWithCode:7 description:0 underlyingError:v3];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AFConnection_startAcousticIDRequestWithOptions___block_invoke_349;
  block[3] = &unk_1E73494B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  dispatch_async(v8, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __50__AFConnection_startAcousticIDRequestWithOptions___block_invoke_2_350(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AFConnection_startAcousticIDRequestWithOptions___block_invoke_3;
  block[3] = &unk_1E73494B0;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

- (void)startSpeechPronunciationRequestWithOptions:(id)a3 pronunciationContext:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v25 = "[AFConnection startSpeechPronunciationRequestWithOptions:pronunciationContext:]";
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  [(AFConnection *)self _checkAndSetIsCapturingSpeech:1];
  v10 = [v7 serverCommandId];

  if (v10)
  {
    v11 = NSStringFromSelector(a2);
    [(AFConnection *)self _extendRequestTimeoutForReason:v11 durationInSeconds:0.0];
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__AFConnection_startSpeechPronunciationRequestWithOptions_pronunciationContext___block_invoke;
    v21[3] = &unk_1E73419C8;
    v22 = v7;
    v23 = self;
    [(AFConnection *)self _requestWillBeginWithRequestClass:0 isSpeechRequest:1 speechRequestOptions:v22 requestInfo:0 analyticsEventProvider:v21];
    v11 = v22;
  }

  v12 = self->_activeRequestUUID;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__AFConnection_startSpeechPronunciationRequestWithOptions_pronunciationContext___block_invoke_2;
  v19[3] = &unk_1E73419F0;
  v19[4] = self;
  v13 = v12;
  v20 = v13;
  v14 = [(AFConnection *)self _clientServiceWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__AFConnection_startSpeechPronunciationRequestWithOptions_pronunciationContext___block_invoke_2_348;
  v17[3] = &unk_1E73419F0;
  v17[4] = self;
  v18 = v13;
  v15 = v13;
  [v14 startSpeechPronunciationRequestWithOptions:v7 context:v8 completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __80__AFConnection_startSpeechPronunciationRequestWithOptions_pronunciationContext___block_invoke(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFAnalyticsContextCreateWithSpeechRequestOptions(*(a1 + 32));
  v22[0] = v4;
  v20[0] = @"unixTime";
  v5 = MEMORY[0x1E696AD98];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v20[1] = @"id";
  v21[0] = v7;
  v8 = [v3 UUIDString];
  v21[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v22[1] = v9;
  v10 = [*(a1 + 40) _startRequestMetricSettings];
  v22[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v12 = AFAnalyticsContextsMerge(v11);

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v19[0] = v12;
    v13 = AFAnalyticsTurnContextCreateWithSpeechRequestOptions(*(a1 + 32));
    v19[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v15 = AFAnalyticsContextsMerge(v14);

    v12 = v15;
  }

  v16 = AFAnalyticsEventCreateCurrent(1903, v12);

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __80__AFConnection_startSpeechPronunciationRequestWithOptions_pronunciationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[AFConnection startSpeechPronunciationRequestWithOptions:pronunciationContext:]_block_invoke_2";
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ErrorHandler %{public}@", buf, 0x16u);
  }

  v5 = [AFError errorWithCode:7 description:0 underlyingError:v3];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__AFConnection_startSpeechPronunciationRequestWithOptions_pronunciationContext___block_invoke_347;
  block[3] = &unk_1E73494B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  dispatch_async(v8, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __80__AFConnection_startSpeechPronunciationRequestWithOptions_pronunciationContext___block_invoke_2_348(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__AFConnection_startSpeechPronunciationRequestWithOptions_pronunciationContext___block_invoke_3;
  block[3] = &unk_1E73494B0;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

- (id)startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v40 = "[AFConnection startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:]";
    v41 = 2048;
    v42 = self;
    v43 = 2112;
    v44 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  +[AFAggregator logSiriInvokedVia:](AFAggregator, "logSiriInvokedVia:", [v4 activationEvent]);
  v6 = [(AFConnection *)self _siriClientStateManager];
  [v6 beginTransactionForReason:1];

  [(AFConnection *)self _checkAndSetIsCapturingSpeech:1];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke;
  v36[3] = &unk_1E73419C8;
  v7 = v4;
  v37 = v7;
  v38 = self;
  [(AFConnection *)self _requestWillBeginWithRequestClass:0 isSpeechRequest:1 speechRequestOptions:v7 requestInfo:0 analyticsEventProvider:v36];
  pendingSpeechRequestCounter = self->_pendingSpeechRequestCounter;
  self->_pendingSpeechRequestCounter = pendingSpeechRequestCounter + 1;
  v9 = self->_activeRequestUUID;
  kdebug_trace();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_2;
  v34[3] = &unk_1E73419F0;
  v34[4] = self;
  v10 = v9;
  v35 = v10;
  v11 = [(AFConnection *)self _clientServiceWithErrorHandler:v34];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_2_345;
  v32[3] = &unk_1E73419F0;
  v32[4] = self;
  v12 = v10;
  v33 = v12;
  [v11 startRecordingForPendingSpeechRequestWithOptions:v7 requestId:pendingSpeechRequestCounter sessionUUID:v12 completion:v32];

  if ([v7 pendCallbacksUntilAfterContinuation])
  {
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = [AFSafetyBlock alloc];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_4;
    v30[3] = &unk_1E7345450;
    v15 = v13;
    v31 = v15;
    v16 = [(AFSafetyBlock *)v14 initWithBlock:v30];
    speechCallbackGroup = self->_speechCallbackGroup;
    self->_speechCallbackGroup = v15;
    v18 = v15;
  }

  else
  {
    v16 = 0;
    v18 = self->_speechCallbackGroup;
    self->_speechCallbackGroup = 0;
  }

  v19 = [(AFConnection *)self _siriClientStateManager];
  [v19 endTransactionForReason:1];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_5;
  v25[3] = &unk_1E73464F0;
  v26 = v7;
  v27 = self;
  v28 = v16;
  v29 = pendingSpeechRequestCounter;
  v20 = v16;
  v21 = v7;
  v22 = MEMORY[0x193AFB7B0](v25);

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

uint64_t __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFAnalyticsContextCreateWithSpeechRequestOptions(*(a1 + 32));
  v22[0] = v4;
  v20[0] = @"unixTime";
  v5 = MEMORY[0x1E696AD98];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v20[1] = @"id";
  v21[0] = v7;
  v8 = [v3 UUIDString];
  v21[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v22[1] = v9;
  v10 = [*(a1 + 40) _startRequestMetricSettings];
  v22[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v12 = AFAnalyticsContextsMerge(v11);

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v19[0] = v12;
    v13 = AFAnalyticsTurnContextCreateWithSpeechRequestOptions(*(a1 + 32));
    v19[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v15 = AFAnalyticsContextsMerge(v14);

    v12 = v15;
  }

  v16 = AFAnalyticsEventCreateCurrent(1902, v12);

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[AFConnection startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:]_block_invoke_2";
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ErrorHandler %{public}@", buf, 0x16u);
  }

  v5 = [AFError errorWithCode:7 description:0 underlyingError:v3];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_344;
  block[3] = &unk_1E73494B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  dispatch_async(v8, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_2_345(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_3;
  block[3] = &unk_1E73494B0;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

void __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 136315394;
    v13 = "[AFConnection startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:]_block_invoke_5";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Continuing pending speech request %p", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_346;
  v10[3] = &unk_1E73493C0;
  v7 = *(a1 + 40);
  v11 = *(a1 + 32);
  v8 = [v7 _clientServiceWithErrorHandler:v10];
  [v8 continuePendingSpeechRequestWithId:*(a1 + 56) fromTimestamp:v4];

  [*(a1 + 48) invoke];
  v9 = *MEMORY[0x1E69E9840];
}

void __84__AFConnection_startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions___block_invoke_346(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[AFConnection startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:]_block_invoke";
    v9 = 2048;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Failed continuing pending speech request %p %{public}@", &v7, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startRecordingForPendingSpeechRequestWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(AFConnection *)self startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:a3];
  v6[2](v6, v7);
}

- (void)startSpeechRequestWithOptions:(id)a3
{
  v3 = [(AFConnection *)self startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:a3];
  v3[2]();
}

- (void)_startRequestWithAceCommand:(id)a3 turnIdentifier:(id)a4 suppressAlert:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  v9 = objc_alloc_init(AFRequestInfo);
  -[AFRequestInfo setActivationEvent:](v9, "setActivationEvent:", [v10 af_activationEvent]);
  [(AFRequestInfo *)v9 setTurnIdentifier:v8];

  if (v5)
  {
    [(AFRequestInfo *)v9 setOptions:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AFRequestInfo *)v9 setStartLocalRequest:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AFRequestInfo *)v9 setStartRequest:v10];
    }
  }

  [(AFConnection *)self _startRequestWithInfo:v9];
}

- (id)_metricContextValueForUseDeviceSpeakerForTTS:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7341AD8[a3 - 1];
  }
}

- (void)_startRequestWithInfo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[AFConnection _startRequestWithInfo:]";
    v23 = 2048;
    v24 = self;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  if ([v4 activationEvent] == 2)
  {
    v6 = [v4 speechRequestOptions];
    v7 = [v6 activationEvent];

    if (v7 == 9)
    {
      kdebug_trace();
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__AFConnection__startRequestWithInfo___block_invoke;
  v18[3] = &unk_1E73419C8;
  v19 = v4;
  v20 = self;
  v8 = v4;
  [(AFConnection *)self _requestWillBeginWithRequestClass:0 isSpeechRequest:0 speechRequestOptions:0 requestInfo:v8 analyticsEventProvider:v18];
  v9 = self->_activeRequestUUID;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__AFConnection__startRequestWithInfo___block_invoke_2;
  v16[3] = &unk_1E73419F0;
  v16[4] = self;
  v10 = v9;
  v17 = v10;
  v11 = [(AFConnection *)self _clientServiceWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__AFConnection__startRequestWithInfo___block_invoke_2_327;
  v14[3] = &unk_1E73419F0;
  v14[4] = self;
  v15 = v10;
  v12 = v10;
  [v11 startRequestWithInfo:v8 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __38__AFConnection__startRequestWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v24 = a2;
  v3 = [*(a1 + 32) activationEvent];
  if ((v3 - 2) > 3)
  {
    v4 = 1901;
  }

  else
  {
    v4 = qword_1914CFD60[v3 - 2];
  }

  v23 = v4;
  v5 = AFAnalyticsContextCreateWithRequestInfo(*(a1 + 32));
  v28[0] = v5;
  v26[0] = @"unixTime";
  v6 = MEMORY[0x1E696AD98];
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  v27[0] = v8;
  v26[1] = @"id";
  v9 = [v24 UUIDString];
  v27[1] = v9;
  v26[2] = @"systemVersion";
  v10 = AFProductAndBuildVersion();
  v27[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v28[1] = v11;
  v12 = [*(a1 + 40) _startRequestMetricSettings];
  v28[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v14 = AFAnalyticsContextsMerge(v13);

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v25[0] = v14;
    v15 = AFAnalyticsTurnContextCreateWithRequestInfo(*(a1 + 32));
    v25[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:{2, v23}];
    v17 = AFAnalyticsContextsMerge(v16);

    v14 = v17;
  }

  v18 = AFAnalyticsEventCreateCurrent(v23, v14);
  v19 = [*(a1 + 32) activationEvent];
  if (v19 <= 0xA)
  {
    v20 = qword_1914CFD80[v19];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

void __38__AFConnection__startRequestWithInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[AFConnection _startRequestWithInfo:]_block_invoke_2";
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ErrorHandler %{public}@", buf, 0x16u);
  }

  v5 = [AFError errorWithCode:7 description:0 underlyingError:v3];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AFConnection__startRequestWithInfo___block_invoke_326;
  block[3] = &unk_1E73494B0;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  dispatch_async(v8, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __38__AFConnection__startRequestWithInfo___block_invoke_2_327(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = &stru_1F0512680;
    if (v3)
    {
      v5 = v3;
    }

    *buf = 136315394;
    v15 = "[AFConnection _startRequestWithInfo:]_block_invoke_2";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Complete %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AFConnection__startRequestWithInfo___block_invoke_331;
  block[3] = &unk_1E73494B0;
  block[4] = v7;
  v12 = v6;
  v13 = v3;
  v9 = v3;
  dispatch_async(v8, block);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)startRequestWithInfo:(id)a3 activationEvent:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a4 > 0xC)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E73429D0[a4];
    }

    v10 = v9;
    v12 = 136315650;
    v13 = "[AFConnection startRequestWithInfo:activationEvent:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Overriding activation event in info %@ %@", &v12, 0x20u);
  }

  [v6 setActivationEvent:a4];
  [(AFConnection *)self _startRequestWithInfo:v6];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)startRequestWithCorrectedText:(id)a3 forSpeechIdentifier:(id)a4 userSelectionResults:(id)a5 turnIdentifier:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(AFRequestInfo);
  [(AFRequestInfo *)v14 setActivationEvent:4];
  [(AFRequestInfo *)v14 setCorrectedSpeech:v13];

  [(AFRequestInfo *)v14 setCorrectedSpeechContext:v12];
  [(AFRequestInfo *)v14 setTurnIdentifier:v11];

  v24 = v10;
  v15 = [v24 combinedRank];
  [(AFRequestInfo *)v14 setCombinedRank:v15];

  v16 = [v24 combinedScore];
  [(AFRequestInfo *)v14 setCombinedScore:v16];

  v17 = [v24 interactionId];
  [(AFRequestInfo *)v14 setInteractionId:v17];

  v18 = [v24 onDeviceUtterancesPresent];
  [(AFRequestInfo *)v14 setOnDeviceUtterancesPresent:v18];

  v19 = [v24 originalRank];
  [(AFRequestInfo *)v14 setOriginalRank:v19];

  v20 = [v24 originalScore];
  [(AFRequestInfo *)v14 setOriginalScore:v20];

  v21 = [v24 previousUtterance];
  [(AFRequestInfo *)v14 setPreviousUtterance:v21];

  v22 = [v24 sessionId];
  [(AFRequestInfo *)v14 setSessionId:v22];

  v23 = [v24 utteranceSource];

  [(AFRequestInfo *)v14 setUtteranceSource:v23];
  [(AFConnection *)self _startRequestWithInfo:v14];
}

- (void)startContinuationRequestWithUserInfo:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(AFRequestInfo);
  v5 = [v4 objectForKey:@"Data"];

  [(AFRequestInfo *)v6 setHandoffRequestData:v5];
  [(AFConnection *)self _startRequestWithInfo:v6];
}

- (void)startDirectActionRequestWithString:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AFRequestInfo);
  [(AFRequestInfo *)v5 setActivationEvent:2];
  [(AFRequestInfo *)v5 setLegacyDirectActionIdentifier:v4];

  [(AFConnection *)self _startRequestWithInfo:v5];
}

- (void)startRequestWithText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AFRequestInfo);
  [(AFRequestInfo *)v5 setActivationEvent:5];
  [(AFRequestInfo *)v5 setText:v4];

  [(AFConnection *)self _startRequestWithInfo:v5];
}

- (void)setConfiguration:(id)a3
{
  v4 = [a3 copy];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v4;

  *(self + 280) &= ~1u;

  [(AFConnection *)self _updateClientConfiguration];
}

- (void)setVoiceOverIsActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 280) = *(self + 280) & 0xFD | v3;
}

- (void)setMyriadDecisionResult:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFConnection setMyriadDecisionResult:]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setShouldWaitForMyriad:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFConnection setShouldWaitForMyriad:]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setDeviceRingerSwitchState:(int64_t)a3
{
  v5 = [(AFConnection *)self _clientConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AFConnection_setDeviceRingerSwitchState___block_invoke;
  v8[3] = &__block_descriptor_40_e41_v16__0___AFClientConfigurationMutating__8l;
  v8[4] = a3;
  v6 = [v5 mutatedCopyWithMutator:v8];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }
}

- (void)setAccessibilityState:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _clientConfiguration];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__AFConnection_setAccessibilityState___block_invoke;
  v9[3] = &unk_1E7341980;
  v6 = v4;
  v10 = v6;
  v7 = [v5 mutatedCopyWithMutator:v9];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v7;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }
}

- (void)setWatchAuthenticated:(BOOL)a3
{
  v5 = [(AFConnection *)self _clientConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__AFConnection_setWatchAuthenticated___block_invoke;
  v8[3] = &__block_descriptor_33_e41_v16__0___AFClientConfigurationMutating__8l;
  v9 = a3;
  v6 = [v5 mutatedCopyWithMutator:v8];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }
}

- (void)setAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)a3
{
  v5 = [(AFConnection *)self _clientConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__AFConnection_setAnnouncementRequestsPermittedByPresentationWhileActive___block_invoke;
  v8[3] = &__block_descriptor_33_e41_v16__0___AFClientConfigurationMutating__8l;
  v9 = a3;
  v6 = [v5 mutatedCopyWithMutator:v8];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }
}

- (void)setModesConfiguration:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[AFFeatureFlags isResponseFrameworkEnabled])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[AFConnection setModesConfiguration:]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #modes set modesConfiguration", &v8, 0xCu);
    }

    v6 = [(AFConnection *)self _clientService];
    [v6 setModesConfiguration:v4];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setIsEyesFree:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[AFConnection setIsEyesFree:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s AFConnection: Setting IsEyesFree", buf, 0xCu);
  }

  v6 = [(AFConnection *)self _clientConfiguration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__AFConnection_setIsEyesFree___block_invoke;
  v10[3] = &__block_descriptor_33_e41_v16__0___AFClientConfigurationMutating__8l;
  v11 = a3;
  v7 = [v6 mutatedCopyWithMutator:v10];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v7;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setCarDNDActive:(BOOL)a3
{
  v5 = [(AFConnection *)self _clientConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__AFConnection_setCarDNDActive___block_invoke;
  v8[3] = &__block_descriptor_33_e41_v16__0___AFClientConfigurationMutating__8l;
  v9 = a3;
  v6 = [v5 mutatedCopyWithMutator:v8];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }
}

- (void)setCarOwnsMainAudio:(BOOL)a3
{
  v5 = [(AFConnection *)self _clientConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__AFConnection_setCarOwnsMainAudio___block_invoke;
  v8[3] = &__block_descriptor_33_e41_v16__0___AFClientConfigurationMutating__8l;
  v9 = a3;
  v6 = [v5 mutatedCopyWithMutator:v8];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }
}

- (void)setSupportsCarPlayVehicleData:(BOOL)a3
{
  v5 = [(AFConnection *)self _clientConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AFConnection_setSupportsCarPlayVehicleData___block_invoke;
  v8[3] = &__block_descriptor_33_e41_v16__0___AFClientConfigurationMutating__8l;
  v9 = a3;
  v6 = [v5 mutatedCopyWithMutator:v8];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }
}

- (void)setIsDeviceInStarkMode:(BOOL)a3
{
  v5 = [(AFConnection *)self _clientConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__AFConnection_setIsDeviceInStarkMode___block_invoke;
  v8[3] = &__block_descriptor_33_e41_v16__0___AFClientConfigurationMutating__8l;
  v9 = a3;
  v6 = [v5 mutatedCopyWithMutator:v8];
  clientConfiguration = self->_clientConfiguration;
  self->_clientConfiguration = v6;

  *(self + 280) &= ~1u;
  if ((*(self + 224) & 8) != 0)
  {
    [(AFConnection *)self _updateClientConfiguration];
  }
}

- (void)didDismissUI
{
  v3 = [(AFConnection *)self _clientService];
  [v3 didDismissUI];

  v4 = [(AFConnection *)self _siriClientStateManager];
  [v4 endSessionForClient:self->_clientID];
}

void __29__AFConnection_willPresentUI__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[AFConnection willPresentUI]_block_invoke";
    _os_log_impl(&dword_1912FE000, v0, OS_LOG_TYPE_INFO, "%s Received reply.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)resumeInterruptedAudioPlaybackIfNeeded
{
  v2 = [(AFConnection *)self _clientServiceWithErrorHandler:&__block_literal_global_315];
  [v2 resumeInterruptedAudioPlaybackIfNeeded];
}

void __54__AFConnection_resumeInterruptedAudioPlaybackIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AFConnection resumeInterruptedAudioPlaybackIfNeeded]_block_invoke";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ErrorHandler %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)forceAudioSessionInactiveWithOptions:(unint64_t)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[AFConnection forceAudioSessionInactiveWithOptions:completion:]";
    v22 = 2048;
    v23 = self;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %lu", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__AFConnection_forceAudioSessionInactiveWithOptions_completion___block_invoke;
  v18[3] = &unk_1E73494D8;
  v19 = v6;
  v8 = v6;
  v9 = MEMORY[0x193AFB7B0](v18);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __64__AFConnection_forceAudioSessionInactiveWithOptions_completion___block_invoke_2;
  v16 = &unk_1E7348AA8;
  v17 = v9;
  v10 = v9;
  v11 = [(AFConnection *)self _clientServiceWithErrorHandler:&v13];
  [v11 forceAudioSessionInactiveWithOptions:a3 completion:{v10, v13, v14, v15, v16}];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __64__AFConnection_forceAudioSessionInactiveWithOptions_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __64__AFConnection_forceAudioSessionInactiveWithOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFConnection forceAudioSessionInactiveWithOptions:completion:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ErrorHandler %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)acquireAudioSessionWithContext:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[AFConnection acquireAudioSessionWithContext:completion:]";
    v20 = 2048;
    v21 = self;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEFAULT, "%s %p %@", buf, 0x20u);
  }

  v9 = [(AFConnection *)self _siriClientStateManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__AFConnection_acquireAudioSessionWithContext_completion___block_invoke;
  v14[3] = &unk_1E7341938;
  v14[4] = self;
  v15 = v6;
  v16 = v9;
  v17 = v7;
  v10 = v9;
  v11 = v6;
  v12 = v7;
  [(AFConnection *)self forceAudioSessionActiveWithContext:v11 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __58__AFConnection_acquireAudioSessionWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v23 = "[AFConnection acquireAudioSessionWithContext:completion:]_block_invoke";
    v24 = 2048;
    v25 = v5;
    v26 = 2114;
    v27 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@", buf, 0x20u);
  }

  if (*(a1 + 56))
  {
    v6 = [*(a1 + 40) reason];
    v7 = [v3 error];
    v8 = v7 != 0;

    v9 = v6 == 3;
    if (v9 && !v7 && !atomic_fetch_add((*(a1 + 32) + 352), 1uLL))
    {
      [*(a1 + 48) beginSpeakingForClient:*(a1 + 32)];
    }

    v10 = [AFSafetyBlock alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__AFConnection_acquireAudioSessionWithContext_completion___block_invoke_312;
    v18[3] = &unk_1E7341910;
    v20 = v9;
    v21 = v8;
    v18[4] = *(a1 + 32);
    v19 = *(a1 + 48);
    v11 = [(AFSafetyBlock *)v10 initWithBlock:v18];
    v12 = *(a1 + 56);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__AFConnection_acquireAudioSessionWithContext_completion___block_invoke_2;
    v16[3] = &unk_1E73497C8;
    v17 = v11;
    v13 = *(v12 + 16);
    v14 = v11;
    v13(v12, v3, v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __58__AFConnection_acquireAudioSessionWithContext_completion___block_invoke_312(uint64_t result)
{
  if (*(result + 48) == 1 && (*(result + 49) & 1) == 0 && atomic_fetch_add((*(result + 32) + 352), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    return [*(result + 40) endSpeakingForClient:*(result + 32)];
  }

  return result;
}

- (void)forceAudioSessionActiveWithContext:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[AFConnection forceAudioSessionActiveWithContext:completion:]";
    v25 = 2048;
    v26 = self;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEFAULT, "%s %p %@", buf, 0x20u);
  }

  v9 = [AFOneArgumentSafetyBlock alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__AFConnection_forceAudioSessionActiveWithContext_completion___block_invoke;
  v21[3] = &unk_1E7341878;
  v21[4] = self;
  v22 = v7;
  v10 = v7;
  v11 = [AFSetAudioSessionActiveResult newWithBuilder:&__block_literal_global_302];
  v12 = [(AFOneArgumentSafetyBlock *)v9 initWithBlock:v21 defaultValue:v11];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__AFConnection_forceAudioSessionActiveWithContext_completion___block_invoke_2;
  v19[3] = &unk_1E73493C0;
  v13 = v12;
  v20 = v13;
  v14 = [(AFConnection *)self _clientServiceWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__AFConnection_forceAudioSessionActiveWithContext_completion___block_invoke_2_310;
  v17[3] = &unk_1E73418E8;
  v18 = v13;
  v15 = v13;
  [v14 forceAudioSessionActiveWithContext:v6 completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __62__AFConnection_forceAudioSessionActiveWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 136315650;
    v9 = "[AFConnection forceAudioSessionActiveWithContext:completion:]_block_invoke";
    v10 = 2048;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEFAULT, "%s %p %@", &v8, 0x20u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __62__AFConnection_forceAudioSessionActiveWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[AFConnection forceAudioSessionActiveWithContext:completion:]_block_invoke_2";
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ErrorHandler %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__AFConnection_forceAudioSessionActiveWithContext_completion___block_invoke_306;
  v9[3] = &unk_1E73418C0;
  v10 = v3;
  v6 = v3;
  v7 = [AFSetAudioSessionActiveResult newWithBuilder:v9];
  [v5 invokeWithValue:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __62__AFConnection_forceAudioSessionActiveWithContext_completion___block_invoke_306(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAudioSessionID:0];
  v4 = [AFError errorWithCode:7 description:@"XPC connection encountered an error during -forceAudioSessionActive." underlyingError:*(a1 + 32)];
  [v3 setError:v4];
}

void __62__AFConnection_forceAudioSessionActiveWithContext_completion___block_invoke_299(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAudioSessionID:0];
  v3 = [AFError errorWithCode:40 description:@"Safety completion of -forceAudioSessionActive is deallocated without invocation."];
  [v2 setError:v3];
}

- (void)forceAudioSessionActiveWithOptions:(unint64_t)a3 reason:(int64_t)a4 speechRequestOptions:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__AFConnection_forceAudioSessionActiveWithOptions_reason_speechRequestOptions_completion___block_invoke;
  v17[3] = &unk_1E7342378;
  v19 = a3;
  v20 = a4;
  v18 = v10;
  v12 = v10;
  v13 = [AFSetAudioSessionActiveContext newWithBuilder:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__AFConnection_forceAudioSessionActiveWithOptions_reason_speechRequestOptions_completion___block_invoke_2;
  v15[3] = &unk_1E7341850;
  v16 = v11;
  v14 = v11;
  [(AFConnection *)self forceAudioSessionActiveWithContext:v13 completion:v15];
}

void __90__AFConnection_forceAudioSessionActiveWithOptions_reason_speechRequestOptions_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a2;
  [v4 setOptions:v3];
  [v4 setReason:a1[6]];
  [v4 setSpeechRequestOptions:a1[4]];
}

void __90__AFConnection_forceAudioSessionActiveWithOptions_reason_speechRequestOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v3 audioSessionID];
    v5 = [v3 error];

    (*(v2 + 16))(v2, v4, v5);
  }
}

- (void)boostedPreheatWithStyle:(int64_t)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[AFConnection boostedPreheatWithStyle:completion:]";
    v17 = 2048;
    v18 = self;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %p %ld", buf, 0x20u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AFConnection_boostedPreheatWithStyle_completion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v14 = v6;
  v8 = v6;
  v9 = [(AFConnection *)self _clientServiceWithErrorHandler:v13];
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &__block_literal_global_293;
  }

  [v9 boostedPreheatWithStyle:a3 completion:v11];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __51__AFConnection_boostedPreheatWithStyle_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)preheatWithStyle:(int64_t)a3 forOptions:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = 136315906;
    v13 = "[AFConnection preheatWithStyle:forOptions:]";
    v14 = 2048;
    v15 = self;
    v16 = 2048;
    v17 = a3;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %p %ld %@", &v12, 0x2Au);
  }

  [(AFAnalytics *)self->_analytics logEventWithType:1915 context:0];
  v8 = [(AFConnection *)self _clientService];
  [v8 preheatWithStyle:a3 forOptions:v6];

  v9 = +[AFAccessibilityObserver sharedObserver];
  v10 = +[AFDeviceRingerSwitchObserver sharedObserver];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFConnection invalidate]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v6, 0x16u);
  }

  [(AFConnection *)self _clearConnection];
  v4 = [(AFConnection *)self _siriClientStateManager];
  [v4 invalidateClient:self->_clientID];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)endSession
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[AFConnection endSession]";
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v9, 0x16u);
  }

  [(AFConnection *)self _willEndSession];
  if (AFSupportsSCDAFramework_onceToken != -1)
  {
    dispatch_once(&AFSupportsSCDAFramework_onceToken, &__block_literal_global_232);
  }

  if (AFSupportsSCDAFramework_scdaFrameworkEnabled == 1)
  {
    v4 = MEMORY[0x1E69CE398];
  }

  else
  {
    v4 = AFMyriadCoordinator;
  }

  v5 = [(__objc2_class *)v4 currentCoordinator];
  v6 = v5;
  if (v5)
  {
    [v5 endTask];
  }

  v7 = [(AFConnection *)self _clientService];
  [v7 endSession];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_endInterstitialsForReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_interstitialProvider)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[AFConnection _endInterstitialsForReason:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s reason = %@", &v9, 0x16u);
    }

    [(AFConnection *)self stopAllAudioPlaybackRequests:+[AFFeatureFlags isStateFeedbackEnabled]^ 1];
    [(AFInterstitialProvider *)self->_interstitialProvider invalidate];
    interstitialProvider = self->_interstitialProvider;
    self->_interstitialProvider = 0;
  }

  interstitialCommandQueue = self->_interstitialCommandQueue;
  self->_interstitialCommandQueue = 0;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleInterstitialPhase:(int64_t)a3 fromProvider:(id)a4 displayText:(id)a5 speakableText:(id)a6 expectedDelay:(double)a7 context:(id)a8 completion:(id)a9
{
  v46 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  if (self->_interstitialProvider == v17 && ([(NSUUID *)self->_activeRequestUUID isEqual:v20]& 1) != 0)
  {
    v22 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      if (a3 > 4)
      {
        v24 = @"(unknown)";
      }

      else
      {
        v24 = off_1E7345CA8[a3];
      }

      v26 = v24;
      *buf = 136316418;
      v35 = "[AFConnection _handleInterstitialPhase:fromProvider:displayText:speakableText:expectedDelay:context:completion:]";
      v36 = 2112;
      v37 = v26;
      v38 = 2112;
      v39 = v18;
      v40 = 2112;
      v41 = v19;
      v42 = 2048;
      v43 = a7;
      v44 = 2112;
      v45 = v20;
      _os_log_impl(&dword_1912FE000, v23, OS_LOG_TYPE_INFO, "%s phase = %@, displayText = %@, speakableText = %@, expectedDelay = %f, context = %@", buf, 0x3Eu);
    }

    if ((a3 - 1) >= 3)
    {
      if (a3 == 4)
      {
        v30 = NSStringFromSelector(a2);
        [(AFConnection *)self _endInterstitialsForReason:v30];
        [(AFConnection *)self _invokeRequestTimeoutForReason:v30];
      }
    }

    else
    {
      v27 = [(AFQueue *)self->_interstitialCommandQueue dequeueObject];
      if (!v27)
      {
        if ([v18 length] || objc_msgSend(v19, "length"))
        {
          v28 = [(NSUUID *)self->_activeRequestUUID UUIDString];
          v27 = AFInterstitialCreateCommand(a3, v18, v19, v28);
        }

        else
        {
          v31 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v35 = "[AFConnection _handleInterstitialPhase:fromProvider:displayText:speakableText:expectedDelay:context:completion:]";
            _os_log_impl(&dword_1912FE000, v31, OS_LOG_TYPE_INFO, "%s Unable to create an interstitial command because display text and speakable text are both empty.", buf, 0xCu);
          }

          v27 = 0;
        }
      }

      v29 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v35 = "[AFConnection _handleInterstitialPhase:fromProvider:displayText:speakableText:expectedDelay:context:completion:]";
        v36 = 2112;
        v37 = v27;
        _os_log_impl(&dword_1912FE000, v29, OS_LOG_TYPE_INFO, "%s interstitialCommand = %@", buf, 0x16u);
      }

      if (v27)
      {
        ++self->_activeRequestNumberOfPresentedInterstitials;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __113__AFConnection__handleInterstitialPhase_fromProvider_displayText_speakableText_expectedDelay_context_completion___block_invoke;
        v32[3] = &unk_1E7341828;
        v33 = v21;
        [(AFConnection *)self _dispatchCommand:v27 isInterstitial:1 interstitialPhase:a3 interstitialDelay:v32 reply:a7];
      }

      else if (v21)
      {
        v21[2](v21);
      }
    }
  }

  else if (v21)
  {
    v21[2](v21);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __113__AFConnection__handleInterstitialPhase_fromProvider_displayText_speakableText_expectedDelay_context_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[AFConnection _handleInterstitialPhase:fromProvider:displayText:speakableText:expectedDelay:context:completion:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s interstitialReply = %@", &v11, 0x16u);
    }
  }

  if (v6)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[AFConnection _handleInterstitialPhase:fromProvider:displayText:speakableText:expectedDelay:context:completion:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s interstitialError = %@", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_beginInterstitialsForReason:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_interstitialProvider)
  {
    if (self->_activeRequestType)
    {
      if (!self->_activeRequestUsefulUserResultType)
      {
        v6 = *&self->_activeRequestActivationEvent;
        if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v6, xmmword_1914CFC00), vceqq_s64(v6, xmmword_1914CFC10)))) & 1) == 0 && v6.i64[0] != 12)
        {
          if (AFIsInternalInstall_onceToken != -1)
          {
            dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
          }

          if (AFIsInternalInstall_isInternal != 1 || (ForcedInterstitialStyle = _AFPreferencesGetForcedInterstitialStyle()) == 0)
          {
            if (AFIsHorseman_onceToken != -1)
            {
              dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
            }

            if (AFIsHorseman_isHorseman)
            {
              ForcedInterstitialStyle = 4;
            }

            else
            {
              recordRoute = self->_recordRoute;
              if (recordRoute && [(NSString *)recordRoute isEqualToString:@"BluetoothDoAP"])
              {
                ForcedInterstitialStyle = 3;
              }

              else if ([(AFClientConfiguration *)self->_clientConfiguration isDeviceInStarkMode])
              {
                ForcedInterstitialStyle = 6;
              }

              else if ([(AFClientConfiguration *)self->_clientConfiguration isDeviceInCarDNDMode])
              {
                ForcedInterstitialStyle = 5;
              }

              else if (AFPlaybackRouteIsHandsFree(self->_playbackRoute))
              {
                ForcedInterstitialStyle = 2;
              }

              else
              {
                ForcedInterstitialStyle = 1;
              }
            }
          }

          v9 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v13 = "[AFConnection _beginInterstitialsForReason:]";
            v14 = 2114;
            v15 = v4;
            _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEFAULT, "%s reason = %{public}@", buf, 0x16u);
          }

          v10 = [[AFInterstitialProvider alloc] initWithStyle:ForcedInterstitialStyle recordRoute:self->_recordRoute isVoiceTrigger:(self->_activeRequestSpeechEvent < 0x20uLL) & (0x80018900 >> self->_activeRequestSpeechEvent) isDucking:self->_activeRequestIsDucking isTwoShot:self->_activeRequestIsTwoShot speechEndHostTime:self->_activeRequestSpeechEndHostTime context:self->_activeRequestUUID preferences:self->_preferences delegate:self];
          interstitialProvider = self->_interstitialProvider;
          self->_interstitialProvider = v10;
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueInterstitialCommand:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[AFConnection _enqueueInterstitialCommand:]";
    v12 = 2112;
    v13 = v4;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s command = %@", &v10, 0x16u);
  }

  interstitialCommandQueue = self->_interstitialCommandQueue;
  if (!interstitialCommandQueue)
  {
    v7 = objc_alloc_init(AFQueue);
    v8 = self->_interstitialCommandQueue;
    self->_interstitialCommandQueue = v7;

    interstitialCommandQueue = self->_interstitialCommandQueue;
  }

  [(AFQueue *)interstitialCommandQueue enqueueObject:v4];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_willPresentUsefulUserResultWithType:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a2);
  [(AFConnection *)self _endInterstitialsForReason:v5];
  [(AFConnection *)self _cancelRequestTimeoutForReason:v5];
  if (self->_activeRequestType)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "[AFConnection _willPresentUsefulUserResultWithType:]";
      v13 = 2048;
      v14 = self;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p %ld", &v11, 0x20u);
    }

    self->_activeRequestUsefulUserResultType = a3;
    if (AFIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    }

    if (AFIsInternalInstall_isInternal == 1 && self->_activeRequestInitialInterstitialBeginTimeInterval > 0.0)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v8 = v7 - self->_activeRequestInitialInterstitialBeginTimeInterval;
      if (v8 < 0.5)
      {
        v9 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315394;
          v12 = "[AFConnection _willPresentUsefulUserResultWithType:]";
          v13 = 2048;
          v14 = *&v8;
          _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Initial interstitial fired %f seconds right before UUFR!", &v11, 0x16u);
        }

        [(AFConnection *)self reportIssueForType:@"Interstitial" subtype:@"Near Fire before UUFR" context:0];
      }
    }
  }

  else
  {
    self->_activeRequestUsefulUserResultType = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_willFailRequestWithError:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->_activeRequestType)
  {
    goto LABEL_46;
  }

  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    activeRequestUUID = self->_activeRequestUUID;
    activeTurnIdentifier = self->_activeTurnIdentifier;
    *buf = 136316162;
    v59 = "[AFConnection _willFailRequestWithError:]";
    v60 = 2048;
    v61 = self;
    v62 = 2112;
    v63 = activeRequestUUID;
    v64 = 2112;
    v65 = activeTurnIdentifier;
    v66 = 2112;
    v67 = v6;
    _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s %p activeRequestUUID = %@ turnId = %@ %@", buf, 0x34u);
  }

  v8 = NSStringFromSelector(a2);
  [(AFConnection *)self _endInterstitialsForReason:v8];

  self->_activeRequestType = 0;
  self->_activeRequestUsefulUserResultType = 0;
  v9 = [(AFConnection *)v6 domain];
  v10 = [v9 isEqualToString:@"kAFAssistantErrorDomain"];

  if ((v10 & 1) == 0)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v59 = "[AFConnection _willFailRequestWithError:]";
      v60 = 2112;
      v61 = v6;
      _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s Wrapping up non-siri error in generic error %@", buf, 0x16u);
    }

    v12 = [AFError errorWithCode:0 description:0 underlyingError:v6];

    v6 = v12;
  }

  v53[4] = self;
  v54 = 0;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __42__AFConnection__willFailRequestWithError___block_invoke_2;
  v53[3] = &unk_1E7341800;
  v13 = AFErrorSetUnderlyingError(v6, &v54, &__block_literal_global_267, v53);
  v14 = v54;
  if (v13)
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v59 = "[AFConnection _willFailRequestWithError:]";
      v60 = 2112;
      v61 = v6;
      _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s Appending additional details to error %@", buf, 0x16u);
    }

    v16 = v14;

    v6 = v16;
  }

  v52 = v14;
  v17 = self->_activeRequestUUID;
  if (v17)
  {
    v55 = @"id";
    v3 = [(NSUUID *)v17 UUIDString];
    v56 = v3;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F8];
  }

  v57[0] = v18;
  v19 = AFAnalyticsContextCreateWithError(v6);
  v57[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v21 = AFAnalyticsContextsMerge(v20);

  if (v17)
  {
  }

  [(AFAnalytics *)self->_analytics logEventWithType:1913 context:v21];
  v22 = self->_activeRequestUUID;
  v23 = self->_activeTurnIdentifier;
  v24 = self->_analytics;
  v25 = v22;
  v26 = v23;
  v6 = v6;
  if (!v6)
  {
    v27 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136315650;
    v59 = "_EmitPNRFatalError";
    v60 = 2112;
    v61 = v25;
    v62 = 2112;
    v63 = v26;
    v37 = "%s error is nil. Instrumentation logging is skipped. requestUUID = %@ turnId = %@";
LABEL_48:
    _os_log_error_impl(&dword_1912FE000, v27, OS_LOG_TYPE_ERROR, v37, buf, 0x20u);
    goto LABEL_29;
  }

  v27 = AFSiriLogContextConnection;
  if (v26)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v59 = "_EmitPNRFatalError";
      v60 = 2112;
      v61 = v25;
      v62 = 2112;
      v63 = v26;
      v64 = 2112;
      v65 = v6;
      _os_log_impl(&dword_1912FE000, v27, OS_LOG_TYPE_INFO, "%s Logging instrumentation for requestUUID = %@ turnId = %@ error = %@", buf, 0x2Au);
    }

    v28 = objc_alloc_init(MEMORY[0x1E69CF5C8]);
    v29 = _PNRFatalErrorInfo(v6);
    [v28 setError:v29];

    v30 = [(AFConnection *)v6 userInfo];
    v31 = *MEMORY[0x1E696AA08];
    v32 = [v30 objectForKey:*MEMORY[0x1E696AA08]];

    if (v32)
    {
      v33 = _PNRFatalErrorInfo(v32);
      [v28 setUnderlyingError:v33];

      v34 = [v32 userInfo];
      v35 = [v34 objectForKey:v31];

      if (v35)
      {
        v36 = _PNRFatalErrorInfo(v35);
        [v28 setUnderUnderlyingError:v36];
      }
    }

    [(AFAnalytics *)v24 logInstrumentation:v28 machAbsoluteTime:mach_absolute_time() turnIdentifier:v26];

    goto LABEL_29;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v59 = "_EmitPNRFatalError";
    v60 = 2112;
    v61 = v25;
    v62 = 2112;
    v63 = v6;
    v37 = "%s turnId is nil. Instrumentation logging is skipped. requestUUID = %@ error = %@";
    goto LABEL_48;
  }

LABEL_29:

  [AFAggregator logSiriRequestFailedWithError:v6];
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v38 = [(AFConnection *)self _clientService];
    activeRequestSpeechEvent = self->_activeRequestSpeechEvent;
    if (activeRequestSpeechEvent > 0x24)
    {
      v40 = @"Unknown";
    }

    else
    {
      v40 = off_1E7342A58[activeRequestSpeechEvent];
    }

    v41 = v40;
    [v38 reportIssueForError:v6 type:1913 subtype:v41 context:v21];
  }

  if (!_AFConnectionIsErrorDeallocation(v6))
  {
    v42 = +[AFDeviceRingerSwitchObserver sharedObserver];
    [v42 removeListener:self];

    v43 = +[AFAccessibilityObserver sharedObserver];
    [v43 removeListener:self];

    v44 = [(AFConnection *)self _siriClientStateManager];
    [v44 endRequestWithUUID:self->_activeRequestUUID forClient:self->_clientID];
  }

  _LogUEIRequestCategorization(self->_activeTurnIdentifier, 2, self->_activeRequestTypeForRequestCategorization);
  v45 = self->_activeTurnIdentifier;
  self->_activeTurnIdentifier = 0;

  self->_activeRequestTypeForRequestCategorization = 0;
  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if (AFIsHorseman_isHorseman)
  {
    goto LABEL_44;
  }

  if (AFIsPad_onceToken != -1)
  {
    dispatch_once(&AFIsPad_onceToken, &__block_literal_global_214_46076);
  }

  if (AFIsPad_isPad == 1)
  {
LABEL_44:
    v46 = [(AFConnection *)self _clientService];
    [v46 emitHomeMetricInvocationEvent];
  }

  *&self->_activeRequestHasSpeechRecognition = 0;
  self->_activeRequestIsTwoShot = 0;
  self->_activeRequestActivationEvent = 0;
  self->_activeRequestSpeechEvent = 0;
  *&self->_activeRequestBeginTime = 0u;
  *&self->_activeRequestNumberOfPresentedInterstitials = 0u;
  *&self->_activeRequestStartSpeechTimeAPICalled = 0u;
  *&self->_activeRequestStopSpeechTimeAPICalled = 0u;
  *&self->_activeRequestSpeechRecognitionTimeInterval = 0u;
  v47 = self->_activeRequestUUID;
  self->_activeRequestUUID = 0;

  v48 = self->_activeTurnIdentifier;
  self->_activeTurnIdentifier = 0;

LABEL_46:
  v49 = *MEMORY[0x1E69E9840];
}

id __42__AFConnection__willFailRequestWithError___block_invoke_2(uint64_t a1)
{
  v2 = _AFConnectionGetBucketStringFromTimeIntervals(*(*(a1 + 32) + 160), *(*(a1 + 32) + 176));
  v3 = *(a1 + 32);
  v4 = v3[19];
  if (v4 == 0.0)
  {
    v4 = v3[20];
  }

  v5 = v3[21];
  if (v5 == 0.0)
  {
    v5 = v3[22];
  }

  v6 = _AFConnectionGetBucketStringFromTimeIntervals(v4, v5);
  if ([v2 isEqualToString:v6])
  {
    v7 = v2;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@", v2, v6];
  }

  v8 = v7;
  v9 = MEMORY[0x1E696ABC0];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SpeechErrorHints[StartStopSpeechDelta:%@]", v7];
  v11 = [v9 errorWithDomain:v10 code:0 userInfo:0];

  return v11;
}

BOOL __42__AFConnection__willFailRequestWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:@"SiriSpeechErrorDomain"];

  if (!v4)
  {
    v7 = [v2 domain];
    v8 = [v7 isEqualToString:@"kAFAssistantErrorDomain"];

    if (v8)
    {
      v6 = [v2 code] == 211;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = [v2 code];
  if (v5 != 1 && v5 != 201 && v5 != 102)
  {
    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (void)_willEndSession
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFConnection _willEndSession]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", &v6, 0x16u);
  }

  if (self->_activeRequestUsefulUserResultType == 2)
  {
    [(AFConnection *)self _willCompleteRequest];
  }

  else
  {
    [(AFConnection *)self _willCancelRequest];
  }

  v4 = [(AFConnection *)self _siriClientStateManager];
  [v4 endSessionForClient:self->_clientID];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_willStartRequestWithSpeech:(BOOL)a3 speechRequestOptions:(id)a4 requestInfo:(id)a5 analyticsEventProvider:(id)a6
{
  v80 = a3;
  v102 = *MEMORY[0x1E69E9840];
  v83 = a4;
  v9 = a5;
  v79 = a6;
  v78 = self->_activeRequestUUID;
  v82 = v9;
  v10 = [v9 startRequest];
  if (v10)
  {
    v11 = [v82 startRequest];
    v12 = [v11 aceId];
    v13 = [v12 length];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E696AFB0]);
      v15 = [v82 startRequest];
LABEL_7:
      v20 = v15;
      v21 = [v15 aceId];
      v22 = [v14 initWithUUIDString:v21];

      goto LABEL_9;
    }
  }

  v16 = [v82 startLocalRequest];
  if (v16)
  {
    v17 = [v82 startLocalRequest];
    v18 = [v17 aceId];
    v19 = [v18 length];

    if (v19)
    {
      v14 = objc_alloc(MEMORY[0x1E696AFB0]);
      v15 = [v82 startLocalRequest];
      goto LABEL_7;
    }
  }

  v22 = 0;
LABEL_9:
  v23 = [v83 intuitiveConversationRequestId];

  if (v23)
  {
    v24 = [v83 intuitiveConversationRequestId];

    v25 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = [v24 UUIDString];
      *buf = 136315394;
      v93 = "[AFConnection _willStartRequestWithSpeech:speechRequestOptions:requestInfo:analyticsEventProvider:]";
      v94 = 2112;
      v95 = v27;
      _os_log_impl(&dword_1912FE000, v26, OS_LOG_TYPE_INFO, "%s Setting IntuitiveConversationRequestId = %@ from AFSpeechRequestOptions", buf, 0x16u);
    }
  }

  else
  {
    v24 = v22;
  }

  obj = v24;
  if (!v24)
  {
    obj = [MEMORY[0x1E696AFB0] UUID];
  }

  v28 = [(AFConnection *)self _siriClientStateManager];
  [v28 beginRequestWithUUID:obj forClient:self->_clientID];

  [(AFConnection *)self _willCancelRequest];
  [(AFConnection *)self _completeRequestWithUUID:v78 forReason:1 error:0];
  v29 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v93 = "[AFConnection _willStartRequestWithSpeech:speechRequestOptions:requestInfo:analyticsEventProvider:]";
    v94 = 2048;
    v95 = self;
    v96 = 2112;
    v97 = obj;
    v98 = 1024;
    v99 = v80;
    v100 = 2112;
    v101 = v83;
    _os_log_impl(&dword_1912FE000, v29, OS_LOG_TYPE_INFO, "%s %p %@ %d (%@)", buf, 0x30u);
  }

  v30 = [MEMORY[0x1E696AE30] processInfo];
  [v30 systemUptime];
  v32 = v31;

  if (v79 && (v34 = v79[2](v79, obj)) != 0)
  {
    v35 = v33;
  }

  else
  {
    v89[0] = @"isSpeechRequest";
    v36 = [MEMORY[0x1E696AD98] numberWithBool:v80];
    v90[0] = v36;
    v89[1] = @"id";
    v37 = [obj UUIDString];
    v90[1] = v37;
    v89[2] = @"unixTime";
    v38 = MEMORY[0x1E696AD98];
    v39 = [MEMORY[0x1E695DF00] date];
    [v39 timeIntervalSince1970];
    v40 = [v38 numberWithDouble:?];
    v90[2] = v40;
    v89[3] = @"systemVersion";
    v41 = AFProductAndBuildVersion();
    v90[3] = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:4];
    v91[0] = v42;
    v43 = [(AFConnection *)self _startRequestMetricSettings];
    v91[1] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    v45 = AFAnalyticsContextsMerge(v44);

    if (AFIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    }

    if (AFIsInternalInstall_isInternal == 1)
    {
      v88[0] = v45;
      v46 = AFAnalyticsTurnContextCreateWithRequestInfo(v82);
      v88[1] = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
      v48 = AFAnalyticsContextsMerge(v47);

      v45 = v48;
    }

    v34 = AFAnalyticsEventCreateCurrent(1901, v45);

    v35 = 3;
  }

  [(AFAnalytics *)self->_analytics logEvent:v34];
  if (v80)
  {
    v49 = v83;
  }

  else
  {
    v49 = v82;
  }

  v50 = [v49 turnIdentifier];
  objc_storeStrong(&self->_activeTurnIdentifier, v50);
  v51 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v93 = "[AFConnection _willStartRequestWithSpeech:speechRequestOptions:requestInfo:analyticsEventProvider:]";
    _os_log_debug_impl(&dword_1912FE000, v51, OS_LOG_TYPE_DEBUG, "%s Logging TurnMTE From _willStartRequestWithSpeech", buf, 0xCu);
  }

  v52 = obj;
  if (v50)
  {
    v53 = MEMORY[0x1E69CF640];
    v54 = v50;
    v55 = [[v53 alloc] initWithNSUUID:v52];
    v56 = objc_alloc_init(MEMORY[0x1E69CF608]);
    [v56 setMteRequestId:v55];

    v57 = +[AFAnalytics sharedAnalytics];
    [v57 logInstrumentation:v56 machAbsoluteTime:mach_absolute_time() turnIdentifier:v54];
  }

  if ([(AFConnection *)self _shouldEmitUEIRequestLinkForRequestInfo:v82 speechRequestOptions:v83])
  {
    v58 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = [v50 UUIDString];
      v60 = [v52 UUIDString];
      *buf = 136315650;
      v93 = "[AFConnection _willStartRequestWithSpeech:speechRequestOptions:requestInfo:analyticsEventProvider:]";
      v94 = 2112;
      v95 = v59;
      v96 = 2112;
      v97 = v60;
      _os_log_impl(&dword_1912FE000, v58, OS_LOG_TYPE_INFO, "%s Emitting Request link message between turnID: %@ and RequestID: %@", buf, 0x20u);
    }

    v61 = [v52 UUIDString];
    v62 = [v50 UUIDString];
    v63 = ADCreateRequestLinkInfo(v61, 1);
    v64 = ADCreateRequestLinkInfo(v62, 2);

    ADEmitRequestLinkEventMessage(v63, v64);
  }

  objc_storeStrong(&self->_activeRequestUUID, obj);
  v65 = 1;
  if (!v80)
  {
    v65 = 2;
  }

  self->_activeRequestType = v65;
  self->_activeRequestSpeechEvent = [v83 activationEvent];
  self->_activeRequestActivationEvent = [v82 activationEvent];
  self->_activeRequestBeginTime = v32;
  self->_activeRequestTypeForRequestCategorization = v35;
  if (!v80)
  {
    self->_activeRequestStartSpeechTimeRequested = 0.0;
    self->_activeRequestStartSpeechTimeAPICalled = 0.0;
    goto LABEL_48;
  }

  self->_activeRequestStartSpeechTimeAPICalled = v32;
  if (!v83)
  {
    goto LABEL_48;
  }

  [v83 activationEventTime];
  if (v66 <= 0.0)
  {
    if (![v83 activationEventMachAbsoluteTime])
    {
      goto LABEL_48;
    }

    v68 = [v83 activationEventMachAbsoluteTime];
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    v67 = *&_AFMachAbsoluteTimeRate_rate * v68 / 1000000000.0;
  }

  else
  {
    [v83 activationEventTime];
  }

  self->_activeRequestStartSpeechTimeRequested = v67;
LABEL_48:
  self->_activeRequestUsefulUserResultType = 0;
  *&self->_activeRequestIsDucking = 0;
  self->_activeRequestSpeechEndHostTime = 0;
  self->_activeRequestNumberOfPresentedInterstitials = 0;
  *&self->_activeRequestStopSpeechTimeRequested = 0u;
  *&self->_activeRequestSpeechRecordingEndTimeInterval = 0u;
  self->_activeRequestInitialInterstitialBeginTimeInterval = 0.0;
  lastRetryError = self->_lastRetryError;
  self->_lastRetryError = 0;

  self->_uufrID = 0;
  [(AFConnection *)self _updateClientConfiguration];
  _EmitHomePodLaunchContextTime(self->_analytics, self->_activeRequestUUID, self->_activeTurnIdentifier, v83);
  if (v80)
  {
    +[AFAggregator logSiriSpeechRequestStarted];
  }

  else
  {
    +[AFAggregator logSiriOtherRequestStarted];
    [(AFConnection *)self _updateStateIfNotInSync];
  }

  if (AFSupportsSCDAFramework_onceToken != -1)
  {
    dispatch_once(&AFSupportsSCDAFramework_onceToken, &__block_literal_global_232);
  }

  if (AFSupportsSCDAFramework_scdaFrameworkEnabled != 1)
  {
    v70 = +[AFMyriadCoordinator currentCoordinator];
    v71 = v70;
    if (v70)
    {
      goto LABEL_55;
    }

    v72 = [MEMORY[0x1E696ABB0] defaultCenter];
    v84 = @"requestId";
    v73 = [v52 UUIDString];
    v85 = v73;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    [v72 postNotificationName:@"RequestIdForMyriad" object:0 userInfo:v74 deliverImmediately:1];
LABEL_60:

    v71 = 0;
    goto LABEL_61;
  }

  v70 = [MEMORY[0x1E69CE398] currentCoordinator];
  v71 = v70;
  if (!v70)
  {
    v72 = [MEMORY[0x1E696ABB0] defaultCenter];
    v86 = @"requestId";
    v73 = [v52 UUIDString];
    v87 = v73;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    [v72 postNotificationName:@"RequestIdForMyriad" object:0 userInfo:v74 deliverImmediately:1];
    goto LABEL_60;
  }

LABEL_55:
  [v70 setCurrentRequestId:v52];
LABEL_61:

  v75 = +[AFAccessibilityObserver sharedObserver];
  [v75 addListener:self];

  v76 = +[AFDeviceRingerSwitchObserver sharedObserver];
  [v76 addListener:self];

  v77 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldEmitUEIRequestLinkForRequestInfo:(id)a3 speechRequestOptions:(id)a4
{
  v5 = a4;
  v6 = [a3 activationEvent];
  v7 = [v5 activationEvent];

  return v6 == 6 || v7 == 17 || (v6 - 9) < 2;
}

- (void)_fetchShouldSpeak:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _clientService];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__AFConnection__fetchShouldSpeak___block_invoke;
  v7[3] = &unk_1E73477F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 requestShouldSpeakStateWithReply:v7];
}

void __34__AFConnection__fetchShouldSpeak___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AFConnection__fetchShouldSpeak___block_invoke_2;
  block[3] = &unk_1E7348778;
  v7 = a2;
  block[4] = v3;
  v6 = v2;
  dispatch_async(v4, block);
}

uint64_t __34__AFConnection__fetchShouldSpeak___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = *(a1 + 48);
    v5 = v2;
    v6 = [v3 numberWithBool:v4];
    v9 = 136315394;
    v10 = "[AFConnection _fetchShouldSpeak:]_block_invoke_2";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Updated internal state. ShouldSpeak %@", &v9, 0x16u);
  }

  [*(a1 + 32) _setShouldSpeak:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 48));
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_extendExpiringRequestTimeout
{
  v12 = *MEMORY[0x1E69E9840];
  [(AFWatchdogTimer *)self->_requestTimeoutTimer timeRemaining];
  v4 = v3;
  if (self->_requestTimeoutTimer)
  {
    v5 = v3 < 4.0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[AFConnection _extendExpiringRequestTimeout]";
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEFAULT, "%s Extending timeout with time remaining %.2f", &v8, 0x16u);
    }

    [(AFConnection *)self _extendRequestTimeoutForReason:@"ExtendOnlyIfExpiring" durationInSeconds:4.0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_extendExistingRequestTimeoutForReason:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AFConnection _extendExistingRequestTimeoutForReason:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEFAULT, "%s reason = %{public}@", &v7, 0x16u);
  }

  if (self->_requestTimeoutTimer)
  {
    [(AFConnection *)self _extendRequestTimeoutForReason:v4 durationInSeconds:0.0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_extendRequestTimeoutForReason:(id)a3 durationInSeconds:(double)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[AFConnection _extendRequestTimeoutForReason:durationInSeconds:]";
    v11 = 2114;
    v12 = v6;
    v13 = 2050;
    v14 = a4;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEFAULT, "%s reason = %{public}@, durationInSeconds: %{public}f", &v9, 0x20u);
  }

  [(AFConnection *)self _cancelRequestTimeoutForReason:v6];
  if (self->_activeRequestType && !self->_activeRequestUsefulUserResultType)
  {
    [(AFConnection *)self _scheduleRequestTimeoutForReason:v6 durationInSeconds:a4];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_cancelRequestTimeoutForReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requestTimeoutTimer = self->_requestTimeoutTimer;
  if (requestTimeoutTimer)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AFConnection _cancelRequestTimeoutForReason:]";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEFAULT, "%s Canceling request timeout for reason %{public}@", &v9, 0x16u);
      requestTimeoutTimer = self->_requestTimeoutTimer;
    }

    [(AFWatchdogTimer *)requestTimeoutTimer cancel];
    v7 = self->_requestTimeoutTimer;
    self->_requestTimeoutTimer = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_resumeRequestTimeoutForReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requestTimeoutTimer = self->_requestTimeoutTimer;
  if (requestTimeoutTimer)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[AFConnection _resumeRequestTimeoutForReason:]";
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEFAULT, "%s Resuming request timeout for reason %{public}@", &v8, 0x16u);
      requestTimeoutTimer = self->_requestTimeoutTimer;
    }

    [(AFWatchdogTimer *)requestTimeoutTimer start];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_pauseRequestTimeoutForReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  requestTimeoutTimer = self->_requestTimeoutTimer;
  if (requestTimeoutTimer)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[AFConnection _pauseRequestTimeoutForReason:]";
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEFAULT, "%s Pausing request timeout for reason %{public}@", &v8, 0x16u);
      requestTimeoutTimer = self->_requestTimeoutTimer;
    }

    [(AFWatchdogTimer *)requestTimeoutTimer stop];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_invokeRequestTimeoutForReason:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[AFConnection _invokeRequestTimeoutForReason:]";
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEFAULT, "%s Invoking request timeout for reason %{public}@", &v12, 0x16u);
  }

  [(AFConnection *)self _cancelRequestTimeoutForReason:v4];
  if (self->_connectionHadActiveNetwork || AFDeviceSupportsSiriUOD() && (+[AFConnection currentLanguageCode], v7 = objc_claimAutoreleasedReturnValue(), v8 = [AFFeatureFlags isSiriUODAvailableForLanguage:v7], v7, v8))
  {
    v6 = 1;
  }

  else
  {
    v6 = 52;
  }

  v9 = [AFError errorWithCode:v6 description:0 underlyingError:self->_lastRetryError];
  v10 = [(AFConnection *)self _clientService];
  [v10 cancelRequestForReason:4 withError:v9];

  [(AFConnection *)self _completeRequestWithUUID:self->_activeRequestUUID forReason:3 error:v9];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_startRequestTimeoutTimerWithTimeInterval:(double)a3 reason:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[AFConnection _startRequestTimeoutTimerWithTimeInterval:reason:]";
    v22 = 2048;
    v23 = a3;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEFAULT, "%s Scheduling request timeout for %f seconds for reason %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v9 = [AFWatchdogTimer alloc];
  targetQueue = self->_targetQueue;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __65__AFConnection__startRequestTimeoutTimerWithTimeInterval_reason___block_invoke;
  v18 = &unk_1E7346CF0;
  objc_copyWeak(v19, buf);
  v19[1] = a2;
  v11 = [(AFWatchdogTimer *)v9 initWithTimeoutInterval:targetQueue onQueue:&v15 timeoutHandler:a3];
  requestTimeoutTimer = self->_requestTimeoutTimer;
  p_requestTimeoutTimer = &self->_requestTimeoutTimer;
  *p_requestTimeoutTimer = v11;

  [*p_requestTimeoutTimer start];
  objc_destroyWeak(v19);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x1E69E9840];
}

void __65__AFConnection__startRequestTimeoutTimerWithTimeInterval_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = NSStringFromSelector(*(a1 + 40));
  [WeakRetained _invokeRequestTimeoutForReason:v2];
}

- (void)_scheduleRequestTimeoutForReason:(id)a3 durationInSeconds:(double)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(AFConnection *)self _cancelRequestTimeoutForReason:v6];
  if (!self->_requestTimeoutTimer)
  {
    if (a4 == 0.0)
    {
      v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.assistant"];
      [v7 doubleForKey:@"defaultTimeout"];
      if (v8 == 0.0)
      {
        a4 = 12.0;
      }

      else
      {
        a4 = v8;
        v9 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          v11 = 136315394;
          v12 = "[AFConnection _scheduleRequestTimeoutForReason:durationInSeconds:]";
          v13 = 2048;
          v14 = a4;
          _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s Using timeout interval of %f seconds based on UserDefaults", &v11, 0x16u);
        }
      }
    }

    [(AFConnection *)self _startRequestTimeoutTimerWithTimeInterval:v6 reason:a4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)requestDidAskForTimeoutExtension:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "[AFConnection requestDidAskForTimeoutExtension:]";
    v11 = 2048;
    v12 = a3;
    _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s durationInSeconds: %f", &v9, 0x16u);
  }

  v7 = NSStringFromSelector(a2);
  [(AFConnection *)self _extendRequestTimeoutForReason:v7 durationInSeconds:a3];

  v8 = *MEMORY[0x1E69E9840];
}

void __27__AFConnection__connection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AFConnection__connection__block_invoke_2;
  block[3] = &unk_1E7348A80;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __27__AFConnection__connection__block_invoke_234(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AFConnection__connection__block_invoke_2_235;
  block[3] = &unk_1E7348A80;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __27__AFConnection__connection__block_invoke_2_235(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[AFConnection _connection]_block_invoke_2";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Connection interrupted", &v8, 0xCu);
  }

  v3 = [AFError errorWithCode:7];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionFailedWithError:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _updateState];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _updateClientConfiguration];

  v7 = *MEMORY[0x1E69E9840];
}

void __27__AFConnection__connection__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AFConnection _connection]_block_invoke_2";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Connection invalidated", &v7, 0xCu);
  }

  v3 = [AFError errorWithCode:23];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionFailedWithError:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _clearConnection];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_clearConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (void)_connectionFailedWithError:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AFConnection *)self _siriClientStateManager];
  [v5 beginTransactionForReason:4];

  v6 = *(self + 224);
  *(self + 224) = v6 & 0xFE;
  *(self + 280) &= ~1u;
  if ((v6 & 4) != 0)
  {
    *(self + 224) = v6 & 0xFA;
    WeakRetained = objc_loadWeakRetained(&self->_speechDelegate);

    if (WeakRetained)
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315138;
        v13 = "[AFConnection _connectionFailedWithError:]";
        _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Reporting speech error on connection tear down", &v12, 0xCu);
      }

      [(AFConnection *)self _tellSpeechDelegateRecordingDidFail:v4];
    }

    if (!_AFConnectionIsErrorDeallocation(v4))
    {
      v9 = [(AFConnection *)self _siriClientStateManager];
      [v9 endListeningForClient:self->_clientID];
    }
  }

  [(AFConnection *)self _completeRequestWithUUID:self->_activeRequestUUID forReason:4 error:v4];
  [(AFConnection *)self _stopInputAudioPowerUpdates];
  v10 = [(AFConnection *)self _siriClientStateManager];
  [v10 endTransactionForReason:4];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)interstitialProvider:(id)a3 handlePhase:(int64_t)a4 displayText:(id)a5 speakableText:(id)a6 expectedDelay:(double)a7 context:(id)a8 completion:(id)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  targetQueue = self->_targetQueue;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __108__AFConnection_interstitialProvider_handlePhase_displayText_speakableText_expectedDelay_context_completion___block_invoke;
  v27[3] = &unk_1E7341790;
  v32 = v20;
  v33 = a4;
  v27[4] = self;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v34 = a7;
  v31 = v19;
  v22 = v20;
  v23 = v19;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  dispatch_async(targetQueue, v27);
}

uint64_t __108__AFConnection_interstitialProvider_handlePhase_displayText_speakableText_expectedDelay_context_completion___block_invoke(double *a1)
{
  if (+[AFFeatureFlags isStateFeedbackEnabled])
  {
    result = *(a1 + 9);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v5 = *(a1 + 9);
    v4 = *(a1 + 10);
    v6 = *(a1 + 4);
    v7 = *(a1 + 5);
    v8 = *(a1 + 6);
    v9 = *(a1 + 7);
    v10 = a1[11];
    v11 = *(a1 + 8);

    return [v6 _handleInterstitialPhase:v4 fromProvider:v7 displayText:v8 speakableText:v9 expectedDelay:v11 context:v5 completion:v10];
  }

  return result;
}

- (void)deviceRingerObserver:(id)a3 didChangeState:(int64_t)a4
{
  targetQueue = self->_targetQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AFConnection_deviceRingerObserver_didChangeState___block_invoke;
  v5[3] = &unk_1E7348498;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(targetQueue, v5);
}

- (void)accessibilityObserver:(id)a3 stateDidChangeFrom:(id)a4 to:(id)a5
{
  v6 = a5;
  targetQueue = self->_targetQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__AFConnection_accessibilityObserver_stateDidChangeFrom_to___block_invoke;
  v9[3] = &unk_1E7349860;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(targetQueue, v9);
}

- (void)audioPowerUpdaterDidUpdate:(id)a3 averagePower:(float)a4 peakPower:(float)a5
{
  if (self->_inputAudioPowerUpdater == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_speechDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_speechDelegate);
      [v8 assistantConnectionDidChangeAudioRecordingPower:self];
    }
  }
}

- (void)_tellSpeechDelegateRecognitionDidFail:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AFConnection__tellSpeechDelegateRecognitionDidFail___block_invoke;
  v6[3] = &unk_1E7341678;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v6];
}

void __54__AFConnection__tellSpeechDelegateRecognitionDidFail___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) speechRecognitionDidFail:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateSpeechRecognizedPartialResult:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__AFConnection__tellSpeechDelegateSpeechRecognizedPartialResult___block_invoke;
  v6[3] = &unk_1E7341678;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v6];
}

void __65__AFConnection__tellSpeechDelegateSpeechRecognizedPartialResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) speechRecognizedPartialResult:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateRecognitionUpdateWillBeginForTask:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__AFConnection__tellSpeechDelegateRecognitionUpdateWillBeginForTask___block_invoke;
  v6[3] = &unk_1E7341678;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v6];
}

void __69__AFConnection__tellSpeechDelegateRecognitionUpdateWillBeginForTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) recognitionUpdateWillBeginForTask:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateRecordingDidUpdateRecognitionPhrases:(id)a3 utterances:(id)a4 refId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__AFConnection__tellSpeechDelegateRecordingDidUpdateRecognitionPhrases_utterances_refId___block_invoke;
  v14[3] = &unk_1E7341768;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v14];
}

void __89__AFConnection__tellSpeechDelegateRecordingDidUpdateRecognitionPhrases_utterances_refId___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:a1[4] recognitionUpdateWithPhrases:a1[5] utterances:a1[6] refId:a1[7]];
  }
}

- (void)_tellSpeechDelegateRecognizedAdditionalSpeechInterpretation:(id)a3 refId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__AFConnection__tellSpeechDelegateRecognizedAdditionalSpeechInterpretation_refId___block_invoke;
  v10[3] = &unk_1E7341740;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v10];
}

void __82__AFConnection__tellSpeechDelegateRecognizedAdditionalSpeechInterpretation_refId___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:a1[4] recognizedAdditionalSpeechInterpretation:a1[5] refId:a1[6]];
  }
}

- (void)_tellSpeechDelegateSpeechRecognized:(id)a3
{
  v4 = a3;
  if (self->_activeRequestType == 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_activeRequestSpeechRecognitionTimeInterval = v5;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AFConnection__tellSpeechDelegateSpeechRecognized___block_invoke;
  v7[3] = &unk_1E7341678;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v7];
}

void __52__AFConnection__tellSpeechDelegateSpeechRecognized___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) speechRecognized:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateRecordingDidFail:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AFConnection__tellSpeechDelegateRecordingDidFail___block_invoke;
  v6[3] = &unk_1E7341678;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v6];
}

void __52__AFConnection__tellSpeechDelegateRecordingDidFail___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) speechRecordingDidFail:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateRecordingDidCancel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__AFConnection__tellSpeechDelegateRecordingDidCancel__block_invoke;
  v2[3] = &unk_1E73416C8;
  v2[4] = self;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v2];
}

void __53__AFConnection__tellSpeechDelegateRecordingDidCancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnectionSpeechRecordingDidCancel:*(a1 + 32)];
  }
}

- (void)_tellSpeechDelegateRecordingDidEnd
{
  if (self->_activeRequestType == 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_activeRequestSpeechRecordingEndTimeInterval = v3;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AFConnection__tellSpeechDelegateRecordingDidEnd__block_invoke;
  v4[3] = &unk_1E73416C8;
  v4[4] = self;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v4];
}

void __50__AFConnection__tellSpeechDelegateRecordingDidEnd__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnectionSpeechRecordingDidEnd:*(a1 + 32)];
  }
}

- (void)_tellSpeechDelegateToPerformTwoShotPromptWithType:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__AFConnection__tellSpeechDelegateToPerformTwoShotPromptWithType_reply___block_invoke;
  v8[3] = &unk_1E7341718;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v8];
}

void __72__AFConnection__tellSpeechDelegateToPerformTwoShotPromptWithType_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  if (v5 == 1 && !*(v4 + 80))
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = *(a1 + 48);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __72__AFConnection__tellSpeechDelegateToPerformTwoShotPromptWithType_reply___block_invoke_2;
      v12[3] = &unk_1E73416F0;
      v10 = *(a1 + 32);
      v13 = *(a1 + 40);
      [v3 assistantConnection:v10 speechRecordingPerformTwoShotPromptWithType:v9 completion:v12];

      goto LABEL_6;
    }

    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_6;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"Speech delegate %@ is incapable of performing two-shot prompt.", v3, v11];
    goto LABEL_5;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Active request type is %ld and active request UUFR type is %ld, two-shot prompt is ignored.", v5, *(v4 + 80)];
    v7 = LABEL_5:;
    v8 = [AFError errorWithCode:15 description:v7 underlyingError:0];
    (*(v6 + 16))(v6, v8, 0.0, 0.0);
  }

LABEL_6:
}

uint64_t __72__AFConnection__tellSpeechDelegateToPerformTwoShotPromptWithType_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_tellSpeechDelegateRecordingDidDetectStartpoint
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__AFConnection__tellSpeechDelegateRecordingDidDetectStartpoint__block_invoke;
  v2[3] = &unk_1E73416C8;
  v2[4] = self;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v2];
}

void __63__AFConnection__tellSpeechDelegateRecordingDidDetectStartpoint__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnectionSpeechRecordingDidDetectStartpoint:*(a1 + 32)];
  }
}

- (void)_tellSpeechDelegateRecordingDidChangeAVRecordRoute:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__AFConnection__tellSpeechDelegateRecordingDidChangeAVRecordRoute___block_invoke;
  v6[3] = &unk_1E7341678;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v6];
}

void __67__AFConnection__tellSpeechDelegateRecordingDidChangeAVRecordRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) speechRecordingDidChangeAVRecordRoute:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateRecordingDidBeginOnAVRecordRoute:(id)a3 audioSessionID:(unsigned int)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__AFConnection__tellSpeechDelegateRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke;
  v8[3] = &unk_1E73416A0;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v8];
}

void __83__AFConnection__tellSpeechDelegateRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) speechRecordingDidBeginOnAVRecordRoute:*(a1 + 40) audioSessionID:*(a1 + 48)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) speechRecordingDidBeginOnAVRecordRoute:*(a1 + 40)];
  }
}

- (void)_tellSpeechDelegateRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__AFConnection__tellSpeechDelegateRecordingWillBeginWithInputAudioPowerXPCWrapper___block_invoke;
  v6[3] = &unk_1E7341678;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AFConnection *)self _dispatchCallbackGroupBlock:v6];
}

void __83__AFConnection__tellSpeechDelegateRecordingWillBeginWithInputAudioPowerXPCWrapper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnection:*(a1 + 32) speechRecordingWillBeginWithInputAudioPowerXPCWrapper:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnectionSpeechRecordingWillBegin:*(a1 + 32)];
  }
}

- (void)_dispatchCallbackGroupBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_speechCallbackGroup)
    {
      objc_copyWeak(&to, &self->_speechDelegate);
      speechCallbackGroup = self->_speechCallbackGroup;
      targetQueue = self->_targetQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__AFConnection__dispatchCallbackGroupBlock___block_invoke;
      block[3] = &unk_1E7344098;
      v9 = v4;
      objc_copyWeak(&v10, &to);
      dispatch_group_notify(speechCallbackGroup, targetQueue, block);
      objc_destroyWeak(&v10);

      objc_destroyWeak(&to);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_speechDelegate);
      (*(v4 + 2))(v4, WeakRetained);
    }
  }
}

void __44__AFConnection__dispatchCallbackGroupBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

- (void)_tellDelegateFailedToLaunchAppWithBundleIdentifier:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 assistantConnection:self appLaunchFailedWithBundleIdentifier:v7];
  }
}

- (void)_tellDelegateWillProcessAppLaunchWithBundleIdentifier:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 assistantConnection:self willProcessAppLaunchWithBundleIdentifier:v7];
  }
}

- (void)_tellDelegateStartPlaybackDidFail:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 assistantConnection:self startPlaybackDidFail:a3];
  }
}

- (void)_tellDelegateWillProcessStartPlayback:(int64_t)a3 intent:(id)a4 completion:(id)a5
{
  v15 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = v11;
  if (v10)
  {
    [v11 assistantConnection:self willProcessStartPlayback:a3 intent:v15 completion:v8];
  }

  else
  {
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 assistantConnection:self willProcessStartPlayback:a3];
    }

    if (v8)
    {
      v8[2](v8, 1, 1);
    }
  }
}

- (void)_tellDelegateAudioPlaybackRequestDidStop:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 assistantConnection:self didStopAudioPlaybackRequest:v10 error:v6];
  }
}

- (void)_tellDelegateAudioPlaybackRequestDidStart:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 assistantConnection:self didStartAudioPlaybackRequest:v7];
  }
}

- (void)_tellDelegateAudioPlaybackRequestWillStart:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 assistantConnection:self willStartAudioPlaybackRequest:v7];
  }
}

- (void)_tellDelegateAudioSessionDidBeginInterruptionWithUserInfo:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = v6;
  if (v5)
  {
    [v6 assistantConnectionAudioSessionDidBeginInterruption:self userInfo:v9];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 assistantConnectionAudioSessionDidBeginInterruption:self];
  }

LABEL_6:
}

- (void)_tellDelegateExtensionRequestFinishedForApplication:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 assistantConnection:self extensionRequestFinishedForApplication:v10 error:v6];
  }
}

- (void)_tellDelegateExtensionRequestWillStartForApplication:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 assistantConnection:self extensionRequestWillStartForApplication:v7];
  }
}

- (void)_tellDelegateCacheImage:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 assistantConnection:self wantsToCacheImage:v7];
  }
}

- (void)_tellDelegateSetUserActivityInfo:(id)a3 webpageURL:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 assistantConnection:self setUserActivtiyInfoAndMakeCurrent:v10 webpageURL:v6];
  }
}

- (void)_tellDelegateDidDetectMusic
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 assistantConnectionDidDetectMusic:self];
  }
}

- (void)_tellDelegateWillStartAcousticIDRequest
{
  [(AFAnalytics *)self->_analytics logEventWithType:1916 context:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 assistantConnectionWillStartAcousticIDRequest:self];
  }
}

- (void)_completeRequestWithUUID:(id)a3 forReason:(int64_t)a4 error:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    activeTurnIdentifier = self->_activeTurnIdentifier;
    v29 = 136316162;
    v30 = "[AFConnection _completeRequestWithUUID:forReason:error:]";
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = activeTurnIdentifier;
    v35 = 2048;
    v36 = a4;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s requestUUID = %@, turnId = %@, reason %ld, error = %@", &v29, 0x34u);
  }

  activeRequestType = self->_activeRequestType;
  if (activeRequestType == 1)
  {
    v13 = [(NSUUID *)self->_activeRequestUUID isEqual:v8];
    if (self->_activeRequestType)
    {
      goto LABEL_5;
    }

LABEL_10:
    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v29 = 136315138;
      v30 = "[AFConnection _completeRequestWithUUID:forReason:error:]";
      _os_log_impl(&dword_1912FE000, v18, OS_LOG_TYPE_INFO, "%s Dropping delegate callback because request is complete", &v29, 0xCu);
    }

    p_activeRequestUUID = &self->_activeRequestUUID;
    if (([(NSUUID *)self->_activeRequestUUID isEqual:v8]& 1) != 0)
    {
      goto LABEL_18;
    }

LABEL_13:
    v19 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      activeRequestUUID = self->_activeRequestUUID;
      v21 = self->_activeTurnIdentifier;
      v29 = 136315906;
      v30 = "[AFConnection _completeRequestWithUUID:forReason:error:]";
      v31 = 2112;
      v32 = activeRequestUUID;
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_1912FE000, v19, OS_LOG_TYPE_INFO, "%s Dropping delegate callback because request is different (_activeRequestUUID = %@, requestUUID = %@, turnId = %@)", &v29, 0x2Au);
    }

    goto LABEL_18;
  }

  v13 = 0;
  if (!activeRequestType)
  {
    goto LABEL_10;
  }

LABEL_5:
  p_activeRequestUUID = &self->_activeRequestUUID;
  if (([(NSUUID *)self->_activeRequestUUID isEqual:v8]& 1) == 0)
  {
    goto LABEL_13;
  }

  if (v9)
  {
    [(AFConnection *)self _willFailRequestWithError:v9];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 assistantConnection:self requestFailedWithError:v9 requestClass:self->_outstandingRequestClass];
LABEL_17:
    }
  }

  else
  {
    [(AFConnection *)self _willCompleteRequest];
    v22 = objc_loadWeakRetained(&self->_delegate);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 assistantConnectionRequestFinished:self];
      goto LABEL_17;
    }
  }

LABEL_18:
  if (*p_activeRequestUUID && ![*p_activeRequestUUID isEqual:v8])
  {
    v26 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v27 = self->_activeRequestUUID;
      v28 = self->_activeTurnIdentifier;
      v29 = 136315906;
      v30 = "[AFConnection _completeRequestWithUUID:forReason:error:]";
      v31 = 2112;
      v32 = v27;
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v28;
      _os_log_impl(&dword_1912FE000, v26, OS_LOG_TYPE_INFO, "%s Not ending the ongoing request because the active request ID is different than the completed request ID: (_activeRequestUUID = %@, requestUUID = %@, turnId = %@)", &v29, 0x2Au);
    }
  }

  else
  {
    [(AFConnection *)self _requestDidEnd];
  }

  if (v13)
  {
    v24 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v29 = 136315650;
      v30 = "[AFConnection _completeRequestWithUUID:forReason:error:]";
      v31 = 2112;
      v32 = v8;
      v33 = 2048;
      v34 = a4;
      _os_log_impl(&dword_1912FE000, v24, OS_LOG_TYPE_INFO, "%s Resetting isCapturingSpeech for %@ for reason: %ld", &v29, 0x20u);
    }

    [(AFConnection *)self _checkAndSetIsCapturingSpeech:0];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_updateSpeechEndHostTime:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  activeRequestType = self->_activeRequestType;
  v5 = AFSiriLogContextConnection;
  if (activeRequestType != 1)
  {
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    activeRequestUUID = self->_activeRequestUUID;
    *buf = 136315650;
    v18 = "[AFConnection _updateSpeechEndHostTime:]";
    v19 = 2048;
    v20 = activeRequestType;
    v21 = 2112;
    v22 = activeRequestUUID;
    v12 = "%s Unable to update speech end host time. (_activeRequestType = %zd, _activeRequestUUID = %@)";
    v13 = v5;
    v14 = 32;
    goto LABEL_19;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[AFConnection _updateSpeechEndHostTime:]";
    v19 = 2048;
    v20 = a3;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s updating speech end host time: %llu", buf, 0x16u);
  }

  if (self->_activeRequestSpeechEndHostTime != a3)
  {
    self->_activeRequestSpeechEndHostTime = a3;
    if (+[AFFeatureFlags isStateFeedbackEnabled])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __41__AFConnection__updateSpeechEndHostTime___block_invoke;
      v16[3] = &unk_1E7341650;
      v16[4] = self;
      v16[5] = a3;
      [(AFConnection *)self _dispatchCallbackGroupBlock:v16];
      goto LABEL_8;
    }

    activeRequestNumberOfPresentedInterstitials = self->_activeRequestNumberOfPresentedInterstitials;
    v10 = AFSiriLogContextConnection;
    if (activeRequestNumberOfPresentedInterstitials == 1)
    {
      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 136315138;
      v18 = "[AFConnection _updateSpeechEndHostTime:]";
      v12 = "%s Skipped timing adjustment because 1 interstitial has been presented.";
      v13 = v10;
      v14 = 12;
    }

    else
    {
      if (!activeRequestNumberOfPresentedInterstitials)
      {
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v18 = "[AFConnection _updateSpeechEndHostTime:]";
          v19 = 2048;
          v20 = a3;
          _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s No interstitial has been presented yet, adjusting timings based on updated speech end host time %llu.", buf, 0x16u);
        }

        v11 = NSStringFromSelector(a2);
        [(AFConnection *)self _endInterstitialsForReason:v11];
        [(AFConnection *)self _beginInterstitialsForReason:v11];

        goto LABEL_8;
      }

      if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 136315394;
      v18 = "[AFConnection _updateSpeechEndHostTime:]";
      v19 = 2048;
      v20 = activeRequestNumberOfPresentedInterstitials;
      v12 = "%s Skipped timing adjustment because %lu interstitials have been presented.";
      v13 = v10;
      v14 = 22;
    }

LABEL_19:
    _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
}

void __41__AFConnection__updateSpeechEndHostTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assistantConnectionUpdatedSpeechEndEstimate:*(a1 + 32) speechEndEstimate:*(a1 + 40)];
  }
}

- (void)_markSpeechRecognized
{
  v13 = *MEMORY[0x1E69E9840];
  activeRequestType = self->_activeRequestType;
  if (activeRequestType == 1)
  {
    self->_activeRequestHasSpeechRecognition = 1;
  }

  else
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      activeRequestUUID = self->_activeRequestUUID;
      v7 = 136315650;
      v8 = "[AFConnection _markSpeechRecognized]";
      v9 = 2048;
      v10 = activeRequestType;
      v11 = 2112;
      v12 = activeRequestUUID;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Unable to mark speech recognized because the active request is not a speech request. (_activeRequestType = %ld, _activeRequestUUID = %@)", &v7, 0x20u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_markIsTwoShot
{
  v13 = *MEMORY[0x1E69E9840];
  activeRequestType = self->_activeRequestType;
  if (activeRequestType == 1)
  {
    self->_activeRequestIsTwoShot = 1;
  }

  else
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      activeRequestUUID = self->_activeRequestUUID;
      v7 = 136315650;
      v8 = "[AFConnection _markIsTwoShot]";
      v9 = 2048;
      v10 = activeRequestType;
      v11 = 2112;
      v12 = activeRequestUUID;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Unable to mark isTwoShot because the active request is not a speech request. (_activeRequestType = %zd, _activeRequestUUID = %@)", &v7, 0x20u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_markIsDucking
{
  v13 = *MEMORY[0x1E69E9840];
  activeRequestType = self->_activeRequestType;
  if (activeRequestType == 1)
  {
    self->_activeRequestIsDucking = 1;
  }

  else
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      activeRequestUUID = self->_activeRequestUUID;
      v7 = 136315650;
      v8 = "[AFConnection _markIsDucking]";
      v9 = 2048;
      v10 = activeRequestType;
      v11 = 2112;
      v12 = activeRequestUUID;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Unable to mark isDucking because the active request is not a speech request. (_activeRequestType = %zd, _activeRequestUUID = %@)", &v7, 0x20u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setRecordRoute:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[AFConnection _setRecordRoute:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s recordRoute = %@", &v10, 0x16u);
  }

  recordRoute = self->_recordRoute;
  if (recordRoute != v4 && ![(NSString *)recordRoute isEqualToString:v4])
  {
    v7 = [(NSString *)v4 copy];
    v8 = self->_recordRoute;
    self->_recordRoute = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setAudioSessionID:(unsigned int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "[AFConnection _setAudioSessionID:]";
    v11 = 2048;
    v12 = a3;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s audioSessionID = %lu", buf, 0x16u);
  }

  if (self->_audioSessionID != a3)
  {
    self->_audioSessionID = a3;
    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__AFConnection__setAudioSessionID___block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(targetQueue, block);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_stopInputAudioPowerUpdates
{
  v9 = *MEMORY[0x1E69E9840];
  inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  if (inputAudioPowerUpdater)
  {
    [(AFAudioPowerUpdater *)inputAudioPowerUpdater endUpdate];
    [(AFAudioPowerUpdater *)self->_inputAudioPowerUpdater invalidate];
    v4 = self->_inputAudioPowerUpdater;
    self->_inputAudioPowerUpdater = 0;

    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[AFConnection _stopInputAudioPowerUpdates]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Stopped input audio power updates.", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_startInputAudioPowerUpdatesWithXPCWrapper:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(AFConnection *)self _stopInputAudioPowerUpdates];
  if (v4 && (WeakRetained = objc_loadWeakRetained(&self->_speechDelegate), v6 = objc_opt_respondsToSelector(), WeakRetained, (v6 & 1) != 0))
  {
    v7 = [[AFAudioPowerXPCProvider alloc] initWithXPCWrapper:v4];
    v8 = [[AFAudioPowerUpdater alloc] initWithProvider:v7 queue:self->_targetQueue frequency:1 delegate:self];
    inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
    self->_inputAudioPowerUpdater = v8;

    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[AFConnection _startInputAudioPowerUpdatesWithXPCWrapper:]";
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s Prepared for input audio power updates. Waiting for _speechCallbackGroup...", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__AFConnection__startInputAudioPowerUpdatesWithXPCWrapper___block_invoke;
    v14[3] = &unk_1E7341628;
    objc_copyWeak(&v15, buf);
    [(AFConnection *)self _dispatchCallbackGroupBlock:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __59__AFConnection__startInputAudioPowerUpdatesWithXPCWrapper___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 31);
    if (v3)
    {
      [v3 beginUpdate];
      v4 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "[AFConnection _startInputAudioPowerUpdatesWithXPCWrapper:]_block_invoke";
        _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Started input audio power updates.", &v6, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setShouldSpeak:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v11 = "[AFConnection _setShouldSpeak:]";
    v12 = 1024;
    v13 = v3;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s shouldSpeak = %d", buf, 0x12u);
  }

  if ([(AFConnection *)self shouldSpeak]!= v3)
  {
    if (v3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 224) = *(self + 224) & 0xFD | v6;
    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__AFConnection__setShouldSpeak___block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(targetQueue, block);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchCommand:(id)a3 isInterstitial:(BOOL)a4 interstitialPhase:(int64_t)a5 interstitialDelay:(double)a6 reply:(id)a7
{
  v10 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();
  v17 = AFSiriLogContextConnection;
  if (v16)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v45 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]";
      v46 = 2112;
      v47 = v13;
      v48 = 1024;
      LODWORD(v49) = v10;
      _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_DEFAULT, "%s command = %@, isInterstitial = %d", buf, 0x1Cu);
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __90__AFConnection__dispatchCommand_isInterstitial_interstitialPhase_interstitialDelay_reply___block_invoke;
    v36[3] = &unk_1E73415D8;
    v36[4] = self;
    v18 = v13;
    v43 = v10;
    v37 = v18;
    v40 = a5;
    v41 = a2;
    v42 = a6;
    v38 = WeakRetained;
    v19 = v14;
    v39 = v19;
    v20 = MEMORY[0x193AFB7B0](v36);
    v21 = v20;
    activeRequestSpeechEvent = self->_activeRequestSpeechEvent;
    if (activeRequestSpeechEvent <= 0x1F && ((0x80018900 >> activeRequestSpeechEvent) & 1) != 0)
    {
      targetQueue = self->_targetQueue;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __90__AFConnection__dispatchCommand_isInterstitial_interstitialPhase_interstitialDelay_reply___block_invoke_126;
      v30[3] = &unk_1E7341600;
      v35 = v10;
      v30[4] = self;
      v31 = v18;
      v32 = v19;
      v33 = v21;
      v34 = a2;
      dispatch_async(targetQueue, v30);
    }

    else
    {
      (*(v20 + 16))(v20);
      if (!v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = NSStringFromSelector(a2);
          [(AFConnection *)self _cancelRequestTimeoutForReason:v26];
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v28 = v17;
      v29 = [v13 encodedClassName];
      *buf = 136315650;
      v45 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]";
      v46 = 2112;
      v47 = WeakRetained;
      v48 = 2112;
      v49 = v29;
      _os_log_error_impl(&dword_1912FE000, v28, OS_LOG_TYPE_ERROR, "%s no delegate method on %@ to handle command: %@", buf, 0x20u);
    }

    v24 = [AFError errorWithCode:26];
    (*(v14 + 2))(v14, 0, v24);

    if (!v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = NSStringFromSelector(a2);
        [(AFConnection *)self _cancelRequestTimeoutForReason:v25];
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __90__AFConnection__dispatchCommand_isInterstitial_interstitialPhase_interstitialDelay_reply___block_invoke(uint64_t a1)
{
  v111 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 64) UUIDString];
  v3 = [*(a1 + 40) encodedClassName];
  LODWORD(v4) = AFShouldEmitAceCommandContextSELFLog(v2, v3);

  v5 = AFAnalyticsContextCreateWithCommand(*(a1 + 40));
  [*(*(a1 + 32) + 336) logEventWithType:1421 context:v5 contextNoCopy:1];
  if (v4)
  {
    v6 = *(*(a1 + 32) + 64);
    v7 = [*(a1 + 40) encodedClassName];
    v8 = [*(a1 + 40) aceId];
    v9 = v6;
    v10 = v7;
    v11 = [v9 UUIDString];
    v12 = _ConvertIdToSchemaUUID(v11);

    if (v12)
    {
      v97 = v4;
      v4 = objc_alloc_init(MEMORY[0x1E69CF310]);
      v13 = objc_alloc_init(MEMORY[0x1E69CF318]);
      [v13 setRequestId:v12];
      [v4 setEventMetadata:v13];
      v95 = v5;
      v14 = objc_alloc_init(MEMORY[0x1E69CF2D0]);
      v15 = objc_alloc_init(MEMORY[0x1E69CF2E0]);
      [v15 setAceCommandType:2];
      [v15 setAceCommandName:v10];
      [v14 setStartedOrChanged:v15];
      v16 = _ConvertIdToSchemaUUID(v8);
      [v14 setAceId:v16];

      [v4 setAceCommandContext:v14];
      v17 = [MEMORY[0x1E69CE1E8] sharedStream];
      [v17 emitMessage:v4];

      v5 = v95;
      LOBYTE(v4) = v97;
    }

    else
    {
      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v108 = "_EmitAceCommandStartedEvent";
        v109 = 2112;
        v110 = v9;
        _os_log_error_impl(&dword_1912FE000, v18, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed, unable to log SELF command", buf, 0x16u);
      }
    }
  }

  v19 = os_signpost_id_generate(AFSiriLogContextPerformance);
  v20 = AFSiriLogContextPerformance;
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 136315394;
    v108 = "SiriX";
    v109 = 2080;
    v110 = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&dword_1912FE000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "UICommandHandle", "%s %s", buf, 0x16u);
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    v22 = *(a1 + 32);
    v23 = *(v22 + 208);
    if (v23)
    {
      v24 = *(a1 + 40);
      v25 = *(v22 + 336);
      v26 = v24;
      v27 = v23;
      v28 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v94 = v27;
        v29 = [v26 af_dialogPhase];
        v30 = AFSiriLogContextConnection;
        v98 = v4;
        v96 = v5;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v108 = "_LogUUFRReadyConditionally";
          v109 = 2112;
          v110 = v29;
          _os_log_impl(&dword_1912FE000, v30, OS_LOG_TYPE_INFO, "%s Logging uufr for phase= %@", buf, 0x16u);
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_37:
            goto LABEL_38;
          }
        }

        v94 = v27;
        v96 = v5;
        v98 = v4;
        v29 = 0;
      }

      v31 = objc_alloc_init(MEMORY[0x1E69CF630]);
      v93 = v29;
      [v31 setDialogPhase:{objc_msgSend(v29, "UEIUUFRReadyDialogPhase")}];
      v32 = v28;
      v33 = v26;
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v35 = MEMORY[0x1E696AEC0];
        v36 = [v33 groupIdentifier];
        v37 = [v33 encodedClassName];
        v38 = [v35 stringWithFormat:@"%@.%@", v36, v37];

        v39 = [v32 objectForKey:v38];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 objectForKey:@"dialogIdentifiers"];

          v34 = v41;
        }
      }

      [v31 setDialogIdentifiers:v34];
      v42 = v32;
      v43 = v33;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v45 = [v42 objectForKey:@"com.apple.ace.assistant.AddViews"];
        v46 = [v45 objectForKey:@"views"];
        v47 = v46;
        if (v46 && [v46 count])
        {
          v48 = [v47 objectAtIndex:0];
          v49 = _ExtractAceViewId(v48);
        }

        else
        {
          v49 = 0;
        }
      }

      else
      {
        v49 = 0;
      }

      [v31 setAceViewId:v49];
      [v31 setUufrReadySource:1];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      [v31 setAceCommandClass:v51];

      v52 = [v43 aceId];
      v53 = _ConvertIdToSchemaUUID(v52);
      [v31 setAceCommandId:v53];

      [v25 logInstrumentation:v31 machAbsoluteTime:mach_absolute_time() turnIdentifier:v94];
      if (AFIsInternalInstall_onceToken != -1)
      {
        dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
      }

      LOBYTE(v4) = v98;
      v5 = v96;
      if (AFIsInternalInstall_isInternal)
      {
        v25 = [*(*(a1 + 32) + 208) UUIDString];
        if (v25)
        {
          [*(*(a1 + 32) + 48) trackEvent:v25 forTurn:*(*(a1 + 32) + 192)];
        }

        goto LABEL_37;
      }
    }
  }

LABEL_38:
  if (*(a1 + 88) == 1)
  {
    v54 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v55 = *(a1 + 64);
      v56 = v54;
      if (v55 > 4)
      {
        v57 = @"(unknown)";
      }

      else
      {
        v57 = off_1E7345CA8[v55];
      }

      v58 = v57;
      *buf = 136315394;
      v108 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
      v109 = 2112;
      v110 = v58;
      _os_log_impl(&dword_1912FE000, v56, OS_LOG_TYPE_INFO, "%s interstitialPhase = %@", buf, 0x16u);
    }

    v59 = *(a1 + 32);
    v60 = NSStringFromSelector(*(a1 + 72));
    [v59 _pauseRequestTimeoutForReason:v60];

    if (AFIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    }

    if (AFIsInternalInstall_isInternal == 1 && *(a1 + 64) == 1)
    {
      v61 = mach_absolute_time();
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v63 = v62;
      v64 = [MEMORY[0x1E696AE30] processInfo];
      [v64 systemUptime];
      v66 = v65;

      *(*(a1 + 32) + 200) = v63;
      v67 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v68 = *(a1 + 80);
        *buf = 136315394;
        v108 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
        v109 = 2048;
        v110 = v68;
        _os_log_impl(&dword_1912FE000, v67, OS_LOG_TYPE_INFO, "%s interstitialDelay = %f (expected)", buf, 0x16u);
      }

      v69 = *(a1 + 32);
      v70 = *(v69 + 72);
      v71 = 0.0;
      if (v70 == 2)
      {
        v82 = *(v69 + 128);
        if (v82 > 0.0)
        {
          v83 = v66 - v82;
          v84 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v108 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
            v109 = 2048;
            v110 = *&v83;
            _os_log_impl(&dword_1912FE000, v84, OS_LOG_TYPE_INFO, "%s durationFromRequestBegin = %f", buf, 0x16u);
          }

          v71 = fmax(v83, 0.0);
        }
      }

      else if (v70 == 1)
      {
        v72 = *(v69 + 184);
        if (v72 > 0.0)
        {
          v73 = v63 - v72;
          v74 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v108 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
            v109 = 2048;
            v110 = *&v73;
            _os_log_impl(&dword_1912FE000, v74, OS_LOG_TYPE_INFO, "%s durationFromSpeechRecordingEnd = %f", buf, 0x16u);
            v69 = *(a1 + 32);
          }

          v71 = fmax(v73, 0.0);
        }

        v75 = *(v69 + 192);
        if (v75 > 0.0)
        {
          v76 = v63 - v75;
          v77 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v108 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
            v109 = 2048;
            v110 = *&v76;
            _os_log_impl(&dword_1912FE000, v77, OS_LOG_TYPE_INFO, "%s durationFromSpeechRecognition = %f", buf, 0x16u);
            v69 = *(a1 + 32);
          }

          v71 = fmax(v71, v76);
        }

        v78 = *(v69 + 136);
        if (v78)
        {
          v79 = v61 - v78;
          if (_AFMachAbsoluteTimeRate_onceToken != -1)
          {
            dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
          }

          v80 = *&_AFMachAbsoluteTimeRate_rate * v79 / 1000000000.0;
          v81 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v108 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
            v109 = 2048;
            v110 = *&v80;
            _os_log_impl(&dword_1912FE000, v81, OS_LOG_TYPE_INFO, "%s durationFromSpeechEnd = %f", buf, 0x16u);
          }

          v71 = fmax(v71, v80);
        }
      }

      v85 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v108 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
        v109 = 2048;
        v110 = *&v71;
        _os_log_impl(&dword_1912FE000, v85, OS_LOG_TYPE_INFO, "%s interstitialDelay = %f (actual)", buf, 0x16u);
      }

      if (v71 < *(a1 + 80) + -0.2)
      {
        v86 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v108 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
          _os_log_error_impl(&dword_1912FE000, v86, OS_LOG_TYPE_ERROR, "%s Initial interstitial fired too early!", buf, 0xCu);
        }

        [*(a1 + 32) reportIssueForType:@"Interstitial" subtype:@"Early Fire" context:0];
      }
    }
  }

  v88 = *(a1 + 40);
  v87 = *(a1 + 48);
  v89 = *(a1 + 32);
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __90__AFConnection__dispatchCommand_isInterstitial_interstitialPhase_interstitialDelay_reply___block_invoke_122;
  v99[3] = &unk_1E73415B0;
  v105 = *(a1 + 88);
  v90 = *(a1 + 72);
  v99[4] = v89;
  v103 = v90;
  v102 = *(a1 + 56);
  v100 = v5;
  v106 = v4;
  v101 = *(a1 + 40);
  v104 = v19;
  v91 = v5;
  [v87 assistantConnection:v89 receivedCommand:v88 completion:v99];

  v92 = *MEMORY[0x1E69E9840];
}

void __90__AFConnection__dispatchCommand_isInterstitial_interstitialPhase_interstitialDelay_reply___block_invoke_126(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1 && *(*(a1 + 32) + 80))
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v11 = 136315394;
      v12 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Drop command %@ because UUFR has been presented.", &v11, 0x16u);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [AFError errorWithCode:38];
      (*(v4 + 16))(v4, 0, v5);
LABEL_12:
    }
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v11 = 136315394;
      v12 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Dispatching command %@", &v11, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
    if ((*(a1 + 72) & 1) == 0)
    {
      v8 = *(a1 + 40);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = *(a1 + 32);
        v5 = NSStringFromSelector(*(a1 + 64));
        [v9 _cancelRequestTimeoutForReason:v5];
        goto LABEL_12;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __90__AFConnection__dispatchCommand_isInterstitial_interstitialPhase_interstitialDelay_reply___block_invoke_122(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__AFConnection__dispatchCommand_isInterstitial_interstitialPhase_interstitialDelay_reply___block_invoke_2;
  block[3] = &unk_1E7341588;
  v17 = *(a1 + 80);
  block[4] = v4;
  v10 = *(a1 + 56);
  v6 = v10;
  v15 = v10;
  v12 = v3;
  v13 = *(a1 + 40);
  v18 = *(a1 + 81);
  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  v14 = v7;
  v16 = v8;
  v9 = v3;
  dispatch_async(v5, block);
}

void __90__AFConnection__dispatchCommand_isInterstitial_interstitialPhase_interstitialDelay_reply___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 32);
    v3 = NSStringFromSelector(*(a1 + 72));
    [v2 _resumeRequestTimeoutForReason:v3];
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 40), 0);
  }

  v5 = *(a1 + 40);
  v32[0] = *(a1 + 48);
  v6 = AFAnalyticsContextCreateWithCommand(v5);
  v32[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v8 = AFAnalyticsContextsMerge(v7);

  [*(*(a1 + 32) + 336) logEventWithType:1422 context:v8 contextNoCopy:{1, v32[0]}];
  if (*(a1 + 89) == 1)
  {
    v9 = *(*(a1 + 32) + 64);
    v10 = [*(a1 + 56) aceId];
    v11 = v9;
    v12 = [v11 UUIDString];
    v13 = _ConvertIdToSchemaUUID(v12);

    if (v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69CF310]);
      v15 = objc_alloc_init(MEMORY[0x1E69CF318]);
      [v15 setRequestId:v13];
      [v14 setEventMetadata:v15];
      v16 = objc_alloc_init(MEMORY[0x1E69CF2D0]);
      v17 = objc_alloc_init(MEMORY[0x1E69CF2D8]);
      [v17 setExists:1];
      [v17 setAceCommandType:2];
      [v16 setEnded:v17];
      v18 = _ConvertIdToSchemaUUID(v10);
      [v16 setAceId:v18];

      [v14 setAceCommandContext:v16];
      v19 = [MEMORY[0x1E69CE1E8] sharedStream];
      [v19 emitMessage:v14];
    }

    else
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "_EmitAceCommandEndedEvent";
        v35 = 2112;
        v36 = v11;
        _os_log_error_impl(&dword_1912FE000, v20, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed, unable to log SELF command", buf, 0x16u);
      }
    }
  }

  v21 = *(a1 + 56);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = *(a1 + 56);
    v23 = v22;
    if (v22)
    {
      v24 = [v22 domain];

      if (v24)
      {
        [*(a1 + 32) _emitServerExecutionValuesReportedMessage:v23 requestUUID:*(*(a1 + 32) + 64)];
        v25 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          v30 = v25;
          v31 = [v23 domain];
          *buf = 136315394;
          v34 = "[AFConnection _dispatchCommand:isInterstitial:interstitialPhase:interstitialDelay:reply:]_block_invoke_2";
          v35 = 2112;
          v36 = v31;
          _os_log_debug_impl(&dword_1912FE000, v30, OS_LOG_TYPE_DEBUG, "%s Emitting ServerExecutionValuesReportedMessage message for domain %@", buf, 0x16u);
        }
      }
    }
  }

  v26 = AFSiriLogContextPerformance;
  v27 = v26;
  v28 = *(a1 + 80);
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 136315394;
    v34 = "SiriX";
    v35 = 2080;
    v36 = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&dword_1912FE000, v27, OS_SIGNPOST_INTERVAL_END, v28, "UICommandHandle", "%s %s", buf, 0x16u);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_emitServerExecutionValuesReportedMessage:(id)a3 requestUUID:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[AFConnection _emitServerExecutionValuesReportedMessage:requestUUID:]";
    _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s Logging ServerExecutionValuesReported From _emitServerExecutionValuesReportedMessage", &v17, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CF310]);
  v9 = objc_alloc_init(MEMORY[0x1E69CF318]);
  v10 = [v6 UUIDString];
  v11 = _ConvertIdToSchemaUUID(v10);

  [v9 setRequestId:v11];
  [v8 setEventMetadata:v9];
  v12 = objc_alloc_init(MEMORY[0x1E69CF3D8]);
  v13 = [v5 domain];
  if (v13)
  {
    [v12 setServerExecutedDomain:v13];
  }

  [v8 setServerExecutionValuesReported:v12];
  v14 = [MEMORY[0x1E69CE1E8] sharedStream];
  [v14 emitMessage:v8];

  v15 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[AFConnection _emitServerExecutionValuesReportedMessage:requestUUID:]";
    _os_log_debug_impl(&dword_1912FE000, v15, OS_LOG_TYPE_DEBUG, "%s Emitted ServerExecutionValuesReported", &v17, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleCommand:(id)a3 reply:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[AFConnection _handleCommand:reply:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEFAULT, "%s command = %@", &v16, 0x16u);
  }

  if (AFInterstitialIsCommandInterstitial(v6))
  {
    if (self->_activeRequestType && !self->_activeRequestUsefulUserResultType)
    {
      [(AFConnection *)self _enqueueInterstitialCommand:v6];
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "[AFConnection _handleCommand:reply:]";
        v18 = 2112;
        v19 = v6;
        _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s Enqueued command %@ because it is an interstitial and active request has not presented UUFR yet.", &v16, 0x16u);
      }

      v10 = 0x1E69C7788;
    }

    else
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "[AFConnection _handleCommand:reply:]";
        v18 = 2112;
        v19 = v6;
        _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s Ignored command %@ because it is an interstitial but there's no active request or active request has presented UUFR already.", &v16, 0x16u);
      }

      v10 = 0x1E69C7780;
    }

    v12 = *v10;
    v13 = objc_opt_new();
    v14 = [v6 aceId];
    [v13 setRefId:v14];

    if (v7)
    {
      v7[2](v7, v13, 0);
    }
  }

  else
  {
    [(AFConnection *)self _dispatchCommand:v6 isInterstitial:0 interstitialPhase:0 interstitialDelay:v7 reply:0.0];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_startUIRequestWithInfo:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 assistantConnection:self startUIRequestWithInfo:v10 completion:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)_startUIRequestWithText:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 assistantConnection:self startUIRequestWithText:v10 completion:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)_checkAndSetIsCapturingSpeech:(BOOL)a3
{
  if (a3)
  {
    v4 = *(self + 224);
    if ((v4 & 4) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"AFConnection.m" lineNumber:389 description:@"Client is already capturing speech"];

      v4 = *(self + 224);
    }

    *(self + 224) = v4 | 4;
    v7 = [(AFConnection *)self _siriClientStateManager];
    [v7 beginListeningForClient:self->_clientID];
  }

  else
  {
    [(AFConnection *)self _stopInputAudioPowerUpdates];
    *(self + 224) &= ~4u;
    v7 = [(AFConnection *)self _siriClientStateManager];
    [v7 endListeningForClient:self->_clientID];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = objc_storeWeak(&self->_delegate, a3);
  v5 = a3;
  if (!a3)
  {
    [(AFConnection *)self _clearConnection];
    v5 = 0;
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [AFError errorWithCode:24];
  [(AFConnection *)self _connectionFailedWithError:v3];
  [(AFConnection *)self _clearConnection];
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    checkSRT = self->_checkSRT;
    self->_checkSRT = 0;
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[AFConnection dealloc]";
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = AFConnection;
  [(AFConnection *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (AFConnection)initWithTargetQueue:(id)a3 instanceContext:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v42.receiver = self;
  v42.super_class = AFConnection;
  v9 = [(AFConnection *)&v42 init];
  v10 = v9;
  if (v9)
  {
    v9->_clientID = v9;
    if (v4 && (memset(&v43, 0, sizeof(v43)), dladdr(v4, &v43)))
    {
      if (v43.dli_fname && *v43.dli_fname)
      {
        v11 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [v11 initWithUTF8String:v43.dli_fname];
      }

      else
      {
        v12 = 0;
      }

      if (v43.dli_sname && *v43.dli_sname)
      {
        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        v15 = [v14 initWithUTF8String:v43.dli_sname];
      }

      else
      {
        v15 = 0;
      }

      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __52__AFConnection_initWithTargetQueue_instanceContext___block_invoke;
      v39 = &unk_1E7347250;
      v40 = v12;
      v41 = v15;
      v16 = v15;
      v17 = v12;
      v13 = [AFCallSiteInfo newWithBuilder:&v36];
    }

    else
    {
      v13 = 0;
    }

    initiationCallSiteInfo = v10->_initiationCallSiteInfo;
    v10->_initiationCallSiteInfo = v13;

    if (v7)
    {
      v19 = v7;
      targetQueue = v10->_targetQueue;
      v10->_targetQueue = v19;
    }

    else
    {
      v21 = MEMORY[0x1E69E96A0];
      v22 = MEMORY[0x1E69E96A0];
      targetQueue = v10->_targetQueue;
      v10->_targetQueue = v21;
    }

    *(v10 + 224) |= 2u;
    if (v8)
    {
      v23 = v8;
    }

    else
    {
      v23 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v10->_instanceContext;
    v10->_instanceContext = v23;

    v25 = [[AFAnalytics alloc] initWithInstanceContext:v8];
    analytics = v10->_analytics;
    v10->_analytics = v25;

    atomic_store(0, &v10->_activePlaybackCount);
    v10->_uufrID = 0;
    if (AFIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    }

    if (AFIsInternalInstall_isInternal == 1)
    {
      v27 = objc_alloc_init(AFCheckSRT);
      checkSRT = v10->_checkSRT;
      v10->_checkSRT = v27;
    }

    v29 = [AFPreferences sharedPreferences:v36];
    preferences = v10->_preferences;
    v10->_preferences = v29;

    v31 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v32 = v10->_instanceContext;
      v33 = v10->_initiationCallSiteInfo;
      LODWORD(v43.dli_fname) = 136315906;
      *(&v43.dli_fname + 4) = "[AFConnection initWithTargetQueue:instanceContext:]";
      WORD2(v43.dli_fbase) = 2048;
      *(&v43.dli_fbase + 6) = v10;
      HIWORD(v43.dli_sname) = 2112;
      v43.dli_saddr = v32;
      v44 = 2112;
      v45 = v33;
      _os_log_impl(&dword_1912FE000, v31, OS_LOG_TYPE_INFO, "%s %p (instanceContext = %@, caller = %@)", &v43, 0x2Au);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v10;
}

void __52__AFConnection_initWithTargetQueue_instanceContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImagePath:v3];
  [v4 setSymbolName:*(a1 + 40)];
}

+ (void)defrost
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "+[AFConnection defrost]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Begin sending defrost XPC message.", buf, 0xCu);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.assistant.sync", 0, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_287);
  xpc_connection_resume(mach_service);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "name", "defrost");
  v5 = mach_absolute_time();
  xpc_dictionary_set_uint64(v4, "mach_time", v5);
  xpc_connection_send_message(mach_service, v4);
  barrier[0] = MEMORY[0x1E69E9820];
  barrier[1] = 3221225472;
  barrier[2] = __23__AFConnection_defrost__block_invoke_2;
  barrier[3] = &unk_1E73497C8;
  v9 = mach_service;
  v6 = mach_service;
  xpc_connection_send_barrier(v6, barrier);

  v7 = *MEMORY[0x1E69E9840];
}

void __23__AFConnection_defrost__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  xpc_connection_cancel(*(a1 + 32));
  v1 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "+[AFConnection defrost]_block_invoke_2";
    _os_log_impl(&dword_1912FE000, v1, OS_LOG_TYPE_INFO, "%s End sending defrost XPC message.", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

+ (void)stopMonitoringAvailability
{
  if (sAvailabilityObserver)
  {
    v2 = [a1 _networkAvailability];
    [v2 removeObserver:sAvailabilityObserver];

    v3 = sAvailabilityObserver;
    sAvailabilityObserver = 0;
  }
}

+ (void)beginMonitoringAvailability
{
  os_unfair_lock_lock(&sAvailabilityObserverLock);
  if (!sAvailabilityObserver)
  {
    v3 = objc_alloc_init(AFConnectionAvailabilityObserver);
    v4 = sAvailabilityObserver;
    sAvailabilityObserver = v3;

    v5 = [a1 _networkAvailability];
    [v5 addObserver:sAvailabilityObserver];
  }

  os_unfair_lock_unlock(&sAvailabilityObserverLock);
}

+ (BOOL)assistantIsSupported
{
  if (AFAssistantCapable_onceToken != -1)
  {
    dispatch_once(&AFAssistantCapable_onceToken, &__block_literal_global_65);
  }

  return AFAssistantCapable_isCapable;
}

+ (BOOL)siriIsSupportedForLanguageCode:(id)a3 productName:(id)a4 productVersion:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9 || !v11)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:402 userInfo:0];
    if (!a6)
    {
      goto LABEL_7;
    }

LABEL_6:
    v15 = v14;
    *a6 = v14;
    goto LABEL_7;
  }

  v13 = AFPreferencesSupportedLanguagesForRemote(v10, v11);
  if ([v13 containsObject:v9])
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:401 userInfo:0];
  }

  if (a6)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v14 == 0;
}

+ (BOOL)assistantIsSupportedForLanguageCode:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (AFAssistantCapable_onceToken != -1)
  {
    dispatch_once(&AFAssistantCapable_onceToken, &__block_literal_global_65);
  }

  if (AFAssistantCapable_isCapable == 1)
  {
    v6 = +[AFPreferences sharedPreferences];
    v7 = [v6 isLocaleIdentifierNativelySupported:v5];

    if (v7)
    {
      v8 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = 401;
  }

  else
  {
    v9 = 400;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:v9 userInfo:0];
  if (a4)
  {
LABEL_10:
    v8 = v8;
    *a4 = v8;
  }

LABEL_11:
  v10 = v8 == 0;

  return v10;
}

+ (void)initialize
{
  if (AFLogInitIfNeeded_once != -1)
  {
    dispatch_once(&AFLogInitIfNeeded_once, &__block_literal_global_2942);
  }
}

- (void)broadcastCommandDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _clientService];
  [v5 _broadcastCommandDictionary:v4];
}

- (void)requestBarrierIfNecessary:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AFConnection_Private__requestBarrierIfNecessary___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
  v6 = [(AFConnection *)self _clientServiceWithErrorHandler:v7];
  [v6 _requestBarrierIfNecessaryWithReply:v5];
}

uint64_t __51__AFConnection_Private__requestBarrierIfNecessary___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestBarrier:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AFConnection_Private__requestBarrier___block_invoke;
  v7[3] = &unk_1E7348AA8;
  v8 = v4;
  v5 = v4;
  v6 = [(AFConnection *)self _clientServiceWithErrorHandler:v7];
  [v6 _requestBarrierWithReply:v5];
}

uint64_t __40__AFConnection_Private__requestBarrier___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __76__AFConnection_Private__startSpeechRequestWithSpeechFileAtURL_isNarrowBand___block_invoke(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17[0] = @"File";
  v16[0] = @"speechEvent";
  v16[1] = @"isNarrowBand";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v17[1] = v4;
  v16[2] = @"unixTime";
  v5 = MEMORY[0x1E696AD98];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v17[2] = v7;
  v16[3] = @"id";
  v8 = [v3 UUIDString];
  v17[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v18[0] = v9;
  v10 = [*(a1 + 32) _startRequestMetricSettings];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = AFAnalyticsContextsMerge(v11);
  v13 = AFAnalyticsEventCreateCurrent(1902, v12);

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_clientServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)_clearAssistantInfoForAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AFConnection *)self _clientService];
  [v5 _clearAssistantInfoForAccountIdentifier:v4];
}

- (void)_barrier
{
  v3 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__AFConnection_Internal___barrier__block_invoke;
  v10[3] = &unk_1E73493C0;
  v4 = v3;
  v11 = v4;
  v5 = [(AFConnection *)self _clientServiceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__AFConnection_Internal___barrier__block_invoke_2;
  v8[3] = &unk_1E73497C8;
  v9 = v4;
  v6 = v4;
  [v5 _barrierWithReply:v8];

  v7 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v6, v7);
}

@end