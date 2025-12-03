@interface HSPCSiriVoiceSelectionController
- (BOOL)_isVoiceRecognitionEnabled;
- (BOOL)_shouldEnableShareSiriAnalytics;
- (HSPCSiriVoiceSelectionController)initWithCoordinator:(id)coordinator config:(id)config;
- (void)_applyOnboardingSelectionsIfNeededForSelectedLanguageValue:(id)value;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice;
@end

@implementation HSPCSiriVoiceSelectionController

- (HSPCSiriVoiceSelectionController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [[PRXCardContentView alloc] initWithCardStyle:0];
  v21.receiver = self;
  v21.super_class = HSPCSiriVoiceSelectionController;
  v10 = [(HSPCSiriVoiceSelectionController *)&v21 initWithContentView:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    v11 = [HUVoiceSelectionDataManager alloc];
    recognitionLanguage = [configCopy recognitionLanguage];
    listOfVoices = [configCopy listOfVoices];
    v14 = [v11 initWithInputLanguageCode:recognitionLanguage listOfVoices:listOfVoices];

    v15 = v14;
    v16 = [VTUIVoiceSelectionViewController alloc];
    recognitionLanguage2 = [configCopy recognitionLanguage];
    v18 = [v16 initCompactWithRecognitionLanguage:recognitionLanguage2 allowsRandomSelection:objc_msgSend(configCopy dataManager:"allowsRandomVoiceSelection") customVoicePreviewer:v15 forSelectionStyle:0 delegate:{1, v10}];

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
  view = [(HSPCSiriVoiceSelectionController *)self view];
  view2 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [view addSubview:view2];

  view3 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(HSPCSiriVoiceSelectionController *)self view];
  topAnchor = [view4 topAnchor];
  view5 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  topAnchor2 = [view5 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v22;
  view6 = [(HSPCSiriVoiceSelectionController *)self view];
  leftAnchor = [view6 leftAnchor];
  view7 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  leftAnchor2 = [view7 leftAnchor];
  v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v28[1] = v17;
  view8 = [(HSPCSiriVoiceSelectionController *)self view];
  rightAnchor = [view8 rightAnchor];
  view9 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  rightAnchor2 = [view9 rightAnchor];
  v9 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v28[2] = v9;
  view10 = [(HSPCSiriVoiceSelectionController *)self view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  bottomAnchor2 = [view11 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[3] = v14;
  v15 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = HSPCSiriVoiceSelectionController;
  [(HSPCSiriVoiceSelectionController *)&v7 viewDidLayoutSubviews];
  view = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [view layoutIfNeeded];

  contentView = [(HSPCSiriVoiceSelectionController *)self contentView];
  [contentView setNeedsUpdateConstraints];

  view2 = [(HSPCSiriVoiceSelectionController *)self view];
  [view2 bounds];
  [(HSPCSiriVoiceSelectionController *)self updatePreferredContentSizeForCardWidth:v6];
}

- (void)_applyOnboardingSelectionsIfNeededForSelectedLanguageValue:(id)value
{
  valueCopy = value;
  config = [(HSPCSiriVoiceSelectionController *)self config];
  addedAccessory = [config addedAccessory];

  hf_siriEndpointProfile = [addedAccessory hf_siriEndpointProfile];
  if (valueCopy)
  {
    v22 = hf_siriEndpointProfile;
    v8 = [HMSiriEndpointOnboardingSelections alloc];
    hf_isDumbSpeaker = [addedAccessory hf_isDumbSpeaker];
    config2 = [(HSPCSiriVoiceSelectionController *)self config];
    isPlaybackInfluencesForYouEnabled = [config2 isPlaybackInfluencesForYouEnabled];
    config3 = [(HSPCSiriVoiceSelectionController *)self config];
    isShareSiriAnalyticsEnabled = [config3 isShareSiriAnalyticsEnabled];
    config4 = [(HSPCSiriVoiceSelectionController *)self config];
    v15 = [v8 initWithSiriEnabled:1 allowHeySiri:1 airPlayEnabled:hf_isDumbSpeaker playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled shareSiriAnalyticsEnabled:isShareSiriAnalyticsEnabled explicitContentAllowed:objc_msgSend(config4 languageValue:{"isExplicitContentAllowed"), valueCopy}];
    config5 = [(HSPCSiriVoiceSelectionController *)self config];
    [config5 setOnboardingSelections:v15];

    hf_siriEndpointProfile = v22;
  }

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    config6 = [(HSPCSiriVoiceSelectionController *)self config];
    onboardingSelections = [config6 onboardingSelections];
    *buf = 138412546;
    v24 = onboardingSelections;
    v25 = 2112;
    v26 = valueCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Applying onboarding selections: %@. selectedLanguageValue = %@", buf, 0x16u);
  }

  config7 = [(HSPCSiriVoiceSelectionController *)self config];
  onboardingSelections2 = [config7 onboardingSelections];
  [hf_siriEndpointProfile applyOnboardingSelections:onboardingSelections2 completionHandler:&stru_1000C5718];
}

- (BOOL)_isVoiceRecognitionEnabled
{
  v4 = [HFUserItem alloc];
  config = [(HSPCSiriVoiceSelectionController *)self config];
  home = [config home];
  config2 = [(HSPCSiriVoiceSelectionController *)self config];
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

- (BOOL)_shouldEnableShareSiriAnalytics
{
  config = [(HSPCSiriVoiceSelectionController *)self config];
  if ([config isShareSiriAnalyticsEnabled])
  {
    config2 = [(HSPCSiriVoiceSelectionController *)self config];
    onboardingSelections = [config2 onboardingSelections];
    allowHeySiri = [onboardingSelections allowHeySiri];
  }

  else
  {
    allowHeySiri = 0;
  }

  return allowHeySiri;
}

- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice
{
  voiceCopy = voice;
  config = [(HSPCSiriVoiceSelectionController *)self config];
  availableSiriLanguageValues = [config availableSiriLanguageValues];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000053C8;
  v27[3] = &unk_1000C5740;
  v27[4] = self;
  v8 = voiceCopy;
  v28 = v8;
  v9 = [availableSiriLanguageValues na_firstObjectPassingTest:v27];

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
  config2 = [(HSPCSiriVoiceSelectionController *)self config];
  delegate = [config2 delegate];
  config3 = [(HSPCSiriVoiceSelectionController *)self config];
  v14 = [delegate stateMachineConfigurationGetLaunchReason:config3];

  if ([(HSPCSiriVoiceSelectionController *)self _shouldEnableShareSiriAnalytics])
  {
    config4 = [(HSPCSiriVoiceSelectionController *)self config];
    addedAccessory = [config4 addedAccessory];
    name = [addedAccessory name];
    v18 = [HUSiriEndpointUtilities presentShareSiriAndDictationAlertForSingleAccessory:self accessoryName:name];
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
    coordinator = [(HSPCSiriVoiceSelectionController *)self coordinator];
    nextViewController = [coordinator nextViewController];

    v29[0] = v18;
    v29[1] = nextViewController;
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