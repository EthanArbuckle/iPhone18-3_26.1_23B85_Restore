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
- (PHCarPlayMainInCallViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)__sanitizedPrimaryPhoneCallOrdering:(id)a3;
- (id)allConferenceParticipantCalls;
- (id)callForHardPauseState;
- (id)conferenceParticipantCallsForPhoneCall:(id)a3;
- (id)currentActivePhoneCall;
- (id)preferredFocusEnvironments;
- (id)primaryPhoneCallsForGalleryView:(id)a3;
- (id)replyWithMessageStore;
- (id)representativePhoneCallForConferenceForGalleryView:(id)a3;
- (int64_t)currentCallState;
- (void)_handleAlertButtonPressed;
- (void)_presentAlertForEmergencyCallFailure;
- (void)_sendMessageResponse:(id)a3 toCall:(id)a4;
- (void)alertViewWillDismiss;
- (void)alertWillInvoke;
- (void)answerIncomingCallWithBehavior:(int64_t)a3;
- (void)answerIncomingConversation:(id)a3;
- (void)callStateChangedNotification:(id)a3;
- (void)cleanAlertUIInCarPlay;
- (void)dealloc;
- (void)handleAlertControllerSendMessageResponse:(id)a3;
- (void)hardPauseButtonDidSendHardPauseDigits:(id)a3;
- (void)inCallButtonWasTapped:(id)a3;
- (void)limitedUIChangedNotification:(id)a3;
- (void)loadView;
- (void)muteStateChangedNotification:(id)a3;
- (void)setIsMuted:(BOOL)a3;
- (void)setPrimaryCalls:(id)a3 conferencePhoneCalls:(id)a4 incomingCall:(id)a5;
- (void)setShouldPresentAlertButton:(BOOL)a3;
- (void)setShowingStickyAlert:(BOOL)a3;
- (void)shouldCallAgain;
- (void)shouldPlaySound;
- (void)updateButtonsViewState;
- (void)updateHardPauseButtonState;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewUpdateClockTickTimerFired:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v6 = [(PHCarPlayMainInCallViewController *)self view];
    [v6 setBackgroundColor:v5];

    v7 = [(PHCarPlayMainInCallViewController *)self view];
    [v7 setAccessibilityIdentifier:@"PHCarPlayInCallUIView"];

    v8 = objc_alloc_init(UIView);
    [(PHCarPlayMainInCallViewController *)self setFlippyView:v8];

    v9 = [(PHCarPlayMainInCallViewController *)self flippyView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [PHCarPlayPhoneCallGalleryView alloc];
    [v4 bounds];
    v11 = [(PHCarPlayPhoneCallGalleryView *)v10 initWithFrame:?];
    [(PHCarPlayMainInCallViewController *)self setGalleryView:v11];

    v12 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [v13 setDelegate:self];

    v14 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v15 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [v14 addSubview:v15];

    v16 = objc_alloc_init(PHCarPlayInCallButtonsView);
    [(PHCarPlayMainInCallViewController *)self setButtonsView:v16];

    v17 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(PHCarPlayMainInCallViewController *)self view];
    v19 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [v18 addSubview:v19];

    v20 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [v20 setDelegate:self];

    v21 = [(PHCarPlayMainInCallViewController *)self view];
    v22 = [(PHCarPlayMainInCallViewController *)self flippyView];
    [v21 addSubview:v22];

    v23 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v102 = @"view";
    v24 = [(PHCarPlayMainInCallViewController *)self galleryView];
    v103 = v24;
    [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    v25 = v97 = v4;
    v26 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v25];
    [v23 addConstraints:v26];

    v27 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v100 = @"view";
    v28 = [(PHCarPlayMainInCallViewController *)self galleryView];
    v101 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v30 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v29];
    [v27 addConstraints:v30];

    v31 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v32 = [(PHCarPlayMainInCallViewController *)self view];
    v33 = [v32 safeAreaLayoutGuide];
    LODWORD(v34) = 1148846080;
    v96 = [NSLayoutConstraint constraintWithItem:v31 attribute:4 relatedBy:0 toItem:v33 attribute:4 multiplier:1.0 constant:0.0 priority:v34];

    v35 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    LODWORD(v36) = 1148846080;
    v95 = [NSLayoutConstraint constraintWithItem:v35 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:87.0 priority:v36];

    v37 = objc_alloc_init(PHCarPlayInCallHardPauseButton);
    [(PHCarPlayMainInCallViewController *)self setHardPauseButton:v37];

    v38 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    [v38 setDelegate:self];

    v39 = [(PHCarPlayMainInCallViewController *)self view];
    v40 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    [v39 addSubview:v40];

    v99[0] = v96;
    v99[1] = v95;
    v94 = [(PHCarPlayMainInCallViewController *)self view];
    v93 = [v94 safeAreaLayoutGuide];
    v91 = [v93 leftAnchor];
    v92 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v90 = [v92 leftAnchor];
    v89 = [v91 constraintEqualToAnchor:v90];
    v99[2] = v89;
    v88 = [(PHCarPlayMainInCallViewController *)self view];
    v87 = [v88 safeAreaLayoutGuide];
    v85 = [v87 rightAnchor];
    v86 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v84 = [v86 rightAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v99[3] = v83;
    v82 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v80 = [v82 topAnchor];
    v81 = [(PHCarPlayMainInCallViewController *)self view];
    v79 = [v81 safeAreaLayoutGuide];
    v78 = [v79 topAnchor];
    v77 = [v80 constraintEqualToAnchor:v78 constant:12.0];
    v99[4] = v77;
    v76 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v74 = [v76 bottomAnchor];
    v75 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v73 = [v75 topAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:-12.0];
    v99[5] = v72;
    v71 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v69 = [v71 leadingAnchor];
    v70 = [(PHCarPlayMainInCallViewController *)self view];
    v68 = [v70 safeAreaLayoutGuide];
    v67 = [v68 leadingAnchor];
    v66 = [v69 constraintEqualToAnchor:v67 constant:12.0];
    v99[6] = v66;
    v65 = [(PHCarPlayMainInCallViewController *)self flippyView];
    v63 = [v65 trailingAnchor];
    v64 = [(PHCarPlayMainInCallViewController *)self view];
    v62 = [v64 safeAreaLayoutGuide];
    v61 = [v62 trailingAnchor];
    v60 = [v63 constraintEqualToAnchor:v61 constant:-12.0];
    v99[7] = v60;
    v59 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    v57 = [v59 topAnchor];
    v58 = [(PHCarPlayMainInCallViewController *)self view];
    v56 = [v58 safeAreaLayoutGuide];
    v55 = [v56 topAnchor];
    v54 = [v57 constraintEqualToAnchor:v55 constant:12.0];
    v99[8] = v54;
    v53 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    v52 = [v53 heightAnchor];
    v51 = [v52 constraintEqualToConstant:28.0];
    v99[9] = v51;
    v41 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    v42 = [v41 rightAnchor];
    v43 = [(PHCarPlayMainInCallViewController *)self view];
    v44 = [v43 safeAreaLayoutGuide];
    v45 = [v44 rightAnchor];
    v46 = [v42 constraintEqualToAnchor:v45 constant:-12.0];
    v99[10] = v46;
    v47 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    v48 = [v47 widthAnchor];
    v49 = [v48 constraintEqualToConstant:107.0];
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
  v3 = [(PHCarPlayMainInCallViewController *)self alertCoordinator];
  [v3 startMonitoring];
}

