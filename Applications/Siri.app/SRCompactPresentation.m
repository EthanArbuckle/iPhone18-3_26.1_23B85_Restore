@interface SRCompactPresentation
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)a3;
- (BOOL)siriDeviceLockedForViewModelController:(id)a3;
- (BOOL)supportsVisualPresentationForConversationItem:(id)a3;
- (CGRect)effectiveContentFrame;
- (CGSize)maxSizeForSnippet;
- (SASRequestOptions)_activeRequestOptions;
- (SRCompactPresentation)initWithDelegate:(id)a3 dataSource:(id)a4;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (double)expectedContentWidth;
- (id)_activeConversation;
- (id)_conversationIdentifiers;
- (id)_dismissalContextWithDismissalReason:(int64_t)a3 dismissalOptions:(id)a4;
- (id)_identifierOfPreviousConversation;
- (id)bugReportPresenterRequestsBugReportKeywordIdentifiers:(id)a3;
- (id)bugReportPresenterRequestsBugReportPrefixForTitle:(id)a3;
- (id)compactViewModelController:(id)a3 requestsTranscriptItemForAceObject:(id)a4;
- (id)dismissalUserInfo;
- (id)effectiveCoreLocationBundleForCompactViewController:(id)a3;
- (id)localeForCompactViewController:(id)a3;
- (int64_t)_viewModelInputTypeForRequestInputType:(int64_t)a3;
- (int64_t)inputTypeForCompactViewModelController:(id)a3;
- (unint64_t)lockStateForCompactViewController:(id)a3;
- (void)_activeConversationDidChange;
- (void)_dismissVideoPlayerViewController;
- (void)_setInputType:(int64_t)a3;
- (void)_setupBugReportingPresenterIfNecessary;
- (void)_showFullScreenDimmingLayer;
- (void)activeRequestOptionsDidChange;
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
- (void)compactViewController:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5;
- (void)compactViewController:(id)a3 preventOutsideTouchesFromDismissingSiri:(BOOL)a4;
- (void)compactViewController:(id)a3 requestsKeyboardWithCompletion:(id)a4;
- (void)compactViewController:(id)a3 setStatusViewHidden:(BOOL)a4;
- (void)compactViewController:(id)a3 speakText:(id)a4 isPhonetic:(BOOL)a5 completion:(id)a6;
- (void)compactViewController:(id)a3 viewDidAppearForAceObject:(id)a4;
- (void)compactViewController:(id)a3 viewDidDisappearForAceObject:(id)a4;
- (void)compactViewController:(id)a3 willBeginEditingOfType:(int64_t)a4;
- (void)compactViewControllerCancelHIDEventDefferal:(id)a3;
- (void)compactViewControllerDidEndEditing:(id)a3;
- (void)compactViewControllerRequestsHIDEventDefferal:(id)a3;
- (void)compactViewModelController:(id)a3 didProcessConversationItemsWithIdentifiers:(id)a4;
- (void)configureForRequestOptions:(id)a3;
- (void)conversation:(id)a3 didChangeWithTransaction:(id)a4;
- (void)dealloc;
- (void)didBeginProcessingConversationItems;
- (void)didPresentContentForCompactViewController:(id)a3;
- (void)didPresentSystemUI;
- (void)didReceiveBugButtonLongPress;
- (void)didReceiveReportBugAction;
- (void)didReceiveRevealRecognizedSpeechCommand:(id)a3;
- (void)endSiriSessionForViewController:(id)a3 withDismissalReason:(int64_t)a4;
- (void)handlePlayContentCommand:(id)a3 completion:(id)a4;
- (void)handleRequestEndBehavior:(id)a3 isAttending:(BOOL)a4;
- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4;
- (void)immersiveExperienceRequestedForViewModelController:(id)a3;
- (void)modalContainerViewControllerViewDidDisappear:(id)a3;
- (void)modalContainerViewControllerViewWillDisappear:(id)a3;
- (void)requestToHandlePasscodeUnlockWithClient:(unint64_t)a3 withCompletion:(id)a4;
- (void)setActiveViewModelController:(id)a3;
- (void)siriCompactViewController:(id)a3 willDismissViewController:(id)a4;
- (void)siriCompactViewController:(id)a3 willPresentViewController:(id)a4;
- (void)siriDidActivateFromSource:(int64_t)a3;
- (void)siriDidDeactivateWithCompletion:(id)a3;
- (void)siriDidStartNewConversationWithIdentifier:(id)a3;
- (void)siriDidTransitionFromState:(int64_t)a3 event:(int64_t)a4;
- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)a3 isAttending:(BOOL)a4;
- (void)siriRequestWillStartWithRequestOptions:(id)a3;
- (void)siriResponseModeDidChange:(unint64_t)a3 isAttending:(BOOL)a4;
- (void)siriWillBeginTearDownForDismissalReason:(int64_t)a3 withOriginalDismissalOptions:(id)a4;
- (void)speechRecordingDidBeginOnRecordRoute:(id)a3;
- (void)stopRecordingForViewController:(id)a3;
- (void)stopSpeakingForCompactViewController:(id)a3;
- (void)tapToEditPresented;
- (void)userDrilledIntoSnippet;
- (void)userTouchedSnippet;
- (void)viewController:(id)a3 didFinishEditingUtteranceWithText:(id)a4 originalUserUtterance:(id)a5 selectionResults:(id)a6;
- (void)viewController:(id)a3 openURL:(id)a4 completion:(id)a5;
- (void)viewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5;
- (void)viewController:(id)a3 reduceOrbOpacity:(BOOL)a4;
- (void)viewController:(id)a3 requestsHostBackgroundBlurVisible:(BOOL)a4 reason:(int64_t)a5 fence:(id)a6;
- (void)viewController:(id)a3 siriRequestEnteredWithText:(id)a4;
- (void)viewControllerDidPresentUserInterface:(id)a3;
@end

