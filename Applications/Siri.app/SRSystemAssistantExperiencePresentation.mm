@interface SRSystemAssistantExperiencePresentation
- (BOOL)_showSpeech;
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)state;
- (BOOL)shouldUseEventDrivenIdleAndQuietUpdates;
- (BOOL)siriDeviceLockedForViewModelController:(id)controller;
- (BOOL)supportsVisualPresentationForConversationItem:(id)item;
- (CGPoint)_convertToPointInSAEViewCoordinates:(CGPoint)coordinates;
- (CGRect)effectiveContentFrame;
- (CGSize)maxSizeForSnippet;
- (SASRequestOptions)_activeRequestOptions;
- (SRSystemAssistantExperiencePresentation)initWithDelegate:(id)delegate dataSource:(id)source;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (double)expectedContentWidth;
- (id)_activeConversation;
- (id)_conversationIdentifiers;
- (id)_dismissalContextWithDismissalReason:(int64_t)reason dismissalOptions:(id)options;
- (id)_identifierOfPreviousConversation;
- (id)_siriLocalizedTriggerPhrases;
- (id)bugReportPresenterRequestsBugReportKeywordIdentifiers:(id)identifiers;
- (id)bugReportPresenterRequestsBugReportPrefixForTitle:(id)title;
- (id)dismissalUserInfo;
- (id)effectiveCoreLocationBundleForSAEViewController:(id)controller;
- (id)feedbackFormForCurrentRequest;
- (id)localeForSAEViewController:(id)controller;
- (id)saeViewModelController:(id)controller requestsTranscriptItemForAceObject:(id)object;
- (int64_t)_viewModelInputTypeForRequestInputType:(int64_t)type;
- (int64_t)inputTypeForSAEViewModelController:(id)controller;
- (unint64_t)lockStateForSAEViewController:(id)controller;
- (void)_activeConversationDidChange;
- (void)_cancelAutoDismissalTimers;
- (void)_didDetectGestureEventWithinSiri:(int64_t)siri;
- (void)_didDetectTouchOutsideOfSiri;
- (void)_dismissVideoPlayerViewController;
- (void)_handleNonSnippetResponse:(int64_t)response;
- (void)_scheduleAutoDismissalForTouchOutsideOfSiri;
- (void)_scheduleAutoDismissalPostAppLaunch;
- (void)_scheduleAutoDismissalPostSystemUIResponse;
- (void)_setInputType:(int64_t)type;
- (void)_setupBugReportingPresenterIfNecessary;
- (void)_startAutoDismissalIfNeededGivenSiriIsAttending:(BOOL)attending;
- (void)_updatePresentationForVisualIntelligenceCameraIfNeeded;
- (void)activeRequestOptionsDidChange;
- (void)attemptedToSaveConversation:(id)conversation withResult:(BOOL)result;
- (void)autoDismissControllerRequestsDismissal:(id)dismissal;
- (void)autoDismissControllerRequestsStopAttending:(id)attending;
- (void)bugReportPresenter:(id)presenter requestsSiriDismissalWithReason:(int64_t)reason;
- (void)bugReportPresenter:(id)presenter requestsToHandlePasscodeUnlockWithCompletion:(id)completion;
- (void)bugReportPresenter:(id)presenter requestsToOpenURL:(id)l withCompletion:(id)completion;
- (void)bugReportPresenter:(id)presenter requestsToPerformAceCommand:(id)command;
- (void)bugReportPresenter:(id)presenter requestsToTakeScreenshotWithCompletion:(id)completion;
- (void)bugReportPresenter:(id)presenter setBugReportingAvailable:(BOOL)available;
- (void)bugReportPresenter:(id)presenter setStatusViewHidden:(BOOL)hidden;
- (void)bugReportPresenterRequestsInvalidateAutoDismissal:(id)dismissal;
- (void)bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:(id)request;
- (void)cancelRequestForViewController:(id)controller;
- (void)configureForRequestOptions:(id)options;
- (void)conversation:(id)conversation didChangeWithTransaction:(id)transaction;
- (void)dealloc;
- (void)didBeginProcessingConversationItems;
- (void)didDetectGestureEvent:(int64_t)event inRegion:(int64_t)region;
- (void)didPresentContentForSAEViewController:(id)controller;
- (void)didReceiveAddViewsDialogPhaseForSuggestions:(id)suggestions;
- (void)didReceiveBugButtonLongPress;
- (void)didReceiveReportBugAction;
- (void)didReceiveRevealRecognizedSpeechCommand:(id)command;
- (void)didTapCloseButtonOnSnippet;
- (void)endSiriSessionForViewController:(id)controller withDismissalReason:(int64_t)reason;
- (void)handlePlayContentCommand:(id)command completion:(id)completion;
- (void)handleRequestEndBehavior:(id)behavior isAttending:(BOOL)attending;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)immersiveExperienceRequestedForViewModelController:(id)controller;
- (void)loadContinuerSuggestionsForRequest:(id)request currentMode:(id)mode dialogPhase:(id)phase;
- (void)modalContainerViewControllerViewDidDisappear:(id)disappear;
- (void)modalContainerViewControllerViewWillDisappear:(id)disappear;
- (void)previousConversationDidLoad:(id)load;
- (void)requestToHandlePasscodeUnlockWithClient:(unint64_t)client withCompletion:(id)completion;
- (void)saeViewController:(id)controller didChangeText:(id)text;
- (void)saeViewController:(id)controller handleStartLocalRequest:(id)request turnIdentifier:(id)identifier;
- (void)saeViewController:(id)controller preventOutsideTouchesFromDismissingSiri:(BOOL)siri;
- (void)saeViewController:(id)controller requestsKeyboardWithCompletion:(id)completion;
- (void)saeViewController:(id)controller setStatusViewHidden:(BOOL)hidden;
- (void)saeViewController:(id)controller speakText:(id)text isPhonetic:(BOOL)phonetic completion:(id)completion;
- (void)saeViewController:(id)controller viewDidAppearForAceObject:(id)object;
- (void)saeViewController:(id)controller viewDidDisappearForAceObject:(id)object;
- (void)saeViewController:(id)controller willBeginEditingOfType:(int64_t)type;
- (void)saeViewControllerCancelHIDEventDefferal:(id)defferal;
- (void)saeViewControllerDidEndEditing:(id)editing;
- (void)saeViewControllerRequestsHIDEventDefferal:(id)defferal;
- (void)saeViewModelController:(id)controller didProcessConversationItemsWithIdentifiers:(id)identifiers;
- (void)setActiveViewModelController:(id)controller;
- (void)siriDidActivateFromSource:(int64_t)source;
- (void)siriDidDeactivateWithCompletion:(id)completion;
- (void)siriDidPunchOutWithOptions:(id)options;
- (void)siriDidReceiveLatencyInformation:(id)information;
- (void)siriDidReceiveStartGenAIEnablementFlowCommand:(id)command completion:(id)completion;
- (void)siriDidStartNewConversationWithIdentifier:(id)identifier;
- (void)siriDidTransitionFromState:(int64_t)state event:(int64_t)event;
- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)change isAttending:(BOOL)attending;
- (void)siriRequestWillStartWithRequestOptions:(id)options;
- (void)siriResponseModeDidChange:(unint64_t)change isAttending:(BOOL)attending;
- (void)siriResultsDidDismissInTamale;
- (void)siriResultsWillDismissInTamale;
- (void)siriSAEViewController:(id)controller willDismissViewController:(id)viewController;
- (void)siriSAEViewController:(id)controller willPresentViewController:(id)viewController;
- (void)siriSAEViewControllerRequestStopAttending:(id)attending;
- (void)siriSAEViewControllerRequestsTextActivation:(id)activation withRequestSource:(int64_t)source;
- (void)siriSAEViewControllerRequestsTextRequest:(id)request withRequestOptions:(id)options;
- (void)siriSAEViewControllerRequestsVoiceActivation:(id)activation withRequestOptions:(id)options;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options;
- (void)siriWillProcessAppLaunchWithBundleIdentifier:(id)identifier;
- (void)siriWillPunchOutWithOptions:(id)options;
- (void)speechRecordingDidBeginOnRecordRoute:(id)route;
- (void)stopRecordingForViewController:(id)controller;
- (void)stopSpeakingForSAEViewController:(id)controller;
- (void)tapToEditPresented;
- (void)toggleHomeAffordanceHidden:(BOOL)hidden;
- (void)updateEdgeLightWindowLevel:(int64_t)level;
- (void)updateFeedbackFormWithSpeakableText:(id)text;
- (void)userDrilledIntoSnippet;
- (void)userTouchedSnippet;
- (void)viewController:(id)controller didFinishEditingUtteranceWithText:(id)text originalUserUtterance:(id)utterance selectionResults:(id)results showASR:(BOOL)r;
- (void)viewController:(id)controller openURL:(id)l completion:(id)completion;
- (void)viewController:(id)controller openURL:(id)l launchOptions:(id)options completion:(id)completion;
- (void)viewController:(id)controller performAceCommands:(id)commands completion:(id)completion;
- (void)viewController:(id)controller reduceOrbOpacity:(BOOL)opacity;
- (void)viewController:(id)controller requestsHostBackgroundBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence;
- (void)viewController:(id)controller siriRequestEnteredWithSuggestion:(id)suggestion suggestionRequestType:(int64_t)type;
- (void)viewController:(id)controller siriRequestEnteredWithSuggestionToolInvocation:(id)invocation turnIdentifier:(id)identifier;
- (void)viewController:(id)controller siriRequestEnteredWithText:(id)text;
- (void)viewController:(id)controller willChangeKeyboardVisibility:(BOOL)visibility;
- (void)viewControllerDidPresentUserInterface:(id)interface;
@end

