@interface SRSystemAssistantExperiencePresentation
- (BOOL)_showSpeech;
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)a3;
- (BOOL)shouldUseEventDrivenIdleAndQuietUpdates;
- (BOOL)siriDeviceLockedForViewModelController:(id)a3;
- (BOOL)supportsVisualPresentationForConversationItem:(id)a3;
- (CGPoint)_convertToPointInSAEViewCoordinates:(CGPoint)a3;
- (CGRect)effectiveContentFrame;
- (CGSize)maxSizeForSnippet;
- (SASRequestOptions)_activeRequestOptions;
- (SRSystemAssistantExperiencePresentation)initWithDelegate:(id)a3 dataSource:(id)a4;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (double)expectedContentWidth;
- (id)_activeConversation;
- (id)_conversationIdentifiers;
- (id)_dismissalContextWithDismissalReason:(int64_t)a3 dismissalOptions:(id)a4;
- (id)_identifierOfPreviousConversation;
- (id)_siriLocalizedTriggerPhrases;
- (id)bugReportPresenterRequestsBugReportKeywordIdentifiers:(id)a3;
- (id)bugReportPresenterRequestsBugReportPrefixForTitle:(id)a3;
- (id)dismissalUserInfo;
- (id)effectiveCoreLocationBundleForSAEViewController:(id)a3;
- (id)feedbackFormForCurrentRequest;
- (id)localeForSAEViewController:(id)a3;
- (id)saeViewModelController:(id)a3 requestsTranscriptItemForAceObject:(id)a4;
- (int64_t)_viewModelInputTypeForRequestInputType:(int64_t)a3;
- (int64_t)inputTypeForSAEViewModelController:(id)a3;
- (unint64_t)lockStateForSAEViewController:(id)a3;
- (void)_activeConversationDidChange;
- (void)_cancelAutoDismissalTimers;
- (void)_didDetectGestureEventWithinSiri:(int64_t)a3;
- (void)_didDetectTouchOutsideOfSiri;
- (void)_dismissVideoPlayerViewController;
- (void)_handleNonSnippetResponse:(int64_t)a3;
- (void)_scheduleAutoDismissalForTouchOutsideOfSiri;
- (void)_scheduleAutoDismissalPostAppLaunch;
- (void)_scheduleAutoDismissalPostSystemUIResponse;
- (void)_setInputType:(int64_t)a3;
- (void)_setupBugReportingPresenterIfNecessary;
- (void)_startAutoDismissalIfNeededGivenSiriIsAttending:(BOOL)a3;
- (void)_updatePresentationForVisualIntelligenceCameraIfNeeded;
- (void)activeRequestOptionsDidChange;
- (void)attemptedToSaveConversation:(id)a3 withResult:(BOOL)a4;
- (void)autoDismissControllerRequestsDismissal:(id)a3;
- (void)autoDismissControllerRequestsStopAttending:(id)a3;
- (void)bugReportPresenter:(id)a3 requestsSiriDismissalWithReason:(int64_t)a4;
- (void)bugReportPresenter:(id)a3 requestsToHandlePasscodeUnlockWithCompletion:(id)a4;
- (void)bugReportPresenter:(id)a3 requestsToOpenURL:(id)a4 withCompletion:(id)a5;
- (void)bugReportPresenter:(id)a3 requestsToPerformAceCommand:(id)a4;
- (void)bugReportPresenter:(id)a3 requestsToTakeScreenshotWithCompletion:(id)a4;
- (void)bugReportPresenter:(id)a3 setBugReportingAvailable:(BOOL)a4;
- (void)bugReportPresenter:(id)a3 setStatusViewHidden:(BOOL)a4;
- (void)bugReportPresenterRequestsInvalidateAutoDismissal:(id)a3;
- (void)bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:(id)a3;
- (void)cancelRequestForViewController:(id)a3;
- (void)configureForRequestOptions:(id)a3;
- (void)conversation:(id)a3 didChangeWithTransaction:(id)a4;
- (void)dealloc;
- (void)didBeginProcessingConversationItems;
- (void)didDetectGestureEvent:(int64_t)a3 inRegion:(int64_t)a4;
- (void)didPresentContentForSAEViewController:(id)a3;
- (void)didReceiveAddViewsDialogPhaseForSuggestions:(id)a3;
- (void)didReceiveBugButtonLongPress;
- (void)didReceiveReportBugAction;
- (void)didReceiveRevealRecognizedSpeechCommand:(id)a3;
- (void)didTapCloseButtonOnSnippet;
- (void)endSiriSessionForViewController:(id)a3 withDismissalReason:(int64_t)a4;
- (void)handlePlayContentCommand:(id)a3 completion:(id)a4;
- (void)handleRequestEndBehavior:(id)a3 isAttending:(BOOL)a4;
- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4;
- (void)immersiveExperienceRequestedForViewModelController:(id)a3;
- (void)loadContinuerSuggestionsForRequest:(id)a3 currentMode:(id)a4 dialogPhase:(id)a5;
- (void)modalContainerViewControllerViewDidDisappear:(id)a3;
- (void)modalContainerViewControllerViewWillDisappear:(id)a3;
- (void)previousConversationDidLoad:(id)a3;
- (void)requestToHandlePasscodeUnlockWithClient:(unint64_t)a3 withCompletion:(id)a4;
- (void)saeViewController:(id)a3 didChangeText:(id)a4;
- (void)saeViewController:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5;
- (void)saeViewController:(id)a3 preventOutsideTouchesFromDismissingSiri:(BOOL)a4;
- (void)saeViewController:(id)a3 requestsKeyboardWithCompletion:(id)a4;
- (void)saeViewController:(id)a3 setStatusViewHidden:(BOOL)a4;
- (void)saeViewController:(id)a3 speakText:(id)a4 isPhonetic:(BOOL)a5 completion:(id)a6;
- (void)saeViewController:(id)a3 viewDidAppearForAceObject:(id)a4;
- (void)saeViewController:(id)a3 viewDidDisappearForAceObject:(id)a4;
- (void)saeViewController:(id)a3 willBeginEditingOfType:(int64_t)a4;
- (void)saeViewControllerCancelHIDEventDefferal:(id)a3;
- (void)saeViewControllerDidEndEditing:(id)a3;
- (void)saeViewControllerRequestsHIDEventDefferal:(id)a3;
- (void)saeViewModelController:(id)a3 didProcessConversationItemsWithIdentifiers:(id)a4;
- (void)setActiveViewModelController:(id)a3;
- (void)siriDidActivateFromSource:(int64_t)a3;
- (void)siriDidDeactivateWithCompletion:(id)a3;
- (void)siriDidPunchOutWithOptions:(id)a3;
- (void)siriDidReceiveLatencyInformation:(id)a3;
- (void)siriDidReceiveStartGenAIEnablementFlowCommand:(id)a3 completion:(id)a4;
- (void)siriDidStartNewConversationWithIdentifier:(id)a3;
- (void)siriDidTransitionFromState:(int64_t)a3 event:(int64_t)a4;
- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)a3 isAttending:(BOOL)a4;
- (void)siriRequestWillStartWithRequestOptions:(id)a3;
- (void)siriResponseModeDidChange:(unint64_t)a3 isAttending:(BOOL)a4;
- (void)siriResultsDidDismissInTamale;
- (void)siriResultsWillDismissInTamale;
- (void)siriSAEViewController:(id)a3 willDismissViewController:(id)a4;
- (void)siriSAEViewController:(id)a3 willPresentViewController:(id)a4;
- (void)siriSAEViewControllerRequestStopAttending:(id)a3;
- (void)siriSAEViewControllerRequestsTextActivation:(id)a3 withRequestSource:(int64_t)a4;
- (void)siriSAEViewControllerRequestsTextRequest:(id)a3 withRequestOptions:(id)a4;
- (void)siriSAEViewControllerRequestsVoiceActivation:(id)a3 withRequestOptions:(id)a4;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)a3 withOriginalDismissalOptions:(id)a4;
- (void)siriWillProcessAppLaunchWithBundleIdentifier:(id)a3;
- (void)siriWillPunchOutWithOptions:(id)a3;
- (void)speechRecordingDidBeginOnRecordRoute:(id)a3;
- (void)stopRecordingForViewController:(id)a3;
- (void)stopSpeakingForSAEViewController:(id)a3;
- (void)tapToEditPresented;
- (void)toggleHomeAffordanceHidden:(BOOL)a3;
- (void)updateEdgeLightWindowLevel:(int64_t)a3;
- (void)updateFeedbackFormWithSpeakableText:(id)a3;
- (void)userDrilledIntoSnippet;
- (void)userTouchedSnippet;
- (void)viewController:(id)a3 didFinishEditingUtteranceWithText:(id)a4 originalUserUtterance:(id)a5 selectionResults:(id)a6 showASR:(BOOL)a7;
- (void)viewController:(id)a3 openURL:(id)a4 completion:(id)a5;
- (void)viewController:(id)a3 openURL:(id)a4 launchOptions:(id)a5 completion:(id)a6;
- (void)viewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5;
- (void)viewController:(id)a3 reduceOrbOpacity:(BOOL)a4;
- (void)viewController:(id)a3 requestsHostBackgroundBlurVisible:(BOOL)a4 reason:(int64_t)a5 fence:(id)a6;
- (void)viewController:(id)a3 siriRequestEnteredWithSuggestion:(id)a4 suggestionRequestType:(int64_t)a5;
- (void)viewController:(id)a3 siriRequestEnteredWithSuggestionToolInvocation:(id)a4 turnIdentifier:(id)a5;
- (void)viewController:(id)a3 siriRequestEnteredWithText:(id)a4;
- (void)viewController:(id)a3 willChangeKeyboardVisibility:(BOOL)a4;
- (void)viewControllerDidPresentUserInterface:(id)a3;
@end

