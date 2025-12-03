@interface SRCompactPresentation
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)state;
- (BOOL)siriDeviceLockedForViewModelController:(id)controller;
- (BOOL)supportsVisualPresentationForConversationItem:(id)item;
- (CGRect)effectiveContentFrame;
- (CGSize)maxSizeForSnippet;
- (SASRequestOptions)_activeRequestOptions;
- (SRCompactPresentation)initWithDelegate:(id)delegate dataSource:(id)source;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (double)expectedContentWidth;
- (id)_activeConversation;
- (id)_conversationIdentifiers;
- (id)_dismissalContextWithDismissalReason:(int64_t)reason dismissalOptions:(id)options;
- (id)_identifierOfPreviousConversation;
- (id)bugReportPresenterRequestsBugReportKeywordIdentifiers:(id)identifiers;
- (id)bugReportPresenterRequestsBugReportPrefixForTitle:(id)title;
- (id)compactViewModelController:(id)controller requestsTranscriptItemForAceObject:(id)object;
- (id)dismissalUserInfo;
- (id)effectiveCoreLocationBundleForCompactViewController:(id)controller;
- (id)localeForCompactViewController:(id)controller;
- (int64_t)_viewModelInputTypeForRequestInputType:(int64_t)type;
- (int64_t)inputTypeForCompactViewModelController:(id)controller;
- (unint64_t)lockStateForCompactViewController:(id)controller;
- (void)_activeConversationDidChange;
- (void)_dismissVideoPlayerViewController;
- (void)_setInputType:(int64_t)type;
- (void)_setupBugReportingPresenterIfNecessary;
- (void)_showFullScreenDimmingLayer;
- (void)activeRequestOptionsDidChange;
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
- (void)compactViewController:(id)controller handleStartLocalRequest:(id)request turnIdentifier:(id)identifier;
- (void)compactViewController:(id)controller preventOutsideTouchesFromDismissingSiri:(BOOL)siri;
- (void)compactViewController:(id)controller requestsKeyboardWithCompletion:(id)completion;
- (void)compactViewController:(id)controller setStatusViewHidden:(BOOL)hidden;
- (void)compactViewController:(id)controller speakText:(id)text isPhonetic:(BOOL)phonetic completion:(id)completion;
- (void)compactViewController:(id)controller viewDidAppearForAceObject:(id)object;
- (void)compactViewController:(id)controller viewDidDisappearForAceObject:(id)object;
- (void)compactViewController:(id)controller willBeginEditingOfType:(int64_t)type;
- (void)compactViewControllerCancelHIDEventDefferal:(id)defferal;
- (void)compactViewControllerDidEndEditing:(id)editing;
- (void)compactViewControllerRequestsHIDEventDefferal:(id)defferal;
- (void)compactViewModelController:(id)controller didProcessConversationItemsWithIdentifiers:(id)identifiers;
- (void)configureForRequestOptions:(id)options;
- (void)conversation:(id)conversation didChangeWithTransaction:(id)transaction;
- (void)dealloc;
- (void)didBeginProcessingConversationItems;
- (void)didPresentContentForCompactViewController:(id)controller;
- (void)didPresentSystemUI;
- (void)didReceiveBugButtonLongPress;
- (void)didReceiveReportBugAction;
- (void)didReceiveRevealRecognizedSpeechCommand:(id)command;
- (void)endSiriSessionForViewController:(id)controller withDismissalReason:(int64_t)reason;
- (void)handlePlayContentCommand:(id)command completion:(id)completion;
- (void)handleRequestEndBehavior:(id)behavior isAttending:(BOOL)attending;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)immersiveExperienceRequestedForViewModelController:(id)controller;
- (void)modalContainerViewControllerViewDidDisappear:(id)disappear;
- (void)modalContainerViewControllerViewWillDisappear:(id)disappear;
- (void)requestToHandlePasscodeUnlockWithClient:(unint64_t)client withCompletion:(id)completion;
- (void)setActiveViewModelController:(id)controller;
- (void)siriCompactViewController:(id)controller willDismissViewController:(id)viewController;
- (void)siriCompactViewController:(id)controller willPresentViewController:(id)viewController;
- (void)siriDidActivateFromSource:(int64_t)source;
- (void)siriDidDeactivateWithCompletion:(id)completion;
- (void)siriDidStartNewConversationWithIdentifier:(id)identifier;
- (void)siriDidTransitionFromState:(int64_t)state event:(int64_t)event;
- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)change isAttending:(BOOL)attending;
- (void)siriRequestWillStartWithRequestOptions:(id)options;
- (void)siriResponseModeDidChange:(unint64_t)change isAttending:(BOOL)attending;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options;
- (void)speechRecordingDidBeginOnRecordRoute:(id)route;
- (void)stopRecordingForViewController:(id)controller;
- (void)stopSpeakingForCompactViewController:(id)controller;
- (void)tapToEditPresented;
- (void)userDrilledIntoSnippet;
- (void)userTouchedSnippet;
- (void)viewController:(id)controller didFinishEditingUtteranceWithText:(id)text originalUserUtterance:(id)utterance selectionResults:(id)results;
- (void)viewController:(id)controller openURL:(id)l completion:(id)completion;
- (void)viewController:(id)controller performAceCommands:(id)commands completion:(id)completion;
- (void)viewController:(id)controller reduceOrbOpacity:(BOOL)opacity;
- (void)viewController:(id)controller requestsHostBackgroundBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence;
- (void)viewController:(id)controller siriRequestEnteredWithText:(id)text;
- (void)viewControllerDidPresentUserInterface:(id)interface;
@end