@implementation SRSystemAssistantExperiencePresentation

- (SRSystemAssistantExperiencePresentation)initWithDelegate:(id)delegate dataSource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = SRSystemAssistantExperiencePresentation;
  v8 = [(SRSystemAssistantExperiencePresentation *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(SRSystemAssistantExperiencePresentation *)v8 setDelegate:delegateCopy];
    [(SRSystemAssistantExperiencePresentation *)v9 setDataSource:sourceCopy];
    v9->_inputType = 0;
    v10 = objc_alloc_init(SRSystemAssistantExperienceViewController);
    saeViewController = v9->_saeViewController;
    v9->_saeViewController = v10;

    [(SRSystemAssistantExperienceViewController *)v9->_saeViewController setDelegate:v9];
    delegate = [(SRSystemAssistantExperiencePresentation *)v9 delegate];
    v13 = [delegate siriDeviceLockStateForSiriPresentation:v9];

    v14 = [[SRCompactAutoDismissController alloc] initWithDelegate:v9 andLockState:v13];
    autoDismissController = v9->_autoDismissController;
    v9->_autoDismissController = v14;

    v16 = +[AFPreferences sharedPreferences];
    languageCode = [v16 languageCode];
    [SiriUISashItem _setLanguageCode:languageCode];

    [(SRSystemAssistantExperiencePresentation *)v9 _activeConversationDidChange];
  }

  return v9;
}

- (id)_conversationIdentifiers
{
  dataSource = [(SRSystemAssistantExperiencePresentation *)self dataSource];
  v4 = [dataSource conversationIdentifiersForSiriPresentation:self];

  return v4;
}

- (id)_identifierOfPreviousConversation
{
  _conversationIdentifiers = [(SRSystemAssistantExperiencePresentation *)self _conversationIdentifiers];
  if ([_conversationIdentifiers count] < 2)
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
    v3 = [_conversationIdentifiers objectAtIndexedSubscript:{objc_msgSend(_conversationIdentifiers, "count") - 2}];
  }

  return v3;
}

- (id)_activeConversation
{
  dataSource = [(SRSystemAssistantExperiencePresentation *)self dataSource];
  _conversationIdentifiers = [(SRSystemAssistantExperiencePresentation *)self _conversationIdentifiers];
  lastObject = [_conversationIdentifiers lastObject];
  v6 = [dataSource siriPresentation:self conversationWithIdentifier:lastObject];

  return v6;
}

- (void)configureForRequestOptions:(id)options
{
  optionsCopy = options;
  if (AFIsInternalInstall())
  {
    [optionsCopy requestSource];
    IsTesting = SASRequestSourceIsTesting();
    testingContext = [optionsCopy testingContext];
    v7 = [testingContext objectForKey:SUICPPTTestNameKey];
    v8 = v7;
    v9 = 1;
    if (IsTesting && testingContext && v7)
    {
      v9 = [v7 hasPrefix:SUICPPTSiriBringupTestPrefix];
    }

    [(SRCompactAutoDismissController *)self->_autoDismissController setEnabled:v9];
  }

  if ([optionsCopy isVisualIntelligenceRequest])
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      [optionsCopy requestSource];
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

- (void)conversation:(id)conversation didChangeWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  activeViewModelController = [(SRSystemAssistantExperiencePresentation *)self activeViewModelController];
  [activeViewModelController conversationDidChangeWithTransaction:transactionCopy];
}

