@interface HSPCUseSiriViewController
- (BOOL)_deviceIsOnAMultiUserLanguage;
- (BOOL)_isVoiceRecognitionEnabled;
- (BOOL)_shouldEnableShareSiriAnalytics;
- (HSPCUseSiriViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_applyOnboardingSelections;
- (id)_disableSiri;
- (id)_enableSiriWithUserConfirmation;
- (id)_languageValueMatchingRecognitionLanguage:(id)a3 outputVoice:(id)a4;
- (id)commitConfiguration;
- (id)dismissButtonBlock;
- (void)_applyOnBoardingSelectionsWithFuture:(id)a3;
- (void)_enableSiriWithFuture:(id)a3;
- (void)_handleFooterLabelTouchForOpenURL:(id)a3;
- (void)_launchSiriPrivacySheet;
- (void)_setupOnBoardSelectionsWithLanguageValue:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSPCUseSiriViewController

- (HSPCUseSiriViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    [(HSPCUseSiriViewController *)v12 setConfig:v7];
    [(HSPCUseSiriViewController *)v13 setCoordinator:v6];
    [(HSPCUseSiriViewController *)v13 setSiriIconImageView:v11];
    [(HSPCUseSiriViewController *)v13 setSiriIconContainerView:v8];
    v14 = HULocalizedString();
    [(HSPCUseSiriViewController *)v13 setTitle:v14];

    v15 = HULocalizedString();
    v16 = [(HSPCUseSiriViewController *)v13 addProminentButtonWithLocalizedTitle:v15 target:v13 futureSelector:"_enableSiriWithUserConfirmation"];

    v17 = HULocalizedString();
    v18 = [(HSPCUseSiriViewController *)v13 addOptionalButtonWithLocalizedTitle:v17 target:v13 futureSelector:"_disableSiri"];

    v19 = [v7 addedAccessory];
    v20 = [v19 hf_userFriendlyLocalizedLowercaseDescription];
    v21 = [v7 home];
    v22 = HULocalizedSiriTriggerPhrase();
    v23 = HULocalizedStringWithFormat();
    [(HSPCUseSiriViewController *)v13 setSubtitle:v23, v20, v22];

    v24 = [(HSPCUseSiriViewController *)v13 config];
    [v24 setIsPlaybackInfluencesForYouEnabled:1];

    v25 = +[AFPreferences sharedPreferences];
    v26 = [v25 siriDataSharingOptInStatus];

    v27 = v26 == 1;
    v28 = [(HSPCUseSiriViewController *)v13 config];
    [v28 setIsShareSiriAnalyticsEnabled:v27];

    v29 = +[HFManagedConfigurationUtilities isExplicitContentAllowed];
    v30 = [(HSPCUseSiriViewController *)v13 config];
    [v30 setIsExplicitContentAllowed:v29];

    v31 = HFLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(HSPCUseSiriViewController *)v13 config];
      v33 = [v32 isPlaybackInfluencesForYouEnabled];
      v34 = [(HSPCUseSiriViewController *)v13 config];
      v35 = [v34 isShareSiriAnalyticsEnabled];
      [(HSPCUseSiriViewController *)v13 config];
      v40 = v7;
      v37 = v36 = v6;
      v38 = [v37 isExplicitContentAllowed];
      *buf = 67109632;
      v43 = v33;
      v44 = 1024;
      v45 = v35;
      v46 = 1024;
      v47 = v38;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "isPlaybackInfluencesForYouEnabled = %{BOOL}d | isShareSiriAnalyticsEnabled = %{BOOL}d | isExplicitContentAllowed = %{BOOL}d", buf, 0x14u);

      v6 = v36;
      v7 = v40;
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
  v16 = [(HSPCUseSiriViewController *)self contentView];
  [v16 addSubview:v11];

  v17 = [(HSPCUseSiriViewController *)self contentView];
  v18 = [v17 mainContentGuide];

  v48 = [(HSPCUseSiriViewController *)self siriIconImageView];
  v47 = [v48 centerXAnchor];
  v46 = [v18 centerXAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v54[0] = v45;
  v44 = [(HSPCUseSiriViewController *)self siriIconImageView];
  v43 = [v44 topAnchor];
  v42 = [v18 topAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v54[1] = v41;
  v40 = [(HSPCUseSiriViewController *)self siriIconImageView];
  v39 = [v40 widthAnchor];
  v38 = [v39 constraintEqualToConstant:98.0];
  v54[2] = v38;
  v37 = [(HSPCUseSiriViewController *)self siriIconImageView];
  v35 = [v37 heightAnchor];
  v34 = [v35 constraintEqualToConstant:98.0];
  v54[3] = v34;
  v32 = [v11 centerXAnchor];
  v31 = [v18 centerXAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v54[4] = v30;
  v36 = v11;
  v29 = [v11 topAnchor];
  v19 = [(HSPCUseSiriViewController *)self siriIconImageView];
  v20 = [v19 bottomAnchor];
  v21 = [v29 constraintEqualToAnchor:v20 constant:20.0];
  v54[5] = v21;
  v22 = [v11 bottomAnchor];
  v33 = v18;
  v23 = [v18 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v54[6] = v24;
  v25 = [v15 widthAnchor];
  v26 = [v18 widthAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor:v26];
  v54[7] = v27;
  v28 = [NSArray arrayWithObjects:v54 count:8];
  [NSLayoutConstraint activateConstraints:v28];
}

- (id)commitConfiguration
{
  v3 = [(HSPCUseSiriViewController *)self config];
  v4 = [v3 delegate];
  v5 = [(HSPCUseSiriViewController *)self config];
  v6 = [v4 stateMachineConfigurationGetLaunchReason:v5];

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
  v3 = [(HSPCUseSiriViewController *)self navigationController];
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

- (id)_disableSiri
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User opted to not enable Siri, saving onboarding selection", v27, 2u);
  }

  v4 = [(HSPCUseSiriViewController *)self config];
  v5 = [v4 addedAccessory];

  v6 = [HMSiriEndpointOnboardingSelections alloc];
  v7 = [v5 hf_isDumbSpeaker];
  v8 = [(HSPCUseSiriViewController *)self config];
  v9 = [v8 isPlaybackInfluencesForYouEnabled];
  v10 = [(HSPCUseSiriViewController *)self config];
  v11 = [v6 initWithSiriEnabled:1 allowHeySiri:0 airPlayEnabled:v7 playbackInfluencesForYouEnabled:v9 shareSiriAnalyticsEnabled:0 explicitContentAllowed:{objc_msgSend(v10, "isExplicitContentAllowed")}];
  v12 = [(HSPCUseSiriViewController *)self config];
  [v12 setOnboardingSelections:v11];

  v13 = [(HSPCUseSiriViewController *)self config];
  v14 = [v13 delegate];
  v15 = [(HSPCUseSiriViewController *)self config];
  v16 = [v14 stateMachineConfigurationGetLaunchReason:v15];

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
    v19 = [(HSPCUseSiriViewController *)self config];
    v20 = [v19 addedAccessory];
    v21 = [v20 name];
    v22 = [HUSiriEndpointUtilities presentShareSiriAndDictationAlertForSingleAccessory:self accessoryName:v21];
  }

  else
  {
    v22 = +[NAFuture futureWithNoResult];
  }

  v23 = [(HSPCUseSiriViewController *)self _applyOnboardingSelections];
  v28[0] = v23;
  v28[1] = v22;
  v28[2] = v18;
  v24 = [NSArray arrayWithObjects:v28 count:3];
  v25 = [NAFuture chainFutures:v24];

  return v25;
}

- (id)_enableSiriWithUserConfirmation
{
  v3 = objc_alloc_init(NAFuture);
  v4 = [(HSPCUseSiriViewController *)self config];
  v5 = [v4 addedAccessory];

  v6 = [v5 hf_siriEndpointProfile];
  if ([v6 supportsOnboarding])
  {
    v7 = [v6 currentAssistant];
    v8 = v7;
    if (v7 && ([v7 isSiriAssistant] & 1) == 0)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Accessory has a different assistant = %@", buf, 0xCu);
      }

      v19 = [v8 name];
      v22 = HULocalizedStringWithFormat();

      v20 = [v8 name];
      v21 = HULocalizedStringWithFormat();

      v12 = [UIAlertController alertControllerWithTitle:v22 message:v21 preferredStyle:1, v20];
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

    v10 = v3;
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Siri onboarding is not supported, will skip remainder of Siri flow", buf, 2u);
    }

    v10 = [(HSPCUseSiriViewController *)self commitConfiguration];
  }

  return v10;
}

