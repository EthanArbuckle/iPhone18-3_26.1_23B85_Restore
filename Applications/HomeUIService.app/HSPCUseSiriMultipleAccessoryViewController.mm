@interface HSPCUseSiriMultipleAccessoryViewController
- (BOOL)_deviceIsOnAMultiUserLanguage;
- (BOOL)_isVoiceRecognitionEnabled;
- (BOOL)_shouldEnableShareSiriAnalytics;
- (HSPCUseSiriMultipleAccessoryViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (UITableView)tableView;
- (id)_applyOnboardingSelections:(BOOL)selections;
- (id)dismissButtonBlock;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleFooterLabelTouchForOpenURL:(id)l;
- (void)_launchSiriPrivacySheet;
- (void)_updateUseSiriButtonEnabledState;
- (void)viewDidLoad;
@end

@implementation HSPCUseSiriMultipleAccessoryViewController

- (HSPCUseSiriMultipleAccessoryViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v10 = [[PRXScrollableContentView alloc] initWithCardStyle:0 scrollView:v9];
  v59.receiver = self;
  v59.super_class = HSPCUseSiriMultipleAccessoryViewController;
  v11 = [(HSPCUseSiriMultipleAccessoryViewController *)&v59 initWithContentView:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_config, config);
    objc_storeStrong(&v12->_coordinator, coordinator);
    v13 = objc_storeWeak(&v12->_tableView, v9);
    [v9 setDelegate:v12];

    WeakRetained = objc_loadWeakRetained(&v12->_tableView);
    [WeakRetained setDataSource:v12];

    v15 = objc_loadWeakRetained(&v12->_tableView);
    [v15 setAllowsMultipleSelection:1];

    v16 = +[UIColor systemBackgroundColor];
    v17 = objc_loadWeakRetained(&v12->_tableView);
    [v17 setBackgroundColor:v16];

    v18 = objc_loadWeakRetained(&v12->_tableView);
    [v18 setRowHeight:44.0];

    +[HSPCRow leadingSeparatorMargin];
    v20 = v19;
    v21 = objc_loadWeakRetained(&v12->_tableView);
    [v21 setSeparatorInset:{0.0, v20, 0.0, 0.0}];

    v22 = objc_loadWeakRetained(&v12->_tableView);
    [v22 _setTopPadding:0.0];

    v23 = objc_loadWeakRetained(&v12->_tableView);
    [v23 _setBottomPadding:0.0];

    v24 = objc_loadWeakRetained(&v12->_tableView);
    [v24 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

    v25 = HULocalizedString();
    [(HSPCUseSiriMultipleAccessoryViewController *)v12 setTitle:v25];

    v26 = HULocalizedString();
    [(HSPCUseSiriMultipleAccessoryViewController *)v12 setSubtitle:v26];

    v27 = HULocalizedString();
    v28 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 addProminentButtonWithLocalizedTitle:v27 target:v12 futureSelector:"commitConfiguration"];
    useSiriAction = v12->_useSiriAction;
    v12->_useSiriAction = v28;

    v30 = HULocalizedString();
    v31 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 addOptionalButtonWithLocalizedTitle:v30 target:v12 futureSelector:"_disableSiri"];

    topAccessoryTuple = [coordinatorCopy topAccessoryTuple];
    v33 = [NSMutableArray arrayWithObject:topAccessoryTuple];

    bridgedAccessories = [coordinatorCopy bridgedAccessories];
    [v33 addObjectsFromArray:bridgedAccessories];

    v35 = [v33 copy];
    siriEndpointAccessories = v12->_siriEndpointAccessories;
    v12->_siriEndpointAccessories = v35;

    v37 = [NSMutableSet setWithArray:v12->_siriEndpointAccessories];
    selectedAccessories = v12->_selectedAccessories;
    v12->_selectedAccessories = v37;

    config = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
    [config setIsPlaybackInfluencesForYouEnabled:1];

    v40 = +[AFPreferences sharedPreferences];
    siriDataSharingOptInStatus = [v40 siriDataSharingOptInStatus];

    v42 = siriDataSharingOptInStatus == 1;
    config2 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
    [config2 setIsShareSiriAnalyticsEnabled:v42];

    v44 = +[HFManagedConfigurationUtilities isExplicitContentAllowed];
    config3 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
    [config3 setIsExplicitContentAllowed:v44];

    v46 = HFLogForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      config4 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
      v58 = v33;
      v47 = v10;
      isPlaybackInfluencesForYouEnabled = [config4 isPlaybackInfluencesForYouEnabled];
      config5 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
      v50 = v9;
      v51 = configCopy;
      v52 = coordinatorCopy;
      isShareSiriAnalyticsEnabled = [config5 isShareSiriAnalyticsEnabled];
      config6 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
      isExplicitContentAllowed = [config6 isExplicitContentAllowed];
      *buf = 67109632;
      v61 = isPlaybackInfluencesForYouEnabled;
      v10 = v47;
      v33 = v58;
      v62 = 1024;
      v63 = isShareSiriAnalyticsEnabled;
      coordinatorCopy = v52;
      configCopy = v51;
      v9 = v50;
      v64 = 1024;
      v65 = isExplicitContentAllowed;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "isPlaybackInfluencesForYouEnabled = %{BOOL}d | isShareSiriAnalyticsEnabled = %{BOOL}d | isExplicitContentAllowed = %{BOOL}d", buf, 0x14u);
    }
  }

  return v12;
}

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = HSPCUseSiriMultipleAccessoryViewController;
  [(HSPCUseSiriMultipleAccessoryViewController *)&v54 viewDidLoad];
  v3 = [PRXLabel labelWithStyle:3];
  v4 = HULocalizedString();
  v5 = [NSAttributedString alloc];
  v59 = NSForegroundColorAttributeName;
  v6 = +[UIColor hf_keyColor];
  v60 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v8 = [v5 initWithString:v4 attributes:v7];

  v9 = [NSMutableAttributedString alloc];
  v10 = HULocalizedString();
  v11 = [v9 initWithString:v10];

  v47 = v8;
  [v11 appendAttributedString:v8];
  v46 = v11;
  v12 = [v11 copy];
  [v3 setAttributedText:v12];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setUserInteractionEnabled:1];
  v13 = [HUStringInLabelTapGestureRecognizer alloc];
  v57 = @"URL_KEY";
  v14 = +[HFURLComponents siriPrivacyURL];
  v58 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v48 = v4;
  v16 = [v13 initWithTarget:self action:"_handleFooterLabelTouchForOpenURL:" hitBoxString:v4 userInfo:v15];

  v44 = v16;
  [v3 addGestureRecognizer:v16];
  view = [(HSPCUseSiriMultipleAccessoryViewController *)self view];
  v49 = v3;
  [view addSubview:v3];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  selfCopy = self;
  contentView = [(HSPCUseSiriMultipleAccessoryViewController *)self contentView];
  actionButtons = [contentView actionButtons];

  v20 = [actionButtons countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v51;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(actionButtons);
        }

        v25 = *(*(&v50 + 1) + 8 * i);
        currentTitle = [v25 currentTitle];
        v27 = HULocalizedString();
        v28 = [currentTitle isEqualToString:v27];

        if (v28)
        {
          v29 = v25;

          v22 = v29;
        }
      }

      v21 = [actionButtons countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  centerXAnchor = [v49 centerXAnchor];
  contentView2 = [(HSPCUseSiriMultipleAccessoryViewController *)selfCopy contentView];
  mainContentGuide = [contentView2 mainContentGuide];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v55[0] = v39;
  bottomAnchor = [v49 bottomAnchor];
  topAnchor = [v22 topAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-10.0];
  v55[1] = v31;
  widthAnchor = [v49 widthAnchor];
  contentView3 = [(HSPCUseSiriMultipleAccessoryViewController *)selfCopy contentView];
  mainContentGuide2 = [contentView3 mainContentGuide];
  widthAnchor2 = [mainContentGuide2 widthAnchor];
  v36 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  v55[2] = v36;
  v37 = [NSArray arrayWithObjects:v55 count:3];
  [NSLayoutConstraint activateConstraints:v37];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view cellForRowAtIndexPath:pathCopy];
  [v7 setAccessoryType:3];
  selectedAccessories = [(HSPCUseSiriMultipleAccessoryViewController *)self selectedAccessories];
  siriEndpointAccessories = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories];
  v10 = [siriEndpointAccessories objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [selectedAccessories addObject:v10];

  [(HSPCUseSiriMultipleAccessoryViewController *)self _updateUseSiriButtonEnabledState];

  return pathCopy;
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view cellForRowAtIndexPath:pathCopy];
  [v7 setAccessoryType:0];
  selectedAccessories = [(HSPCUseSiriMultipleAccessoryViewController *)self selectedAccessories];
  siriEndpointAccessories = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories];
  v10 = [siriEndpointAccessories objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [selectedAccessories removeObject:v10];

  [(HSPCUseSiriMultipleAccessoryViewController *)self _updateUseSiriButtonEnabledState];

  return pathCopy;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
  siriEndpointAccessories = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories];
  v9 = [pathCopy row];

  v10 = [siriEndpointAccessories objectAtIndexedSubscript:v9];
  [v7 updateUIWithTuple:v10];

  [v7 setAccessoryType:3];

  return v7;
}