- (void)didReceiveRevealRecognizedSpeechCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315394;
    v26 = "[SRSystemAssistantExperiencePresentation didReceiveRevealRecognizedSpeechCommand:]";
    v27 = 2112;
    v28 = commandCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae: received revealRecognizedSpeech:%@", &v25, 0x16u);
  }

  recognition = [commandCopy recognition];
  dataSource = [(SRSystemAssistantExperiencePresentation *)self dataSource];
  v8 = [dataSource sessionInfoForSiriPresentation:self];

  refId = [commandCopy refId];
  identifier = [v8 identifier];
  overriddenSpeech = [recognition af_userUtteranceValueWithRefId:refId sessionId:identifier];

  if (overriddenSpeech)
  {
    if (!commandCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    overriddenSpeech = [commandCopy overriddenSpeech];

    if (!overriddenSpeech)
    {
      goto LABEL_15;
    }

    v12 = [AFUserUtterance alloc];
    overriddenSpeech2 = [commandCopy overriddenSpeech];
    overriddenSpeech = [v12 initWithString:overriddenSpeech2 correctionIdentifier:0];

    if (!commandCopy)
    {
      goto LABEL_15;
    }
  }

  if (overriddenSpeech)
  {
    v14 = _os_feature_enabled_impl();
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController setRevealRecognizedSpeech:1];
    activeViewModelController = [(SRSystemAssistantExperiencePresentation *)self activeViewModelController];
    v16 = activeViewModelController;
    if (v14)
    {
      asrAlternatives = [commandCopy asrAlternatives];
      [v16 revealUserUtterance:overriddenSpeech backingAceObject:commandCopy asrAlternatives:asrAlternatives];
    }

    else
    {
      [activeViewModelController revealUserUtterance:overriddenSpeech backingAceObject:commandCopy asrAlternatives:&__NSArray0__struct];
    }

    asrAlternatives2 = [commandCopy asrAlternatives];
    v19 = ([asrAlternatives2 count] != 0) & v14;

    if (v19 == 1)
    {
      v20 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        asrAlternatives3 = [commandCopy asrAlternatives];
        v23 = [asrAlternatives3 count];
        asrAlternatives4 = [commandCopy asrAlternatives];
        v25 = 136315650;
        v26 = "[SRSystemAssistantExperiencePresentation didReceiveRevealRecognizedSpeechCommand:]";
        v27 = 2048;
        v28 = v23;
        v29 = 2112;
        v30 = asrAlternatives4;
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
  _activeRequestOptions = [(SRSystemAssistantExperiencePresentation *)self _activeRequestOptions];
  if ([_activeRequestOptions isTypeToSiriRequest] && objc_msgSend(_activeRequestOptions, "inputType") != 2)
  {
    v3 = 1;
  }

  else if ([_activeRequestOptions isVisualIntelligenceRequest])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController setActiveRequestOptions:_activeRequestOptions];
  [(SRSystemAssistantExperiencePresentation *)self _setInputType:v3];
}

- (void)siriRequestWillStartWithRequestOptions:(id)options
{
  optionsCopy = options;
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
  if ([optionsCopy requestSource] != 9)
  {
    self->_requestIsWiredMicOrBTHeadsetOrWx = [optionsCopy isWiredMicOrBTHeadsetOrWx];
  }

  [(SRSystemAssistantExperiencePresentation *)self _cancelAutoDismissalTimers];
  [(SRSystemAssistantExperienceViewController *)self->_saeViewController siriWillStartRequest];
  if (([optionsCopy isTypeToSiriRequest] & 1) == 0)
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
      currentInstrumentationTurnContext = [v12 currentInstrumentationTurnContext];
      turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];
      v18 = 136315650;
      v19 = "[SRSystemAssistantExperiencePresentation siriRequestWillStartWithRequestOptions:]";
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = turnIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #instrumentation linking keyboard bringup turn %@ with the new typing turn %@", &v18, 0x20u);
    }

    v15 = AFTurnIdentifierGetBytes();
    v16 = objc_alloc_init(SISchemaTypingRequestTrace);
    [v16 setKeyboardAppearanceBringUpTurnID:v15];
    v17 = +[SRUIFInstrumentationManager sharedManager];
    [v17 emitInstrumentation:v16];
  }
}

- (void)siriResponseModeDidChange:(unint64_t)change isAttending:(BOOL)attending
{
  attendingCopy = attending;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    requestIsWiredMicOrBTHeadsetOrWx = self->_requestIsWiredMicOrBTHeadsetOrWx;
    v11 = 136315906;
    v12 = "[SRSystemAssistantExperiencePresentation siriResponseModeDidChange:isAttending:]";
    v13 = 2048;
    changeCopy = change;
    v15 = 1024;
    v16 = requestIsWiredMicOrBTHeadsetOrWx;
    v17 = 1024;
    v18 = attendingCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #sae mode updated to %lu, _requestIsWiredMicOrBTHeadsetOrWx: %d, isAttending: %d", &v11, 0x22u);
  }

  [(SRCompactAutoDismissController *)self->_autoDismissController siriResponseModeDidChange:change isWiredMicOrBTHeadsetOrWx:self->_requestIsWiredMicOrBTHeadsetOrWx isAttending:attendingCopy];
  v9 = MDModeGetName();
  responseMode = self->_responseMode;
  self->_responseMode = v9;
}

- (void)siriDidActivateFromSource:(int64_t)source
{
  if (source == 57 || source == 54)
  {
    self->_isPresentingVisualIntelligenceCamera = 1;
  }

  if (SASRequestSourceIsVisualIntelligenceDirectInvocation())
  {
    self->_isPresentingVisualIntelligenceDirectInvocation = 1;
  }

  if (source == 21)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[SRSystemAssistantExperiencePresentation siriDidActivateFromSource:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae Loading previous conversation because we activated from a breadcrumb", &v14, 0xCu);
    }

    dataSource = [(SRSystemAssistantExperiencePresentation *)self dataSource];
    _identifierOfPreviousConversation = [(SRSystemAssistantExperiencePresentation *)self _identifierOfPreviousConversation];
    [dataSource siriPresentation:self activateConversationWithIdentifier:_identifierOfPreviousConversation];

    [(SRSystemAssistantExperiencePresentation *)self _activeConversationDidChange];
    delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate siriPresentationDidPresentConversationFromBreadcrumb:self];
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController siriDidActivate];
  [(SRSystemAssistantExperienceViewController *)self->_saeViewController setUpConversationStarterSuggestionsWith:source];
  if (self->_inputType == 1)
  {
    self->_hasUserTyped = 1;
    delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate2 siriSessionShouldPrewarmForPossibleTextRequest:self];
  }

  *&self->_userCancelledRequestViaOrbViewTap = 0;
  self->_isCurrentRequestPresentingSystemUI = 0;
  self->_initialRequestSource = source;
  if ((source & 0xFFFFFFFFFFFFFFDFLL) == 0x10)
  {
    v10 = +[SRUIFInstrumentationManager sharedManager];
    currentInstrumentationTurnContext = [v10 currentInstrumentationTurnContext];
    turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];
    keyboardBringUpTurnIdentifier = self->_keyboardBringUpTurnIdentifier;
    self->_keyboardBringUpTurnIdentifier = turnIdentifier;
  }
}

- (void)siriDidStartNewConversationWithIdentifier:(id)identifier
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUIDString = [identifier UUIDString];
    v8 = 136315394;
    v9 = "[SRSystemAssistantExperiencePresentation siriDidStartNewConversationWithIdentifier:]";
    v10 = 2112;
    v11 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #sae Starting a new conversation %@", &v8, 0x16u);
  }

  [(SRSystemAssistantExperiencePresentation *)self _activeConversationDidChange];
}