@implementation SRCompactPresentation

- (SRCompactPresentation)initWithDelegate:(id)delegate dataSource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = SRCompactPresentation;
  v8 = [(SRCompactPresentation *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(SRCompactPresentation *)v8 setDelegate:delegateCopy];
    [(SRCompactPresentation *)v9 setDataSource:sourceCopy];
    v9->_inputType = 0;
    v10 = objc_alloc_init(SRCompactViewController);
    compactViewController = v9->_compactViewController;
    v9->_compactViewController = v10;

    [(SRCompactViewController *)v9->_compactViewController setDelegate:v9];
    delegate = [(SRCompactPresentation *)v9 delegate];
    v13 = [delegate siriDeviceLockStateForSiriPresentation:v9];

    v14 = [[SRCompactAutoDismissController alloc] initWithDelegate:v9 andLockState:v13];
    autoDismissController = v9->_autoDismissController;
    v9->_autoDismissController = v14;

    v16 = +[AFPreferences sharedPreferences];
    languageCode = [v16 languageCode];
    [SiriUISashItem _setLanguageCode:languageCode];

    [(SRCompactPresentation *)v9 _activeConversationDidChange];
  }

  return v9;
}

- (id)_conversationIdentifiers
{
  dataSource = [(SRCompactPresentation *)self dataSource];
  v4 = [dataSource conversationIdentifiersForSiriPresentation:self];

  return v4;
}

- (id)_identifierOfPreviousConversation
{
  _conversationIdentifiers = [(SRCompactPresentation *)self _conversationIdentifiers];
  if ([_conversationIdentifiers count] < 2)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SRCompactPresentation _identifierOfPreviousConversation]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #compact no previous conversation found", &v6, 0xCu);
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
  dataSource = [(SRCompactPresentation *)self dataSource];
  _conversationIdentifiers = [(SRCompactPresentation *)self _conversationIdentifiers];
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
      v16 = "[SRCompactPresentation configureForRequestOptions:]";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Don't check Siri availability for %@ activation", &v15, 0x16u);
    }
  }

  else if (+[AFUISiriSession availabilityState])
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[SRCompactPresentation configureForRequestOptions:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #networkAvailability Siri Not available. Dismissing Siri and posting notification", &v15, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dismissSiriPresentation:self withReason:13];
  }
}

- (void)conversation:(id)conversation didChangeWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  activeViewModelController = [(SRCompactPresentation *)self activeViewModelController];
  [activeViewModelController conversationDidChangeWithTransaction:transactionCopy];
}

- (void)didReceiveRevealRecognizedSpeechCommand:(id)command
{
  commandCopy = command;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SRCompactPresentation didReceiveRevealRecognizedSpeechCommand:]";
    v15 = 2112;
    v16 = commandCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: received revealRecognizedSpeech:%@", &v13, 0x16u);
  }

  recognition = [commandCopy recognition];
  dataSource = [(SRCompactPresentation *)self dataSource];
  v8 = [dataSource sessionInfoForSiriPresentation:self];

  refId = [commandCopy refId];
  identifier = [v8 identifier];
  v11 = [recognition af_userUtteranceValueWithRefId:refId sessionId:identifier];

  activeViewModelController = [(SRCompactPresentation *)self activeViewModelController];
  [activeViewModelController revealUserUtterance:v11 backingAceObject:commandCopy];
}