- (void)_enableSiriWithFuture:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding Enable Siri selection", buf, 2u);
  }

  v6 = [(HSPCUseSiriViewController *)self config];
  v7 = [v6 addedAccessory];

  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = [v8 accessorySettingsDataSource];

  v10 = +[AFPreferences sharedPreferences];
  v11 = [v10 languageCode];

  if (!v11)
  {
    v12 = +[AFPreferences sharedPreferences];
    v11 = [v12 bestSupportedLanguageCodeForLanguageCode:0];
  }

  v13 = +[AFPreferences sharedPreferences];
  v14 = [v13 outputVoice];

  v15 = [(HSPCUseSiriViewController *)self config];
  [v15 setRecognitionLanguage:v11];

  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v11;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iOSSiriRecognitionLanguage = [%@], iOSSiriOutputVoice = [%@]", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v17 = [v7 home];
  v18 = [v17 uniqueIdentifier];
  v19 = [v7 uniqueIdentifier];
  v29 = HFSiriAvailableLanguagesSettingKeyPath;
  v20 = [NSArray arrayWithObjects:&v29 count:1];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100013604;
  v24[3] = &unk_1000C5EE8;
  objc_copyWeak(&v28, buf);
  v21 = v14;
  v25 = v21;
  v22 = v11;
  v26 = v22;
  v23 = v4;
  v27 = v23;
  [v9 hf_fetchAccessorySettingsWithHomeIdentifier:v18 accessoryIdentifier:v19 keyPaths:v20 completionHandler:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

- (BOOL)_isVoiceRecognitionEnabled
{
  v4 = [HFUserItem alloc];
  v5 = [(HSPCUseSiriViewController *)self config];
  v6 = [v5 home];
  v7 = [(HSPCUseSiriViewController *)self config];
  v8 = [v7 home];
  v9 = [v8 currentUser];
  v10 = [v4 initWithHome:v6 user:v9 nameStyle:0];

  v11 = [v10 isIdentifyVoiceEnabled];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v15 = 138412802;
    v16 = self;
    v17 = 2112;
    v18 = v13;
    v19 = 1024;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Is voice recognition enabled? %{BOOL}d", &v15, 0x1Cu);
  }

  return v11;
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
  v3 = [(HSPCUseSiriViewController *)self config];
  v4 = [v3 addedAccessory];

  v5 = [v4 hf_siriEndpointProfile];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HSPCUseSiriViewController *)self config];
    v8 = [v7 onboardingSelections];
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Applying onboarding selections: %@", buf, 0xCu);
  }

  v16 = v5;
  v17 = self;
  v9 = v5;
  v10 = [NAScheduler globalAsyncScheduler:_NSConcreteStackBlock];
  v11 = [NAFuture futureWithBlock:&v15 scheduler:v10];
  v12 = +[NAScheduler mainThreadScheduler];
  v13 = [v11 reschedule:v12];

  return v13;
}

