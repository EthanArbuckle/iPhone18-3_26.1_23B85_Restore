@interface HSPCUseSiriViewController
- (BOOL)_deviceIsOnAMultiUserLanguage;
- (BOOL)_isVoiceRecognitionEnabled;
- (BOOL)_shouldEnableShareSiriAnalytics;
- (HSPCUseSiriViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_applyOnboardingSelections;
- (id)_disableSiri;
- (id)_enableSiriWithUserConfirmation;
- (id)_languageValueMatchingRecognitionLanguage:(id)language outputVoice:(id)voice;
- (id)commitConfiguration;
- (id)dismissButtonBlock;
- (void)_applyOnBoardingSelectionsWithFuture:(id)future;
- (void)_enableSiriWithFuture:(id)future;
- (void)_handleFooterLabelTouchForOpenURL:(id)l;
- (void)_launchSiriPrivacySheet;
- (void)_setupOnBoardSelectionsWithLanguageValue:(id)value;
- (void)viewDidLoad;
@end

@implementation HSPCUseSiriViewController

- (HSPCUseSiriViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v8 = objc_alloc_init(UIView);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [UIImageView alloc];
  v10 = HUImageNamed();
  v11 = [v9 initWithImage:v10];

  [v11 setBounds:{0.0, 0.0, 98.0, 98.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v11];
  v41.receiver = self;
  v41.super_class = HSPCUseSiriViewController;
  v12 = [(HSPCFixedSizeCenterContentViewController *)&v41 initWithCenterContentView:v8 size:98.0, 98.0];
  v13 = v12;
  if (v12)
  {
    [(HSPCUseSiriViewController *)v12 setConfig:configCopy];
    [(HSPCUseSiriViewController *)v13 setCoordinator:coordinatorCopy];
    [(HSPCUseSiriViewController *)v13 setSiriIconImageView:v11];
    [(HSPCUseSiriViewController *)v13 setSiriIconContainerView:v8];
    v14 = HULocalizedString();
    [(HSPCUseSiriViewController *)v13 setTitle:v14];

    v15 = HULocalizedString();
    v16 = [(HSPCUseSiriViewController *)v13 addProminentButtonWithLocalizedTitle:v15 target:v13 futureSelector:"_enableSiriWithUserConfirmation"];

    v17 = HULocalizedString();
    v18 = [(HSPCUseSiriViewController *)v13 addOptionalButtonWithLocalizedTitle:v17 target:v13 futureSelector:"_disableSiri"];

    addedAccessory = [configCopy addedAccessory];
    hf_userFriendlyLocalizedLowercaseDescription = [addedAccessory hf_userFriendlyLocalizedLowercaseDescription];
    home = [configCopy home];
    v22 = HULocalizedSiriTriggerPhrase();
    v23 = HULocalizedStringWithFormat();
    [(HSPCUseSiriViewController *)v13 setSubtitle:v23, hf_userFriendlyLocalizedLowercaseDescription, v22];

    config = [(HSPCUseSiriViewController *)v13 config];
    [config setIsPlaybackInfluencesForYouEnabled:1];

    v25 = +[AFPreferences sharedPreferences];
    siriDataSharingOptInStatus = [v25 siriDataSharingOptInStatus];

    v27 = siriDataSharingOptInStatus == 1;
    config2 = [(HSPCUseSiriViewController *)v13 config];
    [config2 setIsShareSiriAnalyticsEnabled:v27];

    v29 = +[HFManagedConfigurationUtilities isExplicitContentAllowed];
    config3 = [(HSPCUseSiriViewController *)v13 config];
    [config3 setIsExplicitContentAllowed:v29];

    v31 = HFLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      config4 = [(HSPCUseSiriViewController *)v13 config];
      isPlaybackInfluencesForYouEnabled = [config4 isPlaybackInfluencesForYouEnabled];
      config5 = [(HSPCUseSiriViewController *)v13 config];
      isShareSiriAnalyticsEnabled = [config5 isShareSiriAnalyticsEnabled];
      [(HSPCUseSiriViewController *)v13 config];
      v40 = configCopy;
      v37 = v36 = coordinatorCopy;
      isExplicitContentAllowed = [v37 isExplicitContentAllowed];
      *buf = 67109632;
      v43 = isPlaybackInfluencesForYouEnabled;
      v44 = 1024;
      v45 = isShareSiriAnalyticsEnabled;
      v46 = 1024;
      v47 = isExplicitContentAllowed;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "isPlaybackInfluencesForYouEnabled = %{BOOL}d | isShareSiriAnalyticsEnabled = %{BOOL}d | isExplicitContentAllowed = %{BOOL}d", buf, 0x14u);

      coordinatorCopy = v36;
      configCopy = v40;
    }
  }

  return v13;
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = HSPCUseSiriViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v53 viewDidLoad];
  v3 = [PRXLabel labelWithStyle:3];
  v4 = HULocalizedString();
  v5 = [NSAttributedString alloc];
  v57 = NSForegroundColorAttributeName;
  v6 = +[UIColor hf_keyColor];
  v58 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v50 = v4;
  v52 = [v5 initWithString:v4 attributes:v7];

  v8 = [NSMutableAttributedString alloc];
  v9 = HULocalizedString();
  v51 = [v8 initWithString:v9];

  [v51 appendAttributedString:v52];
  v10 = [v51 copy];
  [v3 setAttributedText:v10];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = v3;
  [v3 setUserInteractionEnabled:1];
  v12 = [HUStringInLabelTapGestureRecognizer alloc];
  v55 = @"URL_KEY";
  v13 = +[HFURLComponents siriPrivacyURL];
  v56 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v49 = [v12 initWithTarget:self action:"_handleFooterLabelTouchForOpenURL:" hitBoxString:v4 userInfo:v14];

  v15 = v11;
  [v11 addGestureRecognizer:v49];
  contentView = [(HSPCUseSiriViewController *)self contentView];
  [contentView addSubview:v11];

  contentView2 = [(HSPCUseSiriViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  siriIconImageView = [(HSPCUseSiriViewController *)self siriIconImageView];
  centerXAnchor = [siriIconImageView centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v54[0] = v45;
  siriIconImageView2 = [(HSPCUseSiriViewController *)self siriIconImageView];
  topAnchor = [siriIconImageView2 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v54[1] = v41;
  siriIconImageView3 = [(HSPCUseSiriViewController *)self siriIconImageView];
  widthAnchor = [siriIconImageView3 widthAnchor];
  v38 = [widthAnchor constraintEqualToConstant:98.0];
  v54[2] = v38;
  siriIconImageView4 = [(HSPCUseSiriViewController *)self siriIconImageView];
  heightAnchor = [siriIconImageView4 heightAnchor];
  v34 = [heightAnchor constraintEqualToConstant:98.0];
  v54[3] = v34;
  centerXAnchor3 = [v11 centerXAnchor];
  centerXAnchor4 = [mainContentGuide centerXAnchor];
  v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v54[4] = v30;
  v36 = v11;
  topAnchor3 = [v11 topAnchor];
  siriIconImageView5 = [(HSPCUseSiriViewController *)self siriIconImageView];
  bottomAnchor = [siriIconImageView5 bottomAnchor];
  v21 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v54[5] = v21;
  bottomAnchor2 = [v11 bottomAnchor];
  v33 = mainContentGuide;
  bottomAnchor3 = [mainContentGuide bottomAnchor];
  v24 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v54[6] = v24;
  widthAnchor2 = [v15 widthAnchor];
  widthAnchor3 = [mainContentGuide widthAnchor];
  v27 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor3];
  v54[7] = v27;
  v28 = [NSArray arrayWithObjects:v54 count:8];
  [NSLayoutConstraint activateConstraints:v28];
}

- (id)commitConfiguration
{
  config = [(HSPCUseSiriViewController *)self config];
  delegate = [config delegate];
  config2 = [(HSPCUseSiriViewController *)self config];
  v6 = [delegate stateMachineConfigurationGetLaunchReason:config2];

  if (v6 == 3 && ([(HSPCUseSiriViewController *)self _isVoiceRecognitionEnabled]|| ![(HSPCUseSiriViewController *)self _deviceIsOnAMultiUserLanguage]))
  {
    v7 = &off_1000CD3C0;
  }

  else
  {
    v7 = &off_1000CD3D8;
  }

  v8 = [NAFuture futureWithResult:v7];

  return v8;
}

- (id)dismissButtonBlock
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012A3C;
  v4[3] = &unk_1000C5970;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
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

      [(HSPCUseSiriViewController *)self _launchSiriPrivacySheet];
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
  navigationController = [(HSPCUseSiriViewController *)self navigationController];
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

- (id)_disableSiri
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User opted to not enable Siri, saving onboarding selection", v27, 2u);
  }

  config = [(HSPCUseSiriViewController *)self config];
  addedAccessory = [config addedAccessory];

  v6 = [HMSiriEndpointOnboardingSelections alloc];
  hf_isDumbSpeaker = [addedAccessory hf_isDumbSpeaker];
  config2 = [(HSPCUseSiriViewController *)self config];
  isPlaybackInfluencesForYouEnabled = [config2 isPlaybackInfluencesForYouEnabled];
  config3 = [(HSPCUseSiriViewController *)self config];
  v11 = [v6 initWithSiriEnabled:1 allowHeySiri:0 airPlayEnabled:hf_isDumbSpeaker playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled shareSiriAnalyticsEnabled:0 explicitContentAllowed:{objc_msgSend(config3, "isExplicitContentAllowed")}];
  config4 = [(HSPCUseSiriViewController *)self config];
  [config4 setOnboardingSelections:v11];

  config5 = [(HSPCUseSiriViewController *)self config];
  delegate = [config5 delegate];
  config6 = [(HSPCUseSiriViewController *)self config];
  v16 = [delegate stateMachineConfigurationGetLaunchReason:config6];

  if (v16 == 3)
  {
    v17 = &off_1000CD3C0;
  }

  else
  {
    v17 = &off_1000CD3D8;
  }

  v18 = [NAFuture futureWithResult:v17];
  if ([(HSPCUseSiriViewController *)self _shouldEnableShareSiriAnalytics])
  {
    config7 = [(HSPCUseSiriViewController *)self config];
    addedAccessory2 = [config7 addedAccessory];
    name = [addedAccessory2 name];
    v22 = [HUSiriEndpointUtilities presentShareSiriAndDictationAlertForSingleAccessory:self accessoryName:name];
  }

  else
  {
    v22 = +[NAFuture futureWithNoResult];
  }

  _applyOnboardingSelections = [(HSPCUseSiriViewController *)self _applyOnboardingSelections];
  v28[0] = _applyOnboardingSelections;
  v28[1] = v22;
  v28[2] = v18;
  v24 = [NSArray arrayWithObjects:v28 count:3];
  v25 = [NAFuture chainFutures:v24];

  return v25;
}