- (void)dealloc
{
  [(SRCompactAutoDismissController *)self->_autoDismissController setEnabled:0];
  v3.receiver = self;
  v3.super_class = SRCompactPresentation;
  [(SRCompactPresentation *)&v3 dealloc];
}

- (void)activeRequestOptionsDidChange
{
  _activeRequestOptions = [(SRCompactPresentation *)self _activeRequestOptions];
  if ([_activeRequestOptions isTypeToSiriRequest] && objc_msgSend(_activeRequestOptions, "inputType") != 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(SRCompactViewController *)self->_compactViewController setActiveRequestOptions:_activeRequestOptions];
  [(SRCompactPresentation *)self _setInputType:v3];
}

- (void)siriRequestWillStartWithRequestOptions:(id)options
{
  optionsCopy = options;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SRCompactPresentation siriRequestWillStartWithRequestOptions:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  *&self->_isPresentingSystemUI = 0;
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

  [(SRCompactViewController *)self->_compactViewController siriWillStartRequest];
}

- (void)siriResponseModeDidChange:(unint64_t)change isAttending:(BOOL)attending
{
  attendingCopy = attending;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    requestIsWiredMicOrBTHeadsetOrWx = self->_requestIsWiredMicOrBTHeadsetOrWx;
    v11 = 136315906;
    v12 = "[SRCompactPresentation siriResponseModeDidChange:isAttending:]";
    v13 = 2048;
    changeCopy = change;
    v15 = 1024;
    v16 = requestIsWiredMicOrBTHeadsetOrWx;
    v17 = 1024;
    v18 = attendingCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact mode updated to %lu, _requestIsWiredMicOrBTHeadsetOrWx: %d, isAttending: %d", &v11, 0x22u);
  }

  [(SRCompactAutoDismissController *)self->_autoDismissController siriResponseModeDidChange:change isWiredMicOrBTHeadsetOrWx:self->_requestIsWiredMicOrBTHeadsetOrWx isAttending:attendingCopy];
  v9 = MDModeGetName();
  responseMode = self->_responseMode;
  self->_responseMode = v9;
}

- (void)siriDidActivateFromSource:(int64_t)source
{
  if (source == 21)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SRCompactPresentation siriDidActivateFromSource:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact Loading previous conversation because we activated from a breadcrumb", &v9, 0xCu);
    }

    dataSource = [(SRCompactPresentation *)self dataSource];
    _identifierOfPreviousConversation = [(SRCompactPresentation *)self _identifierOfPreviousConversation];
    [dataSource siriPresentation:self activateConversationWithIdentifier:_identifierOfPreviousConversation];

    [(SRCompactPresentation *)self _activeConversationDidChange];
    delegate = [(SRCompactPresentation *)self delegate];
    [delegate siriPresentationDidPresentConversationFromBreadcrumb:self];
  }

  [(SRCompactViewController *)self->_compactViewController siriDidActivate];
  *&self->_userCancelledRequestViaOrbViewTap = 0;
  self->_isPresentingSystemUI = 0;
  self->_initialRequestSource = source;
}

- (void)siriDidStartNewConversationWithIdentifier:(id)identifier
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUIDString = [identifier UUIDString];
    v8 = 136315394;
    v9 = "[SRCompactPresentation siriDidStartNewConversationWithIdentifier:]";
    v10 = 2112;
    v11 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #compact Starting a new conversation %@", &v8, 0x16u);
  }

  [(SRCompactPresentation *)self _activeConversationDidChange];
}

- (void)speechRecordingDidBeginOnRecordRoute:(id)route
{
  routeCopy = route;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SRCompactPresentation speechRecordingDidBeginOnRecordRoute:]";
    v8 = 2112;
    v9 = routeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact recording started on recordRoute: %@", &v6, 0x16u);
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
    v14 = "[SRCompactPresentation shouldResumeInterruptedAudioPlaybackForAttendingState:]";
    v15 = 1024;
    v16 = stateCopy;
    v17 = 2112;
    v18 = responseMode;
    v19 = 1024;
    v20 = requestIsWiredMicOrBTHeadsetOrWx;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact isAttending: %d, responseMode: %@, requestIsWiredMicOrBTHeadsetOrWx: %d", &v13, 0x22u);
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
    delegate = [(SRCompactPresentation *)self delegate];
    [delegate siriPresentation:self setStatusBarHidden:1 animated:1];

    delegate2 = [(SRCompactPresentation *)self delegate];
    [delegate2 siriPresentation:self setStatusViewHidden:1];

    v12 = [[SiriUIModalContainerViewController alloc] initWithContentViewController:v8];
    [v12 setDelegate:self];
    delegate3 = [(SRCompactPresentation *)self delegate];
    [delegate3 siriPresentation:self willPresentViewController:v12];

    objc_initWeak(&location, self);
    compactViewController = self->_compactViewController;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000485E8;
    v19[3] = &unk_100166FE8;
    objc_copyWeak(&v21, &location);
    v15 = v12;
    v20 = v15;
    [(SRCompactViewController *)compactViewController presentViewController:v15 animated:1 completion:v19];
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

  return [(SRCompactPresentation *)self alwaysShowRecognizedSpeech];
}

