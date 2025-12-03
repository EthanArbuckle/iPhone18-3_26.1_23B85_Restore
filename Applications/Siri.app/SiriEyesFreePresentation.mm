@interface SiriEyesFreePresentation
- ($5B118637EA29FD52B6AA7C9036D3A2A1)keyboardInfoForSuggestionsController:(SEL)controller;
- (CGRect)statusBarFrameForSuggestionsViewController:(id)controller;
- (SiriEyesFreePresentation)initWithNibName:(id)name bundle:(id)bundle delegate:(id)delegate dataSource:(id)source;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (double)contentWidthForSuggestionsViewController:(id)controller;
- (double)statusViewHeightForSuggestionsViewController:(id)controller;
- (void)_cancelTimeout;
- (void)_didPresentItemsAtIndexPaths:(id)paths;
- (void)_dismissFromTimeoutAfterDelay:(double)delay;
- (void)_dismissSiriPresentationFromTimeout;
- (void)_synthesizeSpeechWithText:(id)text;
- (void)configureForRequestOptions:(id)options;
- (void)delayDismissalAfterIdleFires:(id)fires;
- (void)didReceiveReportBugAction;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)siriDidHidePasscodeUnlock;
- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)change isAttending:(BOOL)attending;
- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)request;
- (void)viewDidLoad;
@end

@implementation SiriEyesFreePresentation

- (SiriEyesFreePresentation)initWithNibName:(id)name bundle:(id)bundle delegate:(id)delegate dataSource:(id)source
{
  delegateCopy = delegate;
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = SiriEyesFreePresentation;
  v12 = [(SiriEyesFreePresentation *)&v17 initWithNibName:name bundle:bundle];
  v13 = v12;
  if (v12)
  {
    [(SiriEyesFreePresentation *)v12 setDelegate:delegateCopy];
    [(SiriEyesFreePresentation *)v13 setDataSource:sourceCopy];
    v13->_numberOfSpeechRequestsWaitingToFinishSynthesis = 0;
    v14 = objc_alloc_init(SRSuggestionsViewController);
    siriUnavailableViewController = v13->_siriUnavailableViewController;
    v13->_siriUnavailableViewController = v14;

    [(SRSuggestionsViewController *)v13->_siriUnavailableViewController setDelegate:v13];
  }

  return v13;
}

- (void)configureForRequestOptions:(id)options
{
  v4 = +[AFUISiriSession availabilityState];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (v5 != 2)
  {
    v14 = v6;
    _siriUnavailableViewController = [(SiriEyesFreePresentation *)self _siriUnavailableViewController];
    [_siriUnavailableViewController showEmptyView];

    v8 = [v14 siriUILocalizedStringForKey:@"ASSISTANT_NOT_AVAILABLE_TITLE"];
    [(SiriEyesFreePresentation *)self _synthesizeSpeechWithText:v8];

    if (v5 == 3)
    {
      v11 = +[UIDevice currentDevice];
      sf_isChinaRegionCellularDevice = [v11 sf_isChinaRegionCellularDevice];

      if (sf_isChinaRegionCellularDevice)
      {
        v13 = @"ASSISTANT_NO_LOCAL_ASSETS_SUBTITLE_NOTIFICATION_CHINA";
      }

      else
      {
        v13 = @"ASSISTANT_NO_LOCAL_ASSETS_SUBTITLE_NOTIFICATION";
      }

      v10 = [v14 siriUILocalizedStringForKey:v13];
      goto LABEL_11;
    }

    v6 = v14;
    if (v5 == 1)
    {
      v9 = [SiriUIUtilities deviceSpecificKeyForDefaultKey:@"ASSISTANT_NO_NETWORK_SUBTITLE_NOTIFICATION"];
      v10 = [v14 siriUILocalizedStringForKey:v9];

LABEL_11:
      [(SiriEyesFreePresentation *)self _synthesizeSpeechWithText:v10];

      v6 = v14;
    }
  }
}

