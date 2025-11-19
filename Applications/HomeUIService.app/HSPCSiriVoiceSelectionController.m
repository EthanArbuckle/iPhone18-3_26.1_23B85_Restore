@interface HSPCSiriVoiceSelectionController
- (BOOL)_isVoiceRecognitionEnabled;
- (BOOL)_shouldEnableShareSiriAnalytics;
- (HSPCSiriVoiceSelectionController)initWithCoordinator:(id)a3 config:(id)a4;
- (void)_applyOnboardingSelectionsIfNeededForSelectedLanguageValue:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)voiceSelectionController:(id)a3 didSelectVoice:(id)a4;
@end

@implementation HSPCSiriVoiceSelectionController

- (HSPCSiriVoiceSelectionController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[PRXCardContentView alloc] initWithCardStyle:0];
  v21.receiver = self;
  v21.super_class = HSPCSiriVoiceSelectionController;
  v10 = [(HSPCSiriVoiceSelectionController *)&v21 initWithContentView:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
    v11 = [HUVoiceSelectionDataManager alloc];
    v12 = [v8 recognitionLanguage];
    v13 = [v8 listOfVoices];
    v14 = [v11 initWithInputLanguageCode:v12 listOfVoices:v13];

    v15 = v14;
    v16 = [VTUIVoiceSelectionViewController alloc];
    v17 = [v8 recognitionLanguage];
    v18 = [v16 initCompactWithRecognitionLanguage:v17 allowsRandomSelection:objc_msgSend(v8 dataManager:"allowsRandomVoiceSelection") customVoicePreviewer:v15 forSelectionStyle:0 delegate:{1, v10}];

    voiceSelectionViewController = v10->_voiceSelectionViewController;
    v10->_voiceSelectionViewController = v18;

    [(VTUIVoiceSelectionViewController *)v10->_voiceSelectionViewController setShouldHideCompactBackgroundCardView:1];
  }

  return v10;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = HSPCSiriVoiceSelectionController;
  [(HSPCSiriVoiceSelectionController *)&v27 viewDidLoad];
  [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController willMoveToParentViewController:self];
  [(HSPCSiriVoiceSelectionController *)self addChildViewController:self->_voiceSelectionViewController];
  [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController didMoveToParentViewController:self];
  v3 = [(HSPCSiriVoiceSelectionController *)self view];
  v4 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [v3 addSubview:v4];

  v5 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(HSPCSiriVoiceSelectionController *)self view];
  v24 = [v26 topAnchor];
  v25 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  v23 = [v25 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v28[0] = v22;
  v21 = [(HSPCSiriVoiceSelectionController *)self view];
  v19 = [v21 leftAnchor];
  v20 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  v18 = [v20 leftAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v28[1] = v17;
  v16 = [(HSPCSiriVoiceSelectionController *)self view];
  v6 = [v16 rightAnchor];
  v7 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  v8 = [v7 rightAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v28[2] = v9;
  v10 = [(HSPCSiriVoiceSelectionController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v28[3] = v14;
  v15 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = HSPCSiriVoiceSelectionController;
  [(HSPCSiriVoiceSelectionController *)&v7 viewDidLayoutSubviews];
  v3 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [v3 layoutIfNeeded];

  v4 = [(HSPCSiriVoiceSelectionController *)self contentView];
  [v4 setNeedsUpdateConstraints];

  v5 = [(HSPCSiriVoiceSelectionController *)self view];
  [v5 bounds];
  [(HSPCSiriVoiceSelectionController *)self updatePreferredContentSizeForCardWidth:v6];
}

- (void)_applyOnboardingSelectionsIfNeededForSelectedLanguageValue:(id)a3
{
  v4 = a3;
  v5 = [(HSPCSiriVoiceSelectionController *)self config];
  v6 = [v5 addedAccessory];

  v7 = [v6 hf_siriEndpointProfile];
  if (v4)
  {
    v22 = v7;
    v8 = [HMSiriEndpointOnboardingSelections alloc];
    v9 = [v6 hf_isDumbSpeaker];
    v10 = [(HSPCSiriVoiceSelectionController *)self config];
    v11 = [v10 isPlaybackInfluencesForYouEnabled];
    v12 = [(HSPCSiriVoiceSelectionController *)self config];
    v13 = [v12 isShareSiriAnalyticsEnabled];
    v14 = [(HSPCSiriVoiceSelectionController *)self config];
    v15 = [v8 initWithSiriEnabled:1 allowHeySiri:1 airPlayEnabled:v9 playbackInfluencesForYouEnabled:v11 shareSiriAnalyticsEnabled:v13 explicitContentAllowed:objc_msgSend(v14 languageValue:{"isExplicitContentAllowed"), v4}];
    v16 = [(HSPCSiriVoiceSelectionController *)self config];
    [v16 setOnboardingSelections:v15];

    v7 = v22;
  }

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(HSPCSiriVoiceSelectionController *)self config];
    v19 = [v18 onboardingSelections];
    *buf = 138412546;
    v24 = v19;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Applying onboarding selections: %@. selectedLanguageValue = %@", buf, 0x16u);
  }

  v20 = [(HSPCSiriVoiceSelectionController *)self config];
  v21 = [v20 onboardingSelections];
  [v7 applyOnboardingSelections:v21 completionHandler:&stru_1000C5718];
}

- (BOOL)_isVoiceRecognitionEnabled
{
  v4 = [HFUserItem alloc];
  v5 = [(HSPCSiriVoiceSelectionController *)self config];
  v6 = [v5 home];
  v7 = [(HSPCSiriVoiceSelectionController *)self config];
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

- (BOOL)_shouldEnableShareSiriAnalytics
{
  v3 = [(HSPCSiriVoiceSelectionController *)self config];
  if ([v3 isShareSiriAnalyticsEnabled])
  {
    v4 = [(HSPCSiriVoiceSelectionController *)self config];
    v5 = [v4 onboardingSelections];
    v6 = [v5 allowHeySiri];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)voiceSelectionController:(id)a3 didSelectVoice:(id)a4
{
  v5 = a4;
  v6 = [(HSPCSiriVoiceSelectionController *)self config];
  v7 = [v6 availableSiriLanguageValues];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000053C8;
  v27[3] = &unk_1000C5740;
  v27[4] = self;
  v8 = v5;
  v28 = v8;
  v9 = [v7 na_firstObjectPassingTest:v27];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "VTUIVoiceSelectionViewControllerDelegate: didSelectVoice %@ with selectedLanguageValue %@", buf, 0x16u);
  }

  [(HSPCSiriVoiceSelectionController *)self _applyOnboardingSelectionsIfNeededForSelectedLanguageValue:v9];
  v11 = [(HSPCSiriVoiceSelectionController *)self config];
  v12 = [v11 delegate];
  v13 = [(HSPCSiriVoiceSelectionController *)self config];
  v14 = [v12 stateMachineConfigurationGetLaunchReason:v13];

  if ([(HSPCSiriVoiceSelectionController *)self _shouldEnableShareSiriAnalytics])
  {
    v15 = [(HSPCSiriVoiceSelectionController *)self config];
    v16 = [v15 addedAccessory];
    v17 = [v16 name];
    v18 = [HUSiriEndpointUtilities presentShareSiriAndDictationAlertForSingleAccessory:self accessoryName:v17];
  }

  else
  {
    v18 = +[NAFuture futureWithNoResult];
  }

  if (v14 == 3 && [(HSPCSiriVoiceSelectionController *)self _isVoiceRecognitionEnabled])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100005590;
    v26[3] = &unk_1000C5768;
    v26[4] = self;
    v19 = [v18 addSuccessBlock:v26];
  }

  else
  {
    v20 = [(HSPCSiriVoiceSelectionController *)self coordinator];
    v21 = [v20 nextViewController];

    v29[0] = v18;
    v29[1] = v21;
    v22 = [NSArray arrayWithObjects:v29 count:2];
    v23 = [NAFuture chainFutures:v22];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000055A0;
    v25[3] = &unk_1000C5768;
    v25[4] = self;
    v24 = [v23 addSuccessBlock:v25];
  }
}

@end