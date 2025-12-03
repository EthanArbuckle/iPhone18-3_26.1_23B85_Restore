@interface PHCarPlayMainInCallViewController
- (BOOL)_shouldPresentAlertUI;
- (BOOL)canSendMessage;
- (BOOL)currentCallStateWarrantsCallWaitingMode;
- (BOOL)isAddCallAllowed;
- (BOOL)isDismissable;
- (BOOL)isHoldEnabled;
- (BOOL)isKeypadAllowed;
- (BOOL)isKeypadEnabled;
- (BOOL)isMergeCallsAllowed;
- (BOOL)isMuted;
- (BOOL)isSendToVoicemailAllowed;
- (BOOL)isSwapCallsAllowed;
- (BOOL)shouldAllowAddContactsAccess;
- (PHCarPlayMainInCallViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)__sanitizedPrimaryPhoneCallOrdering:(id)ordering;
- (id)allConferenceParticipantCalls;
- (id)callForHardPauseState;
- (id)conferenceParticipantCallsForPhoneCall:(id)call;
- (id)currentActivePhoneCall;
- (id)preferredFocusEnvironments;
- (id)primaryPhoneCallsForGalleryView:(id)view;
- (id)replyWithMessageStore;
- (id)representativePhoneCallForConferenceForGalleryView:(id)view;
- (int64_t)currentCallState;
- (void)_handleAlertButtonPressed;
- (void)_presentAlertForEmergencyCallFailure;
- (void)_sendMessageResponse:(id)response toCall:(id)call;
- (void)alertViewWillDismiss;
- (void)alertWillInvoke;
- (void)answerIncomingCallWithBehavior:(int64_t)behavior;
- (void)answerIncomingConversation:(id)conversation;
- (void)callStateChangedNotification:(id)notification;
- (void)cleanAlertUIInCarPlay;
- (void)dealloc;
- (void)handleAlertControllerSendMessageResponse:(id)response;
- (void)hardPauseButtonDidSendHardPauseDigits:(id)digits;
- (void)inCallButtonWasTapped:(id)tapped;
- (void)limitedUIChangedNotification:(id)notification;
- (void)loadView;
- (void)muteStateChangedNotification:(id)notification;
- (void)setIsMuted:(BOOL)muted;
- (void)setPrimaryCalls:(id)calls conferencePhoneCalls:(id)phoneCalls incomingCall:(id)call;
- (void)setShouldPresentAlertButton:(BOOL)button;
- (void)setShowingStickyAlert:(BOOL)alert;
- (void)shouldCallAgain;
- (void)shouldPlaySound;
- (void)updateButtonsViewState;
- (void)updateHardPauseButtonState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewUpdateClockTickTimerFired:(id)fired;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PHCarPlayMainInCallViewController

- (void)loadView
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MPCarPlayInCallViewController loadView", buf, 2u);
  }

  if (([(PHCarPlayMainInCallViewController *)self isViewLoaded]& 1) == 0)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(PHCarPlayMainInCallViewController *)self setView:v4];
    if (_os_feature_enabled_impl())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor tableBackgroundColor];
    }
    v5 = ;
    view = [(PHCarPlayMainInCallViewController *)self view];
    [view setBackgroundColor:v5];

    view2 = [(PHCarPlayMainInCallViewController *)self view];
    [view2 setAccessibilityIdentifier:@"PHCarPlayInCallUIView"];

    v8 = objc_alloc_init(UIView);
    [(PHCarPlayMainInCallViewController *)self setFlippyView:v8];

    flippyView = [(PHCarPlayMainInCallViewController *)self flippyView];
    [flippyView setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [PHCarPlayPhoneCallGalleryView alloc];
    [v4 bounds];
    v11 = [(PHCarPlayPhoneCallGalleryView *)v10 initWithFrame:?];
    [(PHCarPlayMainInCallViewController *)self setGalleryView:v11];

    galleryView = [(PHCarPlayMainInCallViewController *)self galleryView];
    [galleryView setTranslatesAutoresizingMaskIntoConstraints:0];

    galleryView2 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [galleryView2 setDelegate:self];

    flippyView2 = [(PHCarPlayMainInCallViewController *)self flippyView];
    galleryView3 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [flippyView2 addSubview:galleryView3];

    v16 = objc_alloc_init(PHCarPlayInCallButtonsView);
    [(PHCarPlayMainInCallViewController *)self setButtonsView:v16];

    buttonsView = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [buttonsView setTranslatesAutoresizingMaskIntoConstraints:0];

    view3 = [(PHCarPlayMainInCallViewController *)self view];
    buttonsView2 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [view3 addSubview:buttonsView2];

    buttonsView3 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [buttonsView3 setDelegate:self];

    view4 = [(PHCarPlayMainInCallViewController *)self view];
    flippyView3 = [(PHCarPlayMainInCallViewController *)self flippyView];
    [view4 addSubview:flippyView3];

    flippyView4 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v102 = @"view";
    galleryView4 = [(PHCarPlayMainInCallViewController *)self galleryView];
    v103 = galleryView4;
    [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    v25 = v97 = v4;
    v26 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v25];
    [flippyView4 addConstraints:v26];

    flippyView5 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v100 = @"view";
    galleryView5 = [(PHCarPlayMainInCallViewController *)self galleryView];
    v101 = galleryView5;
    v29 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v30 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v29];
    [flippyView5 addConstraints:v30];

    buttonsView4 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    view5 = [(PHCarPlayMainInCallViewController *)self view];
    safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
    LODWORD(v34) = 1148846080;
    v96 = [NSLayoutConstraint constraintWithItem:buttonsView4 attribute:4 relatedBy:0 toItem:safeAreaLayoutGuide attribute:4 multiplier:1.0 constant:0.0 priority:v34];

    buttonsView5 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    LODWORD(v36) = 1148846080;
    v95 = [NSLayoutConstraint constraintWithItem:buttonsView5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:87.0 priority:v36];

    v37 = objc_alloc_init(PHCarPlayInCallHardPauseButton);
    [(PHCarPlayMainInCallViewController *)self setHardPauseButton:v37];

    hardPauseButton = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    [hardPauseButton setDelegate:self];

    view6 = [(PHCarPlayMainInCallViewController *)self view];
    hardPauseButton2 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    [view6 addSubview:hardPauseButton2];

    v99[0] = v96;
    v99[1] = v95;
    view7 = [(PHCarPlayMainInCallViewController *)self view];
    safeAreaLayoutGuide2 = [view7 safeAreaLayoutGuide];
    leftAnchor = [safeAreaLayoutGuide2 leftAnchor];
    buttonsView6 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    leftAnchor2 = [buttonsView6 leftAnchor];
    v89 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v99[2] = v89;
    view8 = [(PHCarPlayMainInCallViewController *)self view];
    safeAreaLayoutGuide3 = [view8 safeAreaLayoutGuide];
    rightAnchor = [safeAreaLayoutGuide3 rightAnchor];
    buttonsView7 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    rightAnchor2 = [buttonsView7 rightAnchor];
    v83 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v99[3] = v83;
    flippyView6 = [(PHCarPlayMainInCallViewController *)self flippyView];
    topAnchor = [flippyView6 topAnchor];
    view9 = [(PHCarPlayMainInCallViewController *)self view];
    safeAreaLayoutGuide4 = [view9 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
    v77 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v99[4] = v77;
    flippyView7 = [(PHCarPlayMainInCallViewController *)self flippyView];
    bottomAnchor = [flippyView7 bottomAnchor];
    buttonsView8 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    topAnchor3 = [buttonsView8 topAnchor];
    v72 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-12.0];
    v99[5] = v72;
    flippyView8 = [(PHCarPlayMainInCallViewController *)self flippyView];
    leadingAnchor = [flippyView8 leadingAnchor];
    view10 = [(PHCarPlayMainInCallViewController *)self view];
    safeAreaLayoutGuide5 = [view10 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide5 leadingAnchor];
    v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v99[6] = v66;
    flippyView9 = [(PHCarPlayMainInCallViewController *)self flippyView];
    trailingAnchor = [flippyView9 trailingAnchor];
    view11 = [(PHCarPlayMainInCallViewController *)self view];
    safeAreaLayoutGuide6 = [view11 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide6 trailingAnchor];
    v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v99[7] = v60;
    hardPauseButton3 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    topAnchor4 = [hardPauseButton3 topAnchor];
    view12 = [(PHCarPlayMainInCallViewController *)self view];
    safeAreaLayoutGuide7 = [view12 safeAreaLayoutGuide];
    topAnchor5 = [safeAreaLayoutGuide7 topAnchor];
    v54 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:12.0];
    v99[8] = v54;
    hardPauseButton4 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    heightAnchor = [hardPauseButton4 heightAnchor];
    v51 = [heightAnchor constraintEqualToConstant:28.0];
    v99[9] = v51;
    hardPauseButton5 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    rightAnchor3 = [hardPauseButton5 rightAnchor];
    view13 = [(PHCarPlayMainInCallViewController *)self view];
    safeAreaLayoutGuide8 = [view13 safeAreaLayoutGuide];
    rightAnchor4 = [safeAreaLayoutGuide8 rightAnchor];
    v46 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-12.0];
    v99[10] = v46;
    hardPauseButton6 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    widthAnchor = [hardPauseButton6 widthAnchor];
    v49 = [widthAnchor constraintEqualToConstant:107.0];
    v99[11] = v49;
    v50 = [NSArray arrayWithObjects:v99 count:12];
    [NSLayoutConstraint activateConstraints:v50];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PHCarPlayMainInCallViewController;
  [(PHCarPlayMainInCallViewController *)&v4 viewDidLoad];
  alertCoordinator = [(PHCarPlayMainInCallViewController *)self alertCoordinator];
  [alertCoordinator startMonitoring];
}