- (void)speechRecordingDidBeginOnRecordRoute:(id)route
{
  routeCopy = route;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SRSystemAssistantExperiencePresentation speechRecordingDidBeginOnRecordRoute:]";
    v8 = 2112;
    v9 = routeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae recording started on recordRoute: %@", &v6, 0x16u);
  }

  self->_recordingFromWxDevice = AFRecordRouteIsHearst();
}

- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)state
{
  stateCopy = state;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    responseMode = self->_responseMode;
    requestIsWiredMicOrBTHeadsetOrWx = self->_requestIsWiredMicOrBTHeadsetOrWx;
    v13 = 136315906;
    v14 = "[SRSystemAssistantExperiencePresentation shouldResumeInterruptedAudioPlaybackForAttendingState:]";
    v15 = 1024;
    v16 = stateCopy;
    v17 = 2112;
    v18 = responseMode;
    v19 = 1024;
    v20 = requestIsWiredMicOrBTHeadsetOrWx;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #sae isAttending: %d, responseMode: %@, requestIsWiredMicOrBTHeadsetOrWx: %d", &v13, 0x22u);
  }

  if (!stateCopy)
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

- (void)handlePlayContentCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v8 = [[SRPlayContentViewController alloc] initWithPlayContent:commandCopy];
  player = [(SRPlayContentViewController *)v8 player];

  if (player)
  {
    [(SRPlayContentViewController *)v8 setVideoPlayerControllerDelegate:self];
    delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate siriPresentation:self setStatusBarHidden:1 animated:1];

    delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate2 siriPresentation:self setStatusViewHidden:1];

    v12 = [[SiriUIModalContainerViewController alloc] initWithContentViewController:v8];
    [v12 setDelegate:self];
    delegate3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate3 siriPresentation:self willPresentViewController:v12];

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
    if (completionCopy)
    {
      v16 = objc_alloc_init(SACommandSucceeded);
      aceId = [commandCopy aceId];
      [v16 setRefId:aceId];

      completionCopy[2](completionCopy, v16);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    goto LABEL_7;
  }

  if (completionCopy)
  {
    v15 = [[SACommandFailed alloc] initWithReason:@"No AVPlayer for PlayContent command"];
    aceId2 = [commandCopy aceId];
    [v15 setRefId:aceId2];

    completionCopy[2](completionCopy, v15);
LABEL_7:
  }
}

- (BOOL)supportsVisualPresentationForConversationItem:(id)item
{
  if ([item type] - 1 > 1)
  {
    return 1;
  }

  return [(SRSystemAssistantExperiencePresentation *)self _showSpeech];
}

- (void)siriDidDeactivateWithCompletion:(id)completion
{
  completionCopy = completion;
  presentedViewController = [(SRSystemAssistantExperienceViewController *)self->_saeViewController presentedViewController];

  if (presentedViewController)
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
  v17 = completionCopy;
  v18 = inputType;
  v11 = completionCopy;
  v12 = v7;
  v13 = v6;
  [(SRDismissalClassificationController *)v13 requestMitigationStatusBasedOnRequestClassification:v8 withRequestSource:initialRequestSource withCompletion:v14];
}

- (id)_siriLocalizedTriggerPhrases
{
  v2 = +[VTPreferences sharedPreferences];
  v3 = +[AFPreferences sharedPreferences];
  languageCode = [v3 languageCode];
  v5 = [v2 localizedTriggerPhraseForLanguageCode:languageCode];

  v6 = +[NSCharacterSet whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = +[VTPreferences sharedPreferences];
  v9 = +[AFPreferences sharedPreferences];
  languageCode2 = [v9 languageCode];
  v11 = [v8 localizedCompactTriggerPhraseForLanguageCode:languageCode2];

  v12 = +[NSCharacterSet whitespaceCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v16[0] = v13;
  v16[1] = v7;
  v14 = [NSArray arrayWithObjects:v16 count:2];

  return v14;
}

- (void)loadContinuerSuggestionsForRequest:(id)request currentMode:(id)mode dialogPhase:(id)phase
{
  requestCopy = request;
  modeCopy = mode;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SRSystemAssistantExperiencePresentation loadContinuerSuggestionsForRequest:currentMode:dialogPhase:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s #suggestions addViews was received, triggering conversation continuer suggestions", &v10, 0xCu);
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController loadContinuerSuggestionsForRequest:requestCopy currentMode:modeCopy];
}

- (void)didReceiveAddViewsDialogPhaseForSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SRSystemAssistantExperiencePresentation didReceiveAddViewsDialogPhaseForSuggestions:]";
    v8 = 2112;
    v9 = suggestionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #suggestions dialog phase %@ received", &v6, 0x16u);
  }

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController didReceiveAddViewsDialogPhaseForSuggestions:suggestionsCopy];
}

- (void)siriDidTransitionFromState:(int64_t)state event:(int64_t)event
{
  if (event == 13)
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

      delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
      v12 = delegate;
      selfCopy2 = self;
      v14 = 4;
    }

    else
    {
      if (!self->_recordingFromWxDevice)
      {
        goto LABEL_18;
      }

      delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
      v12 = delegate;
      selfCopy2 = self;
      v14 = 58;
    }

    [delegate dismissSiriPresentation:selfCopy2 withReason:v14];

    goto LABEL_18;
  }

  if (event == 12)
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

  if (event != 11)
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

- (void)siriWillProcessAppLaunchWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBB3C(identifierCopy, v5);
  }

  [(SRSystemAssistantExperiencePresentation *)self _handleNonSnippetResponse:2];
}

- (void)siriDidReceiveLatencyInformation:(id)information
{
  informationCopy = information;
  _activeRequestOptions = [(SRSystemAssistantExperiencePresentation *)self _activeRequestOptions];
  requestSource = [_activeRequestOptions requestSource];

  if (SASRequestSourceIsVisualIntelligenceDirectInvocation())
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 siriUILocalizedStringForKey:@"TAMALE_INITIAL_LATENCY_SUMMARY" table:0];
    v8 = +[SiriSharedUIGenerativeAssistantOnboardingManager modelName];
    v9 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v8];

    shouldShow = 1;
    if (requestSource != 53 && requestSource != 60)
    {
      shouldShow = [informationCopy shouldShow];
    }

    v11 = [SRUIFLatencyInformation alloc];
    taskIdentifier = [informationCopy taskIdentifier];
    v13 = [v11 initWithLatencySummary:v9 taskIdentifier:taskIdentifier shouldShow:shouldShow];

    [(SiriSharedUISAEViewModelController *)self->_activeViewModelController didReceiveLatencyInformation:v13];
  }

  else
  {
    [(SiriSharedUISAEViewModelController *)self->_activeViewModelController didReceiveLatencyInformation:informationCopy];
  }
}