- (void)cleanAlertUIInCarPlay
{
  v3 = [(PHCarPlayMainInCallViewController *)self presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(PHCarPlayMainInCallViewController *)self presentedViewController];
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
  v3 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  if ([v3 count])
  {
    v4 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    if (v4)
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
    v4 = [(PHCarPlayMainInCallViewController *)self failedCall];
    v5 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    v6 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    v7 = [v6 count];
    v8 = [(PHCarPlayMainInCallViewController *)self conferenceParticipants];
    v41 = 138413058;
    v42 = v4;
    v43 = 2112;
    v44 = v5;
    v45 = 2048;
    v46 = v7;
    v47 = 2048;
    v48 = [v8 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "-- CarPlay - updateButtonsViewState: self.failedCall=%@; self.incomingPhoneCall=%@; [self.primaryPhoneCalls count]=%ld; [self.conferenceParticipants count]=%ld", &v41, 0x2Au);
  }

  v9 = [(PHCarPlayMainInCallViewController *)self failedCall];

  if (v9)
  {
    v10 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v11 = v10;
    v12 = 6;
LABEL_5:
    v13 = 1;
LABEL_6:
    [v10 setButtonsMode:v12 animated:v13];

    v14 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    [v14 setHidden:1];

LABEL_7:
    [(PHCarPlayMainInCallViewController *)self setNeedsFocusUpdate];
    return;
  }

  v15 = [(PHCarPlayMainInCallViewController *)self incomingCall];

  if (v15)
  {
    v16 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    if ([v16 status] == 3)
    {
    }

    else
    {
      v22 = [(PHCarPlayMainInCallViewController *)self incomingCall];
      v23 = [v22 status];

      if (v23 != 4)
      {
        goto LABEL_7;
      }
    }

    v24 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    if ([v24 isConversation])
    {
      v25 = [(PHCarPlayMainInCallViewController *)self incomingCall];
      v26 = [v25 status];

      if (v26 == 3)
      {
        v10 = [(PHCarPlayMainInCallViewController *)self buttonsView];
        v11 = v10;
LABEL_23:
        v12 = 3;
        goto LABEL_5;
      }
    }

    else
    {
    }

    v27 = [(PHCarPlayMainInCallViewController *)self currentCallStateWarrantsCallWaitingMode];
    v10 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v11 = v10;
    if (v27)
    {
      v12 = 5;
      v13 = 0;
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  v17 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  if ([v17 count] != 1)
  {

LABEL_25:
    v28 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    v29 = [v28 count];

    if (v29 < 2)
    {
      v33 = [(PHCarPlayMainInCallViewController *)self conferenceParticipants];
      v34 = [v33 count];

      if (!v34)
      {
        goto LABEL_7;
      }

      v30 = [(PHCarPlayMainInCallViewController *)self buttonsView];
      v31 = v30;
      v32 = 4;
    }

    else
    {
      v30 = [(PHCarPlayMainInCallViewController *)self buttonsView];
      v31 = v30;
      v32 = 2;
    }

LABEL_29:
    [v30 setButtonsMode:v32 animated:1];

    [(PHCarPlayMainInCallViewController *)self updateHardPauseButtonState];
    goto LABEL_7;
  }

  v18 = [(PHCarPlayMainInCallViewController *)self conferenceParticipants];
  v19 = [v18 count];

  if (v19)
  {
    goto LABEL_25;
  }

  v20 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  v21 = [v20 firstObject];
  if ([v21 status] == 5)
  {

    return;
  }

  v35 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  v36 = [v35 firstObject];
  v37 = [v36 status];

  if (v37 != 6)
  {
    if ([(PHCarPlayMainInCallViewController *)self _shouldPresentAlertUI])
    {
      v30 = [(PHCarPlayMainInCallViewController *)self buttonsView];
      v31 = v30;
      v32 = 7;
    }

    else
    {
      v38 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
      v39 = [v38 firstObject];
      v40 = [v39 isOnHold];

      v30 = [(PHCarPlayMainInCallViewController *)self buttonsView];
      v31 = v30;
      v32 = v40 != 0;
    }

    goto LABEL_29;
  }
}

- (BOOL)_shouldPresentAlertUI
{
  v2 = self;
  v3 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  v4 = [v3 firstObject];

  LOBYTE(v2) = [v4 canDisplayAlertUI:{-[PHCarPlayMainInCallViewController shouldPresentAlertButton](v2, "shouldPresentAlertButton")}];
  return v2;
}

- (BOOL)isKeypadAllowed
{
  v2 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v3 = [v2 frontmostAudioOrVideoCall];
  v4 = [v3 model];
  v5 = [v4 supportsDTMF];

  return v5;
}

- (int64_t)currentCallState
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 bottomBarCallState];

  if ((v3 - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (BOOL)isMuted
{
  v2 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v3 = [v2 frontmostAudioOrVideoCall];

  LOBYTE(v2) = [v3 isUplinkMuted];
  return v2;
}

- (BOOL)isAddCallAllowed
{
  v3 = [(PHCarPlayMainInCallViewController *)self shouldAllowAddContactsAccess];
  if (v3)
  {
    v4 = [(PHCarPlayMainInCallViewController *)self callCenter];
    v5 = [v4 isAddCallAllowed];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)shouldAllowAddContactsAccess
{
  v3 = [(PHCarPlayMainInCallViewController *)self carSessionStatus];
  v4 = [v3 currentSession];
  v5 = [v4 configuration];
  v6 = [v5 screens];
  v7 = [v6 firstObject];

  v8 = [(PHCarPlayMainInCallViewController *)self carSessionStatus];
  v9 = [v8 currentSession];
  v10 = [v9 limitUserInterfaces];
  v11 = [v10 BOOLValue];

  if (([v7 limitedUIElements] & 4) != 0)
  {
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)updateHardPauseButtonState
{
  v3 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
  v4 = [(PHCarPlayMainInCallViewController *)self callForHardPauseState];
  v5 = [v4 hardPauseDigitsDisplayString];
  [v3 setTitle:v5 forState:0];

  v7 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
  v6 = [(PHCarPlayMainInCallViewController *)self callForHardPauseState];
  [v7 setHidden:{objc_msgSend(v6, "hardPauseDigitsState") != 2}];
}

- (id)callForHardPauseState
{
  v2 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v3 = [v2 frontmostAudioOrVideoCall];

  return v3;
}

- (BOOL)isKeypadEnabled
{
  if ([(PHCarPlayMainInCallViewController *)self isKeypadAllowed])
  {
    v3 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v4 = [v3 frontmostAudioOrVideoCall];
    v5 = [v4 isOnHold] ^ 1;
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
  v3 = [(PHCarPlayMainInCallViewController *)self failedCall];
  if (v3)
  {

    return 0;
  }

  v4 = [(PHCarPlayMainInCallViewController *)self callToDecline];

  if (v4)
  {
    return 0;
  }

  return ![(PHCarPlayMainInCallViewController *)self isShowingStickyAlert];
}

- (id)preferredFocusEnvironments
{
  v3 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    v10 = v5;
    v6 = &v10;
  }

  else
  {
    v5 = [(PHCarPlayMainInCallViewController *)self hardPauseButton];
    v9 = v5;
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
    v8 = self;
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

- (PHCarPlayMainInCallViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v27.receiver = self;
  v27.super_class = PHCarPlayMainInCallViewController;
  v4 = [(PHCarPlayMainInCallViewController *)&v27 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(PHCarPlayMainInCallViewController *)v4 setCurrentMode:0];
    v6 = +[TUCallCenter sharedInstance];
    [(PHCarPlayMainInCallViewController *)v5 setCallCenter:v6];

    v7 = [(PHCarPlayMainInCallViewController *)v5 callCenter];
    [(PHCarPlayMainInCallViewController *)v5 setCallContainer:v7];

    v8 = objc_alloc_init(CARSessionStatus);
    [(PHCarPlayMainInCallViewController *)v5 setCarSessionStatus:v8];

    v9 = [(PHCarPlayMainInCallViewController *)v5 carSessionStatus];
    [v9 setSessionObserver:v5];

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

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PHCarPlayMainInCallViewController;
  [(PHCarPlayMainInCallViewController *)&v6 viewWillAppear:a3];
  v4 = [(PHCarPlayMainInCallViewController *)self viewUpdateClockTickTimer];
  [v4 invalidate];

  [(PHCarPlayMainInCallViewController *)self setViewUpdateClockTickTimer:0];
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"viewUpdateClockTickTimerFired:" selector:0 userInfo:1 repeats:1.0];
  [(PHCarPlayMainInCallViewController *)self setViewUpdateClockTickTimer:v5];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PHCarPlayMainInCallViewController;
  [(PHCarPlayMainInCallViewController *)&v6 viewDidAppear:a3];
  v4 = [(PHCarPlayMainInCallViewController *)self presentedViewController];

  if (!v4)
  {
    v5 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [v5 becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHCarPlayMainInCallViewController;
  [(PHCarPlayMainInCallViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PHCarPlayMainInCallViewController *)self viewUpdateClockTickTimer];
  [v4 invalidate];

  [(PHCarPlayMainInCallViewController *)self setViewUpdateClockTickTimer:0];
}

- (void)setPrimaryCalls:(id)a3 conferencePhoneCalls:(id)a4 incomingCall:(id)a5
{
  v8 = a3;
  v112 = a4;
  v9 = a5;
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v140 = v8;
    v141 = 2112;
    v142 = v112;
    v143 = 2112;
    v144 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "-- CarPlay: Set primary phone calls: %@. \nConference phone calls: %@. \nIncoming phone call: %@", buf, 0x20u);
  }

  v11 = sub_100004F84();
  v111 = self;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    v13 = [(PHCarPlayMainInCallViewController *)v111 conferenceParticipants];
    v14 = [(PHCarPlayMainInCallViewController *)v111 incomingCall];
    *buf = 138412802;
    v140 = v12;
    v141 = 2112;
    v142 = v13;
    v143 = 2112;
    v144 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "-- CarPlay: Existing primary phone calls: %@. \nConference phone calls: %@. \nIncoming phone call: %@", buf, 0x20u);

    self = v111;
  }

  v110 = v9;

  if (([(PHCarPlayMainInCallViewController *)self isViewLoaded]& 1) == 0)
  {
    [(PHCarPlayMainInCallViewController *)self loadView];
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v15 = v8;
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
          v22 = [v21 routeController];
          v23 = [v22 pickedRoute];
          v24 = [v23 isSpeaker];

          if ((v24 & 1) == 0)
          {
            v37 = +[TUCallCenter sharedInstance];
            v38 = [v37 routeController];
            v31 = [v38 routeForSpeakerEnable];

            if (!v31)
            {
              v34 = sub_100004F84();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                sub_100257384(&v128, v129, v34);
              }

              goto LABEL_27;
            }

            v39 = +[TUCallCenter sharedInstance];
            v40 = [v39 routeController];
            [v40 pickRoute:v31];

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
          v26 = [v25 routeController];
          v27 = [v26 pickedRoute];
          v28 = [v27 isReceiver];

          if ((v28 & 1) == 0)
          {
            v29 = +[TUCallCenter sharedInstance];
            v30 = [v29 routeController];
            v31 = [v30 routeForSpeakerDisable];

            if (v31)
            {
              v32 = +[TUCallCenter sharedInstance];
              v33 = [v32 routeController];
              [v33 pickRoute:v31];

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

  v41 = [(PHCarPlayMainInCallViewController *)v111 __sanitizedPrimaryPhoneCallOrdering:v15];

  v42 = [(PHCarPlayMainInCallViewController *)v111 primaryCalls];
  v43 = [(PHCarPlayMainInCallViewController *)v111 conferenceParticipants];
  v44 = [(PHCarPlayMainInCallViewController *)v111 incomingCall];
  if (([v42 isEqualToArray:v41] & 1) == 0 && v41 | v42 || (objc_msgSend(v43, "isEqualToArray:", v112) & 1) == 0 && v112 | v43 || v44 != v9 && v9 | v44)
  {
    v108 = v42;
    v109 = v44;
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
          v53 = [(PHCarPlayMainInCallViewController *)v111 primaryCalls];
          v54 = [v53 containsObject:v52];

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
    v55 = [(PHCarPlayMainInCallViewController *)v111 primaryCalls];
    v56 = [v55 countByEnumeratingWithState:&v120 objects:v136 count:16];
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
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v120 + 1) + 8 * k);
          if (([v47 containsObject:v60] & 1) == 0)
          {
            [v46 addObject:v60];
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v120 objects:v136 count:16];
      }

      while (v57);
    }

    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    v116 = 0u;
    v61 = [(PHCarPlayMainInCallViewController *)v111 conferenceParticipants];
    v62 = [v61 countByEnumeratingWithState:&v116 objects:v135 count:16];
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
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v116 + 1) + 8 * m);
          v67 = [v112 arrayByAddingObjectsFromArray:v47];
          v68 = [v67 containsObject:v66];

          if ((v68 & 1) == 0 && ([v46 containsObject:v66] & 1) == 0)
          {
            [v46 addObject:v66];
          }
        }

        v63 = [v61 countByEnumeratingWithState:&v116 objects:v135 count:16];
      }

      while (v63);
    }

    v69 = v111;
    [(PHCarPlayMainInCallViewController *)v111 setPrimaryCalls:v47];
    [(PHCarPlayMainInCallViewController *)v111 setConferenceParticipants:v112];
    v9 = v110;
    [(PHCarPlayMainInCallViewController *)v111 setIncomingCall:v110];
    if ([(PHCarPlayMainInCallViewController *)v111 currentCallStateWarrantsCallWaitingMode]&& ![(PHCarPlayMainInCallViewController *)v111 currentMode])
    {
      v76 = sub_100004F84();
      v42 = v108;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "- call waiting - snapping to call waiting mode", buf, 2u);
      }

      v75 = [(PHCarPlayMainInCallViewController *)v111 view];
      v77 = [v75 superview];
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_10014A978;
      v115[3] = &unk_100356988;
      v115[4] = v111;
      v114[0] = _NSConcreteStackBlock;
      v114[1] = 3221225472;
      v114[2] = sub_10014AA34;
      v114[3] = &unk_1003569B0;
      v114[4] = v111;
      [UIView transitionWithView:v77 duration:1048704 options:v115 animations:v114 completion:0.5];

      v69 = v111;
    }

    else
    {
      v42 = v108;
      if ([(PHCarPlayMainInCallViewController *)v111 currentMode]== 1)
      {
        v70 = sub_100004F84();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "- in call waiting and the call state changed...", buf, 2u);
        }

        v71 = [(PHCarPlayMainInCallViewController *)v111 incomingCall];
        v41 = v107;
        if (v71)
        {
        }

        else if (!v109 || (-[PHCarPlayMainInCallViewController primaryCalls](v111, "primaryCalls"), v78 = objc_claimAutoreleasedReturnValue(), v79 = [v78 containsObject:v109], v78, (v79 & 1) == 0))
        {
          v80 = sub_100004F84();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "- ... it was the incoming phone call which went away", buf, 2u);
          }

          v81 = [(PHCarPlayMainInCallViewController *)v111 view];
          v82 = [v81 superview];
          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_10014AA48;
          v113[3] = &unk_100356988;
          v113[4] = v111;
          [UIView transitionWithView:v82 duration:2097280 options:v113 animations:0 completion:0.5];

          v69 = v111;
        }

        v83 = [(PHCarPlayMainInCallViewController *)v69 primaryCalls];
        if ([v83 containsObject:v109])
        {
          v84 = [(PHCarPlayMainInCallViewController *)v69 primaryCalls];
          v85 = [v84 count];
          v86 = [v108 count];

          v69 = v111;
          if (v85 == v86)
          {
            [(PHCarPlayMainInCallViewController *)v111 setCurrentMode:0];
          }
        }

        else
        {
        }

        v87 = [(PHCarPlayMainInCallViewController *)v69 primaryCalls];
        if (([v87 containsObject:v109] & 1) == 0)
        {
          goto LABEL_115;
        }

        v88 = [(PHCarPlayMainInCallViewController *)v69 primaryCalls];
        v89 = [v88 count];
        v90 = [v108 count];

        v91 = v89 > v90;
        v42 = v108;
        v69 = v111;
        if (!v91)
        {
          goto LABEL_120;
        }

        [(PHCarPlayMainInCallViewController *)v111 setCurrentMode:0];
        v87 = [(PHCarPlayMainInCallViewController *)v111 galleryView];
        v92 = [(PHCarPlayMainInCallViewController *)v111 primaryCalls];
        v93 = v92;
        if (v109)
        {
          v134 = v109;
          v94 = [NSArray arrayWithObjects:&v134 count:1];
          v95 = [v93 arrayByExcludingObjectsInArray:v94];
          v96 = [v95 lastObject];
          [v87 addPrimaryPhoneCall:v96 animated:1];

          v69 = v111;
        }

        else
        {
          v94 = [v92 lastObject];
          [v87 addPrimaryPhoneCall:v94 animated:1];
        }