- (void)cleanAlertUIInCarPlay
{
  presentedViewController = [(PHCarPlayMainInCallViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v4 = presentedViewController;
    presentedViewController2 = [(PHCarPlayMainInCallViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = sub_100004F84();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dismiss Carplay Alert UI", v8, 2u);
      }

      [(PHCarPlayMainInCallViewController *)self setShowingStickyAlert:0];
    }
  }
}

- (BOOL)currentCallStateWarrantsCallWaitingMode
{
  primaryCalls = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  if ([primaryCalls count])
  {
    incomingCall = [(PHCarPlayMainInCallViewController *)self incomingCall];
    if (incomingCall)
    {
      v5 = objc_opt_new();
      v6 = [v5 carPlayBannersEnabled] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)updateButtonsViewState
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    failedCall = [(PHCarPlayMainInCallViewController *)self failedCall];
    incomingCall = [(PHCarPlayMainInCallViewController *)self incomingCall];
    primaryCalls = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    v7 = [primaryCalls count];
    conferenceParticipants = [(PHCarPlayMainInCallViewController *)self conferenceParticipants];
    v41 = 138413058;
    v42 = failedCall;
    v43 = 2112;
    v44 = incomingCall;
    v45 = 2048;
    v46 = v7;
    v47 = 2048;
    v48 = [conferenceParticipants count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "-- CarPlay - updateButtonsViewState: self.failedCall=%@; self.incomingPhoneCall=%@; [self.primaryPhoneCalls count]=%ld; [self.conferenceParticipants count]=%ld", &v41, 0x2Au);
  }

  failedCall2 = [(PHCarPlayMainInCallViewController *)self failedCall];

  if (failedCall2)
  {
    buttonsView = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v11 = buttonsView;
    v12 = 6;
LABEL_5:
    v13 = 1;
LABEL_6:
    [buttonsView setButtonsMode:v12 animated:v13];

    hardPauseButton = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    [hardPauseButton setHidden:1];

LABEL_7:
    [(PHCarPlayMainInCallViewController *)self setNeedsFocusUpdate];
    return;
  }

  incomingCall2 = [(PHCarPlayMainInCallViewController *)self incomingCall];

  if (incomingCall2)
  {
    incomingCall3 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    if ([incomingCall3 status] == 3)
    {
    }

    else
    {
      incomingCall4 = [(PHCarPlayMainInCallViewController *)self incomingCall];
      status = [incomingCall4 status];

      if (status != 4)
      {
        goto LABEL_7;
      }
    }

    incomingCall5 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    if ([incomingCall5 isConversation])
    {
      incomingCall6 = [(PHCarPlayMainInCallViewController *)self incomingCall];
      status2 = [incomingCall6 status];

      if (status2 == 3)
      {
        buttonsView = [(PHCarPlayMainInCallViewController *)self buttonsView];
        v11 = buttonsView;
LABEL_23:
        v12 = 3;
        goto LABEL_5;
      }
    }

    else
    {
    }

    currentCallStateWarrantsCallWaitingMode = [(PHCarPlayMainInCallViewController *)self currentCallStateWarrantsCallWaitingMode];
    buttonsView = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v11 = buttonsView;
    if (currentCallStateWarrantsCallWaitingMode)
    {
      v12 = 5;
      v13 = 0;
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  primaryCalls2 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  if ([primaryCalls2 count] != 1)
  {

LABEL_25:
    primaryCalls3 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    v29 = [primaryCalls3 count];

    if (v29 < 2)
    {
      conferenceParticipants2 = [(PHCarPlayMainInCallViewController *)self conferenceParticipants];
      v34 = [conferenceParticipants2 count];

      if (!v34)
      {
        goto LABEL_7;
      }

      buttonsView2 = [(PHCarPlayMainInCallViewController *)self buttonsView];
      v31 = buttonsView2;
      v32 = 4;
    }

    else
    {
      buttonsView2 = [(PHCarPlayMainInCallViewController *)self buttonsView];
      v31 = buttonsView2;
      v32 = 2;
    }

LABEL_29:
    [buttonsView2 setButtonsMode:v32 animated:1];

    [(PHCarPlayMainInCallViewController *)self updateHardPauseButtonState];
    goto LABEL_7;
  }

  conferenceParticipants3 = [(PHCarPlayMainInCallViewController *)self conferenceParticipants];
  v19 = [conferenceParticipants3 count];

  if (v19)
  {
    goto LABEL_25;
  }

  primaryCalls4 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  firstObject = [primaryCalls4 firstObject];
  if ([firstObject status] == 5)
  {

    return;
  }

  primaryCalls5 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  firstObject2 = [primaryCalls5 firstObject];
  status3 = [firstObject2 status];

  if (status3 != 6)
  {
    if ([(PHCarPlayMainInCallViewController *)self _shouldPresentAlertUI])
    {
      buttonsView2 = [(PHCarPlayMainInCallViewController *)self buttonsView];
      v31 = buttonsView2;
      v32 = 7;
    }

    else
    {
      primaryCalls6 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
      firstObject3 = [primaryCalls6 firstObject];
      isOnHold = [firstObject3 isOnHold];

      buttonsView2 = [(PHCarPlayMainInCallViewController *)self buttonsView];
      v31 = buttonsView2;
      v32 = isOnHold != 0;
    }

    goto LABEL_29;
  }
}

- (BOOL)_shouldPresentAlertUI
{
  selfCopy = self;
  primaryCalls = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  firstObject = [primaryCalls firstObject];

  LOBYTE(selfCopy) = [firstObject canDisplayAlertUI:{-[PHCarPlayMainInCallViewController shouldPresentAlertButton](selfCopy, "shouldPresentAlertButton")}];
  return selfCopy;
}

- (BOOL)isKeypadAllowed
{
  callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
  frontmostAudioOrVideoCall = [callContainer frontmostAudioOrVideoCall];
  model = [frontmostAudioOrVideoCall model];
  supportsDTMF = [model supportsDTMF];

  return supportsDTMF;
}

- (int64_t)currentCallState
{
  v2 = +[TUCallCenter sharedInstance];
  bottomBarCallState = [v2 bottomBarCallState];

  if ((bottomBarCallState - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return bottomBarCallState;
  }
}

- (BOOL)isMuted
{
  callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
  frontmostAudioOrVideoCall = [callContainer frontmostAudioOrVideoCall];

  LOBYTE(callContainer) = [frontmostAudioOrVideoCall isUplinkMuted];
  return callContainer;
}

- (BOOL)isAddCallAllowed
{
  shouldAllowAddContactsAccess = [(PHCarPlayMainInCallViewController *)self shouldAllowAddContactsAccess];
  if (shouldAllowAddContactsAccess)
  {
    callCenter = [(PHCarPlayMainInCallViewController *)self callCenter];
    isAddCallAllowed = [callCenter isAddCallAllowed];

    LOBYTE(shouldAllowAddContactsAccess) = isAddCallAllowed;
  }

  return shouldAllowAddContactsAccess;
}

- (BOOL)shouldAllowAddContactsAccess
{
  carSessionStatus = [(PHCarPlayMainInCallViewController *)self carSessionStatus];
  currentSession = [carSessionStatus currentSession];
  configuration = [currentSession configuration];
  screens = [configuration screens];
  firstObject = [screens firstObject];

  carSessionStatus2 = [(PHCarPlayMainInCallViewController *)self carSessionStatus];
  currentSession2 = [carSessionStatus2 currentSession];
  limitUserInterfaces = [currentSession2 limitUserInterfaces];
  bOOLValue = [limitUserInterfaces BOOLValue];

  if (([firstObject limitedUIElements] & 4) != 0)
  {
    v12 = bOOLValue ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)updateHardPauseButtonState
{
  hardPauseButton = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
  callForHardPauseState = [(PHCarPlayMainInCallViewController *)self callForHardPauseState];
  hardPauseDigitsDisplayString = [callForHardPauseState hardPauseDigitsDisplayString];
  [hardPauseButton setTitle:hardPauseDigitsDisplayString forState:0];

  hardPauseButton2 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
  callForHardPauseState2 = [(PHCarPlayMainInCallViewController *)self callForHardPauseState];
  [hardPauseButton2 setHidden:{objc_msgSend(callForHardPauseState2, "hardPauseDigitsState") != 2}];
}

- (id)callForHardPauseState
{
  callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
  frontmostAudioOrVideoCall = [callContainer frontmostAudioOrVideoCall];

  return frontmostAudioOrVideoCall;
}

- (BOOL)isKeypadEnabled
{
  if ([(PHCarPlayMainInCallViewController *)self isKeypadAllowed])
  {
    callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
    frontmostAudioOrVideoCall = [callContainer frontmostAudioOrVideoCall];
    v5 = [frontmostAudioOrVideoCall isOnHold] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)allConferenceParticipantCalls
{
  if ([(PHCarPlayMainInCallViewController *)self currentMode]|| ([(PHCarPlayMainInCallViewController *)self conferenceParticipants], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (BOOL)isDismissable
{
  failedCall = [(PHCarPlayMainInCallViewController *)self failedCall];
  if (failedCall)
  {

    return 0;
  }

  callToDecline = [(PHCarPlayMainInCallViewController *)self callToDecline];

  if (callToDecline)
  {
    return 0;
  }

  return ![(PHCarPlayMainInCallViewController *)self isShowingStickyAlert];
}

- (id)preferredFocusEnvironments
{
  hardPauseButton = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
  isHidden = [hardPauseButton isHidden];

  if (isHidden)
  {
    buttonsView = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v10 = buttonsView;
    v6 = &v10;
  }

  else
  {
    buttonsView = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    v9 = buttonsView;
    v6 = &v9;
  }

  v7 = [NSArray arrayWithObjects:v6 count:1];

  return v7;
}

- (void)dealloc
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MPCarPlay IN CALL VIEW CONTROLLER DEALLOC %@", buf, 0xCu);
  }

  v4 = +[PHSOSDisconnectionConfirmation sharedInstance];
  [v4 removeDelegate:self];

  [(PHCarPlayPhoneCallGalleryView *)self->_galleryView setDelegate:0];
  [(PHCarPlayInCallButtonsView *)self->_buttonsView setDelegate:0];
  [(PHCarPlayInCallHardPauseButton *)self->_hardPauseButton setDelegate:0];
  [(NSTimer *)self->_viewUpdateClockTickTimer invalidate];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = PHCarPlayMainInCallViewController;
  [(PHCarPlayMainInCallViewController *)&v6 dealloc];
}

- (PHCarPlayMainInCallViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v27.receiver = self;
  v27.super_class = PHCarPlayMainInCallViewController;
  v4 = [(PHCarPlayMainInCallViewController *)&v27 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PHCarPlayMainInCallViewController *)v4 setCurrentMode:0];
    v6 = +[TUCallCenter sharedInstance];
    [(PHCarPlayMainInCallViewController *)v5 setCallCenter:v6];

    callCenter = [(PHCarPlayMainInCallViewController *)v5 callCenter];
    [(PHCarPlayMainInCallViewController *)v5 setCallContainer:callCenter];

    v8 = objc_alloc_init(CARSessionStatus);
    [(PHCarPlayMainInCallViewController *)v5 setCarSessionStatus:v8];

    carSessionStatus = [(PHCarPlayMainInCallViewController *)v5 carSessionStatus];
    [carSessionStatus setSessionObserver:v5];

    v10 = dispatch_queue_create("com.apple.calls.incallservice.carplay", 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001496F8;
    block[3] = &unk_100356988;
    v11 = v5;
    v26 = v11;
    dispatch_async(v10, block);

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v11 selector:"muteStateChangedNotification:" name:TUCallIsUplinkMutedChangedNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v11 selector:"hardPauseDigitsStateChangedNotification:" name:TUCallHardPauseDigitsStateChangedNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v11 selector:"callStateChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v11 selector:"callStateChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v11 selector:"callModelChangedNotification:" name:TUCallModelChangedNotification object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v11 selector:"limitedUIChangedNotification:" name:CARSessionLimitUserInterfacesChangedNotification object:0];

    [(PHCarPlayMainInCallViewController *)v11 setCanSendTextMessagesBlock:&stru_10035A238];
    v18 = +[PHSOSDisconnectionConfirmation sharedInstance];
    [v18 addDelegate:v11];

    v11->_shouldPresentAlertButton = 0;
    v19 = objc_alloc_init(_TtC13InCallService16AlertCoordinator);
    [(AlertCoordinator *)v19 setDelegate:v11];
    alertCoordinator = v11->_alertCoordinator;
    v11->_alertCoordinator = v19;
    v21 = v19;

    v22 = objc_alloc_init(NFMPlayCommands);
    nfmPlayCommands = v11->_nfmPlayCommands;
    v11->_nfmPlayCommands = v22;
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PHCarPlayMainInCallViewController;
  [(PHCarPlayMainInCallViewController *)&v6 viewWillAppear:appear];
  viewUpdateClockTickTimer = [(PHCarPlayMainInCallViewController *)self viewUpdateClockTickTimer];
  [viewUpdateClockTickTimer invalidate];

  [(PHCarPlayMainInCallViewController *)self setViewUpdateClockTickTimer:0];
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"viewUpdateClockTickTimerFired:" selector:0 userInfo:1 repeats:1.0];
  [(PHCarPlayMainInCallViewController *)self setViewUpdateClockTickTimer:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PHCarPlayMainInCallViewController;
  [(PHCarPlayMainInCallViewController *)&v6 viewDidAppear:appear];
  presentedViewController = [(PHCarPlayMainInCallViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    buttonsView = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [buttonsView becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayMainInCallViewController;
  [(PHCarPlayMainInCallViewController *)&v5 viewWillDisappear:disappear];
  viewUpdateClockTickTimer = [(PHCarPlayMainInCallViewController *)self viewUpdateClockTickTimer];
  [viewUpdateClockTickTimer invalidate];

  [(PHCarPlayMainInCallViewController *)self setViewUpdateClockTickTimer:0];
}

- (void)setPrimaryCalls:(id)calls conferencePhoneCalls:(id)phoneCalls incomingCall:(id)call
{
  callsCopy = calls;
  phoneCallsCopy = phoneCalls;
  callCopy = call;
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v140 = callsCopy;
    v141 = 2112;
    v142 = phoneCallsCopy;
    v143 = 2112;
    v144 = callCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "-- CarPlay: Set primary phone calls: %@. \nConference phone calls: %@. \nIncoming phone call: %@", buf, 0x20u);
  }

  v11 = sub_100004F84();
  selfCopy = self;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    primaryCalls = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    conferenceParticipants = [(PHCarPlayMainInCallViewController *)selfCopy conferenceParticipants];
    incomingCall = [(PHCarPlayMainInCallViewController *)selfCopy incomingCall];
    *buf = 138412802;
    v140 = primaryCalls;
    v141 = 2112;
    v142 = conferenceParticipants;
    v143 = 2112;
    v144 = incomingCall;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "-- CarPlay: Existing primary phone calls: %@. \nConference phone calls: %@. \nIncoming phone call: %@", buf, 0x20u);

    self = selfCopy;
  }

  v110 = callCopy;

  if (([(PHCarPlayMainInCallViewController *)self isViewLoaded]& 1) == 0)
  {
    [(PHCarPlayMainInCallViewController *)self loadView];
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v15 = callsCopy;
  v16 = [v15 countByEnumeratingWithState:&v130 objects:v138 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v131;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v131 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v130 + 1) + 8 * i);
        if ([v20 originatingUIType] == 10)
        {
          v21 = +[TUCallCenter sharedInstance];
          routeController = [v21 routeController];
          pickedRoute = [routeController pickedRoute];
          isSpeaker = [pickedRoute isSpeaker];

          if ((isSpeaker & 1) == 0)
          {
            v37 = +[TUCallCenter sharedInstance];
            routeController2 = [v37 routeController];
            routeForSpeakerEnable = [routeController2 routeForSpeakerEnable];

            if (!routeForSpeakerEnable)
            {
              v34 = sub_100004F84();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                sub_100257384(&v128, v129, v34);
              }

              goto LABEL_27;
            }

            v39 = +[TUCallCenter sharedInstance];
            routeController3 = [v39 routeController];
            [routeController3 pickRoute:routeForSpeakerEnable];

            v34 = sub_100004F84();
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
LABEL_27:

              continue;
            }

            *buf = 0;
            v35 = v34;
            v36 = "-- CarPlay: Routing audio back to speaker";
LABEL_26:
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
            goto LABEL_27;
          }
        }

        if ([v20 originatingUIType] == 12)
        {
          v25 = +[TUCallCenter sharedInstance];
          routeController4 = [v25 routeController];
          pickedRoute2 = [routeController4 pickedRoute];
          isReceiver = [pickedRoute2 isReceiver];

          if ((isReceiver & 1) == 0)
          {
            v29 = +[TUCallCenter sharedInstance];
            routeController5 = [v29 routeController];
            routeForSpeakerEnable = [routeController5 routeForSpeakerDisable];

            if (routeForSpeakerEnable)
            {
              v32 = +[TUCallCenter sharedInstance];
              routeController6 = [v32 routeController];
              [routeController6 pickRoute:routeForSpeakerEnable];

              v34 = sub_100004F84();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v35 = v34;
                v36 = "-- CarPlay: Routing audio back to receiver";
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v34 = sub_100004F84();
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_27;
            }

            *buf = 0;
            v35 = v34;
            v36 = "[WARN] -- CarPlay: Could not find available route to pick for speaker disable";
            goto LABEL_26;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v130 objects:v138 count:16];
    }

    while (v17);
  }

  v41 = [(PHCarPlayMainInCallViewController *)selfCopy __sanitizedPrimaryPhoneCallOrdering:v15];

  primaryCalls2 = [(PHCarPlayMainInCallViewController *)selfCopy primaryCalls];
  conferenceParticipants2 = [(PHCarPlayMainInCallViewController *)selfCopy conferenceParticipants];
  incomingCall2 = [(PHCarPlayMainInCallViewController *)selfCopy incomingCall];
  if (([primaryCalls2 isEqualToArray:v41] & 1) == 0 && v41 | primaryCalls2 || (objc_msgSend(conferenceParticipants2, "isEqualToArray:", phoneCallsCopy) & 1) == 0 && phoneCallsCopy | conferenceParticipants2 || incomingCall2 != callCopy && callCopy | incomingCall2)
  {
    v108 = primaryCalls2;
    v109 = incomingCall2;
    v45 = +[NSMutableArray array];
    v46 = +[NSMutableArray array];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v107 = v41;
    v47 = v41;
    v48 = [v47 countByEnumeratingWithState:&v124 objects:v137 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v125;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v125 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v124 + 1) + 8 * j);
          primaryCalls3 = [(PHCarPlayMainInCallViewController *)selfCopy primaryCalls];
          v54 = [primaryCalls3 containsObject:v52];

          if ((v54 & 1) == 0)
          {
            [v45 addObject:v52];
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v124 objects:v137 count:16];
      }

      while (v49);
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    primaryCalls4 = [(PHCarPlayMainInCallViewController *)selfCopy primaryCalls];
    v56 = [primaryCalls4 countByEnumeratingWithState:&v120 objects:v136 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v121;
      do
      {
        for (k = 0; k != v57; k = k + 1)
        {
          if (*v121 != v58)
          {
            objc_enumerationMutation(primaryCalls4);
          }

          v60 = *(*(&v120 + 1) + 8 * k);
          if (([v47 containsObject:v60] & 1) == 0)
          {
            [v46 addObject:v60];
          }
        }

        v57 = [primaryCalls4 countByEnumeratingWithState:&v120 objects:v136 count:16];
      }

      while (v57);
    }

    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    v116 = 0u;
    conferenceParticipants3 = [(PHCarPlayMainInCallViewController *)selfCopy conferenceParticipants];
    v62 = [conferenceParticipants3 countByEnumeratingWithState:&v116 objects:v135 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v117;
      do
      {
        for (m = 0; m != v63; m = m + 1)
        {
          if (*v117 != v64)
          {
            objc_enumerationMutation(conferenceParticipants3);
          }

          v66 = *(*(&v116 + 1) + 8 * m);
          v67 = [phoneCallsCopy arrayByAddingObjectsFromArray:v47];
          v68 = [v67 containsObject:v66];

          if ((v68 & 1) == 0 && ([v46 containsObject:v66] & 1) == 0)
          {
            [v46 addObject:v66];
          }
        }

        v63 = [conferenceParticipants3 countByEnumeratingWithState:&v116 objects:v135 count:16];
      }

      while (v63);
    }

    v69 = selfCopy;
    [(PHCarPlayMainInCallViewController *)selfCopy setPrimaryCalls:v47];
    [(PHCarPlayMainInCallViewController *)selfCopy setConferenceParticipants:phoneCallsCopy];
    callCopy = v110;
    [(PHCarPlayMainInCallViewController *)selfCopy setIncomingCall:v110];
    if ([(PHCarPlayMainInCallViewController *)selfCopy currentCallStateWarrantsCallWaitingMode]&& ![(PHCarPlayMainInCallViewController *)selfCopy currentMode])
    {
      v76 = sub_100004F84();
      primaryCalls2 = v108;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "- call waiting - snapping to call waiting mode", buf, 2u);
      }

      view = [(PHCarPlayMainInCallViewController *)selfCopy view];
      superview = [view superview];
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_10014A978;
      v115[3] = &unk_100356988;
      v115[4] = selfCopy;
      v114[0] = _NSConcreteStackBlock;
      v114[1] = 3221225472;
      v114[2] = sub_10014AA34;
      v114[3] = &unk_1003569B0;
      v114[4] = selfCopy;
      [UIView transitionWithView:superview duration:1048704 options:v115 animations:v114 completion:0.5];

      v69 = selfCopy;
    }

    else
    {
      primaryCalls2 = v108;
      if ([(PHCarPlayMainInCallViewController *)selfCopy currentMode]== 1)
      {
        v70 = sub_100004F84();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "- in call waiting and the call state changed...", buf, 2u);
        }

        incomingCall3 = [(PHCarPlayMainInCallViewController *)selfCopy incomingCall];
        v41 = v107;
        if (incomingCall3)
        {
        }

        else if (!v109 || (-[PHCarPlayMainInCallViewController primaryCalls](selfCopy, "primaryCalls"), v78 = objc_claimAutoreleasedReturnValue(), v79 = [v78 containsObject:v109], v78, (v79 & 1) == 0))
        {
          v80 = sub_100004F84();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "- ... it was the incoming phone call which went away", buf, 2u);
          }

          view2 = [(PHCarPlayMainInCallViewController *)selfCopy view];
          superview2 = [view2 superview];
          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_10014AA48;
          v113[3] = &unk_100356988;
          v113[4] = selfCopy;
          [UIView transitionWithView:superview2 duration:2097280 options:v113 animations:0 completion:0.5];

          v69 = selfCopy;
        }

        primaryCalls5 = [(PHCarPlayMainInCallViewController *)v69 primaryCalls];
        if ([primaryCalls5 containsObject:v109])
        {
          primaryCalls6 = [(PHCarPlayMainInCallViewController *)v69 primaryCalls];
          v85 = [primaryCalls6 count];
          v86 = [v108 count];

          v69 = selfCopy;
          if (v85 == v86)
          {
            [(PHCarPlayMainInCallViewController *)selfCopy setCurrentMode:0];
          }
        }

        else
        {
        }

        primaryCalls7 = [(PHCarPlayMainInCallViewController *)v69 primaryCalls];
        if (([primaryCalls7 containsObject:v109] & 1) == 0)
        {
          goto LABEL_115;
        }

        primaryCalls8 = [(PHCarPlayMainInCallViewController *)v69 primaryCalls];
        v89 = [primaryCalls8 count];
        v90 = [v108 count];

        v91 = v89 > v90;
        primaryCalls2 = v108;
        v69 = selfCopy;
        if (!v91)
        {
          goto LABEL_120;
        }

        [(PHCarPlayMainInCallViewController *)selfCopy setCurrentMode:0];
        primaryCalls7 = [(PHCarPlayMainInCallViewController *)selfCopy galleryView];
        primaryCalls9 = [(PHCarPlayMainInCallViewController *)selfCopy primaryCalls];
        galleryView2 = primaryCalls9;
        if (v109)
        {
          v134 = v109;
          lastObject2 = [NSArray arrayWithObjects:&v134 count:1];
          v95 = [galleryView2 arrayByExcludingObjectsInArray:lastObject2];
          lastObject = [v95 lastObject];
          [primaryCalls7 addPrimaryPhoneCall:lastObject animated:1];

          v69 = selfCopy;
        }

        else
        {
          lastObject2 = [primaryCalls9 lastObject];
          [primaryCalls7 addPrimaryPhoneCall:lastObject2 animated:1];
        }