@implementation SRCompactPresentation

- (SRCompactPresentation)initWithDelegate:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SRCompactPresentation;
  v8 = [(SRCompactPresentation *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(SRCompactPresentation *)v8 setDelegate:v6];
    [(SRCompactPresentation *)v9 setDataSource:v7];
    v9->_inputType = 0;
    v10 = objc_alloc_init(SRCompactViewController);
    compactViewController = v9->_compactViewController;
    v9->_compactViewController = v10;

    [(SRCompactViewController *)v9->_compactViewController setDelegate:v9];
    v12 = [(SRCompactPresentation *)v9 delegate];
    v13 = [v12 siriDeviceLockStateForSiriPresentation:v9];

    v14 = [[SRCompactAutoDismissController alloc] initWithDelegate:v9 andLockState:v13];
    autoDismissController = v9->_autoDismissController;
    v9->_autoDismissController = v14;

    v16 = +[AFPreferences sharedPreferences];
    v17 = [v16 languageCode];
    [SiriUISashItem _setLanguageCode:v17];

    [(SRCompactPresentation *)v9 _activeConversationDidChange];
  }

  return v9;
}

- (id)_conversationIdentifiers
{
  v3 = [(SRCompactPresentation *)self dataSource];
  v4 = [v3 conversationIdentifiersForSiriPresentation:self];

  return v4;
}

- (id)_identifierOfPreviousConversation
{
  v2 = [(SRCompactPresentation *)self _conversationIdentifiers];
  if ([v2 count] < 2)
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
    v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(v2, "count") - 2}];
  }

  return v3;
}

- (id)_activeConversation
{
  v3 = [(SRCompactPresentation *)self dataSource];
  v4 = [(SRCompactPresentation *)self _conversationIdentifiers];
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

- (void)conversation:(id)a3 didChangeWithTransaction:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self activeViewModelController];
  [v6 conversationDidChangeWithTransaction:v5];
}