LABEL_114:
LABEL_115:

        v42 = v108;
LABEL_120:
        [(PHCarPlayMainInCallViewController *)v69 updateButtonsViewState];

        v43 = v106;
        v44 = v109;
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

          [(PHCarPlayMainInCallViewController *)v111 setCurrentMode:0];
          v75 = [(PHCarPlayMainInCallViewController *)v111 galleryView];
          v103 = [v45 lastObject];
          [v75 addPrimaryPhoneCall:v103 animated:1];
        }

        else
        {
          v72 = [v46 lastObject];
          v73 = [v112 containsObject:v72];

          if (!v73)
          {
            if ([v46 count] != 1)
            {
              if ([v47 count] || (v104 = objc_msgSend(v112, "count"), v110) || v104 || !v109)
              {
                v100 = sub_100004F84();
                v41 = v107;
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "- catch-all reload", buf, 2u);
                }

                [(PHCarPlayMainInCallViewController *)v111 setCurrentMode:0];
                v101 = [(PHCarPlayMainInCallViewController *)v111 galleryView];
                [v101 reloadPhoneCallData];
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

                [(PHCarPlayMainInCallViewController *)v111 setCurrentMode:0];
              }

              goto LABEL_120;
            }

            v98 = sub_100004F84();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "- removed calls contains an object, ending it", buf, 2u);
            }

            [(PHCarPlayMainInCallViewController *)v111 setCurrentMode:0];
            v87 = [v46 lastObject];
            v41 = v107;
            if ([v87 disconnectedReason] == 14)
            {
              [(PHCarPlayMainInCallViewController *)v111 setFailedCall:v87];
              v99 = [(PHCarPlayMainInCallViewController *)v111 buttonsView];
              [v99 setButtonsMode:6 animated:1];

              v93 = [(PHCarPlayMainInCallViewController *)v111 galleryView];
              [v93 setIsShowingCallFailure:1];
            }

            else
            {
              v93 = [(PHCarPlayMainInCallViewController *)v111 galleryView];
              [v93 endPhoneCall:v87 animated:1];
            }

            goto LABEL_114;
          }

          v74 = sub_100004F84();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "- a removed call became a conference participant, merging", buf, 2u);
          }

          [(PHCarPlayMainInCallViewController *)v111 setCurrentMode:0];
          v75 = [(PHCarPlayMainInCallViewController *)v111 galleryView];
          [v75 mergePrimaryPhoneCallsAnimated:1];
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

        [(PHCarPlayMainInCallViewController *)v111 setCurrentMode:0];
        v75 = [(PHCarPlayMainInCallViewController *)v111 galleryView];
        [v75 reloadPhoneCallData];
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

