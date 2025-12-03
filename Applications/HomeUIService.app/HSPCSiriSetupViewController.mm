@interface HSPCSiriSetupViewController
- (BOOL)_siriEnabledOnCurrentDevice;
- (HSPCSiriSetupViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_disableVoiceRecognition;
- (void)_handleFooterLabelTouchForOpenURL:(id)l;
- (void)_launchSiriPrivacySheet;
- (void)viewDidLoad;
@end

@implementation HSPCSiriSetupViewController

- (HSPCSiriSetupViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
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
    [(HSPCSiriSetupViewController *)v12 setConfig:configCopy];
    [(HSPCSiriSetupViewController *)v13 setCoordinator:coordinatorCopy];
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
    home = [configCopy home];
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
  contentView = [(HSPCSiriSetupViewController *)self contentView];
  [contentView addSubview:v11];

  siriOrbView = [(HSPCSiriSetupViewController *)self siriOrbView];
  centerXAnchor = [siriOrbView centerXAnchor];
  contentView2 = [(HSPCSiriSetupViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v60[0] = v49;
  siriOrbView2 = [(HSPCSiriSetupViewController *)self siriOrbView];
  topAnchor = [siriOrbView2 topAnchor];
  contentView3 = [(HSPCSiriSetupViewController *)self contentView];
  subtitleLabel = [contentView3 subtitleLabel];
  bottomAnchor = [subtitleLabel bottomAnchor];
  v43 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:-20.0];
  v60[1] = v43;
  siriOrbView3 = [(HSPCSiriSetupViewController *)self siriOrbView];
  widthAnchor = [siriOrbView3 widthAnchor];
  v40 = [widthAnchor constraintEqualToConstant:198.0];
  v60[2] = v40;
  siriOrbView4 = [(HSPCSiriSetupViewController *)self siriOrbView];
  heightAnchor = [siriOrbView4 heightAnchor];
  v36 = [heightAnchor constraintEqualToConstant:198.0];
  v60[3] = v36;
  centerXAnchor3 = [v11 centerXAnchor];
  contentView4 = [(HSPCSiriSetupViewController *)self contentView];
  mainContentGuide2 = [contentView4 mainContentGuide];
  centerXAnchor4 = [mainContentGuide2 centerXAnchor];
  v31 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v60[4] = v31;
  topAnchor2 = [v11 topAnchor];
  siriOrbView5 = [(HSPCSiriSetupViewController *)self siriOrbView];
  bottomAnchor2 = [siriOrbView5 bottomAnchor];
  v27 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
  v60[5] = v27;
  v37 = v11;
  bottomAnchor3 = [v11 bottomAnchor];
  contentView5 = [(HSPCSiriSetupViewController *)self contentView];
  mainContentGuide3 = [contentView5 mainContentGuide];
  bottomAnchor4 = [mainContentGuide3 bottomAnchor];
  v19 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v60[6] = v19;
  widthAnchor2 = [v11 widthAnchor];
  contentView6 = [(HSPCSiriSetupViewController *)self contentView];
  mainContentGuide4 = [contentView6 mainContentGuide];
  widthAnchor3 = [mainContentGuide4 widthAnchor];
  v24 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor3];
  v60[7] = v24;
  v25 = [NSArray arrayWithObjects:v60 count:8];
  [NSLayoutConstraint activateConstraints:v25];
}

- (void)_handleFooterLabelTouchForOpenURL:(id)l
{
  userInfo = [l userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"URL_KEY"];

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
  navigationController = [(HSPCSiriSetupViewController *)self navigationController];
  v4 = navigationController;
  if (navigationController)
  {
    selfCopy = navigationController;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  v7 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifer:OBPrivacySiriIdentifier];
  [v7 setPresentingViewController:v6];

  [v7 present];
}

- (id)_disableVoiceRecognition
{
  config = [(HSPCSiriSetupViewController *)self config];
  home = [config home];

  v6 = [HFUserItem alloc];
  currentUser = [home currentUser];
  v8 = [v6 initWithHome:home user:currentUser nameStyle:0];

  v9 = [v8 setEnableIdentifyVoice:0];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v21 = 138412290;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Disabling voice recognition", &v21, 0xCu);
  }

  config2 = [(HSPCSiriSetupViewController *)self config];
  [config2 setShouldSkipVoiceProfileSetup:1];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ User has opted to not enable voice recognition. Setting flag to skip voice profile setup flow.", &v21, 0xCu);
  }

  config3 = [(HSPCSiriSetupViewController *)self config];
  delegate = [config3 delegate];
  config4 = [(HSPCSiriSetupViewController *)self config];
  v18 = [delegate stateMachineConfigurationGetLaunchReason:config4];

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
  assistantIsEnabled = [v4 assistantIsEnabled];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = assistantIsEnabled;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Is Siri enabled on this device? %{BOOL}d", &v9, 0x1Cu);
  }

  return assistantIsEnabled;
}

@end