LABEL_114:
LABEL_115:

        primaryCalls2 = v108;
LABEL_120:
        [(PHCarPlayMainInCallViewController *)v69 updateButtonsViewState];

        conferenceParticipants2 = v106;
        incomingCall2 = v109;
        goto LABEL_121;
      }

      if ([v108 count] || !objc_msgSend(v47, "count"))
      {
        if ([v108 count] == 1 && -[NSObject count](v45, "count") == 1 && !objc_msgSend(v46, "count"))
        {
          v102 = sub_100004F84();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "- addition of new call", buf, 2u);
          }

          [(PHCarPlayMainInCallViewController *)selfCopy setCurrentMode:0];
          view = [(PHCarPlayMainInCallViewController *)selfCopy galleryView];
          lastObject3 = [v45 lastObject];
          [view addPrimaryPhoneCall:lastObject3 animated:1];
        }

        else
        {
          lastObject4 = [v46 lastObject];
          v73 = [phoneCallsCopy containsObject:lastObject4];

          if (!v73)
          {
            if ([v46 count] != 1)
            {
              if ([v47 count] || (v104 = objc_msgSend(phoneCallsCopy, "count"), v110) || v104 || !v109)
              {
                v100 = sub_100004F84();
                v41 = v107;
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "- catch-all reload", buf, 2u);
                }

                [(PHCarPlayMainInCallViewController *)selfCopy setCurrentMode:0];
                galleryView = [(PHCarPlayMainInCallViewController *)selfCopy galleryView];
                [galleryView reloadPhoneCallData];
              }

              else
              {
                v105 = sub_100004F84();
                v41 = v107;
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "- incoming call was declined, we'll leave the UI as it is to animate out", buf, 2u);
                }

                [(PHCarPlayMainInCallViewController *)selfCopy setCurrentMode:0];
              }

              goto LABEL_120;
            }

            v98 = sub_100004F84();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "- removed calls contains an object, ending it", buf, 2u);
            }

            [(PHCarPlayMainInCallViewController *)selfCopy setCurrentMode:0];
            primaryCalls7 = [v46 lastObject];
            v41 = v107;
            if ([primaryCalls7 disconnectedReason] == 14)
            {
              [(PHCarPlayMainInCallViewController *)selfCopy setFailedCall:primaryCalls7];
              buttonsView = [(PHCarPlayMainInCallViewController *)selfCopy buttonsView];
              [buttonsView setButtonsMode:6 animated:1];

              galleryView2 = [(PHCarPlayMainInCallViewController *)selfCopy galleryView];
              [galleryView2 setIsShowingCallFailure:1];
            }

            else
            {
              galleryView2 = [(PHCarPlayMainInCallViewController *)selfCopy galleryView];
              [galleryView2 endPhoneCall:primaryCalls7 animated:1];
            }

            goto LABEL_114;
          }

          v74 = sub_100004F84();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "- a removed call became a conference participant, merging", buf, 2u);
          }

          [(PHCarPlayMainInCallViewController *)selfCopy setCurrentMode:0];
          view = [(PHCarPlayMainInCallViewController *)selfCopy galleryView];
          [view mergePrimaryPhoneCallsAnimated:1];
        }
      }

      else
      {
        v97 = sub_100004F84();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "- initial call, reloading view", buf, 2u);
        }

        [(PHCarPlayMainInCallViewController *)selfCopy setCurrentMode:0];
        view = [(PHCarPlayMainInCallViewController *)selfCopy galleryView];
        [view reloadPhoneCallData];
      }
    }

    v41 = v107;
    goto LABEL_120;
  }

  v45 = sub_100004F84();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "-- CarPlay: No change to the phone calls, returning early.", buf, 2u);
  }