- (id)_enableSiriWithUserConfirmation
{
  v3 = objc_alloc_init(NAFuture);
  config = [(HSPCUseSiriViewController *)self config];
  addedAccessory = [config addedAccessory];

  hf_siriEndpointProfile = [addedAccessory hf_siriEndpointProfile];
  if ([hf_siriEndpointProfile supportsOnboarding])
  {
    currentAssistant = [hf_siriEndpointProfile currentAssistant];
    v8 = currentAssistant;
    if (currentAssistant && ([currentAssistant isSiriAssistant] & 1) == 0)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Accessory has a different assistant = %@", buf, 0xCu);
      }

      name = [v8 name];
      v22 = HULocalizedStringWithFormat();

      name2 = [v8 name];
      v21 = HULocalizedStringWithFormat();

      v12 = [UIAlertController alertControllerWithTitle:v22 message:v21 preferredStyle:1, name2];
      v13 = HULocalizedString();
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100013290;
      v25[3] = &unk_1000C5DB8;
      v25[4] = self;
      v14 = v3;
      v26 = v14;
      v15 = [UIAlertAction actionWithTitle:v13 style:0 handler:v25];
      [v12 addAction:v15];

      v16 = HULocalizedString();
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10001329C;
      v23[3] = &unk_1000C5DE0;
      v24 = v14;
      v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:v23];
      [v12 addAction:v17];

      [(HSPCUseSiriViewController *)self presentViewController:v12 animated:1 completion:0];
    }

    else
    {
      [(HSPCUseSiriViewController *)self _enableSiriWithFuture:v3];
    }

    commitConfiguration = v3;
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Siri onboarding is not supported, will skip remainder of Siri flow", buf, 2u);
    }

    commitConfiguration = [(HSPCUseSiriViewController *)self commitConfiguration];
  }

  return commitConfiguration;
}