- (id)__sanitizedPrimaryPhoneCallOrdering:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 count] == 2)
  {
    v5 = [v3 firstObject];
    v6 = [v5 isConferenced];

    v4 = v3;
    if (v6)
    {
      v7 = [v3 objectAtIndexedSubscript:1];
      v10[0] = v7;
      v8 = [v3 objectAtIndexedSubscript:0];
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
  v3 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {

LABEL_17:
    v13 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    v6 = [v13 lastObject];

    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      v10 = [v9 status];
      if (v10 == 4 || v10 == 1)
      {
        v12 = v9;

        v6 = v12;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v5);

  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v6;
}

- (void)setShouldPresentAlertButton:(BOOL)a3
{
  if (self->_shouldPresentAlertButton != a3)
  {
    v4 = a3;
    self->_shouldPresentAlertButton = a3;
    v6 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [v6 setIsShowingAlertSubtitle:v4];

    [(PHCarPlayMainInCallViewController *)self updateButtonsViewState];
  }
}

- (void)setIsMuted:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHCarPlayMainInCallViewController *)self buttonsView];
  [v4 setMuted:v3];
}

- (id)primaryPhoneCallsForGalleryView:(id)a3
{
  v4 = [(PHCarPlayMainInCallViewController *)self currentMode];
  v5 = [(PHCarPlayMainInCallViewController *)self incomingCall];
  v6 = v5;
  if (v4)
  {
    v12 = v5;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!v5)
  {
    v7 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    goto LABEL_3;
  }

  v9 = [(PHCarPlayMainInCallViewController *)self incomingCall];
  v13 = v9;
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

- (id)conferenceParticipantCallsForPhoneCall:(id)a3
{
  if (-[PHCarPlayMainInCallViewController currentMode](self, "currentMode", a3) || (-[PHCarPlayMainInCallViewController conferenceParticipants](self, "conferenceParticipants"), v5 = objc_claimAutoreleasedReturnValue(), -[PHCarPlayMainInCallViewController primaryCalls](self, "primaryCalls"), v6 = objc_claimAutoreleasedReturnValue(), [v5 arrayByExcludingObjectsInArray:v6], v4 = objc_claimAutoreleasedReturnValue(), v6, v5, !v4))
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (id)representativePhoneCallForConferenceForGalleryView:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isConferenced])
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v4 = [v3 callWithStatus:3];

  v5 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v6 = [v5 callWithStatus:1];

  v7 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v8 = [v7 callWithStatus:2];

  v9 = 0;
  if (!v4 && v6 && v8)
  {
    v10 = [(PHCarPlayMainInCallViewController *)self callCenter];
    v9 = [v10 canGroupCall:v6 withCall:v8];
  }

  return v9;
}

