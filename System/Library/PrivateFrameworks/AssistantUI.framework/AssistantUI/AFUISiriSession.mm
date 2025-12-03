@interface AFUISiriSession
+ (id)effectiveCoreLocationBundle;
+ (unint64_t)availabilityState;
- (AFConnection)_connection;
- (AFUISiriSession)initWithConnection:(id)connection delegateQueue:(id)queue requestSource:(int64_t)source;
- (AFUISiriSessionLocalDataSource)localDataSource;
- (AFUISiriSessionLocalDelegate)localDelegate;
- (BOOL)_aceObjectExpectsTurnIdentifierWhenSendingCommand:(id)command;
- (BOOL)_isContinuousConversationAvailable;
- (BOOL)_shouldFetchActiveAccount;
- (BOOL)attendingState;
- (BOOL)stateFeedbackManagerShouldCancelOnMediaResume;
- (SRUIFSiriStateResponding)visualIntelligenceCameraDelegate;
- (SRUIFWatchAuthenticationManager)_watchAuthenticationManager;
- (float)recordingPowerLevel;
- (id)_getMissingAssetTypes:(id)types;
- (id)_invocationContextFromTVRemoteType:(unint64_t)type;
- (id)_invocationEventForRequestOptions:(id)options localDataSource:(id)source;
- (id)_modeOverrideValue;
- (id)_photoPickerDirectActionRequestWith:(id)with assetIdentifiers:(id)identifiers;
- (id)_preparedSpeechRequestWithRequestOptions:(id)options;
- (id)_processInstrumentationForFinalOptionsAndGenerateNewTurn:(id)turn;
- (id)_setRefIdForAllViewsInAddViews:(id)views;
- (id)_startingRecordingAlertPolicyForSoundID:(id)d;
- (id)_tamaleDirectActionRequestWithText:(id)text;
- (id)safeWrapResponseCompletion:(id)completion;
- (int)_mapInvocationSource:(int64_t)source;
- (int64_t)_mapSuggestionRequestType:(int64_t)type;
- (void)_cancelTypeToSiriLatencyTimerIfNeeded;
- (void)_discardConnectionForReason:(int64_t)reason;
- (void)_forceAudioSessionActiveWithCompletionWrapper:(id)wrapper;
- (void)_handleDidChangeAudioRecordingPower;
- (void)_handlePhotoPickerRequest:(id)request completion:(id)completion;
- (void)_handlePlayAudioCommand:(id)command completion:(id)completion;
- (void)_handleRequestUpdateViewsCommand:(id)command completion:(id)completion;
- (void)_handleSuppressDelayFeedbackCommand:(id)command completion:(id)completion;
- (void)_handleUnlockAppCommand:(id)command completion:(id)completion;
- (void)_handleUnlockDeviceCommand:(id)command completion:(id)completion;
- (void)_handleUnlockDeviceWithWatchCommand:(id)command completion:(id)completion;
- (void)_invalidateConnectionForReason:(int64_t)reason;
- (void)_performAceCommand:(id)command forRequestUpdateViewsCommand:(id)viewsCommand afterDelay:(double)delay;
- (void)_performAceCommand:(id)command turnIdentifier:(id)identifier machAbsoluteTime:(double)time conflictHandler:(id)handler;
- (void)_performAceCommands:(id)commands;
- (void)_performBlockWithDelegate:(id)delegate;
- (void)_performPunchoutCommand:(id)command delegate:(id)delegate completion:(id)completion;
- (void)_playPhaticWithCompletion:(id)completion;
- (void)_populateInvocationEventWithBluetoothCarInvocationContext:(id)context;
- (void)_populateInvocationEventWithTypeToSiriInvocationContext:(id)context;
- (void)_requestDidFinishWithError:(id)error;
- (void)_requestStartedWithInfo:(id)info;
- (void)_sendContextWithCompletion:(id)completion;
- (void)_setupConnectionIfNeeded;
- (void)_startContinuityRequestWithInfo:(id)info completion:(id)completion;
- (void)_startDirectRequestWith:(id)with turnIdentifier:(id)identifier completion:(id)completion;
- (void)_startLegacyDirectActionRequestWithInfo:(id)info context:(id)context completion:(id)completion;
- (void)_startRequestForReadoutOfBulletin:(id)bulletin;
- (void)_startRequestWithBlock:(id)block;
- (void)_startRequestWithFinalOptions:(id)options completion:(id)completion;
- (void)_startRequestWithInfo:(id)info completion:(id)completion;
- (void)_startRequestWithSuggestionText:(id)text suggestionRequestType:(int64_t)type turnIdentifier:(id)identifier completion:(id)completion;
- (void)_startRequestWithText:(id)text turnIdentifier:(id)identifier completion:(id)completion;
- (void)_startSpeechPronunciationRequestWithContext:(id)context options:(id)options completion:(id)completion;
- (void)_startSpeechRequestWithOptions:(id)options completion:(id)completion;
- (void)_startSpeechRequestWithSpeechRequestOptions:(id)options isInitialBringUp:(BOOL)up completion:(id)completion;
- (void)_startTypeToSiriLatencyTimer;
- (void)_startVisualIntelligenceDirectInvocationRequestWith:(id)with completion:(id)completion;
- (void)_startVisualIntelligenceDirectInvocationRequestWithText:(id)text turnIdentifier:(id)identifier completion:(id)completion;
- (void)_typeToSiriLatencyTimerFired;
- (void)_updateActiveAccount:(id)account;
- (void)_updateActiveAccount:(id)account withNumberOfActiveAccounts:(unint64_t)accounts;
- (void)_updateAssistantVersion:(id)version;
- (void)_updateCarPlayInvocationContext:(id)context fromDirectActionEvent:(int64_t)event appBundleIdentifier:(id)identifier;
- (void)_updateModesHeuristicsForRequestOptions:(id)options;
- (void)assistantConnection:(id)connection appLaunchFailedWithBundleIdentifier:(id)identifier;
- (void)assistantConnection:(id)connection didChangeAudioSessionID:(unsigned int)d;
- (void)assistantConnection:(id)connection didFinishAcousticIDRequestWithSuccess:(BOOL)success;
- (void)assistantConnection:(id)connection didLoadAssistant:(id)assistant;
- (void)assistantConnection:(id)connection didUpdateResponseMode:(id)mode;
- (void)assistantConnection:(id)connection dismissAssistantWithReason:(int64_t)reason;
- (void)assistantConnection:(id)connection extensionRequestFinishedForApplication:(id)application error:(id)error;
- (void)assistantConnection:(id)connection extensionRequestWillStartForApplication:(id)application;
- (void)assistantConnection:(id)connection openURL:(id)l completion:(id)completion;
- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion;
- (void)assistantConnection:(id)connection recognitionUpdateWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id;
- (void)assistantConnection:(id)connection recognizedAdditionalSpeechInterpretation:(id)interpretation refId:(id)id;
- (void)assistantConnection:(id)connection replayAll:(unint64_t)all with:(id)with;
- (void)assistantConnection:(id)connection replayAt:(unint64_t)at with:(id)with;
- (void)assistantConnection:(id)connection requestFailedWithError:(id)error requestClass:(id)class;
- (void)assistantConnection:(id)connection setReplayEnabled:(BOOL)enabled;
- (void)assistantConnection:(id)connection setReplayOverridePath:(id)path;
- (void)assistantConnection:(id)connection speechRecognized:(id)recognized;
- (void)assistantConnection:(id)connection speechRecognizedPartialResult:(id)result;
- (void)assistantConnection:(id)connection speechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d;
- (void)assistantConnection:(id)connection speechRecordingDidChangeAVRecordRoute:(id)route;
- (void)assistantConnection:(id)connection speechRecordingDidFail:(id)fail;
- (void)assistantConnection:(id)connection speechRecordingPerformTwoShotPromptWithType:(int64_t)type completion:(id)completion;
- (void)assistantConnection:(id)connection startPlaybackDidFail:(int64_t)fail;
- (void)assistantConnection:(id)connection startUIRequestWithText:(id)text completion:(id)completion;
- (void)assistantConnection:(id)connection wantsToCacheImage:(id)image;
- (void)assistantConnection:(id)connection willProcessAppLaunchWithBundleIdentifier:(id)identifier;
- (void)assistantConnection:(id)connection willProcessStartPlayback:(int64_t)playback intent:(id)intent completion:(id)completion;
- (void)assistantConnectionAudioSessionDidBeginInterruption:(id)interruption userInfo:(id)info;
- (void)assistantConnectionAudioSessionDidEndInterruption:(id)interruption shouldResume:(BOOL)resume userInfo:(id)info;
- (void)assistantConnectionDidChangeAudioRecordingPower:(id)power;
- (void)assistantConnectionRequestFinished:(id)finished;
- (void)assistantConnectionRequestWillStart:(id)start;
- (void)assistantConnectionSpeechRecordingDidCancel:(id)cancel;
- (void)assistantConnectionSpeechRecordingDidEnd:(id)end;
- (void)assistantConnectionSpeechRecordingWillBegin:(id)begin;
- (void)assistantConnectionUpdatedSpeechEndEstimate:(id)estimate speechEndEstimate:(unint64_t)endEstimate;
- (void)cancelRequest;
- (void)clearContext;
- (void)dealloc;
- (void)emitSiriWasUnavailableEventWithRequestOptions:(id)options;
- (void)end;
- (void)endForReason:(int64_t)reason;
- (void)fetchAttendingState:(id)state;
- (void)forceAudioSessionActiveWithCompletion:(id)completion;
- (void)forceAudioSessionInactive;
- (void)idleAndQuietStatusDidChange:(BOOL)change;
- (void)invalidateConnection;
- (void)launchedIntoListeningAtTime:(double)time;
- (void)notifyStateManagerSpeakingBegan;
- (void)notifyStateManagerSpeakingEnded;
- (void)orchestrationBeganTaskWithIdentifier:(id)identifier;
- (void)preheat;
- (void)promptedUserForInput;
- (void)receivedLatencyInformation:(id)information;
- (void)receivedNLRoutingDecision:(id)decision;
- (void)recordMetricsContext:(id)context forDisambiguatedAppWIthBundleIdentifier:(id)identifier;
- (void)recordRequestMetricEvent:(id)event withTimestamp:(double)timestamp;
- (void)recordUIMetrics:(id)metrics;
- (void)requestDidPresentViewForErrorCommand:(id)command;
- (void)requestDidPresentViewForUICommand:(id)command;
- (void)resetContextTypes:(int64_t)types;
- (void)resultDidChangeForAceCommand:(id)command completion:(id)completion;
- (void)resumeInterruptedAudioPlaybackIfNeeded;
- (void)rollbackClearContext;
- (void)sessionStateHandler:(id)handler didTransitionFromState:(int64_t)state toState:(int64_t)toState forEvent:(int64_t)event machAbsoluteTime:(double)time;
- (void)setAlertContext;
- (void)setAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)active;
- (void)setApplicationContextForDirectAction:(BOOL)action;
- (void)setCarDNDActive:(BOOL)active;
- (void)setCarOwnsMainAudio:(BOOL)audio;
- (void)setDelegate:(id)delegate;
- (void)setDeviceInStarkMode:(BOOL)mode;
- (void)setEyesFree:(BOOL)free;
- (void)setLockState:(unint64_t)state;
- (void)setSupportsCarPlayVehicleData:(BOOL)data;
- (void)setWatchAuthenticated:(BOOL)authenticated;
- (void)showAssetsDownloadNotificationPrompt;
- (void)siriUIDidPresentDynamicSnippetWithInfo:(id)info;
- (void)speechRequestHandlerDidCancelSpeechRequest:(id)request;
- (void)speechSynthesisDidUpdatePowerLevelTo:(float)to;
- (void)startCorrectedRequestWithText:(id)text correctionIdentifier:(id)identifier userSelectionResults:(id)results turnIdentifier:(id)turnIdentifier machAbsoluteTime:(double)time;
- (void)startRequestWithOptions:(id)options completion:(id)completion;
- (void)stateFeedbackManagerDidStartPlaybackForStateFeedbackType:(int64_t)type;
- (void)stopAttending;
- (void)stopRequestWithOptions:(id)options;
- (void)telephonyRequestCompleted;
- (void)updateRequestOptions:(id)options;
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
    mEMORY[0x277D61AB8] = [MEMORY[0x277D61AB8] sharedInstance];
    understandingOnDeviceAssetsAvailable = [mEMORY[0x277D61AB8] understandingOnDeviceAssetsAvailable];
    if ((understandingOnDeviceAssetsAvailable & 1) == 0)
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
      if ((understandingOnDeviceAssetsAvailable | [MEMORY[0x277CEF218] isNetworkAvailable]))
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

  _connection = [(AFUISiriSession *)self _connection];
  [_connection clearContext];
}