@implementation SRSystemAssistantExperiencePresentation

- (SRSystemAssistantExperiencePresentation)initWithDelegate:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SRSystemAssistantExperiencePresentation;
  v8 = [(SRSystemAssistantExperiencePresentation *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(SRSystemAssistantExperiencePresentation *)v8 setDelegate:v6];
    [(SRSystemAssistantExperiencePresentation *)v9 setDataSource:v7];
    v9->_inputType = 0;
    v10 = objc_alloc_init(SRSystemAssistantExperienceViewController);
    saeViewController = v9->_saeViewController;
    v9->_saeViewController = v10;

    [(SRSystemAssistantExperienceViewController *)v9->_saeViewController setDelegate:v9];
    v12 = [(SRSystemAssistantExperiencePresentation *)v9 delegate];
    v13 = [v12 siriDeviceLockStateForSiriPresentation:v9];

    v14 = [[SRCompactAutoDismissController alloc] initWithDelegate:v9 andLockState:v13];
    autoDismissController = v9->_autoDismissController;
    v9->_autoDismissController = v14;

    v16 = +[AFPreferences sharedPreferences];
    v17 = [v16 languageCode];
    [SiriUISashItem _setLanguageCode:v17];

    [(SRSystemAssistantExperiencePresentation *)v9 _activeConversationDidChange];
  }

  return v9;
}

- (id)_conversationIdentifiers
{
  v3 = [(SRSystemAssistantExperiencePresentation *)self dataSource];
  v4 = [v3 conversationIdentifiersForSiriPresentation:self];

  return v4;
}

- (id)_identifierOfPreviousConversation
{
  v2 = [(SRSystemAssistantExperiencePresentation *)self _conversationIdentifiers];
  if ([v2 count] < 2)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SRSystemAssistantExperiencePresentation _identifierOfPreviousConversation]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #sae no previous conversation found", &v6, 0xCu);
    }

    v3 = 0;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(v2, "count") - 2}];
  }

  return v3;
}

- (id)_activeConversation
{
  v3 = [(SRSystemAssistantExperiencePresentation *)self dataSource];
  v4 = [(SRSystemAssistantExperiencePresentation *)self _conversationIdentifiers];
  v5 = [v4 lastObject];
  v6 = [v3 siriPresentation:self conversationWithIdentifier:v5];

  return v6;
}

- (void)configureForRequestOptions:(id)a3
{
  v4 = a3;
  if (AFIsInternalInstall())
  {
    [v4 requestSource];
    IsTesting = SASRequestSourceIsTesting();
    v6 = [v4 testingContext];
    v7 = [v6 objectForKey:SUICPPTTestNameKey];
    v8 = v7;
    v9 = 1;
    if (IsTesting && v6 && v7)
    {
      v9 = [v7 hasPrefix:SUICPPTSiriBringupTestPrefix];
    }

    [(SRCompactAutoDismissController *)self->_autoDismissController setEnabled:v9];
  }

  if ([v4 isVisualIntelligenceRequest])
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      [v4 requestSource];
      v12 = SASRequestSourceGetName();
      v15 = 136315394;
      v16 = "[SRSystemAssistantExperiencePresentation configureForRequestOptions:]";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Don't check Siri availability for %@ activation", &v15, 0x16u);
    }
  }

  else if (+[AFUISiriSession availabilityState])
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CBAB8(v13);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dismissSiriPresentation:self withReason:13];
  }
}

- (void)conversation:(id)a3 didChangeWithTransaction:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self activeViewModelController];
  [v6 conversationDidChangeWithTransaction:v5];
}

- (void)didReceiveRevealRecognizedSpeechCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315394;
    v26 = "[SRSystemAssistantExperiencePresentation didReceiveRevealRecognizedSpeechCommand:]";
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae: received revealRecognizedSpeech:%@", &v25, 0x16u);
  }

  v6 = [v4 recognition];
  v7 = [(SRSystemAssistantExperiencePresentation *)self dataSource];
  v8 = [v7 sessionInfoForSiriPresentation:self];

  v9 = [v4 refId];
  v10 = [v8 identifier];
  v11 = [v6 af_userUtteranceValueWithRefId:v9 sessionId:v10];

  if (v11)
  {
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = [v4 overriddenSpeech];

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = [AFUserUtterance alloc];
    v13 = [v4 overriddenSpeech];
    v11 = [v12 initWithString:v13 correctionIdentifier:0];

    if (!v4)
    {
      goto LABEL_15;
    }
  }

  if (v11)
  {
    v14 = _os_feature_enabled_impl();
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController setRevealRecognizedSpeech:1];
    v15 = [(SRSystemAssistantExperiencePresentation *)self activeViewModelController];
    v16 = v15;
    if (v14)
    {
      v17 = [v4 asrAlternatives];
      [v16 revealUserUtterance:v11 backingAceObject:v4 asrAlternatives:v17];
    }

    else
    {
      [v15 revealUserUtterance:v11 backingAceObject:v4 asrAlternatives:&__NSArray0__struct];
    }

    v18 = [v4 asrAlternatives];
    v19 = ([v18 count] != 0) & v14;

    if (v19 == 1)
    {
      v20 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [v4 asrAlternatives];
        v23 = [v22 count];
        v24 = [v4 asrAlternatives];
        v25 = 136315650;
        v26 = "[SRSystemAssistantExperiencePresentation didReceiveRevealRecognizedSpeechCommand:]";
        v27 = 2048;
        v28 = v23;
        v29 = 2112;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #sae received %lu alternatives: %@", &v25, 0x20u);
      }
    }
  }

LABEL_15:
}

- (void)dealloc
{
  [(SRCompactAutoDismissController *)self->_autoDismissController setEnabled:0];
  v3.receiver = self;
  v3.super_class = SRSystemAssistantExperiencePresentation;
  [(SRSystemAssistantExperiencePresentation *)&v3 dealloc];
}

- (void)activeRequestOptionsDidChange
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self _activeRequestOptions];
  if ([v4 isTypeToSiriRequest] && objc_msgSend(v4, "inputType") != 2)
  {
    v3 = 1;
  }

  else if ([v4 isVisualIntelligenceRequest])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController setActiveRequestOptions:v4];
  [(SRSystemAssistantExperiencePresentation *)self _setInputType:v3];
}

- (void)siriRequestWillStartWithRequestOptions:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[SRSystemAssistantExperiencePresentation siriRequestWillStartWithRequestOptions:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v18, 0xCu);
  }

  *&self->_isCurrentRequestPresentingSystemUI = 0;
  responseMode = self->_responseMode;
  self->_responseMode = 0;

  delayDismissalMs = self->_delayDismissalMs;
  self->_delayDismissalMs = 0;

  self->_shouldMuteSiriFeedbackBanner = 0;
  self->_shouldPauseAutoDismissal = 0;
  if ([v4 requestSource] != 9)
  {
    self->_requestIsWiredMicOrBTHeadsetOrWx = [v4 isWiredMicOrBTHeadsetOrWx];
  }

  [(SRSystemAssistantExperiencePresentation *)self _cancelAutoDismissalTimers];
  [(SRSystemAssistantExperienceViewController *)self->_saeViewController siriWillStartRequest];
  if (([v4 isTypeToSiriRequest] & 1) == 0)
  {
    keyboardBringUpTurnIdentifier = self->_keyboardBringUpTurnIdentifier;
    self->_keyboardBringUpTurnIdentifier = 0;
  }

  if (self->_keyboardBringUpTurnIdentifier)
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_keyboardBringUpTurnIdentifier;
      v11 = v9;
      v12 = +[SRUIFInstrumentationManager sharedManager];
      v13 = [v12 currentInstrumentationTurnContext];
      v14 = [v13 turnIdentifier];
      v18 = 136315650;
      v19 = "[SRSystemAssistantExperiencePresentation siriRequestWillStartWithRequestOptions:]";
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #instrumentation linking keyboard bringup turn %@ with the new typing turn %@", &v18, 0x20u);
    }

    v15 = AFTurnIdentifierGetBytes();
    v16 = objc_alloc_init(SISchemaTypingRequestTrace);
    [v16 setKeyboardAppearanceBringUpTurnID:v15];
    v17 = +[SRUIFInstrumentationManager sharedManager];
    [v17 emitInstrumentation:v16];
  }
}

