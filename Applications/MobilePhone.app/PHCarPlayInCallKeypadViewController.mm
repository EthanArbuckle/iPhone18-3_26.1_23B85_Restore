@interface PHCarPlayInCallKeypadViewController
- (PHCarPlayInCallKeypadViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)preferredFocusEnvironments;
- (void)backButtonTapped:(id)a3;
- (void)dealloc;
- (void)endButtonTapped:(id)a3;
- (void)hardwareControlEventNotification:(id)a3;
- (void)limitedUINotification:(id)a3;
- (void)postMessageOverlayIfNeeded;
- (void)setLimitedSoftPhoneKeypad:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHCarPlayInCallKeypadViewController

- (PHCarPlayInCallKeypadViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = PHCarPlayInCallKeypadViewController;
  v4 = [(PHCarPlayGenericViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[AVExternalDevice currentCarPlayExternalDevice];
    [(PHCarPlayGenericDialerViewController *)v4 setCarPlayExternalDevice:v5];

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = AVExternalDeviceLimitedUIChangedNotification;
    v8 = [(PHCarPlayGenericDialerViewController *)v4 carPlayExternalDevice];
    [v6 addObserver:v4 selector:"limitedUINotification:" name:v7 object:v8];
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
  v3 = [(PHCarPlayInCallKeypadViewController *)self view];
  [v3 setAccessibilityIdentifier:@"PHCarPlayInCallKeypadView"];

  v51 = [[PHCarPlayInCallDialerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = [[DialerController alloc] initWithDialerView:v51 dialerType:2 contactStore:0 appType:2 orientationProvider:0];
  [(PHCarPlayGenericDialerViewController *)self setDialerController:v4];
  v5 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v6 = [v5 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(PHCarPlayInCallKeypadViewController *)self view];
  v8 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v9 = [v8 view];
  [v7 addSubview:v9];

  v50 = v4;
  [(PHCarPlayInCallKeypadViewController *)self addChildViewController:v4];
  [v4 didMoveToParentViewController:self];
  v49 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v48 = [v49 view];
  v46 = [v48 topAnchor];
  v47 = [(PHCarPlayInCallKeypadViewController *)self view];
  v45 = [v47 safeAreaLayoutGuide];
  v44 = [v45 topAnchor];
  v43 = [v46 constraintEqualToAnchor:v44];
  v52[0] = v43;
  v42 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v41 = [v42 view];
  v39 = [v41 bottomAnchor];
  v40 = [(PHCarPlayInCallKeypadViewController *)self view];
  v38 = [v40 safeAreaLayoutGuide];
  v37 = [v38 bottomAnchor];
  v36 = [v39 constraintEqualToAnchor:v37];
  v52[1] = v36;
  v35 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v34 = [v35 view];
  v32 = [v34 leftAnchor];
  v33 = [(PHCarPlayInCallKeypadViewController *)self view];
  v31 = [v33 safeAreaLayoutGuide];
  v30 = [v31 leftAnchor];
  v10 = [v32 constraintEqualToAnchor:v30];
  v52[2] = v10;
  v11 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v12 = [v11 view];
  v13 = [v12 rightAnchor];
  v14 = [(PHCarPlayInCallKeypadViewController *)self view];
  v15 = [v14 safeAreaLayoutGuide];
  v16 = [v15 rightAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];
  v52[3] = v17;
  v18 = [NSArray arrayWithObjects:v52 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  v19 = [UIBarButtonItem alloc];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"CARPLAY_CANCEL_BUTTON" value:&stru_10028F310 table:@"PHCarPlay"];
  v22 = [v19 initWithTitle:v21 style:0 target:self action:"backButtonTapped:"];
  v23 = [(PHCarPlayInCallKeypadViewController *)self navigationItem];
  [v23 setLeftBarButtonItem:v22];

  v24 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"backButtonTapped:"];
  [v24 setAllowedPressTypes:&off_1002954B0];
  v25 = [(PHCarPlayInCallKeypadViewController *)self view];
  [v25 addGestureRecognizer:v24];

  v26 = [UIButton buttonWithType:0];
  v27 = *(&self->super._carPlayExternalDevice + 1);
  *(&self->super._carPlayExternalDevice + 1) = v26;

  [*(&self->super._carPlayExternalDevice + 1) setConfigurationUpdateHandler:&__block_literal_global];
  [*(&self->super._carPlayExternalDevice + 1) addTarget:self action:"endButtonTapped:" forControlEvents:64];
  v28 = [[UIBarButtonItem alloc] initWithCustomView:*(&self->super._carPlayExternalDevice + 1)];
  v29 = [(PHCarPlayInCallKeypadViewController *)self navigationItem];
  [v29 setRightBarButtonItem:v28];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(PHCarPlayInCallKeypadViewController *)self traitCollection];
  if (([v4 interactionModel] & 2) != 0)
  {

    goto LABEL_5;
  }

  v5 = [(PHCarPlayInCallKeypadViewController *)self traitCollection];
  v6 = [v5 primaryInteractionModel];

  if (v6 == 8)
  {
LABEL_5:
    v7 = objc_alloc_init(UIFocusContainerGuide);
    v8 = [(PHCarPlayInCallKeypadViewController *)self view];
    [v8 addLayoutGuide:v7];

    v27 = [v7 topAnchor];
    v29 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    v28 = [v29 dialerView];
    v26 = [v28 phonePadView];
    v25 = [v26 topAnchor];
    v24 = [v27 constraintEqualToAnchor:v25];
    v30[0] = v24;
    v21 = [v7 bottomAnchor];
    v23 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    v22 = [v23 dialerView];
    v20 = [v22 phonePadView];
    v19 = [v20 bottomAnchor];
    v18 = [v21 constraintEqualToAnchor:v19];
    v30[1] = v18;
    v9 = [v7 leftAnchor];
    v10 = [(PHCarPlayInCallKeypadViewController *)self view];
    v11 = [v10 leftAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v30[2] = v12;
    v13 = [v7 rightAnchor];
    v14 = [(PHCarPlayInCallKeypadViewController *)self view];
    v15 = [v14 rightAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v30[3] = v16;
    v17 = [NSArray arrayWithObjects:v30 count:4];

    [NSLayoutConstraint activateConstraints:v17];
  }
}

- (void)backButtonTapped:(id)a3
{
  v3 = [(PHCarPlayInCallKeypadViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)endButtonTapped:(id)a3
{
  v4 = +[TUCallCenter sharedInstance];
  [v4 disconnectCurrentCall];

  v5 = [(PHCarPlayInCallKeypadViewController *)self presentingViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHCarPlayInCallKeypadViewController;
  [(PHCarPlayInCallKeypadViewController *)&v4 viewWillAppear:a3];
  [(PHCarPlayInCallKeypadViewController *)self setLimitedSoftPhoneKeypad:+[PHCarPlayUtilities shouldLimitKeypadAccess]];
  [(PHCarPlayInCallKeypadViewController *)self postMessageOverlayIfNeeded];
}

- (void)limitedUINotification:(id)a3
{
  v4 = +[PHCarPlayUtilities shouldLimitKeypadAccess];

  [(PHCarPlayInCallKeypadViewController *)self setLimitedSoftPhoneKeypad:v4];
}

- (void)setLimitedSoftPhoneKeypad:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __65__PHCarPlayInCallKeypadViewController_setLimitedSoftPhoneKeypad___block_invoke;
  v3[3] = &unk_100285120;
  v3[4] = self;
  v4 = a3;
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
    v8 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v8 setBackgroundColor:v7];

    v9 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v9 setAlpha:0.95];

    v10 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"KEYPAD_ACCESS_IS_LIMITED" value:&stru_10028F310 table:@"PHCarPlay"];
    v13 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v13 setTitleString:v12];

    v14 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v14 setHidden:0];

    v15 = [(PHCarPlayInCallKeypadViewController *)self view];
    [v15 setUserInteractionEnabled:0];

    v16 = [(PHCarPlayInCallKeypadViewController *)self view];
    v17 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v16 addSubview:v17];

    v44 = [(PHCarPlayInCallKeypadViewController *)self view];
    v42 = [v44 safeAreaLayoutGuide];
    v40 = [v42 topAnchor];
    v41 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    v39 = [v41 topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v45[0] = v38;
    v37 = [(PHCarPlayInCallKeypadViewController *)self view];
    v36 = [v37 safeAreaLayoutGuide];
    v34 = [v36 bottomAnchor];
    v35 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    v33 = [v35 bottomAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v45[1] = v32;
    v31 = [(PHCarPlayInCallKeypadViewController *)self view];
    v30 = [v31 safeAreaLayoutGuide];
    v28 = [v30 leftAnchor];
    v29 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    v18 = [v29 leftAnchor];
    v19 = [v28 constraintEqualToAnchor:v18];
    v45[2] = v19;
    v20 = [(PHCarPlayInCallKeypadViewController *)self view];
    v21 = [v20 safeAreaLayoutGuide];
    v22 = [v21 rightAnchor];
    v23 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    v24 = [v23 rightAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v45[3] = v25;
    v26 = [NSArray arrayWithObjects:v45 count:4];
    [NSLayoutConstraint activateConstraints:v26];

    v27 = [(PHCarPlayInCallKeypadViewController *)self view];
    [v27 setNeedsFocusUpdate];
  }

  else if (![(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad])
  {
    v4 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];

    if (v4)
    {
      v5 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
      [v5 removeFromSuperview];

      [(PHCarPlayGenericDialerViewController *)self setNoContentBannerView:0];
      v43 = [(PHCarPlayInCallKeypadViewController *)self view];
      [v43 setUserInteractionEnabled:1];
    }
  }
}

- (void)hardwareControlEventNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayInCallKeypadViewController received hardware control event notification: %@", &v12, 0xCu);
  }

  if ([(PHCarPlayGenericViewController *)self shouldRespondToHardwareControlEvent])
  {
    v6 = [v4 userInfo];
    v7 = [v6 valueForKey:kTUCarPlayHardwareControlButtonKey];
    v8 = kTUCarPlayHardwareControlButtonKeypad;

    if (v7 == v8)
    {
      v9 = [(PHCarPlayGenericDialerViewController *)self dialerController];
      v10 = [v4 userInfo];
      v11 = [v10 valueForKey:kTUCarPlayHardwareControlKeypadValueKey];
      [v9 performCharacterAddAction:v11];
    }
  }
}

- (id)preferredFocusEnvironments
{
  if ([(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad])
  {
    v3 = [(PHCarPlayInCallKeypadViewController *)self endButton];
    v9 = v3;
    v4 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v3 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    v5 = [v3 dialerView];
    v6 = [v5 phonePadView];
    v8 = v6;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
  }

  return v4;
}

@end