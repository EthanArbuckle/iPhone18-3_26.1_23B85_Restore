@interface PHCarPlayDialerViewController
- (BOOL)_viewControllerWasSelected;
- (PHCarPlayDialerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)preferredFocusEnvironments;
- (unint64_t)dialerSupportedInterfaceOrientations;
- (void)callButtonPressed:(id)pressed;
- (void)dealloc;
- (void)deleteButtonPressed:(id)pressed;
- (void)hardwareControlEventNotification:(id)notification;
- (void)limitedUINotification:(id)notification;
- (void)loadView;
- (void)postMessageOverlayIfNeeded;
- (void)setLimitedSoftPhoneKeypad:(BOOL)keypad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PHCarPlayDialerViewController

- (PHCarPlayDialerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = PHCarPlayDialerViewController;
  v4 = [(PHCarPlayGenericViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[AVExternalDevice currentCarPlayExternalDevice];
    [(PHCarPlayGenericDialerViewController *)v4 setCarPlayExternalDevice:v5];

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = AVExternalDeviceLimitedUIChangedNotification;
    carPlayExternalDevice = [(PHCarPlayGenericDialerViewController *)v4 carPlayExternalDevice];
    [v6 addObserver:v4 selector:"limitedUINotification:" name:v7 object:carPlayExternalDevice];
  }

  return v4;
}

- (void)loadView
{
  [(PHCarPlayGenericViewController *)self setRespondsToEventsWhileInCall:0];
  navigationItem = [(PHCarPlayDialerViewController *)self navigationItem];
  navigationBar = [navigationItem navigationBar];
  [navigationBar setHidden:1];

  v5 = objc_alloc_init(UIView);
  [(PHCarPlayDialerViewController *)self setView:v5];

  v72 = [[PHCarPlayDialerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = [[DialerController alloc] initWithDialerView:v72 dialerType:1 contactStore:0 appType:1 orientationProvider:self];
  [(PHCarPlayGenericDialerViewController *)self setDialerController:v6];

  if ([UIApp userInterfaceStyle] == 1)
  {
    dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
    [dialerController setEdgesForExtendedLayout:0];
  }

  dialerController2 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view = [dialerController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  dialerController3 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  [dialerController3 setShouldHideDeleteButtonWhenEmpty:1];

  view2 = [(PHCarPlayDialerViewController *)self view];
  dialerController4 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view3 = [dialerController4 view];
  [view2 addSubview:view3];

  dialerController5 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  [(PHCarPlayDialerViewController *)self addChildViewController:dialerController5];

  view4 = [(PHCarPlayDialerViewController *)self view];
  [view4 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  dialerController6 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view5 = [dialerController6 view];
  [view5 setFrame:{v17, v19, v21, v23}];

  if (_os_feature_enabled_impl())
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor tableBackgroundColor];
  }
  v26 = ;
  view6 = [(PHCarPlayDialerViewController *)self view];
  [view6 setBackgroundColor:v26];

  view7 = [(PHCarPlayDialerViewController *)self view];
  safeAreaLayoutGuide = [view7 safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  dialerController7 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view8 = [dialerController7 view];
  topAnchor2 = [view8 topAnchor];
  v65 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v73[0] = v65;
  view9 = [(PHCarPlayDialerViewController *)self view];
  safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  dialerController8 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view10 = [dialerController8 view];
  bottomAnchor2 = [view10 bottomAnchor];
  v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v73[1] = v58;
  view11 = [(PHCarPlayDialerViewController *)self view];
  safeAreaLayoutGuide3 = [view11 safeAreaLayoutGuide];
  leftAnchor = [safeAreaLayoutGuide3 leftAnchor];
  dialerController9 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view12 = [dialerController9 view];
  leftAnchor2 = [view12 leftAnchor];
  v28 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v73[2] = v28;
  view13 = [(PHCarPlayDialerViewController *)self view];
  safeAreaLayoutGuide4 = [view13 safeAreaLayoutGuide];
  rightAnchor = [safeAreaLayoutGuide4 rightAnchor];
  dialerController10 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view14 = [dialerController10 view];
  rightAnchor2 = [view14 rightAnchor];
  v35 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v73[3] = v35;
  v36 = [NSArray arrayWithObjects:v73 count:4];
  [NSLayoutConstraint activateConstraints:v36];

  v37 = +[NSNotificationCenter defaultCenter];
  dialerController11 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  dialerView = [dialerController11 dialerView];
  deleteButton = [dialerView deleteButton];
  [v37 addObserver:self selector:"deleteButtonHide:" name:@"kPHCarPlayDeleteButtonHideNotification" object:deleteButton];

  [(PHCarPlayDialerViewController *)self setLimitedSoftPhoneKeypad:+[PHCarPlayUtilities shouldLimitKeypadAccess]];
  v41 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"deleteButtonPressed:"];
  [v41 setMinimumPressDuration:0.0];
  [v41 setAllowedPressTypes:&off_100295510];
  dialerController12 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  dialerView2 = [dialerController12 dialerView];
  deleteButton2 = [dialerView2 deleteButton];
  [deleteButton2 addGestureRecognizer:v41];

  v45 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"callButtonPressed:"];
  [v45 setMinimumPressDuration:0.0];
  [v45 setAllowedPressTypes:&off_100295528];
  dialerController13 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  dialerView3 = [dialerController13 dialerView];
  callButton = [dialerView3 callButton];
  [callButton addGestureRecognizer:v45];

  v49 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_noOpGestureAction:"];
  [v49 setAllowedPressTypes:&off_100295540];
  dialerController14 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  dialerView4 = [dialerController14 dialerView];
  [dialerView4 addGestureRecognizer:v49];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayDialerViewController;
  [(PHCarPlayDialerViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PHCarPlayDialerViewController;
  [(PHCarPlayDialerViewController *)&v4 viewWillAppear:appear];
  [(PHCarPlayDialerViewController *)self setLimitedSoftPhoneKeypad:+[PHCarPlayUtilities shouldLimitKeypadAccess]];
  [(PHCarPlayDialerViewController *)self postMessageOverlayIfNeeded];
}

- (void)limitedUINotification:(id)notification
{
  v4 = +[PHCarPlayUtilities shouldLimitKeypadAccess];

  [(PHCarPlayDialerViewController *)self setLimitedSoftPhoneKeypad:v4];
}

- (void)setLimitedSoftPhoneKeypad:(BOOL)keypad
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __59__PHCarPlayDialerViewController_setLimitedSoftPhoneKeypad___block_invoke;
  v3[3] = &unk_100285120;
  v3[4] = self;
  keypadCopy = keypad;
  dispatch_async(&_dispatch_main_q, v3);
}

id __59__PHCarPlayDialerViewController_setLimitedSoftPhoneKeypad___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = PHCarPlayDialerViewController;
  objc_msgSendSuper2(&v4, "setLimitedSoftPhoneKeypad:", v2);
  return [*(a1 + 32) postMessageOverlayIfNeeded];
}

- (void)postMessageOverlayIfNeeded
{
  if ([(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad]&& ([(PHCarPlayGenericDialerViewController *)self noContentBannerView], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = [[PHCarPlayNoContentBannerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(PHCarPlayGenericDialerViewController *)self setNoContentBannerView:v6];

    noContentBannerView = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView setTranslatesAutoresizingMaskIntoConstraints:0];

    if (_UISolariumEnabled())
    {
      view = [UIColor colorWithDynamicProvider:&__block_literal_global_21];
      noContentBannerView2 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
      [noContentBannerView2 setBackgroundColor:view];
    }

    else
    {
      view = [(PHCarPlayDialerViewController *)self view];
      noContentBannerView2 = [view backgroundColor];
      noContentBannerView3 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
      [noContentBannerView3 setBackgroundColor:noContentBannerView2];
    }

    noContentBannerView4 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView4 setAlpha:0.95];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"KEYPAD_ACCESS_IS_LIMITED" value:&stru_10028F310 table:@"PHCarPlay"];
    noContentBannerView5 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView5 setTitleString:v13];

    noContentBannerView6 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView6 setHidden:0];

    view2 = [(PHCarPlayDialerViewController *)self view];
    [view2 setUserInteractionEnabled:0];

    view3 = [(PHCarPlayDialerViewController *)self view];
    noContentBannerView7 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [view3 addSubview:noContentBannerView7];

    view4 = [(PHCarPlayDialerViewController *)self view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide topAnchor];
    noContentBannerView8 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    topAnchor2 = [noContentBannerView8 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v46[0] = v39;
    view5 = [(PHCarPlayDialerViewController *)self view];
    safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
    noContentBannerView9 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    bottomAnchor2 = [noContentBannerView9 bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v46[1] = v33;
    view6 = [(PHCarPlayDialerViewController *)self view];
    safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
    leftAnchor = [safeAreaLayoutGuide3 leftAnchor];
    noContentBannerView10 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    leftAnchor2 = [noContentBannerView10 leftAnchor];
    v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v46[2] = v20;
    view7 = [(PHCarPlayDialerViewController *)self view];
    safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
    rightAnchor = [safeAreaLayoutGuide4 rightAnchor];
    noContentBannerView11 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    rightAnchor2 = [noContentBannerView11 rightAnchor];
    v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v46[3] = v26;
    v27 = [NSArray arrayWithObjects:v46 count:4];
    [NSLayoutConstraint activateConstraints:v27];

    view8 = [(PHCarPlayDialerViewController *)self view];
    [view8 setNeedsFocusUpdate];
  }

  else if (![(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad])
  {
    noContentBannerView12 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];

    if (noContentBannerView12)
    {
      noContentBannerView13 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
      [noContentBannerView13 removeFromSuperview];

      [(PHCarPlayGenericDialerViewController *)self setNoContentBannerView:0];
      view9 = [(PHCarPlayDialerViewController *)self view];
      [view9 setUserInteractionEnabled:1];
    }
  }
}

UIColor *__cdecl __59__PHCarPlayDialerViewController_postMessageOverlayIfNeeded__block_invoke(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 2)
  {
    v2 = 0.1;
    v3 = 0.1;
    v4 = 0.1;
  }

  else
  {
    v2 = 0.95;
    v3 = 0.95;
    v4 = 0.95;
  }

  v5 = [UIColor colorWithRed:v2 green:v3 blue:v4 alpha:0.95];

  return v5;
}

- (BOOL)_viewControllerWasSelected
{
  v3.receiver = self;
  v3.super_class = PHCarPlayDialerViewController;
  return [(PHCarPlayDialerViewController *)&v3 _viewControllerWasSelected];
}

- (void)callButtonPressed:(id)pressed
{
  state = [pressed state];
  dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
  dialerView = [dialerController dialerView];
  callButton = [dialerView callButton];
  v7 = callButton;
  if (state == 1)
  {
    [callButton setHighlighted:1];

LABEL_3:

    return;
  }

  [callButton setHighlighted:0];

  if (state != 3)
  {
    return;
  }

  dialerController2 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  digitsEntered = [dialerController2 digitsEntered];

  dialerController3 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  dialerController = dialerController3;
  if (!digitsEntered)
  {
    [dialerController3 restoreLastDialedNumber];
    goto LABEL_3;
  }

  callProviderManager = [dialerController3 callProviderManager];
  telephonyProvider = [callProviderManager telephonyProvider];

  if (telephonyProvider)
  {
    dialerController4 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    dialerView2 = [dialerController4 dialerView];
    callButton2 = [dialerView2 callButton];
    [callButton2 setSelected:1];

    dialerController5 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    [dialerController5 performCallActionForCallProvider:telephonyProvider];
  }

  else
  {
    dialerController5 = PHDefaultLog();
    if (os_log_type_enabled(dialerController5, OS_LOG_TYPE_ERROR))
    {
      [PHCarPlayDialerViewController callButtonPressed:dialerController5];
    }
  }
}

- (void)deleteButtonPressed:(id)pressed
{
  state = [pressed state];
  dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
  dialerView = [dialerController dialerView];
  deleteButton = [dialerView deleteButton];
  v7 = deleteButton;
  if (state == 1)
  {
    [deleteButton setHighlighted:1];

    dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
    [dialerController performDeleteAction];
  }

  else
  {
    [deleteButton setHighlighted:0];
  }
}

- (void)hardwareControlEventNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayDialerViewController received hardware control event notification: %@", &v17, 0xCu);
  }

  if ([(PHCarPlayGenericViewController *)self shouldRespondToHardwareControlEvent])
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo valueForKey:kTUCarPlayHardwareControlButtonKey];

    if (v7 == kTUCarPlayHardwareControlButtonGreenTelephone || v7 == kTUCarPlayHardwareControlButtonWhiteTelephone)
    {
      dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
      digitsEntered = [dialerController digitsEntered];

      dialerController2 = [(PHCarPlayGenericDialerViewController *)self dialerController];
      v12 = dialerController2;
      if (!digitsEntered)
      {
        [dialerController2 restoreLastDialedNumber];
        telephonyProvider = v12;
        goto LABEL_20;
      }

      callProviderManager = [dialerController2 callProviderManager];
      telephonyProvider = [callProviderManager telephonyProvider];

      if (telephonyProvider)
      {
        dialerController3 = [(PHCarPlayGenericDialerViewController *)self dialerController];
        [dialerController3 performCallActionForCallProvider:telephonyProvider];
      }

      else
      {
        dialerController3 = PHDefaultLog();
        if (os_log_type_enabled(dialerController3, OS_LOG_TYPE_ERROR))
        {
          [PHCarPlayDialerViewController callButtonPressed:dialerController3];
        }
      }
    }

    else
    {
      if (v7 != kTUCarPlayHardwareControlButtonKeypad)
      {
        if (v7 != kTUCarPlayHardwareControlButtonDelete)
        {
LABEL_21:

          goto LABEL_22;
        }

        telephonyProvider = [(PHCarPlayGenericDialerViewController *)self dialerController];
        [telephonyProvider performDeleteAction];
LABEL_20:

        goto LABEL_21;
      }

      telephonyProvider = [(PHCarPlayGenericDialerViewController *)self dialerController];
      dialerController3 = [notificationCopy userInfo];
      v16 = [dialerController3 valueForKey:kTUCarPlayHardwareControlKeypadValueKey];
      [telephonyProvider performCharacterAddAction:v16];
    }

    goto LABEL_20;
  }

LABEL_22:
}

- (id)preferredFocusEnvironments
{
  dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
  if (dialerController && (v4 = dialerController, v5 = [(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad], v4, (v5 & 1) == 0))
  {
    dialerController2 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    dialerView = [dialerController2 dialerView];
    phonePadView = [dialerView phonePadView];
    v12 = phonePadView;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PHCarPlayDialerViewController;
    preferredFocusEnvironments = [(PHCarPlayDialerViewController *)&v11 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (unint64_t)dialerSupportedInterfaceOrientations
{
  if ([UIApp contentViewCanRotate])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end