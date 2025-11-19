@interface HSPCSiriSetupViewController
- (BOOL)_siriEnabledOnCurrentDevice;
- (HSPCSiriSetupViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_disableVoiceRecognition;
- (void)_handleFooterLabelTouchForOpenURL:(id)a3;
- (void)_launchSiriPrivacySheet;
- (void)viewDidLoad;
@end

@implementation HSPCSiriSetupViewController

- (HSPCSiriSetupViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(UIView);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v9 = qword_1000E6708;
  v28 = qword_1000E6708;
  if (!qword_1000E6708)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100034088;
    v24[3] = &unk_1000C6E98;
    v24[4] = &v25;
    sub_100034088(v24);
    v9 = v26[3];
  }

  v10 = v9;
  _Block_object_dispose(&v25, 8);
  v11 = [[v9 alloc] initWithFrame:{0.0, 0.0, 198.0, 198.0}];
  [v11 setMode:3];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v11];
  v23.receiver = self;
  v23.super_class = HSPCSiriSetupViewController;
  v12 = [(HSPCFixedSizeCenterContentViewController *)&v23 initWithCenterContentView:v8 size:198.0, 198.0];
  v13 = v12;
  if (v12)
  {
    [(HSPCSiriSetupViewController *)v12 setConfig:v7];
    [(HSPCSiriSetupViewController *)v13 setCoordinator:v6];
    [(HSPCSiriSetupViewController *)v13 setSiriOrbView:v11];
    [(HSPCSiriSetupViewController *)v13 setSiriOrbContainerView:v8];
    [(HSPCSiriSetupViewController *)v13 _siriEnabledOnCurrentDevice];
    v14 = HULocalizedString();
    [(HSPCSiriSetupViewController *)v13 setTitle:v14];

    v15 = HULocalizedString();
    v16 = [(HSPCSiriSetupViewController *)v13 addProminentButtonWithLocalizedTitle:v15 target:v13 futureSelector:"commitConfiguration"];

    v17 = HULocalizedString();
    v18 = [(HSPCSiriSetupViewController *)v13 addOptionalButtonWithLocalizedTitle:v17 target:v13 futureSelector:"_disableVoiceRecognition"];

    [(HSPCSiriSetupViewController *)v13 _siriEnabledOnCurrentDevice];
    v19 = [v7 home];
    v20 = HULocalizedSiriTriggerPhrase();
    v21 = HULocalizedStringWithFormat();
    [(HSPCSiriSetupViewController *)v13 setSubtitle:v21, v20];
  }

  return v13;
}

