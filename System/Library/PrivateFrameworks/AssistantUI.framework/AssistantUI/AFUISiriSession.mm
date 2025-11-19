@interface AFUISiriSession
+ (id)effectiveCoreLocationBundle;
+ (unint64_t)availabilityState;
- (AFConnection)_connection;
- (AFUISiriSession)initWithConnection:(id)a3 delegateQueue:(id)a4 requestSource:(int64_t)a5;
- (AFUISiriSessionLocalDataSource)localDataSource;
- (AFUISiriSessionLocalDelegate)localDelegate;
- (BOOL)_aceObjectExpectsTurnIdentifierWhenSendingCommand:(id)a3;
- (BOOL)_isContinuousConversationAvailable;
- (BOOL)_shouldFetchActiveAccount;
- (BOOL)attendingState;
- (BOOL)stateFeedbackManagerShouldCancelOnMediaResume;
- (SRUIFSiriStateResponding)visualIntelligenceCameraDelegate;
- (SRUIFWatchAuthenticationManager)_watchAuthenticationManager;
- (float)recordingPowerLevel;
- (id)_getMissingAssetTypes:(id)a3;
- (id)_invocationContextFromTVRemoteType:(unint64_t)a3;
- (id)_invocationEventForRequestOptions:(id)a3 localDataSource:(id)a4;
- (id)_modeOverrideValue;
- (id)_photoPickerDirectActionRequestWith:(id)a3 assetIdentifiers:(id)a4;
- (id)_preparedSpeechRequestWithRequestOptions:(id)a3;
- (id)_processInstrumentationForFinalOptionsAndGenerateNewTurn:(id)a3;
- (id)_setRefIdForAllViewsInAddViews:(id)a3;
- (id)_startingRecordingAlertPolicyForSoundID:(id)a3;
- (id)_tamaleDirectActionRequestWithText:(id)a3;
- (id)safeWrapResponseCompletion:(id)a3;
- (int)_mapInvocationSource:(int64_t)a3;
- (int64_t)_mapSuggestionRequestType:(int64_t)a3;
- (void)_cancelTypeToSiriLatencyTimerIfNeeded;
- (void)_discardConnectionForReason:(int64_t)a3;
- (void)_forceAudioSessionActiveWithCompletionWrapper:(id)a3;
- (void)_handleDidChangeAudioRecordingPower;
- (void)_handlePhotoPickerRequest:(id)a3 completion:(id)a4;
- (void)_handlePlayAudioCommand:(id)a3 completion:(id)a4;
- (void)_handleRequestUpdateViewsCommand:(id)a3 completion:(id)a4;
- (void)_handleSuppressDelayFeedbackCommand:(id)a3 completion:(id)a4;
- (void)_handleUnlockAppCommand:(id)a3 completion:(id)a4;
- (void)_handleUnlockDeviceCommand:(id)a3 completion:(id)a4;
- (void)_handleUnlockDeviceWithWatchCommand:(id)a3 completion:(id)a4;
- (void)_invalidateConnectionForReason:(int64_t)a3;
- (void)_performAceCommand:(id)a3 forRequestUpdateViewsCommand:(id)a4 afterDelay:(double)a5;
- (void)_performAceCommand:(id)a3 turnIdentifier:(id)a4 machAbsoluteTime:(double)a5 conflictHandler:(id)a6;
- (void)_performAceCommands:(id)a3;
- (void)_performBlockWithDelegate:(id)a3;
- (void)_performPunchoutCommand:(id)a3 delegate:(id)a4 completion:(id)a5;
- (void)_playPhaticWithCompletion:(id)a3;
- (void)_populateInvocationEventWithBluetoothCarInvocationContext:(id)a3;
- (void)_populateInvocationEventWithTypeToSiriInvocationContext:(id)a3;
- (void)_requestDidFinishWithError:(id)a3;
- (void)_requestStartedWithInfo:(id)a3;
- (void)_sendContextWithCompletion:(id)a3;
- (void)_setupConnectionIfNeeded;
- (void)_startContinuityRequestWithInfo:(id)a3 completion:(id)a4;
- (void)_startDirectRequestWith:(id)a3 turnIdentifier:(id)a4 completion:(id)a5;
- (void)_startLegacyDirectActionRequestWithInfo:(id)a3 context:(id)a4 completion:(id)a5;
- (void)_startRequestForReadoutOfBulletin:(id)a3;
- (void)_startRequestWithBlock:(id)a3;
- (void)_startRequestWithFinalOptions:(id)a3 completion:(id)a4;
- (void)_startRequestWithInfo:(id)a3 completion:(id)a4;
- (void)_startRequestWithSuggestionText:(id)a3 suggestionRequestType:(int64_t)a4 turnIdentifier:(id)a5 completion:(id)a6;
- (void)_startRequestWithText:(id)a3 turnIdentifier:(id)a4 completion:(id)a5;
- (void)_startSpeechPronunciationRequestWithContext:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_startSpeechRequestWithOptions:(id)a3 completion:(id)a4;
- (void)_startSpeechRequestWithSpeechRequestOptions:(id)a3 isInitialBringUp:(BOOL)a4 completion:(id)a5;
- (void)_startTypeToSiriLatencyTimer;
- (void)_startVisualIntelligenceDirectInvocationRequestWith:(id)a3 completion:(id)a4;
- (void)_startVisualIntelligenceDirectInvocationRequestWithText:(id)a3 turnIdentifier:(id)a4 completion:(id)a5;
- (void)_typeToSiriLatencyTimerFired;
- (void)_updateActiveAccount:(id)a3;
- (void)_updateActiveAccount:(id)a3 withNumberOfActiveAccounts:(unint64_t)a4;
- (void)_updateAssistantVersion:(id)a3;
- (void)_updateCarPlayInvocationContext:(id)a3 fromDirectActionEvent:(int64_t)a4 appBundleIdentifier:(id)a5;
- (void)_updateModesHeuristicsForRequestOptions:(id)a3;
- (void)assistantConnection:(id)a3 appLaunchFailedWithBundleIdentifier:(id)a4;
- (void)assistantConnection:(id)a3 didChangeAudioSessionID:(unsigned int)a4;
- (void)assistantConnection:(id)a3 didFinishAcousticIDRequestWithSuccess:(BOOL)a4;
- (void)assistantConnection:(id)a3 didLoadAssistant:(id)a4;
- (void)assistantConnection:(id)a3 didUpdateResponseMode:(id)a4;
- (void)assistantConnection:(id)a3 dismissAssistantWithReason:(int64_t)a4;
- (void)assistantConnection:(id)a3 extensionRequestFinishedForApplication:(id)a4 error:(id)a5;
- (void)assistantConnection:(id)a3 extensionRequestWillStartForApplication:(id)a4;
- (void)assistantConnection:(id)a3 openURL:(id)a4 completion:(id)a5;
- (void)assistantConnection:(id)a3 receivedCommand:(id)a4 completion:(id)a5;
- (void)assistantConnection:(id)a3 recognitionUpdateWithPhrases:(id)a4 utterances:(id)a5 refId:(id)a6;
- (void)assistantConnection:(id)a3 recognizedAdditionalSpeechInterpretation:(id)a4 refId:(id)a5;
- (void)assistantConnection:(id)a3 replayAll:(unint64_t)a4 with:(id)a5;
- (void)assistantConnection:(id)a3 replayAt:(unint64_t)a4 with:(id)a5;
- (void)assistantConnection:(id)a3 requestFailedWithError:(id)a4 requestClass:(id)a5;
- (void)assistantConnection:(id)a3 setReplayEnabled:(BOOL)a4;
- (void)assistantConnection:(id)a3 setReplayOverridePath:(id)a4;
- (void)assistantConnection:(id)a3 speechRecognized:(id)a4;
- (void)assistantConnection:(id)a3 speechRecognizedPartialResult:(id)a4;
- (void)assistantConnection:(id)a3 speechRecordingDidBeginOnAVRecordRoute:(id)a4 audioSessionID:(unsigned int)a5;
- (void)assistantConnection:(id)a3 speechRecordingDidChangeAVRecordRoute:(id)a4;
- (void)assistantConnection:(id)a3 speechRecordingDidFail:(id)a4;
- (void)assistantConnection:(id)a3 speechRecordingPerformTwoShotPromptWithType:(int64_t)a4 completion:(id)a5;
- (void)assistantConnection:(id)a3 startPlaybackDidFail:(int64_t)a4;
- (void)assistantConnection:(id)a3 startUIRequestWithText:(id)a4 completion:(id)a5;
- (void)assistantConnection:(id)a3 wantsToCacheImage:(id)a4;
- (void)assistantConnection:(id)a3 willProcessAppLaunchWithBundleIdentifier:(id)a4;
- (void)assistantConnection:(id)a3 willProcessStartPlayback:(int64_t)a4 intent:(id)a5 completion:(id)a6;
- (void)assistantConnectionAudioSessionDidBeginInterruption:(id)a3 userInfo:(id)a4;
- (void)assistantConnectionAudioSessionDidEndInterruption:(id)a3 shouldResume:(BOOL)a4 userInfo:(id)a5;
- (void)assistantConnectionDidChangeAudioRecordingPower:(id)a3;
- (void)assistantConnectionRequestFinished:(id)a3;
- (void)assistantConnectionRequestWillStart:(id)a3;
- (void)assistantConnectionSpeechRecordingDidCancel:(id)a3;
- (void)assistantConnectionSpeechRecordingDidEnd:(id)a3;
- (void)assistantConnectionSpeechRecordingWillBegin:(id)a3;
- (void)assistantConnectionUpdatedSpeechEndEstimate:(id)a3 speechEndEstimate:(unint64_t)a4;
- (void)cancelRequest;
- (void)clearContext;
- (void)dealloc;
- (void)emitSiriWasUnavailableEventWithRequestOptions:(id)a3;
- (void)end;
- (void)endForReason:(int64_t)a3;
- (void)fetchAttendingState:(id)a3;
- (void)forceAudioSessionActiveWithCompletion:(id)a3;
- (void)forceAudioSessionInactive;
- (void)idleAndQuietStatusDidChange:(BOOL)a3;
- (void)invalidateConnection;
- (void)launchedIntoListeningAtTime:(double)a3;
- (void)notifyStateManagerSpeakingBegan;
- (void)notifyStateManagerSpeakingEnded;
- (void)orchestrationBeganTaskWithIdentifier:(id)a3;
- (void)preheat;
- (void)promptedUserForInput;
- (void)receivedLatencyInformation:(id)a3;
- (void)receivedNLRoutingDecision:(id)a3;
- (void)recordMetricsContext:(id)a3 forDisambiguatedAppWIthBundleIdentifier:(id)a4;
- (void)recordRequestMetricEvent:(id)a3 withTimestamp:(double)a4;
- (void)recordUIMetrics:(id)a3;
- (void)requestDidPresentViewForErrorCommand:(id)a3;
- (void)requestDidPresentViewForUICommand:(id)a3;
- (void)resetContextTypes:(int64_t)a3;
- (void)resultDidChangeForAceCommand:(id)a3 completion:(id)a4;
- (void)resumeInterruptedAudioPlaybackIfNeeded;
- (void)rollbackClearContext;
- (void)sessionStateHandler:(id)a3 didTransitionFromState:(int64_t)a4 toState:(int64_t)a5 forEvent:(int64_t)a6 machAbsoluteTime:(double)a7;
- (void)setAlertContext;
- (void)setAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)a3;
- (void)setApplicationContextForDirectAction:(BOOL)a3;
- (void)setCarDNDActive:(BOOL)a3;
- (void)setCarOwnsMainAudio:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setDeviceInStarkMode:(BOOL)a3;
- (void)setEyesFree:(BOOL)a3;
- (void)setLockState:(unint64_t)a3;
- (void)setSupportsCarPlayVehicleData:(BOOL)a3;
- (void)setWatchAuthenticated:(BOOL)a3;
- (void)showAssetsDownloadNotificationPrompt;
- (void)siriUIDidPresentDynamicSnippetWithInfo:(id)a3;
- (void)speechRequestHandlerDidCancelSpeechRequest:(id)a3;
- (void)speechSynthesisDidUpdatePowerLevelTo:(float)a3;
- (void)startCorrectedRequestWithText:(id)a3 correctionIdentifier:(id)a4 userSelectionResults:(id)a5 turnIdentifier:(id)a6 machAbsoluteTime:(double)a7;
- (void)startRequestWithOptions:(id)a3 completion:(id)a4;
- (void)stateFeedbackManagerDidStartPlaybackForStateFeedbackType:(int64_t)a3;
- (void)stopAttending;
- (void)stopRequestWithOptions:(id)a3;
- (void)telephonyRequestCompleted;
- (void)updateRequestOptions:(id)a3;
@end

@implementation AFUISiriSession

- (AFConnection)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [AFUISiriSession _connection];
    }

    connection = self->_connection;
  }

  return connection;
}

+ (unint64_t)availabilityState
{
  if (AFHasUnlockedSinceBoot())
  {
    v2 = [MEMORY[0x277D61AB8] sharedInstance];
    v3 = [v2 understandingOnDeviceAssetsAvailable];
    if ((v3 & 1) == 0)
    {
      v4 = MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        +[AFUISiriSession availabilityState];
      }

      if (AFDeviceSupportsDisablingServerFallbackWhenMissingAsset())
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          +[AFUISiriSession availabilityState];
        }

        v5 = 3;
        goto LABEL_20;
      }
    }

    if ([MEMORY[0x277CEF218] isAvailable])
    {
      if ((v3 | [MEMORY[0x277CEF218] isNetworkAvailable]))
      {
        v5 = 0;
LABEL_20:

        return v5;
      }

      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        +[AFUISiriSession availabilityState];
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      +[AFUISiriSession availabilityState];
    }

    v5 = 1;
    goto LABEL_20;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    +[AFUISiriSession availabilityState];
  }

  return 2;
}

- (void)clearContext
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AFUISiriSession clearContext]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v4 = [(AFUISiriSession *)self _connection];
  [v4 clearContext];
}

- (void)setAlertContext
{
  v3 = [(AFUISiriSession *)self localDataSource];
  v4 = [v3 bulletinsForSiriSession:self];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v7 = v5;
  v6 = [(AFUISiriSession *)self _connection];
  [v6 setAlertContextWithBulletins:v7];
}

- (AFUISiriSessionLocalDataSource)localDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_localDataSource);

  return WeakRetained;
}

- (AFUISiriSessionLocalDelegate)localDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);

  return WeakRetained;
}

- (BOOL)attendingState
{
  v3 = [(AFUISiriSession *)self _isContinuousConversationAvailable];
  if (v3)
  {
    uiBridgeClient = self->_uiBridgeClient;

    LOBYTE(v3) = [(SRUIFUIBridgeClient *)uiBridgeClient isAttending];
  }

  return v3;
}

- (BOOL)_isContinuousConversationAvailable
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    if (self->_isDeviceInStarkMode)
    {

      LOBYTE(v3) = _os_feature_enabled_impl();
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)_shouldFetchActiveAccount
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v3 showServerOnUI])
  {
    WeakRetained = objc_loadWeakRetained(&self->_localDataSource);
    v5 = [WeakRetained isPPTAvailable] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_setupConnectionIfNeeded
{
  if (!self->_connection)
  {
    v4 = objc_alloc_init(MEMORY[0x277CEF218]);
    connection = self->_connection;
    self->_connection = v4;

    [(AFConnection *)self->_connection setDelegate:self];
    [(AFConnection *)self->_connection setSpeechDelegate:self];
    v8 = [objc_alloc(MEMORY[0x277D61B18]) initWithConnection:self->_connection];
    v6 = [objc_alloc(MEMORY[0x277D61B20]) initWithStateFeedbackProvider:v8 delegate:self];
    stateFeedbackManager = self->_stateFeedbackManager;
    self->_stateFeedbackManager = v6;

    [(AFUISiriSession *)self resetContextTypes:4];
  }
}

- (id)_modeOverrideValue
{
  if (AFIsInternalInstall())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.internal"];
    v3 = [v2 stringForKey:@"ModeOverride"];
    v4 = [v3 lowercaseString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SRUIFSiriStateResponding)visualIntelligenceCameraDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visualIntelligenceCameraDelegate);

  return WeakRetained;
}

- (void)notifyStateManagerSpeakingEnded
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AFUISiriSession notifyStateManagerSpeakingEnded]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts", &v4, 0xCu);
  }

  [(AFSiriClientStateManager *)self->_clientStateManager endSpeakingForClient:self];
}

- (void)_cancelTypeToSiriLatencyTimerIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  typeToSiriLatencyTimer = self->_typeToSiriLatencyTimer;
  if (typeToSiriLatencyTimer)
  {
    [(NSTimer *)typeToSiriLatencyTimer invalidate];
    v4 = self->_typeToSiriLatencyTimer;
    self->_typeToSiriLatencyTimer = 0;

    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[AFUISiriSession _cancelTypeToSiriLatencyTimerIfNeeded]";
      _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #latency type to siri latency timer cancelled", &v6, 0xCu);
    }
  }
}

- (void)_handleDidChangeAudioRecordingPower
{
  objc_initWeak(&location, self);
  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {
    v3 = [(AFUISiriSession *)self localDelegate];
    [(AFUISiriSession *)self recordingPowerLevel];
    v5 = v4;
    [(AFUISiriSession *)self recordingPowerLevel];
    LODWORD(v7) = v6;
    LODWORD(v8) = v5;
    [v3 siriSessionAudioRecordingDidChangePowerLevel:v8 peakLevel:v7];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__AFUISiriSession__handleDidChangeAudioRecordingPower__block_invoke;
    v13[3] = &unk_278CD5D30;
    v9 = &v14;
    objc_copyWeak(&v14, &location);
    v13[4] = self;
    [(AFUISiriSession *)self _performBlockWithDelegate:v13];
  }

  else
  {
    v10 = [(AFUISiriSession *)self localDelegate];
    [(AFUISiriSession *)self recordingPowerLevel];
    [v10 siriSessionAudioRecordingDidChangePowerLevel:?];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__AFUISiriSession__handleDidChangeAudioRecordingPower__block_invoke_2;
    v11[3] = &unk_278CD5D58;
    v9 = &v12;
    objc_copyWeak(&v12, &location);
    [(AFUISiriSession *)self _performBlockWithDelegate:v11];
  }

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (float)recordingPowerLevel
{
  audioPowerLevelUpdater = self->_audioPowerLevelUpdater;
  if (!audioPowerLevelUpdater)
  {
    v4 = [MEMORY[0x277CEF2A8] isContinuousConversationEnabled];
    v5 = 32;
    if (v4)
    {
      v5 = 200;
    }

    audioPowerLevelUpdater = *(&self->super.isa + v5);
  }

  [(SRUIFAudioPowerLevelUpdater *)audioPowerLevelUpdater averagePower];
  return result;
}

void __54__AFUISiriSession__handleDidChangeAudioRecordingPower__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained recordingPowerLevel];
    v6 = v5;
    [*(a1 + 32) recordingPowerLevel];
    LODWORD(v8) = v7;
    LODWORD(v9) = v6;
    [v10 siriSessionAudioRecordingDidChangePowerLevel:v9 peakLevel:v8];
  }
}

