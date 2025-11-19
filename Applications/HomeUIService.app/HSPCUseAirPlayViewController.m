@interface HSPCUseAirPlayViewController
- (HSPCUseAirPlayViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_applyOnboardingSelections;
- (id)_applyOnboardingSelectionsIfNeeded;
- (id)_enableAirPlay;
- (void)viewDidLoad;
@end

@implementation HSPCUseAirPlayViewController

- (HSPCUseAirPlayViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(UIView);
  v9 = [UIImageView alloc];
  v10 = +[UIImage hu_airPlaySpeakerImage];
  v11 = [v9 initWithImage:v10];

  v12 = [v11 layer];
  [v12 setMasksToBounds:1];

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
    [(HSPCUseAirPlayViewController *)v14 setConfig:v7];
    [(HSPCUseAirPlayViewController *)v15 setCoordinator:v6];
    [(HSPCUseAirPlayViewController *)v15 setContainerView:v8];
    [(HSPCUseAirPlayViewController *)v15 setSpeakerIconImageView:v11];
    [(HSPCUseAirPlayViewController *)v15 setAirplayIconView:v13];
    v16 = HULocalizedString();
    [(HSPCUseAirPlayViewController *)v15 setTitle:v16];

    v17 = HULocalizedString();
    v18 = [(HSPCUseAirPlayViewController *)v15 addProminentButtonWithLocalizedTitle:v17 target:v15 futureSelector:"_enableAirPlay"];

    v19 = HULocalizedString();
    v20 = [(HSPCUseAirPlayViewController *)v15 addOptionalButtonWithLocalizedTitle:v19 target:v15 futureSelector:"_applyOnboardingSelectionsIfNeeded"];

    v21 = [v7 addedAccessory];
    v22 = [v21 hf_userFriendlyLocalizedLowercaseDescription];
    v23 = HULocalizedStringWithFormat();
    [(HSPCUseAirPlayViewController *)v15 setSubtitle:v23, v22];
  }

  return v15;
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = HSPCUseAirPlayViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v55 viewDidLoad];
  v54 = [(HSPCUseAirPlayViewController *)self containerView];
  v52 = [v54 centerXAnchor];
  v53 = [(HSPCUseAirPlayViewController *)self contentView];
  v51 = [v53 mainContentGuide];
  v50 = [v51 centerXAnchor];
  v49 = [v52 constraintEqualToAnchor:v50];
  v56[0] = v49;
  v48 = [(HSPCUseAirPlayViewController *)self containerView];
  v46 = [v48 centerYAnchor];
  v47 = [(HSPCUseAirPlayViewController *)self contentView];
  v45 = [v47 mainContentGuide];
  v44 = [v45 centerYAnchor];
  v43 = [v46 constraintEqualToAnchor:v44];
  v56[1] = v43;
  v42 = [(HSPCUseAirPlayViewController *)self speakerIconImageView];
  v40 = [v42 centerXAnchor];
  v41 = [(HSPCUseAirPlayViewController *)self contentView];
  v39 = [v41 mainContentGuide];
  v38 = [v39 centerXAnchor];
  v37 = [v40 constraintEqualToAnchor:v38];
  v56[2] = v37;
  v36 = [(HSPCUseAirPlayViewController *)self speakerIconImageView];
  v34 = [v36 centerYAnchor];
  v35 = [(HSPCUseAirPlayViewController *)self contentView];
  v33 = [v35 mainContentGuide];
  v3 = [v33 centerYAnchor];
  v4 = [v34 constraintEqualToAnchor:v3];
  v56[3] = v4;
  v5 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  v6 = [v5 widthAnchor];
  v7 = [v6 constraintEqualToConstant:34.0];
  v56[4] = v7;
  v8 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  v9 = [v8 heightAnchor];
  v10 = [v9 constraintEqualToConstant:34.0];
  v56[5] = v10;
  v11 = [NSArray arrayWithObjects:v56 count:6];
  [NSLayoutConstraint activateConstraints:v11];

  v12 = [(HSPCUseAirPlayViewController *)self speakerIconImageView];
  [v12 bounds];
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
  v23 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  [v23 intrinsicContentSize];
  HURoundToScreenScale();
  v25 = v24;

  v26 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  [v26 intrinsicContentSize];
  v28 = v27;
  v29 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  [v29 intrinsicContentSize];
  v31 = v30;
  v32 = [(HSPCUseAirPlayViewController *)self airplayIconView];
  [v32 setFrame:{v22, v25, v28, v31}];
}