- (BOOL)isSwapCallsAllowed
{
  v3 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v4 = [v3 callWithStatus:1];

  v5 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v6 = [v5 callWithStatus:2];

  if (v6)
  {
    v7 = [v4 model];
    v8 = [v7 supportsHolding];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isHoldEnabled
{
  v2 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v3 = [v2 frontmostAudioOrVideoCall];
  v4 = [v3 isOnHold];

  return v4;
}

- (BOOL)isSendToVoicemailAllowed
{
  v3 = +[ICSApplicationServices sharedInstance];
  v4 = [v3 accountManager];
  v5 = [v4 accounts];
  if ([v5 count])
  {
    v6 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v7 = [v6 incomingCall];
    v8 = [v7 model];
    v9 = [v8 supportsSendingToVoicemail];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)canSendMessage
{
  v3 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v4 = [v3 incomingCall];
  if (v4)
  {
    v5 = v4;

LABEL_4:
    v7 = [(PHCarPlayMainInCallViewController *)self canSendMessageToCall:v5];

    return v7;
  }

  v6 = [(PHCarPlayMainInCallViewController *)self callCenter];
  v5 = [v6 incomingVideoCall];

  if (v5)
  {
    goto LABEL_4;
  }

  return 0;
}

- (void)_sendMessageResponse:(id)a3 toCall:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDaemonController sharedInstance];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 bundleIdentifier];
  [v7 addListenerID:v9 capabilities:(kFZListenerCapChats | kFZListenerCapAccounts)];

  v10 = +[IMDaemonController sharedInstance];
  [v10 _setBlocksConnectionAtResume:1];

  v11 = [v5 handle];
  v12 = [v11 value];

  if ([v12 destinationIdIsPhoneNumber])
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
    v15 = v12;
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
  v20 = [v5 localSenderIdentity];
  v21 = [v20 accountUUID];
  v22 = [v21 UUIDString];
  v18(v19, v6, v22);
}