- (void)didReceiveRevealRecognizedSpeechCommand:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SRCompactPresentation didReceiveRevealRecognizedSpeechCommand:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact: received revealRecognizedSpeech:%@", &v13, 0x16u);
  }

  v6 = [v4 recognition];
  v7 = [(SRCompactPresentation *)self dataSource];
  v8 = [v7 sessionInfoForSiriPresentation:self];

  v9 = [v4 refId];
  v10 = [v8 identifier];
  v11 = [v6 af_userUtteranceValueWithRefId:v9 sessionId:v10];

  v12 = [(SRCompactPresentation *)self activeViewModelController];
  [v12 revealUserUtterance:v11 backingAceObject:v4];
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
  v4 = [(SRCompactPresentation *)self _activeRequestOptions];
  if ([v4 isTypeToSiriRequest] && objc_msgSend(v4, "inputType") != 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(SRCompactViewController *)self->_compactViewController setActiveRequestOptions:v4];
  [(SRCompactPresentation *)self _setInputType:v3];
}

- (void)siriRequestWillStartWithRequestOptions:(id)a3
{
  v4 = a3;
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
  if ([v4 requestSource] != 9)
  {
    self->_requestIsWiredMicOrBTHeadsetOrWx = [v4 isWiredMicOrBTHeadsetOrWx];
  }

  [(SRCompactViewController *)self->_compactViewController siriWillStartRequest];
}

- (void)siriResponseModeDidChange:(unint64_t)a3 isAttending:(BOOL)a4
{
  v4 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    requestIsWiredMicOrBTHeadsetOrWx = self->_requestIsWiredMicOrBTHeadsetOrWx;
    v11 = 136315906;
    v12 = "[SRCompactPresentation siriResponseModeDidChange:isAttending:]";
    v13 = 2048;
    v14 = a3;
    v15 = 1024;
    v16 = requestIsWiredMicOrBTHeadsetOrWx;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact mode updated to %lu, _requestIsWiredMicOrBTHeadsetOrWx: %d, isAttending: %d", &v11, 0x22u);
  }

  [(SRCompactAutoDismissController *)self->_autoDismissController siriResponseModeDidChange:a3 isWiredMicOrBTHeadsetOrWx:self->_requestIsWiredMicOrBTHeadsetOrWx isAttending:v4];
  v9 = MDModeGetName();
  responseMode = self->_responseMode;
  self->_responseMode = v9;
}

- (void)siriDidActivateFromSource:(int64_t)a3
{
  if (a3 == 21)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SRCompactPresentation siriDidActivateFromSource:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact Loading previous conversation because we activated from a breadcrumb", &v9, 0xCu);
    }

    v6 = [(SRCompactPresentation *)self dataSource];
    v7 = [(SRCompactPresentation *)self _identifierOfPreviousConversation];
    [v6 siriPresentation:self activateConversationWithIdentifier:v7];

    [(SRCompactPresentation *)self _activeConversationDidChange];
    v8 = [(SRCompactPresentation *)self delegate];
    [v8 siriPresentationDidPresentConversationFromBreadcrumb:self];
  }

  [(SRCompactViewController *)self->_compactViewController siriDidActivate];
  *&self->_userCancelledRequestViaOrbViewTap = 0;
  self->_isPresentingSystemUI = 0;
  self->_initialRequestSource = a3;
}

- (void)siriDidStartNewConversationWithIdentifier:(id)a3
{
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [a3 UUIDString];
    v8 = 136315394;
    v9 = "[SRCompactPresentation siriDidStartNewConversationWithIdentifier:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #compact Starting a new conversation %@", &v8, 0x16u);
  }

  [(SRCompactPresentation *)self _activeConversationDidChange];
}