LABEL_121:
}

- (id)__sanitizedPrimaryPhoneCallOrdering:(id)ordering
{
  orderingCopy = ordering;
  v4 = orderingCopy;
  if ([orderingCopy count] == 2)
  {
    firstObject = [orderingCopy firstObject];
    isConferenced = [firstObject isConferenced];

    v4 = orderingCopy;
    if (isConferenced)
    {
      v7 = [orderingCopy objectAtIndexedSubscript:1];
      v10[0] = v7;
      v8 = [orderingCopy objectAtIndexedSubscript:0];
      v10[1] = v8;
      v4 = [NSArray arrayWithObjects:v10 count:2];
    }
  }

  return v4;
}

- (id)currentActivePhoneCall
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  primaryCalls = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  v4 = [primaryCalls countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {

LABEL_17:
    primaryCalls2 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    lastObject = [primaryCalls2 lastObject];

    goto LABEL_18;
  }

  v5 = v4;
  lastObject = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(primaryCalls);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      status = [v9 status];
      if (status == 4 || status == 1)
      {
        v12 = v9;

        lastObject = v12;
      }
    }

    v5 = [primaryCalls countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v5);

  if (!lastObject)
  {
    goto LABEL_17;
  }

LABEL_18:

  return lastObject;
}

- (void)setShouldPresentAlertButton:(BOOL)button
{
  if (self->_shouldPresentAlertButton != button)
  {
    buttonCopy = button;
    self->_shouldPresentAlertButton = button;
    galleryView = [(PHCarPlayMainInCallViewController *)self galleryView];
    [galleryView setIsShowingAlertSubtitle:buttonCopy];

    [(PHCarPlayMainInCallViewController *)self updateButtonsViewState];
  }
}