- (void)setAlertContext
{
  localDataSource = [(AFUISiriSession *)self localDataSource];
  v4 = [localDataSource bulletinsForSiriSession:self];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v7 = v5;
  _connection = [(AFUISiriSession *)self _connection];
  [_connection setAlertContextWithBulletins:v7];
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
  _isContinuousConversationAvailable = [(AFUISiriSession *)self _isContinuousConversationAvailable];
  if (_isContinuousConversationAvailable)
  {
    uiBridgeClient = self->_uiBridgeClient;

    LOBYTE(_isContinuousConversationAvailable) = [(SRUIFUIBridgeClient *)uiBridgeClient isAttending];
  }

  return _isContinuousConversationAvailable;
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
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  if ([mEMORY[0x277CEF368] showServerOnUI])
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
    lowercaseString = [v3 lowercaseString];
  }

  else
  {
    lowercaseString = 0;
  }

  return lowercaseString;
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
    localDelegate = [(AFUISiriSession *)self localDelegate];
    [(AFUISiriSession *)self recordingPowerLevel];
    v5 = v4;
    [(AFUISiriSession *)self recordingPowerLevel];
    LODWORD(v7) = v6;
    LODWORD(v8) = v5;
    [localDelegate siriSessionAudioRecordingDidChangePowerLevel:v8 peakLevel:v7];

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
    localDelegate2 = [(AFUISiriSession *)self localDelegate];
    [(AFUISiriSession *)self recordingPowerLevel];
    [localDelegate2 siriSessionAudioRecordingDidChangePowerLevel:?];

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
    isContinuousConversationEnabled = [MEMORY[0x277CEF2A8] isContinuousConversationEnabled];
    v5 = 32;
    if (isContinuousConversationEnabled)
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

- (AFUISiriSession)initWithConnection:(id)connection delegateQueue:(id)queue requestSource:(int64_t)source
{
  connectionCopy = connection;
  queueCopy = queue;
  v35.receiver = self;
  v35.super_class = AFUISiriSession;
  v11 = [(AFUISiriSession *)&v35 init];
  if (v11)
  {
    if (!queueCopy)
    {
      [AFUISiriSession initWithConnection:a2 delegateQueue:v11 requestSource:?];
    }

    objc_storeStrong(&v11->_delegateQueue, queue);
    v11->_currentRequestDidPresent = 1;
    if ([(AFUISiriSession *)v11 _shouldRetainConnectionForRequestSource:source])
    {
      if (connectionCopy)
      {
        v12 = connectionCopy;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__siriNetworkAvailabilityDidChange_ name:*MEMORY[0x277CEF040] object:0];

    mEMORY[0x277CEF3D8] = [MEMORY[0x277CEF3D8] sharedManager];
    clientStateManager = v11->_clientStateManager;
    v11->_clientStateManager = mEMORY[0x277CEF3D8];

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
  _connection = [(AFUISiriSession *)self _connection];

  if (_connection)
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.LocalAuthentication.ui.presented", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = getOptionalPKDarwinNotificationEventInAppPresented();
  CFNotificationCenterRemoveObserver(v7, self, v8, 0);

  v9.receiver = self;
  v9.super_class = AFUISiriSession;
  [(AFUISiriSession *)&v9 dealloc];
}

- (void)sessionStateHandler:(id)handler didTransitionFromState:(int64_t)state toState:(int64_t)toState forEvent:(int64_t)event machAbsoluteTime:(double)time
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__AFUISiriSession_sessionStateHandler_didTransitionFromState_toState_forEvent_machAbsoluteTime___block_invoke;
  v13[3] = &__block_descriptor_64_e35_v16__0___AFUISiriSessionDelegate__8l;
  v13[4] = state;
  v13[5] = toState;
  v13[6] = event;
  *&v13[7] = time;
  [(AFUISiriSession *)self _performBlockWithDelegate:v13];
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSession:self didChangeToState:toState event:event machAbsoluteTransitionTime:time];

  [(SRUIFStateFeedbackManager *)self->_stateFeedbackManager didTransitionFromState:state toState:toState event:event machAbsoluteTransitionTime:time];
  [(SRUIFAudioPowerLevelUpdater *)self->_audioPowerLevelUpdater sessionStateDidChangeTo:toState isAttending:[(AFUISiriSession *)self attendingState]];
}

- (void)speechRequestHandlerDidCancelSpeechRequest:(id)request
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

- (void)receivedLatencyInformation:(id)information
{
  informationCopy = information;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__AFUISiriSession_receivedLatencyInformation___block_invoke;
  v6[3] = &unk_278CD59E0;
  v7 = informationCopy;
  v5 = informationCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v6];
}

- (void)receivedNLRoutingDecision:(id)decision
{
  decisionCopy = decision;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__AFUISiriSession_receivedNLRoutingDecision___block_invoke;
  v6[3] = &unk_278CD59E0;
  v7 = decisionCopy;
  v5 = decisionCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v6];
}

- (void)orchestrationBeganTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__AFUISiriSession_orchestrationBeganTaskWithIdentifier___block_invoke;
  v6[3] = &unk_278CD59E0;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v6];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeStrong(&self->_delegate, delegate);
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

- (void)_performBlockWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__AFUISiriSession__performBlockWithDelegate___block_invoke;
  block[3] = &unk_278CD5A08;
  objc_copyWeak(&v9, &location);
  v8 = delegateCopy;
  v6 = delegateCopy;
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

- (void)idleAndQuietStatusDidChange:(BOOL)change
{
  changeCopy = change;
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    uiBridgeClient = self->_uiBridgeClient;

    [(SRUIFUIBridgeClient *)uiBridgeClient idleAndQuietDidChange:changeCopy];
  }
}

- (void)stateFeedbackManagerDidStartPlaybackForStateFeedbackType:(int64_t)type
{
  if (!type)
  {
    [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:15];

    [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_60];
  }
}

- (BOOL)stateFeedbackManagerShouldCancelOnMediaResume
{
  localDataSource = [(AFUISiriSession *)self localDataSource];
  getUIViewModeIsUIFreeForCurrentRequest = [localDataSource getUIViewModeIsUIFreeForCurrentRequest];

  return getUIViewModeIsUIFreeForCurrentRequest ^ 1;
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
  _connection = [(AFUISiriSession *)self _connection];
  [_connection preheatWithStyle:1];
}

- (void)launchedIntoListeningAtTime:(double)time
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[AFUISiriSession launchedIntoListeningAtTime:]";
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:14 eventTimeStamp:time];
}

- (void)forceAudioSessionActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__AFUISiriSession_forceAudioSessionActiveWithCompletion___block_invoke;
  v6[3] = &unk_278CD5A30;
  v7 = completionCopy;
  v5 = completionCopy;
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

- (void)_forceAudioSessionActiveWithCompletionWrapper:(id)wrapper
{
  v13 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
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

    _connection = [(AFUISiriSession *)self _connection];
    v10 = [objc_alloc(MEMORY[0x277CEF498]) initWithActivationEvent:9];
    [_connection forceAudioSessionActiveWithOptions:1 reason:3 speechRequestOptions:v10 completion:wrapperCopy];
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

    _connection = [(AFUISiriSession *)self _connection];
    [_connection forceAudioSessionActiveWithOptions:1 reason:3 completion:wrapperCopy];
  }
}

- (void)forceAudioSessionInactive
{
  _connection = [(AFUISiriSession *)self _connection];
  [_connection forceAudioSessionInactive];
}

- (void)resumeInterruptedAudioPlaybackIfNeeded
{
  _connection = [(AFUISiriSession *)self _connection];
  [_connection resumeInterruptedAudioPlaybackIfNeeded];
}

- (void)emitSiriWasUnavailableEventWithRequestOptions:(id)options
{
  v30 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = mach_absolute_time();
  v6 = [(AFUISiriSession *)self _processInstrumentationForFinalOptionsAndGenerateNewTurn:optionsCopy];
  localDataSource = [(AFUISiriSession *)self localDataSource];
  v8 = [(AFUISiriSession *)self _invocationEventForRequestOptions:optionsCopy localDataSource:localDataSource];

  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    turnIdentifier = [v6 turnIdentifier];
    formattedText = [v8 formattedText];
    v22 = 136315906;
    v23 = "[AFUISiriSession emitSiriWasUnavailableEventWithRequestOptions:]";
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = turnIdentifier;
    v28 = 2112;
    v29 = formattedText;
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", &v22, 0x2Au);
  }

  [v6 emitInstrumentation:v8 machAbsoluteTime:v5];
  v14 = objc_alloc_init(MEMORY[0x277D5ABB0]);
  [v14 setReason:2];
  [v14 setProduct:1];
  mEMORY[0x277D61AB8] = [MEMORY[0x277D61AB8] sharedInstance];
  assistantUODStatus = [mEMORY[0x277D61AB8] assistantUODStatus];

  if (assistantUODStatus && [assistantUODStatus count])
  {
    v17 = [(AFUISiriSession *)self _getMissingAssetTypes:assistantUODStatus];
    [v14 setAssetTypes:v17];
  }

  v18 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    turnIdentifier2 = [v6 turnIdentifier];
    formattedText2 = [v14 formattedText];
    v22 = 136315906;
    v23 = "[AFUISiriSession emitSiriWasUnavailableEventWithRequestOptions:]";
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = turnIdentifier2;
    v28 = 2112;
    v29 = formattedText2;
    _os_log_impl(&dword_241432000, v19, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", &v22, 0x2Au);
  }

  [v6 emitInstrumentation:v14 machAbsoluteTime:v5];
}

- (id)_getMissingAssetTypes:(id)types
{
  typesCopy = types;
  v4 = objc_opt_new();
  v5 = [typesCopy objectForKey:@"SPEECH"];

  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v4 addObject:v6];
  }

  v7 = [typesCopy objectForKey:@"NL"];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [v4 addObject:v8];
  }

  v9 = [typesCopy objectForKey:@"MORPHUN"];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:3];
    [v4 addObject:v10];
  }

  v11 = [typesCopy objectForKey:@"ATTENTION"];

  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:4];
    [v4 addObject:v12];
  }

  v13 = [typesCopy objectForKey:@"NLROUTER"];

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

- (id)_processInstrumentationForFinalOptionsAndGenerateNewTurn:(id)turn
{
  v104 = *MEMORY[0x277D85DE8];
  turnCopy = turn;
  val = self;
  localDataSource = [(AFUISiriSession *)self localDataSource];
  v81 = [(AFUISiriSession *)val _invocationEventForRequestOptions:turnCopy localDataSource:localDataSource];

  if ([v81 invocationSource] != 52)
  {
    if ([v81 invocationSource] == 48)
    {
      mEMORY[0x277D61AD8] = [MEMORY[0x277D61AD8] sharedManager];
      latestStoredTurn = [mEMORY[0x277D61AD8] latestStoredTurn];

      v80 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:latestStoredTurn];
      v15 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        turnIdentifier = [v80 turnIdentifier];
        *buf = 136315650;
        v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
        v98 = 2112;
        v99 = turnIdentifier;
        v100 = 2112;
        v101 = latestStoredTurn;
        _os_log_impl(&dword_241432000, v16, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
      }
    }

    else if ([v81 invocationSource] == 92)
    {
      mEMORY[0x277D61AD8]2 = [MEMORY[0x277D61AD8] sharedManager];
      latestStoredTurn = [mEMORY[0x277D61AD8]2 latestResponseProducingTurn];

      v80 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:latestStoredTurn];
      v19 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        turnIdentifier2 = [v80 turnIdentifier];
        *buf = 136315650;
        v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
        v98 = 2112;
        v99 = turnIdentifier2;
        v100 = 2112;
        v101 = latestStoredTurn;
        _os_log_impl(&dword_241432000, v20, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
      }
    }

    else
    {
      if ([v81 invocationSource] != 29)
      {
        mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
        newTurnBasedInstrumentationContext = [mEMORY[0x277CEF158] newTurnBasedInstrumentationContext];

        v33 = *MEMORY[0x277CEF098];
        v80 = newTurnBasedInstrumentationContext;
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
          turnIdentifier3 = [newTurnBasedInstrumentationContext turnIdentifier];
          *buf = 136315394;
          v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
          v98 = 2112;
          v99 = turnIdentifier3;
          _os_log_impl(&dword_241432000, v34, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ ", buf, 0x16u);
        }

        goto LABEL_22;
      }

      mEMORY[0x277D61AD8]3 = [MEMORY[0x277D61AD8] sharedManager];
      latestStoredTurn = [mEMORY[0x277D61AD8]3 latestStoredTurn];

      v80 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:latestStoredTurn];
      v28 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        turnIdentifier4 = [v80 turnIdentifier];
        *buf = 136315650;
        v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
        v98 = 2112;
        v99 = turnIdentifier4;
        v100 = 2112;
        v101 = latestStoredTurn;
        _os_log_impl(&dword_241432000, v29, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
      }
    }

LABEL_22:
    v78 = 0;
    goto LABEL_23;
  }

  previousTurnIdentifier = [turnCopy previousTurnIdentifier];

  if (previousTurnIdentifier)
  {
    v6 = MEMORY[0x277CEF168];
    previousTurnIdentifier2 = [turnCopy previousTurnIdentifier];
    v8 = [v6 newTurnBasedContextWithPreviousTurnID:previousTurnIdentifier2];

    v9 = *MEMORY[0x277CEF098];
    v80 = v8;
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      turnIdentifier5 = [v8 turnIdentifier];
      previousTurnIdentifier3 = [turnCopy previousTurnIdentifier];
      *buf = 136315650;
      v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
      v98 = 2112;
      v99 = turnIdentifier5;
      v100 = 2112;
      v101 = previousTurnIdentifier3;
      _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
    }

    goto LABEL_22;
  }

  mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
  newTurnBasedInstrumentationContext2 = [mEMORY[0x277CEF158]2 newTurnBasedInstrumentationContext];

  v24 = *MEMORY[0x277CEF098];
  v80 = newTurnBasedInstrumentationContext2;
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    turnIdentifier6 = [newTurnBasedInstrumentationContext2 turnIdentifier];
    *buf = 136315394;
    v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
    v98 = 2112;
    v99 = turnIdentifier6;
    _os_log_impl(&dword_241432000, v25, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ ", buf, 0x16u);
  }

  v78 = 1;