- (void)_enableSiriWithFuture:(id)future
{
  futureCopy = future;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding Enable Siri selection", buf, 2u);
  }

  config = [(HSPCUseSiriViewController *)self config];
  addedAccessory = [config addedAccessory];

  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  accessorySettingsDataSource = [v8 accessorySettingsDataSource];

  v10 = +[AFPreferences sharedPreferences];
  languageCode = [v10 languageCode];

  if (!languageCode)
  {
    v12 = +[AFPreferences sharedPreferences];
    languageCode = [v12 bestSupportedLanguageCodeForLanguageCode:0];
  }

  v13 = +[AFPreferences sharedPreferences];
  outputVoice = [v13 outputVoice];

  config2 = [(HSPCUseSiriViewController *)self config];
  [config2 setRecognitionLanguage:languageCode];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = languageCode;
    v32 = 2112;
    v33 = outputVoice;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iOSSiriRecognitionLanguage = [%@], iOSSiriOutputVoice = [%@]", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  home = [addedAccessory home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [addedAccessory uniqueIdentifier];
  v29 = HFSiriAvailableLanguagesSettingKeyPath;
  v20 = [NSArray arrayWithObjects:&v29 count:1];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100013604;
  v24[3] = &unk_1000C5EE8;
  objc_copyWeak(&v28, buf);
  v21 = outputVoice;
  v25 = v21;
  v22 = languageCode;
  v26 = v22;
  v23 = futureCopy;
  v27 = v23;
  [accessorySettingsDataSource hf_fetchAccessorySettingsWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:uniqueIdentifier2 keyPaths:v20 completionHandler:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

- (BOOL)_isVoiceRecognitionEnabled
{
  v4 = [HFUserItem alloc];
  config = [(HSPCUseSiriViewController *)self config];
  home = [config home];
  config2 = [(HSPCUseSiriViewController *)self config];
  home2 = [config2 home];
  currentUser = [home2 currentUser];
  v10 = [v4 initWithHome:home user:currentUser nameStyle:0];

  isIdentifyVoiceEnabled = [v10 isIdentifyVoiceEnabled];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v15 = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = v13;
    v19 = 1024;
    v20 = isIdentifyVoiceEnabled;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Is voice recognition enabled? %{BOOL}d", &v15, 0x1Cu);
  }

  return isIdentifyVoiceEnabled;
}