- (id)dismissButtonBlock
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017C3C;
  v4[3] = &unk_1000C5970;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)_applyOnboardingSelections:(BOOL)selections
{
  selectionsCopy = selections;
  v37 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories];
  v38 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v38)
  {
    v36 = *v45;
    *&v4 = 138412546;
    v33 = v4;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * i);
        accessory = [v6 accessory];
        hf_siriEndpointProfile = [accessory hf_siriEndpointProfile];
        selectedAccessories = [(HSPCUseSiriMultipleAccessoryViewController *)self selectedAccessories];
        v9 = [selectedAccessories containsObject:v6];

        v10 = [HMSiriEndpointOnboardingSelections alloc];
        v40 = accessory;
        hf_isDumbSpeaker = [accessory hf_isDumbSpeaker];
        config = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
        isPlaybackInfluencesForYouEnabled = [config isPlaybackInfluencesForYouEnabled];
        config2 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
        v15 = config2;
        if (!v9 || selectionsCopy)
        {
          v18 = [v10 initWithSiriEnabled:1 allowHeySiri:0 airPlayEnabled:hf_isDumbSpeaker playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled shareSiriAnalyticsEnabled:0 explicitContentAllowed:{objc_msgSend(config2, "isExplicitContentAllowed")}];
        }

        else
        {
          isShareSiriAnalyticsEnabled = [config2 isShareSiriAnalyticsEnabled];
          config3 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
          v18 = [v10 initWithSiriEnabled:1 allowHeySiri:1 airPlayEnabled:hf_isDumbSpeaker playbackInfluencesForYouEnabled:isPlaybackInfluencesForYouEnabled shareSiriAnalyticsEnabled:isShareSiriAnalyticsEnabled explicitContentAllowed:{objc_msgSend(config3, "isExplicitContentAllowed")}];
        }

        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          accessory2 = [v6 accessory];
          *buf = v33;
          v49 = v18;
          v50 = 2112;
          v51 = accessory2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Applying onboarding selections %@ for accessory %@", buf, 0x16u);
        }

        config4 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
        [config4 setOnboardingSelections:v18];

        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100018110;
        v41[3] = &unk_1000C5F38;
        v42 = hf_siriEndpointProfile;
        v43 = v18;
        v22 = v18;
        v23 = hf_siriEndpointProfile;
        v24 = +[NAScheduler globalAsyncScheduler];
        v25 = [NAFuture futureWithBlock:v41 scheduler:v24];
        v26 = +[NAScheduler mainThreadScheduler];
        v27 = [v25 reschedule:v26];

        [v37 addObject:v27];
      }

      v38 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v38);
  }

  if ([(HSPCUseSiriMultipleAccessoryViewController *)self _shouldEnableShareSiriAnalytics])
  {
    [HUSiriEndpointUtilities presentShareSiriAndDictationAlertForMultipleAccessories:self];
  }

  else
  {
    +[NAFuture futureWithNoResult];
  }
  v28 = ;
  [v37 addObject:v28];
  v29 = &off_1000CD420;
  if (![(HSPCUseSiriMultipleAccessoryViewController *)self _isVoiceRecognitionEnabled]&& [(HSPCUseSiriMultipleAccessoryViewController *)self _deviceIsOnAMultiUserLanguage]&& !selectionsCopy)
  {
    v29 = &off_1000CD438;
  }

  v30 = [NAFuture futureWithResult:v29];
  [v37 addObject:v30];

  v31 = [NAFuture chainFutures:v37];

  return v31;
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

      [(HSPCUseSiriMultipleAccessoryViewController *)self _launchSiriPrivacySheet];
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
  navigationController = [(HSPCUseSiriMultipleAccessoryViewController *)self navigationController];
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

- (BOOL)_isVoiceRecognitionEnabled
{
  v4 = [HFUserItem alloc];
  config = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
  home = [config home];
  config2 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
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
      sub_100077F30(a2, v5);
    }

    v4 = 0;
  }

  return v4;
}

- (void)_updateUseSiriButtonEnabledState
{
  selectedAccessories = [(HSPCUseSiriMultipleAccessoryViewController *)self selectedAccessories];
  v3 = [selectedAccessories count] != 0;
  useSiriAction = [(HSPCUseSiriMultipleAccessoryViewController *)self useSiriAction];
  [useSiriAction setEnabled:v3];
}

- (BOOL)_shouldEnableShareSiriAnalytics
{
  config = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
  if ([config isShareSiriAnalyticsEnabled])
  {
    config2 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
    onboardingSelections = [config2 onboardingSelections];
    allowHeySiri = [onboardingSelections allowHeySiri];
  }

  else
  {
    allowHeySiri = 0;
  }

  return allowHeySiri;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end