LABEL_23:
  if ([turnCopy isInitialBringUp])
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
  if ([turnCopy isTypeToSiriRequest])
  {
    text = [turnCopy text];
    if ([text length])
    {
      saeAvailable = [MEMORY[0x277CEF4D0] saeAvailable];

      if (!saeAvailable)
      {
        goto LABEL_32;
      }

      v38 = objc_alloc(MEMORY[0x277D5AC78]);
      v39 = objc_alloc_init(MEMORY[0x277CCAD78]);
      text = [v38 initWithNSUUID:v39];

      v40 = objc_alloc_init(MEMORY[0x277D5AB60]);
      [v40 setLinkId:text];
      [v40 setHasLinkId:1];
      text2 = [turnCopy text];
      [v40 setTypedText:text2];

      [v81 setLinkId:text];
      [v81 setHasLinkId:1];
      v42 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        _instrumentationTurnContext = [(AFUISiriSession *)val _instrumentationTurnContext];
        turnIdentifier7 = [_instrumentationTurnContext turnIdentifier];
        formattedText = [v40 formattedText];
        *buf = 136315906;
        v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
        v98 = 2112;
        v99 = v40;
        v100 = 2112;
        v101 = turnIdentifier7;
        v102 = 2112;
        v103 = formattedText;
        _os_log_impl(&dword_241432000, v43, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
      }

      _instrumentationTurnContext2 = [(AFUISiriSession *)val _instrumentationTurnContext];
      [_instrumentationTurnContext2 emitInstrumentation:v40 machAbsoluteTime:mach_absolute_time()];
    }
  }

LABEL_32:
  v48 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v49 = v48;
    _instrumentationTurnContext3 = [(AFUISiriSession *)val _instrumentationTurnContext];
    turnIdentifier8 = [_instrumentationTurnContext3 turnIdentifier];
    formattedText2 = [v81 formattedText];
    *buf = 136315906;
    v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
    v98 = 2112;
    v99 = v81;
    v100 = 2112;
    v101 = turnIdentifier8;
    v102 = 2112;
    v103 = formattedText2;
    _os_log_impl(&dword_241432000, v49, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
  }

  _instrumentationTurnContext4 = [(AFUISiriSession *)val _instrumentationTurnContext];
  [_instrumentationTurnContext4 emitInstrumentation:v81 machAbsoluteTime:mach_absolute_time()];

  activationEventInstrumentationIdenifier = [turnCopy activationEventInstrumentationIdenifier];
  if (activationEventInstrumentationIdenifier)
  {
    activationInstrumentationSender = val->_activationInstrumentationSender;
    if (!activationInstrumentationSender)
    {
      v55 = objc_alloc(MEMORY[0x277D55158]);
      mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
      defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
      v58 = [v55 initWithAnalyticsStream:defaultMessageStream];
      v59 = val->_activationInstrumentationSender;
      val->_activationInstrumentationSender = v58;

      activationInstrumentationSender = val->_activationInstrumentationSender;
    }

    turnIdentifier9 = [v80 turnIdentifier];
    [(SASActivationInstrumentationSender *)activationInstrumentationSender instrumentTurnActivatedWithTurnId:turnIdentifier9 activationEventIdentifier:activationEventInstrumentationIdenifier];

    v61 = val->_activationInstrumentationSender;
    turnIdentifier10 = [v80 turnIdentifier];
    [(SASActivationInstrumentationSender *)v61 instrumentRequestLinkToUEIWithTurnId:turnIdentifier10 activationEventIdentifier:activationEventInstrumentationIdenifier];
  }

  v77 = SRUIFConstructLaunchContextForLaunchStarted();
  if ([turnCopy requestSource] == 23)
  {
    [turnCopy buttonDownTimestamp];
  }

  else if ([turnCopy requestSource] == 44)
  {
    [turnCopy computedActivationTime];
  }

  else
  {
    [turnCopy timestamp];
  }

  v76 = AFGetMachAbsoluteTimeFromTimeInterval();
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  instrumentationEvents = [turnCopy instrumentationEvents];
  v64 = [instrumentationEvents countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (v64)
  {
    v65 = *v89;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v89 != v65)
        {
          objc_enumerationMutation(instrumentationEvents);
        }

        v67 = *(*(&v88 + 1) + 8 * i);
        v68 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v69 = v68;
          _instrumentationTurnContext5 = [(AFUISiriSession *)val _instrumentationTurnContext];
          turnIdentifier11 = [_instrumentationTurnContext5 turnIdentifier];
          formattedText3 = [v67 formattedText];
          *buf = 136315906;
          v97 = "[AFUISiriSession _processInstrumentationForFinalOptionsAndGenerateNewTurn:]";
          v98 = 2112;
          v99 = v67;
          v100 = 2112;
          v101 = turnIdentifier11;
          v102 = 2112;
          v103 = formattedText3;
          _os_log_impl(&dword_241432000, v69, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
        }

        _instrumentationTurnContext6 = [(AFUISiriSession *)val _instrumentationTurnContext];
        [_instrumentationTurnContext6 emitInstrumentation:v67 machAbsoluteTime:mach_absolute_time()];
      }

      v64 = [instrumentationEvents countByEnumeratingWithState:&v88 objects:v95 count:16];
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

- (void)_startRequestWithFinalOptions:(id)options completion:(id)completion
{
  v80 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  speechRequestOptions = [optionsCopy speechRequestOptions];
  self->_lastAFSpeechEvent = [speechRequestOptions activationEvent];

  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [AFUISiriSession _startRequestWithFinalOptions:v10 completion:?];
  }

  if ([optionsCopy isVisualIntelligenceRequest])
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

  v12 = [(AFUISiriSession *)self _processInstrumentationForFinalOptionsAndGenerateNewTurn:optionsCopy];
  self->_activeRequestIsTypeToSiri = [optionsCopy isTypeToSiriRequest];
  if (_os_feature_enabled_impl())
  {
    [(AFUISiriSession *)self _updateModesHeuristicsForRequestOptions:optionsCopy];
  }

  [(AFUISiriSession *)self _setupConnectionIfNeeded];
  objc_initWeak(&location, self);
  if ([(AFUISiriSession *)self _shouldFetchActiveAccount])
  {
    activeAccount = [(SRUIFSiriSessionInfo *)self->_siriSessionInfo activeAccount];
    v14 = activeAccount == 0;

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

  requestInfo = [optionsCopy requestInfo];
  turnIdentifier = [requestInfo turnIdentifier];
  v18 = turnIdentifier == 0;

  if (v18)
  {
    _instrumentationTurnContext = [(AFUISiriSession *)self _instrumentationTurnContext];
    requestInfo2 = [optionsCopy requestInfo];
    turnIdentifier2 = [_instrumentationTurnContext turnIdentifier];
    [requestInfo2 setTurnIdentifier:turnIdentifier2];

    v22 = *v9;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      turnIdentifier3 = [_instrumentationTurnContext turnIdentifier];
      *buf = 136315650;
      v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
      v76 = 2112;
      v77 = turnIdentifier3;
      v78 = 2112;
      v79 = optionsCopy;
      _os_log_impl(&dword_241432000, v22, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Specified turn %@ to final options %@", buf, 0x20u);
    }
  }

  if ([optionsCopy requestSource] == 14 || objc_msgSend(optionsCopy, "requestSource") == 13)
  {
    requestInfo3 = [optionsCopy requestInfo];
    startLocalRequest = [requestInfo3 startLocalRequest];

    if (startLocalRequest)
    {
      v26 = *v9;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        startLocalRequest2 = [requestInfo3 startLocalRequest];
        *buf = 136315650;
        v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
        v76 = 2112;
        v77 = optionsCopy;
        v78 = 2112;
        v79 = startLocalRequest2;
        _os_log_impl(&dword_241432000, v26, OS_LOG_TYPE_DEFAULT, "%s #activation #carPlay activating requested direct action via Native Siri Kit. SASRequestOptions: %@, SAStartLocalRequest: %@", buf, 0x20u);
      }

      objc_copyWeak(&v70, &location);
      v68 = requestInfo3;
      v69 = completionCopy;
      SRUIFInvokeOnMainQueue();

      objc_destroyWeak(&v70);
    }

    else
    {
      legacyDirectActionIdentifier = [requestInfo3 legacyDirectActionIdentifier];

      if (legacyDirectActionIdentifier)
      {
        v29 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
          v76 = 2112;
          v77 = optionsCopy;
          _os_log_impl(&dword_241432000, v29, OS_LOG_TYPE_DEFAULT, "%s #activation #carPlay activating requested direct action via Legacy. SASRequestOptions: %@", buf, 0x16u);
        }

        directActionApplicationContext = [optionsCopy directActionApplicationContext];
        [(AFUISiriSession *)self _startLegacyDirectActionRequestWithInfo:requestInfo3 context:directActionApplicationContext completion:completionCopy];
      }

      else
      {
        bulletin = [optionsCopy bulletin];

        v38 = *v9;
        v39 = *v9;
        if (bulletin)
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v75 = "[AFUISiriSession _startRequestWithFinalOptions:completion:]";
            v76 = 2112;
            v77 = optionsCopy;
            _os_log_impl(&dword_241432000, v38, OS_LOG_TYPE_DEFAULT, "%s #activation #carPlay activating requested direct action with no direct action specified. SASRequestOptions: %@", buf, 0x16u);
          }

          bulletin2 = [optionsCopy bulletin];
          [(AFUISiriSession *)self _startRequestForReadoutOfBulletin:bulletin2];
        }

        else
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [AFUISiriSession _startRequestWithFinalOptions:completion:];
          }

          if (completionCopy)
          {
            v42 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"Unable to handle direct action request options" underlyingError:0];
            (*(completionCopy + 2))(completionCopy, v42);
          }
        }
      }
    }

    goto LABEL_42;
  }

  if ([optionsCopy requestSource] != 22)
  {
    if ([optionsCopy requestSource] == 12)
    {
      requestInfo4 = [optionsCopy requestInfo];
      speechRequestOptions2 = [requestInfo4 speechRequestOptions];

      if (speechRequestOptions2)
      {
        requestInfo5 = [optionsCopy requestInfo];
        speechRequestOptions3 = [requestInfo5 speechRequestOptions];
        -[AFUISiriSession _startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:](self, "_startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:", speechRequestOptions3, [optionsCopy isInitialBringUp], completionCopy);

        goto LABEL_42;
      }

      requestInfo6 = [optionsCopy requestInfo];

      if (requestInfo6)
      {
LABEL_58:
        requestInfo7 = [optionsCopy requestInfo];
        [(AFUISiriSession *)self _startRequestWithInfo:requestInfo7 completion:completionCopy];

        goto LABEL_42;
      }

LABEL_64:
      [(AFUISiriSession *)self _startSpeechRequestWithOptions:optionsCopy completion:completionCopy];
      goto LABEL_42;
    }

    if ([optionsCopy requestSource] == 15)
    {
      requestInfo8 = [optionsCopy requestInfo];

      if (requestInfo8)
      {
        goto LABEL_58;
      }

      text = [optionsCopy text];

      if (text)
      {
        text2 = [optionsCopy text];
        turnIdentifier4 = [v12 turnIdentifier];
        [(AFUISiriSession *)self _startRequestWithText:text2 turnIdentifier:turnIdentifier4 completion:completionCopy];

        goto LABEL_42;
      }

      speechFileURL = [optionsCopy speechFileURL];

      if (!speechFileURL)
      {
        if ([optionsCopy inputType] != 2)
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
      if ([optionsCopy requestSource] == 19 || objc_msgSend(optionsCopy, "requestSource") == 38 || objc_msgSend(optionsCopy, "requestSource") == 41 || objc_msgSend(optionsCopy, "requestSource") == 43 || objc_msgSend(optionsCopy, "requestSource") == 42)
      {
        requestInfo9 = [optionsCopy requestInfo];
        speechRequestOptions4 = [requestInfo9 speechRequestOptions];

        if (speechRequestOptions4)
        {
          requestInfo10 = [optionsCopy requestInfo];
          speechRequestOptions5 = [requestInfo10 speechRequestOptions];

          -[AFUISiriSession _startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:](self, "_startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:", speechRequestOptions5, [optionsCopy isInitialBringUp], completionCopy);
          goto LABEL_42;
        }

        requestInfo11 = [optionsCopy requestInfo];

        if (requestInfo11)
        {
          goto LABEL_58;
        }

        speechRequestOptions6 = [optionsCopy speechRequestOptions];

        if (!speechRequestOptions6)
        {
          continuityInfo = [optionsCopy continuityInfo];
          [(AFUISiriSession *)self _startContinuityRequestWithInfo:continuityInfo completion:completionCopy];

          goto LABEL_42;
        }

        goto LABEL_64;
      }

      if ([optionsCopy requestSource] == 35 || objc_msgSend(optionsCopy, "requestSource") == 40)
      {
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0);
        }

        goto LABEL_42;
      }

      if ([optionsCopy isPronunciationRequest])
      {
        pronunciationContext = [optionsCopy pronunciationContext];
        [(AFUISiriSession *)self _startSpeechPronunciationRequestWithContext:pronunciationContext options:optionsCopy completion:completionCopy];

        goto LABEL_42;
      }

      text3 = [optionsCopy text];

      if (text3)
      {
        [optionsCopy requestSource];
        if (SASRequestSourceIsVisualIntelligenceDirectInvocation())
        {
          text4 = [optionsCopy text];
          turnIdentifier5 = [v12 turnIdentifier];
          [(AFUISiriSession *)self _startVisualIntelligenceDirectInvocationRequestWithText:text4 turnIdentifier:turnIdentifier5 completion:completionCopy];
        }

        else
        {
          if ([optionsCopy requestSource] == 51)
          {
            text5 = [optionsCopy text];
            suggestionRequestType = [optionsCopy suggestionRequestType];
            turnIdentifier6 = [v12 turnIdentifier];
            [(AFUISiriSession *)self _startRequestWithSuggestionText:text5 suggestionRequestType:suggestionRequestType turnIdentifier:turnIdentifier6 completion:completionCopy];
          }

          else
          {
            text5 = [optionsCopy text];
            turnIdentifier6 = [v12 turnIdentifier];
            [(AFUISiriSession *)self _startRequestWithText:text5 turnIdentifier:turnIdentifier6 completion:completionCopy];
          }
        }

        goto LABEL_42;
      }

      speechFileURL2 = [optionsCopy speechFileURL];

      if (!speechFileURL2)
      {
        if ([optionsCopy inputType] != 2)
        {
          [optionsCopy requestSource];
          if (SASRequestSourceIsVisualIntelligenceDirectInvocation())
          {
            turnIdentifier7 = [v12 turnIdentifier];
            [(AFUISiriSession *)self _startVisualIntelligenceDirectInvocationRequestWith:turnIdentifier7 completion:completionCopy];
          }

          else if ([optionsCopy requestSource] == 48)
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

            if (completionCopy)
            {
              v67 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"Unexpected UI request options." underlyingError:0];
              (*(completionCopy + 2))(completionCopy, v67);
            }
          }

          goto LABEL_42;
        }

        goto LABEL_64;
      }
    }

    speechFileURL3 = [optionsCopy speechFileURL];
    [(AFUISiriSession *)self _startSpeechRequestWithSpeechFileAtURL:speechFileURL3 completion:completionCopy];

    goto LABEL_42;
  }

  requestInfo12 = [optionsCopy requestInfo];
  directActionApplicationContext2 = [optionsCopy directActionApplicationContext];
  [(AFUISiriSession *)self _startLegacyDirectActionRequestWithInfo:requestInfo12 context:directActionApplicationContext2 completion:completionCopy];