- (void)speechRecordingDidBeginOnRecordRoute:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SRCompactPresentation speechRecordingDidBeginOnRecordRoute:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact recording started on recordRoute: %@", &v6, 0x16u);
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
    v14 = "[SRCompactPresentation shouldResumeInterruptedAudioPlaybackForAttendingState:]";
    v15 = 1024;
    v16 = v3;
    v17 = 2112;
    v18 = responseMode;
    v19 = 1024;
    v20 = requestIsWiredMicOrBTHeadsetOrWx;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #compact isAttending: %d, responseMode: %@, requestIsWiredMicOrBTHeadsetOrWx: %d", &v13, 0x22u);
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
    v10 = [(SRCompactPresentation *)self delegate];
    [v10 siriPresentation:self setStatusBarHidden:1 animated:1];

    v11 = [(SRCompactPresentation *)self delegate];
    [v11 siriPresentation:self setStatusViewHidden:1];

    v12 = [[SiriUIModalContainerViewController alloc] initWithContentViewController:v8];
    [v12 setDelegate:self];
    v13 = [(SRCompactPresentation *)self delegate];
    [v13 siriPresentation:self willPresentViewController:v12];

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

  return [(SRCompactPresentation *)self alwaysShowRecognizedSpeech];
}

- (void)siriDidDeactivateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactViewController *)self->_compactViewController presentedViewController];

  if (v5)
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
  v17 = v4;
  v18 = inputType;
  v11 = v4;
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

- (void)siriDidTransitionFromState:(int64_t)a3 event:(int64_t)a4
{
  if (a4 == 13)
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

    v12 = [(SRCompactPresentation *)self delegate];
    [v12 dismissSiriPresentation:self withReason:v11];

    goto LABEL_16;
  }

  if (a4 == 12)
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

  if (a4 != 11)
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
  v4 = [(SRCompactPresentation *)self _activeConversation];
  v3 = [[SiriSharedUICompactViewModelController alloc] initWithConversation:v4 delegate:self];
  [(SRCompactPresentation *)self setActiveViewModelController:v3];
}

- (void)setActiveViewModelController:(id)a3
{
  v4 = a3;
  [(SiriSharedUICompactViewModelController *)self->_activeViewModelController setDelegate:0];
  activeViewModelController = self->_activeViewModelController;
  self->_activeViewModelController = v4;
  v6 = v4;

  [(SiriSharedUICompactViewModelController *)self->_activeViewModelController setViewModelChangeObserver:self->_compactViewController];
}

- (int64_t)inputTypeForCompactViewModelController:(id)a3
{
  v4 = [(SRCompactPresentation *)self _inputType];

  return [(SRCompactPresentation *)self _viewModelInputTypeForRequestInputType:v4];
}

- (void)compactViewModelController:(id)a3 didProcessConversationItemsWithIdentifiers:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self didPresentConversationItemsWithIdentifiers:v5];
}

- (BOOL)siriDeviceLockedForViewModelController:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  v5 = ([v4 siriDeviceLockStateForSiriPresentation:self] >> 1) & 1;

  return v5;
}

- (id)compactViewModelController:(id)a3 requestsTranscriptItemForAceObject:(id)a4
{
  v4 = a4;
  v5 = [SRLocalSnippetManager transcriptItemForObject:v4];
  if (!v5)
  {
    v6 = +[SiriUISnippetManager sharedInstance];
    v5 = [v6 transcriptItemForObject:v4 sizeClass:1];
  }

  return v5;
}

- (void)immersiveExperienceRequestedForViewModelController:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
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
    v17 = "[SRCompactPresentation handleRequestEndBehavior:isAttending:]";
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
        v17 = "[SRCompactPresentation handleRequestEndBehavior:isAttending:]";
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
        v17 = "[SRCompactPresentation handleRequestEndBehavior:isAttending:]";
        v18 = 2048;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Setting delay dismissal for compact presentation by %ld milliseconds.", &v16, 0x16u);
      }

      v14 = [v6 minimumAutoDismissalTimeInMs];
      delayDismissalMs = self->_delayDismissalMs;
      self->_delayDismissalMs = v14;
    }
  }
}

- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v7 = [(SRCompactViewController *)self->_compactViewController view];
  v8 = [v7 window];
  v9 = [v8 screen];

  v10 = [v9 coordinateSpace];
  [v7 convertPoint:v10 fromCoordinateSpace:{x, y}];
  v11 = [(SRCompactViewController *)self->_compactViewController hasContentAtPoint:?];
  bugReportingPresenter = self->_bugReportingPresenter;
  if (bugReportingPresenter)
  {
    v11 |= [(AFUIBugReportPresenting *)bugReportingPresenter hasContentAtPoint:x, y];
  }

  if (v13)
  {
    v13[2](v13, v11 & 1);
  }
}

