@interface PHCarPlayInCallViewController
- (BOOL)activePhoneCallExists;
- (PHCarPlayInCallViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)incomingCall;
- (id)preferredFocusEnvironments;
- (void)animateOutIfNecessary;
- (void)backPressed:(id)pressed;
- (void)conversationManager:(id)manager letMeInRequestStateChangedForConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)dealloc;
- (void)hardwareControlEventNotification:(id)notification;
- (void)loadView;
- (void)muteStateChangedNotification:(id)notification;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentAddCallViewControllerRequestedFromInCallViewController:(id)controller;
- (void)presentKeypadViewControllerRequestedFromInCallViewController:(id)controller;
- (void)screenDidDisconnectNotification:(id)notification;
- (void)updateMainInCallControllerCalls;
- (void)updateTPInCallControllerPhoneCalls;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PHCarPlayInCallViewController

- (void)loadView
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController loading view", buf, 2u);
  }

  v4 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
  v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  if (_UISolariumEnabled())
  {
    v6 = [UIBlurEffect effectWithStyle:10];
    v7 = objc_alloc_init(UIVisualEffectView);
    v82 = v6;
    v8 = [NSArray arrayWithObjects:&v82 count:1];
    [v7 setBackgroundEffects:v8];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = +[UIColor clearColor];
    [v5 setBackgroundColor:v9];

    [v5 addSubview:v7];
    v80 = @"view";
    v81 = v7;
    v10 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v11 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v10];
    [v5 addConstraints:v11];

    v78 = @"view";
    v79 = v7;
    v12 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v13 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v12];
    [v5 addConstraints:v13];

    v4 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
  }

  else
  {
    v6 = +[UIColor dynamicBackgroundColor];
    [v5 setBackgroundColor:v6];
    v7 = 0;
  }

  [(PHCarPlayInCallViewController *)self setView:v5];
  v14 = objc_alloc_init(v4[78]);
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setOpaque:0];
  v15 = +[UIColor clearColor];
  [v14 setBackgroundColor:v15];

  [(PHCarPlayInCallViewController *)self setFlippyViewContainer:v14];
  if (_UISolariumEnabled())
  {
    contentView = [v7 contentView];
    flippyViewContainer = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    [contentView addSubview:flippyViewContainer];

    contentView2 = [v7 contentView];
    v76 = @"view";
    flippyViewContainer2 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    v77 = flippyViewContainer2;
    v20 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v20];
    [contentView2 addConstraints:v21];

    contentView3 = [v7 contentView];
    v74 = @"view";
    flippyViewContainer3 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    v75 = flippyViewContainer3;
    v24 = &v75;
    v25 = &v74;
  }

  else
  {
    view = [(PHCarPlayInCallViewController *)self view];
    flippyViewContainer4 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    [view addSubview:flippyViewContainer4];

    view2 = [(PHCarPlayInCallViewController *)self view];
    v72 = @"view";
    flippyViewContainer5 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    v73 = flippyViewContainer5;
    v30 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v31 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v30];
    [view2 addConstraints:v31];

    contentView3 = [(PHCarPlayInCallViewController *)self view];
    v70 = @"view";
    flippyViewContainer3 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    v71 = flippyViewContainer3;
    v24 = &v71;
    v25 = &v70;
  }

  v32 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:1];
  v33 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v32];
  [contentView3 addConstraints:v33];

  v34 = objc_alloc_init(PHCarPlayMainInCallViewController);
  view3 = [(PHCarPlayMainInCallViewController *)v34 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(PHCarPlayInCallViewController *)self view];
  [view4 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  view5 = [(PHCarPlayMainInCallViewController *)v34 view];
  [view5 setFrame:{v38, v40, v42, v44}];

  [(PHCarPlayInCallViewController *)self addChildViewController:v34];
  flippyViewContainer6 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
  view6 = [(PHCarPlayMainInCallViewController *)v34 view];
  [flippyViewContainer6 addSubview:view6];

  [(PHCarPlayMainInCallViewController *)v34 setDelegate:self];
  [(PHCarPlayInCallViewController *)self setMainInCallViewController:v34];
  [(PHCarPlayInCallViewController *)self updateMainInCallControllerCalls];
  flippyViewContainer7 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
  v68 = @"view";
  mainInCallViewController = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  view7 = [mainInCallViewController view];
  v69 = view7;
  v51 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v52 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v51];
  [flippyViewContainer7 addConstraints:v52];

  flippyViewContainer8 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
  v66 = @"view";
  mainInCallViewController2 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  view8 = [mainInCallViewController2 view];
  v67 = view8;
  v56 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v57 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v56];
  [flippyViewContainer8 addConstraints:v57];

  view9 = [(PHCarPlayInCallViewController *)self view];
  [view9 setNeedsLayout];

  view10 = [(PHCarPlayInCallViewController *)self view];
  [view10 layoutIfNeeded];

  v60 = +[NSNotificationCenter defaultCenter];
  [v60 addObserver:self selector:"callStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  [v60 addObserver:self selector:"callStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
  [v60 addObserver:self selector:"conferencedCallsChangedNotification:" name:TUCallCenterConferenceParticipantsChangedNotification object:0];
  v61 = +[TUCallCenter sharedInstance];
  conversationManager = [v61 conversationManager];
  [conversationManager addDelegate:self queue:&_dispatch_main_q];

  v63 = objc_alloc_init(TUHardwareControlsBroadcaster);
  hardwareControlBroadcaster = self->_hardwareControlBroadcaster;
  self->_hardwareControlBroadcaster = v63;
}