LABEL_42:
  if ([optionsCopy isFlexibleFollowupRequest])
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

- (void)_startRequestForReadoutOfBulletin:(id)bulletin
{
  v13 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[AFUISiriSession _startRequestForReadoutOfBulletin:]";
    v11 = 2112;
    v12 = bulletinCopy;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (bulletinCopy)
  {
    [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_102];
    [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:6];
    [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__AFUISiriSession__startRequestForReadoutOfBulletin___block_invoke_2;
    v7[3] = &unk_278CD59E0;
    v8 = bulletinCopy;
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

- (void)startRequestWithOptions:(id)options completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x277CEF340]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke;
  v37[3] = &unk_278CD57E0;
  v9 = completionCopy;
  v38 = v9;
  v10 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"Completion block of start request was dropped." underlyingError:0];
  v11 = [v8 initWithBlock:v37 defaultValue:v10];

  [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler discardCurrentSpeechGroup];
  -[AFUISiriSession setEyesFree:](self, "setEyesFree:", [optionsCopy isForBluetoothCar]);
  availabilityState = [objc_opt_class() availabilityState];
  if (availabilityState == 3)
  {
    if ([optionsCopy isVisualIntelligenceRequest])
    {
LABEL_13:
      prepareForNewSpeechRequest = [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler prepareForNewSpeechRequest];
      if ([optionsCopy isInitialBringUp] & 1) != 0 || objc_msgSend(optionsCopy, "inputType") == 1 || (-[AFUISiriSession delegate](self, "delegate"), (v22 = objc_claimAutoreleasedReturnValue()) == 0) || (v23 = objc_msgSend(optionsCopy, "isVisualIntelligenceRequest"), v22, (v23))
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke_124;
        v30[3] = &unk_278CD58D0;
        v31 = v11;
        [(AFUISiriSession *)self _startRequestWithFinalOptions:optionsCopy completion:v30];
      }

      else
      {
        dispatch_group_enter(prepareForNewSpeechRequest);
        objc_initWeak(buf, self);
        delegate = self->_delegate;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __54__AFUISiriSession_startRequestWithOptions_completion___block_invoke_119;
        v32[3] = &unk_278CD5B20;
        v33 = prepareForNewSpeechRequest;
        objc_copyWeak(&v36, buf);
        v34 = v11;
        selfCopy = self;
        [(AFUISiriSessionDelegate *)delegate siriSessionWillStartRequestWithOptions:optionsCopy completion:v32];

        objc_destroyWeak(&v36);
        objc_destroyWeak(buf);
      }

      goto LABEL_19;
    }

    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      [optionsCopy requestSource];
      v26 = SASRequestSourceGetName();
      *buf = 136315394;
      v40 = "[AFUISiriSession startRequestWithOptions:completion:]";
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_241432000, v25, OS_LOG_TYPE_DEFAULT, "%s Device doesn't have assets. Not starting the request for %@", buf, 0x16u);
    }

    v27 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"No assets." underlyingError:0];
    [v11 invokeWithValue:v27];

    mEMORY[0x277D61AA8] = [MEMORY[0x277D61AA8] sharedInstance];
    [mEMORY[0x277D61AA8] downloadAssets];

    [(AFUISiriSession *)self emitSiriWasUnavailableEventWithRequestOptions:optionsCopy];
  }

  else
  {
    if (availabilityState != 2)
    {
      if (availabilityState == 1 && [optionsCopy requestSource] != 27 && (objc_msgSend(optionsCopy, "isVisualIntelligenceRequest") & 1) == 0)
      {
        v13 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          [optionsCopy requestSource];
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
      [optionsCopy requestSource];
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

- (void)stopRequestWithOptions:(id)options
{
  speechRequestHandler = self->_speechRequestHandler;
  v4 = [(AFUISiriSession *)self _preparedSpeechRequestWithRequestOptions:options];
  [(SRUIFSpeechRequestHandler *)speechRequestHandler stopSpeechRequestWithOptions:v4];
}

- (void)updateRequestOptions:(id)options
{
  speechRequestHandler = self->_speechRequestHandler;
  v4 = [(AFUISiriSession *)self _preparedSpeechRequestWithRequestOptions:options];
  [(SRUIFSpeechRequestHandler *)speechRequestHandler updateSpeechRequestOptions:v4];
}

- (void)assistantConnectionRequestWillStart:(id)start
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

    _connection = [(AFUISiriSession *)self _connection];
    [_connection setModesConfiguration:self->_modesConfiguration];
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

- (id)safeWrapResponseCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_132;
  }

  v4 = _Block_copy(completionCopy);

  return v4;
}

- (id)_setRefIdForAllViewsInAddViews:(id)views
{
  v22 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  refId = [viewsCopy refId];
  if (refId)
  {
    v5 = MEMORY[0x277CBEB18];
    views = [viewsCopy views];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(views, "count")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    views2 = [viewsCopy views];
    v9 = [views2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(views2);
          }

          dictionary = [*(*(&v17 + 1) + 8 * i) dictionary];
          [dictionary setObject:refId forKey:@"refId"];
          [v7 addObject:dictionary];
        }

        v10 = [views2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    dictionary2 = [viewsCopy dictionary];
    [dictionary2 setObject:v7 forKey:*MEMORY[0x277D48B00]];
    v15 = [objc_alloc(MEMORY[0x277D479E8]) initWithDictionary:dictionary2];
  }

  else
  {
    v15 = viewsCopy;
  }

  return v15;
}

- (void)assistantConnection:(id)connection receivedCommand:(id)command completion:(id)completion
{
  v56 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  commandCopy = command;
  completionCopy = completion;
  encodedClassName = [commandCopy encodedClassName];
  v12 = [(AFUISiriSession *)self safeWrapResponseCompletion:completionCopy];

  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    aceId = [commandCopy aceId];
    *buf = 136315650;
    v51 = "[AFUISiriSession assistantConnection:receivedCommand:completion:]";
    v52 = 2112;
    v53 = encodedClassName;
    v54 = 2112;
    v55 = aceId;
    _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s Received Command: %@ aceId: %@", buf, 0x20u);
  }

  visualIntelligenceCameraDelegate = [(AFUISiriSession *)self visualIntelligenceCameraDelegate];
  [visualIntelligenceCameraDelegate siriWillPresentResult];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = commandCopy;
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

  af_dialogPhase = [v25 af_dialogPhase];
  isPossiblyPartOfMultiTurnRequest = [af_dialogPhase isPossiblyPartOfMultiTurnRequest];
  if (isPossiblyPartOfMultiTurnRequest)
  {
    v28 = *v13;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[AFUISiriSession assistantConnection:receivedCommand:completion:]";
      v52 = 2112;
      v53 = af_dialogPhase;
      v29 = "%s %@ may be a part of a multi turn request.";
LABEL_18:
      _os_log_impl(&dword_241432000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
    }
  }

  else
  {
    if (([af_dialogPhase isCompletionDialogPhase] & 1) == 0 && (objc_msgSend(af_dialogPhase, "isErrorDialogPhase") & 1) == 0 && !objc_msgSend(af_dialogPhase, "isConfirmedDialogPhase"))
    {
      goto LABEL_20;
    }

    v28 = *v13;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[AFUISiriSession assistantConnection:receivedCommand:completion:]";
      v52 = 2112;
      v53 = af_dialogPhase;
      v29 = "%s %@ indicates end of a multi turn request.";
      goto LABEL_18;
    }
  }

  _connection = [(AFUISiriSession *)self _connection];
  [_connection adviseSessionArbiterToContinueWithPreviousWinner:isPossiblyPartOfMultiTurnRequest];

LABEL_20:
  if ([v25 immersiveExperience])
  {
    WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
    [WeakRetained siriSessionImmersiveExperienceRequested];
  }

LABEL_23:
  sruif_usefulUserResultType = [commandCopy sruif_usefulUserResultType];
  if (sruif_usefulUserResultType)
  {
    _connection2 = [(AFUISiriSession *)self _connection];
    [_connection2 willPresentUsefulUserResultWithType:sruif_usefulUserResultType forCommand:commandCopy];
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __66__AFUISiriSession_assistantConnection_receivedCommand_completion___block_invoke;
  v48[3] = &unk_278CD59E0;
  v34 = commandCopy;
  v49 = v34;
  [(AFUISiriSession *)self _performBlockWithDelegate:v48];
  if ([encodedClassName isEqualToString:*MEMORY[0x277D48BC0]])
  {
    v35 = objc_loadWeakRetained(&self->_localDelegate);
    [v35 siriSessionDidReceiveDelayedActionCancelCommand:v34 completion:v12];
  }

  else if ([encodedClassName isEqualToString:*MEMORY[0x277D48BC8]])
  {
    v36 = objc_loadWeakRetained(&self->_localDelegate);
    [v36 siriSessionDidReceiveDelayedActionCommand:v34 completion:v12];
  }

  else if ([encodedClassName isEqualToString:*MEMORY[0x277D48D30]])
  {
    v37 = objc_loadWeakRetained(&self->_localDelegate);
    [v37 siriSessionDidReceiveTakeScreenshotCommand:v34 completion:v12];
  }

  else if ([encodedClassName isEqualToString:*MEMORY[0x277D47D28]])
  {
    v38 = objc_loadWeakRetained(&self->_localDelegate);
    [v38 siriSessionDidReceiveStartScreenRecordingCommand:v34 completion:v12];
  }

  else if ([encodedClassName isEqualToString:*MEMORY[0x277D47D30]])
  {
    v39 = objc_loadWeakRetained(&self->_localDelegate);
    [v39 siriSessionDidReceiveStopScreenRecordingCommand:v34 completion:v12];
  }

  else if ([encodedClassName isEqualToString:*MEMORY[0x277D48CC8]])
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
    v42 = encodedClassName;
    v43 = v25;
    v46 = v12;
    v44 = v34;
    selfCopy = self;
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

- (void)_handleSuppressDelayFeedbackCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  stateFeedbackManager = self->_stateFeedbackManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__AFUISiriSession__handleSuppressDelayFeedbackCommand_completion___block_invoke;
  v11[3] = &unk_278CD5BB8;
  v12 = commandCopy;
  v13 = completionCopy;
  v9 = commandCopy;
  v10 = completionCopy;
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

- (void)_handlePlayAudioCommand:(id)command completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
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
    v14 = commandCopy;
    v15 = completionCopy;
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
    aceId = [commandCopy aceId];
    [v11 setRefId:aceId];

    (*(completionCopy + 2))(completionCopy, v11);
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

- (void)_performPunchoutCommand:(id)command delegate:(id)delegate completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  delegateCopy = delegate;
  completionCopy = completion;
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
    v25 = completionCopy;
    v24 = commandCopy;
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

    [delegateCopy siriSessionDidReceiveAppPunchOutCommand:commandCopy completion:completionCopy];
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

- (void)assistantConnection:(id)connection startUIRequestWithText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__AFUISiriSession_assistantConnection_startUIRequestWithText_completion___block_invoke;
  v11[3] = &unk_278CD5C30;
  v12 = textCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = textCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v11];
}