- (void)siriResponseModeDidChange:(unint64_t)a3 isAttending:(BOOL)a4
{
  v4 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    requestIsWiredMicOrBTHeadsetOrWx = self->_requestIsWiredMicOrBTHeadsetOrWx;
    v11 = 136315906;
    v12 = "[SRSystemAssistantExperiencePresentation siriResponseModeDidChange:isAttending:]";
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = requestIsWiredMicOrBTHeadsetOrWx;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #sae mode updated to %lu, _requestIsWiredMicOrBTHeadsetOrWx: %d, isAttending: %d", &v11, 0x22u);
  }

  [(SRCompactAutoDismissController *)self->_autoDismissController siriResponseModeDidChange:a3 isWiredMicOrBTHeadsetOrWx:self->_requestIsWiredMicOrBTHeadsetOrWx isAttending:v4];
  v9 = MDModeGetName();
  responseMode = self->_responseMode;
  self->_responseMode = v9;
}

- (void)siriDidActivateFromSource:(int64_t)a3
{
  if (a3 == 57 || a3 == 54)
  {
    self->_isPresentingVisualIntelligenceCamera = 1;
  }

  if (SASRequestSourceIsVisualIntelligenceDirectInvocation())
  {
    self->_isPresentingVisualIntelligenceDirectInvocation = 1;
  }

  if (a3 == 21)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[SRSystemAssistantExperiencePresentation siriDidActivateFromSource:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae Loading previous conversation because we activated from a breadcrumb", &v14, 0xCu);
    }

    v6 = [(SRSystemAssistantExperiencePresentation *)self dataSource];
    v7 = [(SRSystemAssistantExperiencePresentation *)self _identifierOfPreviousConversation];
    [v6 siriPresentation:self activateConversationWithIdentifier:v7];

    [(SRSystemAssistantExperiencePresentation *)self _activeConversationDidChange];
    v8 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v8 siriPresentationDidPresentConversationFromBreadcrumb:self];
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController siriDidActivate];
  [(SRSystemAssistantExperienceViewController *)self->_saeViewController setUpConversationStarterSuggestionsWith:a3];
  if (self->_inputType == 1)
  {
    self->_hasUserTyped = 1;
    v9 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v9 siriSessionShouldPrewarmForPossibleTextRequest:self];
  }

  *&self->_userCancelledRequestViaOrbViewTap = 0;
  self->_isCurrentRequestPresentingSystemUI = 0;
  self->_initialRequestSource = a3;
  if ((a3 & 0xFFFFFFFFFFFFFFDFLL) == 0x10)
  {
    v10 = +[SRUIFInstrumentationManager sharedManager];
    v11 = [v10 currentInstrumentationTurnContext];
    v12 = [v11 turnIdentifier];
    keyboardBringUpTurnIdentifier = self->_keyboardBringUpTurnIdentifier;
    self->_keyboardBringUpTurnIdentifier = v12;
  }
}

- (void)siriDidStartNewConversationWithIdentifier:(id)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [a3 UUIDString];
    v8 = 136315394;
    v9 = "[SRSystemAssistantExperiencePresentation siriDidStartNewConversationWithIdentifier:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #sae Starting a new conversation %@", &v8, 0x16u);
  }

  [(SRSystemAssistantExperiencePresentation *)self _activeConversationDidChange];
}

- (void)speechRecordingDidBeginOnRecordRoute:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SRSystemAssistantExperiencePresentation speechRecordingDidBeginOnRecordRoute:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae recording started on recordRoute: %@", &v6, 0x16u);
  }

  self->_recordingFromWxDevice = AFRecordRouteIsHearst();
}

- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    responseMode = self->_responseMode;
    requestIsWiredMicOrBTHeadsetOrWx = self->_requestIsWiredMicOrBTHeadsetOrWx;
    v13 = 136315906;
    v14 = "[SRSystemAssistantExperiencePresentation shouldResumeInterruptedAudioPlaybackForAttendingState:]";
    v15 = 1024;
    v16 = v3;
    v17 = 2112;
    v18 = responseMode;
    v19 = 1024;
    v20 = requestIsWiredMicOrBTHeadsetOrWx;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae isAttending: %d, responseMode: %@, requestIsWiredMicOrBTHeadsetOrWx: %d", &v13, 0x22u);
  }

  if (!v3)
  {
    return 1;
  }

  v8 = self->_responseMode;
  v9 = MDModeGetName();
  if (![(NSString *)v8 isEqualToString:v9])
  {
    v10 = self->_requestIsWiredMicOrBTHeadsetOrWx;

    if (v10)
    {
      return self->_shouldResumeMediaOnIdle;
    }

    return 1;
  }

  return self->_shouldResumeMediaOnIdle;
}

- (void)handlePlayContentCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SRPlayContentViewController alloc] initWithPlayContent:v6];
  v9 = [(SRPlayContentViewController *)v8 player];

  if (v9)
  {
    [(SRPlayContentViewController *)v8 setVideoPlayerControllerDelegate:self];
    v10 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v10 siriPresentation:self setStatusBarHidden:1 animated:1];

    v11 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v11 siriPresentation:self setStatusViewHidden:1];

    v12 = [[SiriUIModalContainerViewController alloc] initWithContentViewController:v8];
    [v12 setDelegate:self];
    v13 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v13 siriPresentation:self willPresentViewController:v12];

    objc_initWeak(&location, self);
    saeViewController = self->_saeViewController;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000423E0;
    v19[3] = &unk_100166FE8;
    objc_copyWeak(&v21, &location);
    v15 = v12;
    v20 = v15;
    [(SRSystemAssistantExperienceViewController *)saeViewController presentViewController:v15 animated:1 completion:v19];
    if (v7)
    {
      v16 = objc_alloc_init(SACommandSucceeded);
      v17 = [v6 aceId];
      [v16 setRefId:v17];

      v7[2](v7, v16);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    goto LABEL_7;
  }

  if (v7)
  {
    v15 = [[SACommandFailed alloc] initWithReason:@"No AVPlayer for PlayContent command"];
    v18 = [v6 aceId];
    [v15 setRefId:v18];

    v7[2](v7, v15);
LABEL_7:
  }
}

- (BOOL)supportsVisualPresentationForConversationItem:(id)a3
{
  if ([a3 type] - 1 > 1)
  {
    return 1;
  }

  return [(SRSystemAssistantExperiencePresentation *)self _showSpeech];
}

- (void)siriDidDeactivateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperienceViewController *)self->_saeViewController presentedViewController];

  if (v5)
  {
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController dismissViewControllerAnimated:1 completion:0];
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController siriDidDeactivate];
  if (AFIsInternalInstall() && !self->_shouldMuteSiriFeedbackBanner)
  {
    [SRSiriDebugManager invokeSiriDebugFeedbackBannerFor:self->_initialRequestSource completionHandler:0];
  }

  v6 = objc_alloc_init(SRDismissalClassificationController);
  v7 = [(SRSystemAssistantExperiencePresentation *)self _dismissalContextWithDismissalReason:self->_lastDismissalReason dismissalOptions:self->_lastDismissalOptions];
  v8 = [(SRDismissalClassificationController *)v6 classifyRequestAsUnintendedWithContext:v7];
  [v7 setClassifiedAsUnintended:v8];
  [(SRDismissalClassificationController *)v6 recordDismissalEventWithContext:v7 markAsUnintended:v8];
  inputType = self->_inputType;
  initialRequestSource = self->_initialRequestSource;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100042648;
  v14[3] = &unk_100167920;
  v15 = v6;
  v16 = v7;
  v19 = v8;
  v17 = v4;
  v18 = inputType;
  v11 = v4;
  v12 = v7;
  v13 = v6;
  [(SRDismissalClassificationController *)v13 requestMitigationStatusBasedOnRequestClassification:v8 withRequestSource:initialRequestSource withCompletion:v14];
}

- (id)_siriLocalizedTriggerPhrases
{
  v2 = +[VTPreferences sharedPreferences];
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 languageCode];
  v5 = [v2 localizedTriggerPhraseForLanguageCode:v4];

  v6 = +[NSCharacterSet whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = +[VTPreferences sharedPreferences];
  v9 = +[AFPreferences sharedPreferences];
  v10 = [v9 languageCode];
  v11 = [v8 localizedCompactTriggerPhraseForLanguageCode:v10];

  v12 = +[NSCharacterSet whitespaceCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v16[0] = v13;
  v16[1] = v7;
  v14 = [NSArray arrayWithObjects:v16 count:2];

  return v14;
}

- (void)loadContinuerSuggestionsForRequest:(id)a3 currentMode:(id)a4 dialogPhase:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SRSystemAssistantExperiencePresentation loadContinuerSuggestionsForRequest:currentMode:dialogPhase:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #suggestions addViews was received, triggering conversation continuer suggestions", &v10, 0xCu);
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController loadContinuerSuggestionsForRequest:v7 currentMode:v8];
}