- (void)siriDidDeactivateWithCompletion:(id)completion
{
  completionCopy = completion;
  presentedViewController = [(SRCompactViewController *)self->_compactViewController presentedViewController];

  if (presentedViewController)
  {
    [(SRCompactViewController *)self->_compactViewController dismissViewControllerAnimated:1 completion:0];
  }

  [(SRCompactViewController *)self->_compactViewController siriDidDeactivate];
  if (AFIsInternalInstall() && !self->_shouldMuteSiriFeedbackBanner)
  {
    [SRSiriDebugManager invokeSiriDebugFeedbackBannerFor:self->_initialRequestSource completionHandler:0];
  }

  v6 = objc_alloc_init(SRDismissalClassificationController);
  v7 = [(SRCompactPresentation *)self _dismissalContextWithDismissalReason:self->_lastDismissalReason dismissalOptions:self->_lastDismissalOptions];
  v8 = [(SRDismissalClassificationController *)v6 classifyRequestAsUnintendedWithContext:v7];
  [v7 setClassifiedAsUnintended:v8];
  [(SRDismissalClassificationController *)v6 recordDismissalEventWithContext:v7 markAsUnintended:v8];
  inputType = self->_inputType;
  initialRequestSource = self->_initialRequestSource;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100048850;
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

- (void)didPresentSystemUI
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactPresentation didPresentSystemUI]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Setting didPresentSystemUI to true", &v4, 0xCu);
  }

  self->_isPresentingSystemUI = 1;
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
      v13 = 136315650;
      v14 = "[SRCompactPresentation siriDidTransitionFromState:event:]";
      v15 = 1024;
      v16 = hasPendingAutoDismissal;
      v17 = 1024;
      v18 = recordingFromWxDevice;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #compact Speech was mitigated as side speech, _hasPendingAutoDismissal: %d, _recordingFromWxDevice: %d", &v13, 0x18u);
    }

    if (self->_hasPendingAutoDismissal)
    {
      v11 = 4;
    }

    else
    {
      if (!self->_recordingFromWxDevice)
      {
LABEL_16:
        v6 = 0;
        goto LABEL_17;
      }

      v11 = 58;
    }

    delegate = [(SRCompactPresentation *)self delegate];
    [delegate dismissSiriPresentation:self withReason:v11];

    goto LABEL_16;
  }

  if (event == 12)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SRCompactPresentation siriDidTransitionFromState:event:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact Speech was determined as directed at siri stop pausing auto dismissal", &v13, 0xCu);
    }

    goto LABEL_16;
  }

  if (event != 11)
  {
    return;
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SRCompactPresentation siriDidTransitionFromState:event:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact Speech start detected, pausing auto dismissal", &v13, 0xCu);
  }

  v6 = 1;
LABEL_17:
  self->_shouldPauseAutoDismissal = v6;
}

- (void)_activeConversationDidChange
{
  _activeConversation = [(SRCompactPresentation *)self _activeConversation];
  v3 = [[SiriSharedUICompactViewModelController alloc] initWithConversation:_activeConversation delegate:self];
  [(SRCompactPresentation *)self setActiveViewModelController:v3];
}

- (void)setActiveViewModelController:(id)controller
{
  controllerCopy = controller;
  [(SiriSharedUICompactViewModelController *)self->_activeViewModelController setDelegate:0];
  activeViewModelController = self->_activeViewModelController;
  self->_activeViewModelController = controllerCopy;
  v6 = controllerCopy;

  [(SiriSharedUICompactViewModelController *)self->_activeViewModelController setViewModelChangeObserver:self->_compactViewController];
}

- (int64_t)inputTypeForCompactViewModelController:(id)controller
{
  _inputType = [(SRCompactPresentation *)self _inputType];

  return [(SRCompactPresentation *)self _viewModelInputTypeForRequestInputType:_inputType];
}

- (void)compactViewModelController:(id)controller didProcessConversationItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self didPresentConversationItemsWithIdentifiers:identifiersCopy];
}