- (void)setIsMuted:(BOOL)muted
{
  mutedCopy = muted;
  buttonsView = [(PHCarPlayMainInCallViewController *)self buttonsView];
  [buttonsView setMuted:mutedCopy];
}

- (id)primaryPhoneCallsForGalleryView:(id)view
{
  currentMode = [(PHCarPlayMainInCallViewController *)self currentMode];
  incomingCall = [(PHCarPlayMainInCallViewController *)self incomingCall];
  v6 = incomingCall;
  if (currentMode)
  {
    v12 = incomingCall;
    primaryCalls = [NSArray arrayWithObjects:&v12 count:1];
LABEL_3:
    v8 = primaryCalls;
    goto LABEL_6;
  }

  if (!incomingCall)
  {
    primaryCalls = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    goto LABEL_3;
  }

  incomingCall2 = [(PHCarPlayMainInCallViewController *)self incomingCall];
  v13 = incomingCall2;
  v8 = [NSArray arrayWithObjects:&v13 count:1];

LABEL_6:
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)conferenceParticipantCallsForPhoneCall:(id)call
{
  if (-[PHCarPlayMainInCallViewController currentMode](self, "currentMode", call) || (-[PHCarPlayMainInCallViewController conferenceParticipants](self, "conferenceParticipants"), v5 = objc_claimAutoreleasedReturnValue(), -[PHCarPlayMainInCallViewController primaryCalls](self, "primaryCalls"), v6 = objc_claimAutoreleasedReturnValue(), [v5 arrayByExcludingObjectsInArray:v6], v4 = objc_claimAutoreleasedReturnValue(), v6, v5, !v4))
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (id)representativePhoneCallForConferenceForGalleryView:(id)view
{
  viewCopy = view;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  primaryCalls = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  v6 = [primaryCalls countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(primaryCalls);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isConferenced])
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [primaryCalls countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isMergeCallsAllowed
{
  callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
  v4 = [callContainer callWithStatus:3];

  callContainer2 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v6 = [callContainer2 callWithStatus:1];

  callContainer3 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v8 = [callContainer3 callWithStatus:2];

  v9 = 0;
  if (!v4 && v6 && v8)
  {
    callCenter = [(PHCarPlayMainInCallViewController *)self callCenter];
    v9 = [callCenter canGroupCall:v6 withCall:v8];
  }

  return v9;
}

- (BOOL)isSwapCallsAllowed
{
  callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
  v4 = [callContainer callWithStatus:1];

  callContainer2 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v6 = [callContainer2 callWithStatus:2];

  if (v6)
  {
    model = [v4 model];
    supportsHolding = [model supportsHolding];
  }

  else
  {
    supportsHolding = 0;
  }

  return supportsHolding;
}

- (BOOL)isHoldEnabled
{
  callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
  frontmostAudioOrVideoCall = [callContainer frontmostAudioOrVideoCall];
  isOnHold = [frontmostAudioOrVideoCall isOnHold];

  return isOnHold;
}

- (BOOL)isSendToVoicemailAllowed
{
  v3 = +[ICSApplicationServices sharedInstance];
  accountManager = [v3 accountManager];
  accounts = [accountManager accounts];
  if ([accounts count])
  {
    callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
    incomingCall = [callContainer incomingCall];
    model = [incomingCall model];
    supportsSendingToVoicemail = [model supportsSendingToVoicemail];
  }

  else
  {
    supportsSendingToVoicemail = 0;
  }

  return supportsSendingToVoicemail;
}

- (BOOL)canSendMessage
{
  callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
  incomingCall = [callContainer incomingCall];
  if (incomingCall)
  {
    incomingVideoCall = incomingCall;

LABEL_4:
    v7 = [(PHCarPlayMainInCallViewController *)self canSendMessageToCall:incomingVideoCall];

    return v7;
  }

  callCenter = [(PHCarPlayMainInCallViewController *)self callCenter];
  incomingVideoCall = [callCenter incomingVideoCall];

  if (incomingVideoCall)
  {
    goto LABEL_4;
  }

  return 0;
}

- (void)_sendMessageResponse:(id)response toCall:(id)call
{
  callCopy = call;
  responseCopy = response;
  v7 = +[IMDaemonController sharedInstance];
  v8 = +[NSBundle mainBundle];
  bundleIdentifier = [v8 bundleIdentifier];
  [v7 addListenerID:bundleIdentifier capabilities:(kFZListenerCapChats | kFZListenerCapAccounts)];

  v10 = +[IMDaemonController sharedInstance];
  [v10 _setBlocksConnectionAtResume:1];

  handle = [callCopy handle];
  value = [handle value];

  if ([value destinationIdIsPhoneNumber])
  {
    v13 = CPPhoneNumberCopyCountryCodeForIncomingTextMessage();
    if (!v13)
    {
      v13 = TUActiveCountryCode();
    }

    v14 = TUNetworkCountryCode();
    v15 = TUNumberToDial();
  }

  else
  {
    v15 = value;
  }

  if (qword_1003B1060[0] != -1)
  {
    sub_1002573C4();
  }

  v16 = +[IMSystemMonitor sharedInstance];
  [v16 _forceSuspended];

  v17 = +[IMSystemMonitor sharedInstance];
  [v17 _forceResumed];

  v18 = off_1003B1058;
  v23 = v15;
  v19 = [NSArray arrayWithObjects:&v23 count:1];
  localSenderIdentity = [callCopy localSenderIdentity];
  accountUUID = [localSenderIdentity accountUUID];
  uUIDString = [accountUUID UUIDString];
  v18(v19, responseCopy, uUIDString);
}

- (void)inCallButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  if (![tappedCopy inCallButtonType])
  {
    callCenter = [(PHCarPlayMainInCallViewController *)self callCenter];
    [callCenter disconnectCurrentCall];

    callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
    callCenter3 = [callContainer callWithStatus:2];

    if (callCenter3)
    {
LABEL_16:

      goto LABEL_17;
    }

    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting delegate for dismissal since there are no held calls", buf, 2u);
    }

    delegate = [(PHCarPlayMainInCallViewController *)self delegate];
    [delegate dismissalRequestedFromInCallViewController:self];
LABEL_8:

    goto LABEL_16;
  }

  if ([tappedCopy inCallButtonType] == 1)
  {
    [tappedCopy setToggledOn:{objc_msgSend(tappedCopy, "toggledOn") ^ 1}];
    callContainer2 = [(PHCarPlayMainInCallViewController *)self callContainer];
    frontmostAudioOrVideoCall = [callContainer2 frontmostAudioOrVideoCall];

    [frontmostAudioOrVideoCall setUplinkMuted:{objc_msgSend(tappedCopy, "toggledOn")}];
    buttonsView = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [buttonsView setMuted:{objc_msgSend(tappedCopy, "toggledOn")}];

LABEL_11:
    goto LABEL_17;
  }

  if ([tappedCopy inCallButtonType] == 5)
  {
    callContainer3 = [(PHCarPlayMainInCallViewController *)self callContainer];
    frontmostAudioOrVideoCall = [callContainer3 callWithStatus:2];

    callContainer4 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v15 = [callContainer4 callWithStatus:1];

    callCenter2 = [(PHCarPlayMainInCallViewController *)self callCenter];
    [callCenter2 groupCall:frontmostAudioOrVideoCall withOtherCall:v15];

    goto LABEL_11;
  }

  if ([tappedCopy inCallButtonType] == 7)
  {
    callCenter3 = [(PHCarPlayMainInCallViewController *)self callCenter];
    conferenceParticipants = [(PHCarPlayMainInCallViewController *)self conferenceParticipants];
    lastObject = [conferenceParticipants lastObject];
    [callCenter3 ungroupCall:lastObject];
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if ([tappedCopy inCallButtonType] == 6)
  {
    callCenter4 = [(PHCarPlayMainInCallViewController *)self callCenter];
    [callCenter4 swapCalls];
LABEL_20:

    goto LABEL_17;
  }

  if ([tappedCopy inCallButtonType] == 3)
  {
    callCenter3 = [(PHCarPlayMainInCallViewController *)self delegate];
    [callCenter3 presentAddCallViewControllerRequestedFromInCallViewController:self];
    goto LABEL_16;
  }

  if ([tappedCopy inCallButtonType] == 8)
  {
    incomingCall = [(PHCarPlayMainInCallViewController *)self incomingCall];

    if (!incomingCall)
    {
      goto LABEL_17;
    }

    incomingCall2 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    status = [incomingCall2 status];

    incomingCall3 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    callCenter3 = incomingCall3;
    if (status == 4)
    {
      if ([incomingCall3 isVideo])
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      [(PHCarPlayMainInCallViewController *)self answerIncomingCallWithBehavior:v24];
      goto LABEL_16;
    }

    if ([incomingCall3 isConversation])
    {
      incomingCall4 = [(PHCarPlayMainInCallViewController *)self incomingCall];
      status2 = [incomingCall4 status];

      if (status2 == 3)
      {
        callCenter3 = +[TUCallCenter sharedInstance];
        delegate = [(PHCarPlayMainInCallViewController *)self incomingCall];
        v39 = [callCenter3 activeConversationForCall:delegate];
        [(PHCarPlayMainInCallViewController *)self answerIncomingConversation:v39];

        goto LABEL_8;
      }
    }

    else
    {
    }

    callCenter4 = sub_100004F84();
    if (os_log_type_enabled(callCenter4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, callCenter4, OS_LOG_TYPE_DEFAULT, "Ignoring Answer command", buf, 2u);
    }

    goto LABEL_20;
  }

  if ([tappedCopy inCallButtonType] == 4)
  {
    goto LABEL_31;
  }

  if ([tappedCopy inCallButtonType] == 10)
  {
    incomingCall5 = [(PHCarPlayMainInCallViewController *)self incomingCall];

    if (!incomingCall5)
    {
      goto LABEL_17;
    }

    incomingCall6 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    [(PHCarPlayMainInCallViewController *)self setCallToDecline:incomingCall6];

    replyWithMessageStore = [(PHCarPlayMainInCallViewController *)self replyWithMessageStore];
    callCenter3 = [replyWithMessageStore cannedReplyActionSheetOptions];

    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"CARPLAY_REPLY_WITH_MESSAGE_TITLE" value:&stru_100361FD0 table:@"PHCarPlay"];
    delegate = [UIAlertController _alertControllerWithTitle:v30 message:0];

    [delegate setPreferredStyle:0];
    [delegate setModalPresentationStyle:7];
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"CARPLAY_REPLY_TEXT_MESSAGE_TITLE" value:&stru_100361FD0 table:@"PHCarPlay"];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10014C08C;
    v52[3] = &unk_100356988;
    v52[4] = self;
    [delegate _addActionWithTitle:v32 style:0 handler:v52];

    v33 = [callCenter3 objectAtIndexedSubscript:0];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10014C110;
    v51[3] = &unk_100356988;
    v51[4] = self;
    [delegate _addActionWithTitle:v33 style:0 handler:v51];

    v34 = [callCenter3 objectAtIndexedSubscript:1];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10014C194;
    v50[3] = &unk_100356988;
    v50[4] = self;
    [delegate _addActionWithTitle:v34 style:0 handler:v50];

    v35 = TelephonyUIBundle();
    v36 = [v35 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"General"];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10014C218;
    v49[3] = &unk_100356988;
    v49[4] = self;
    [delegate _addActionWithTitle:v36 style:1 handler:v49];

    [(PHCarPlayMainInCallViewController *)self presentViewController:delegate animated:1 completion:0];
    goto LABEL_8;
  }

  if ([tappedCopy inCallButtonType] == 14 || objc_msgSend(tappedCopy, "inCallButtonType") == 17)
  {
LABEL_31:
    incomingCall7 = [(PHCarPlayMainInCallViewController *)self incomingCall];

    if (!incomingCall7)
    {
      goto LABEL_17;
    }

    callCenter3 = [(PHCarPlayMainInCallViewController *)self callCenter];
    conferenceParticipants = [(PHCarPlayMainInCallViewController *)self incomingCall];
    [callCenter3 disconnectCall:conferenceParticipants withReason:2];
    goto LABEL_15;
  }

  if ([tappedCopy inCallButtonType] == 11)
  {
    selfCopy3 = self;
    v41 = 0;
LABEL_50:
    [(PHCarPlayMainInCallViewController *)selfCopy3 answerIncomingCallWithBehavior:v41];
    goto LABEL_17;
  }

  if ([tappedCopy inCallButtonType] == 12)
  {
    selfCopy3 = self;
    v41 = 2;
    goto LABEL_50;
  }

  if ([tappedCopy inCallButtonType] == 13)
  {
    selfCopy3 = self;
    v41 = 1;
    goto LABEL_50;
  }

  if ([tappedCopy inCallButtonType] == 2)
  {
    callCenter3 = [(PHCarPlayMainInCallViewController *)self delegate];
    [callCenter3 presentKeypadViewControllerRequestedFromInCallViewController:self];
    goto LABEL_16;
  }

  if ([tappedCopy inCallButtonType] == 15)
  {
    callCenter5 = [(PHCarPlayMainInCallViewController *)self callCenter];
    failedCall = [(PHCarPlayMainInCallViewController *)self failedCall];
    dialRequestForRedial = [failedCall dialRequestForRedial];
    v45 = [callCenter5 dialWithRequest:dialRequestForRedial];

    [(PHCarPlayMainInCallViewController *)self setFailedCall:0];
    callCenter4 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [callCenter4 setIsShowingCallFailure:0];
    goto LABEL_20;
  }

  if ([tappedCopy inCallButtonType] == 16)
  {
    [(PHCarPlayMainInCallViewController *)self setFailedCall:0];
    galleryView = [(PHCarPlayMainInCallViewController *)self galleryView];
    [galleryView setIsShowingCallFailure:0];

    callContainer5 = [(PHCarPlayMainInCallViewController *)self callContainer];
    currentCallCount = [callContainer5 currentCallCount];

    if (currentCallCount)
    {
      [(PHCarPlayMainInCallViewController *)self updateButtonsViewState];
      goto LABEL_17;
    }

    callCenter3 = [(PHCarPlayMainInCallViewController *)self delegate];
    [callCenter3 dismissalRequestedFromInCallViewController:self];
    goto LABEL_16;
  }

  if ([tappedCopy inCallButtonType] == 18)
  {
    callCenter3 = [(PHCarPlayMainInCallViewController *)self callCenter];
    conferenceParticipants = [(PHCarPlayMainInCallViewController *)self callContainer];
    lastObject = [conferenceParticipants frontmostAudioOrVideoCall];
    [callCenter3 unholdCall:lastObject];
    goto LABEL_14;
  }

  if ([tappedCopy inCallButtonType] == 19)
  {
    [(PHCarPlayMainInCallViewController *)self _handleAlertButtonPressed];
  }