- (void)siriWillBeginTearDownForDismissalReason:(int64_t)a3 withOriginalDismissalOptions:(id)a4
{
  v10 = a4;
  self->_lastDismissalReason = a3;
  objc_storeStrong(&self->_lastDismissalOptions, a4);
  v7 = [(SRCompactPresentation *)self delegate];
  v8 = [v7 siriDeviceLockStateForSiriPresentation:self];

  if (a3 == 67 || a3 == 13)
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
  v7 = [(SRCompactPresentation *)self delegate];
  v8 = [v7 siriDeviceLockStateForSiriPresentation:self];

  v9 = [(SRCompactPresentation *)self dataSource];
  v10 = [v9 siriStateForSiriPresentation:self];

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
  v13 = [v6 reason];

  v14 = [(SRDismissalClassificationContext *)v12 initWithCancellationReason:v13 contentPresentationState:v11 dismissalReason:a3 isDeviceUnlocked:v8 == 0 siriState:v10 requestSource:self->_initialRequestSource];

  return v14;
}

- (double)expectedContentWidth
{
  v3 = [(SRCompactPresentation *)self delegate];
  [v3 contentWidthForForSiriPresentation:self];
  v5 = v4;

  return v5;
}

- (void)tapToEditPresented
{
  v3 = [(SRCompactPresentation *)self delegate];
  [v3 tapToEditPresented:self];
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
  v2 = [(SRCompactViewController *)self->_compactViewController view];
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
  v7 = a5;
  v8 = a4;
  v9 = [(SRCompactPresentation *)self delegate];
  [v9 siriPresentation:self openURL:v8 conversationId:0 completion:v7];
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
          v14 = [(SRCompactPresentation *)self delegate];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100049C5C;
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
    block[2] = sub_100049C74;
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
          v23 = [(SRCompactPresentation *)self delegate];
          [v23 siriPresentation:self performAceCommand:v22 conversationItemIdentifier:0 turnIdentifier:v17 completion:0];
        }

        v19 = [v18 countByEnumeratingWithState:&v29 objects:v45 count:16];
      }

      while (v19);
    }
  }
}

- (void)compactViewController:(id)a3 speakText:(id)a4 isPhonetic:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = [(SRCompactPresentation *)self delegate];
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

- (void)stopSpeakingForCompactViewController:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  [v4 stopSpeakingForSiriPresentation:self];
}

- (unint64_t)lockStateForCompactViewController:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  v5 = [v4 siriDeviceLockStateForSiriPresentation:self];

  return v5;
}

- (id)localeForCompactViewController:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
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
  v2 = [(SRCompactPresentation *)self delegate];
  [v2 userTouchedSnippet];
}

- (void)compactViewController:(id)a3 handleStartLocalRequest:(id)a4 turnIdentifier:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(SRCompactPresentation *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SRCompactPresentation *)self delegate];
    [v10 siriPresentation:self handleStartLocalRequest:v11 turnIdentifier:v7];
  }
}

- (void)compactViewController:(id)a3 setStatusViewHidden:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self setStatusViewHidden:v4];
}

- (void)viewController:(id)a3 requestsHostBackgroundBlurVisible:(BOOL)a4 reason:(int64_t)a5 fence:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = [(SRCompactPresentation *)self delegate];
  [v10 siriPresentation:self requestHostBlurVisible:v7 reason:a5 fence:v9];
}

- (void)viewController:(id)a3 reduceOrbOpacity:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self reduceOrbOpacity:v4];
}

- (void)endSiriSessionForViewController:(id)a3 withDismissalReason:(int64_t)a4
{
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 dismissSiriPresentation:self withReason:a4];
}

- (void)stopRecordingForViewController:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  [v4 stopRecordingSpeechForSiriPresentation:self];
}

- (void)cancelRequestForViewController:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  [v4 cancelRequestForSiriPresentation:self];
}

