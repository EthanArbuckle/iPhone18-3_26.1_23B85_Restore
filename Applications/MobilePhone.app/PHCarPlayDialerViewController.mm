@interface PHCarPlayDialerViewController
- (BOOL)_viewControllerWasSelected;
- (PHCarPlayDialerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)preferredFocusEnvironments;
- (unint64_t)dialerSupportedInterfaceOrientations;
- (void)callButtonPressed:(id)a3;
- (void)dealloc;
- (void)deleteButtonPressed:(id)a3;
- (void)hardwareControlEventNotification:(id)a3;
- (void)limitedUINotification:(id)a3;
- (void)loadView;
- (void)postMessageOverlayIfNeeded;
- (void)setLimitedSoftPhoneKeypad:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHCarPlayDialerViewController

- (PHCarPlayDialerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = PHCarPlayDialerViewController;
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

- (void)loadView
{
  [(PHCarPlayGenericViewController *)self setRespondsToEventsWhileInCall:0];
  v3 = [(PHCarPlayDialerViewController *)self navigationItem];
  v4 = [v3 navigationBar];
  [v4 setHidden:1];

  v5 = objc_alloc_init(UIView);
  [(PHCarPlayDialerViewController *)self setView:v5];

  v72 = [[PHCarPlayDialerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = [[DialerController alloc] initWithDialerView:v72 dialerType:1 contactStore:0 appType:1 orientationProvider:self];
  [(PHCarPlayGenericDialerViewController *)self setDialerController:v6];

  if ([UIApp userInterfaceStyle] == 1)
  {
    v7 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    [v7 setEdgesForExtendedLayout:0];
  }

  v8 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v9 = [v8 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  [v10 setShouldHideDeleteButtonWhenEmpty:1];

  v11 = [(PHCarPlayDialerViewController *)self view];
  v12 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v13 = [v12 view];
  [v11 addSubview:v13];

  v14 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  [(PHCarPlayDialerViewController *)self addChildViewController:v14];

  v15 = [(PHCarPlayDialerViewController *)self view];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v25 = [v24 view];
  [v25 setFrame:{v17, v19, v21, v23}];

  if (_os_feature_enabled_impl())
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor tableBackgroundColor];
  }
  v26 = ;
  v27 = [(PHCarPlayDialerViewController *)self view];
  [v27 setBackgroundColor:v26];

  v71 = [(PHCarPlayDialerViewController *)self view];
  v70 = [v71 safeAreaLayoutGuide];
  v68 = [v70 topAnchor];
  v69 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v67 = [v69 view];
  v66 = [v67 topAnchor];
  v65 = [v68 constraintEqualToAnchor:v66];
  v73[0] = v65;
  v64 = [(PHCarPlayDialerViewController *)self view];
  v63 = [v64 safeAreaLayoutGuide];
  v61 = [v63 bottomAnchor];
  v62 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v60 = [v62 view];
  v59 = [v60 bottomAnchor];
  v58 = [v61 constraintEqualToAnchor:v59];
  v73[1] = v58;
  v57 = [(PHCarPlayDialerViewController *)self view];
  v56 = [v57 safeAreaLayoutGuide];
  v54 = [v56 leftAnchor];
  v55 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v53 = [v55 view];
  v52 = [v53 leftAnchor];
  v28 = [v54 constraintEqualToAnchor:v52];
  v73[2] = v28;
  v29 = [(PHCarPlayDialerViewController *)self view];
  v30 = [v29 safeAreaLayoutGuide];
  v31 = [v30 rightAnchor];
  v32 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v33 = [v32 view];
  v34 = [v33 rightAnchor];
  v35 = [v31 constraintEqualToAnchor:v34];
  v73[3] = v35;
  v36 = [NSArray arrayWithObjects:v73 count:4];
  [NSLayoutConstraint activateConstraints:v36];

  v37 = +[NSNotificationCenter defaultCenter];
  v38 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v39 = [v38 dialerView];
  v40 = [v39 deleteButton];
  [v37 addObserver:self selector:"deleteButtonHide:" name:@"kPHCarPlayDeleteButtonHideNotification" object:v40];

  [(PHCarPlayDialerViewController *)self setLimitedSoftPhoneKeypad:+[PHCarPlayUtilities shouldLimitKeypadAccess]];
  v41 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"deleteButtonPressed:"];
  [v41 setMinimumPressDuration:0.0];
  [v41 setAllowedPressTypes:&off_100295510];
  v42 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v43 = [v42 dialerView];
  v44 = [v43 deleteButton];
  [v44 addGestureRecognizer:v41];

  v45 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"callButtonPressed:"];
  [v45 setMinimumPressDuration:0.0];
  [v45 setAllowedPressTypes:&off_100295528];
  v46 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v47 = [v46 dialerView];
  v48 = [v47 callButton];
  [v48 addGestureRecognizer:v45];

  v49 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_noOpGestureAction:"];
  [v49 setAllowedPressTypes:&off_100295540];
  v50 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v51 = [v50 dialerView];
  [v51 addGestureRecognizer:v49];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCarPlayDialerViewController;
  [(PHCarPlayDialerViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHCarPlayDialerViewController;
  [(PHCarPlayDialerViewController *)&v4 viewWillAppear:a3];
  [(PHCarPlayDialerViewController *)self setLimitedSoftPhoneKeypad:+[PHCarPlayUtilities shouldLimitKeypadAccess]];
  [(PHCarPlayDialerViewController *)self postMessageOverlayIfNeeded];
}

- (void)limitedUINotification:(id)a3
{
  v4 = +[PHCarPlayUtilities shouldLimitKeypadAccess];

  [(PHCarPlayDialerViewController *)self setLimitedSoftPhoneKeypad:v4];
}

- (void)setLimitedSoftPhoneKeypad:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __59__PHCarPlayDialerViewController_setLimitedSoftPhoneKeypad___block_invoke;
  v3[3] = &unk_100285120;
  v3[4] = self;
  v4 = a3;
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

    v7 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (_UISolariumEnabled())
    {
      v8 = [UIColor colorWithDynamicProvider:&__block_literal_global_21];
      v9 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
      [v9 setBackgroundColor:v8];
    }

    else
    {
      v8 = [(PHCarPlayDialerViewController *)self view];
      v9 = [v8 backgroundColor];
      v10 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
      [v10 setBackgroundColor:v9];
    }

    v11 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v11 setAlpha:0.95];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"KEYPAD_ACCESS_IS_LIMITED" value:&stru_10028F310 table:@"PHCarPlay"];
    v14 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v14 setTitleString:v13];

    v15 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v15 setHidden:0];

    v16 = [(PHCarPlayDialerViewController *)self view];
    [v16 setUserInteractionEnabled:0];

    v17 = [(PHCarPlayDialerViewController *)self view];
    v18 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    [v17 addSubview:v18];

    v45 = [(PHCarPlayDialerViewController *)self view];
    v43 = [v45 safeAreaLayoutGuide];
    v41 = [v43 topAnchor];
    v42 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    v40 = [v42 topAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v46[0] = v39;
    v38 = [(PHCarPlayDialerViewController *)self view];
    v37 = [v38 safeAreaLayoutGuide];
    v35 = [v37 bottomAnchor];
    v36 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    v34 = [v36 bottomAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v46[1] = v33;
    v32 = [(PHCarPlayDialerViewController *)self view];
    v31 = [v32 safeAreaLayoutGuide];
    v29 = [v31 leftAnchor];
    v30 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    v19 = [v30 leftAnchor];
    v20 = [v29 constraintEqualToAnchor:v19];
    v46[2] = v20;
    v21 = [(PHCarPlayDialerViewController *)self view];
    v22 = [v21 safeAreaLayoutGuide];
    v23 = [v22 rightAnchor];
    v24 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
    v25 = [v24 rightAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    v46[3] = v26;
    v27 = [NSArray arrayWithObjects:v46 count:4];
    [NSLayoutConstraint activateConstraints:v27];

    v28 = [(PHCarPlayDialerViewController *)self view];
    [v28 setNeedsFocusUpdate];
  }

  else if (![(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad])
  {
    v4 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];

    if (v4)
    {
      v5 = [(PHCarPlayGenericDialerViewController *)self noContentBannerView];
      [v5 removeFromSuperview];

      [(PHCarPlayGenericDialerViewController *)self setNoContentBannerView:0];
      v44 = [(PHCarPlayDialerViewController *)self view];
      [v44 setUserInteractionEnabled:1];
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

- (void)callButtonPressed:(id)a3
{
  v4 = [a3 state];
  v17 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v5 = [v17 dialerView];
  v6 = [v5 callButton];
  v7 = v6;
  if (v4 == 1)
  {
    [v6 setHighlighted:1];

LABEL_3:

    return;
  }

  [v6 setHighlighted:0];

  if (v4 != 3)
  {
    return;
  }

  v8 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v9 = [v8 digitsEntered];

  v10 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v17 = v10;
  if (!v9)
  {
    [v10 restoreLastDialedNumber];
    goto LABEL_3;
  }

  v11 = [v10 callProviderManager];
  v12 = [v11 telephonyProvider];

  if (v12)
  {
    v13 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    v14 = [v13 dialerView];
    v15 = [v14 callButton];
    [v15 setSelected:1];

    v16 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    [v16 performCallActionForCallProvider:v12];
  }

  else
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PHCarPlayDialerViewController callButtonPressed:v16];
    }
  }
}

- (void)deleteButtonPressed:(id)a3
{
  v4 = [a3 state];
  v8 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  v5 = [v8 dialerView];
  v6 = [v5 deleteButton];
  v7 = v6;
  if (v4 == 1)
  {
    [v6 setHighlighted:1];

    v8 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    [v8 performDeleteAction];
  }

  else
  {
    [v6 setHighlighted:0];
  }
}

- (void)hardwareControlEventNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCarPlayDialerViewController received hardware control event notification: %@", &v17, 0xCu);
  }

  if ([(PHCarPlayGenericViewController *)self shouldRespondToHardwareControlEvent])
  {
    v6 = [v4 userInfo];
    v7 = [v6 valueForKey:kTUCarPlayHardwareControlButtonKey];

    if (v7 == kTUCarPlayHardwareControlButtonGreenTelephone || v7 == kTUCarPlayHardwareControlButtonWhiteTelephone)
    {
      v9 = [(PHCarPlayGenericDialerViewController *)self dialerController];
      v10 = [v9 digitsEntered];

      v11 = [(PHCarPlayGenericDialerViewController *)self dialerController];
      v12 = v11;
      if (!v10)
      {
        [v11 restoreLastDialedNumber];
        v14 = v12;
        goto LABEL_20;
      }

      v13 = [v11 callProviderManager];
      v14 = [v13 telephonyProvider];

      if (v14)
      {
        v15 = [(PHCarPlayGenericDialerViewController *)self dialerController];
        [v15 performCallActionForCallProvider:v14];
      }

      else
      {
        v15 = PHDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [PHCarPlayDialerViewController callButtonPressed:v15];
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

        v14 = [(PHCarPlayGenericDialerViewController *)self dialerController];
        [v14 performDeleteAction];
LABEL_20:

        goto LABEL_21;
      }

      v14 = [(PHCarPlayGenericDialerViewController *)self dialerController];
      v15 = [v4 userInfo];
      v16 = [v15 valueForKey:kTUCarPlayHardwareControlKeypadValueKey];
      [v14 performCharacterAddAction:v16];
    }

    goto LABEL_20;
  }

LABEL_22:
}

- (id)preferredFocusEnvironments
{
  v3 = [(PHCarPlayGenericDialerViewController *)self dialerController];
  if (v3 && (v4 = v3, v5 = [(PHCarPlayGenericDialerViewController *)self limitedSoftPhoneKeypad], v4, (v5 & 1) == 0))
  {
    v7 = [(PHCarPlayGenericDialerViewController *)self dialerController];
    v8 = [v7 dialerView];
    v9 = [v8 phonePadView];
    v12 = v9;
    v6 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PHCarPlayDialerViewController;
    v6 = [(PHCarPlayDialerViewController *)&v11 preferredFocusEnvironments];
  }

  return v6;
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