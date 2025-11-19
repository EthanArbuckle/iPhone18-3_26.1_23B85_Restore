@interface PHCarPlayInCallViewController
- (BOOL)activePhoneCallExists;
- (PHCarPlayInCallViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)incomingCall;
- (id)preferredFocusEnvironments;
- (void)animateOutIfNecessary;
- (void)backPressed:(id)a3;
- (void)conversationManager:(id)a3 letMeInRequestStateChangedForConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)dealloc;
- (void)hardwareControlEventNotification:(id)a3;
- (void)loadView;
- (void)muteStateChangedNotification:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presentAddCallViewControllerRequestedFromInCallViewController:(id)a3;
- (void)presentKeypadViewControllerRequestedFromInCallViewController:(id)a3;
- (void)screenDidDisconnectNotification:(id)a3;
- (void)updateMainInCallControllerCalls;
- (void)updateTPInCallControllerPhoneCalls;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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
    v16 = [v7 contentView];
    v17 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    [v16 addSubview:v17];

    v18 = [v7 contentView];
    v76 = @"view";
    v19 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    v77 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v21 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v20];
    [v18 addConstraints:v21];

    v22 = [v7 contentView];
    v74 = @"view";
    v23 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    v75 = v23;
    v24 = &v75;
    v25 = &v74;
  }

  else
  {
    v26 = [(PHCarPlayInCallViewController *)self view];
    v27 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    [v26 addSubview:v27];

    v28 = [(PHCarPlayInCallViewController *)self view];
    v72 = @"view";
    v29 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    v73 = v29;
    v30 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v31 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v30];
    [v28 addConstraints:v31];

    v22 = [(PHCarPlayInCallViewController *)self view];
    v70 = @"view";
    v23 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
    v71 = v23;
    v24 = &v71;
    v25 = &v70;
  }

  v32 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:1];
  v33 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v32];
  [v22 addConstraints:v33];

  v34 = objc_alloc_init(PHCarPlayMainInCallViewController);
  v35 = [(PHCarPlayMainInCallViewController *)v34 view];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [(PHCarPlayInCallViewController *)self view];
  [v36 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(PHCarPlayMainInCallViewController *)v34 view];
  [v45 setFrame:{v38, v40, v42, v44}];

  [(PHCarPlayInCallViewController *)self addChildViewController:v34];
  v46 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
  v47 = [(PHCarPlayMainInCallViewController *)v34 view];
  [v46 addSubview:v47];

  [(PHCarPlayMainInCallViewController *)v34 setDelegate:self];
  [(PHCarPlayInCallViewController *)self setMainInCallViewController:v34];
  [(PHCarPlayInCallViewController *)self updateMainInCallControllerCalls];
  v48 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
  v68 = @"view";
  v49 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  v50 = [v49 view];
  v69 = v50;
  v51 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v52 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:0 views:v51];
  [v48 addConstraints:v52];

  v53 = [(PHCarPlayInCallViewController *)self flippyViewContainer];
  v66 = @"view";
  v54 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  v55 = [v54 view];
  v67 = v55;
  v56 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v57 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v56];
  [v53 addConstraints:v57];

  v58 = [(PHCarPlayInCallViewController *)self view];
  [v58 setNeedsLayout];

  v59 = [(PHCarPlayInCallViewController *)self view];
  [v59 layoutIfNeeded];

  v60 = +[NSNotificationCenter defaultCenter];
  [v60 addObserver:self selector:"callStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  [v60 addObserver:self selector:"callStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
  [v60 addObserver:self selector:"conferencedCallsChangedNotification:" name:TUCallCenterConferenceParticipantsChangedNotification object:0];
  v61 = +[TUCallCenter sharedInstance];
  v62 = [v61 conversationManager];
  [v62 addDelegate:self queue:&_dispatch_main_q];

  v63 = objc_alloc_init(TUHardwareControlsBroadcaster);
  hardwareControlBroadcaster = self->_hardwareControlBroadcaster;
  self->_hardwareControlBroadcaster = v63;
}

