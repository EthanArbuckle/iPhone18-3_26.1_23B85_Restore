@interface HSPCUseAirPlayViewController
- (HSPCUseAirPlayViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_applyOnboardingSelections;
- (id)_applyOnboardingSelectionsIfNeeded;
- (id)_enableAirPlay;
- (void)viewDidLoad;
@end

@implementation HSPCUseAirPlayViewController

- (HSPCUseAirPlayViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v8 = objc_alloc_init(UIView);
  v9 = [UIImageView alloc];
  v10 = +[UIImage hu_airPlaySpeakerImage];
  v11 = [v9 initWithImage:v10];

  layer = [v11 layer];
  [layer setMasksToBounds:1];

  [v11 setContentMode:2];
  v13 = [[HUAirPlayIconView alloc] initWithFrame:0.0, 0.0, 34.0, 34.0];
  [v8 addSubview:v11];
  [v8 addSubview:v13];
  v25.receiver = self;
  v25.super_class = HSPCUseAirPlayViewController;
  v14 = [(HSPCFixedSizeCenterContentViewController *)&v25 initWithCenterContentView:v8 size:75.0, 75.0];
  v15 = v14;
  if (v14)
  {
    [(HSPCUseAirPlayViewController *)v14 setConfig:configCopy];
    [(HSPCUseAirPlayViewController *)v15 setCoordinator:coordinatorCopy];
    [(HSPCUseAirPlayViewController *)v15 setContainerView:v8];
    [(HSPCUseAirPlayViewController *)v15 setSpeakerIconImageView:v11];
    [(HSPCUseAirPlayViewController *)v15 setAirplayIconView:v13];
    v16 = HULocalizedString();
    [(HSPCUseAirPlayViewController *)v15 setTitle:v16];

    v17 = HULocalizedString();
    v18 = [(HSPCUseAirPlayViewController *)v15 addProminentButtonWithLocalizedTitle:v17 target:v15 futureSelector:"_enableAirPlay"];

    v19 = HULocalizedString();
    v20 = [(HSPCUseAirPlayViewController *)v15 addOptionalButtonWithLocalizedTitle:v19 target:v15 futureSelector:"_applyOnboardingSelectionsIfNeeded"];

    addedAccessory = [configCopy addedAccessory];
    hf_userFriendlyLocalizedLowercaseDescription = [addedAccessory hf_userFriendlyLocalizedLowercaseDescription];
    v23 = HULocalizedStringWithFormat();
    [(HSPCUseAirPlayViewController *)v15 setSubtitle:v23, hf_userFriendlyLocalizedLowercaseDescription];
  }

  return v15;
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = HSPCUseAirPlayViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v55 viewDidLoad];
  containerView = [(HSPCUseAirPlayViewController *)self containerView];
  centerXAnchor = [containerView centerXAnchor];
  contentView = [(HSPCUseAirPlayViewController *)self contentView];
  mainContentGuide = [contentView mainContentGuide];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[0] = v49;
  containerView2 = [(HSPCUseAirPlayViewController *)self containerView];
  centerYAnchor = [containerView2 centerYAnchor];
  contentView2 = [(HSPCUseAirPlayViewController *)self contentView];
  mainContentGuide2 = [contentView2 mainContentGuide];
  centerYAnchor2 = [mainContentGuide2 centerYAnchor];
  v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v56[1] = v43;
  speakerIconImageView = [(HSPCUseAirPlayViewController *)self speakerIconImageView];
  centerXAnchor3 = [speakerIconImageView centerXAnchor];
  contentView3 = [(HSPCUseAirPlayViewController *)self contentView];
  mainContentGuide3 = [contentView3 mainContentGuide];
  centerXAnchor4 = [mainContentGuide3 centerXAnchor];
  v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v56[2] = v37;
  speakerIconImageView2 = [(HSPCUseAirPlayViewController *)self speakerIconImageView];
  centerYAnchor3 = [speakerIconImageView2 centerYAnchor];
  contentView4 = [(HSPCUseAirPlayViewController *)self contentView];
  mainContentGuide4 = [contentView4 mainContentGuide];
  centerYAnchor4 = [mainContentGuide4 centerYAnchor];
  v4 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v56[3] = v4;
  airplayIconView = [(HSPCUseAirPlayViewController *)self airplayIconView];
  widthAnchor = [airplayIconView widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:34.0];
  v56[4] = v7;
  airplayIconView2 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  heightAnchor = [airplayIconView2 heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:34.0];
  v56[5] = v10;
  v11 = [NSArray arrayWithObjects:v56 count:6];
  [NSLayoutConstraint activateConstraints:v11];

  speakerIconImageView3 = [(HSPCUseAirPlayViewController *)self speakerIconImageView];
  [speakerIconImageView3 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  CGRectGetMidX(v57);
  HURoundToScreenScale();
  v22 = v21;
  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  CGRectGetMaxY(v58);
  airplayIconView3 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  [airplayIconView3 intrinsicContentSize];
  HURoundToScreenScale();
  v25 = v24;

  airplayIconView4 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  [airplayIconView4 intrinsicContentSize];
  v28 = v27;
  airplayIconView5 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  [airplayIconView5 intrinsicContentSize];
  v31 = v30;
  airplayIconView6 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  [airplayIconView6 setFrame:{v22, v25, v28, v31}];
}

- (id)_applyOnboardingSelections
{
  config = [(HSPCUseAirPlayViewController *)self config];
  addedAccessory = [config addedAccessory];

  hf_siriEndpointProfile = [addedAccessory hf_siriEndpointProfile];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    config2 = [(HSPCUseAirPlayViewController *)self config];
    onboardingSelections = [config2 onboardingSelections];
    *buf = 138412290;
    v19 = onboardingSelections;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Applying onboarding selections: %@", buf, 0xCu);
  }

  v16 = hf_siriEndpointProfile;
  selfCopy = self;
  v9 = hf_siriEndpointProfile;
  v10 = [NAScheduler globalAsyncScheduler:_NSConcreteStackBlock];
  v11 = [NAFuture futureWithBlock:&v15 scheduler:v10];
  v12 = +[NAScheduler mainThreadScheduler];
  v13 = [v11 reschedule:v12];

  return v13;
}