- (BOOL)_deviceIsOnAMultiUserLanguage
{
  v3 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
  if (v3)
  {
    v4 = [HUHomeFeatureOnboardingUtilities isDeviceUsingASupportedVoiceRecognitionSiriLanguage:v3 shouldFallbackToBestSupportedLanguage:1];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100077C74(a2, v5);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_applyOnboardingSelections
{
  config = [(HSPCUseSiriViewController *)self config];
  addedAccessory = [config addedAccessory];

  hf_siriEndpointProfile = [addedAccessory hf_siriEndpointProfile];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    config2 = [(HSPCUseSiriViewController *)self config];
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

- (id)_languageValueMatchingRecognitionLanguage:(id)language outputVoice:(id)voice
{
  voiceCopy = voice;
  v7 = voiceCopy;
  v8 = 0;
  if (language && voiceCopy)
  {
    config = [(HSPCUseSiriViewController *)self config];
    availableSiriLanguageValues = [config availableSiriLanguageValues];

    if (availableSiriLanguageValues)
    {
      config2 = [(HSPCUseSiriViewController *)self config];
      availableSiriLanguageValues2 = [config2 availableSiriLanguageValues];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000146A4;
      v14[3] = &unk_1000C5740;
      v14[4] = self;
      v15 = v7;
      v8 = [availableSiriLanguageValues2 na_firstObjectPassingTest:v14];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_setupOnBoardSelectionsWithLanguageValue:(id)value
{
  valueCopy = value;
  config = [(HSPCUseSiriViewController *)self config];
  addedAccessory = [config addedAccessory];

  v6 = [HMSiriEndpointOnboardingSelections alloc];
  hf_isDumbSpeaker = [addedAccessory hf_isDumbSpeaker];
  config2 = [(HSPCUseSiriViewController *)self config];
  isPlaybackInfluencesForYouEnabled = [config2 isPlaybackInfluencesForYouEnabled];
  config3 = [(HSPCUseSiriViewController *)self config];
  isShareSiriAnalyticsEnabled = [config3 isShareSiriAnalyticsEnabled];
  config4 = [(HSPCUseSiriViewController *)self config];
  isExplicitContentAllowed = [config4 isExplicitContentAllowed];
  if (valueCopy)
  {
    v14 = [v6 initWithSiriEnabled:1 allowHeySiri:1 airPlayEnabled:hf_isDumbSpeaker playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled shareSiriAnalyticsEnabled:isShareSiriAnalyticsEnabled explicitContentAllowed:isExplicitContentAllowed languageValue:valueCopy];
  }

  else
  {
    v14 = [v6 initWithSiriEnabled:1 allowHeySiri:1 airPlayEnabled:hf_isDumbSpeaker playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled shareSiriAnalyticsEnabled:isShareSiriAnalyticsEnabled explicitContentAllowed:isExplicitContentAllowed];
  }

  v15 = v14;
  config5 = [(HSPCUseSiriViewController *)self config];
  [config5 setOnboardingSelections:v15];
}

- (void)_applyOnBoardingSelectionsWithFuture:(id)future
{
  futureCopy = future;
  config = [(HSPCUseSiriViewController *)self config];
  addedAccessory = [config addedAccessory];

  hf_siriEndpointProfile = [addedAccessory hf_siriEndpointProfile];
  v8 = objc_opt_new();
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    config2 = [(HSPCUseSiriViewController *)self config];
    onboardingSelections = [config2 onboardingSelections];
    *buf = 138412290;
    v35 = onboardingSelections;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Applying onboarding selections: %@", buf, 0xCu);
  }

  v12 = &_s22HomeAccessoryControlUI14LocationDeviceVMa_ptr;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100014D28;
  v31[3] = &unk_1000C5F38;
  v13 = hf_siriEndpointProfile;
  v32 = v13;
  selfCopy = self;
  v14 = +[NAScheduler globalAsyncScheduler];
  v15 = [NAFuture futureWithBlock:v31 scheduler:v14];
  v16 = +[NAScheduler mainThreadScheduler];
  v17 = [v15 reschedule:v16];

  [v8 addObject:v17];
  if ([(HSPCUseSiriViewController *)self _shouldEnableShareSiriAnalytics])
  {
    config3 = [(HSPCUseSiriViewController *)self config];
    addedAccessory2 = [config3 addedAccessory];
    [addedAccessory2 name];
    v21 = v20 = addedAccessory;
    v22 = [HUSiriEndpointUtilities presentShareSiriAndDictationAlertForSingleAccessory:self accessoryName:v21];

    addedAccessory = v20;
    v12 = &_s22HomeAccessoryControlUI14LocationDeviceVMa_ptr;
  }

  else
  {
    v22 = +[NAFuture futureWithNoResult];
  }

  [v8 addObject:v22];
  commitConfiguration = [(HSPCUseSiriViewController *)self commitConfiguration];
  [v8 addObject:commitConfiguration];

  v24 = v12[378];
  v25 = [v8 copy];
  v26 = [v24 chainFutures:v25];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100014F00;
  v29[3] = &unk_1000C5658;
  v30 = futureCopy;
  v27 = futureCopy;
  v28 = [v26 addCompletionBlock:v29];
}

- (BOOL)_shouldEnableShareSiriAnalytics
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    config = [(HSPCUseSiriViewController *)self config];
    isShareSiriAnalyticsEnabled = [config isShareSiriAnalyticsEnabled];
    config2 = [(HSPCUseSiriViewController *)self config];
    onboardingSelections = [config2 onboardingSelections];
    v13 = 136315650;
    v14 = "[HSPCUseSiriViewController _shouldEnableShareSiriAnalytics]";
    v15 = 1024;
    v16 = isShareSiriAnalyticsEnabled;
    v17 = 1024;
    allowHeySiri = [onboardingSelections allowHeySiri];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s *** Value for  self.config.isShareSiriAnalyticsEnabled *** = %{BOOL}d, allowHeySiri = %{BOOL}d", &v13, 0x18u);
  }

  config3 = [(HSPCUseSiriViewController *)self config];
  if ([config3 isShareSiriAnalyticsEnabled])
  {
    config4 = [(HSPCUseSiriViewController *)self config];
    onboardingSelections2 = [config4 onboardingSelections];
    allowHeySiri2 = [onboardingSelections2 allowHeySiri];
  }

  else
  {
    allowHeySiri2 = 0;
  }

  return allowHeySiri2;
}

@end