- (void)updateMainInCallControllerCalls
{
  v3 = +[TUCallCenter sharedInstance];
  v10 = [v3 displayedAudioAndVideoCalls];

  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 conferenceParticipantCalls];

  v6 = objc_opt_new();
  v7 = [v6 carPlayBannersEnabled];

  if (v7 && [v10 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(PHCarPlayInCallViewController *)self incomingCall];
  }

  v9 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  [v9 setPrimaryCalls:v10 conferencePhoneCalls:v5 incomingCall:v8];
}

- (void)updateTPInCallControllerPhoneCalls
{
  [(PHCarPlayInCallViewController *)self updateMainInCallControllerCalls];
  v9 = [(PHCarPlayInCallViewController *)self incomingCall];
  if (v9)
  {
    v3 = objc_opt_new();
    v4 = [v3 carPlayBannersEnabled];
  }

  else
  {
    v4 = 1;
  }

  v5 = [(PHCarPlayInCallViewController *)self _remoteViewControllerProxy];
  [v5 setAllowsBanners:v4];

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  [v7 setAllowsCarPlayBanners:v4];

  v8 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  LODWORD(v6) = [v8 isDismissable];

  if (v6)
  {
    [(PHCarPlayInCallViewController *)self dismissViewControllerAnimated:1 completion:0];
    [(PHCarPlayInCallViewController *)self animateOutIfNecessary];
  }
}

- (id)incomingCall
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 incomingCall];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[TUCallCenter sharedInstance];
    v5 = [v6 incomingVideoCall];
  }

  v7 = +[TUCallCenter sharedInstance];
  v8 = [v7 callsPassingTest:&stru_100357258];
  v9 = [v8 firstObject];

  v10 = +[TUCallCenter sharedInstance];
  v11 = [v10 activeConversationForCall:v9];
  v12 = [v11 state];

  if (v12 == 1)
  {
    v13 = v9;

    v5 = v13;
  }

  return v5;
}

- (void)animateOutIfNecessary
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = +[TUCallCenter sharedInstance];
    v15 = [v16 displayedAudioAndVideoCalls];
    v4 = [v15 count];
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v5 conferenceParticipantCalls];
    v7 = [v6 count];
    v8 = +[TUCallCenter sharedInstance];
    v9 = [v8 incomingCall];
    v10 = +[TUCallCenter sharedInstance];
    *buf = 134218752;
    v19 = v4;
    v20 = 2048;
    v21 = v7;
    v22 = 1024;
    v23 = v9 != 0;
    v24 = 2048;
    v25 = [v10 currentAudioAndVideoCallCount];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController: animateOutIfNecessary [Displayed calls: %lu, Conference calls: %lu, Incoming calls: %d, Audio and Video Calls: %lu]", buf, 0x26u);
  }

  if (![(PHCarPlayInCallViewController *)self activePhoneCallExists])
  {
    v11 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
    v12 = [v11 isDismissable];

    if (v12)
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
  v3 = [v2 displayedAudioAndVideoCalls];
  v4 = [v3 count];

  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 conferenceParticipantCalls];
  v7 = [v6 count];

  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 incomingCalls];
  v10 = [v9 count];

  v11 = +[TUCallCenter sharedInstance];
  v12 = [v11 currentAudioAndVideoCallCount];

  return &v4[v7 + v10 + v12] != 0;
}