- (void)didReceiveAddViewsDialogPhaseForSuggestions:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SRSystemAssistantExperiencePresentation didReceiveAddViewsDialogPhaseForSuggestions:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #suggestions dialog phase %@ received", &v6, 0x16u);
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController didReceiveAddViewsDialogPhaseForSuggestions:v4];
}

- (void)siriDidTransitionFromState:(int64_t)a3 event:(int64_t)a4
{
  if (a4 == 13)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      hasPendingAutoDismissal = self->_hasPendingAutoDismissal;
      recordingFromWxDevice = self->_recordingFromWxDevice;
      v15 = 136315650;
      v16 = "[SRSystemAssistantExperiencePresentation siriDidTransitionFromState:event:]";
      v17 = 1024;
      v18 = hasPendingAutoDismissal;
      v19 = 1024;
      v20 = recordingFromWxDevice;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #sae Speech was mitigated as side speech, _hasPendingAutoDismissal: %d, _recordingFromWxDevice: %d", &v15, 0x18u);
    }

    if (self->_hasPendingAutoDismissal)
    {
      if (self->_isPresentingVisualIntelligenceCamera)
      {
        [(SRSystemAssistantExperiencePresentation *)self dismissSiriResults];
LABEL_18:
        v6 = 0;
        goto LABEL_19;
      }

      v11 = [(SRSystemAssistantExperiencePresentation *)self delegate];
      v12 = v11;
      v13 = self;
      v14 = 4;
    }

    else
    {
      if (!self->_recordingFromWxDevice)
      {
        goto LABEL_18;
      }

      v11 = [(SRSystemAssistantExperiencePresentation *)self delegate];
      v12 = v11;
      v13 = self;
      v14 = 58;
    }

    [v11 dismissSiriPresentation:v13 withReason:v14];

    goto LABEL_18;
  }

  if (a4 == 12)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[SRSystemAssistantExperiencePresentation siriDidTransitionFromState:event:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #sae Speech was determined as directed at siri stop pausing auto dismissal", &v15, 0xCu);
    }

    goto LABEL_18;
  }

  if (a4 != 11)
  {
    return;
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SRSystemAssistantExperiencePresentation siriDidTransitionFromState:event:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae Speech start detected, pausing auto dismissal", &v15, 0xCu);
  }

  v6 = 1;
LABEL_19:
  self->_shouldPauseAutoDismissal = v6;
}

- (void)siriWillProcessAppLaunchWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBB3C(v4, v5);
  }

  [(SRSystemAssistantExperiencePresentation *)self _handleNonSnippetResponse:2];
}

- (void)siriDidReceiveLatencyInformation:(id)a3
{
  v14 = a3;
  v4 = [(SRSystemAssistantExperiencePresentation *)self _activeRequestOptions];
  v5 = [v4 requestSource];

  if (SASRequestSourceIsVisualIntelligenceDirectInvocation())
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 siriUILocalizedStringForKey:@"TAMALE_INITIAL_LATENCY_SUMMARY" table:0];
    v8 = +[SiriSharedUIGenerativeAssistantOnboardingManager modelName];
    v9 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v8];

    v10 = 1;
    if (v5 != 53 && v5 != 60)
    {
      v10 = [v14 shouldShow];
    }

    v11 = [SRUIFLatencyInformation alloc];
    v12 = [v14 taskIdentifier];
    v13 = [v11 initWithLatencySummary:v9 taskIdentifier:v12 shouldShow:v10];

    [(SiriSharedUISAEViewModelController *)self->_activeViewModelController didReceiveLatencyInformation:v13];
  }

  else
  {
    [(SiriSharedUISAEViewModelController *)self->_activeViewModelController didReceiveLatencyInformation:v14];
  }
}

- (void)previousConversationDidLoad:(id)a3
{
  v14 = a3;
  v4 = [v14 lastItem];
  if (![v4 isPersistentAcrossInvocations])
  {
LABEL_8:

    goto LABEL_9;
  }

  v5 = [(SRSystemAssistantExperienceViewController *)self->_saeViewController isInAmbient];

  if ((v5 & 1) == 0)
  {
    v6 = SRUIFMaxIntervalForDisplayingPreviousConversation();
    if (v6 != -1)
    {
      v7 = v6;
      v8 = [SRUIFPreferences alloc];
      v4 = [v8 initWithSuiteName:SRUIFPreferencesDefaultDomain];
      v9 = [v4 integerForKey:SRUIFPreferencesPreviousConversationEndTimestamp];
      if (v9)
      {
        v10 = v9;
        +[NSDate timeIntervalSinceReferenceDate];
        if (v11 - v10 >= 0 && v11 - v10 <= v7)
        {
          v12 = [(SRSystemAssistantExperiencePresentation *)self dataSource];
          v13 = [v14 identifier];
          [v12 siriPresentation:self activateConversationWithIdentifier:v13];

          [(SRSystemAssistantExperiencePresentation *)self _activeConversationDidChange];
        }
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)attemptedToSaveConversation:(id)a3 withResult:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 lastItem];
  v6 = [v5 isPersistentAcrossInvocations];

  if (v6)
  {
    v7 = [SRUIFPreferences alloc];
    v10 = [v7 initWithSuiteName:SRUIFPreferencesDefaultDomain];
    if (v4)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    [v10 setInteger:v9 forKey:SRUIFPreferencesPreviousConversationEndTimestamp];
  }
}

- (void)_handleNonSnippetResponse:(int64_t)a3
{
  [(SRSystemAssistantExperienceViewController *)self->_saeViewController setRevealRecognizedSpeech:0];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[SRSystemAssistantExperiencePresentation _handleNonSnippetResponse:]";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #dismissal Presenting System UI -> recording _isCurrentRequestPresentingSystemUI = YES", &v18, 0xCu);
      }

      self->_isCurrentRequestPresentingSystemUI = 1;
      if (self->_inputType != 1)
      {
        [(SRSystemAssistantExperiencePresentation *)self _scheduleAutoDismissalPostSystemUIResponse];
      }

      v6 = 0;
    }

    else
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[SRSystemAssistantExperiencePresentation _handleNonSnippetResponse:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #dismissal Omitted dialog -> recording _hasOmittedDialogFromPresenting = YES", &v18, 0xCu);
      }

      v6 = 0;
      self->_hasOmittedDialogFromPresenting = 1;
    }

    goto LABEL_30;
  }

  if (a3 == 2)
  {
    if (!AFIsPersistentSiriAvailable())
    {
      return;
    }

    inputType = self->_inputType;
    v13 = AFSiriLogContextConnection;
    v14 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    if (inputType == 1)
    {
      if (v14)
      {
        v18 = 136315138;
        v19 = "[SRSystemAssistantExperiencePresentation _handleNonSnippetResponse:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #dismissal Siri will process app launch -> dismissing Siri", &v18, 0xCu);
      }

      v10 = 29;
      goto LABEL_23;
    }

    if (v14)
    {
      v18 = 136315138;
      v19 = "[SRSystemAssistantExperiencePresentation _handleNonSnippetResponse:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #dismissal Siri will process app launch -> recording _willLaunchApp = YES", &v18, 0xCu);
    }

    v6 = 1;
    self->_willLaunchApp = 1;
  }

  else
  {
    if (a3 != 3)
    {
      return;
    }

    v7 = self->_inputType;
    v8 = AFSiriLogContextConnection;
    v9 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (v9)
      {
        v18 = 136315138;
        v19 = "[SRSystemAssistantExperiencePresentation _handleNonSnippetResponse:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #dismissal Response presented fully in-app -> dismissing Siri", &v18, 0xCu);
      }

      v10 = 64;
LABEL_23:
      v15 = [(SRSystemAssistantExperiencePresentation *)self delegate];
      [v15 dismissSiriPresentation:self withReason:v10];

      return;
    }

    if (v9)
    {
      v18 = 136315138;
      v19 = "[SRSystemAssistantExperiencePresentation _handleNonSnippetResponse:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #dismissal Response presented fully in-app -> recording _presentedResponseInApp = YES", &v18, 0xCu);
    }

    v6 = 1;
    self->_presentedResponseFullyInApp = 1;
  }