- (void)previousConversationDidLoad:(id)load
{
  loadCopy = load;
  lastItem = [loadCopy lastItem];
  if (![lastItem isPersistentAcrossInvocations])
  {
LABEL_8:

    goto LABEL_9;
  }

  isInAmbient = [(SRSystemAssistantExperienceViewController *)self->_saeViewController isInAmbient];

  if ((isInAmbient & 1) == 0)
  {
    v6 = SRUIFMaxIntervalForDisplayingPreviousConversation();
    if (v6 != -1)
    {
      v7 = v6;
      v8 = [SRUIFPreferences alloc];
      lastItem = [v8 initWithSuiteName:SRUIFPreferencesDefaultDomain];
      v9 = [lastItem integerForKey:SRUIFPreferencesPreviousConversationEndTimestamp];
      if (v9)
      {
        v10 = v9;
        +[NSDate timeIntervalSinceReferenceDate];
        if (v11 - v10 >= 0 && v11 - v10 <= v7)
        {
          dataSource = [(SRSystemAssistantExperiencePresentation *)self dataSource];
          identifier = [loadCopy identifier];
          [dataSource siriPresentation:self activateConversationWithIdentifier:identifier];

          [(SRSystemAssistantExperiencePresentation *)self _activeConversationDidChange];
        }
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)attemptedToSaveConversation:(id)conversation withResult:(BOOL)result
{
  resultCopy = result;
  lastItem = [conversation lastItem];
  isPersistentAcrossInvocations = [lastItem isPersistentAcrossInvocations];

  if (isPersistentAcrossInvocations)
  {
    v7 = [SRUIFPreferences alloc];
    v10 = [v7 initWithSuiteName:SRUIFPreferencesDefaultDomain];
    if (resultCopy)
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

- (void)_handleNonSnippetResponse:(int64_t)response
{
  [(SRSystemAssistantExperienceViewController *)self->_saeViewController setRevealRecognizedSpeech:0];
  if (response <= 1)
  {
    if (response)
    {
      if (response != 1)
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

  if (response == 2)
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
    if (response != 3)
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
      delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
      [delegate dismissSiriPresentation:self withReason:v10];

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

  viewState = [(SRSystemAssistantExperienceViewController *)self->_saeViewController viewState];
  activeSmartDialogView = [viewState activeSmartDialogView];
  revealRecognizedSpeech = [activeSmartDialogView revealRecognizedSpeech];

  return revealRecognizedSpeech;
}

- (void)siriWillPunchOutWithOptions:(id)options
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBBC8(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  self->_willPunchOut = 1;
}

- (void)siriDidPunchOutWithOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy containsObject:SAUIAppPunchOutLaunchOptionsRetainSiriValue])
  {
    v4 = [optionsCopy containsObject:SAUIAppPunchOutLaunchOptionsRemoveResponseUIValue];
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
  _activeConversation = [(SRSystemAssistantExperiencePresentation *)self _activeConversation];
  v3 = [[SiriSharedUISAEViewModelController alloc] initWithConversation:_activeConversation delegate:self];
  [(SRSystemAssistantExperiencePresentation *)self setActiveViewModelController:v3];
}

- (void)setActiveViewModelController:(id)controller
{
  controllerCopy = controller;
  [(SiriSharedUISAEViewModelController *)self->_activeViewModelController setDelegate:0];
  activeViewModelController = self->_activeViewModelController;
  self->_activeViewModelController = controllerCopy;
  v6 = controllerCopy;

  v7 = self->_activeViewModelController;
  viewState = [(SRSystemAssistantExperienceViewController *)self->_saeViewController viewState];
  [(SiriSharedUISAEViewModelController *)v7 setViewModelChangeObserver:viewState];
}

- (int64_t)inputTypeForSAEViewModelController:(id)controller
{
  _inputType = [(SRSystemAssistantExperiencePresentation *)self _inputType];

  return [(SRSystemAssistantExperiencePresentation *)self _viewModelInputTypeForRequestInputType:_inputType];
}

- (void)saeViewModelController:(id)controller didProcessConversationItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self didPresentConversationItemsWithIdentifiers:identifiersCopy];
}

- (BOOL)siriDeviceLockedForViewModelController:(id)controller
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v5 = ([delegate siriDeviceLockStateForSiriPresentation:self] >> 1) & 1;

  return v5;
}

- (id)saeViewModelController:(id)controller requestsTranscriptItemForAceObject:(id)object
{
  objectCopy = object;
  v6 = [SRLocalSnippetManager transcriptItemForObject:objectCopy];
  if (!v6)
  {
    v7 = +[SiriUISnippetManager sharedInstance];
    v6 = [v7 transcriptItemForObject:objectCopy sizeClass:1];
  }

  [v6 setTaskIdentifier:self->_currentTaskIdentifier];

  return v6;
}

- (void)saeViewController:(id)controller didChangeText:(id)text
{
  controllerCopy = controller;
  textCopy = text;
  if (!self->_hasUserTyped && self->_inputType == 1)
  {
    self->_hasUserTyped = 1;
    delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate siriSessionShouldPrewarmForPossibleTextRequest:self];
  }
}

- (void)immersiveExperienceRequestedForViewModelController:(id)controller
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self requestHostBlurVisible:1 reason:3 fence:0];
}

- (void)handleRequestEndBehavior:(id)behavior isAttending:(BOOL)attending
{
  attendingCopy = attending;
  behaviorCopy = behavior;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[SRSystemAssistantExperiencePresentation handleRequestEndBehavior:isAttending:]";
    v18 = 1024;
    LODWORD(v19) = attendingCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s handling request end behavior in presentation: isAttending: %d", &v16, 0x12u);
  }

  if (attendingCopy)
  {
    if ([behaviorCopy premptivelyResumeMedia])
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

    minimumAutoDismissalTimeInMs = [behaviorCopy minimumAutoDismissalTimeInMs];

    if (minimumAutoDismissalTimeInMs)
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        minimumAutoDismissalTimeInMs2 = [behaviorCopy minimumAutoDismissalTimeInMs];
        longValue = [minimumAutoDismissalTimeInMs2 longValue];
        v16 = 136315394;
        v17 = "[SRSystemAssistantExperiencePresentation handleRequestEndBehavior:isAttending:]";
        v18 = 2048;
        v19 = longValue;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Setting delay dismissal for SAE presentation by %ld milliseconds.", &v16, 0x16u);
      }

      minimumAutoDismissalTimeInMs3 = [behaviorCopy minimumAutoDismissalTimeInMs];
      delayDismissalMs = self->_delayDismissalMs;
      self->_delayDismissalMs = minimumAutoDismissalTimeInMs3;
    }
  }
}