- (void)inCallButtonWasTapped:(id)a3
{
  v4 = a3;
  if (![v4 inCallButtonType])
  {
    v8 = [(PHCarPlayMainInCallViewController *)self callCenter];
    [v8 disconnectCurrentCall];

    v9 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v10 = [v9 callWithStatus:2];

    if (v10)
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

    v12 = [(PHCarPlayMainInCallViewController *)self delegate];
    [v12 dismissalRequestedFromInCallViewController:self];
LABEL_8:

    goto LABEL_16;
  }

  if ([v4 inCallButtonType] == 1)
  {
    [v4 setToggledOn:{objc_msgSend(v4, "toggledOn") ^ 1}];
    v5 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v6 = [v5 frontmostAudioOrVideoCall];

    [v6 setUplinkMuted:{objc_msgSend(v4, "toggledOn")}];
    v7 = [(PHCarPlayMainInCallViewController *)self buttonsView];
    [v7 setMuted:{objc_msgSend(v4, "toggledOn")}];

LABEL_11:
    goto LABEL_17;
  }

  if ([v4 inCallButtonType] == 5)
  {
    v13 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v6 = [v13 callWithStatus:2];

    v14 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v15 = [v14 callWithStatus:1];

    v16 = [(PHCarPlayMainInCallViewController *)self callCenter];
    [v16 groupCall:v6 withOtherCall:v15];

    goto LABEL_11;
  }

  if ([v4 inCallButtonType] == 7)
  {
    v10 = [(PHCarPlayMainInCallViewController *)self callCenter];
    v17 = [(PHCarPlayMainInCallViewController *)self conferenceParticipants];
    v18 = [v17 lastObject];
    [v10 ungroupCall:v18];
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  if ([v4 inCallButtonType] == 6)
  {
    v19 = [(PHCarPlayMainInCallViewController *)self callCenter];
    [v19 swapCalls];
LABEL_20:

    goto LABEL_17;
  }

  if ([v4 inCallButtonType] == 3)
  {
    v10 = [(PHCarPlayMainInCallViewController *)self delegate];
    [v10 presentAddCallViewControllerRequestedFromInCallViewController:self];
    goto LABEL_16;
  }

  if ([v4 inCallButtonType] == 8)
  {
    v20 = [(PHCarPlayMainInCallViewController *)self incomingCall];

    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    v22 = [v21 status];

    v23 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    v10 = v23;
    if (v22 == 4)
    {
      if ([v23 isVideo])
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

    if ([v23 isConversation])
    {
      v37 = [(PHCarPlayMainInCallViewController *)self incomingCall];
      v38 = [v37 status];

      if (v38 == 3)
      {
        v10 = +[TUCallCenter sharedInstance];
        v12 = [(PHCarPlayMainInCallViewController *)self incomingCall];
        v39 = [v10 activeConversationForCall:v12];
        [(PHCarPlayMainInCallViewController *)self answerIncomingConversation:v39];

        goto LABEL_8;
      }
    }

    else
    {
    }

    v19 = sub_100004F84();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignoring Answer command", buf, 2u);
    }

    goto LABEL_20;
  }

  if ([v4 inCallButtonType] == 4)
  {
    goto LABEL_31;
  }

  if ([v4 inCallButtonType] == 10)
  {
    v26 = [(PHCarPlayMainInCallViewController *)self incomingCall];

    if (!v26)
    {
      goto LABEL_17;
    }

    v27 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    [(PHCarPlayMainInCallViewController *)self setCallToDecline:v27];

    v28 = [(PHCarPlayMainInCallViewController *)self replyWithMessageStore];
    v10 = [v28 cannedReplyActionSheetOptions];

    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"CARPLAY_REPLY_WITH_MESSAGE_TITLE" value:&stru_100361FD0 table:@"PHCarPlay"];
    v12 = [UIAlertController _alertControllerWithTitle:v30 message:0];

    [v12 setPreferredStyle:0];
    [v12 setModalPresentationStyle:7];
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"CARPLAY_REPLY_TEXT_MESSAGE_TITLE" value:&stru_100361FD0 table:@"PHCarPlay"];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10014C08C;
    v52[3] = &unk_100356988;
    v52[4] = self;
    [v12 _addActionWithTitle:v32 style:0 handler:v52];

    v33 = [v10 objectAtIndexedSubscript:0];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10014C110;
    v51[3] = &unk_100356988;
    v51[4] = self;
    [v12 _addActionWithTitle:v33 style:0 handler:v51];

    v34 = [v10 objectAtIndexedSubscript:1];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10014C194;
    v50[3] = &unk_100356988;
    v50[4] = self;
    [v12 _addActionWithTitle:v34 style:0 handler:v50];

    v35 = TelephonyUIBundle();
    v36 = [v35 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"General"];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10014C218;
    v49[3] = &unk_100356988;
    v49[4] = self;
    [v12 _addActionWithTitle:v36 style:1 handler:v49];

    [(PHCarPlayMainInCallViewController *)self presentViewController:v12 animated:1 completion:0];
    goto LABEL_8;
  }

  if ([v4 inCallButtonType] == 14 || objc_msgSend(v4, "inCallButtonType") == 17)
  {
LABEL_31:
    v25 = [(PHCarPlayMainInCallViewController *)self incomingCall];

    if (!v25)
    {
      goto LABEL_17;
    }

    v10 = [(PHCarPlayMainInCallViewController *)self callCenter];
    v17 = [(PHCarPlayMainInCallViewController *)self incomingCall];
    [v10 disconnectCall:v17 withReason:2];
    goto LABEL_15;
  }

  if ([v4 inCallButtonType] == 11)
  {
    v40 = self;
    v41 = 0;
LABEL_50:
    [(PHCarPlayMainInCallViewController *)v40 answerIncomingCallWithBehavior:v41];
    goto LABEL_17;
  }

  if ([v4 inCallButtonType] == 12)
  {
    v40 = self;
    v41 = 2;
    goto LABEL_50;
  }

  if ([v4 inCallButtonType] == 13)
  {
    v40 = self;
    v41 = 1;
    goto LABEL_50;
  }

  if ([v4 inCallButtonType] == 2)
  {
    v10 = [(PHCarPlayMainInCallViewController *)self delegate];
    [v10 presentKeypadViewControllerRequestedFromInCallViewController:self];
    goto LABEL_16;
  }

  if ([v4 inCallButtonType] == 15)
  {
    v42 = [(PHCarPlayMainInCallViewController *)self callCenter];
    v43 = [(PHCarPlayMainInCallViewController *)self failedCall];
    v44 = [v43 dialRequestForRedial];
    v45 = [v42 dialWithRequest:v44];

    [(PHCarPlayMainInCallViewController *)self setFailedCall:0];
    v19 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [v19 setIsShowingCallFailure:0];
    goto LABEL_20;
  }

  if ([v4 inCallButtonType] == 16)
  {
    [(PHCarPlayMainInCallViewController *)self setFailedCall:0];
    v46 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [v46 setIsShowingCallFailure:0];

    v47 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v48 = [v47 currentCallCount];

    if (v48)
    {
      [(PHCarPlayMainInCallViewController *)self updateButtonsViewState];
      goto LABEL_17;
    }

    v10 = [(PHCarPlayMainInCallViewController *)self delegate];
    [v10 dismissalRequestedFromInCallViewController:self];
    goto LABEL_16;
  }

  if ([v4 inCallButtonType] == 18)
  {
    v10 = [(PHCarPlayMainInCallViewController *)self callCenter];
    v17 = [(PHCarPlayMainInCallViewController *)self callContainer];
    v18 = [v17 frontmostAudioOrVideoCall];
    [v10 unholdCall:v18];
    goto LABEL_14;
  }

  if ([v4 inCallButtonType] == 19)
  {
    [(PHCarPlayMainInCallViewController *)self _handleAlertButtonPressed];
  }