- (BOOL)siriDeviceLockedForViewModelController:(id)controller
{
  delegate = [(SRCompactPresentation *)self delegate];
  v5 = ([delegate siriDeviceLockStateForSiriPresentation:self] >> 1) & 1;

  return v5;
}

- (id)compactViewModelController:(id)controller requestsTranscriptItemForAceObject:(id)object
{
  objectCopy = object;
  v5 = [SRLocalSnippetManager transcriptItemForObject:objectCopy];
  if (!v5)
  {
    v6 = +[SiriUISnippetManager sharedInstance];
    v5 = [v6 transcriptItemForObject:objectCopy sizeClass:1];
  }

  return v5;
}

- (void)immersiveExperienceRequestedForViewModelController:(id)controller
{
  delegate = [(SRCompactPresentation *)self delegate];
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
    v17 = "[SRCompactPresentation handleRequestEndBehavior:isAttending:]";
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
        v17 = "[SRCompactPresentation handleRequestEndBehavior:isAttending:]";
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
        v17 = "[SRCompactPresentation handleRequestEndBehavior:isAttending:]";
        v18 = 2048;
        v19 = longValue;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Setting delay dismissal for compact presentation by %ld milliseconds.", &v16, 0x16u);
      }

      minimumAutoDismissalTimeInMs3 = [behaviorCopy minimumAutoDismissalTimeInMs];
      delayDismissalMs = self->_delayDismissalMs;
      self->_delayDismissalMs = minimumAutoDismissalTimeInMs3;
    }
  }
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  view = [(SRCompactViewController *)self->_compactViewController view];
  window = [view window];
  screen = [window screen];

  coordinateSpace = [screen coordinateSpace];
  [view convertPoint:coordinateSpace fromCoordinateSpace:{x, y}];
  v11 = [(SRCompactViewController *)self->_compactViewController hasContentAtPoint:?];
  bugReportingPresenter = self->_bugReportingPresenter;
  if (bugReportingPresenter)
  {
    v11 |= [(AFUIBugReportPresenting *)bugReportingPresenter hasContentAtPoint:x, y];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11 & 1);
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)reason withOriginalDismissalOptions:(id)options
{
  optionsCopy = options;
  self->_lastDismissalReason = reason;
  objc_storeStrong(&self->_lastDismissalOptions, options);
  delegate = [(SRCompactPresentation *)self delegate];
  v8 = [delegate siriDeviceLockStateForSiriPresentation:self];

  if (reason == 67 || reason == 13)
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
  delegate = [(SRCompactPresentation *)self delegate];
  v8 = [delegate siriDeviceLockStateForSiriPresentation:self];

  dataSource = [(SRCompactPresentation *)self dataSource];
  v10 = [dataSource siriStateForSiriPresentation:self];

  if (self->_hasPresentedContent || self->_hasOmittedDialogFromPresenting)
  {
    v11 = 2;
  }

  else if (self->_isPresentingSystemUI)
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
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate contentWidthForForSiriPresentation:self];
  v5 = v4;

  return v5;
}

- (void)tapToEditPresented
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate tapToEditPresented:self];
}

- (CGSize)maxSizeForSnippet
{
  [(SRCompactViewController *)self->_compactViewController maxSizeForSnippet];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)effectiveContentFrame
{
  view = [(SRCompactViewController *)self->_compactViewController view];
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
  completionCopy = completion;
  lCopy = l;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self openURL:lCopy conversationId:0 completion:completionCopy];
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
          delegate = [(SRCompactPresentation *)self delegate];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100049C5C;
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
    block[2] = sub_100049C74;
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
          delegate2 = [(SRCompactPresentation *)self delegate];
          [delegate2 siriPresentation:self performAceCommand:v22 conversationItemIdentifier:0 turnIdentifier:turnIdentifier completion:0];
        }

        v19 = [v18 countByEnumeratingWithState:&v29 objects:v45 count:16];
      }

      while (v19);
    }
  }
}

- (void)compactViewController:(id)controller speakText:(id)text isPhonetic:(BOOL)phonetic completion:(id)completion
{
  phoneticCopy = phonetic;
  completionCopy = completion;
  textCopy = text;
  delegate = [(SRCompactPresentation *)self delegate];
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

- (void)stopSpeakingForCompactViewController:(id)controller
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate stopSpeakingForSiriPresentation:self];
}

- (unint64_t)lockStateForCompactViewController:(id)controller
{
  delegate = [(SRCompactPresentation *)self delegate];
  v5 = [delegate siriDeviceLockStateForSiriPresentation:self];

  return v5;
}