- (void)viewDidLoad
{
  v59.receiver = self;
  v59.super_class = HSPCSiriSetupViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v59 viewDidLoad];
  v3 = [PRXLabel labelWithStyle:3];
  v4 = HULocalizedString();
  v5 = [NSAttributedString alloc];
  v63 = NSForegroundColorAttributeName;
  v6 = +[UIColor hf_keyColor];
  v64 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v56 = v4;
  v58 = [v5 initWithString:v4 attributes:v7];

  v8 = [NSMutableAttributedString alloc];
  v9 = HULocalizedString();
  v57 = [v8 initWithString:v9];

  [v57 appendAttributedString:v58];
  v10 = [v57 copy];
  [v3 setAttributedText:v10];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = v3;
  [v3 setUserInteractionEnabled:1];
  v12 = [HUStringInLabelTapGestureRecognizer alloc];
  v61 = @"URL_KEY";
  v13 = +[HFURLComponents siriPrivacyURL];
  v62 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  v55 = [v12 initWithTarget:self action:"_handleFooterLabelTouchForOpenURL:" hitBoxString:v4 userInfo:v14];

  [v11 addGestureRecognizer:v55];
  v15 = [(HSPCSiriSetupViewController *)self contentView];
  [v15 addSubview:v11];

  v54 = [(HSPCSiriSetupViewController *)self siriOrbView];
  v52 = [v54 centerXAnchor];
  v53 = [(HSPCSiriSetupViewController *)self contentView];
  v51 = [v53 mainContentGuide];
  v50 = [v51 centerXAnchor];
  v49 = [v52 constraintEqualToAnchor:v50];
  v60[0] = v49;
  v48 = [(HSPCSiriSetupViewController *)self siriOrbView];
  v46 = [v48 topAnchor];
  v47 = [(HSPCSiriSetupViewController *)self contentView];
  v45 = [v47 subtitleLabel];
  v44 = [v45 bottomAnchor];
  v43 = [v46 constraintEqualToAnchor:v44 constant:-20.0];
  v60[1] = v43;
  v42 = [(HSPCSiriSetupViewController *)self siriOrbView];
  v41 = [v42 widthAnchor];
  v40 = [v41 constraintEqualToConstant:198.0];
  v60[2] = v40;
  v39 = [(HSPCSiriSetupViewController *)self siriOrbView];
  v38 = [v39 heightAnchor];
  v36 = [v38 constraintEqualToConstant:198.0];
  v60[3] = v36;
  v34 = [v11 centerXAnchor];
  v35 = [(HSPCSiriSetupViewController *)self contentView];
  v33 = [v35 mainContentGuide];
  v32 = [v33 centerXAnchor];
  v31 = [v34 constraintEqualToAnchor:v32];
  v60[4] = v31;
  v29 = [v11 topAnchor];
  v30 = [(HSPCSiriSetupViewController *)self siriOrbView];
  v28 = [v30 bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:-20.0];
  v60[5] = v27;
  v37 = v11;
  v26 = [v11 bottomAnchor];
  v16 = [(HSPCSiriSetupViewController *)self contentView];
  v17 = [v16 mainContentGuide];
  v18 = [v17 bottomAnchor];
  v19 = [v26 constraintEqualToAnchor:v18];
  v60[6] = v19;
  v20 = [v11 widthAnchor];
  v21 = [(HSPCSiriSetupViewController *)self contentView];
  v22 = [v21 mainContentGuide];
  v23 = [v22 widthAnchor];
  v24 = [v20 constraintLessThanOrEqualToAnchor:v23];
  v60[7] = v24;
  v25 = [NSArray arrayWithObjects:v60 count:8];
  [NSLayoutConstraint activateConstraints:v25];
}

- (void)_handleFooterLabelTouchForOpenURL:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"URL_KEY"];

  if (v5)
  {
    v6 = +[HFURLComponents siriPrivacyURL];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Launching Siri privacy sheet", v10, 2u);
      }

      [(HSPCSiriSetupViewController *)self _launchSiriPrivacySheet];
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100077BC8(v9);
    }

    NSLog(@"Footer link pressed w/ url intention but no url found");
  }
}

- (void)_launchSiriPrivacySheet
{
  v3 = [(HSPCSiriSetupViewController *)self navigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v7 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifer:OBPrivacySiriIdentifier];
  [v7 setPresentingViewController:v6];

  [v7 present];
}

- (id)_disableVoiceRecognition
{
  v4 = [(HSPCSiriSetupViewController *)self config];
  v5 = [v4 home];

  v6 = [HFUserItem alloc];
  v7 = [v5 currentUser];
  v8 = [v6 initWithHome:v5 user:v7 nameStyle:0];

  v9 = [v8 setEnableIdentifyVoice:0];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v21 = 138412290;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Disabling voice recognition", &v21, 0xCu);
  }

  v12 = [(HSPCSiriSetupViewController *)self config];
  [v12 setShouldSkipVoiceProfileSetup:1];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ User has opted to not enable voice recognition. Setting flag to skip voice profile setup flow.", &v21, 0xCu);
  }

  v15 = [(HSPCSiriSetupViewController *)self config];
  v16 = [v15 delegate];
  v17 = [(HSPCSiriSetupViewController *)self config];
  v18 = [v16 stateMachineConfigurationGetLaunchReason:v17];

  if (v18 == 3)
  {
    [NAFuture futureWithResult:&off_1000CD708];
  }

  else
  {
    [(HSPCSiriSetupViewController *)self commitConfiguration];
  }
  v19 = ;

  return v19;
}

- (BOOL)_siriEnabledOnCurrentDevice
{
  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 assistantIsEnabled];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Is Siri enabled on this device? %{BOOL}d", &v9, 0x1Cu);
  }

  return v5;
}

@end