- (void)assistantConnection:(id)connection replayAll:(unint64_t)all with:(id)with
{
  withCopy = with;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__AFUISiriSession_assistantConnection_replayAll_with___block_invoke;
  v9[3] = &unk_278CD5C58;
  v10 = withCopy;
  allCopy = all;
  v8 = withCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
}

- (void)assistantConnection:(id)connection replayAt:(unint64_t)at with:(id)with
{
  withCopy = with;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__AFUISiriSession_assistantConnection_replayAt_with___block_invoke;
  v9[3] = &unk_278CD5C58;
  v10 = withCopy;
  atCopy = at;
  v8 = withCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
}

- (void)assistantConnection:(id)connection setReplayEnabled:(BOOL)enabled
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__AFUISiriSession_assistantConnection_setReplayEnabled___block_invoke;
  v4[3] = &__block_descriptor_33_e35_v16__0___AFUISiriSessionDelegate__8l;
  enabledCopy = enabled;
  [(AFUISiriSession *)self _performBlockWithDelegate:v4];
}

- (void)assistantConnection:(id)connection setReplayOverridePath:(id)path
{
  pathCopy = path;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__AFUISiriSession_assistantConnection_setReplayOverridePath___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = pathCopy;
  v6 = pathCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)_requestDidFinishWithError:(id)error
{
  errorCopy = error;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__AFUISiriSession__requestDidFinishWithError___block_invoke;
  v9[3] = &unk_278CD59E0;
  v5 = errorCopy;
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

- (void)assistantConnection:(id)connection didFinishAcousticIDRequestWithSuccess:(BOOL)success
{
  successCopy = success;
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (successCopy)
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
  if (!successCopy)
  {
    [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:7];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__AFUISiriSession_assistantConnection_didFinishAcousticIDRequestWithSuccess___block_invoke;
  v9[3] = &__block_descriptor_33_e35_v16__0___AFUISiriSessionDelegate__8l;
  v10 = successCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
}

- (void)assistantConnection:(id)connection requestFailedWithError:(id)error requestClass:(id)class
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  classCopy = class;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[AFUISiriSession assistantConnection:requestFailedWithError:requestClass:]";
    v12 = 2112;
    v13 = errorCopy;
    v14 = 2112;
    v15 = classCopy;
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s error:%@ requestClass:%@", &v10, 0x20u);
  }

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:7];
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
  [(AFUISiriSession *)self _requestDidFinishWithError:errorCopy];
}

- (void)assistantConnectionRequestFinished:(id)finished
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

- (void)assistantConnection:(id)connection openURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__AFUISiriSession_assistantConnection_openURL_completion___block_invoke;
  v11[3] = &unk_278CD5C30;
  v12 = lCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = lCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v11];
}

- (void)assistantConnection:(id)connection willProcessStartPlayback:(int64_t)playback intent:(id)intent completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  intentCopy = intent;
  completionCopy = completion;
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

  completionCopy[2](completionCopy, v15 & 1, 1);
}

- (void)assistantConnection:(id)connection startPlaybackDidFail:(int64_t)fail
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

- (void)assistantConnection:(id)connection didChangeAudioSessionID:(unsigned int)d
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__AFUISiriSession_assistantConnection_didChangeAudioSessionID___block_invoke;
  v4[3] = &__block_descriptor_36_e35_v16__0___AFUISiriSessionDelegate__8l;
  dCopy = d;
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

- (void)assistantConnection:(id)connection dismissAssistantWithReason:(int64_t)reason
{
  if ((reason - 1) > 5)
  {
    v6 = 32;
  }

  else
  {
    v6 = qword_2414945B8[reason - 1];
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

- (void)assistantConnection:(id)connection wantsToCacheImage:(id)image
{
  imageCopy = image;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__AFUISiriSession_assistantConnection_wantsToCacheImage___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = imageCopy;
  v6 = imageCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnection:(id)connection extensionRequestWillStartForApplication:(id)application
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _authenticationUIPresentedCallBack, @"com.apple.LocalAuthentication.ui.presented", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = getOptionalPKDarwinNotificationEventInAppPresented();
  CFNotificationCenterAddObserver(v6, self, _authenticationUIPresentedCallBack, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)assistantConnection:(id)connection extensionRequestFinishedForApplication:(id)application error:(id)error
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.LocalAuthentication.ui.presented", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = getOptionalPKDarwinNotificationEventInAppPresented();
  CFNotificationCenterRemoveObserver(v7, self, v8, 0);
}

- (void)assistantConnection:(id)connection didLoadAssistant:(id)assistant
{
  version = [assistant version];
  [(AFUISiriSession *)self _updateAssistantVersion:version];
}

- (void)assistantConnection:(id)connection willProcessAppLaunchWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSession:self willProcessAppLaunchWithBundleIdentifier:identifierCopy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__AFUISiriSession_assistantConnection_willProcessAppLaunchWithBundleIdentifier___block_invoke;
  v8[3] = &unk_278CD59E0;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v8];
}

- (void)assistantConnection:(id)connection appLaunchFailedWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSession:self failedToLaunchAppWithBundleIdentifier:identifierCopy];
}

- (void)_updateAssistantVersion:(id)version
{
  v4 = [(SRUIFSiriSessionInfo *)self->_siriSessionInfo setAssistantVersionAndGenerateLightweightInfo:version];
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

- (void)assistantConnection:(id)connection didUpdateResponseMode:(id)mode
{
  v11 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  if ([MEMORY[0x277CEF2A8] isStateFeedbackEnabled])
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[AFUISiriSession assistantConnection:didUpdateResponseMode:]";
      v9 = 2112;
      v10 = modeCopy;
      _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s client recieved mode update: %@", &v7, 0x16u);
    }

    [(SRUIFStateFeedbackManager *)self->_stateFeedbackManager updateResponseMode:modeCopy];
  }
}

- (void)assistantConnection:(id)connection speechRecordingPerformTwoShotPromptWithType:(int64_t)type completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x277CEF340]);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __94__AFUISiriSession_assistantConnection_speechRecordingPerformTwoShotPromptWithType_completion___block_invoke;
  v20 = &unk_278CD57E0;
  v9 = completionCopy;
  v21 = v9;
  v10 = [v8 initWithBlock:&v17];
  v11 = *MEMORY[0x277CEF098];
  v12 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (type == 2)
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
      typeCopy = type;
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #phatic 1 Fail: type = %tu", buf, 0x16u);
    }

    v13 = MEMORY[0x277CEF2A0];
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v14 initWithFormat:@"Unsupported Two-Shot prompt type %ld.", type, v17, v18, v19, v20];
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

- (void)_playPhaticWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
  selfCopy = self;
  v14 = completionCopy;
  v6 = completionCopy;
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

- (void)assistantConnectionSpeechRecordingWillBegin:(id)begin
{
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSessionRecordingPreparationHasFinished:self];

  speechRequestHandler = self->_speechRequestHandler;

  [(SRUIFSpeechRequestHandler *)speechRequestHandler speechRecordingWillBegin];
}

- (void)assistantConnection:(id)connection speechRecordingDidBeginOnAVRecordRoute:(id)route audioSessionID:(unsigned int)d
{
  routeCopy = route;
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__AFUISiriSession_assistantConnection_speechRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke;
  v12[3] = &unk_278CD59E0;
  v13 = routeCopy;
  v8 = routeCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v12];
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSession:self speechRecordingDidBeginOnAVRecordRoute:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__AFUISiriSession_assistantConnection_speechRecordingDidBeginOnAVRecordRoute_audioSessionID___block_invoke_2;
  v10[3] = &__block_descriptor_36_e35_v16__0___AFUISiriSessionDelegate__8l;
  dCopy = d;
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

- (void)assistantConnection:(id)connection speechRecordingDidChangeAVRecordRoute:(id)route
{
  routeCopy = route;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__AFUISiriSession_assistantConnection_speechRecordingDidChangeAVRecordRoute___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = routeCopy;
  v6 = routeCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnectionDidChangeAudioRecordingPower:(id)power
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

- (void)assistantConnectionSpeechRecordingDidEnd:(id)end
{
  visualIntelligenceCameraDelegate = [(AFUISiriSession *)self visualIntelligenceCameraDelegate];
  [visualIntelligenceCameraDelegate siriWillProcessRequest];

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:2];

  [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_180];
}

- (void)assistantConnectionUpdatedSpeechEndEstimate:(id)estimate speechEndEstimate:(unint64_t)endEstimate
{
  v12 = *MEMORY[0x277D85DE8];
  localDataSource = [(AFUISiriSession *)self localDataSource];
  getUIViewModeIsUIFreeForCurrentRequest = [localDataSource getUIViewModeIsUIFreeForCurrentRequest];

  if (getUIViewModeIsUIFreeForCurrentRequest)
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

    [(SRUIFStateFeedbackManager *)stateFeedbackManager didUpdateEstimatedEndOfUserInput:endEstimate];
  }
}

- (void)assistantConnectionSpeechRecordingDidCancel:(id)cancel
{
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:3];

  [(AFUISiriSession *)self _performBlockWithDelegate:&__block_literal_global_182];
}

- (void)assistantConnection:(id)connection speechRecordingDidFail:(id)fail
{
  failCopy = fail;
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  [WeakRetained siriSessionRecordingPreparationHasFinished:self];

  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__AFUISiriSession_assistantConnection_speechRecordingDidFail___block_invoke;
  v8[3] = &unk_278CD59E0;
  v9 = failCopy;
  v7 = failCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v8];
  [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler speechRecordingDidFail];
}

- (void)assistantConnection:(id)connection speechRecognized:(id)recognized
{
  recognizedCopy = recognized;
  kdebug_trace();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__AFUISiriSession_assistantConnection_speechRecognized___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = recognizedCopy;
  v6 = recognizedCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnection:(id)connection recognizedAdditionalSpeechInterpretation:(id)interpretation refId:(id)id
{
  interpretationCopy = interpretation;
  idCopy = id;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__AFUISiriSession_assistantConnection_recognizedAdditionalSpeechInterpretation_refId___block_invoke;
  v11[3] = &unk_278CD5D80;
  v12 = interpretationCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = interpretationCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v11];
}

- (void)assistantConnection:(id)connection recognitionUpdateWithPhrases:(id)phrases utterances:(id)utterances refId:(id)id
{
  phrasesCopy = phrases;
  utterancesCopy = utterances;
  idCopy = id;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__AFUISiriSession_assistantConnection_recognitionUpdateWithPhrases_utterances_refId___block_invoke;
  v15[3] = &unk_278CD5DA8;
  v16 = phrasesCopy;
  v17 = utterancesCopy;
  v18 = idCopy;
  v12 = idCopy;
  v13 = utterancesCopy;
  v14 = phrasesCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v15];
}

- (void)assistantConnection:(id)connection speechRecognizedPartialResult:(id)result
{
  resultCopy = result;
  kdebug_trace();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__AFUISiriSession_assistantConnection_speechRecognizedPartialResult___block_invoke;
  v7[3] = &unk_278CD59E0;
  v8 = resultCopy;
  v6 = resultCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v7];
}

- (void)assistantConnectionAudioSessionDidBeginInterruption:(id)interruption userInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[AFUISiriSession assistantConnectionAudioSessionDidBeginInterruption:userInfo:]";
    v14 = 2114;
    v15 = infoCopy;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #audioInterruption audio session interruption began userInfo: %{public}@", buf, 0x16u);
  }

  v7 = mach_absolute_time();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__AFUISiriSession_assistantConnectionAudioSessionDidBeginInterruption_userInfo___block_invoke;
  v9[3] = &unk_278CD5C58;
  v10 = infoCopy;
  v11 = v7;
  v8 = infoCopy;
  [(AFUISiriSession *)self _performBlockWithDelegate:v9];
}

- (void)assistantConnectionAudioSessionDidEndInterruption:(id)interruption shouldResume:(BOOL)resume userInfo:(id)info
{
  resumeCopy = resume;
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[AFUISiriSession assistantConnectionAudioSessionDidEndInterruption:shouldResume:userInfo:]";
    v10 = 1026;
    v11 = resumeCopy;
    v12 = 2114;
    v13 = infoCopy;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #audioInterruption audio session interruption ended shouldResume: %{public, BOOL}d userInfo: %{public}@", &v8, 0x1Cu);
  }
}

- (void)_startRequestWithBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_visualIntelligenceCameraDelegate);
  [WeakRetained siriWillProcessRequest];

  [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler nonSpeechRequestWillBegin];
  v5 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v5 = blockCopy;
  }
}