LABEL_17:
}

- (void)answerIncomingConversation:(id)a3
{
  v4 = a3;
  v9 = [[TUJoinConversationRequest alloc] initWithConversation:v4 originatingUIType:46];

  [v9 setVideoEnabled:0];
  v5 = [(PHCarPlayMainInCallViewController *)self incomingCall];
  v6 = [v5 uniqueProxyIdentifierUUID];
  [v9 setUUID:v6];

  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 joinConversationWithConversationRequest:v9];
}

- (void)answerIncomingCallWithBehavior:(int64_t)a3
{
  v5 = [TUAnswerRequest alloc];
  v6 = [(PHCarPlayMainInCallViewController *)self incomingCall];
  v8 = [v5 initWithCall:v6];

  [v8 setSourceIdentifier:TUCallSourceIdentifierCarPlay];
  [v8 setBehavior:a3];
  [v8 setDowngradeToAudio:1];
  v7 = [(PHCarPlayMainInCallViewController *)self callCenter];
  [v7 answerWithRequest:v8];
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

- (void)handleAlertControllerSendMessageResponse:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(PHCarPlayMainInCallViewController *)self callToDecline];

    if (v4)
    {
      v5 = [(PHCarPlayMainInCallViewController *)self callToDecline];
      [(PHCarPlayMainInCallViewController *)self _sendMessageResponse:v9 toCall:v5];

      v6 = [(PHCarPlayMainInCallViewController *)self callCenter];
      v7 = [(PHCarPlayMainInCallViewController *)self incomingCall];
      [v6 disconnectCall:v7 withReason:4];
    }
  }

  [(PHCarPlayMainInCallViewController *)self setCallToDecline:0];
  v8 = [(PHCarPlayMainInCallViewController *)self delegate];
  [v8 dismissalRequestedFromInCallViewController:self];
}