- (id)localeForCompactViewController:(id)controller
{
  delegate = [(SRCompactPresentation *)self delegate];
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
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate userTouchedSnippet];
}

- (void)compactViewController:(id)controller handleStartLocalRequest:(id)request turnIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  delegate = [(SRCompactPresentation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SRCompactPresentation *)self delegate];
    [delegate2 siriPresentation:self handleStartLocalRequest:requestCopy turnIdentifier:identifierCopy];
  }
}

- (void)compactViewController:(id)controller setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self setStatusViewHidden:hiddenCopy];
}

- (void)viewController:(id)controller requestsHostBackgroundBlurVisible:(BOOL)visible reason:(int64_t)reason fence:(id)fence
{
  visibleCopy = visible;
  fenceCopy = fence;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self requestHostBlurVisible:visibleCopy reason:reason fence:fenceCopy];
}

- (void)viewController:(id)controller reduceOrbOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self reduceOrbOpacity:opacityCopy];
}

- (void)endSiriSessionForViewController:(id)controller withDismissalReason:(int64_t)reason
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate dismissSiriPresentation:self withReason:reason];
}

- (void)stopRecordingForViewController:(id)controller
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate stopRecordingSpeechForSiriPresentation:self];
}

- (void)cancelRequestForViewController:(id)controller
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate cancelRequestForSiriPresentation:self];
}

- (void)didPresentContentForCompactViewController:(id)controller
{
  self->_hasPresentedContent = 1;
  delegate = [(SRCompactPresentation *)self delegate];
  v5 = [delegate siriDeviceLockStateForSiriPresentation:self];

  if ([(SRCompactViewController *)self->_compactViewController isInAmbient])
  {
LABEL_2:

    [(SRCompactPresentation *)self _showFullScreenDimmingLayer];
    return;
  }

  if (!v5)
  {
    IsPad = SiriUIDeviceIsPad();
    v7 = +[AFSystemAssistantExperienceStatusManager saeAvailable];
    if (IsPad & 1) != 0 || (v7)
    {
      return;
    }

    goto LABEL_2;
  }

  delegate2 = [(SRCompactPresentation *)self delegate];
  [delegate2 siriPresentation:self requestHostBlurVisible:1 reason:2 fence:0];
}

- (id)effectiveCoreLocationBundleForCompactViewController:(id)controller
{
  delegate = [(SRCompactPresentation *)self delegate];
  v5 = [delegate effectiveCoreLocationBundleForSiriPresentation:self];

  return v5;
}

- (void)siriCompactViewController:(id)controller willPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self willPresentViewController:viewControllerCopy];
}

- (void)didBeginProcessingConversationItems
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate didBeginProcessingConversationItems];
}

- (void)siriCompactViewController:(id)controller willDismissViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self willDismissViewController:viewControllerCopy];
}

- (void)compactViewController:(id)controller viewDidAppearForAceObject:(id)object
{
  objectCopy = object;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self viewDidAppearWithAceObject:objectCopy];
}

- (void)compactViewController:(id)controller viewDidDisappearForAceObject:(id)object
{
  objectCopy = object;
  delegate = [(SRCompactPresentation *)self delegate];
  encodedClassName = [objectCopy encodedClassName];
  aceId = [objectCopy aceId];

  [delegate siriPresentation:self viewDidDisappearWithClassDescriptor:encodedClassName identifier:aceId];
}

- (void)userDrilledIntoSnippet
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate userDrilledIntoSnippet];
}

- (void)didReceiveBugButtonLongPress
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBF40(v3);
  }

  self->_shouldMuteSiriFeedbackBanner = 1;
  [(SRCompactPresentation *)self _setupBugReportingPresenterIfNecessary];
  [(AFUIBugReportPresenting *)self->_bugReportingPresenter didReceiveBugButtonLongPress];
}

- (void)didReceiveReportBugAction
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CBFC4(v3);
  }

  self->_shouldMuteSiriFeedbackBanner = 1;
  [(SRCompactPresentation *)self _setupBugReportingPresenterIfNecessary];
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
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate handlePasscodeUnlockForSiriPresentation:self withClient:0 withCompletion:completionCopy];
}

- (void)bugReportPresenter:(id)presenter requestsToOpenURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self openURL:lCopy conversationId:0 completion:completionCopy];
}

- (void)bugReportPresenter:(id)presenter requestsToPerformAceCommand:(id)command
{
  commandCopy = command;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self performAceCommand:commandCopy conversationItemIdentifier:0 completion:0];
}