- (id)_preparedSpeechRequestWithRequestOptions:(id)options
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  speechRequestOptions = [optionsCopy speechRequestOptions];
  if (speechRequestOptions)
  {
    speechRequestOptions2 = [optionsCopy speechRequestOptions];
    v7 = [speechRequestOptions2 copy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CEF498]);
  }

  requestSource = [optionsCopy requestSource];
  v9 = 0;
  switch(requestSource)
  {
    case 1:
    case 6:
    case 7:
      v9 = requestSource;
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
      activationEvent = [v7 activationEvent];
      if (activationEvent)
      {
        v9 = activationEvent;
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
  serverCommandId = [optionsCopy serverCommandId];
  [v7 setServerCommandId:serverCommandId];

  [optionsCopy timestamp];
  [v7 setActivationEventTime:?];
  [optionsCopy buttonDownTimestamp];
  [v7 setHomeButtonDownEventTime:?];
  [optionsCopy expectedTimestamp];
  [v7 setExpectedActivationEventTime:?];
  [v7 setIsInitialBringUp:{objc_msgSend(optionsCopy, "isInitialBringUp")}];
  activationDeviceIdentifier = [optionsCopy activationDeviceIdentifier];
  [v7 setActivationDeviceIdentifier:activationDeviceIdentifier];

  if ([optionsCopy useAutomaticEndpointing])
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  [v7 setEndpointerOperationMode:v13];
  [v7 setUseStreamingDictation:{objc_msgSend(optionsCopy, "useStreamingDictation")}];
  homeButtonUpFromBeep = [optionsCopy homeButtonUpFromBeep];
  [v7 setHomeButtonUpFromBeep:homeButtonUpFromBeep];

  [v7 setAcousticIdEnabled:{objc_msgSend(optionsCopy, "acousticIdEnabled")}];
  [v7 setReleaseAudioSessionOnRecordingCompletion:{objc_msgSend(optionsCopy, "releaseAudioSessionOnRecordingCompletion")}];
  [v7 setSpeechSynthesisRecord:self->_lastSpeechSynthesisRecord];
  [v7 setIsSystemApertureEnabled:AFUIIsDeviceSystemApertureEnabled()];
  presentationMode = [optionsCopy presentationMode];
  if (!presentationMode)
  {
    requestInfo = [optionsCopy requestInfo];
    speechRequestOptions3 = [requestInfo speechRequestOptions];
    presentationMode = [speechRequestOptions3 presentationMode];
  }

  [v7 setPresentationMode:presentationMode];
  WeakRetained = objc_loadWeakRetained(&self->_localDataSource);
  [v7 setIsInAmbient:{objc_msgSend(WeakRetained, "isAmbientPresented:", self)}];

  v19 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    isInAmbient = [v7 isInAmbient];
    v22 = "NO";
    if (isInAmbient)
    {
      v22 = "YES";
    }

    v27 = 136315394;
    v28 = "[AFUISiriSession _preparedSpeechRequestWithRequestOptions:]";
    v29 = 2080;
    v30 = v22;
    _os_log_impl(&dword_241432000, v20, OS_LOG_TYPE_DEFAULT, "%s #ambientRF setIsInAmbient: %s", &v27, 0x16u);
  }

  startRecordingSoundId = [optionsCopy startRecordingSoundId];

  if (startRecordingSoundId)
  {
    startRecordingSoundId2 = [optionsCopy startRecordingSoundId];
    v25 = [(AFUISiriSession *)self _startingRecordingAlertPolicyForSoundID:startRecordingSoundId2];

    [v7 setRecordingAlertPolicy:v25];
  }

  return v7;
}

- (id)_startingRecordingAlertPolicyForSoundID:(id)d
{
  if ([d isEqualToString:*MEMORY[0x277D48D18]])
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

- (void)_sendContextWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__AFUISiriSession__sendContextWithCompletion___block_invoke;
  v6[3] = &unk_278CD5E40;
  v5 = completionCopy;
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

- (void)_startSpeechRequestWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v9 = [(AFUISiriSession *)self _preparedSpeechRequestWithRequestOptions:optionsCopy];
  isInitialBringUp = [optionsCopy isInitialBringUp];

  [(AFUISiriSession *)self _startSpeechRequestWithSpeechRequestOptions:v9 isInitialBringUp:isInitialBringUp completion:completionCopy];
}

- (void)_startSpeechRequestWithSpeechRequestOptions:(id)options isInitialBringUp:(BOOL)up completion:(id)completion
{
  upCopy = up;
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_localDelegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_loadWeakRetained(&self->_localDelegate);
    headphonesAuthenticated = [v11 headphonesAuthenticated];
  }

  else
  {
    headphonesAuthenticated = 0;
  }

  v13 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithBool:headphonesAuthenticated];
    v19 = 136315394;
    v20 = "[AFUISiriSession _startSpeechRequestWithSpeechRequestOptions:isInitialBringUp:completion:]";
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s 🎧 setIsHeadphonesAuthenticated: %@", &v19, 0x16u);
  }

  [optionsCopy setIsHeadphonesAuthenticated:headphonesAuthenticated];
  speechRequestHandler = self->_speechRequestHandler;
  _instrumentationTurnContext = [(AFUISiriSession *)self _instrumentationTurnContext];
  [(SRUIFSpeechRequestHandler *)speechRequestHandler startSpeechRequestWithSpeechRequestOptions:optionsCopy instrumentationTurn:_instrumentationTurnContext isInitialBringUp:upCopy completion:completionCopy];
}

- (void)_startSpeechPronunciationRequestWithContext:(id)context options:(id)options completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v9 = [(AFUISiriSession *)self _preparedSpeechRequestWithRequestOptions:options];
  _connection = [(AFUISiriSession *)self _connection];
  [_connection startSpeechPronunciationRequestWithOptions:v9 pronunciationContext:contextCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)cancelRequest
{
  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
  speechRequestHandler = self->_speechRequestHandler;

  [(SRUIFSpeechRequestHandler *)speechRequestHandler cancelSpeechRequest];
}

- (void)requestDidPresentViewForUICommand:(id)command
{
  v27 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = commandCopy;
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
  if (AFIsInternalInstall() && [commandCopy sruif_usefulUserResultType])
  {
    kdebug_trace();
    deserializationDuration = [commandCopy deserializationDuration];
    if (deserializationDuration)
    {
      v8 = objc_alloc(MEMORY[0x277CEF300]);
      aceId = [commandCopy aceId];
      v10 = [v8 initWithOriginalCommandId:aceId category:6 duration:deserializationDuration];

      _connection = [(AFUISiriSession *)self _connection];
      [_connection recordUIMetrics:v10];
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
      _instrumentationTurnContext = [(AFUISiriSession *)self _instrumentationTurnContext];
      turnIdentifier = [_instrumentationTurnContext turnIdentifier];
      formattedText = [v5 formattedText];
      v19 = 136315906;
      v20 = "[AFUISiriSession requestDidPresentViewForUICommand:]";
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = turnIdentifier;
      v25 = 2112;
      v26 = formattedText;
      _os_log_impl(&dword_241432000, v14, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", &v19, 0x2Au);
    }

    _instrumentationTurnContext2 = [(AFUISiriSession *)self _instrumentationTurnContext];
    [_instrumentationTurnContext2 emitInstrumentation:v5 machAbsoluteTime:mach_absolute_time()];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)requestDidPresentViewForErrorCommand:(id)command
{
  self->_currentRequestDidPresent = 1;
  [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:7];

  [(AFUISiriSession *)self _cancelTypeToSiriLatencyTimerIfNeeded];
}

- (void)recordUIMetrics:(id)metrics
{
  metricsCopy = metrics;
  underlyingConnection = [(AFUISiriSession *)self underlyingConnection];
  [underlyingConnection recordUIMetrics:metricsCopy];
}

- (void)recordRequestMetricEvent:(id)event withTimestamp:(double)timestamp
{
  eventCopy = event;
  underlyingConnection = [(AFUISiriSession *)self underlyingConnection];
  [underlyingConnection recordRequestMetric:eventCopy withTimestamp:timestamp];
}

- (void)recordMetricsContext:(id)context forDisambiguatedAppWIthBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contextCopy = context;
  underlyingConnection = [(AFUISiriSession *)self underlyingConnection];
  [underlyingConnection sendFeedbackToAppPreferencesPredictorForMetricsContext:contextCopy selectedBundleId:identifierCopy];
}

- (void)speechSynthesisDidUpdatePowerLevelTo:(float)to
{
  localDelegate = [(AFUISiriSession *)self localDelegate];
  *&v4 = to;
  [localDelegate siriSessionAudioOutputDidChangePowerLevel:v4];
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

- (void)fetchAttendingState:(id)state
{
  stateCopy = state;
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    isAttending = [(SRUIFUIBridgeClient *)self->_uiBridgeClient isAttending];
  }

  else
  {
    isAttending = 0;
  }

  stateCopy[2](stateCopy, isAttending);
}

- (void)_startLegacyDirectActionRequestWithInfo:(id)info context:(id)context completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[AFUISiriSession _startLegacyDirectActionRequestWithInfo:context:completion:]";
    v22 = 2112;
    v23 = infoCopy;
    v24 = 2112;
    v25 = contextCopy;
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation requestInfo: %@, context: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__AFUISiriSession__startLegacyDirectActionRequestWithInfo_context_completion___block_invoke;
  v15[3] = &unk_278CD5E68;
  objc_copyWeak(&v19, buf);
  v16 = contextCopy;
  v17 = infoCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = infoCopy;
  v14 = contextCopy;
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

- (void)_startContinuityRequestWithInfo:(id)info completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[AFUISiriSession _startContinuityRequestWithInfo:completion:]";
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__AFUISiriSession__startContinuityRequestWithInfo_completion___block_invoke;
  v11[3] = &unk_278CD5AD0;
  objc_copyWeak(&v14, buf);
  v9 = infoCopy;
  v12 = v9;
  v10 = completionCopy;
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

- (void)_startRequestWithInfo:(id)info completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[AFUISiriSession _startRequestWithInfo:completion:]";
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__AFUISiriSession__startRequestWithInfo_completion___block_invoke;
  v11[3] = &unk_278CD5AD0;
  objc_copyWeak(&v14, buf);
  v9 = infoCopy;
  v12 = v9;
  v10 = completionCopy;
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

- (void)_requestStartedWithInfo:(id)info
{
  if ([info activationEvent] == 10)
  {
    stateHandler = self->_stateHandler;

    [(SRUIFSiriSessionStateHandler *)stateHandler performTransitionForEvent:16];
  }
}

- (void)_startRequestWithText:(id)text turnIdentifier:(id)identifier completion:(id)completion
{
  textCopy = text;
  identifierCopy = identifier;
  completionCopy = completion;
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
  v11 = identifierCopy;
  v15 = v11;
  v12 = textCopy;
  v16 = v12;
  objc_copyWeak(&v18, &location);
  v13 = completionCopy;
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

- (void)_startRequestWithSuggestionText:(id)text suggestionRequestType:(int64_t)type turnIdentifier:(id)identifier completion:(id)completion
{
  textCopy = text;
  identifierCopy = identifier;
  completionCopy = completion;
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
  v20[1] = type;
  v13 = identifierCopy;
  v17 = v13;
  v14 = textCopy;
  v18 = v14;
  objc_copyWeak(v20, &location);
  v15 = completionCopy;
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

- (void)startCorrectedRequestWithText:(id)text correctionIdentifier:(id)identifier userSelectionResults:(id)results turnIdentifier:(id)turnIdentifier machAbsoluteTime:(double)time
{
  v61 = *MEMORY[0x277D85DE8];
  textCopy = text;
  identifierCopy = identifier;
  resultsCopy = results;
  turnIdentifierCopy = turnIdentifier;
  objc_initWeak(&location, self);
  v15 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:turnIdentifierCopy];
  v16 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    turnIdentifier = [v15 turnIdentifier];
    *buf = 136315650;
    v54 = "[AFUISiriSession startCorrectedRequestWithText:correctionIdentifier:userSelectionResults:turnIdentifier:machAbsoluteTime:]";
    v55 = 2112;
    v56 = turnIdentifier;
    v57 = 2112;
    v58 = turnIdentifierCopy;
    _os_log_impl(&dword_241432000, v16, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", buf, 0x20u);
  }

  [(AFUISiriSession *)self _setInstrumentationTurnContext:v15];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __123__AFUISiriSession_startCorrectedRequestWithText_correctionIdentifier_userSelectionResults_turnIdentifier_machAbsoluteTime___block_invoke;
  v46[3] = &unk_278CD5EE0;
  objc_copyWeak(&v51, &location);
  v18 = textCopy;
  v47 = v18;
  v39 = identifierCopy;
  v48 = v39;
  v40 = resultsCopy;
  v49 = v40;
  v41 = v15;
  v50 = v41;
  [(AFUISiriSession *)self _startRequestWithBlock:v46];
  v19 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v19 setInvocationSource:12];
  localDataSource = [(AFUISiriSession *)self localDataSource];
  v21 = [localDataSource lockStateForSiriSession:self];

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
      _instrumentationTurnContext = [(AFUISiriSession *)self _instrumentationTurnContext];
      turnIdentifier2 = [_instrumentationTurnContext turnIdentifier];
      formattedText = [v26 formattedText];
      *buf = 136315906;
      v54 = "[AFUISiriSession startCorrectedRequestWithText:correctionIdentifier:userSelectionResults:turnIdentifier:machAbsoluteTime:]";
      v55 = 2112;
      v56 = v26;
      v57 = 2112;
      v58 = turnIdentifier2;
      v59 = 2112;
      v60 = formattedText;
      _os_log_impl(&dword_241432000, v27, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
    }

    _instrumentationTurnContext2 = [(AFUISiriSession *)self _instrumentationTurnContext];
    [_instrumentationTurnContext2 emitInstrumentation:v26 machAbsoluteTime:mach_absolute_time()];
  }

  v32 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    _instrumentationTurnContext3 = [(AFUISiriSession *)self _instrumentationTurnContext];
    turnIdentifier3 = [_instrumentationTurnContext3 turnIdentifier];
    formattedText2 = [v19 formattedText];
    *buf = 136315906;
    v54 = "[AFUISiriSession startCorrectedRequestWithText:correctionIdentifier:userSelectionResults:turnIdentifier:machAbsoluteTime:]";
    v55 = 2112;
    v56 = v19;
    v57 = 2112;
    v58 = turnIdentifier3;
    v59 = 2112;
    v60 = formattedText2;
    _os_log_impl(&dword_241432000, v32, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@ in turn %@: \n%@", buf, 0x2Au);
  }

  _instrumentationTurnContext4 = [(AFUISiriSession *)self _instrumentationTurnContext];
  [_instrumentationTurnContext4 emitInstrumentation:v19 machAbsoluteTime:mach_absolute_time()];

  v37 = SRUIFConstructLaunchContextForLaunchStarted();
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __123__AFUISiriSession_startCorrectedRequestWithText_correctionIdentifier_userSelectionResults_turnIdentifier_machAbsoluteTime___block_invoke_211;
  v43[3] = &unk_278CD5F08;
  objc_copyWeak(v45, &location);
  v38 = v37;
  v44 = v38;
  v45[1] = *&time;
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

- (void)resultDidChangeForAceCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__AFUISiriSession_resultDidChangeForAceCommand_completion___block_invoke;
  v10[3] = &unk_278CD5C30;
  v11 = commandCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = commandCopy;
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
  _connection = [(AFUISiriSession *)self _connection];
  [_connection telephonyRequestCompleted];
}