- (void)viewUpdateClockTickTimerFired:(id)a3
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"MPCarPlayInCallViewControllerUpdateClockTickNotification" object:0 userInfo:0];
}

- (void)muteStateChangedNotification:(id)a3
{
  v4 = [(PHCarPlayMainInCallViewController *)self isMuted];

  [(PHCarPlayMainInCallViewController *)self setIsMuted:v4];
}

- (void)callStateChangedNotification:(id)a3
{
  v14 = a3;
  v4 = [(PHCarPlayMainInCallViewController *)self callContainer];
  v5 = [v4 currentAudioAndVideoCallCount];

  if (v5)
  {
    [(PHCarPlayMainInCallViewController *)self updateButtonsViewState];
  }

  v6 = [v14 object];
  v7 = [v6 status];
  if (v7 == 6)
  {
    v8 = [v6 callUUID];
    v9 = [(PHCarPlayMainInCallViewController *)self redialedCallUUID];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [v6 dialRequestForRedial];
      v12 = [(PHCarPlayMainInCallViewController *)self callCenter];
      v13 = [v12 dialWithRequest:v11];

      [(PHCarPlayMainInCallViewController *)self setRedialedCallUUID:0];
    }
  }

  else if ((v7 & 0xFFFFFFFD) == 1)
  {
    [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHRedialCallAssertionReason"];
  }
}

- (void)limitedUIChangedNotification:(id)a3
{
  v3 = a3;
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Limited UI changed %@", buf, 0xCu);
  }

  TUGuaranteeExecutionOnMainThreadAsync();
}

- (void)hardPauseButtonDidSendHardPauseDigits:(id)a3
{
  v3 = [(PHCarPlayMainInCallViewController *)self callForHardPauseState];
  [v3 sendHardPauseDigits];
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
  v5 = [(PHCarPlayMainInCallViewController *)self alertCoordinator];
  [v5 invokeAlertWithRequestUnlock:0 automaticallyInvoked:0];
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

- (void)setShowingStickyAlert:(BOOL)a3
{
  if (self->_showingStickyAlert != a3)
  {
    self->_showingStickyAlert = a3;
    if (a3)
    {
      v5 = +[TUCallCenter sharedInstance];
      v6 = [v5 callPassingTest:&stru_10035A278];
      [(PHCarPlayMainInCallViewController *)self setEmergencyCallBeforePresentingStickyAlert:v6];

      v10 = +[UIApplication sharedApplication];
      v7 = [v10 delegate];
      [v7 setShouldIgnoreCarPlayAssertionInvalidations:1];
    }

    else
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 delegate];
      [v9 setShouldIgnoreCarPlayAssertionInvalidations:0];

      v10 = [(PHCarPlayMainInCallViewController *)self delegate];
      [v10 dismissalRequestedFromInCallViewController:self];
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

  v4 = [(PHCarPlayMainInCallViewController *)self nfmPlayCommands];
  [v4 playFindLocallySound];
}

- (void)shouldCallAgain
{
  v3 = [(PHCarPlayMainInCallViewController *)self _shouldPresentAlertUI];
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PHCarPlayMainInCallViewController *)self failedCall];
    v6 = [v5 uniqueProxyIdentifier];
    v7 = [(PHCarPlayMainInCallViewController *)self emergencyCallBeforePresentingStickyAlert];
    v8 = [v7 uniqueProxyIdentifier];
    v19[0] = 67109634;
    v19[1] = v3;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Carplay call again button pressed, shouldReconnect: %d failedCall: %@ emergencyCallBeforePresentingStickyAlert: %@", v19, 0x1Cu);
  }

  if (v3)
  {
    v9 = [(PHCarPlayMainInCallViewController *)self primaryCalls];
    v10 = [v9 firstObject];

    v11 = [v10 callUUID];
    [(PHCarPlayMainInCallViewController *)self setRedialedCallUUID:v11];

    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHRedialCallAssertionReason"];
    v12 = [(PHCarPlayMainInCallViewController *)self callCenter];
    [v12 disconnectCall:v10 withReason:34];
LABEL_12:

    goto LABEL_13;
  }

  v13 = [(PHCarPlayMainInCallViewController *)self failedCall];
  if (v13)
  {

LABEL_8:
    v15 = [(PHCarPlayMainInCallViewController *)self failedCall];
    if (v15)
    {
      [(PHCarPlayMainInCallViewController *)self failedCall];
    }

    else
    {
      [(PHCarPlayMainInCallViewController *)self emergencyCallBeforePresentingStickyAlert];
    }
    v10 = ;

    v12 = [v10 dialRequestForRedial];
    v16 = [(PHCarPlayMainInCallViewController *)self callCenter];
    v17 = [v16 dialWithRequest:v12];

    [(PHCarPlayMainInCallViewController *)self setFailedCall:0];
    [(PHCarPlayMainInCallViewController *)self setEmergencyCallBeforePresentingStickyAlert:0];
    v18 = [(PHCarPlayMainInCallViewController *)self galleryView];
    [v18 setIsShowingCallFailure:0];

    goto LABEL_12;
  }

  v14 = [(PHCarPlayMainInCallViewController *)self emergencyCallBeforePresentingStickyAlert];

  if (v14)
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