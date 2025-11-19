@interface HSPCUseSiriMultipleAccessoryViewController
- (BOOL)_deviceIsOnAMultiUserLanguage;
- (BOOL)_isVoiceRecognitionEnabled;
- (BOOL)_shouldEnableShareSiriAnalytics;
- (HSPCUseSiriMultipleAccessoryViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (UITableView)tableView;
- (id)_applyOnboardingSelections:(BOOL)a3;
- (id)dismissButtonBlock;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handleFooterLabelTouchForOpenURL:(id)a3;
- (void)_launchSiriPrivacySheet;
- (void)_updateUseSiriButtonEnabledState;
- (void)viewDidLoad;
@end

@implementation HSPCUseSiriMultipleAccessoryViewController

- (HSPCUseSiriMultipleAccessoryViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v10 = [[PRXScrollableContentView alloc] initWithCardStyle:0 scrollView:v9];
  v59.receiver = self;
  v59.super_class = HSPCUseSiriMultipleAccessoryViewController;
  v11 = [(HSPCUseSiriMultipleAccessoryViewController *)&v59 initWithContentView:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_config, a4);
    objc_storeStrong(&v12->_coordinator, a3);
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

    v32 = [v7 topAccessoryTuple];
    v33 = [NSMutableArray arrayWithObject:v32];

    v34 = [v7 bridgedAccessories];
    [v33 addObjectsFromArray:v34];

    v35 = [v33 copy];
    siriEndpointAccessories = v12->_siriEndpointAccessories;
    v12->_siriEndpointAccessories = v35;

    v37 = [NSMutableSet setWithArray:v12->_siriEndpointAccessories];
    selectedAccessories = v12->_selectedAccessories;
    v12->_selectedAccessories = v37;

    v39 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
    [v39 setIsPlaybackInfluencesForYouEnabled:1];

    v40 = +[AFPreferences sharedPreferences];
    v41 = [v40 siriDataSharingOptInStatus];

    v42 = v41 == 1;
    v43 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
    [v43 setIsShareSiriAnalyticsEnabled:v42];

    v44 = +[HFManagedConfigurationUtilities isExplicitContentAllowed];
    v45 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
    [v45 setIsExplicitContentAllowed:v44];

    v46 = HFLogForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
      v58 = v33;
      v47 = v10;
      v48 = [v57 isPlaybackInfluencesForYouEnabled];
      v49 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
      v50 = v9;
      v51 = v8;
      v52 = v7;
      v53 = [v49 isShareSiriAnalyticsEnabled];
      v54 = [(HSPCUseSiriMultipleAccessoryViewController *)v12 config];
      v55 = [v54 isExplicitContentAllowed];
      *buf = 67109632;
      v61 = v48;
      v10 = v47;
      v33 = v58;
      v62 = 1024;
      v63 = v53;
      v7 = v52;
      v8 = v51;
      v9 = v50;
      v64 = 1024;
      v65 = v55;
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
  v17 = [(HSPCUseSiriMultipleAccessoryViewController *)self view];
  v49 = v3;
  [v17 addSubview:v3];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = self;
  v18 = [(HSPCUseSiriMultipleAccessoryViewController *)self contentView];
  v19 = [v18 actionButtons];

  v20 = [v19 countByEnumeratingWithState:&v50 objects:v56 count:16];
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
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v50 + 1) + 8 * i);
        v26 = [v25 currentTitle];
        v27 = HULocalizedString();
        v28 = [v26 isEqualToString:v27];

        if (v28)
        {
          v29 = v25;

          v22 = v29;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v42 = [v49 centerXAnchor];
  v43 = [(HSPCUseSiriMultipleAccessoryViewController *)v45 contentView];
  v41 = [v43 mainContentGuide];
  v40 = [v41 centerXAnchor];
  v39 = [v42 constraintEqualToAnchor:v40];
  v55[0] = v39;
  v38 = [v49 bottomAnchor];
  v30 = [v22 topAnchor];
  v31 = [v38 constraintEqualToAnchor:v30 constant:-10.0];
  v55[1] = v31;
  v32 = [v49 widthAnchor];
  v33 = [(HSPCUseSiriMultipleAccessoryViewController *)v45 contentView];
  v34 = [v33 mainContentGuide];
  v35 = [v34 widthAnchor];
  v36 = [v32 constraintLessThanOrEqualToAnchor:v35];
  v55[2] = v36;
  v37 = [NSArray arrayWithObjects:v55 count:3];
  [NSLayoutConstraint activateConstraints:v37];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 cellForRowAtIndexPath:v6];
  [v7 setAccessoryType:3];
  v8 = [(HSPCUseSiriMultipleAccessoryViewController *)self selectedAccessories];
  v9 = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  [v8 addObject:v10];

  [(HSPCUseSiriMultipleAccessoryViewController *)self _updateUseSiriButtonEnabledState];

  return v6;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 cellForRowAtIndexPath:v6];
  [v7 setAccessoryType:0];
  v8 = [(HSPCUseSiriMultipleAccessoryViewController *)self selectedAccessories];
  v9 = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  [v8 removeObject:v10];

  [(HSPCUseSiriMultipleAccessoryViewController *)self _updateUseSiriButtonEnabledState];

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v6];
  v8 = [(HSPCUseSiriMultipleAccessoryViewController *)self siriEndpointAccessories];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
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