- (void)setApplicationContextForDirectAction:(BOOL)action
{
  actionCopy = action;
  if (action)
  {
    v13 = 0;
  }

  else
  {
    localDataSource = [(AFUISiriSession *)self localDataSource];
    v13 = [localDataSource contextAppInfosForSiriSession:self];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  localDataSource2 = [(AFUISiriSession *)self localDataSource];
  v8 = [localDataSource2 starkAppBundleIdentifierContextForSiriSession:self];
  [v6 addObjectsFromArray:v8];

  if (actionCopy)
  {
    [(AFUISiriSession *)self directActionApplicationContexts];
  }

  else
  {
    localDataSource3 = [(AFUISiriSession *)self localDataSource];
    v10 = [localDataSource3 currentCarPlaySupportedOEMAppIDListForSiriSession:self];
    [v6 addObjectsFromArray:v10];

    [(AFUISiriSession *)self sessionDelegateContext];
  }
  v11 = ;
  [v6 addObjectsFromArray:v11];

  _connection = [(AFUISiriSession *)self _connection];
  [_connection fetchAppicationContextForApplicationInfo:v13 supplementalContext:v6 refID:0];
}

- (void)resetContextTypes:(int64_t)types
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AFUISiriSession resetContextTypes:]";
    v11 = 2048;
    typesCopy = types;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s %zd", &v9, 0x16u);
    if ((types & 4) == 0)
    {
LABEL_3:
      if ((types & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [(AFUISiriSession *)self setAlertContext];
      if ((types & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((types & 4) == 0)
  {
    goto LABEL_3;
  }

  [(AFUISiriSession *)self clearContext];
  if ((types & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (types)
  {
LABEL_5:
    [(AFUISiriSession *)self setApplicationContext];
  }

LABEL_6:
  localDataSource = [(AFUISiriSession *)self localDataSource];
  v7 = [localDataSource lockStateForSiriSession:self];

  [(AFUISiriSession *)self setLockState:v7];
  [(AFUISiriSession *)self setWatchAuthenticated:0];
  localDelegate = [(AFUISiriSession *)self localDelegate];
  [localDelegate siriSessionDidResetContext:self];
}

- (void)rollbackClearContext
{
  _connection = [(AFUISiriSession *)self _connection];
  [_connection rollbackClearContext];
}

- (void)setDeviceInStarkMode:(BOOL)mode
{
  modeCopy = mode;
  self->_isDeviceInStarkMode = mode;
  _connection = [(AFUISiriSession *)self _connection];
  [_connection setIsDeviceInStarkMode:modeCopy];
}

- (void)setCarDNDActive:(BOOL)active
{
  activeCopy = active;
  _connection = [(AFUISiriSession *)self _connection];
  [_connection setCarDNDActive:activeCopy];
}

- (void)setSupportsCarPlayVehicleData:(BOOL)data
{
  dataCopy = data;
  _connection = [(AFUISiriSession *)self _connection];
  [_connection setSupportsCarPlayVehicleData:dataCopy];
}

- (void)setCarOwnsMainAudio:(BOOL)audio
{
  audioCopy = audio;
  _connection = [(AFUISiriSession *)self _connection];
  [_connection setCarOwnsMainAudio:audioCopy];
}

- (void)setEyesFree:(BOOL)free
{
  self->_eyesFree = free;
  if (self->_connection)
  {
    freeCopy = free;
    if (objc_opt_respondsToSelector())
    {
      connection = self->_connection;

      [(AFConnection *)connection setIsEyesFree:freeCopy];
    }
  }
}

- (void)setLockState:(unint64_t)state
{
  v4 = (state >> 1) & 1;
  v5 = state & 1;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__AFUISiriSession_setLockState___block_invoke;
  v6[3] = &unk_278CD5F58;
  objc_copyWeak(v7, &location);
  v8 = v4;
  v9 = v5;
  v7[1] = state;
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

- (void)setAnnouncementRequestsPermittedByPresentationWhileActive:(BOOL)active
{
  activeCopy = active;
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AFUISiriSession setAnnouncementRequestsPermittedByPresentationWhileActive:]";
    v9 = 1024;
    v10 = activeCopy;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s Updating announcement requests permitted by presentation: %{BOOL}d", &v7, 0x12u);
  }

  _connection = [(AFUISiriSession *)self _connection];
  [_connection setAnnouncementRequestsPermittedByPresentationWhileActive:activeCopy];
}

- (void)_handleUnlockAppCommand:(id)command completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__AFUISiriSession__handleUnlockAppCommand_completion___block_invoke;
  aBlock[3] = &unk_278CD5C08;
  v8 = completionCopy;
  v25 = v8;
  v9 = commandCopy;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  appBundleId = [v9 appBundleId];
  v12 = *MEMORY[0x277CEF098];
  v13 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (appBundleId)
  {
    if (v13)
    {
      *buf = 136315394;
      v27 = "[AFUISiriSession _handleUnlockAppCommand:completion:]";
      v28 = 2112;
      v29 = appBundleId;
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
    [WeakRetained siriSession:self didReceiveAppUnlockRequestForAppId:appBundleId withCompletion:v19];

    v16 = objc_alloc(MEMORY[0x277CEF300]);
    refId = [v15 refId];
    v18 = [v16 initWithOriginalCommandId:refId category:5 duration:0];

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

- (void)_handleUnlockDeviceCommand:(id)command completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  localDataSource = [(AFUISiriSession *)self localDataSource];
  v9 = [localDataSource lockStateForSiriSession:self];

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
  v11 = completionCopy;
  v26 = v11;
  v12 = commandCopy;
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
    successCommands = [v12 successCommands];
    [(AFUISiriSession *)self _performAceCommands:successCommands];
  }

  v17 = objc_alloc(MEMORY[0x277CEF300]);
  refId = [v12 refId];
  v19 = [v17 initWithOriginalCommandId:refId category:5 duration:0];

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

- (void)_handleUnlockDeviceWithWatchCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AFUISiriSession__handleUnlockDeviceWithWatchCommand_completion___block_invoke;
  aBlock[3] = &unk_278CD5C08;
  v8 = completionCopy;
  v21 = v8;
  v9 = commandCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  _watchAuthenticationManager = [(AFUISiriSession *)self _watchAuthenticationManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__AFUISiriSession__handleUnlockDeviceWithWatchCommand_completion___block_invoke_2;
  v14[3] = &unk_278CD5FD0;
  objc_copyWeak(&v17, &location);
  v12 = v10;
  v16 = v12;
  v13 = v9;
  v15 = v13;
  [_watchAuthenticationManager requestWatchAuthentication:v14];

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

- (void)setWatchAuthenticated:(BOOL)authenticated
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AFUISiriSession_setWatchAuthenticated___block_invoke;
  block[3] = &unk_278CD5708;
  objc_copyWeak(&v5, &location);
  authenticatedCopy = authenticated;
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

- (void)_performAceCommand:(id)command forRequestUpdateViewsCommand:(id)viewsCommand afterDelay:(double)delay
{
  commandCopy = command;
  viewsCommandCopy = viewsCommand;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (delay * 1000000000.0));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__AFUISiriSession__performAceCommand_forRequestUpdateViewsCommand_afterDelay___block_invoke;
  v13[3] = &unk_278CD5FF8;
  objc_copyWeak(&v16, &location);
  v14 = commandCopy;
  v15 = viewsCommandCopy;
  v11 = viewsCommandCopy;
  v12 = commandCopy;
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

- (void)_handleRequestUpdateViewsCommand:(id)command completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  timeInSeconds = [commandCopy timeInSeconds];
  [timeInSeconds doubleValue];
  v10 = v9;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  commands = [commandCopy commands];
  v12 = [commands countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(commands);
        }

        [(AFUISiriSession *)self _performAceCommand:*(*(&v18 + 1) + 8 * v15++) forRequestUpdateViewsCommand:commandCopy afterDelay:v10];
      }

      while (v13 != v15);
      v13 = [commands countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  if (completionCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x277D47218]);
    aceId = [commandCopy aceId];
    [v16 setRefId:aceId];

    completionCopy[2](completionCopy, v16);
  }
}

- (void)_performAceCommands:(id)commands
{
  v14 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [commandsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(commandsCopy);
        }

        [(AFUISiriSession *)self performAceCommand:*(*(&v9 + 1) + 8 * v8++) turnIdentifier:0 machAbsoluteTime:mach_absolute_time()];
      }

      while (v6 != v8);
      v6 = [commandsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_performAceCommand:(id)command turnIdentifier:(id)identifier machAbsoluteTime:(double)time conflictHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (SRUIFShouldInstrumentLaunchContextForAceCommand())
  {
    v13 = SRUIFConstructLaunchContextForLaunchStarted();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __86__AFUISiriSession__performAceCommand_turnIdentifier_machAbsoluteTime_conflictHandler___block_invoke;
    v30[3] = &unk_278CD5C58;
    v31 = v13;
    timeCopy = time;
    v14 = v13;
    [(AFUISiriSession *)self _performBlockWithDelegate:v30];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    commands = [commandCopy commands];
    v16 = [commands countByEnumeratingWithState:&v26 objects:v37 count:16];
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
            objc_enumerationMutation(commands);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SRUIFSiriSessionStateHandler *)self->_stateHandler performTransitionForEvent:8];
            goto LABEL_16;
          }
        }

        v17 = [commands countByEnumeratingWithState:&v26 objects:v37 count:16];
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

  if ([(AFUISiriSession *)self _aceObjectExpectsTurnIdentifierWhenSendingCommand:commandCopy])
  {
    if (!identifierCopy)
    {
      v20 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [AFUISiriSession _performAceCommand:v20 turnIdentifier:? machAbsoluteTime:? conflictHandler:?];
      }

LABEL_25:
      identifierCopy = 0;
    }
  }

  else if (identifierCopy)
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

  _connection = [(AFUISiriSession *)self _connection];
  [_connection sendGenericAceCommand:commandCopy turnIdentifier:identifierCopy conflictHandler:handlerCopy];
}

- (BOOL)_aceObjectExpectsTurnIdentifierWhenSendingCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)siriUIDidPresentDynamicSnippetWithInfo:(id)info
{
  infoCopy = info;
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
    siriServiceStream = [v4 siriServiceStream];
    name = [siriServiceStream name];
  }

  else
  {
    name = 0;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
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

- (void)endForReason:(int64_t)reason
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AFUISiriSession endForReason:]";
    v10 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s reason %zd", &v8, 0x16u);
  }

  localDelegate = [(AFUISiriSession *)self localDelegate];
  [localDelegate siriSessionWillEnd:self];

  [(SRUIFStateFeedbackManager *)self->_stateFeedbackManager siriSessionDidEnd];
  [(SRUIFSpeechRequestHandler *)self->_speechRequestHandler discardCurrentSpeechGroup];
  if ([(AFUISiriSession *)self _isContinuousConversationAvailable])
  {
    [(SRUIFUIBridgeClient *)self->_uiBridgeClient endForReason:reason];
  }

  [(SRUIFAudioPowerLevelUpdater *)self->_audioPowerLevelUpdater invalidate];
  [(AFUISiriSession *)self _discardConnectionForReason:reason];
  [(AFSiriClientStateManager *)self->_clientStateManager invalidateClient:self];
  localDelegate2 = [(AFUISiriSession *)self localDelegate];
  [localDelegate2 siriSessionDidEnd:self];
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
  _connection = [(AFUISiriSession *)self _connection];
  [_connection didDismissUI];

  [(AFUISiriSession *)self _invalidateConnectionForReason:0];
}