- (void)bugReportPresenter:(id)presenter requestsToTakeScreenshotWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate getScreenshotImageForSiriPresentation:self withCompletion:completionCopy];
}

- (void)bugReportPresenter:(id)presenter setBugReportingAvailable:(BOOL)available
{
  availableCopy = available;
  delegate = [(SRCompactPresentation *)self delegate];
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
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self setStatusViewHidden:hiddenCopy];
}

- (void)bugReportPresenterRequestsInvalidateAutoDismissal:(id)dismissal
{
  [(SRCompactAutoDismissController *)self->_autoDismissController setEnabled:0];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRCompactPresentation bugReportPresenterRequestsInvalidateAutoDismissal:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #autodismiss Siri TTR disabled Auto Dismissal to keep Siri TTR modal up.", &v4, 0xCu);
  }
}

- (void)bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:(id)request
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriSessionWillCancelRequest];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRCompactPresentation bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #dismissal Cancel current Siri Session request so that it doesn't interrupt user filing issue details.", &v5, 0xCu);
  }
}

- (void)bugReportPresenter:(id)presenter requestsSiriDismissalWithReason:(int64_t)reason
{
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRCompactPresentation bugReportPresenter:requestsSiriDismissalWithReason:]";
    v10 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #dismissal Dismissing Siri with SASDismissalReason: %ld", &v8, 0x16u);
  }

  delegate = [(SRCompactPresentation *)self delegate];
  [delegate dismissSiriPresentation:self withReason:reason];
}

- (void)compactViewController:(id)controller requestsKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)compactViewController:(id)controller willBeginEditingOfType:(int64_t)type
{
  v5 = type == 1;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self willBeginEditingOfType:v5];
}

- (void)compactViewControllerDidEndEditing:(id)editing
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentationDidResignFirstResponder:self];
}

- (void)viewController:(id)controller siriRequestEnteredWithText:(id)text
{
  textCopy = text;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self startRequestForText:textCopy];
}

- (void)viewController:(id)controller didFinishEditingUtteranceWithText:(id)text originalUserUtterance:(id)utterance selectionResults:(id)results
{
  textCopy = text;
  utteranceCopy = utterance;
  resultsCopy = results;
  if (([SiriUIUtilities string:textCopy isSameAsUserUtterance:utteranceCopy]& 1) != 0)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SRCompactPresentation viewController:didFinishEditingUtteranceWithText:originalUserUtterance:selectionResults:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #compact: edited text was same as original, not creating new UserUtterance", &v21, 0xCu);
    }
  }

  else
  {
    delegate = [(SRCompactPresentation *)self delegate];
    correctionIdentifier = [utteranceCopy correctionIdentifier];
    [delegate siriPresentation:self startEditedRequestWithText:textCopy correctionIdentifier:correctionIdentifier userSelectionResults:resultsCopy];

    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SRCompactPresentation viewController:didFinishEditingUtteranceWithText:originalUserUtterance:selectionResults:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s #compact: creating new UserUtterance from edited text", &v21, 0xCu);
    }

    v16 = [AFUserUtterance alloc];
    correctionIdentifier2 = [utteranceCopy correctionIdentifier];
    v18 = [v16 initWithString:textCopy correctionIdentifier:correctionIdentifier2];

    activeViewModelController = [(SRCompactPresentation *)self activeViewModelController];
    [activeViewModelController revealUserUtterance:v18 backingAceObject:0];
  }

  delegate2 = [(SRCompactPresentation *)self delegate];
  [delegate2 siriPresentationDidEndEditing:self];
}

- (void)compactViewControllerRequestsHIDEventDefferal:(id)defferal
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentationRequestsHIDEventDefferal:self];
}

- (void)compactViewControllerCancelHIDEventDefferal:(id)defferal
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentationCancelHIDEventDefferal:self];
}

- (void)compactViewController:(id)controller preventOutsideTouchesFromDismissingSiri:(BOOL)siri
{
  siriCopy = siri;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self preventOutsideTouchesFromDismissingSiri:siriCopy];
}

- (void)requestToHandlePasscodeUnlockWithClient:(unint64_t)client withCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate handlePasscodeUnlockForSiriPresentation:self withClient:client withCompletion:completionCopy];
}