- (void)updateMainInCallControllerCalls
{
  v3 = +[TUCallCenter sharedInstance];
  displayedAudioAndVideoCalls = [v3 displayedAudioAndVideoCalls];

  v4 = +[TUCallCenter sharedInstance];
  conferenceParticipantCalls = [v4 conferenceParticipantCalls];

  v6 = objc_opt_new();
  carPlayBannersEnabled = [v6 carPlayBannersEnabled];

  if (carPlayBannersEnabled && [displayedAudioAndVideoCalls count])
  {
    incomingCall = 0;
  }

  else
  {
    incomingCall = [(PHCarPlayInCallViewController *)self incomingCall];
  }

  mainInCallViewController = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  [mainInCallViewController setPrimaryCalls:displayedAudioAndVideoCalls conferencePhoneCalls:conferenceParticipantCalls incomingCall:incomingCall];
}

- (void)updateTPInCallControllerPhoneCalls
{
  [(PHCarPlayInCallViewController *)self updateMainInCallControllerCalls];
  incomingCall = [(PHCarPlayInCallViewController *)self incomingCall];
  if (incomingCall)
  {
    v3 = objc_opt_new();
    carPlayBannersEnabled = [v3 carPlayBannersEnabled];
  }

  else
  {
    carPlayBannersEnabled = 1;
  }

  _remoteViewControllerProxy = [(PHCarPlayInCallViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsBanners:carPlayBannersEnabled];

  v6 = +[UIApplication sharedApplication];
  delegate = [v6 delegate];
  [delegate setAllowsCarPlayBanners:carPlayBannersEnabled];

  mainInCallViewController = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  LODWORD(v6) = [mainInCallViewController isDismissable];

  if (v6)
  {
    [(PHCarPlayInCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    [(PHCarPlayInCallViewController *)self animateOutIfNecessary];
  }
}

- (id)incomingCall
{
  v2 = +[TUCallCenter sharedInstance];
  incomingCall = [v2 incomingCall];
  v4 = incomingCall;
  if (incomingCall)
  {
    incomingVideoCall = incomingCall;
  }

  else
  {
    v6 = +[TUCallCenter sharedInstance];
    incomingVideoCall = [v6 incomingVideoCall];
  }

  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 callsPassingTest:&stru_100357258];
  firstObject = [v8 firstObject];

  v10 = +[TUCallCenter sharedInstance];
  v11 = [v10 activeConversationForCall:firstObject];
  state = [v11 state];

  if (state == 1)
  {
    v13 = firstObject;

    incomingVideoCall = v13;
  }

  return incomingVideoCall;
}

- (void)animateOutIfNecessary
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = +[TUCallCenter sharedInstance];
    displayedAudioAndVideoCalls = [v16 displayedAudioAndVideoCalls];
    v4 = [displayedAudioAndVideoCalls count];
    v5 = +[TUCallCenter sharedInstance];
    conferenceParticipantCalls = [v5 conferenceParticipantCalls];
    v7 = [conferenceParticipantCalls count];
    v8 = +[TUCallCenter sharedInstance];
    incomingCall = [v8 incomingCall];
    v10 = +[TUCallCenter sharedInstance];
    *buf = 134218752;
    v19 = v4;
    v20 = 2048;
    v21 = v7;
    v22 = 1024;
    v23 = incomingCall != 0;
    v24 = 2048;
    currentAudioAndVideoCallCount = [v10 currentAudioAndVideoCallCount];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController: animateOutIfNecessary [Displayed calls: %lu, Conference calls: %lu, Incoming calls: %d, Audio and Video Calls: %lu]", buf, 0x26u);
  }

  if (![(PHCarPlayInCallViewController *)self activePhoneCallExists])
  {
    mainInCallViewController = [(PHCarPlayInCallViewController *)self mainInCallViewController];
    isDismissable = [mainInCallViewController isDismissable];

    if (isDismissable)
    {
      v13 = sub_100004F84();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Animating out", buf, 2u);
      }

      v14 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100036D38;
      block[3] = &unk_100356988;
      block[4] = self;
      dispatch_after(v14, &_dispatch_main_q, block);
    }
  }
}