- (AFUISiriSession)initWithConnection:(id)a3 delegateQueue:(id)a4 requestSource:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v35.receiver = self;
  v35.super_class = AFUISiriSession;
  v11 = [(AFUISiriSession *)&v35 init];
  if (v11)
  {
    if (!v10)
    {
      [AFUISiriSession initWithConnection:a2 delegateQueue:v11 requestSource:?];
    }

    objc_storeStrong(&v11->_delegateQueue, a4);
    v11->_currentRequestDidPresent = 1;
    if ([(AFUISiriSession *)v11 _shouldRetainConnectionForRequestSource:a5])
    {
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x277CEF218]);
      }

      connection = v11->_connection;
      v11->_connection = v12;
    }

    v14 = v11->_connection;
    if (v14)
    {
      [(AFConnection *)v14 setDelegate:v11];
      [(AFConnection *)v11->_connection setSpeechDelegate:v11];
      v15 = [objc_alloc(MEMORY[0x277D61B18]) initWithConnection:v11->_connection];
      v16 = [objc_alloc(MEMORY[0x277D61B20]) initWithStateFeedbackProvider:v15 delegate:v11];
      stateFeedbackManager = v11->_stateFeedbackManager;
      v11->_stateFeedbackManager = v16;
    }

    v18 = objc_alloc_init(MEMORY[0x277CEF3A8]);
    settingsConnection = v11->_settingsConnection;
    v11->_settingsConnection = v18;

    v20 = objc_alloc_init(MEMORY[0x277D61AF8]);
    siriSessionInfo = v11->_siriSessionInfo;
    v11->_siriSessionInfo = v20;

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v11 selector:sel__siriNetworkAvailabilityDidChange_ name:*MEMORY[0x277CEF040] object:0];

    v23 = [MEMORY[0x277CEF3D8] sharedManager];
    clientStateManager = v11->_clientStateManager;
    v11->_clientStateManager = v23;

    v25 = [objc_alloc(MEMORY[0x277D61B00]) initWithDelegate:v11];
    stateHandler = v11->_stateHandler;
    v11->_stateHandler = v25;

    v27 = [objc_alloc(MEMORY[0x277D61B10]) initWithDelegate:v11];
    speechRequestHandler = v11->_speechRequestHandler;
    v11->_speechRequestHandler = v27;

    v29 = objc_alloc(MEMORY[0x277D61B30]);
    v30 = [v29 initWithStateHandler:v11->_stateHandler delegateQueue:MEMORY[0x277D85CD0]];
    uiBridgeClient = v11->_uiBridgeClient;
    v11->_uiBridgeClient = v30;

    [(SRUIFUIBridgeClient *)v11->_uiBridgeClient setDelegate:v11];
    if ([MEMORY[0x277CEF2A8] isContinuousConversationEnabled])
    {
      v32 = [objc_alloc(MEMORY[0x277D61AB0]) initWithDelegate:v11];
      audioPowerLevelUpdater = v11->_audioPowerLevelUpdater;
      v11->_audioPowerLevelUpdater = v32;
    }
  }

  return v11;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(AFUISiriSession *)self _connection];

  if (v3)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[AFUISiriSession dealloc]";
      _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #session AFConnection was still alive when AFUISiriSession was being deallocated. Cleaning up the connection…", buf, 0xCu);
    }

    [(AFUISiriSession *)self _discardConnectionForReason:0];
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.LocalAuthentication.ui.presented", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = getOptionalPKDarwinNotificationEventInAppPresented();
  CFNotificationCenterRemoveObserver(v7, self, v8, 0);

  v9.receiver = self;
  v9.super_class = AFUISiriSession;
  [(AFUISiriSession *)&v9 dealloc];
}

- (void)sessionStateHandler:(id)a3 didTransitionFromState:(int64_t)a4 toState:(int64_t)a5 forEvent:(int64_t)a6 machAbsoluteTime:(double)a7
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__AFUISiriSession_sessionStateHandler_didTransitionFromState_toState_forEvent_machAbsoluteTime___block_invoke;
  v13[3] = &__block_descriptor_64_e35_v16__0___AFUISiriSessionDelegate__8l;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  *&v13[7] = a7;
  [(AFUISiriSession *)self _performBlockWithDelegate:v13];
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSession:self didChangeToState:a5 event:a6 machAbsoluteTransitionTime:a7];

  [(SRUIFStateFeedbackManager *)self->_stateFeedbackManager didTransitionFromState:a4 toState:a5 event:a6 machAbsoluteTransitionTime:a7];
  [(SRUIFAudioPowerLevelUpdater *)self->_audioPowerLevelUpdater sessionStateDidChangeTo:a5 isAttending:[(AFUISiriSession *)self attendingState]];
}

- (void)speechRequestHandlerDidCancelSpeechRequest:(id)a3
{
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:5];

  [(AFUISiriSession *)self _requestDidFinishWithError:0];
}

- (void)showAssetsDownloadNotificationPrompt
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[AFUISiriSession showAssetsDownloadNotificationPrompt]";
      _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s client received request to show Advanced Features assets download notification.", &v4, 0xCu);
    }

    [(AFUISiriSessionDelegate *)self->_delegate siriSessionRequestsToShowAssetsDownloadNotificationPrompt];
  }
}

- (void)receivedLatencyInformation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__AFUISiriSession_receivedLatencyInformation___block_invoke;
  v6[3] = &unk_278CD59E0;
  v7 = v4;
  v5 = v4;
  [(AFUISiriSession *)self _performBlockWithDelegate:v6];
}

- (void)receivedNLRoutingDecision:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__AFUISiriSession_receivedNLRoutingDecision___block_invoke;
  v6[3] = &unk_278CD59E0;
  v7 = v4;
  v5 = v4;
  [(AFUISiriSession *)self _performBlockWithDelegate:v6];
}

- (void)orchestrationBeganTaskWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__AFUISiriSession_orchestrationBeganTaskWithIdentifier___block_invoke;
  v6[3] = &unk_278CD59E0;
  v7 = v4;
  v5 = v4;
  [(AFUISiriSession *)self _performBlockWithDelegate:v6];
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_delegate, a3);
  if (self->_siriSessionInfo && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__AFUISiriSession_setDelegate___block_invoke;
    v6[3] = &unk_278CD59E0;
    v6[4] = self;
    [(AFUISiriSession *)self _performBlockWithDelegate:v6];
  }
}

- (void)_performBlockWithDelegate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__AFUISiriSession__performBlockWithDelegate___block_invoke;
  block[3] = &unk_278CD5A08;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(delegateQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __45__AFUISiriSession__performBlockWithDelegate___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 40)))
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)idleAndQuietStatusDidChange:(BOOL)a3
{
  v3 = a3;
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    uiBridgeClient = self->_uiBridgeClient;

    [(SRUIFUIBridgeClient *)uiBridgeClient idleAndQuietDidChange:v3];
  }
}

- (void)stateFeedbackManagerDidStartPlaybackForStateFeedbackType:(int64_t)a3
{
  if (!a3)
  {
    [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:15];

    [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_60];
  }
}

- (BOOL)stateFeedbackManagerShouldCancelOnMediaResume
{
  v2 = [(AFUISiriSession *)self localDataSource];
  v3 = [v2 getUIViewModeIsUIFreeForCurrentRequest];

  return v3 ^ 1;
}

- (void)_startTypeToSiriLatencyTimer
{
  v8 = *MEMORY[0x277D85DE8];
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__typeToSiriLatencyTimerFired selector:0 userInfo:0 repeats:*MEMORY[0x277D61B50]];
  typeToSiriLatencyTimer = self->_typeToSiriLatencyTimer;
  self->_typeToSiriLatencyTimer = v3;

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[AFUISiriSession _startTypeToSiriLatencyTimer]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #latency type to siri latency timer started", &v6, 0xCu);
  }
}

- (void)_typeToSiriLatencyTimerFired
{
  v7 = *MEMORY[0x277D85DE8];
  [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_65];
  typeToSiriLatencyTimer = self->_typeToSiriLatencyTimer;
  self->_typeToSiriLatencyTimer = 0;

  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AFUISiriSession _typeToSiriLatencyTimerFired]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #latency type to siri latency timer fired", &v5, 0xCu);
  }
}

- (void)preheat
{
  v2 = [(AFUISiriSession *)self _connection];
  [v2 preheatWithStyle:1];
}

- (void)launchedIntoListeningAtTime:(double)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[AFUISiriSession launchedIntoListeningAtTime:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:14 eventTimeStamp:a3];
}

- (void)forceAudioSessionActiveWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__AFUISiriSession_forceAudioSessionActiveWithCompletion___block_invoke;
  v6[3] = &unk_278CD5A30;
  v7 = v4;
  v5 = v4;
  [(AFUISiriSession *)self _forceAudioSessionActiveWithCompletionWrapper:v6];
}

void __57__AFUISiriSession_forceAudioSessionActiveWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Success";
    v9 = 136315650;
    v10 = "[AFUISiriSession forceAudioSessionActiveWithCompletion:]_block_invoke";
    if (v5)
    {
      v7 = v5;
    }

    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #tts AudioSession Handler:%@ audioSessionID:%u", &v9, 0x1Cu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (void)_forceAudioSessionActiveWithCompletionWrapper:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(AFUISiriSession *)self _forceAudioSessionActiveWithCompletionWrapper:v6];
  }

  if (self->_isDeviceInStarkMode && ![(AFUISiriSession *)self _isHearstRelatedAFSpeechActivationEvent])
  {
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[AFUISiriSession _forceAudioSessionActiveWithCompletionWrapper:]";
      _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts #carPlay AudioSession CarPlay", &v11, 0xCu);
    }

    v8 = [(AFUISiriSession *)self _connection];
    v10 = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:9];
    [v8 forceAudioSessionActiveWithOptions:1 reason:3 speechRequestOptions:v10 completion:v4];
  }

  else
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[AFUISiriSession _forceAudioSessionActiveWithCompletionWrapper:]";
      _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #tts AudioSession", &v11, 0xCu);
    }

    v8 = [(AFUISiriSession *)self _connection];
    [v8 forceAudioSessionActiveWithOptions:1 reason:3 completion:v4];
  }
}

- (void)forceAudioSessionInactive
{
  v2 = [(AFUISiriSession *)self _connection];
  [v2 forceAudioSessionInactive];
}

- (void)resumeInterruptedAudioPlaybackIfNeeded
{
  v2 = [(AFUISiriSession *)self _connection];
  [v2 resumeInterruptedAudioPlaybackIfNeeded];
}

- (void)emitSiriWasUnavailableEventWithRequestOptions:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = mach_absolute_time();
  v6 = [(AFUISiriSession *)self _processInstrumentationForFinalOptionsAndGenerateNewTurn:v4];
  v7 = [(AFUISiriSession *)self localDataSource];
  v8 = [(AFUISiriSession *)self _invocationEventForRequestOptions:v4 localDataSource:v7];

  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v6 turnIdentifier];
    v13 = [v8 formattedText];
    v22 = 136315906;
    v23 = "[AFUISiriSession emitSiriWasUnavailableEventWithRequestOptions:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", &v22, 0x2Au);
  }

  [v6 emitInstrumentation:v8 machAbsoluteTime:v5];
  v14 = objc_alloc_init(MEMORY[0x277D5ABB0]);
  [v14 setReason:2];
  [v14 setProduct:1];
  v15 = [MEMORY[0x277D61AB8] sharedInstance];
  v16 = [v15 assistantUODStatus];

  if (v16 && [v16 count])
  {
    v17 = [(AFUISiriSession *)self _getMissingAssetTypes:v16];
    [v14 setAssetTypes:v17];
  }

  v18 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v6 turnIdentifier];
    v21 = [v14 formattedText];
    v22 = 136315906;
    v23 = "[AFUISiriSession emitSiriWasUnavailableEventWithRequestOptions:]";
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    _os_log_impl(&dword_241432000, v19, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", &v22, 0x2Au);
  }

  [v6 emitInstrumentation:v14 machAbsoluteTime:v5];
}

- (id)_getMissingAssetTypes:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKey:@"SPEECH"];

  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v4 addObject:v6];
  }

  v7 = [v3 objectForKey:@"NL"];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [v4 addObject:v8];
  }

  v9 = [v3 objectForKey:@"MORPHUN"];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:3];
    [v4 addObject:v10];
  }

  v11 = [v3 objectForKey:@"ATTENTION"];

  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:4];
    [v4 addObject:v12];
  }

  v13 = [v3 objectForKey:@"NLROUTER"];

  if (v13)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:5];
    [v4 addObject:v14];
  }

  if (![v4 count] && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [AFUISiriSession _getMissingAssetTypes:];
  }

  return v4;
}

- (id)_processInstrumentationForFinalOptionsAndGenerateNewTurn:(id)a3
{
  v104 = *MEMORY[0x277D85DE8];
  v82 = a3;
  val = self;
  v4 = [(AFUISiriSession *)self localDataSource];
  v81 = [(AFUISiriSession *)val _invocationEventForRequestOptions:v82 localDataSource:v4];

  if ([v81 invocationSource] != 52)
  {
    if ([v81 invocationSource] == 48)
    {
      v13 = [MEMORY[0x277D61AD8] sharedManager];
      v14 = [v13 latestStoredTurn];

      v80 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v14];
      v15 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v80 turnIdentifier];
        *buf = 136315650;
        v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
        v98 = 2112;
        v99 = v17;
        v100 = 2112;
        v101 = v14;
        _os_log_impl(&dword_241432000, v16, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
      }
    }

    else if ([v81 invocationSource] == 92)
    {
      v18 = [MEMORY[0x277D61AD8] sharedManager];
      v14 = [v18 latestResponseProducingTurn];

      v80 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v14];
      v19 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [v80 turnIdentifier];
        *buf = 136315650;
        v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
        v98 = 2112;
        v99 = v21;
        v100 = 2112;
        v101 = v14;
        _os_log_impl(&dword_241432000, v20, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
      }
    }

    else
    {
      if ([v81 invocationSource] != 29)
      {
        v31 = [MEMORY[0x277CEF158] sharedAnalytics];
        v32 = [v31 newTurnBasedInstrumentationContext];

        v33 = *MEMORY[0x277CEF098];
        v80 = v32;
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
          v35 = [v32 turnIdentifier];
          *buf = 136315394;
          v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
          v98 = 2112;
          v99 = v35;
          _os_log_impl(&dword_241432000, v34, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ ", buf, 0x16u);
        }

        goto LABEL_22;
      }

      v27 = [MEMORY[0x277D61AD8] sharedManager];
      v14 = [v27 latestStoredTurn];

      v80 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v14];
      v28 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = [v80 turnIdentifier];
        *buf = 136315650;
        v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
        v98 = 2112;
        v99 = v30;
        v100 = 2112;
        v101 = v14;
        _os_log_impl(&dword_241432000, v29, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
      }
    }

LABEL_22:
    v78 = 0;
    goto LABEL_23;
  }

  v5 = [v82 previousTurnIdentifier];

  if (v5)
  {
    v6 = MEMORY[0x277CEF168];
    v7 = [v82 previousTurnIdentifier];
    v8 = [v6 newTurnBasedContextWithPreviousTurnID:v7];

    v9 = *MEMORY[0x277CEF098];
    v80 = v8;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v8 turnIdentifier];
      v12 = [v82 previousTurnIdentifier];
      *buf = 136315650;
      v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
      v98 = 2112;
      v99 = v11;
      v100 = 2112;
      v101 = v12;
      _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
    }

    goto LABEL_22;
  }

  v22 = [MEMORY[0x277CEF158] sharedAnalytics];
  v23 = [v22 newTurnBasedInstrumentationContext];

  v24 = *MEMORY[0x277CEF098];
  v80 = v23;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v23 turnIdentifier];
    *buf = 136315394;
    v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
    v98 = 2112;
    v99 = v26;
    _os_log_impl(&dword_241432000, v25, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ ", buf, 0x16u);
  }

  v78 = 1;
LABEL_23:
  if ([v82 isInitialBringUp])
  {
    objc_initWeak(buf, val);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__AFUISiriSession__processInstrumentationForFinalOptionsAndGenerateNewTurn___block_invoke;
    block[3] = &unk_278CD5858;
    objc_copyWeak(&v94, buf);
    v93 = v80;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v94);
    objc_destroyWeak(buf);
  }

  [(AFUISiriSession *)val _setInstrumentationTurnContext:v80];
  if ([v82 isTypeToSiriRequest])
  {
    v36 = [v82 text];
    if ([v36 length])
    {
      v37 = [MEMORY[0x277CEF4D0] saeAvailable];

      if (!v37)
      {
        goto LABEL_32;
      }

      v38 = objc_alloc(MEMORY[0x277D5AC78]);
      v39 = objc_alloc_init(MEMORY[0x277CCAD78]);
      v36 = [v38 initWithNSUUID:v39];

      v40 = objc_alloc_init(MEMORY[0x277D5AB60]);
      [v40 setLinkId:v36];
      [v40 setHasLinkId:1];
      v41 = [v82 text];
      [v40 setTypedText:v41];

      [v81 setLinkId:v36];
      [v81 setHasLinkId:1];
      v42 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        v44 = [(AFUISiriSession *)val _instrumentationTurnContext];
        v45 = [v44 turnIdentifier];
        v46 = [v40 formattedText];
        *buf = 136315906;
        v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
        v98 = 2112;
        v99 = v40;
        v100 = 2112;
        v101 = v45;
        v102 = 2112;
        v103 = v46;
        _os_log_impl(&dword_241432000, v43, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
      }

      v47 = [(AFUISiriSession *)val _instrumentationTurnContext];
      [v47 emitInstrumentation:v40 machAbsoluteTime:mach_absolute_time()];
    }
  }