LABEL_30:
  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[SRSystemAssistantExperiencePresentation _handleNonSnippetResponse:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Removing all elements of the response UI if needed", &v18, 0xCu);
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController removeResponseElementsIfNeeded:-1];
  if (self->_inputType == 1)
  {
    v17 = v6;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (v6)
    {
      [(SRSystemAssistantExperiencePresentation *)self _scheduleAutoDismissalPostAppLaunch];
    }
  }

  else
  {
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController endTypeToSiriLatencyStateIfNeeded];
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController resignKeyboardIfNeeded];
  }
}

- (BOOL)_showSpeech
{
  if ([(SRSystemAssistantExperiencePresentation *)self alwaysShowRecognizedSpeech])
  {
    return 1;
  }

  v4 = [(SRSystemAssistantExperienceViewController *)self->_saeViewController viewState];
  v5 = [v4 activeSmartDialogView];
  v6 = [v5 revealRecognizedSpeech];

  return v6;
}

- (void)siriWillPunchOutWithOptions:(id)a3
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBBC8(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  self->_willPunchOut = 1;
}

- (void)siriDidPunchOutWithOptions:(id)a3
{
  v6 = a3;
  if ([v6 containsObject:SAUIAppPunchOutLaunchOptionsRetainSiriValue])
  {
    v4 = [v6 containsObject:SAUIAppPunchOutLaunchOptionsRemoveResponseUIValue];
    saeViewController = self->_saeViewController;
    if (v4)
    {
      [(SRSystemAssistantExperienceViewController *)saeViewController removeResponseElementsIfNeeded:-1];
    }

    else if (([(SRSystemAssistantExperienceViewController *)saeViewController presentedResponseElements]& 2) != 0)
    {
      goto LABEL_6;
    }

    [(SRSystemAssistantExperiencePresentation *)self _scheduleAutoDismissalPostAppLaunch];
  }

LABEL_6:
}

- (void)_activeConversationDidChange
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self _activeConversation];
  v3 = [[SiriSharedUISAEViewModelController alloc] initWithConversation:v4 delegate:self];
  [(SRSystemAssistantExperiencePresentation *)self setActiveViewModelController:v3];
}

- (void)setActiveViewModelController:(id)a3
{
  v4 = a3;
  [(SiriSharedUISAEViewModelController *)self->_activeViewModelController setDelegate:0];
  activeViewModelController = self->_activeViewModelController;
  self->_activeViewModelController = v4;
  v6 = v4;

  v7 = self->_activeViewModelController;
  v8 = [(SRSystemAssistantExperienceViewController *)self->_saeViewController viewState];
  [(SiriSharedUISAEViewModelController *)v7 setViewModelChangeObserver:v8];
}

- (int64_t)inputTypeForSAEViewModelController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self _inputType];

  return [(SRSystemAssistantExperiencePresentation *)self _viewModelInputTypeForRequestInputType:v4];
}

- (void)saeViewModelController:(id)a3 didProcessConversationItemsWithIdentifiers:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self didPresentConversationItemsWithIdentifiers:v5];
}

- (BOOL)siriDeviceLockedForViewModelController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v5 = ([v4 siriDeviceLockStateForSiriPresentation:self] >> 1) & 1;

  return v5;
}

- (id)saeViewModelController:(id)a3 requestsTranscriptItemForAceObject:(id)a4
{
  v5 = a4;
  v6 = [SRLocalSnippetManager transcriptItemForObject:v5];
  if (!v6)
  {
    v7 = +[SiriUISnippetManager sharedInstance];
    v6 = [v7 transcriptItemForObject:v5 sizeClass:1];
  }

  [v6 setTaskIdentifier:self->_currentTaskIdentifier];

  return v6;
}

- (void)saeViewController:(id)a3 didChangeText:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!self->_hasUserTyped && self->_inputType == 1)
  {
    self->_hasUserTyped = 1;
    v7 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v7 siriSessionShouldPrewarmForPossibleTextRequest:self];
  }
}

- (void)immersiveExperienceRequestedForViewModelController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 siriPresentation:self requestHostBlurVisible:1 reason:3 fence:0];
}

- (void)handleRequestEndBehavior:(id)a3 isAttending:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[SRSystemAssistantExperiencePresentation handleRequestEndBehavior:isAttending:]";
    v18 = 1024;
    LODWORD(v19) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s handling request end behavior in presentation: isAttending: %d", &v16, 0x12u);
  }

  if (v4)
  {
    if ([v6 premptivelyResumeMedia])
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "[SRSystemAssistantExperiencePresentation handleRequestEndBehavior:isAttending:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Presentation will resume media on idle", &v16, 0xCu);
      }

      self->_shouldResumeMediaOnIdle = 1;
    }

    v9 = [v6 minimumAutoDismissalTimeInMs];

    if (v9)
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v6 minimumAutoDismissalTimeInMs];
        v13 = [v12 longValue];
        v16 = 136315394;
        v17 = "[SRSystemAssistantExperiencePresentation handleRequestEndBehavior:isAttending:]";
        v18 = 2048;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Setting delay dismissal for SAE presentation by %ld milliseconds.", &v16, 0x16u);
      }

      v14 = [v6 minimumAutoDismissalTimeInMs];
      delayDismissalMs = self->_delayDismissalMs;
      self->_delayDismissalMs = v14;
    }
  }
}

- (void)updateFeedbackFormWithSpeakableText:(id)a3
{
  v8 = a3;
  currentFeedbackForm = self->_currentFeedbackForm;
  if (!currentFeedbackForm)
  {
    v5 = objc_alloc_init(SAUIFeedbackForm);
    v6 = self->_currentFeedbackForm;
    self->_currentFeedbackForm = v5;

    [(SAUIFeedbackForm *)self->_currentFeedbackForm setDomain:SAUIFeedbackFormDomainSystemAssistantValue];
    currentFeedbackForm = self->_currentFeedbackForm;
  }

  v7 = [(SAUIFeedbackForm *)currentFeedbackForm output];

  if (!v7)
  {
    [(SAUIFeedbackForm *)self->_currentFeedbackForm setOutput:v8];
  }
}

- (void)siriSAEViewControllerRequestStopAttending:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 siriWillStopAttending:self];
}

- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  bugReportingPresenter = self->_bugReportingPresenter;
  if (bugReportingPresenter && [(AFUIBugReportPresenting *)bugReportingPresenter hasContentAtPoint:x, y])
  {
    v8 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    (*(v9 + 2))(v9, 1);
  }

  else
  {
    [(SRSystemAssistantExperiencePresentation *)self _convertToPointInSAEViewCoordinates:x, y];
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController hasContentAtPoint:v9 completion:?];
  }

  v8 = v9;
LABEL_7:
}

- (CGPoint)_convertToPointInSAEViewCoordinates:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SRSystemAssistantExperienceViewController *)self->_saeViewController view];
  v6 = [v5 window];
  v7 = [v6 screen];

  v8 = [v7 coordinateSpace];
  [v5 convertPoint:v8 fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)didDetectGestureEvent:(int64_t)a3 inRegion:(int64_t)a4
{
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBC40(v7);
  }

  if (a4 == 1)
  {
    [(SRSystemAssistantExperiencePresentation *)self _didDetectTouchOutsideOfSiri];
  }

  else if (!a4)
  {
    [(SRSystemAssistantExperiencePresentation *)self _didDetectGestureEventWithinSiri:a3];
  }
}

- (void)_didDetectGestureEventWithinSiri:(int64_t)a3
{
  if (self->_inputType != 1)
  {
    self->_detectedTouchOutsideOfSiri = 0;
    [(SRSystemAssistantExperiencePresentation *)self _cancelAutoDismissalTimers];
  }
}

- (void)_didDetectTouchOutsideOfSiri
{
  if (self->_inputType != 1)
  {
    v3 = [(SRSystemAssistantExperienceViewController *)self->_saeViewController presentedResponseElements];
    v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    v5 = [v4 siriPresentationIsPresentingSystemUI:self];

    if (((v3 & 2) == 0) & (v5 ^ 1)) != 0 || (v3)
    {
      if ((~v3 & 3) == 0)
      {
        [(SRSystemAssistantExperienceViewController *)self->_saeViewController removeResponseElementsIfNeeded:2];
      }

      if (v3 & v5)
      {
        v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
        [v6 siriPresentationRequestsSystemUICollapse:self];
      }

      if (self->_siriIsIdleAndQuiet)
      {

        [(SRSystemAssistantExperiencePresentation *)self _scheduleAutoDismissalForTouchOutsideOfSiri];
      }

      else
      {
        self->_detectedTouchOutsideOfSiri = 1;
      }
    }

    else
    {
      v7 = [(SRSystemAssistantExperiencePresentation *)self delegate];
      [v7 dismissSiriPresentation:self withReason:23];
    }
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)a3 withOriginalDismissalOptions:(id)a4
{
  v10 = a4;
  self->_lastDismissalReason = a3;
  objc_storeStrong(&self->_lastDismissalOptions, a4);
  v7 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v8 = [v7 siriDeviceLockStateForSiriPresentation:self];

  if (a3 == 68 || a3 == 13)
  {
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [SRNotificationUtility postSiriUnavailableNotification:v9];
  }
}

- (id)_dismissalContextWithDismissalReason:(int64_t)a3 dismissalOptions:(id)a4
{
  v6 = a4;
  v7 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v8 = [v7 siriDeviceLockStateForSiriPresentation:self];

  v9 = [(SRSystemAssistantExperiencePresentation *)self dataSource];
  v10 = [v9 siriStateForSiriPresentation:self];

  if (self->_hasPresentedContent || self->_hasOmittedDialogFromPresenting)
  {
    v11 = 2;
  }

  else if (self->_isCurrentRequestPresentingSystemUI)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = [SRDismissalClassificationContext alloc];
  v13 = [v6 reason];

  v14 = [(SRDismissalClassificationContext *)v12 initWithCancellationReason:v13 contentPresentationState:v11 dismissalReason:a3 isDeviceUnlocked:v8 == 0 siriState:v10 requestSource:self->_initialRequestSource];

  return v14;
}

- (double)expectedContentWidth
{
  v3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v3 contentWidthForForSiriPresentation:self];
  v5 = v4;

  return v5;
}