- (BOOL)activePhoneCallExists
{
  v2 = +[TUCallCenter sharedInstance];
  displayedAudioAndVideoCalls = [v2 displayedAudioAndVideoCalls];
  v4 = [displayedAudioAndVideoCalls count];

  v5 = +[TUCallCenter sharedInstance];
  conferenceParticipantCalls = [v5 conferenceParticipantCalls];
  v7 = [conferenceParticipantCalls count];

  v8 = +[TUCallCenter sharedInstance];
  incomingCalls = [v8 incomingCalls];
  v10 = [incomingCalls count];

  v11 = +[TUCallCenter sharedInstance];
  currentAudioAndVideoCallCount = [v11 currentAudioAndVideoCallCount];

  return &v4[v7 + v10 + currentAudioAndVideoCallCount] != 0;
}

- (id)preferredFocusEnvironments
{
  mainInCallViewController = [(PHCarPlayInCallViewController *)self mainInCallViewController];

  if (mainInCallViewController)
  {
    mainInCallViewController2 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
    v8 = mainInCallViewController2;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PHCarPlayInCallViewController;
    preferredFocusEnvironments = [(PHCarPlayInCallViewController *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (void)dealloc
{
  [(PHCarPlayMainInCallViewController *)self->_mainInCallViewController setDelegate:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayInCallViewController;
  [(PHCarPlayInCallViewController *)&v4 dealloc];
}

- (PHCarPlayInCallViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PHCarPlayInCallViewController;
  v4 = [(PHCarPlayInCallViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"screenDidDisconnectNotification:" name:UIScreenDidDisconnectNotification object:0];
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController viewDidAppear:", &buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = PHCarPlayInCallViewController;
  [(PHCarPlayInCallViewController *)&v15 viewDidAppear:appearCopy];
  CGAffineTransformMakeScale(&v14, 1.5, 1.5);
  view = [(PHCarPlayInCallViewController *)self view];
  buf = v14;
  [view setTransform:&buf];

  view2 = [(PHCarPlayInCallViewController *)self view];
  [view2 setAlpha:0.0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100059DE0;
  v12[3] = &unk_100356988;
  v12[4] = self;
  [UIView animateWithDuration:v12 animations:&stru_100357238 completion:0.349999994];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"hardwareControlEventNotification:" name:TUCarPlayHardwareControlEventNotification object:0];

  v9 = +[TUCallCenter sharedInstance];
  currentAudioAndVideoCallCount = [v9 currentAudioAndVideoCallCount];

  if (!currentAudioAndVideoCallCount)
  {
    v11 = sub_100004F84();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController: appeared with no current calls, will call animateOutIfNecessary", &buf, 2u);
    }

    [(PHCarPlayInCallViewController *)self animateOutIfNecessary];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController viewDidDisappear:", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = PHCarPlayInCallViewController;
  [(PHCarPlayInCallViewController *)&v7 viewDidDisappear:disappearCopy];
  [(PHCarPlayInCallViewController *)self dismissViewControllerAnimated:0 completion:0];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:TUCarPlayHardwareControlEventNotification object:0];
}

- (void)muteStateChangedNotification:(id)notification
{
  v4 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall = [v4 frontmostAudioOrVideoCall];

  mainInCallViewController = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  [mainInCallViewController setIsMuted:{objc_msgSend(frontmostAudioOrVideoCall, "isUplinkMuted")}];
}

- (void)presentAddCallViewControllerRequestedFromInCallViewController:(id)controller
{
  v4 = objc_alloc_init(CNStarkContactsListViewController);
  contactsViewController = self->_contactsViewController;
  self->_contactsViewController = v4;

  v6 = [[UINavigationController alloc] initWithRootViewController:self->_contactsViewController];
  [v6 setDelegate:self];
  [(PHCarPlayInCallViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  view = [(PHCarPlayInCallViewController *)self view];
  window = [view window];
  screen = [window screen];

  v11 = [screen _capabilityForKey:_UIScreenCapabilityInteractionModelsKey];
  LOBYTE(window) = [v11 integerValue];

  if (window)
  {
    navigationItem = [(UIViewController *)viewControllerCopy navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    if (!rightBarButtonItem)
    {
      v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelAddCallViewController:"];
      navigationItem2 = [(UIViewController *)viewControllerCopy navigationItem];
      [navigationItem2 setRightBarButtonItem:v14];
    }
  }

  v16 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"backPressed:"];
  [v16 setAllowedPressTypes:&off_10036AA18];
  [v16 setDelegate:self];
  view2 = [controllerCopy view];

  [view2 addGestureRecognizer:v16];
  self->_nextBackDismissesNavController = self->_contactsViewController == viewControllerCopy;
}

- (void)backPressed:(id)pressed
{
  if (self->_nextBackDismissesNavController)
  {
    [(PHCarPlayInCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)presentKeypadViewControllerRequestedFromInCallViewController:(id)controller
{
  v5 = objc_alloc_init(PHCarPlayInCallKeypadViewController);
  v4 = [[UINavigationController alloc] initWithRootViewController:v5];
  [(PHCarPlayInCallViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)hardwareControlEventNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController received hardware control event notification: %@", &v17, 0xCu);
  }

  presentedViewController = [(PHCarPlayInCallViewController *)self presentedViewController];
  if (!presentedViewController || (v7 = presentedViewController, [(PHCarPlayInCallViewController *)self presentedViewController], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) != 0))
  {
    userInfo = [notificationCopy userInfo];
    v11 = [userInfo valueForKey:kTUCarPlayHardwareControlButtonKey];
    v12 = kTUCarPlayHardwareControlButtonKeypad;

    if (v11 == v12)
    {
      userInfo2 = [notificationCopy userInfo];
      v14 = [userInfo2 valueForKey:kTUCarPlayHardwareControlKeypadValueKey];
      v15 = [v14 characterAtIndex:0];

      v16 = sub_100004F84();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Will play DTMF tone because we heard about a hardware key being pressed", &v17, 2u);
      }

      [DialerController playDTMFToneForKey:v15];
    }
  }
}

- (void)screenDidDisconnectNotification:(id)notification
{
  object = [notification object];
  if ([object _userInterfaceIdiom] == 3)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      _remoteViewControllerProxy = [(PHCarPlayInCallViewController *)self _remoteViewControllerProxy];
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = _remoteViewControllerProxy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController (%@) heard about a disconnected screen, we'll dismiss outselves from (%@)", &v9, 0x16u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self];

    [(PHCarPlayInCallViewController *)self dismissViewControllerAnimated:0 completion:0];
    _remoteViewControllerProxy2 = [(PHCarPlayInCallViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy2 dismiss];
  }
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  if ([conversation state] == 1)
  {

    [(PHCarPlayInCallViewController *)self updateTPInCallControllerPhoneCalls];
  }
}

- (void)conversationManager:(id)manager letMeInRequestStateChangedForConversation:(id)conversation
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Let me in request state changed for conversation", v6, 2u);
  }

  [(PHCarPlayInCallViewController *)self updateTPInCallControllerPhoneCalls];
}

@end