LABEL_32:
  v48 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v49 = v48;
    v50 = [(AFUISiriSession *)val _instrumentationTurnContext];
    v51 = [v50 turnIdentifier];
    v52 = [v81 formattedText];
    *buf = 136315906;
    v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
    v98 = 2112;
    v99 = v81;
    v100 = 2112;
    v101 = v51;
    v102 = 2112;
    v103 = v52;
    _os_log_impl(&dword_241432000, v49, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
  }

  v53 = [(AFUISiriSession *)val _instrumentationTurnContext];
  [v53 emitInstrumentation:v81 machAbsoluteTime:mach_absolute_time()];

  v79 = [v82 activationEventInstrumentationIdenifier];
  if (v79)
  {
    activationInstrumentationSender = val->_activationInstrumentationSender;
    if (!activationInstrumentationSender)
    {
      v55 = objc_alloc(MEMORY[0x277D55158]);
      v56 = [MEMORY[0x277D552C0] sharedAnalytics];
      v57 = [v56 defaultMessageStream];
      v58 = [v55 initWithAnalyticsStream:v57];
      v59 = val->_activationInstrumentationSender;
      val->_activationInstrumentationSender = v58;

      activationInstrumentationSender = val->_activationInstrumentationSender;
    }

    v60 = [v80 turnIdentifier];
    [(SASActivationInstrumentationSender *)activationInstrumentationSender instrumentTurnActivatedWithTurnId:v60 activationEventIdentifier:v79];

    v61 = val->_activationInstrumentationSender;
    v62 = [v80 turnIdentifier];
    [(SASActivationInstrumentationSender *)v61 instrumentRequestLinkToUEIWithTurnId:v62 activationEventIdentifier:v79];
  }

  v77 = SRUIFConstructLaunchContextForLaunchStarted();
  if ([v82 requestSource] == 23)
  {
    [v82 buttonDownTimestamp];
  }

  else if ([v82 requestSource] == 44)
  {
    [v82 computedActivationTime];
  }

  else
  {
    [v82 timestamp];
  }

  v76 = AFGetMachAbsoluteTimeFromTimeInterval();
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v63 = [v82 instrumentationEvents];
  v64 = [v63 countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (v64)
  {
    v65 = *v89;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v89 != v65)
        {
          objc_enumerationMutation(v63);
        }

        v67 = *(*(&v88 + 1) + 8 * i);
        v68 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v69 = v68;
          v70 = [(AFUISiriSession *)val _instrumentationTurnContext];
          v71 = [v70 turnIdentifier];
          v72 = [v67 formattedText];
          *buf = 136315906;
          v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
          v98 = 2112;
          v99 = v67;
          v100 = 2112;
          v101 = v71;
          v102 = 2112;
          v103 = v72;
          _os_log_impl(&dword_241432000, v69, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
        }

        v73 = [(AFUISiriSession *)val _instrumentationTurnContext];
        [v73 emitInstrumentation:v67 machAbsoluteTime:mach_absolute_time()];
      }

      v64 = [v63 countByEnumeratingWithState:&v88 objects:v95 count:16];
    }

    while (v64);
  }

  objc_initWeak(buf, val);
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __76__AFUISiriSession__processInstrumentationForFinalOptionsAndGenerateNewTurn___block_invoke_88;
  v84[3] = &unk_278CD5A58;
  objc_copyWeak(v86, buf);
  v74 = v77;
  v85 = v74;
  v86[1] = v76;
  v87 = v78;
  [(AFUISiriSession *)val _performBlockWithDelegate:v84];

  objc_destroyWeak(v86);
  objc_destroyWeak(buf);

  return v80;
}

void __76__AFUISiriSession__processInstrumentationForFinalOptionsAndGenerateNewTurn___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 15);
    [v3 siriSession:v4 initialBringupProcessedWithTurnIdentifier:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void __76__AFUISiriSession__processInstrumentationForFinalOptionsAndGenerateNewTurn___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _instrumentationTurnContext];
  [v3 siriSessionDidStartNewTurn:v4 associatedLaunchStartContext:*(a1 + 32) machAbsoluteTime:*(a1 + 56) linkPreviousTurn:*(a1 + 48)];
}

- (void)_startRequestWithFinalOptions:(id)a3 completion:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 speechRequestOptions];
  self->_lastAFSpeechEvent = [v8 activationEvent];

  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [AFUISiriSession _startRequestWithFinalOptions:v10 completion:?];
  }

  if ([v6 isVisualIntelligenceRequest])
  {
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s request source is visual Intelligence returning early, not erroring out", buf, 0xCu);
    }

    goto LABEL_45;
  }

  v12 = [(AFUISiriSession *)self _processInstrumentationForFinalOptionsAndGenerateNewTurn:v6];
  self->_activeRequestIsTypeToSiri = [v6 isTypeToSiriRequest];
  if (_os_feature_enabled_impl())
  {
    [(AFUISiriSession *)self _updateModesHeuristicsForRequestOptions:v6];
  }

  [(AFUISiriSession *)self _setupConnectionIfNeeded];
  objc_initWeak(&location, self);
  if ([(AFUISiriSession *)self _shouldFetchActiveAccount])
  {
    v13 = [(SRUIFSiriSessionInfo *)self->_siriSessionInfo activeAccount];
    v14 = v13 == 0;

    if (v14)
    {
      settingsConnection = self->_settingsConnection;
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __60__AFUISiriSession__startRequestWithFinalOptions_completion___block_invoke;
      v71[3] = &unk_278CD5AA8;
      objc_copyWeak(&v72, &location);
      [(AFSettingsConnection *)settingsConnection fetchAccountsWithCompletion:v71];
      objc_destroyWeak(&v72);
    }
  }

  v16 = [v6 requestInfo];
  v17 = [v16 turnIdentifier];
  v18 = v17 == 0;

  if (v18)
  {
    v19 = [(AFUISiriSession *)self _instrumentationTurnContext];
    v20 = [v6 requestInfo];
    v21 = [v19 turnIdentifier];
    [v20 setTurnIdentifier:v21];

    v22 = *v9;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v19 turnIdentifier];
      *buf = 136315650;
      v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
      v76 = 2112;
      v77 = v23;
      v78 = 2112;
      v79 = v6;
      _os_log_impl(&dword_241432000, v22, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Specified turn %@ to final options %@", buf, 0x20u);
    }
  }

  if ([v6 requestSource] == 14 || objc_msgSend(v6, "requestSource") == 13)
  {
    v24 = [v6 requestInfo];
    v25 = [v24 startLocalRequest];

    if (v25)
    {
      v26 = *v9;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v24 startLocalRequest];
        *buf = 136315650;
        v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
        v76 = 2112;
        v77 = v6;
        v78 = 2112;
        v79 = v27;
        _os_log_impl(&dword_241432000, v26, OS_LOG_TYPE_DEFAULT, "%s #activation #carPlay activating requested direct action via Native Siri Kit. SASRequestOptions: %@, SAStartLocalRequest: %@", buf, 0x20u);
      }

      objc_copyWeak(&v70, &location);
      v68 = v24;
      v69 = v7;
      SRUIFInvokeOnMainQueue();

      objc_destroyWeak(&v70);
    }

    else
    {
      v28 = [v24 legacyDirectActionIdentifier];

      if (v28)
      {
        v29 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
          v76 = 2112;
          v77 = v6;
          _os_log_impl(&dword_241432000, v29, OS_LOG_TYPE_DEFAULT, "%s #activation #carPlay activating requested direct action via Legacy. SASRequestOptions: %@", buf, 0x16u);
        }

        v30 = [v6 directActionApplicationContext];
        [(AFUISiriSession *)self _startLegacyDirectActionRequestWithInfo:v24 context:v30 completion:v7];
      }

      else
      {
        v37 = [v6 bulletin];

        v38 = *v9;
        v39 = *v9;
        if (v37)
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
            v76 = 2112;
            v77 = v6;
            _os_log_impl(&dword_241432000, v38, OS_LOG_TYPE_DEFAULT, "%s #activation #carPlay activating requested direct action with no direct action specified. SASRequestOptions: %@", buf, 0x16u);
          }

          v40 = [v6 bulletin];
          [(AFUISiriSession *)self _startRequestForReadoutOfBulletin:v40];
        }

        else
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [AFUISiriSession _startRequestWithFinalOptions:completion:];
          }

          if (v7)
          {
            v42 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"Unable to handle direct action request options" underlyingError:0];
            (*(v7 + 2))(v7, v42);
          }
        }
      }
    }

    goto LABEL_42;
  }

  if ([v6 requestSource] != 22)
  {
    if ([v6 requestSource] == 12)
    {
      v33 = [v6 requestInfo];
      v34 = [v33 speechRequestOptions];

      if (v34)
      {
        v35 = [v6 requestInfo];
        v36 = [v35 speechRequestOptions];
        -[AFUISiriSession _startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:](self, "_startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:", v36, [v6 isInitialBringUp], v7);

        goto LABEL_42;
      }

      v48 = [v6 requestInfo];

      if (v48)
      {
LABEL_58:
        v53 = [v6 requestInfo];
        [(AFUISiriSession *)self _startRequestWithInfo:v53 completion:v7];

        goto LABEL_42;
      }

LABEL_64:
      [(AFUISiriSession *)self _startSpeechRequestWithOptions:v6 completion:v7];
      goto LABEL_42;
    }

    if ([v6 requestSource] == 15)
    {
      v41 = [v6 requestInfo];

      if (v41)
      {
        goto LABEL_58;
      }

      v49 = [v6 text];

      if (v49)
      {
        v50 = [v6 text];
        v51 = [v12 turnIdentifier];
        [(AFUISiriSession *)self _startRequestWithText:v50 turnIdentifier:v51 completion:v7];

        goto LABEL_42;
      }

      v54 = [v6 speechFileURL];

      if (!v54)
      {
        if ([v6 inputType] != 2)
        {
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            [AFUISiriSession _startRequestWithFinalOptions:completion:];
          }

          goto LABEL_42;
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ([v6 requestSource] == 19 || objc_msgSend(v6, "requestSource") == 38 || objc_msgSend(v6, "requestSource") == 41 || objc_msgSend(v6, "requestSource") == 43 || objc_msgSend(v6, "requestSource") == 42)
      {
        v44 = [v6 requestInfo];
        v45 = [v44 speechRequestOptions];

        if (v45)
        {
          v46 = [v6 requestInfo];
          v47 = [v46 speechRequestOptions];

          -[AFUISiriSession _startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:](self, "_startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:", v47, [v6 isInitialBringUp], v7);
          goto LABEL_42;
        }

        v52 = [v6 requestInfo];

        if (v52)
        {
          goto LABEL_58;
        }

        v56 = [v6 speechRequestOptions];

        if (!v56)
        {
          v57 = [v6 continuityInfo];
          [(AFUISiriSession *)self _startContinuityRequestWithInfo:v57 completion:v7];

          goto LABEL_42;
        }

        goto LABEL_64;
      }

      if ([v6 requestSource] == 35 || objc_msgSend(v6, "requestSource") == 40)
      {
        if (v7)
        {
          (*(v7 + 2))(v7, 0);
        }

        goto LABEL_42;
      }

      if ([v6 isPronunciationRequest])
      {
        v58 = [v6 pronunciationContext];
        [(AFUISiriSession *)self _startSpeechPronunciationRequestWithContext:v58 options:v6 completion:v7];

        goto LABEL_42;
      }

      v59 = [v6 text];

      if (v59)
      {
        [v6 requestSource];
        if (SASRequestSourceIsVisualIntelligenceDirectInvocation())
        {
          v60 = [v6 text];
          v61 = [v12 turnIdentifier];
          [(AFUISiriSession *)self _startVisualIntelligenceDirectInvocationRequestWithText:v60 turnIdentifier:v61 completion:v7];
        }

        else
        {
          if ([v6 requestSource] == 51)
          {
            v63 = [v6 text];
            v64 = [v6 suggestionRequestType];
            v65 = [v12 turnIdentifier];
            [(AFUISiriSession *)self _startRequestWithSuggestionText:v63 suggestionRequestType:v64 turnIdentifier:v65 completion:v7];
          }

          else
          {
            v63 = [v6 text];
            v65 = [v12 turnIdentifier];
            [(AFUISiriSession *)self _startRequestWithText:v63 turnIdentifier:v65 completion:v7];
          }
        }

        goto LABEL_42;
      }

      v62 = [v6 speechFileURL];

      if (!v62)
      {
        if ([v6 inputType] != 2)
        {
          [v6 requestSource];
          if (SASRequestSourceIsVisualIntelligenceDirectInvocation())
          {
            v66 = [v12 turnIdentifier];
            [(AFUISiriSession *)self _startVisualIntelligenceDirectInvocationRequestWith:v66 completion:v7];
          }

          else if ([v6 requestSource] == 48)
          {
            [(AFUISiriSession *)self stopAttending];
            [(AFUISiriSession *)self cancelRequest];
          }

          else
          {
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
            {
              [AFUISiriSession _startRequestWithFinalOptions:completion:];
            }

            if (v7)
            {
              v67 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"Unexpected UI request options." underlyingError:0];
              (*(v7 + 2))(v7, v67);
            }
          }

          goto LABEL_42;
        }

        goto LABEL_64;
      }
    }

    v55 = [v6 speechFileURL];
    [(AFUISiriSession *)self _startSpeechRequestWithSpeechFileAtURL:v55 completion:v7];

    goto LABEL_42;
  }

  v31 = [v6 requestInfo];
  v32 = [v6 directActionApplicationContext];
  [(AFUISiriSession *)self _startLegacyDirectActionRequestWithInfo:v31 context:v32 completion:v7];

LABEL_42:
  if ([v6 isFlexibleFollowupRequest])
  {
    WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
    [WeakRetained siriSessionDidReactivateFromFlexibleFollowups];
  }

  objc_destroyWeak(&location);

LABEL_45:
}

void __60__AFUISiriSession__startRequestWithFinalOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __60__AFUISiriSession__startRequestWithFinalOptions_completion___block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        v12 = MEMORY[0x277D85CD0];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            if ([v14 isActive])
            {
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __60__AFUISiriSession__startRequestWithFinalOptions_completion___block_invoke_91;
              block[3] = &unk_278CD5A80;
              block[4] = WeakRetained;
              block[5] = v14;
              v16 = v8;
              dispatch_async(v12, block);
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      v6 = 0;
    }
  }
}

uint64_t __60__AFUISiriSession__startRequestWithFinalOptions_completion___block_invoke_91(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) count];

  return [v1 _updateActiveAccount:v2 withNumberOfActiveAccounts:v3];
}

void __60__AFUISiriSession__startRequestWithFinalOptions_completion___block_invoke_93(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _startRequestWithInfo:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_startRequestForReadoutOfBulletin:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[AFUISiriSession _startRequestForReadoutOfBulletin:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (v4)
  {
    [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_102];
    [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:6];
    [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__AFUISiriSession__startRequestForReadoutOfBulletin___block_invoke_2;
    v7[3] = &unk_278CD59E0;
    v8 = v4;
    [(AFUISiriSession *)self _performBlockWithDelegate:v7];
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    [AFUISiriSession _startRequestForReadoutOfBulletin:];
  }
}

void __53__AFUISiriSession__startRequestForReadoutOfBulletin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__AFUISiriSession__startRequestForReadoutOfBulletin___block_invoke_3;
  v6[3] = &unk_278CD5AF8;
  v7 = v3;
  v5 = v3;
  [v5 siriSessionRequestsReadoutOfBulletin:v4 completion:v6];
}

void __53__AFUISiriSession__startRequestForReadoutOfBulletin___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      v2 = *(a1 + 32);
      v3 = 11;
    }

    else
    {
      v2 = *(a1 + 32);
      v3 = 21;
    }

    goto LABEL_14;
  }

  if (a2 == 2)
  {
    v2 = *(a1 + 32);
    v3 = 33;
LABEL_14:

    [v2 siriSessionRequestsDismissalForReason:v3];
    return;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    v2 = *(a1 + 32);
    v3 = 34;
    goto LABEL_14;
  }

  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AFUISiriSession _startRequestForReadoutOfBulletin:]_block_invoke_3";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s TTS was cancelled, ignoring as it is most likely due to Siri invocation during readout.", &v5, 0xCu);
  }
}

- (void)startRequestWithOptions:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CEF340]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke;
  v37[3] = &unk_278CD57E0;
  v9 = v7;
  v38 = v9;
  v10 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"Completion block of start request was dropped." underlyingError:0];
  v11 = [v8 initWithBlock:v37 defaultValue:v10];

  [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler discardCurrentSpeechGroup];
  -[AFUISiriSession setEyesFree:](self, "setEyesFree:", [v6 isForBluetoothCar]);
  v12 = [objc_opt_class() availabilityState];
  if (v12 == 3)
  {
    if ([v6 isVisualIntelligenceRequest])
    {
LABEL_13:
      v21 = [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler prepareForNewSpeechRequest];
      if ([v6 isInitialBringUp] & 1) != 0 || objc_msgSend(v6, "inputType") == 1 || (-[AFUISiriSession delegate](self, "delegate"), (v22 = objc_claimAutoreleasedReturnValue()) == 0) || (v23 = objc_msgSend(v6, "isVisualIntelligenceRequest"), v22, (v23))
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke_124;
        v30[3] = &unk_278CD58D0;
        v31 = v11;
        [(AFUISiriSession *)self _startRequestWithFinalOptions:v6 completion:v30];
      }

      else
      {
        dispatch_group_enter(v21);
        objc_initWeak(buf, self);
        delegate = self->_delegate;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke_119;
        v32[3] = &unk_278CD5B20;
        v33 = v21;
        objc_copyWeak(&v36, buf);
        v34 = v11;
        v35 = self;
        [(AFUISiriSessionDelegate *)delegate siriSessionWillStartRequestWithOptions:v6 completion:v32];

        objc_destroyWeak(&v36);
        objc_destroyWeak(buf);
      }

      goto LABEL_19;
    }

    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      [v6 requestSource];
      v26 = SASRequestSourceGetName();
      *buf = 136315394;
      v40 = "[AFUISiriSession startRequestWithOptions:completion:]";
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_241432000, v25, OS_LOG_TYPE_DEFAULT, "%s Device doesn't have assets. Not starting the request for %@", buf, 0x16u);
    }

    v27 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"No assets." underlyingError:0];
    [v11 invokeWithValue:v27];

    v28 = [MEMORY[0x277D61AA8] sharedInstance];
    [v28 downloadAssets];

    [(AFUISiriSession *)self emitSiriWasUnavailableEventWithRequestOptions:v6];
  }

  else
  {
    if (v12 != 2)
    {
      if (v12 == 1 && [v6 requestSource] != 27 && (objc_msgSend(v6, "isVisualIntelligenceRequest") & 1) == 0)
      {
        v13 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          [v6 requestSource];
          v15 = SASRequestSourceGetName();
          *buf = 136315394;
          v40 = "[AFUISiriSession startRequestWithOptions:completion:]";
          v41 = 2112;
          v42 = v15;
          _os_log_impl(&dword_241432000, v14, OS_LOG_TYPE_DEFAULT, "%s No network. Not starting the request for %@", buf, 0x16u);
        }

        v16 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"No network." underlyingError:0];
        [v11 invokeWithValue:v16];

        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v17 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      [v6 requestSource];
      v19 = SASRequestSourceGetName();
      *buf = 136315394;
      v40 = "[AFUISiriSession startRequestWithOptions:completion:]";
      v41 = 2112;
      v42 = v19;
      _os_log_impl(&dword_241432000, v18, OS_LOG_TYPE_DEFAULT, "%s Device not unlocked since boot. Not starting the request for %@", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"Device not unlocked since boot." underlyingError:0];
    [v11 invokeWithValue:v20];
  }