- (void)tapToEditPresented
{
  v3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v3 tapToEditPresented:self];
}

- (CGSize)maxSizeForSnippet
{
  [(SRSystemAssistantExperienceViewController *)self->_saeViewController maxSizeForSnippet];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)effectiveContentFrame
{
  v2 = [(SRSystemAssistantExperienceViewController *)self->_saeViewController view];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)viewController:(id)a3 openURL:(id)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100044694;
  v9[3] = &unk_100167428;
  v10 = a5;
  v8 = v10;
  [(SRSystemAssistantExperiencePresentation *)self viewController:a3 openURL:a4 launchOptions:0 completion:v9];
}

- (void)viewController:(id)a3 openURL:(id)a4 launchOptions:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v12 siriPresentation:self openURL:v11 launchOptions:v10 conversationId:0 completion:v9];
}

- (void)viewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5
{
  v24 = a3;
  v8 = a4;
  v26 = v8;
  v27 = a5;
  if (v27)
  {
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 1;
    v9 = dispatch_group_create();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v39 objects:v46 count:{16, v24, v8}];
    if (v10)
    {
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          dispatch_group_enter(v9);
          v14 = [(SRSystemAssistantExperiencePresentation *)self delegate];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100044AD4;
          v36[3] = &unk_100167948;
          v38 = v43;
          v37 = v9;
          [v14 siriPresentation:self performAceCommand:v13 conversationItemIdentifier:0 completion:v36];
        }

        v10 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v10);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044AEC;
    block[3] = &unk_100167970;
    v34 = v27;
    v35 = v43;
    dispatch_group_notify(v9, &_dispatch_main_q, block);

    _Block_object_dispose(v43, 8);
  }

  else
  {
    v15 = +[SRUIFInstrumentationManager sharedManager];
    v16 = [v15 currentInstrumentationTurnContext];
    v17 = [v16 turnIdentifier];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v45 count:16];
    if (v19)
    {
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          v23 = [(SRSystemAssistantExperiencePresentation *)self delegate];
          [v23 siriPresentation:self performAceCommand:v22 conversationItemIdentifier:0 turnIdentifier:v17 completion:0];
        }

        v19 = [v18 countByEnumeratingWithState:&v29 objects:v45 count:16];
      }

      while (v19);
    }
  }
}

- (void)saeViewController:(id)a3 speakText:(id)a4 isPhonetic:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v12 = v11;
  if (v6)
  {
    [v11 siriPresentation:self synthesizeSpeechWithPhoneticText:v10 completion:v9];
  }

  else
  {
    [v11 siriPresentation:self synthesizeSpeechWithText:v10 completion:v9];
  }
}

- (void)stopSpeakingForSAEViewController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 stopSpeakingForSiriPresentation:self];
}

- (unint64_t)lockStateForSAEViewController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v5 = [v4 siriDeviceLockStateForSiriPresentation:self];

  return v5;
}

- (id)localeForSAEViewController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v5 = [v4 localeForSiriPresentation:self];

  return v5;
}

- (void)viewControllerDidPresentUserInterface:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriPresentationDidPresentUserInterface:self];
}

- (void)userTouchedSnippet
{
  v2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v2 userTouchedSnippet];
}

- (void)saeViewController:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v10 siriPresentation:self handleStartLocalRequest:v11 turnIdentifier:v7];
  }
}

- (void)saeViewController:(id)a3 setStatusViewHidden:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self setStatusViewHidden:v4];
}

- (void)viewController:(id)a3 requestsHostBackgroundBlurVisible:(BOOL)a4 reason:(int64_t)a5 fence:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v10 siriPresentation:self requestHostBlurVisible:v7 reason:a5 fence:v9];
}

- (void)viewController:(id)a3 reduceOrbOpacity:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self reduceOrbOpacity:v4];
}

- (void)endSiriSessionForViewController:(id)a3 withDismissalReason:(int64_t)a4
{
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 dismissSiriPresentation:self withReason:a4];
}

- (void)stopRecordingForViewController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 stopRecordingSpeechForSiriPresentation:self];
}

- (void)cancelRequestForViewController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 cancelRequestForSiriPresentation:self];
}

- (void)siriResultsWillDismissInTamale
{
  v3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v3 cancelRequestForSiriPresentation:self];

  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 siriWillStopAttending:self];

  v5 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v5 invalidateConnectionForSiriPresentation:self];

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController removeResponseElementsIfNeeded:-1];
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 updateEdgeLightWindowLevel:0];

  [(SiriSharedUISAEViewModelController *)self->_activeViewModelController clearLatencySummaryWithoutViewUpdate];

  [(SRSystemAssistantExperiencePresentation *)self resetViewsAndClearASR:1];
}

- (void)_updatePresentationForVisualIntelligenceCameraIfNeeded
{
  if (!self->_isPresentingVisualIntelligenceCamera)
  {
    [(SRSystemAssistantExperiencePresentation *)self siriResultsWillDismissInTamale];
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController didSetInputTypeFromTextToVisualIntelligenceCamera];
    self->_isPresentingVisualIntelligenceCamera = 1;
  }

  saeViewController = self->_saeViewController;

  [(SRSystemAssistantExperienceViewController *)saeViewController switchPresentationToVisualIntelligenceCameraInput];
}

- (void)siriResultsDidDismissInTamale
{
  if (self->_isPresentingVisualIntelligenceCamera)
  {
    [(SRSystemAssistantExperiencePresentation *)self _setInputType:3];
    v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v4 siriResultsDidDismissInTamaleForSiriPresentation:self];
  }
}

- (void)didPresentContentForSAEViewController:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBD24(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  self->_hasPresentedContent = 1;
  if ([(SRSystemAssistantExperienceViewController *)self->_saeViewController isInAmbient])
  {
    v13 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v13 siriPresentation:self requestHostBlurVisible:1 reason:2 fence:0];
  }
}

- (id)effectiveCoreLocationBundleForSAEViewController:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v5 = [v4 effectiveCoreLocationBundleForSiriPresentation:self];

  return v5;
}

- (void)siriSAEViewController:(id)a3 willPresentViewController:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self willPresentViewController:v5];
}

- (void)didBeginProcessingConversationItems
{
  v2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v2 didBeginProcessingConversationItems];
}

- (void)siriSAEViewController:(id)a3 willDismissViewController:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self willDismissViewController:v5];
}

- (void)saeViewController:(id)a3 viewDidAppearForAceObject:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self viewDidAppearWithAceObject:v5];
}

- (void)saeViewController:(id)a3 viewDidDisappearForAceObject:(id)a4
{
  v5 = a4;
  v8 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v6 = [v5 encodedClassName];
  v7 = [v5 aceId];

  [v8 siriPresentation:self viewDidDisappearWithClassDescriptor:v6 identifier:v7];
}

- (void)userDrilledIntoSnippet
{
  v2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v2 userDrilledIntoSnippet];
}

- (void)siriSAEViewControllerRequestsVoiceActivation:(id)a3 withRequestOptions:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self startRequestWithOptions:v5];
}

- (void)siriSAEViewControllerRequestsTextActivation:(id)a3 withRequestSource:(int64_t)a4
{
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBD9C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  self->_userTappedToEditUtterance = 1;
  [(SRSystemAssistantExperiencePresentation *)self _setInputType:1];
  v14 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v14 siriWillStopAttending:self];

  v15 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v15 cancelRequestForSiriPresentation:self];

  v16 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v16 siriSessionDidSwitchToSource:self source:a4];
}

- (void)siriSAEViewControllerRequestsTextRequest:(id)a3 withRequestOptions:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    [v5 requestSource];
    v8 = SASRequestSourceGetName();
    v10 = 136315394;
    v11 = "[SRSystemAssistantExperiencePresentation siriSAEViewControllerRequestsTextRequest:withRequestOptions:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Start text request with source: %@", &v10, 0x16u);
  }

  v9 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v9 siriPresentation:self startRequestWithOptions:v5];
}