LABEL_17:
}

- (void)answerIncomingConversation:(id)conversation
{
  conversationCopy = conversation;
  v9 = [[TUJoinConversationRequest alloc] initWithConversation:conversationCopy originatingUIType:46];

  [v9 setVideoEnabled:0];
  incomingCall = [(PHCarPlayMainInCallViewController *)self incomingCall];
  uniqueProxyIdentifierUUID = [incomingCall uniqueProxyIdentifierUUID];
  [v9 setUUID:uniqueProxyIdentifierUUID];

  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 joinConversationWithConversationRequest:v9];
}

- (void)answerIncomingCallWithBehavior:(int64_t)behavior
{
  v5 = [TUAnswerRequest alloc];
  incomingCall = [(PHCarPlayMainInCallViewController *)self incomingCall];
  v8 = [v5 initWithCall:incomingCall];

  [v8 setSourceIdentifier:TUCallSourceIdentifierCarPlay];
  [v8 setBehavior:behavior];
  [v8 setDowngradeToAudio:1];
  callCenter = [(PHCarPlayMainInCallViewController *)self callCenter];
  [callCenter answerWithRequest:v8];
}

- (id)replyWithMessageStore
{
  replyWithMessageStore = self->_replyWithMessageStore;
  if (!replyWithMessageStore)
  {
    v4 = objc_alloc_init(TUReplyWithMessageStore);
    v5 = self->_replyWithMessageStore;
    self->_replyWithMessageStore = v4;

    replyWithMessageStore = self->_replyWithMessageStore;
  }

  return replyWithMessageStore;
}

- (void)handleAlertControllerSendMessageResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    callToDecline = [(PHCarPlayMainInCallViewController *)self callToDecline];

    if (callToDecline)
    {
      callToDecline2 = [(PHCarPlayMainInCallViewController *)self callToDecline];
      [(PHCarPlayMainInCallViewController *)self _sendMessageResponse:responseCopy toCall:callToDecline2];

      callCenter = [(PHCarPlayMainInCallViewController *)self callCenter];
      incomingCall = [(PHCarPlayMainInCallViewController *)self incomingCall];
      [callCenter disconnectCall:incomingCall withReason:4];
    }
  }

  [(PHCarPlayMainInCallViewController *)self setCallToDecline:0];
  delegate = [(PHCarPlayMainInCallViewController *)self delegate];
  [delegate dismissalRequestedFromInCallViewController:self];
}

- (void)viewUpdateClockTickTimerFired:(id)fired
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"MPCarPlayInCallViewControllerUpdateClockTickNotification" object:0 userInfo:0];
}

- (void)muteStateChangedNotification:(id)notification
{
  isMuted = [(PHCarPlayMainInCallViewController *)self isMuted];

  [(PHCarPlayMainInCallViewController *)self setIsMuted:isMuted];
}

- (void)callStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  callContainer = [(PHCarPlayMainInCallViewController *)self callContainer];
  currentAudioAndVideoCallCount = [callContainer currentAudioAndVideoCallCount];

  if (currentAudioAndVideoCallCount)
  {
    [(PHCarPlayMainInCallViewController *)self updateButtonsViewState];
  }

  object = [notificationCopy object];
  status = [object status];
  if (status == 6)
  {
    callUUID = [object callUUID];
    redialedCallUUID = [(PHCarPlayMainInCallViewController *)self redialedCallUUID];
    v10 = [callUUID isEqualToString:redialedCallUUID];

    if (v10)
    {
      dialRequestForRedial = [object dialRequestForRedial];
      callCenter = [(PHCarPlayMainInCallViewController *)self callCenter];
      v13 = [callCenter dialWithRequest:dialRequestForRedial];

      [(PHCarPlayMainInCallViewController *)self setRedialedCallUUID:0];
    }
  }

  else if ((status & 0xFFFFFFFD) == 1)
  {
    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHRedialCallAssertionReason"];
  }
}