LABEL_19:
}

uint64_t __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke_119(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [WeakRetained speechRequestHandler];
  v7 = [v6 currentSpeechRequestDispatchGroup];

  if (v4 == v7)
  {
    if (v3)
    {
      v8 = objc_loadWeakRetained((a1 + 56));
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke_2;
      v13[3] = &unk_278CD58D0;
      v14 = *(a1 + 40);
      [v8 _startRequestWithFinalOptions:v3 completion:v13];

      v9 = v14;
    }

    else
    {
      v10 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        *buf = 136315394;
        v16 = "[AFUISiriSession startRequestWithOptions:completion:]_block_invoke";
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ not starting a new request because its delegate vetoed with nil request options", buf, 0x16u);
      }

      v12 = *(a1 + 40);
      v9 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"Session delegate vetoed." underlyingError:0];
      [v12 invokeWithValue:v9];
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)stopRequestWithOptions:(id)a3
{
  speechRequestHandler = self->_speechRequestHandler;
  v4 = [(AFUISiriSession *)self _preparedSpeechRequestWithRequestOptions:a3];
  [(SRUIFSpeechRequestHandler *)speechRequestHandler stopSpeechRequestWithOptions:v4];
}

- (void)updateRequestOptions:(id)a3
{
  speechRequestHandler = self->_speechRequestHandler;
  v4 = [(AFUISiriSession *)self _preparedSpeechRequestWithRequestOptions:a3];
  [(SRUIFSpeechRequestHandler *)speechRequestHandler updateSpeechRequestOptions:v4];
}

- (void)assistantConnectionRequestWillStart:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  self->_currentRequestDidPresent = 0;
  if (_os_feature_enabled_impl())
  {
    modesConfiguration = self->_modesConfiguration;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__AFUISiriSession_assistantConnectionRequestWillStart___block_invoke;
    v10[3] = &unk_278CD5B48;
    v10[4] = self;
    v5 = [(AFModesConfiguration *)modesConfiguration mutatedCopyWithMutator:v10];
    v6 = self->_modesConfiguration;
    self->_modesConfiguration = v5;

    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_modesConfiguration;
      *buf = 136315394;
      v12 = "[AFUISiriSession assistantConnectionRequestWillStart:]";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #modes Sending modes configuration : %@", buf, 0x16u);
    }

    v9 = [(AFUISiriSession *)self _connection];
    [v9 setModesConfiguration:self->_modesConfiguration];
  }

  [(SRUIFUIBridgeClient *)self->_uiBridgeClient newRequestWillStart];
  [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_129];
}

void __55__AFUISiriSession_assistantConnectionRequestWillStart___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _modeOverrideValue];
  [v3 setModeOverrideValue:v4];
}

- (id)safeWrapResponseCompletion:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &__block_literal_global_132;
  }

  v4 = _Block_copy(v3);

  return v4;
}

- (id)_setRefIdForAllViewsInAddViews:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 refId];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB18];
    v6 = [v3 views];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v3 views];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) dictionary];
          [v13 setObject:v4 forKey:@"refId"];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = [v3 dictionary];
    [v14 setObject:v7 forKey:*MEMORY[0x277D48B00]];
    v15 = [objc_alloc(MEMORY[0x277D479E8]) initWithDictionary:v14];
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

- (void)assistantConnection:(id)a3 receivedCommand:(id)a4 completion:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 encodedClassName];
  v12 = [(AFUISiriSession *)self safeWrapResponseCompletion:v10];

  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v9 aceId];
    *buf = 136315650;
    v51 = "[AFUISiriSession assistantConnection:receivedCommand:completion:]";
    v52 = 2112;
    v53 = v11;
    v54 = 2112;
    v55 = v16;
    _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s Received Command: %@ aceId: %@", buf, 0x20u);
  }

  v17 = [(AFUISiriSession *)self visualIntelligenceCameraDelegate];
  [v17 siriWillPresentResult];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  if (!v19)
  {
    v25 = 0;
    goto LABEL_23;
  }

  v20 = v19;
  v21 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = MEMORY[0x277D61B38];
    v23 = v21;
    v24 = [v22 descriptionForAddViews:v20];
    *buf = 136315394;
    v51 = "[AFUISiriSession assistantConnection:receivedCommand:completion:]";
    v52 = 2112;
    v53 = v24;
    _os_log_impl(&dword_241432000, v23, OS_LOG_TYPE_DEFAULT, "%s Received AddViews Command %@", buf, 0x16u);
  }

  v25 = [(AFUISiriSession *)self _setRefIdForAllViewsInAddViews:v20];

  v26 = [v25 af_dialogPhase];
  v27 = [v26 isPossiblyPartOfMultiTurnRequest];
  if (v27)
  {
    v28 = *v13;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[AFUISiriSession assistantConnection:receivedCommand:completion:]";
      v52 = 2112;
      v53 = v26;
      v29 = "%s %@ may be a part of a multi turn request.";
LABEL_18:
      _os_log_impl(&dword_241432000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
    }
  }

  else
  {
    if (([v26 isCompletionDialogPhase] & 1) == 0 && (objc_msgSend(v26, "isErrorDialogPhase") & 1) == 0 && !objc_msgSend(v26, "isConfirmedDialogPhase"))
    {
      goto LABEL_20;
    }

    v28 = *v13;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[AFUISiriSession assistantConnection:receivedCommand:completion:]";
      v52 = 2112;
      v53 = v26;
      v29 = "%s %@ indicates end of a multi turn request.";
      goto LABEL_18;
    }
  }

  v30 = [(AFUISiriSession *)self _connection];
  [v30 adviseSessionArbiterToContinueWithPreviousWinner:v27];

LABEL_20:
  if ([v25 immersiveExperience])
  {
    WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
    [WeakRetained siriSessionImmersiveExperienceRequested];
  }

LABEL_23:
  v32 = [v9 sruif_usefulUserResultType];
  if (v32)
  {
    v33 = [(AFUISiriSession *)self _connection];
    [v33 willPresentUsefulUserResultWithType:v32 forCommand:v9];
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __66__AFUISiriSession_assistantConnection_receivedCommand_completion___block_invoke;
  v48[3] = &unk_278CD59E0;
  v34 = v9;
  v49 = v34;
  [(AFUISiriSession *)self _performBlockWithDelegate:v48];
  if ([v11 isEqualToString:*MEMORY[0x277D48BC0]])
  {
    v35 = objc_loadWeakRetained(&self->_localDelegate);
    [v35 siriSessionDidReceiveDelayedActionCancelCommand:v34 completion:v12];
  }

  else if ([v11 isEqualToString:*MEMORY[0x277D48BC8]])
  {
    v36 = objc_loadWeakRetained(&self->_localDelegate);
    [v36 siriSessionDidReceiveDelayedActionCommand:v34 completion:v12];
  }

  else if ([v11 isEqualToString:*MEMORY[0x277D48D30]])
  {
    v37 = objc_loadWeakRetained(&self->_localDelegate);
    [v37 siriSessionDidReceiveTakeScreenshotCommand:v34 completion:v12];
  }

  else if ([v11 isEqualToString:*MEMORY[0x277D47D28]])
  {
    v38 = objc_loadWeakRetained(&self->_localDelegate);
    [v38 siriSessionDidReceiveStartScreenRecordingCommand:v34 completion:v12];
  }

  else if ([v11 isEqualToString:*MEMORY[0x277D47D30]])
  {
    v39 = objc_loadWeakRetained(&self->_localDelegate);
    [v39 siriSessionDidReceiveStopScreenRecordingCommand:v34 completion:v12];
  }

  else if ([v11 isEqualToString:*MEMORY[0x277D48CC8]])
  {
    v40 = objc_loadWeakRetained(&self->_localDelegate);
    [v40 siriSessionDidReceiveSetUpdateMaskCommand:v34 completion:v12];
  }

  else
  {
    objc_initWeak(buf, self);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __66__AFUISiriSession_assistantConnection_receivedCommand_completion___block_invoke_2;
    v41[3] = &unk_278CD5B90;
    v42 = v11;
    v43 = v25;
    v46 = v12;
    v44 = v34;
    v45 = self;
    objc_copyWeak(&v47, buf);
    [(AFUISiriSession *)self _performBlockWithDelegate:v41];
    objc_destroyWeak(&v47);

    objc_destroyWeak(buf);
  }
}

void __66__AFUISiriSession_assistantConnection_receivedCommand_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48AF0]])
  {
    [v3 siriSessionDidReceiveAddViewsCommand:*(a1 + 40) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48AE8]])
  {
    [v3 siriSessionDidReceiveAddDialogsCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48B68]])
  {
    [v3 siriSessionDidReceiveClearScreenCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48798]])
  {
    [v3 siriSessionDidReceivePlayVoicemailCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C50]])
  {
    [v3 siriSessionDidReceiveOpenLinkCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D489B0]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 siriSessionDidReceiveSmsPlayAudioCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C70]])
  {
    [v3 siriSessionDidReceivePlayNotificationSound:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48CB8]])
  {
    [v3 siriSessionDidReceiveSayItCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C80]])
  {
    [v3 siriSessionDidReceiveRepeatItCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D38]])
  {
    [*(a1 + 56) _handleUnlockAppCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D40]])
  {
    [*(a1 + 56) _handleUnlockDeviceCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D48]])
  {
    [*(a1 + 56) _handleUnlockDeviceWithWatchCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48CD8]])
  {
    [v3 siriSessionDidReceiveShowHelpCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C88]])
  {
    [*(a1 + 56) _handleRequestUpdateViewsCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D50]])
  {
    [v3 siriSessionDidReceiveUpdateViewsCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48B08]])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _performPunchoutCommand:*(a1 + 48) delegate:v3 completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48B70]])
  {
    [v3 siriSessionDidReceiveCloseAssistantCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C48]])
  {
    [v3 siriSessionDidReceiveListenForPronunciationCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C30]])
  {
    [v3 siriSessionDidReceiveGetResponseAlternativesPlaybackCommand:*(a1 + 48) completion:*(a1 + 64)];
  }

  else
  {
    v5 = (a1 + 48);
    if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48CC0]])
    {
      [v3 siriSessionDidReceiveSetSuggestedUtterancesCommand:*(a1 + 48) completion:*(a1 + 64)];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 siriSessionDidReceiveAddContentToViewCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48998]])
      {
        [v3 siriSessionDidReceiveSetUIGuidedAccessCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48B60]])
      {
        [v3 siriSessionDidReceiveSAUIChangePrimaryUtteranceCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48CD0]])
      {
        [v3 siriSessionDidReceiveSAUIShowFullScreenEffectCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D00]])
      {
        [v3 siriSessionDidReceiveSAUIShowSpeechAlternativesCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48CE0]])
      {
        [v3 siriSessionDidReceiveSAUIShowRequestHandlingStatusCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C38]])
      {
        [v3 siriSessionDidReceiveHideSiriOverlayCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D47DA8]])
      {
        [v3 siriSessionDidReceiveGuideUpdateCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D47C98]])
      {
        [v3 siriSessionDidReceiveShowNextCardCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D487A0]])
      {
        [v3 siriSessionDidReceivePreSynthesizeTTSCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C20]])
      {
        [v3 siriSessionDidReceiveDisambiguationItemSelected:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D98]])
      {
        [v3 siriSessionDidReceivePlayContentCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C40]])
      {
        [v3 siriSessionDidReceiveLaunchTVRemoteCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C28]])
      {
        [v3 siriSessionDidReceiveExtendCurrentTTSCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48CB0]])
      {
        [v3 siriSessionDidReceiveRevealRecognizedSpeechCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C58]])
      {
        [v3 siriSessionDidReceivePaginateListCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D60]])
      {
        [v3 siriSessionDidReceiveShowNextSnippetCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D58]])
      {
        [v3 siriSessionDidReceiveUpdateVisualResponseSnippetCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D10]])
      {
        [v3 siriSessionDidReceiveSnippetConfigurationRequestCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C60]])
      {
        [*(a1 + 56) _handlePhotoPickerRequest:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C68]])
      {
        [*(a1 + 56) _handlePlayAudioCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D28]])
      {
        [*(a1 + 56) _handleSuppressDelayFeedbackCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48D20]])
      {
        [v3 siriSessionDidReceiveStartGenAIEnablementFlowCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48BB0]])
      {
        [v3 siriSessionDidReceiveContinueAppEntityOnDeviceCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48BB8]])
      {
        [v3 siriSessionDidReceiveContinueAppIntentOnDeviceCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D48C78]])
      {
        [v3 siriSessionDidReceivePluginSnippetPrewarmCommand:*(a1 + 48) completion:*(a1 + 64)];
      }

      else
      {
        v6 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          __66__AFUISiriSession_assistantConnection_receivedCommand_completion___block_invoke_2_cold_1(v5, v6);
        }
      }
    }
  }
}

- (void)_handleSuppressDelayFeedbackCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  stateFeedbackManager = self->_stateFeedbackManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__AFUISiriSession__handleSuppressDelayFeedbackCommand_completion___block_invoke;
  v11[3] = &unk_278CD5BB8;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(SRUIFStateFeedbackManager *)stateFeedbackManager cancelFeedbackWithCompletion:v11];
}

void __66__AFUISiriSession__handleSuppressDelayFeedbackCommand_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v2 = objc_alloc_init(MEMORY[0x277D47218]);
    v3 = [*(a1 + 32) aceId];
    [v2 setRefId:v3];

    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[AFUISiriSession _handleSuppressDelayFeedbackCommand:completion:]_block_invoke";
      _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s successfully suppressed delay feedback", &v5, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_handlePlayAudioCommand:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[AFUISiriSession _handlePlayAudioCommand:completion:]";
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    stateFeedbackManager = self->_stateFeedbackManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__AFUISiriSession__handlePlayAudioCommand_completion___block_invoke;
    v13[3] = &unk_278CD5BE0;
    v14 = v6;
    v15 = v7;
    [(SRUIFStateFeedbackManager *)stateFeedbackManager playAudioPlaybackRequest:v14 completion:v13];

    v11 = v14;
  }

  else
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [AFUISiriSession _handlePlayAudioCommand:completion:];
    }

    v11 = objc_alloc_init(MEMORY[0x277D47208]);
    v12 = [v6 aceId];
    [v11 setRefId:v12];

    (*(v7 + 2))(v7, v11);
  }
}

void __54__AFUISiriSession__handlePlayAudioCommand_completion___block_invoke(uint64_t a1, int a2)
{
  v3 = 0x277D47218;
  if (!a2)
  {
    v3 = 0x277D47208;
  }

  v5 = objc_alloc_init(*v3);
  v4 = [*(a1 + 32) aceId];
  [v5 setRefId:v4];

  (*(*(a1 + 40) + 16))();
}

- (void)_performPunchoutCommand:(id)a3 delegate:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[AFUISiriSession _performPunchoutCommand:delegate:completion:]";
    _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) != 0 && (v15 = objc_loadWeakRetained(&self->_localDelegate), v16 = [v15 shouldNonLocalDelegateHandlePunchouts], v15, !v16))
  {
    v21 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[AFUISiriSession _performPunchoutCommand:delegate:completion:]";
      _os_log_impl(&dword_241432000, v21, OS_LOG_TYPE_DEFAULT, "%s Local delegate is handling it.", buf, 0xCu);
    }

    v22 = objc_loadWeakRetained(&self->_localDelegate);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__AFUISiriSession__performPunchoutCommand_delegate_completion___block_invoke;
    v23[3] = &unk_278CD5C08;
    v25 = v10;
    v24 = v8;
    [v22 handlePunchoutCommand:v24 completion:v23];
  }

  else
  {
    v17 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = v17;
      v20 = [v18 numberWithBool:v14 & 1];
      *buf = 136315394;
      v27 = "[AFUISiriSession _performPunchoutCommand:delegate:completion:]";
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_241432000, v19, OS_LOG_TYPE_DEFAULT, "%s Delegate is handling it - responds to shouldNonLocalDelegateHandlePunchouts: %@", buf, 0x16u);
    }

    [v9 siriSessionDidReceiveAppPunchOutCommand:v8 completion:v10];
  }
}

void __63__AFUISiriSession__performPunchoutCommand_delegate_completion___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    v3 = 0x277D47218;
    if (!a2)
    {
      v3 = 0x277D47208;
    }

    v5 = objc_alloc_init(*v3);
    v4 = [*(a1 + 32) aceId];
    [v5 setRefId:v4];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)assistantConnection:(id)a3 startUIRequestWithText:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__AFUISiriSession_assistantConnection_startUIRequestWithText_completion___block_invoke;
  v11[3] = &unk_278CD5C30;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(AFUISiriSession *)self _performBlockWithDelegate:v11];
}

- (void)assistantConnection:(id)a3 replayAll:(unint64_t)a4 with:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__AFUISiriSession_assistantConnection_replayAll_with___block_invoke;
  v9[3] = &unk_278CD5C58;
  v10 = v7;
  v11 = a4;
  v8 = v7;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
}

- (void)assistantConnection:(id)a3 replayAt:(unint64_t)a4 with:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__AFUISiriSession_assistantConnection_replayAt_with___block_invoke;
  v9[3] = &unk_278CD5C58;
  v10 = v7;
  v11 = a4;
  v8 = v7;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
}

- (void)assistantConnection:(id)a3 setReplayEnabled:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__AFUISiriSession_assistantConnection_setReplayEnabled___block_invoke;
  v4[3] = &__block_descriptor_33_e35_v16__0___AFUISiriSessionDelegate__8l;
  v5 = a4;
  [(AFUISiriSession *)self _performBlockWithDelegate:v4];
}

- (void)assistantConnection:(id)a3 setReplayOverridePath:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__AFUISiriSession_assistantConnection_setReplayOverridePath___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = v5;
  v6 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)_requestDidFinishWithError:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__AFUISiriSession__requestDidFinishWithError___block_invoke;
  v9[3] = &unk_278CD59E0;
  v5 = v4;
  v10 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_localDelegate);
    [v8 siriSessionDidFinishRequestWithError:v5];
  }
}