- (void)saeViewController:(id)a3 preventOutsideTouchesFromDismissingSiri:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self preventOutsideTouchesFromDismissingSiri:v4];
}

- (void)viewController:(id)a3 willChangeKeyboardVisibility:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self willChangeKeyboardVisibility:v4];
}

- (void)didTapCloseButtonOnSnippet
{
  v3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v3 dismissSiriPresentation:self withReason:66];
}

- (void)toggleHomeAffordanceHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 toggleHomeAffordanceHidden:v3];
}

- (void)updateEdgeLightWindowLevel:(int64_t)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 updateEdgeLightWindowLevel:a3];
}

- (void)siriDidReceiveStartGenAIEnablementFlowCommand:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v7 siriWillStopAttending:self];

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController presentGenerativeAssistantOnboardingFlowWithCommand:v8 completion:v6];
}

- (BOOL)alwaysShowRecognizedSpeech
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 alwaysShowRecognizedSpeech];

  return v3;
}

- (void)didReceiveBugButtonLongPress
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBE14(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  self->_shouldMuteSiriFeedbackBanner = 1;
  [(SRSystemAssistantExperiencePresentation *)self _setupBugReportingPresenterIfNecessary];
  [(AFUIBugReportPresenting *)self->_bugReportingPresenter didReceiveBugButtonLongPress];
}

- (void)didReceiveReportBugAction
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBE8C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  self->_shouldMuteSiriFeedbackBanner = 1;
  [(SRSystemAssistantExperiencePresentation *)self _setupBugReportingPresenterIfNecessary];
  [(AFUIBugReportPresenting *)self->_bugReportingPresenter didReceiveReportBugAction];
}

- (void)_setupBugReportingPresenterIfNecessary
{
  if (!self->_bugReportingPresenter)
  {
    self->_bugReportingPresenter = AFUICreateBugReportPresentingWithDelegate();

    _objc_release_x1();
  }
}

- (void)bugReportPresenter:(id)a3 requestsToHandlePasscodeUnlockWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 handlePasscodeUnlockForSiriPresentation:self withClient:0 withCompletion:v5];
}

- (void)bugReportPresenter:(id)a3 requestsToOpenURL:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v9 siriPresentation:self openURL:v8 conversationId:0 completion:v7];
}

- (void)bugReportPresenter:(id)a3 requestsToPerformAceCommand:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self performAceCommand:v5 conversationItemIdentifier:0 completion:0];
}

- (void)bugReportPresenter:(id)a3 requestsToTakeScreenshotWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 getScreenshotImageForSiriPresentation:self withCompletion:v5];
}

- (void)bugReportPresenter:(id)a3 setBugReportingAvailable:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self setBugReportingAvailable:v4];
}

- (id)bugReportPresenterRequestsBugReportKeywordIdentifiers:(id)a3
{
  v5 = @"1229562";
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)bugReportPresenterRequestsBugReportPrefixForTitle:(id)a3
{
  v3 = objc_alloc_init(UIDevice);
  v4 = [v3 buildVersion];

  v5 = [NSString stringWithFormat:@"[%@]", v4];

  return v5;
}

- (void)bugReportPresenter:(id)a3 setStatusViewHidden:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self setStatusViewHidden:v4];
}

- (void)bugReportPresenterRequestsInvalidateAutoDismissal:(id)a3
{
  [(SRCompactAutoDismissController *)self->_autoDismissController setEnabled:0];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRSystemAssistantExperiencePresentation bugReportPresenterRequestsInvalidateAutoDismissal:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #autodismiss Siri TTR disabled Auto Dismissal to keep Siri TTR modal up.", &v4, 0xCu);
  }
}

- (void)bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:(id)a3
{
  v3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v3 siriSessionWillCancelRequest];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRSystemAssistantExperiencePresentation bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #dismissal Cancel current Siri Session request so that it doesn't interrupt user filing issue details.", &v5, 0xCu);
  }
}

- (void)bugReportPresenter:(id)a3 requestsSiriDismissalWithReason:(int64_t)a4
{
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRSystemAssistantExperiencePresentation bugReportPresenter:requestsSiriDismissalWithReason:]";
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #dismissal Dismissing Siri with SASDismissalReason: %ld", &v8, 0x16u);
  }

  v7 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v7 dismissSiriPresentation:self withReason:a4];
}

- (void)saeViewController:(id)a3 requestsKeyboardWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self requestsKeyboardWithCompletion:v5];
}

- (void)saeViewController:(id)a3 willBeginEditingOfType:(int64_t)a4
{
  v5 = a4 == 1;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self willBeginEditingOfType:v5];
}

- (void)saeViewControllerDidEndEditing:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 siriPresentationDidResignFirstResponder:self];
}

- (void)viewController:(id)a3 siriRequestEnteredWithText:(id)a4
{
  self->_hasUserTyped = 0;
  v5 = a4;
  v6 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v6 siriPresentation:self startRequestForText:v5];
}

- (void)viewController:(id)a3 siriRequestEnteredWithSuggestion:(id)a4 suggestionRequestType:(int64_t)a5
{
  v7 = a4;
  v8 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v8 siriPresentation:self startRequestForSuggestion:v7 inputType:self->_inputType suggestionRequestType:a5];
}

- (void)viewController:(id)a3 siriRequestEnteredWithSuggestionToolInvocation:(id)a4 turnIdentifier:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v10 siriPresentation:self startRequestForSuggestionToolInvocation:v11 turnIdentifier:v7];
  }
}

- (void)viewController:(id)a3 didFinishEditingUtteranceWithText:(id)a4 originalUserUtterance:(id)a5 selectionResults:(id)a6 showASR:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v15 = [v12 correctionIdentifier];
  [v14 siriPresentation:self startEditedRequestWithText:v11 correctionIdentifier:v15 userSelectionResults:v13];

  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SRSystemAssistantExperiencePresentation viewController:didFinishEditingUtteranceWithText:originalUserUtterance:selectionResults:showASR:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s #sae: creating new UserUtterance from edited text", &v22, 0xCu);
  }

  v17 = [AFUserUtterance alloc];
  v18 = [v12 correctionIdentifier];
  v19 = [v17 initWithString:v11 correctionIdentifier:v18];

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController setRevealRecognizedSpeech:v7];
  v20 = [(SRSystemAssistantExperiencePresentation *)self activeViewModelController];
  [v20 revealUserUtterance:v19 backingAceObject:0];

  v21 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v21 siriPresentationDidEndEditing:self];
}

- (void)saeViewControllerRequestsHIDEventDefferal:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 siriPresentationRequestsHIDEventDefferal:self];
}

- (void)saeViewControllerCancelHIDEventDefferal:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 siriPresentationCancelHIDEventDefferal:self];
}

- (id)feedbackFormForCurrentRequest
{
  currentFeedbackForm = self->_currentFeedbackForm;
  if (!currentFeedbackForm)
  {
    v4 = objc_alloc_init(SAUIFeedbackForm);
    v5 = self->_currentFeedbackForm;
    self->_currentFeedbackForm = v4;

    [(SAUIFeedbackForm *)self->_currentFeedbackForm setDomain:SAUIFeedbackFormDomainSystemAssistantValue];
    currentFeedbackForm = self->_currentFeedbackForm;
  }

  return currentFeedbackForm;
}

- (void)requestToHandlePasscodeUnlockWithClient:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v7 handlePasscodeUnlockForSiriPresentation:self withClient:a3 withCompletion:v6];
}

- (SASRequestOptions)_activeRequestOptions
{
  v3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v4 = [v3 activeRequestOptionsForSiriPresentation:self];

  return v4;
}

- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)a3 isAttending:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    responseMode = self->_responseMode;
    requestIsWiredMicOrBTHeadsetOrWx = self->_requestIsWiredMicOrBTHeadsetOrWx;
    v12 = 136316162;
    v13 = "[SRSystemAssistantExperiencePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v4;
    v18 = 2112;
    v19 = responseMode;
    v20 = 1024;
    v21 = requestIsWiredMicOrBTHeadsetOrWx;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #sae siriIsIdleAndQuiet: %d, isAttending: %d, responseMode: %@, requestIsWiredMicOrBTHeadsetOrWx: %d", &v12, 0x28u);
  }

  self->_siriIsIdleAndQuiet = v5;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SRSystemAssistantExperiencePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Stopping auto dismissal if needed because idle and quiet status did change: siriIsIdleAndQuiet=%d, isAttending=%d", &v12, 0x18u);
  }

  [(SRCompactAutoDismissController *)self->_autoDismissController stopAutoDismissalAttentionController];
  if (v5)
  {
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController siriIsIdleAndQuiet];
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRSystemAssistantExperiencePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Starting auto dismissal if needed because Siri is idle and quiet", &v12, 0xCu);
    }

    [(SRSystemAssistantExperiencePresentation *)self _startAutoDismissalIfNeededGivenSiriIsAttending:v4];
  }
}