- (id)_languageValueMatchingRecognitionLanguage:(id)a3 outputVoice:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    v9 = [(HSPCUseSiriViewController *)self config];
    v10 = [v9 availableSiriLanguageValues];

    if (v10)
    {
      v11 = [(HSPCUseSiriViewController *)self config];
      v12 = [v11 availableSiriLanguageValues];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000146A4;
      v14[3] = &unk_1000C5740;
      v14[4] = self;
      v15 = v7;
      v8 = [v12 na_firstObjectPassingTest:v14];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_setupOnBoardSelectionsWithLanguageValue:(id)a3
{
  v17 = a3;
  v4 = [(HSPCUseSiriViewController *)self config];
  v5 = [v4 addedAccessory];

  v6 = [HMSiriEndpointOnboardingSelections alloc];
  v7 = [v5 hf_isDumbSpeaker];
  v8 = [(HSPCUseSiriViewController *)self config];
  v9 = [v8 isPlaybackInfluencesForYouEnabled];
  v10 = [(HSPCUseSiriViewController *)self config];
  v11 = [v10 isShareSiriAnalyticsEnabled];
  v12 = [(HSPCUseSiriViewController *)self config];
  v13 = [v12 isExplicitContentAllowed];
  if (v17)
  {
    v14 = [v6 initWithSiriEnabled:1 allowHeySiri:1 airPlayEnabled:v7 playbackInfluencesForYouEnabled:v9 shareSiriAnalyticsEnabled:v11 explicitContentAllowed:v13 languageValue:v17];
  }

  else
  {
    v14 = [v6 initWithSiriEnabled:1 allowHeySiri:1 airPlayEnabled:v7 playbackInfluencesForYouEnabled:v9 shareSiriAnalyticsEnabled:v11 explicitContentAllowed:v13];
  }

  v15 = v14;
  v16 = [(HSPCUseSiriViewController *)self config];
  [v16 setOnboardingSelections:v15];
}

- (void)_applyOnBoardingSelectionsWithFuture:(id)a3
{
  v4 = a3;
  v5 = [(HSPCUseSiriViewController *)self config];
  v6 = [v5 addedAccessory];

  v7 = [v6 hf_siriEndpointProfile];
  v8 = objc_opt_new();
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(HSPCUseSiriViewController *)self config];
    v11 = [v10 onboardingSelections];
    *buf = 138412290;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Applying onboarding selections: %@", buf, 0xCu);
  }

  v12 = &_s22HomeAccessoryControlUI14LocationDeviceVMa_ptr;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100014D28;
  v31[3] = &unk_1000C5F38;
  v13 = v7;
  v32 = v13;
  v33 = self;
  v14 = +[NAScheduler globalAsyncScheduler];
  v15 = [NAFuture futureWithBlock:v31 scheduler:v14];
  v16 = +[NAScheduler mainThreadScheduler];
  v17 = [v15 reschedule:v16];

  [v8 addObject:v17];
  if ([(HSPCUseSiriViewController *)self _shouldEnableShareSiriAnalytics])
  {
    v18 = [(HSPCUseSiriViewController *)self config];
    v19 = [v18 addedAccessory];
    [v19 name];
    v21 = v20 = v6;
    v22 = [HUSiriEndpointUtilities presentShareSiriAndDictationAlertForSingleAccessory:self accessoryName:v21];

    v6 = v20;
    v12 = &_s22HomeAccessoryControlUI14LocationDeviceVMa_ptr;
  }

  else
  {
    v22 = +[NAFuture futureWithNoResult];
  }

  [v8 addObject:v22];
  v23 = [(HSPCUseSiriViewController *)self commitConfiguration];
  [v8 addObject:v23];

  v24 = v12[378];
  v25 = [v8 copy];
  v26 = [v24 chainFutures:v25];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100014F00;
  v29[3] = &unk_1000C5658;
  v30 = v4;
  v27 = v4;
  v28 = [v26 addCompletionBlock:v29];
}

- (BOOL)_shouldEnableShareSiriAnalytics
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HSPCUseSiriViewController *)self config];
    v5 = [v4 isShareSiriAnalyticsEnabled];
    v6 = [(HSPCUseSiriViewController *)self config];
    v7 = [v6 onboardingSelections];
    v13 = 136315650;
    v14 = "[HSPCUseSiriViewController _shouldEnableShareSiriAnalytics]";
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = [v7 allowHeySiri];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s *** Value for  self.config.isShareSiriAnalyticsEnabled *** = %{BOOL}d, allowHeySiri = %{BOOL}d", &v13, 0x18u);
  }

  v8 = [(HSPCUseSiriViewController *)self config];
  if ([v8 isShareSiriAnalyticsEnabled])
  {
    v9 = [(HSPCUseSiriViewController *)self config];
    v10 = [v9 onboardingSelections];
    v11 = [v10 allowHeySiri];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end