- (void)limitedUIChangedNotification:(id)notification
{
  notificationCopy = notification;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Limited UI changed %@", buf, 0xCu);
  }

  TUGuaranteeExecutionOnMainThreadAsync();
}

- (void)hardPauseButtonDidSendHardPauseDigits:(id)digits
{
  callForHardPauseState = [(PHCarPlayMainInCallViewController *)self callForHardPauseState];
  [callForHardPauseState sendHardPauseDigits];
}

- (void)_handleAlertButtonPressed
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CarPlay alert button pressed", buf, 2u);
  }

  [(PHCarPlayMainInCallViewController *)self _presentAlertForEmergencyCallFailure];
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Since CarPlay alert button pressed, invoking alert", v6, 2u);
  }

  [(PHCarPlayMainInCallViewController *)self setShowingStickyAlert:1];
  alertCoordinator = [(PHCarPlayMainInCallViewController *)self alertCoordinator];
  [alertCoordinator invokeAlertWithRequestUnlock:0 automaticallyInvoked:0];
}

- (void)_presentAlertForEmergencyCallFailure
{
  v3 = objc_alloc_init(ICSCarPlayAlertViewController);
  [(ICSCarPlayAlertViewController *)v3 setDelegate:self];
  [(PHCarPlayMainInCallViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)alertWillInvoke
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHAlertDisconnectingCallsNotification" object:0];
}

- (void)setShowingStickyAlert:(BOOL)alert
{
  if (self->_showingStickyAlert != alert)
  {
    self->_showingStickyAlert = alert;
    if (alert)
    {
      v5 = +[TUCallCenter sharedInstance];
      v6 = [v5 callPassingTest:&stru_10035A278];
      [(PHCarPlayMainInCallViewController *)self setEmergencyCallBeforePresentingStickyAlert:v6];

      delegate3 = +[UIApplication sharedApplication];
      delegate = [delegate3 delegate];
      [delegate setShouldIgnoreCarPlayAssertionInvalidations:1];
    }

    else
    {
      v8 = +[UIApplication sharedApplication];
      delegate2 = [v8 delegate];
      [delegate2 setShouldIgnoreCarPlayAssertionInvalidations:0];

      delegate3 = [(PHCarPlayMainInCallViewController *)self delegate];
      [delegate3 dismissalRequestedFromInCallViewController:self];
    }
  }
}

- (void)shouldPlaySound
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Playing ping my phone", v5, 2u);
  }

  nfmPlayCommands = [(PHCarPlayMainInCallViewController *)self nfmPlayCommands];
  [nfmPlayCommands playFindLocallySound];
}

- (void)shouldCallAgain
{
  _shouldPresentAlertUI = [(PHCarPlayMainInCallViewController *)self _shouldPresentAlertUI];
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    failedCall = [(PHCarPlayMainInCallViewController *)self failedCall];
    uniqueProxyIdentifier = [failedCall uniqueProxyIdentifier];
    emergencyCallBeforePresentingStickyAlert = [(PHCarPlayMainInCallViewController *)self emergencyCallBeforePresentingStickyAlert];
    uniqueProxyIdentifier2 = [emergencyCallBeforePresentingStickyAlert uniqueProxyIdentifier];
    v19[0] = 67109634;
    v19[1] = _shouldPresentAlertUI;
    v20 = 2112;
    v21 = uniqueProxyIdentifier;
    v22 = 2112;
    v23 = uniqueProxyIdentifier2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Carplay call again button pressed, shouldReconnect: %d failedCall: %@ emergencyCallBeforePresentingStickyAlert: %@", v19, 0x1Cu);
  }

  if (_shouldPresentAlertUI)
  {
    primaryCalls = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    firstObject = [primaryCalls firstObject];

    callUUID = [firstObject callUUID];
    [(PHCarPlayMainInCallViewController *)self setRedialedCallUUID:callUUID];

    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHRedialCallAssertionReason"];
    callCenter = [(PHCarPlayMainInCallViewController *)self callCenter];
    [callCenter disconnectCall:firstObject withReason:34];
LABEL_12:

    goto LABEL_13;
  }

  failedCall2 = [(PHCarPlayMainInCallViewController *)self failedCall];
  if (failedCall2)
  {

LABEL_8:
    failedCall3 = [(PHCarPlayMainInCallViewController *)self failedCall];
    if (failedCall3)
    {
      [(PHCarPlayMainInCallViewController *)self failedCall];
    }

    else
    {
      [(PHCarPlayMainInCallViewController *)self emergencyCallBeforePresentingStickyAlert];
    }
    firstObject = ;

    callCenter = [firstObject dialRequestForRedial];
    callCenter2 = [(PHCarPlayMainInCallViewController *)self callCenter];
    v17 = [callCenter2 dialWithRequest:callCenter];

    [(PHCarPlayMainInCallViewController *)self setFailedCall:0];
    [(PHCarPlayMainInCallViewController *)self setEmergencyCallBeforePresentingStickyAlert:0];
    galleryView = [(PHCarPlayMainInCallViewController *)self galleryView];
    [galleryView setIsShowingCallFailure:0];

    goto LABEL_12;
  }

  emergencyCallBeforePresentingStickyAlert2 = [(PHCarPlayMainInCallViewController *)self emergencyCallBeforePresentingStickyAlert];

  if (emergencyCallBeforePresentingStickyAlert2)
  {
    goto LABEL_8;
  }

LABEL_13:
  [(PHCarPlayMainInCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(PHCarPlayMainInCallViewController *)self updateButtonsViewState];
}

- (void)alertViewWillDismiss
{
  [(PHCarPlayMainInCallViewController *)self setShowingStickyAlert:0];

  [(PHCarPlayMainInCallViewController *)self setEmergencyCallBeforePresentingStickyAlert:0];
}

@end