- (void)assistantConnection:(id)a3 didFinishAcousticIDRequestWithSuccess:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    *buf = 136315394;
    v12 = "[AFUISiriSession assistantConnection:didFinishAcousticIDRequestWithSuccess:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  self->_isProcessingAcousticIdRequest = 0;
  if (!v4)
  {
    [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:7];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__AFUISiriSession_assistantConnection_didFinishAcousticIDRequestWithSuccess___block_invoke;
  v9[3] = &__block_descriptor_33_e35_v16__0___AFUISiriSessionDelegate__8l;
  v10 = v4;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
}

- (void)assistantConnection:(id)a3 requestFailedWithError:(id)a4 requestClass:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[AFUISiriSession assistantConnection:requestFailedWithError:requestClass:]";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s error:%@ requestClass:%@", &v10, 0x20u);
  }

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:7];
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
  [(AFUISiriSession *)self _requestDidFinishWithError:v7];
}

- (void)assistantConnectionRequestFinished:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AFUISiriSession assistantConnectionRequestFinished:]";
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:6];
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
  [(AFUISiriSession *)self _requestDidFinishWithError:0];
}

- (void)assistantConnection:(id)a3 openURL:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__AFUISiriSession_assistantConnection_openURL_completion___block_invoke;
  v11[3] = &unk_278CD5C30;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(AFUISiriSession *)self _performBlockWithDelegate:v11];
}

- (void)assistantConnection:(id)a3 willProcessStartPlayback:(int64_t)a4 intent:(id)a5 completion:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v12 = getINStartCallIntentClass_softClass;
  v27 = getINStartCallIntentClass_softClass;
  if (!getINStartCallIntentClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getINStartCallIntentClass_block_invoke;
    v29 = &unk_278CD54F0;
    v30 = &v24;
    __getINStartCallIntentClass_block_invoke(buf);
    v12 = v25[3];
  }

  v13 = v12;
  _Block_object_dispose(&v24, 8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = isKindOfClass ^ 1;
  v16 = MEMORY[0x277CEF098];
  if (((isKindOfClass ^ 1) & 1) == 0)
  {
    v17 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[AFUISiriSession assistantConnection:willProcessStartPlayback:intent:completion:]";
      _os_log_impl(&dword_241432000, v17, OS_LOG_TYPE_DEFAULT, "%s #PhoneCallAudioSessionHandler Extending the audio session for imminent phone call", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
    [WeakRetained siriSessionShouldExtendAudioSessionForImminentPhoneCall];
  }

  v19 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = MEMORY[0x277CCABB0];
    v21 = v19;
    v22 = [v20 numberWithBool:isKindOfClass & 1];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:v15 & 1];
    *buf = 136315650;
    *&buf[4] = "[AFUISiriSession assistantConnection:willProcessStartPlayback:intent:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    v29 = v23;
    _os_log_impl(&dword_241432000, v21, OS_LOG_TYPE_DEFAULT, "%s #PhoneCallAudioSessionHandler: shouldExtendAudioSessionForImminentPhoneCall: %@, suppressAudioInterruptedNotificationFlag: %@", buf, 0x20u);
  }

  v11[2](v11, v15 & 1, 1);
}

- (void)assistantConnection:(id)a3 startPlaybackDidFail:(int64_t)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[AFUISiriSession assistantConnection:startPlaybackDidFail:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #PhoneCallAudioSessionHandler startPlaybackDidFail: Telling SiriPresentationViewController to stop extending the audio session", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSessionShouldEndExtendAudioSessionForImminentPhoneCall];
}

- (void)assistantConnection:(id)a3 didChangeAudioSessionID:(unsigned int)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__AFUISiriSession_assistantConnection_didChangeAudioSessionID___block_invoke;
  v4[3] = &__block_descriptor_36_e35_v16__0___AFUISiriSessionDelegate__8l;
  v5 = a4;
  [(AFUISiriSession *)self _performBlockWithDelegate:v4];
}

void __63__AFUISiriSession_assistantConnection_didChangeAudioSessionID___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[AFUISiriSession assistantConnection:didChangeAudioSessionID:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts 1 _delegate:%@ audioSessionID:%u", &v6, 0x1Cu);
  }

  [v3 siriSessionDidUpdateAudioSessionID:*(a1 + 32)];
}

- (void)assistantConnection:(id)a3 dismissAssistantWithReason:(int64_t)a4
{
  if ((a4 - 1) > 5)
  {
    v6 = 32;
  }

  else
  {
    v6 = qword_2414945B8[a4 - 1];
  }

  v7[5] = v4;
  v7[6] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__AFUISiriSession_assistantConnection_dismissAssistantWithReason___block_invoke;
  v7[3] = &__block_descriptor_40_e35_v16__0___AFUISiriSessionDelegate__8l;
  v7[4] = v6;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnection:(id)a3 wantsToCacheImage:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__AFUISiriSession_assistantConnection_wantsToCacheImage___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = v5;
  v6 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnection:(id)a3 extensionRequestWillStartForApplication:(id)a4
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _authenticationUIPresentedCallBack, @"com.apple.LocalAuthentication.ui.presented", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = getOptionalPKDarwinNotificationEventInAppPresented();
  CFNotificationCenterAddObserver(v6, self, _authenticationUIPresentedCallBack, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)assistantConnection:(id)a3 extensionRequestFinishedForApplication:(id)a4 error:(id)a5
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.LocalAuthentication.ui.presented", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = getOptionalPKDarwinNotificationEventInAppPresented();
  CFNotificationCenterRemoveObserver(v7, self, v8, 0);
}

- (void)assistantConnection:(id)a3 didLoadAssistant:(id)a4
{
  v5 = [a4 version];
  [(AFUISiriSession *)self _updateAssistantVersion:v5];
}

- (void)assistantConnection:(id)a3 willProcessAppLaunchWithBundleIdentifier:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSession:self willProcessAppLaunchWithBundleIdentifier:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__AFUISiriSession_assistantConnection_willProcessAppLaunchWithBundleIdentifier___block_invoke;
  v8[3] = &unk_278CD59E0;
  v9 = v5;
  v7 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v8];
}

- (void)assistantConnection:(id)a3 appLaunchFailedWithBundleIdentifier:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSession:self failedToLaunchAppWithBundleIdentifier:v5];
}

- (void)_updateAssistantVersion:(id)a3
{
  v4 = [(SRUIFSiriSessionInfo *)self->_siriSessionInfo setAssistantVersionAndGenerateLightweightInfo:a3];
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_localDelegate);
    [v7 siriSessionDidUpdateSessionInfo:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__AFUISiriSession__updateAssistantVersion___block_invoke;
    v8[3] = &unk_278CD59E0;
    v9 = v4;
    [(AFUISiriSession *)self _performBlockWithDelegate:v8];
  }
}

- (void)assistantConnection:(id)a3 didUpdateResponseMode:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([MEMORY[0x277CEF2A8] isStateFeedbackEnabled])
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[AFUISiriSession assistantConnection:didUpdateResponseMode:]";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s client recieved mode update: %@", &v7, 0x16u);
    }

    [(SRUIFStateFeedbackManager *)self->_stateFeedbackManager updateResponseMode:v5];
  }
}

- (void)assistantConnection:(id)a3 speechRecordingPerformTwoShotPromptWithType:(int64_t)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x277CEF340]);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __94__AFUISiriSession_assistantConnection_speechRecordingPerformTwoShotPromptWithType_completion___block_invoke;
  v20 = &unk_278CD57E0;
  v9 = v7;
  v21 = v9;
  v10 = [v8 initWithBlock:&v17];
  v11 = *MEMORY[0x277CEF098];
  v12 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (a4 == 2)
  {
    if (v12)
    {
      *buf = 136315138;
      v23 = "[AFUISiriSession assistantConnection:speechRecordingPerformTwoShotPromptWithType:completion:]";
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #phatic 1", buf, 0xCu);
    }

    [(AFUISiriSession *)self _playPhaticWithCompletion:v10];
  }

  else
  {
    if (v12)
    {
      *buf = 136315394;
      v23 = "[AFUISiriSession assistantConnection:speechRecordingPerformTwoShotPromptWithType:completion:]";
      v24 = 2048;
      v25 = a4;
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #phatic 1 Fail: type = %tu", buf, 0x16u);
    }

    v13 = MEMORY[0x277CEF2A0];
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v14 initWithFormat:@"Unsupported Two-Shot prompt type %ld.", a4, v17, v18, v19, v20];
    v16 = [v13 errorWithCode:15 description:v15 underlyingError:0];
    [v10 invokeWithValue:v16];
  }
}

void __94__AFUISiriSession_assistantConnection_speechRecordingPerformTwoShotPromptWithType_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[AFUISiriSession assistantConnection:speechRecordingPerformTwoShotPromptWithType:completion:]_block_invoke";
      _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #phatic 8", &v5, 0xCu);
    }

    (*(*(a1 + 32) + 16))(0.0, 0.0);
  }
}

- (void)_playPhaticWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[AFUISiriSession _playPhaticWithCompletion:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #phatic 2", buf, 0xCu);
  }

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __45__AFUISiriSession__playPhaticWithCompletion___block_invoke;
  v12 = &unk_278CD5D08;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = _Block_copy(&v9);
  v8 = [(AFUISiriSession *)self _connection:v9];
  [v8 forceAudioSessionActiveWithOptions:0 reason:3 completion:v7];
}

void __45__AFUISiriSession__playPhaticWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"success";
    if (v4)
    {
      v6 = v4;
    }

    *buf = 136315394;
    v11 = "[AFUISiriSession _playPhaticWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #phatic 3 audioSessionCompletion:%@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__AFUISiriSession__playPhaticWithCompletion___block_invoke_172;
  v8[3] = &unk_278CD59E0;
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v7 _performBlockWithDelegate:v8];
}

void __45__AFUISiriSession__playPhaticWithCompletion___block_invoke_172(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[AFUISiriSession _playPhaticWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #phatic 4 %@", buf, 0x16u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__AFUISiriSession__playPhaticWithCompletion___block_invoke_173;
  v5[3] = &unk_278CD5CE0;
  v6 = *(a1 + 32);
  [v3 siriSessionRequestsPlayPhaticWithCompletion:v5];
}

void __45__AFUISiriSession__playPhaticWithCompletion___block_invoke_173(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AFUISiriSession _playPhaticWithCompletion:]_block_invoke";
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #phatic 9 success:%i", &v7, 0x12u);
  }

  v5 = *(a1 + 32);
  if (a2)
  {
    [v5 invokeWithValue:0];
  }

  else
  {
    v6 = [MEMORY[0x277CEF2A0] errorWithCode:15 description:@"Failed to play phatic prompt." underlyingError:0];
    [v5 invokeWithValue:v6];
  }
}

- (void)assistantConnectionSpeechRecordingWillBegin:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSessionRecordingPreparationHasFinished:self];

  speechRequestHandler = self->_speechRequestHandler;

  [(SRUIFSpeechRequestHandler *)speechRequestHandler speechRecordingWillBegin];
}

- (void)assistantConnection:(id)a3 speechRecordingDidBeginOnAVRecordRoute:(id)a4 audioSessionID:(unsigned int)a5
{
  v7 = a4;
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__AFUISiriSession_assistantConnection_speechRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke;
  v12[3] = &unk_278CD59E0;
  v13 = v7;
  v8 = v7;
  [(AFUISiriSession *)self _performBlockWithDelegate:v12];
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSession:self speechRecordingDidBeginOnAVRecordRoute:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__AFUISiriSession_assistantConnection_speechRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke_2;
  v10[3] = &__block_descriptor_36_e35_v16__0___AFUISiriSessionDelegate__8l;
  v11 = a5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v10];
}

void __93__AFUISiriSession_assistantConnection_speechRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[AFUISiriSession assistantConnection:speechRecordingDidBeginOnAVRecordRoute:audioSessionID:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts 1 _delegate:%@ audioSessionID:%u", &v6, 0x1Cu);
  }

  [v3 siriSessionDidUpdateAudioSessionID:*(a1 + 32)];
}

- (void)assistantConnection:(id)a3 speechRecordingDidChangeAVRecordRoute:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__AFUISiriSession_assistantConnection_speechRecordingDidChangeAVRecordRoute___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = v5;
  v6 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnectionDidChangeAudioRecordingPower:(id)a3
{
  if (![(AFUISiriSession *)self _isContinuousConversationAvailable])
  {

    [(AFUISiriSession *)self _handleDidChangeAudioRecordingPower];
  }
}

void __54__AFUISiriSession__handleDidChangeAudioRecordingPower__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained recordingPowerLevel];
    [v5 siriSessionAudioRecordingDidChangePowerLevel:?];
  }
}

- (void)assistantConnectionSpeechRecordingDidEnd:(id)a3
{
  v4 = [(AFUISiriSession *)self visualIntelligenceCameraDelegate];
  [v4 siriWillProcessRequest];

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:2];

  [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_180];
}

- (void)assistantConnectionUpdatedSpeechEndEstimate:(id)a3 speechEndEstimate:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [(AFUISiriSession *)self localDataSource];
  v7 = [v6 getUIViewModeIsUIFreeForCurrentRequest];

  if (v7)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[AFUISiriSession assistantConnectionUpdatedSpeechEndEstimate:speechEndEstimate:]";
      _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s #statefeedback not passing along speech end estimate due to ui free view mode", &v10, 0xCu);
    }
  }

  else
  {
    stateFeedbackManager = self->_stateFeedbackManager;

    [(SRUIFStateFeedbackManager *)stateFeedbackManager didUpdateEstimatedEndOfUserInput:a4];
  }
}

- (void)assistantConnectionSpeechRecordingDidCancel:(id)a3
{
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:3];

  [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_182];
}

- (void)assistantConnection:(id)a3 speechRecordingDidFail:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSessionRecordingPreparationHasFinished:self];

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__AFUISiriSession_assistantConnection_speechRecordingDidFail___block_invoke;
  v8[3] = &unk_278CD59E0;
  v9 = v5;
  v7 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v8];
  [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler speechRecordingDidFail];
}

- (void)assistantConnection:(id)a3 speechRecognized:(id)a4
{
  v5 = a4;
  kdebug_trace();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__AFUISiriSession_assistantConnection_speechRecognized___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = v5;
  v6 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnection:(id)a3 recognizedAdditionalSpeechInterpretation:(id)a4 refId:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__AFUISiriSession_assistantConnection_recognizedAdditionalSpeechInterpretation_refId___block_invoke;
  v11[3] = &unk_278CD5D80;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(AFUISiriSession *)self _performBlockWithDelegate:v11];
}

- (void)assistantConnection:(id)a3 recognitionUpdateWithPhrases:(id)a4 utterances:(id)a5 refId:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__AFUISiriSession_assistantConnection_recognitionUpdateWithPhrases_utterances_refId___block_invoke;
  v15[3] = &unk_278CD5DA8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [(AFUISiriSession *)self _performBlockWithDelegate:v15];
}

- (void)assistantConnection:(id)a3 speechRecognizedPartialResult:(id)a4
{
  v5 = a4;
  kdebug_trace();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__AFUISiriSession_assistantConnection_speechRecognizedPartialResult___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = v5;
  v6 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnectionAudioSessionDidBeginInterruption:(id)a3 userInfo:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[AFUISiriSession assistantConnectionAudioSessionDidBeginInterruption:userInfo:]";
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #audioInterruption audio session interruption began userInfo: %{public}@", buf, 0x16u);
  }

  v7 = mach_absolute_time();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__AFUISiriSession_assistantConnectionAudioSessionDidBeginInterruption_userInfo___block_invoke;
  v9[3] = &unk_278CD5C58;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
}

- (void)assistantConnectionAudioSessionDidEndInterruption:(id)a3 shouldResume:(BOOL)a4 userInfo:(id)a5
{
  v5 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[AFUISiriSession assistantConnectionAudioSessionDidEndInterruption:shouldResume:userInfo:]";
    v10 = 1026;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #audioInterruption audio session interruption ended shouldResume: %{public, BOOL}d userInfo: %{public}@", &v8, 0x1Cu);
  }
}

- (void)_startRequestWithBlock:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_visualIntelligenceCameraDelegate);
  [WeakRetained siriWillProcessRequest];

  [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler nonSpeechRequestWillBegin];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (id)_preparedSpeechRequestWithRequestOptions:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 speechRequestOptions];
  if (v5)
  {
    v6 = [v4 speechRequestOptions];
    v7 = [v6 copy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CEF498]);
  }

  v8 = [v4 requestSource];
  v9 = 0;
  switch(v8)
  {
    case 1:
    case 6:
    case 7:
      v9 = v8;
      break;
    case 2:
    case 29:
      v9 = 1;
      break;
    case 3:
    case 49:
      v9 = 4;
      break;
    case 4:
      v9 = 2;
      break;
    case 5:
      v9 = 3;
      break;
    case 8:
      v10 = [v7 activationEvent];
      if (v10)
      {
        v9 = v10;
      }

      else
      {
        v9 = 8;
      }

      break;
    case 9:
      v9 = 5;
      break;
    case 10:
    case 11:
    case 13:
    case 14:
    case 17:
    case 38:
    case 44:
      v9 = 9;
      break;
    case 12:
      v9 = 11;
      break;
    case 23:
      v9 = 10;
      break;
    case 27:
      [v7 setSuppressStartAlert:0];
      v9 = 17;
      break;
    case 30:
      v9 = 23;
      break;
    case 31:
      v9 = 22;
      break;
    case 32:
      v9 = 24;
      break;
    case 37:
      v9 = 27;
      break;
    case 39:
      v9 = 30;
      break;
    case 45:
      v9 = 16;
      break;
    case 46:
      v9 = 34;
      break;
    case 47:
      v9 = 35;
      break;
    default:
      break;
  }

  [v7 setActivationEvent:v9];
  [v7 setIsEyesFree:self->_eyesFree];
  v11 = [v4 serverCommandId];
  [v7 setServerCommandId:v11];

  [v4 timestamp];
  [v7 setActivationEventTime:?];
  [v4 buttonDownTimestamp];
  [v7 setHomeButtonDownEventTime:?];
  [v4 expectedTimestamp];
  [v7 setExpectedActivationEventTime:?];
  [v7 setIsInitialBringUp:{objc_msgSend(v4, "isInitialBringUp")}];
  v12 = [v4 activationDeviceIdentifier];
  [v7 setActivationDeviceIdentifier:v12];

  if ([v4 useAutomaticEndpointing])
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  [v7 setEndpointerOperationMode:v13];
  [v7 setUseStreamingDictation:{objc_msgSend(v4, "useStreamingDictation")}];
  v14 = [v4 homeButtonUpFromBeep];
  [v7 setHomeButtonUpFromBeep:v14];

  [v7 setAcousticIdEnabled:{objc_msgSend(v4, "acousticIdEnabled")}];
  [v7 setReleaseAudioSessionOnRecordingCompletion:{objc_msgSend(v4, "releaseAudioSessionOnRecordingCompletion")}];
  [v7 setSpeechSynthesisRecord:self->_lastSpeechSynthesisRecord];
  [v7 setIsSystemApertureEnabled:AFUIIsDeviceSystemApertureEnabled()];
  v15 = [v4 presentationMode];
  if (!v15)
  {
    v16 = [v4 requestInfo];
    v17 = [v16 speechRequestOptions];
    v15 = [v17 presentationMode];
  }

  [v7 setPresentationMode:v15];
  WeakRetained = objc_loadWeakRetained(&self->_localDataSource);
  [v7 setIsInAmbient:{objc_msgSend(WeakRetained, "isAmbientPresented:", self)}];

  v19 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v7 isInAmbient];
    v22 = "NO";
    if (v21)
    {
      v22 = "YES";
    }

    v27 = 136315394;
    v28 = "[AFUISiriSession _preparedSpeechRequestWithRequestOptions:]";
    v29 = 2080;
    v30 = v22;
    _os_log_impl(&dword_241432000, v20, OS_LOG_TYPE_DEFAULT, "%s #ambientRF setIsInAmbient: %s", &v27, 0x16u);
  }

  v23 = [v4 startRecordingSoundId];

  if (v23)
  {
    v24 = [v4 startRecordingSoundId];
    v25 = [(AFUISiriSession *)self _startingRecordingAlertPolicyForSoundID:v24];

    [v7 setRecordingAlertPolicy:v25];
  }

  return v7;
}