- (void)didPresentContentForCompactViewController:(id)a3
{
  self->_hasPresentedContent = 1;
  v4 = [(SRCompactPresentation *)self delegate];
  v5 = [v4 siriDeviceLockStateForSiriPresentation:self];

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

  v8 = [(SRCompactPresentation *)self delegate];
  [v8 siriPresentation:self requestHostBlurVisible:1 reason:2 fence:0];
}

- (id)effectiveCoreLocationBundleForCompactViewController:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  v5 = [v4 effectiveCoreLocationBundleForSiriPresentation:self];

  return v5;
}

- (void)siriCompactViewController:(id)a3 willPresentViewController:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self willPresentViewController:v5];
}

- (void)didBeginProcessingConversationItems
{
  v2 = [(SRCompactPresentation *)self delegate];
  [v2 didBeginProcessingConversationItems];
}

- (void)siriCompactViewController:(id)a3 willDismissViewController:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self willDismissViewController:v5];
}

- (void)compactViewController:(id)a3 viewDidAppearForAceObject:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self viewDidAppearWithAceObject:v5];
}

- (void)compactViewController:(id)a3 viewDidDisappearForAceObject:(id)a4
{
  v5 = a4;
  v8 = [(SRCompactPresentation *)self delegate];
  v6 = [v5 encodedClassName];
  v7 = [v5 aceId];

  [v8 siriPresentation:self viewDidDisappearWithClassDescriptor:v6 identifier:v7];
}

- (void)userDrilledIntoSnippet
{
  v2 = [(SRCompactPresentation *)self delegate];
  [v2 userDrilledIntoSnippet];
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

- (void)bugReportPresenter:(id)a3 requestsToHandlePasscodeUnlockWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 handlePasscodeUnlockForSiriPresentation:self withClient:0 withCompletion:v5];
}

- (void)bugReportPresenter:(id)a3 requestsToOpenURL:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SRCompactPresentation *)self delegate];
  [v9 siriPresentation:self openURL:v8 conversationId:0 completion:v7];
}

- (void)bugReportPresenter:(id)a3 requestsToPerformAceCommand:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self performAceCommand:v5 conversationItemIdentifier:0 completion:0];
}

- (void)bugReportPresenter:(id)a3 requestsToTakeScreenshotWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 getScreenshotImageForSiriPresentation:self withCompletion:v5];
}

- (void)bugReportPresenter:(id)a3 setBugReportingAvailable:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
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
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self setStatusViewHidden:v4];
}

- (void)bugReportPresenterRequestsInvalidateAutoDismissal:(id)a3
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

- (void)bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:(id)a3
{
  v3 = [(SRCompactPresentation *)self delegate];
  [v3 siriSessionWillCancelRequest];

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRCompactPresentation bugReportPresenterRequestsSiriSessionToFinishCurrentRequest:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #dismissal Cancel current Siri Session request so that it doesn't interrupt user filing issue details.", &v5, 0xCu);
  }
}

- (void)bugReportPresenter:(id)a3 requestsSiriDismissalWithReason:(int64_t)a4
{
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRCompactPresentation bugReportPresenter:requestsSiriDismissalWithReason:]";
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #SiriTTR #dismissal Dismissing Siri with SASDismissalReason: %ld", &v8, 0x16u);
  }

  v7 = [(SRCompactPresentation *)self delegate];
  [v7 dismissSiriPresentation:self withReason:a4];
}

- (void)compactViewController:(id)a3 requestsKeyboardWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self requestsKeyboardWithCompletion:v5];
}

- (void)compactViewController:(id)a3 willBeginEditingOfType:(int64_t)a4
{
  v5 = a4 == 1;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self willBeginEditingOfType:v5];
}

- (void)compactViewControllerDidEndEditing:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  [v4 siriPresentationDidResignFirstResponder:self];
}

- (void)viewController:(id)a3 siriRequestEnteredWithText:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self startRequestForText:v5];
}