- (id)_applyOnboardingSelectionsIfNeeded
{
  config = [(HSPCUseAirPlayViewController *)self config];
  onboardingSelections = [config onboardingSelections];

  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (onboardingSelections)
  {
    if (v6)
    {
      config2 = [(HSPCUseAirPlayViewController *)self config];
      onboardingSelections2 = [config2 onboardingSelections];
      *buf = 138412290;
      v16 = onboardingSelections2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will not enable AirPlay selection but will apply existing selections: %@", buf, 0xCu);
    }

    _applyOnboardingSelections = [(HSPCUseAirPlayViewController *)self _applyOnboardingSelections];
    commitConfiguration = [(HSPCUseAirPlayViewController *)self commitConfiguration];
    v14[1] = commitConfiguration;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    commitConfiguration2 = [NAFuture chainFutures:v11];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No onboarding selections to apply", buf, 2u);
    }

    commitConfiguration2 = [(HSPCUseAirPlayViewController *)self commitConfiguration];
  }

  return commitConfiguration2;
}

- (id)_enableAirPlay
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding Enable AirPlay selection", buf, 2u);
  }

  config = [(HSPCUseAirPlayViewController *)self config];
  onboardingSelections = [config onboardingSelections];

  if (onboardingSelections)
  {
    languageValue = [onboardingSelections languageValue];

    v34 = [HMSiriEndpointOnboardingSelections alloc];
    config2 = [(HSPCUseAirPlayViewController *)self config];
    onboardingSelections2 = [config2 onboardingSelections];
    isSiriEnabled = [onboardingSelections2 isSiriEnabled];
    config3 = [(HSPCUseAirPlayViewController *)self config];
    onboardingSelections3 = [config3 onboardingSelections];
    allowHeySiri = [onboardingSelections3 allowHeySiri];
    config4 = [(HSPCUseAirPlayViewController *)self config];
    isPlaybackInfluencesForYouEnabled = [config4 isPlaybackInfluencesForYouEnabled];
    [(HSPCUseAirPlayViewController *)self config];
    v11 = v35 = onboardingSelections;
    isShareSiriAnalyticsEnabled = [v11 isShareSiriAnalyticsEnabled];
    config5 = [(HSPCUseAirPlayViewController *)self config];
    isExplicitContentAllowed = [config5 isExplicitContentAllowed];
    if (languageValue)
    {
      languageValue2 = [v35 languageValue];
      config7 = [v34 initWithSiriEnabled:isSiriEnabled allowHeySiri:allowHeySiri airPlayEnabled:1 playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled shareSiriAnalyticsEnabled:isShareSiriAnalyticsEnabled explicitContentAllowed:isExplicitContentAllowed languageValue:languageValue2];
      config6 = [(HSPCUseAirPlayViewController *)self config];
      [config6 setOnboardingSelections:config7];
    }

    else
    {
      languageValue2 = [v34 initWithSiriEnabled:isSiriEnabled allowHeySiri:allowHeySiri airPlayEnabled:1 playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled shareSiriAnalyticsEnabled:isShareSiriAnalyticsEnabled explicitContentAllowed:isExplicitContentAllowed];
      config7 = [(HSPCUseAirPlayViewController *)self config];
      [config7 setOnboardingSelections:languageValue2];
    }

    onboardingSelections = v35;
    v26 = config2;
  }

  else
  {
    v18 = [HMSiriEndpointOnboardingSelections alloc];
    config8 = [(HSPCUseAirPlayViewController *)self config];
    isPlaybackInfluencesForYouEnabled2 = [config8 isPlaybackInfluencesForYouEnabled];
    config9 = [(HSPCUseAirPlayViewController *)self config];
    isShareSiriAnalyticsEnabled2 = [config9 isShareSiriAnalyticsEnabled];
    config10 = [(HSPCUseAirPlayViewController *)self config];
    v24 = [v18 initWithSiriEnabled:1 allowHeySiri:0 airPlayEnabled:1 playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled2 shareSiriAnalyticsEnabled:isShareSiriAnalyticsEnabled2 explicitContentAllowed:{objc_msgSend(config10, "isExplicitContentAllowed")}];
    config11 = [(HSPCUseAirPlayViewController *)self config];
    [config11 setOnboardingSelections:v24];

    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      config12 = [(HSPCUseAirPlayViewController *)self config];
      onboardingSelections4 = [config12 onboardingSelections];
      *buf = 138412290;
      v42 = onboardingSelections4;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No existing onboarding selections found. This is unexpected. Will assume Siri should be disabled. Onboarding selections: %@", buf, 0xCu);
    }
  }

  _applyOnboardingSelections = [(HSPCUseAirPlayViewController *)self _applyOnboardingSelections];
  v40[0] = _applyOnboardingSelections;
  commitConfiguration = [(HSPCUseAirPlayViewController *)self commitConfiguration];
  v40[1] = commitConfiguration;
  v31 = [NSArray arrayWithObjects:v40 count:2];
  v32 = [NAFuture chainFutures:v31];

  return v32;
}

@end