- (void)siriWillShowPasscodeUnlockAndCancelRequest:(BOOL)request
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SiriEyesFreePresentation siriWillShowPasscodeUnlockAndCancelRequest:]";
    v7 = 2048;
    v8 = 0x4020000000000000;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #eyesfree Passcode screen is showing, will timeout in %f", &v5, 0x16u);
  }

  [(SiriEyesFreePresentation *)self _dismissFromTimeoutAfterDelay:8.0];
}

- (void)siriDidHidePasscodeUnlock
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SiriEyesFreePresentation siriDidHidePasscodeUnlock]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #eyesfree Passcode screen did hide, canceling timeout.", &v4, 0xCu);
  }

  [(SiriEyesFreePresentation *)self _cancelTimeout];
}

- (void)_synthesizeSpeechWithText:(id)text
{
  textCopy = text;
  ++self->_numberOfSpeechRequestsWaitingToFinishSynthesis;
  objc_initWeak(&location, self);
  delegate = [(SiriEyesFreePresentation *)self delegate];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008C29C;
  v6[3] = &unk_1001676A0;
  objc_copyWeak(&v7, &location);
  [delegate siriPresentation:self synthesizeSpeechWithText:textCopy completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_didPresentItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  dataSource = [(SiriEyesFreePresentation *)self dataSource];
  v6 = [dataSource conversationIdentifiersForSiriPresentation:self];
  lastObject = [v6 lastObject];

  dataSource2 = [(SiriEyesFreePresentation *)self dataSource];
  v9 = [dataSource2 siriPresentation:self conversationWithIdentifier:lastObject];

  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [pathsCopy count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = pathsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [v9 itemAtIndexPath:{*(*(&v19 + 1) + 8 * v15), v19}];
        identifier = [v16 identifier];
        [v10 addObject:identifier];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  delegate = [(SiriEyesFreePresentation *)self delegate];
  [delegate siriPresentation:self didPresentConversationItemsWithIdentifiers:v10];
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, point, *&point.y);
  }
}

- (void)didReceiveReportBugAction
{
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CF4A4(v3);
  }

  v4 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.RunVoiceShortcut.serverTriggeredAppShortcut"];
  [v4 setUserData:&off_10016E7D8];
  v5 = objc_alloc_init(SKIDirectInvocationContext);
  v6 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v5 payload:v4];
  v7 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v6];
  delegate = [(SiriEyesFreePresentation *)self delegate];
  [delegate siriPresentation:self handleStartLocalRequest:v7 turnIdentifier:0];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SiriEyesFreePresentation;
  [(SiriEyesFreePresentation *)&v12 viewDidLoad];
  _siriUnavailableViewController = [(SiriEyesFreePresentation *)self _siriUnavailableViewController];
  [(SiriEyesFreePresentation *)self addChildViewController:_siriUnavailableViewController];
  [_siriUnavailableViewController didMoveToParentViewController:self];
  view = [(SiriEyesFreePresentation *)self view];
  _siriUnavailableViewController2 = [(SiriEyesFreePresentation *)self _siriUnavailableViewController];
  view2 = [_siriUnavailableViewController2 view];
  [view addSubview:view2];

  _siriUnavailableViewController3 = [(SiriEyesFreePresentation *)self _siriUnavailableViewController];
  view3 = [_siriUnavailableViewController3 view];
  view4 = [(SiriEyesFreePresentation *)self view];
  [view4 frame];
  [view3 setFrame:?];

  if (+[AFUISiriSession availabilityState]== 2)
  {
    v10 = +[NSBundle afui_assistantUIFrameworkBundle];
    v11 = [v10 siriUILocalizedStringForKey:@"ASSISTANT_FIRST_UNLOCK_TITLE"];

    [(SiriEyesFreePresentation *)self _synthesizeSpeechWithText:v11];
  }
}