- (id)preferredFocusEnvironments
{
  v3 = [(PHCarPlayInCallViewController *)self mainInCallViewController];

  if (v3)
  {
    v4 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
    v8 = v4;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PHCarPlayInCallViewController;
    v5 = [(PHCarPlayInCallViewController *)&v7 preferredFocusEnvironments];
  }

  return v5;
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

- (PHCarPlayInCallViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PHCarPlayInCallViewController;
  v4 = [(PHCarPlayInCallViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"screenDidDisconnectNotification:" name:UIScreenDidDisconnectNotification object:0];
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController viewDidAppear:", &buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = PHCarPlayInCallViewController;
  [(PHCarPlayInCallViewController *)&v15 viewDidAppear:v3];
  CGAffineTransformMakeScale(&v14, 1.5, 1.5);
  v6 = [(PHCarPlayInCallViewController *)self view];
  buf = v14;
  [v6 setTransform:&buf];

  v7 = [(PHCarPlayInCallViewController *)self view];
  [v7 setAlpha:0.0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100059DE0;
  v12[3] = &unk_100356988;
  v12[4] = self;
  [UIView animateWithDuration:v12 animations:&stru_100357238 completion:0.349999994];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"hardwareControlEventNotification:" name:TUCarPlayHardwareControlEventNotification object:0];

  v9 = +[TUCallCenter sharedInstance];
  v10 = [v9 currentAudioAndVideoCallCount];

  if (!v10)
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

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController viewDidDisappear:", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = PHCarPlayInCallViewController;
  [(PHCarPlayInCallViewController *)&v7 viewDidDisappear:v3];
  [(PHCarPlayInCallViewController *)self dismissViewControllerAnimated:0 completion:0];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:TUCarPlayHardwareControlEventNotification object:0];
}

- (void)muteStateChangedNotification:(id)a3
{
  v4 = +[TUCallCenter sharedInstance];
  v6 = [v4 frontmostAudioOrVideoCall];

  v5 = [(PHCarPlayInCallViewController *)self mainInCallViewController];
  [v5 setIsMuted:{objc_msgSend(v6, "isUplinkMuted")}];
}

- (void)presentAddCallViewControllerRequestedFromInCallViewController:(id)a3
{
  v4 = objc_alloc_init(CNStarkContactsListViewController);
  contactsViewController = self->_contactsViewController;
  self->_contactsViewController = v4;

  v6 = [[UINavigationController alloc] initWithRootViewController:self->_contactsViewController];
  [v6 setDelegate:self];
  [(PHCarPlayInCallViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v18 = a4;
  v7 = a3;
  v8 = [(PHCarPlayInCallViewController *)self view];
  v9 = [v8 window];
  v10 = [v9 screen];

  v11 = [v10 _capabilityForKey:_UIScreenCapabilityInteractionModelsKey];
  LOBYTE(v9) = [v11 integerValue];

  if (v9)
  {
    v12 = [(UIViewController *)v18 navigationItem];
    v13 = [v12 rightBarButtonItem];

    if (!v13)
    {
      v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelAddCallViewController:"];
      v15 = [(UIViewController *)v18 navigationItem];
      [v15 setRightBarButtonItem:v14];
    }
  }

  v16 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"backPressed:"];
  [v16 setAllowedPressTypes:&off_10036AA18];
  [v16 setDelegate:self];
  v17 = [v7 view];

  [v17 addGestureRecognizer:v16];
  self->_nextBackDismissesNavController = self->_contactsViewController == v18;
}

- (void)backPressed:(id)a3
{
  if (self->_nextBackDismissesNavController)
  {
    [(PHCarPlayInCallViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)presentKeypadViewControllerRequestedFromInCallViewController:(id)a3
{
  v5 = objc_alloc_init(PHCarPlayInCallKeypadViewController);
  v4 = [[UINavigationController alloc] initWithRootViewController:v5];
  [(PHCarPlayInCallViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)hardwareControlEventNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController received hardware control event notification: %@", &v17, 0xCu);
  }

  v6 = [(PHCarPlayInCallViewController *)self presentedViewController];
  if (!v6 || (v7 = v6, [(PHCarPlayInCallViewController *)self presentedViewController], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) != 0))
  {
    v10 = [v4 userInfo];
    v11 = [v10 valueForKey:kTUCarPlayHardwareControlButtonKey];
    v12 = kTUCarPlayHardwareControlButtonKeypad;

    if (v11 == v12)
    {
      v13 = [v4 userInfo];
      v14 = [v13 valueForKey:kTUCarPlayHardwareControlKeypadValueKey];
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

- (void)screenDidDisconnectNotification:(id)a3
{
  v4 = [a3 object];
  if ([v4 _userInterfaceIdiom] == 3)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PHCarPlayInCallViewController *)self _remoteViewControllerProxy];
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallViewController (%@) heard about a disconnected screen, we'll dismiss outselves from (%@)", &v9, 0x16u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self];

    [(PHCarPlayInCallViewController *)self dismissViewControllerAnimated:0 completion:0];
    v8 = [(PHCarPlayInCallViewController *)self _remoteViewControllerProxy];
    [v8 dismiss];
  }
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  if ([a4 state] == 1)
  {

    [(PHCarPlayInCallViewController *)self updateTPInCallControllerPhoneCalls];
  }
}

- (void)conversationManager:(id)a3 letMeInRequestStateChangedForConversation:(id)a4
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