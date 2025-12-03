@interface PHCarPlayInCallKeypadViewController
- (PHCarPlayInCallKeypadViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)preferredFocusEnvironments;
- (void)backButtonTapped:(id)tapped;
- (void)dealloc;
- (void)endButtonTapped:(id)tapped;
- (void)hardwareControlEventNotification:(id)notification;
- (void)limitedUINotification:(id)notification;
- (void)postMessageOverlayIfNeeded;
- (void)setLimitedSoftPhoneKeypad:(BOOL)keypad;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PHCarPlayInCallKeypadViewController

- (PHCarPlayInCallKeypadViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = PHCarPlayInCallKeypadViewController;
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

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayInCallKeypadViewController;
  [(PHCarPlayInCallKeypadViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  view = [(PHCarPlayInCallKeypadViewController *)self view];
  [view setAccessibilityIdentifier:@"PHCarPlayInCallKeypadView"];

  v51 = [[PHCarPlayInCallDialerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = [[DialerController alloc] initWithDialerView:v51 dialerType:2 contactStore:0 appType:2 orientationProvider:0];
  [(PHCarPlayGenericDialerViewController *)self setDialerController:v4];
  dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view2 = [dialerController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(PHCarPlayInCallKeypadViewController *)self view];
  dialerController2 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view4 = [dialerController2 view];
  [view3 addSubview:view4];

  v50 = v4;
  [(PHCarPlayInCallKeypadViewController *)self addChildViewController:v4];
  [v4 didMoveToParentViewController:self];
  dialerController3 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view5 = [dialerController3 view];
  topAnchor = [view5 topAnchor];
  view6 = [(PHCarPlayInCallKeypadViewController *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v52[0] = v43;
  dialerController4 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view7 = [dialerController4 view];
  bottomAnchor = [view7 bottomAnchor];
  view8 = [(PHCarPlayInCallKeypadViewController *)self view];
  safeAreaLayoutGuide2 = [view8 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v52[1] = v36;
  dialerController5 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view9 = [dialerController5 view];
  leftAnchor = [view9 leftAnchor];
  view10 = [(PHCarPlayInCallKeypadViewController *)self view];
  safeAreaLayoutGuide3 = [view10 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v52[2] = v10;
  dialerController6 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  view11 = [dialerController6 view];
  rightAnchor = [view11 rightAnchor];
  view12 = [(PHCarPlayInCallKeypadViewController *)self view];
  safeAreaLayoutGuide4 = [view12 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v52[3] = v17;
  v18 = [NSArray arrayWithObjects:v52 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  v19 = [UIBarButtonItem alloc];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"CARPLAY_CANCEL_BUTTON" value:&stru_10028F310 table:@"PHCarPlay"];
  v22 = [v19 initWithTitle:v21 style:0 target:self action:"backButtonTapped:"];
  navigationItem = [(PHCarPlayInCallKeypadViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v22];

  v24 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"backButtonTapped:"];
  [v24 setAllowedPressTypes:&off_1002954B0];
  view13 = [(PHCarPlayInCallKeypadViewController *)self view];
  [view13 addGestureRecognizer:v24];

  v26 = [UIButton buttonWithType:0];
  v27 = *(&self->super._carPlayExternalDevice + 1);
  *(&self->super._carPlayExternalDevice + 1) = v26;

  [*(&self->super._carPlayExternalDevice + 1) setConfigurationUpdateHandler:&__block_literal_global];
  [*(&self->super._carPlayExternalDevice + 1) addTarget:self action:"endButtonTapped:" forControlEvents:64];
  v28 = [[UIBarButtonItem alloc] initWithCustomView:*(&self->super._carPlayExternalDevice + 1)];
  navigationItem2 = [(PHCarPlayInCallKeypadViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v28];
}

void __50__PHCarPlayInCallKeypadViewController_viewDidLoad__block_invoke(id a1, UIButton *a2)
{
  v2 = a2;
  v3 = +[UIButtonConfiguration tintedButtonConfiguration];
  v22 = v2;
  if (([(UIButton *)v2 isHighlighted]& 1) != 0 || ([(UIButton *)v2 isSelected]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(UIButton *)v2 isFocused];
  }

  v5 = objc_alloc_init(NSMutableAttributedString);
  v6 = [UIImage systemImageNamed:@"phone.down.fill"];
  v7 = [NSTextAttachment textAttachmentWithImage:v6];

  v21 = v7;
  v8 = [NSAttributedString attributedStringWithAttachment:v7];
  [v5 appendAttributedString:v8];

  v9 = [NSAttributedString alloc];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"CARPLAY_END_BUTTON" value:&stru_10028F310 table:@"PHCarPlay"];
  v12 = [@" " stringByAppendingString:v11];
  v25[0] = NSFontAttributeName;
  v13 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
  v26[0] = v13;
  v25[1] = NSForegroundColorAttributeName;
  if (v4)
  {
    +[UIColor dynamicCarFocusedLabelColor];
  }

  else
  {
    +[UIColor systemRedColor];
  }
  v14 = ;
  v26[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v16 = [v9 initWithString:v12 attributes:v15];
  [v5 appendAttributedString:v16];

  [v3 setAttributedTitle:v5];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __50__PHCarPlayInCallKeypadViewController_viewDidLoad__block_invoke_2;
  v23[3] = &__block_descriptor_33_e36___NSDictionary_16__0__NSDictionary_8l;
  v24 = v4;
  [v3 setTitleTextAttributesTransformer:v23];
  v17 = +[UIBackgroundConfiguration clearConfiguration];
  if (v4)
  {
    v18 = +[UIColor dynamicCarFocusedColor];
    [v17 setBackgroundColor:v18];

    [v17 setCornerRadius:16.0];
    [v3 setBackground:v17];
    +[UIColor dynamicCarFocusedLabelColor];
  }

  else
  {
    v19 = +[UIColor clearColor];
    [v17 setBackgroundColor:v19];

    [v17 setCornerRadius:16.0];
    [v3 setBackground:v17];
    +[UIColor labelColor];
  }
  v20 = ;
  [v3 setBaseForegroundColor:v20];

  [(UIButton *)v22 setConfiguration:v3];
}

id __50__PHCarPlayInCallKeypadViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  if (*(a1 + 32))
  {
    +[UIColor dynamicCarFocusedLabelColor];
  }

  else
  {
    +[UIColor systemRedColor];
  }
  v4 = ;
  [v3 setObject:v4 forKeyedSubscript:NSForegroundColorAttributeName];

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(PHCarPlayInCallKeypadViewController *)self traitCollection];
  if (([traitCollection interactionModel] & 2) != 0)
  {

    goto LABEL_5;
  }

  traitCollection2 = [(PHCarPlayInCallKeypadViewController *)self traitCollection];
  primaryInteractionModel = [traitCollection2 primaryInteractionModel];

  if (primaryInteractionModel == 8)
  {
LABEL_5:
    v7 = objc_alloc_init(UIFocusContainerGuide);
    view = [(PHCarPlayInCallKeypadViewController *)self view];
    [view addLayoutGuide:v7];

    topAnchor = [v7 topAnchor];
    dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
    dialerView = [dialerController dialerView];
    phonePadView = [dialerView phonePadView];
    topAnchor2 = [phonePadView topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v24;
    bottomAnchor = [v7 bottomAnchor];
    dialerController2 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    dialerView2 = [dialerController2 dialerView];
    phonePadView2 = [dialerView2 phonePadView];
    bottomAnchor2 = [phonePadView2 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[1] = v18;
    leftAnchor = [v7 leftAnchor];
    view2 = [(PHCarPlayInCallKeypadViewController *)self view];
    leftAnchor2 = [view2 leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v30[2] = v12;
    rightAnchor = [v7 rightAnchor];
    view3 = [(PHCarPlayInCallKeypadViewController *)self view];
    rightAnchor2 = [view3 rightAnchor];
    v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v30[3] = v16;
    v17 = [NSArray arrayWithObjects:v30 count:4];

    [NSLayoutConstraint activateConstraints:v17];
  }
}

- (void)backButtonTapped:(id)tapped
{
  presentingViewController = [(PHCarPlayInCallKeypadViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)endButtonTapped:(id)tapped
{
  v4 = +[TUCallCenter sharedInstance];
  [v4 disconnectCurrentCall];

  presentingViewController = [(PHCarPlayInCallKeypadViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PHCarPlayInCallKeypadViewController;
  [(PHCarPlayInCallKeypadViewController *)&v4 viewWillAppear:appear];
  [(PHCarPlayInCallKeypadViewController *)self setLimitedSoftPhoneKeypad:+[PHCarPlayUtilities shouldLimitKeypadAccess]];
  [(PHCarPlayInCallKeypadViewController *)self postMessageOverlayIfNeeded];
}

- (void)limitedUINotification:(id)notification
{
  v4 = +[PHCarPlayUtilities shouldLimitKeypadAccess];

  [(PHCarPlayInCallKeypadViewController *)self setLimitedSoftPhoneKeypad:v4];
}

- (void)setLimitedSoftPhoneKeypad:(BOOL)keypad
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __65__PHCarPlayInCallKeypadViewController_setLimitedSoftPhoneKeypad___block_invoke;
  v3[3] = &unk_100285120;
  v3[4] = self;
  keypadCopy = keypad;
  dispatch_async(&_dispatch_main_q, v3);
}

id __65__PHCarPlayInCallKeypadViewController_setLimitedSoftPhoneKeypad___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = PHCarPlayInCallKeypadViewController;
  objc_msgSendSuper2(&v4, "setLimitedSoftPhoneKeypad:", v2);
  return [*(a1 + 32) postMessageOverlayIfNeeded];
}

- (void)postMessageOverlayIfNeeded
{
  if ([(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad]&& ([(PHCarPlayGenericDialerViewController *)self noContentBannerView], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = [[PHCarPlayNoContentBannerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(PHCarPlayGenericDialerViewController *)self setNoContentBannerView:v6];

    v7 = +[UIColor tableBackgroundColor];
    noContentBannerView = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView setBackgroundColor:v7];

    noContentBannerView2 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView2 setAlpha:0.95];

    noContentBannerView3 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"KEYPAD_ACCESS_IS_LIMITED" value:&stru_10028F310 table:@"PHCarPlay"];
    noContentBannerView4 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView4 setTitleString:v12];

    noContentBannerView5 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [noContentBannerView5 setHidden:0];

    view = [(PHCarPlayInCallKeypadViewController *)self view];
    [view setUserInteractionEnabled:0];

    view2 = [(PHCarPlayInCallKeypadViewController *)self view];
    noContentBannerView6 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [view2 addSubview:noContentBannerView6];

    view3 = [(PHCarPlayInCallKeypadViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide topAnchor];
    noContentBannerView7 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    topAnchor2 = [noContentBannerView7 topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[0] = v38;
    view4 = [(PHCarPlayInCallKeypadViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
    noContentBannerView8 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    bottomAnchor2 = [noContentBannerView8 bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45[1] = v32;
    view5 = [(PHCarPlayInCallKeypadViewController *)self view];
    safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
    leftAnchor = [safeAreaLayoutGuide3 leftAnchor];
    noContentBannerView9 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    leftAnchor2 = [noContentBannerView9 leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v45[2] = v19;
    view6 = [(PHCarPlayInCallKeypadViewController *)self view];
    safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
    rightAnchor = [safeAreaLayoutGuide4 rightAnchor];
    noContentBannerView10 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    rightAnchor2 = [noContentBannerView10 rightAnchor];
    v25 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v45[3] = v25;
    v26 = [NSArray arrayWithObjects:v45 count:4];
    [NSLayoutConstraint activateConstraints:v26];

    view7 = [(PHCarPlayInCallKeypadViewController *)self view];
    [view7 setNeedsFocusUpdate];
  }

  else if (![(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad])
  {
    noContentBannerView11 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];

    if (noContentBannerView11)
    {
      noContentBannerView12 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
      [noContentBannerView12 removeFromSuperview];

      [(PHCarPlayGenericDialerViewController *)self setNoContentBannerView:0];
      view8 = [(PHCarPlayInCallKeypadViewController *)self view];
      [view8 setUserInteractionEnabled:1];
    }
  }
}

- (void)hardwareControlEventNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallKeypadViewController received hardware control event notification: %@", &v12, 0xCu);
  }

  if ([(PHCarPlayGenericViewController *)self shouldRespondToHardwareControlEvent])
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo valueForKey:kTUCarPlayHardwareControlButtonKey];
    v8 = kTUCarPlayHardwareControlButtonKeypad;

    if (v7 == v8)
    {
      dialerController = [(PHCarPlayGenericDialerViewController *)self dialerController];
      userInfo2 = [notificationCopy userInfo];
      v11 = [userInfo2 valueForKey:kTUCarPlayHardwareControlKeypadValueKey];
      [dialerController performCharacterAddAction:v11];
    }
  }
}

- (id)preferredFocusEnvironments
{
  if ([(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad])
  {
    endButton = [(PHCarPlayInCallKeypadViewController *)self endButton];
    v9 = endButton;
    v4 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    endButton = [(PHCarPlayGenericDialerViewController *)self dialerController];
    dialerView = [endButton dialerView];
    phonePadView = [dialerView phonePadView];
    v8 = phonePadView;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
  }

  return v4;
}

@end