- (void)updateFeedbackFormWithSpeakableText:(id)text
{
  textCopy = text;
  currentFeedbackForm = self->_currentFeedbackForm;
  if (!currentFeedbackForm)
  {
    v5 = objc_alloc_init(SAUIFeedbackForm);
    v6 = self->_currentFeedbackForm;
    self->_currentFeedbackForm = v5;

    [(SAUIFeedbackForm *)self->_currentFeedbackForm setDomain:SAUIFeedbackFormDomainSystemAssistantValue];
    currentFeedbackForm = self->_currentFeedbackForm;
  }

  output = [(SAUIFeedbackForm *)currentFeedbackForm output];

  if (!output)
  {
    [(SAUIFeedbackForm *)self->_currentFeedbackForm setOutput:textCopy];
  }
}

- (void)siriSAEViewControllerRequestStopAttending:(id)attending
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriWillStopAttending:self];
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  bugReportingPresenter = self->_bugReportingPresenter;
  if (bugReportingPresenter && [(AFUIBugReportPresenting *)bugReportingPresenter hasContentAtPoint:x, y])
  {
    v8 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }

  else
  {
    [(SRSystemAssistantExperiencePresentation *)self _convertToPointInSAEViewCoordinates:x, y];
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController hasContentAtPoint:completionCopy completion:?];
  }

  v8 = completionCopy;
LABEL_7:
}

- (CGPoint)_convertToPointInSAEViewCoordinates:(CGPoint)coordinates
{
  y = coordinates.y;
  x = coordinates.x;
  view = [(SRSystemAssistantExperienceViewController *)self->_saeViewController view];
  window = [view window];
  screen = [window screen];

  coordinateSpace = [screen coordinateSpace];
  [view convertPoint:coordinateSpace fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)didDetectGestureEvent:(int64_t)event inRegion:(int64_t)region
{
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBC40(v7);
  }

  if (region == 1)
  {
    [(SRSystemAssistantExperiencePresentation *)self _didDetectTouchOutsideOfSiri];
  }

  else if (!region)
  {
    [(SRSystemAssistantExperiencePresentation *)self _didDetectGestureEventWithinSiri:event];
  }
}

- (void)_didDetectGestureEventWithinSiri:(int64_t)siri
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
    presentedResponseElements = [(SRSystemAssistantExperienceViewController *)self->_saeViewController presentedResponseElements];
    delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
    v5 = [delegate siriPresentationIsPresentingSystemUI:self];

    if (((presentedResponseElements & 2) == 0) & (v5 ^ 1)) != 0 || (presentedResponseElements)
    {
      if ((~presentedResponseElements & 3) == 0)
      {
        [(SRSystemAssistantExperienceViewController *)self->_saeViewController removeResponseElementsIfNeeded:2];
      }

      if (presentedResponseElements & v5)
      {
        delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
        [delegate2 siriPresentationRequestsSystemUICollapse:self];
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
      delegate3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
      [delegate3 dismissSiriPresentation:self withReason:23];
    }
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options
{
  optionsCopy = options;
  self->_lastDismissalReason = reason;
  objc_storeStrong(&self->_lastDismissalOptions, options);
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v8 = [delegate siriDeviceLockStateForSiriPresentation:self];

  if (reason == 68 || reason == 13)
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

- (id)_dismissalContextWithDismissalReason:(int64_t)reason dismissalOptions:(id)options
{
  optionsCopy = options;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v8 = [delegate siriDeviceLockStateForSiriPresentation:self];

  dataSource = [(SRSystemAssistantExperiencePresentation *)self dataSource];
  v10 = [dataSource siriStateForSiriPresentation:self];

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
  reason = [optionsCopy reason];

  v14 = [(SRDismissalClassificationContext *)v12 initWithCancellationReason:reason contentPresentationState:v11 dismissalReason:reason isDeviceUnlocked:v8 == 0 siriState:v10 requestSource:self->_initialRequestSource];

  return v14;
}

- (double)expectedContentWidth
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate contentWidthForForSiriPresentation:self];
  v5 = v4;

  return v5;
}

- (void)tapToEditPresented
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate tapToEditPresented:self];
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
  view = [(SRSystemAssistantExperienceViewController *)self->_saeViewController view];
  [view frame];
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

- (void)viewController:(id)controller openURL:(id)l completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100044694;
  v9[3] = &unk_100167428;
  completionCopy = completion;
  v8 = completionCopy;
  [(SRSystemAssistantExperiencePresentation *)self viewController:controller openURL:l launchOptions:0 completion:v9];
}

- (void)viewController:(id)controller openURL:(id)l launchOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  lCopy = l;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self openURL:lCopy launchOptions:optionsCopy conversationId:0 completion:completionCopy];
}

- (void)viewController:(id)controller performAceCommands:(id)commands completion:(id)completion
{
  controllerCopy = controller;
  commandsCopy = commands;
  v26 = commandsCopy;
  completionCopy = completion;
  if (completionCopy)
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
    obj = commandsCopy;
    v10 = [obj countByEnumeratingWithState:&v39 objects:v46 count:{16, controllerCopy, commandsCopy}];
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
          delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100044AD4;
          v36[3] = &unk_100167948;
          v38 = v43;
          v37 = v9;
          [delegate siriPresentation:self performAceCommand:v13 conversationItemIdentifier:0 completion:v36];
        }

        v10 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v10);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044AEC;
    block[3] = &unk_100167970;
    v34 = completionCopy;
    v35 = v43;
    dispatch_group_notify(v9, &_dispatch_main_q, block);

    _Block_object_dispose(v43, 8);
  }

  else
  {
    v15 = +[SRUIFInstrumentationManager sharedManager];
    currentInstrumentationTurnContext = [v15 currentInstrumentationTurnContext];
    turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = commandsCopy;
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
          delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
          [delegate2 siriPresentation:self performAceCommand:v22 conversationItemIdentifier:0 turnIdentifier:turnIdentifier completion:0];
        }

        v19 = [v18 countByEnumeratingWithState:&v29 objects:v45 count:16];
      }

      while (v19);
    }
  }
}

- (void)saeViewController:(id)controller speakText:(id)text isPhonetic:(BOOL)phonetic completion:(id)completion
{
  phoneticCopy = phonetic;
  completionCopy = completion;
  textCopy = text;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v12 = delegate;
  if (phoneticCopy)
  {
    [delegate siriPresentation:self synthesizeSpeechWithPhoneticText:textCopy completion:completionCopy];
  }

  else
  {
    [delegate siriPresentation:self synthesizeSpeechWithText:textCopy completion:completionCopy];
  }
}

- (void)stopSpeakingForSAEViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate stopSpeakingForSiriPresentation:self];
}

- (unint64_t)lockStateForSAEViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v5 = [delegate siriDeviceLockStateForSiriPresentation:self];

  return v5;
}

- (id)localeForSAEViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v5 = [delegate localeForSiriPresentation:self];

  return v5;
}

- (void)viewControllerDidPresentUserInterface:(id)interface
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriPresentationDidPresentUserInterface:self];
}

- (void)userTouchedSnippet
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate userTouchedSnippet];
}