- (id)_startingRecordingAlertPolicyForSoundID:(id)a3
{
  if ([a3 isEqualToString:*MEMORY[0x277D48D18]])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__AFUISiriSession__startingRecordingAlertPolicyForSoundID___block_invoke;
    v10[3] = &__block_descriptor_40_e50_v16__0___AFSpeechRecordingAlertBehaviorMutating__8l;
    v10[4] = 5;
    v3 = [MEMORY[0x277CEF488] newWithBuilder:v10];
    v4 = MEMORY[0x277CEF490];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__AFUISiriSession__startingRecordingAlertPolicyForSoundID___block_invoke_2;
    v8[3] = &unk_278CD5DF0;
    v9 = v3;
    v5 = v3;
    v6 = [v4 newWithBuilder:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_sendContextWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__AFUISiriSession__sendContextWithCompletion___block_invoke;
  v6[3] = &unk_278CD5E40;
  v5 = v4;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(AFUISiriSession *)self _performBlockWithDelegate:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __46__AFUISiriSession__sendContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__AFUISiriSession__sendContextWithCompletion___block_invoke_2;
  v4[3] = &unk_278CD5E18;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  [v3 siriSessionGetRequestContextWithCompletionHandler:v4];

  objc_destroyWeak(&v6);
}

void __46__AFUISiriSession__sendContextWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && [v3 count])
  {
    v5 = [v3 valueForKey:@"dictionary"];

    v6 = objc_alloc_init(MEMORY[0x277D477C8]);
    v8[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v6 setOrderedContext:v7];

    [WeakRetained performAceCommand:v6 turnIdentifier:0 machAbsoluteTime:mach_absolute_time()];
    v3 = v5;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_startSpeechRequestWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(AFUISiriSession *)self _preparedSpeechRequestWithRequestOptions:v7];
  v8 = [v7 isInitialBringUp];

  [(AFUISiriSession *)self _startSpeechRequestWithSpeechRequestOptions:v9 isInitialBringUp:v8 completion:v6];
}

- (void)_startSpeechRequestWithSpeechRequestOptions:(id)a3 isInitialBringUp:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_loadWeakRetained(&self->_localDelegate);
    v12 = [v11 headphonesAuthenticated];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithBool:v12];
    v19 = 136315394;
    v20 = "[AFUISiriSession _startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:]";
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s 🎧 setIsHeadphonesAuthenticated: %@", &v19, 0x16u);
  }

  [v9 setIsHeadphonesAuthenticated:v12];
  speechRequestHandler = self->_speechRequestHandler;
  v18 = [(AFUISiriSession *)self _instrumentationTurnContext];
  [(SRUIFSpeechRequestHandler *)speechRequestHandler startSpeechRequestWithSpeechRequestOptions:v9 instrumentationTurn:v18 isInitialBringUp:v5 completion:v8];
}

- (void)_startSpeechPronunciationRequestWithContext:(id)a3 options:(id)a4 completion:(id)a5
{
  v11 = a5;
  v8 = a3;
  v9 = [(AFUISiriSession *)self _preparedSpeechRequestWithRequestOptions:a4];
  v10 = [(AFUISiriSession *)self _connection];
  [v10 startSpeechPronunciationRequestWithOptions:v9 pronunciationContext:v8];

  if (v11)
  {
    v11[2](v11, 0);
  }
}

- (void)cancelRequest
{
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
  speechRequestHandler = self->_speechRequestHandler;

  [(SRUIFSpeechRequestHandler *)speechRequestHandler cancelSpeechRequest];
}

- (void)requestDidPresentViewForUICommand:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 temporary])
    {
      v6 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "[AFUISiriSession requestDidPresentViewForUICommand:]";
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s Not transitioning to SRUIFSiriSessionEventRequestFinished for temporary command : %@", &v19, 0x16u);
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  self->_currentRequestDidPresent = 1;
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:6];
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
  if (AFIsInternalInstall() && [v4 sruif_usefulUserResultType])
  {
    kdebug_trace();
    v7 = [v4 deserializationDuration];
    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CEF300]);
      v9 = [v4 aceId];
      v10 = [v8 initWithOriginalCommandId:v9 category:6 duration:v7];

      v11 = [(AFUISiriSession *)self _connection];
      [v11 recordUIMetrics:v10];
    }
  }

  activeRequestIsTypeToSiri = self->_activeRequestIsTypeToSiri;
  self->_activeRequestIsTypeToSiri = 0;
  if (activeRequestIsTypeToSiri)
  {
    v5 = objc_alloc_init(MEMORY[0x277D5AC60]);
    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(AFUISiriSession *)self _instrumentationTurnContext];
      v16 = [v15 turnIdentifier];
      v17 = [v5 formattedText];
      v19 = 136315906;
      v20 = "[AFUISiriSession requestDidPresentViewForUICommand:]";
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_241432000, v14, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", &v19, 0x2Au);
    }

    v18 = [(AFUISiriSession *)self _instrumentationTurnContext];
    [v18 emitInstrumentation:v5 machAbsoluteTime:mach_absolute_time()];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)requestDidPresentViewForErrorCommand:(id)a3
{
  self->_currentRequestDidPresent = 1;
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:7];

  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
}

- (void)recordUIMetrics:(id)a3
{
  v4 = a3;
  v5 = [(AFUISiriSession *)self underlyingConnection];
  [v5 recordUIMetrics:v4];
}

- (void)recordRequestMetricEvent:(id)a3 withTimestamp:(double)a4
{
  v6 = a3;
  v7 = [(AFUISiriSession *)self underlyingConnection];
  [v7 recordRequestMetric:v6 withTimestamp:a4];
}

- (void)recordMetricsContext:(id)a3 forDisambiguatedAppWIthBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFUISiriSession *)self underlyingConnection];
  [v8 sendFeedbackToAppPreferencesPredictorForMetricsContext:v7 selectedBundleId:v6];
}

- (void)speechSynthesisDidUpdatePowerLevelTo:(float)a3
{
  v5 = [(AFUISiriSession *)self localDelegate];
  *&v4 = a3;
  [v5 siriSessionAudioOutputDidChangePowerLevel:v4];
}

- (void)notifyStateManagerSpeakingBegan
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AFUISiriSession notifyStateManagerSpeakingBegan]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts", &v4, 0xCu);
  }

  [(AFSiriClientStateManager *)self->_clientStateManager beginSpeakingForClient:self];
}

- (void)promptedUserForInput
{
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    uiBridgeClient = self->_uiBridgeClient;

    [(SRUIFUIBridgeClient *)uiBridgeClient promptedUserForInput];
  }
}

- (void)fetchAttendingState:(id)a3
{
  v5 = a3;
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    v4 = [(SRUIFUIBridgeClient *)self->_uiBridgeClient isAttending];
  }

  else
  {
    v4 = 0;
  }

  v5[2](v5, v4);
}

- (void)_startLegacyDirectActionRequestWithInfo:(id)a3 context:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[AFUISiriSession _startLegacyDirectActionRequestWithInfo:context:completion:]";
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation requestInfo: %@, context: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__AFUISiriSession__startLegacyDirectActionRequestWithInfo_context_completion___block_invoke;
  v15[3] = &unk_278CD5E68;
  objc_copyWeak(&v19, buf);
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v15);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __78__AFUISiriSession__startLegacyDirectActionRequestWithInfo_context_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __78__AFUISiriSession__startLegacyDirectActionRequestWithInfo_context_completion___block_invoke_2;
  v8 = &unk_278CD5E68;
  objc_copyWeak(&v12, a1 + 7);
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  [WeakRetained _startRequestWithBlock:&v5];

  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = v3;
  if (v3)
  {
    [v3[23] performTransitionForEvent:{0, v5, v6, v7, v8, v9, v10}];
  }

  objc_destroyWeak(&v12);
}

uint64_t __78__AFUISiriSession__startLegacyDirectActionRequestWithInfo_context_completion___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [WeakRetained setDirectActionApplicationContexts:v3];

  v4 = objc_loadWeakRetained((a1 + 56));
  [v4 setApplicationContextForDirectAction:1];

  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = [v5 _connection];
  [v6 startRequestWithInfo:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_startContinuityRequestWithInfo:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[AFUISiriSession _startContinuityRequestWithInfo:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__AFUISiriSession__startContinuityRequestWithInfo_completion___block_invoke;
  v11[3] = &unk_278CD5AD0;
  objc_copyWeak(&v14, buf);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(AFUISiriSession *)self _startRequestWithBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

uint64_t __62__AFUISiriSession__startContinuityRequestWithInfo_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _connection];
  [v3 startContinuationRequestWithUserInfo:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_startRequestWithInfo:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[AFUISiriSession _startRequestWithInfo:completion:]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__AFUISiriSession__startRequestWithInfo_completion___block_invoke;
  v11[3] = &unk_278CD5AD0;
  objc_copyWeak(&v14, buf);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(AFUISiriSession *)self _startRequestWithBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __52__AFUISiriSession__startRequestWithInfo_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _connection];
  [v3 startRequestWithInfo:*(a1 + 32)];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 _requestStartedWithInfo:*(a1 + 32)];
}

- (void)_requestStartedWithInfo:(id)a3
{
  if ([a3 activationEvent] == 10)
  {
    stateHandler = self->_stateHandler;

    [(SRUIFSiriSessionStateHandler *)stateHandler performTransitionForEvent:16];
  }
}

- (void)_startRequestWithText:(id)a3 turnIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {
    [(AFUISiriSession *)self _startTypeToSiriLatencyTimer];
  }

  self->_activeRequestIsTypeToSiri = 1;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__AFUISiriSession__startRequestWithText_turnIdentifier_completion___block_invoke;
  v14[3] = &unk_278CD5E90;
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  objc_copyWeak(&v18, &location);
  v13 = v10;
  v17 = v13;
  [(AFUISiriSession *)self _startRequestWithBlock:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __67__AFUISiriSession__startRequestWithText_turnIdentifier_completion___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(MEMORY[0x277CEF378]);
  if (objc_opt_respondsToSelector())
  {
    [v5 setActivationEvent:5];
    [v5 setTurnIdentifier:*(a1 + 32)];
    [v5 setText:*(a1 + 40)];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = [WeakRetained _connection];
    [v3 startRequestWithInfo:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = [WeakRetained _connection];
    [v3 startRequestWithText:*(a1 + 40)];
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)_startRequestWithSuggestionText:(id)a3 suggestionRequestType:(int64_t)a4 turnIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {
    [(AFUISiriSession *)self _startTypeToSiriLatencyTimer];
  }

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__AFUISiriSession__startRequestWithSuggestionText_suggestionRequestType_turnIdentifier_completion___block_invoke;
  v16[3] = &unk_278CD5EB8;
  v16[4] = self;
  v20[1] = a4;
  v13 = v11;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  objc_copyWeak(v20, &location);
  v15 = v12;
  v19 = v15;
  [(AFUISiriSession *)self _startRequestWithBlock:v16];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __99__AFUISiriSession__startRequestWithSuggestionText_suggestionRequestType_turnIdentifier_completion___block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(MEMORY[0x277CEF378]);
  if (objc_opt_respondsToSelector())
  {
    [v5 setSuggestionRequestType:{objc_msgSend(*(a1 + 32), "_mapSuggestionRequestType:", *(a1 + 72))}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setActivationEvent:5];
    [v5 setTurnIdentifier:*(a1 + 40)];
    [v5 setText:*(a1 + 48)];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v3 = [WeakRetained _connection];
    [v3 startRequestWithInfo:v5];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v3 = [WeakRetained _connection];
    [v3 startRequestWithText:*(a1 + 48)];
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)startCorrectedRequestWithText:(id)a3 correctionIdentifier:(id)a4 userSelectionResults:(id)a5 turnIdentifier:(id)a6 machAbsoluteTime:(double)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v42 = a6;
  objc_initWeak(&location, self);
  v15 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v42];
  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v15 turnIdentifier];
    *buf = 136315650;
    v54 = "[AFUISiriSession startCorrectedRequestWithText:correctionIdentifier:userSelectionResults:turnIdentifier:machAbsoluteTime:]";
    v55 = 2112;
    v56 = v17;
    v57 = 2112;
    v58 = v42;
    _os_log_impl(&dword_241432000, v16, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
  }

  [(AFUISiriSession *)self _setInstrumentationTurnContext:v15];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __123__AFUISiriSession_startCorrectedRequestWithText_correctionIdentifier_userSelectionResults_turnIdentifier_machAbsoluteTime___block_invoke;
  v46[3] = &unk_278CD5EE0;
  objc_copyWeak(&v51, &location);
  v18 = v12;
  v47 = v18;
  v39 = v13;
  v48 = v39;
  v40 = v14;
  v49 = v40;
  v41 = v15;
  v50 = v41;
  [(AFUISiriSession *)self _startRequestWithBlock:v46];
  v19 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v19 setInvocationSource:12];
  v20 = [(AFUISiriSession *)self localDataSource];
  v21 = [v20 lockStateForSiriSession:self];

  [v19 setIsDeviceLocked:v21 != 0];
  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {
    v22 = objc_alloc_init(MEMORY[0x277D5AA50]);
    [v22 setIsTranscriptEdited:1];
    [v19 setTapToEditContext:v22];
    v23 = objc_alloc(MEMORY[0x277D5AC78]);
    v24 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v25 = [v23 initWithNSUUID:v24];

    [v19 setLinkId:v25];
    [v19 setHasLinkId:1];
    v26 = objc_alloc_init(MEMORY[0x277D5AB60]);
    [v26 setLinkId:v25];
    [v26 setHasLinkId:1];
    [v26 setTypedText:v18];
    v27 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(AFUISiriSession *)self _instrumentationTurnContext];
      v29 = [v28 turnIdentifier];
      v30 = [v26 formattedText];
      *buf = 136315906;
      v54 = "[AFUISiriSession startCorrectedRequestWithText:correctionIdentifier:userSelectionResults:turnIdentifier:machAbsoluteTime:]";
      v55 = 2112;
      v56 = v26;
      v57 = 2112;
      v58 = v29;
      v59 = 2112;
      v60 = v30;
      _os_log_impl(&dword_241432000, v27, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
    }

    v31 = [(AFUISiriSession *)self _instrumentationTurnContext];
    [v31 emitInstrumentation:v26 machAbsoluteTime:mach_absolute_time()];
  }

  v32 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(AFUISiriSession *)self _instrumentationTurnContext];
    v34 = [v33 turnIdentifier];
    v35 = [v19 formattedText];
    *buf = 136315906;
    v54 = "[AFUISiriSession startCorrectedRequestWithText:correctionIdentifier:userSelectionResults:turnIdentifier:machAbsoluteTime:]";
    v55 = 2112;
    v56 = v19;
    v57 = 2112;
    v58 = v34;
    v59 = 2112;
    v60 = v35;
    _os_log_impl(&dword_241432000, v32, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
  }

  v36 = [(AFUISiriSession *)self _instrumentationTurnContext];
  [v36 emitInstrumentation:v19 machAbsoluteTime:mach_absolute_time()];

  v37 = SRUIFConstructLaunchContextForLaunchStarted();
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __123__AFUISiriSession_startCorrectedRequestWithText_correctionIdentifier_userSelectionResults_turnIdentifier_machAbsoluteTime___block_invoke_211;
  v43[3] = &unk_278CD5F08;
  objc_copyWeak(v45, &location);
  v38 = v37;
  v44 = v38;
  v45[1] = *&a7;
  [(AFUISiriSession *)self _performBlockWithDelegate:v43];

  objc_destroyWeak(v45);
  objc_destroyWeak(&v51);

  objc_destroyWeak(&location);
}

void __123__AFUISiriSession_startCorrectedRequestWithText_correctionIdentifier_userSelectionResults_turnIdentifier_machAbsoluteTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained _connection];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) turnIdentifier];
  [v2 startRequestWithCorrectedText:v3 forSpeechIdentifier:v4 userSelectionResults:v5 turnIdentifier:v6];
}

void __123__AFUISiriSession_startCorrectedRequestWithText_correctionIdentifier_userSelectionResults_turnIdentifier_machAbsoluteTime___block_invoke_211(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _instrumentationTurnContext];
    [v6 siriSessionDidStartNewTurn:v5 associatedLaunchStartContext:*(a1 + 32) machAbsoluteTime:0 linkPreviousTurn:*(a1 + 48)];
  }
}

- (void)resultDidChangeForAceCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__AFUISiriSession_resultDidChangeForAceCommand_completion___block_invoke;
  v10[3] = &unk_278CD5C30;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(AFUISiriSession *)self _performBlockWithDelegate:v10];
}

void __59__AFUISiriSession_resultDidChangeForAceCommand_completion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__AFUISiriSession_resultDidChangeForAceCommand_completion___block_invoke_2;
  v5[3] = &unk_278CD5F30;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  [a2 siriSessionResultForAceCommand:v4 completion:v5];
}