- (id)_applyOnboardingSelections:(BOOL)a3
{
  v35 = a3;
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
        v7 = [v6 accessory];
        v39 = [v7 hf_siriEndpointProfile];
        v8 = [(HSPCUseSiriMultipleAccessoryViewController *)self selectedAccessories];
        v9 = [v8 containsObject:v6];

        v10 = [HMSiriEndpointOnboardingSelections alloc];
        v40 = v7;
        v11 = [v7 hf_isDumbSpeaker];
        v12 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
        v13 = [v12 isPlaybackInfluencesForYouEnabled];
        v14 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
        v15 = v14;
        if (!v9 || v35)
        {
          v18 = [v10 initWithSiriEnabled:1 allowHeySiri:0 airPlayEnabled:v11 playbackInfluencesForYouEnabled:v13 shareSiriAnalyticsEnabled:0 explicitContentAllowed:{objc_msgSend(v14, "isExplicitContentAllowed")}];
        }

        else
        {
          v16 = [v14 isShareSiriAnalyticsEnabled];
          v17 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
          v18 = [v10 initWithSiriEnabled:1 allowHeySiri:1 airPlayEnabled:v11 playbackInfluencesForYouEnabled:v13 shareSiriAnalyticsEnabled:v16 explicitContentAllowed:{objc_msgSend(v17, "isExplicitContentAllowed")}];
        }

        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v6 accessory];
          *buf = v33;
          v49 = v18;
          v50 = 2112;
          v51 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Applying onboarding selections %@ for accessory %@", buf, 0x16u);
        }

        v21 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
        [v21 setOnboardingSelections:v18];

        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100018110;
        v41[3] = &unk_1000C5F38;
        v42 = v39;
        v43 = v18;
        v22 = v18;
        v23 = v39;
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
  if (![(HSPCUseSiriMultipleAccessoryViewController *)self _isVoiceRecognitionEnabled]&& [(HSPCUseSiriMultipleAccessoryViewController *)self _deviceIsOnAMultiUserLanguage]&& !v35)
  {
    v29 = &off_1000CD438;
  }

  v30 = [NAFuture futureWithResult:v29];
  [v37 addObject:v30];

  v31 = [NAFuture chainFutures:v37];

  return v31;
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
  v3 = [(HSPCUseSiriMultipleAccessoryViewController *)self navigationController];
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

- (BOOL)_isVoiceRecognitionEnabled
{
  v4 = [HFUserItem alloc];
  v5 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
  v6 = [v5 home];
  v7 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
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
      sub_100077F30(a2, v5);
    }

    v4 = 0;
  }

  return v4;
}

- (void)_updateUseSiriButtonEnabledState
{
  v5 = [(HSPCUseSiriMultipleAccessoryViewController *)self selectedAccessories];
  v3 = [v5 count] != 0;
  v4 = [(HSPCUseSiriMultipleAccessoryViewController *)self useSiriAction];
  [v4 setEnabled:v3];
}

- (BOOL)_shouldEnableShareSiriAnalytics
{
  v3 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
  if ([v3 isShareSiriAnalyticsEnabled])
  {
    v4 = [(HSPCUseSiriMultipleAccessoryViewController *)self config];
    v5 = [v4 onboardingSelections];
    v6 = [v5 allowHeySiri];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end