- (void)saeViewController:(id)controller handleStartLocalRequest:(id)request turnIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate2 siriPresentation:self handleStartLocalRequest:requestCopy turnIdentifier:identifierCopy];
  }
}

- (void)saeViewController:(id)controller setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self setStatusViewHidden:hiddenCopy];
}

- (void)viewController:(id)controller requestsHostBackgroundBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence
{
  visibleCopy = visible;
  fenceCopy = fence;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self requestHostBlurVisible:visibleCopy reason:reason fence:fenceCopy];
}

- (void)viewController:(id)controller reduceOrbOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self reduceOrbOpacity:opacityCopy];
}

- (void)endSiriSessionForViewController:(id)controller withDismissalReason:(int64_t)reason
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate dismissSiriPresentation:self withReason:reason];
}

- (void)stopRecordingForViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate stopRecordingSpeechForSiriPresentation:self];
}

- (void)cancelRequestForViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate cancelRequestForSiriPresentation:self];
}

- (void)siriResultsWillDismissInTamale
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate cancelRequestForSiriPresentation:self];

  delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate2 siriWillStopAttending:self];

  delegate3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate3 invalidateConnectionForSiriPresentation:self];

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController removeResponseElementsIfNeeded:-1];
  delegate4 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate4 updateEdgeLightWindowLevel:0];

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
    delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate siriResultsDidDismissInTamaleForSiriPresentation:self];
  }
}

- (void)didPresentContentForSAEViewController:(id)controller
{
  controllerCopy = controller;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBD24(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  self->_hasPresentedContent = 1;
  if ([(SRSystemAssistantExperienceViewController *)self->_saeViewController isInAmbient])
  {
    delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate siriPresentation:self requestHostBlurVisible:1 reason:2 fence:0];
  }
}

- (id)effectiveCoreLocationBundleForSAEViewController:(id)controller
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v5 = [delegate effectiveCoreLocationBundleForSiriPresentation:self];

  return v5;
}

- (void)siriSAEViewController:(id)controller willPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self willPresentViewController:viewControllerCopy];
}

- (void)didBeginProcessingConversationItems
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate didBeginProcessingConversationItems];
}

- (void)siriSAEViewController:(id)controller willDismissViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self willDismissViewController:viewControllerCopy];
}

- (void)saeViewController:(id)controller viewDidAppearForAceObject:(id)object
{
  objectCopy = object;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self viewDidAppearWithAceObject:objectCopy];
}

- (void)saeViewController:(id)controller viewDidDisappearForAceObject:(id)object
{
  objectCopy = object;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  encodedClassName = [objectCopy encodedClassName];
  aceId = [objectCopy aceId];

  [delegate siriPresentation:self viewDidDisappearWithClassDescriptor:encodedClassName identifier:aceId];
}

- (void)userDrilledIntoSnippet
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate userDrilledIntoSnippet];
}

- (void)siriSAEViewControllerRequestsVoiceActivation:(id)activation withRequestOptions:(id)options
{
  optionsCopy = options;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self startRequestWithOptions:optionsCopy];
}

- (void)siriSAEViewControllerRequestsTextActivation:(id)activation withRequestSource:(int64_t)source
{
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBD9C(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  self->_userTappedToEditUtterance = 1;
  [(SRSystemAssistantExperiencePresentation *)self _setInputType:1];
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriWillStopAttending:self];

  delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate2 cancelRequestForSiriPresentation:self];

  delegate3 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate3 siriSessionDidSwitchToSource:self source:source];
}

- (void)siriSAEViewControllerRequestsTextRequest:(id)request withRequestOptions:(id)options
{
  optionsCopy = options;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    [optionsCopy requestSource];
    v8 = SASRequestSourceGetName();
    v10 = 136315394;
    v11 = "[SRSystemAssistantExperiencePresentation siriSAEViewControllerRequestsTextRequest:withRequestOptions:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Start text request with source: %@", &v10, 0x16u);
  }

  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self startRequestWithOptions:optionsCopy];
}

- (void)saeViewController:(id)controller preventOutsideTouchesFromDismissingSiri:(BOOL)siri
{
  siriCopy = siri;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self preventOutsideTouchesFromDismissingSiri:siriCopy];
}

- (void)viewController:(id)controller willChangeKeyboardVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self willChangeKeyboardVisibility:visibilityCopy];
}

- (void)didTapCloseButtonOnSnippet
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate dismissSiriPresentation:self withReason:66];
}

- (void)toggleHomeAffordanceHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate toggleHomeAffordanceHidden:hiddenCopy];
}

- (void)updateEdgeLightWindowLevel:(int64_t)level
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate updateEdgeLightWindowLevel:level];
}

- (void)siriDidReceiveStartGenAIEnablementFlowCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriWillStopAttending:self];

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController presentGenerativeAssistantOnboardingFlowWithCommand:commandCopy completion:completionCopy];
}

- (BOOL)alwaysShowRecognizedSpeech
{
  v2 = +[AFPreferences sharedPreferences];
  alwaysShowRecognizedSpeech = [v2 alwaysShowRecognizedSpeech];

  return alwaysShowRecognizedSpeech;
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

- (void)bugReportPresenter:(id)presenter requestsToHandlePasscodeUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate handlePasscodeUnlockForSiriPresentation:self withClient:0 withCompletion:completionCopy];
}

- (void)bugReportPresenter:(id)presenter requestsToOpenURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self openURL:lCopy conversationId:0 completion:completionCopy];
}

- (void)bugReportPresenter:(id)presenter requestsToPerformAceCommand:(id)command
{
  commandCopy = command;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self performAceCommand:commandCopy conversationItemIdentifier:0 completion:0];
}

- (void)bugReportPresenter:(id)presenter requestsToTakeScreenshotWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate getScreenshotImageForSiriPresentation:self withCompletion:completionCopy];
}

- (void)bugReportPresenter:(id)presenter setBugReportingAvailable:(BOOL)available
{
  availableCopy = available;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self setBugReportingAvailable:availableCopy];
}

- (id)bugReportPresenterRequestsBugReportKeywordIdentifiers:(id)identifiers
{
  v5 = @"1229562";
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)bugReportPresenterRequestsBugReportPrefixForTitle:(id)title
{
  v3 = objc_alloc_init(UIDevice);
  buildVersion = [v3 buildVersion];

  v5 = [NSString stringWithFormat:@"[%@]", buildVersion];

  return v5;
}

- (void)bugReportPresenter:(id)presenter setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self setStatusViewHidden:hiddenCopy];
}

- (void)bugReportPresenterRequestsInvalidateAutoDismissal:(id)dismissal
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

- (void)bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:(id)request
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriSessionWillCancelRequest];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRSystemAssistantExperiencePresentation bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #dismissal Cancel current Siri Session request so that it doesn't interrupt user filing issue details.", &v5, 0xCu);
  }
}