- (BOOL)shouldUseEventDrivenIdleAndQuietUpdates
{
  inputType = self->_inputType;
  if (inputType == 3)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[SRSystemAssistantExperiencePresentation shouldUseEventDrivenIdleAndQuietUpdates]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s InputTypeTamale shouldUseEventDrivenIdleAndQuietUpdates=False", &v5, 0xCu);
    }
  }

  return inputType != 3;
}

- (id)dismissalUserInfo
{
  [(SRCompactAutoDismissController *)self->_autoDismissController autoDismissalReason];
  v2 = SUICStringForAutoDismissalReason();
  if (v2)
  {
    v6[0] = SiriUIDismissalReasonUserInfoKey;
    v3 = SiriUIDismissalReasonStringFromReason();
    v6[1] = SiriUIDismissalReasonDescriptionUserInfoKey;
    v7[0] = v3;
    v7[1] = v2;
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_startAutoDismissalIfNeededGivenSiriIsAttending:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[SRSystemAssistantExperiencePresentation _startAutoDismissalIfNeededGivenSiriIsAttending:]";
    v17 = 1024;
    LODWORD(v18) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Starting auto dismissal if needed, isAttending=%d", &v15, 0x12u);
  }

  if (self->_inputType == 1)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[SRSystemAssistantExperiencePresentation _startAutoDismissalIfNeededGivenSiriIsAttending:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Not starting auto dismissal because we're in type-to-Siri mode", &v15, 0xCu);
    }
  }

  else
  {
    if (self->_detectedTouchOutsideOfSiri)
    {
      [(SRSystemAssistantExperiencePresentation *)self _scheduleAutoDismissalForTouchOutsideOfSiri];
    }

    if (v3)
    {
      delayDismissalMs = self->_delayDismissalMs;
      if (delayDismissalMs)
      {
        v8 = [(NSNumber *)delayDismissalMs longValue]/ 1000.0;
        v9 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315394;
          v16 = "[SRSystemAssistantExperiencePresentation _startAutoDismissalIfNeededGivenSiriIsAttending:]";
          v17 = 2048;
          v18 = *&v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #autodismiss, setting minimum dismissal time to %lf s", &v15, 0x16u);
        }
      }

      else
      {
        v8 = 0.0;
      }

      [(SRCompactAutoDismissController *)self->_autoDismissController updateMinimumIdleTimeInterval:v8];
    }

    [(SRCompactAutoDismissController *)self->_autoDismissController startAutoDismissalAttentionController];
    if (!self->_hasPresentedContent && !self->_hasOmittedDialogFromPresenting && !self->_isCurrentRequestPresentingSystemUI && !self->_willLaunchApp && !self->_willPunchOut && !self->_presentedResponseFullyInApp && !self->_userTappedToEditUtterance)
    {
      userCancelledRequestViaOrbViewTap = self->_userCancelledRequestViaOrbViewTap;
      v11 = AFSiriLogContextConnection;
      v12 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
      if (userCancelledRequestViaOrbViewTap)
      {
        if (v12)
        {
          v15 = 136315394;
          v16 = "[SRSystemAssistantExperiencePresentation _startAutoDismissalIfNeededGivenSiriIsAttending:]";
          v17 = 2048;
          v18 = 0x4008000000000000;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Siri is idle and hasn't presented content to the user. Scheduling autodismissal in %.2f seconds because orbView was tapped", &v15, 0x16u);
        }

        autoDismissController = self->_autoDismissController;
        v14 = 3.0;
      }

      else
      {
        if (v12)
        {
          v15 = 136315394;
          v16 = "[SRSystemAssistantExperiencePresentation _startAutoDismissalIfNeededGivenSiriIsAttending:]";
          v17 = 2048;
          v18 = 0x3FD3333340000000;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Siri is idle and hasn't presented content to the user. Scheduling autodismissal in %.2f seconds", &v15, 0x16u);
        }

        autoDismissController = self->_autoDismissController;
        v14 = 0.300000012;
      }

      [(SRCompactAutoDismissController *)autoDismissController scheduleAutoDismissalForLongIdling:v14];
    }
  }
}

- (void)_scheduleAutoDismissalForTouchOutsideOfSiri
{
  autoDismissController = self->_autoDismissController;
  if (qword_10018F190 != -1)
  {
    sub_1000CBF04();
  }

  v3 = *&qword_10018F198;

  [(SRCompactAutoDismissController *)autoDismissController scheduleAutoDismissalForTouchOutsideOfSiri:v3];
}

- (void)_scheduleAutoDismissalPostAppLaunch
{
  autoDismissController = self->_autoDismissController;
  if (qword_10018F1A0 != -1)
  {
    sub_1000CBF18();
  }

  v3 = *&qword_10018F1A8;

  [(SRCompactAutoDismissController *)autoDismissController scheduleAutoDismissalPostAppLaunch:v3];
}

- (void)_scheduleAutoDismissalPostSystemUIResponse
{
  autoDismissController = self->_autoDismissController;
  if (qword_10018F1B0 != -1)
  {
    sub_1000CBF2C();
  }

  v3 = *&qword_10018F1B8;

  [(SRCompactAutoDismissController *)autoDismissController scheduleAutoDismissalPostSystemUIResponse:v3];
}

- (void)_cancelAutoDismissalTimers
{
  [(SRCompactAutoDismissController *)self->_autoDismissController cancelAutoDismissalForTouchOutsideOfSiri];
  [(SRCompactAutoDismissController *)self->_autoDismissController cancelAutoDismissalPostAppLaunch];
  autoDismissController = self->_autoDismissController;

  [(SRCompactAutoDismissController *)autoDismissController cancelAutoDismissalPostSystemUIResponse];
}

- (void)_setInputType:(int64_t)a3
{
  inputType = self->_inputType;
  if (inputType != a3)
  {
    if (a3 == 1 && inputType == 2 || a3 == 1 && inputType == 3)
    {
      self->_inputType = 1;
      [(SRSystemAssistantExperienceViewController *)self->_saeViewController switchPresentationToTextInput];
    }

    else if (a3 == 3)
    {
      self->_inputType = 3;
      [(SRSystemAssistantExperiencePresentation *)self _updatePresentationForVisualIntelligenceCameraIfNeeded];
    }

    else
    {
      self->_inputType = a3;
    }

    [(SRCompactAutoDismissController *)self->_autoDismissController setEnabled:a3 != 1];
    v7 = [(SRSystemAssistantExperiencePresentation *)self activeViewModelController];
    [v7 inputTypeDidChange];

    v8 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [v8 siriPresentation:self inputTypeDidChange:a3];
  }
}

- (void)autoDismissControllerRequestsDismissal:(id)a3
{
  v4 = a3;
  if (self->_shouldPauseAutoDismissal)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SRSystemAssistantExperiencePresentation autoDismissControllerRequestsDismissal:]";
      v6 = "%s #sae #dismissal holding onto autodismissal event waiting for mitigation result";
LABEL_4:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else
  {
    if (self->_isPresentingVisualIntelligenceCamera)
    {
      [(SRSystemAssistantExperiencePresentation *)self dismissSiriResults];
      goto LABEL_12;
    }

    if (!+[SiriSharedUIReplayUtilityWrapper shouldSkipAutoDismissal])
    {
      v7 = [(SRSystemAssistantExperiencePresentation *)self delegate];
      [v7 dismissSiriPresentation:self withReason:4];

      goto LABEL_12;
    }

    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SRSystemAssistantExperiencePresentation autoDismissControllerRequestsDismissal:]";
      v6 = "%s #sae #dismissal skipped dismissal due to replay but holding onto autodismissal event";
      goto LABEL_4;
    }
  }

  self->_hasPendingAutoDismissal = 1;
LABEL_12:
}

- (void)autoDismissControllerRequestsStopAttending:(id)a3
{
  v4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v4 siriWillStopAttending:self];
}

- (void)modalContainerViewControllerViewWillDisappear:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v5 siriPresentation:self willDismissViewController:v4];
}

- (void)modalContainerViewControllerViewDidDisappear:(id)a3
{
  v4 = a3;
  v5 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [v5 siriPresentation:self didDismissViewController:v4];
}

- (void)_dismissVideoPlayerViewController
{
  [(SRSystemAssistantExperienceViewController *)self->_saeViewController dismissViewControllerAnimated:1 completion:0];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100047230;
  v3[3] = &unk_100167010;
  v3[4] = self;
  [UIView animateWithDuration:v3 animations:0.2];
}

- (int64_t)_viewModelInputTypeForRequestInputType:(int64_t)a3
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

- (SiriUIPresentationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SiriUIPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end