- (CGRect)statusBarFrameForSuggestionsViewController:(id)controller
{
  delegate = [(SiriEyesFreePresentation *)self delegate];
  [delegate statusBarFrameForSiriPresentation:self];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (double)statusViewHeightForSuggestionsViewController:(id)controller
{
  delegate = [(SiriEyesFreePresentation *)self delegate];
  [delegate statusViewHeightForSiriPresentation:self];
  v6 = v5;

  return v6;
}

- (double)contentWidthForSuggestionsViewController:(id)controller
{
  delegate = [(SiriEyesFreePresentation *)self delegate];
  [delegate contentWidthForForSiriPresentation:self];
  v6 = v5;

  return v6;
}

- ($5B118637EA29FD52B6AA7C9036D3A2A1)keyboardInfoForSuggestionsController:(SEL)controller
{
  *&retstr->var0 = 0;
  retstr->var1 = 1;
  size = CGRectZero.size;
  retstr->var3.origin = CGRectZero.origin;
  retstr->var3.size = size;
  retstr->var4 = 0.0;
  return self;
}

- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)change isAttending:(BOOL)attending
{
  changeCopy = change;
  if (change && !self->_numberOfSpeechRequestsWaitingToFinishSynthesis)
  {
    delayDismissalMs = self->_delayDismissalMs;
    if (delayDismissalMs && [(NSNumber *)delayDismissalMs longValue]>= 1)
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_delayDismissalMs;
        v12 = v10;
        v15 = 136315394;
        v16 = "[SiriEyesFreePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
        v17 = 2048;
        v18[0] = [(NSNumber *)v11 longValue];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Siri is idle and quiet, but delaying dismissal for AutoSend for %ld milliseconds", &v15, 0x16u);
      }

      v13 = [(NSNumber *)self->_delayDismissalMs longValue]/ 1000.0;
    }

    else
    {
      v14 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[SiriEyesFreePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Siri is idle and quiet. Dismissing immediately.", &v15, 0xCu);
      }

      v13 = 0.0;
    }

    [(SiriEyesFreePresentation *)self _dismissFromTimeoutAfterDelay:v13];
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      numberOfSpeechRequestsWaitingToFinishSynthesis = self->_numberOfSpeechRequestsWaitingToFinishSynthesis;
      v15 = 136315650;
      v16 = "[SiriEyesFreePresentation siriIsIdleAndQuietStatusDidChange:isAttending:]";
      v17 = 1024;
      LODWORD(v18[0]) = changeCopy;
      WORD2(v18[0]) = 2048;
      *(v18 + 6) = numberOfSpeechRequestsWaitingToFinishSynthesis;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Not dismissing and cancelling any previous ones, because we have either siriIsIdleAndQuiet %d, or %ld presentation generated speech requests in progress.", &v15, 0x1Cu);
    }

    [(SiriEyesFreePresentation *)self _cancelTimeout];
  }

  v8 = self->_delayDismissalMs;
  self->_delayDismissalMs = 0;
}

- (void)delayDismissalAfterIdleFires:(id)fires
{
  firesCopy = fires;
  if (firesCopy)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = 136315394;
      v9 = "[SiriEyesFreePresentation delayDismissalAfterIdleFires:]";
      v10 = 2048;
      longValue = [firesCopy longValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Setting delay dismissal for auto send by %ld milliseconds.", &v8, 0x16u);
    }

    objc_storeStrong(&self->_delayDismissalMs, fires);
  }
}

- (void)_dismissFromTimeoutAfterDelay:(double)delay
{
  [(SiriEyesFreePresentation *)self _cancelTimeout];

  [(SiriEyesFreePresentation *)self performSelector:"_dismissSiriPresentationFromTimeout" withObject:0 afterDelay:delay];
}

- (void)_dismissSiriPresentationFromTimeout
{
  delegate = [(SiriEyesFreePresentation *)self delegate];
  [delegate dismissSiriPresentation:self withReason:4];
}

- (void)_cancelTimeout
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:"_dismissSiriPresentationFromTimeout" object:0];
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