- (void)_invalidateConnectionForReason:(int64_t)reason
{
  _connection = [(AFUISiriSession *)self _connection];
  [_connection cancelRequestForReason:reason];

  _connection2 = [(AFUISiriSession *)self _connection];
  [_connection2 endSession];

  _connection3 = [(AFUISiriSession *)self _connection];
  [_connection3 invalidate];

  _connection4 = [(AFUISiriSession *)self _connection];
  [_connection4 setSpeechDelegate:0];

  _connection5 = [(AFUISiriSession *)self _connection];
  [_connection5 setDelegate:0];

  connection = self->_connection;
  self->_connection = 0;
}

- (void)_discardConnectionForReason:(int64_t)reason
{
  [(AFUISiriSession *)self _invalidateConnectionForReason:reason];
  uiBridgeClient = self->_uiBridgeClient;
  self->_uiBridgeClient = 0;

  audioPowerLevelUpdater = self->_audioPowerLevelUpdater;
  self->_audioPowerLevelUpdater = 0;
}

- (void)_updateActiveAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  settingsConnection = self->_settingsConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__AFUISiriSession__updateActiveAccount___block_invoke;
  v7[3] = &unk_278CD6020;
  objc_copyWeak(&v9, &location);
  v6 = accountCopy;
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

- (void)_updateActiveAccount:(id)account withNumberOfActiveAccounts:(unint64_t)accounts
{
  v6 = [(SRUIFSiriSessionInfo *)self->_siriSessionInfo setActiveAccountAndGenerateLightweightInfo:account];
  if (v6)
  {
    v7 = [(SRUIFSiriSessionInfo *)self->_siriSessionInfo setUserAccountCountGenerateLightweightInfo:accounts];
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

- (void)_updateModesHeuristicsForRequestOptions:(id)options
{
  v32 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (_os_feature_enabled_impl())
  {
    isForBluetoothCar = 0;
  }

  else
  {
    isForBluetoothCar = [optionsCopy isForBluetoothCar];
  }

  v6 = ([optionsCopy currentLockState] & 2) == 0;
  modesConfiguration = self->_modesConfiguration;
  if (modesConfiguration)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__AFUISiriSession__updateModesHeuristicsForRequestOptions___block_invoke_232;
    v18[3] = &unk_278CD6048;
    v8 = &v19;
    v19 = optionsCopy;
    v20 = isForBluetoothCar;
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
    v24 = optionsCopy;
    v25 = isForBluetoothCar;
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

- (id)_invocationEventForRequestOptions:(id)options localDataSource:(id)source
{
  optionsCopy = options;
  sourceCopy = source;
  v8 = objc_alloc_init(MEMORY[0x277D5A928]);
  speechRequestOptions = [optionsCopy speechRequestOptions];
  if ([speechRequestOptions activationEvent] == 15)
  {
    v10 = 21;
  }

  else
  {
    voiceTriggerEventInfo = [speechRequestOptions voiceTriggerEventInfo];
    if (voiceTriggerEventInfo && (v12 = voiceTriggerEventInfo, [speechRequestOptions voiceTriggerEventInfo], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKey:", @"triggeredPhraseId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedLongValue"), v14, v13, v12, v15 == 1))
    {
      v10 = 80;
    }

    else
    {
      v10 = -[AFUISiriSession _mapInvocationSource:](self, "_mapInvocationSource:", [optionsCopy requestSource]);
    }
  }

  [v8 setInvocationSource:v10];
  [v8 setIsDeviceLocked:{objc_msgSend(sourceCopy, "lockStateForSiriSession:", self) != 0}];
  if (![optionsCopy isForStark])
  {
    if ([optionsCopy tvRemoteType])
    {
      v22 = -[AFUISiriSession _invocationContextFromTVRemoteType:](self, "_invocationContextFromTVRemoteType:", [optionsCopy tvRemoteType]);
      [v8 setTvRemoteInvocationContext:v22];
    }

    else
    {
      if ([optionsCopy isForBluetoothCar])
      {
        [(AFUISiriSession *)self _populateInvocationEventWithBluetoothCarInvocationContext:v8];
        goto LABEL_18;
      }

      if ([optionsCopy isTypeToSiriRequest])
      {
        [(AFUISiriSession *)self _populateInvocationEventWithTypeToSiriInvocationContext:v8];
        goto LABEL_18;
      }

      v22 = objc_alloc_init(MEMORY[0x277D5A8D0]);
      v24 = [optionsCopy longPressBehavior] + 1;
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
  requestInfo = [optionsCopy requestInfo];
  activationEvent = [requestInfo activationEvent];

  if (activationEvent == 2)
  {
    directActionEvent = [optionsCopy directActionEvent];
    appBundleIdentifier = [optionsCopy appBundleIdentifier];
    [(AFUISiriSession *)self _updateCarPlayInvocationContext:v16 fromDirectActionEvent:directActionEvent appBundleIdentifier:appBundleIdentifier];
  }

  [sourceCopy carPlayEnhancedVoiceTriggerModeForSiriSession:self];
  [v16 setEnhancedVoiceTriggerMode:SASCarPlayEnhancedVoiceTriggerModeToSISchemaEnhancedVoiceTriggerMode()];
  mEMORY[0x277D551B0] = [MEMORY[0x277D551B0] sharedSystemState];
  [mEMORY[0x277D551B0] carPlayTransportType];

  [v16 setCarPlayConnection:SASCarPlayTransportTypeToSISchemaCarPlayConnection()];
  [v8 setCarPlayInvocationContext:v16];

LABEL_18:

  return v8;
}

- (int64_t)_mapSuggestionRequestType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (void)_populateInvocationEventWithBluetoothCarInvocationContext:(id)context
{
  v3 = MEMORY[0x277D5A7C8];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  bluetoothPreferredCarAudioRoute = [mEMORY[0x277CEF368] bluetoothPreferredCarAudioRoute];

  if ([bluetoothPreferredCarAudioRoute isEqualToString:@"A2DP"])
  {
    v8 = 1;
  }

  else if ([bluetoothPreferredCarAudioRoute isEqualToString:@"DeviceSpeaker"])
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
  [contextCopy setBluetoothCarInvocationContext:v5];
}

- (void)_populateInvocationEventWithTypeToSiriInvocationContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_alloc_init(MEMORY[0x277D5AA80]);
  WeakRetained = objc_loadWeakRetained(&self->_localDataSource);
  v7 = [WeakRetained contextAppInfosForSiriSession:self];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  reverseObjectEnumerator = [v7 reverseObjectEnumerator];
  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v9)
  {
    identifier3 = reverseObjectEnumerator;
    goto LABEL_18;
  }

  v10 = v9;
  v26 = v7;
  v27 = v5;
  v28 = contextCopy;
  v11 = *v31;
  v12 = @"com.apple.chrono.WidgetRenderer-Default";
  v13 = @"com.apple.siri.IntelligentLight";
LABEL_3:
  v14 = 0;
  while (1)
  {
    if (*v31 != v11)
    {
      objc_enumerationMutation(reverseObjectEnumerator);
    }

    v15 = *(*(&v30 + 1) + 8 * v14);
    identifier = [v15 identifier];
    if ([identifier isEqualToString:v12])
    {
      goto LABEL_9;
    }

    identifier2 = [v15 identifier];
    if (![identifier2 isEqualToString:v13])
    {
      break;
    }

LABEL_9:
LABEL_11:
    if (v10 == ++v14)
    {
      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v10)
      {
        goto LABEL_3;
      }

      identifier3 = reverseObjectEnumerator;
      v5 = v27;
      contextCopy = v28;
      v7 = v26;
      goto LABEL_18;
    }
  }

  [v15 identifier];
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = reverseObjectEnumerator;
  v23 = v22 = v13;
  v29 = [v23 isEqualToString:@"com.apple.siri"];

  v13 = v22;
  reverseObjectEnumerator = v21;
  v12 = v20;
  v11 = v19;
  v10 = v18;

  if (v29)
  {
    goto LABEL_11;
  }

  identifier3 = [v15 identifier];

  v5 = v27;
  contextCopy = v28;
  v7 = v26;
  if (!identifier3)
  {
    goto LABEL_19;
  }

  [v27 setBackgroundAppBundleId:identifier3];
  v25 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[AFUISiriSession _populateInvocationEventWithTypeToSiriInvocationContext:]";
    v36 = 2112;
    v37 = identifier3;
    _os_log_impl(&dword_241432000, v25, OS_LOG_TYPE_DEFAULT, "%s #TypeToSiriInvocationContextSender The current backgroundAppBundleId is: %@", buf, 0x16u);
  }

LABEL_18:

LABEL_19:
  [contextCopy setTypeToSiriContext:v5];
}

- (int)_mapInvocationSource:(int64_t)source
{
  if ((source - 1) > 0x3B)
  {
    return 0;
  }

  else
  {
    return dword_2414945E8[source - 1];
  }
}

- (void)_updateCarPlayInvocationContext:(id)context fromDirectActionEvent:(int64_t)event appBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  v9 = event - 2;
  if (event - 2) < 0x11 && ((0x1E83Du >> v9))
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
      eventCopy = event;
      _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s Unhandled direct action event: %li", &v13, 0x16u);
      v10 = 0;
    }
  }

  [contextCopy setDirectAction:v10];
  [contextCopy setBundleID:identifierCopy];
}

- (id)_invocationContextFromTVRemoteType:(unint64_t)type
{
  v4 = objc_alloc_init(MEMORY[0x277D5AA48]);
  v5 = v4;
  if (type - 1 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_24149471C[type - 1];
  }

  [v4 setRemoteType:v6];

  return v5;
}

- (id)_tamaleDirectActionRequestWithText:(id)text
{
  v16[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  v4 = [objc_alloc(MEMORY[0x277D5C220]) initWithIdentifier:@"com.apple.siri.ifflow.ajaxMedia"];
  if (textCopy)
  {
    if ([textCopy length])
    {
      v15 = @"utterance";
      v16[0] = textCopy;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v4 setUserData:v5];

      v6 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "[AFUISiriSession _tamaleDirectActionRequestWithText:]";
        v13 = 2112;
        v14 = textCopy;
        _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s Visual Intelligence direct invocation with text utterance: %@", &v11, 0x16u);
      }
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277D5C218]);
  v8 = [MEMORY[0x277D5C210] runSiriKitExecutorCommandWithContext:v7 payload:v4];
  v9 = [MEMORY[0x277D5C210] wrapCommandInStartLocalRequest:v8];

  return v9;
}

- (void)_startVisualIntelligenceDirectInvocationRequestWith:(id)with completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  withCopy = with;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AFUISiriSession _startVisualIntelligenceDirectInvocationRequestWith:completion:]";
    v12 = 2112;
    v13 = withCopy;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s startQuickTypeTamaleRequest turnId:%@", &v10, 0x16u);
  }

  _tamaleDirectActionRequest = [(AFUISiriSession *)self _tamaleDirectActionRequest];
  [(AFUISiriSession *)self _startDirectRequestWith:_tamaleDirectActionRequest turnIdentifier:withCopy completion:completionCopy];
}

- (void)_startVisualIntelligenceDirectInvocationRequestWithText:(id)text turnIdentifier:(id)identifier completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  textCopy = text;
  identifierCopy = identifier;
  completionCopy = completion;
  [(AFUISiriSession *)self _startTypeToSiriLatencyTimer];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[AFUISiriSession _startVisualIntelligenceDirectInvocationRequestWithText:turnIdentifier:completion:]";
    v15 = 2112;
    v16 = textCopy;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s startVisualIntelligenceTextRequest with text: %@ turnId:%@", &v13, 0x20u);
  }

  v12 = [(AFUISiriSession *)self _tamaleDirectActionRequestWithText:textCopy];
  [(AFUISiriSession *)self _startDirectRequestWith:v12 turnIdentifier:identifierCopy completion:completionCopy];
}

- (id)_photoPickerDirectActionRequestWith:(id)with assetIdentifiers:(id)identifiers
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D5C220];
  identifiersCopy = identifiers;
  withCopy = with;
  v8 = [[v5 alloc] initWithIdentifier:withCopy];

  v14 = @"assetIdentifiers";
  v15[0] = identifiersCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v8 setUserData:v9];

  v10 = objc_alloc_init(MEMORY[0x277D5C218]);
  v11 = [MEMORY[0x277D5C210] runSiriKitExecutorCommandWithContext:v10 payload:v8];
  v12 = [MEMORY[0x277D5C210] wrapCommandInStartLocalRequest:v11];

  return v12;
}

- (void)_handlePhotoPickerRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  delegate = self->_delegate;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__AFUISiriSession__handlePhotoPickerRequest_completion___block_invoke;
  v11[3] = &unk_278CD6070;
  selfCopy = self;
  v14 = completionCopy;
  v12 = requestCopy;
  v9 = requestCopy;
  v10 = completionCopy;
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

- (void)_startDirectRequestWith:(id)with turnIdentifier:(id)identifier completion:(id)completion
{
  withCopy = with;
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__AFUISiriSession__startDirectRequestWith_turnIdentifier_completion___block_invoke;
  block[3] = &unk_278CD5E68;
  objc_copyWeak(&v18, &location);
  v15 = withCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = withCopy;
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