- (void)bugReportPresenter:(id)presenter requestsSiriDismissalWithReason:(int64_t)reason
{
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRSystemAssistantExperiencePresentation bugReportPresenter:requestsSiriDismissalWithReason:]";
    v10 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #dismissal Dismissing Siri with SASDismissalReason: %ld", &v8, 0x16u);
  }

  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate dismissSiriPresentation:self withReason:reason];
}

- (void)saeViewController:(id)controller requestsKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)saeViewController:(id)controller willBeginEditingOfType:(int64_t)type
{
  v5 = type == 1;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self willBeginEditingOfType:v5];
}

- (void)saeViewControllerDidEndEditing:(id)editing
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentationDidResignFirstResponder:self];
}

- (void)viewController:(id)controller siriRequestEnteredWithText:(id)text
{
  self->_hasUserTyped = 0;
  textCopy = text;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self startRequestForText:textCopy];
}

- (void)viewController:(id)controller siriRequestEnteredWithSuggestion:(id)suggestion suggestionRequestType:(int64_t)type
{
  suggestionCopy = suggestion;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self startRequestForSuggestion:suggestionCopy inputType:self->_inputType suggestionRequestType:type];
}

- (void)viewController:(id)controller siriRequestEnteredWithSuggestionToolInvocation:(id)invocation turnIdentifier:(id)identifier
{
  invocationCopy = invocation;
  identifierCopy = identifier;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate2 siriPresentation:self startRequestForSuggestionToolInvocation:invocationCopy turnIdentifier:identifierCopy];
  }
}

- (void)viewController:(id)controller didFinishEditingUtteranceWithText:(id)text originalUserUtterance:(id)utterance selectionResults:(id)results showASR:(BOOL)r
{
  rCopy = r;
  textCopy = text;
  utteranceCopy = utterance;
  resultsCopy = results;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  correctionIdentifier = [utteranceCopy correctionIdentifier];
  [delegate siriPresentation:self startEditedRequestWithText:textCopy correctionIdentifier:correctionIdentifier userSelectionResults:resultsCopy];

  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SRSystemAssistantExperiencePresentation viewController:didFinishEditingUtteranceWithText:originalUserUtterance:selectionResults:showASR:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s #sae: creating new UserUtterance from edited text", &v22, 0xCu);
  }

  v17 = [AFUserUtterance alloc];
  correctionIdentifier2 = [utteranceCopy correctionIdentifier];
  v19 = [v17 initWithString:textCopy correctionIdentifier:correctionIdentifier2];

  [(SRSystemAssistantExperienceViewController *)self->_saeViewController setRevealRecognizedSpeech:rCopy];
  activeViewModelController = [(SRSystemAssistantExperiencePresentation *)self activeViewModelController];
  [activeViewModelController revealUserUtterance:v19 backingAceObject:0];

  delegate2 = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate2 siriPresentationDidEndEditing:self];
}

- (void)saeViewControllerRequestsHIDEventDefferal:(id)defferal
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentationRequestsHIDEventDefferal:self];
}

- (void)saeViewControllerCancelHIDEventDefferal:(id)defferal
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentationCancelHIDEventDefferal:self];
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

- (void)requestToHandlePasscodeUnlockWithClient:(unint64_t)client withCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate handlePasscodeUnlockForSiriPresentation:self withClient:client withCompletion:completionCopy];
}

- (SASRequestOptions)_activeRequestOptions
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  v4 = [delegate activeRequestOptionsForSiriPresentation:self];

  return v4;
}

- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)change isAttending:(BOOL)attending
{
  attendingCopy = attending;
  changeCopy = change;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    responseMode = self->_responseMode;
    requestIsWiredMicOrBTHeadsetOrWx = self->_requestIsWiredMicOrBTHeadsetOrWx;
    v12 = 136316162;
    v13 = "[SRSystemAssistantExperiencePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
    v14 = 1024;
    v15 = changeCopy;
    v16 = 1024;
    v17 = attendingCopy;
    v18 = 2112;
    v19 = responseMode;
    v20 = 1024;
    v21 = requestIsWiredMicOrBTHeadsetOrWx;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #sae siriIsIdleAndQuiet: %d, isAttending: %d, responseMode: %@, requestIsWiredMicOrBTHeadsetOrWx: %d", &v12, 0x28u);
  }

  self->_siriIsIdleAndQuiet = changeCopy;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SRSystemAssistantExperiencePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
    v14 = 1024;
    v15 = changeCopy;
    v16 = 1024;
    v17 = attendingCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Stopping auto dismissal if needed because idle and quiet status did change: siriIsIdleAndQuiet=%d, isAttending=%d", &v12, 0x18u);
  }

  [(SRCompactAutoDismissController *)self->_autoDismissController stopAutoDismissalAttentionController];
  if (changeCopy)
  {
    [(SRSystemAssistantExperienceViewController *)self->_saeViewController siriIsIdleAndQuiet];
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRSystemAssistantExperiencePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Starting auto dismissal if needed because Siri is idle and quiet", &v12, 0xCu);
    }

    [(SRSystemAssistantExperiencePresentation *)self _startAutoDismissalIfNeededGivenSiriIsAttending:attendingCopy];
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

- (void)_startAutoDismissalIfNeededGivenSiriIsAttending:(BOOL)attending
{
  attendingCopy = attending;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[SRSystemAssistantExperiencePresentation _startAutoDismissalIfNeededGivenSiriIsAttending:]";
    v17 = 1024;
    LODWORD(v18) = attendingCopy;
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

    if (attendingCopy)
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

- (void)_setInputType:(int64_t)type
{
  inputType = self->_inputType;
  if (inputType != type)
  {
    if (type == 1 && inputType == 2 || type == 1 && inputType == 3)
    {
      self->_inputType = 1;
      [(SRSystemAssistantExperienceViewController *)self->_saeViewController switchPresentationToTextInput];
    }

    else if (type == 3)
    {
      self->_inputType = 3;
      [(SRSystemAssistantExperiencePresentation *)self _updatePresentationForVisualIntelligenceCameraIfNeeded];
    }

    else
    {
      self->_inputType = type;
    }

    [(SRCompactAutoDismissController *)self->_autoDismissController setEnabled:type != 1];
    activeViewModelController = [(SRSystemAssistantExperiencePresentation *)self activeViewModelController];
    [activeViewModelController inputTypeDidChange];

    delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
    [delegate siriPresentation:self inputTypeDidChange:type];
  }
}

- (void)autoDismissControllerRequestsDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
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
      delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
      [delegate dismissSiriPresentation:self withReason:4];

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

- (void)autoDismissControllerRequestsStopAttending:(id)attending
{
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriWillStopAttending:self];
}

- (void)modalContainerViewControllerViewWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self willDismissViewController:disappearCopy];
}

- (void)modalContainerViewControllerViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  delegate = [(SRSystemAssistantExperiencePresentation *)self delegate];
  [delegate siriPresentation:self didDismissViewController:disappearCopy];
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

- (int64_t)_viewModelInputTypeForRequestInputType:(int64_t)type
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