- (void)viewController:(id)a3 didFinishEditingUtteranceWithText:(id)a4 originalUserUtterance:(id)a5 selectionResults:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (([SiriUIUtilities string:v9 isSameAsUserUtterance:v10]& 1) != 0)
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
    v13 = [(SRCompactPresentation *)self delegate];
    v14 = [v10 correctionIdentifier];
    [v13 siriPresentation:self startEditedRequestWithText:v9 correctionIdentifier:v14 userSelectionResults:v11];

    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SRCompactPresentation viewController:didFinishEditingUtteranceWithText:originalUserUtterance:selectionResults:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s #compact: creating new UserUtterance from edited text", &v21, 0xCu);
    }

    v16 = [AFUserUtterance alloc];
    v17 = [v10 correctionIdentifier];
    v18 = [v16 initWithString:v9 correctionIdentifier:v17];

    v19 = [(SRCompactPresentation *)self activeViewModelController];
    [v19 revealUserUtterance:v18 backingAceObject:0];
  }

  v20 = [(SRCompactPresentation *)self delegate];
  [v20 siriPresentationDidEndEditing:self];
}

- (void)compactViewControllerRequestsHIDEventDefferal:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  [v4 siriPresentationRequestsHIDEventDefferal:self];
}

- (void)compactViewControllerCancelHIDEventDefferal:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  [v4 siriPresentationCancelHIDEventDefferal:self];
}

- (void)compactViewController:(id)a3 preventOutsideTouchesFromDismissingSiri:(BOOL)a4
{
  v4 = a4;
  v6 = [(SRCompactPresentation *)self delegate];
  [v6 siriPresentation:self preventOutsideTouchesFromDismissingSiri:v4];
}

- (void)requestToHandlePasscodeUnlockWithClient:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(SRCompactPresentation *)self delegate];
  [v7 handlePasscodeUnlockForSiriPresentation:self withClient:a3 withCompletion:v6];
}

- (SASRequestOptions)_activeRequestOptions
{
  v3 = [(SRCompactPresentation *)self delegate];
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
    *v18 = 136316162;
    *&v18[4] = "[SRCompactPresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
    *&v18[12] = 1024;
    *&v18[14] = v5;
    *&v18[18] = 1024;
    *&v18[20] = v4;
    v19 = 2112;
    v20 = responseMode;
    v21 = 1024;
    v22 = requestIsWiredMicOrBTHeadsetOrWx;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact siriIsIdleAndQuiet: %d, isAttending: %d, responseMode: %@, requestIsWiredMicOrBTHeadsetOrWx: %d", v18, 0x28u);
  }

  [(SRCompactAutoDismissController *)self->_autoDismissController stopAutoDismissalAttentionController];
  if (v5)
  {
    [(SRCompactViewController *)self->_compactViewController siriIsIdleAndQuiet];
    if (v4)
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
  v3 = [(SRCompactPresentation *)self delegate];
  [v3 siriPresentation:self setFullScreenDimmingLayerVisible:1 animated:1];
}

- (void)_setInputType:(int64_t)a3
{
  self->_inputType = a3;
  if (a3 == 1)
  {
    [(SRCompactPresentation *)self _showFullScreenDimmingLayer];
  }

  v4 = [(SRCompactPresentation *)self activeViewModelController];
  [v4 inputTypeDidChange];
}

- (void)autoDismissControllerRequestsDismissal:(id)a3
{
  v4 = a3;
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
    v6 = [(SRCompactPresentation *)self delegate];
    [v6 dismissSiriPresentation:self withReason:4];
  }
}

- (void)autoDismissControllerRequestsStopAttending:(id)a3
{
  v4 = [(SRCompactPresentation *)self delegate];
  [v4 siriWillStopAttending:self];
}

- (void)modalContainerViewControllerViewWillDisappear:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactPresentation *)self delegate];
  [v5 siriPresentation:self willDismissViewController:v4];
}

- (void)modalContainerViewControllerViewDidDisappear:(id)a3
{
  v4 = a3;
  v5 = [(SRCompactPresentation *)self delegate];
  [v5 siriPresentation:self didDismissViewController:v4];
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

- (BOOL)alwaysShowRecognizedSpeech
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 alwaysShowRecognizedSpeech];

  return v3;
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