- (SASRequestOptions)_activeRequestOptions
{
  delegate = [(SRCompactPresentation *)self delegate];
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
    *v18 = 136316162;
    *&v18[4] = "[SRCompactPresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
    *&v18[12] = 1024;
    *&v18[14] = changeCopy;
    *&v18[18] = 1024;
    *&v18[20] = attendingCopy;
    v19 = 2112;
    v20 = responseMode;
    v21 = 1024;
    v22 = requestIsWiredMicOrBTHeadsetOrWx;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact siriIsIdleAndQuiet: %d, isAttending: %d, responseMode: %@, requestIsWiredMicOrBTHeadsetOrWx: %d", v18, 0x28u);
  }

  [(SRCompactAutoDismissController *)self->_autoDismissController stopAutoDismissalAttentionController];
  if (changeCopy)
  {
    [(SRCompactViewController *)self->_compactViewController siriIsIdleAndQuiet];
    if (attendingCopy)
    {
      delayDismissalMs = self->_delayDismissalMs;
      if (delayDismissalMs)
      {
        v11 = [(NSNumber *)delayDismissalMs longValue]/ 1000.0;
        v12 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 136315394;
          *&v18[4] = "[SRCompactPresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
          *&v18[12] = 2048;
          *&v18[14] = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #compact, setting minimum dismissal time to %lf s", v18, 0x16u);
        }
      }

      else
      {
        v11 = 0.0;
      }

      [(SRCompactAutoDismissController *)self->_autoDismissController updateMinimumIdleTimeInterval:v11];
    }

    [(SRCompactAutoDismissController *)self->_autoDismissController startAutoDismissalAttentionController];
    if (!self->_hasPresentedContent && !self->_hasOmittedDialogFromPresenting && !self->_isPresentingSystemUI)
    {
      userCancelledRequestViaOrbViewTap = self->_userCancelledRequestViaOrbViewTap;
      v14 = AFSiriLogContextConnection;
      v15 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
      if (userCancelledRequestViaOrbViewTap)
      {
        v16 = 3.0;
        if (v15)
        {
          *v18 = 136315394;
          *&v18[4] = "[SRCompactPresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
          *&v18[12] = 2048;
          *&v18[14] = 0x4008000000000000;
          v17 = "%s #autodismiss Siri is idle and hasn't presented content to the user. Scheduling autodismissal in %.2f seconds because orbView was tapped";
LABEL_18:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, v18, 0x16u);
        }
      }

      else
      {
        v16 = 0.300000012;
        if (v15)
        {
          *v18 = 136315394;
          *&v18[4] = "[SRCompactPresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
          *&v18[12] = 2048;
          *&v18[14] = 0x3FD3333340000000;
          v17 = "%s #autodismiss Siri is idle and hasn't presented content to the user. Scheduling autodismissal in %.2f seconds";
          goto LABEL_18;
        }
      }

      [(SRCompactAutoDismissController *)self->_autoDismissController scheduleAutoDismissalForLongIdling:v16, *v18, *&v18[16]];
    }
  }
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

- (void)_showFullScreenDimmingLayer
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self setFullScreenDimmingLayerVisible:1 animated:1];
}

- (void)_setInputType:(int64_t)type
{
  self->_inputType = type;
  if (type == 1)
  {
    [(SRCompactPresentation *)self _showFullScreenDimmingLayer];
  }

  activeViewModelController = [(SRCompactPresentation *)self activeViewModelController];
  [activeViewModelController inputTypeDidChange];
}

- (void)autoDismissControllerRequestsDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  if (self->_shouldPauseAutoDismissal)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SRCompactPresentation autoDismissControllerRequestsDismissal:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact holding onto autodismissal event waiting for mitigation result", &v7, 0xCu);
    }

    self->_hasPendingAutoDismissal = 1;
  }

  else
  {
    delegate = [(SRCompactPresentation *)self delegate];
    [delegate dismissSiriPresentation:self withReason:4];
  }
}

- (void)autoDismissControllerRequestsStopAttending:(id)attending
{
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriWillStopAttending:self];
}

- (void)modalContainerViewControllerViewWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self willDismissViewController:disappearCopy];
}

- (void)modalContainerViewControllerViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  delegate = [(SRCompactPresentation *)self delegate];
  [delegate siriPresentation:self didDismissViewController:disappearCopy];
}

- (void)_dismissVideoPlayerViewController
{
  [(SRCompactViewController *)self->_compactViewController dismissViewControllerAnimated:1 completion:0];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004B844;
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

- (BOOL)alwaysShowRecognizedSpeech
{
  v2 = +[AFPreferences sharedPreferences];
  alwaysShowRecognizedSpeech = [v2 alwaysShowRecognizedSpeech];

  return alwaysShowRecognizedSpeech;
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