- (id)_applyOnboardingSelections
{
  v3 = [(HSPCUseAirPlayViewController *)self config];
  v4 = [v3 addedAccessory];

  v5 = [v4 hf_siriEndpointProfile];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HSPCUseAirPlayViewController *)self config];
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

- (id)_applyOnboardingSelectionsIfNeeded
{
  v3 = [(HSPCUseAirPlayViewController *)self config];
  v4 = [v3 onboardingSelections];

  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [(HSPCUseAirPlayViewController *)self config];
      v8 = [v7 onboardingSelections];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will not enable AirPlay selection but will apply existing selections: %@", buf, 0xCu);
    }

    v9 = [(HSPCUseAirPlayViewController *)self _applyOnboardingSelections];
    v10 = [(HSPCUseAirPlayViewController *)self commitConfiguration];
    v14[1] = v10;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    v12 = [NAFuture chainFutures:v11];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No onboarding selections to apply", buf, 2u);
    }

    v12 = [(HSPCUseAirPlayViewController *)self commitConfiguration];
  }

  return v12;
}

- (id)_enableAirPlay
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding Enable AirPlay selection", buf, 2u);
  }

  v4 = [(HSPCUseAirPlayViewController *)self config];
  v5 = [v4 onboardingSelections];

  if (v5)
  {
    v6 = [v5 languageValue];

    v34 = [HMSiriEndpointOnboardingSelections alloc];
    v39 = [(HSPCUseAirPlayViewController *)self config];
    v38 = [v39 onboardingSelections];
    v7 = [v38 isSiriEnabled];
    v37 = [(HSPCUseAirPlayViewController *)self config];
    v36 = [v37 onboardingSelections];
    v8 = [v36 allowHeySiri];
    v9 = [(HSPCUseAirPlayViewController *)self config];
    v10 = [v9 isPlaybackInfluencesForYouEnabled];
    [(HSPCUseAirPlayViewController *)self config];
    v11 = v35 = v5;
    v12 = [v11 isShareSiriAnalyticsEnabled];
    v13 = [(HSPCUseAirPlayViewController *)self config];
    v14 = [v13 isExplicitContentAllowed];
    if (v6)
    {
      v15 = [v35 languageValue];
      v16 = [v34 initWithSiriEnabled:v7 allowHeySiri:v8 airPlayEnabled:1 playbackInfluencesForYouEnabled:v10 shareSiriAnalyticsEnabled:v12 explicitContentAllowed:v14 languageValue:v15];
      v17 = [(HSPCUseAirPlayViewController *)self config];
      [v17 setOnboardingSelections:v16];
    }

    else
    {
      v15 = [v34 initWithSiriEnabled:v7 allowHeySiri:v8 airPlayEnabled:1 playbackInfluencesForYouEnabled:v10 shareSiriAnalyticsEnabled:v12 explicitContentAllowed:v14];
      v16 = [(HSPCUseAirPlayViewController *)self config];
      [v16 setOnboardingSelections:v15];
    }

    v5 = v35;
    v26 = v39;
  }

  else
  {
    v18 = [HMSiriEndpointOnboardingSelections alloc];
    v19 = [(HSPCUseAirPlayViewController *)self config];
    v20 = [v19 isPlaybackInfluencesForYouEnabled];
    v21 = [(HSPCUseAirPlayViewController *)self config];
    v22 = [v21 isShareSiriAnalyticsEnabled];
    v23 = [(HSPCUseAirPlayViewController *)self config];
    v24 = [v18 initWithSiriEnabled:1 allowHeySiri:0 airPlayEnabled:1 playbackInfluencesForYouEnabled:v20 shareSiriAnalyticsEnabled:v22 explicitContentAllowed:{objc_msgSend(v23, "isExplicitContentAllowed")}];
    v25 = [(HSPCUseAirPlayViewController *)self config];
    [v25 setOnboardingSelections:v24];

    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(HSPCUseAirPlayViewController *)self config];
      v28 = [v27 onboardingSelections];
      *buf = 138412290;
      v42 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No existing onboarding selections found. This is unexpected. Will assume Siri should be disabled. Onboarding selections: %@", buf, 0xCu);
    }
  }

  v29 = [(HSPCUseAirPlayViewController *)self _applyOnboardingSelections];
  v40[0] = v29;
  v30 = [(HSPCUseAirPlayViewController *)self commitConfiguration];
  v40[1] = v30;
  v31 = [NSArray arrayWithObjects:v40 count:2];
  v32 = [NAFuture chainFutures:v31];

  return v32;
}

@end