void __59__AFUISiriSession_resultDidChangeForAceCommand_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 40))
  {
    return;
  }

  if (a2 == 2)
  {
    v3 = 0x277D47208;
  }

  else
  {
    if (a2 != 1)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v3 = 0x277D47218;
  }

  v5 = objc_alloc_init(*v3);
LABEL_9:
  v4 = [*(a1 + 32) aceId];
  [v5 setRefId:v4];

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)telephonyRequestCompleted
{
  v2 = [(AFUISiriSession *)self _connection];
  [v2 telephonyRequestCompleted];
}

- (void)setApplicationContextForDirectAction:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v13 = 0;
  }

  else
  {
    v5 = [(AFUISiriSession *)self localDataSource];
    v13 = [v5 contextAppInfosForSiriSession:self];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(AFUISiriSession *)self localDataSource];
  v8 = [v7 starkAppBundleIdentifierContextForSiriSession:self];
  [v6 addObjectsFromArray:v8];

  if (v3)
  {
    [(AFUISiriSession *)self directActionApplicationContexts];
  }

  else
  {
    v9 = [(AFUISiriSession *)self localDataSource];
    v10 = [v9 currentCarPlaySupportedOEMAppIDListForSiriSession:self];
    [v6 addObjectsFromArray:v10];

    [(AFUISiriSession *)self sessionDelegateContext];
  }
  v11 = ;
  [v6 addObjectsFromArray:v11];

  v12 = [(AFUISiriSession *)self _connection];
  [v12 fetchAppicationContextForApplicationInfo:v13 supplementalContext:v6 refID:0];
}

- (void)resetContextTypes:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AFUISiriSession resetContextTypes:]";
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s %zd", &v9, 0x16u);
    if ((a3 & 4) == 0)
    {
LABEL_3:
      if ((a3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [(AFUISiriSession *)self setAlertContext];
      if ((a3 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((a3 & 4) == 0)
  {
    goto LABEL_3;
  }

  [(AFUISiriSession *)self clearContext];
  if ((a3 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (a3)
  {
LABEL_5:
    [(AFUISiriSession *)self setApplicationContext];
  }

LABEL_6:
  v6 = [(AFUISiriSession *)self localDataSource];
  v7 = [v6 lockStateForSiriSession:self];

  [(AFUISiriSession *)self setLockState:v7];
  [(AFUISiriSession *)self setWatchAuthenticated:0];
  v8 = [(AFUISiriSession *)self localDelegate];
  [v8 siriSessionDidResetContext:self];
}

- (void)rollbackClearContext
{
  v2 = [(AFUISiriSession *)self _connection];
  [v2 rollbackClearContext];
}

- (void)setDeviceInStarkMode:(BOOL)a3
{
  v3 = a3;
  self->_isDeviceInStarkMode = a3;
  v4 = [(AFUISiriSession *)self _connection];
  [v4 setIsDeviceInStarkMode:v3];
}

- (void)setCarDNDActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(AFUISiriSession *)self _connection];
  [v4 setCarDNDActive:v3];
}

- (void)setSupportsCarPlayVehicleData:(BOOL)a3
{
  v3 = a3;
  v4 = [(AFUISiriSession *)self _connection];
  [v4 setSupportsCarPlayVehicleData:v3];
}

- (void)setCarOwnsMainAudio:(BOOL)a3
{
  v3 = a3;
  v4 = [(AFUISiriSession *)self _connection];
  [v4 setCarOwnsMainAudio:v3];
}

- (void)setEyesFree:(BOOL)a3
{
  self->_eyesFree = a3;
  if (self->_connection)
  {
    v4 = a3;
    if (objc_opt_respondsToSelector())
    {
      connection = self->_connection;

      [(AFConnection *)connection setIsEyesFree:v4];
    }
  }
}

- (void)setLockState:(unint64_t)a3
{
  v4 = (a3 >> 1) & 1;
  v5 = a3 & 1;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__AFUISiriSession_setLockState___block_invoke;
  v6[3] = &unk_278CD5F58;
  objc_copyWeak(v7, &location);
  v8 = v4;
  v9 = v5;
  v7[1] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __32__AFUISiriSession_setLockState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _connection];
  [v3 setLockState:*(a1 + 48) screenLocked:*(a1 + 49)];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__AFUISiriSession_setLockState___block_invoke_2;
  v5[3] = &__block_descriptor_40_e35_v16__0___AFUISiriSessionDelegate__8l;
  v5[4] = *(a1 + 40);
  [v4 _performBlockWithDelegate:v5];
}

- (void)setAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AFUISiriSession setAnnouncementRequestsPermittedByPresentationWhileActive:]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s Updating announcement requests permitted by presentation: %{BOOL}d", &v7, 0x12u);
  }

  v6 = [(AFUISiriSession *)self _connection];
  [v6 setAnnouncementRequestsPermittedByPresentationWhileActive:v3];
}

- (void)_handleUnlockAppCommand:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__AFUISiriSession__handleUnlockAppCommand_completion___block_invoke;
  aBlock[3] = &unk_278CD5C08;
  v8 = v7;
  v25 = v8;
  v9 = v6;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [v9 appBundleId];
  v12 = *MEMORY[0x277CEF098];
  v13 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 136315394;
      v27 = "[AFUISiriSession _handleUnlockAppCommand:completion:]";
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s UnlockApp command received for appBundleId=%@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__AFUISiriSession__handleUnlockAppCommand_completion___block_invoke_215;
    v19[3] = &unk_278CD5F80;
    v21 = v10;
    v15 = v9;
    v20 = v15;
    objc_copyWeak(&v22, buf);
    [WeakRetained siriSession:self didReceiveAppUnlockRequestForAppId:v11 withCompletion:v19];

    v16 = objc_alloc(MEMORY[0x277CEF300]);
    v17 = [v15 refId];
    v18 = [v16 initWithOriginalCommandId:v17 category:5 duration:0];

    [(AFUISiriSession *)self recordUIMetrics:v18];
    objc_destroyWeak(&v22);

    objc_destroyWeak(buf);
  }

  else
  {
    if (v13)
    {
      *buf = 136315138;
      v27 = "[AFUISiriSession _handleUnlockAppCommand:completion:]";
      _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s UnlockApp command received without appBundleId, returning failure", buf, 0xCu);
    }

    (*(v10 + 2))(v10, 0);
  }
}

void __54__AFUISiriSession__handleUnlockAppCommand_completion___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    v3 = 0x277D47218;
    if (!a2)
    {
      v3 = 0x277D47208;
    }

    v5 = objc_alloc_init(*v3);
    v4 = [*(a1 + 32) aceId];
    [v5 setRefId:v4];

    (*(*(a1 + 40) + 16))();
  }
}

void __54__AFUISiriSession__handleUnlockAppCommand_completion___block_invoke_215(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AFUISiriSession _handleUnlockAppCommand:completion:]_block_invoke";
    v9 = 2050;
    v10 = a2;
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s APGuard complete for App Unlock, result=%{public}ld", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  if (a2)
  {
    [*(a1 + 32) failureCommands];
  }

  else
  {
    [*(a1 + 32) successCommands];
  }
  v5 = ;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _performAceCommands:v5];
}

- (void)_handleUnlockDeviceCommand:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AFUISiriSession *)self localDataSource];
  v9 = [v8 lockStateForSiriSession:self];

  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[AFUISiriSession _handleUnlockDeviceCommand:completion:]";
    v29 = 2048;
    v30 = v9;
    _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s Lock state while handling unlockDevice command = %zd", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__AFUISiriSession__handleUnlockDeviceCommand_completion___block_invoke;
  aBlock[3] = &unk_278CD5C08;
  v11 = v7;
  v26 = v11;
  v12 = v6;
  v25 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if ((v9 & 2) != 0)
  {
    objc_initWeak(buf, self);
    WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__AFUISiriSession__handleUnlockDeviceCommand_completion___block_invoke_2;
    v20[3] = &unk_278CD5FA8;
    objc_copyWeak(&v23, buf);
    v21 = v12;
    v22 = v14;
    [WeakRetained siriSession:self didReceiveDeviceUnlockRequestAndCancelRequest:0 withCompletion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(v13 + 2))(v13, 1);
    v15 = [v12 successCommands];
    [(AFUISiriSession *)self _performAceCommands:v15];
  }

  v17 = objc_alloc(MEMORY[0x277CEF300]);
  v18 = [v12 refId];
  v19 = [v17 initWithOriginalCommandId:v18 category:5 duration:0];

  [(AFUISiriSession *)self recordUIMetrics:v19];
}

void __57__AFUISiriSession__handleUnlockDeviceCommand_completion___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    v3 = 0x277D47218;
    if (!a2)
    {
      v3 = 0x277D47208;
    }

    v5 = objc_alloc_init(*v3);
    v4 = [*(a1 + 32) aceId];
    [v5 setRefId:v4];

    (*(*(a1 + 40) + 16))();
  }
}

void __57__AFUISiriSession__handleUnlockDeviceCommand_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v4 = [*(a1 + 32) cancellationCommands];
      goto LABEL_7;
    case 1:
      v6 = [*(a1 + 32) failureCommands];
LABEL_8:
      (*(*(a1 + 40) + 16))();
      goto LABEL_10;
    case 0:
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained setLockState:0];

      v4 = [*(a1 + 32) successCommands];
LABEL_7:
      v6 = v4;
      goto LABEL_8;
  }

  v6 = 0;
LABEL_10:
  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 _performAceCommands:v6];
}

- (void)_handleUnlockDeviceWithWatchCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AFUISiriSession__handleUnlockDeviceWithWatchCommand_completion___block_invoke;
  aBlock[3] = &unk_278CD5C08;
  v8 = v7;
  v21 = v8;
  v9 = v6;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v11 = [(AFUISiriSession *)self _watchAuthenticationManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__AFUISiriSession__handleUnlockDeviceWithWatchCommand_completion___block_invoke_2;
  v14[3] = &unk_278CD5FD0;
  objc_copyWeak(&v17, &location);
  v12 = v10;
  v16 = v12;
  v13 = v9;
  v15 = v13;
  [v11 requestWatchAuthentication:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __66__AFUISiriSession__handleUnlockDeviceWithWatchCommand_completion___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    v3 = 0x277D47218;
    if (!a2)
    {
      v3 = 0x277D47208;
    }

    v5 = objc_alloc_init(*v3);
    v4 = [*(a1 + 32) aceId];
    [v5 setRefId:v4];

    (*(*(a1 + 40) + 16))();
  }
}

void __66__AFUISiriSession__handleUnlockDeviceWithWatchCommand_completion___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = objc_loadWeakRetained((a1 + 48));
      [v5 setWatchAuthenticated:1];

      [*(a1 + 32) successCommands];
    }

    else
    {
      [*(a1 + 32) failureCommands];
    }
    v6 = ;
    (*(*(a1 + 40) + 16))();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__AFUISiriSession__handleUnlockDeviceWithWatchCommand_completion___block_invoke_3;
    v8[3] = &unk_278CD5858;
    objc_copyWeak(&v10, (a1 + 48));
    v9 = v6;
    v7 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(&v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __66__AFUISiriSession__handleUnlockDeviceWithWatchCommand_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performAceCommands:*(a1 + 32)];
}

- (void)setWatchAuthenticated:(BOOL)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AFUISiriSession_setWatchAuthenticated___block_invoke;
  block[3] = &unk_278CD5708;
  objc_copyWeak(&v5, &location);
  v6 = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__AFUISiriSession_setWatchAuthenticated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _connection];
  [v2 setWatchAuthenticated:*(a1 + 40)];
}

- (SRUIFWatchAuthenticationManager)_watchAuthenticationManager
{
  watchAuthenticationManager = self->_watchAuthenticationManager;
  if (!watchAuthenticationManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D61B40]);
    v5 = self->_watchAuthenticationManager;
    self->_watchAuthenticationManager = v4;

    watchAuthenticationManager = self->_watchAuthenticationManager;
  }

  return watchAuthenticationManager;
}

- (void)_performAceCommand:(id)a3 forRequestUpdateViewsCommand:(id)a4 afterDelay:(double)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (a5 * 1000000000.0));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__AFUISiriSession__performAceCommand_forRequestUpdateViewsCommand_afterDelay___block_invoke;
  v13[3] = &unk_278CD5FF8;
  objc_copyWeak(&v16, &location);
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_after(v10, MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __78__AFUISiriSession__performAceCommand_forRequestUpdateViewsCommand_afterDelay___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = a1[4];
  v4 = mach_absolute_time();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__AFUISiriSession__performAceCommand_forRequestUpdateViewsCommand_afterDelay___block_invoke_2;
  v5[3] = &unk_278CD5FF8;
  objc_copyWeak(&v8, a1 + 6);
  v6 = a1[4];
  v7 = a1[5];
  [WeakRetained _performAceCommand:v3 turnIdentifier:0 machAbsoluteTime:v5 conflictHandler:v4];

  objc_destroyWeak(&v8);
}

void __78__AFUISiriSession__performAceCommand_forRequestUpdateViewsCommand_afterDelay___block_invoke_2(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__AFUISiriSession__performAceCommand_forRequestUpdateViewsCommand_afterDelay___block_invoke_3;
  block[3] = &unk_278CD5FF8;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __78__AFUISiriSession__performAceCommand_forRequestUpdateViewsCommand_afterDelay___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _performAceCommand:*(a1 + 32) forRequestUpdateViewsCommand:*(a1 + 40) afterDelay:10.0];
}

- (void)_handleRequestUpdateViewsCommand:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 timeInSeconds];
  [v8 doubleValue];
  v10 = v9;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v6 commands];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AFUISiriSession *)self _performAceCommand:*(*(&v18 + 1) + 8 * v15++) forRequestUpdateViewsCommand:v6 afterDelay:v10];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  if (v7)
  {
    v16 = objc_alloc_init(MEMORY[0x277D47218]);
    v17 = [v6 aceId];
    [v16 setRefId:v17];

    v7[2](v7, v16);
  }
}

- (void)_performAceCommands:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AFUISiriSession *)self performAceCommand:*(*(&v9 + 1) + 8 * v8++) turnIdentifier:0 machAbsoluteTime:mach_absolute_time()];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_performAceCommand:(id)a3 turnIdentifier:(id)a4 machAbsoluteTime:(double)a5 conflictHandler:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (SRUIFShouldInstrumentLaunchContextForAceCommand())
  {
    v13 = SRUIFConstructLaunchContextForLaunchStarted();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __86__AFUISiriSession__performAceCommand_turnIdentifier_machAbsoluteTime_conflictHandler___block_invoke;
    v30[3] = &unk_278CD5C58;
    v31 = v13;
    v32 = a5;
    v14 = v13;
    [(AFUISiriSession *)self _performBlockWithDelegate:v30];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v15 = [v10 commands];
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:8];
            goto LABEL_16;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:8];
    }
  }

  if ([(AFUISiriSession *)self _aceObjectExpectsTurnIdentifierWhenSendingCommand:v10])
  {
    if (!v11)
    {
      v20 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [AFUISiriSession _performAceCommand:v20 turnIdentifier:? machAbsoluteTime:? conflictHandler:?];
      }

LABEL_25:
      v11 = 0;
    }
  }

  else if (v11)
  {
    v21 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 136315394;
      v34 = "[AFUISiriSession _performAceCommand:turnIdentifier:machAbsoluteTime:conflictHandler:]";
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_241432000, v22, OS_LOG_TYPE_DEFAULT, "%s Sending ace command of class %@ with a turn identifier is unsupported. Dropping turn identifier.", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v25 = [(AFUISiriSession *)self _connection];
  [v25 sendGenericAceCommand:v10 turnIdentifier:v11 conflictHandler:v12];
}

- (BOOL)_aceObjectExpectsTurnIdentifierWhenSendingCommand:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)siriUIDidPresentDynamicSnippetWithInfo:(id)a3
{
  v3 = a3;
  if (siriUIDidPresentDynamicSnippetWithInfo__onceToken != -1)
  {
    [AFUISiriSession siriUIDidPresentDynamicSnippetWithInfo:];
  }

  if (CoreDuetLibraryCore())
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = get_DKSystemEventStreamsClass_softClass;
    v14 = get_DKSystemEventStreamsClass_softClass;
    if (!get_DKSystemEventStreamsClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __get_DKSystemEventStreamsClass_block_invoke;
      v10[3] = &unk_278CD54F0;
      v10[4] = &v11;
      __get_DKSystemEventStreamsClass_block_invoke(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = [v4 siriServiceStream];
    v7 = [v6 name];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  AFRecordCoreDuetEventWithStream();
}

uint64_t __58__AFUISiriSession_siriUIDidPresentDynamicSnippetWithInfo___block_invoke()
{
  siriUIDidPresentDynamicSnippetWithInfo__sDuetQueue = dispatch_queue_create("Core duet logging queue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)effectiveCoreLocationBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)end
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AFUISiriSession end]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(AFUISiriSession *)self endForReason:0];
}

- (void)endForReason:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AFUISiriSession endForReason:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s reason %zd", &v8, 0x16u);
  }

  v6 = [(AFUISiriSession *)self localDelegate];
  [v6 siriSessionWillEnd:self];

  [(SRUIFStateFeedbackManager *)self->_stateFeedbackManager siriSessionDidEnd];
  [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler discardCurrentSpeechGroup];
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    [(SRUIFUIBridgeClient *)self->_uiBridgeClient endForReason:a3];
  }

  [(SRUIFAudioPowerLevelUpdater *)self->_audioPowerLevelUpdater invalidate];
  [(AFUISiriSession *)self _discardConnectionForReason:a3];
  [(AFSiriClientStateManager *)self->_clientStateManager invalidateClient:self];
  v7 = [(AFUISiriSession *)self localDelegate];
  [v7 siriSessionDidEnd:self];
}

- (void)stopAttending
{
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    uiBridgeClient = self->_uiBridgeClient;

    [(SRUIFUIBridgeClient *)uiBridgeClient stopAttending];
  }
}

- (void)invalidateConnection
{
  v3 = [(AFUISiriSession *)self _connection];
  [v3 didDismissUI];

  [(AFUISiriSession *)self _invalidateConnectionForReason:0];
}

- (void)_invalidateConnectionForReason:(int64_t)a3
{
  v5 = [(AFUISiriSession *)self _connection];
  [v5 cancelRequestForReason:a3];

  v6 = [(AFUISiriSession *)self _connection];
  [v6 endSession];

  v7 = [(AFUISiriSession *)self _connection];
  [v7 invalidate];

  v8 = [(AFUISiriSession *)self _connection];
  [v8 setSpeechDelegate:0];

  v9 = [(AFUISiriSession *)self _connection];
  [v9 setDelegate:0];

  connection = self->_connection;
  self->_connection = 0;
}

- (void)_discardConnectionForReason:(int64_t)a3
{
  [(AFUISiriSession *)self _invalidateConnectionForReason:a3];
  uiBridgeClient = self->_uiBridgeClient;
  self->_uiBridgeClient = 0;

  audioPowerLevelUpdater = self->_audioPowerLevelUpdater;
  self->_audioPowerLevelUpdater = 0;
}

- (void)_updateActiveAccount:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  settingsConnection = self->_settingsConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__AFUISiriSession__updateActiveAccount___block_invoke;
  v7[3] = &unk_278CD6020;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(AFSettingsConnection *)settingsConnection fetchAccountsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__AFUISiriSession__updateActiveAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __40__AFUISiriSession__updateActiveAccount___block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      [WeakRetained _updateActiveAccount:*(a1 + 32) withNumberOfActiveAccounts:{objc_msgSend(v5, "count")}];
    }
  }
}

- (void)_updateActiveAccount:(id)a3 withNumberOfActiveAccounts:(unint64_t)a4
{
  v6 = [(SRUIFSiriSessionInfo *)self->_siriSessionInfo setActiveAccountAndGenerateLightweightInfo:a3];
  if (v6)
  {
    v7 = [(SRUIFSiriSessionInfo *)self->_siriSessionInfo setUserAccountCountGenerateLightweightInfo:a4];
    WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_localDelegate);
      [v10 siriSessionDidUpdateSessionInfo:v6];
    }

    if (objc_opt_respondsToSelector())
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __67__AFUISiriSession__updateActiveAccount_withNumberOfActiveAccounts___block_invoke;
      v11[3] = &unk_278CD59E0;
      v12 = v6;
      [(AFUISiriSession *)self _performBlockWithDelegate:v11];
    }
  }
}

- (void)_updateModesHeuristicsForRequestOptions:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 isForBluetoothCar];
  }

  v6 = ([v4 currentLockState] & 2) == 0;
  modesConfiguration = self->_modesConfiguration;
  if (modesConfiguration)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__AFUISiriSession__updateModesHeuristicsForRequestOptions___block_invoke_232;
    v18[3] = &unk_278CD6048;
    v8 = &v19;
    v19 = v4;
    v20 = v5;
    v21 = v6;
    v22 = 0;
    v9 = [(AFModesConfiguration *)modesConfiguration mutatedCopyWithMutator:v18];
    v10 = self->_modesConfiguration;
    self->_modesConfiguration = v9;

    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_modesConfiguration;
      *buf = 136315394;
      v29 = "[AFUISiriSession _updateModesHeuristicsForRequestOptions:]";
      v30 = 2112;
      v31 = v12;
      v13 = "%s #modes Updating modes configuration with heuristics related to RequestOptions: %@";
LABEL_9:
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
    }
  }

  else
  {
    v14 = MEMORY[0x277CEF308];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__AFUISiriSession__updateModesHeuristicsForRequestOptions___block_invoke;
    v23[3] = &unk_278CD6048;
    v8 = &v24;
    v24 = v4;
    v25 = v5;
    v26 = v6;
    v27 = 0;
    v15 = [v14 newWithBuilder:v23];
    v16 = self->_modesConfiguration;
    self->_modesConfiguration = v15;

    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_modesConfiguration;
      *buf = 136315394;
      v29 = "[AFUISiriSession _updateModesHeuristicsForRequestOptions:]";
      v30 = 2112;
      v31 = v17;
      v13 = "%s #modes Creating modes configuration with heuristics related to RequestOptions: %@";
      goto LABEL_9;
    }
  }
}

void __59__AFUISiriSession__updateModesHeuristicsForRequestOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  if ([v3 isHeadunitEyesFree])
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  [v7 setIsEyesFree:v4 & 1];
  [v7 setIsUIFree:{objc_msgSend(*(a1 + 32), "isForUIFree")}];
  [v7 setIsForCarDND:{objc_msgSend(*(a1 + 32), "isForCarDND")}];
  [v7 setIsVoiceTriggerRequest:{objc_msgSend(*(a1 + 32), "isVoiceTriggerRequest")}];
  [v7 setIsConnectedToCarPlay:{objc_msgSend(*(a1 + 32), "isConnectedToCarPlay")}];
  [v7 setIsSiriAutoPrompt:{objc_msgSend(*(a1 + 32), "isInAutoPrompt")}];
  [v7 setIsFlexibleFollowup:{objc_msgSend(*(a1 + 32), "isFlexibleFollowupRequest")}];
  [v7 setIsRequestMadeWithPhysicalDeviceInteraction:{objc_msgSend(*(a1 + 32), "isRequestMadeWithPhysicalDeviceInteraction")}];
  [v7 setUserTypedInSiri:{objc_msgSend(*(a1 + 32), "userTypedInSiri")}];
  [v7 setIsDeviceUnlocked:*(a1 + 41)];
  v5 = [MEMORY[0x277D551B0] sharedSystemState];
  [v7 setIsDeviceScreenON:{objc_msgSend(v5, "deviceScreenIsOn")}];

  if (*(a1 + 42))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v7 setIsUserEngagedWithDevice:v6];
}

void __59__AFUISiriSession__updateModesHeuristicsForRequestOptions___block_invoke_232(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  if ([v3 isHeadunitEyesFree])
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  [v7 setIsEyesFree:v4 & 1];
  [v7 setIsForCarDND:{objc_msgSend(*(a1 + 32), "isForCarDND")}];
  [v7 setIsVoiceTriggerRequest:{objc_msgSend(*(a1 + 32), "isVoiceTriggerRequest")}];
  [v7 setIsConnectedToCarPlay:{objc_msgSend(*(a1 + 32), "isConnectedToCarPlay")}];
  [v7 setIsSiriAutoPrompt:{objc_msgSend(*(a1 + 32), "isInAutoPrompt")}];
  [v7 setIsFlexibleFollowup:{objc_msgSend(*(a1 + 32), "isFlexibleFollowupRequest")}];
  [v7 setIsRequestMadeWithPhysicalDeviceInteraction:{objc_msgSend(*(a1 + 32), "isRequestMadeWithPhysicalDeviceInteraction")}];
  [v7 setUserTypedInSiri:{objc_msgSend(*(a1 + 32), "userTypedInSiri")}];
  [v7 setIsDeviceUnlocked:*(a1 + 41)];
  v5 = [MEMORY[0x277D551B0] sharedSystemState];
  [v7 setIsDeviceScreenON:{objc_msgSend(v5, "deviceScreenIsOn")}];

  if (*(a1 + 42))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v7 setIsUserEngagedWithDevice:v6];
}

- (id)_invocationEventForRequestOptions:(id)a3 localDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D5A928]);
  v9 = [v6 speechRequestOptions];
  if ([v9 activationEvent] == 15)
  {
    v10 = 21;
  }

  else
  {
    v11 = [v9 voiceTriggerEventInfo];
    if (v11 && (v12 = v11, [v9 voiceTriggerEventInfo], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKey:", @"triggeredPhraseId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedLongValue"), v14, v13, v12, v15 == 1))
    {
      v10 = 80;
    }

    else
    {
      v10 = -[AFUISiriSession _mapInvocationSource:](self, "_mapInvocationSource:", [v6 requestSource]);
    }
  }

  [v8 setInvocationSource:v10];
  [v8 setIsDeviceLocked:{objc_msgSend(v7, "lockStateForSiriSession:", self) != 0}];
  if (![v6 isForStark])
  {
    if ([v6 tvRemoteType])
    {
      v22 = -[AFUISiriSession _invocationContextFromTVRemoteType:](self, "_invocationContextFromTVRemoteType:", [v6 tvRemoteType]);
      [v8 setTvRemoteInvocationContext:v22];
    }

    else
    {
      if ([v6 isForBluetoothCar])
      {
        [(AFUISiriSession *)self _populateInvocationEventWithBluetoothCarInvocationContext:v8];
        goto LABEL_18;
      }

      if ([v6 isTypeToSiriRequest])
      {
        [(AFUISiriSession *)self _populateInvocationEventWithTypeToSiriInvocationContext:v8];
        goto LABEL_18;
      }

      v22 = objc_alloc_init(MEMORY[0x277D5A8D0]);
      v24 = [v6 longPressBehavior] + 1;
      if (v24 < 3)
      {
        v25 = (v24 + 1);
      }

      else
      {
        v25 = 0;
      }

      [v22 setHardwareButtonLongPressBehavior:v25];
      [v8 setHardwareButtonInvocationContext:v22];
    }

    goto LABEL_18;
  }

  v16 = objc_alloc_init(MEMORY[0x277D5A7E8]);
  v17 = [v6 requestInfo];
  v18 = [v17 activationEvent];

  if (v18 == 2)
  {
    v19 = [v6 directActionEvent];
    v20 = [v6 appBundleIdentifier];
    [(AFUISiriSession *)self _updateCarPlayInvocationContext:v16 fromDirectActionEvent:v19 appBundleIdentifier:v20];
  }

  [v7 carPlayEnhancedVoiceTriggerModeForSiriSession:self];
  [v16 setEnhancedVoiceTriggerMode:SASCarPlayEnhancedVoiceTriggerModeToSISchemaEnhancedVoiceTriggerMode()];
  v21 = [MEMORY[0x277D551B0] sharedSystemState];
  [v21 carPlayTransportType];

  [v16 setCarPlayConnection:SASCarPlayTransportTypeToSISchemaCarPlayConnection()];
  [v8 setCarPlayInvocationContext:v16];

LABEL_18:

  return v8;
}

- (int64_t)_mapSuggestionRequestType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)_populateInvocationEventWithBluetoothCarInvocationContext:(id)a3
{
  v3 = MEMORY[0x277D5A7C8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CEF368] sharedPreferences];
  v7 = [v6 bluetoothPreferredCarAudioRoute];

  if ([v7 isEqualToString:@"A2DP"])
  {
    v8 = 1;
  }

  else if ([v7 isEqualToString:@"DeviceSpeaker"])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(AFUISiriSession *)v8 _populateInvocationEventWithBluetoothCarInvocationContext:v9];
  }

  [v5 setRoute:v8];
  [v4 setBluetoothCarInvocationContext:v5];
}

- (void)_populateInvocationEventWithTypeToSiriInvocationContext:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D5AA80]);
  WeakRetained = objc_loadWeakRetained(&self->_localDataSource);
  v7 = [WeakRetained contextAppInfosForSiriSession:self];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v9)
  {
    v24 = v8;
    goto LABEL_18;
  }

  v10 = v9;
  v26 = v7;
  v27 = v5;
  v28 = v4;
  v11 = *v31;
  v12 = @"com.apple.chrono.WidgetRenderer-Default";
  v13 = @"com.apple.siri.IntelligentLight";
LABEL_3:
  v14 = 0;
  while (1)
  {
    if (*v31 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v15 = *(*(&v30 + 1) + 8 * v14);
    v16 = [v15 identifier];
    if ([v16 isEqualToString:v12])
    {
      goto LABEL_9;
    }

    v17 = [v15 identifier];
    if (![v17 isEqualToString:v13])
    {
      break;
    }

LABEL_9:
LABEL_11:
    if (v10 == ++v14)
    {
      v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v10)
      {
        goto LABEL_3;
      }

      v24 = v8;
      v5 = v27;
      v4 = v28;
      v7 = v26;
      goto LABEL_18;
    }
  }

  [v15 identifier];
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v8;
  v23 = v22 = v13;
  v29 = [v23 isEqualToString:@"com.apple.siri"];

  v13 = v22;
  v8 = v21;
  v12 = v20;
  v11 = v19;
  v10 = v18;

  if (v29)
  {
    goto LABEL_11;
  }

  v24 = [v15 identifier];

  v5 = v27;
  v4 = v28;
  v7 = v26;
  if (!v24)
  {
    goto LABEL_19;
  }

  [v27 setBackgroundAppBundleId:v24];
  v25 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[AFUISiriSession _populateInvocationEventWithTypeToSiriInvocationContext:]";
    v36 = 2112;
    v37 = v24;
    _os_log_impl(&dword_241432000, v25, OS_LOG_TYPE_DEFAULT, "%s #TypeToSiriInvocationContextSender The current backgroundAppBundleId is: %@", buf, 0x16u);
  }

LABEL_18:

LABEL_19:
  [v4 setTypeToSiriContext:v5];
}

- (int)_mapInvocationSource:(int64_t)a3
{
  if ((a3 - 1) > 0x3B)
  {
    return 0;
  }

  else
  {
    return dword_2414945E8[a3 - 1];
  }
}

- (void)_updateCarPlayInvocationContext:(id)a3 fromDirectActionEvent:(int64_t)a4 appBundleIdentifier:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = a4 - 2;
  if (a4 - 2) < 0x11 && ((0x1E83Du >> v9))
  {
    v10 = dword_2414946D8[v9];
  }

  else
  {
    v11 = *MEMORY[0x277CEF098];
    v12 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    v10 = 0;
    if (v12)
    {
      v13 = 136315394;
      v14 = "[AFUISiriSession _updateCarPlayInvocationContext:fromDirectActionEvent:appBundleIdentifier:]";
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s Unhandled direct action event: %li", &v13, 0x16u);
      v10 = 0;
    }
  }

  [v7 setDirectAction:v10];
  [v7 setBundleID:v8];
}

- (id)_invocationContextFromTVRemoteType:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D5AA48]);
  v5 = v4;
  if (a3 - 1 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_24149471C[a3 - 1];
  }

  [v4 setRemoteType:v6];

  return v5;
}

- (id)_tamaleDirectActionRequestWithText:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277D5C220]) initWithIdentifier:@"com.apple.siri.ifflow.ajaxMedia"];
  if (v3)
  {
    if ([v3 length])
    {
      v15 = @"utterance";
      v16[0] = v3;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v4 setUserData:v5];

      v6 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "[AFUISiriSession _tamaleDirectActionRequestWithText:]";
        v13 = 2112;
        v14 = v3;
        _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s Visual Intelligence direct invocation with text utterance: %@", &v11, 0x16u);
      }
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277D5C218]);
  v8 = [MEMORY[0x277D5C210] runSiriKitExecutorCommandWithContext:v7 payload:v4];
  v9 = [MEMORY[0x277D5C210] wrapCommandInStartLocalRequest:v8];

  return v9;
}

- (void)_startVisualIntelligenceDirectInvocationRequestWith:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AFUISiriSession _startVisualIntelligenceDirectInvocationRequestWith:completion:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s startQuickTypeTamaleRequest turnId:%@", &v10, 0x16u);
  }

  v9 = [(AFUISiriSession *)self _tamaleDirectActionRequest];
  [(AFUISiriSession *)self _startDirectRequestWith:v9 turnIdentifier:v6 completion:v7];
}

- (void)_startVisualIntelligenceDirectInvocationRequestWithText:(id)a3 turnIdentifier:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(AFUISiriSession *)self _startTypeToSiriLatencyTimer];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[AFUISiriSession _startVisualIntelligenceDirectInvocationRequestWithText:turnIdentifier:completion:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s startVisualIntelligenceTextRequest with text: %@ turnId:%@", &v13, 0x20u);
  }

  v12 = [(AFUISiriSession *)self _tamaleDirectActionRequestWithText:v8];
  [(AFUISiriSession *)self _startDirectRequestWith:v12 turnIdentifier:v9 completion:v10];
}

- (id)_photoPickerDirectActionRequestWith:(id)a3 assetIdentifiers:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D5C220];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithIdentifier:v7];

  v14 = @"assetIdentifiers";
  v15[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v8 setUserData:v9];

  v10 = objc_alloc_init(MEMORY[0x277D5C218]);
  v11 = [MEMORY[0x277D5C210] runSiriKitExecutorCommandWithContext:v10 payload:v8];
  v12 = [MEMORY[0x277D5C210] wrapCommandInStartLocalRequest:v11];

  return v12;
}

- (void)_handlePhotoPickerRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  delegate = self->_delegate;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__AFUISiriSession__handlePhotoPickerRequest_completion___block_invoke;
  v11[3] = &unk_278CD6070;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  [(AFUISiriSessionDelegate *)delegate siriSessionRequestedPhotoSelectionWithPhotoPickerRequest:v9 completion:v11];
}

void __56__AFUISiriSession__handlePhotoPickerRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = objc_alloc_init(MEMORY[0x277D47218]);
    v5 = [*(a1 + 32) aceId];
    [v4 setRefId:v5];

    (*(*(a1 + 48) + 16))();
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) directInvocationBundleIdentifier];
  v8 = [v6 _photoPickerDirectActionRequestWith:v7 assetIdentifiers:v3];

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[AFUISiriSession _handlePhotoPickerRequest:completion:]_block_invoke";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s SAStartLocalRequest with PhotoPicker result: %@", buf, 0x16u);
  }

  v10 = [*(a1 + 40) _instrumentationTurnContext];
  v11 = [v10 turnIdentifier];

  v12 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__AFUISiriSession__handlePhotoPickerRequest_completion___block_invoke_261;
  v14[3] = &unk_278CD58D0;
  v15 = v3;
  v13 = v3;
  [v12 _startDirectRequestWith:v8 turnIdentifier:v11 completion:v14];
}

void __56__AFUISiriSession__handlePhotoPickerRequest_completion___block_invoke_261(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __56__AFUISiriSession__handlePhotoPickerRequest_completion___block_invoke_261_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[AFUISiriSession _handlePhotoPickerRequest:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_241432000, v4, OS_LOG_TYPE_DEFAULT, "%s Photo assetIdentifiers are sent via direct invocation: %@", &v6, 0x16u);
  }
}

- (void)_startDirectRequestWith:(id)a3 turnIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__AFUISiriSession__startDirectRequestWith_turnIdentifier_completion___block_invoke;
  block[3] = &unk_278CD5E68;
  objc_copyWeak(&v18, &location);
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __69__AFUISiriSession__startDirectRequestWith_turnIdentifier_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = MEMORY[0x277D85DD0];
    v5 = 3221225472;
    v6 = __69__AFUISiriSession__startDirectRequestWith_turnIdentifier_completion___block_invoke_2;
    v7 = &unk_278CD6098;
    v8 = WeakRetained;
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    [v3 _startRequestWithBlock:&v4];

    [v3[23] performTransitionForEvent:{0, v4, v5, v6, v7, v8}];
  }
}

uint64_t __69__AFUISiriSession__startDirectRequestWith_turnIdentifier_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performAceCommand:*(a1 + 40) turnIdentifier:*(a1 + 48) machAbsoluteTime:mach_absolute_time()];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end